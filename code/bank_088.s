; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $088", ROMX[$4000], BANK[$88]

	ld   sp, $8a01                                   ; $4000: $31 $01 $8a
	nop                                              ; $4003: $00
	add  b                                           ; $4004: $80
	ld   bc, $0302                                   ; $4005: $01 $02 $03
	ld   [bc], a                                     ; $4008: $02
	ld   bc, $0083                                   ; $4009: $01 $83 $00
	add  b                                           ; $400c: $80
	inc  bc                                          ; $400d: $03
	ld   [$0407], sp                                 ; $400e: $08 $07 $04
	ld   a, l                                        ; $4011: $7d
	ld   a, c                                        ; $4012: $79
	ei                                               ; $4013: $fb
	adc  a                                           ; $4014: $8f
	adc  h                                           ; $4015: $8c
	nop                                              ; $4016: $00
	rst  $38                                         ; $4017: $ff
	add  c                                           ; $4018: $81
	nop                                              ; $4019: $00
	add  b                                           ; $401a: $80
	ld   bc, $c305                                   ; $401b: $01 $05 $c3
	jp   nz, Jump_088_65e7                           ; $401e: $c2 $e7 $65

	push hl                                          ; $4021: $e5
	and  l                                           ; $4022: $a5
	add  b                                           ; $4023: $80
	sub  l                                           ; $4024: $95
	inc  bc                                          ; $4025: $03
	ld   d, l                                        ; $4026: $55
	sub  h                                           ; $4027: $94
	ld   [bc], a                                     ; $4028: $02
	nop                                              ; $4029: $00

jr_088_402a:
	add  b                                           ; $402a: $80
	rlca                                             ; $402b: $07
	ld   b, $ff                                      ; $402c: $06 $ff
	ld   hl, sp-$60                                  ; $402e: $f8 $a0
	jr   c, jr_088_402a                              ; $4030: $38 $f8

	ret  c                                           ; $4032: $d8

	ret  nz                                          ; $4033: $c0

	add  d                                           ; $4034: $82
	add  b                                           ; $4035: $80
	ld   [bc], a                                     ; $4036: $02
	nop                                              ; $4037: $00
	ld   a, a                                        ; $4038: $7f
	nop                                              ; $4039: $00
	add  b                                           ; $403a: $80
	ldh  a, [rSC]                                    ; $403b: $f0 $02
	db   $fd                                         ; $403d: $fd
	dec  c                                           ; $403e: $0d
	ld   c, $80                                      ; $403f: $0e $80
	ld   [bc], a                                     ; $4041: $02
	ld   bc, $0100                                   ; $4042: $01 $00 $01
	add  e                                           ; $4045: $83
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	rst  $38                                         ; $4048: $ff
	add  c                                           ; $4049: $81
	nop                                              ; $404a: $00
	add  b                                           ; $404b: $80
	ldh  a, [$03]                                    ; $404c: $f0 $03
	ld   hl, sp+$18                                  ; $404e: $f8 $18
	call nc, $82c4                                   ; $4050: $d4 $c4 $82
	db   $e4                                         ; $4053: $e4
	ld   b, $c4                                      ; $4054: $06 $c4
	ld   b, h                                        ; $4056: $44
	ld   l, h                                        ; $4057: $6c
	rra                                              ; $4058: $1f
	ccf                                              ; $4059: $3f
	daa                                              ; $405a: $27
	ld   [hl], h                                     ; $405b: $74
	add  c                                           ; $405c: $81
	ld   e, b                                        ; $405d: $58
	add  b                                           ; $405e: $80
	ld   c, b                                        ; $405f: $48
	ld   b, $08                                      ; $4060: $06 $08
	cpl                                              ; $4062: $2f
	dec  c                                           ; $4063: $0d
	rra                                              ; $4064: $1f
	ld   b, $07                                      ; $4065: $06 $07
	db   $fc                                         ; $4067: $fc
	add  h                                           ; $4068: $84
	nop                                              ; $4069: $00
	add  b                                           ; $406a: $80
	jr   nc, jr_088_4077                             ; $406b: $30 $0a

	ldh  a, [rP1]                                    ; $406d: $f0 $00
	ld   hl, sp-$0d                                  ; $406f: $f8 $f3
	db   $fc                                         ; $4071: $fc
	ld   b, h                                        ; $4072: $44
	call nz, Call_088_53ab                           ; $4073: $c4 $ab $53
	ld   [hl], c                                     ; $4076: $71

jr_088_4077:
	ld   sp, $1182                                   ; $4077: $31 $82 $11
	ld   [bc], a                                     ; $407a: $02
	ld   d, c                                        ; $407b: $51
	ld   de, $8190                                   ; $407c: $11 $90 $81
	db   $10                                         ; $407f: $10
	add  b                                           ; $4080: $80
	jr   jr_088_4083                                 ; $4081: $18 $00

jr_088_4083:
	rst  $38                                         ; $4083: $ff
	add  c                                           ; $4084: $81
	nop                                              ; $4085: $00
	inc  c                                           ; $4086: $0c
	ld   b, b                                        ; $4087: $40
	jr   nz, @+$62                                   ; $4088: $20 $60

	ld   a, a                                        ; $408a: $7f
	ld   e, h                                        ; $408b: $5c
	ld   a, a                                        ; $408c: $7f
	ccf                                              ; $408d: $3f
	rst  $38                                         ; $408e: $ff
	ld   [$9dff], a                                  ; $408f: $ea $ff $9d
	sbc  [hl]                                        ; $4092: $9e
	adc  d                                           ; $4093: $8a

jr_088_4094:
	add  c                                           ; $4094: $81
	nop                                              ; $4095: $00
	ld   bc, $4081                                   ; $4096: $01 $81 $40
	add  b                                           ; $4099: $80
	ret  nz                                          ; $409a: $c0

	dec  b                                           ; $409b: $05
	jp   nz, $0480                                   ; $409c: $c2 $80 $04

	ret  nz                                          ; $409f: $c0

	ld   a, b                                        ; $40a0: $78
	ret  nz                                          ; $40a1: $c0

	add  b                                           ; $40a2: $80
	ccf                                              ; $40a3: $3f
	inc  bc                                          ; $40a4: $03
	ld   l, b                                        ; $40a5: $68
	ld   [$4828], sp                                 ; $40a6: $08 $28 $48
	add  b                                           ; $40a9: $80
	ld   [hl], b                                     ; $40aa: $70
	add  d                                           ; $40ab: $82
	ld   b, b                                        ; $40ac: $40
	add  b                                           ; $40ad: $80
	add  b                                           ; $40ae: $80
	add  b                                           ; $40af: $80
	ldh  a, [rDIV]                                   ; $40b0: $f0 $04
	ld   hl, sp-$78                                  ; $40b2: $f8 $88
	ld   [hl], a                                     ; $40b4: $77
	inc  b                                           ; $40b5: $04
	nop                                              ; $40b6: $00
	add  b                                           ; $40b7: $80
	ld   [bc], a                                     ; $40b8: $02
	nop                                              ; $40b9: $00
	inc  bc                                          ; $40ba: $03
	add  b                                           ; $40bb: $80
	dec  b                                           ; $40bc: $05
	add  b                                           ; $40bd: $80
	inc  b                                           ; $40be: $04
	add  b                                           ; $40bf: $80
	inc  c                                           ; $40c0: $0c
	add  b                                           ; $40c1: $80
	inc  bc                                          ; $40c2: $03
	rlca                                             ; $40c3: $07
	rlca                                             ; $40c4: $07
	dec  b                                           ; $40c5: $05
	db   $fd                                         ; $40c6: $fd
	cp   a                                           ; $40c7: $bf
	add  c                                           ; $40c8: $81
	ld   b, c                                        ; $40c9: $41
	nop                                              ; $40ca: $00
	add  b                                           ; $40cb: $80
	add  b                                           ; $40cc: $80
	adc  h                                           ; $40cd: $8c
	add  b                                           ; $40ce: $80
	add  d                                           ; $40cf: $82
	add  b                                           ; $40d0: $80
	adc  a                                           ; $40d1: $8f
	nop                                              ; $40d2: $00
	rst  JumpTable                                         ; $40d3: $df
	add  b                                           ; $40d4: $80
	reti                                             ; $40d5: $d9


	ld   [bc], a                                     ; $40d6: $02
	ld   d, a                                        ; $40d7: $57
	xor  h                                           ; $40d8: $ac
	inc  h                                           ; $40d9: $24
	add  b                                           ; $40da: $80
	or   $03                                         ; $40db: $f6 $03
	adc  a                                           ; $40dd: $8f
	adc  e                                           ; $40de: $8b
	ld   b, e                                        ; $40df: $43
	ld   b, l                                        ; $40e0: $45
	add  b                                           ; $40e1: $80
	dec  h                                           ; $40e2: $25
	add  b                                           ; $40e3: $80
	inc  h                                           ; $40e4: $24
	add  b                                           ; $40e5: $80
	inc  d                                           ; $40e6: $14
	add  b                                           ; $40e7: $80
	call z, $7c0c                                    ; $40e8: $cc $0c $7c
	ld   c, e                                        ; $40eb: $4b
	adc  e                                           ; $40ec: $8b
	cp   a                                           ; $40ed: $bf
	add  $47                                         ; $40ee: $c6 $47
	rlca                                             ; $40f0: $07
	add  [hl]                                        ; $40f1: $86
	cp   $ff                                         ; $40f2: $fe $ff
	xor  $ab                                         ; $40f4: $ee $ab
	adc  b                                           ; $40f6: $88
	add  c                                           ; $40f7: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40f8: $cf
	inc  bc                                          ; $40f9: $03
	inc  e                                           ; $40fa: $1c
	add  b                                           ; $40fb: $80
	pop  hl                                          ; $40fc: $e1
	add  b                                           ; $40fd: $80
	add  e                                           ; $40fe: $83
	nop                                              ; $40ff: $00
	inc  bc                                          ; $4100: $03
	db   $e4                                         ; $4101: $e4
	add  h                                           ; $4102: $84
	ld   hl, sp+$60                                  ; $4103: $f8 $60
	add  c                                           ; $4105: $81
	db   $fc                                         ; $4106: $fc
	nop                                              ; $4107: $00
	ccf                                              ; $4108: $3f
	add  b                                           ; $4109: $80
	or   h                                           ; $410a: $b4
	ld   [bc], a                                     ; $410b: $02
	ld   [hl], h                                     ; $410c: $74
	ld   d, h                                        ; $410d: $54
	inc  h                                           ; $410e: $24
	add  d                                           ; $410f: $82
	jr   jr_088_4094                                 ; $4110: $18 $82

	ld   [$4804], sp                                 ; $4112: $08 $04 $48
	ld   [$0587], sp                                 ; $4115: $08 $87 $05
	dec  c                                           ; $4118: $0d
	add  c                                           ; $4119: $81
	add  hl, bc                                      ; $411a: $09
	ld   [bc], a                                     ; $411b: $02
	add  hl, sp                                      ; $411c: $39
	ccf                                              ; $411d: $3f
	ld   b, a                                        ; $411e: $47
	add  b                                           ; $411f: $80
	ld   a, l                                        ; $4120: $7d
	nop                                              ; $4121: $00
	ld   a, e                                        ; $4122: $7b
	add  b                                           ; $4123: $80
	ld   a, d                                        ; $4124: $7a
	add  b                                           ; $4125: $80
	ld   [hl], d                                     ; $4126: $72
	dec  bc                                          ; $4127: $0b
	ret  nz                                          ; $4128: $c0

	daa                                              ; $4129: $27
	cp   a                                           ; $412a: $bf
	daa                                              ; $412b: $27
	add  [hl]                                        ; $412c: $86
	add  $2c                                         ; $412d: $c6 $2c
	daa                                              ; $412f: $27
	sub  d                                           ; $4130: $92
	adc  d                                           ; $4131: $8a
	dec  h                                           ; $4132: $25
	dec  d                                           ; $4133: $15
	add  b                                           ; $4134: $80
	inc  de                                          ; $4135: $13
	inc  bc                                          ; $4136: $03
	ret  nz                                          ; $4137: $c0

	and  b                                           ; $4138: $a0
	and  e                                           ; $4139: $a3
	ld   h, e                                        ; $413a: $63
	add  b                                           ; $413b: $80
	ld   e, [hl]                                     ; $413c: $5e
	inc  c                                           ; $413d: $0c
	ld   h, d                                        ; $413e: $62
	add  d                                           ; $413f: $82
	sub  e                                           ; $4140: $93
	db   $e3                                         ; $4141: $e3
	add  c                                           ; $4142: $81
	pop  af                                          ; $4143: $f1
	ld   a, [hl-]                                    ; $4144: $3a
	ld   [hl], d                                     ; $4145: $72
	or   b                                           ; $4146: $b0
	sbc  b                                           ; $4147: $98
	add  l                                           ; $4148: $85
	sbc  l                                           ; $4149: $9d
	ld   h, l                                        ; $414a: $65
	add  b                                           ; $414b: $80
	ld   a, a                                        ; $414c: $7f
	ld   bc, $c547                                   ; $414d: $01 $47 $c5
	add  b                                           ; $4150: $80
	add  l                                           ; $4151: $85
	add  b                                           ; $4152: $80
	ld   [bc], a                                     ; $4153: $02
	inc  bc                                          ; $4154: $03
	add  e                                           ; $4155: $83
	add  d                                           ; $4156: $82
	add  [hl]                                        ; $4157: $86
	add  a                                           ; $4158: $87
	add  b                                           ; $4159: $80
	adc  e                                           ; $415a: $8b
	ld   [bc], a                                     ; $415b: $02
	ld   c, [hl]                                     ; $415c: $4e
	xor  l                                           ; $415d: $ad
	db   $e4                                         ; $415e: $e4
	add  b                                           ; $415f: $80
	add  h                                           ; $4160: $84
	add  b                                           ; $4161: $80
	inc  b                                           ; $4162: $04
	ld   b, $00                                      ; $4163: $06 $00
	adc  b                                           ; $4165: $88
	adc  a                                           ; $4166: $8f
	rst  $38                                         ; $4167: $ff
	add  $86                                         ; $4168: $c6 $86
	cp   b                                           ; $416a: $b8
	add  c                                           ; $416b: $81

jr_088_416c:
	ld   [$f801], sp                                 ; $416c: $08 $01 $f8
	ld   [$1882], sp                                 ; $416f: $08 $82 $18
	add  b                                           ; $4172: $80
	inc  h                                           ; $4173: $24
	add  b                                           ; $4174: $80
	db   $f4                                         ; $4175: $f4
	ld   [bc], a                                     ; $4176: $02
	db   $fc                                         ; $4177: $fc
	adc  h                                           ; $4178: $8c
	adc  [hl]                                        ; $4179: $8e
	add  c                                           ; $417a: $81
	add  [hl]                                        ; $417b: $86
	inc  bc                                          ; $417c: $03
	ld   b, l                                        ; $417d: $45
	dec  h                                           ; $417e: $25
	rlca                                             ; $417f: $07
	rra                                              ; $4180: $1f
	add  h                                           ; $4181: $84
	nop                                              ; $4182: $00
	add  b                                           ; $4183: $80
	ld   bc, $0282                                   ; $4184: $01 $82 $02
	dec  b                                           ; $4187: $05
	cp   $be                                         ; $4188: $fe $be
	or   l                                           ; $418a: $b5
	sub  l                                           ; $418b: $95
	inc  d                                           ; $418c: $14
	ld   [hl], h                                     ; $418d: $74
	add  b                                           ; $418e: $80
	ccf                                              ; $418f: $3f
	inc  b                                           ; $4190: $04
	call nc, $07df                                   ; $4191: $d4 $df $07
	rrca                                             ; $4194: $0f
	inc  bc                                          ; $4195: $03
	add  b                                           ; $4196: $80
	inc  b                                           ; $4197: $04
	inc  bc                                          ; $4198: $03
	nop                                              ; $4199: $00
	rst  $20                                         ; $419a: $e7
	db   $fc                                         ; $419b: $fc
	ld   b, h                                        ; $419c: $44
	add  c                                           ; $419d: $81
	ld   e, b                                        ; $419e: $58
	ld   b, $f8                                      ; $419f: $06 $f8
	rst  $38                                         ; $41a1: $ff
	xor  a                                           ; $41a2: $af
	cp   $90                                         ; $41a3: $fe $90
	rst  JumpTable                                         ; $41a5: $df
	ld   e, $80                                      ; $41a6: $1e $80
	rlca                                             ; $41a8: $07
	inc  bc                                          ; $41a9: $03
	inc  bc                                          ; $41aa: $03
	call c, $7656                                    ; $41ab: $dc $56 $76
	add  b                                           ; $41ae: $80
	db   $f4                                         ; $41af: $f4
	add  b                                           ; $41b0: $80
	ld   h, h                                        ; $41b1: $64
	add  b                                           ; $41b2: $80
	ld   l, b                                        ; $41b3: $68
	add  d                                           ; $41b4: $82
	add  sp, $03                                     ; $41b5: $e8 $03
	ret  c                                           ; $41b7: $d8

jr_088_41b8:
	ld   e, h                                        ; $41b8: $5c
	ld   hl, sp+$7b                                  ; $41b9: $f8 $7b
	add  e                                           ; $41bb: $83

jr_088_41bc:
	ld   [$0c00], sp                                 ; $41bc: $08 $00 $0c
	add  c                                           ; $41bf: $81

jr_088_41c0:
	inc  b                                           ; $41c0: $04
	add  b                                           ; $41c1: $80
	ld   [bc], a                                     ; $41c2: $02
	add  b                                           ; $41c3: $80
	ld   bc, $1802                                   ; $41c4: $01 $02 $18
	nop                                              ; $41c7: $00
	ld   a, [de]                                     ; $41c8: $1a
	add  c                                           ; $41c9: $81
	add  d                                           ; $41ca: $82
	nop                                              ; $41cb: $00
	ld   [bc], a                                     ; $41cc: $02
	add  e                                           ; $41cd: $83
	ld   b, d                                        ; $41ce: $42
	ld   bc, $424a                                   ; $41cf: $01 $4a $42
	add  b                                           ; $41d2: $80
	jp   nz, Jump_088_5203                           ; $41d3: $c2 $03 $52

	ld   b, d                                        ; $41d6: $42
	inc  h                                           ; $41d7: $24
	inc  b                                           ; $41d8: $04
	add  b                                           ; $41d9: $80
	ld   e, $80                                      ; $41da: $1e $80
	ld   de, $1080                                   ; $41dc: $11 $80 $10
	add  b                                           ; $41df: $80
	ld   [$0780], sp                                 ; $41e0: $08 $80 $07
	add  h                                           ; $41e3: $84
	nop                                              ; $41e4: $00
	add  b                                           ; $41e5: $80
	ld   a, h                                        ; $41e6: $7c
	add  b                                           ; $41e7: $80
	add  e                                           ; $41e8: $83
	add  b                                           ; $41e9: $80
	jr   nz, jr_088_416c                             ; $41ea: $20 $80

	pop  hl                                          ; $41ec: $e1
	add  b                                           ; $41ed: $80
	ld   hl, $1e80                                   ; $41ee: $21 $80 $1e
	add  c                                           ; $41f1: $81
	nop                                              ; $41f2: $00
	nop                                              ; $41f3: $00
	inc  bc                                          ; $41f4: $03
	add  b                                           ; $41f5: $80
	rra                                              ; $41f6: $1f
	ld   bc, $e3e0                                   ; $41f7: $01 $e0 $e3
	add  d                                           ; $41fa: $82
	nop                                              ; $41fb: $00
	add  b                                           ; $41fc: $80
	ld   hl, sp-$80                                  ; $41fd: $f8 $80
	rlca                                             ; $41ff: $07
	add  b                                           ; $4200: $80
	nop                                              ; $4201: $00
	inc  b                                           ; $4202: $04
	ld   a, a                                        ; $4203: $7f
	rst  ToBoot                                         ; $4204: $c7

jr_088_4205:
	ld   b, $a3                                      ; $4205: $06 $a3
	rrca                                             ; $4207: $0f
	add  c                                           ; $4208: $81
	inc  de                                          ; $4209: $13
	add  b                                           ; $420a: $80
	cpl                                              ; $420b: $2f
	ld   bc, $f1f0                                   ; $420c: $01 $f0 $f1
	add  d                                           ; $420f: $82
	nop                                              ; $4210: $00
	rlca                                             ; $4211: $07
	rst  $38                                         ; $4212: $ff
	ldh  [rAUD4LEN], a                               ; $4213: $e0 $20
	ldh  [$e1], a                                    ; $4215: $e0 $e1
	ret  nc                                          ; $4217: $d0

	sbc  $d0                                         ; $4218: $de $d0
	add  b                                           ; $421a: $80
	sub  b                                           ; $421b: $90
	inc  bc                                          ; $421c: $03
	ld   bc, $3e21                                   ; $421d: $01 $21 $3e
	cp   $80                                         ; $4220: $fe $80
	nop                                              ; $4222: $00

jr_088_4223:
	add  b                                           ; $4223: $80
	ld   b, h                                        ; $4224: $44
	ld   [bc], a                                     ; $4225: $02
	ld   hl, sp+$38                                  ; $4226: $f8 $38
	ret  z                                           ; $4228: $c8

	add  c                                           ; $4229: $81
	ld   [$1080], sp                                 ; $422a: $08 $80 $10
	add  b                                           ; $422d: $80
	ldh  [$be], a                                    ; $422e: $e0 $be
	nop                                              ; $4230: $00
	add  d                                           ; $4231: $82
	inc  bc                                          ; $4232: $03
	adc  d                                           ; $4233: $8a
	nop                                              ; $4234: $00
	add  b                                           ; $4235: $80
	jr   nz, jr_088_41b8                             ; $4236: $20 $80

	ld   h, c                                        ; $4238: $61
	add  b                                           ; $4239: $80
	jr   nz, jr_088_41bc                             ; $423a: $20 $80

	nop                                              ; $423c: $00
	add  d                                           ; $423d: $82
	jr   nz, jr_088_41c0                             ; $423e: $20 $80

	ld   h, b                                        ; $4240: $60
	add  h                                           ; $4241: $84
	ldh  [$84], a                                    ; $4242: $e0 $84
	nop                                              ; $4244: $00
	add  b                                           ; $4245: $80
	ld   b, b                                        ; $4246: $40
	add  h                                           ; $4247: $84
	nop                                              ; $4248: $00
	add  b                                           ; $4249: $80
	add  b                                           ; $424a: $80

jr_088_424b:
	sub  h                                           ; $424b: $94
	nop                                              ; $424c: $00
	add  d                                           ; $424d: $82
	ld   bc, $0088                                   ; $424e: $01 $88 $00
	add  d                                           ; $4251: $82
	ld   bc, $0380                                   ; $4252: $01 $80 $03
	add  b                                           ; $4255: $80
	rlca                                             ; $4256: $07
	add  b                                           ; $4257: $80
	ccf                                              ; $4258: $3f
	add  b                                           ; $4259: $80
	ret  nz                                          ; $425a: $c0

	add  [hl]                                        ; $425b: $86
	nop                                              ; $425c: $00
	add  h                                           ; $425d: $84
	ld   [$8880], sp                                 ; $425e: $08 $80 $88
	add  b                                           ; $4261: $80
	sub  b                                           ; $4262: $90
	add  b                                           ; $4263: $80
	or   b                                           ; $4264: $b0
	add  h                                           ; $4265: $84
	add  b                                           ; $4266: $80
	adc  d                                           ; $4267: $8a
	nop                                              ; $4268: $00
	ld   [bc], a                                     ; $4269: $02
	ld   [bc], a                                     ; $426a: $02
	nop                                              ; $426b: $00
	ld   bc, $0081                                   ; $426c: $01 $81 $00
	nop                                              ; $426f: $00

jr_088_4270:
	inc  bc                                          ; $4270: $03
	adc  [hl]                                        ; $4271: $8e
	nop                                              ; $4272: $00
	add  d                                           ; $4273: $82
	ld   bc, $0000                                   ; $4274: $01 $00 $00
	add  b                                           ; $4277: $80
	ld   a, $80                                      ; $4278: $3e $80
	ld   a, a                                        ; $427a: $7f
	ld   b, $73                                      ; $427b: $06 $73
	ld   h, e                                        ; $427d: $63
	ld   l, l                                        ; $427e: $6d
	ld   h, c                                        ; $427f: $61

Jump_088_4280:
	ld   l, h                                        ; $4280: $6c
	ld   h, b                                        ; $4281: $60
	jr   nc, jr_088_4205                             ; $4282: $30 $81

	jr   nz, @-$7e                                   ; $4284: $20 $80

	nop                                              ; $4286: $00
	ld   [bc], a                                     ; $4287: $02
	add  b                                           ; $4288: $80
	jr   jr_088_4223                                 ; $4289: $18 $98

	add  b                                           ; $428b: $80
	jr   c, jr_088_429c                              ; $428c: $38 $0e

	ret  nc                                          ; $428e: $d0

	pop  de                                          ; $428f: $d1
	ld   h, b                                        ; $4290: $60
	ld   h, e                                        ; $4291: $63
	ret  nz                                          ; $4292: $c0

	jp   nz, $c1c0                                   ; $4293: $c2 $c0 $c1

	nop                                              ; $4296: $00
	reti                                             ; $4297: $d9


	nop                                              ; $4298: $00
	ret  nc                                          ; $4299: $d0

	nop                                              ; $429a: $00
	ld   a, b                                        ; $429b: $78

jr_088_429c:
	ld   [hl], b                                     ; $429c: $70
	add  b                                           ; $429d: $80
	cp   b                                           ; $429e: $b8
	ld   a, [bc]                                     ; $429f: $0a
	ret  c                                           ; $42a0: $d8

	ret  nc                                          ; $42a1: $d0

	pop  de                                          ; $42a2: $d1
	ret  nz                                          ; $42a3: $c0

	ldh  a, [$60]                                    ; $42a4: $f0 $60
	cp   b                                           ; $42a6: $b8
	db   $10                                         ; $42a7: $10
	dec  a                                           ; $42a8: $3d
	inc  c                                           ; $42a9: $0c
	ld   de, $2080                                   ; $42aa: $11 $80 $20
	ld   bc, $1d1c                                   ; $42ad: $01 $1c $1d
	add  b                                           ; $42b0: $80
	inc  c                                           ; $42b1: $0c
	inc  bc                                          ; $42b2: $03
	ld   c, $8e                                      ; $42b3: $0e $8e
	dec  b                                           ; $42b5: $05
	add  l                                           ; $42b6: $85
	add  b                                           ; $42b7: $80
	rlca                                             ; $42b8: $07
	add  b                                           ; $42b9: $80
	ld   [bc], a                                     ; $42ba: $02
	nop                                              ; $42bb: $00
	nop                                              ; $42bc: $00
	add  b                                           ; $42bd: $80

jr_088_42be:
	ld   b, b                                        ; $42be: $40
	ld   [$0038], sp                                 ; $42bf: $08 $38 $00
	ld   b, b                                        ; $42c2: $40
	nop                                              ; $42c3: $00
	ld   a, b                                        ; $42c4: $78
	nop                                              ; $42c5: $00
	stop                                             ; $42c6: $10 $00
	jr   nz, jr_088_424b                             ; $42c8: $20 $81

	nop                                              ; $42ca: $00
	nop                                              ; $42cb: $00
	or   b                                           ; $42cc: $b0
	add  c                                           ; $42cd: $81
	add  b                                           ; $42ce: $80
	add  h                                           ; $42cf: $84
	nop                                              ; $42d0: $00
	add  b                                           ; $42d1: $80
	ld   bc, $0082                                   ; $42d2: $01 $82 $00
	add  b                                           ; $42d5: $80
	ld   h, c                                        ; $42d6: $61
	adc  h                                           ; $42d7: $8c
	nop                                              ; $42d8: $00
	add  h                                           ; $42d9: $84
	inc  bc                                          ; $42da: $03
	add  b                                           ; $42db: $80
	rlca                                             ; $42dc: $07
	add  b                                           ; $42dd: $80
	nop                                              ; $42de: $00
	ld   [bc], a                                     ; $42df: $02
	add  hl, sp                                      ; $42e0: $39
	jr   c, @+$08                                    ; $42e1: $38 $06

	add  c                                           ; $42e3: $81
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	rrca                                             ; $42e6: $0f
	add  c                                           ; $42e7: $81
	ld   [$1880], sp                                 ; $42e8: $08 $80 $18
	add  d                                           ; $42eb: $82
	jr   nz, jr_088_4270                             ; $42ec: $20 $82

	jr   nc, jr_088_4270                             ; $42ee: $30 $80

	ld   [hl], b                                     ; $42f0: $70
	add  b                                           ; $42f1: $80
	ldh  a, [$82]                                    ; $42f2: $f0 $82
	ldh  [$80], a                                    ; $42f4: $e0 $80
	ret  c                                           ; $42f6: $d8

	add  b                                           ; $42f7: $80
	ld   [$0084], sp                                 ; $42f8: $08 $84 $00
	add  b                                           ; $42fb: $80
	ld   [bc], a                                     ; $42fc: $02
	sub  b                                           ; $42fd: $90
	nop                                              ; $42fe: $00
	ld   b, $02                                      ; $42ff: $06 $02
	inc  c                                           ; $4301: $0c
	nop                                              ; $4302: $00
	ld   bc, $050d                                   ; $4303: $01 $0d $05
	rlca                                             ; $4306: $07
	add  e                                           ; $4307: $83
	nop                                              ; $4308: $00
	ld   [bc], a                                     ; $4309: $02
	ld   bc, $0100                                   ; $430a: $01 $00 $01
	add  b                                           ; $430d: $80
	ld   [bc], a                                     ; $430e: $02
	add  b                                           ; $430f: $80
	inc  bc                                          ; $4310: $03
	adc  e                                           ; $4311: $8b
	nop                                              ; $4312: $00
	dec  b                                           ; $4313: $05
	ld   c, b                                        ; $4314: $48
	inc  [hl]                                        ; $4315: $34
	dec  [hl]                                        ; $4316: $35
	sub  [hl]                                        ; $4317: $96
	pop  bc                                          ; $4318: $c1
	nop                                              ; $4319: $00
	add  b                                           ; $431a: $80
	ld   d, $00                                      ; $431b: $16 $00
	ld   e, $84                                      ; $431d: $1e $84
	nop                                              ; $431f: $00
	add  d                                           ; $4320: $82
	add  b                                           ; $4321: $80
	adc  e                                           ; $4322: $8b
	nop                                              ; $4323: $00
	inc  bc                                          ; $4324: $03
	inc  b                                           ; $4325: $04
	jr   @+$22                                       ; $4326: $18 $20

	jp   $1880                                       ; $4328: $c3 $80 $18


	ld   [bc], a                                     ; $432b: $02
	ei                                               ; $432c: $fb
	inc  bc                                          ; $432d: $03
	rlca                                             ; $432e: $07
	add  c                                           ; $432f: $81
	nop                                              ; $4330: $00
	add  b                                           ; $4331: $80
	jr   nz, jr_088_42be                             ; $4332: $20 $8a

	nop                                              ; $4334: $00
	add  b                                           ; $4335: $80
	inc  b                                           ; $4336: $04
	add  c                                           ; $4337: $81
	nop                                              ; $4338: $00
	ld   [bc], a                                     ; $4339: $02
	ld   b, b                                        ; $433a: $40
	call z, $806c                                    ; $433b: $cc $6c $80
	inc  c                                           ; $433e: $0c
	ld   [bc], a                                     ; $433f: $02
	ld   [hl], b                                     ; $4340: $70
	ld   d, b                                        ; $4341: $50
	ret  nz                                          ; $4342: $c0

	add  e                                           ; $4343: $83
	nop                                              ; $4344: $00
	nop                                              ; $4345: $00
	ld   bc, $0681                                   ; $4346: $01 $81 $06
	add  c                                           ; $4349: $81
	rlca                                             ; $434a: $07
	add  c                                           ; $434b: $81
	inc  bc                                          ; $434c: $03
	inc  bc                                          ; $434d: $03
	rlca                                             ; $434e: $07
	dec  b                                           ; $434f: $05
	rlca                                             ; $4350: $07
	ld   b, $80                                      ; $4351: $06 $80
	rra                                              ; $4353: $1f
	add  d                                           ; $4354: $82
	nop                                              ; $4355: $00
	add  b                                           ; $4356: $80
	ld   bc, $0f82                                   ; $4357: $01 $82 $0f
	add  b                                           ; $435a: $80
	ld   e, $82                                      ; $435b: $1e $82
	nop                                              ; $435d: $00
	add  d                                           ; $435e: $82
	inc  b                                           ; $435f: $04
	nop                                              ; $4360: $00
	add  h                                           ; $4361: $84
	add  c                                           ; $4362: $81
	inc  b                                           ; $4363: $04
	add  b                                           ; $4364: $80
	add  h                                           ; $4365: $84
	add  c                                           ; $4366: $81
	adc  h                                           ; $4367: $8c
	nop                                              ; $4368: $00
	inc  c                                           ; $4369: $0c
	add  b                                           ; $436a: $80
	sbc  h                                           ; $436b: $9c
	add  b                                           ; $436c: $80
	cp   b                                           ; $436d: $b8
	add  b                                           ; $436e: $80
	nop                                              ; $436f: $00
	add  d                                           ; $4370: $82
	ldh  a, [$80]                                    ; $4371: $f0 $80
	ldh  [rIE], a                                    ; $4373: $e0 $ff
	nop                                              ; $4375: $00
	rst  $38                                         ; $4376: $ff
	nop                                              ; $4377: $00
	rst  $38                                         ; $4378: $ff
	nop                                              ; $4379: $00
	rst  $38                                         ; $437a: $ff
	nop                                              ; $437b: $00
	rst  $38                                         ; $437c: $ff
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	push hl                                          ; $4380: $e5
	nop                                              ; $4381: $00
	add  b                                           ; $4382: $80
	nop                                              ; $4383: $00
	ld   [bc], a                                     ; $4384: $02
	inc  bc                                          ; $4385: $03
	nop                                              ; $4386: $00
	ld   bc, $0089                                   ; $4387: $01 $89 $00
	dec  h                                           ; $438a: $25
	ld   [bc], a                                     ; $438b: $02
	nop                                              ; $438c: $00
	rst  $38                                         ; $438d: $ff
	nop                                              ; $438e: $00
	rst  $38                                         ; $438f: $ff
	nop                                              ; $4390: $00
	ccf                                              ; $4391: $3f
	rst  $38                                         ; $4392: $ff
	rrca                                             ; $4393: $0f
	rst  $38                                         ; $4394: $ff
	jp   $f0ff                                       ; $4395: $c3 $ff $f0


	rst  $38                                         ; $4398: $ff
	ld   a, h                                        ; $4399: $7c
	rst  $38                                         ; $439a: $ff
	add  b                                           ; $439b: $80
	nop                                              ; $439c: $00
	rst  $38                                         ; $439d: $ff
	nop                                              ; $439e: $00
	rst  $38                                         ; $439f: $ff
	nop                                              ; $43a0: $00
	adc  a                                           ; $43a1: $8f
	rst  $28                                         ; $43a2: $ef
	add  e                                           ; $43a3: $83
	ei                                               ; $43a4: $fb
	ldh  [$fe], a                                    ; $43a5: $e0 $fe
	ld   hl, sp-$01                                  ; $43a7: $f8 $ff
	ccf                                              ; $43a9: $3f
	rst  $38                                         ; $43aa: $ff
	pop  bc                                          ; $43ab: $c1
	nop                                              ; $43ac: $00
	rst  $38                                         ; $43ad: $ff
	nop                                              ; $43ae: $00
	rst  $38                                         ; $43af: $ff
	nop                                              ; $43b0: $00
	add  b                                           ; $43b1: $80
	rst  $38                                         ; $43b2: $ff
	inc  b                                           ; $43b3: $04
	ldh  a, [$f9]                                    ; $43b4: $f0 $f9
	ret                                              ; $43b6: $c9


	ldh  [rAUD4LEN], a                               ; $43b7: $e0 $20
	add  b                                           ; $43b9: $80
	add  b                                           ; $43ba: $80

jr_088_43bb:
	add  c                                           ; $43bb: $81
	nop                                              ; $43bc: $00
	ld   [de], a                                     ; $43bd: $12
	rst  $38                                         ; $43be: $ff
	nop                                              ; $43bf: $00
	rst  $38                                         ; $43c0: $ff
	nop                                              ; $43c1: $00
	ccf                                              ; $43c2: $3f
	rst  $38                                         ; $43c3: $ff
	ld   c, $ff                                      ; $43c4: $0e $ff
	nop                                              ; $43c6: $00
	ld   a, a                                        ; $43c7: $7f
	ld   d, [hl]                                     ; $43c8: $56
	ccf                                              ; $43c9: $3f
	ld   hl, $090f                                   ; $43ca: $21 $0f $09
	nop                                              ; $43cd: $00
	ret  nz                                          ; $43ce: $c0

	nop                                              ; $43cf: $00
	add  b                                           ; $43d0: $80
	adc  c                                           ; $43d1: $89
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	ld   b, d                                        ; $43d4: $42
	adc  l                                           ; $43d5: $8d
	nop                                              ; $43d6: $00
	jr   nz, @-$65                                   ; $43d7: $20 $99

	rst  $38                                         ; $43d9: $ff
	add  e                                           ; $43da: $83
	rst  $38                                         ; $43db: $ff
	pop  hl                                          ; $43dc: $e1
	rst  $38                                         ; $43dd: $ff
	ld   hl, sp-$01                                  ; $43de: $f8 $ff
	ld   l, [hl]                                     ; $43e0: $6e
	rst  $38                                         ; $43e1: $ff
	adc  l                                           ; $43e2: $8d
	ld   a, l                                        ; $43e3: $7d
	ld   h, e                                        ; $43e4: $63
	dec  de                                          ; $43e5: $1b
	ld   a, [hl]                                     ; $43e6: $7e
	ld   h, [hl]                                     ; $43e7: $66
	call z, $c2fe                                    ; $43e8: $cc $fe $c2
	db   $fc                                         ; $43eb: $fc
	ldh  a, [$fe]                                    ; $43ec: $f0 $fe
	ld   a, d                                        ; $43ee: $7a
	db   $fc                                         ; $43ef: $fc
	inc  e                                           ; $43f0: $1c
	ld   hl, sp-$70                                  ; $43f1: $f8 $90
	ld   hl, sp+$50                                  ; $43f3: $f8 $50
	ld   e, b                                        ; $43f5: $58
	xor  c                                           ; $43f6: $a9
	xor  l                                           ; $43f7: $ad
	inc  b                                           ; $43f8: $04
	adc  l                                           ; $43f9: $8d
	nop                                              ; $43fa: $00
	ld   [bc], a                                     ; $43fb: $02
	inc  bc                                          ; $43fc: $03
	rlca                                             ; $43fd: $07
	dec  b                                           ; $43fe: $05
	add  b                                           ; $43ff: $80
	inc  bc                                          ; $4400: $03
	ld   bc, $0001                                   ; $4401: $01 $01 $00
	add  b                                           ; $4404: $80
	ld   bc, $0085                                   ; $4405: $01 $85 $00
	nop                                              ; $4408: $00
	ld   b, b                                        ; $4409: $40
	adc  l                                           ; $440a: $8d
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	ld   b, d                                        ; $440d: $42
	adc  l                                           ; $440e: $8d
	nop                                              ; $440f: $00
	ld   bc, $8183                                   ; $4410: $01 $83 $81
	add  c                                           ; $4413: $81
	nop                                              ; $4414: $00
	ld   [bc], a                                     ; $4415: $02
	add  b                                           ; $4416: $80
	ldh  [$60], a                                    ; $4417: $e0 $60
	add  b                                           ; $4419: $80
	add  hl, de                                      ; $441a: $19
	add  b                                           ; $441b: $80
	ld   b, $80                                      ; $441c: $06 $80
	ld   bc, $0080                                   ; $441e: $01 $80 $00
	add  b                                           ; $4421: $80
	add  c                                           ; $4422: $81
	add  b                                           ; $4423: $80
	ld   h, c                                        ; $4424: $61
	add  b                                           ; $4425: $80
	add  hl, de                                      ; $4426: $19
	inc  bc                                          ; $4427: $03
	ld   [$8c0e], sp                                 ; $4428: $08 $0e $8c
	adc  d                                           ; $442b: $8a
	add  b                                           ; $442c: $80
	dec  d                                           ; $442d: $15
	add  b                                           ; $442e: $80
	xor  d                                           ; $442f: $aa
	ld   [bc], a                                     ; $4430: $02
	ld   e, b                                        ; $4431: $58
	ld   a, b                                        ; $4432: $78
	jr   nz, jr_088_43bb                             ; $4433: $20 $86

	nop                                              ; $4435: $00
	inc  bc                                          ; $4436: $03
	add  b                                           ; $4437: $80
	nop                                              ; $4438: $00
	ret  nz                                          ; $4439: $c0

	ld   b, b                                        ; $443a: $40
	add  h                                           ; $443b: $84
	nop                                              ; $443c: $00
	ld   [bc], a                                     ; $443d: $02
	ld   bc, $0100                                   ; $443e: $01 $00 $01
	add  [hl]                                        ; $4441: $86
	nop                                              ; $4442: $00
	ld   [bc], a                                     ; $4443: $02
	jr   nz, jr_088_4446                             ; $4444: $20 $00

jr_088_4446:
	ld   h, b                                        ; $4446: $60
	adc  l                                           ; $4447: $8d
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00
	ld   b, d                                        ; $444a: $42
	adc  l                                           ; $444b: $8d
	nop                                              ; $444c: $00
	ld   bc, $0381                                   ; $444d: $01 $81 $03
	add  b                                           ; $4450: $80
	nop                                              ; $4451: $00
	dec  b                                           ; $4452: $05
	ld   b, b                                        ; $4453: $40
	nop                                              ; $4454: $00
	ret  nz                                          ; $4455: $c0

	ld   c, $0f                                      ; $4456: $0e $0f
	ld   bc, $0084                                   ; $4458: $01 $84 $00
	add  b                                           ; $445b: $80
	ldh  [$82], a                                    ; $445c: $e0 $82
	nop                                              ; $445e: $00
	add  b                                           ; $445f: $80
	inc  e                                           ; $4460: $1c
	add  b                                           ; $4461: $80
	add  b                                           ; $4462: $80
	add  b                                           ; $4463: $80
	ld   h, b                                        ; $4464: $60
	add  hl, bc                                      ; $4465: $09
	ld   [$0a18], sp                                 ; $4466: $08 $18 $0a

jr_088_4469:
	ld   e, $04                                      ; $4469: $1e $04
	nop                                              ; $446b: $00
	ld   bc, $c100                                   ; $446c: $01 $00 $c1
	ret  nz                                          ; $446f: $c0

	add  b                                           ; $4470: $80
	ld   b, b                                        ; $4471: $40
	add  [hl]                                        ; $4472: $86
	nop                                              ; $4473: $00
	ld   [$0c7c], sp                                 ; $4474: $08 $7c $0c
	halt                                             ; $4477: $76
	ld   b, $01                                      ; $4478: $06 $01
	rlca                                             ; $447a: $07
	inc  b                                           ; $447b: $04
	inc  bc                                          ; $447c: $03
	ld   bc, $0083                                   ; $447d: $01 $83 $00
	ld   [bc], a                                     ; $4480: $02
	inc  b                                           ; $4481: $04
	inc  c                                           ; $4482: $0c
	ld   c, b                                        ; $4483: $48
	adc  l                                           ; $4484: $8d
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	ld   b, d                                        ; $4487: $42
	adc  l                                           ; $4488: $8d
	nop                                              ; $4489: $00
	ld   a, [bc]                                     ; $448a: $0a
	jp   nz, $01c0                                   ; $448b: $c2 $c0 $01

	ld   sp, $4e79                                   ; $448e: $31 $79 $4e
	inc  h                                           ; $4491: $24
	jr   nc, jr_088_44a6                             ; $4492: $30 $12

	nop                                              ; $4494: $00
	ld   bc, $0083                                   ; $4495: $01 $83 $00
	add  b                                           ; $4498: $80
	ld   h, c                                        ; $4499: $61
	add  b                                           ; $449a: $80
	add  b                                           ; $449b: $80
	rra                                              ; $449c: $1f
	ret  nz                                          ; $449d: $c0

	nop                                              ; $449e: $00
	jr   nz, jr_088_44a1                             ; $449f: $20 $00

jr_088_44a1:
	ld   e, $00                                      ; $44a1: $1e $00
	ld   b, e                                        ; $44a3: $43
	nop                                              ; $44a4: $00
	sbc  b                                           ; $44a5: $98

jr_088_44a6:
	nop                                              ; $44a6: $00
	inc  l                                           ; $44a7: $2c
	nop                                              ; $44a8: $00
	adc  c                                           ; $44a9: $89
	add  b                                           ; $44aa: $80
	ld   b, $00                                      ; $44ab: $06 $00
	jr   c, jr_088_44af                              ; $44ad: $38 $00

jr_088_44af:
	ld   b, b                                        ; $44af: $40
	nop                                              ; $44b0: $00
	add  b                                           ; $44b1: $80
	nop                                              ; $44b2: $00
	ld   hl, $4000                                   ; $44b3: $21 $00 $40
	nop                                              ; $44b6: $00
	adc  h                                           ; $44b7: $8c
	nop                                              ; $44b8: $00
	dec  d                                           ; $44b9: $15
	ld   c, $05                                      ; $44ba: $0e $05
	dec  c                                           ; $44bc: $0d
	add  b                                           ; $44bd: $80
	ld   a, [bc]                                     ; $44be: $0a
	add  b                                           ; $44bf: $80
	dec  c                                           ; $44c0: $0d

jr_088_44c1:
	add  b                                           ; $44c1: $80
	ld   a, [bc]                                     ; $44c2: $0a
	add  b                                           ; $44c3: $80
	ld   [$0c80], sp                                 ; $44c4: $08 $80 $0c
	ld   [bc], a                                     ; $44c7: $02
	rrca                                             ; $44c8: $0f
	inc  bc                                          ; $44c9: $03
	ld   c, h                                        ; $44ca: $4c
	adc  l                                           ; $44cb: $8d
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	ld   b, d                                        ; $44ce: $42
	adc  c                                           ; $44cf: $89
	nop                                              ; $44d0: $00
	ld   [bc], a                                     ; $44d1: $02
	ld   bc, $0300                                   ; $44d2: $01 $00 $03
	add  l                                           ; $44d5: $85
	nop                                              ; $44d6: $00
	ld   c, $e0                                      ; $44d7: $0e $e0
	nop                                              ; $44d9: $00
	jr   nz, jr_088_44dc                             ; $44da: $20 $00

jr_088_44dc:
	ret  nz                                          ; $44dc: $c0

	nop                                              ; $44dd: $00
	rst  $38                                         ; $44de: $ff
	nop                                              ; $44df: $00
	rst  $38                                         ; $44e0: $ff
	nop                                              ; $44e1: $00
	ld   b, c                                        ; $44e2: $41
	nop                                              ; $44e3: $00
	ld   h, e                                        ; $44e4: $63
	nop                                              ; $44e5: $00
	jr   nz, jr_088_4469                             ; $44e6: $20 $81

	nop                                              ; $44e8: $00
	jr   jr_088_44f6                                 ; $44e9: $18 $0b

	nop                                              ; $44eb: $00
	add  hl, bc                                      ; $44ec: $09
	nop                                              ; $44ed: $00
	rst  $38                                         ; $44ee: $ff
	nop                                              ; $44ef: $00
	rst  $38                                         ; $44f0: $ff
	nop                                              ; $44f1: $00
	ld   c, a                                        ; $44f2: $4f
	nop                                              ; $44f3: $00
	ld   c, $00                                      ; $44f4: $0e $00

jr_088_44f6:
	ld   [hl+], a                                    ; $44f6: $22
	nop                                              ; $44f7: $00
	db   $dd                                         ; $44f8: $dd
	nop                                              ; $44f9: $00
	ld   [bc], a                                     ; $44fa: $02
	ld   bc, $00bd                                   ; $44fb: $01 $bd $00
	rst  $38                                         ; $44fe: $ff
	nop                                              ; $44ff: $00

Call_088_4500:
	rst  $38                                         ; $4500: $ff
	nop                                              ; $4501: $00
	adc  b                                           ; $4502: $88
	add  c                                           ; $4503: $81
	nop                                              ; $4504: $00
	inc  c                                           ; $4505: $0c
	adc  [hl]                                        ; $4506: $8e
	nop                                              ; $4507: $00
	ld   bc, $c080                                   ; $4508: $01 $80 $c0
	add  b                                           ; $450b: $80
	rst  ToBoot                                         ; $450c: $c7
	nop                                              ; $450d: $00
	rst  $38                                         ; $450e: $ff
	nop                                              ; $450f: $00
	rst  $38                                         ; $4510: $ff
	nop                                              ; $4511: $00
	ld   b, b                                        ; $4512: $40
	adc  c                                           ; $4513: $89
	nop                                              ; $4514: $00
	ld   [bc], a                                     ; $4515: $02
	add  b                                           ; $4516: $80
	nop                                              ; $4517: $00
	ret  nz                                          ; $4518: $c0

	adc  a                                           ; $4519: $8f
	nop                                              ; $451a: $00
	ld   c, $01                                      ; $451b: $0e $01
	nop                                              ; $451d: $00
	ld   [bc], a                                     ; $451e: $02
	nop                                              ; $451f: $00
	ld   [bc], a                                     ; $4520: $02
	nop                                              ; $4521: $00
	ld   [bc], a                                     ; $4522: $02
	ld   bc, $0004                                   ; $4523: $01 $04 $00
	ld   bc, $0200                                   ; $4526: $01 $00 $02

jr_088_4529:
	nop                                              ; $4529: $00
	dec  b                                           ; $452a: $05

jr_088_452b:
	add  a                                           ; $452b: $87
	nop                                              ; $452c: $00
	ld   [$0006], sp                                 ; $452d: $08 $06 $00
	add  hl, de                                      ; $4530: $19
	ld   [bc], a                                     ; $4531: $02
	ld   h, d                                        ; $4532: $62
	ld   bc, $0080                                   ; $4533: $01 $80 $00
	ld   bc, $0082                                   ; $4536: $01 $82 $00
	dec  b                                           ; $4539: $05
	add  b                                           ; $453a: $80
	adc  c                                           ; $453b: $89
	nop                                              ; $453c: $00
	inc  de                                          ; $453d: $13
	ld   b, b                                        ; $453e: $40
	jr   z, jr_088_44c1                              ; $453f: $28 $80

	add  c                                           ; $4541: $81
	inc  bc                                          ; $4542: $03

jr_088_4543:
	inc  b                                           ; $4543: $04
	add  h                                           ; $4544: $84
	inc  b                                           ; $4545: $04
	add  hl, bc                                      ; $4546: $09
	add  a                                           ; $4547: $87
	nop                                              ; $4548: $00
	ld   [$0080], sp                                 ; $4549: $08 $80 $00
	ret  nz                                          ; $454c: $c0

	nop                                              ; $454d: $00
	ld   d, b                                        ; $454e: $50
	nop                                              ; $454f: $00
	jr   c, jr_088_455a                              ; $4550: $38 $08

	call c, $1880                                    ; $4552: $dc $80 $18
	ld   bc, $0200                                   ; $4555: $01 $00 $02
	add  b                                           ; $4558: $80
	nop                                              ; $4559: $00

jr_088_455a:
	add  b                                           ; $455a: $80
	inc  b                                           ; $455b: $04
	dec  b                                           ; $455c: $05
	xor  h                                           ; $455d: $ac
	xor  [hl]                                        ; $455e: $ae
	sub  h                                           ; $455f: $94
	cp   b                                           ; $4560: $b8
	nop                                              ; $4561: $00
	ret  nc                                          ; $4562: $d0

	add  e                                           ; $4563: $83
	nop                                              ; $4564: $00
	nop                                              ; $4565: $00
	ld   bc, $0081                                   ; $4566: $01 $81 $00
	nop                                              ; $4569: $00
	ld   bc, $0093                                   ; $456a: $01 $93 $00
	ld   [$000c], sp                                 ; $456d: $08 $0c $00
	add  hl, bc                                      ; $4570: $09
	nop                                              ; $4571: $00
	inc  b                                           ; $4572: $04
	nop                                              ; $4573: $00
	add  c                                           ; $4574: $81
	nop                                              ; $4575: $00
	add  b                                           ; $4576: $80
	add  d                                           ; $4577: $82
	nop                                              ; $4578: $00
	add  b                                           ; $4579: $80
	ld   bc, $0380                                   ; $457a: $01 $80 $03
	add  b                                           ; $457d: $80
	ld   [$3680], sp                                 ; $457e: $08 $80 $36
	add  d                                           ; $4581: $82
	ccf                                              ; $4582: $3f
	add  b                                           ; $4583: $80
	ld   a, [hl]                                     ; $4584: $7e
	add  b                                           ; $4585: $80
	ld   l, l                                        ; $4586: $6d
	add  b                                           ; $4587: $80
	ld   c, d                                        ; $4588: $4a
	dec  d                                           ; $4589: $15
	ld   e, [hl]                                     ; $458a: $5e
	sbc  [hl]                                        ; $458b: $9e
	nop                                              ; $458c: $00
	ret  nz                                          ; $458d: $c0

	nop                                              ; $458e: $00
	jr   nz, jr_088_4591                             ; $458f: $20 $00

jr_088_4591:
	add  c                                           ; $4591: $81
	nop                                              ; $4592: $00
	jp   nz, $2400                                   ; $4593: $c2 $00 $24

	ld   bc, $8209                                   ; $4596: $01 $09 $82
	sub  d                                           ; $4599: $92
	add  b                                           ; $459a: $80
	call c, $0200                                    ; $459b: $dc $00 $02
	ld   hl, sp-$07                                  ; $459e: $f8 $f9
	add  b                                           ; $45a0: $80
	ret  z                                           ; $45a1: $c8

	add  b                                           ; $45a2: $80
	ld   hl, sp-$80                                  ; $45a3: $f8 $80
	jr   @-$7e                                       ; $45a5: $18 $80

	jr   z, jr_088_4529                              ; $45a7: $28 $80

	jr   jr_088_452b                                 ; $45a9: $18 $80

	db   $10                                         ; $45ab: $10
	add  h                                           ; $45ac: $84
	nop                                              ; $45ad: $00
	add  b                                           ; $45ae: $80
	inc  c                                           ; $45af: $0c
	add  b                                           ; $45b0: $80
	ld   [hl-], a                                    ; $45b1: $32
	add  b                                           ; $45b2: $80
	inc  c                                           ; $45b3: $0c
	add  b                                           ; $45b4: $80
	inc  bc                                          ; $45b5: $03
	add  [hl]                                        ; $45b6: $86
	nop                                              ; $45b7: $00
	add  b                                           ; $45b8: $80
	db   $10                                         ; $45b9: $10
	add  b                                           ; $45ba: $80
	inc  a                                           ; $45bb: $3c
	add  a                                           ; $45bc: $87
	nop                                              ; $45bd: $00
	ld   [bc], a                                     ; $45be: $02
	rrca                                             ; $45bf: $0f
	cpl                                              ; $45c0: $2f
	jr   nz, jr_088_4543                             ; $45c1: $20 $80

	rra                                              ; $45c3: $1f
	add  b                                           ; $45c4: $80
	nop                                              ; $45c5: $00
	add  b                                           ; $45c6: $80
	ld   b, b                                        ; $45c7: $40
	add  b                                           ; $45c8: $80
	ld   e, d                                        ; $45c9: $5a
	add  b                                           ; $45ca: $80
	or   [hl]                                        ; $45cb: $b6
	add  b                                           ; $45cc: $80
	ld   e, $80                                      ; $45cd: $1e $80
	dec  c                                           ; $45cf: $0d
	add  b                                           ; $45d0: $80
	dec  d                                           ; $45d1: $15
	add  b                                           ; $45d2: $80
	add  hl, bc                                      ; $45d3: $09
	add  b                                           ; $45d4: $80
	ld   [bc], a                                     ; $45d5: $02
	add  h                                           ; $45d6: $84
	nop                                              ; $45d7: $00
	add  b                                           ; $45d8: $80
	ld   a, [hl]                                     ; $45d9: $7e
	add  b                                           ; $45da: $80
	ld   a, b                                        ; $45db: $78
	add  b                                           ; $45dc: $80
	ld   b, b                                        ; $45dd: $40
	add  b                                           ; $45de: $80
	nop                                              ; $45df: $00
	add  b                                           ; $45e0: $80
	ld   bc, $2080                                   ; $45e1: $01 $80 $20
	add  b                                           ; $45e4: $80
	ld   h, b                                        ; $45e5: $60
	add  b                                           ; $45e6: $80
	db   $ec                                         ; $45e7: $ec
	add  b                                           ; $45e8: $80
	or   b                                           ; $45e9: $b0
	add  b                                           ; $45ea: $80
	cp   [hl]                                        ; $45eb: $be
	add  b                                           ; $45ec: $80
	sbc  h                                           ; $45ed: $9c
	add  d                                           ; $45ee: $82
	ld   b, b                                        ; $45ef: $40
	add  h                                           ; $45f0: $84
	nop                                              ; $45f1: $00
	add  d                                           ; $45f2: $82
	db   $10                                         ; $45f3: $10
	adc  b                                           ; $45f4: $88
	nop                                              ; $45f5: $00
	add  b                                           ; $45f6: $80
	add  b                                           ; $45f7: $80
	inc  b                                           ; $45f8: $04
	rlca                                             ; $45f9: $07
	inc  b                                           ; $45fa: $04
	rlca                                             ; $45fb: $07
	dec  b                                           ; $45fc: $05
	ld   bc, $00a0                                   ; $45fd: $01 $a0 $00
	inc  b                                           ; $4600: $04
	ld   bc, $0100                                   ; $4601: $01 $00 $01
	nop                                              ; $4604: $00
	ld   [bc], a                                     ; $4605: $02
	add  c                                           ; $4606: $81
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	ld   [bc], a                                     ; $4609: $02
	adc  e                                           ; $460a: $8b
	nop                                              ; $460b: $00
	ld   [bc], a                                     ; $460c: $02
	ld   bc, $0100                                   ; $460d: $01 $00 $01
	add  e                                           ; $4610: $83
	nop                                              ; $4611: $00
	dec  b                                           ; $4612: $05

jr_088_4613:
	add  hl, bc                                      ; $4613: $09
	nop                                              ; $4614: $00
	dec  de                                          ; $4615: $1b
	ld   [$1078], sp                                 ; $4616: $08 $78 $10
	add  c                                           ; $4619: $81
	ld   d, b                                        ; $461a: $50
	ld   bc, $f2d0                                   ; $461b: $01 $d0 $f2
	adc  c                                           ; $461e: $89
	nop                                              ; $461f: $00
	inc  c                                           ; $4620: $0c
	add  b                                           ; $4621: $80
	nop                                              ; $4622: $00
	ld   h, b                                        ; $4623: $60
	nop                                              ; $4624: $00
	jr   nc, jr_088_4627                             ; $4625: $30 $00

jr_088_4627:
	ret  nc                                          ; $4627: $d0

	nop                                              ; $4628: $00
	ld   [bc], a                                     ; $4629: $02
	nop                                              ; $462a: $00
	ld   [bc], a                                     ; $462b: $02
	nop                                              ; $462c: $00
	ld   bc, $0081                                   ; $462d: $01 $81 $00
	inc  b                                           ; $4630: $04
	ld   [bc], a                                     ; $4631: $02
	nop                                              ; $4632: $00
	inc  l                                           ; $4633: $2c
	nop                                              ; $4634: $00
	cpl                                              ; $4635: $2f
	adc  h                                           ; $4636: $8c
	nop                                              ; $4637: $00
	rlca                                             ; $4638: $07
	ld   hl, sp-$80                                  ; $4639: $f8 $80
	ld   a, h                                        ; $463b: $7c
	dec  sp                                          ; $463c: $3b
	ld   a, a                                        ; $463d: $7f
	ld   [hl], c                                     ; $463e: $71
	ccf                                              ; $463f: $3f
	ld   c, $80                                      ; $4640: $0e $80
	ld   [hl], c                                     ; $4642: $71
	add  l                                           ; $4643: $85
	nop                                              ; $4644: $00
	ld   [bc], a                                     ; $4645: $02
	ld   [bc], a                                     ; $4646: $02
	nop                                              ; $4647: $00
	ld   [bc], a                                     ; $4648: $02
	adc  b                                           ; $4649: $88
	nop                                              ; $464a: $00
	add  hl, bc                                      ; $464b: $09
	ld   bc, $0700                                   ; $464c: $01 $00 $07
	ld   bc, $e71f                                   ; $464f: $01 $1f $e7
	rst  $38                                         ; $4652: $ff
	ldh  a, [rIE]                                    ; $4653: $f0 $ff
	rrca                                             ; $4655: $0f
	add  b                                           ; $4656: $80
	ldh  [$85], a                                    ; $4657: $e0 $85
	nop                                              ; $4659: $00
	ld   [de], a                                     ; $465a: $12
	ld   b, c                                        ; $465b: $41
	ldh  a, [c]                                      ; $465c: $f2
	jp   $f6fa                                       ; $465d: $c3 $fa $f6


	cp   $ec                                         ; $4660: $fe $ec
	ld   a, a                                        ; $4662: $7f
	ld   l, $7f                                      ; $4663: $2e $7f
	ld   a, [hl]                                     ; $4665: $7e
	ccf                                              ; $4666: $3f
	ld   e, l                                        ; $4667: $5d
	cp   $42                                         ; $4668: $fe $42

jr_088_466a:
	db   $fc                                         ; $466a: $fc
	call c, $37f7                                    ; $466b: $dc $f7 $37
	add  b                                           ; $466e: $80
	ret  z                                           ; $466f: $c8

	add  d                                           ; $4670: $82
	nop                                              ; $4671: $00
	dec  d                                           ; $4672: $15
	ld   bc, $1211                                   ; $4673: $01 $11 $12
	ld   [hl-], a                                    ; $4676: $32
	dec  [hl]                                        ; $4677: $35
	inc  h                                           ; $4678: $24
	ld   hl, $003f                                   ; $4679: $21 $3f $00
	pop  bc                                          ; $467c: $c1
	nop                                              ; $467d: $00
	and  b                                           ; $467e: $a0
	add  b                                           ; $467f: $80
	ret  nc                                          ; $4680: $d0

	ld   d, b                                        ; $4681: $50
	ld   d, d                                        ; $4682: $52
	sub  b                                           ; $4683: $90
	add  h                                           ; $4684: $84
	and  b                                           ; $4685: $a0
	xor  b                                           ; $4686: $a8
	jr   nz, @+$32                                   ; $4687: $20 $30

	add  b                                           ; $4689: $80
	nop                                              ; $468a: $00
	add  b                                           ; $468b: $80
	add  b                                           ; $468c: $80
	nop                                              ; $468d: $00
	nop                                              ; $468e: $00
	add  b                                           ; $468f: $80
	jr   nc, jr_088_4613                             ; $4690: $30 $81

	nop                                              ; $4692: $00
	add  b                                           ; $4693: $80
	ldh  [rDIV], a                                   ; $4694: $e0 $04
	ret  nc                                          ; $4696: $d0

	db   $10                                         ; $4697: $10
	ldh  [$c0], a                                    ; $4698: $e0 $c0
	ldh  [$86], a                                    ; $469a: $e0 $86
	nop                                              ; $469c: $00
	db   $10                                         ; $469d: $10
	ld   [$26cc], sp                                 ; $469e: $08 $cc $26
	di                                               ; $46a1: $f3
	jp   hl                                          ; $46a2: $e9


	db   $fc                                         ; $46a3: $fc
	ld   a, [$feff]                                  ; $46a4: $fa $ff $fe
	rst  $38                                         ; $46a7: $ff
	ld   a, a                                        ; $46a8: $7f
	rst  $38                                         ; $46a9: $ff
	add  a                                           ; $46aa: $87
	rst  $38                                         ; $46ab: $ff
	ld   sp, hl                                      ; $46ac: $f9
	rrca                                             ; $46ad: $0f
	ld   c, $80                                      ; $46ae: $0e $80
	inc  bc                                          ; $46b0: $03
	adc  b                                           ; $46b1: $88
	nop                                              ; $46b2: $00
	add  b                                           ; $46b3: $80
	stop                                             ; $46b4: $10 $00
	nop                                              ; $46b6: $00
	add  b                                           ; $46b7: $80
	ld   bc, $0280                                   ; $46b8: $01 $80 $02
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	add  b                                           ; $46bd: $80
	add  b                                           ; $46be: $80
	add  b                                           ; $46bf: $80
	ld   b, b                                        ; $46c0: $40
	add  hl, bc                                      ; $46c1: $09
	and  b                                           ; $46c2: $a0
	jr   nz, @-$2e                                   ; $46c3: $20 $d0

	sbc  b                                           ; $46c5: $98
	add  sp, -$1c                                    ; $46c6: $e8 $e4
	db   $f4                                         ; $46c8: $f4
	ld   d, b                                        ; $46c9: $50
	db   $f4                                         ; $46ca: $f4
	sub  h                                           ; $46cb: $94
	add  e                                           ; $46cc: $83
	nop                                              ; $46cd: $00
	add  e                                           ; $46ce: $83
	ld   bc, $8103                                   ; $46cf: $01 $03 $81
	nop                                              ; $46d2: $00
	add  c                                           ; $46d3: $81
	ld   bc, $008b                                   ; $46d4: $01 $8b $00
	add  b                                           ; $46d7: $80
	ld   bc, $0280                                   ; $46d8: $01 $80 $02
	add  h                                           ; $46db: $84
	nop                                              ; $46dc: $00
	add  e                                           ; $46dd: $83
	ldh  [$83], a                                    ; $46de: $e0 $83
	ldh  a, [rP1]                                    ; $46e0: $f0 $00
	ld   h, b                                        ; $46e2: $60
	add  d                                           ; $46e3: $82
	ldh  a, [rSB]                                    ; $46e4: $f0 $01
	ld   [hl], b                                     ; $46e6: $70
	jr   nc, jr_088_466a                             ; $46e7: $30 $81

	ld   [hl], b                                     ; $46e9: $70
	add  b                                           ; $46ea: $80
	ld   hl, sp-$80                                  ; $46eb: $f8 $80
	ld   a, b                                        ; $46ed: $78
	ld   [bc], a                                     ; $46ee: $02
	ld   e, b                                        ; $46ef: $58
	jr   c, jr_088_4712                              ; $46f0: $38 $20

	rst  $38                                         ; $46f2: $ff
	nop                                              ; $46f3: $00
	rst  $38                                         ; $46f4: $ff
	nop                                              ; $46f5: $00
	rst  $38                                         ; $46f6: $ff
	nop                                              ; $46f7: $00
	rst  $38                                         ; $46f8: $ff
	nop                                              ; $46f9: $00
	sbc  a                                           ; $46fa: $9f
	nop                                              ; $46fb: $00
	ld   d, $01                                      ; $46fc: $16 $01
	add  b                                           ; $46fe: $80
	nop                                              ; $46ff: $00
	ld   [bc], a                                     ; $4700: $02
	inc  bc                                          ; $4701: $03
	nop                                              ; $4702: $00
	ld   bc, $0089                                   ; $4703: $01 $89 $00
	inc  b                                           ; $4706: $04
	ld   [bc], a                                     ; $4707: $02
	nop                                              ; $4708: $00
	rst  $38                                         ; $4709: $ff
	nop                                              ; $470a: $00
	rst  $38                                         ; $470b: $ff
	adc  e                                           ; $470c: $8b
	nop                                              ; $470d: $00
	ld   [bc], a                                     ; $470e: $02
	rst  $38                                         ; $470f: $ff
	nop                                              ; $4710: $00
	rst  $38                                         ; $4711: $ff

jr_088_4712:
	add  b                                           ; $4712: $80
	nop                                              ; $4713: $00
	add  b                                           ; $4714: $80
	cpl                                              ; $4715: $2f
	dec  bc                                          ; $4716: $0b
	ld   e, a                                        ; $4717: $5f
	ld   e, b                                        ; $4718: $58
	cpl                                              ; $4719: $2f
	scf                                              ; $471a: $37
	ld   e, a                                        ; $471b: $5f
	ld   a, a                                        ; $471c: $7f
	cp   a                                           ; $471d: $bf
	add  b                                           ; $471e: $80
	nop                                              ; $471f: $00
	rst  $38                                         ; $4720: $ff
	nop                                              ; $4721: $00
	rst  $38                                         ; $4722: $ff
	add  b                                           ; $4723: $80
	nop                                              ; $4724: $00
	ld   [bc], a                                     ; $4725: $02
	push af                                          ; $4726: $f5
	add  hl, bc                                      ; $4727: $09
	db   $fc                                         ; $4728: $fc
	add  b                                           ; $4729: $80
	cp   $82                                         ; $472a: $fe $82
	rst  $38                                         ; $472c: $ff
	add  b                                           ; $472d: $80
	nop                                              ; $472e: $00
	ld   [bc], a                                     ; $472f: $02
	rst  $38                                         ; $4730: $ff
	nop                                              ; $4731: $00
	rst  $38                                         ; $4732: $ff
	add  b                                           ; $4733: $80
	nop                                              ; $4734: $00
	add  b                                           ; $4735: $80
	ld   d, a                                        ; $4736: $57
	add  b                                           ; $4737: $80
	dec  bc                                          ; $4738: $0b
	inc  b                                           ; $4739: $04
	dec  b                                           ; $473a: $05
	push bc                                          ; $473b: $c5
	jp   $f0f3                                       ; $473c: $c3 $f3 $f0


	add  b                                           ; $473f: $80
	nop                                              ; $4740: $00
	ld   [bc], a                                     ; $4741: $02
	ret  nz                                          ; $4742: $c0

	nop                                              ; $4743: $00
	add  b                                           ; $4744: $80
	adc  c                                           ; $4745: $89
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	ld   b, d                                        ; $4748: $42
	adc  l                                           ; $4749: $8d
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	ld   [bc], a                                     ; $474c: $02
	add  b                                           ; $474d: $80
	dec  b                                           ; $474e: $05
	add  b                                           ; $474f: $80
	xor  e                                           ; $4750: $ab
	add  b                                           ; $4751: $80
	ld   d, a                                        ; $4752: $57
	add  d                                           ; $4753: $82
	rst  $38                                         ; $4754: $ff
	add  b                                           ; $4755: $80
	push af                                          ; $4756: $f5
	add  b                                           ; $4757: $80
	xor  d                                           ; $4758: $aa
	ld   b, $55                                      ; $4759: $06 $55
	ld   l, l                                        ; $475b: $6d
	ld   a, b                                        ; $475c: $78
	ld   [hl], b                                     ; $475d: $70
	ldh  a, [hScriptOpcodeParams]                                    ; $475e: $f0 $a0
	ldh  [$80], a                                    ; $4760: $e0 $80
	rst  $28                                         ; $4762: $ef
	add  b                                           ; $4763: $80
	rst  $38                                         ; $4764: $ff
	nop                                              ; $4765: $00
	ld   a, a                                        ; $4766: $7f
	add  c                                           ; $4767: $81
	rst  $38                                         ; $4768: $ff
	add  b                                           ; $4769: $80
	cp   a                                           ; $476a: $bf
	add  b                                           ; $476b: $80
	rrca                                             ; $476c: $0f
	add  b                                           ; $476d: $80
	inc  bc                                          ; $476e: $03
	add  b                                           ; $476f: $80
	ld   bc, $f980                                   ; $4770: $01 $80 $f9
	add  d                                           ; $4773: $82
	rst  $38                                         ; $4774: $ff
	add  b                                           ; $4775: $80
	rst  $30                                         ; $4776: $f7
	add  b                                           ; $4777: $80
	rst  $10                                         ; $4778: $d7
	add  b                                           ; $4779: $80
	ldh  a, [$80]                                    ; $477a: $f0 $80
	ld   hl, sp-$80                                  ; $477c: $f8 $80
	add  sp, -$80                                    ; $477e: $e8 $80

Jump_088_4780:
	ret  z                                           ; $4780: $c8

	add  b                                           ; $4781: $80
	adc  h                                           ; $4782: $8c
	add  b                                           ; $4783: $80
	sbc  h                                           ; $4784: $9c
	nop                                              ; $4785: $00
	cp   h                                           ; $4786: $bc
	add  c                                           ; $4787: $81
	cp   [hl]                                        ; $4788: $be
	nop                                              ; $4789: $00
	ld   b, d                                        ; $478a: $42
	adc  l                                           ; $478b: $8d
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	ld   b, d                                        ; $478e: $42
	adc  l                                           ; $478f: $8d
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	inc  bc                                          ; $4792: $03
	add  b                                           ; $4793: $80
	inc  hl                                          ; $4794: $23
	nop                                              ; $4795: $00
	ld   bc, $0382                                   ; $4796: $01 $82 $03
	add  c                                           ; $4799: $81
	ld   [bc], a                                     ; $479a: $02
	ld   bc, $8082                                   ; $479b: $01 $82 $80
	add  b                                           ; $479e: $80
	ld   [bc], a                                     ; $479f: $02
	ld   [bc], a                                     ; $47a0: $02
	add  b                                           ; $47a1: $80
	rst  $28                                         ; $47a2: $ef
	ld   l, a                                        ; $47a3: $6f
	add  b                                           ; $47a4: $80
	ld   e, l                                        ; $47a5: $5d
	add  b                                           ; $47a6: $80

jr_088_47a7:
	cp   l                                           ; $47a7: $bd
	add  b                                           ; $47a8: $80

jr_088_47a9:
	or   $80                                         ; $47a9: $f6 $80
	ld   [$e084], a                                  ; $47ab: $ea $84 $e0
	add  b                                           ; $47ae: $80
	xor  e                                           ; $47af: $ab
	add  b                                           ; $47b0: $80
	db   $ed                                         ; $47b1: $ed
	add  b                                           ; $47b2: $80
	cp   a                                           ; $47b3: $bf
	inc  b                                           ; $47b4: $04
	or   a                                           ; $47b5: $b7
	or   b                                           ; $47b6: $b0
	ld   e, h                                        ; $47b7: $5c
	ld   e, b                                        ; $47b8: $58
	ld   [bc], a                                     ; $47b9: $02
	add  b                                           ; $47ba: $80
	nop                                              ; $47bb: $00
	add  c                                           ; $47bc: $81
	ld   bc, $fc02                                   ; $47bd: $01 $02 $fc
	rst  $38                                         ; $47c0: $ff
	db   $fd                                         ; $47c1: $fd
	add  d                                           ; $47c2: $82
	rst  $38                                         ; $47c3: $ff
	ld   bc, $eaee                                   ; $47c4: $01 $ee $ea
	add  b                                           ; $47c7: $80
	db   $eb                                         ; $47c8: $eb
	nop                                              ; $47c9: $00
	ld   [$e580], a                                  ; $47ca: $ea $80 $e5
	add  b                                           ; $47cd: $80
	jp   hl                                          ; $47ce: $e9


	nop                                              ; $47cf: $00
	ld   d, b                                        ; $47d0: $50
	adc  l                                           ; $47d1: $8d
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	ld   b, d                                        ; $47d4: $42
	adc  l                                           ; $47d5: $8d
	nop                                              ; $47d6: $00
	ld   [bc], a                                     ; $47d7: $02
	ld   [bc], a                                     ; $47d8: $02
	ret  nz                                          ; $47d9: $c0

	pop  bc                                          ; $47da: $c1
	add  b                                           ; $47db: $80
	pop  hl                                          ; $47dc: $e1
	ld   bc, $d5d7                                   ; $47dd: $01 $d7 $d5
	add  b                                           ; $47e0: $80
	xor  e                                           ; $47e1: $ab
	add  c                                           ; $47e2: $81
	inc  bc                                          ; $47e3: $03
	add  d                                           ; $47e4: $82
	rlca                                             ; $47e5: $07
	add  c                                           ; $47e6: $81
	ldh  a, [$81]                                    ; $47e7: $f0 $81
	ldh  [rTMA], a                                   ; $47e9: $e0 $06
	add  sp, -$20                                    ; $47eb: $e8 $e0
	db   $e4                                         ; $47ed: $e4
	call nz, $a6c6                                   ; $47ee: $c4 $c6 $a6
	and  a                                           ; $47f1: $a7
	add  b                                           ; $47f2: $80
	rst  $10                                         ; $47f3: $d7
	ld   bc, $51af                                   ; $47f4: $01 $af $51
	add  e                                           ; $47f7: $83
	ld   bc, $0282                                   ; $47f8: $01 $82 $02
	add  b                                           ; $47fb: $80
	rlca                                             ; $47fc: $07
	add  b                                           ; $47fd: $80
	add  a                                           ; $47fe: $87
	add  b                                           ; $47ff: $80
	rst  ToBoot                                         ; $4800: $c7
	ld   [bc], a                                     ; $4801: $02
	ld   [hl], a                                     ; $4802: $77
	daa                                              ; $4803: $27
	cpl                                              ; $4804: $2f
	add  b                                           ; $4805: $80
	dec  hl                                          ; $4806: $2b
	ld   bc, $ba3a                                   ; $4807: $01 $3a $ba
	add  b                                           ; $480a: $80
	pop  de                                          ; $480b: $d1
	add  b                                           ; $480c: $80
	ld   [$d505], a                                  ; $480d: $ea $05 $d5
	call nc, $aea0                                   ; $4810: $d4 $a0 $ae
	nop                                              ; $4813: $00
	or   b                                           ; $4814: $b0
	adc  l                                           ; $4815: $8d
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	ld   b, d                                        ; $4818: $42
	adc  l                                           ; $4819: $8d
	nop                                              ; $481a: $00
	dec  b                                           ; $481b: $05
	dec  b                                           ; $481c: $05
	rlca                                             ; $481d: $07
	ld   [bc], a                                     ; $481e: $02
	ld   b, $05                                      ; $481f: $06 $05
	ld   bc, $0080                                   ; $4821: $01 $80 $00
	add  b                                           ; $4824: $80
	jr   z, jr_088_47a7                              ; $4825: $28 $80

	jr   jr_088_47a9                                 ; $4827: $18 $80

	nop                                              ; $4829: $00
	add  b                                           ; $482a: $80
	inc  b                                           ; $482b: $04
	rlca                                             ; $482c: $07
	pop  af                                          ; $482d: $f1
	ld   d, a                                        ; $482e: $57
	ld   h, [hl]                                     ; $482f: $66
	ccf                                              ; $4830: $3f
	cp   a                                           ; $4831: $bf
	ld   a, a                                        ; $4832: $7f
	inc  a                                           ; $4833: $3c
	inc  bc                                          ; $4834: $03
	add  [hl]                                        ; $4835: $86
	nop                                              ; $4836: $00
	dec  b                                           ; $4837: $05
	add  a                                           ; $4838: $87
	rst  ToBoot                                         ; $4839: $c7
	ld   b, a                                        ; $483a: $47
	rst  ToBoot                                         ; $483b: $c7
	ld   b, a                                        ; $483c: $47
	add  a                                           ; $483d: $87
	add  b                                           ; $483e: $80
	rlca                                             ; $483f: $07
	add  b                                           ; $4840: $80
	ld   b, $80                                      ; $4841: $06 $80
	nop                                              ; $4843: $00
	add  b                                           ; $4844: $80
	ld   [$0480], sp                                 ; $4845: $08 $80 $04

jr_088_4848:
	nop                                              ; $4848: $00
	ldh  [$80], a                                    ; $4849: $e0 $80
	and  c                                           ; $484b: $a1
	inc  bc                                          ; $484c: $03
	jr   nz, jr_088_484f                             ; $484d: $20 $00

jr_088_484f:
	add  b                                           ; $484f: $80
	ld   b, b                                        ; $4850: $40
	add  e                                           ; $4851: $83
	nop                                              ; $4852: $00
	inc  b                                           ; $4853: $04
	inc  bc                                          ; $4854: $03
	nop                                              ; $4855: $00
	rrca                                             ; $4856: $0f
	nop                                              ; $4857: $00
	ld   c, h                                        ; $4858: $4c
	adc  l                                           ; $4859: $8d
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	ld   b, d                                        ; $485c: $42
	adc  c                                           ; $485d: $89
	nop                                              ; $485e: $00
	inc  b                                           ; $485f: $04
	ld   bc, $0300                                   ; $4860: $01 $00 $03
	nop                                              ; $4863: $00
	inc  c                                           ; $4864: $0c
	add  c                                           ; $4865: $81
	ld   [$1401], sp                                 ; $4866: $08 $01 $14
	db   $10                                         ; $4869: $10
	add  h                                           ; $486a: $84
	nop                                              ; $486b: $00
	ld   [bc], a                                     ; $486c: $02
	rst  $38                                         ; $486d: $ff
	nop                                              ; $486e: $00
	rst  $38                                         ; $486f: $ff
	add  e                                           ; $4870: $83
	nop                                              ; $4871: $00
	add  b                                           ; $4872: $80
	inc  c                                           ; $4873: $0c
	add  b                                           ; $4874: $80
	jr   nc, @-$7c                                   ; $4875: $30 $82

	nop                                              ; $4877: $00
	ld   b, $ff                                      ; $4878: $06 $ff
	nop                                              ; $487a: $00
	rst  $38                                         ; $487b: $ff
	nop                                              ; $487c: $00
	ld   [bc], a                                     ; $487d: $02
	nop                                              ; $487e: $00
	ld   [bc], a                                     ; $487f: $02
	add  a                                           ; $4880: $87
	nop                                              ; $4881: $00
	inc  d                                           ; $4882: $14
	rst  $38                                         ; $4883: $ff
	nop                                              ; $4884: $00
	rst  $38                                         ; $4885: $ff
	nop                                              ; $4886: $00
	jr   nc, jr_088_4889                             ; $4887: $30 $00

jr_088_4889:
	ldh  a, [rP1]                                    ; $4889: $f0 $00
	ret  nz                                          ; $488b: $c0

	nop                                              ; $488c: $00
	inc  bc                                          ; $488d: $03
	nop                                              ; $488e: $00
	rrca                                             ; $488f: $0f
	nop                                              ; $4890: $00
	inc  c                                           ; $4891: $0c
	nop                                              ; $4892: $00
	rst  $38                                         ; $4893: $ff
	nop                                              ; $4894: $00
	rst  $38                                         ; $4895: $ff
	nop                                              ; $4896: $00
	ld   b, b                                        ; $4897: $40
	adc  c                                           ; $4898: $89
	nop                                              ; $4899: $00
	ld   [bc], a                                     ; $489a: $02
	add  b                                           ; $489b: $80
	nop                                              ; $489c: $00
	ret  nz                                          ; $489d: $c0

	add  a                                           ; $489e: $87
	nop                                              ; $489f: $00
	ld   [bc], a                                     ; $48a0: $02
	ld   bc, $0100                                   ; $48a1: $01 $00 $01
	add  a                                           ; $48a4: $87
	nop                                              ; $48a5: $00
	add  b                                           ; $48a6: $80
	inc  c                                           ; $48a7: $0c
	inc  b                                           ; $48a8: $04
	ld   a, $1c                                      ; $48a9: $3e $1c
	db   $dd                                         ; $48ab: $dd
	rra                                              ; $48ac: $1f
	ldh  [$89], a                                    ; $48ad: $e0 $89
	nop                                              ; $48af: $00
	inc  b                                           ; $48b0: $04
	inc  b                                           ; $48b1: $04
	nop                                              ; $48b2: $00
	db   $fc                                         ; $48b3: $fc
	nop                                              ; $48b4: $00
	ld   hl, sp-$75                                  ; $48b5: $f8 $8b
	nop                                              ; $48b7: $00
	add  b                                           ; $48b8: $80
	ret  nz                                          ; $48b9: $c0

	add  l                                           ; $48ba: $85
	nop                                              ; $48bb: $00
	add  h                                           ; $48bc: $84
	jr   c, jr_088_4848                              ; $48bd: $38 $89

	nop                                              ; $48bf: $00
	ld   [bc], a                                     ; $48c0: $02
	ld   bc, $0100                                   ; $48c1: $01 $00 $01
	adc  d                                           ; $48c4: $8a
	nop                                              ; $48c5: $00
	add  b                                           ; $48c6: $80
	inc  c                                           ; $48c7: $0c
	add  b                                           ; $48c8: $80
	ld   c, $80                                      ; $48c9: $0e $80
	rlca                                             ; $48cb: $07
	add  c                                           ; $48cc: $81
	nop                                              ; $48cd: $00
	ld   [de], a                                     ; $48ce: $12
	ld   bc, $0e00                                   ; $48cf: $01 $00 $0e
	nop                                              ; $48d2: $00
	inc  sp                                          ; $48d3: $33
	nop                                              ; $48d4: $00

jr_088_48d5:
	ld   c, a                                        ; $48d5: $4f
	inc  bc                                          ; $48d6: $03
	cp   a                                           ; $48d7: $bf
	ld   c, $fe                                      ; $48d8: $0e $fe
	inc  a                                           ; $48da: $3c
	db   $fc                                         ; $48db: $fc
	ld   hl, sp-$05                                  ; $48dc: $f8 $fb
	ldh  a, [$7f]                                    ; $48de: $f0 $7f
	ld   h, b                                        ; $48e0: $60
	inc  de                                          ; $48e1: $13
	add  a                                           ; $48e2: $87
	nop                                              ; $48e3: $00
	add  b                                           ; $48e4: $80
	dec  d                                           ; $48e5: $15
	add  b                                           ; $48e6: $80
	dec  hl                                          ; $48e7: $2b
	add  b                                           ; $48e8: $80
	ld   d, a                                        ; $48e9: $57
	add  b                                           ; $48ea: $80
	xor  a                                           ; $48eb: $af
	add  b                                           ; $48ec: $80
	rst  $38                                         ; $48ed: $ff
	add  b                                           ; $48ee: $80
	ld   a, [$5480]                                  ; $48ef: $fa $80 $54
	add  b                                           ; $48f2: $80
	xor  b                                           ; $48f3: $a8
	add  d                                           ; $48f4: $82
	nop                                              ; $48f5: $00
	add  b                                           ; $48f6: $80
	ld   a, [bc]                                     ; $48f7: $0a
	add  b                                           ; $48f8: $80
	ld   d, l                                        ; $48f9: $55
	add  b                                           ; $48fa: $80
	xor  d                                           ; $48fb: $aa
	add  h                                           ; $48fc: $84
	nop                                              ; $48fd: $00
	add  b                                           ; $48fe: $80
	ret  nc                                          ; $48ff: $d0

	add  b                                           ; $4900: $80
	and  b                                           ; $4901: $a0
	add  b                                           ; $4902: $80
	ret  nc                                          ; $4903: $d0

	add  b                                           ; $4904: $80
	and  b                                           ; $4905: $a0
	add  b                                           ; $4906: $80
	ld   b, b                                        ; $4907: $40
	add  b                                           ; $4908: $80
	add  b                                           ; $4909: $80
	adc  e                                           ; $490a: $8b
	nop                                              ; $490b: $00
	add  b                                           ; $490c: $80
	ld   b, b                                        ; $490d: $40
	add  e                                           ; $490e: $83
	nop                                              ; $490f: $00
	add  b                                           ; $4910: $80
	ld   a, [bc]                                     ; $4911: $0a
	inc  b                                           ; $4912: $04
	inc  bc                                          ; $4913: $03
	ld   bc, $0003                                   ; $4914: $01 $03 $00
	ld   bc, $008e                                   ; $4917: $01 $8e $00
	add  b                                           ; $491a: $80
	ld   [$2880], sp                                 ; $491b: $08 $80 $28
	add  e                                           ; $491e: $83
	nop                                              ; $491f: $00
	add  b                                           ; $4920: $80
	xor  b                                           ; $4921: $a8
	add  b                                           ; $4922: $80
	db   $f4                                         ; $4923: $f4
	add  b                                           ; $4924: $80
	ld   a, d                                        ; $4925: $7a
	ld   [bc], a                                     ; $4926: $02

jr_088_4927:
	inc  a                                           ; $4927: $3c
	inc  e                                           ; $4928: $1c
	cpl                                              ; $4929: $2f
	add  b                                           ; $492a: $80
	rrca                                             ; $492b: $0f
	dec  bc                                          ; $492c: $0b
	rlca                                             ; $492d: $07
	dec  c                                           ; $492e: $0d
	dec  b                                           ; $492f: $05
	ld   [bc], a                                     ; $4930: $02
	ld   [de], a                                     ; $4931: $12
	dec  d                                           ; $4932: $15
	ld   sp, $7236                                   ; $4933: $31 $36 $72
	ld   [hl], e                                     ; $4936: $73
	ld   h, e                                        ; $4937: $63
	ld   h, c                                        ; $4938: $61
	add  c                                           ; $4939: $81
	ld   b, c                                        ; $493a: $41
	dec  b                                           ; $493b: $05
	sbc  h                                           ; $493c: $9c
	call c, Call_088_7c7e                            ; $493d: $dc $7e $7c
	cp   $fc                                         ; $4940: $fe $fc
	add  b                                           ; $4942: $80
	ldh  a, [$03]                                    ; $4943: $f0 $03
	pop  hl                                          ; $4945: $e1
	ldh  [$60], a                                    ; $4946: $e0 $60
	ld   h, c                                        ; $4948: $61
	add  b                                           ; $4949: $80
	pop  af                                          ; $494a: $f1
	add  b                                           ; $494b: $80
	ld   a, c                                        ; $494c: $79
	inc  bc                                          ; $494d: $03
	ccf                                              ; $494e: $3f
	ld   a, $1f                                      ; $494f: $3e $1f
	ld   e, $80                                      ; $4951: $1e $80
	jr   z, jr_088_48d5                              ; $4953: $28 $80

	ld   d, h                                        ; $4955: $54
	add  c                                           ; $4956: $81
	db   $fc                                         ; $4957: $fc
	ld   [bc], a                                     ; $4958: $02
	ld   hl, sp+$0c                                  ; $4959: $f8 $0c
	ld   [$0081], sp                                 ; $495b: $08 $81 $00
	ld   bc, $9290                                   ; $495e: $01 $90 $92
	add  b                                           ; $4961: $80
	and  b                                           ; $4962: $a0
	ld   b, $40                                      ; $4963: $06 $40
	ld   c, e                                        ; $4965: $4b
	nop                                              ; $4966: $00
	inc  e                                           ; $4967: $1c
	nop                                              ; $4968: $00
	ld   a, [bc]                                     ; $4969: $0a
	nop                                              ; $496a: $00
	add  b                                           ; $496b: $80
	inc  c                                           ; $496c: $0c
	add  b                                           ; $496d: $80
	ld   c, $01                                      ; $496e: $0e $01
	rra                                              ; $4970: $1f
	rrca                                             ; $4971: $0f
	add  b                                           ; $4972: $80
	ld   c, $80                                      ; $4973: $0e $80
	ld   b, $00                                      ; $4975: $06 $00
	rrca                                             ; $4977: $0f
	add  b                                           ; $4978: $80
	rlca                                             ; $4979: $07
	add  b                                           ; $497a: $80
	inc  bc                                          ; $497b: $03
	add  b                                           ; $497c: $80
	ld   bc, $0082                                   ; $497d: $01 $82 $00
	add  b                                           ; $4980: $80
	ld   d, h                                        ; $4981: $54
	ld   [$5212], sp                                 ; $4982: $08 $12 $52
	nop                                              ; $4985: $00
	ld   [$ec00], sp                                 ; $4986: $08 $00 $ec
	nop                                              ; $4989: $00
	ld   e, d                                        ; $498a: $5a
	nop                                              ; $498b: $00
	add  b                                           ; $498c: $80
	ld   hl, sp-$80                                  ; $498d: $f8 $80
	db   $fc                                         ; $498f: $fc
	rlca                                             ; $4990: $07
	cp   $ce                                         ; $4991: $fe $ce
	call z, $74f4                                    ; $4993: $cc $f4 $74
	ld   a, h                                        ; $4996: $7c
	ld   a, a                                        ; $4997: $7f
	ld   a, h                                        ; $4998: $7c
	add  b                                           ; $4999: $80
	ld   hl, sp+$06                                  ; $499a: $f8 $06
	db   $fd                                         ; $499c: $fd
	ld   hl, sp-$20                                  ; $499d: $f8 $e0
	ld   h, b                                        ; $499f: $60
	ld   b, b                                        ; $49a0: $40
	nop                                              ; $49a1: $00
	jr   c, jr_088_4927                              ; $49a2: $38 $83

	nop                                              ; $49a4: $00
	add  b                                           ; $49a5: $80
	ld   bc, $0001                                   ; $49a6: $01 $01 $00
	inc  b                                           ; $49a9: $04
	add  b                                           ; $49aa: $80
	dec  b                                           ; $49ab: $05
	nop                                              ; $49ac: $00
	inc  b                                           ; $49ad: $04
	add  b                                           ; $49ae: $80
	ld   a, [bc]                                     ; $49af: $0a
	inc  bc                                          ; $49b0: $03
	ld   b, $86                                      ; $49b1: $06 $86
	ld   [$8288], sp                                 ; $49b3: $08 $88 $82
	add  b                                           ; $49b6: $80
	add  e                                           ; $49b7: $83
	nop                                              ; $49b8: $00
	ld   de, $0001                                   ; $49b9: $11 $01 $00
	ld   [bc], a                                     ; $49bc: $02
	ld   bc, $0002                                   ; $49bd: $01 $02 $00
	ld   bc, $2b00                                   ; $49c0: $01 $00 $2b
	ld   d, b                                        ; $49c3: $50
	inc  b                                           ; $49c4: $04
	add  b                                           ; $49c5: $80

jr_088_49c6:
	ld   l, $00                                      ; $49c6: $2e $00
	ldh  a, [$c0]                                    ; $49c8: $f0 $c0
	add  sp, -$10                                    ; $49ca: $e8 $f0
	add  b                                           ; $49cc: $80
	ret  nc                                          ; $49cd: $d0

	ld   bc, $a0a8                                   ; $49ce: $01 $a8 $a0
	add  b                                           ; $49d1: $80
	ret  nz                                          ; $49d2: $c0

	inc  b                                           ; $49d3: $04
	sub  b                                           ; $49d4: $90
	add  b                                           ; $49d5: $80
	ld   hl, $c100                                   ; $49d6: $21 $00 $c1
	add  l                                           ; $49d9: $85
	nop                                              ; $49da: $00
	ld   a, [de]                                     ; $49db: $1a
	ld   [$0800], sp                                 ; $49dc: $08 $00 $08
	nop                                              ; $49df: $00
	add  b                                           ; $49e0: $80
	nop                                              ; $49e1: $00
	add  b                                           ; $49e2: $80
	nop                                              ; $49e3: $00
	ld   [bc], a                                     ; $49e4: $02
	ld   bc, $0307                                   ; $49e5: $01 $07 $03
	inc  b                                           ; $49e8: $04
	nop                                              ; $49e9: $00
	rrca                                             ; $49ea: $0f
	inc  bc                                          ; $49eb: $03
	ccf                                              ; $49ec: $3f
	inc  c                                           ; $49ed: $0c
	ld   a, h                                        ; $49ee: $7c
	ccf                                              ; $49ef: $3f
	rst  $28                                         ; $49f0: $ef
	ld   h, e                                        ; $49f1: $63
	cp   e                                           ; $49f2: $bb
	add  a                                           ; $49f3: $87
	db   $fc                                         ; $49f4: $fc
	inc  c                                           ; $49f5: $0c
	ccf                                              ; $49f6: $3f
	adc  b                                           ; $49f7: $88
	nop                                              ; $49f8: $00
	db   $10                                         ; $49f9: $10
	ld   b, b                                        ; $49fa: $40
	jr   nz, @-$66                                   ; $49fb: $20 $98

jr_088_49fd:
	add  hl, sp                                      ; $49fd: $39
	jr   c, jr_088_49c6                              ; $49fe: $38 $c6

	ret  nz                                          ; $4a00: $c0

	jp   hl                                          ; $4a01: $e9


	pop  hl                                          ; $4a02: $e1
	db   $f4                                         ; $4a03: $f4
	sbc  b                                           ; $4a04: $98
	sbc  d                                           ; $4a05: $9a
	db   $fc                                         ; $4a06: $fc
	rst  $38                                         ; $4a07: $ff
	db   $fc                                         ; $4a08: $fc
	rst  $38                                         ; $4a09: $ff
	cp   $80                                         ; $4a0a: $fe $80
	ld   a, $81                                      ; $4a0c: $3e $81
	rst  $38                                         ; $4a0e: $ff
	add  e                                           ; $4a0f: $83
	nop                                              ; $4a10: $00
	inc  c                                           ; $4a11: $0c
	stop                                             ; $4a12: $10 $00
	ld   [$2400], sp                                 ; $4a14: $08 $00 $24
	inc  bc                                          ; $4a17: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a18: $cf
	rrca                                             ; $4a19: $0f
	dec  a                                           ; $4a1a: $3d
	inc  a                                           ; $4a1b: $3c
	ld   l, [hl]                                     ; $4a1c: $6e
	ld   h, b                                        ; $4a1d: $60
	ldh  a, [$80]                                    ; $4a1e: $f0 $80
	ret  nz                                          ; $4a20: $c0

	add  b                                           ; $4a21: $80
	add  b                                           ; $4a22: $80
	add  l                                           ; $4a23: $85
	nop                                              ; $4a24: $00
	ld   [bc], a                                     ; $4a25: $02
	add  b                                           ; $4a26: $80
	nop                                              ; $4a27: $00
	add  b                                           ; $4a28: $80
	sub  e                                           ; $4a29: $93
	nop                                              ; $4a2a: $00
	add  b                                           ; $4a2b: $80
	rlca                                             ; $4a2c: $07
	add  b                                           ; $4a2d: $80
	rrca                                             ; $4a2e: $0f
	add  b                                           ; $4a2f: $80
	rra                                              ; $4a30: $1f
	add  b                                           ; $4a31: $80
	db   $10                                         ; $4a32: $10
	sub  [hl]                                        ; $4a33: $96
	nop                                              ; $4a34: $00
	add  b                                           ; $4a35: $80
	ldh  a, [$80]                                    ; $4a36: $f0 $80
	call nz, $ce80                                   ; $4a38: $c4 $80 $ce
	add  b                                           ; $4a3b: $80
	ld   b, $90                                      ; $4a3c: $06 $90
	nop                                              ; $4a3e: $00
	add  d                                           ; $4a3f: $82
	inc  b                                           ; $4a40: $04
	add  h                                           ; $4a41: $84
	nop                                              ; $4a42: $00
	add  b                                           ; $4a43: $80
	ld   [bc], a                                     ; $4a44: $02
	rst  $38                                         ; $4a45: $ff
	nop                                              ; $4a46: $00
	rst  $38                                         ; $4a47: $ff
	nop                                              ; $4a48: $00
	rst  $38                                         ; $4a49: $ff
	nop                                              ; $4a4a: $00
	rst  $38                                         ; $4a4b: $ff
	nop                                              ; $4a4c: $00
	db   $e4                                         ; $4a4d: $e4
	nop                                              ; $4a4e: $00
	ret  c                                           ; $4a4f: $d8

	nop                                              ; $4a50: $00
	add  b                                           ; $4a51: $80
	nop                                              ; $4a52: $00
	ld   [bc], a                                     ; $4a53: $02
	inc  bc                                          ; $4a54: $03
	nop                                              ; $4a55: $00
	ld   bc, $0089                                   ; $4a56: $01 $89 $00
	inc  b                                           ; $4a59: $04
	ld   [bc], a                                     ; $4a5a: $02
	nop                                              ; $4a5b: $00
	rst  $38                                         ; $4a5c: $ff
	nop                                              ; $4a5d: $00
	rst  $38                                         ; $4a5e: $ff
	adc  e                                           ; $4a5f: $8b
	nop                                              ; $4a60: $00
	ld   [bc], a                                     ; $4a61: $02
	rst  $38                                         ; $4a62: $ff
	nop                                              ; $4a63: $00
	rst  $38                                         ; $4a64: $ff
	adc  e                                           ; $4a65: $8b
	nop                                              ; $4a66: $00
	ld   [bc], a                                     ; $4a67: $02
	rst  $38                                         ; $4a68: $ff
	nop                                              ; $4a69: $00
	rst  $38                                         ; $4a6a: $ff
	adc  e                                           ; $4a6b: $8b
	nop                                              ; $4a6c: $00
	ld   a, [bc]                                     ; $4a6d: $0a
	rst  $38                                         ; $4a6e: $ff
	nop                                              ; $4a6f: $00
	rst  $38                                         ; $4a70: $ff
	nop                                              ; $4a71: $00
	ld   bc, $0700                                   ; $4a72: $01 $00 $07
	nop                                              ; $4a75: $00
	ld   e, $00                                      ; $4a76: $1e $00
	jr   jr_088_49fd                                 ; $4a78: $18 $83

	nop                                              ; $4a7a: $00
	ld   [bc], a                                     ; $4a7b: $02
	ret  nz                                          ; $4a7c: $c0

	nop                                              ; $4a7d: $00
	add  b                                           ; $4a7e: $80
	adc  c                                           ; $4a7f: $89
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	ld   b, d                                        ; $4a82: $42
	adc  l                                           ; $4a83: $8d
	nop                                              ; $4a84: $00
	nop                                              ; $4a85: $00
	ld   [bc], a                                     ; $4a86: $02
	cp   l                                           ; $4a87: $bd
	nop                                              ; $4a88: $00
	nop                                              ; $4a89: $00
	ld   b, b                                        ; $4a8a: $40
	adc  l                                           ; $4a8b: $8d
	nop                                              ; $4a8c: $00
	nop                                              ; $4a8d: $00
	ld   b, d                                        ; $4a8e: $42
	adc  l                                           ; $4a8f: $8d
	nop                                              ; $4a90: $00
	nop                                              ; $4a91: $00
	ld   [bc], a                                     ; $4a92: $02
	sbc  d                                           ; $4a93: $9a
	nop                                              ; $4a94: $00
	inc  bc                                          ; $4a95: $03
	inc  c                                           ; $4a96: $0c
	inc  b                                           ; $4a97: $04
	db   $fc                                         ; $4a98: $fc
	db   $f4                                         ; $4a99: $f4
	add  h                                           ; $4a9a: $84
	nop                                              ; $4a9b: $00
	add  hl, bc                                      ; $4a9c: $09
	ld   bc, $0703                                   ; $4a9d: $01 $03 $07
	ld   bc, $070f                                   ; $4aa0: $01 $0f $07
	rra                                              ; $4aa3: $1f
	inc  e                                           ; $4aa4: $1c
	rra                                              ; $4aa5: $1f
	db   $10                                         ; $4aa6: $10
	add  [hl]                                        ; $4aa7: $86
	nop                                              ; $4aa8: $00
	rlca                                             ; $4aa9: $07
	add  b                                           ; $4aaa: $80
	ret  nz                                          ; $4aab: $c0

	ldh  a, [rLCDC]                                  ; $4aac: $f0 $40
	ld   hl, sp-$10                                  ; $4aae: $f8 $f0
	db   $fc                                         ; $4ab0: $fc
	ld   b, h                                        ; $4ab1: $44
	adc  l                                           ; $4ab2: $8d
	nop                                              ; $4ab3: $00
	nop                                              ; $4ab4: $00
	ld   b, d                                        ; $4ab5: $42
	adc  l                                           ; $4ab6: $8d
	nop                                              ; $4ab7: $00
	ld   [bc], a                                     ; $4ab8: $02
	ld   [bc], a                                     ; $4ab9: $02
	inc  bc                                          ; $4aba: $03
	nop                                              ; $4abb: $00
	add  c                                           ; $4abc: $81
	rlca                                             ; $4abd: $07
	nop                                              ; $4abe: $00
	inc  bc                                          ; $4abf: $03
	add  c                                           ; $4ac0: $81
	rlca                                             ; $4ac1: $07
	ld   c, $04                                      ; $4ac2: $0e $04
	rrca                                             ; $4ac4: $0f
	dec  c                                           ; $4ac5: $0d
	rrca                                             ; $4ac6: $0f
	rlca                                             ; $4ac7: $07
	rrca                                             ; $4ac8: $0f
	pop  de                                          ; $4ac9: $d1
	ld   hl, sp-$68                                  ; $4aca: $f8 $98
	ldh  a, [$e0]                                    ; $4acc: $f0 $e0
	ldh  a, [$30]                                    ; $4ace: $f0 $30
	ldh  a, [$50]                                    ; $4ad0: $f0 $50
	add  d                                           ; $4ad2: $82
	ldh  [$03], a                                    ; $4ad3: $e0 $03
	ret  nz                                          ; $4ad5: $c0

	add  c                                           ; $4ad6: $81
	pop  bc                                          ; $4ad7: $c1
	ld   e, e                                        ; $4ad8: $5b
	add  b                                           ; $4ad9: $80
	rra                                              ; $4ada: $1f
	dec  c                                           ; $4adb: $0d
	ccf                                              ; $4adc: $3f
	inc  de                                          ; $4add: $13
	ccf                                              ; $4ade: $3f
	dec  a                                           ; $4adf: $3d
	ld   a, a                                        ; $4ae0: $7f
	ld   l, [hl]                                     ; $4ae1: $6e
	rst  $38                                         ; $4ae2: $ff
	cp   e                                           ; $4ae3: $bb
	rst  $38                                         ; $4ae4: $ff
	ld   b, [hl]                                     ; $4ae5: $46
	rst  $38                                         ; $4ae6: $ff
	sbc  [hl]                                        ; $4ae7: $9e
	rst  $38                                         ; $4ae8: $ff
	cp   e                                           ; $4ae9: $bb
	add  c                                           ; $4aea: $81
	cp   $0c                                         ; $4aeb: $fe $0c
	db   $fc                                         ; $4aed: $fc
	cp   $ce                                         ; $4aee: $fe $ce
	rst  $38                                         ; $4af0: $ff
	cpl                                              ; $4af1: $2f
	rst  $38                                         ; $4af2: $ff
	sbc  a                                           ; $4af3: $9f
	rst  $38                                         ; $4af4: $ff
	dec  e                                           ; $4af5: $1d
	rst  $38                                         ; $4af6: $ff
	inc  de                                          ; $4af7: $13
	cp   $ce                                         ; $4af8: $fe $ce
	adc  l                                           ; $4afa: $8d
	nop                                              ; $4afb: $00
	nop                                              ; $4afc: $00
	ld   b, d                                        ; $4afd: $42
	adc  l                                           ; $4afe: $8d
	nop                                              ; $4aff: $00
	ld   [bc], a                                     ; $4b00: $02
	ld   c, $1f                                      ; $4b01: $0e $1f
	dec  c                                           ; $4b03: $0d
	add  c                                           ; $4b04: $81
	ccf                                              ; $4b05: $3f
	inc  de                                          ; $4b06: $13
	inc  e                                           ; $4b07: $1c
	ld   a, [hl]                                     ; $4b08: $7e
	ld   a, e                                        ; $4b09: $7b
	ld   a, a                                        ; $4b0a: $7f
	ld   sp, $e4ff                                   ; $4b0b: $31 $ff $e4
	rst  $38                                         ; $4b0e: $ff
	db   $ed                                         ; $4b0f: $ed
	rst  $38                                         ; $4b10: $ff
	inc  bc                                          ; $4b11: $03
	jp   $8726                                       ; $4b12: $c3 $26 $87


	dec  d                                           ; $4b15: $15
	rlca                                             ; $4b16: $07
	inc  sp                                          ; $4b17: $33
	ld   [bc], a                                     ; $4b18: $02
	ld   b, d                                        ; $4b19: $42
	nop                                              ; $4b1a: $00
	add  b                                           ; $4b1b: $80
	add  b                                           ; $4b1c: $80
	ld   bc, $c040                                   ; $4b1d: $01 $40 $c0
	add  b                                           ; $4b20: $80
	add  b                                           ; $4b21: $80
	jr   nz, jr_088_4b94                             ; $4b22: $20 $70

	rst  $38                                         ; $4b24: $ff
	ld   c, a                                        ; $4b25: $4f
	di                                               ; $4b26: $f3
	inc  de                                          ; $4b27: $13
	add  b                                           ; $4b28: $80
	ldh  [rSB], a                                    ; $4b29: $e0 $01
	ret  nz                                          ; $4b2b: $c0

	inc  bc                                          ; $4b2c: $03
	ld   b, b                                        ; $4b2d: $40
	rrca                                             ; $4b2e: $0f
	ld   [$437f], a                                  ; $4b2f: $ea $7f $43
	ld   a, a                                        ; $4b32: $7f
	and  h                                           ; $4b33: $a4
	db   $fc                                         ; $4b34: $fc
	inc  [hl]                                        ; $4b35: $34
	db   $fc                                         ; $4b36: $fc
	call nz, $0efe                                   ; $4b37: $c4 $fe $0e
	cp   $be                                         ; $4b3a: $fe $be
	db   $fc                                         ; $4b3c: $fc
	sbc  h                                           ; $4b3d: $9c
	ld   a, [$f2e2]                                  ; $4b3e: $fa $e2 $f2
	ld   a, [$50e0]                                  ; $4b41: $fa $e0 $50
	adc  l                                           ; $4b44: $8d
	nop                                              ; $4b45: $00
	nop                                              ; $4b46: $00
	ld   b, d                                        ; $4b47: $42
	adc  c                                           ; $4b48: $89
	nop                                              ; $4b49: $00
	inc  bc                                          ; $4b4a: $03
	ld   bc, $0300                                   ; $4b4b: $01 $00 $03
	nop                                              ; $4b4e: $00
	add  b                                           ; $4b4f: $80
	ld   a, a                                        ; $4b50: $7f
	ld   b, $7e                                      ; $4b51: $06 $7e
	ld   a, a                                        ; $4b53: $7f
	dec  a                                           ; $4b54: $3d
	ld   a, a                                        ; $4b55: $7f
	ld   [hl], e                                     ; $4b56: $73
	ld   a, a                                        ; $4b57: $7f
	ld   c, a                                        ; $4b58: $4f
	add  b                                           ; $4b59: $80
	ccf                                              ; $4b5a: $3f
	inc  bc                                          ; $4b5b: $03
	nop                                              ; $4b5c: $00
	rst  $38                                         ; $4b5d: $ff
	nop                                              ; $4b5e: $00
	rst  $38                                         ; $4b5f: $ff
	add  l                                           ; $4b60: $85
	nop                                              ; $4b61: $00
	add  hl, bc                                      ; $4b62: $09
	ld   e, $80                                      ; $4b63: $1e $80
	pop  hl                                          ; $4b65: $e1
	nop                                              ; $4b66: $00
	ld   a, a                                        ; $4b67: $7f
	nop                                              ; $4b68: $00
	rst  $38                                         ; $4b69: $ff
	nop                                              ; $4b6a: $00
	rst  $38                                         ; $4b6b: $ff
	nop                                              ; $4b6c: $00
	add  b                                           ; $4b6d: $80
	rra                                              ; $4b6e: $1f
	db   $10                                         ; $4b6f: $10
	rlca                                             ; $4b70: $07
	rra                                              ; $4b71: $1f
	rla                                              ; $4b72: $17
	rra                                              ; $4b73: $1f
	ld   c, $3f                                      ; $4b74: $0e $3f
	pop  hl                                          ; $4b76: $e1
	ld   a, $fe                                      ; $4b77: $3e $fe
	nop                                              ; $4b79: $00
	rst  $38                                         ; $4b7a: $ff
	nop                                              ; $4b7b: $00
	rst  $38                                         ; $4b7c: $ff
	nop                                              ; $4b7d: $00
	sub  b                                           ; $4b7e: $90
	ldh  [$50], a                                    ; $4b7f: $e0 $50
	add  b                                           ; $4b81: $80
	ret  nz                                          ; $4b82: $c0

	ld   bc, $a080                                   ; $4b83: $01 $80 $a0
	add  e                                           ; $4b86: $83
	nop                                              ; $4b87: $00
	inc  b                                           ; $4b88: $04
	rst  $38                                         ; $4b89: $ff
	nop                                              ; $4b8a: $00
	rst  $38                                         ; $4b8b: $ff
	nop                                              ; $4b8c: $00
	ld   b, b                                        ; $4b8d: $40
	adc  c                                           ; $4b8e: $89
	nop                                              ; $4b8f: $00
	ld   [bc], a                                     ; $4b90: $02
	add  b                                           ; $4b91: $80
	nop                                              ; $4b92: $00
	ret  nz                                          ; $4b93: $c0

jr_088_4b94:
	add  l                                           ; $4b94: $85
	nop                                              ; $4b95: $00
	ld   [bc], a                                     ; $4b96: $02
	rst  $38                                         ; $4b97: $ff
	nop                                              ; $4b98: $00
	rst  $38                                         ; $4b99: $ff
	add  c                                           ; $4b9a: $81
	nop                                              ; $4b9b: $00
	ld   bc, $00ff                                   ; $4b9c: $01 $ff $00
	add  c                                           ; $4b9f: $81
	rst  $38                                         ; $4ba0: $ff
	add  b                                           ; $4ba1: $80
	cp   $91                                         ; $4ba2: $fe $91
	nop                                              ; $4ba4: $00
	ld   [bc], a                                     ; $4ba5: $02
	ret  nz                                          ; $4ba6: $c0

	nop                                              ; $4ba7: $00
	ret  nz                                          ; $4ba8: $c0

	sbc  e                                           ; $4ba9: $9b
	nop                                              ; $4baa: $00
	ld   [bc], a                                     ; $4bab: $02
	ccf                                              ; $4bac: $3f
	nop                                              ; $4bad: $00
	ccf                                              ; $4bae: $3f
	add  c                                           ; $4baf: $81
	nop                                              ; $4bb0: $00
	ld   [bc], a                                     ; $4bb1: $02
	inc  bc                                          ; $4bb2: $03
	nop                                              ; $4bb3: $00
	inc  bc                                          ; $4bb4: $03
	add  b                                           ; $4bb5: $80
	ld   bc, $0003                                   ; $4bb6: $01 $03 $00
	ld   bc, $0100                                   ; $4bb9: $01 $00 $01
	adc  a                                           ; $4bbc: $8f
	nop                                              ; $4bbd: $00
	rlca                                             ; $4bbe: $07
	ldh  [rP1], a                                    ; $4bbf: $e0 $00
	pop  hl                                          ; $4bc1: $e1
	nop                                              ; $4bc2: $00
	ld   b, $00                                      ; $4bc3: $06 $00
	ld   hl, sp+$00                                  ; $4bc5: $f8 $00
	add  b                                           ; $4bc7: $80
	or   c                                           ; $4bc8: $b1
	inc  bc                                          ; $4bc9: $03
	ldh  a, [rSVBK]                                  ; $4bca: $f0 $70
	ld   [hl], c                                     ; $4bcc: $71
	pop  af                                          ; $4bcd: $f1
	add  b                                           ; $4bce: $80
	ldh  a, [c]                                      ; $4bcf: $f2
	rlca                                             ; $4bd0: $07
	pop  af                                          ; $4bd1: $f1
	ld   [hl], c                                     ; $4bd2: $71
	ld   [hl], d                                     ; $4bd3: $72
	ld   [hl-], a                                    ; $4bd4: $32
	push de                                          ; $4bd5: $d5
	dec  d                                           ; $4bd6: $15
	ldh  a, [c]                                      ; $4bd7: $f2
	ld   [hl], d                                     ; $4bd8: $72
	add  b                                           ; $4bd9: $80
	dec  [hl]                                        ; $4bda: $35
	inc  b                                           ; $4bdb: $04
	add  [hl]                                        ; $4bdc: $86
	nop                                              ; $4bdd: $00
	inc  b                                           ; $4bde: $04
	ld   d, c                                        ; $4bdf: $51
	ld   d, e                                        ; $4be0: $53
	add  b                                           ; $4be1: $80
	xor  d                                           ; $4be2: $aa
	add  a                                           ; $4be3: $87
	rst  $38                                         ; $4be4: $ff
	add  b                                           ; $4be5: $80
	db   $fc                                         ; $4be6: $fc
	add  e                                           ; $4be7: $83
	ld   hl, sp-$7f                                  ; $4be8: $f8 $81
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	ld   [$0082], sp                                 ; $4bec: $08 $82 $00
	ld   bc, $b040                                   ; $4bef: $01 $40 $b0
	add  c                                           ; $4bf2: $81
	nop                                              ; $4bf3: $00
	rlca                                             ; $4bf4: $07
	ld   b, b                                        ; $4bf5: $40
	nop                                              ; $4bf6: $00
	sub  b                                           ; $4bf7: $90
	ld   d, b                                        ; $4bf8: $50
	ld   a, b                                        ; $4bf9: $78
	ret  c                                           ; $4bfa: $d8

	call c, $80fc                                    ; $4bfb: $dc $fc $80
	ldh  a, [$92]                                    ; $4bfe: $f0 $92
	nop                                              ; $4c00: $00
	inc  b                                           ; $4c01: $04
	ld   b, $00                                      ; $4c02: $06 $00
	ld   [bc], a                                     ; $4c04: $02
	inc  bc                                          ; $4c05: $03
	rlca                                             ; $4c06: $07
	add  b                                           ; $4c07: $80
	ld   [bc], a                                     ; $4c08: $02
	sub  l                                           ; $4c09: $95
	nop                                              ; $4c0a: $00
	ld   bc, $f20d                                   ; $4c0b: $01 $0d $f2
	add  b                                           ; $4c0e: $80
	push af                                          ; $4c0f: $f5
	inc  c                                           ; $4c10: $0c
	ldh  a, [c]                                      ; $4c11: $f2
	ld   [hl], d                                     ; $4c12: $72
	push af                                          ; $4c13: $f5
	ld   [hl], l                                     ; $4c14: $75
	or   d                                           ; $4c15: $b2
	ld   [hl-], a                                    ; $4c16: $32
	ld   [hl], c                                     ; $4c17: $71
	ld   bc, $020a                                   ; $4c18: $01 $0a $02
	dec  b                                           ; $4c1b: $05
	ld   bc, $8302                                   ; $4c1c: $01 $02 $83
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	ld   bc, $0085                                   ; $4c21: $01 $85 $00
	inc  b                                           ; $4c24: $04
	ld   bc, $e100                                   ; $4c25: $01 $00 $e1
	add  b                                           ; $4c28: $80
	and  b                                           ; $4c29: $a0
	add  b                                           ; $4c2a: $80
	ld   b, b                                        ; $4c2b: $40
	nop                                              ; $4c2c: $00
	ret  nz                                          ; $4c2d: $c0

	add  d                                           ; $4c2e: $82
	add  b                                           ; $4c2f: $80
	adc  h                                           ; $4c30: $8c
	nop                                              ; $4c31: $00
	ld   [bc], a                                     ; $4c32: $02
	ret  nz                                          ; $4c33: $c0

	nop                                              ; $4c34: $00
	ret  nz                                          ; $4c35: $c0

	add  e                                           ; $4c36: $83
	nop                                              ; $4c37: $00
	ld   bc, $0003                                   ; $4c38: $01 $03 $00
	add  b                                           ; $4c3b: $80
	ld   bc, $0200                                   ; $4c3c: $01 $00 $02
	add  c                                           ; $4c3f: $81
	nop                                              ; $4c40: $00
	inc  bc                                          ; $4c41: $03
	ld   [bc], a                                     ; $4c42: $02
	nop                                              ; $4c43: $00
	ld   b, $00                                      ; $4c44: $06 $00
	add  b                                           ; $4c46: $80
	ld   bc, $0900                                   ; $4c47: $01 $00 $09
	add  b                                           ; $4c4a: $80
	inc  bc                                          ; $4c4b: $03

jr_088_4c4c:
	dec  b                                           ; $4c4c: $05
	ld   [bc], a                                     ; $4c4d: $02
	ld   d, $04                                      ; $4c4e: $16 $04
	ld   b, l                                        ; $4c50: $45
	nop                                              ; $4c51: $00
	ld   e, c                                        ; $4c52: $59
	sbc  l                                           ; $4c53: $9d
	nop                                              ; $4c54: $00

jr_088_4c55:
	add  b                                           ; $4c55: $80
	rlca                                             ; $4c56: $07
	ld   [$0706], sp                                 ; $4c57: $08 $06 $07
	dec  d                                           ; $4c5a: $15
	rla                                              ; $4c5b: $17
	inc  bc                                          ; $4c5c: $03
	ccf                                              ; $4c5d: $3f
	ld   a, $3f                                      ; $4c5e: $3e $3f
	ld   a, $98                                      ; $4c60: $3e $98
	nop                                              ; $4c62: $00
	add  b                                           ; $4c63: $80
	add  b                                           ; $4c64: $80
	ld   b, $c0                                      ; $4c65: $06 $c0
	ld   b, b                                        ; $4c67: $40
	ldh  [$7b], a                                    ; $4c68: $e0 $7b
	rra                                              ; $4c6a: $1f
	dec  de                                          ; $4c6b: $1b
	rra                                              ; $4c6c: $1f
	add  b                                           ; $4c6d: $80
	rrca                                             ; $4c6e: $0f
	add  b                                           ; $4c6f: $80
	rlca                                             ; $4c70: $07
	ld   [bc], a                                     ; $4c71: $02
	ld   bc, $0607                                   ; $4c72: $01 $07 $06
	add  b                                           ; $4c75: $80
	ld   [bc], a                                     ; $4c76: $02
	ld   a, [bc]                                     ; $4c77: $0a
	inc  bc                                          ; $4c78: $03
	ld   bc, $0203                                   ; $4c79: $01 $03 $02
	rlca                                             ; $4c7c: $07
	inc  bc                                          ; $4c7d: $03
	rrca                                             ; $4c7e: $0f
	ld   a, [bc]                                     ; $4c7f: $0a
	rrca                                             ; $4c80: $0f
	ld   [bc], a                                     ; $4c81: $02
	rrca                                             ; $4c82: $0f
	add  b                                           ; $4c83: $80
	rra                                              ; $4c84: $1f
	ld   b, $1e                                      ; $4c85: $06 $1e
	rra                                              ; $4c87: $1f
	dec  e                                           ; $4c88: $1d
	ccf                                              ; $4c89: $3f
	inc  hl                                          ; $4c8a: $23
	ld   a, $fe                                      ; $4c8b: $3e $fe
	add  b                                           ; $4c8d: $80
	ldh  [$81], a                                    ; $4c8e: $e0 $81
	add  sp, $02                                     ; $4c90: $e8 $02
	xor  b                                           ; $4c92: $a8
	call c, $805c                                    ; $4c93: $dc $5c $80
	cp   b                                           ; $4c96: $b8
	inc  c                                           ; $4c97: $0c
	ld   [hl], b                                     ; $4c98: $70
	ld   d, b                                        ; $4c99: $50
	ldh  [hScriptOpcodeParams], a                                    ; $4c9a: $e0 $a0
	ldh  [rLCDC], a                                  ; $4c9c: $e0 $40
	ldh  [hScriptOpcodeParams], a                                    ; $4c9e: $e0 $a0
	ret  nz                                          ; $4ca0: $c0

	ld   b, b                                        ; $4ca1: $40
	ret  nz                                          ; $4ca2: $c0

	ld   b, b                                        ; $4ca3: $40
	add  b                                           ; $4ca4: $80
	adc  e                                           ; $4ca5: $8b
	nop                                              ; $4ca6: $00
	ld   de, $3008                                   ; $4ca7: $11 $08 $30
	dec  a                                           ; $4caa: $3d
	ld   a, b                                        ; $4cab: $78
	ld   a, a                                        ; $4cac: $7f
	ld   a, $7d                                      ; $4cad: $3e $7d
	ld   e, a                                        ; $4caf: $5f
	ld   a, $0f                                      ; $4cb0: $3e $0f
	ld   a, a                                        ; $4cb2: $7f
	daa                                              ; $4cb3: $27
	rst  $38                                         ; $4cb4: $ff
	di                                               ; $4cb5: $f3
	rst  $38                                         ; $4cb6: $ff
	add  l                                           ; $4cb7: $85
	rst  $38                                         ; $4cb8: $ff
	cp   $80                                         ; $4cb9: $fe $80
	ld   h, c                                        ; $4cbb: $61
	add  b                                           ; $4cbc: $80
	add  b                                           ; $4cbd: $80
	add  [hl]                                        ; $4cbe: $86
	nop                                              ; $4cbf: $00
	rlca                                             ; $4cc0: $07
	inc  c                                           ; $4cc1: $0c
	ld   [bc], a                                     ; $4cc2: $02
	ld   e, a                                        ; $4cc3: $5f
	ld   c, l                                        ; $4cc4: $4d
	cp   [hl]                                        ; $4cc5: $be
	sbc  d                                           ; $4cc6: $9a
	ld   a, h                                        ; $4cc7: $7c
	ld   b, h                                        ; $4cc8: $44
	add  b                                           ; $4cc9: $80
	jr   nc, jr_088_4c4c                             ; $4cca: $30 $80

	add  b                                           ; $4ccc: $80
	ld   bc, $c000                                   ; $4ccd: $01 $00 $c0
	add  e                                           ; $4cd0: $83
	ldh  [rP1], a                                    ; $4cd1: $e0 $00
	jr   nz, jr_088_4c55                             ; $4cd3: $20 $80

	ret  nz                                          ; $4cd5: $c0

	adc  l                                           ; $4cd6: $8d
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	rst  $38                                         ; $4cd9: $ff
	add  c                                           ; $4cda: $81
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	rst  $38                                         ; $4cdd: $ff
	add  c                                           ; $4cde: $81
	nop                                              ; $4cdf: $00
	add  b                                           ; $4ce0: $80
	ld   bc, $ff04                                   ; $4ce1: $01 $04 $ff
	ld   bc, $0300                                   ; $4ce4: $01 $00 $03
	ld   [bc], a                                     ; $4ce7: $02
	add  b                                           ; $4ce8: $80
	dec  b                                           ; $4ce9: $05
	add  b                                           ; $4cea: $80
	add  hl, bc                                      ; $4ceb: $09
	add  c                                           ; $4cec: $81
	inc  bc                                          ; $4ced: $03
	ld   [bc], a                                     ; $4cee: $02
	ld   [bc], a                                     ; $4cef: $02
	inc  bc                                          ; $4cf0: $03
	db   $fd                                         ; $4cf1: $fd
	add  e                                           ; $4cf2: $83
	nop                                              ; $4cf3: $00
	rrca                                             ; $4cf4: $0f
	ccf                                              ; $4cf5: $3f
	jr   jr_088_4d56                                 ; $4cf6: $18 $5e

	rst  $38                                         ; $4cf8: $ff
	ld   [hl], l                                     ; $4cf9: $75
	rst  $38                                         ; $4cfa: $ff
	xor  $ff                                         ; $4cfb: $ee $ff
	jp   nz, $a9db                                   ; $4cfd: $c2 $db $a9

	xor  e                                           ; $4d00: $ab
	ld   c, $8d                                      ; $4d01: $0e $8d
	ld   d, l                                        ; $4d03: $55
	ret  c                                           ; $4d04: $d8

	add  b                                           ; $4d05: $80
	cp   b                                           ; $4d06: $b8
	ld   [bc], a                                     ; $4d07: $02
	xor  b                                           ; $4d08: $a8
	ld   hl, sp+$18                                  ; $4d09: $f8 $18
	add  b                                           ; $4d0b: $80
	add  sp, $01                                     ; $4d0c: $e8 $01

jr_088_4d0e:
	ret  nz                                          ; $4d0e: $c0

	add  b                                           ; $4d0f: $80
	add  b                                           ; $4d10: $80
	ret  nz                                          ; $4d11: $c0

	add  e                                           ; $4d12: $83
	nop                                              ; $4d13: $00
	add  b                                           ; $4d14: $80
	ret  nz                                          ; $4d15: $c0

	nop                                              ; $4d16: $00
	rst  $38                                         ; $4d17: $ff
	add  b                                           ; $4d18: $80
	ldh  [rAUD1LEN], a                               ; $4d19: $e0 $11
	ldh  a, [$f3]                                    ; $4d1b: $f0 $f3
	ld   hl, sp+$6a                                  ; $4d1d: $f8 $6a
	db   $ec                                         ; $4d1f: $ec
	or   l                                           ; $4d20: $b5
	halt                                             ; $4d21: $76
	sbc  a                                           ; $4d22: $9f
	ld   hl, sp+$49                                  ; $4d23: $f8 $49
	ld   hl, sp-$60                                  ; $4d25: $f8 $a0
	db   $fc                                         ; $4d27: $fc
	ret  nc                                          ; $4d28: $d0

	or   $e2                                         ; $4d29: $f6 $e2
	ld   a, b                                        ; $4d2b: $78
	ld   [hl], b                                     ; $4d2c: $70
	add  b                                           ; $4d2d: $80
	jr   c, @+$03                                    ; $4d2e: $38 $01

	jr   @+$21                                       ; $4d30: $18 $1f

	add  e                                           ; $4d32: $83
	nop                                              ; $4d33: $00
	ld   b, $1e                                      ; $4d34: $06 $1e
	nop                                              ; $4d36: $00
	and  $00                                         ; $4d37: $e6 $00
	jr   jr_088_4d3b                                 ; $4d39: $18 $00

jr_088_4d3b:
	ldh  [$81], a                                    ; $4d3b: $e0 $81
	nop                                              ; $4d3d: $00
	ld   [bc], a                                     ; $4d3e: $02
	add  b                                           ; $4d3f: $80
	nop                                              ; $4d40: $00
	add  b                                           ; $4d41: $80
	add  c                                           ; $4d42: $81
	nop                                              ; $4d43: $00
	ld   b, $80                                      ; $4d44: $06 $80
	nop                                              ; $4d46: $00
	ld   b, b                                        ; $4d47: $40
	nop                                              ; $4d48: $00
	ret  nz                                          ; $4d49: $c0

	nop                                              ; $4d4a: $00
	add  b                                           ; $4d4b: $80
	add  c                                           ; $4d4c: $81
	nop                                              ; $4d4d: $00
	inc  b                                           ; $4d4e: $04
	add  b                                           ; $4d4f: $80
	ld   b, $04                                      ; $4d50: $06 $04
	nop                                              ; $4d52: $00
	ld   [bc], a                                     ; $4d53: $02
	sbc  d                                           ; $4d54: $9a
	nop                                              ; $4d55: $00

jr_088_4d56:
	nop                                              ; $4d56: $00
	ldh  [$80], a                                    ; $4d57: $e0 $80
	jr   nz, @+$04                                   ; $4d59: $20 $02

	ld   h, b                                        ; $4d5b: $60
	jr   nc, jr_088_4d0e                             ; $4d5c: $30 $b0

	add  b                                           ; $4d5e: $80
	jr   z, @+$05                                    ; $4d5f: $28 $03

	nop                                              ; $4d61: $00
	ld   bc, $0100                                   ; $4d62: $01 $00 $01
	sub  c                                           ; $4d65: $91
	nop                                              ; $4d66: $00
	inc  c                                           ; $4d67: $0c
	inc  bc                                          ; $4d68: $03
	inc  e                                           ; $4d69: $1c
	ld   c, $00                                      ; $4d6a: $0e $00

jr_088_4d6c:
	ld   bc, $3000                                   ; $4d6c: $01 $00 $30
	nop                                              ; $4d6f: $00
	ld   h, b                                        ; $4d70: $60
	nop                                              ; $4d71: $00
	ret  nz                                          ; $4d72: $c0

	nop                                              ; $4d73: $00
	add  b                                           ; $4d74: $80
	sub  l                                           ; $4d75: $95
	nop                                              ; $4d76: $00
	ld   [bc], a                                     ; $4d77: $02
	add  b                                           ; $4d78: $80
	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	and  a                                           ; $4d7b: $a7
	nop                                              ; $4d7c: $00
	nop                                              ; $4d7d: $00
	add  b                                           ; $4d7e: $80
	add  l                                           ; $4d7f: $85
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	add  b                                           ; $4d82: $80
	add  l                                           ; $4d83: $85
	nop                                              ; $4d84: $00
	add  b                                           ; $4d85: $80
	inc  a                                           ; $4d86: $3c
	add  b                                           ; $4d87: $80
	jr   @-$4c                                       ; $4d88: $18 $b2

	nop                                              ; $4d8a: $00
	ld   [bc], a                                     ; $4d8b: $02
	ld   bc, $0100                                   ; $4d8c: $01 $00 $01
	sbc  c                                           ; $4d8f: $99
	nop                                              ; $4d90: $00
	inc  b                                           ; $4d91: $04
	di                                               ; $4d92: $f3
	nop                                              ; $4d93: $00
	inc  b                                           ; $4d94: $04
	nop                                              ; $4d95: $00
	rst  $30                                         ; $4d96: $f7
	rst  $38                                         ; $4d97: $ff
	nop                                              ; $4d98: $00
	rst  $38                                         ; $4d99: $ff
	nop                                              ; $4d9a: $00
	pop  bc                                          ; $4d9b: $c1
	nop                                              ; $4d9c: $00
	ld   sp, hl                                      ; $4d9d: $f9
	nop                                              ; $4d9e: $00
	sub  [hl]                                        ; $4d9f: $96
	nop                                              ; $4da0: $00
	add  b                                           ; $4da1: $80
	ld   bc, $0f06                                   ; $4da2: $01 $06 $0f
	ld   c, $3e                                      ; $4da5: $0e $3e
	jr   nc, jr_088_4d6c                             ; $4da7: $30 $c3

	ldh  a, [$3c]                                    ; $4da9: $f0 $3c
	add  l                                           ; $4dab: $85
	nop                                              ; $4dac: $00
	add  b                                           ; $4dad: $80
	rst  $38                                         ; $4dae: $ff
	ld   [bc], a                                     ; $4daf: $02
	ldh  a, [rSB]                                    ; $4db0: $f0 $01
	pop  af                                          ; $4db2: $f1
	add  b                                           ; $4db3: $80
	ld   bc, $0087                                   ; $4db4: $01 $87 $00
	add  b                                           ; $4db7: $80
	rst  $38                                         ; $4db8: $ff
	ld   [bc], a                                     ; $4db9: $02
	rrca                                             ; $4dba: $0f
	add  b                                           ; $4dbb: $80
	adc  a                                           ; $4dbc: $8f
	add  b                                           ; $4dbd: $80
	add  b                                           ; $4dbe: $80
	add  a                                           ; $4dbf: $87
	nop                                              ; $4dc0: $00
	add  b                                           ; $4dc1: $80
	add  b                                           ; $4dc2: $80
	ld   b, $f0                                      ; $4dc3: $06 $f0
	ld   [hl], b                                     ; $4dc5: $70
	ld   a, h                                        ; $4dc6: $7c
	inc  c                                           ; $4dc7: $0c
	jp   $3c0f                                       ; $4dc8: $c3 $0f $3c


	adc  l                                           ; $4dcb: $8d
	nop                                              ; $4dcc: $00
	add  b                                           ; $4dcd: $80
	inc  bc                                          ; $4dce: $03
	inc  b                                           ; $4dcf: $04
	inc  b                                           ; $4dd0: $04
	rlca                                             ; $4dd1: $07
	dec  bc                                          ; $4dd2: $0b
	ld   c, $16                                      ; $4dd3: $0e $16
	add  b                                           ; $4dd5: $80
	jr   jr_088_4dd9                                 ; $4dd6: $18 $01

	ld   a, [de]                                     ; $4dd8: $1a

jr_088_4dd9:
	ld   a, [hl+]                                    ; $4dd9: $2a
	add  b                                           ; $4dda: $80
	jr   c, jr_088_4de0                              ; $4ddb: $38 $03

	ld   sp, $7351                                   ; $4ddd: $31 $51 $73

jr_088_4de0:
	inc  [hl]                                        ; $4de0: $34
	add  b                                           ; $4de1: $80
	ld   hl, sp+$03                                  ; $4de2: $f8 $03
	sbc  b                                           ; $4de4: $98
	sbc  l                                           ; $4de5: $9d
	inc  c                                           ; $4de6: $0c
	ld   c, $80                                      ; $4de7: $0e $80
	ld   a, b                                        ; $4de9: $78
	add  b                                           ; $4dea: $80
	ldh  [$80], a                                    ; $4deb: $e0 $80
	ret  nz                                          ; $4ded: $c0

	add  b                                           ; $4dee: $80
	add  b                                           ; $4def: $80
	dec  b                                           ; $4df0: $05
	nop                                              ; $4df1: $00
	ld   hl, sp+$00                                  ; $4df2: $f8 $00
	jr   c, jr_088_4df6                              ; $4df4: $38 $00

jr_088_4df6:
	ret  nz                                          ; $4df6: $c0

	adc  c                                           ; $4df7: $89
	nop                                              ; $4df8: $00

jr_088_4df9:
	inc  b                                           ; $4df9: $04
	rra                                              ; $4dfa: $1f
	nop                                              ; $4dfb: $00
	inc  e                                           ; $4dfc: $1c
	nop                                              ; $4dfd: $00
	inc  bc                                          ; $4dfe: $03
	adc  c                                           ; $4dff: $89
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	ldh  [$80], a                                    ; $4e02: $e0 $80
	rra                                              ; $4e04: $1f
	inc  bc                                          ; $4e05: $03
	add  hl, de                                      ; $4e06: $19
	cp   c                                           ; $4e07: $b9
	jr   nc, jr_088_4e7a                             ; $4e08: $30 $70

	add  b                                           ; $4e0a: $80
	ld   e, $80                                      ; $4e0b: $1e $80
	rlca                                             ; $4e0d: $07
	add  b                                           ; $4e0e: $80
	inc  bc                                          ; $4e0f: $03
	add  b                                           ; $4e10: $80
	ld   bc, $0000                                   ; $4e11: $01 $00 $00
	add  b                                           ; $4e14: $80
	ret  nz                                          ; $4e15: $c0

	inc  b                                           ; $4e16: $04
	jr   nz, jr_088_4df9                             ; $4e17: $20 $e0

	ret  nc                                          ; $4e19: $d0

	ld   [hl], b                                     ; $4e1a: $70
	ld   l, b                                        ; $4e1b: $68
	add  b                                           ; $4e1c: $80
	jr   jr_088_4e20                                 ; $4e1d: $18 $01

	ld   e, b                                        ; $4e1f: $58

jr_088_4e20:
	ld   d, h                                        ; $4e20: $54
	add  b                                           ; $4e21: $80
	inc  e                                           ; $4e22: $1c
	inc  bc                                          ; $4e23: $03
	adc  h                                           ; $4e24: $8c
	adc  d                                           ; $4e25: $8a
	adc  $8c                                         ; $4e26: $ce $8c
	add  b                                           ; $4e28: $80
	ld   h, e                                        ; $4e29: $63
	add  b                                           ; $4e2a: $80
	ld   a, d                                        ; $4e2b: $7a
	nop                                              ; $4e2c: $00
	ld   a, [hl]                                     ; $4e2d: $7e
	add  b                                           ; $4e2e: $80
	ld   a, b                                        ; $4e2f: $78
	add  b                                           ; $4e30: $80
	ld   b, b                                        ; $4e31: $40
	ld   b, $41                                      ; $4e32: $06 $41
	ld   h, b                                        ; $4e34: $60
	ld   h, [hl]                                     ; $4e35: $66
	ld   h, b                                        ; $4e36: $60
	ld   b, l                                        ; $4e37: $45
	ld   d, b                                        ; $4e38: $50
	inc  c                                           ; $4e39: $0c
	adc  c                                           ; $4e3a: $89
	nop                                              ; $4e3b: $00
	dec  b                                           ; $4e3c: $05
	add  b                                           ; $4e3d: $80
	nop                                              ; $4e3e: $00
	ld   b, b                                        ; $4e3f: $40
	nop                                              ; $4e40: $00
	pop  bc                                          ; $4e41: $c1
	nop                                              ; $4e42: $00
	add  b                                           ; $4e43: $80
	ld   bc, $0504                                   ; $4e44: $01 $04 $05
	inc  bc                                          ; $4e47: $03
	ld   b, $00                                      ; $4e48: $06 $00
	ld   bc, $0085                                   ; $4e4a: $01 $85 $00
	ld   bc, $0080                                   ; $4e4d: $01 $80 $00

jr_088_4e50:
	add  b                                           ; $4e50: $80
	add  b                                           ; $4e51: $80
	inc  b                                           ; $4e52: $04
	and  b                                           ; $4e53: $a0
	ret  nz                                          ; $4e54: $c0

	ld   h, b                                        ; $4e55: $60
	nop                                              ; $4e56: $00
	add  b                                           ; $4e57: $80
	sub  c                                           ; $4e58: $91
	nop                                              ; $4e59: $00
	inc  b                                           ; $4e5a: $04
	ld   bc, $0200                                   ; $4e5b: $01 $00 $02
	nop                                              ; $4e5e: $00
	ld   bc, $c680                                   ; $4e5f: $01 $80 $c6

jr_088_4e62:
	add  b                                           ; $4e62: $80
	ld   e, [hl]                                     ; $4e63: $5e
	nop                                              ; $4e64: $00
	ld   a, [hl]                                     ; $4e65: $7e
	add  b                                           ; $4e66: $80
	ld   e, $80                                      ; $4e67: $1e $80
	ld   [bc], a                                     ; $4e69: $02
	dec  c                                           ; $4e6a: $0d
	add  d                                           ; $4e6b: $82
	ld   b, $66                                      ; $4e6c: $06 $66
	ld   b, $a2                                      ; $4e6e: $06 $a2
	ld   a, [bc]                                     ; $4e70: $0a
	ld   e, [hl]                                     ; $4e71: $5e
	ld   l, b                                        ; $4e72: $68
	ld   h, c                                        ; $4e73: $61
	ld   h, h                                        ; $4e74: $64
	ld   d, b                                        ; $4e75: $50
	ld   d, d                                        ; $4e76: $52
	ld   l, b                                        ; $4e77: $68
	ld   l, c                                        ; $4e78: $69
	add  b                                           ; $4e79: $80

jr_088_4e7a:
	ld   h, h                                        ; $4e7a: $64
	add  b                                           ; $4e7b: $80
	ld   d, e                                        ; $4e7c: $53
	add  b                                           ; $4e7d: $80
	ld   l, b                                        ; $4e7e: $68
	add  b                                           ; $4e7f: $80
	ld   h, h                                        ; $4e80: $64
	dec  c                                           ; $4e81: $0d
	jr   nz, jr_088_4e84                             ; $4e82: $20 $00

jr_088_4e84:
	jr   c, jr_088_4e86                              ; $4e84: $38 $00

jr_088_4e86:
	rst  JumpTable                                         ; $4e86: $df
	nop                                              ; $4e87: $00
	ld   sp, $0b81                                   ; $4e88: $31 $81 $0b
	ld   h, e                                        ; $4e8b: $63
	inc  bc                                          ; $4e8c: $03
	rra                                              ; $4e8d: $1f
	ret  nz                                          ; $4e8e: $c0

	jp   $3080                                       ; $4e8f: $c3 $80 $30


	add  l                                           ; $4e92: $85
	nop                                              ; $4e93: $00
	add  b                                           ; $4e94: $80
	ldh  [$80], a                                    ; $4e95: $e0 $80
	add  b                                           ; $4e97: $80
	inc  b                                           ; $4e98: $04
	ldh  a, [rSVBK]                                  ; $4e99: $f0 $70
	db   $fc                                         ; $4e9b: $fc
	inc  bc                                          ; $4e9c: $03
	ld   a, a                                        ; $4e9d: $7f
	add  l                                           ; $4e9e: $85
	nop                                              ; $4e9f: $00
	add  b                                           ; $4ea0: $80
	rlca                                             ; $4ea1: $07
	add  b                                           ; $4ea2: $80
	ld   bc, $0f12                                   ; $4ea3: $01 $12 $0f
	ld   c, $3f                                      ; $4ea6: $0e $3f
	ret  nz                                          ; $4ea8: $c0

	cp   $04                                         ; $4ea9: $fe $04
	nop                                              ; $4eab: $00
	inc  e                                           ; $4eac: $1c

jr_088_4ead:
	nop                                              ; $4ead: $00
	ei                                               ; $4eae: $fb
	nop                                              ; $4eaf: $00
	adc  h                                           ; $4eb0: $8c
	add  c                                           ; $4eb1: $81
	ret  nc                                          ; $4eb2: $d0

jr_088_4eb3:
	add  $c0                                         ; $4eb3: $c6 $c0
	ld   hl, sp+$03                                  ; $4eb5: $f8 $03
	jp   $0c80                                       ; $4eb7: $c3 $80 $0c


	rlca                                             ; $4eba: $07
	halt                                             ; $4ebb: $76
	ld   d, $86                                      ; $4ebc: $16 $86
	ld   h, $0a                                      ; $4ebe: $26 $0a
	ld   c, d                                        ; $4ec0: $4a
	ld   d, $96                                      ; $4ec1: $16 $96
	add  b                                           ; $4ec3: $80
	ld   h, $80                                      ; $4ec4: $26 $80
	jp   z, $1680                                    ; $4ec6: $ca $80 $16

	add  b                                           ; $4ec9: $80
	ld   h, $80                                      ; $4eca: $26 $80
	ld   d, e                                        ; $4ecc: $53
	add  b                                           ; $4ecd: $80
	jr   z, jr_088_4e50                              ; $4ece: $28 $80

	inc  h                                           ; $4ed0: $24
	add  b                                           ; $4ed1: $80
	inc  de                                          ; $4ed2: $13
	add  b                                           ; $4ed3: $80
	ld   [$0480], sp                                 ; $4ed4: $08 $80 $04
	add  b                                           ; $4ed7: $80
	inc  bc                                          ; $4ed8: $03
	add  b                                           ; $4ed9: $80
	nop                                              ; $4eda: $00
	add  b                                           ; $4edb: $80
	ld   c, $80                                      ; $4edc: $0e $80
	pop  bc                                          ; $4ede: $c1
	add  b                                           ; $4edf: $80
	jr   nc, jr_088_4e62                             ; $4ee0: $30 $80

	ld   c, $80                                      ; $4ee2: $0e $80
	pop  bc                                          ; $4ee4: $c1
	add  b                                           ; $4ee5: $80
	jr   nc, @-$7e                                   ; $4ee6: $30 $80

	ld   c, $80                                      ; $4ee8: $0e $80
	pop  bc                                          ; $4eea: $c1
	inc  bc                                          ; $4eeb: $03
	nop                                              ; $4eec: $00
	inc  c                                           ; $4eed: $0c
	db   $ec                                         ; $4eee: $ec
	ldh  [$80], a                                    ; $4eef: $e0 $80
	rra                                              ; $4ef1: $1f
	inc  bc                                          ; $4ef2: $03
	nop                                              ; $4ef3: $00
	inc  c                                           ; $4ef4: $0c
	db   $ec                                         ; $4ef5: $ec
	ldh  [$80], a                                    ; $4ef6: $e0 $80
	rra                                              ; $4ef8: $1f
	rlca                                             ; $4ef9: $07
	nop                                              ; $4efa: $00
	inc  c                                           ; $4efb: $0c
	db   $ec                                         ; $4efc: $ec
	ldh  [rP1], a                                    ; $4efd: $e0 $00
	jr   nc, jr_088_4f38                             ; $4eff: $30 $37

	rlca                                             ; $4f01: $07
	add  b                                           ; $4f02: $80
	ld   hl, sp+$03                                  ; $4f03: $f8 $03
	nop                                              ; $4f05: $00
	jr   nc, @+$39                                   ; $4f06: $30 $37

	rlca                                             ; $4f08: $07
	add  b                                           ; $4f09: $80
	ld   hl, sp+$03                                  ; $4f0a: $f8 $03
	nop                                              ; $4f0c: $00
	jr   nc, jr_088_4f46                             ; $4f0d: $30 $37

	rlca                                             ; $4f0f: $07
	add  b                                           ; $4f10: $80
	ld   [hl], b                                     ; $4f11: $70
	add  b                                           ; $4f12: $80

jr_088_4f13:
	add  e                                           ; $4f13: $83
	add  b                                           ; $4f14: $80
	inc  c                                           ; $4f15: $0c
	add  b                                           ; $4f16: $80
	ld   [hl], b                                     ; $4f17: $70
	add  b                                           ; $4f18: $80
	add  e                                           ; $4f19: $83
	add  b                                           ; $4f1a: $80
	inc  c                                           ; $4f1b: $0c
	add  b                                           ; $4f1c: $80
	ld   [hl], b                                     ; $4f1d: $70
	add  b                                           ; $4f1e: $80
	add  e                                           ; $4f1f: $83
	add  b                                           ; $4f20: $80
	jp   z, $1480                                    ; $4f21: $ca $80 $14

	add  b                                           ; $4f24: $80
	inc  h                                           ; $4f25: $24
	add  b                                           ; $4f26: $80
	ret  z                                           ; $4f27: $c8

	add  b                                           ; $4f28: $80
	db   $10                                         ; $4f29: $10
	add  b                                           ; $4f2a: $80
	jr   nz, jr_088_4ead                             ; $4f2b: $20 $80

	ret  nz                                          ; $4f2d: $c0

	sub  b                                           ; $4f2e: $90
	nop                                              ; $4f2f: $00
	add  b                                           ; $4f30: $80
	jr   nc, jr_088_4eb3                             ; $4f31: $30 $80

	ld   c, $80                                      ; $4f33: $0e $80
	ld   bc, $0088                                   ; $4f35: $01 $88 $00

jr_088_4f38:
	add  b                                           ; $4f38: $80
	rra                                              ; $4f39: $1f
	inc  bc                                          ; $4f3a: $03
	nop                                              ; $4f3b: $00
	inc  c                                           ; $4f3c: $0c
	db   $ec                                         ; $4f3d: $ec
	ldh  [$80], a                                    ; $4f3e: $e0 $80
	rra                                              ; $4f40: $1f
	add  [hl]                                        ; $4f41: $86
	nop                                              ; $4f42: $00
	add  b                                           ; $4f43: $80
	ld   hl, sp+$03                                  ; $4f44: $f8 $03

jr_088_4f46:
	nop                                              ; $4f46: $00
	jr   nc, @+$39                                   ; $4f47: $30 $37

	rlca                                             ; $4f49: $07
	add  b                                           ; $4f4a: $80
	ld   hl, sp-$7a                                  ; $4f4b: $f8 $86
	nop                                              ; $4f4d: $00
	add  b                                           ; $4f4e: $80
	inc  c                                           ; $4f4f: $0c
	add  b                                           ; $4f50: $80
	ld   [hl], b                                     ; $4f51: $70
	add  b                                           ; $4f52: $80
	add  b                                           ; $4f53: $80
	xor  [hl]                                        ; $4f54: $ae
	nop                                              ; $4f55: $00
	add  b                                           ; $4f56: $80
	rlca                                             ; $4f57: $07
	add  b                                           ; $4f58: $80
	dec  b                                           ; $4f59: $05
	add  b                                           ; $4f5a: $80
	rlca                                             ; $4f5b: $07
	sub  [hl]                                        ; $4f5c: $96
	nop                                              ; $4f5d: $00
	ld   [bc], a                                     ; $4f5e: $02
	ld   bc, $0100                                   ; $4f5f: $01 $00 $01
	add  b                                           ; $4f62: $80
	ld   b, $80                                      ; $4f63: $06 $80
	jr   @-$7e                                       ; $4f65: $18 $80

	jr   nz, @-$7e                                   ; $4f67: $20 $80

	ld   b, b                                        ; $4f69: $40
	add  b                                           ; $4f6a: $80
	add  b                                           ; $4f6b: $80
	adc  c                                           ; $4f6c: $89
	nop                                              ; $4f6d: $00
	add  b                                           ; $4f6e: $80
	ld   b, $80                                      ; $4f6f: $06 $80
	rlca                                             ; $4f71: $07
	add  b                                           ; $4f72: $80
	nop                                              ; $4f73: $00
	inc  b                                           ; $4f74: $04
	ccf                                              ; $4f75: $3f
	nop                                              ; $4f76: $00
	rst  $38                                         ; $4f77: $ff
	nop                                              ; $4f78: $00
	ret  nz                                          ; $4f79: $c0

	sub  e                                           ; $4f7a: $93
	nop                                              ; $4f7b: $00
	add  b                                           ; $4f7c: $80
	ld   h, b                                        ; $4f7d: $60
	add  b                                           ; $4f7e: $80
	ldh  [$80], a                                    ; $4f7f: $e0 $80
	nop                                              ; $4f81: $00
	inc  b                                           ; $4f82: $04
	db   $fc                                         ; $4f83: $fc
	nop                                              ; $4f84: $00
	rst  $38                                         ; $4f85: $ff
	nop                                              ; $4f86: $00
	inc  bc                                          ; $4f87: $03
	sbc  e                                           ; $4f88: $9b
	nop                                              ; $4f89: $00
	ld   [bc], a                                     ; $4f8a: $02
	add  b                                           ; $4f8b: $80
	nop                                              ; $4f8c: $00
	add  b                                           ; $4f8d: $80
	add  b                                           ; $4f8e: $80
	ld   h, b                                        ; $4f8f: $60
	add  b                                           ; $4f90: $80
	jr   jr_088_4f13                                 ; $4f91: $18 $80

	inc  b                                           ; $4f93: $04
	add  b                                           ; $4f94: $80
	ld   [bc], a                                     ; $4f95: $02
	add  b                                           ; $4f96: $80
	ld   bc, $0093                                   ; $4f97: $01 $93 $00
	add  b                                           ; $4f9a: $80
	ldh  [$80], a                                    ; $4f9b: $e0 $80
	and  b                                           ; $4f9d: $a0
	add  b                                           ; $4f9e: $80
	ldh  [$85], a                                    ; $4f9f: $e0 $85
	nop                                              ; $4fa1: $00
	add  c                                           ; $4fa2: $81
	ld   bc, $0082                                   ; $4fa3: $01 $82 $00
	nop                                              ; $4fa6: $00
	ld   bc, $0081                                   ; $4fa7: $01 $81 $00
	ld   [de], a                                     ; $4faa: $12
	jr   nz, jr_088_4fad                             ; $4fab: $20 $00

jr_088_4fad:
	jr   nc, jr_088_4faf                             ; $4fad: $30 $00

jr_088_4faf:
	ld   [$3400], sp                                 ; $4faf: $08 $00 $34
	nop                                              ; $4fb2: $00
	ld   a, [hl-]                                    ; $4fb3: $3a
	nop                                              ; $4fb4: $00
	dec  c                                           ; $4fb5: $0d
	nop                                              ; $4fb6: $00
	scf                                              ; $4fb7: $37
	nop                                              ; $4fb8: $00
	dec  sp                                          ; $4fb9: $3b
	nop                                              ; $4fba: $00
	inc  c                                           ; $4fbb: $0c
	nop                                              ; $4fbc: $00
	dec  de                                          ; $4fbd: $1b
	add  b                                           ; $4fbe: $80
	add  b                                           ; $4fbf: $80
	add  l                                           ; $4fc0: $85
	nop                                              ; $4fc1: $00
	ld   a, [bc]                                     ; $4fc2: $0a
	add  b                                           ; $4fc3: $80
	nop                                              ; $4fc4: $00
	ret  nz                                          ; $4fc5: $c0

	nop                                              ; $4fc6: $00
	ld   h, b                                        ; $4fc7: $60
	nop                                              ; $4fc8: $00
	ld   hl, sp-$40                                  ; $4fc9: $f8 $c0
	rst  $38                                         ; $4fcb: $ff
	ldh  [rTAC], a                                   ; $4fcc: $e0 $07
	add  c                                           ; $4fce: $81
	nop                                              ; $4fcf: $00
	add  hl, bc                                      ; $4fd0: $09
	add  b                                           ; $4fd1: $80
	nop                                              ; $4fd2: $00
	ld   h, b                                        ; $4fd3: $60
	nop                                              ; $4fd4: $00
	call c, $f000                                    ; $4fd5: $dc $00 $f0
	inc  bc                                          ; $4fd8: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd9: $cf
	nop                                              ; $4fda: $00
	add  b                                           ; $4fdb: $80
	ld   [bc], a                                     ; $4fdc: $02
	add  b                                           ; $4fdd: $80
	nop                                              ; $4fde: $00
	add  b                                           ; $4fdf: $80
	ld   [bc], a                                     ; $4fe0: $02
	adc  e                                           ; $4fe1: $8b
	nop                                              ; $4fe2: $00
	add  b                                           ; $4fe3: $80
	ldh  [$80], a                                    ; $4fe4: $e0 $80
	rra                                              ; $4fe6: $1f
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	add  d                                           ; $4fe9: $82
	inc  bc                                          ; $4fea: $03
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	add  b                                           ; $4fed: $80
	add  b                                           ; $4fee: $80
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	add  b                                           ; $4ff1: $80
	ld   b, b                                        ; $4ff2: $40
	add  b                                           ; $4ff3: $80
	nop                                              ; $4ff4: $00
	add  b                                           ; $4ff5: $80
	ld   b, b                                        ; $4ff6: $40
	adc  e                                           ; $4ff7: $8b
	nop                                              ; $4ff8: $00
	add  b                                           ; $4ff9: $80
	rlca                                             ; $4ffa: $07
	add  b                                           ; $4ffb: $80
	ld   hl, sp+$00                                  ; $4ffc: $f8 $00
	nop                                              ; $4ffe: $00
	add  d                                           ; $4fff: $82
	ret  nz                                          ; $5000: $c0

	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	add  d                                           ; $5003: $82
	ld   bc, $0085                                   ; $5004: $01 $85 $00
	ld   a, [bc]                                     ; $5007: $0a
	ld   bc, $0300                                   ; $5008: $01 $00 $03
	nop                                              ; $500b: $00
	ld   b, $00                                      ; $500c: $06 $00
	rra                                              ; $500e: $1f
	inc  bc                                          ; $500f: $03
	rst  $38                                         ; $5010: $ff
	rlca                                             ; $5011: $07
	ldh  [$81], a                                    ; $5012: $e0 $81
	nop                                              ; $5014: $00
	ld   [$0001], sp                                 ; $5015: $08 $01 $00
	ld   b, $00                                      ; $5018: $06 $00
	dec  sp                                          ; $501a: $3b
	nop                                              ; $501b: $00
	rrca                                             ; $501c: $0f
	ret  nz                                          ; $501d: $c0

	di                                               ; $501e: $f3
	add  b                                           ; $501f: $80
	nop                                              ; $5020: $00
	add  c                                           ; $5021: $81
	add  b                                           ; $5022: $80
	add  d                                           ; $5023: $82
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	add  b                                           ; $5026: $80
	add  c                                           ; $5027: $81
	nop                                              ; $5028: $00
	ld   e, $04                                      ; $5029: $1e $04
	nop                                              ; $502b: $00
	inc  c                                           ; $502c: $0c
	nop                                              ; $502d: $00
	stop                                             ; $502e: $10 $00
	inc  l                                           ; $5030: $2c
	nop                                              ; $5031: $00
	ld   e, h                                        ; $5032: $5c
	nop                                              ; $5033: $00
	or   b                                           ; $5034: $b0
	nop                                              ; $5035: $00
	db   $ec                                         ; $5036: $ec
	nop                                              ; $5037: $00
	call c, $3000                                    ; $5038: $dc $00 $30
	nop                                              ; $503b: $00
	db   $f4                                         ; $503c: $f4
	nop                                              ; $503d: $00
	dec  sp                                          ; $503e: $3b
	nop                                              ; $503f: $00
	inc  c                                           ; $5040: $0c
	nop                                              ; $5041: $00
	rla                                              ; $5042: $17
	nop                                              ; $5043: $00
	dec  bc                                          ; $5044: $0b
	nop                                              ; $5045: $00
	inc  b                                           ; $5046: $04
	nop                                              ; $5047: $00
	inc  bc                                          ; $5048: $03
	sub  c                                           ; $5049: $91
	nop                                              ; $504a: $00
	ld   [de], a                                     ; $504b: $12
	ldh  a, [rSB]                                    ; $504c: $f0 $01
	call $f202                                       ; $504e: $cd $02 $f2
	inc  bc                                          ; $5051: $03
	ccf                                              ; $5052: $3f
	ld   bc, $02cd                                   ; $5053: $01 $cd $02
	ldh  a, [c]                                      ; $5056: $f2
	inc  bc                                          ; $5057: $03
	ccf                                              ; $5058: $3f
	ld   bc, $02cd                                   ; $5059: $01 $cd $02
	ld   [hl-], a                                    ; $505c: $32
	inc  bc                                          ; $505d: $03
	rrca                                             ; $505e: $0f
	add  b                                           ; $505f: $80
	ld   bc, $0089                                   ; $5060: $01 $89 $00
	ld   [bc], a                                     ; $5063: $02
	inc  bc                                          ; $5064: $03
	di                                               ; $5065: $f3
	ldh  a, [$80]                                    ; $5066: $f0 $80
	rra                                              ; $5068: $1f
	inc  bc                                          ; $5069: $03
	ldh  [$e3], a                                    ; $506a: $e0 $e3
	di                                               ; $506c: $f3
	ldh  a, [$80]                                    ; $506d: $f0 $80
	rra                                              ; $506f: $1f
	inc  bc                                          ; $5070: $03
	ldh  [$e3], a                                    ; $5071: $e0 $e3
	di                                               ; $5073: $f3
	ldh  a, [$80]                                    ; $5074: $f0 $80
	rra                                              ; $5076: $1f
	inc  bc                                          ; $5077: $03
	ldh  [$e3], a                                    ; $5078: $e0 $e3
	di                                               ; $507a: $f3
	ldh  a, [$80]                                    ; $507b: $f0 $80
	rra                                              ; $507d: $1f
	add  a                                           ; $507e: $87
	nop                                              ; $507f: $00
	ld   [bc], a                                     ; $5080: $02
	ret  nz                                          ; $5081: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5082: $cf
	rrca                                             ; $5083: $0f
	add  b                                           ; $5084: $80
	ld   hl, sp+$03                                  ; $5085: $f8 $03
	rlca                                             ; $5087: $07
	rst  ToBoot                                         ; $5088: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5089: $cf
	rrca                                             ; $508a: $0f
	add  b                                           ; $508b: $80
	ld   hl, sp+$03                                  ; $508c: $f8 $03
	rlca                                             ; $508e: $07
	rst  ToBoot                                         ; $508f: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5090: $cf
	rrca                                             ; $5091: $0f
	add  b                                           ; $5092: $80
	ld   hl, sp+$03                                  ; $5093: $f8 $03
	rlca                                             ; $5095: $07
	rst  ToBoot                                         ; $5096: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5097: $cf
	rrca                                             ; $5098: $0f
	add  b                                           ; $5099: $80
	ld   hl, sp-$79                                  ; $509a: $f8 $87
	nop                                              ; $509c: $00
	ld   [de], a                                     ; $509d: $12
	rrca                                             ; $509e: $0f
	add  b                                           ; $509f: $80
	or   e                                           ; $50a0: $b3
	ld   b, b                                        ; $50a1: $40
	ld   c, a                                        ; $50a2: $4f
	ret  nz                                          ; $50a3: $c0

	db   $fc                                         ; $50a4: $fc
	add  b                                           ; $50a5: $80
	or   e                                           ; $50a6: $b3
	ld   b, b                                        ; $50a7: $40
	ld   c, a                                        ; $50a8: $4f
	ret  nz                                          ; $50a9: $c0

	db   $fc                                         ; $50aa: $fc
	add  b                                           ; $50ab: $80
	or   e                                           ; $50ac: $b3
	ld   b, b                                        ; $50ad: $40
	ld   c, h                                        ; $50ae: $4c
	ret  nz                                          ; $50af: $c0

	ldh  a, [$80]                                    ; $50b0: $f0 $80
	add  b                                           ; $50b2: $80
	adc  c                                           ; $50b3: $89
	nop                                              ; $50b4: $00
	inc  c                                           ; $50b5: $0c
	inc  [hl]                                        ; $50b6: $34
	nop                                              ; $50b7: $00
	call c, $3000                                    ; $50b8: $dc $00 $30
	nop                                              ; $50bb: $00
	add  sp, $00                                     ; $50bc: $e8 $00
	ret  nc                                          ; $50be: $d0

	nop                                              ; $50bf: $00
	jr   nz, jr_088_50c2                             ; $50c0: $20 $00

jr_088_50c2:
	ret  nz                                          ; $50c2: $c0

	rst  $38                                         ; $50c3: $ff
	nop                                              ; $50c4: $00
	rst  $38                                         ; $50c5: $ff
	nop                                              ; $50c6: $00
	rst  $38                                         ; $50c7: $ff
	nop                                              ; $50c8: $00
	rst  $38                                         ; $50c9: $ff
	nop                                              ; $50ca: $00
	rst  $38                                         ; $50cb: $ff
	nop                                              ; $50cc: $00
	adc  h                                           ; $50cd: $8c
	nop                                              ; $50ce: $00
	db   $e3                                         ; $50cf: $e3
	nop                                              ; $50d0: $00
	add  b                                           ; $50d1: $80
	nop                                              ; $50d2: $00
	ld   [bc], a                                     ; $50d3: $02
	inc  bc                                          ; $50d4: $03
	nop                                              ; $50d5: $00
	ld   bc, $0089                                   ; $50d6: $01 $89 $00
	ld   b, $02                                      ; $50d9: $06 $02
	nop                                              ; $50db: $00
	rst  $38                                         ; $50dc: $ff
	nop                                              ; $50dd: $00
	rst  $38                                         ; $50de: $ff
	nop                                              ; $50df: $00
	ret  z                                           ; $50e0: $c8

	add  a                                           ; $50e1: $87
	ret  nz                                          ; $50e2: $c0

	inc  b                                           ; $50e3: $04
	ld   [$ff00], sp                                 ; $50e4: $08 $00 $ff
	nop                                              ; $50e7: $00
	rst  $38                                         ; $50e8: $ff
	add  a                                           ; $50e9: $87
	nop                                              ; $50ea: $00
	add  b                                           ; $50eb: $80
	ld   [bc], a                                     ; $50ec: $02
	add  b                                           ; $50ed: $80
	nop                                              ; $50ee: $00
	inc  c                                           ; $50ef: $0c
	rst  $38                                         ; $50f0: $ff
	nop                                              ; $50f1: $00
	rst  $38                                         ; $50f2: $ff
	nop                                              ; $50f3: $00
	cpl                                              ; $50f4: $2f
	nop                                              ; $50f5: $00
	jr   nc, jr_088_50f8                             ; $50f6: $30 $00

jr_088_50f8:
	stop                                             ; $50f8: $10 $00
	ld   b, $01                                      ; $50fa: $06 $01
	ld   [$0081], sp                                 ; $50fc: $08 $81 $00
	inc  b                                           ; $50ff: $04
	rst  $38                                         ; $5100: $ff
	nop                                              ; $5101: $00
	rst  $38                                         ; $5102: $ff
	nop                                              ; $5103: $00
	rst  $28                                         ; $5104: $ef
	add  e                                           ; $5105: $83
	cpl                                              ; $5106: $2f
	ld   [$ff5f], sp                                 ; $5107: $08 $5f $ff
	ld   a, h                                        ; $510a: $7c
	rla                                              ; $510b: $17
	dec  bc                                          ; $510c: $0b
	nop                                              ; $510d: $00
	ret  nz                                          ; $510e: $c0

	nop                                              ; $510f: $00
	add  b                                           ; $5110: $80
	adc  c                                           ; $5111: $89
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	ld   b, d                                        ; $5114: $42
	adc  l                                           ; $5115: $8d
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	dec  sp                                          ; $5118: $3b
	add  c                                           ; $5119: $81
	nop                                              ; $511a: $00
	ld   [$0006], sp                                 ; $511b: $08 $06 $00
	rlca                                             ; $511e: $07
	nop                                              ; $511f: $00
	call nz, $3200                                   ; $5120: $c4 $00 $32
	ret  nz                                          ; $5123: $c0

	rst  ToBoot                                         ; $5124: $c7
	add  c                                           ; $5125: $81
	ret  nz                                          ; $5126: $c0

	ld   de, $020b                                   ; $5127: $11 $0b $02
	add  c                                           ; $512a: $81
	ld   bc, $9959                                   ; $512b: $01 $59 $99
	db   $fc                                         ; $512e: $fc
	cp   a                                           ; $512f: $bf
	inc  hl                                          ; $5130: $23
	ccf                                              ; $5131: $3f
	ld   a, $3f                                      ; $5132: $3e $3f
	ld   c, $1f                                      ; $5134: $0e $1f
	rlca                                             ; $5136: $07
	rrca                                             ; $5137: $0f
	rlca                                             ; $5138: $07
	nop                                              ; $5139: $00
	add  b                                           ; $513a: $80
	ld   b, b                                        ; $513b: $40
	dec  c                                           ; $513c: $0d
	ld   b, [hl]                                     ; $513d: $46
	ld   b, b                                        ; $513e: $40
	pop  bc                                          ; $513f: $c1
	ret  nz                                          ; $5140: $c0

	inc  hl                                          ; $5141: $23
	ldh  [$e7], a                                    ; $5142: $e0 $e7
	db   $e3                                         ; $5144: $e3
	adc  a                                           ; $5145: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5146: $cf
	rra                                              ; $5147: $1f
	sbc  a                                           ; $5148: $9f
	jr   jr_088_515b                                 ; $5149: $18 $10

	add  d                                           ; $514b: $82
	nop                                              ; $514c: $00
	inc  b                                           ; $514d: $04
	ldh  a, [rP1]                                    ; $514e: $f0 $00
	rst  $38                                         ; $5150: $ff
	nop                                              ; $5151: $00
	ld   hl, sp-$80                                  ; $5152: $f8 $80
	rst  $38                                         ; $5154: $ff
	inc  bc                                          ; $5155: $03
	rst  $28                                         ; $5156: $ef
	rst  $20                                         ; $5157: $e7
	rst  $38                                         ; $5158: $ff
	ld   c, b                                        ; $5159: $48
	adc  l                                           ; $515a: $8d

jr_088_515b:
	nop                                              ; $515b: $00
	nop                                              ; $515c: $00
	ld   b, d                                        ; $515d: $42
	adc  l                                           ; $515e: $8d
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	ret  z                                           ; $5161: $c8

	add  e                                           ; $5162: $83
	ret  nz                                          ; $5163: $c0

	ld   [bc], a                                     ; $5164: $02
	jp   nz, $c8c0                                   ; $5165: $c2 $c0 $c8

	add  l                                           ; $5168: $85
	ret  nz                                          ; $5169: $c0

	rlca                                             ; $516a: $07
	dec  b                                           ; $516b: $05
	rlca                                             ; $516c: $07
	inc  c                                           ; $516d: $0c
	rrca                                             ; $516e: $0f
	nop                                              ; $516f: $00
	rlca                                             ; $5170: $07
	dec  b                                           ; $5171: $05
	inc  bc                                          ; $5172: $03
	add  [hl]                                        ; $5173: $86
	nop                                              ; $5174: $00
	nop                                              ; $5175: $00
	sbc  a                                           ; $5176: $9f
	add  b                                           ; $5177: $80
	dec  de                                          ; $5178: $1b
	add  c                                           ; $5179: $81
	rra                                              ; $517a: $1f
	inc  bc                                          ; $517b: $03
	rst  JumpTable                                         ; $517c: $df
	rra                                              ; $517d: $1f
	ld   c, a                                        ; $517e: $4f
	rrca                                             ; $517f: $0f
	add  b                                           ; $5180: $80
	rlca                                             ; $5181: $07
	inc  b                                           ; $5182: $04
	ld   [bc], a                                     ; $5183: $02
	inc  bc                                          ; $5184: $03
	nop                                              ; $5185: $00
	inc  bc                                          ; $5186: $03
	db   $fd                                         ; $5187: $fd
	add  d                                           ; $5188: $82
	rst  $38                                         ; $5189: $ff
	add  b                                           ; $518a: $80
	ld   a, a                                        ; $518b: $7f
	add  hl, bc                                      ; $518c: $09
	rst  $38                                         ; $518d: $ff
	cp   $ff                                         ; $518e: $fe $ff
	db   $f4                                         ; $5190: $f4
	rst  $38                                         ; $5191: $ff
	and  b                                           ; $5192: $a0
	rst  $38                                         ; $5193: $ff
	nop                                              ; $5194: $00
	rst  $38                                         ; $5195: $ff
	ld   [$008d], a                                  ; $5196: $ea $8d $00
	nop                                              ; $5199: $00
	ld   b, d                                        ; $519a: $42
	adc  l                                           ; $519b: $8d
	nop                                              ; $519c: $00
	ld   bc, $c0c2                                   ; $519d: $01 $c2 $c0
	adc  b                                           ; $51a0: $88

jr_088_51a1:
	add  b                                           ; $51a1: $80
	sub  e                                           ; $51a2: $93
	nop                                              ; $51a3: $00
	adc  d                                           ; $51a4: $8a
	ld   bc, $0081                                   ; $51a5: $01 $81 $00
	ld   [bc], a                                     ; $51a8: $02
	xor  b                                           ; $51a9: $a8
	rst  $38                                         ; $51aa: $ff
	ld   d, a                                        ; $51ab: $57
	add  l                                           ; $51ac: $85
	rst  $38                                         ; $51ad: $ff
	ld   b, $e7                                      ; $51ae: $06 $e7
	rst  $38                                         ; $51b0: $ff
	db   $db                                         ; $51b1: $db
	rst  $38                                         ; $51b2: $ff
	or   a                                           ; $51b3: $b7
	rst  $38                                         ; $51b4: $ff
	res  1, l                                        ; $51b5: $cb $8d
	nop                                              ; $51b7: $00
	nop                                              ; $51b8: $00
	ld   b, d                                        ; $51b9: $42
	adc  l                                           ; $51ba: $8d
	nop                                              ; $51bb: $00
	nop                                              ; $51bc: $00
	ld   [bc], a                                     ; $51bd: $02
	sub  l                                           ; $51be: $95
	nop                                              ; $51bf: $00
	ld   [bc], a                                     ; $51c0: $02
	ccf                                              ; $51c1: $3f
	nop                                              ; $51c2: $00
	dec  sp                                          ; $51c3: $3b
	add  e                                           ; $51c4: $83
	nop                                              ; $51c5: $00
	nop                                              ; $51c6: $00
	inc  b                                           ; $51c7: $04
	add  l                                           ; $51c8: $85

jr_088_51c9:
	nop                                              ; $51c9: $00
	ld   [bc], a                                     ; $51ca: $02
	ldh  [rP1], a                                    ; $51cb: $e0 $00
	ld   h, b                                        ; $51cd: $60
	add  e                                           ; $51ce: $83
	nop                                              ; $51cf: $00
	db   $10                                         ; $51d0: $10
	ld   l, b                                        ; $51d1: $68
	rst  $38                                         ; $51d2: $ff
	ld   b, e                                        ; $51d3: $43
	rst  $38                                         ; $51d4: $ff
	add  e                                           ; $51d5: $83
	ld   a, a                                        ; $51d6: $7f
	ld   d, [hl]                                     ; $51d7: $56
	ld   a, a                                        ; $51d8: $7f
	ld   a, [hl]                                     ; $51d9: $7e
	ccf                                              ; $51da: $3f
	dec  sp                                          ; $51db: $3b
	ccf                                              ; $51dc: $3f
	ld   a, [hl-]                                    ; $51dd: $3a
	rra                                              ; $51de: $1f
	ld   de, $400f                                   ; $51df: $11 $0f $40
	adc  l                                           ; $51e2: $8d
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	ld   b, d                                        ; $51e5: $42
	adc  c                                           ; $51e6: $89

jr_088_51e7:
	nop                                              ; $51e7: $00
	ld   [bc], a                                     ; $51e8: $02
	ld   bc, $0300                                   ; $51e9: $01 $00 $03
	add  e                                           ; $51ec: $83

jr_088_51ed:
	nop                                              ; $51ed: $00
	nop                                              ; $51ee: $00
	add  b                                           ; $51ef: $80
	add  e                                           ; $51f0: $83
	nop                                              ; $51f1: $00
	ld   c, $80                                      ; $51f2: $0e $80
	nop                                              ; $51f4: $00
	rst  $38                                         ; $51f5: $ff
	nop                                              ; $51f6: $00
	rst  $38                                         ; $51f7: $ff
	nop                                              ; $51f8: $00

jr_088_51f9:
	ld   a, [hl-]                                    ; $51f9: $3a
	inc  sp                                          ; $51fa: $33
	ld   e, c                                        ; $51fb: $59
	ld   bc, $017e                                   ; $51fc: $01 $7e $01
	rla                                              ; $51ff: $17
	nop                                              ; $5200: $00
	add  hl, sp                                      ; $5201: $39
	add  c                                           ; $5202: $81

Jump_088_5203:
	nop                                              ; $5203: $00
	inc  c                                           ; $5204: $0c
	rst  $38                                         ; $5205: $ff
	nop                                              ; $5206: $00
	rst  $38                                         ; $5207: $ff
	nop                                              ; $5208: $00

jr_088_5209:
	ld   b, b                                        ; $5209: $40
	ret  nz                                          ; $520a: $c0

	or   b                                           ; $520b: $b0
	ldh  [$80], a                                    ; $520c: $e0 $80
	ldh  [rLCDC], a                                  ; $520e: $e0 $40
	and  b                                           ; $5210: $a0
	ld   d, b                                        ; $5211: $50
	add  c                                           ; $5212: $81
	nop                                              ; $5213: $00
	ld   a, [bc]                                     ; $5214: $0a
	rst  $38                                         ; $5215: $ff
	nop                                              ; $5216: $00
	rst  $38                                         ; $5217: $ff
	nop                                              ; $5218: $00
	cpl                                              ; $5219: $2f
	rrca                                             ; $521a: $0f
	add  hl, de                                      ; $521b: $19
	cpl                                              ; $521c: $2f
	ld   [hl+], a                                    ; $521d: $22
	rlca                                             ; $521e: $07
	jr   c, jr_088_51a1                              ; $521f: $38 $80

	inc  bc                                          ; $5221: $03
	rlca                                             ; $5222: $07
	nop                                              ; $5223: $00
	dec  bc                                          ; $5224: $0b
	nop                                              ; $5225: $00
	rst  $38                                         ; $5226: $ff
	nop                                              ; $5227: $00
	rst  $38                                         ; $5228: $ff
	nop                                              ; $5229: $00
	ld   b, b                                        ; $522a: $40
	adc  c                                           ; $522b: $89
	nop                                              ; $522c: $00
	ld   [bc], a                                     ; $522d: $02
	add  b                                           ; $522e: $80
	nop                                              ; $522f: $00
	ret  nz                                          ; $5230: $c0

	add  [hl]                                        ; $5231: $86
	nop                                              ; $5232: $00
	add  b                                           ; $5233: $80
	rra                                              ; $5234: $1f
	rlca                                             ; $5235: $07
	ccf                                              ; $5236: $3f
	rra                                              ; $5237: $1f
	ld   e, a                                        ; $5238: $5f
	dec  hl                                          ; $5239: $2b
	xor  e                                           ; $523a: $ab
	rst  $20                                         ; $523b: $e7
	and  $fe                                         ; $523c: $e6 $fe
	add  b                                           ; $523e: $80
	ld   a, [hl]                                     ; $523f: $7e
	add  b                                           ; $5240: $80
	ccf                                              ; $5241: $3f
	add  b                                           ; $5242: $80
	inc  de                                          ; $5243: $13
	add  h                                           ; $5244: $84
	jr   nz, jr_088_51c9                             ; $5245: $20 $82

	ld   [hl], b                                     ; $5247: $70
	add  h                                           ; $5248: $84
	nop                                              ; $5249: $00
	add  b                                           ; $524a: $80
	ldh  [$80], a                                    ; $524b: $e0 $80
	ldh  a, [rP1]                                    ; $524d: $f0 $00
	ld   hl, sp-$80                                  ; $524f: $f8 $80
	ret  nc                                          ; $5251: $d0

	nop                                              ; $5252: $00
	ld   hl, sp-$7e                                  ; $5253: $f8 $82
	db   $fc                                         ; $5255: $fc
	add  d                                           ; $5256: $82
	ld   e, h                                        ; $5257: $5c
	add  b                                           ; $5258: $80
	inc  e                                           ; $5259: $1c
	add  d                                           ; $525a: $82
	nop                                              ; $525b: $00
	add  b                                           ; $525c: $80
	db   $10                                         ; $525d: $10
	add  b                                           ; $525e: $80
	jr   nc, @-$7e                                   ; $525f: $30 $80

	ldh  [$80], a                                    ; $5261: $e0 $80
	and  b                                           ; $5263: $a0
	add  d                                           ; $5264: $82
	jr   nz, jr_088_51e7                             ; $5265: $20 $80

	jr   nc, jr_088_51ed                             ; $5267: $30 $84

	db   $10                                         ; $5269: $10
	adc  c                                           ; $526a: $89
	nop                                              ; $526b: $00
	add  d                                           ; $526c: $82
	rra                                              ; $526d: $1f
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	add  h                                           ; $5270: $84
	jr   nc, jr_088_51f9                             ; $5271: $30 $86

	db   $10                                         ; $5273: $10
	adc  e                                           ; $5274: $8b
	nop                                              ; $5275: $00
	add  b                                           ; $5276: $80
	ldh  [$80], a                                    ; $5277: $e0 $80
	ld   hl, sp+$00                                  ; $5279: $f8 $00
	ccf                                              ; $527b: $3f
	add  b                                           ; $527c: $80
	nop                                              ; $527d: $00
	nop                                              ; $527e: $00
	ccf                                              ; $527f: $3f
	add  d                                           ; $5280: $82
	ld   a, a                                        ; $5281: $7f
	sub  [hl]                                        ; $5282: $96
	nop                                              ; $5283: $00
	nop                                              ; $5284: $00

jr_088_5285:
	ldh  a, [$80]                                    ; $5285: $f0 $80
	jr   nc, jr_088_5209                             ; $5287: $30 $80

	ret  nz                                          ; $5289: $c0

	add  c                                           ; $528a: $81
	ldh  a, [$8b]                                    ; $528b: $f0 $8b
	nop                                              ; $528d: $00
	add  d                                           ; $528e: $82
	rrca                                             ; $528f: $0f
	add  b                                           ; $5290: $80
	inc  bc                                          ; $5291: $03
	sbc  b                                           ; $5292: $98
	nop                                              ; $5293: $00
	add  b                                           ; $5294: $80
	ret  nz                                          ; $5295: $c0

	add  b                                           ; $5296: $80
	ldh  a, [$80]                                    ; $5297: $f0 $80
	ldh  [$91], a                                    ; $5299: $e0 $91
	nop                                              ; $529b: $00
	ld   [bc], a                                     ; $529c: $02
	ld   [bc], a                                     ; $529d: $02
	nop                                              ; $529e: $00
	inc  b                                           ; $529f: $04
	add  c                                           ; $52a0: $81
	nop                                              ; $52a1: $00
	ld   [$0006], sp                                 ; $52a2: $08 $06 $00
	rlca                                             ; $52a5: $07
	nop                                              ; $52a6: $00
	inc  b                                           ; $52a7: $04
	nop                                              ; $52a8: $00
	ld   [bc], a                                     ; $52a9: $02
	nop                                              ; $52aa: $00
	ld   bc, $0087                                   ; $52ab: $01 $87 $00
	inc  b                                           ; $52ae: $04
	ret  nz                                          ; $52af: $c0

	nop                                              ; $52b0: $00
	ld   b, b                                        ; $52b1: $40
	nop                                              ; $52b2: $00
	add  b                                           ; $52b3: $80
	sbc  c                                           ; $52b4: $99
	nop                                              ; $52b5: $00
	ld   [bc], a                                     ; $52b6: $02
	stop                                             ; $52b7: $10 $00
	db   $10                                         ; $52b9: $10
	adc  l                                           ; $52ba: $8d
	nop                                              ; $52bb: $00
	ld   b, $18                                      ; $52bc: $06 $18
	nop                                              ; $52be: $00
	inc  b                                           ; $52bf: $04
	nop                                              ; $52c0: $00
	inc  c                                           ; $52c1: $0c
	nop                                              ; $52c2: $00
	db   $10                                         ; $52c3: $10
	add  h                                           ; $52c4: $84
	nop                                              ; $52c5: $00
	inc  bc                                          ; $52c6: $03
	ld   bc, $0702                                   ; $52c7: $01 $02 $07
	inc  bc                                          ; $52ca: $03
	add  d                                           ; $52cb: $82
	rrca                                             ; $52cc: $0f
	cpl                                              ; $52cd: $2f
	rra                                              ; $52ce: $1f
	ld   e, $1f                                      ; $52cf: $1e $1f
	rla                                              ; $52d1: $17
	ccf                                              ; $52d2: $3f
	cpl                                              ; $52d3: $2f
	ccf                                              ; $52d4: $3f
	rra                                              ; $52d5: $1f
	ld   e, a                                        ; $52d6: $5f
	ld   d, e                                        ; $52d7: $53
	ld   a, a                                        ; $52d8: $7f
	ld   [hl], a                                     ; $52d9: $77
	ld   a, l                                        ; $52da: $7d
	ld   a, d                                        ; $52db: $7a
	ld   a, [hl]                                     ; $52dc: $7e
	dec  e                                           ; $52dd: $1d
	ld   a, a                                        ; $52de: $7f
	ld   l, $7f                                      ; $52df: $2e $7f
	ld   d, b                                        ; $52e1: $50
	nop                                              ; $52e2: $00
	jr   nc, jr_088_5285                             ; $52e3: $30 $a0

	cp   b                                           ; $52e5: $b8
	or   b                                           ; $52e6: $b0
	and  b                                           ; $52e7: $a0
	cp   h                                           ; $52e8: $bc
	add  hl, sp                                      ; $52e9: $39
	sbc  a                                           ; $52ea: $9f
	adc  h                                           ; $52eb: $8c
	rst  JumpTable                                         ; $52ec: $df
	add  [hl]                                        ; $52ed: $86
	rst  JumpTable                                         ; $52ee: $df
	jp   nc, $d9df                                   ; $52ef: $d2 $df $d9

	rst  $38                                         ; $52f2: $ff
	db   $dd                                         ; $52f3: $dd
	rst  $38                                         ; $52f4: $ff
	db   $fc                                         ; $52f5: $fc
	rst  $38                                         ; $52f6: $ff
	cp   c                                           ; $52f7: $b9
	db   $fd                                         ; $52f8: $fd
	add  d                                           ; $52f9: $82
	cp   e                                           ; $52fa: $bb
	ld   [hl], $b6                                   ; $52fb: $36 $b6
	ccf                                              ; $52fd: $3f
	add  c                                           ; $52fe: $81
	add  b                                           ; $52ff: $80
	nop                                              ; $5300: $00
	ld   b, b                                        ; $5301: $40
	add  h                                           ; $5302: $84
	nop                                              ; $5303: $00
	inc  b                                           ; $5304: $04
	add  b                                           ; $5305: $80
	db   $10                                         ; $5306: $10
	ret  nc                                          ; $5307: $d0

	sbc  b                                           ; $5308: $98
	ret  c                                           ; $5309: $d8

	add  c                                           ; $530a: $81
	call c, $fc0a                                    ; $530b: $dc $0a $fc
	or   $fe                                         ; $530e: $f6 $fe
	sub  [hl]                                        ; $5310: $96
	cp   $fa                                         ; $5311: $fe $fa
	cp   $7a                                         ; $5313: $fe $7a
	ld   a, [$764e]                                  ; $5315: $fa $4e $76
	add  b                                           ; $5318: $80
	and  $0e                                         ; $5319: $e6 $0e

jr_088_531b:
	rrc  e                                           ; $531b: $cb $0b
	dec  [hl]                                        ; $531d: $35
	rlca                                             ; $531e: $07
	ld   c, c                                        ; $531f: $49
	ccf                                              ; $5320: $3f
	ld   b, e                                        ; $5321: $43
	ld   h, a                                        ; $5322: $67
	ld   b, c                                        ; $5323: $41
	ld   a, a                                        ; $5324: $7f
	ld   h, c                                        ; $5325: $61
	ld   a, a                                        ; $5326: $7f
	ld   [hl], e                                     ; $5327: $73
	ld   a, a                                        ; $5328: $7f
	ld   l, a                                        ; $5329: $6f
	add  c                                           ; $532a: $81
	ld   a, a                                        ; $532b: $7f
	inc  c                                           ; $532c: $0c
	ld   e, a                                        ; $532d: $5f
	ld   a, a                                        ; $532e: $7f

jr_088_532f:
	ld   h, a                                        ; $532f: $67
	ld   a, a                                        ; $5330: $7f
	ld   l, b                                        ; $5331: $68
	ld   a, a                                        ; $5332: $7f
	halt                                             ; $5333: $76
	ld   a, [hl]                                     ; $5334: $7e
	ld   a, [de]                                     ; $5335: $1a
	ld   a, [hl]                                     ; $5336: $7e
	dec  c                                           ; $5337: $0d
	ld   a, l                                        ; $5338: $7d
	ld   d, e                                        ; $5339: $53
	add  e                                           ; $533a: $83
	nop                                              ; $533b: $00
	nop                                              ; $533c: $00
	ld   b, b                                        ; $533d: $40
	add  c                                           ; $533e: $81
	add  b                                           ; $533f: $80
	ld   bc, $0040                                   ; $5340: $01 $40 $00
	add  b                                           ; $5343: $80
	add  b                                           ; $5344: $80
	ld   [de], a                                     ; $5345: $12
	nop                                              ; $5346: $00
	ret  nz                                          ; $5347: $c0

	sbc  e                                           ; $5348: $9b

jr_088_5349:
	ldh  [$d0], a                                    ; $5349: $e0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $534b: $f0 $a0
	ret  nz                                          ; $534d: $c0

	dec  sp                                          ; $534e: $3b
	add  b                                           ; $534f: $80
	ld   b, b                                        ; $5350: $40
	nop                                              ; $5351: $00
	add  b                                           ; $5352: $80
	ret  nz                                          ; $5353: $c0

	add  $c0                                         ; $5354: $c6 $c0
	ld   sp, hl                                      ; $5356: $f9
	ldh  [$df], a                                    ; $5357: $e0 $df
	add  e                                           ; $5359: $83
	nop                                              ; $535a: $00
	inc  b                                           ; $535b: $04
	rlca                                             ; $535c: $07
	add  hl, bc                                      ; $535d: $09
	nop                                              ; $535e: $00
	rlca                                             ; $535f: $07
	ld   c, $81                                      ; $5360: $0e $81
	rrca                                             ; $5362: $0f
	dec  b                                           ; $5363: $05
	dec  de                                          ; $5364: $1b
	rrca                                             ; $5365: $0f
	ld   [hl], l                                     ; $5366: $75
	rla                                              ; $5367: $17
	ld   c, $0f                                      ; $5368: $0e $0f
	add  b                                           ; $536a: $80
	rla                                              ; $536b: $17
	inc  b                                           ; $536c: $04
	ld   c, e                                        ; $536d: $4b
	dec  bc                                          ; $536e: $0b
	jr   nc, jr_088_5371                             ; $536f: $30 $00

jr_088_5371:
	rrca                                             ; $5371: $0f
	add  c                                           ; $5372: $81
	nop                                              ; $5373: $00
	ld   [bc], a                                     ; $5374: $02
	ld   hl, sp+$04                                  ; $5375: $f8 $04
	db   $fc                                         ; $5377: $fc
	adc  b                                           ; $5378: $88
	nop                                              ; $5379: $00
	add  c                                           ; $537a: $81
	add  b                                           ; $537b: $80
	nop                                              ; $537c: $00
	nop                                              ; $537d: $00

jr_088_537e:
	add  c                                           ; $537e: $81
	ret  nz                                          ; $537f: $c0

	ld   b, $80                                      ; $5380: $06 $80
	ldh  [$c0], a                                    ; $5382: $e0 $c0
	ldh  a, [$90]                                    ; $5384: $f0 $90
	ret  nz                                          ; $5386: $c0

	ld   b, b                                        ; $5387: $40
	add  b                                           ; $5388: $80
	ret  nz                                          ; $5389: $c0

	sub  b                                           ; $538a: $90
	nop                                              ; $538b: $00
	add  h                                           ; $538c: $84
	scf                                              ; $538d: $37
	add  b                                           ; $538e: $80
	ld   [hl], $80                                   ; $538f: $36 $80
	inc  [hl]                                        ; $5391: $34
	add  [hl]                                        ; $5392: $86
	ret  nz                                          ; $5393: $c0

	add  b                                           ; $5394: $80
	nop                                              ; $5395: $00
	add  b                                           ; $5396: $80
	jr   nc, jr_088_531b                             ; $5397: $30 $82

	ld   [hl], $94                                   ; $5399: $36 $94
	nop                                              ; $539b: $00
	add  d                                           ; $539c: $82
	add  b                                           ; $539d: $80
	add  b                                           ; $539e: $80
	nop                                              ; $539f: $00
	add  b                                           ; $53a0: $80
	db   $10                                         ; $53a1: $10
	add  b                                           ; $53a2: $80
	jr   jr_088_532f                                 ; $53a3: $18 $8a

	nop                                              ; $53a5: $00
	add  b                                           ; $53a6: $80
	ld   b, $84                                      ; $53a7: $06 $84
	rlca                                             ; $53a9: $07
	add  b                                           ; $53aa: $80

Call_088_53ab:
	ld   bc, $0080                                   ; $53ab: $01 $80 $00
	add  b                                           ; $53ae: $80
	inc  bc                                          ; $53af: $03
	adc  d                                           ; $53b0: $8a
	nop                                              ; $53b1: $00
	add  h                                           ; $53b2: $84
	db   $10                                         ; $53b3: $10
	add  b                                           ; $53b4: $80
	nop                                              ; $53b5: $00
	add  b                                           ; $53b6: $80
	ldh  [$80], a                                    ; $53b7: $e0 $80
	rst  $20                                         ; $53b9: $e7
	add  d                                           ; $53ba: $82
	rst  $30                                         ; $53bb: $f7
	add  b                                           ; $53bc: $80
	rlca                                             ; $53bd: $07
	add  b                                           ; $53be: $80
	ld   hl, sp-$7c                                  ; $53bf: $f8 $84
	nop                                              ; $53c1: $00
	add  h                                           ; $53c2: $84
	inc  [hl]                                        ; $53c3: $34
	add  h                                           ; $53c4: $84
	jr   nc, jr_088_5349                             ; $53c5: $30 $82

	jr   nz, jr_088_5349                             ; $53c7: $20 $80

	nop                                              ; $53c9: $00
	add  b                                           ; $53ca: $80
	ld   b, b                                        ; $53cb: $40
	add  [hl]                                        ; $53cc: $86
	nop                                              ; $53cd: $00
	sub  [hl]                                        ; $53ce: $96
	add  b                                           ; $53cf: $80
	sbc  d                                           ; $53d0: $9a
	nop                                              ; $53d1: $00
	add  b                                           ; $53d2: $80
	inc  b                                           ; $53d3: $04
	add  b                                           ; $53d4: $80
	ld   l, $80                                      ; $53d5: $2e $80
	db   $10                                         ; $53d7: $10
	sbc  b                                           ; $53d8: $98
	nop                                              ; $53d9: $00
	add  b                                           ; $53da: $80
	db   $10                                         ; $53db: $10
	add  b                                           ; $53dc: $80
	nop                                              ; $53dd: $00
	add  b                                           ; $53de: $80
	ld   [$0480], sp                                 ; $53df: $08 $80 $04
	add  b                                           ; $53e2: $80
	inc  d                                           ; $53e3: $14
	rst  $38                                         ; $53e4: $ff
	nop                                              ; $53e5: $00
	rst  $38                                         ; $53e6: $ff
	nop                                              ; $53e7: $00
	rst  $38                                         ; $53e8: $ff
	nop                                              ; $53e9: $00
	and  b                                           ; $53ea: $a0
	nop                                              ; $53eb: $00
	ld   sp, hl                                      ; $53ec: $f9
	nop                                              ; $53ed: $00

jr_088_53ee:
	sbc  b                                           ; $53ee: $98
	nop                                              ; $53ef: $00
	add  b                                           ; $53f0: $80
	inc  bc                                          ; $53f1: $03
	inc  bc                                          ; $53f2: $03
	rrca                                             ; $53f3: $0f
	ld   c, $31                                      ; $53f4: $0e $31
	jr   nc, jr_088_537e                             ; $53f6: $30 $86

	nop                                              ; $53f8: $00
	add  b                                           ; $53f9: $80
	inc  bc                                          ; $53fa: $03
	add  b                                           ; $53fb: $80
	cp   $04                                         ; $53fc: $fe $04
	ld   [hl], b                                     ; $53fe: $70
	ldh  a, [rLCDC]                                  ; $53ff: $f0 $40
	call nz, $8504                                   ; $5401: $c4 $04 $85
	nop                                              ; $5404: $00
	add  b                                           ; $5405: $80
	rst  $38                                         ; $5406: $ff
	inc  b                                           ; $5407: $04
	ld   de, $9580                                   ; $5408: $11 $80 $95
	ld   a, [de]                                     ; $540b: $1a
	ld   e, $80                                      ; $540c: $1e $80
	ccf                                              ; $540e: $3f
	add  a                                           ; $540f: $87
	nop                                              ; $5410: $00
	add  b                                           ; $5411: $80
	ld   h, b                                        ; $5412: $60
	add  b                                           ; $5413: $80
	inc  c                                           ; $5414: $0c
	ld   [bc], a                                     ; $5415: $02
	inc  bc                                          ; $5416: $03
	rst  $38                                         ; $5417: $ff
	db   $fc                                         ; $5418: $fc
	adc  a                                           ; $5419: $8f
	nop                                              ; $541a: $00
	add  b                                           ; $541b: $80
	ld   bc, $0280                                   ; $541c: $01 $80 $02
	add  b                                           ; $541f: $80
	inc  b                                           ; $5420: $04
	rra                                              ; $5421: $1f
	inc  c                                           ; $5422: $0c
	dec  bc                                          ; $5423: $0b
	ld   c, $0a                                      ; $5424: $0e $0a
	ld   [de], a                                     ; $5426: $12
	ld   d, $1d                                      ; $5427: $16 $1d
	dec  d                                           ; $5429: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542a: $cf
	ret  nz                                          ; $542b: $c0

	ld   [bc], a                                     ; $542c: $02
	inc  bc                                          ; $542d: $03
	dec  b                                           ; $542e: $05
	inc  b                                           ; $542f: $04
	ld   [$d948], sp                                 ; $5430: $08 $48 $d9
	ld   a, [de]                                     ; $5433: $1a
	ld   [de], a                                     ; $5434: $12
	ld   d, $25                                      ; $5435: $16 $25
	dec  [hl]                                        ; $5437: $35
	or   a                                           ; $5438: $b7
	ccf                                              ; $5439: $3f
	sbc  a                                           ; $543a: $9f
	add  e                                           ; $543b: $83
	rrca                                             ; $543c: $0f
	inc  de                                          ; $543d: $13
	ccf                                              ; $543e: $3f
	ld   e, a                                        ; $543f: $5f
	add  a                                           ; $5440: $87
	rlca                                             ; $5441: $07
	add  b                                           ; $5442: $80
	ccf                                              ; $5443: $3f
	ld   [bc], a                                     ; $5444: $02
	ld   e, a                                        ; $5445: $5f
	ld   e, c                                        ; $5446: $59
	ld   sp, hl                                      ; $5447: $f9
	add  b                                           ; $5448: $80
	pop  af                                          ; $5449: $f1
	ld   [bc], a                                     ; $544a: $02
	di                                               ; $544b: $f3
	ld   [hl], e                                     ; $544c: $73
	ld   a, a                                        ; $544d: $7f
	add  [hl]                                        ; $544e: $86
	rst  $38                                         ; $544f: $ff
	add  b                                           ; $5450: $80
	inc  bc                                          ; $5451: $03
	add  b                                           ; $5452: $80
	dec  c                                           ; $5453: $0d

jr_088_5454:
	add  b                                           ; $5454: $80
	rrca                                             ; $5455: $0f
	ld   [bc], a                                     ; $5456: $02
	cp   $f9                                         ; $5457: $fe $f9
	ld   hl, sp-$80                                  ; $5459: $f8 $80
	ldh  a, [$80]                                    ; $545b: $f0 $80
	di                                               ; $545d: $f3
	nop                                              ; $545e: $00
	rst  $38                                         ; $545f: $ff
	add  b                                           ; $5460: $80
	ld   hl, sp-$7c                                  ; $5461: $f8 $84
	rst  $38                                         ; $5463: $ff
	ld   bc, $807f                                   ; $5464: $01 $7f $80
	add  b                                           ; $5467: $80
	ret  nz                                          ; $5468: $c0

	add  b                                           ; $5469: $80
	ld   b, b                                        ; $546a: $40
	add  b                                           ; $546b: $80
	jr   nz, jr_088_53ee                             ; $546c: $20 $80

	ld   [hl], b                                     ; $546e: $70
	ld   bc, $9010                                   ; $546f: $01 $10 $90
	add  b                                           ; $5472: $80
	sbc  b                                           ; $5473: $98
	inc  b                                           ; $5474: $04
	adc  b                                           ; $5475: $88
	ret  z                                           ; $5476: $c8

	ld   hl, sp+$27                                  ; $5477: $f8 $27
	ccf                                              ; $5479: $3f
	add  b                                           ; $547a: $80
	daa                                              ; $547b: $27
	ld   bc, $4323                                   ; $547c: $01 $23 $43
	add  b                                           ; $547f: $80
	ld   c, e                                        ; $5480: $4b
	ld   [bc], a                                     ; $5481: $02
	ld   c, a                                        ; $5482: $4f
	ld   b, e                                        ; $5483: $43
	ld   [hl], e                                     ; $5484: $73
	add  b                                           ; $5485: $80
	ld   c, a                                        ; $5486: $4f
	add  b                                           ; $5487: $80
	ld   e, a                                        ; $5488: $5f
	dec  bc                                          ; $5489: $0b
	rra                                              ; $548a: $1f
	daa                                              ; $548b: $27
	ld   b, a                                        ; $548c: $47
	ld   b, e                                        ; $548d: $43
	ld   d, e                                        ; $548e: $53
	ld   b, e                                        ; $548f: $43
	db   $d3                                         ; $5490: $d3
	rst  JumpTable                                         ; $5491: $df
	db   $d3                                         ; $5492: $d3
	di                                               ; $5493: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5494: $cf
	adc  a                                           ; $5495: $8f
	add  b                                           ; $5496: $80
	sbc  a                                           ; $5497: $9f
	add  b                                           ; $5498: $80
	cp   a                                           ; $5499: $bf
	ld   bc, $fe7e                                   ; $549a: $01 $7e $fe
	add  b                                           ; $549d: $80
	add  sp, -$80                                    ; $549e: $e8 $80
	db   $fc                                         ; $54a0: $fc
	add  b                                           ; $54a1: $80
	ld   a, [$ff80]                                  ; $54a2: $fa $80 $ff
	add  b                                           ; $54a5: $80
	cp   $82                                         ; $54a6: $fe $82
	rst  $38                                         ; $54a8: $ff
	add  b                                           ; $54a9: $80
	rra                                              ; $54aa: $1f
	add  b                                           ; $54ab: $80
	rrca                                             ; $54ac: $0f
	add  b                                           ; $54ad: $80
	ld   e, a                                        ; $54ae: $5f
	add  b                                           ; $54af: $80
	rst  $38                                         ; $54b0: $ff
	add  b                                           ; $54b1: $80
	ld   a, a                                        ; $54b2: $7f
	sub  b                                           ; $54b3: $90
	rst  $38                                         ; $54b4: $ff
	rlca                                             ; $54b5: $07
	rst  JumpTable                                         ; $54b6: $df
	sbc  a                                           ; $54b7: $9f
	ld   a, a                                        ; $54b8: $7f
	ccf                                              ; $54b9: $3f
	rst  $20                                         ; $54ba: $e7
	ld   l, b                                        ; $54bb: $68
	inc  d                                           ; $54bc: $14
	add  h                                           ; $54bd: $84
	add  c                                           ; $54be: $81
	db   $e4                                         ; $54bf: $e4
	add  c                                           ; $54c0: $81
	db   $f4                                         ; $54c1: $f4
	add  e                                           ; $54c2: $83
	ldh  a, [c]                                      ; $54c3: $f2
	ld   bc, $a0e2                                   ; $54c4: $01 $e2 $a0
	add  d                                           ; $54c7: $82
	ld   a, a                                        ; $54c8: $7f
	add  b                                           ; $54c9: $80
	ld   a, l                                        ; $54ca: $7d
	add  b                                           ; $54cb: $80
	ld   a, d                                        ; $54cc: $7a
	ld   [bc], a                                     ; $54cd: $02
	ld   a, h                                        ; $54ce: $7c
	inc  e                                           ; $54cf: $1c
	ld   a, $80                                      ; $54d0: $3e $80
	jr   c, jr_088_5454                              ; $54d2: $38 $80

	jr   nc, @+$03                                   ; $54d4: $30 $01

	sbc  $bf                                         ; $54d6: $de $bf
	add  c                                           ; $54d8: $81
	rst  $38                                         ; $54d9: $ff
	add  c                                           ; $54da: $81
	ld   hl, sp+$03                                  ; $54db: $f8 $03
	ld   sp, hl                                      ; $54dd: $f9
	cp   $38                                         ; $54de: $fe $38
	ld   a, b                                        ; $54e0: $78
	add  b                                           ; $54e1: $80
	ld   [hl], c                                     ; $54e2: $71
	add  b                                           ; $54e3: $80
	ld   a, d                                        ; $54e4: $7a
	nop                                              ; $54e5: $00
	ccf                                              ; $54e6: $3f
	add  b                                           ; $54e7: $80
	rst  $38                                         ; $54e8: $ff
	add  b                                           ; $54e9: $80
	ld   a, a                                        ; $54ea: $7f
	add  b                                           ; $54eb: $80
	ccf                                              ; $54ec: $3f
	nop                                              ; $54ed: $00
	rst  $38                                         ; $54ee: $ff
	add  b                                           ; $54ef: $80
	rra                                              ; $54f0: $1f
	add  b                                           ; $54f1: $80
	ccf                                              ; $54f2: $3f
	add  b                                           ; $54f3: $80
	rst  JumpTable                                         ; $54f4: $df
	add  b                                           ; $54f5: $80
	sbc  d                                           ; $54f6: $9a
	nop                                              ; $54f7: $00
	cp   $80                                         ; $54f8: $fe $80
	ldh  a, [c]                                      ; $54fa: $f2
	ld   [bc], a                                     ; $54fb: $02
	jp   nz, $f8c5                                   ; $54fc: $c2 $c5 $f8

	add  b                                           ; $54ff: $80
	jp   nc, $ce05                                   ; $5500: $d2 $05 $ce

	add  b                                           ; $5503: $80
	add  sp, -$60                                    ; $5504: $e8 $a0
	di                                               ; $5506: $f3
	db   $f4                                         ; $5507: $f4
	add  b                                           ; $5508: $80
	cp   [hl]                                        ; $5509: $be
	rrca                                             ; $550a: $0f
	ld   e, a                                        ; $550b: $5f
	dec  e                                           ; $550c: $1d
	ret                                              ; $550d: $c9


	inc  bc                                          ; $550e: $03
	rra                                              ; $550f: $1f
	rlca                                             ; $5510: $07
	rla                                              ; $5511: $17
	dec  b                                           ; $5512: $05
	ld   b, e                                        ; $5513: $43
	nop                                              ; $5514: $00
	ret  nz                                          ; $5515: $c0

	nop                                              ; $5516: $00
	ld   a, [bc]                                     ; $5517: $0a
	nop                                              ; $5518: $00
	inc  d                                           ; $5519: $14
	nop                                              ; $551a: $00

jr_088_551b:
	add  c                                           ; $551b: $81
	ldh  [c], a                                      ; $551c: $e2
	add  b                                           ; $551d: $80
	and  d                                           ; $551e: $a2
	add  c                                           ; $551f: $81
	ld   [bc], a                                     ; $5520: $02
	ld   [bc], a                                     ; $5521: $02
	ld   a, [hl+]                                    ; $5522: $2a
	ld   [bc], a                                     ; $5523: $02
	inc  l                                           ; $5524: $2c
	add  e                                           ; $5525: $83
	inc  b                                           ; $5526: $04
	dec  b                                           ; $5527: $05
	inc  d                                           ; $5528: $14
	ld   a, [de]                                     ; $5529: $1a
	ld   d, $17                                      ; $552a: $16 $17
	ld   b, $0e                                      ; $552c: $06 $0e
	add  b                                           ; $552e: $80
	dec  c                                           ; $552f: $0d
	inc  bc                                          ; $5530: $03
	nop                                              ; $5531: $00
	inc  b                                           ; $5532: $04
	ld   bc, $8002                                   ; $5533: $01 $02 $80
	ld   bc, $0080                                   ; $5536: $01 $80 $00
	ld   de, $3728                                   ; $5539: $11 $28 $37
	sbc  $1e                                         ; $553c: $de $1e
	ld   a, l                                        ; $553e: $7d
	dec  c                                           ; $553f: $0d
	nop                                              ; $5540: $00
	ld   [$4411], sp                                 ; $5541: $08 $11 $44
	inc  b                                           ; $5544: $04
	ld   b, $eb                                      ; $5545: $06 $eb
	inc  bc                                          ; $5547: $03
	ld   sp, hl                                      ; $5548: $f9
	add  c                                           ; $5549: $81
	ld   c, [hl]                                     ; $554a: $4e
	pop  de                                          ; $554b: $d1
	add  b                                           ; $554c: $80
	di                                               ; $554d: $f3
	add  b                                           ; $554e: $80
	ld   c, l                                        ; $554f: $4d
	add  b                                           ; $5550: $80
	jr   c, @-$7e                                    ; $5551: $38 $80

	ld   [hl], l                                     ; $5553: $75
	dec  bc                                          ; $5554: $0b
	ld   hl, sp+$00                                  ; $5555: $f8 $00
	ld   l, c                                        ; $5557: $69
	nop                                              ; $5558: $00
	ld   a, e                                        ; $5559: $7b
	nop                                              ; $555a: $00
	rra                                              ; $555b: $1f
	db   $f4                                         ; $555c: $f4
	cp   $f8                                         ; $555d: $fe $f8
	ldh  a, [c]                                      ; $555f: $f2
	push af                                          ; $5560: $f5
	add  b                                           ; $5561: $80
	ld   [$0123], sp                                 ; $5562: $08 $23 $01
	nop                                              ; $5565: $00
	ld   c, $00                                      ; $5566: $0e $00
	cpl                                              ; $5568: $2f
	nop                                              ; $5569: $00
	jr   z, jr_088_556c                              ; $556a: $28 $00

jr_088_556c:
	scf                                              ; $556c: $37
	nop                                              ; $556d: $00
	or   h                                           ; $556e: $b4
	nop                                              ; $556f: $00
	or   h                                           ; $5570: $b4
	nop                                              ; $5571: $00
	ld   b, c                                        ; $5572: $41
	nop                                              ; $5573: $00
	ld   b, c                                        ; $5574: $41
	nop                                              ; $5575: $00
	sub  b                                           ; $5576: $90
	nop                                              ; $5577: $00
	add  sp, $00                                     ; $5578: $e8 $00
	jp   hl                                          ; $557a: $e9


	ld   bc, $08d8                                   ; $557b: $01 $d8 $08
	sbc  b                                           ; $557e: $98
	ld   [$1000], sp                                 ; $557f: $08 $00 $10
	ld   [hl], b                                     ; $5582: $70
	stop                                             ; $5583: $10 $00
	jr   nz, jr_088_5587                             ; $5585: $20 $00

jr_088_5587:
	ld   b, b                                        ; $5587: $40
	add  b                                           ; $5588: $80
	add  b                                           ; $5589: $80
	sub  b                                           ; $558a: $90
	nop                                              ; $558b: $00
	dec  b                                           ; $558c: $05
	ld   [hl], b                                     ; $558d: $70
	ld   h, b                                        ; $558e: $60
	ld   [bc], a                                     ; $558f: $02
	db   $10                                         ; $5590: $10
	inc  b                                           ; $5591: $04

jr_088_5592:
	ld   b, $88                                      ; $5592: $06 $88
	nop                                              ; $5594: $00
	inc  bc                                          ; $5595: $03
	jp   $3bc0                                       ; $5596: $c3 $c0 $3b


	jr   c, jr_088_551b                              ; $5599: $38 $80

jr_088_559b:
	rra                                              ; $559b: $1f
	add  b                                           ; $559c: $80
	rst  $28                                         ; $559d: $ef
	add  b                                           ; $559e: $80
	rrca                                             ; $559f: $0f
	add  h                                           ; $55a0: $84
	nop                                              ; $55a1: $00
	rlca                                             ; $55a2: $07
	db   $e3                                         ; $55a3: $e3
	nop                                              ; $55a4: $00
	ld   h, e                                        ; $55a5: $63
	nop                                              ; $55a6: $00
	rlca                                             ; $55a7: $07
	ld   bc, $fc7a                                   ; $55a8: $01 $7a $fc
	add  b                                           ; $55ab: $80
	ret  nz                                          ; $55ac: $c0

jr_088_55ad:
	add  h                                           ; $55ad: $84
	nop                                              ; $55ae: $00
	inc  bc                                          ; $55af: $03
	and  [hl]                                        ; $55b0: $a6
	ld   b, $98                                      ; $55b1: $06 $98
	jr   c, @-$7e                                    ; $55b3: $38 $80

	ret  nz                                          ; $55b5: $c0

	xor  h                                           ; $55b6: $ac
	nop                                              ; $55b7: $00
	add  b                                           ; $55b8: $80
	ld   bc, $0380                                   ; $55b9: $01 $80 $03
	add  b                                           ; $55bc: $80
	nop                                              ; $55bd: $00
	add  b                                           ; $55be: $80
	inc  b                                           ; $55bf: $04
	add  b                                           ; $55c0: $80
	ld   [$008e], sp                                 ; $55c1: $08 $8e $00
	add  b                                           ; $55c4: $80
	rlca                                             ; $55c5: $07
	add  b                                           ; $55c6: $80
	ccf                                              ; $55c7: $3f
	add  b                                           ; $55c8: $80
	ld   a, h                                        ; $55c9: $7c
	add  b                                           ; $55ca: $80
	ei                                               ; $55cb: $fb
	inc  bc                                          ; $55cc: $03
	sub  a                                           ; $55cd: $97
	or   a                                           ; $55ce: $b7
	inc  h                                           ; $55cf: $24
	ld   h, h                                        ; $55d0: $64
	add  c                                           ; $55d1: $81
	ld   l, b                                        ; $55d2: $68
	ld   bc, $4048                                   ; $55d3: $01 $48 $40
	add  b                                           ; $55d6: $80
	ret  nz                                          ; $55d7: $c0

	add  a                                           ; $55d8: $87
	nop                                              ; $55d9: $00
	add  b                                           ; $55da: $80
	ld   bc, $0f80                                   ; $55db: $01 $80 $0f
	add  b                                           ; $55de: $80
	dec  sp                                          ; $55df: $3b
	add  b                                           ; $55e0: $80
	ld   a, h                                        ; $55e1: $7c
	add  b                                           ; $55e2: $80
	ldh  [$80], a                                    ; $55e3: $e0 $80
	add  b                                           ; $55e5: $80
	add  d                                           ; $55e6: $82
	nop                                              ; $55e7: $00
	add  b                                           ; $55e8: $80
	ld   b, $80                                      ; $55e9: $06 $80
	ld   a, [bc]                                     ; $55eb: $0a
	add  b                                           ; $55ec: $80
	inc  c                                           ; $55ed: $0c
	adc  b                                           ; $55ee: $88
	nop                                              ; $55ef: $00
	dec  b                                           ; $55f0: $05

jr_088_55f1:
	ld   h, b                                        ; $55f1: $60
	ld   l, [hl]                                     ; $55f2: $6e
	xor  $e1                                         ; $55f3: $ee $e1
	pop  bc                                          ; $55f5: $c1
	ret  nz                                          ; $55f6: $c0

	sbc  b                                           ; $55f7: $98
	nop                                              ; $55f8: $00
	add  b                                           ; $55f9: $80
	add  b                                           ; $55fa: $80
	inc  bc                                          ; $55fb: $03
	ld   [hl], b                                     ; $55fc: $70
	ldh  a, [$80]                                    ; $55fd: $f0 $80
	nop                                              ; $55ff: $00
	add  b                                           ; $5600: $80
	ld   b, $80                                      ; $5601: $06 $80
	rrca                                             ; $5603: $0f
	add  b                                           ; $5604: $80

jr_088_5605:
	ld   [$009c], sp                                 ; $5605: $08 $9c $00
	add  b                                           ; $5608: $80
	add  b                                           ; $5609: $80
	dec  b                                           ; $560a: $05
	ret  nz                                          ; $560b: $c0

	nop                                              ; $560c: $00
	ld   b, b                                        ; $560d: $40
	add  b                                           ; $560e: $80
	ld   b, b                                        ; $560f: $40
	jr   nz, jr_088_5592                             ; $5610: $20 $80

	nop                                              ; $5612: $00
	inc  bc                                          ; $5613: $03
	ld   b, b                                        ; $5614: $40
	db   $10                                         ; $5615: $10
	jr   nc, jr_088_5618                             ; $5616: $30 $00

jr_088_5618:
	add  b                                           ; $5618: $80
	jr   jr_088_559b                                 ; $5619: $18 $80

	inc  e                                           ; $561b: $1c
	add  b                                           ; $561c: $80
	inc  h                                           ; $561d: $24
	add  b                                           ; $561e: $80
	jr   nz, jr_088_55ad                             ; $561f: $20 $8c

	nop                                              ; $5621: $00
	add  b                                           ; $5622: $80
	inc  bc                                          ; $5623: $03
	add  h                                           ; $5624: $84
	ld   bc, $1803                                   ; $5625: $01 $03 $18
	ret  c                                           ; $5628: $d8

	db   $fc                                         ; $5629: $fc
	cp   h                                           ; $562a: $bc
	add  c                                           ; $562b: $81
	and  b                                           ; $562c: $a0
	nop                                              ; $562d: $00
	jr   nz, @-$74                                   ; $562e: $20 $8a

	nop                                              ; $5630: $00
	add  d                                           ; $5631: $82
	rlca                                             ; $5632: $07
	add  c                                           ; $5633: $81
	nop                                              ; $5634: $00
	inc  bc                                          ; $5635: $03
	add  b                                           ; $5636: $80
	nop                                              ; $5637: $00
	add  b                                           ; $5638: $80
	nop                                              ; $5639: $00
	add  b                                           ; $563a: $80
	add  b                                           ; $563b: $80
	adc  a                                           ; $563c: $8f
	nop                                              ; $563d: $00
	add  b                                           ; $563e: $80
	add  b                                           ; $563f: $80
	add  b                                           ; $5640: $80
	ret  nz                                          ; $5641: $c0

	sbc  b                                           ; $5642: $98
	nop                                              ; $5643: $00
	add  b                                           ; $5644: $80
	inc  c                                           ; $5645: $0c
	add  b                                           ; $5646: $80
	inc  a                                           ; $5647: $3c
	nop                                              ; $5648: $00
	ld   bc, $0081                                   ; $5649: $01 $81 $00
	inc  b                                           ; $564c: $04
	ld   c, $40                                      ; $564d: $0e $40
	ld   c, b                                        ; $564f: $48
	nop                                              ; $5650: $00
	rlca                                             ; $5651: $07
	adc  [hl]                                        ; $5652: $8e
	nop                                              ; $5653: $00
	add  b                                           ; $5654: $80
	ld   b, b                                        ; $5655: $40
	add  b                                           ; $5656: $80
	nop                                              ; $5657: $00
	ld   bc, $c242                                   ; $5658: $01 $42 $c2
	add  b                                           ; $565b: $80
	ld   [$1080], sp                                 ; $565c: $08 $80 $10
	add  b                                           ; $565f: $80
	ld   [bc], a                                     ; $5660: $02
	add  hl, bc                                      ; $5661: $09
	ld   b, c                                        ; $5662: $41

jr_088_5663:
	pop  bc                                          ; $5663: $c1
	ld   bc, $0802                                   ; $5664: $01 $02 $08
	ld   a, [bc]                                     ; $5667: $0a
	ld   e, $9f                                      ; $5668: $1e $9f
	add  b                                           ; $566a: $80
	nop                                              ; $566b: $00
	add  d                                           ; $566c: $82
	jr   jr_088_55f1                                 ; $566d: $18 $82

	ld   [$0c81], sp                                 ; $566f: $08 $81 $0c
	ld   bc, $0414                                   ; $5672: $01 $14 $04
	add  b                                           ; $5675: $80
	nop                                              ; $5676: $00
	nop                                              ; $5677: $00
	db   $10                                         ; $5678: $10
	add  b                                           ; $5679: $80
	ld   d, b                                        ; $567a: $50
	nop                                              ; $567b: $00
	ldh  a, [$80]                                    ; $567c: $f0 $80
	ld   hl, sp+$03                                  ; $567e: $f8 $03
	cp   h                                           ; $5680: $bc
	sub  h                                           ; $5681: $94
	inc  d                                           ; $5682: $14
	jr   c, jr_088_5605                              ; $5683: $38 $80

	ld   [hl], b                                     ; $5685: $70
	add  b                                           ; $5686: $80
	jr   z, jr_088_568a                              ; $5687: $28 $01

	ld   sp, hl                                      ; $5689: $f9

jr_088_568a:
	ld   bc, $0086                                   ; $568a: $01 $86 $00
	ld   [bc], a                                     ; $568d: $02
	ld   bc, $0100                                   ; $568e: $01 $00 $01
	sub  c                                           ; $5691: $91
	nop                                              ; $5692: $00
	inc  b                                           ; $5693: $04
	ret  nz                                          ; $5694: $c0

	nop                                              ; $5695: $00
	ldh  [rP1], a                                    ; $5696: $e0 $00
	ld   [hl], b                                     ; $5698: $70
	add  c                                           ; $5699: $81
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	ld   e, c                                        ; $569c: $59
	add  c                                           ; $569d: $81
	nop                                              ; $569e: $00
	ld   a, [bc]                                     ; $569f: $0a
	xor  l                                           ; $56a0: $ad
	ld   b, b                                        ; $56a1: $40
	ld   a, [$1100]                                  ; $56a2: $fa $00 $11
	nop                                              ; $56a5: $00
	ld   [bc], a                                     ; $56a6: $02
	nop                                              ; $56a7: $00
	inc  c                                           ; $56a8: $0c
	nop                                              ; $56a9: $00
	ld   bc, $0091                                   ; $56aa: $01 $91 $00
	nop                                              ; $56ad: $00
	add  b                                           ; $56ae: $80
	add  b                                           ; $56af: $80
	ld   a, b                                        ; $56b0: $78
	dec  bc                                          ; $56b1: $0b
	ld   de, $0a71                                   ; $56b2: $11 $71 $0a
	sub  $00                                         ; $56b5: $d6 $00
	ei                                               ; $56b7: $fb
	nop                                              ; $56b8: $00
	daa                                              ; $56b9: $27
	nop                                              ; $56ba: $00
	ldh  a, [rP1]                                    ; $56bb: $f0 $00
	db   $10                                         ; $56bd: $10
	add  [hl]                                        ; $56be: $86
	nop                                              ; $56bf: $00
	add  b                                           ; $56c0: $80
	ld   bc, $0780                                   ; $56c1: $01 $80 $07
	add  d                                           ; $56c4: $82
	nop                                              ; $56c5: $00
	add  b                                           ; $56c6: $80
	ld   bc, $0f80                                   ; $56c7: $01 $80 $0f
	add  hl, bc                                      ; $56ca: $09
	jr   nz, @+$2a                                   ; $56cb: $20 $28

	nop                                              ; $56cd: $00
	inc  d                                           ; $56ce: $14
	nop                                              ; $56cf: $00
	ld   h, b                                        ; $56d0: $60
	inc  bc                                          ; $56d1: $03
	rlca                                             ; $56d2: $07
	nop                                              ; $56d3: $00
	ld   a, b                                        ; $56d4: $78
	adc  b                                           ; $56d5: $88
	nop                                              ; $56d6: $00
	add  b                                           ; $56d7: $80
	ccf                                              ; $56d8: $3f
	add  b                                           ; $56d9: $80
	adc  e                                           ; $56da: $8b
	dec  b                                           ; $56db: $05
	ccf                                              ; $56dc: $3f
	dec  sp                                          ; $56dd: $3b
	ld   a, d                                        ; $56de: $7a
	ld   a, b                                        ; $56df: $78
	add  hl, sp                                      ; $56e0: $39
	jr   c, jr_088_5663                              ; $56e1: $38 $80

	xor  b                                           ; $56e3: $a8
	dec  b                                           ; $56e4: $05
	ld   b, b                                        ; $56e5: $40
	ld   c, c                                        ; $56e6: $49
	and  b                                           ; $56e7: $a0
	or   [hl]                                        ; $56e8: $b6
	ld   b, b                                        ; $56e9: $40
	ld   e, b                                        ; $56ea: $58
	add  b                                           ; $56eb: $80
	ret  nz                                          ; $56ec: $c0

	adc  c                                           ; $56ed: $89
	nop                                              ; $56ee: $00
	ld   [bc], a                                     ; $56ef: $02
	jr   nc, jr_088_5732                             ; $56f0: $30 $40

	ld   [hl], b                                     ; $56f2: $70
	add  d                                           ; $56f3: $82
	ldh  [$84], a                                    ; $56f4: $e0 $84
	add  b                                           ; $56f6: $80

jr_088_56f7:
	rst  $38                                         ; $56f7: $ff
	nop                                              ; $56f8: $00

jr_088_56f9:
	rst  $38                                         ; $56f9: $ff
	nop                                              ; $56fa: $00
	rst  $38                                         ; $56fb: $ff
	nop                                              ; $56fc: $00
	rst  $38                                         ; $56fd: $ff
	nop                                              ; $56fe: $00
	rst  $38                                         ; $56ff: $ff
	nop                                              ; $5700: $00
	adc  h                                           ; $5701: $8c
	nop                                              ; $5702: $00
	ld   l, [hl]                                     ; $5703: $6e
	ld   bc, $0082                                   ; $5704: $01 $82 $00

jr_088_5707:
	add  b                                           ; $5707: $80
	ccf                                              ; $5708: $3f
	ld   bc, $3f20                                   ; $5709: $01 $20 $3f
	add  c                                           ; $570c: $81
	jr   nc, jr_088_5710                             ; $570d: $30 $01

	scf                                              ; $570f: $37

jr_088_5710:
	inc  [hl]                                        ; $5710: $34
	add  b                                           ; $5711: $80
	scf                                              ; $5712: $37
	ld   bc, $1a36                                   ; $5713: $01 $36 $1a
	add  c                                           ; $5716: $81
	nop                                              ; $5717: $00
	add  b                                           ; $5718: $80
	rst  $38                                         ; $5719: $ff
	ld   bc, $ff00                                   ; $571a: $01 $00 $ff
	add  c                                           ; $571d: $81
	nop                                              ; $571e: $00
	ld   bc, $10ff                                   ; $571f: $01 $ff $10
	add  b                                           ; $5722: $80

jr_088_5723:
	rst  $38                                         ; $5723: $ff
	nop                                              ; $5724: $00

jr_088_5725:
	db   $10                                         ; $5725: $10
	add  d                                           ; $5726: $82
	nop                                              ; $5727: $00
	add  b                                           ; $5728: $80
	rst  $38                                         ; $5729: $ff
	ld   bc, $ff00                                   ; $572a: $01 $00 $ff
	add  c                                           ; $572d: $81
	nop                                              ; $572e: $00
	ld   bc, $41ff                                   ; $572f: $01 $ff $41

jr_088_5732:
	add  b                                           ; $5732: $80
	rst  $38                                         ; $5733: $ff
	nop                                              ; $5734: $00
	ld   b, c                                        ; $5735: $41
	add  d                                           ; $5736: $82
	nop                                              ; $5737: $00
	add  b                                           ; $5738: $80
	rst  $38                                         ; $5739: $ff
	ld   bc, $ff00                                   ; $573a: $01 $00 $ff
	add  c                                           ; $573d: $81
	nop                                              ; $573e: $00
	ld   bc, $04ff                                   ; $573f: $01 $ff $04
	add  b                                           ; $5742: $80
	rst  $38                                         ; $5743: $ff
	nop                                              ; $5744: $00

jr_088_5745:
	inc  b                                           ; $5745: $04
	add  d                                           ; $5746: $82

jr_088_5747:
	nop                                              ; $5747: $00
	add  b                                           ; $5748: $80
	rst  $38                                         ; $5749: $ff
	ld   bc, $ff00                                   ; $574a: $01 $00 $ff
	add  c                                           ; $574d: $81
	nop                                              ; $574e: $00
	ld   bc, $10ff                                   ; $574f: $01 $ff $10
	add  b                                           ; $5752: $80
	rst  $38                                         ; $5753: $ff
	nop                                              ; $5754: $00

jr_088_5755:
	db   $10                                         ; $5755: $10
	add  d                                           ; $5756: $82
	nop                                              ; $5757: $00
	add  b                                           ; $5758: $80
	ld   hl, sp+$01                                  ; $5759: $f8 $01
	ld   [$81f8], sp                                 ; $575b: $08 $f8 $81
	jr   z, @+$03                                    ; $575e: $28 $01

	add  sp, $68                                     ; $5760: $e8 $68
	add  b                                           ; $5762: $80
	add  sp, $01                                     ; $5763: $e8 $01
	ld   l, b                                        ; $5765: $68
	inc  e                                           ; $5766: $1c
	add  l                                           ; $5767: $85
	ld   [hl], $80                                   ; $5768: $36 $80
	scf                                              ; $576a: $37
	ld   [bc], a                                     ; $576b: $02
	dec  [hl]                                        ; $576c: $35
	scf                                              ; $576d: $37
	inc  [hl]                                        ; $576e: $34
	add  c                                           ; $576f: $81
	ld   [hl], $01                                   ; $5770: $36 $01
	ld   a, [hl+]                                    ; $5772: $2a
	jr   nc, @-$7e                                   ; $5773: $30 $80

	jr   nz, jr_088_56f7                             ; $5775: $20 $80

	jr   nc, jr_088_56f9                             ; $5777: $30 $80

	db   $10                                         ; $5779: $10
	add  b                                           ; $577a: $80
	ret  nc                                          ; $577b: $d0

	add  b                                           ; $577c: $80
	ld   a, l                                        ; $577d: $7d
	add  b                                           ; $577e: $80
	rla                                              ; $577f: $17
	add  b                                           ; $5780: $80
	db   $10                                         ; $5781: $10
	add  b                                           ; $5782: $80
	ld   h, c                                        ; $5783: $61
	add  b                                           ; $5784: $80
	jr   nz, jr_088_5707                             ; $5785: $20 $80

	ld   h, c                                        ; $5787: $61
	add  b                                           ; $5788: $80
	ld   b, c                                        ; $5789: $41
	add  b                                           ; $578a: $80
	ld   e, l                                        ; $578b: $5d
	add  b                                           ; $578c: $80
	rst  $30                                         ; $578d: $f7
	add  d                                           ; $578e: $82
	ld   b, c                                        ; $578f: $41
	add  b                                           ; $5790: $80
	add  [hl]                                        ; $5791: $86
	add  b                                           ; $5792: $80

jr_088_5793:
	add  d                                           ; $5793: $82
	add  b                                           ; $5794: $80

jr_088_5795:
	add  [hl]                                        ; $5795: $86
	add  b                                           ; $5796: $80

jr_088_5797:
	inc  b                                           ; $5797: $04
	add  b                                           ; $5798: $80
	ld   [hl], l                                     ; $5799: $75
	add  b                                           ; $579a: $80
	rst  JumpTable                                         ; $579b: $df
	add  d                                           ; $579c: $82
	inc  b                                           ; $579d: $04
	add  b                                           ; $579e: $80
	jr   nc, @-$7e                                   ; $579f: $30 $80

	jr   nz, jr_088_5723                             ; $57a1: $20 $80

	jr   nc, jr_088_5725                             ; $57a3: $30 $80

	db   $10                                         ; $57a5: $10
	add  b                                           ; $57a6: $80
	ret  nc                                          ; $57a7: $d0

	add  b                                           ; $57a8: $80
	ld   a, l                                        ; $57a9: $7d
	add  b                                           ; $57aa: $80
	rla                                              ; $57ab: $17
	add  b                                           ; $57ac: $80
	stop                                             ; $57ad: $10 $00
	ld   e, b                                        ; $57af: $58
	add  a                                           ; $57b0: $87
	ld   l, b                                        ; $57b1: $68
	add  b                                           ; $57b2: $80
	add  sp, -$7e                                    ; $57b3: $e8 $82
	ld   l, b                                        ; $57b5: $68
	nop                                              ; $57b6: $00
	inc  e                                           ; $57b7: $1c
	add  a                                           ; $57b8: $87
	ld   [hl], $03                                   ; $57b9: $36 $03
	dec  [hl]                                        ; $57bb: $35
	scf                                              ; $57bc: $37
	dec  [hl]                                        ; $57bd: $35
	scf                                              ; $57be: $37
	add  b                                           ; $57bf: $80
	ld   [hl], $01                                   ; $57c0: $36 $01
	ld   a, [hl+]                                    ; $57c2: $2a
	jr   nc, jr_088_5745                             ; $57c3: $30 $80

	jr   nz, jr_088_5747                             ; $57c5: $20 $80

	jr   nc, @-$7c                                   ; $57c7: $30 $82

	db   $10                                         ; $57c9: $10
	add  b                                           ; $57ca: $80
	ld   a, l                                        ; $57cb: $7d
	add  b                                           ; $57cc: $80
	rst  $10                                         ; $57cd: $d7
	add  b                                           ; $57ce: $80
	db   $10                                         ; $57cf: $10
	add  b                                           ; $57d0: $80
	ld   h, c                                        ; $57d1: $61
	add  b                                           ; $57d2: $80
	jr   nz, jr_088_5755                             ; $57d3: $20 $80

	ld   h, c                                        ; $57d5: $61
	add  b                                           ; $57d6: $80
	ld   b, c                                        ; $57d7: $41
	add  b                                           ; $57d8: $80
	ld   e, l                                        ; $57d9: $5d
	add  b                                           ; $57da: $80
	rst  $30                                         ; $57db: $f7
	add  d                                           ; $57dc: $82
	ld   b, b                                        ; $57dd: $40
	add  b                                           ; $57de: $80
	add  [hl]                                        ; $57df: $86
	add  b                                           ; $57e0: $80
	add  d                                           ; $57e1: $82
	add  b                                           ; $57e2: $80
	add  [hl]                                        ; $57e3: $86
	add  b                                           ; $57e4: $80
	inc  b                                           ; $57e5: $04
	add  b                                           ; $57e6: $80
	dec  b                                           ; $57e7: $05
	add  b                                           ; $57e8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57e9: $cf
	add  b                                           ; $57ea: $80
	or   h                                           ; $57eb: $b4
	add  b                                           ; $57ec: $80
	add  h                                           ; $57ed: $84
	add  b                                           ; $57ee: $80
	jr   @-$7e                                       ; $57ef: $18 $80

	ld   [$1880], sp                                 ; $57f1: $08 $80 $18
	add  b                                           ; $57f4: $80
	db   $10                                         ; $57f5: $10
	add  b                                           ; $57f6: $80
	rst  $10                                         ; $57f7: $d7
	add  b                                           ; $57f8: $80
	ld   a, l                                        ; $57f9: $7d
	add  d                                           ; $57fa: $82
	stop                                             ; $57fb: $10 $00
	ld   e, b                                        ; $57fd: $58

jr_088_57fe:
	add  a                                           ; $57fe: $87
	ld   l, b                                        ; $57ff: $68
	add  b                                           ; $5800: $80
	add  sp, -$7e                                    ; $5801: $e8 $82
	ld   l, b                                        ; $5803: $68
	nop                                              ; $5804: $00
	inc  e                                           ; $5805: $1c
	add  a                                           ; $5806: $87
	ld   [hl], $03                                   ; $5807: $36 $03
	dec  [hl]                                        ; $5809: $35
	scf                                              ; $580a: $37
	dec  [hl]                                        ; $580b: $35
	scf                                              ; $580c: $37
	add  b                                           ; $580d: $80
	ld   [hl], $01                                   ; $580e: $36 $01
	ld   a, [hl+]                                    ; $5810: $2a
	jr   nc, jr_088_5793                             ; $5811: $30 $80

	jr   nz, jr_088_5795                             ; $5813: $20 $80

	jr   nc, jr_088_5797                             ; $5815: $30 $80

	db   $10                                         ; $5817: $10
	add  b                                           ; $5818: $80
	rla                                              ; $5819: $17
	add  b                                           ; $581a: $80
	ld   a, l                                        ; $581b: $7d
	add  b                                           ; $581c: $80
	ret  nc                                          ; $581d: $d0

	add  b                                           ; $581e: $80
	ld   de, $c180                                   ; $581f: $11 $80 $c1
	add  b                                           ; $5822: $80
	add  c                                           ; $5823: $81
	add  b                                           ; $5824: $80
	pop  bc                                          ; $5825: $c1
	add  d                                           ; $5826: $82
	ld   b, b                                        ; $5827: $40
	add  b                                           ; $5828: $80
	pop  bc                                          ; $5829: $c1
	add  b                                           ; $582a: $80
	ld   bc, $dd80                                   ; $582b: $01 $80 $dd
	add  b                                           ; $582e: $80
	adc  h                                           ; $582f: $8c
	add  b                                           ; $5830: $80
	ld   [$8c80], sp                                 ; $5831: $08 $80 $8c
	add  b                                           ; $5834: $80
	add  h                                           ; $5835: $84

jr_088_5836:
	add  b                                           ; $5836: $80
	add  l                                           ; $5837: $85
	add  b                                           ; $5838: $80
	rst  JumpTable                                         ; $5839: $df
	add  b                                           ; $583a: $80
	ld   [hl], h                                     ; $583b: $74
	add  b                                           ; $583c: $80
	inc  b                                           ; $583d: $04
	add  b                                           ; $583e: $80
	jr   @-$7e                                       ; $583f: $18 $80

	ld   [$1880], sp                                 ; $5841: $08 $80 $18
	add  b                                           ; $5844: $80
	db   $10                                         ; $5845: $10
	add  b                                           ; $5846: $80
	rst  $10                                         ; $5847: $d7
	add  b                                           ; $5848: $80
	ld   a, l                                        ; $5849: $7d
	add  d                                           ; $584a: $82
	stop                                             ; $584b: $10 $00
	ld   e, b                                        ; $584d: $58
	add  a                                           ; $584e: $87
	ld   l, b                                        ; $584f: $68
	add  b                                           ; $5850: $80
	add  sp, -$7e                                    ; $5851: $e8 $82
	ld   l, b                                        ; $5853: $68
	nop                                              ; $5854: $00
	inc  e                                           ; $5855: $1c
	add  a                                           ; $5856: $87
	ld   [hl], $03                                   ; $5857: $36 $03
	dec  [hl]                                        ; $5859: $35
	scf                                              ; $585a: $37
	jr   c, jr_088_589c                              ; $585b: $38 $3f

	add  b                                           ; $585d: $80
	jr   nc, @+$03                                   ; $585e: $30 $01

	ld   l, $31                                      ; $5860: $2e $31
	add  b                                           ; $5862: $80
	ld   hl, $3180                                   ; $5863: $21 $80 $31
	add  b                                           ; $5866: $80
	db   $10                                         ; $5867: $10
	add  b                                           ; $5868: $80
	ld   de, $ff80                                   ; $5869: $11 $80 $ff
	dec  b                                           ; $586c: $05
	ld   bc, $01ff                                   ; $586d: $01 $ff $01
	rra                                              ; $5870: $1f
	sub  l                                           ; $5871: $95
	ld   [hl], l                                     ; $5872: $75
	add  b                                           ; $5873: $80
	inc  b                                           ; $5874: $04
	add  b                                           ; $5875: $80
	sbc  l                                           ; $5876: $9d
	add  b                                           ; $5877: $80
	sub  a                                           ; $5878: $97
	add  b                                           ; $5879: $80
	or   b                                           ; $587a: $b0
	add  b                                           ; $587b: $80
	jr   nc, jr_088_57fe                             ; $587c: $30 $80

	rra                                              ; $587e: $1f
	add  b                                           ; $587f: $80

Call_088_5880:
	pop  af                                          ; $5880: $f1
	add  b                                           ; $5881: $80
	adc  h                                           ; $5882: $8c
	add  b                                           ; $5883: $80
	adc  b                                           ; $5884: $88
	add  b                                           ; $5885: $80
	call c, Call_088_7480                            ; $5886: $dc $80 $74
	add  b                                           ; $5889: $80
	ld   b, h                                        ; $588a: $44
	add  b                                           ; $588b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $588c: $cf
	dec  b                                           ; $588d: $05
	ld   [$c80f], sp                                 ; $588e: $08 $0f $c8
	call z, $181b                                    ; $5891: $cc $1b $18
	add  b                                           ; $5894: $80
	ld   [$1880], sp                                 ; $5895: $08 $80 $18
	add  d                                           ; $5898: $82
	db   $10                                         ; $5899: $10
	add  b                                           ; $589a: $80
	rst  $38                                         ; $589b: $ff

jr_088_589c:
	ld   bc, $ff00                                   ; $589c: $01 $00 $ff
	add  b                                           ; $589f: $80
	nop                                              ; $58a0: $00
	nop                                              ; $58a1: $00
	and  a                                           ; $58a2: $a7
	add  a                                           ; $58a3: $87
	ld   l, b                                        ; $58a4: $68
	add  b                                           ; $58a5: $80
	add  sp, $01                                     ; $58a6: $e8 $01
	jr   z, @-$16                                    ; $58a8: $28 $e8

	add  b                                           ; $58aa: $80
	ld   [$cf01], sp                                 ; $58ab: $08 $01 $cf
	ccf                                              ; $58ae: $3f
	adc  h                                           ; $58af: $8c
	nop                                              ; $58b0: $00
	add  b                                           ; $58b1: $80
	ldh  a, [$80]                                    ; $58b2: $f0 $80
	jr   jr_088_5836                                 ; $58b4: $18 $80

	ld   [$1880], sp                                 ; $58b6: $08 $80 $18
	add  b                                           ; $58b9: $80
	inc  de                                          ; $58ba: $13
	add  b                                           ; $58bb: $80
	ld   e, $82                                      ; $58bc: $1e $82
	nop                                              ; $58be: $00
	add  b                                           ; $58bf: $80
	ld   de, $1980                                   ; $58c0: $11 $80 $19
	add  b                                           ; $58c3: $80
	add  hl, bc                                      ; $58c4: $09
	add  b                                           ; $58c5: $80
	add  hl, de                                      ; $58c6: $19
	add  b                                           ; $58c7: $80
	sub  c                                           ; $58c8: $91
	add  b                                           ; $58c9: $80
	rst  $38                                         ; $58ca: $ff
	add  d                                           ; $58cb: $82
	nop                                              ; $58cc: $00
	add  b                                           ; $58cd: $80

jr_088_58ce:
	ld   b, a                                        ; $58ce: $47
	add  b                                           ; $58cf: $80
	ld   [hl], h                                     ; $58d0: $74
	add  b                                           ; $58d1: $80
	call c, $0088                                    ; $58d2: $dc $88 $00
	add  b                                           ; $58d5: $80
	rst  $38                                         ; $58d6: $ff
	adc  h                                           ; $58d7: $8c
	nop                                              ; $58d8: $00
	add  b                                           ; $58d9: $80
	ld   hl, sp-$66                                  ; $58da: $f8 $9a
	nop                                              ; $58dc: $00
	adc  b                                           ; $58dd: $88

jr_088_58de:
	ld   bc, $0082                                   ; $58de: $01 $82 $00
	add  d                                           ; $58e1: $82
	ld   bc, $008c                                   ; $58e2: $01 $8c $00
	add  b                                           ; $58e5: $80
	rst  $28                                         ; $58e6: $ef
	add  b                                           ; $58e7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58e8: $cf
	add  b                                           ; $58e9: $80
	rst  JumpTable                                         ; $58ea: $df
	add  b                                           ; $58eb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ec: $cf
	add  b                                           ; $58ed: $80
	rst  $28                                         ; $58ee: $ef
	add  b                                           ; $58ef: $80
	cpl                                              ; $58f0: $2f
	add  b                                           ; $58f1: $80
	add  d                                           ; $58f2: $82
	add  b                                           ; $58f3: $80
	add  sp, -$80                                    ; $58f4: $e8 $80
	rst  $28                                         ; $58f6: $ef
	adc  h                                           ; $58f7: $8c
	nop                                              ; $58f8: $00
	add  b                                           ; $58f9: $80
	cp   [hl]                                        ; $58fa: $be
	add  b                                           ; $58fb: $80
	sbc  [hl]                                        ; $58fc: $9e
	add  b                                           ; $58fd: $80
	rst  JumpTable                                         ; $58fe: $df
	add  b                                           ; $58ff: $80
	sbc  [hl]                                        ; $5900: $9e
	add  b                                           ; $5901: $80
	cp   [hl]                                        ; $5902: $be
	add  b                                           ; $5903: $80
	and  d                                           ; $5904: $a2
	add  b                                           ; $5905: $80
	ld   [$be82], sp                                 ; $5906: $08 $82 $be
	adc  h                                           ; $5909: $8c

jr_088_590a:
	nop                                              ; $590a: $00
	add  b                                           ; $590b: $80
	ei                                               ; $590c: $fb
	add  b                                           ; $590d: $80
	ld   a, c                                        ; $590e: $79
	add  b                                           ; $590f: $80
	ld   a, l                                        ; $5910: $7d
	add  b                                           ; $5911: $80
	ld   a, c                                        ; $5912: $79
	add  b                                           ; $5913: $80
	ei                                               ; $5914: $fb
	add  b                                           ; $5915: $80
	adc  d                                           ; $5916: $8a
	add  b                                           ; $5917: $80

jr_088_5918:
	nop                                              ; $5918: $00
	add  d                                           ; $5919: $82
	inc  bc                                          ; $591a: $03
	adc  h                                           ; $591b: $8c
	nop                                              ; $591c: $00
	add  b                                           ; $591d: $80
	rst  $28                                         ; $591e: $ef
	add  b                                           ; $591f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5920: $cf
	add  b                                           ; $5921: $80
	rst  JumpTable                                         ; $5922: $df
	add  b                                           ; $5923: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5924: $cf
	add  b                                           ; $5925: $80
	rst  $28                                         ; $5926: $ef
	add  b                                           ; $5927: $80
	cpl                                              ; $5928: $2f
	add  b                                           ; $5929: $80
	add  d                                           ; $592a: $82
	add  b                                           ; $592b: $80
	add  sp, -$80                                    ; $592c: $e8 $80
	rst  $28                                         ; $592e: $ef
	adc  h                                           ; $592f: $8c
	nop                                              ; $5930: $00
	adc  d                                           ; $5931: $8a
	add  b                                           ; $5932: $80
	add  b                                           ; $5933: $80
	nop                                              ; $5934: $00
	add  d                                           ; $5935: $82
	add  b                                           ; $5936: $80
	adc  b                                           ; $5937: $88
	ld   bc, $0082                                   ; $5938: $01 $82 $00
	adc  d                                           ; $593b: $8a
	ld   bc, $0082                                   ; $593c: $01 $82 $00
	add  b                                           ; $593f: $80
	ld   bc, $cf80                                   ; $5940: $01 $80 $cf
	add  b                                           ; $5943: $80
	rst  JumpTable                                         ; $5944: $df
	add  b                                           ; $5945: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5946: $cf
	add  d                                           ; $5947: $82
	rst  $28                                         ; $5948: $ef
	add  b                                           ; $5949: $80
	add  d                                           ; $594a: $82
	add  b                                           ; $594b: $80
	jr   z, jr_088_58ce                              ; $594c: $28 $80

	rst  $28                                         ; $594e: $ef
	add  b                                           ; $594f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5950: $cf
	add  b                                           ; $5951: $80
	rst  JumpTable                                         ; $5952: $df
	add  b                                           ; $5953: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5954: $cf
	add  b                                           ; $5955: $80
	rst  $28                                         ; $5956: $ef
	add  b                                           ; $5957: $80
	add  sp, -$80                                    ; $5958: $e8 $80
	add  b                                           ; $595a: $80
	add  b                                           ; $595b: $80
	jr   nz, jr_088_58de                             ; $595c: $20 $80

	ldh  [$80], a                                    ; $595e: $e0 $80
	sbc  [hl]                                        ; $5960: $9e
	add  b                                           ; $5961: $80
	rst  JumpTable                                         ; $5962: $df
	add  b                                           ; $5963: $80
	sbc  [hl]                                        ; $5964: $9e
	add  b                                           ; $5965: $80
	cp   [hl]                                        ; $5966: $be
	add  b                                           ; $5967: $80
	and  d                                           ; $5968: $a2
	add  b                                           ; $5969: $80

jr_088_596a:
	nop                                              ; $596a: $00
	add  d                                           ; $596b: $82
	add  b                                           ; $596c: $80
	add  h                                           ; $596d: $84

jr_088_596e:
	nop                                              ; $596e: $00
	add  d                                           ; $596f: $82
	add  b                                           ; $5970: $80
	add  h                                           ; $5971: $84
	nop                                              ; $5972: $00
	add  h                                           ; $5973: $84
	ld   bc, $0380                                   ; $5974: $01 $80 $03
	add  b                                           ; $5977: $80
	ld   [bc], a                                     ; $5978: $02
	add  b                                           ; $5979: $80
	nop                                              ; $597a: $00
	add  b                                           ; $597b: $80
	ld   c, b                                        ; $597c: $48
	add  b                                           ; $597d: $80
	ld   a, b                                        ; $597e: $78
	add  b                                           ; $597f: $80
	ld   [hl], b                                     ; $5980: $70
	add  b                                           ; $5981: $80
	ldh  a, [$80]                                    ; $5982: $f0 $80
	ld   [hl], b                                     ; $5984: $70
	add  d                                           ; $5985: $82
	ld   a, b                                        ; $5986: $78
	add  b                                           ; $5987: $80
	jr   nz, jr_088_590a                             ; $5988: $20 $80

	adc  e                                           ; $598a: $8b
	add  b                                           ; $598b: $80
	ei                                               ; $598c: $fb
	add  b                                           ; $598d: $80
	rst  $20                                         ; $598e: $e7
	add  b                                           ; $598f: $80
	rst  $30                                         ; $5990: $f7
	add  b                                           ; $5991: $80
	rst  $20                                         ; $5992: $e7
	add  b                                           ; $5993: $80
	rst  $28                                         ; $5994: $ef
	add  b                                           ; $5995: $80
	jr   z, jr_088_5918                              ; $5996: $28 $80

	ld   [bc], a                                     ; $5998: $02
	add  d                                           ; $5999: $82
	rrca                                             ; $599a: $0f
	add  h                                           ; $599b: $84
	rlca                                             ; $599c: $07
	add  b                                           ; $599d: $80
	rrca                                             ; $599e: $0f
	add  b                                           ; $599f: $80
	ld   [$8280], sp                                 ; $59a0: $08 $80 $82
	add  d                                           ; $59a3: $82
	rst  $28                                         ; $59a4: $ef
	adc  b                                           ; $59a5: $88
	add  b                                           ; $59a6: $80
	add  b                                           ; $59a7: $80
	nop                                              ; $59a8: $00
	adc  h                                           ; $59a9: $8c
	add  b                                           ; $59aa: $80
	add  b                                           ; $59ab: $80
	nop                                              ; $59ac: $00
	add  d                                           ; $59ad: $82
	add  b                                           ; $59ae: $80
	adc  b                                           ; $59af: $88
	ld   bc, $0094                                   ; $59b0: $01 $94 $00
	add  h                                           ; $59b3: $84
	ret  nz                                          ; $59b4: $c0

	add  d                                           ; $59b5: $82
	ldh  [$84], a                                    ; $59b6: $e0 $84
	nop                                              ; $59b8: $00
	add  b                                           ; $59b9: $80
	rrca                                             ; $59ba: $0f
	add  h                                           ; $59bb: $84
	rlca                                             ; $59bc: $07
	add  b                                           ; $59bd: $80
	inc  c                                           ; $59be: $0c
	add  h                                           ; $59bf: $84
	nop                                              ; $59c0: $00
	add  b                                           ; $59c1: $80
	adc  b                                           ; $59c2: $88
	add  b                                           ; $59c3: $80
	ld   hl, sp-$80                                  ; $59c4: $f8 $80
	ld   h, b                                        ; $59c6: $60
	add  b                                           ; $59c7: $80
	ld   l, b                                        ; $59c8: $68
	add  b                                           ; $59c9: $80
	ld   c, a                                        ; $59ca: $4f
	add  b                                           ; $59cb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59cc: $cf
	add  b                                           ; $59cd: $80
	ldh  [$80], a                                    ; $59ce: $e0 $80
	ld   c, $80                                      ; $59d0: $0e $80
	xor  $80                                         ; $59d2: $ee $80
	and  $80                                         ; $59d4: $e6 $80
	or   $80                                         ; $59d6: $f6 $80
	and  $80                                         ; $59d8: $e6 $80
	ld   l, [hl]                                     ; $59da: $6e
	add  h                                           ; $59db: $84
	nop                                              ; $59dc: $00
	add  b                                           ; $59dd: $80
	ld   [hl], e                                     ; $59de: $73
	add  b                                           ; $59df: $80
	ld   [hl], a                                     ; $59e0: $77
	add  b                                           ; $59e1: $80
	inc  hl                                          ; $59e2: $23
	add  b                                           ; $59e3: $80
	adc  e                                           ; $59e4: $8b
	add  b                                           ; $59e5: $80
	cp   e                                           ; $59e6: $bb
	add  b                                           ; $59e7: $80
	jr   nc, jr_088_596a                             ; $59e8: $30 $80

	ldh  a, [$80]                                    ; $59ea: $f0 $80
	jr   nc, jr_088_596e                             ; $59ec: $30 $80

	cp   b                                           ; $59ee: $b8
	add  b                                           ; $59ef: $80
	adc  b                                           ; $59f0: $88
	adc  d                                           ; $59f1: $8a
	nop                                              ; $59f2: $00
	add  b                                           ; $59f3: $80
	rst  $20                                         ; $59f4: $e7
	add  b                                           ; $59f5: $80
	rst  $30                                         ; $59f6: $f7
	add  b                                           ; $59f7: $80
	rst  $20                                         ; $59f8: $e7
	add  d                                           ; $59f9: $82
	rst  $28                                         ; $59fa: $ef
	sub  h                                           ; $59fb: $94
	nop                                              ; $59fc: $00
	adc  b                                           ; $59fd: $88
	add  b                                           ; $59fe: $80
	rst  $38                                         ; $59ff: $ff
	nop                                              ; $5a00: $00
	rst  $38                                         ; $5a01: $ff
	nop                                              ; $5a02: $00
	rst  $38                                         ; $5a03: $ff
	nop                                              ; $5a04: $00
	rst  $38                                         ; $5a05: $ff
	nop                                              ; $5a06: $00
	rst  $38                                         ; $5a07: $ff
	nop                                              ; $5a08: $00
	adc  a                                           ; $5a09: $8f
	nop                                              ; $5a0a: $00
	db   $db                                         ; $5a0b: $db
	nop                                              ; $5a0c: $00
	sbc  b                                           ; $5a0d: $98
	nop                                              ; $5a0e: $00
	add  b                                           ; $5a0f: $80
	ld   bc, $0680                                   ; $5a10: $01 $80 $06
	add  b                                           ; $5a13: $80
	add  hl, de                                      ; $5a14: $19
	add  [hl]                                        ; $5a15: $86
	nop                                              ; $5a16: $00
	add  b                                           ; $5a17: $80
	ccf                                              ; $5a18: $3f
	add  b                                           ; $5a19: $80
	ret  nz                                          ; $5a1a: $c0

	inc  b                                           ; $5a1b: $04
	jr   nc, jr_088_5a9d                             ; $5a1c: $30 $7f

	adc  a                                           ; $5a1e: $8f
	rst  $38                                         ; $5a1f: $ff
	ccf                                              ; $5a20: $3f
	add  l                                           ; $5a21: $85
	nop                                              ; $5a22: $00
	add  b                                           ; $5a23: $80
	db   $fc                                         ; $5a24: $fc
	add  b                                           ; $5a25: $80
	inc  bc                                          ; $5a26: $03
	inc  b                                           ; $5a27: $04
	inc  e                                           ; $5a28: $1c
	rst  $38                                         ; $5a29: $ff
	db   $e4                                         ; $5a2a: $e4
	rst  $38                                         ; $5a2b: $ff
	ld   hl, sp-$79                                  ; $5a2c: $f8 $87
	nop                                              ; $5a2e: $00
	add  b                                           ; $5a2f: $80
	add  b                                           ; $5a30: $80
	inc  b                                           ; $5a31: $04
	ld   h, b                                        ; $5a32: $60
	ldh  [rAUD2LOW], a                               ; $5a33: $e0 $18
	ld   hl, sp+$60                                  ; $5a35: $f8 $60
	sub  c                                           ; $5a37: $91
	nop                                              ; $5a38: $00
	add  b                                           ; $5a39: $80
	ld   bc, $0200                                   ; $5a3a: $01 $00 $02
	add  c                                           ; $5a3d: $81
	inc  bc                                          ; $5a3e: $03
	nop                                              ; $5a3f: $00
	inc  b                                           ; $5a40: $04
	add  c                                           ; $5a41: $81
	rlca                                             ; $5a42: $07
	dec  hl                                          ; $5a43: $2b
	ld   [$660b], sp                                 ; $5a44: $08 $0b $66
	ld   h, a                                        ; $5a47: $67
	sbc  [hl]                                        ; $5a48: $9e
	rst  $38                                         ; $5a49: $ff
	ld   d, l                                        ; $5a4a: $55
	rst  $38                                         ; $5a4b: $ff
	db   $e3                                         ; $5a4c: $e3
	rst  $38                                         ; $5a4d: $ff
	call nc, $fbff                                   ; $5a4e: $d4 $ff $fb
	rst  $38                                         ; $5a51: $ff
	rst  $20                                         ; $5a52: $e7
	cp   $de                                         ; $5a53: $fe $de
	db   $fc                                         ; $5a55: $fc
	dec  sp                                          ; $5a56: $3b
	rst  $38                                         ; $5a57: $ff
	rlca                                             ; $5a58: $07
	rst  $38                                         ; $5a59: $ff
	ldh  [rIE], a                                    ; $5a5a: $e0 $ff
	rra                                              ; $5a5c: $1f
	rst  $38                                         ; $5a5d: $ff
	db   $fc                                         ; $5a5e: $fc
	rst  $30                                         ; $5a5f: $f7
	ld   hl, sp-$70                                  ; $5a60: $f8 $90
	adc  a                                           ; $5a62: $8f
	nop                                              ; $5a63: $00
	rla                                              ; $5a64: $17
	inc  bc                                          ; $5a65: $03
	ld   sp, hl                                      ; $5a66: $f9
	rst  $38                                         ; $5a67: $ff
	db   $fd                                         ; $5a68: $fd
	rst  $38                                         ; $5a69: $ff
	inc  c                                           ; $5a6a: $0c
	rst  $38                                         ; $5a6b: $ff
	pop  af                                          ; $5a6c: $f1
	add  hl, bc                                      ; $5a6d: $09
	adc  b                                           ; $5a6e: $88
	add  b                                           ; $5a6f: $80
	add  b                                           ; $5a70: $80
	ld   b, b                                        ; $5a71: $40
	inc  d                                           ; $5a72: $14
	sbc  l                                           ; $5a73: $9d
	adc  l                                           ; $5a74: $8d
	ld   [hl], d                                     ; $5a75: $72
	ldh  [c], a                                      ; $5a76: $e2
	sbc  c                                           ; $5a77: $99
	cp   $e3                                         ; $5a78: $fe $e3
	ei                                               ; $5a7a: $fb
	ld   [hl], l                                     ; $5a7b: $75
	db   $fd                                         ; $5a7c: $fd
	sub  b                                           ; $5a7d: $90
	cp   $6e                                         ; $5a7e: $fe $6e
	ld   a, a                                        ; $5a80: $7f

jr_088_5a81:
	inc  bc                                          ; $5a81: $03
	rra                                              ; $5a82: $1f
	push de                                          ; $5a83: $d5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a84: $cf
	cpl                                              ; $5a85: $2f
	daa                                              ; $5a86: $27
	ld   sp, hl                                      ; $5a87: $f9
	add  c                                           ; $5a88: $81
	nop                                              ; $5a89: $00
	add  b                                           ; $5a8a: $80
	add  b                                           ; $5a8b: $80
	add  b                                           ; $5a8c: $80
	ret  nz                                          ; $5a8d: $c0

	add  b                                           ; $5a8e: $80
	ld   b, b                                        ; $5a8f: $40
	add  d                                           ; $5a90: $82
	and  b                                           ; $5a91: $a0
	ld   [bc], a                                     ; $5a92: $02
	ld   d, b                                        ; $5a93: $50
	ret  nc                                          ; $5a94: $d0

	adc  d                                           ; $5a95: $8a
	add  c                                           ; $5a96: $81
	dec  bc                                          ; $5a97: $0b
	nop                                              ; $5a98: $00
	dec  d                                           ; $5a99: $15
	add  c                                           ; $5a9a: $81
	rla                                              ; $5a9b: $17
	nop                                              ; $5a9c: $00

jr_088_5a9d:
	ld   d, $81                                      ; $5a9d: $16 $81
	rla                                              ; $5a9f: $17
	nop                                              ; $5aa0: $00
	dec  d                                           ; $5aa1: $15
	add  c                                           ; $5aa2: $81
	rla                                              ; $5aa3: $17
	dec  b                                           ; $5aa4: $05
	ld   a, [hl]                                     ; $5aa5: $7e
	ld   hl, sp-$05                                  ; $5aa6: $f8 $fb
	ldh  a, [c]                                      ; $5aa8: $f2
	ld   a, l                                        ; $5aa9: $7d
	db   $ed                                         ; $5aaa: $ed
	add  c                                           ; $5aab: $81
	ld   [$ca00], a                                  ; $5aac: $ea $00 $ca
	add  b                                           ; $5aaf: $80
	push bc                                          ; $5ab0: $c5
	add  b                                           ; $5ab1: $80
	add  sp, -$80                                    ; $5ab2: $e8 $80
	and  $1b                                         ; $5ab4: $e6 $1b
	jr   nz, jr_088_5ade                             ; $5ab6: $20 $26

	sbc  $d0                                         ; $5ab8: $de $d0
	inc  l                                           ; $5aba: $2c
	jr   c, jr_088_5a81                              ; $5abb: $38 $c4

	ld   d, $e8                                      ; $5abd: $16 $e8
	ldh  a, [rTMA]                                   ; $5abf: $f0 $06
	ld   e, $02                                      ; $5ac1: $1e $02
	nop                                              ; $5ac3: $00
	call z, $04c8                                    ; $5ac4: $cc $c8 $04
	inc  c                                           ; $5ac7: $0c
	ld   [hl-], a                                    ; $5ac8: $32
	cp   [hl]                                        ; $5ac9: $be
	adc  l                                           ; $5aca: $8d
	inc  bc                                          ; $5acb: $03
	ld   b, $05                                      ; $5acc: $06 $05
	ld   e, a                                        ; $5ace: $5f
	ld   c, $f0                                      ; $5acf: $0e $f0
	nop                                              ; $5ad1: $00
	add  b                                           ; $5ad2: $80
	inc  bc                                          ; $5ad3: $03
	ld   [de], a                                     ; $5ad4: $12
	inc  d                                           ; $5ad5: $14
	add  c                                           ; $5ad6: $81
	ld   [hl], $03                                   ; $5ad7: $36 $03
	ld   [hl], c                                     ; $5ad9: $71
	ld   [hl], e                                     ; $5ada: $73
	adc  d                                           ; $5adb: $8a
	adc  e                                           ; $5adc: $8b
	ld   l, e                                        ; $5add: $6b

jr_088_5ade:
	jp   hl                                          ; $5ade: $e9


	add  c                                           ; $5adf: $81
	ld   bc, $91f1                                   ; $5ae0: $01 $f1 $91
	ld   l, c                                        ; $5ae3: $69
	add  hl, bc                                      ; $5ae4: $09
	ld   [hl], c                                     ; $5ae5: $71
	pop  bc                                          ; $5ae6: $c1
	ld   e, $81                                      ; $5ae7: $1e $81
	ret  nc                                          ; $5ae9: $d0

	nop                                              ; $5aea: $00
	xor  b                                           ; $5aeb: $a8
	add  e                                           ; $5aec: $83
	ld   hl, sp+$00                                  ; $5aed: $f8 $00
	ld   a, b                                        ; $5aef: $78
	add  e                                           ; $5af0: $83
	ld   hl, sp+$01                                  ; $5af1: $f8 $01
	ld   b, a                                        ; $5af3: $47
	rla                                              ; $5af4: $17
	add  d                                           ; $5af5: $82
	dec  bc                                          ; $5af6: $0b
	add  b                                           ; $5af7: $80
	dec  c                                           ; $5af8: $0d
	add  b                                           ; $5af9: $80
	dec  b                                           ; $5afa: $05
	add  b                                           ; $5afb: $80
	ld   b, $05                                      ; $5afc: $06 $05
	dec  b                                           ; $5afe: $05
	rlca                                             ; $5aff: $07
	nop                                              ; $5b00: $00
	inc  bc                                          ; $5b01: $03
	ld   e, a                                        ; $5b02: $5f

jr_088_5b03:
	pop  hl                                          ; $5b03: $e1
	add  b                                           ; $5b04: $80
	xor  $80                                         ; $5b05: $ee $80
	ldh  [$0b], a                                    ; $5b07: $e0 $0b
	jr   jr_088_5b03                                 ; $5b09: $18 $f8

	add  a                                           ; $5b0b: $87
	rst  $30                                         ; $5b0c: $f7
	ret  nc                                          ; $5b0d: $d0

	ld   hl, sp+$7a                                  ; $5b0e: $f8 $7a
	ld   a, [hl]                                     ; $5b10: $7e
	cp   l                                           ; $5b11: $bd
	cp   a                                           ; $5b12: $bf
	ld   h, [hl]                                     ; $5b13: $66
	sbc  b                                           ; $5b14: $98
	add  b                                           ; $5b15: $80
	dec  c                                           ; $5b16: $0d
	add  b                                           ; $5b17: $80
	add  b                                           ; $5b18: $80
	add  b                                           ; $5b19: $80
	inc  sp                                          ; $5b1a: $33
	add  b                                           ; $5b1b: $80
	sub  h                                           ; $5b1c: $94
	nop                                              ; $5b1d: $00
	dec  d                                           ; $5b1e: $15
	add  b                                           ; $5b1f: $80
	dec  b                                           ; $5b20: $05
	jr   jr_088_5b23                                 ; $5b21: $18 $00

jr_088_5b23:
	ldh  a, [$c0]                                    ; $5b23: $f0 $c0
	inc  l                                           ; $5b25: $2c
	rlca                                             ; $5b26: $07
	ld   b, h                                        ; $5b27: $44
	ld   b, $5e                                      ; $5b28: $06 $5e
	add  hl, bc                                      ; $5b2a: $09
	rra                                              ; $5b2b: $1f
	nop                                              ; $5b2c: $00
	dec  l                                           ; $5b2d: $2d
	ld   a, [bc]                                     ; $5b2e: $0a
	ld   hl, $5e00                                   ; $5b2f: $21 $00 $5e
	ld   c, h                                        ; $5b32: $4c

jr_088_5b33:
	ld   d, a                                        ; $5b33: $57
	rlca                                             ; $5b34: $07
	ret  z                                           ; $5b35: $c8

	adc  c                                           ; $5b36: $89
	dec  [hl]                                        ; $5b37: $35
	rst  $20                                         ; $5b38: $e7
	dec  de                                          ; $5b39: $1b
	res  0, b                                        ; $5b3a: $cb $80
	add  a                                           ; $5b3c: $87
	ld   a, [bc]                                     ; $5b3d: $0a
	inc  hl                                          ; $5b3e: $23
	dec  sp                                          ; $5b3f: $3b
	dec  de                                          ; $5b40: $1b
	ccf                                              ; $5b41: $3f
	cp   [hl]                                        ; $5b42: $be
	sbc  l                                           ; $5b43: $9d
	ld   e, $7f                                      ; $5b44: $1e $7f
	ld   a, [bc]                                     ; $5b46: $0a
	ld   hl, sp-$60                                  ; $5b47: $f8 $a0
	add  c                                           ; $5b49: $81
	ldh  a, [rSB]                                    ; $5b4a: $f0 $01
	sub  b                                           ; $5b4c: $90
	ldh  a, [$80]                                    ; $5b4d: $f0 $80
	ldh  [$03], a                                    ; $5b4f: $e0 $03
	jr   nz, jr_088_5b33                             ; $5b51: $20 $e0

	ld   h, b                                        ; $5b53: $60
	ldh  [$80], a                                    ; $5b54: $e0 $80
	ret  nz                                          ; $5b56: $c0

	ld   [bc], a                                     ; $5b57: $02
	ld   [bc], a                                     ; $5b58: $02
	inc  bc                                          ; $5b59: $03
	nop                                              ; $5b5a: $00
	add  c                                           ; $5b5b: $81
	ld   bc, $0088                                   ; $5b5c: $01 $88 $00
	rra                                              ; $5b5f: $1f
	ld   c, a                                        ; $5b60: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b61: $cf
	or   e                                           ; $5b62: $b3
	di                                               ; $5b63: $f3
	ld   c, h                                        ; $5b64: $4c
	db   $fc                                         ; $5b65: $fc
	or   e                                           ; $5b66: $b3
	rst  $38                                         ; $5b67: $ff
	call z, Call_088_71ff                            ; $5b68: $cc $ff $71
	ld   a, a                                        ; $5b6b: $7f
	ld   [hl], $3f                                   ; $5b6c: $36 $3f
	jr   @+$21                                       ; $5b6e: $18 $1f

	ld   [$c9d2], a                                  ; $5b70: $ea $d2 $c9
	pop  af                                          ; $5b73: $f1
	jr   nc, jr_088_5bb4                             ; $5b74: $30 $3e

	add  c                                           ; $5b76: $81
	ret  nz                                          ; $5b77: $c0

	ld   b, a                                        ; $5b78: $47
	rst  $38                                         ; $5b79: $ff
	ld   hl, sp-$01                                  ; $5b7a: $f8 $ff
	ccf                                              ; $5b7c: $3f
	rst  $38                                         ; $5b7d: $ff

jr_088_5b7e:
	ccf                                              ; $5b7e: $3f
	rst  $38                                         ; $5b7f: $ff
	add  b                                           ; $5b80: $80
	sub  b                                           ; $5b81: $90
	ld   [$e1e0], sp                                 ; $5b82: $08 $e0 $e1
	nop                                              ; $5b85: $00
	rrca                                             ; $5b86: $0f
	pop  af                                          ; $5b87: $f1
	rlca                                             ; $5b88: $07
	ld   hl, sp-$01                                  ; $5b89: $f8 $ff
	nop                                              ; $5b8b: $00
	add  c                                           ; $5b8c: $81
	rst  $38                                         ; $5b8d: $ff
	ld   [$fffc], sp                                 ; $5b8e: $08 $fc $ff
	rrca                                             ; $5b91: $0f
	ld   a, a                                        ; $5b92: $7f
	ld   b, e                                        ; $5b93: $43
	rst  $38                                         ; $5b94: $ff
	rrca                                             ; $5b95: $0f
	rst  $38                                         ; $5b96: $ff
	ccf                                              ; $5b97: $3f
	add  c                                           ; $5b98: $81
	rst  $38                                         ; $5b99: $ff
	inc  bc                                          ; $5b9a: $03
	ld   a, [hl]                                     ; $5b9b: $7e
	cp   $bc                                         ; $5b9c: $fe $bc
	db   $fc                                         ; $5b9e: $fc
	add  b                                           ; $5b9f: $80

jr_088_5ba0:
	ld   hl, sp+$01                                  ; $5ba0: $f8 $01
	nop                                              ; $5ba2: $00
	ret  nz                                          ; $5ba3: $c0

	add  d                                           ; $5ba4: $82
	add  b                                           ; $5ba5: $80
	sbc  b                                           ; $5ba6: $98
	nop                                              ; $5ba7: $00
	inc  bc                                          ; $5ba8: $03
	inc  c                                           ; $5ba9: $0c
	rrca                                             ; $5baa: $0f
	nop                                              ; $5bab: $00
	inc  bc                                          ; $5bac: $03
	adc  d                                           ; $5bad: $8a
	nop                                              ; $5bae: $00
	rlca                                             ; $5baf: $07
	rlca                                             ; $5bb0: $07
	rst  $38                                         ; $5bb1: $ff
	ld   hl, sp-$01                                  ; $5bb2: $f8 $ff

jr_088_5bb4:
	rra                                              ; $5bb4: $1f
	rst  $38                                         ; $5bb5: $ff
	nop                                              ; $5bb6: $00
	rra                                              ; $5bb7: $1f
	add  [hl]                                        ; $5bb8: $86
	nop                                              ; $5bb9: $00
	rlca                                             ; $5bba: $07
	db   $fc                                         ; $5bbb: $fc
	rst  $38                                         ; $5bbc: $ff
	ldh  [c], a                                      ; $5bbd: $e2
	rst  $38                                         ; $5bbe: $ff
	add  hl, de                                      ; $5bbf: $19
	rst  $38                                         ; $5bc0: $ff
	nop                                              ; $5bc1: $00
	ld   hl, sp-$7a                                  ; $5bc2: $f8 $86
	nop                                              ; $5bc4: $00
	inc  bc                                          ; $5bc5: $03
	ld   [hl], b                                     ; $5bc6: $70
	ldh  a, [rLCDC]                                  ; $5bc7: $f0 $40
	ret  nz                                          ; $5bc9: $c0

	or   c                                           ; $5bca: $b1
	nop                                              ; $5bcb: $00
	add  d                                           ; $5bcc: $82
	ld   bc, $0282                                   ; $5bcd: $01 $82 $02
	sub  d                                           ; $5bd0: $92
	nop                                              ; $5bd1: $00
	add  b                                           ; $5bd2: $80
	ld   h, b                                        ; $5bd3: $60
	add  b                                           ; $5bd4: $80
	ret  nz                                          ; $5bd5: $c0

	add  b                                           ; $5bd6: $80
	add  b                                           ; $5bd7: $80
	sub  d                                           ; $5bd8: $92
	nop                                              ; $5bd9: $00
	add  b                                           ; $5bda: $80
	ld   b, b                                        ; $5bdb: $40
	adc  b                                           ; $5bdc: $88
	nop                                              ; $5bdd: $00
	ld   b, $03                                      ; $5bde: $06 $03
	rrca                                             ; $5be0: $0f
	inc  c                                           ; $5be1: $0c
	inc  sp                                          ; $5be2: $33
	inc  de                                          ; $5be3: $13
	inc  h                                           ; $5be4: $24
	inc  b                                           ; $5be5: $04
	adc  e                                           ; $5be6: $8b
	nop                                              ; $5be7: $00
	add  b                                           ; $5be8: $80
	inc  bc                                          ; $5be9: $03
	adc  b                                           ; $5bea: $88
	nop                                              ; $5beb: $00
	add  b                                           ; $5bec: $80
	add  b                                           ; $5bed: $80
	inc  bc                                          ; $5bee: $03
	ld   b, b                                        ; $5bef: $40
	ld   d, b                                        ; $5bf0: $50
	sbc  l                                           ; $5bf1: $9d
	adc  l                                           ; $5bf2: $8d
	add  b                                           ; $5bf3: $80
	ld   h, d                                        ; $5bf4: $62
	adc  d                                           ; $5bf5: $8a
	nop                                              ; $5bf6: $00
	add  b                                           ; $5bf7: $80
	add  b                                           ; $5bf8: $80
	add  b                                           ; $5bf9: $80
	ld   h, b                                        ; $5bfa: $60
	add  b                                           ; $5bfb: $80
	jr   jr_088_5b7e                                 ; $5bfc: $18 $80

	nop                                              ; $5bfe: $00
	add  b                                           ; $5bff: $80
	ld   [$0680], sp                                 ; $5c00: $08 $80 $06
	add  b                                           ; $5c03: $80
	rlca                                             ; $5c04: $07
	add  b                                           ; $5c05: $80
	inc  bc                                          ; $5c06: $03
	add  b                                           ; $5c07: $80
	pop  bc                                          ; $5c08: $c1
	add  b                                           ; $5c09: $80
	ld   hl, $009c                                   ; $5c0a: $21 $9c $00
	add  b                                           ; $5c0d: $80
	add  b                                           ; $5c0e: $80
	sbc  h                                           ; $5c0f: $9c

jr_088_5c10:
	nop                                              ; $5c10: $00
	add  b                                           ; $5c11: $80
	ld   bc, $0080                                   ; $5c12: $01 $80 $00
	add  b                                           ; $5c15: $80
	ld   [bc], a                                     ; $5c16: $02
	add  b                                           ; $5c17: $80
	dec  c                                           ; $5c18: $0d
	add  d                                           ; $5c19: $82
	ld   a, [bc]                                     ; $5c1a: $0a
	add  b                                           ; $5c1b: $80
	dec  b                                           ; $5c1c: $05
	add  b                                           ; $5c1d: $80
	jr   z, jr_088_5ba0                              ; $5c1e: $28 $80

	ld   h, $03                                      ; $5c20: $26 $03

jr_088_5c22:
	and  c                                           ; $5c22: $a1
	and  b                                           ; $5c23: $a0
	xor  [hl]                                        ; $5c24: $ae
	xor  a                                           ; $5c25: $af
	add  b                                           ; $5c26: $80
	and  b                                           ; $5c27: $a0
	add  b                                           ; $5c28: $80
	ld   e, b                                        ; $5c29: $58
	add  b                                           ; $5c2a: $80
	daa                                              ; $5c2b: $27
	add  b                                           ; $5c2c: $80
	nop                                              ; $5c2d: $00
	add  b                                           ; $5c2e: $80
	ld   [bc], a                                     ; $5c2f: $02
	rla                                              ; $5c30: $17
	ld   bc, $2000                                   ; $5c31: $01 $00 $20
	add  hl, hl                                      ; $5c34: $29
	jr   jr_088_5c4e                                 ; $5c35: $18 $17

	inc  h                                           ; $5c37: $24
	dec  hl                                          ; $5c38: $2b
	jr   jr_088_5c52                                 ; $5c39: $18 $17

	and  $e0                                         ; $5c3b: $e6 $e0
	db   $10                                         ; $5c3d: $10
	rra                                              ; $5c3e: $1f
	inc  c                                           ; $5c3f: $0c
	inc  bc                                          ; $5c40: $03
	ret  nz                                          ; $5c41: $c0

	and  a                                           ; $5c42: $a7
	sbc  b                                           ; $5c43: $98
	db   $fc                                         ; $5c44: $fc
	dec  c                                           ; $5c45: $0d
	ld   l, a                                        ; $5c46: $6f
	add  b                                           ; $5c47: $80
	add  sp, -$80                                    ; $5c48: $e8 $80
	inc  sp                                          ; $5c4a: $33
	ld   bc, $9c94                                   ; $5c4b: $01 $94 $9c

jr_088_5c4e:
	add  b                                           ; $5c4e: $80
	dec  b                                           ; $5c4f: $05
	add  b                                           ; $5c50: $80
	nop                                              ; $5c51: $00

jr_088_5c52:
	rra                                              ; $5c52: $1f
	ret  nz                                          ; $5c53: $c0

	ld   b, b                                        ; $5c54: $40
	inc  c                                           ; $5c55: $0c
	adc  h                                           ; $5c56: $8c
	ld   [hl-], a                                    ; $5c57: $32
	or   d                                           ; $5c58: $b2
	ld   bc, $0461                                   ; $5c59: $01 $61 $04
	db   $e4                                         ; $5c5c: $e4
	ld   c, $06                                      ; $5c5d: $0e $06
	nop                                              ; $5c5f: $00
	ld   [$3703], sp                                 ; $5c60: $08 $03 $37
	or   h                                           ; $5c63: $b4
	add  sp, $09                                     ; $5c64: $e8 $09
	add  hl, hl                                      ; $5c66: $29
	ld   c, d                                        ; $5c67: $4a
	db   $10                                         ; $5c68: $10
	ld   [de], a                                     ; $5c69: $12
	db   $e4                                         ; $5c6a: $e4
	inc  b                                           ; $5c6b: $04
	pop  de                                          ; $5c6c: $d1
	add  hl, hl                                      ; $5c6d: $29
	ld   a, [hl-]                                    ; $5c6e: $3a
	ld   [bc], a                                     ; $5c6f: $02

jr_088_5c70:
	jr   nc, jr_088_5cce                             ; $5c70: $30 $5c

	ld   c, h                                        ; $5c72: $4c
	add  b                                           ; $5c73: $80
	rlca                                             ; $5c74: $07
	add  b                                           ; $5c75: $80
	inc  bc                                          ; $5c76: $03
	add  b                                           ; $5c77: $80
	ld   [hl], c                                     ; $5c78: $71
	add  b                                           ; $5c79: $80
	adc  b                                           ; $5c7a: $88
	add  b                                           ; $5c7b: $80
	ld   l, b                                        ; $5c7c: $68
	add  b                                           ; $5c7d: $80
	nop                                              ; $5c7e: $00
	add  b                                           ; $5c7f: $80
	sub  b                                           ; $5c80: $90
	add  b                                           ; $5c81: $80
	ld   [$4080], sp                                 ; $5c82: $08 $80 $40
	add  b                                           ; $5c85: $80
	adc  b                                           ; $5c86: $88
	add  b                                           ; $5c87: $80
	inc  h                                           ; $5c88: $24
	add  b                                           ; $5c89: $80
	ret  z                                           ; $5c8a: $c8

	add  b                                           ; $5c8b: $80
	add  h                                           ; $5c8c: $84
	add  b                                           ; $5c8d: $80
	jr   nz, jr_088_5c10                             ; $5c8e: $20 $80

	nop                                              ; $5c90: $00
	add  b                                           ; $5c91: $80
	add  c                                           ; $5c92: $81
	add  b                                           ; $5c93: $80
	ld   [bc], a                                     ; $5c94: $02
	add  d                                           ; $5c95: $82
	add  b                                           ; $5c96: $80
	add  h                                           ; $5c97: $84
	ret  nc                                          ; $5c98: $d0

	add  h                                           ; $5c99: $84
	ld   d, b                                        ; $5c9a: $50
	add  b                                           ; $5c9b: $80
	ld   [hl], b                                     ; $5c9c: $70
	add  d                                           ; $5c9d: $82
	jr   nz, jr_088_5c22                             ; $5c9e: $20 $82

	ld   b, b                                        ; $5ca0: $40
	add  b                                           ; $5ca1: $80
	add  b                                           ; $5ca2: $80
	add  d                                           ; $5ca3: $82
	nop                                              ; $5ca4: $00
	add  b                                           ; $5ca5: $80
	ld   bc, $009c                                   ; $5ca6: $01 $9c $00
	add  b                                           ; $5ca9: $80
	add  b                                           ; $5caa: $80
	add  b                                           ; $5cab: $80
	ret  nz                                          ; $5cac: $c0

	add  b                                           ; $5cad: $80
	ld   [hl], b                                     ; $5cae: $70
	add  b                                           ; $5caf: $80
	inc  a                                           ; $5cb0: $3c
	add  b                                           ; $5cb1: $80
	rrca                                             ; $5cb2: $0f
	add  b                                           ; $5cb3: $80
	ld   bc, $0880                                   ; $5cb4: $01 $80 $08
	add  b                                           ; $5cb7: $80
	rrca                                             ; $5cb8: $0f
	add  b                                           ; $5cb9: $80
	inc  bc                                          ; $5cba: $03
	adc  h                                           ; $5cbb: $8c
	nop                                              ; $5cbc: $00
	add  b                                           ; $5cbd: $80
	ld   [de], a                                     ; $5cbe: $12
	add  b                                           ; $5cbf: $80
	ld   bc, $0080                                   ; $5cc0: $01 $80 $00
	add  b                                           ; $5cc3: $80
	ld   b, b                                        ; $5cc4: $40
	add  b                                           ; $5cc5: $80
	ld   hl, sp-$80                                  ; $5cc6: $f8 $80
	rst  $38                                         ; $5cc8: $ff
	add  b                                           ; $5cc9: $80
	ccf                                              ; $5cca: $3f
	add  b                                           ; $5ccb: $80
	rst  $38                                         ; $5ccc: $ff
	add  b                                           ; $5ccd: $80

jr_088_5cce:
	ld   hl, sp-$80                                  ; $5cce: $f8 $80
	rst  $38                                         ; $5cd0: $ff
	add  b                                           ; $5cd1: $80
	rra                                              ; $5cd2: $1f
	adc  b                                           ; $5cd3: $88
	nop                                              ; $5cd4: $00
	add  b                                           ; $5cd5: $80
	sub  b                                           ; $5cd6: $90
	add  b                                           ; $5cd7: $80
	ldh  [$80], a                                    ; $5cd8: $e0 $80
	ld   bc, $0780                                   ; $5cda: $01 $80 $07
	add  b                                           ; $5cdd: $80
	nop                                              ; $5cde: $00
	add  d                                           ; $5cdf: $82
	rst  $38                                         ; $5ce0: $ff
	add  b                                           ; $5ce1: $80
	db   $fc                                         ; $5ce2: $fc
	add  b                                           ; $5ce3: $80
	inc  bc                                          ; $5ce4: $03
	add  b                                           ; $5ce5: $80
	ld   e, $80                                      ; $5ce6: $1e $80
	ld   hl, sp-$78                                  ; $5ce8: $f8 $88
	nop                                              ; $5cea: $00
	add  b                                           ; $5ceb: $80
	inc  c                                           ; $5cec: $0c
	add  b                                           ; $5ced: $80
	jr   nc, jr_088_5c70                             ; $5cee: $30 $80

	ret  nz                                          ; $5cf0: $c0

	add  d                                           ; $5cf1: $82
	nop                                              ; $5cf2: $00
	add  b                                           ; $5cf3: $80
	add  b                                           ; $5cf4: $80
	add  d                                           ; $5cf5: $82
	ret  nz                                          ; $5cf6: $c0

	add  b                                           ; $5cf7: $80
	add  b                                           ; $5cf8: $80
	rst  $38                                         ; $5cf9: $ff
	nop                                              ; $5cfa: $00
	rst  $38                                         ; $5cfb: $ff
	nop                                              ; $5cfc: $00
	rst  $38                                         ; $5cfd: $ff
	nop                                              ; $5cfe: $00
	rst  $38                                         ; $5cff: $ff
	nop                                              ; $5d00: $00
	rst  $38                                         ; $5d01: $ff
	nop                                              ; $5d02: $00
	and  [hl]                                        ; $5d03: $a6
	nop                                              ; $5d04: $00
	inc  b                                           ; $5d05: $04
	ld   bc, $0080                                   ; $5d06: $01 $80 $00
	ld   [bc], a                                     ; $5d09: $02
	inc  bc                                          ; $5d0a: $03
	nop                                              ; $5d0b: $00
	ld   bc, $0089                                   ; $5d0c: $01 $89 $00
	inc  b                                           ; $5d0f: $04
	ld   [bc], a                                     ; $5d10: $02
	nop                                              ; $5d11: $00
	rst  $38                                         ; $5d12: $ff
	nop                                              ; $5d13: $00
	rst  $38                                         ; $5d14: $ff
	adc  e                                           ; $5d15: $8b
	nop                                              ; $5d16: $00
	ld   [bc], a                                     ; $5d17: $02
	rst  $38                                         ; $5d18: $ff
	nop                                              ; $5d19: $00
	rst  $38                                         ; $5d1a: $ff
	adc  e                                           ; $5d1b: $8b
	nop                                              ; $5d1c: $00
	ld   [bc], a                                     ; $5d1d: $02
	rst  $38                                         ; $5d1e: $ff
	nop                                              ; $5d1f: $00
	rst  $38                                         ; $5d20: $ff
	adc  e                                           ; $5d21: $8b
	nop                                              ; $5d22: $00
	ld   [bc], a                                     ; $5d23: $02
	rst  $38                                         ; $5d24: $ff
	nop                                              ; $5d25: $00
	rst  $38                                         ; $5d26: $ff
	adc  e                                           ; $5d27: $8b

jr_088_5d28:
	nop                                              ; $5d28: $00
	ld   [bc], a                                     ; $5d29: $02
	ret  nz                                          ; $5d2a: $c0

	nop                                              ; $5d2b: $00
	add  b                                           ; $5d2c: $80
	adc  c                                           ; $5d2d: $89
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	ld   b, d                                        ; $5d30: $42
	adc  l                                           ; $5d31: $8d
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	ld   [bc], a                                     ; $5d34: $02
	add  h                                           ; $5d35: $84
	nop                                              ; $5d36: $00
	add  hl, bc                                      ; $5d37: $09
	ret  nz                                          ; $5d38: $c0

	ld   b, b                                        ; $5d39: $40
	call z, $df40                                    ; $5d3a: $cc $40 $df
	inc  c                                           ; $5d3d: $0c
	rst  $38                                         ; $5d3e: $ff
	add  e                                           ; $5d3f: $83
	rst  $38                                         ; $5d40: $ff
	ld   e, h                                        ; $5d41: $5c
	adc  c                                           ; $5d42: $89
	nop                                              ; $5d43: $00
	inc  b                                           ; $5d44: $04
	dec  e                                           ; $5d45: $1d
	sbc  l                                           ; $5d46: $9d
	and  a                                           ; $5d47: $a7
	rst  $20                                         ; $5d48: $e7
	ret  nz                                          ; $5d49: $c0

	adc  c                                           ; $5d4a: $89
	nop                                              ; $5d4b: $00
	inc  b                                           ; $5d4c: $04
	add  b                                           ; $5d4d: $80
	sbc  a                                           ; $5d4e: $9f
	adc  a                                           ; $5d4f: $8f
	or   c                                           ; $5d50: $b1
	ld   hl, $0086                                   ; $5d51: $21 $86 $00

jr_088_5d54:
	rlca                                             ; $5d54: $07
	ld   h, b                                        ; $5d55: $60
	jr   nz, jr_088_5d28                             ; $5d56: $20 $d0

	ld   b, b                                        ; $5d58: $40
	ret  c                                           ; $5d59: $d8

	jr   jr_088_5d54                                 ; $5d5a: $18 $f8

	xor  b                                           ; $5d5c: $a8
	adc  l                                           ; $5d5d: $8d
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	ld   b, d                                        ; $5d60: $42
	adc  l                                           ; $5d61: $8d
	nop                                              ; $5d62: $00
	ld   b, $1e                                      ; $5d63: $06 $1e
	rst  $38                                         ; $5d65: $ff
	dec  sp                                          ; $5d66: $3b
	rst  $38                                         ; $5d67: $ff
	and  a                                           ; $5d68: $a7
	rst  $38                                         ; $5d69: $ff
	ld   a, a                                        ; $5d6a: $7f
	add  b                                           ; $5d6b: $80
	cp   $80                                         ; $5d6c: $fe $80
	ldh  a, [$80]                                    ; $5d6e: $f0 $80
	ldh  [$80], a                                    ; $5d70: $e0 $80
	ret  nz                                          ; $5d72: $c0

	ld   [de], a                                     ; $5d73: $12
	add  b                                           ; $5d74: $80
	rst  JumpTable                                         ; $5d75: $df
	rst  $38                                         ; $5d76: $ff
	sbc  c                                           ; $5d77: $99
	ld   sp, hl                                      ; $5d78: $f9
	ldh  a, [$f7]                                    ; $5d79: $f0 $f7
	rst  $20                                         ; $5d7b: $e7
	add  hl, sp                                      ; $5d7c: $39
	ld   [$3f33], sp                                 ; $5d7d: $08 $33 $3f
	rra                                              ; $5d80: $1f
	ld   a, [de]                                     ; $5d81: $1a
	rra                                              ; $5d82: $1f
	inc  c                                           ; $5d83: $0c
	rrca                                             ; $5d84: $0f
	sbc  a                                           ; $5d85: $9f
	cp   e                                           ; $5d86: $bb
	add  b                                           ; $5d87: $80
	ldh  a, [$09]                                    ; $5d88: $f0 $09
	and  e                                           ; $5d8a: $a3
	ei                                               ; $5d8b: $fb
	ld   a, b                                        ; $5d8c: $78
	add  e                                           ; $5d8d: $83

jr_088_5d8e:
	ld   h, b                                        ; $5d8e: $60
	rst  $38                                         ; $5d8f: $ff
	dec  c                                           ; $5d90: $0d
	pop  af                                          ; $5d91: $f1
	ld   hl, $80c1                                   ; $5d92: $21 $c1 $80
	ldh  [c], a                                      ; $5d95: $e2
	ld   a, [bc]                                     ; $5d96: $0a
	ldh  a, [rIE]                                    ; $5d97: $f0 $ff
	ld   hl, sp-$01                                  ; $5d99: $f8 $ff
	ld   [hl], a                                     ; $5d9b: $77
	rst  $38                                         ; $5d9c: $ff
	ld   c, a                                        ; $5d9d: $4f
	rst  $38                                         ; $5d9e: $ff
	or   a                                           ; $5d9f: $b7
	rst  $38                                         ; $5da0: $ff
	ld   a, l                                        ; $5da1: $7d
	add  b                                           ; $5da2: $80
	rra                                              ; $5da3: $1f
	nop                                              ; $5da4: $00
	rlca                                             ; $5da5: $07
	add  b                                           ; $5da6: $80
	ld   [bc], a                                     ; $5da7: $02
	nop                                              ; $5da8: $00
	ld   b, d                                        ; $5da9: $42
	adc  l                                           ; $5daa: $8d
	nop                                              ; $5dab: $00
	nop                                              ; $5dac: $00
	ld   b, d                                        ; $5dad: $42
	adc  l                                           ; $5dae: $8d
	nop                                              ; $5daf: $00
	nop                                              ; $5db0: $00
	ld   [bc], a                                     ; $5db1: $02
	add  b                                           ; $5db2: $80
	add  b                                           ; $5db3: $80
	add  b                                           ; $5db4: $80
	ret  nz                                          ; $5db5: $c0

	add  d                                           ; $5db6: $82
	nop                                              ; $5db7: $00
	add  l                                           ; $5db8: $85
	add  b                                           ; $5db9: $80
	ld   bc, $0f87                                   ; $5dba: $01 $87 $0f
	add  d                                           ; $5dbd: $82
	ld   c, $00                                      ; $5dbe: $0e $00
	inc  c                                           ; $5dc0: $0c
	add  c                                           ; $5dc1: $81
	inc  b                                           ; $5dc2: $04
	add  b                                           ; $5dc3: $80
	ld   [bc], a                                     ; $5dc4: $02
	add  c                                           ; $5dc5: $81
	nop                                              ; $5dc6: $00
	ld   [bc], a                                     ; $5dc7: $02
	ld   e, $1c                                      ; $5dc8: $1e $1c
	ld   [bc], a                                     ; $5dca: $02
	adc  l                                           ; $5dcb: $8d
	nop                                              ; $5dcc: $00
	nop                                              ; $5dcd: $00
	ld   [bc], a                                     ; $5dce: $02
	add  b                                           ; $5dcf: $80
	dec  bc                                          ; $5dd0: $0b
	add  d                                           ; $5dd1: $82
	rrca                                             ; $5dd2: $0f
	nop                                              ; $5dd3: $00
	ld   [$0e81], sp                                 ; $5dd4: $08 $81 $0e
	add  b                                           ; $5dd7: $80
	inc  e                                           ; $5dd8: $1c
	ld   [bc], a                                     ; $5dd9: $02
	inc  [hl]                                        ; $5dda: $34
	jr   c, jr_088_5e25                              ; $5ddb: $38 $48

	adc  l                                           ; $5ddd: $8d
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	ld   b, d                                        ; $5de0: $42
	adc  l                                           ; $5de1: $8d
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	ld   [bc], a                                     ; $5de4: $02
	add  d                                           ; $5de5: $82
	ret  nz                                          ; $5de6: $c0

	add  b                                           ; $5de7: $80
	ldh  [$80], a                                    ; $5de8: $e0 $80
	db   $10                                         ; $5dea: $10
	add  b                                           ; $5deb: $80
	ld   e, [hl]                                     ; $5dec: $5e
	add  b                                           ; $5ded: $80
	add  a                                           ; $5dee: $87
	add  b                                           ; $5def: $80
	ld   d, b                                        ; $5df0: $50
	add  b                                           ; $5df1: $80
	nop                                              ; $5df2: $00
	inc  b                                           ; $5df3: $04
	ld   a, [hl]                                     ; $5df4: $7e
	inc  a                                           ; $5df5: $3c
	ld   a, [hl]                                     ; $5df6: $7e
	ld   [bc], a                                     ; $5df7: $02
	ld   a, $80                                      ; $5df8: $3e $80
	cpl                                              ; $5dfa: $2f
	add  b                                           ; $5dfb: $80
	inc  b                                           ; $5dfc: $04
	nop                                              ; $5dfd: $00

jr_088_5dfe:
	nop                                              ; $5dfe: $00
	add  b                                           ; $5dff: $80
	add  b                                           ; $5e00: $80
	add  b                                           ; $5e01: $80
	ld   h, b                                        ; $5e02: $60
	add  b                                           ; $5e03: $80
	jr   @-$7b                                       ; $5e04: $18 $83

	nop                                              ; $5e06: $00
	add  b                                           ; $5e07: $80
	ret  nz                                          ; $5e08: $c0

	add  [hl]                                        ; $5e09: $86
	nop                                              ; $5e0a: $00
	add  d                                           ; $5e0b: $82
	jr   nz, jr_088_5d8e                             ; $5e0c: $20 $80

	ret  nz                                          ; $5e0e: $c0

	adc  b                                           ; $5e0f: $88
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	ld   b, b                                        ; $5e12: $40
	adc  l                                           ; $5e13: $8d
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	ld   b, d                                        ; $5e16: $42
	adc  c                                           ; $5e17: $89
	nop                                              ; $5e18: $00
	ld   [bc], a                                     ; $5e19: $02
	ld   bc, $0300                                   ; $5e1a: $01 $00 $03
	adc  e                                           ; $5e1d: $8b
	nop                                              ; $5e1e: $00
	ld   [bc], a                                     ; $5e1f: $02
	rst  $38                                         ; $5e20: $ff
	nop                                              ; $5e21: $00
	rst  $38                                         ; $5e22: $ff
	add  b                                           ; $5e23: $80
	nop                                              ; $5e24: $00

jr_088_5e25:
	add  b                                           ; $5e25: $80
	inc  c                                           ; $5e26: $0c
	add  b                                           ; $5e27: $80
	ld   b, $85                                      ; $5e28: $06 $85
	nop                                              ; $5e2a: $00
	ld   [bc], a                                     ; $5e2b: $02

jr_088_5e2c:
	rst  $38                                         ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	rst  $38                                         ; $5e2e: $ff
	add  [hl]                                        ; $5e2f: $86
	nop                                              ; $5e30: $00
	add  b                                           ; $5e31: $80
	inc  bc                                          ; $5e32: $03
	add  b                                           ; $5e33: $80
	rrca                                             ; $5e34: $0f
	inc  bc                                          ; $5e35: $03
	nop                                              ; $5e36: $00
	rst  $38                                         ; $5e37: $ff
	nop                                              ; $5e38: $00
	rst  $38                                         ; $5e39: $ff
	add  h                                           ; $5e3a: $84
	nop                                              ; $5e3b: $00
	add  b                                           ; $5e3c: $80
	add  b                                           ; $5e3d: $80
	add  d                                           ; $5e3e: $82
	ret  nz                                          ; $5e3f: $c0

	dec  b                                           ; $5e40: $05
	nop                                              ; $5e41: $00
	rst  $38                                         ; $5e42: $ff
	nop                                              ; $5e43: $00
	rst  $38                                         ; $5e44: $ff
	nop                                              ; $5e45: $00
	ld   b, b                                        ; $5e46: $40
	adc  c                                           ; $5e47: $89
	nop                                              ; $5e48: $00
	ld   [bc], a                                     ; $5e49: $02
	add  b                                           ; $5e4a: $80
	nop                                              ; $5e4b: $00
	ret  nz                                          ; $5e4c: $c0

	add  l                                           ; $5e4d: $85
	nop                                              ; $5e4e: $00
	add  d                                           ; $5e4f: $82
	add  b                                           ; $5e50: $80
	add  b                                           ; $5e51: $80
	ret  nz                                          ; $5e52: $c0

	ld   c, $e0                                      ; $5e53: $0e $e0
	db   $e4                                         ; $5e55: $e4
	ldh  [rIE], a                                    ; $5e56: $e0 $ff
	add  e                                           ; $5e58: $83
	cp   $1e                                         ; $5e59: $fe $1e
	rst  $38                                         ; $5e5b: $ff
	ld   [hl], a                                     ; $5e5c: $77

jr_088_5e5d:
	rst  $38                                         ; $5e5d: $ff
	ld   a, $3f                                      ; $5e5e: $3e $3f
	dec  l                                           ; $5e60: $2d
	inc  sp                                          ; $5e61: $33
	db   $10                                         ; $5e62: $10
	add  b                                           ; $5e63: $80
	jr   nz, jr_088_5dfe                             ; $5e64: $20 $98

	nop                                              ; $5e66: $00
	inc  bc                                          ; $5e67: $03
	ld   bc, $2700                                   ; $5e68: $01 $00 $27
	add  hl, sp                                      ; $5e6b: $39
	add  c                                           ; $5e6c: $81
	ccf                                              ; $5e6d: $3f
	nop                                              ; $5e6e: $00
	rra                                              ; $5e6f: $1f
	add  c                                           ; $5e70: $81
	ccf                                              ; $5e71: $3f
	add  b                                           ; $5e72: $80
	ld   e, $88                                      ; $5e73: $1e $88
	nop                                              ; $5e75: $00
	inc  b                                           ; $5e76: $04
	and  b                                           ; $5e77: $a0
	nop                                              ; $5e78: $00
	ld   b, b                                        ; $5e79: $40
	nop                                              ; $5e7a: $00
	db   $10                                         ; $5e7b: $10
	add  c                                           ; $5e7c: $81
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	ld   [$0081], sp                                 ; $5e7f: $08 $81 $00
	nop                                              ; $5e82: $00
	ld   hl, sp-$71                                  ; $5e83: $f8 $8f
	nop                                              ; $5e85: $00
	add  b                                           ; $5e86: $80
	ld   bc, $0780                                   ; $5e87: $01 $80 $07
	add  b                                           ; $5e8a: $80
	rrca                                             ; $5e8b: $0f
	ld   bc, $9f1f                                   ; $5e8c: $01 $1f $9f
	add  b                                           ; $5e8f: $80
	adc  a                                           ; $5e90: $8f
	add  b                                           ; $5e91: $80
	cp   a                                           ; $5e92: $bf
	add  d                                           ; $5e93: $82
	rst  $38                                         ; $5e94: $ff
	ld   bc, $62e2                                   ; $5e95: $01 $e2 $62
	add  b                                           ; $5e98: $80
	jr   jr_088_5e2c                                 ; $5e99: $18 $91

	nop                                              ; $5e9b: $00
	add  b                                           ; $5e9c: $80
	ld   bc, $3103                                   ; $5e9d: $01 $03 $31
	ld   [hl], c                                     ; $5ea0: $71
	ei                                               ; $5ea1: $fb
	ld   a, e                                        ; $5ea2: $7b
	add  b                                           ; $5ea3: $80
	ei                                               ; $5ea4: $fb
	ld   bc, $bcfc                                   ; $5ea5: $01 $fc $bc
	add  b                                           ; $5ea8: $80
	ld   hl, sp+$01                                  ; $5ea9: $f8 $01
	ldh  [$60], a                                    ; $5eab: $e0 $60
	and  e                                           ; $5ead: $a3
	nop                                              ; $5eae: $00
	add  [hl]                                        ; $5eaf: $86
	rst  $38                                         ; $5eb0: $ff
	add  hl, bc                                      ; $5eb1: $09
	adc  a                                           ; $5eb2: $8f
	rst  $38                                         ; $5eb3: $ff
	or   e                                           ; $5eb4: $b3
	cp   a                                           ; $5eb5: $bf
	cp   l                                           ; $5eb6: $bd
	cp   [hl]                                        ; $5eb7: $be
	or   b                                           ; $5eb8: $b0
	ldh  a, [$db]                                    ; $5eb9: $f0 $db
	sbc  e                                           ; $5ebb: $9b
	add  b                                           ; $5ebc: $80
	add  e                                           ; $5ebd: $83
	inc  b                                           ; $5ebe: $04
	or   e                                           ; $5ebf: $b3
	di                                               ; $5ec0: $f3
	rra                                              ; $5ec1: $1f
	ld   b, b                                        ; $5ec2: $40
	ld   h, b                                        ; $5ec3: $60
	add  d                                           ; $5ec4: $82
	ld   b, b                                        ; $5ec5: $40
	adc  b                                           ; $5ec6: $88
	nop                                              ; $5ec7: $00
	dec  b                                           ; $5ec8: $05
	ld   b, $03                                      ; $5ec9: $06 $03
	dec  e                                           ; $5ecb: $1d
	dec  d                                           ; $5ecc: $15
	db   $fd                                         ; $5ecd: $fd
	rst  $28                                         ; $5ece: $ef
	add  c                                           ; $5ecf: $81
	rst  $38                                         ; $5ed0: $ff
	ld   [bc], a                                     ; $5ed1: $02
	cp   $ff                                         ; $5ed2: $fe $ff
	xor  $80                                         ; $5ed4: $ee $80
	rst  $38                                         ; $5ed6: $ff
	inc  bc                                          ; $5ed7: $03
	cp   a                                           ; $5ed8: $bf
	or   a                                           ; $5ed9: $b7
	ccf                                              ; $5eda: $3f
	jr   c, jr_088_5e5d                              ; $5edb: $38 $80

	rrca                                             ; $5edd: $0f
	add  c                                           ; $5ede: $81
	rra                                              ; $5edf: $1f
	inc  b                                           ; $5ee0: $04
	dec  e                                           ; $5ee1: $1d
	ld   a, $3a                                      ; $5ee2: $3e $3a
	ld   a, $24                                      ; $5ee4: $3e $24
	add  c                                           ; $5ee6: $81
	ld   a, h                                        ; $5ee7: $7c
	nop                                              ; $5ee8: $00
	ld   e, h                                        ; $5ee9: $5c
	add  l                                           ; $5eea: $85
	db   $fc                                         ; $5eeb: $fc
	ld   [bc], a                                     ; $5eec: $02
	ret  c                                           ; $5eed: $d8

	ld   a, h                                        ; $5eee: $7c
	ld   h, h                                        ; $5eef: $64
	add  b                                           ; $5ef0: $80
	inc  e                                           ; $5ef1: $1c
	adc  e                                           ; $5ef2: $8b
	nop                                              ; $5ef3: $00
	add  [hl]                                        ; $5ef4: $86
	rst  $38                                         ; $5ef5: $ff
	dec  b                                           ; $5ef6: $05
	adc  a                                           ; $5ef7: $8f
	rst  $38                                         ; $5ef8: $ff
	ld   a, a                                        ; $5ef9: $7f
	rst  $38                                         ; $5efa: $ff
	rst  $30                                         ; $5efb: $f7
	rst  $38                                         ; $5efc: $ff
	add  b                                           ; $5efd: $80
	rst  JumpTable                                         ; $5efe: $df
	add  b                                           ; $5eff: $80
	rst  $28                                         ; $5f00: $ef
	ld   [$87e3], sp                                 ; $5f01: $08 $e3 $87
	sub  l                                           ; $5f04: $95

jr_088_5f05:
	rlca                                             ; $5f05: $07
	rrca                                             ; $5f06: $0f
	rlca                                             ; $5f07: $07
	dec  b                                           ; $5f08: $05
	inc  b                                           ; $5f09: $04
	rlca                                             ; $5f0a: $07
	add  a                                           ; $5f0b: $87
	nop                                              ; $5f0c: $00

jr_088_5f0d:
	ld   [bc], a                                     ; $5f0d: $02
	ld   h, b                                        ; $5f0e: $60
	ldh  [rSVBK], a                                  ; $5f0f: $e0 $70

jr_088_5f11:
	add  e                                           ; $5f11: $83
	ld   hl, sp+$00                                  ; $5f12: $f8 $00
	add  sp, -$7f                                    ; $5f14: $e8 $81
	ldh  a, [rSB]                                    ; $5f16: $f0 $01
	ldh  [$f0], a                                    ; $5f18: $e0 $f0
	add  b                                           ; $5f1a: $80
	pop  af                                          ; $5f1b: $f1
	rlca                                             ; $5f1c: $07
	pop  hl                                          ; $5f1d: $e1
	pop  af                                          ; $5f1e: $f1
	sub  e                                           ; $5f1f: $93
	db   $e3                                         ; $5f20: $e3
	ld   h, a                                        ; $5f21: $67
	rst  ToBoot                                         ; $5f22: $c7
	jp   $8003                                       ; $5f23: $c3 $03 $80


	ld   bc, $0080                                   ; $5f26: $01 $80 $00
	inc  d                                           ; $5f29: $14
	jr   jr_088_5f2c                                 ; $5f2a: $18 $00

jr_088_5f2c:
	inc  d                                           ; $5f2c: $14
	nop                                              ; $5f2d: $00
	ld   [bc], a                                     ; $5f2e: $02
	nop                                              ; $5f2f: $00
	ld   bc, $0300                                   ; $5f30: $01 $00 $03
	nop                                              ; $5f33: $00
	inc  c                                           ; $5f34: $0c
	nop                                              ; $5f35: $00
	ld   h, b                                        ; $5f36: $60
	ld   bc, $0221                                   ; $5f37: $01 $21 $02
	ld   h, d                                        ; $5f3a: $62
	inc  b                                           ; $5f3b: $04
	inc  [hl]                                        ; $5f3c: $34
	ld   [$8b18], sp                                 ; $5f3d: $08 $18 $8b
	nop                                              ; $5f40: $00
	add  b                                           ; $5f41: $80
	ld   a, e                                        ; $5f42: $7b
	add  b                                           ; $5f43: $80
	ld   sp, $1a80                                   ; $5f44: $31 $80 $1a
	sbc  h                                           ; $5f47: $9c
	nop                                              ; $5f48: $00
	add  b                                           ; $5f49: $80
	inc  b                                           ; $5f4a: $04
	add  b                                           ; $5f4b: $80
	ld   d, h                                        ; $5f4c: $54
	add  b                                           ; $5f4d: $80
	ld   d, l                                        ; $5f4e: $55
	add  b                                           ; $5f4f: $80
	dec  sp                                          ; $5f50: $3b
	ld   bc, $fb7b                                   ; $5f51: $01 $7b $fb
	add  b                                           ; $5f54: $80
	call nc, $8000                                   ; $5f55: $d4 $00 $80
	add  [hl]                                        ; $5f58: $86
	ld   b, b                                        ; $5f59: $40
	add  b                                           ; $5f5a: $80
	nop                                              ; $5f5b: $00
	add  b                                           ; $5f5c: $80
	ld   hl, $1f80                                   ; $5f5d: $21 $80 $1f
	add  b                                           ; $5f60: $80
	rst  $28                                         ; $5f61: $ef
	add  b                                           ; $5f62: $80
	and  c                                           ; $5f63: $a1
	inc  bc                                          ; $5f64: $03
	ld   a, b                                        ; $5f65: $78
	ld   [hl], a                                     ; $5f66: $77
	xor  a                                           ; $5f67: $af
	cp   h                                           ; $5f68: $bc
	add  b                                           ; $5f69: $80
	ld   c, h                                        ; $5f6a: $4c
	ld   bc, $1e0c                                   ; $5f6b: $01 $0c $1e
	add  c                                           ; $5f6e: $81
	ld   b, $00                                      ; $5f6f: $06 $00
	rrca                                             ; $5f71: $0f
	add  c                                           ; $5f72: $81
	inc  bc                                          ; $5f73: $03
	nop                                              ; $5f74: $00
	inc  b                                           ; $5f75: $04
	adc  e                                           ; $5f76: $8b
	nop                                              ; $5f77: $00
	add  b                                           ; $5f78: $80
	inc  c                                           ; $5f79: $0c
	add  b                                           ; $5f7a: $80
	rrca                                             ; $5f7b: $0f
	add  b                                           ; $5f7c: $80
	ld   a, $80                                      ; $5f7d: $3e $80
	ld   hl, sp-$80                                  ; $5f7f: $f8 $80
	ld   h, b                                        ; $5f81: $60

jr_088_5f82:
	add  b                                           ; $5f82: $80
	jr   nz, jr_088_5f05                             ; $5f83: $20 $80

	ld   d, b                                        ; $5f85: $50

jr_088_5f86:
	adc  [hl]                                        ; $5f86: $8e
	nop                                              ; $5f87: $00
	add  d                                           ; $5f88: $82
	ld   b, b                                        ; $5f89: $40
	add  d                                           ; $5f8a: $82
	jr   nz, jr_088_5f0d                             ; $5f8b: $20 $80

	jr   nc, jr_088_5f11                             ; $5f8d: $30 $82

	ld   [hl], b                                     ; $5f8f: $70
	add  b                                           ; $5f90: $80
	ret  nz                                          ; $5f91: $c0

	add  d                                           ; $5f92: $82
	nop                                              ; $5f93: $00

jr_088_5f94:
	add  b                                           ; $5f94: $80
	ld   bc, $0780                                   ; $5f95: $01 $80 $07
	add  d                                           ; $5f98: $82
	ld   bc, $0004                                   ; $5f99: $01 $04 $00
	add  b                                           ; $5f9c: $80
	add  c                                           ; $5f9d: $81
	pop  bc                                          ; $5f9e: $c1
	ret  nz                                          ; $5f9f: $c0

	add  b                                           ; $5fa0: $80
	ret  nc                                          ; $5fa1: $d0

	add  b                                           ; $5fa2: $80
	ld   a, [$7e0a]                                  ; $5fa3: $fa $0a $7e
	cp   $9f                                         ; $5fa6: $fe $9f
	ld   a, a                                        ; $5fa8: $7f
	ld   h, a                                        ; $5fa9: $67
	rla                                              ; $5faa: $17
	inc  de                                          ; $5fab: $13
	dec  bc                                          ; $5fac: $0b
	add  hl, bc                                      ; $5fad: $09
	ld   b, $07                                      ; $5fae: $06 $07
	add  b                                           ; $5fb0: $80
	inc  b                                           ; $5fb1: $04
	add  b                                           ; $5fb2: $80
	ld   [bc], a                                     ; $5fb3: $02
	add  h                                           ; $5fb4: $84
	nop                                              ; $5fb5: $00
	add  b                                           ; $5fb6: $80
	ret  nz                                          ; $5fb7: $c0

	add  b                                           ; $5fb8: $80
	add  b                                           ; $5fb9: $80
	add  b                                           ; $5fba: $80
	pop  bc                                          ; $5fbb: $c1
	add  b                                           ; $5fbc: $80
	ld   bc, $0380                                   ; $5fbd: $01 $80 $03
	add  b                                           ; $5fc0: $80
	nop                                              ; $5fc1: $00
	add  d                                           ; $5fc2: $82
	inc  bc                                          ; $5fc3: $03
	add  b                                           ; $5fc4: $80
	ld   bc, $0280                                   ; $5fc5: $01 $80 $02
	add  b                                           ; $5fc8: $80
	add  c                                           ; $5fc9: $81
	add  b                                           ; $5fca: $80
	ld   h, b                                        ; $5fcb: $60

jr_088_5fcc:
	add  b                                           ; $5fcc: $80
	db   $10                                         ; $5fcd: $10
	add  h                                           ; $5fce: $84
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	add  b                                           ; $5fd1: $80
	add  b                                           ; $5fd2: $80
	sbc  h                                           ; $5fd3: $9c
	ld   bc, $1e9e                                   ; $5fd4: $01 $9e $1e
	add  b                                           ; $5fd7: $80
	rra                                              ; $5fd8: $1f
	add  b                                           ; $5fd9: $80
	rlca                                             ; $5fda: $07
	ld   bc, $c303                                   ; $5fdb: $01 $03 $c3
	add  b                                           ; $5fde: $80
	pop  bc                                          ; $5fdf: $c1
	rlca                                             ; $5fe0: $07
	ret  nz                                          ; $5fe1: $c0

	or   b                                           ; $5fe2: $b0
	or   e                                           ; $5fe3: $b3
	db   $e3                                         ; $5fe4: $e3
	rst  $28                                         ; $5fe5: $ef
	adc  a                                           ; $5fe6: $8f
	sbc  a                                           ; $5fe7: $9f
	rra                                              ; $5fe8: $1f
	add  b                                           ; $5fe9: $80
	ld   a, $80                                      ; $5fea: $3e $80
	dec  a                                           ; $5fec: $3d
	add  b                                           ; $5fed: $80
	dec  sp                                          ; $5fee: $3b
	rst  $38                                         ; $5fef: $ff
	nop                                              ; $5ff0: $00
	rst  $38                                         ; $5ff1: $ff
	nop                                              ; $5ff2: $00
	rst  $38                                         ; $5ff3: $ff
	nop                                              ; $5ff4: $00
	rst  $38                                         ; $5ff5: $ff
	nop                                              ; $5ff6: $00
	cp   a                                           ; $5ff7: $bf
	nop                                              ; $5ff8: $00
	db   $eb                                         ; $5ff9: $eb
	nop                                              ; $5ffa: $00
	sub  b                                           ; $5ffb: $90
	nop                                              ; $5ffc: $00
	add  b                                           ; $5ffd: $80
	rlca                                             ; $5ffe: $07
	add  b                                           ; $5fff: $80
	jr   jr_088_5f82                                 ; $6000: $18 $80

	jr   nz, jr_088_5f86                             ; $6002: $20 $82

	ld   b, b                                        ; $6004: $40
	add  b                                           ; $6005: $80
	add  b                                           ; $6006: $80
	add  b                                           ; $6007: $80
	add  c                                           ; $6008: $81
	add  b                                           ; $6009: $80
	nop                                              ; $600a: $00
	add  b                                           ; $600b: $80
	ld   de, $fe80                                   ; $600c: $11 $80 $fe
	add  b                                           ; $600f: $80
	inc  l                                           ; $6010: $2c
	add  b                                           ; $6011: $80
	jr   c, jr_088_5f94                              ; $6012: $38 $80

	inc  a                                           ; $6014: $3c
	add  b                                           ; $6015: $80
	ld   l, d                                        ; $6016: $6a
	add  b                                           ; $6017: $80
	ret                                              ; $6018: $c9


	add  b                                           ; $6019: $80
	nop                                              ; $601a: $00
	add  b                                           ; $601b: $80
	ldh  [$80], a                                    ; $601c: $e0 $80
	db   $10                                         ; $601e: $10
	add  b                                           ; $601f: $80
	ld   [$0580], sp                                 ; $6020: $08 $80 $05
	add  b                                           ; $6023: $80
	ld   a, a                                        ; $6024: $7f
	add  b                                           ; $6025: $80
	sbc  c                                           ; $6026: $99
	add  b                                           ; $6027: $80
	ld   c, $86                                      ; $6028: $0e $86
	nop                                              ; $602a: $00
	add  b                                           ; $602b: $80
	ldh  [$80], a                                    ; $602c: $e0 $80
	db   $10                                         ; $602e: $10
	add  b                                           ; $602f: $80
	sbc  b                                           ; $6030: $98
	add  b                                           ; $6031: $80
	ld   [$0090], sp                                 ; $6032: $08 $90 $00
	add  b                                           ; $6035: $80
	ld   bc, $0080                                   ; $6036: $01 $80 $00
	add  b                                           ; $6039: $80
	ld   bc, $0680                                   ; $603a: $01 $80 $06
	add  b                                           ; $603d: $80
	ld   [$1082], sp                                 ; $603e: $08 $82 $10
	add  b                                           ; $6041: $80
	cp   $80                                         ; $6042: $fe $80
	ld   [$1080], sp                                 ; $6044: $08 $80 $10
	add  b                                           ; $6047: $80
	ret  nc                                          ; $6048: $d0

	add  b                                           ; $6049: $80
	jr   nc, jr_088_5fcc                             ; $604a: $30 $80

	daa                                              ; $604c: $27
	add  b                                           ; $604d: $80
	dec  a                                           ; $604e: $3d
	ld   [bc], a                                     ; $604f: $02
	ccf                                              ; $6050: $3f
	ld   [hl], $17                                   ; $6051: $36 $17
	add  c                                           ; $6053: $81
	ld   e, $80                                      ; $6054: $1e $80
	inc  c                                           ; $6056: $0c
	add  d                                           ; $6057: $82
	nop                                              ; $6058: $00

jr_088_6059:
	add  b                                           ; $6059: $80
	add  b                                           ; $605a: $80
	add  c                                           ; $605b: $81
	ret  nz                                          ; $605c: $c0

	ld   [bc], a                                     ; $605d: $02
	ld   b, b                                        ; $605e: $40
	adc  b                                           ; $605f: $88
	ld   [$0f80], sp                                 ; $6060: $08 $80 $0f
	add  b                                           ; $6063: $80
	inc  d                                           ; $6064: $14
	add  b                                           ; $6065: $80
	ld   e, $03                                      ; $6066: $1e $03
	cp   a                                           ; $6068: $bf
	and  a                                           ; $6069: $a7
	ld   h, c                                        ; $606a: $61
	ld   a, c                                        ; $606b: $79
	add  b                                           ; $606c: $80
	ld   b, c                                        ; $606d: $41
	add  b                                           ; $606e: $80
	ld   b, $80                                      ; $606f: $06 $80
	ld   a, $80                                      ; $6071: $3e $80
	ld   h, c                                        ; $6073: $61
	add  b                                           ; $6074: $80
	add  c                                           ; $6075: $81
	add  b                                           ; $6076: $80
	adc  [hl]                                        ; $6077: $8e
	add  b                                           ; $6078: $80
	pop  af                                          ; $6079: $f1
	add  b                                           ; $607a: $80
	ret  nz                                          ; $607b: $c0

	add  b                                           ; $607c: $80
	ldh  a, [$80]                                    ; $607d: $f0 $80
	jr   c, @-$7c                                    ; $607f: $38 $82

	nop                                              ; $6081: $00
	add  b                                           ; $6082: $80
	add  b                                           ; $6083: $80
	add  d                                           ; $6084: $82
	nop                                              ; $6085: $00
	add  d                                           ; $6086: $82
	add  b                                           ; $6087: $80
	add  b                                           ; $6088: $80
	ld   b, b                                        ; $6089: $40
	add  b                                           ; $608a: $80
	add  hl, sp                                      ; $608b: $39
	add  b                                           ; $608c: $80
	ld   hl, $0184                                   ; $608d: $21 $84 $01
	add  h                                           ; $6090: $84
	inc  bc                                          ; $6091: $03
	add  b                                           ; $6092: $80
	rst  $38                                         ; $6093: $ff
	dec  b                                           ; $6094: $05
	ld   hl, sp-$28                                  ; $6095: $f8 $d8
	ret  nz                                          ; $6097: $c0

	and  b                                           ; $6098: $a0
	add  b                                           ; $6099: $80
	ret  nz                                          ; $609a: $c0

	add  b                                           ; $609b: $80
	add  b                                           ; $609c: $80
	add  b                                           ; $609d: $80
	ld   [hl], c                                     ; $609e: $71
	add  b                                           ; $609f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60a0: $cf
	add  b                                           ; $60a1: $80
	add  e                                           ; $60a2: $83
	add  b                                           ; $60a3: $80
	ret  nz                                          ; $60a4: $c0

	ld   [bc], a                                     ; $60a5: $02
	ldh  [$c0], a                                    ; $60a6: $e0 $c0
	ld   [hl], b                                     ; $60a8: $70
	add  b                                           ; $60a9: $80
	ld   d, b                                        ; $60aa: $50
	ld   [bc], a                                     ; $60ab: $02
	ld   b, b                                        ; $60ac: $40
	xor  [hl]                                        ; $60ad: $ae
	cp   [hl]                                        ; $60ae: $be
	add  b                                           ; $60af: $80
	res  0, b                                        ; $60b0: $cb $80
	ld   c, e                                        ; $60b2: $4b
	add  b                                           ; $60b3: $80
	reti                                             ; $60b4: $d9


	add  d                                           ; $60b5: $82
	inc  b                                           ; $60b6: $04
	add  b                                           ; $60b7: $80
	inc  h                                           ; $60b8: $24
	add  b                                           ; $60b9: $80
	ld   h, $80                                      ; $60ba: $26 $80
	ld   e, a                                        ; $60bc: $5f
	add  b                                           ; $60bd: $80
	ld   c, e                                        ; $60be: $4b
	add  b                                           ; $60bf: $80
	ld   hl, sp-$80                                  ; $60c0: $f8 $80
	add  l                                           ; $60c2: $85
	inc  bc                                          ; $60c3: $03
	inc  e                                           ; $60c4: $1c
	inc  d                                           ; $60c5: $14
	rla                                              ; $60c6: $17
	rra                                              ; $60c7: $1f
	add  h                                           ; $60c8: $84
	ld   [$0c80], sp                                 ; $60c9: $08 $80 $0c
	add  b                                           ; $60cc: $80
	ld   l, [hl]                                     ; $60cd: $6e
	add  b                                           ; $60ce: $80
	sbc  a                                           ; $60cf: $9f
	add  d                                           ; $60d0: $82
	ld   b, b                                        ; $60d1: $40
	add  b                                           ; $60d2: $80
	ret  nz                                          ; $60d3: $c0

	add  d                                           ; $60d4: $82
	jr   nz, jr_088_6059                             ; $60d5: $20 $82

	db   $10                                         ; $60d7: $10
	add  b                                           ; $60d8: $80
	ldh  a, [rP1]                                    ; $60d9: $f0 $00
	ld   [bc], a                                     ; $60db: $02
	adc  c                                           ; $60dc: $89
	inc  bc                                          ; $60dd: $03
	ld   bc, $0302                                   ; $60de: $01 $02 $03
	add  b                                           ; $60e1: $80
	ld   bc, $8280                                   ; $60e2: $01 $80 $82
	add  b                                           ; $60e5: $80
	add  [hl]                                        ; $60e6: $86
	add  b                                           ; $60e7: $80
	adc  d                                           ; $60e8: $8a
	add  b                                           ; $60e9: $80
	sub  e                                           ; $60ea: $93
	add  b                                           ; $60eb: $80
	or   d                                           ; $60ec: $b2
	rlca                                             ; $60ed: $07
	ld   [hl], h                                     ; $60ee: $74
	call nc, $dece                                   ; $60ef: $d4 $ce $de
	rst  $38                                         ; $60f2: $ff
	cp   a                                           ; $60f3: $bf
	db   $db                                         ; $60f4: $db
	dec  hl                                          ; $60f5: $2b
	add  b                                           ; $60f6: $80
	dec  e                                           ; $60f7: $1d
	add  d                                           ; $60f8: $82
	ld   a, [bc]                                     ; $60f9: $0a
	add  d                                           ; $60fa: $82
	adc  d                                           ; $60fb: $8a
	add  b                                           ; $60fc: $80
	ld   c, e                                        ; $60fd: $4b
	add  b                                           ; $60fe: $80
	jp   nc, $0282                                   ; $60ff: $d2 $82 $02

	add  b                                           ; $6102: $80
	inc  e                                           ; $6103: $1c
	add  b                                           ; $6104: $80
	inc  hl                                          ; $6105: $23
	add  b                                           ; $6106: $80
	ld   hl, $c180                                   ; $6107: $21 $80 $c1
	add  b                                           ; $610a: $80
	jp   Jump_088_4780                               ; $610b: $c3 $80 $47


	ld   bc, $0d0f                                   ; $610e: $01 $0f $0d
	add  d                                           ; $6111: $82
	dec  b                                           ; $6112: $05
	add  b                                           ; $6113: $80
	push bc                                          ; $6114: $c5
	add  b                                           ; $6115: $80
	ld   [hl], l                                     ; $6116: $75
	add  b                                           ; $6117: $80
	dec  a                                           ; $6118: $3d
	dec  b                                           ; $6119: $05
	db   $fd                                         ; $611a: $fd
	jp   $02c2                                       ; $611b: $c3 $c2 $02


	db   $ec                                         ; $611e: $ec
	db   $10                                         ; $611f: $10
	sbc  h                                           ; $6120: $9c
	nop                                              ; $6121: $00
	inc  c                                           ; $6122: $0c
	adc  h                                           ; $6123: $8c
	ei                                               ; $6124: $fb
	cp   a                                           ; $6125: $bf
	rst  $30                                         ; $6126: $f7
	adc  a                                           ; $6127: $8f
	rst  $38                                         ; $6128: $ff
	inc  bc                                          ; $6129: $03
	ld   a, a                                        ; $612a: $7f
	ld   [hl], b                                     ; $612b: $70
	ld   a, a                                        ; $612c: $7f
	ld   a, l                                        ; $612d: $7d
	ld   a, [hl]                                     ; $612e: $7e
	rra                                              ; $612f: $1f
	add  c                                           ; $6130: $81
	ccf                                              ; $6131: $3f
	ld   [bc], a                                     ; $6132: $02
	ld   h, b                                        ; $6133: $60
	rst  $38                                         ; $6134: $ff
	or   b                                           ; $6135: $b0
	add  b                                           ; $6136: $80
	rst  $28                                         ; $6137: $ef
	nop                                              ; $6138: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6139: $cf
	add  b                                           ; $613a: $80
	rst  $38                                         ; $613b: $ff
	ld   [bc], a                                     ; $613c: $02
	ld   a, a                                        ; $613d: $7f
	rst  $38                                         ; $613e: $ff
	nop                                              ; $613f: $00
	add  b                                           ; $6140: $80
	rst  $38                                         ; $6141: $ff
	nop                                              ; $6142: $00
	add  b                                           ; $6143: $80
	add  b                                           ; $6144: $80
	ldh  [$0a], a                                    ; $6145: $e0 $0a
	ld   [de], a                                     ; $6147: $12
	ld   [$f23a], a                                  ; $6148: $ea $3a $f2
	sub  $f6                                         ; $614b: $d6 $f6
	db   $fc                                         ; $614d: $fc
	db   $ec                                         ; $614e: $ec
	ld   hl, sp-$01                                  ; $614f: $f8 $ff
	rlca                                             ; $6151: $07
	add  b                                           ; $6152: $80
	ld   hl, sp-$7f                                  ; $6153: $f8 $81
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	inc  bc                                          ; $6157: $03
	add  b                                           ; $6158: $80
	inc  b                                           ; $6159: $04
	add  b                                           ; $615a: $80
	inc  c                                           ; $615b: $0c
	ld   bc, $3034                                   ; $615c: $01 $34 $30
	add  b                                           ; $615f: $80
	ret  z                                           ; $6160: $c8

	add  c                                           ; $6161: $81
	ld   [rRAMG], sp                                 ; $6162: $08 $00 $00
	add  c                                           ; $6165: $81
	stop                                             ; $6166: $10 $00
	ldh  [$9d], a                                    ; $6168: $e0 $9d
	nop                                              ; $616a: $00
	dec  b                                           ; $616b: $05
	ld   [de], a                                     ; $616c: $12
	rra                                              ; $616d: $1f
	ld   a, [de]                                     ; $616e: $1a
	rra                                              ; $616f: $1f
	rlca                                             ; $6170: $07
	rrca                                             ; $6171: $0f
	add  b                                           ; $6172: $80
	inc  bc                                          ; $6173: $03
	add  a                                           ; $6174: $87
	nop                                              ; $6175: $00
	add  e                                           ; $6176: $83
	rst  $38                                         ; $6177: $ff
	rlca                                             ; $6178: $07
	ld   a, a                                        ; $6179: $7f
	rst  $38                                         ; $617a: $ff
	cp   a                                           ; $617b: $bf
	rst  $38                                         ; $617c: $ff
	rrca                                             ; $617d: $0f
	ccf                                              ; $617e: $3f
	nop                                              ; $617f: $00
	rrca                                             ; $6180: $0f
	add  b                                           ; $6181: $80
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	rlca                                             ; $6184: $07
	add  b                                           ; $6185: $80
	ld   sp, hl                                      ; $6186: $f9
	nop                                              ; $6187: $00
	ei                                               ; $6188: $fb
	add  c                                           ; $6189: $81
	di                                               ; $618a: $f3
	ld   b, $f7                                      ; $618b: $06 $f7
	db   $f4                                         ; $618d: $f4
	db   $fc                                         ; $618e: $fc
	ret  nz                                          ; $618f: $c0

	ldh  a, [rP1]                                    ; $6190: $f0 $00
	ret  nz                                          ; $6192: $c0

	add  b                                           ; $6193: $80
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	ldh  [$80], a                                    ; $6196: $e0 $80
	jr   nz, jr_088_619c                             ; $6198: $20 $02

	and  b                                           ; $619a: $a0
	add  b                                           ; $619b: $80

jr_088_619c:
	ret  nz                                          ; $619c: $c0

	or   b                                           ; $619d: $b0
	nop                                              ; $619e: $00
	inc  b                                           ; $619f: $04
	ld   bc, $0600                                   ; $61a0: $01 $00 $06
	inc  bc                                          ; $61a3: $03
	dec  bc                                          ; $61a4: $0b
	add  b                                           ; $61a5: $80
	inc  b                                           ; $61a6: $04
	ld   bc, $040b                                   ; $61a7: $01 $0b $04
	add  c                                           ; $61aa: $81
	nop                                              ; $61ab: $00
	inc  b                                           ; $61ac: $04
	rlca                                             ; $61ad: $07
	ld   [bc], a                                     ; $61ae: $02
	ld   a, [de]                                     ; $61af: $1a
	add  hl, bc                                      ; $61b0: $09
	add  hl, hl                                      ; $61b1: $29
	add  b                                           ; $61b2: $80
	ld   d, $09                                      ; $61b3: $16 $09
	ld   a, [de]                                     ; $61b5: $1a
	ld   e, d                                        ; $61b6: $5a
	ld   a, [hl+]                                    ; $61b7: $2a
	dec  hl                                          ; $61b8: $2b
	ld   c, b                                        ; $61b9: $48
	scf                                              ; $61ba: $37
	nop                                              ; $61bb: $00
	ld   b, $01                                      ; $61bc: $06 $01
	add  hl, bc                                      ; $61be: $09
	add  b                                           ; $61bf: $80
	ld   b, $08                                      ; $61c0: $06 $08
	inc  b                                           ; $61c2: $04
	call nz, $1c0b                                   ; $61c3: $c4 $0b $1c
	nop                                              ; $61c6: $00
	ld   a, [de]                                     ; $61c7: $1a
	ret  nz                                          ; $61c8: $c0

	jp   nz, $82c0                                   ; $61c9: $c2 $c0 $82

	nop                                              ; $61cc: $00
	inc  c                                           ; $61cd: $0c
	ld   bc, $d200                                   ; $61ce: $01 $00 $d2
	inc  bc                                          ; $61d1: $03
	rla                                              ; $61d2: $17
	ld   b, h                                        ; $61d3: $44
	ld   b, b                                        ; $61d4: $40
	ld   b, d                                        ; $61d5: $42
	inc  d                                           ; $61d6: $14
	add  c                                           ; $61d7: $81
	ld   [hl+], a                                    ; $61d8: $22
	nop                                              ; $61d9: $00
	rst  $10                                         ; $61da: $d7
	add  b                                           ; $61db: $80
	ld   hl, $a103                                   ; $61dc: $21 $03 $a1
	and  e                                           ; $61df: $a3
	ld   h, e                                        ; $61e0: $63
	ld   a, a                                        ; $61e1: $7f
	add  b                                           ; $61e2: $80
	rst  $38                                         ; $61e3: $ff
	inc  bc                                          ; $61e4: $03
	add  sp, $68                                     ; $61e5: $e8 $68
	ld   h, h                                        ; $61e7: $64
	inc  h                                           ; $61e8: $24
	add  b                                           ; $61e9: $80
	rrca                                             ; $61ea: $0f
	ld   bc, $152a                                   ; $61eb: $01 $2a $15
	add  c                                           ; $61ee: $81
	nop                                              ; $61ef: $00
	rrca                                             ; $61f0: $0f
	ldh  [rP1], a                                    ; $61f1: $e0 $00
	db   $10                                         ; $61f3: $10
	ret  nz                                          ; $61f4: $c0

	ret  z                                           ; $61f5: $c8

	jr   nc, jr_088_6240                             ; $61f6: $30 $48

	nop                                              ; $61f8: $00
	and  $20                                         ; $61f9: $e6 $20
	or   a                                           ; $61fb: $b7
	ld   b, c                                        ; $61fc: $41
	ld   b, a                                        ; $61fd: $47
	ld   h, b                                        ; $61fe: $60
	ld   h, a                                        ; $61ff: $67
	ld   d, b                                        ; $6200: $50
	add  c                                           ; $6201: $81
	ld   b, b                                        ; $6202: $40
	nop                                              ; $6203: $00
	and  b                                           ; $6204: $a0
	add  b                                           ; $6205: $80
	nop                                              ; $6206: $00
	ld   b, $c6                                      ; $6207: $06 $c6
	nop                                              ; $6209: $00
	jr   c, jr_088_6214                              ; $620a: $38 $08

	ld   c, a                                        ; $620c: $4f
	xor  b                                           ; $620d: $a8
	ld   d, c                                        ; $620e: $51
	add  a                                           ; $620f: $87
	nop                                              ; $6210: $00
	ld   d, $e0                                      ; $6211: $16 $e0
	nop                                              ; $6213: $00

jr_088_6214:
	add  b                                           ; $6214: $80
	nop                                              ; $6215: $00
	sub  b                                           ; $6216: $90
	ret  nz                                          ; $6217: $c0

	ldh  a, [rP1]                                    ; $6218: $f0 $00
	ld   e, [hl]                                     ; $621a: $5e
	nop                                              ; $621b: $00
	ldh  [rP1], a                                    ; $621c: $e0 $00
	ld   c, $10                                      ; $621e: $0e $10
	ld   l, [hl]                                     ; $6220: $6e
	ld   [bc], a                                     ; $6221: $02
	inc  sp                                          ; $6222: $33
	inc  c                                           ; $6223: $0c
	inc  a                                           ; $6224: $3c
	ld   b, $ce                                      ; $6225: $06 $ce
	dec  b                                           ; $6227: $05
	jp   nz, $009b                                   ; $6228: $c2 $9b $00

	inc  bc                                          ; $622b: $03
	add  b                                           ; $622c: $80
	nop                                              ; $622d: $00
	add  [hl]                                        ; $622e: $86
	ld   b, $9e                                      ; $622f: $06 $9e
	nop                                              ; $6231: $00
	ld   a, [de]                                     ; $6232: $1a

jr_088_6233:
	rlca                                             ; $6233: $07
	nop                                              ; $6234: $00
	jr   jr_088_623e                                 ; $6235: $18 $07

	daa                                              ; $6237: $27
	jr   jr_088_6292                                 ; $6238: $18 $58

	inc  hl                                          ; $623a: $23
	jp   nc, $b00e                                   ; $623b: $d2 $0e $b0

jr_088_623e:
	nop                                              ; $623e: $00
	ld   c, h                                        ; $623f: $4c

jr_088_6240:
	db   $10                                         ; $6240: $10
	ld   de, $3430                                   ; $6241: $11 $30 $34
	ld   l, b                                        ; $6244: $68
	ld   h, h                                        ; $6245: $64
	jr   nz, jr_088_6281                             ; $6246: $20 $39

	nop                                              ; $6248: $00
	jr   nz, jr_088_624c                             ; $6249: $20 $01

	ld   b, l                                        ; $624b: $45

jr_088_624c:
	inc  bc                                          ; $624c: $03
	dec  bc                                          ; $624d: $0b
	add  b                                           ; $624e: $80
	ld   bc, $0005                                   ; $624f: $01 $05 $00
	ccf                                              ; $6252: $3f
	daa                                              ; $6253: $27
	rlca                                             ; $6254: $07
	dec  d                                           ; $6255: $15
	and  l                                           ; $6256: $a5
	add  b                                           ; $6257: $80
	add  hl, bc                                      ; $6258: $09
	inc  bc                                          ; $6259: $03
	adc  l                                           ; $625a: $8d
	ld   h, e                                        ; $625b: $63
	ld   bc, $8074                                   ; $625c: $01 $74 $80
	nop                                              ; $625f: $00
	rlca                                             ; $6260: $07
	add  b                                           ; $6261: $80
	sub  d                                           ; $6262: $92
	nop                                              ; $6263: $00
	ldh  [c], a                                      ; $6264: $e2
	sub  b                                           ; $6265: $90
	or   h                                           ; $6266: $b4
	ld   b, d                                        ; $6267: $42
	ld   d, e                                        ; $6268: $53
	add  b                                           ; $6269: $80
	and  h                                           ; $626a: $a4
	ld   bc, $35b5                                   ; $626b: $01 $b5 $35
	add  c                                           ; $626e: $81
	inc  h                                           ; $626f: $24
	inc  b                                           ; $6270: $04
	ld   h, l                                        ; $6271: $65
	add  h                                           ; $6272: $84
	sub  h                                           ; $6273: $94
	dec  c                                           ; $6274: $0d
	sub  $80                                         ; $6275: $d6 $80
	ld   hl, $b00d                                   ; $6277: $21 $0d $b0
	sub  b                                           ; $627a: $90
	ld   d, c                                        ; $627b: $51
	ld   d, e                                        ; $627c: $53
	ld   de, $2048                                   ; $627d: $11 $48 $20
	inc  h                                           ; $6280: $24

jr_088_6281:
	jr   nc, @-$4b                                   ; $6281: $30 $b3

	nop                                              ; $6283: $00
	ld   a, l                                        ; $6284: $7d
	ld   l, b                                        ; $6285: $68
	rst  $28                                         ; $6286: $ef
	add  b                                           ; $6287: $80
	ld   sp, $e011                                   ; $6288: $31 $11 $e0
	cp   $40                                         ; $628b: $fe $40
	ld   a, a                                        ; $628d: $7f
	add  h                                           ; $628e: $84
	add  [hl]                                        ; $628f: $86
	adc  b                                           ; $6290: $88
	ld   l, b                                        ; $6291: $68

jr_088_6292:
	jr   nc, jr_088_62c6                             ; $6292: $30 $32

	jr   @+$1e                                       ; $6294: $18 $1c

	sub  b                                           ; $6296: $90
	ld   c, e                                        ; $6297: $4b
	pop  bc                                          ; $6298: $c1
	jp   nz, $9780                                   ; $6299: $c2 $80 $97

	add  b                                           ; $629c: $80
	ldh  a, [$80]                                    ; $629d: $f0 $80
	ld   b, [hl]                                     ; $629f: $46
	add  hl, bc                                      ; $62a0: $09
	pop  hl                                          ; $62a1: $e1
	push hl                                          ; $62a2: $e5
	and  b                                           ; $62a3: $a0
	jp   nz, $f100                                   ; $62a4: $c2 $00 $f1

	nop                                              ; $62a7: $00
	sub  b                                           ; $62a8: $90
	ret  nz                                          ; $62a9: $c0

	ret  z                                           ; $62aa: $c8

	add  b                                           ; $62ab: $80
	and  b                                           ; $62ac: $a0
	dec  b                                           ; $62ad: $05
	sub  b                                           ; $62ae: $90
	ld   d, b                                        ; $62af: $50
	nop                                              ; $62b0: $00
	jr   nc, jr_088_6233                             ; $62b1: $30 $80

	adc  b                                           ; $62b3: $88
	add  b                                           ; $62b4: $80
	ret  nz                                          ; $62b5: $c0

	add  c                                           ; $62b6: $81
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	add  b                                           ; $62b9: $80
	add  c                                           ; $62ba: $81
	nop                                              ; $62bb: $00
	ld   [bc], a                                     ; $62bc: $02
	add  b                                           ; $62bd: $80
	nop                                              ; $62be: $00
	ret  nz                                          ; $62bf: $c0

	add  b                                           ; $62c0: $80
	nop                                              ; $62c1: $00
	ld   bc, $a080                                   ; $62c2: $01 $80 $a0
	add  b                                           ; $62c5: $80

jr_088_62c6:
	ld   b, b                                        ; $62c6: $40
	ld   bc, $c020                                   ; $62c7: $01 $20 $c0
	rst  $28                                         ; $62ca: $ef
	nop                                              ; $62cb: $00
	ld   [bc], a                                     ; $62cc: $02
	stop                                             ; $62cd: $10 $00
	db   $10                                         ; $62cf: $10

jr_088_62d0:
	rst  $38                                         ; $62d0: $ff
	nop                                              ; $62d1: $00

jr_088_62d2:
	rst  $38                                         ; $62d2: $ff
	nop                                              ; $62d3: $00
	rst  $38                                         ; $62d4: $ff
	nop                                              ; $62d5: $00
	rst  $38                                         ; $62d6: $ff
	nop                                              ; $62d7: $00
	rst  $38                                         ; $62d8: $ff
	nop                                              ; $62d9: $00
	sub  $00                                         ; $62da: $d6 $00
	ld   e, e                                        ; $62dc: $5b
	ld   bc, $0082                                   ; $62dd: $01 $82 $00

jr_088_62e0:
	add  b                                           ; $62e0: $80
	ccf                                              ; $62e1: $3f
	ld   bc, $3f20                                   ; $62e2: $01 $20 $3f
	add  c                                           ; $62e5: $81
	jr   nc, jr_088_62e9                             ; $62e6: $30 $01

	scf                                              ; $62e8: $37

jr_088_62e9:
	inc  [hl]                                        ; $62e9: $34
	add  b                                           ; $62ea: $80
	scf                                              ; $62eb: $37
	ld   bc, $1a36                                   ; $62ec: $01 $36 $1a
	add  c                                           ; $62ef: $81
	nop                                              ; $62f0: $00
	add  b                                           ; $62f1: $80
	rst  $38                                         ; $62f2: $ff
	ld   bc, $ff00                                   ; $62f3: $01 $00 $ff
	add  c                                           ; $62f6: $81
	nop                                              ; $62f7: $00
	ld   bc, $10ff                                   ; $62f8: $01 $ff $10
	add  b                                           ; $62fb: $80

jr_088_62fc:
	rst  $38                                         ; $62fc: $ff
	nop                                              ; $62fd: $00

jr_088_62fe:
	db   $10                                         ; $62fe: $10
	add  d                                           ; $62ff: $82
	nop                                              ; $6300: $00
	add  b                                           ; $6301: $80
	rst  $38                                         ; $6302: $ff
	ld   bc, $ff00                                   ; $6303: $01 $00 $ff
	add  c                                           ; $6306: $81
	nop                                              ; $6307: $00
	ld   bc, $41ff                                   ; $6308: $01 $ff $41
	add  b                                           ; $630b: $80
	rst  $38                                         ; $630c: $ff
	nop                                              ; $630d: $00
	ld   b, c                                        ; $630e: $41
	add  d                                           ; $630f: $82
	nop                                              ; $6310: $00
	add  b                                           ; $6311: $80
	rst  $38                                         ; $6312: $ff
	ld   bc, $ff00                                   ; $6313: $01 $00 $ff
	add  c                                           ; $6316: $81
	nop                                              ; $6317: $00
	ld   bc, $04ff                                   ; $6318: $01 $ff $04
	add  b                                           ; $631b: $80
	rst  $38                                         ; $631c: $ff
	nop                                              ; $631d: $00

jr_088_631e:
	inc  b                                           ; $631e: $04
	add  d                                           ; $631f: $82

jr_088_6320:
	nop                                              ; $6320: $00
	add  b                                           ; $6321: $80
	rst  $38                                         ; $6322: $ff
	ld   bc, $ff00                                   ; $6323: $01 $00 $ff
	add  c                                           ; $6326: $81
	nop                                              ; $6327: $00
	ld   bc, $10ff                                   ; $6328: $01 $ff $10
	add  b                                           ; $632b: $80
	rst  $38                                         ; $632c: $ff
	nop                                              ; $632d: $00

jr_088_632e:
	db   $10                                         ; $632e: $10
	add  d                                           ; $632f: $82
	nop                                              ; $6330: $00
	add  b                                           ; $6331: $80
	ld   hl, sp+$01                                  ; $6332: $f8 $01
	ld   [$81f8], sp                                 ; $6334: $08 $f8 $81
	jr   z, @+$03                                    ; $6337: $28 $01

	add  sp, $68                                     ; $6339: $e8 $68
	add  b                                           ; $633b: $80
	add  sp, $01                                     ; $633c: $e8 $01
	ld   l, b                                        ; $633e: $68
	inc  e                                           ; $633f: $1c
	add  l                                           ; $6340: $85
	ld   [hl], $80                                   ; $6341: $36 $80
	scf                                              ; $6343: $37
	ld   [bc], a                                     ; $6344: $02
	dec  [hl]                                        ; $6345: $35
	scf                                              ; $6346: $37
	inc  [hl]                                        ; $6347: $34

jr_088_6348:
	add  c                                           ; $6348: $81
	ld   [hl], $01                                   ; $6349: $36 $01
	ld   a, [hl+]                                    ; $634b: $2a
	jr   nc, @-$7e                                   ; $634c: $30 $80

	jr   nz, jr_088_62d0                             ; $634e: $20 $80

	jr   nc, jr_088_62d2                             ; $6350: $30 $80

	db   $10                                         ; $6352: $10
	add  b                                           ; $6353: $80
	ret  nc                                          ; $6354: $d0

	add  b                                           ; $6355: $80
	ld   a, l                                        ; $6356: $7d
	add  b                                           ; $6357: $80
	rla                                              ; $6358: $17
	add  b                                           ; $6359: $80
	db   $10                                         ; $635a: $10
	add  b                                           ; $635b: $80
	ld   h, c                                        ; $635c: $61
	add  b                                           ; $635d: $80
	jr   nz, jr_088_62e0                             ; $635e: $20 $80

	ld   h, c                                        ; $6360: $61
	add  b                                           ; $6361: $80
	ld   b, c                                        ; $6362: $41
	add  b                                           ; $6363: $80
	ld   e, l                                        ; $6364: $5d
	add  b                                           ; $6365: $80
	rst  $30                                         ; $6366: $f7
	add  d                                           ; $6367: $82
	ld   b, c                                        ; $6368: $41
	add  b                                           ; $6369: $80
	add  [hl]                                        ; $636a: $86
	add  b                                           ; $636b: $80

jr_088_636c:
	add  d                                           ; $636c: $82
	add  b                                           ; $636d: $80

jr_088_636e:
	add  [hl]                                        ; $636e: $86
	add  b                                           ; $636f: $80

jr_088_6370:
	inc  b                                           ; $6370: $04
	add  b                                           ; $6371: $80
	ld   [hl], l                                     ; $6372: $75
	add  b                                           ; $6373: $80
	rst  JumpTable                                         ; $6374: $df
	add  d                                           ; $6375: $82
	inc  b                                           ; $6376: $04
	add  b                                           ; $6377: $80
	jr   nc, @-$7e                                   ; $6378: $30 $80

	jr   nz, jr_088_62fc                             ; $637a: $20 $80

	jr   nc, jr_088_62fe                             ; $637c: $30 $80

	db   $10                                         ; $637e: $10
	add  b                                           ; $637f: $80
	ret  nc                                          ; $6380: $d0

	add  b                                           ; $6381: $80
	ld   a, l                                        ; $6382: $7d
	add  b                                           ; $6383: $80
	rla                                              ; $6384: $17
	add  b                                           ; $6385: $80
	stop                                             ; $6386: $10 $00
	ld   e, b                                        ; $6388: $58
	add  a                                           ; $6389: $87
	ld   l, b                                        ; $638a: $68
	add  b                                           ; $638b: $80
	add  sp, -$7e                                    ; $638c: $e8 $82
	ld   l, b                                        ; $638e: $68
	nop                                              ; $638f: $00
	inc  e                                           ; $6390: $1c
	add  a                                           ; $6391: $87
	ld   [hl], $03                                   ; $6392: $36 $03
	dec  [hl]                                        ; $6394: $35
	scf                                              ; $6395: $37
	dec  [hl]                                        ; $6396: $35
	scf                                              ; $6397: $37

jr_088_6398:
	add  b                                           ; $6398: $80
	ld   [hl], $01                                   ; $6399: $36 $01
	ld   a, [hl+]                                    ; $639b: $2a
	jr   nc, jr_088_631e                             ; $639c: $30 $80

	jr   nz, jr_088_6320                             ; $639e: $20 $80

	jr   nc, @-$7c                                   ; $63a0: $30 $82

	db   $10                                         ; $63a2: $10
	add  b                                           ; $63a3: $80
	ld   a, l                                        ; $63a4: $7d
	add  b                                           ; $63a5: $80
	rst  $10                                         ; $63a6: $d7
	add  b                                           ; $63a7: $80
	db   $10                                         ; $63a8: $10
	add  b                                           ; $63a9: $80
	ld   h, c                                        ; $63aa: $61
	add  b                                           ; $63ab: $80
	jr   nz, jr_088_632e                             ; $63ac: $20 $80

	ld   h, c                                        ; $63ae: $61
	add  b                                           ; $63af: $80
	ld   b, c                                        ; $63b0: $41
	add  b                                           ; $63b1: $80
	ld   e, l                                        ; $63b2: $5d
	add  b                                           ; $63b3: $80
	rst  $30                                         ; $63b4: $f7
	add  d                                           ; $63b5: $82
	ld   b, c                                        ; $63b6: $41
	add  b                                           ; $63b7: $80
	add  [hl]                                        ; $63b8: $86
	add  b                                           ; $63b9: $80
	add  d                                           ; $63ba: $82
	add  b                                           ; $63bb: $80

jr_088_63bc:
	add  [hl]                                        ; $63bc: $86
	add  d                                           ; $63bd: $82

jr_088_63be:
	inc  b                                           ; $63be: $04
	add  b                                           ; $63bf: $80
	rst  JumpTable                                         ; $63c0: $df
	add  b                                           ; $63c1: $80

jr_088_63c2:
	ld   [hl], l                                     ; $63c2: $75
	add  b                                           ; $63c3: $80
	inc  b                                           ; $63c4: $04
	add  b                                           ; $63c5: $80
	jr   jr_088_6348                                 ; $63c6: $18 $80

	ld   [$1880], sp                                 ; $63c8: $08 $80 $18
	add  b                                           ; $63cb: $80
	db   $10                                         ; $63cc: $10
	add  b                                           ; $63cd: $80
	rla                                              ; $63ce: $17
	add  b                                           ; $63cf: $80
	ld   a, l                                        ; $63d0: $7d
	add  b                                           ; $63d1: $80
	ret  nc                                          ; $63d2: $d0

	add  b                                           ; $63d3: $80
	stop                                             ; $63d4: $10 $00
	ld   e, b                                        ; $63d6: $58
	add  a                                           ; $63d7: $87
	ld   l, b                                        ; $63d8: $68
	add  b                                           ; $63d9: $80
	add  sp, -$7e                                    ; $63da: $e8 $82
	ld   l, b                                        ; $63dc: $68
	nop                                              ; $63dd: $00
	inc  e                                           ; $63de: $1c
	add  a                                           ; $63df: $87
	ld   [hl], $03                                   ; $63e0: $36 $03
	dec  [hl]                                        ; $63e2: $35
	scf                                              ; $63e3: $37
	dec  [hl]                                        ; $63e4: $35
	scf                                              ; $63e5: $37
	add  b                                           ; $63e6: $80
	ld   [hl], $01                                   ; $63e7: $36 $01
	ld   a, [hl+]                                    ; $63e9: $2a
	jr   nc, jr_088_636c                             ; $63ea: $30 $80

	jr   nz, jr_088_636e                             ; $63ec: $20 $80

	jr   nc, jr_088_6370                             ; $63ee: $30 $80

	db   $10                                         ; $63f0: $10
	add  b                                           ; $63f1: $80
	rla                                              ; $63f2: $17
	add  b                                           ; $63f3: $80
	ld   a, l                                        ; $63f4: $7d
	add  b                                           ; $63f5: $80
	ret  nc                                          ; $63f6: $d0

	add  b                                           ; $63f7: $80
	db   $10                                         ; $63f8: $10
	add  b                                           ; $63f9: $80
	pop  bc                                          ; $63fa: $c1
	add  b                                           ; $63fb: $80
	add  b                                           ; $63fc: $80
	add  b                                           ; $63fd: $80
	pop  bc                                          ; $63fe: $c1
	add  d                                           ; $63ff: $82
	ld   b, c                                        ; $6400: $41
	add  b                                           ; $6401: $80
	rst  $30                                         ; $6402: $f7
	add  b                                           ; $6403: $80
	ld   e, l                                        ; $6404: $5d
	add  b                                           ; $6405: $80
	ld   b, c                                        ; $6406: $41
	add  b                                           ; $6407: $80
	adc  h                                           ; $6408: $8c
	add  b                                           ; $6409: $80
	adc  b                                           ; $640a: $88
	add  b                                           ; $640b: $80
	adc  h                                           ; $640c: $8c
	add  b                                           ; $640d: $80
	inc  b                                           ; $640e: $04
	add  b                                           ; $640f: $80
	ld   [hl], l                                     ; $6410: $75
	add  b                                           ; $6411: $80
	rst  JumpTable                                         ; $6412: $df
	add  d                                           ; $6413: $82
	inc  b                                           ; $6414: $04
	add  b                                           ; $6415: $80
	jr   jr_088_6398                                 ; $6416: $18 $80

	ld   [$1880], sp                                 ; $6418: $08 $80 $18
	add  b                                           ; $641b: $80
	db   $10                                         ; $641c: $10
	add  b                                           ; $641d: $80
	ret  nc                                          ; $641e: $d0

	add  b                                           ; $641f: $80
	ld   a, l                                        ; $6420: $7d
	add  b                                           ; $6421: $80
	rla                                              ; $6422: $17
	add  b                                           ; $6423: $80
	stop                                             ; $6424: $10 $00
	ld   e, b                                        ; $6426: $58
	add  a                                           ; $6427: $87
	ld   l, b                                        ; $6428: $68
	add  b                                           ; $6429: $80
	add  sp, -$7e                                    ; $642a: $e8 $82
	ld   l, b                                        ; $642c: $68
	nop                                              ; $642d: $00
	inc  e                                           ; $642e: $1c
	add  a                                           ; $642f: $87
	ld   [hl], $03                                   ; $6430: $36 $03
	dec  [hl]                                        ; $6432: $35
	scf                                              ; $6433: $37
	jr   c, @+$41                                    ; $6434: $38 $3f

	add  b                                           ; $6436: $80
	jr   nc, jr_088_643a                             ; $6437: $30 $01

	cpl                                              ; $6439: $2f

jr_088_643a:
	jr   nc, jr_088_63bc                             ; $643a: $30 $80

	jr   nz, jr_088_63be                             ; $643c: $20 $80

	jr   nc, jr_088_63c2                             ; $643e: $30 $82

	db   $10                                         ; $6440: $10
	add  b                                           ; $6441: $80
	rst  $38                                         ; $6442: $ff
	ld   bc, $ff00                                   ; $6443: $01 $00 $ff
	add  b                                           ; $6446: $80
	nop                                              ; $6447: $00
	ld   bc, $c13e                                   ; $6448: $01 $3e $c1
	add  b                                           ; $644b: $80
	add  b                                           ; $644c: $80
	add  b                                           ; $644d: $80
	pop  bc                                          ; $644e: $c1
	add  d                                           ; $644f: $82
	ld   b, c                                        ; $6450: $41
	add  b                                           ; $6451: $80
	rst  $38                                         ; $6452: $ff
	ld   bc, $ff00                                   ; $6453: $01 $00 $ff
	add  b                                           ; $6456: $80
	nop                                              ; $6457: $00
	ld   bc, $8679                                   ; $6458: $01 $79 $86

jr_088_645b:
	add  b                                           ; $645b: $80
	add  d                                           ; $645c: $82
	add  b                                           ; $645d: $80
	add  [hl]                                        ; $645e: $86
	add  d                                           ; $645f: $82
	inc  b                                           ; $6460: $04
	add  b                                           ; $6461: $80
	rst  $38                                         ; $6462: $ff
	ld   bc, $ff00                                   ; $6463: $01 $00 $ff
	add  b                                           ; $6466: $80
	nop                                              ; $6467: $00
	ld   bc, $18e7                                   ; $6468: $01 $e7 $18
	add  b                                           ; $646b: $80
	ld   [$1880], sp                                 ; $646c: $08 $80 $18
	add  d                                           ; $646f: $82
	db   $10                                         ; $6470: $10
	add  b                                           ; $6471: $80
	rst  $38                                         ; $6472: $ff
	ld   bc, $ff00                                   ; $6473: $01 $00 $ff
	add  b                                           ; $6476: $80
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	and  a                                           ; $6479: $a7
	add  a                                           ; $647a: $87
	ld   l, b                                        ; $647b: $68
	add  b                                           ; $647c: $80
	add  sp, $01                                     ; $647d: $e8 $01
	jr   z, @-$16                                    ; $647f: $28 $e8

	add  b                                           ; $6481: $80
	ld   [$cf01], sp                                 ; $6482: $08 $01 $cf
	ccf                                              ; $6485: $3f
	adc  h                                           ; $6486: $8c
	nop                                              ; $6487: $00
	add  b                                           ; $6488: $80
	rst  $38                                         ; $6489: $ff
	adc  h                                           ; $648a: $8c
	nop                                              ; $648b: $00
	add  b                                           ; $648c: $80

jr_088_648d:
	rst  $38                                         ; $648d: $ff
	adc  h                                           ; $648e: $8c
	nop                                              ; $648f: $00
	add  b                                           ; $6490: $80
	rst  $38                                         ; $6491: $ff
	adc  h                                           ; $6492: $8c
	nop                                              ; $6493: $00
	add  b                                           ; $6494: $80
	rst  $38                                         ; $6495: $ff
	adc  h                                           ; $6496: $8c
	nop                                              ; $6497: $00
	add  b                                           ; $6498: $80
	ld   hl, sp-$66                                  ; $6499: $f8 $9a
	nop                                              ; $649b: $00
	adc  b                                           ; $649c: $88
	ld   bc, $0082                                   ; $649d: $01 $82 $00
	add  d                                           ; $64a0: $82
	ld   bc, $008c                                   ; $64a1: $01 $8c $00
	add  b                                           ; $64a4: $80
	rst  $28                                         ; $64a5: $ef
	add  b                                           ; $64a6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a7: $cf
	add  b                                           ; $64a8: $80
	rst  JumpTable                                         ; $64a9: $df
	add  b                                           ; $64aa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ab: $cf
	add  b                                           ; $64ac: $80
	rst  $28                                         ; $64ad: $ef
	add  b                                           ; $64ae: $80
	cpl                                              ; $64af: $2f
	add  b                                           ; $64b0: $80
	add  d                                           ; $64b1: $82
	add  b                                           ; $64b2: $80
	add  sp, -$80                                    ; $64b3: $e8 $80
	rst  $28                                         ; $64b5: $ef
	adc  h                                           ; $64b6: $8c
	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80
	cp   [hl]                                        ; $64b9: $be
	add  b                                           ; $64ba: $80
	sbc  [hl]                                        ; $64bb: $9e
	add  b                                           ; $64bc: $80
	rst  JumpTable                                         ; $64bd: $df
	add  b                                           ; $64be: $80
	sbc  [hl]                                        ; $64bf: $9e
	add  b                                           ; $64c0: $80
	cp   [hl]                                        ; $64c1: $be
	add  b                                           ; $64c2: $80
	and  d                                           ; $64c3: $a2
	add  b                                           ; $64c4: $80

jr_088_64c5:
	ld   [$be82], sp                                 ; $64c5: $08 $82 $be
	adc  h                                           ; $64c8: $8c
	nop                                              ; $64c9: $00
	add  b                                           ; $64ca: $80
	ei                                               ; $64cb: $fb
	add  b                                           ; $64cc: $80
	ld   a, c                                        ; $64cd: $79
	add  b                                           ; $64ce: $80
	ld   a, l                                        ; $64cf: $7d
	add  b                                           ; $64d0: $80
	ld   a, c                                        ; $64d1: $79
	add  b                                           ; $64d2: $80
	ei                                               ; $64d3: $fb
	add  b                                           ; $64d4: $80
	adc  d                                           ; $64d5: $8a
	add  b                                           ; $64d6: $80

jr_088_64d7:
	jr   nz, jr_088_645b                             ; $64d7: $20 $82

	ei                                               ; $64d9: $fb
	adc  h                                           ; $64da: $8c
	nop                                              ; $64db: $00
	add  b                                           ; $64dc: $80
	rst  $28                                         ; $64dd: $ef
	add  b                                           ; $64de: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64df: $cf
	add  b                                           ; $64e0: $80
	rst  JumpTable                                         ; $64e1: $df
	add  b                                           ; $64e2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e3: $cf
	add  b                                           ; $64e4: $80
	rst  $28                                         ; $64e5: $ef
	add  b                                           ; $64e6: $80
	cpl                                              ; $64e7: $2f
	add  b                                           ; $64e8: $80
	add  d                                           ; $64e9: $82
	add  b                                           ; $64ea: $80
	add  sp, -$80                                    ; $64eb: $e8 $80
	rst  $28                                         ; $64ed: $ef
	adc  h                                           ; $64ee: $8c
	nop                                              ; $64ef: $00
	adc  d                                           ; $64f0: $8a
	add  b                                           ; $64f1: $80
	add  b                                           ; $64f2: $80
	nop                                              ; $64f3: $00
	add  d                                           ; $64f4: $82
	add  b                                           ; $64f5: $80
	adc  b                                           ; $64f6: $88
	ld   bc, $0082                                   ; $64f7: $01 $82 $00
	adc  d                                           ; $64fa: $8a
	ld   bc, $0082                                   ; $64fb: $01 $82 $00
	add  b                                           ; $64fe: $80
	ld   bc, $cf80                                   ; $64ff: $01 $80 $cf
	add  b                                           ; $6502: $80
	rst  JumpTable                                         ; $6503: $df
	add  b                                           ; $6504: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6505: $cf
	add  d                                           ; $6506: $82
	rst  $28                                         ; $6507: $ef
	add  b                                           ; $6508: $80
	add  d                                           ; $6509: $82
	add  b                                           ; $650a: $80
	jr   z, jr_088_648d                              ; $650b: $28 $80

	rst  $28                                         ; $650d: $ef
	add  b                                           ; $650e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $650f: $cf
	add  b                                           ; $6510: $80
	rst  JumpTable                                         ; $6511: $df
	add  b                                           ; $6512: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6513: $cf
	add  b                                           ; $6514: $80
	rst  $28                                         ; $6515: $ef
	add  b                                           ; $6516: $80
	add  sp, -$80                                    ; $6517: $e8 $80
	add  d                                           ; $6519: $82
	add  b                                           ; $651a: $80
	cpl                                              ; $651b: $2f
	add  b                                           ; $651c: $80
	rst  $28                                         ; $651d: $ef
	add  b                                           ; $651e: $80
	sbc  [hl]                                        ; $651f: $9e
	add  b                                           ; $6520: $80
	rst  JumpTable                                         ; $6521: $df
	add  b                                           ; $6522: $80
	sbc  [hl]                                        ; $6523: $9e
	add  b                                           ; $6524: $80
	cp   [hl]                                        ; $6525: $be
	add  b                                           ; $6526: $80
	and  d                                           ; $6527: $a2
	add  b                                           ; $6528: $80
	ld   [$be82], sp                                 ; $6529: $08 $82 $be
	add  b                                           ; $652c: $80
	ld   a, $80                                      ; $652d: $3e $80
	ld   a, a                                        ; $652f: $7f
	add  b                                           ; $6530: $80
	ld   a, $82                                      ; $6531: $3e $82
	cp   [hl]                                        ; $6533: $be
	add  b                                           ; $6534: $80
	ld   [$a280], sp                                 ; $6535: $08 $80 $a2
	add  b                                           ; $6538: $80
	cp   [hl]                                        ; $6539: $be
	add  b                                           ; $653a: $80
	ld   a, c                                        ; $653b: $79
	add  b                                           ; $653c: $80
	ld   a, l                                        ; $653d: $7d
	add  b                                           ; $653e: $80
	ld   a, c                                        ; $653f: $79
	add  d                                           ; $6540: $82
	ei                                               ; $6541: $fb
	add  b                                           ; $6542: $80
	jr   nz, jr_088_64c5                             ; $6543: $20 $80

	adc  d                                           ; $6545: $8a
	add  b                                           ; $6546: $80
	ei                                               ; $6547: $fb
	add  b                                           ; $6548: $80
	ld   [hl], e                                     ; $6549: $73
	add  b                                           ; $654a: $80
	ld   [hl], a                                     ; $654b: $77
	add  b                                           ; $654c: $80
	ld   [hl], e                                     ; $654d: $73
	add  b                                           ; $654e: $80
	ei                                               ; $654f: $fb
	add  b                                           ; $6550: $80
	adc  d                                           ; $6551: $8a
	add  b                                           ; $6552: $80
	jr   nz, jr_088_64d7                             ; $6553: $20 $82

	ei                                               ; $6555: $fb
	add  b                                           ; $6556: $80
	rst  $20                                         ; $6557: $e7
	add  b                                           ; $6558: $80
	rst  $30                                         ; $6559: $f7
	add  b                                           ; $655a: $80
	rst  $20                                         ; $655b: $e7
	add  b                                           ; $655c: $80
	rst  $28                                         ; $655d: $ef
	add  b                                           ; $655e: $80
	add  sp, -$80                                    ; $655f: $e8 $80
	add  d                                           ; $6561: $82
	add  b                                           ; $6562: $80
	cpl                                              ; $6563: $2f
	add  b                                           ; $6564: $80
	rst  $28                                         ; $6565: $ef
	add  b                                           ; $6566: $80
	rst  $20                                         ; $6567: $e7
	add  b                                           ; $6568: $80
	rst  $30                                         ; $6569: $f7
	add  b                                           ; $656a: $80
	rst  $20                                         ; $656b: $e7
	add  b                                           ; $656c: $80
	rst  $28                                         ; $656d: $ef
	add  b                                           ; $656e: $80
	cpl                                              ; $656f: $2f
	add  b                                           ; $6570: $80
	add  d                                           ; $6571: $82
	add  b                                           ; $6572: $80
	add  sp, -$80                                    ; $6573: $e8 $80
	rst  $28                                         ; $6575: $ef
	adc  b                                           ; $6576: $88
	add  b                                           ; $6577: $80
	add  b                                           ; $6578: $80
	nop                                              ; $6579: $00
	adc  h                                           ; $657a: $8c
	add  b                                           ; $657b: $80
	add  b                                           ; $657c: $80
	nop                                              ; $657d: $00
	add  d                                           ; $657e: $82
	add  b                                           ; $657f: $80
	adc  b                                           ; $6580: $88
	ld   bc, $0094                                   ; $6581: $01 $94 $00
	add  b                                           ; $6584: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6585: $cf
	add  b                                           ; $6586: $80
	rst  JumpTable                                         ; $6587: $df
	add  b                                           ; $6588: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6589: $cf
	add  d                                           ; $658a: $82
	rst  $28                                         ; $658b: $ef
	sub  h                                           ; $658c: $94
	nop                                              ; $658d: $00
	add  b                                           ; $658e: $80
	ld   a, $80                                      ; $658f: $3e $80
	ld   a, a                                        ; $6591: $7f
	add  b                                           ; $6592: $80
	ld   a, $82                                      ; $6593: $3e $82
	cp   [hl]                                        ; $6595: $be
	sub  h                                           ; $6596: $94
	nop                                              ; $6597: $00
	add  b                                           ; $6598: $80
	ld   a, c                                        ; $6599: $79
	add  b                                           ; $659a: $80
	ld   a, l                                        ; $659b: $7d
	add  b                                           ; $659c: $80
	ld   a, c                                        ; $659d: $79
	add  d                                           ; $659e: $82
	ei                                               ; $659f: $fb
	sub  h                                           ; $65a0: $94
	nop                                              ; $65a1: $00
	add  b                                           ; $65a2: $80
	rst  $20                                         ; $65a3: $e7
	add  b                                           ; $65a4: $80
	rst  $30                                         ; $65a5: $f7
	add  b                                           ; $65a6: $80
	rst  $20                                         ; $65a7: $e7
	add  d                                           ; $65a8: $82
	rst  $28                                         ; $65a9: $ef
	sub  h                                           ; $65aa: $94
	nop                                              ; $65ab: $00
	adc  b                                           ; $65ac: $88
	add  b                                           ; $65ad: $80
	rst  $38                                         ; $65ae: $ff
	nop                                              ; $65af: $00
	rst  $38                                         ; $65b0: $ff
	nop                                              ; $65b1: $00
	rst  $38                                         ; $65b2: $ff
	nop                                              ; $65b3: $00
	rst  $38                                         ; $65b4: $ff
	nop                                              ; $65b5: $00
	rst  $38                                         ; $65b6: $ff
	nop                                              ; $65b7: $00
	adc  a                                           ; $65b8: $8f
	nop                                              ; $65b9: $00
	rst  JumpTable                                         ; $65ba: $df
	nop                                              ; $65bb: $00
	add  b                                           ; $65bc: $80
	nop                                              ; $65bd: $00
	ld   [bc], a                                     ; $65be: $02
	inc  bc                                          ; $65bf: $03
	nop                                              ; $65c0: $00
	ld   bc, $0089                                   ; $65c1: $01 $89 $00
	inc  b                                           ; $65c4: $04
	ld   [bc], a                                     ; $65c5: $02
	nop                                              ; $65c6: $00
	rst  $38                                         ; $65c7: $ff
	nop                                              ; $65c8: $00
	rst  $38                                         ; $65c9: $ff
	adc  e                                           ; $65ca: $8b
	nop                                              ; $65cb: $00
	ld   [bc], a                                     ; $65cc: $02
	rst  $38                                         ; $65cd: $ff
	nop                                              ; $65ce: $00
	rst  $38                                         ; $65cf: $ff
	adc  e                                           ; $65d0: $8b
	nop                                              ; $65d1: $00
	ld   [bc], a                                     ; $65d2: $02
	rst  $38                                         ; $65d3: $ff
	nop                                              ; $65d4: $00
	rst  $38                                         ; $65d5: $ff
	adc  e                                           ; $65d6: $8b
	nop                                              ; $65d7: $00
	ld   [bc], a                                     ; $65d8: $02
	rst  $38                                         ; $65d9: $ff
	nop                                              ; $65da: $00
	rst  $38                                         ; $65db: $ff
	adc  e                                           ; $65dc: $8b
	nop                                              ; $65dd: $00
	ld   [bc], a                                     ; $65de: $02
	ret  nz                                          ; $65df: $c0

	nop                                              ; $65e0: $00
	add  b                                           ; $65e1: $80
	adc  c                                           ; $65e2: $89
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	ld   b, d                                        ; $65e5: $42
	adc  l                                           ; $65e6: $8d

Jump_088_65e7:
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	ld   [bc], a                                     ; $65e9: $02
	sub  l                                           ; $65ea: $95
	nop                                              ; $65eb: $00
	add  b                                           ; $65ec: $80
	ld   bc, $0780                                   ; $65ed: $01 $80 $07
	add  b                                           ; $65f0: $80
	rrca                                             ; $65f1: $0f
	add  b                                           ; $65f2: $80
	rra                                              ; $65f3: $1f
	add  b                                           ; $65f4: $80
	nop                                              ; $65f5: $00
	adc  h                                           ; $65f6: $8c
	ret  nz                                          ; $65f7: $c0

	adc  [hl]                                        ; $65f8: $8e
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	ld   b, b                                        ; $65fb: $40
	adc  l                                           ; $65fc: $8d

jr_088_65fd:
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	ld   b, d                                        ; $65ff: $42
	adc  l                                           ; $6600: $8d
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	ld   [bc], a                                     ; $6603: $02
	adc  h                                           ; $6604: $8c
	nop                                              ; $6605: $00
	ld   [bc], a                                     ; $6606: $02
	rra                                              ; $6607: $1f
	db   $10                                         ; $6608: $10
	rrca                                             ; $6609: $0f
	add  b                                           ; $660a: $80
	rlca                                             ; $660b: $07
	add  b                                           ; $660c: $80
	rrca                                             ; $660d: $0f
	add  b                                           ; $660e: $80
	ccf                                              ; $660f: $3f
	add  b                                           ; $6610: $80
	rrca                                             ; $6611: $0f
	add  b                                           ; $6612: $80
	ld   a, a                                        ; $6613: $7f
	add  d                                           ; $6614: $82
	ccf                                              ; $6615: $3f
	add  b                                           ; $6616: $80
	ret  nz                                          ; $6617: $c0

	add  d                                           ; $6618: $82
	add  b                                           ; $6619: $80
	add  b                                           ; $661a: $80
	ld   b, b                                        ; $661b: $40
	add  b                                           ; $661c: $80
	add  b                                           ; $661d: $80
	add  b                                           ; $661e: $80
	ld   h, b                                        ; $661f: $60
	add  b                                           ; $6620: $80
	ldh  [$80], a                                    ; $6621: $e0 $80
	ret  nz                                          ; $6623: $c0

	adc  [hl]                                        ; $6624: $8e
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	ld   b, b                                        ; $6627: $40
	adc  l                                           ; $6628: $8d
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	ld   b, d                                        ; $662b: $42
	adc  l                                           ; $662c: $8d
	nop                                              ; $662d: $00
	inc  b                                           ; $662e: $04
	ld   [hl+], a                                    ; $662f: $22
	rra                                              ; $6630: $1f
	ld   e, a                                        ; $6631: $5f
	rra                                              ; $6632: $1f
	adc  a                                           ; $6633: $8f
	add  c                                           ; $6634: $81
	rrca                                             ; $6635: $0f
	add  b                                           ; $6636: $80
	add  e                                           ; $6637: $83
	add  b                                           ; $6638: $80
	ld   hl, sp-$80                                  ; $6639: $f8 $80
	or   $80                                         ; $663b: $f6 $80
	ld   sp, hl                                      ; $663d: $f9
	ld   de, $9f80                                   ; $663e: $11 $80 $9f
	sub  [hl]                                        ; $6641: $96
	add  [hl]                                        ; $6642: $86
	ret  z                                           ; $6643: $c8

	ret  nz                                          ; $6644: $c0

	jp   z, $e6c0                                    ; $6645: $ca $c0 $e6

	ldh  [$64], a                                    ; $6648: $e0 $64
	ld   h, b                                        ; $664a: $60
	add  hl, bc                                      ; $664b: $09
	nop                                              ; $664c: $00
	add  [hl]                                        ; $664d: $86
	add  b                                           ; $664e: $80
	ld   a, a                                        ; $664f: $7f
	add  b                                           ; $6650: $80
	add  h                                           ; $6651: $84
	nop                                              ; $6652: $00
	ld   [$0240], sp                                 ; $6653: $08 $40 $02
	add  b                                           ; $6656: $80
	ld   bc, $00e0                                   ; $6657: $01 $e0 $00
	cp   h                                           ; $665a: $bc
	nop                                              ; $665b: $00
	sbc  a                                           ; $665c: $9f

jr_088_665d:
	adc  c                                           ; $665d: $89
	nop                                              ; $665e: $00
	ld   [bc], a                                     ; $665f: $02
	add  b                                           ; $6660: $80
	nop                                              ; $6661: $00
	ret  nz                                          ; $6662: $c0

	add  b                                           ; $6663: $80
	add  b                                           ; $6664: $80
	adc  l                                           ; $6665: $8d
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	ld   b, d                                        ; $6668: $42
	adc  l                                           ; $6669: $8d
	nop                                              ; $666a: $00
	ld   bc, $fc01                                   ; $666b: $01 $01 $fc
	add  b                                           ; $666e: $80
	ldh  [$80], a                                    ; $666f: $e0 $80
	ld   h, a                                        ; $6671: $67
	add  d                                           ; $6672: $82
	ld   [hl], a                                     ; $6673: $77
	add  b                                           ; $6674: $80
	ld   a, d                                        ; $6675: $7a
	add  b                                           ; $6676: $80
	ld   hl, sp-$80                                  ; $6677: $f8 $80
	db   $fd                                         ; $6679: $fd
	add  b                                           ; $667a: $80
	jr   nz, jr_088_65fd                             ; $667b: $20 $80

	ret  nz                                          ; $667d: $c0

	add  b                                           ; $667e: $80
	nop                                              ; $667f: $00
	add  b                                           ; $6680: $80
	ret  nz                                          ; $6681: $c0

	add  b                                           ; $6682: $80
	ld   hl, sp-$80                                  ; $6683: $f8 $80
	inc  a                                           ; $6685: $3c
	add  b                                           ; $6686: $80
	ld   c, $18                                      ; $6687: $0e $18
	rst  $38                                         ; $6689: $ff
	db   $fc                                         ; $668a: $fc
	inc  bc                                          ; $668b: $03
	nop                                              ; $668c: $00
	ld   c, $00                                      ; $668d: $0e $00
	ld   de, $2600                                   ; $668f: $11 $00 $26
	nop                                              ; $6692: $00
	ld   [bc], a                                     ; $6693: $02
	inc  bc                                          ; $6694: $03
	ld   b, e                                        ; $6695: $43
	inc  bc                                          ; $6696: $03
	rlca                                             ; $6697: $07
	inc  bc                                          ; $6698: $03
	add  e                                           ; $6699: $83
	nop                                              ; $669a: $00
	jr   nz, jr_088_665d                             ; $669b: $20 $c0

	ret  nc                                          ; $669d: $d0

	ret  nz                                          ; $669e: $c0

	ret  z                                           ; $669f: $c8

	ret  nz                                          ; $66a0: $c0

	ld   hl, sp-$80                                  ; $66a1: $f8 $80
	ld   b, b                                        ; $66a3: $40
	add  b                                           ; $66a4: $80
	nop                                              ; $66a5: $00
	add  b                                           ; $66a6: $80
	ld   [hl], b                                     ; $66a7: $70
	add  b                                           ; $66a8: $80
	cp   $01                                         ; $66a9: $fe $01
	ld   a, h                                        ; $66ab: $7c
	inc  a                                           ; $66ac: $3c
	adc  l                                           ; $66ad: $8d
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	ld   b, d                                        ; $66b0: $42
	adc  c                                           ; $66b1: $89
	nop                                              ; $66b2: $00
	dec  b                                           ; $66b3: $05
	ld   bc, $0300                                   ; $66b4: $01 $00 $03
	nop                                              ; $66b7: $00
	ld   [bc], a                                     ; $66b8: $02
	db   $fd                                         ; $66b9: $fd
	add  d                                           ; $66ba: $82
	ld   hl, sp-$80                                  ; $66bb: $f8 $80
	ld   [hl], b                                     ; $66bd: $70
	add  b                                           ; $66be: $80
	rlca                                             ; $66bf: $07
	inc  b                                           ; $66c0: $04
	rst  $38                                         ; $66c1: $ff
	nop                                              ; $66c2: $00
	rst  $38                                         ; $66c3: $ff
	nop                                              ; $66c4: $00
	rst  $38                                         ; $66c5: $ff
	add  b                                           ; $66c6: $80
	nop                                              ; $66c7: $00
	add  b                                           ; $66c8: $80
	ld   hl, sp+$01                                  ; $66c9: $f8 $01
	ldh  a, [rAUD1SWEEP]                             ; $66cb: $f0 $10
	add  c                                           ; $66cd: $81
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	ldh  [$80], a                                    ; $66d0: $e0 $80
	ret  nz                                          ; $66d2: $c0

	inc  bc                                          ; $66d3: $03
	nop                                              ; $66d4: $00
	rst  $38                                         ; $66d5: $ff
	nop                                              ; $66d6: $00
	rst  $38                                         ; $66d7: $ff
	add  d                                           ; $66d8: $82
	nop                                              ; $66d9: $00
	add  h                                           ; $66da: $84
	ld   bc, $0380                                   ; $66db: $01 $80 $03
	inc  bc                                          ; $66de: $03
	nop                                              ; $66df: $00
	rst  $38                                         ; $66e0: $ff
	nop                                              ; $66e1: $00
	rst  $38                                         ; $66e2: $ff
	add  b                                           ; $66e3: $80
	nop                                              ; $66e4: $00
	add  b                                           ; $66e5: $80
	db   $fc                                         ; $66e6: $fc
	add  d                                           ; $66e7: $82
	ld   hl, sp-$7e                                  ; $66e8: $f8 $82
	ldh  a, [rTIMA]                                  ; $66ea: $f0 $05
	nop                                              ; $66ec: $00
	rst  $38                                         ; $66ed: $ff
	nop                                              ; $66ee: $00
	rst  $38                                         ; $66ef: $ff
	nop                                              ; $66f0: $00
	ld   b, b                                        ; $66f1: $40
	adc  c                                           ; $66f2: $89
	nop                                              ; $66f3: $00
	ld   [bc], a                                     ; $66f4: $02
	add  b                                           ; $66f5: $80
	nop                                              ; $66f6: $00
	ret  nz                                          ; $66f7: $c0

	add  l                                           ; $66f8: $85
	nop                                              ; $66f9: $00
	inc  d                                           ; $66fa: $14
	cp   [hl]                                        ; $66fb: $be
	ld   bc, $03a2                                   ; $66fc: $01 $a2 $03
	and  l                                           ; $66ff: $a5
	rlca                                             ; $6700: $07
	ld   c, a                                        ; $6701: $4f
	dec  bc                                          ; $6702: $0b
	rra                                              ; $6703: $1f
	rla                                              ; $6704: $17
	jr   nz, jr_088_6738                             ; $6705: $20 $31

	add  hl, sp                                      ; $6707: $39
	ld   a, $50                                      ; $6708: $3e $50
	ld   a, [hl]                                     ; $670a: $7e
	ld   h, [hl]                                     ; $670b: $66
	ld   a, a                                        ; $670c: $7f
	ld   a, l                                        ; $670d: $7d
	ld   a, a                                        ; $670e: $7f
	ld   a, [hl]                                     ; $670f: $7e
	add  c                                           ; $6710: $81
	ld   a, a                                        ; $6711: $7f
	ld   b, $07                                      ; $6712: $06 $07
	ccf                                              ; $6714: $3f
	dec  hl                                          ; $6715: $2b
	ccf                                              ; $6716: $3f
	ld   e, $19                                      ; $6717: $1e $19
	add  hl, bc                                      ; $6719: $09
	add  b                                           ; $671a: $80
	ld   [$0c0b], sp                                 ; $671b: $08 $0b $0c
	ld   b, h                                        ; $671e: $44
	ld   b, $56                                      ; $671f: $06 $56
	ld   b, $12                                      ; $6721: $06 $12
	ld   [bc], a                                     ; $6723: $02
	ld   e, $00                                      ; $6724: $1e $00
	ld   h, b                                        ; $6726: $60
	nop                                              ; $6727: $00
	add  b                                           ; $6728: $80
	sub  c                                           ; $6729: $91

jr_088_672a:
	nop                                              ; $672a: $00
	inc  b                                           ; $672b: $04
	ld   a, b                                        ; $672c: $78
	rst  $38                                         ; $672d: $ff
	ld   [hl], b                                     ; $672e: $70
	rst  $38                                         ; $672f: $ff
	rst  $20                                         ; $6730: $e7
	add  c                                           ; $6731: $81
	rst  $38                                         ; $6732: $ff
	ld   [$ff8f], sp                                 ; $6733: $08 $8f $ff
	ld   e, $ff                                      ; $6736: $1e $ff

jr_088_6738:
	sbc  e                                           ; $6738: $9b
	ld   a, [hl]                                     ; $6739: $7e
	ld   h, d                                        ; $673a: $62
	adc  $4c                                         ; $673b: $ce $4c
	add  b                                           ; $673d: $80
	sub  h                                           ; $673e: $94
	nop                                              ; $673f: $00
	and  h                                           ; $6740: $a4

jr_088_6741:
	add  b                                           ; $6741: $80
	ldh  [rP1], a                                    ; $6742: $e0 $00
	and  b                                           ; $6744: $a0
	add  c                                           ; $6745: $81
	ret  nz                                          ; $6746: $c0

	add  b                                           ; $6747: $80
	ldh  [rDIV], a                                   ; $6748: $e0 $04
	adc  b                                           ; $674a: $88
	ld   hl, sp+$20                                  ; $674b: $f8 $20
	ldh  a, [$e0]                                    ; $674d: $f0 $e0
	sbc  l                                           ; $674f: $9d
	nop                                              ; $6750: $00
	ld   de, $fea1                                   ; $6751: $11 $a1 $fe
	rlca                                             ; $6754: $07
	rst  $38                                         ; $6755: $ff
	dec  de                                          ; $6756: $1b
	rst  $38                                         ; $6757: $ff
	cp   h                                           ; $6758: $bc
	rst  $38                                         ; $6759: $ff
	ccf                                              ; $675a: $3f
	rst  $38                                         ; $675b: $ff
	rst  $30                                         ; $675c: $f7
	rst  $38                                         ; $675d: $ff
	jp   nc, $bcbe                                   ; $675e: $d2 $be $bc

	dec  a                                           ; $6761: $3d
	dec  l                                           ; $6762: $2d
	ld   a, [hl+]                                    ; $6763: $2a
	add  b                                           ; $6764: $80
	ld   [hl+], a                                    ; $6765: $22
	ld   bc, $3323                                   ; $6766: $01 $23 $33
	add  d                                           ; $6769: $82
	ccf                                              ; $676a: $3f
	nop                                              ; $676b: $00
	cpl                                              ; $676c: $2f
	add  b                                           ; $676d: $80
	ccf                                              ; $676e: $3f
	ld   bc, $797f                                   ; $676f: $01 $7f $79
	add  b                                           ; $6772: $80
	ld   a, a                                        ; $6773: $7f
	inc  b                                           ; $6774: $04
	cp   a                                           ; $6775: $bf
	and  d                                           ; $6776: $a2

jr_088_6777:
	ld   a, a                                        ; $6777: $7f
	ld   a, b                                        ; $6778: $78

jr_088_6779:
	ld   c, $80                                      ; $6779: $0e $80

jr_088_677b:
	nop                                              ; $677b: $00
	ld   a, [bc]                                     ; $677c: $0a
	stop                                             ; $677d: $10 $00
	dec  [hl]                                        ; $677f: $35
	nop                                              ; $6780: $00
	ccf                                              ; $6781: $3f
	nop                                              ; $6782: $00
	rra                                              ; $6783: $1f
	nop                                              ; $6784: $00
	rrca                                             ; $6785: $0f
	nop                                              ; $6786: $00
	dec  b                                           ; $6787: $05
	adc  e                                           ; $6788: $8b
	nop                                              ; $6789: $00
	dec  b                                           ; $678a: $05
	rst  $38                                         ; $678b: $ff
	nop                                              ; $678c: $00
	ld   [$0800], sp                                 ; $678d: $08 $00 $08
	nop                                              ; $6790: $00
	add  b                                           ; $6791: $80
	add  b                                           ; $6792: $80
	add  hl, bc                                      ; $6793: $09
	ld   [bc], a                                     ; $6794: $02
	add  b                                           ; $6795: $80
	add  l                                           ; $6796: $85
	ret  nz                                          ; $6797: $c0

	push bc                                          ; $6798: $c5
	ret  nz                                          ; $6799: $c0

	ld   b, d                                        ; $679a: $42
	ld   h, b                                        ; $679b: $60
	nop                                              ; $679c: $00
	add  b                                           ; $679d: $80
	add  b                                           ; $679e: $80
	ret  nz                                          ; $679f: $c0

	ld   [bc], a                                     ; $67a0: $02
	ld   hl, $f1f0                                   ; $67a1: $21 $f0 $f1
	add  l                                           ; $67a4: $85
	ldh  a, [rP1]                                    ; $67a5: $f0 $00
	jr   nc, jr_088_672a                             ; $67a7: $30 $81

	and  b                                           ; $67a9: $a0
	inc  b                                           ; $67aa: $04
	ld   [hl+], a                                    ; $67ab: $22
	ld   b, b                                        ; $67ac: $40
	ld   c, d                                        ; $67ad: $4a
	nop                                              ; $67ae: $00
	ld   [$0081], sp                                 ; $67af: $08 $81 $00
	ld   [$0055], sp                                 ; $67b2: $08 $55 $00
	rst  $38                                         ; $67b5: $ff
	nop                                              ; $67b6: $00
	rst  $38                                         ; $67b7: $ff
	nop                                              ; $67b8: $00
	rst  $38                                         ; $67b9: $ff
	nop                                              ; $67ba: $00
	ld   d, l                                        ; $67bb: $55
	adc  h                                           ; $67bc: $8c
	nop                                              ; $67bd: $00
	add  b                                           ; $67be: $80
	jr   nz, jr_088_6741                             ; $67bf: $20 $80

	nop                                              ; $67c1: $00
	add  b                                           ; $67c2: $80

jr_088_67c3:
	ld   [rRAMG], sp                                 ; $67c3: $08 $00 $00
	add  d                                           ; $67c6: $82
	inc  bc                                          ; $67c7: $03
	add  d                                           ; $67c8: $82
	rlca                                             ; $67c9: $07
	add  d                                           ; $67ca: $82
	rrca                                             ; $67cb: $0f
	adc  d                                           ; $67cc: $8a
	nop                                              ; $67cd: $00
	ld   b, $40                                      ; $67ce: $06 $40
	nop                                              ; $67d0: $00
	ldh  [rP1], a                                    ; $67d1: $e0 $00
	ldh  [rP1], a                                    ; $67d3: $e0 $00
	ld   b, b                                        ; $67d5: $40
	sub  h                                           ; $67d6: $94
	nop                                              ; $67d7: $00
	add  b                                           ; $67d8: $80
	ld   b, $80                                      ; $67d9: $06 $80
	rlca                                             ; $67db: $07
	dec  b                                           ; $67dc: $05
	inc  bc                                          ; $67dd: $03
	ld   b, e                                        ; $67de: $43
	ld   bc, $0151                                   ; $67df: $01 $51 $01
	ld   de, $0180                                   ; $67e2: $11 $80 $01
	dec  b                                           ; $67e5: $05
	nop                                              ; $67e6: $00
	ld   b, b                                        ; $67e7: $40
	nop                                              ; $67e8: $00
	ret  nz                                          ; $67e9: $c0

	nop                                              ; $67ea: $00
	add  b                                           ; $67eb: $80
	sbc  h                                           ; $67ec: $9c
	nop                                              ; $67ed: $00
	add  d                                           ; $67ee: $82
	ld   bc, $0a80                                   ; $67ef: $01 $80 $0a
	add  b                                           ; $67f2: $80
	ld   a, [de]                                     ; $67f3: $1a
	add  b                                           ; $67f4: $80
	jr   jr_088_6777                                 ; $67f5: $18 $80

	jr   nc, jr_088_6779                             ; $67f7: $30 $80

	jr   nz, jr_088_677b                             ; $67f9: $20 $80

	db   $10                                         ; $67fb: $10
	add  d                                           ; $67fc: $82
	nop                                              ; $67fd: $00
	add  b                                           ; $67fe: $80
	ret  nz                                          ; $67ff: $c0

	add  b                                           ; $6800: $80
	ldh  a, [$80]                                    ; $6801: $f0 $80
	add  b                                           ; $6803: $80
	add  d                                           ; $6804: $82
	ret  nz                                          ; $6805: $c0

	add  b                                           ; $6806: $80
	nop                                              ; $6807: $00
	ld   [bc], a                                     ; $6808: $02
	add  hl, bc                                      ; $6809: $09
	ld   c, $07                                      ; $680a: $0e $07
	add  b                                           ; $680c: $80
	dec  c                                           ; $680d: $0d
	add  b                                           ; $680e: $80
	dec  bc                                          ; $680f: $0b
	add  b                                           ; $6810: $80
	rrca                                             ; $6811: $0f
	add  b                                           ; $6812: $80
	ld   b, $8e                                      ; $6813: $06 $8e
	nop                                              ; $6815: $00
	add  b                                           ; $6816: $80
	inc  bc                                          ; $6817: $03
	add  b                                           ; $6818: $80
	rlca                                             ; $6819: $07
	ld   [bc], a                                     ; $681a: $02
	ld   c, $0f                                      ; $681b: $0e $0f
	ld   e, $81                                      ; $681d: $1e $81
	rra                                              ; $681f: $1f
	add  b                                           ; $6820: $80
	ccf                                              ; $6821: $3f
	xor  a                                           ; $6822: $af
	nop                                              ; $6823: $00
	add  b                                           ; $6824: $80
	sub  b                                           ; $6825: $90
	add  b                                           ; $6826: $80
	db   $10                                         ; $6827: $10
	inc  c                                           ; $6828: $0c
	jr   nz, jr_088_6860                             ; $6829: $20 $35

	ld   b, b                                        ; $682b: $40
	cp   a                                           ; $682c: $bf
	ldh  [rIE], a                                    ; $682d: $e0 $ff
	ldh  a, [rIE]                                    ; $682f: $f0 $ff
	ld   hl, sp-$41                                  ; $6831: $f8 $bf
	cp   h                                           ; $6833: $bc
	dec  a                                           ; $6834: $3d
	inc  a                                           ; $6835: $3c
	add  b                                           ; $6836: $80
	call c, $6080                                    ; $6837: $dc $80 $60
	add  c                                           ; $683a: $81
	nop                                              ; $683b: $00
	add  b                                           ; $683c: $80
	ld   [de], a                                     ; $683d: $12
	add  b                                           ; $683e: $80
	nop                                              ; $683f: $00
	add  d                                           ; $6840: $82
	jr   z, jr_088_67c3                              ; $6841: $28 $80

	ld   h, b                                        ; $6843: $60
	add  b                                           ; $6844: $80
	ld   [hl], b                                     ; $6845: $70
	ld   [$faf8], sp                                 ; $6846: $08 $f8 $fa
	db   $fc                                         ; $6849: $fc
	cp   $f0                                         ; $684a: $fe $f0
	or   $fe                                         ; $684c: $f6 $fe
	ld   b, $fe                                      ; $684e: $06 $fe
	add  b                                           ; $6850: $80
	db   $fc                                         ; $6851: $fc
	adc  h                                           ; $6852: $8c
	nop                                              ; $6853: $00
	ld   [bc], a                                     ; $6854: $02
	ld   [$0800], sp                                 ; $6855: $08 $00 $08
	add  c                                           ; $6858: $81
	nop                                              ; $6859: $00
	ld   b, $02                                      ; $685a: $06 $02
	nop                                              ; $685c: $00
	rlca                                             ; $685d: $07
	nop                                              ; $685e: $00
	rlca                                             ; $685f: $07

jr_088_6860:
	nop                                              ; $6860: $00
	ld   [bc], a                                     ; $6861: $02
	add  e                                           ; $6862: $83
	nop                                              ; $6863: $00
	ld   [bc], a                                     ; $6864: $02
	ld   bc, $0100                                   ; $6865: $01 $00 $01
	adc  e                                           ; $6868: $8b
	nop                                              ; $6869: $00
	ld   [bc], a                                     ; $686a: $02
	ld   [$0800], sp                                 ; $686b: $08 $00 $08
	add  c                                           ; $686e: $81
	nop                                              ; $686f: $00
	ld   [$0055], sp                                 ; $6870: $08 $55 $00
	rst  $38                                         ; $6873: $ff
	nop                                              ; $6874: $00
	rst  $38                                         ; $6875: $ff
	nop                                              ; $6876: $00
	rst  $38                                         ; $6877: $ff
	nop                                              ; $6878: $00
	ld   d, l                                        ; $6879: $55
	add  c                                           ; $687a: $81
	nop                                              ; $687b: $00
	ld   c, $80                                      ; $687c: $0e $80
	nop                                              ; $687e: $00
	ld   d, l                                        ; $687f: $55
	nop                                              ; $6880: $00
	ccf                                              ; $6881: $3f
	nop                                              ; $6882: $00
	rra                                              ; $6883: $1f
	nop                                              ; $6884: $00
	rrca                                             ; $6885: $0f
	nop                                              ; $6886: $00
	rlca                                             ; $6887: $07

jr_088_6888:
	nop                                              ; $6888: $00
	inc  bc                                          ; $6889: $03

jr_088_688a:
	nop                                              ; $688a: $00
	ld   bc, $00ff                                   ; $688b: $01 $ff $00
	rst  $38                                         ; $688e: $ff
	nop                                              ; $688f: $00
	rst  $38                                         ; $6890: $ff
	nop                                              ; $6891: $00
	rst  $38                                         ; $6892: $ff
	nop                                              ; $6893: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6894: $cf
	nop                                              ; $6895: $00
	ld   d, a                                        ; $6896: $57
	ld   bc, $0082                                   ; $6897: $01 $82 $00

jr_088_689a:
	add  b                                           ; $689a: $80
	ccf                                              ; $689b: $3f
	ld   bc, $3f20                                   ; $689c: $01 $20 $3f
	add  c                                           ; $689f: $81
	jr   nc, jr_088_68a3                             ; $68a0: $30 $01

	scf                                              ; $68a2: $37

jr_088_68a3:
	inc  [hl]                                        ; $68a3: $34
	add  b                                           ; $68a4: $80
	scf                                              ; $68a5: $37
	ld   bc, $1a36                                   ; $68a6: $01 $36 $1a
	add  c                                           ; $68a9: $81
	nop                                              ; $68aa: $00
	add  b                                           ; $68ab: $80
	rst  $38                                         ; $68ac: $ff
	ld   bc, $ff00                                   ; $68ad: $01 $00 $ff
	add  c                                           ; $68b0: $81
	nop                                              ; $68b1: $00
	ld   bc, $10ff                                   ; $68b2: $01 $ff $10
	add  b                                           ; $68b5: $80

jr_088_68b6:
	rst  $38                                         ; $68b6: $ff
	nop                                              ; $68b7: $00

jr_088_68b8:
	db   $10                                         ; $68b8: $10
	add  d                                           ; $68b9: $82
	nop                                              ; $68ba: $00
	add  b                                           ; $68bb: $80
	rst  $38                                         ; $68bc: $ff
	ld   bc, $ff00                                   ; $68bd: $01 $00 $ff
	add  c                                           ; $68c0: $81
	nop                                              ; $68c1: $00
	ld   bc, $41ff                                   ; $68c2: $01 $ff $41
	add  b                                           ; $68c5: $80
	rst  $38                                         ; $68c6: $ff
	nop                                              ; $68c7: $00
	ld   b, c                                        ; $68c8: $41
	add  d                                           ; $68c9: $82
	nop                                              ; $68ca: $00
	add  b                                           ; $68cb: $80
	rst  $38                                         ; $68cc: $ff
	ld   bc, $ff00                                   ; $68cd: $01 $00 $ff
	add  c                                           ; $68d0: $81
	nop                                              ; $68d1: $00
	ld   bc, $04ff                                   ; $68d2: $01 $ff $04
	add  b                                           ; $68d5: $80
	rst  $38                                         ; $68d6: $ff
	nop                                              ; $68d7: $00

jr_088_68d8:
	inc  b                                           ; $68d8: $04
	add  d                                           ; $68d9: $82

jr_088_68da:
	nop                                              ; $68da: $00
	add  b                                           ; $68db: $80
	rst  $38                                         ; $68dc: $ff
	ld   bc, $ff00                                   ; $68dd: $01 $00 $ff
	add  c                                           ; $68e0: $81
	nop                                              ; $68e1: $00
	ld   bc, $10ff                                   ; $68e2: $01 $ff $10
	add  b                                           ; $68e5: $80
	rst  $38                                         ; $68e6: $ff
	nop                                              ; $68e7: $00

jr_088_68e8:
	db   $10                                         ; $68e8: $10
	add  d                                           ; $68e9: $82
	nop                                              ; $68ea: $00
	add  b                                           ; $68eb: $80
	ld   hl, sp+$01                                  ; $68ec: $f8 $01
	ld   [$81f8], sp                                 ; $68ee: $08 $f8 $81
	jr   z, @+$03                                    ; $68f1: $28 $01

	add  sp, $68                                     ; $68f3: $e8 $68
	add  b                                           ; $68f5: $80
	add  sp, $01                                     ; $68f6: $e8 $01

jr_088_68f8:
	ld   l, b                                        ; $68f8: $68
	inc  e                                           ; $68f9: $1c
	add  l                                           ; $68fa: $85
	ld   [hl], $80                                   ; $68fb: $36 $80
	scf                                              ; $68fd: $37
	ld   [bc], a                                     ; $68fe: $02
	dec  [hl]                                        ; $68ff: $35
	scf                                              ; $6900: $37
	inc  [hl]                                        ; $6901: $34
	add  c                                           ; $6902: $81
	ld   [hl], $01                                   ; $6903: $36 $01
	ld   a, [hl+]                                    ; $6905: $2a
	jr   nc, jr_088_6888                             ; $6906: $30 $80

	jr   nz, jr_088_688a                             ; $6908: $20 $80

	jr   nc, @-$7e                                   ; $690a: $30 $80

	db   $10                                         ; $690c: $10
	add  b                                           ; $690d: $80
	ret  nc                                          ; $690e: $d0

	add  b                                           ; $690f: $80
	ld   a, l                                        ; $6910: $7d
	add  b                                           ; $6911: $80
	rla                                              ; $6912: $17
	add  b                                           ; $6913: $80
	db   $10                                         ; $6914: $10
	add  b                                           ; $6915: $80
	ld   h, c                                        ; $6916: $61
	add  b                                           ; $6917: $80
	jr   nz, jr_088_689a                             ; $6918: $20 $80

jr_088_691a:
	ld   h, c                                        ; $691a: $61
	add  b                                           ; $691b: $80

jr_088_691c:
	ld   b, c                                        ; $691c: $41
	add  b                                           ; $691d: $80

jr_088_691e:
	ld   e, l                                        ; $691e: $5d
	add  b                                           ; $691f: $80
	rst  $30                                         ; $6920: $f7
	add  d                                           ; $6921: $82
	ld   b, c                                        ; $6922: $41
	add  b                                           ; $6923: $80
	add  [hl]                                        ; $6924: $86
	add  b                                           ; $6925: $80
	add  d                                           ; $6926: $82
	add  b                                           ; $6927: $80
	add  [hl]                                        ; $6928: $86
	add  b                                           ; $6929: $80
	inc  b                                           ; $692a: $04
	add  b                                           ; $692b: $80
	ld   [hl], l                                     ; $692c: $75
	add  b                                           ; $692d: $80
	rst  JumpTable                                         ; $692e: $df
	add  d                                           ; $692f: $82
	nop                                              ; $6930: $00
	add  b                                           ; $6931: $80
	jr   nc, @-$7e                                   ; $6932: $30 $80

	jr   nz, jr_088_68b6                             ; $6934: $20 $80

	jr   nc, jr_088_68b8                             ; $6936: $30 $80

	db   $10                                         ; $6938: $10
	add  b                                           ; $6939: $80
	ret  nc                                          ; $693a: $d0

	add  b                                           ; $693b: $80
	ld   a, l                                        ; $693c: $7d
	add  b                                           ; $693d: $80
	rla                                              ; $693e: $17
	add  b                                           ; $693f: $80

jr_088_6940:
	stop                                             ; $6940: $10 $00
	ld   e, b                                        ; $6942: $58
	add  a                                           ; $6943: $87
	ld   l, b                                        ; $6944: $68
	add  b                                           ; $6945: $80
	add  sp, -$7e                                    ; $6946: $e8 $82
	ld   l, b                                        ; $6948: $68
	nop                                              ; $6949: $00
	inc  e                                           ; $694a: $1c
	add  a                                           ; $694b: $87
	ld   [hl], $03                                   ; $694c: $36 $03
	dec  [hl]                                        ; $694e: $35
	scf                                              ; $694f: $37
	dec  [hl]                                        ; $6950: $35
	scf                                              ; $6951: $37
	add  b                                           ; $6952: $80
	ld   [hl], $01                                   ; $6953: $36 $01
	ld   a, [hl+]                                    ; $6955: $2a
	jr   nc, jr_088_68d8                             ; $6956: $30 $80

	jr   nz, jr_088_68da                             ; $6958: $20 $80

	jr   nc, @-$7c                                   ; $695a: $30 $82

	db   $10                                         ; $695c: $10
	add  b                                           ; $695d: $80
	ld   a, l                                        ; $695e: $7d
	add  b                                           ; $695f: $80
	rst  $10                                         ; $6960: $d7
	add  b                                           ; $6961: $80
	db   $10                                         ; $6962: $10
	add  b                                           ; $6963: $80
	ld   h, c                                        ; $6964: $61
	add  b                                           ; $6965: $80
	jr   nz, jr_088_68e8                             ; $6966: $20 $80

	ld   h, c                                        ; $6968: $61
	add  b                                           ; $6969: $80
	ld   b, c                                        ; $696a: $41
	add  b                                           ; $696b: $80
	ld   e, l                                        ; $696c: $5d
	add  b                                           ; $696d: $80
	rst  $30                                         ; $696e: $f7
	add  d                                           ; $696f: $82
	ld   b, b                                        ; $6970: $40
	add  h                                           ; $6971: $84
	add  b                                           ; $6972: $80
	adc  b                                           ; $6973: $88
	nop                                              ; $6974: $00
	add  b                                           ; $6975: $80
	jr   jr_088_68f8                                 ; $6976: $18 $80

	ld   [$1880], sp                                 ; $6978: $08 $80 $18
	add  b                                           ; $697b: $80
	db   $10                                         ; $697c: $10
	add  b                                           ; $697d: $80
	rla                                              ; $697e: $17
	add  b                                           ; $697f: $80
	dec  e                                           ; $6980: $1d
	add  d                                           ; $6981: $82
	stop                                             ; $6982: $10 $00
	ld   e, b                                        ; $6984: $58
	add  a                                           ; $6985: $87
	ld   l, b                                        ; $6986: $68
	add  b                                           ; $6987: $80
	add  sp, -$7e                                    ; $6988: $e8 $82
	ld   l, b                                        ; $698a: $68
	nop                                              ; $698b: $00
	inc  e                                           ; $698c: $1c
	add  a                                           ; $698d: $87
	ld   [hl], $03                                   ; $698e: $36 $03
	dec  [hl]                                        ; $6990: $35
	scf                                              ; $6991: $37
	dec  [hl]                                        ; $6992: $35
	scf                                              ; $6993: $37
	add  b                                           ; $6994: $80
	ld   [hl], $01                                   ; $6995: $36 $01
	ld   a, [hl+]                                    ; $6997: $2a
	jr   nc, jr_088_691a                             ; $6998: $30 $80

	jr   nz, jr_088_691c                             ; $699a: $20 $80

	jr   nc, jr_088_691e                             ; $699c: $30 $80

	db   $10                                         ; $699e: $10
	add  b                                           ; $699f: $80
	rla                                              ; $69a0: $17
	add  b                                           ; $69a1: $80
	ld   a, l                                        ; $69a2: $7d
	add  b                                           ; $69a3: $80
	ret  nc                                          ; $69a4: $d0

	add  b                                           ; $69a5: $80
	ld   de, $c080                                   ; $69a6: $11 $80 $c0
	add  b                                           ; $69a9: $80
	add  b                                           ; $69aa: $80
	add  b                                           ; $69ab: $80
	ret  nz                                          ; $69ac: $c0

	add  d                                           ; $69ad: $82
	ld   b, b                                        ; $69ae: $40
	add  b                                           ; $69af: $80
	pop  bc                                          ; $69b0: $c1
	add  b                                           ; $69b1: $80
	ld   bc, $dd80                                   ; $69b2: $01 $80 $dd
	adc  b                                           ; $69b5: $88
	nop                                              ; $69b6: $00

jr_088_69b7:
	add  b                                           ; $69b7: $80
	call c, Call_088_7480                            ; $69b8: $dc $80 $74
	add  b                                           ; $69bb: $80
	rlca                                             ; $69bc: $07
	add  b                                           ; $69bd: $80
	jr   jr_088_6940                                 ; $69be: $18 $80

	ld   [$1880], sp                                 ; $69c0: $08 $80 $18
	add  b                                           ; $69c3: $80
	db   $10                                         ; $69c4: $10
	add  b                                           ; $69c5: $80
	rla                                              ; $69c6: $17
	add  b                                           ; $69c7: $80
	dec  e                                           ; $69c8: $1d
	add  d                                           ; $69c9: $82
	stop                                             ; $69ca: $10 $00
	ld   e, b                                        ; $69cc: $58
	add  a                                           ; $69cd: $87
	ld   l, b                                        ; $69ce: $68
	add  b                                           ; $69cf: $80
	add  sp, -$7e                                    ; $69d0: $e8 $82
	ld   l, b                                        ; $69d2: $68
	nop                                              ; $69d3: $00
	inc  e                                           ; $69d4: $1c
	add  a                                           ; $69d5: $87
	ld   [hl], $03                                   ; $69d6: $36 $03
	dec  [hl]                                        ; $69d8: $35
	scf                                              ; $69d9: $37
	jr   c, jr_088_6a1b                              ; $69da: $38 $3f

	add  b                                           ; $69dc: $80
	jr   nc, @+$03                                   ; $69dd: $30 $01

	ld   l, $31                                      ; $69df: $2e $31
	add  b                                           ; $69e1: $80
	ld   hl, $3180                                   ; $69e2: $21 $80 $31
	add  b                                           ; $69e5: $80
	db   $10                                         ; $69e6: $10
	add  b                                           ; $69e7: $80
	inc  de                                          ; $69e8: $13
	add  b                                           ; $69e9: $80
	cp   $05                                         ; $69ea: $fe $05
	ld   [bc], a                                     ; $69ec: $02
	cp   $03                                         ; $69ed: $fe $03
	rra                                              ; $69ef: $1f
	sub  l                                           ; $69f0: $95
	ld   [hl], l                                     ; $69f1: $75
	add  b                                           ; $69f2: $80
	inc  b                                           ; $69f3: $04
	add  b                                           ; $69f4: $80
	sbc  l                                           ; $69f5: $9d
	add  b                                           ; $69f6: $80
	sub  a                                           ; $69f7: $97
	add  b                                           ; $69f8: $80
	or   b                                           ; $69f9: $b0
	add  b                                           ; $69fa: $80
	ldh  a, [$80]                                    ; $69fb: $f0 $80
	rra                                              ; $69fd: $1f
	add  b                                           ; $69fe: $80
	pop  af                                          ; $69ff: $f1
	add  b                                           ; $6a00: $80
	adc  l                                           ; $6a01: $8d
	add  b                                           ; $6a02: $80
	adc  c                                           ; $6a03: $89
	add  b                                           ; $6a04: $80
	call c, Call_088_7580                            ; $6a05: $dc $80 $75
	add  b                                           ; $6a08: $80
	ld   b, l                                        ; $6a09: $45
	add  b                                           ; $6a0a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a0b: $cf
	dec  b                                           ; $6a0c: $05
	ld   [$c80f], sp                                 ; $6a0d: $08 $0f $c8
	call z, $181b                                    ; $6a10: $cc $1b $18

jr_088_6a13:
	add  b                                           ; $6a13: $80
	adc  b                                           ; $6a14: $88
	add  b                                           ; $6a15: $80
	sbc  b                                           ; $6a16: $98
	add  b                                           ; $6a17: $80
	sub  b                                           ; $6a18: $90
	add  b                                           ; $6a19: $80
	db   $10                                         ; $6a1a: $10

jr_088_6a1b:
	add  b                                           ; $6a1b: $80
	rst  $38                                         ; $6a1c: $ff
	ld   bc, $ff00                                   ; $6a1d: $01 $00 $ff
	add  b                                           ; $6a20: $80
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	and  a                                           ; $6a23: $a7
	add  a                                           ; $6a24: $87
	ld   l, b                                        ; $6a25: $68
	add  b                                           ; $6a26: $80
	add  sp, $01                                     ; $6a27: $e8 $01
	jr   z, jr_088_6a13                              ; $6a29: $28 $e8

	add  b                                           ; $6a2b: $80
	ld   [$cf01], sp                                 ; $6a2c: $08 $01 $cf
	ccf                                              ; $6a2f: $3f
	adc  h                                           ; $6a30: $8c
	nop                                              ; $6a31: $00
	add  b                                           ; $6a32: $80
	ldh  a, [$80]                                    ; $6a33: $f0 $80
	jr   jr_088_69b7                                 ; $6a35: $18 $80

	ld   [$1880], sp                                 ; $6a37: $08 $80 $18
	add  b                                           ; $6a3a: $80
	inc  de                                          ; $6a3b: $13
	add  b                                           ; $6a3c: $80
	ld   e, $82                                      ; $6a3d: $1e $82
	nop                                              ; $6a3f: $00
	add  b                                           ; $6a40: $80
	ld   de, $1980                                   ; $6a41: $11 $80 $19
	add  b                                           ; $6a44: $80
	add  hl, bc                                      ; $6a45: $09
	add  b                                           ; $6a46: $80
	add  hl, de                                      ; $6a47: $19
	add  b                                           ; $6a48: $80
	sub  c                                           ; $6a49: $91
	add  b                                           ; $6a4a: $80

jr_088_6a4b:
	rst  $38                                         ; $6a4b: $ff
	add  b                                           ; $6a4c: $80
	inc  bc                                          ; $6a4d: $03
	add  b                                           ; $6a4e: $80
	nop                                              ; $6a4f: $00
	add  b                                           ; $6a50: $80
	ld   b, a                                        ; $6a51: $47
	add  b                                           ; $6a52: $80
	ld   [hl], h                                     ; $6a53: $74
	add  b                                           ; $6a54: $80
	call c, $0884                                    ; $6a55: $dc $84 $08
	add  b                                           ; $6a58: $80
	ld   hl, sp-$80                                  ; $6a59: $f8 $80

jr_088_6a5b:
	nop                                              ; $6a5b: $00
	add  b                                           ; $6a5c: $80
	rst  $38                                         ; $6a5d: $ff
	adc  h                                           ; $6a5e: $8c
	nop                                              ; $6a5f: $00
	add  b                                           ; $6a60: $80
	ld   hl, sp-$66                                  ; $6a61: $f8 $9a
	nop                                              ; $6a63: $00
	adc  b                                           ; $6a64: $88
	ld   bc, $0082                                   ; $6a65: $01 $82 $00
	add  d                                           ; $6a68: $82
	ld   bc, $008c                                   ; $6a69: $01 $8c $00
	add  b                                           ; $6a6c: $80
	rst  $28                                         ; $6a6d: $ef
	add  b                                           ; $6a6e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a6f: $cf
	add  b                                           ; $6a70: $80
	rst  JumpTable                                         ; $6a71: $df
	add  b                                           ; $6a72: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a73: $cf
	add  b                                           ; $6a74: $80
	rst  $28                                         ; $6a75: $ef
	add  b                                           ; $6a76: $80
	cpl                                              ; $6a77: $2f
	add  b                                           ; $6a78: $80
	add  d                                           ; $6a79: $82
	add  d                                           ; $6a7a: $82
	ldh  [$8c], a                                    ; $6a7b: $e0 $8c
	nop                                              ; $6a7d: $00
	add  b                                           ; $6a7e: $80
	cp   [hl]                                        ; $6a7f: $be
	add  b                                           ; $6a80: $80
	sbc  [hl]                                        ; $6a81: $9e
	add  b                                           ; $6a82: $80
	rst  JumpTable                                         ; $6a83: $df
	add  b                                           ; $6a84: $80
	sbc  [hl]                                        ; $6a85: $9e
	add  b                                           ; $6a86: $80
	cp   [hl]                                        ; $6a87: $be
	add  b                                           ; $6a88: $80
	and  d                                           ; $6a89: $a2
	add  b                                           ; $6a8a: $80
	ld   [$3e82], sp                                 ; $6a8b: $08 $82 $3e
	adc  h                                           ; $6a8e: $8c
	nop                                              ; $6a8f: $00
	add  b                                           ; $6a90: $80
	ei                                               ; $6a91: $fb
	add  b                                           ; $6a92: $80
	ld   a, c                                        ; $6a93: $79
	add  b                                           ; $6a94: $80
	ld   a, l                                        ; $6a95: $7d
	add  b                                           ; $6a96: $80
	ld   a, c                                        ; $6a97: $79
	add  b                                           ; $6a98: $80
	ei                                               ; $6a99: $fb
	add  b                                           ; $6a9a: $80
	adc  d                                           ; $6a9b: $8a
	sub  d                                           ; $6a9c: $92
	nop                                              ; $6a9d: $00
	add  b                                           ; $6a9e: $80
	rst  $28                                         ; $6a9f: $ef
	add  b                                           ; $6aa0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa1: $cf
	add  b                                           ; $6aa2: $80
	rst  JumpTable                                         ; $6aa3: $df
	add  b                                           ; $6aa4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa5: $cf
	add  b                                           ; $6aa6: $80
	rst  $28                                         ; $6aa7: $ef
	add  b                                           ; $6aa8: $80
	cpl                                              ; $6aa9: $2f
	add  b                                           ; $6aaa: $80
	ld   [bc], a                                     ; $6aab: $02
	add  b                                           ; $6aac: $80
	ld   [$0f80], sp                                 ; $6aad: $08 $80 $0f
	adc  h                                           ; $6ab0: $8c
	nop                                              ; $6ab1: $00
	adc  d                                           ; $6ab2: $8a
	add  b                                           ; $6ab3: $80
	add  b                                           ; $6ab4: $80
	nop                                              ; $6ab5: $00
	add  d                                           ; $6ab6: $82
	add  b                                           ; $6ab7: $80
	adc  b                                           ; $6ab8: $88
	ld   bc, $0082                                   ; $6ab9: $01 $82 $00
	adc  d                                           ; $6abc: $8a
	ld   bc, $0082                                   ; $6abd: $01 $82 $00
	add  b                                           ; $6ac0: $80
	ld   bc, $c084                                   ; $6ac1: $01 $84 $c0
	add  d                                           ; $6ac4: $82
	ldh  [$80], a                                    ; $6ac5: $e0 $80
	add  b                                           ; $6ac7: $80
	add  b                                           ; $6ac8: $80
	jr   z, jr_088_6a4b                              ; $6ac9: $28 $80

	rst  $28                                         ; $6acb: $ef
	add  b                                           ; $6acc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6acd: $cf
	add  b                                           ; $6ace: $80

jr_088_6acf:
	rst  JumpTable                                         ; $6acf: $df
	add  b                                           ; $6ad0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad1: $cf
	add  b                                           ; $6ad2: $80

jr_088_6ad3:
	rst  $28                                         ; $6ad3: $ef
	add  b                                           ; $6ad4: $80
	add  sp, -$80                                    ; $6ad5: $e8 $80
	add  b                                           ; $6ad7: $80
	add  b                                           ; $6ad8: $80
	jr   nz, jr_088_6a5b                             ; $6ad9: $20 $80

	ldh  [$80], a                                    ; $6adb: $e0 $80

jr_088_6add:
	ld   e, $80                                      ; $6add: $1e $80
	rra                                              ; $6adf: $1f
	add  b                                           ; $6ae0: $80
	ld   e, $80                                      ; $6ae1: $1e $80
	ld   a, $80                                      ; $6ae3: $3e $80
	ld   [hl+], a                                    ; $6ae5: $22
	add  b                                           ; $6ae6: $80
	nop                                              ; $6ae7: $00
	add  d                                           ; $6ae8: $82
	add  b                                           ; $6ae9: $80
	add  h                                           ; $6aea: $84
	nop                                              ; $6aeb: $00
	add  d                                           ; $6aec: $82
	add  b                                           ; $6aed: $80
	and  b                                           ; $6aee: $a0
	nop                                              ; $6aef: $00
	add  b                                           ; $6af0: $80
	adc  b                                           ; $6af1: $88
	add  b                                           ; $6af2: $80
	ld   hl, sp-$7c                                  ; $6af3: $f8 $84
	rlca                                             ; $6af5: $07
	add  b                                           ; $6af6: $80
	rrca                                             ; $6af7: $0f
	add  b                                           ; $6af8: $80
	ld   [$0280], sp                                 ; $6af9: $08 $80 $02
	add  d                                           ; $6afc: $82
	rrca                                             ; $6afd: $0f
	add  h                                           ; $6afe: $84
	rlca                                             ; $6aff: $07
	add  b                                           ; $6b00: $80
	rrca                                             ; $6b01: $0f
	add  b                                           ; $6b02: $80
	ld   [$0280], sp                                 ; $6b03: $08 $80 $02
	add  d                                           ; $6b06: $82
	rrca                                             ; $6b07: $0f
	adc  b                                           ; $6b08: $88
	add  b                                           ; $6b09: $80
	add  b                                           ; $6b0a: $80
	nop                                              ; $6b0b: $00
	adc  h                                           ; $6b0c: $8c
	add  b                                           ; $6b0d: $80
	add  b                                           ; $6b0e: $80
	nop                                              ; $6b0f: $00
	add  d                                           ; $6b10: $82
	add  b                                           ; $6b11: $80
	adc  b                                           ; $6b12: $88
	ld   bc, $0094                                   ; $6b13: $01 $94 $00
	add  h                                           ; $6b16: $84
	ret  nz                                          ; $6b17: $c0

	add  d                                           ; $6b18: $82
	ldh  [$82], a                                    ; $6b19: $e0 $82
	ld   bc, $0080                                   ; $6b1b: $01 $80 $00
	add  b                                           ; $6b1e: $80
	rrca                                             ; $6b1f: $0f
	add  h                                           ; $6b20: $84
	rlca                                             ; $6b21: $07
	add  b                                           ; $6b22: $80
	inc  c                                           ; $6b23: $0c
	add  h                                           ; $6b24: $84
	nop                                              ; $6b25: $00
	add  b                                           ; $6b26: $80
	adc  b                                           ; $6b27: $88
	add  b                                           ; $6b28: $80
	ld   hl, sp-$80                                  ; $6b29: $f8 $80

jr_088_6b2b:
	ld   h, b                                        ; $6b2b: $60
	add  b                                           ; $6b2c: $80
	ld   l, b                                        ; $6b2d: $68
	add  b                                           ; $6b2e: $80
	ld   c, a                                        ; $6b2f: $4f
	add  b                                           ; $6b30: $80
	rrca                                             ; $6b31: $0f
	add  b                                           ; $6b32: $80
	ldh  [$80], a                                    ; $6b33: $e0 $80
	ld   c, $80                                      ; $6b35: $0e $80
	xor  $80                                         ; $6b37: $ee $80
	and  $80                                         ; $6b39: $e6 $80
	or   $80                                         ; $6b3b: $f6 $80
	and  $80                                         ; $6b3d: $e6 $80
	ld   l, [hl]                                     ; $6b3f: $6e
	add  h                                           ; $6b40: $84
	nop                                              ; $6b41: $00
	add  b                                           ; $6b42: $80
	ld   [hl], d                                     ; $6b43: $72
	add  b                                           ; $6b44: $80
	halt                                             ; $6b45: $76
	add  b                                           ; $6b46: $80
	inc  hl                                          ; $6b47: $23
	add  b                                           ; $6b48: $80
	adc  d                                           ; $6b49: $8a
	add  b                                           ; $6b4a: $80
	cp   d                                           ; $6b4b: $ba
	add  b                                           ; $6b4c: $80
	jr   nc, jr_088_6acf                             ; $6b4d: $30 $80

	ldh  a, [$80]                                    ; $6b4f: $f0 $80
	jr   nc, jr_088_6ad3                             ; $6b51: $30 $80

	cp   b                                           ; $6b53: $b8
	add  b                                           ; $6b54: $80
	adc  b                                           ; $6b55: $88
	add  b                                           ; $6b56: $80
	jr   nz, jr_088_6add                             ; $6b57: $20 $84

	ldh  a, [$82]                                    ; $6b59: $f0 $82
	nop                                              ; $6b5b: $00
	add  h                                           ; $6b5c: $84
	rlca                                             ; $6b5d: $07
	add  d                                           ; $6b5e: $82
	rrca                                             ; $6b5f: $0f
	sub  h                                           ; $6b60: $94
	nop                                              ; $6b61: $00
	adc  b                                           ; $6b62: $88
	add  b                                           ; $6b63: $80
	rst  $38                                         ; $6b64: $ff
	nop                                              ; $6b65: $00
	rst  $38                                         ; $6b66: $ff
	nop                                              ; $6b67: $00
	rst  $38                                         ; $6b68: $ff
	nop                                              ; $6b69: $00
	rst  $38                                         ; $6b6a: $ff
	nop                                              ; $6b6b: $00
	rst  $38                                         ; $6b6c: $ff
	nop                                              ; $6b6d: $00
	adc  a                                           ; $6b6e: $8f
	nop                                              ; $6b6f: $00
	xor  c                                           ; $6b70: $a9
	nop                                              ; $6b71: $00
	sbc  h                                           ; $6b72: $9c
	nop                                              ; $6b73: $00
	add  b                                           ; $6b74: $80
	rlca                                             ; $6b75: $07
	adc  b                                           ; $6b76: $88
	nop                                              ; $6b77: $00
	add  b                                           ; $6b78: $80
	inc  bc                                          ; $6b79: $03
	add  b                                           ; $6b7a: $80
	inc  a                                           ; $6b7b: $3c
	add  b                                           ; $6b7c: $80
	ret  nz                                          ; $6b7d: $c0

	add  [hl]                                        ; $6b7e: $86
	nop                                              ; $6b7f: $00
	add  b                                           ; $6b80: $80
	inc  e                                           ; $6b81: $1c
	add  b                                           ; $6b82: $80
	db   $e3                                         ; $6b83: $e3
	adc  h                                           ; $6b84: $8c
	nop                                              ; $6b85: $00
	add  b                                           ; $6b86: $80
	add  b                                           ; $6b87: $80
	add  b                                           ; $6b88: $80
	ld   h, b                                        ; $6b89: $60
	add  b                                           ; $6b8a: $80
	jr   jr_088_6b2b                                 ; $6b8b: $18 $9e

	nop                                              ; $6b8d: $00
	add  b                                           ; $6b8e: $80
	inc  b                                           ; $6b8f: $04
	add  b                                           ; $6b90: $80
	rlca                                             ; $6b91: $07
	nop                                              ; $6b92: $00
	inc  b                                           ; $6b93: $04
	add  c                                           ; $6b94: $81
	rlca                                             ; $6b95: $07
	add  b                                           ; $6b96: $80
	inc  b                                           ; $6b97: $04
	add  b                                           ; $6b98: $80
	rlca                                             ; $6b99: $07
	inc  bc                                          ; $6b9a: $03
	ld   b, $07                                      ; $6b9b: $06 $07
	inc  c                                           ; $6b9d: $0c
	ld   c, $82                                      ; $6b9e: $0e $82
	nop                                              ; $6ba0: $00
	add  b                                           ; $6ba1: $80
	ret  nz                                          ; $6ba2: $c0

	ld   a, [bc]                                     ; $6ba3: $0a
	ld   [hl], b                                     ; $6ba4: $70
	ldh  a, [$8e]                                    ; $6ba5: $f0 $8e
	cp   $11                                         ; $6ba7: $fe $11
	ld   a, a                                        ; $6ba9: $7f
	ld   [bc], a                                     ; $6baa: $02
	sub  e                                           ; $6bab: $93
	ld   h, b                                        ; $6bac: $60
	inc  c                                           ; $6bad: $0c
	ld   h, e                                        ; $6bae: $63
	add  l                                           ; $6baf: $85
	nop                                              ; $6bb0: $00
	add  b                                           ; $6bb1: $80
	ld   e, $07                                      ; $6bb2: $1e $07
	rst  $20                                         ; $6bb4: $e7
	ldh  [$3b], a                                    ; $6bb5: $e0 $3b
	inc  hl                                          ; $6bb7: $23
	db   $fd                                         ; $6bb8: $fd
	inc  l                                           ; $6bb9: $2c
	ret                                              ; $6bba: $c9


	rlca                                             ; $6bbb: $07
	add  b                                           ; $6bbc: $80
	nop                                              ; $6bbd: $00
	add  b                                           ; $6bbe: $80
	inc  c                                           ; $6bbf: $0c
	dec  bc                                          ; $6bc0: $0b
	ld   sp, hl                                      ; $6bc1: $f9
	ldh  a, [$79]                                    ; $6bc2: $f0 $79
	nop                                              ; $6bc4: $00

jr_088_6bc5:
	sub  e                                           ; $6bc5: $93
	inc  e                                           ; $6bc6: $1c
	or   c                                           ; $6bc7: $b1
	add  b                                           ; $6bc8: $80
	rst  $30                                         ; $6bc9: $f7
	ld   bc, $0038                                   ; $6bca: $01 $38 $00
	add  b                                           ; $6bcd: $80
	ldh  [rSC], a                                    ; $6bce: $e0 $02
	ld   h, b                                        ; $6bd0: $60
	ldh  [rLCDC], a                                  ; $6bd1: $e0 $40
	add  b                                           ; $6bd3: $80
	ret  nz                                          ; $6bd4: $c0

	ld   bc, $c040                                   ; $6bd5: $01 $40 $c0
	add  c                                           ; $6bd8: $81
	ld   b, b                                        ; $6bd9: $40
	add  b                                           ; $6bda: $80
	ret  nz                                          ; $6bdb: $c0

	add  b                                           ; $6bdc: $80
	nop                                              ; $6bdd: $00
	add  b                                           ; $6bde: $80
	rra                                              ; $6bdf: $1f
	add  b                                           ; $6be0: $80
	jr   jr_088_6be9                                 ; $6be1: $18 $06

	inc  h                                           ; $6be3: $24
	inc  a                                           ; $6be4: $3c
	inc  hl                                          ; $6be5: $23
	ld   a, $18                                      ; $6be6: $3e $18
	dec  e                                           ; $6be8: $1d

jr_088_6be9:
	rra                                              ; $6be9: $1f
	add  b                                           ; $6bea: $80
	inc  de                                          ; $6beb: $13
	ld   c, $18                                      ; $6bec: $0e $18
	or   $f0                                         ; $6bee: $f6 $f0
	ld   b, $00                                      ; $6bf0: $06 $00
	ld   [hl], $00                                   ; $6bf2: $36 $00
	ret                                              ; $6bf4: $c9


	nop                                              ; $6bf5: $00
	sbc  b                                           ; $6bf6: $98
	nop                                              ; $6bf7: $00
	ldh  [rP1], a                                    ; $6bf8: $e0 $00
	ld   b, b                                        ; $6bfa: $40
	ret  nz                                          ; $6bfb: $c0

	add  b                                           ; $6bfc: $80
	ld   [hl], b                                     ; $6bfd: $70
	add  hl, bc                                      ; $6bfe: $09
	di                                               ; $6bff: $f3
	inc  bc                                          ; $6c00: $03
	inc  c                                           ; $6c01: $0c
	nop                                              ; $6c02: $00
	inc  c                                           ; $6c03: $0c
	nop                                              ; $6c04: $00
	or   b                                           ; $6c05: $b0
	nop                                              ; $6c06: $00
	ld   b, b                                        ; $6c07: $40
	nop                                              ; $6c08: $00
	add  b                                           ; $6c09: $80
	ld   bc, $0780                                   ; $6c0a: $01 $80 $07
	add  b                                           ; $6c0d: $80
	rra                                              ; $6c0e: $1f
	add  hl, bc                                      ; $6c0f: $09
	pop  hl                                          ; $6c10: $e1
	and  b                                           ; $6c11: $a0
	ld   h, $60                                      ; $6c12: $26 $60
	rra                                              ; $6c14: $1f
	jr   @+$09                                       ; $6c15: $18 $07

	inc  b                                           ; $6c17: $04
	ld   a, h                                        ; $6c18: $7c
	ld   a, a                                        ; $6c19: $7f
	add  b                                           ; $6c1a: $80
	db   $fc                                         ; $6c1b: $fc
	add  b                                           ; $6c1c: $80
	ldh  a, [$80]                                    ; $6c1d: $f0 $80
	add  b                                           ; $6c1f: $80
	add  hl, bc                                      ; $6c20: $09
	rst  $20                                         ; $6c21: $e7
	nop                                              ; $6c22: $00
	db   $db                                         ; $6c23: $db
	nop                                              ; $6c24: $00
	jp   nz, $010c                                   ; $6c25: $c2 $0c $01

	ld   [hl], e                                     ; $6c28: $73
	ld   bc, $8481                                   ; $6c29: $01 $81 $84
	nop                                              ; $6c2c: $00
	add  h                                           ; $6c2d: $84
	ret  nz                                          ; $6c2e: $c0

	add  b                                           ; $6c2f: $80
	ldh  [$80], a                                    ; $6c30: $e0 $80
	ld   b, b                                        ; $6c32: $40
	add  b                                           ; $6c33: $80
	ldh  [$80], a                                    ; $6c34: $e0 $80
	inc  e                                           ; $6c36: $1c
	add  b                                           ; $6c37: $80
	ld   [bc], a                                     ; $6c38: $02
	rlca                                             ; $6c39: $07
	scf                                              ; $6c3a: $37
	inc  [hl]                                        ; $6c3b: $34
	ld   c, b                                        ; $6c3c: $48
	ld   c, h                                        ; $6c3d: $4c
	ld   hl, $1227                                   ; $6c3e: $21 $27 $12
	inc  de                                          ; $6c41: $13
	add  b                                           ; $6c42: $80
	jr   jr_088_6bc5                                 ; $6c43: $18 $80

	inc  e                                           ; $6c45: $1c
	inc  de                                          ; $6c46: $13
	rra                                              ; $6c47: $1f
	inc  de                                          ; $6c48: $13
	rra                                              ; $6c49: $1f
	inc  e                                           ; $6c4a: $1c
	ld   b, c                                        ; $6c4b: $41
	ld   l, $12                                      ; $6c4c: $2e $12
	adc  d                                           ; $6c4e: $8a
	rst  ToBoot                                         ; $6c4f: $c7
	daa                                              ; $6c50: $27
	rst  $10                                         ; $6c51: $d7
	dec  bc                                          ; $6c52: $0b
	and  e                                           ; $6c53: $a3
	rlca                                             ; $6c54: $07
	inc  de                                          ; $6c55: $13
	ld   b, d                                        ; $6c56: $42
	ld   l, $02                                      ; $6c57: $2e $02
	jp   c, $80c7                                    ; $6c59: $da $c7 $80

	ld   a, h                                        ; $6c5c: $7c
	ld   c, $de                                      ; $6c5d: $0e $de
	adc  $eb                                         ; $6c5f: $ce $eb
	ccf                                              ; $6c61: $3f
	inc  a                                           ; $6c62: $3c
	set  1, a                                        ; $6c63: $cb $cf
	ld   [$180f], sp                                 ; $6c65: $08 $0f $18
	dec  de                                          ; $6c68: $1b
	call z, $0ee9                                    ; $6c69: $cc $e9 $0e
	db   $d3                                         ; $6c6c: $d3
	add  c                                           ; $6c6d: $81
	nop                                              ; $6c6e: $00
	add  b                                           ; $6c6f: $80
	add  b                                           ; $6c70: $80
	dec  b                                           ; $6c71: $05
	ld   a, b                                        ; $6c72: $78
	ld   hl, sp-$71                                  ; $6c73: $f8 $8f
	rst  $38                                         ; $6c75: $ff
	inc  sp                                          ; $6c76: $33
	ccf                                              ; $6c77: $3f
	add  b                                           ; $6c78: $80
	inc  b                                           ; $6c79: $04
	ld   [bc], a                                     ; $6c7a: $02
	ldh  a, [$32]                                    ; $6c7b: $f0 $32
	ld   a, $83                                      ; $6c7d: $3e $83
	nop                                              ; $6c7f: $00
	add  b                                           ; $6c80: $80
	rrca                                             ; $6c81: $0f
	add  hl, bc                                      ; $6c82: $09
	rst  $38                                         ; $6c83: $ff
	di                                               ; $6c84: $f3
	ldh  a, [c]                                      ; $6c85: $f2
	adc  h                                           ; $6c86: $8c
	adc  d                                           ; $6c87: $8a
	pop  de                                          ; $6c88: $d1
	ret  z                                           ; $6c89: $c8

	and  $09                                         ; $6c8a: $e6 $09
	ld   c, $80                                      ; $6c8c: $0e $80
	ld   a, [de]                                     ; $6c8e: $1a
	rrca                                             ; $6c8f: $0f
	and  $e4                                         ; $6c90: $e6 $e4
	ld   hl, sp-$76                                  ; $6c92: $f8 $8a
	xor  [hl]                                        ; $6c94: $ae
	ld   b, $26                                      ; $6c95: $06 $26
	inc  c                                           ; $6c97: $0c
	sub  h                                           ; $6c98: $94
	add  d                                           ; $6c99: $82
	ld   l, $32                                      ; $6c9a: $2e $32
	add  sp, $13                                     ; $6c9c: $e8 $13
	rlca                                             ; $6c9e: $07
	inc  b                                           ; $6c9f: $04
	add  b                                           ; $6ca0: $80
	ld   bc, $0088                                   ; $6ca1: $01 $88 $00
	dec  c                                           ; $6ca4: $0d
	di                                               ; $6ca5: $f3
	ld   [hl-], a                                    ; $6ca6: $32
	xor  [hl]                                        ; $6ca7: $ae
	adc  a                                           ; $6ca8: $8f
	db   $db                                         ; $6ca9: $db
	ld   b, d                                        ; $6caa: $42
	cp   e                                           ; $6cab: $bb
	jp   nc, $2a37                                   ; $6cac: $d2 $37 $2a

	ld   [de], a                                     ; $6caf: $12
	dec  de                                          ; $6cb0: $1b
	ld   [bc], a                                     ; $6cb1: $02
	ld   b, $80                                      ; $6cb2: $06 $80
	nop                                              ; $6cb4: $00
	dec  c                                           ; $6cb5: $0d
	ld   a, e                                        ; $6cb6: $7b
	ld   [$08a8], sp                                 ; $6cb7: $08 $a8 $08
	xor  $0c                                         ; $6cba: $ee $0c
	call $0c1b                                       ; $6cbc: $cd $1b $0c
	ld   l, b                                        ; $6cbf: $68
	rrca                                             ; $6cc0: $0f
	adc  a                                           ; $6cc1: $8f
	ld   bc, $8002                                   ; $6cc2: $01 $02 $80
	ld   bc, $432f                                   ; $6cc5: $01 $2f $43
	adc  h                                           ; $6cc8: $8c
	rra                                              ; $6cc9: $1f
	inc  hl                                          ; $6cca: $23
	ccf                                              ; $6ccb: $3f
	nop                                              ; $6ccc: $00
	cp   h                                           ; $6ccd: $bc
	nop                                              ; $6cce: $00
	ld   l, [hl]                                     ; $6ccf: $6e
	ret  nz                                          ; $6cd0: $c0

	dec  a                                           ; $6cd1: $3d
	nop                                              ; $6cd2: $00
	ld   a, [$fe61]                                  ; $6cd3: $fa $61 $fe
	sub  b                                           ; $6cd6: $90
	ld   d, b                                        ; $6cd7: $50
	ld   h, b                                        ; $6cd8: $60
	dec  hl                                          ; $6cd9: $2b
	inc  b                                           ; $6cda: $04
	adc  d                                           ; $6cdb: $8a
	add  b                                           ; $6cdc: $80
	ld   l, l                                        ; $6cdd: $6d
	ld   h, b                                        ; $6cde: $60
	rst  $20                                         ; $6cdf: $e7
	ret  nc                                          ; $6ce0: $d0

	and  l                                           ; $6ce1: $a5
	ei                                               ; $6ce2: $fb
	sub  a                                           ; $6ce3: $97
	ld   l, h                                        ; $6ce4: $6c
	ld   l, l                                        ; $6ce5: $6d
	pop  af                                          ; $6ce6: $f1
	ld   [hl], $c2                                   ; $6ce7: $36 $c2
	ld   [de], a                                     ; $6ce9: $12
	ld   [bc], a                                     ; $6cea: $02
	ld   a, d                                        ; $6ceb: $7a
	ld   b, $62                                      ; $6cec: $06 $62
	ld   a, [bc]                                     ; $6cee: $0a
	ld   d, $06                                      ; $6cef: $16 $06
	ld   a, h                                        ; $6cf1: $7c
	inc  e                                           ; $6cf2: $1c
	ld   [hl], b                                     ; $6cf3: $70
	jr   nc, jr_088_6cf6                             ; $6cf4: $30 $00

jr_088_6cf6:
	ret  nz                                          ; $6cf6: $c0

jr_088_6cf7:
	xor  [hl]                                        ; $6cf7: $ae
	nop                                              ; $6cf8: $00
	inc  bc                                          ; $6cf9: $03
	ld   h, e                                        ; $6cfa: $63
	ld   h, b                                        ; $6cfb: $60
	ld   a, [de]                                     ; $6cfc: $1a
	add  hl, de                                      ; $6cfd: $19
	add  b                                           ; $6cfe: $80
	ld   b, $80                                      ; $6cff: $06 $80
	inc  bc                                          ; $6d01: $03
	add  [hl]                                        ; $6d02: $86
	nop                                              ; $6d03: $00
	add  b                                           ; $6d04: $80
	ld   b, a                                        ; $6d05: $47
	add  b                                           ; $6d06: $80
	ld   e, h                                        ; $6d07: $5c
	add  b                                           ; $6d08: $80
	ldh  a, [$80]                                    ; $6d09: $f0 $80
	ret  nz                                          ; $6d0b: $c0

	add  b                                           ; $6d0c: $80
	add  b                                           ; $6d0d: $80
	db   $e4                                         ; $6d0e: $e4
	nop                                              ; $6d0f: $00
	add  b                                           ; $6d10: $80
	inc  c                                           ; $6d11: $0c
	add  b                                           ; $6d12: $80
	add  hl, sp                                      ; $6d13: $39
	add  b                                           ; $6d14: $80
	ld   [bc], a                                     ; $6d15: $02
	sub  [hl]                                        ; $6d16: $96
	nop                                              ; $6d17: $00

jr_088_6d18:
	add  b                                           ; $6d18: $80
	ld   c, $80                                      ; $6d19: $0e $80
	inc  a                                           ; $6d1b: $3c
	add  b                                           ; $6d1c: $80
	jp   nz, $1f80                                   ; $6d1d: $c2 $80 $1f

	add  b                                           ; $6d20: $80
	ldh  [$08], a                                    ; $6d21: $e0 $08
	ld   bc, $1900                                   ; $6d23: $01 $00 $19
	nop                                              ; $6d26: $00
	ret  c                                           ; $6d27: $d8

	nop                                              ; $6d28: $00
	pop  de                                          ; $6d29: $d1
	nop                                              ; $6d2a: $00
	ld   de, $008d                                   ; $6d2b: $11 $8d $00
	add  b                                           ; $6d2e: $80
	ret  nz                                          ; $6d2f: $c0

	add  b                                           ; $6d30: $80
	ldh  [$0c], a                                    ; $6d31: $e0 $0c
	inc  bc                                          ; $6d33: $03
	nop                                              ; $6d34: $00
	dec  b                                           ; $6d35: $05
	nop                                              ; $6d36: $00
	adc  c                                           ; $6d37: $89
	nop                                              ; $6d38: $00
	adc  a                                           ; $6d39: $8f
	nop                                              ; $6d3a: $00
	ld   sp, $f700                                   ; $6d3b: $31 $00 $f7
	nop                                              ; $6d3e: $00
	add  $97                                         ; $6d3f: $c6 $97
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	add  b                                           ; $6d43: $80
	add  c                                           ; $6d44: $81
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	add  b                                           ; $6d47: $80
	adc  a                                           ; $6d48: $8f

jr_088_6d49:
	nop                                              ; $6d49: $00
	ld   [bc], a                                     ; $6d4a: $02
	ld   [$0800], sp                                 ; $6d4b: $08 $00 $08
	add  e                                           ; $6d4e: $83
	nop                                              ; $6d4f: $00
	ld   [bc], a                                     ; $6d50: $02
	ld   bc, $0100                                   ; $6d51: $01 $00 $01
	adc  e                                           ; $6d54: $8b
	nop                                              ; $6d55: $00
	add  b                                           ; $6d56: $80
	inc  bc                                          ; $6d57: $03
	add  b                                           ; $6d58: $80
	ld   c, $80                                      ; $6d59: $0e $80
	ld   [$0580], sp                                 ; $6d5b: $08 $80 $05
	inc  c                                           ; $6d5e: $0c
	add  b                                           ; $6d5f: $80
	nop                                              ; $6d60: $00
	add  b                                           ; $6d61: $80
	nop                                              ; $6d62: $00
	ret  nz                                          ; $6d63: $c0

	nop                                              ; $6d64: $00
	ldh  a, [rP1]                                    ; $6d65: $f0 $00
	xor  b                                           ; $6d67: $a8
	nop                                              ; $6d68: $00
	sub  h                                           ; $6d69: $94
	nop                                              ; $6d6a: $00
	inc  c                                           ; $6d6b: $0c
	add  l                                           ; $6d6c: $85
	nop                                              ; $6d6d: $00
	add  b                                           ; $6d6e: $80
	inc  bc                                          ; $6d6f: $03
	add  b                                           ; $6d70: $80
	rrca                                             ; $6d71: $0f
	add  b                                           ; $6d72: $80
	ld   a, $80                                      ; $6d73: $3e $80
	jr   jr_088_6cf7                                 ; $6d75: $18 $80

	ret  nz                                          ; $6d77: $c0

	add  b                                           ; $6d78: $80
	add  b                                           ; $6d79: $80
	add  h                                           ; $6d7a: $84
	nop                                              ; $6d7b: $00
	ld   de, $0004                                   ; $6d7c: $11 $04 $00
	rlca                                             ; $6d7f: $07
	nop                                              ; $6d80: $00
	rlca                                             ; $6d81: $07
	nop                                              ; $6d82: $00
	rlca                                             ; $6d83: $07
	nop                                              ; $6d84: $00
	inc  hl                                          ; $6d85: $23
	nop                                              ; $6d86: $00
	ld   a, $00                                      ; $6d87: $3e $00
	ld   b, $00                                      ; $6d89: $06 $00
	rra                                              ; $6d8b: $1f
	nop                                              ; $6d8c: $00
	rst  ToBoot                                         ; $6d8d: $c7
	ret  nz                                          ; $6d8e: $c0

	add  h                                           ; $6d8f: $84
	nop                                              ; $6d90: $00
	add  b                                           ; $6d91: $80
	rlca                                             ; $6d92: $07
	add  b                                           ; $6d93: $80
	ld   l, l                                        ; $6d94: $6d
	add  b                                           ; $6d95: $80
	jr   c, jr_088_6d18                              ; $6d96: $38 $80

	inc  bc                                          ; $6d98: $03
	add  [hl]                                        ; $6d99: $86
	nop                                              ; $6d9a: $00
	ld   b, $c0                                      ; $6d9b: $06 $c0
	nop                                              ; $6d9d: $00
	ret  c                                           ; $6d9e: $d8

	nop                                              ; $6d9f: $00
	db   $db                                         ; $6da0: $db
	nop                                              ; $6da1: $00
	jp   $0083                                       ; $6da2: $c3 $83 $00


	add  b                                           ; $6da5: $80
	inc  a                                           ; $6da6: $3c
	add  b                                           ; $6da7: $80
	ldh  a, [$80]                                    ; $6da8: $f0 $80
	pop  bc                                          ; $6daa: $c1
	add  b                                           ; $6dab: $80
	dec  e                                           ; $6dac: $1d
	add  b                                           ; $6dad: $80
	xor  $80                                         ; $6dae: $ee $80
	ret  nz                                          ; $6db0: $c0

	add  b                                           ; $6db1: $80
	add  b                                           ; $6db2: $80
	add  b                                           ; $6db3: $80
	nop                                              ; $6db4: $00
	ld   b, $01                                      ; $6db5: $06 $01
	nop                                              ; $6db7: $00
	rlca                                             ; $6db8: $07
	nop                                              ; $6db9: $00
	ld   e, $00                                      ; $6dba: $1e $00
	jr   jr_088_6d49                                 ; $6dbc: $18 $8b

	nop                                              ; $6dbe: $00
	add  b                                           ; $6dbf: $80
	ldh  [$80], a                                    ; $6dc0: $e0 $80
	add  b                                           ; $6dc2: $80
	ld   [de], a                                     ; $6dc3: $12
	inc  b                                           ; $6dc4: $04
	nop                                              ; $6dc5: $00
	inc  e                                           ; $6dc6: $1c
	nop                                              ; $6dc7: $00
	inc  e                                           ; $6dc8: $1c
	nop                                              ; $6dc9: $00
	inc  h                                           ; $6dca: $24
	nop                                              ; $6dcb: $00
	jr   nz, jr_088_6dce                             ; $6dcc: $20 $00

jr_088_6dce:
	jr   jr_088_6dd0                                 ; $6dce: $18 $00

jr_088_6dd0:
	inc  e                                           ; $6dd0: $1c
	nop                                              ; $6dd1: $00
	ld   [$0f00], sp                                 ; $6dd2: $08 $00 $0f
	nop                                              ; $6dd5: $00
	inc  bc                                          ; $6dd6: $03
	sbc  e                                           ; $6dd7: $9b
	nop                                              ; $6dd8: $00
	ld   [$0010], sp                                 ; $6dd9: $08 $10 $00
	sub  h                                           ; $6ddc: $94
	nop                                              ; $6ddd: $00
	xor  c                                           ; $6dde: $a9
	nop                                              ; $6ddf: $00
	dec  a                                           ; $6de0: $3d
	nop                                              ; $6de1: $00
	db   $10                                         ; $6de2: $10
	sub  e                                           ; $6de3: $93
	nop                                              ; $6de4: $00
	ld   b, $80                                      ; $6de5: $06 $80
	nop                                              ; $6de7: $00
	and  h                                           ; $6de8: $a4
	nop                                              ; $6de9: $00
	and  $00                                         ; $6dea: $e6 $00
	jp   nz, $0083                                   ; $6dec: $c2 $83 $00

	ld   [bc], a                                     ; $6def: $02
	ld   bc, $0100                                   ; $6df0: $01 $00 $01
	adc  a                                           ; $6df3: $8f
	nop                                              ; $6df4: $00
	ld   d, $30                                      ; $6df5: $16 $30
	nop                                              ; $6df7: $00
	inc  a                                           ; $6df8: $3c
	nop                                              ; $6df9: $00
	ccf                                              ; $6dfa: $3f
	nop                                              ; $6dfb: $00
	cp   h                                           ; $6dfc: $bc
	nop                                              ; $6dfd: $00
	xor  [hl]                                        ; $6dfe: $ae
	nop                                              ; $6dff: $00
	dec  a                                           ; $6e00: $3d
	nop                                              ; $6e01: $00
	sbc  d                                           ; $6e02: $9a
	nop                                              ; $6e03: $00
	rst  $28                                         ; $6e04: $ef
	nop                                              ; $6e05: $00
	ld   [hl], l                                     ; $6e06: $75
	nop                                              ; $6e07: $00
	ld   a, [de]                                     ; $6e08: $1a
	nop                                              ; $6e09: $00
	rlca                                             ; $6e0a: $07
	nop                                              ; $6e0b: $00
	ld   bc, $0087                                   ; $6e0c: $01 $87 $00
	inc  d                                           ; $6e0f: $14
	sbc  c                                           ; $6e10: $99
	nop                                              ; $6e11: $00
	ld   l, e                                        ; $6e12: $6b
	nop                                              ; $6e13: $00
	adc  [hl]                                        ; $6e14: $8e
	nop                                              ; $6e15: $00
	db   $ed                                         ; $6e16: $ed
	nop                                              ; $6e17: $00
	sub  a                                           ; $6e18: $97
	nop                                              ; $6e19: $00
	ld   b, $00                                      ; $6e1a: $06 $00
	inc  bc                                          ; $6e1c: $03
	nop                                              ; $6e1d: $00
	dec  c                                           ; $6e1e: $0d
	nop                                              ; $6e1f: $00
	or   [hl]                                        ; $6e20: $b6
	nop                                              ; $6e21: $00
	jr   jr_088_6e24                                 ; $6e22: $18 $00

jr_088_6e24:
	and  b                                           ; $6e24: $a0
	adc  c                                           ; $6e25: $89
	nop                                              ; $6e26: $00
	inc  c                                           ; $6e27: $0c
	ld   [$1000], sp                                 ; $6e28: $08 $00 $10
	nop                                              ; $6e2b: $00
	ld   a, b                                        ; $6e2c: $78
	nop                                              ; $6e2d: $00
	ld   h, h                                        ; $6e2e: $64
	nop                                              ; $6e2f: $00
	inc  e                                           ; $6e30: $1c
	nop                                              ; $6e31: $00
	ld   a, b                                        ; $6e32: $78
	nop                                              ; $6e33: $00
	ld   h, b                                        ; $6e34: $60
	rst  $38                                         ; $6e35: $ff
	nop                                              ; $6e36: $00
	rst  $38                                         ; $6e37: $ff
	nop                                              ; $6e38: $00
	rst  $38                                         ; $6e39: $ff
	nop                                              ; $6e3a: $00
	rst  $38                                         ; $6e3b: $ff
	nop                                              ; $6e3c: $00
	rst  $38                                         ; $6e3d: $ff
	nop                                              ; $6e3e: $00
	adc  h                                           ; $6e3f: $8c
	nop                                              ; $6e40: $00
	sub  l                                           ; $6e41: $95
	nop                                              ; $6e42: $00
	and  [hl]                                        ; $6e43: $a6
	nop                                              ; $6e44: $00
	add  b                                           ; $6e45: $80
	ld   bc, $0280                                   ; $6e46: $01 $80 $02
	ld   bc, $0405                                   ; $6e49: $01 $05 $04
	add  b                                           ; $6e4c: $80
	ld   [$0100], sp                                 ; $6e4d: $08 $00 $01
	add  a                                           ; $6e50: $87
	nop                                              ; $6e51: $00
	add  b                                           ; $6e52: $80
	ret  nz                                          ; $6e53: $c0

	add  b                                           ; $6e54: $80
	jr   nc, @+$04                                   ; $6e55: $30 $02

	call z, $c00c                                    ; $6e57: $cc $0c $c0
	or   l                                           ; $6e5a: $b5
	nop                                              ; $6e5b: $00
	add  b                                           ; $6e5c: $80
	ld   bc, $0280                                   ; $6e5d: $01 $80 $02
	dec  h                                           ; $6e60: $25
	dec  b                                           ; $6e61: $05
	inc  b                                           ; $6e62: $04
	ld   a, [bc]                                     ; $6e63: $0a
	ld   [$1015], sp                                 ; $6e64: $08 $15 $10
	add  hl, hl                                      ; $6e67: $29
	jr   nz, jr_088_6eba                             ; $6e68: $20 $50

	ld   b, b                                        ; $6e6a: $40
	and  [hl]                                        ; $6e6b: $a6
	add  b                                           ; $6e6c: $80
	ld   b, l                                        ; $6e6d: $45
	nop                                              ; $6e6e: $00
	adc  l                                           ; $6e6f: $8d
	nop                                              ; $6e70: $00
	inc  b                                           ; $6e71: $04
	nop                                              ; $6e72: $00
	inc  c                                           ; $6e73: $0c
	nop                                              ; $6e74: $00
	adc  d                                           ; $6e75: $8a
	inc  bc                                          ; $6e76: $03
	db   $ec                                         ; $6e77: $ec
	nop                                              ; $6e78: $00
	ld   a, e                                        ; $6e79: $7b
	nop                                              ; $6e7a: $00
	ld   e, $00                                      ; $6e7b: $1e $00
	add  a                                           ; $6e7d: $87
	nop                                              ; $6e7e: $00
	pop  hl                                          ; $6e7f: $e1
	nop                                              ; $6e80: $00
	cp   b                                           ; $6e81: $b8
	nop                                              ; $6e82: $00
	jr   nc, jr_088_6e85                             ; $6e83: $30 $00

jr_088_6e85:
	rla                                              ; $6e85: $17
	nop                                              ; $6e86: $00
	add  b                                           ; $6e87: $80
	ret  nz                                          ; $6e88: $c0

	add  b                                           ; $6e89: $80
	jr   nc, jr_088_6e96                             ; $6e8a: $30 $0a

	call z, $b30c                                    ; $6e8c: $cc $0c $b3
	inc  bc                                          ; $6e8f: $03
	db   $ec                                         ; $6e90: $ec
	nop                                              ; $6e91: $00
	ld   a, e                                        ; $6e92: $7b
	nop                                              ; $6e93: $00
	ld   e, $00                                      ; $6e94: $1e $00

jr_088_6e96:
	ld   sp, hl                                      ; $6e96: $f9
	add  a                                           ; $6e97: $87
	nop                                              ; $6e98: $00
	add  b                                           ; $6e99: $80
	ret  nz                                          ; $6e9a: $c0

	add  b                                           ; $6e9b: $80
	jr   nc, @+$04                                   ; $6e9c: $30 $02

	call z, $c00c                                    ; $6e9e: $cc $0c $c0
	add  l                                           ; $6ea1: $85
	nop                                              ; $6ea2: $00
	add  b                                           ; $6ea3: $80
	ld   bc, $0280                                   ; $6ea4: $01 $80 $02
	ld   c, $05                                      ; $6ea7: $0e $05
	inc  b                                           ; $6ea9: $04
	dec  bc                                          ; $6eaa: $0b
	ld   [$1015], sp                                 ; $6eab: $08 $15 $10
	jr   z, jr_088_6ed0                              ; $6eae: $28 $20

	ld   d, b                                        ; $6eb0: $50
	ld   b, b                                        ; $6eb1: $40
	and  b                                           ; $6eb2: $a0
	add  b                                           ; $6eb3: $80
	ld   b, b                                        ; $6eb4: $40
	nop                                              ; $6eb5: $00
	add  b                                           ; $6eb6: $80
	add  c                                           ; $6eb7: $81
	nop                                              ; $6eb8: $00
	inc  b                                           ; $6eb9: $04

jr_088_6eba:
	add  b                                           ; $6eba: $80
	nop                                              ; $6ebb: $00
	add  c                                           ; $6ebc: $81
	nop                                              ; $6ebd: $00
	ld   bc, $008b                                   ; $6ebe: $01 $8b $00
	ld   [$0012], sp                                 ; $6ec1: $08 $12 $00
	ld   a, a                                        ; $6ec4: $7f
	nop                                              ; $6ec5: $00
	ld   l, [hl]                                     ; $6ec6: $6e
	nop                                              ; $6ec7: $00
	rlca                                             ; $6ec8: $07
	nop                                              ; $6ec9: $00
	inc  b                                           ; $6eca: $04
	add  l                                           ; $6ecb: $85
	nop                                              ; $6ecc: $00
	dec  l                                           ; $6ecd: $2d
	add  c                                           ; $6ece: $81
	nop                                              ; $6ecf: $00

jr_088_6ed0:
	ld   bc, $9000                                   ; $6ed0: $01 $00 $90
	nop                                              ; $6ed3: $00
	adc  h                                           ; $6ed4: $8c
	nop                                              ; $6ed5: $00
	or   h                                           ; $6ed6: $b4
	nop                                              ; $6ed7: $00
	pop  de                                          ; $6ed8: $d1
	nop                                              ; $6ed9: $00
	db   $db                                         ; $6eda: $db
	ld   bc, $0227                                   ; $6edb: $01 $27 $02
	adc  a                                           ; $6ede: $8f
	ld   b, $fe                                      ; $6edf: $06 $fe
	ld   a, [bc]                                     ; $6ee1: $0a
	ld   e, d                                        ; $6ee2: $5a
	ld   d, $72                                      ; $6ee3: $16 $72
	ld   a, [hl+]                                    ; $6ee5: $2a
	ldh  [c], a                                      ; $6ee6: $e2
	ld   d, d                                        ; $6ee7: $52
	jp   nz, $82a2                                   ; $6ee8: $c2 $a2 $82

	ld   b, d                                        ; $6eeb: $42
	ld   [bc], a                                     ; $6eec: $02
	add  d                                           ; $6eed: $82
	rla                                              ; $6eee: $17
	db   $10                                         ; $6eef: $10
	ld   l, $20                                      ; $6ef0: $2e $20
	cpl                                              ; $6ef2: $2f
	jr   nz, jr_088_6f14                             ; $6ef3: $20 $1f

	jr   jr_088_6f0e                                 ; $6ef5: $18 $17

	ld   e, $19                                      ; $6ef7: $1e $19
	rra                                              ; $6ef9: $1f
	ld   e, $1f                                      ; $6efa: $1e $1f
	add  b                                           ; $6efc: $80
	ccf                                              ; $6efd: $3f
	db   $10                                         ; $6efe: $10
	sub  b                                           ; $6eff: $90
	nop                                              ; $6f00: $00
	ld   a, b                                        ; $6f01: $78
	nop                                              ; $6f02: $00
	sbc  [hl]                                        ; $6f03: $9e
	nop                                              ; $6f04: $00
	rst  $20                                         ; $6f05: $e7
	nop                                              ; $6f06: $00
	ld   sp, hl                                      ; $6f07: $f9
	nop                                              ; $6f08: $00
	cp   $80                                         ; $6f09: $fe $80
	ld   a, a                                        ; $6f0b: $7f
	ldh  [$9f], a                                    ; $6f0c: $e0 $9f

jr_088_6f0e:
	ld   hl, sp+$1e                                  ; $6f0e: $f8 $1e

jr_088_6f10:
	add  e                                           ; $6f10: $83
	nop                                              ; $6f11: $00
	ld   a, [bc]                                     ; $6f12: $0a
	add  b                                           ; $6f13: $80

jr_088_6f14:
	nop                                              ; $6f14: $00
	ldh  [rP1], a                                    ; $6f15: $e0 $00
	ld   a, b                                        ; $6f17: $78
	nop                                              ; $6f18: $00
	sbc  [hl]                                        ; $6f19: $9e
	nop                                              ; $6f1a: $00
	rst  $20                                         ; $6f1b: $e7
	nop                                              ; $6f1c: $00
	ld   h, c                                        ; $6f1d: $61
	add  a                                           ; $6f1e: $87
	nop                                              ; $6f1f: $00
	dec  d                                           ; $6f20: $15
	ld   bc, $0300                                   ; $6f21: $01 $00 $03
	ld   bc, $0287                                   ; $6f24: $01 $87 $02
	adc  [hl]                                        ; $6f27: $8e
	dec  b                                           ; $6f28: $05
	inc  e                                           ; $6f29: $1c
	ld   a, [bc]                                     ; $6f2a: $0a
	jr   c, @+$16                                    ; $6f2b: $38 $14

	ld   [hl], b                                     ; $6f2d: $70
	jr   z, jr_088_6f10                              ; $6f2e: $28 $e0

	ld   d, b                                        ; $6f30: $50
	ret  nz                                          ; $6f31: $c0

	and  b                                           ; $6f32: $a0
	add  b                                           ; $6f33: $80
	ld   b, b                                        ; $6f34: $40
	nop                                              ; $6f35: $00
	add  b                                           ; $6f36: $80
	add  d                                           ; $6f37: $82
	ld   [bc], a                                     ; $6f38: $02
	add  b                                           ; $6f39: $80
	inc  b                                           ; $6f3a: $04
	add  b                                           ; $6f3b: $80
	ld   [$1080], sp                                 ; $6f3c: $08 $80 $10
	add  b                                           ; $6f3f: $80
	jr   nz, @-$7e                                   ; $6f40: $20 $80

	ld   b, b                                        ; $6f42: $40
	add  b                                           ; $6f43: $80
	add  b                                           ; $6f44: $80
	dec  b                                           ; $6f45: $05
	ld   [hl], b                                     ; $6f46: $70
	ld   a, a                                        ; $6f47: $7f
	ld   d, e                                        ; $6f48: $53
	ld   e, a                                        ; $6f49: $5f
	jr   nc, jr_088_6f7f                             ; $6f4a: $30 $33

	add  b                                           ; $6f4c: $80
	inc  c                                           ; $6f4d: $0c
	add  b                                           ; $6f4e: $80
	inc  bc                                          ; $6f4f: $03
	add  h                                           ; $6f50: $84
	nop                                              ; $6f51: $00
	dec  c                                           ; $6f52: $0d
	ld   b, $fe                                      ; $6f53: $06 $fe
	ld   sp, hl                                      ; $6f55: $f9
	rst  $38                                         ; $6f56: $ff
	cp   $ff                                         ; $6f57: $fe $ff
	ccf                                              ; $6f59: $3f
	rst  $38                                         ; $6f5a: $ff
	rrca                                             ; $6f5b: $0f
	ccf                                              ; $6f5c: $3f
	jp   $30cf                                       ; $6f5d: $c3 $cf $30


	inc  sp                                          ; $6f60: $33
	add  b                                           ; $6f61: $80
	inc  c                                           ; $6f62: $0c
	inc  e                                           ; $6f63: $1c

jr_088_6f64:
	ld   h, a                                        ; $6f64: $67
	nop                                              ; $6f65: $00
	cp   $80                                         ; $6f66: $fe $80
	ld   a, a                                        ; $6f68: $7f
	ldh  [$9f], a                                    ; $6f69: $e0 $9f
	ld   hl, sp-$19                                  ; $6f6b: $f8 $e7
	and  $e1                                         ; $6f6d: $e6 $e1
	ld   sp, hl                                      ; $6f6f: $f9
	ld   hl, sp-$04                                  ; $6f70: $f8 $fc
	inc  a                                           ; $6f72: $3c
	cp   $a9                                         ; $6f73: $fe $a9
	dec  b                                           ; $6f75: $05
	ld   a, h                                        ; $6f76: $7c
	ld   a, [bc]                                     ; $6f77: $0a
	cp   b                                           ; $6f78: $b8
	inc  d                                           ; $6f79: $14
	ldh  a, [$28]                                    ; $6f7a: $f0 $28
	ldh  [$50], a                                    ; $6f7c: $e0 $50
	ret  nz                                          ; $6f7e: $c0

jr_088_6f7f:
	and  b                                           ; $6f7f: $a0
	nop                                              ; $6f80: $00
	add  c                                           ; $6f81: $81
	ld   b, b                                        ; $6f82: $40
	add  b                                           ; $6f83: $80
	ld   bc, $0280                                   ; $6f84: $01 $80 $02
	add  b                                           ; $6f87: $80
	inc  b                                           ; $6f88: $04
	add  b                                           ; $6f89: $80
	ld   [$1080], sp                                 ; $6f8a: $08 $80 $10
	add  b                                           ; $6f8d: $80
	jr   nz, jr_088_6f10                             ; $6f8e: $20 $80

	ld   b, b                                        ; $6f90: $40
	add  b                                           ; $6f91: $80
	add  b                                           ; $6f92: $80
	sbc  [hl]                                        ; $6f93: $9e
	nop                                              ; $6f94: $00
	add  b                                           ; $6f95: $80
	inc  bc                                          ; $6f96: $03
	adc  h                                           ; $6f97: $8c
	nop                                              ; $6f98: $00
	inc  bc                                          ; $6f99: $03
	jr   nc, jr_088_6fda                             ; $6f9a: $30 $3e

	jp   nz, $80cc                                   ; $6f9c: $c2 $cc $80

	inc  sp                                          ; $6f9f: $33
	add  b                                           ; $6fa0: $80
	inc  c                                           ; $6fa1: $0c
	add  b                                           ; $6fa2: $80
	inc  bc                                          ; $6fa3: $03
	add  h                                           ; $6fa4: $84
	nop                                              ; $6fa5: $00
	add  b                                           ; $6fa6: $80
	ld   b, c                                        ; $6fa7: $41
	add  b                                           ; $6fa8: $80
	ld   b, d                                        ; $6fa9: $42
	add  b                                           ; $6faa: $80
	ld   b, h                                        ; $6fab: $44
	add  b                                           ; $6fac: $80
	ret  z                                           ; $6fad: $c8

	add  b                                           ; $6fae: $80

jr_088_6faf:
	ld   d, b                                        ; $6faf: $50
	add  b                                           ; $6fb0: $80
	ldh  [$dc], a                                    ; $6fb1: $e0 $dc
	nop                                              ; $6fb3: $00
	ld   b, $01                                      ; $6fb4: $06 $01
	nop                                              ; $6fb6: $00
	inc  bc                                          ; $6fb7: $03
	nop                                              ; $6fb8: $00
	ld   b, $00                                      ; $6fb9: $06 $00
	inc  b                                           ; $6fbb: $04
	add  a                                           ; $6fbc: $87
	nop                                              ; $6fbd: $00
	ld   [bc], a                                     ; $6fbe: $02
	ld   bc, $0300                                   ; $6fbf: $01 $00 $03
	add  b                                           ; $6fc2: $80
	nop                                              ; $6fc3: $00
	inc  c                                           ; $6fc4: $0c
	ld   b, $0d                                      ; $6fc5: $06 $0d
	ld   bc, $0018                                   ; $6fc7: $01 $18 $00
	jr   nc, jr_088_6fcc                             ; $6fca: $30 $00

jr_088_6fcc:
	ld   h, [hl]                                     ; $6fcc: $66
	ld   b, $c3                                      ; $6fcd: $06 $c3
	inc  bc                                          ; $6fcf: $03
	adc  [hl]                                        ; $6fd0: $8e
	ld   c, $80                                      ; $6fd1: $0e $80
	ld   a, [bc]                                     ; $6fd3: $0a
	add  b                                           ; $6fd4: $80
	ld   b, $8a                                      ; $6fd5: $06 $8a
	nop                                              ; $6fd7: $00
	add  hl, bc                                      ; $6fd8: $09
	ret  nz                                          ; $6fd9: $c0

jr_088_6fda:
	nop                                              ; $6fda: $00
	ldh  a, [rP1]                                    ; $6fdb: $f0 $00
	cp   h                                           ; $6fdd: $bc
	add  b                                           ; $6fde: $80
	ld   l, a                                        ; $6fdf: $6f
	ld   h, b                                        ; $6fe0: $60
	dec  de                                          ; $6fe1: $1b
	jr   jr_088_6f64                                 ; $6fe2: $18 $80

	ld   b, $80                                      ; $6fe4: $06 $80
	add  c                                           ; $6fe6: $81
	add  b                                           ; $6fe7: $80
	ld   h, b                                        ; $6fe8: $60
	add  b                                           ; $6fe9: $80
	ret  c                                           ; $6fea: $d8

	add  b                                           ; $6feb: $80
	add  sp, -$6e                                    ; $6fec: $e8 $92
	nop                                              ; $6fee: $00
	add  hl, bc                                      ; $6fef: $09
	ret  nz                                          ; $6ff0: $c0

	nop                                              ; $6ff1: $00
	ldh  a, [rP1]                                    ; $6ff2: $f0 $00
	cp   h                                           ; $6ff4: $bc
	add  b                                           ; $6ff5: $80
	ld   l, a                                        ; $6ff6: $6f
	ld   h, b                                        ; $6ff7: $60
	dec  de                                          ; $6ff8: $1b
	jr   @-$7e                                       ; $6ff9: $18 $80

	ld   b, $9a                                      ; $6ffb: $06 $9a
	nop                                              ; $6ffd: $00
	inc  b                                           ; $6ffe: $04
	ret  nz                                          ; $6fff: $c0

	nop                                              ; $7000: $00
	ldh  a, [rP1]                                    ; $7001: $f0 $00
	jr   nc, @-$77                                   ; $7003: $30 $87

	nop                                              ; $7005: $00
	db   $10                                         ; $7006: $10
	ld   bc, $0100                                   ; $7007: $01 $00 $01
	ld   [bc], a                                     ; $700a: $02
	rlca                                             ; $700b: $07
	ld   bc, $0804                                   ; $700c: $01 $04 $08
	ld   e, $06                                      ; $700f: $1e $06
	add  hl, bc                                      ; $7011: $09
	ld   bc, $001e                                   ; $7012: $01 $1e $00
	rlca                                             ; $7015: $07
	nop                                              ; $7016: $00
	ld   bc, $0083                                   ; $7017: $01 $83 $00
	ld   a, [bc]                                     ; $701a: $0a
	ld   [$1800], sp                                 ; $701b: $08 $00 $18
	nop                                              ; $701e: $00
	jr   nc, jr_088_7021                             ; $701f: $30 $00

jr_088_7021:
	ld   h, b                                        ; $7021: $60
	nop                                              ; $7022: $00
	ret  nz                                          ; $7023: $c0

	nop                                              ; $7024: $00
	add  b                                           ; $7025: $80
	add  c                                           ; $7026: $81
	nop                                              ; $7027: $00
	add  b                                           ; $7028: $80
	add  b                                           ; $7029: $80
	add  b                                           ; $702a: $80
	ld   h, b                                        ; $702b: $60
	add  b                                           ; $702c: $80
	jr   jr_088_6faf                                 ; $702d: $18 $80

	add  [hl]                                        ; $702f: $86
	add  b                                           ; $7030: $80
	ld   h, c                                        ; $7031: $61
	add  hl, bc                                      ; $7032: $09
	sbc  b                                           ; $7033: $98
	jr   @-$18                                       ; $7034: $18 $e6

	ld   b, $79                                      ; $7036: $06 $79
	ld   bc, $001e                                   ; $7038: $01 $1e $00
	rlca                                             ; $703b: $07
	ld   bc, $0092                                   ; $703c: $01 $92 $00
	add  b                                           ; $703f: $80
	add  b                                           ; $7040: $80
	add  b                                           ; $7041: $80
	ld   h, b                                        ; $7042: $60
	add  b                                           ; $7043: $80
	jr   @-$7e                                       ; $7044: $18 $80

	add  [hl]                                        ; $7046: $86
	add  b                                           ; $7047: $80
	ld   h, c                                        ; $7048: $61
	add  b                                           ; $7049: $80
	ld   [de], a                                     ; $704a: $12
	add  b                                           ; $704b: $80
	ld   l, l                                        ; $704c: $6d
	add  b                                           ; $704d: $80
	inc  bc                                          ; $704e: $03
	add  b                                           ; $704f: $80
	inc  b                                           ; $7050: $04
	sub  b                                           ; $7051: $90
	nop                                              ; $7052: $00
	rlca                                             ; $7053: $07
	ld   bc, $0300                                   ; $7054: $01 $00 $03
	nop                                              ; $7057: $00
	add  [hl]                                        ; $7058: $86
	add  b                                           ; $7059: $80
	add  l                                           ; $705a: $85
	add  c                                           ; $705b: $81
	add  b                                           ; $705c: $80
	add  b                                           ; $705d: $80
	add  b                                           ; $705e: $80
	db   $10                                         ; $705f: $10
	add  b                                           ; $7060: $80
	sbc  h                                           ; $7061: $9c
	add  b                                           ; $7062: $80
	jr   z, @+$29                                    ; $7063: $28 $27

	ld   sp, hl                                      ; $7065: $f9
	ld   hl, sp+$23                                  ; $7066: $f8 $23
	jr   nz, jr_088_7070                             ; $7068: $20 $06

	nop                                              ; $706a: $00
	inc  c                                           ; $706b: $0c
	nop                                              ; $706c: $00
	add  hl, de                                      ; $706d: $19
	nop                                              ; $706e: $00
	ld   [hl-], a                                    ; $706f: $32

jr_088_7070:
	nop                                              ; $7070: $00
	ld   h, l                                        ; $7071: $65
	ld   bc, $04cc                                   ; $7072: $01 $cc $04
	sbc  a                                           ; $7075: $9f
	rrca                                             ; $7076: $0f
	ld   a, [hl+]                                    ; $7077: $2a
	ld   a, [bc]                                     ; $7078: $0a
	ld   d, h                                        ; $7079: $54
	inc  d                                           ; $707a: $14
	rst  $30                                         ; $707b: $f7
	add  b                                           ; $707c: $80
	ld   a, b                                        ; $707d: $78
	ld   h, b                                        ; $707e: $60
	jr   nc, jr_088_7081                             ; $707f: $30 $00

jr_088_7081:
	ld   h, h                                        ; $7081: $64
	nop                                              ; $7082: $00
	ret  nz                                          ; $7083: $c0

	ld   [$0898], sp                                 ; $7084: $08 $98 $08
	jr   z, jr_088_7091                              ; $7087: $28 $08

	ld   c, b                                        ; $7089: $48
	ld   [$48c8], sp                                 ; $708a: $08 $c8 $48
	add  b                                           ; $708d: $80
	xor  b                                           ; $708e: $a8
	ld   a, [bc]                                     ; $708f: $0a
	db   $ec                                         ; $7090: $ec

jr_088_7091:
	add  sp, $48                                     ; $7091: $e8 $48
	ld   b, b                                        ; $7093: $40
	sub  b                                           ; $7094: $90
	add  b                                           ; $7095: $80
	jr   nz, jr_088_7098                             ; $7096: $20 $00

jr_088_7098:
	ld   b, b                                        ; $7098: $40
	nop                                              ; $7099: $00
	add  b                                           ; $709a: $80
	add  c                                           ; $709b: $81
	nop                                              ; $709c: $00
	ld   b, $20                                      ; $709d: $06 $20
	nop                                              ; $709f: $00
	inc  l                                           ; $70a0: $2c
	nop                                              ; $70a1: $00
	rrca                                             ; $70a2: $0f

jr_088_70a3:
	nop                                              ; $70a3: $00
	inc  bc                                          ; $70a4: $03
	sub  l                                           ; $70a5: $95
	nop                                              ; $70a6: $00
	ld   [bc], a                                     ; $70a7: $02
	ld   bc, $0100                                   ; $70a8: $01 $00 $01
	add  e                                           ; $70ab: $83
	nop                                              ; $70ac: $00
	ld   [$00c0], sp                                 ; $70ad: $08 $c0 $00
	ldh  a, [rP1]                                    ; $70b0: $f0 $00
	inc  a                                           ; $70b2: $3c
	nop                                              ; $70b3: $00
	rrca                                             ; $70b4: $0f
	nop                                              ; $70b5: $00
	inc  bc                                          ; $70b6: $03
	adc  l                                           ; $70b7: $8d
	nop                                              ; $70b8: $00
	ld   a, [bc]                                     ; $70b9: $0a
	sbc  b                                           ; $70ba: $98
	jr   jr_088_70a3                                 ; $70bb: $18 $e6

	ld   b, $79                                      ; $70bd: $06 $79
	ld   bc, $001e                                   ; $70bf: $01 $1e $00
	rlca                                             ; $70c2: $07
	jr   @+$1b                                       ; $70c3: $18 $19

	add  b                                           ; $70c5: $80
	ld   b, $80                                      ; $70c6: $06 $80
	inc  bc                                          ; $70c8: $03
	add  hl, bc                                      ; $70c9: $09
	ld   bc, $01c1                                   ; $70ca: $01 $c1 $01
	pop  af                                          ; $70cd: $f1
	inc  bc                                          ; $70ce: $03
	ccf                                              ; $70cf: $3f
	nop                                              ; $70d0: $00
	rrca                                             ; $70d1: $0f
	nop                                              ; $70d2: $00
	inc  bc                                          ; $70d3: $03
	add  l                                           ; $70d4: $85
	nop                                              ; $70d5: $00
	inc  c                                           ; $70d6: $0c
	ld   l, b                                        ; $70d7: $68
	ld   h, b                                        ; $70d8: $60
	add  hl, bc                                      ; $70d9: $09
	db   $10                                         ; $70da: $10
	or   d                                           ; $70db: $b2
	add  b                                           ; $70dc: $80
	ld   hl, $cc45                                   ; $70dd: $21 $45 $cc
	inc  b                                           ; $70e0: $04
	add  h                                           ; $70e1: $84
	inc  d                                           ; $70e2: $14
	inc  [hl]                                        ; $70e3: $34
	add  c                                           ; $70e4: $81
	sub  h                                           ; $70e5: $94
	ld   [bc], a                                     ; $70e6: $02
	sub  l                                           ; $70e7: $95
	sub  h                                           ; $70e8: $94
	sub  [hl]                                        ; $70e9: $96
	add  b                                           ; $70ea: $80
	sub  h                                           ; $70eb: $94
	dec  b                                           ; $70ec: $05
	sub  b                                           ; $70ed: $90
	sbc  b                                           ; $70ee: $98
	db   $10                                         ; $70ef: $10
	sub  b                                           ; $70f0: $90
	nop                                              ; $70f1: $00
	and  b                                           ; $70f2: $a0
	add  e                                           ; $70f3: $83
	nop                                              ; $70f4: $00
	ld   c, $c6                                      ; $70f5: $0e $c6
	jr   c, jr_088_715b                              ; $70f7: $38 $62

	ld   h, b                                        ; $70f9: $60
	call nc, $48d0                                   ; $70fa: $d4 $d0 $48
	ld   b, b                                        ; $70fd: $40
	sub  b                                           ; $70fe: $90
	add  b                                           ; $70ff: $80
	and  b                                           ; $7100: $a0
	add  b                                           ; $7101: $80
	ld   b, b                                        ; $7102: $40
	nop                                              ; $7103: $00
	add  b                                           ; $7104: $80
	rst  $38                                         ; $7105: $ff
	nop                                              ; $7106: $00
	rst  $38                                         ; $7107: $ff
	nop                                              ; $7108: $00
	rst  $38                                         ; $7109: $ff
	nop                                              ; $710a: $00
	rst  $38                                         ; $710b: $ff
	nop                                              ; $710c: $00
	rst  $38                                         ; $710d: $ff
	nop                                              ; $710e: $00
	xor  d                                           ; $710f: $aa
	nop                                              ; $7110: $00
	db   $fd                                         ; $7111: $fd
	nop                                              ; $7112: $00
	sbc  b                                           ; $7113: $98
	nop                                              ; $7114: $00
	add  b                                           ; $7115: $80
	ld   bc, $0305                                   ; $7116: $01 $05 $03
	ld   [bc], a                                     ; $7119: $02
	ld   b, $04                                      ; $711a: $06 $04
	inc  bc                                          ; $711c: $03
	nop                                              ; $711d: $00
	add  b                                           ; $711e: $80
	rra                                              ; $711f: $1f
	dec  c                                           ; $7120: $0d
	ld   hl, $2c22                                   ; $7121: $21 $22 $2c
	cpl                                              ; $7124: $2f
	rst  $38                                         ; $7125: $ff
	rst  $28                                         ; $7126: $ef
	jr   z, @-$0f                                    ; $7127: $28 $ef

	jr   z, @+$6e                                    ; $7129: $28 $6c

	ld   e, h                                        ; $712b: $5c
	ld   [hl], h                                     ; $712c: $74
	cp   e                                           ; $712d: $bb
	nop                                              ; $712e: $00
	add  b                                           ; $712f: $80
	db   $fc                                         ; $7130: $fc
	inc  bc                                          ; $7131: $03
	sbc  [hl]                                        ; $7132: $9e
	ld   h, d                                        ; $7133: $62
	ld   [bc], a                                     ; $7134: $02
	ld   a, [$fb80]                                  ; $7135: $fa $80 $fb
	ld   b, $7b                                      ; $7138: $06 $7b
	adc  d                                           ; $713a: $8a

jr_088_713b:
	ld   a, [bc]                                     ; $713b: $0a
	dec  de                                          ; $713c: $1b
	rst  $30                                         ; $713d: $f7
	db   $fd                                         ; $713e: $fd
	xor  $85                                         ; $713f: $ee $85
	nop                                              ; $7141: $00
	add  b                                           ; $7142: $80
	cp   $06                                         ; $7143: $fe $06
	ldh  [c], a                                      ; $7145: $e2
	ld   e, $82                                      ; $7146: $1e $82
	add  [hl]                                        ; $7148: $86
	ldh  a, [c]                                      ; $7149: $f2
	ld   a, [$9df0]                                  ; $714a: $fa $f0 $9d
	nop                                              ; $714d: $00
	dec  b                                           ; $714e: $05
	ld   [$180f], sp                                 ; $714f: $08 $0f $18
	db   $10                                         ; $7152: $10
	jr   nc, jr_088_7194                             ; $7153: $30 $3f

	add  b                                           ; $7155: $80
	jr   nz, jr_088_715c                             ; $7156: $20 $04

	inc  l                                           ; $7158: $2c
	inc  hl                                          ; $7159: $23
	ld   [hl+], a                                    ; $715a: $22

jr_088_715b:
	inc  hl                                          ; $715b: $23

jr_088_715c:
	ld   hl, $2280                                   ; $715c: $21 $80 $22
	ld   b, $24                                      ; $715f: $06 $24
	db   $f4                                         ; $7161: $f4
	jr   c, jr_088_71ab                              ; $7162: $38 $47

	ld   a, a                                        ; $7164: $7f
	nop                                              ; $7165: $00
	rst  $38                                         ; $7166: $ff
	add  b                                           ; $7167: $80
	nop                                              ; $7168: $00
	ld   b, $cd                                      ; $7169: $06 $cd
	ld   [hl-], a                                    ; $716b: $32
	ld   [de], a                                     ; $716c: $12
	ldh  a, [c]                                      ; $716d: $f2
	and  $17                                         ; $716e: $e6 $17
	ld   de, $ee80                                   ; $7170: $11 $80 $ee
	inc  b                                           ; $7173: $04
	ld   c, $ce                                      ; $7174: $0e $ce
	ret  nz                                          ; $7176: $c0

	nop                                              ; $7177: $00
	rst  $38                                         ; $7178: $ff
	add  b                                           ; $7179: $80
	nop                                              ; $717a: $00
	inc  b                                           ; $717b: $04

jr_088_717c:
	sbc  e                                           ; $717c: $9b
	ld   h, h                                        ; $717d: $64
	inc  b                                           ; $717e: $04
	db   $fc                                         ; $717f: $fc
	ld   hl, sp-$80                                  ; $7180: $f8 $80
	inc  b                                           ; $7182: $04
	ld   b, $f2                                      ; $7183: $06 $f2
	rst  $30                                         ; $7185: $f7
	ld   [de], a                                     ; $7186: $12
	jp   nz, $22e2                                   ; $7187: $c2 $e2 $22

	jp   nz, Jump_088_4280                           ; $718a: $c2 $80 $42

	dec  b                                           ; $718d: $05
	ld   d, d                                        ; $718e: $52
	jp   c, $ded2                                    ; $718f: $da $d2 $de

	db   $db                                         ; $7192: $db
	rst  JumpTable                                         ; $7193: $df

jr_088_7194:
	add  b                                           ; $7194: $80
	call c, $a800                                    ; $7195: $dc $00 $a8
	adc  c                                           ; $7198: $89
	nop                                              ; $7199: $00

jr_088_719a:
	add  d                                           ; $719a: $82
	add  b                                           ; $719b: $80
	adc  [hl]                                        ; $719c: $8e
	nop                                              ; $719d: $00
	ld   [bc], a                                     ; $719e: $02
	cpl                                              ; $719f: $2f
	add  hl, hl                                      ; $71a0: $29
	jr   z, @-$79                                    ; $71a1: $28 $85

	ld   a, [hl+]                                    ; $71a3: $2a
	nop                                              ; $71a4: $00
	dec  hl                                          ; $71a5: $2b
	add  b                                           ; $71a6: $80
	add  hl, hl                                      ; $71a7: $29
	add  b                                           ; $71a8: $80
	dec  h                                           ; $71a9: $25
	inc  b                                           ; $71aa: $04

jr_088_71ab:
	inc  h                                           ; $71ab: $24
	inc  d                                           ; $71ac: $14
	ld   de, $0e00                                   ; $71ad: $11 $00 $0e
	add  b                                           ; $71b0: $80
	nop                                              ; $71b1: $00
	add  b                                           ; $71b2: $80
	rrca                                             ; $71b3: $0f
	add  b                                           ; $71b4: $80
	jr   nc, @-$7e                                   ; $71b5: $30 $80

jr_088_71b7:
	ld   b, b                                        ; $71b7: $40
	add  b                                           ; $71b8: $80
	jr   nz, jr_088_713b                             ; $71b9: $20 $80

	add  b                                           ; $71bb: $80
	ld   [bc], a                                     ; $71bc: $02
	rrca                                             ; $71bd: $0f
	add  hl, bc                                      ; $71be: $09
	ld   bc, $0583                                   ; $71bf: $01 $83 $05
	add  b                                           ; $71c2: $80

jr_088_71c3:
	push bc                                          ; $71c3: $c5
	ld   c, $2d                                      ; $71c4: $0e $2d
	add  hl, hl                                      ; $71c6: $29
	ld   c, c                                        ; $71c7: $49
	ld   c, d                                        ; $71c8: $4a
	dec  de                                          ; $71c9: $1b
	inc  de                                          ; $71ca: $13
	ld   [hl], d                                     ; $71cb: $72
	rst  JumpTable                                         ; $71cc: $df
	add  $c2                                         ; $71cd: $c6 $c2
	add  $c2                                         ; $71cf: $c6 $c2
	jp   nc, $c6c2                                   ; $71d1: $d2 $c2 $c6

	add  c                                           ; $71d4: $81
	jp   nz, $ca05                                   ; $71d5: $c2 $05 $ca

	adc  $c2                                         ; $71d8: $ce $c2
	sbc  $2c                                         ; $71da: $de $2c
	add  b                                           ; $71dc: $80
	adc  [hl]                                        ; $71dd: $8e
	nop                                              ; $71de: $00
	add  b                                           ; $71df: $80
	inc  bc                                          ; $71e0: $03
	add  b                                           ; $71e1: $80
	inc  b                                           ; $71e2: $04
	add  b                                           ; $71e3: $80
	dec  b                                           ; $71e4: $05
	add  d                                           ; $71e5: $82
	ld   a, [bc]                                     ; $71e6: $0a
	add  b                                           ; $71e7: $80
	rrca                                             ; $71e8: $0f
	add  b                                           ; $71e9: $80
	ld   de, $ef05                                   ; $71ea: $11 $05 $ef
	ldh  [c], a                                      ; $71ed: $e2
	jr   nz, @+$25                                   ; $71ee: $20 $23

	ldh  [c], a                                      ; $71f0: $e2
	db   $e3                                         ; $71f1: $e3
	add  b                                           ; $71f2: $80
	dec  hl                                          ; $71f3: $2b
	ld   [bc], a                                     ; $71f4: $02
	jr   z, jr_088_7226                              ; $71f5: $28 $2f

	jr   nz, jr_088_717c                             ; $71f7: $20 $83

	jr   z, jr_088_71fd                              ; $71f9: $28 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71fb: $cf
	ld   c, a                                        ; $71fc: $4f

jr_088_71fd:
	ld   a, a                                        ; $71fd: $7f
	add  b                                           ; $71fe: $80

Call_088_71ff:
	ccf                                              ; $71ff: $3f
	add  b                                           ; $7200: $80
	sbc  a                                           ; $7201: $9f
	add  b                                           ; $7202: $80
	ld   c, a                                        ; $7203: $4f
	ld   bc, $0626                                   ; $7204: $01 $26 $06
	add  b                                           ; $7207: $80
	or   b                                           ; $7208: $b0
	dec  b                                           ; $7209: $05
	xor  c                                           ; $720a: $a9
	and  c                                           ; $720b: $a1
	xor  [hl]                                        ; $720c: $ae
	ld   b, a                                        ; $720d: $47
	dec  h                                           ; $720e: $25
	pop  hl                                          ; $720f: $e1
	add  b                                           ; $7210: $80
	call $9505                                       ; $7211: $cd $05 $95
	sub  h                                           ; $7214: $94
	inc  h                                           ; $7215: $24
	nop                                              ; $7216: $00
	ld   l, [hl]                                     ; $7217: $6e
	jr   nz, jr_088_719a                             ; $7218: $20 $80

	pop  af                                          ; $721a: $f1
	nop                                              ; $721b: $00
	ld   [hl], c                                     ; $721c: $71
	add  b                                           ; $721d: $80
	ld   d, c                                        ; $721e: $51
	ld   bc, $df97                                   ; $721f: $01 $97 $df
	add  b                                           ; $7222: $80
	call c, $d702                                    ; $7223: $dc $02 $d7

jr_088_7226:
	rst  JumpTable                                         ; $7226: $df
	sub  $81                                         ; $7227: $d6 $81
	jp   nz, $d203                                   ; $7229: $c2 $03 $d2

	jp   nz, $c4c0                                   ; $722c: $c2 $c0 $c4

	add  b                                           ; $722f: $80
	ret  z                                           ; $7230: $c8

	ld   bc, $c060                                   ; $7231: $01 $60 $c0
	add  b                                           ; $7234: $80
	jr   nc, jr_088_71b7                             ; $7235: $30 $80

	adc  b                                           ; $7237: $88
	add  b                                           ; $7238: $80
	ld   l, b                                        ; $7239: $68
	add  b                                           ; $723a: $80
	inc  h                                           ; $723b: $24
	add  h                                           ; $723c: $84
	inc  d                                           ; $723d: $14
	add  b                                           ; $723e: $80
	daa                                              ; $723f: $27
	add  b                                           ; $7240: $80
	jr   z, jr_088_71c3                              ; $7241: $28 $80

	inc  de                                          ; $7243: $13
	add  b                                           ; $7244: $80
	inc  d                                           ; $7245: $14
	add  b                                           ; $7246: $80
	add  hl, de                                      ; $7247: $19
	add  b                                           ; $7248: $80
	ld   a, [de]                                     ; $7249: $1a
	add  b                                           ; $724a: $80
	ld   a, [bc]                                     ; $724b: $0a
	add  b                                           ; $724c: $80
	ld   c, $05                                      ; $724d: $0e $05
	xor  a                                           ; $724f: $af
	and  a                                           ; $7250: $a7
	and  h                                           ; $7251: $a4
	and  e                                           ; $7252: $a3
	or   b                                           ; $7253: $b0
	cp   a                                           ; $7254: $bf
	add  b                                           ; $7255: $80
	add  b                                           ; $7256: $80
	add  b                                           ; $7257: $80
	ret  nz                                          ; $7258: $c0

	add  b                                           ; $7259: $80
	ld   b, b                                        ; $725a: $40
	add  b                                           ; $725b: $80
	jp   $8702                                       ; $725c: $c3 $02 $87


	add  l                                           ; $725f: $85
	ld   e, e                                        ; $7260: $5b
	add  c                                           ; $7261: $81
	and  [hl]                                        ; $7262: $a6
	ld   bc, $ff00                                   ; $7263: $01 $00 $ff
	add  h                                           ; $7266: $84
	nop                                              ; $7267: $00
	add  b                                           ; $7268: $80
	ret  nz                                          ; $7269: $c0

	rlca                                             ; $726a: $07
	and  b                                           ; $726b: $a0
	jr   nz, jr_088_72ad                             ; $726c: $20 $3f

	ld   c, [hl]                                     ; $726e: $4e
	ld   b, d                                        ; $726f: $42
	ld   c, h                                        ; $7270: $4c
	nop                                              ; $7271: $00
	rst  $38                                         ; $7272: $ff
	add  h                                           ; $7273: $84
	nop                                              ; $7274: $00
	add  b                                           ; $7275: $80
	inc  a                                           ; $7276: $3c
	rlca                                             ; $7277: $07
	ld   a, d                                        ; $7278: $7a
	ld   d, d                                        ; $7279: $52
	ld   e, b                                        ; $727a: $58
	ret  nc                                          ; $727b: $d0

	ret  nz                                          ; $727c: $c0

	ldh  [rSTAT], a                                  ; $727d: $e0 $41
	pop  bc                                          ; $727f: $c1
	add  b                                           ; $7280: $80
	inc  bc                                          ; $7281: $03
	add  b                                           ; $7282: $80
	inc  b                                           ; $7283: $04
	add  b                                           ; $7284: $80
	ld   c, $80                                      ; $7285: $0e $80
	add  hl, bc                                      ; $7287: $09
	add  b                                           ; $7288: $80
	dec  c                                           ; $7289: $0d
	add  b                                           ; $728a: $80
	ld   [hl], h                                     ; $728b: $74
	add  b                                           ; $728c: $80
	ld   c, h                                        ; $728d: $4c
	add  b                                           ; $728e: $80
	db   $e4                                         ; $728f: $e4
	add  b                                           ; $7290: $80
	inc  [hl]                                        ; $7291: $34
	add  b                                           ; $7292: $80
	call nc, Call_088_5880                           ; $7293: $d4 $80 $58
	add  b                                           ; $7296: $80
	ld   d, b                                        ; $7297: $50
	add  b                                           ; $7298: $80
	ld   h, b                                        ; $7299: $60
	add  b                                           ; $729a: $80
	ld   b, $80                                      ; $729b: $06 $80
	inc  bc                                          ; $729d: $03
	add  b                                           ; $729e: $80
	ld   bc, $0088                                   ; $729f: $01 $88 $00
	dec  c                                           ; $72a2: $0d
	ld   c, a                                        ; $72a3: $4f
	ld   c, c                                        ; $72a4: $49
	add  hl, sp                                      ; $72a5: $39
	dec  sp                                          ; $72a6: $3b
	adc  b                                           ; $72a7: $88
	adc  h                                           ; $72a8: $8c
	ld   a, a                                        ; $72a9: $7f
	ld   a, e                                        ; $72aa: $7b

jr_088_72ab:
	add  hl, bc                                      ; $72ab: $09
	ld   a, [bc]                                     ; $72ac: $0a

jr_088_72ad:
	ld   [bc], a                                     ; $72ad: $02
	ld   b, $00                                      ; $72ae: $06 $00
	inc  bc                                          ; $72b0: $03
	add  b                                           ; $72b1: $80
	nop                                              ; $72b2: $00
	dec  c                                           ; $72b3: $0d
	or   b                                           ; $72b4: $b0
	db   $10                                         ; $72b5: $10
	ld   d, b                                        ; $72b6: $50
	ret  nc                                          ; $72b7: $d0

	db   $10                                         ; $72b8: $10
	jr   nc, jr_088_72ab                             ; $72b9: $30 $f0

	ret  nc                                          ; $72bb: $d0

	sub  b                                           ; $72bc: $90
	ld   d, b                                        ; $72bd: $50
	ld   b, b                                        ; $72be: $40
	ld   h, b                                        ; $72bf: $60
	nop                                              ; $72c0: $00
	ret  nz                                          ; $72c1: $c0

	add  b                                           ; $72c2: $80
	nop                                              ; $72c3: $00
	dec  c                                           ; $72c4: $0d
	ei                                               ; $72c5: $fb
	sub  c                                           ; $72c6: $91

jr_088_72c7:
	sub  l                                           ; $72c7: $95
	cp   l                                           ; $72c8: $bd
	add  c                                           ; $72c9: $81
	jp   $bdff                                       ; $72ca: $c3 $ff $bd


	sbc  c                                           ; $72cd: $99
	and  l                                           ; $72ce: $a5
	inc  h                                           ; $72cf: $24
	ld   h, [hl]                                     ; $72d0: $66
	nop                                              ; $72d1: $00
	inc  a                                           ; $72d2: $3c
	add  b                                           ; $72d3: $80
	nop                                              ; $72d4: $00
	add  b                                           ; $72d5: $80
	add  hl, de                                      ; $72d6: $19
	add  b                                           ; $72d7: $80
	ldh  [c], a                                      ; $72d8: $e2
	add  b                                           ; $72d9: $80
	inc  e                                           ; $72da: $1c
	add  b                                           ; $72db: $80
	ldh  [$86], a                                    ; $72dc: $e0 $86
	nop                                              ; $72de: $00
	add  b                                           ; $72df: $80
	add  b                                           ; $72e0: $80
	jp   nz, $8000                                   ; $72e1: $c2 $00 $80

	rra                                              ; $72e4: $1f
	add  [hl]                                        ; $72e5: $86
	db   $10                                         ; $72e6: $10
	add  d                                           ; $72e7: $82
	nop                                              ; $72e8: $00
	add  b                                           ; $72e9: $80
	inc  e                                           ; $72ea: $1c
	add  b                                           ; $72eb: $80
	db   $10                                         ; $72ec: $10
	adc  h                                           ; $72ed: $8c
	nop                                              ; $72ee: $00
	add  b                                           ; $72ef: $80
	rst  $38                                         ; $72f0: $ff
	sbc  h                                           ; $72f1: $9c
	nop                                              ; $72f2: $00
	add  b                                           ; $72f3: $80
	rst  $38                                         ; $72f4: $ff
	sub  h                                           ; $72f5: $94
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	inc  b                                           ; $72f8: $04
	add  c                                           ; $72f9: $81
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	db   $10                                         ; $72fc: $10
	add  c                                           ; $72fd: $81
	nop                                              ; $72fe: $00
	add  b                                           ; $72ff: $80
	add  b                                           ; $7300: $80
	ld   [bc], a                                     ; $7301: $02

jr_088_7302:
	stop                                             ; $7302: $10 $00
	inc  b                                           ; $7304: $04
	add  c                                           ; $7305: $81
	nop                                              ; $7306: $00
	add  b                                           ; $7307: $80
	inc  bc                                          ; $7308: $03
	or   d                                           ; $7309: $b2
	nop                                              ; $730a: $00
	add  b                                           ; $730b: $80
	inc  bc                                          ; $730c: $03
	add  b                                           ; $730d: $80
	ld   [bc], a                                     ; $730e: $02
	add  d                                           ; $730f: $82
	inc  b                                           ; $7310: $04
	add  b                                           ; $7311: $80
	nop                                              ; $7312: $00
	add  b                                           ; $7313: $80
	ld   c, $80                                      ; $7314: $0e $80
	db   $10                                         ; $7316: $10
	add  [hl]                                        ; $7317: $86
	ld   de, $1086                                   ; $7318: $11 $86 $10
	add  b                                           ; $731b: $80
	ret  nc                                          ; $731c: $d0

	add  l                                           ; $731d: $85
	db   $10                                         ; $731e: $10
	add  b                                           ; $731f: $80
	inc  de                                          ; $7320: $13
	add  c                                           ; $7321: $81
	rla                                              ; $7322: $17
	ld   bc, $e0e7                                   ; $7323: $01 $e7 $e0
	add  b                                           ; $7326: $80
	pop  af                                          ; $7327: $f1
	add  b                                           ; $7328: $80
	rst  $38                                         ; $7329: $ff
	add  b                                           ; $732a: $80
	ldh  a, [rSB]                                    ; $732b: $f0 $01
	adc  $cf                                         ; $732d: $ce $cf
	add  b                                           ; $732f: $80
	cp   a                                           ; $7330: $bf
	ld   bc, $dfdc                                   ; $7331: $01 $dc $df
	add  b                                           ; $7334: $80
	ld   a, a                                        ; $7335: $7f
	ld   bc, $3032                                   ; $7336: $01 $32 $30
	adc  h                                           ; $7339: $8c
	nop                                              ; $733a: $00
	add  b                                           ; $733b: $80
	ldh  a, [$80]                                    ; $733c: $f0 $80
	ld   hl, sp+$00                                  ; $733e: $f8 $00
	ld   a, b                                        ; $7340: $78
	add  c                                           ; $7341: $81
	ld   hl, sp+$01                                  ; $7342: $f8 $01
	cp   b                                           ; $7344: $b8
	jr   c, jr_088_72c7                              ; $7345: $38 $80

	ret  nc                                          ; $7347: $d0

	add  b                                           ; $7348: $80
	or   b                                           ; $7349: $b0
	add  b                                           ; $734a: $80
	ldh  [$80], a                                    ; $734b: $e0 $80
	ret  nz                                          ; $734d: $c0

	add  a                                           ; $734e: $87
	nop                                              ; $734f: $00
	add  b                                           ; $7350: $80
	ld   b, $82                                      ; $7351: $06 $82
	ld   c, $07                                      ; $7353: $0e $07
	nop                                              ; $7355: $00
	jr   jr_088_7358                                 ; $7356: $18 $00

jr_088_7358:
	inc  b                                           ; $7358: $04
	nop                                              ; $7359: $00
	stop                                             ; $735a: $10 $00
	inc  b                                           ; $735c: $04
	add  c                                           ; $735d: $81
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	ld   [$0083], sp                                 ; $7360: $08 $83 $00
	add  b                                           ; $7363: $80
	inc  bc                                          ; $7364: $03
	add  b                                           ; $7365: $80
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	ld   [$0081], sp                                 ; $7368: $08 $81 $00
	nop                                              ; $736b: $00
	db   $10                                         ; $736c: $10
	add  c                                           ; $736d: $81
	nop                                              ; $736e: $00
	ld   [bc], a                                     ; $736f: $02
	ld   [$1000], sp                                 ; $7370: $08 $00 $10
	adc  a                                           ; $7373: $8f
	nop                                              ; $7374: $00
	add  b                                           ; $7375: $80
	ret  nz                                          ; $7376: $c0

	add  b                                           ; $7377: $80
	ld   [hl], b                                     ; $7378: $70
	add  b                                           ; $7379: $80
	db   $10                                         ; $737a: $10
	add  b                                           ; $737b: $80
	jr   jr_088_7302                                 ; $737c: $18 $84

	ld   [$1880], sp                                 ; $737e: $08 $80 $18
	add  b                                           ; $7381: $80
	rla                                              ; $7382: $17
	add  b                                           ; $7383: $80
	inc  c                                           ; $7384: $0c
	add  b                                           ; $7385: $80
	dec  bc                                          ; $7386: $0b
	add  b                                           ; $7387: $80
	ld   b, $82                                      ; $7388: $06 $82
	dec  b                                           ; $738a: $05
	add  d                                           ; $738b: $82
	ld   bc, $008c                                   ; $738c: $01 $8c $00
	add  d                                           ; $738f: $82
	db   $10                                         ; $7390: $10
	add  h                                           ; $7391: $84
	nop                                              ; $7392: $00
	add  b                                           ; $7393: $80
	add  b                                           ; $7394: $80
	add  d                                           ; $7395: $82
	nop                                              ; $7396: $00
	add  b                                           ; $7397: $80
	add  b                                           ; $7398: $80
	add  b                                           ; $7399: $80
	ret  nz                                          ; $739a: $c0

	add  b                                           ; $739b: $80
	ld   [hl], b                                     ; $739c: $70
	sub  [hl]                                        ; $739d: $96
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	ld   b, b                                        ; $73a0: $40
	add  c                                           ; $73a1: $81
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	ld   b, b                                        ; $73a4: $40
	sbc  c                                           ; $73a5: $99
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	inc  b                                           ; $73a8: $04
	add  c                                           ; $73a9: $81
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	inc  b                                           ; $73ac: $04
	sub  e                                           ; $73ad: $93
	nop                                              ; $73ae: $00
	add  b                                           ; $73af: $80
	inc  bc                                          ; $73b0: $03
	add  b                                           ; $73b1: $80
	ld   bc, $0680                                   ; $73b2: $01 $80 $06
	add  b                                           ; $73b5: $80
	ld   [bc], a                                     ; $73b6: $02
	add  b                                           ; $73b7: $80
	ld   b, $80                                      ; $73b8: $06 $80
	inc  e                                           ; $73ba: $1c
	add  b                                           ; $73bb: $80
	ldh  [$88], a                                    ; $73bc: $e0 $88
	nop                                              ; $73be: $00
	add  b                                           ; $73bf: $80
	ld   [$3080], sp                                 ; $73c0: $08 $80 $30
	add  b                                           ; $73c3: $80
	jr   @-$7e                                       ; $73c4: $18 $80

	ret  z                                           ; $73c6: $c8

	add  b                                           ; $73c7: $80
	jr   z, @-$7c                                    ; $73c8: $28 $82

	and  b                                           ; $73ca: $a0

jr_088_73cb:
	add  b                                           ; $73cb: $80
	add  b                                           ; $73cc: $80

jr_088_73cd:
	rst  $38                                         ; $73cd: $ff
	nop                                              ; $73ce: $00

jr_088_73cf:
	rst  $38                                         ; $73cf: $ff
	nop                                              ; $73d0: $00
	rst  $38                                         ; $73d1: $ff
	nop                                              ; $73d2: $00
	rst  $38                                         ; $73d3: $ff
	nop                                              ; $73d4: $00
	rst  $38                                         ; $73d5: $ff
	nop                                              ; $73d6: $00
	adc  c                                           ; $73d7: $89
	nop                                              ; $73d8: $00
	ld   c, c                                        ; $73d9: $49
	ld   bc, $0082                                   ; $73da: $01 $82 $00

jr_088_73dd:
	add  b                                           ; $73dd: $80
	ccf                                              ; $73de: $3f
	ld   bc, $3f20                                   ; $73df: $01 $20 $3f
	add  c                                           ; $73e2: $81
	jr   nc, jr_088_73e6                             ; $73e3: $30 $01

	scf                                              ; $73e5: $37

jr_088_73e6:
	inc  [hl]                                        ; $73e6: $34
	add  b                                           ; $73e7: $80
	scf                                              ; $73e8: $37
	ld   bc, $1a36                                   ; $73e9: $01 $36 $1a
	add  c                                           ; $73ec: $81
	nop                                              ; $73ed: $00
	add  b                                           ; $73ee: $80
	rst  $38                                         ; $73ef: $ff
	ld   bc, $ff00                                   ; $73f0: $01 $00 $ff
	add  c                                           ; $73f3: $81
	nop                                              ; $73f4: $00
	ld   bc, $10ff                                   ; $73f5: $01 $ff $10
	add  b                                           ; $73f8: $80

jr_088_73f9:
	rst  $38                                         ; $73f9: $ff
	nop                                              ; $73fa: $00

jr_088_73fb:
	db   $10                                         ; $73fb: $10
	add  d                                           ; $73fc: $82
	nop                                              ; $73fd: $00
	add  b                                           ; $73fe: $80
	rst  $38                                         ; $73ff: $ff
	ld   bc, $ff00                                   ; $7400: $01 $00 $ff
	add  c                                           ; $7403: $81
	nop                                              ; $7404: $00
	ld   bc, $41ff                                   ; $7405: $01 $ff $41
	add  b                                           ; $7408: $80
	rst  $38                                         ; $7409: $ff
	nop                                              ; $740a: $00
	ld   b, c                                        ; $740b: $41
	add  d                                           ; $740c: $82
	nop                                              ; $740d: $00
	add  b                                           ; $740e: $80
	rst  $38                                         ; $740f: $ff
	ld   bc, $ff00                                   ; $7410: $01 $00 $ff
	add  c                                           ; $7413: $81
	nop                                              ; $7414: $00
	ld   bc, $04ff                                   ; $7415: $01 $ff $04
	add  b                                           ; $7418: $80
	rlca                                             ; $7419: $07
	nop                                              ; $741a: $00
	inc  b                                           ; $741b: $04
	add  d                                           ; $741c: $82

jr_088_741d:
	nop                                              ; $741d: $00
	add  b                                           ; $741e: $80
	rst  $38                                         ; $741f: $ff
	ld   bc, $ff00                                   ; $7420: $01 $00 $ff
	add  c                                           ; $7423: $81
	nop                                              ; $7424: $00
	ld   bc, $10ff                                   ; $7425: $01 $ff $10
	add  b                                           ; $7428: $80
	rst  $38                                         ; $7429: $ff
	nop                                              ; $742a: $00
	db   $10                                         ; $742b: $10
	add  d                                           ; $742c: $82
	nop                                              ; $742d: $00
	add  b                                           ; $742e: $80
	ld   hl, sp+$01                                  ; $742f: $f8 $01
	ld   [$81f8], sp                                 ; $7431: $08 $f8 $81
	jr   z, @+$03                                    ; $7434: $28 $01

	add  sp, $68                                     ; $7436: $e8 $68
	add  b                                           ; $7438: $80
	add  sp, $01                                     ; $7439: $e8 $01
	ld   l, b                                        ; $743b: $68
	inc  e                                           ; $743c: $1c
	add  l                                           ; $743d: $85
	ld   [hl], $80                                   ; $743e: $36 $80
	scf                                              ; $7440: $37
	ld   [bc], a                                     ; $7441: $02
	dec  [hl]                                        ; $7442: $35
	scf                                              ; $7443: $37
	inc  [hl]                                        ; $7444: $34
	add  c                                           ; $7445: $81
	ld   [hl], $01                                   ; $7446: $36 $01
	ld   a, [hl+]                                    ; $7448: $2a
	jr   nc, jr_088_73cb                             ; $7449: $30 $80

	jr   nz, jr_088_73cd                             ; $744b: $20 $80

	jr   nc, jr_088_73cf                             ; $744d: $30 $80

	db   $10                                         ; $744f: $10
	add  b                                           ; $7450: $80
	ret  nc                                          ; $7451: $d0

	add  b                                           ; $7452: $80
	ld   a, l                                        ; $7453: $7d
	add  b                                           ; $7454: $80
	rla                                              ; $7455: $17
	add  b                                           ; $7456: $80
	db   $10                                         ; $7457: $10
	add  b                                           ; $7458: $80
	ld   h, c                                        ; $7459: $61
	add  b                                           ; $745a: $80
	jr   nz, jr_088_73dd                             ; $745b: $20 $80

	ld   h, c                                        ; $745d: $61
	add  b                                           ; $745e: $80
	ld   b, c                                        ; $745f: $41
	add  b                                           ; $7460: $80
	ld   e, l                                        ; $7461: $5d
	add  b                                           ; $7462: $80
	rst  $30                                         ; $7463: $f7
	add  d                                           ; $7464: $82
	nop                                              ; $7465: $00
	add  b                                           ; $7466: $80
	add  [hl]                                        ; $7467: $86
	add  b                                           ; $7468: $80
	add  d                                           ; $7469: $82
	add  b                                           ; $746a: $80
	add  [hl]                                        ; $746b: $86
	add  b                                           ; $746c: $80
	inc  b                                           ; $746d: $04
	add  b                                           ; $746e: $80
	dec  b                                           ; $746f: $05
	add  b                                           ; $7470: $80
	rlca                                             ; $7471: $07
	add  d                                           ; $7472: $82
	nop                                              ; $7473: $00
	add  b                                           ; $7474: $80
	jr   nc, @-$7e                                   ; $7475: $30 $80

	jr   nz, jr_088_73f9                             ; $7477: $20 $80

	jr   nc, jr_088_73fb                             ; $7479: $30 $80

	db   $10                                         ; $747b: $10
	add  b                                           ; $747c: $80
	ret  nc                                          ; $747d: $d0

	add  b                                           ; $747e: $80
	ld   a, l                                        ; $747f: $7d

Call_088_7480:
	add  b                                           ; $7480: $80
	rla                                              ; $7481: $17
	add  b                                           ; $7482: $80
	stop                                             ; $7483: $10 $00
	ld   e, b                                        ; $7485: $58
	add  a                                           ; $7486: $87
	ld   l, b                                        ; $7487: $68
	add  b                                           ; $7488: $80
	add  sp, -$7e                                    ; $7489: $e8 $82
	ld   l, b                                        ; $748b: $68
	nop                                              ; $748c: $00
	inc  e                                           ; $748d: $1c
	add  a                                           ; $748e: $87
	ld   [hl], $01                                   ; $748f: $36 $01
	dec  [hl]                                        ; $7491: $35
	scf                                              ; $7492: $37
	add  b                                           ; $7493: $80
	dec  [hl]                                        ; $7494: $35
	add  b                                           ; $7495: $80
	inc  [hl]                                        ; $7496: $34
	ld   bc, $3028                                   ; $7497: $01 $28 $30
	add  b                                           ; $749a: $80
	jr   nz, jr_088_741d                             ; $749b: $20 $80

	jr   nc, @-$7c                                   ; $749d: $30 $82

	db   $10                                         ; $749f: $10
	add  b                                           ; $74a0: $80
	ld   [hl], b                                     ; $74a1: $70
	add  b                                           ; $74a2: $80
	ret  nz                                          ; $74a3: $c0

	adc  d                                           ; $74a4: $8a
	nop                                              ; $74a5: $00
	add  b                                           ; $74a6: $80
	rlca                                             ; $74a7: $07
	add  b                                           ; $74a8: $80
	dec  e                                           ; $74a9: $1d
	add  b                                           ; $74aa: $80
	db   $10                                         ; $74ab: $10
	adc  d                                           ; $74ac: $8a
	nop                                              ; $74ad: $00
	add  b                                           ; $74ae: $80
	ret  nz                                          ; $74af: $c0

	add  b                                           ; $74b0: $80
	ld   [hl], a                                     ; $74b1: $77
	add  b                                           ; $74b2: $80
	jr   @-$7e                                       ; $74b3: $18 $80

	ld   [$1880], sp                                 ; $74b5: $08 $80 $18
	add  b                                           ; $74b8: $80
	db   $10                                         ; $74b9: $10
	add  b                                           ; $74ba: $80
	rla                                              ; $74bb: $17
	add  b                                           ; $74bc: $80
	dec  e                                           ; $74bd: $1d
	add  d                                           ; $74be: $82
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	ld   e, b                                        ; $74c1: $58
	add  a                                           ; $74c2: $87
	ld   l, b                                        ; $74c3: $68
	add  b                                           ; $74c4: $80
	add  sp, -$7e                                    ; $74c5: $e8 $82
	ld   l, b                                        ; $74c7: $68
	nop                                              ; $74c8: $00
	inc  e                                           ; $74c9: $1c
	add  a                                           ; $74ca: $87
	inc  [hl]                                        ; $74cb: $34

jr_088_74cc:
	add  b                                           ; $74cc: $80
	scf                                              ; $74cd: $37
	ld   bc, $3735                                   ; $74ce: $01 $35 $37
	add  b                                           ; $74d1: $80
	ld   [hl], $00                                   ; $74d2: $36 $00
	ld   a, [de]                                     ; $74d4: $1a
	add  a                                           ; $74d5: $87
	nop                                              ; $74d6: $00
	add  b                                           ; $74d7: $80
	ld   [hl], b                                     ; $74d8: $70
	add  b                                           ; $74d9: $80
	ret  nc                                          ; $74da: $d0

	add  b                                           ; $74db: $80
	ld   de, $1082                                   ; $74dc: $11 $82 $10
	add  b                                           ; $74df: $80
	ld   e, $80                                      ; $74e0: $1e $80
	ei                                               ; $74e2: $fb
	add  b                                           ; $74e3: $80
	adc  b                                           ; $74e4: $88
	add  d                                           ; $74e5: $82
	adc  c                                           ; $74e6: $89
	add  b                                           ; $74e7: $80
	db   $dd                                         ; $74e8: $dd
	add  b                                           ; $74e9: $80
	ld   e, l                                        ; $74ea: $5d
	add  b                                           ; $74eb: $80
	ld   b, c                                        ; $74ec: $41

jr_088_74ed:
	add  b                                           ; $74ed: $80
	pop  hl                                          ; $74ee: $e1
	add  b                                           ; $74ef: $80
	and  b                                           ; $74f0: $a0
	add  b                                           ; $74f1: $80
	ld   hl, $fd80                                   ; $74f2: $21 $80 $fd
	add  b                                           ; $74f5: $80
	ld   [hl], l                                     ; $74f6: $75
	add  b                                           ; $74f7: $80
	rlca                                             ; $74f8: $07
	add  d                                           ; $74f9: $82
	nop                                              ; $74fa: $00
	add  d                                           ; $74fb: $82
	add  b                                           ; $74fc: $80
	add  b                                           ; $74fd: $80
	add  a                                           ; $74fe: $87
	add  b                                           ; $74ff: $80
	dec  e                                           ; $7500: $1d
	add  d                                           ; $7501: $82
	stop                                             ; $7502: $10 $00
	ld   e, b                                        ; $7504: $58
	add  a                                           ; $7505: $87
	ld   l, b                                        ; $7506: $68
	add  b                                           ; $7507: $80
	add  sp, -$7e                                    ; $7508: $e8 $82
	ld   l, b                                        ; $750a: $68
	nop                                              ; $750b: $00
	inc  e                                           ; $750c: $1c
	add  a                                           ; $750d: $87
	ld   [hl], $03                                   ; $750e: $36 $03
	dec  [hl]                                        ; $7510: $35
	scf                                              ; $7511: $37
	jr   c, jr_088_7553                              ; $7512: $38 $3f

	add  b                                           ; $7514: $80
	jr   nc, @+$03                                   ; $7515: $30 $01

	ld   l, $31                                      ; $7517: $2e $31
	add  b                                           ; $7519: $80
	ld   hl, $3180                                   ; $751a: $21 $80 $31
	add  b                                           ; $751d: $80
	db   $10                                         ; $751e: $10
	add  b                                           ; $751f: $80
	inc  de                                          ; $7520: $13
	add  b                                           ; $7521: $80
	cp   $05                                         ; $7522: $fe $05
	ld   [bc], a                                     ; $7524: $02
	cp   $03                                         ; $7525: $fe $03
	rra                                              ; $7527: $1f
	sub  l                                           ; $7528: $95
	ld   [hl], l                                     ; $7529: $75
	add  b                                           ; $752a: $80
	inc  b                                           ; $752b: $04
	add  b                                           ; $752c: $80
	sbc  l                                           ; $752d: $9d
	add  b                                           ; $752e: $80
	sub  a                                           ; $752f: $97
	add  b                                           ; $7530: $80
	or   b                                           ; $7531: $b0
	add  b                                           ; $7532: $80
	ldh  a, [$80]                                    ; $7533: $f0 $80
	rra                                              ; $7535: $1f
	add  b                                           ; $7536: $80
	pop  af                                          ; $7537: $f1
	add  b                                           ; $7538: $80
	adc  h                                           ; $7539: $8c
	add  b                                           ; $753a: $80
	adc  b                                           ; $753b: $88
	add  b                                           ; $753c: $80
	call c, Call_088_7780                            ; $753d: $dc $80 $77
	add  b                                           ; $7540: $80
	ld   b, h                                        ; $7541: $44
	add  b                                           ; $7542: $80
	call z, $0880                                    ; $7543: $cc $80 $08
	inc  bc                                          ; $7546: $03
	adc  $cc                                         ; $7547: $ce $cc

jr_088_7549:
	ld   a, [de]                                     ; $7549: $1a
	jr   jr_088_74cc                                 ; $754a: $18 $80

	ld   [$1880], sp                                 ; $754c: $08 $80 $18
	add  d                                           ; $754f: $82
	sub  b                                           ; $7550: $90
	add  b                                           ; $7551: $80
	rst  $38                                         ; $7552: $ff

jr_088_7553:
	ld   bc, $7f40                                   ; $7553: $01 $40 $7f
	add  b                                           ; $7556: $80
	ret  nz                                          ; $7557: $c0

	nop                                              ; $7558: $00
	ld   h, a                                        ; $7559: $67
	add  a                                           ; $755a: $87
	ld   l, b                                        ; $755b: $68
	add  b                                           ; $755c: $80
	add  sp, $01                                     ; $755d: $e8 $01
	jr   z, jr_088_7549                              ; $755f: $28 $e8

	add  b                                           ; $7561: $80
	ld   [$cf01], sp                                 ; $7562: $08 $01 $cf
	ccf                                              ; $7565: $3f
	adc  h                                           ; $7566: $8c
	nop                                              ; $7567: $00
	add  b                                           ; $7568: $80
	ldh  a, [$80]                                    ; $7569: $f0 $80
	jr   jr_088_74ed                                 ; $756b: $18 $80

	ld   [$1880], sp                                 ; $756d: $08 $80 $18
	add  b                                           ; $7570: $80
	inc  de                                          ; $7571: $13
	add  b                                           ; $7572: $80
	ld   e, $82                                      ; $7573: $1e $82
	nop                                              ; $7575: $00
	add  b                                           ; $7576: $80
	ld   de, $1980                                   ; $7577: $11 $80 $19
	add  b                                           ; $757a: $80
	add  hl, bc                                      ; $757b: $09
	add  b                                           ; $757c: $80
	add  hl, de                                      ; $757d: $19
	add  b                                           ; $757e: $80
	sub  c                                           ; $757f: $91

Call_088_7580:
	add  b                                           ; $7580: $80
	rst  $38                                         ; $7581: $ff
	add  b                                           ; $7582: $80
	inc  bc                                          ; $7583: $03
	add  b                                           ; $7584: $80
	nop                                              ; $7585: $00
	add  b                                           ; $7586: $80
	ld   b, h                                        ; $7587: $44
	add  b                                           ; $7588: $80
	ld   [hl], a                                     ; $7589: $77
	add  b                                           ; $758a: $80
	call c, $0884                                    ; $758b: $dc $84 $08
	add  b                                           ; $758e: $80
	ld   hl, sp-$80                                  ; $758f: $f8 $80
	nop                                              ; $7591: $00
	add  b                                           ; $7592: $80
	rst  $38                                         ; $7593: $ff
	add  b                                           ; $7594: $80
	add  b                                           ; $7595: $80
	adc  d                                           ; $7596: $8a
	nop                                              ; $7597: $00
	add  b                                           ; $7598: $80
	ld   hl, sp-$66                                  ; $7599: $f8 $9a
	nop                                              ; $759b: $00
	adc  b                                           ; $759c: $88
	ld   bc, $0082                                   ; $759d: $01 $82 $00
	add  d                                           ; $75a0: $82
	ld   bc, $008c                                   ; $75a1: $01 $8c $00
	add  b                                           ; $75a4: $80
	rst  $28                                         ; $75a5: $ef
	add  b                                           ; $75a6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75a7: $cf
	add  b                                           ; $75a8: $80
	rst  JumpTable                                         ; $75a9: $df
	add  b                                           ; $75aa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75ab: $cf
	add  b                                           ; $75ac: $80
	rst  $28                                         ; $75ad: $ef
	add  b                                           ; $75ae: $80
	cpl                                              ; $75af: $2f
	add  b                                           ; $75b0: $80
	add  d                                           ; $75b1: $82
	add  d                                           ; $75b2: $82
	ldh  [$8c], a                                    ; $75b3: $e0 $8c
	nop                                              ; $75b5: $00
	add  b                                           ; $75b6: $80
	cp   [hl]                                        ; $75b7: $be
	add  b                                           ; $75b8: $80
	sbc  [hl]                                        ; $75b9: $9e
	add  b                                           ; $75ba: $80
	rst  JumpTable                                         ; $75bb: $df
	add  b                                           ; $75bc: $80
	sbc  [hl]                                        ; $75bd: $9e
	add  b                                           ; $75be: $80
	cp   [hl]                                        ; $75bf: $be
	add  b                                           ; $75c0: $80
	and  d                                           ; $75c1: $a2
	sub  d                                           ; $75c2: $92
	nop                                              ; $75c3: $00
	add  b                                           ; $75c4: $80
	inc  bc                                          ; $75c5: $03
	add  h                                           ; $75c6: $84
	ld   bc, $0380                                   ; $75c7: $01 $80 $03
	add  b                                           ; $75ca: $80
	ld   [bc], a                                     ; $75cb: $02
	sub  d                                           ; $75cc: $92
	nop                                              ; $75cd: $00
	add  b                                           ; $75ce: $80
	rst  $28                                         ; $75cf: $ef
	add  b                                           ; $75d0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d1: $cf
	add  b                                           ; $75d2: $80
	rst  JumpTable                                         ; $75d3: $df
	add  b                                           ; $75d4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d5: $cf
	add  b                                           ; $75d6: $80
	rst  $28                                         ; $75d7: $ef
	add  b                                           ; $75d8: $80
	cpl                                              ; $75d9: $2f
	add  b                                           ; $75da: $80
	ld   [bc], a                                     ; $75db: $02
	add  b                                           ; $75dc: $80
	ld   [$0f80], sp                                 ; $75dd: $08 $80 $0f
	adc  h                                           ; $75e0: $8c
	nop                                              ; $75e1: $00
	adc  d                                           ; $75e2: $8a
	add  b                                           ; $75e3: $80
	add  b                                           ; $75e4: $80

jr_088_75e5:
	nop                                              ; $75e5: $00
	add  d                                           ; $75e6: $82
	add  b                                           ; $75e7: $80
	adc  b                                           ; $75e8: $88
	ld   bc, $0092                                   ; $75e9: $01 $92 $00
	add  b                                           ; $75ec: $80
	ld   bc, $c084                                   ; $75ed: $01 $84 $c0
	add  d                                           ; $75f0: $82
	ldh  [$80], a                                    ; $75f1: $e0 $80
	add  b                                           ; $75f3: $80
	adc  [hl]                                        ; $75f4: $8e
	nop                                              ; $75f5: $00
	add  b                                           ; $75f6: $80
	jr   nz, @-$7e                                   ; $75f7: $20 $80

jr_088_75f9:
	ldh  [$8a], a                                    ; $75f9: $e0 $8a
	nop                                              ; $75fb: $00
	add  b                                           ; $75fc: $80
	ld   [bc], a                                     ; $75fd: $02
	add  h                                           ; $75fe: $84
	rrca                                             ; $75ff: $0f
	add  b                                           ; $7600: $80
	ld   bc, $0480                                   ; $7601: $01 $80 $04
	add  b                                           ; $7604: $80
	ld   [hl], a                                     ; $7605: $77
	add  d                                           ; $7606: $82
	halt                                             ; $7607: $76
	add  b                                           ; $7608: $80
	ld   [hl+], a                                    ; $7609: $22
	adc  h                                           ; $760a: $8c
	nop                                              ; $760b: $00
	add  b                                           ; $760c: $80
	add  b                                           ; $760d: $80
	add  b                                           ; $760e: $80
	and  d                                           ; $760f: $a2
	add  b                                           ; $7610: $80
	cp   [hl]                                        ; $7611: $be
	add  b                                           ; $7612: $80
	ld   e, $80                                      ; $7613: $1e $80
	ld   e, a                                        ; $7615: $5f
	add  b                                           ; $7616: $80
	sbc  $80                                         ; $7617: $de $80
	ld   [bc], a                                     ; $7619: $02
	add  b                                           ; $761a: $80
	adc  d                                           ; $761b: $8a
	add  b                                           ; $761c: $80

jr_088_761d:
	ld   hl, sp-$7c                                  ; $761d: $f8 $84
	rlca                                             ; $761f: $07
	add  b                                           ; $7620: $80
	rrca                                             ; $7621: $0f
	add  b                                           ; $7622: $80
	ld   [$008e], sp                                 ; $7623: $08 $8e $00
	add  b                                           ; $7626: $80
	ld   [bc], a                                     ; $7627: $02
	add  d                                           ; $7628: $82
	rrca                                             ; $7629: $0f
	adc  b                                           ; $762a: $88
	add  b                                           ; $762b: $80
	sub  b                                           ; $762c: $90
	nop                                              ; $762d: $00
	add  d                                           ; $762e: $82
	add  b                                           ; $762f: $80
	adc  b                                           ; $7630: $88
	ld   bc, $0094                                   ; $7631: $01 $94 $00
	add  h                                           ; $7634: $84
	ret  nz                                          ; $7635: $c0

	add  d                                           ; $7636: $82
	ldh  [$82], a                                    ; $7637: $e0 $82
	ld   bc, $0080                                   ; $7639: $01 $80 $00
	add  b                                           ; $763c: $80
	rrca                                             ; $763d: $0f
	add  h                                           ; $763e: $84
	rlca                                             ; $763f: $07
	add  b                                           ; $7640: $80
	inc  c                                           ; $7641: $0c
	add  h                                           ; $7642: $84
	nop                                              ; $7643: $00
	add  b                                           ; $7644: $80
	adc  d                                           ; $7645: $8a
	add  b                                           ; $7646: $80

jr_088_7647:
	ei                                               ; $7647: $fb
	add  b                                           ; $7648: $80
	ld   h, d                                        ; $7649: $62
	add  b                                           ; $764a: $80
	ld   l, b                                        ; $764b: $68
	add  b                                           ; $764c: $80
	ld   c, a                                        ; $764d: $4f
	add  b                                           ; $764e: $80
	rrca                                             ; $764f: $0f
	add  b                                           ; $7650: $80
	ldh  [$80], a                                    ; $7651: $e0 $80
	ld   c, $80                                      ; $7653: $0e $80

jr_088_7655:
	xor  $80                                         ; $7655: $ee $80
	and  $80                                         ; $7657: $e6 $80
	or   $80                                         ; $7659: $f6 $80
	and  $80                                         ; $765b: $e6 $80
	ld   l, [hl]                                     ; $765d: $6e
	add  h                                           ; $765e: $84
	nop                                              ; $765f: $00
	add  d                                           ; $7660: $82
	ld   [hl], b                                     ; $7661: $70
	add  b                                           ; $7662: $80
	jr   nz, jr_088_75e5                             ; $7663: $20 $80

	adc  b                                           ; $7665: $88
	add  b                                           ; $7666: $80
	cp   e                                           ; $7667: $bb
	add  b                                           ; $7668: $80
	inc  sp                                          ; $7669: $33
	add  b                                           ; $766a: $80
	rst  $30                                         ; $766b: $f7
	add  b                                           ; $766c: $80
	ld   sp, $bb80                                   ; $766d: $31 $80 $bb
	add  b                                           ; $7670: $80
	adc  b                                           ; $7671: $88
	add  b                                           ; $7672: $80
	jr   nz, jr_088_75f9                             ; $7673: $20 $84

	ldh  a, [$82]                                    ; $7675: $f0 $82
	nop                                              ; $7677: $00
	add  h                                           ; $7678: $84
	rlca                                             ; $7679: $07
	add  d                                           ; $767a: $82
	rrca                                             ; $767b: $0f
	add  b                                           ; $767c: $80
	nop                                              ; $767d: $00
	add  b                                           ; $767e: $80
	add  b                                           ; $767f: $80
	sub  b                                           ; $7680: $90
	nop                                              ; $7681: $00
	adc  b                                           ; $7682: $88
	add  b                                           ; $7683: $80
	rst  $38                                         ; $7684: $ff
	nop                                              ; $7685: $00
	rst  $38                                         ; $7686: $ff
	nop                                              ; $7687: $00
	rst  $38                                         ; $7688: $ff
	nop                                              ; $7689: $00
	rst  $38                                         ; $768a: $ff
	nop                                              ; $768b: $00
	rst  $38                                         ; $768c: $ff
	nop                                              ; $768d: $00
	adc  a                                           ; $768e: $8f
	nop                                              ; $768f: $00
	sbc  a                                           ; $7690: $9f
	nop                                              ; $7691: $00
	xor  d                                           ; $7692: $aa
	nop                                              ; $7693: $00
	add  b                                           ; $7694: $80
	inc  bc                                          ; $7695: $03
	add  b                                           ; $7696: $80
	inc  e                                           ; $7697: $1c
	add  [hl]                                        ; $7698: $86
	nop                                              ; $7699: $00
	add  b                                           ; $769a: $80
	jr   jr_088_761d                                 ; $769b: $18 $80

	ld   h, h                                        ; $769d: $64
	add  b                                           ; $769e: $80
	add  e                                           ; $769f: $83
	add  b                                           ; $76a0: $80
	ld   bc, $008c                                   ; $76a1: $01 $8c $00
	add  b                                           ; $76a4: $80
	add  b                                           ; $76a5: $80
	sub  [hl]                                        ; $76a6: $96
	nop                                              ; $76a7: $00
	add  b                                           ; $76a8: $80
	inc  bc                                          ; $76a9: $03
	add  b                                           ; $76aa: $80
	inc  e                                           ; $76ab: $1c
	add  b                                           ; $76ac: $80
	db   $10                                         ; $76ad: $10
	add  b                                           ; $76ae: $80
	ld   [$0080], sp                                 ; $76af: $08 $80 $00
	add  b                                           ; $76b2: $80
	ld   bc, $0e80                                   ; $76b3: $01 $80 $0e
	add  b                                           ; $76b6: $80
	ld   [hl], b                                     ; $76b7: $70
	add  b                                           ; $76b8: $80
	add  b                                           ; $76b9: $80
	add  h                                           ; $76ba: $84
	nop                                              ; $76bb: $00
	add  b                                           ; $76bc: $80
	ld   [hl], b                                     ; $76bd: $70
	add  b                                           ; $76be: $80
	add  b                                           ; $76bf: $80
	sbc  d                                           ; $76c0: $9a
	nop                                              ; $76c1: $00
	add  b                                           ; $76c2: $80
	ld   h, b                                        ; $76c3: $60
	add  b                                           ; $76c4: $80
	jr   jr_088_7647                                 ; $76c5: $18 $80

	inc  b                                           ; $76c7: $04
	add  b                                           ; $76c8: $80
	inc  bc                                          ; $76c9: $03
	adc  [hl]                                        ; $76ca: $8e
	nop                                              ; $76cb: $00
	add  b                                           ; $76cc: $80
	add  b                                           ; $76cd: $80
	add  b                                           ; $76ce: $80
	ld   h, b                                        ; $76cf: $60
	add  b                                           ; $76d0: $80
	db   $10                                         ; $76d1: $10
	add  b                                           ; $76d2: $80
	jr   nc, jr_088_7655                             ; $76d3: $30 $80

	ld   d, $0e                                      ; $76d5: $16 $0e
	ld   de, $1019                                   ; $76d7: $11 $19 $10
	ld   e, $18                                      ; $76da: $1e $18
	dec  e                                           ; $76dc: $1d
	add  hl, de                                      ; $76dd: $19
	ld   a, [de]                                     ; $76de: $1a
	inc  c                                           ; $76df: $0c
	ld   [$1012], sp                                 ; $76e0: $08 $12 $10
	dec  e                                           ; $76e3: $1d
	jr   jr_088_76e9                                 ; $76e4: $18 $03

	add  c                                           ; $76e6: $81
	nop                                              ; $76e7: $00
	add  b                                           ; $76e8: $80

jr_088_76e9:
	add  b                                           ; $76e9: $80
	add  b                                           ; $76ea: $80
	ld   h, b                                        ; $76eb: $60
	ld   [$9818], sp                                 ; $76ec: $08 $18 $98
	db   $ec                                         ; $76ef: $ec
	inc  c                                           ; $76f0: $0c
	ld   b, [hl]                                     ; $76f1: $46
	ld   d, $a9                                      ; $76f2: $16 $a9
	ld   h, c                                        ; $76f4: $61
	ld   hl, sp-$69                                  ; $76f5: $f8 $97
	nop                                              ; $76f7: $00
	add  b                                           ; $76f8: $80
	rlca                                             ; $76f9: $07
	add  b                                           ; $76fa: $80
	ccf                                              ; $76fb: $3f
	inc  bc                                          ; $76fc: $03
	cp   $e0                                         ; $76fd: $fe $e0
	ld   e, $00                                      ; $76ff: $1e $00
	add  b                                           ; $7701: $80
	ld   bc, $0780                                   ; $7702: $01 $80 $07
	ld   de, $1f1c                                   ; $7705: $11 $1c $1f
	db   $e3                                         ; $7708: $e3
	ld   hl, sp+$1f                                  ; $7709: $f8 $1f
	rst  $20                                         ; $770b: $e7
	rra                                              ; $770c: $1f
	db   $fd                                         ; $770d: $fd
	ld   l, d                                        ; $770e: $6a
	ld   sp, hl                                      ; $770f: $f9
	pop  hl                                          ; $7710: $e1
	ld   h, b                                        ; $7711: $60
	ldh  [$d0], a                                    ; $7712: $e0 $d0
	db   $10                                         ; $7714: $10
	ldh  a, [$d0]                                    ; $7715: $f0 $d0
	db   $10                                         ; $7717: $10
	add  b                                           ; $7718: $80
	ld   [$c80b], sp                                 ; $7719: $08 $0b $c8
	ret  c                                           ; $771c: $d8

	ldh  [$f0], a                                    ; $771d: $e0 $f0
	db   $10                                         ; $771f: $10
	sub  b                                           ; $7720: $90

jr_088_7721:
	sbc  [hl]                                        ; $7721: $9e
	ld   e, $15                                      ; $7722: $1e $15
	add  hl, de                                      ; $7724: $19
	ccf                                              ; $7725: $3f
	inc  [hl]                                        ; $7726: $34
	add  b                                           ; $7727: $80
	ld   c, h                                        ; $7728: $4c
	inc  bc                                          ; $7729: $03
	ld   hl, $1227                                   ; $772a: $21 $27 $12
	inc  de                                          ; $772d: $13
	add  b                                           ; $772e: $80
	ld   [$0c80], sp                                 ; $772f: $08 $80 $0c
	ld   de, $629e                                   ; $7732: $11 $9e $62
	sbc  [hl]                                        ; $7735: $9e
	db   $10                                         ; $7736: $10
	ld   d, a                                        ; $7737: $57
	jr   jr_088_7721                                 ; $7738: $18 $e7

	nop                                              ; $773a: $00
	ld   b, d                                        ; $773b: $42
	ld   h, e                                        ; $773c: $63
	or   [hl]                                        ; $773d: $b6
	or   c                                           ; $773e: $b1
	ld   a, [bc]                                     ; $773f: $0a
	add  b                                           ; $7740: $80
	jr   nz, @+$4f                                   ; $7741: $20 $4d

	sub  h                                           ; $7743: $94
	adc  a                                           ; $7744: $8f
	add  b                                           ; $7745: $80
	ld   a, h                                        ; $7746: $7c
	ld   l, $df                                      ; $7747: $2e $df
	ret  nz                                          ; $7749: $c0

	ldh  [$e1], a                                    ; $774a: $e0 $e1
	and  e                                           ; $774c: $a3
	cp   $9c                                         ; $774d: $fe $9c
	ld   hl, sp-$67                                  ; $774f: $f8 $99
	ldh  [$e2], a                                    ; $7751: $e0 $e2
	db   $ec                                         ; $7753: $ec
	sub  a                                           ; $7754: $97
	ret  nz                                          ; $7755: $c0

	dec  sp                                          ; $7756: $3b
	nop                                              ; $7757: $00

jr_088_7758:
	call z, $1827                                    ; $7758: $cc $27 $18
	add  b                                           ; $775b: $80

jr_088_775c:
	or   a                                           ; $775c: $b7
	nop                                              ; $775d: $00
	dec  sp                                          ; $775e: $3b
	inc  c                                           ; $775f: $0c
	ret  nz                                          ; $7760: $c0

	ld   [hl], b                                     ; $7761: $70
	add  [hl]                                        ; $7762: $86
	nop                                              ; $7763: $00
	dec  a                                           ; $7764: $3d
	ld   c, d                                        ; $7765: $4a
	sbc  e                                           ; $7766: $9b
	jp   hl                                          ; $7767: $e9


	rra                                              ; $7768: $1f
	nop                                              ; $7769: $00
	db   $fc                                         ; $776a: $fc
	nop                                              ; $776b: $00
	db   $e3                                         ; $776c: $e3
	nop                                              ; $776d: $00

jr_088_776e:
	ccf                                              ; $776e: $3f
	nop                                              ; $776f: $00
	db   $d3                                         ; $7770: $d3
	ld   c, $16                                      ; $7771: $0e $16
	ldh  a, [$88]                                    ; $7773: $f0 $88
	ld   [hl], b                                     ; $7775: $70
	ldh  a, [$80]                                    ; $7776: $f0 $80
	db   $10                                         ; $7778: $10
	inc  bc                                          ; $7779: $03
	jr   nc, jr_088_775c                             ; $777a: $30 $e0

	jr   nz, jr_088_776e                             ; $777c: $20 $f0

	add  b                                           ; $777e: $80
	db   $10                                         ; $777f: $10

Call_088_7780:
	ld   [bc], a                                     ; $7780: $02
	jr   nc, @-$5e                                   ; $7781: $30 $a0

	ld   h, b                                        ; $7783: $60
	add  b                                           ; $7784: $80
	db   $10                                         ; $7785: $10
	dec  bc                                          ; $7786: $0b
	rrca                                             ; $7787: $0f
	dec  bc                                          ; $7788: $0b
	ld   [$0f0c], sp                                 ; $7789: $08 $0c $0f
	ld   a, [bc]                                     ; $778c: $0a
	ld   [bc], a                                     ; $778d: $02
	dec  b                                           ; $778e: $05
	ld   bc, $0002                                   ; $778f: $01 $02 $00
	ld   bc, $0082                                   ; $7792: $01 $82 $00
	db   $10                                         ; $7795: $10

jr_088_7796:
	inc  bc                                          ; $7796: $03
	cpl                                              ; $7797: $2f
	and  l                                           ; $7798: $a5
	sbc  l                                           ; $7799: $9d
	ld   [hl], b                                     ; $779a: $70
	halt                                             ; $779b: $76
	add  b                                           ; $779c: $80
	ld   e, $64                                      ; $779d: $1e $64
	rrca                                             ; $779f: $0f
	add  hl, bc                                      ; $77a0: $09
	add  [hl]                                        ; $77a1: $86
	dec  l                                           ; $77a2: $2d
	ld   [hl], c                                     ; $77a3: $71
	ld   de, $f42e                                   ; $77a4: $11 $2e $f4
	add  b                                           ; $77a7: $80
	ldh  a, [$28]                                    ; $77a8: $f0 $28
	and  b                                           ; $77aa: $a0
	add  hl, de                                      ; $77ab: $19
	ld   h, b                                        ; $77ac: $60
	ld   e, b                                        ; $77ad: $58
	ld   a, h                                        ; $77ae: $7c

jr_088_77af:
	pop  af                                          ; $77af: $f1
	ldh  a, [$6d]                                    ; $77b0: $f0 $6d
	ld   h, b                                        ; $77b2: $60
	rst  $20                                         ; $77b3: $e7
	ret  nc                                          ; $77b4: $d0

	and  l                                           ; $77b5: $a5
	ei                                               ; $77b6: $fb
	add  a                                           ; $77b7: $87
	rlca                                             ; $77b8: $07
	ld   l, b                                        ; $77b9: $68
	nop                                              ; $77ba: $00
	add  a                                           ; $77bb: $87
	nop                                              ; $77bc: $00
	ld   l, e                                        ; $77bd: $6b
	nop                                              ; $77be: $00
	rst  $28                                         ; $77bf: $ef
	nop                                              ; $77c0: $00
	rst  $28                                         ; $77c1: $ef
	ld   de, $46f4                                   ; $77c2: $11 $f4 $46
	ret  c                                           ; $77c5: $d8

	jr   jr_088_77af                                 ; $77c6: $18 $e7

	nop                                              ; $77c8: $00
	ld   a, [$d301]                                  ; $77c9: $fa $01 $d3
	rlca                                             ; $77cc: $07
	ldh  a, [rAUD2LOW]                               ; $77cd: $f0 $18
	ret  nz                                          ; $77cf: $c0

	ld   h, b                                        ; $77d0: $60

jr_088_77d1:
	nop                                              ; $77d1: $00
	add  b                                           ; $77d2: $80
	add  d                                           ; $77d3: $82
	nop                                              ; $77d4: $00
	add  b                                           ; $77d5: $80
	jr   nc, jr_088_7758                             ; $77d6: $30 $80

	ret  nz                                          ; $77d8: $c0

	sbc  d                                           ; $77d9: $9a
	nop                                              ; $77da: $00
	dec  b                                           ; $77db: $05
	rla                                              ; $77dc: $17
	ld   [de], a                                     ; $77dd: $12
	inc  c                                           ; $77de: $0c
	dec  bc                                          ; $77df: $0b
	inc  b                                           ; $77e0: $04
	ld   b, $80                                      ; $77e1: $06 $80
	ld   bc, $0086                                   ; $77e3: $01 $86 $00
	inc  bc                                          ; $77e6: $03
	ldh  a, [$6c]                                    ; $77e7: $f0 $6c
	ld   l, l                                        ; $77e9: $6d
	pop  af                                          ; $77ea: $f1
	add  b                                           ; $77eb: $80
	ld   b, [hl]                                     ; $77ec: $46
	add  b                                           ; $77ed: $80
	ld   e, b                                        ; $77ee: $58
	add  b                                           ; $77ef: $80
	ldh  [$84], a                                    ; $77f0: $e0 $84

jr_088_77f2:
	nop                                              ; $77f2: $00
	add  b                                           ; $77f3: $80
	ld   h, b                                        ; $77f4: $60
	add  b                                           ; $77f5: $80

jr_088_77f6:
	add  b                                           ; $77f6: $80
	db   $e3                                         ; $77f7: $e3
	nop                                              ; $77f8: $00
	ld   b, $0a                                      ; $77f9: $06 $0a
	add  hl, bc                                      ; $77fb: $09
	dec  de                                          ; $77fc: $1b
	inc  d                                           ; $77fd: $14
	ld   l, h                                        ; $77fe: $6c
	ld   d, d                                        ; $77ff: $52
	ld   [hl-], a                                    ; $7800: $32
	sub  b                                           ; $7801: $90
	nop                                              ; $7802: $00
	add  b                                           ; $7803: $80
	ld   bc, $0680                                   ; $7804: $01 $80 $06
	add  b                                           ; $7807: $80
	jr   c, @-$7e                                    ; $7808: $38 $80

	pop  bc                                          ; $780a: $c1
	add  b                                           ; $780b: $80
	ld   a, [de]                                     ; $780c: $1a
	add  b                                           ; $780d: $80
	inc  a                                           ; $780e: $3c

jr_088_780f:
	add  b                                           ; $780f: $80
	add  sp, -$74                                    ; $7810: $e8 $8c
	nop                                              ; $7812: $00
	add  b                                           ; $7813: $80
	jr   jr_088_7796                                 ; $7814: $18 $80

	ld   h, h                                        ; $7816: $64
	inc  bc                                          ; $7817: $03
	add  d                                           ; $7818: $82
	sbc  d                                           ; $7819: $9a
	ld   a, c                                        ; $781a: $79
	ld   h, c                                        ; $781b: $61
	add  b                                           ; $781c: $80
	ld   d, $80                                      ; $781d: $16 $80
	adc  h                                           ; $781f: $8c
	add  b                                           ; $7820: $80
	ld   [hl+], a                                    ; $7821: $22
	add  b                                           ; $7822: $80
	ld   sp, $e080                                   ; $7823: $31 $80 $e0
	sub  d                                           ; $7826: $92
	nop                                              ; $7827: $00
	add  b                                           ; $7828: $80
	add  b                                           ; $7829: $80
	add  b                                           ; $782a: $80
	ld   h, b                                        ; $782b: $60
	add  b                                           ; $782c: $80
	db   $10                                         ; $782d: $10
	add  b                                           ; $782e: $80
	jr   c, @-$7e                                    ; $782f: $38 $80

	add  $80                                         ; $7831: $c6 $80
	add  a                                           ; $7833: $87
	and  b                                           ; $7834: $a0
	nop                                              ; $7835: $00
	ld   b, $06                                      ; $7836: $06 $06
	nop                                              ; $7838: $00
	rlca                                             ; $7839: $07
	nop                                              ; $783a: $00
	ld   bc, $0100                                   ; $783b: $01 $00 $01
	add  c                                           ; $783e: $81
	nop                                              ; $783f: $00
	ld   [$0009], sp                                 ; $7840: $08 $09 $00
	inc  c                                           ; $7843: $0c
	nop                                              ; $7844: $00
	dec  b                                           ; $7845: $05
	nop                                              ; $7846: $00
	inc  bc                                          ; $7847: $03
	nop                                              ; $7848: $00
	ld   [bc], a                                     ; $7849: $02
	adc  c                                           ; $784a: $89
	nop                                              ; $784b: $00
	add  b                                           ; $784c: $80
	inc  hl                                          ; $784d: $23
	add  b                                           ; $784e: $80
	jr   jr_088_77d1                                 ; $784f: $18 $80

	inc  b                                           ; $7851: $04
	dec  de                                          ; $7852: $1b
	add  d                                           ; $7853: $82
	ld   [bc], a                                     ; $7854: $02
	pop  hl                                          ; $7855: $e1
	ld   bc, $00f0                                   ; $7856: $01 $f0 $00
	ld   e, b                                        ; $7859: $58
	nop                                              ; $785a: $00
	adc  $00                                         ; $785b: $ce $00
	rlca                                             ; $785d: $07
	nop                                              ; $785e: $00
	adc  h                                           ; $785f: $8c
	nop                                              ; $7860: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7861: $cf
	nop                                              ; $7862: $00
	ld   b, e                                        ; $7863: $43
	nop                                              ; $7864: $00
	dec  b                                           ; $7865: $05
	nop                                              ; $7866: $00
	ld   b, $00                                      ; $7867: $06 $00
	inc  bc                                          ; $7869: $03
	nop                                              ; $786a: $00
	ld   hl, $e700                                   ; $786b: $21 $00 $e7
	rst  ToBoot                                         ; $786e: $c7
	add  b                                           ; $786f: $80
	jr   jr_088_77f2                                 ; $7870: $18 $80

	ld   sp, hl                                      ; $7872: $f9
	add  b                                           ; $7873: $80
	jr   nc, jr_088_77f6                             ; $7874: $30 $80

	add  d                                           ; $7876: $82
	add  b                                           ; $7877: $80
	jp   $3e80                                       ; $7878: $c3 $80 $3e


	add  b                                           ; $787b: $80
	db   $10                                         ; $787c: $10
	add  b                                           ; $787d: $80
	nop                                              ; $787e: $00
	ld   [bc], a                                     ; $787f: $02
	add  b                                           ; $7880: $80
	nop                                              ; $7881: $00
	add  b                                           ; $7882: $80
	add  l                                           ; $7883: $85
	nop                                              ; $7884: $00
	inc  bc                                          ; $7885: $03
	ld   bc, $0100                                   ; $7886: $01 $00 $01
	nop                                              ; $7889: $00
	add  b                                           ; $788a: $80
	ld   b, $80                                      ; $788b: $06 $80
	jr   c, jr_088_780f                              ; $788d: $38 $80

	di                                               ; $788f: $f3
	add  b                                           ; $7890: $80
	adc  [hl]                                        ; $7891: $8e
	add  b                                           ; $7892: $80
	ld   a, b                                        ; $7893: $78
	add  b                                           ; $7894: $80
	ret  nz                                          ; $7895: $c0

	add  h                                           ; $7896: $84
	nop                                              ; $7897: $00
	rrca                                             ; $7898: $0f
	inc  bc                                          ; $7899: $03
	nop                                              ; $789a: $00
	dec  bc                                          ; $789b: $0b
	nop                                              ; $789c: $00
	jr   c, jr_088_789f                              ; $789d: $38 $00

jr_088_789f:
	scf                                              ; $789f: $37
	nop                                              ; $78a0: $00
	scf                                              ; $78a1: $37
	nop                                              ; $78a2: $00
	or   b                                           ; $78a3: $b0
	nop                                              ; $78a4: $00
	add  [hl]                                        ; $78a5: $86
	nop                                              ; $78a6: $00
	ld   a, d                                        ; $78a7: $7a
	ld   a, h                                        ; $78a8: $7c
	add  b                                           ; $78a9: $80
	ld   [hl], b                                     ; $78aa: $70
	add  b                                           ; $78ab: $80
	ret  nz                                          ; $78ac: $c0

	add  [hl]                                        ; $78ad: $86
	nop                                              ; $78ae: $00
	ld   [de], a                                     ; $78af: $12
	ld   b, $00                                      ; $78b0: $06 $00
	rlca                                             ; $78b2: $07
	nop                                              ; $78b3: $00
	inc  bc                                          ; $78b4: $03
	nop                                              ; $78b5: $00
	ld   e, $00                                      ; $78b6: $1e $00
	db   $fc                                         ; $78b8: $fc
	nop                                              ; $78b9: $00
	db   $e3                                         ; $78ba: $e3
	nop                                              ; $78bb: $00
	ccf                                              ; $78bc: $3f
	nop                                              ; $78bd: $00
	db   $dd                                         ; $78be: $dd
	nop                                              ; $78bf: $00
	and  $00                                         ; $78c0: $e6 $00
	rlca                                             ; $78c2: $07
	add  a                                           ; $78c3: $87
	nop                                              ; $78c4: $00
	ld   [$0020], sp                                 ; $78c5: $08 $20 $00
	jr   nz, jr_088_78ca                             ; $78c8: $20 $00

jr_088_78ca:
	ld   h, b                                        ; $78ca: $60
	nop                                              ; $78cb: $00
	ldh  [rP1], a                                    ; $78cc: $e0 $00
	add  b                                           ; $78ce: $80
	add  c                                           ; $78cf: $81
	nop                                              ; $78d0: $00
	ld   [bc], a                                     ; $78d1: $02
	ret  nz                                          ; $78d2: $c0

	nop                                              ; $78d3: $00
	ret  nz                                          ; $78d4: $c0

	add  c                                           ; $78d5: $81
	nop                                              ; $78d6: $00
	ld   [$0010], sp                                 ; $78d7: $08 $10 $00
	ldh  a, [rP1]                                    ; $78da: $f0 $00
	ldh  [rP1], a                                    ; $78dc: $e0 $00
	inc  bc                                          ; $78de: $03
	nop                                              ; $78df: $00
	inc  bc                                          ; $78e0: $03
	sbc  c                                           ; $78e1: $99
	nop                                              ; $78e2: $00
	ld   d, $10                                      ; $78e3: $16 $10
	nop                                              ; $78e5: $00
	ld   [de], a                                     ; $78e6: $12
	nop                                              ; $78e7: $00
	add  e                                           ; $78e8: $83
	nop                                              ; $78e9: $00
	ldh  [rP1], a                                    ; $78ea: $e0 $00
	ld   [hl], c                                     ; $78ec: $71
	nop                                              ; $78ed: $00
	ld   bc, $1b00                                   ; $78ee: $01 $00 $1b
	nop                                              ; $78f1: $00
	ld   a, [de]                                     ; $78f2: $1a
	nop                                              ; $78f3: $00
	jr   jr_088_78f6                                 ; $78f4: $18 $00

jr_088_78f6:
	inc  c                                           ; $78f6: $0c
	nop                                              ; $78f7: $00
	dec  b                                           ; $78f8: $05
	nop                                              ; $78f9: $00
	ld   bc, $008b                                   ; $78fa: $01 $8b $00
	inc  d                                           ; $78fd: $14
	add  c                                           ; $78fe: $81
	nop                                              ; $78ff: $00
	ld   bc, $8000                                   ; $7900: $01 $00 $80
	nop                                              ; $7903: $00
	add  c                                           ; $7904: $81
	nop                                              ; $7905: $00
	add  a                                           ; $7906: $87
	nop                                              ; $7907: $00
	ld   b, $00                                      ; $7908: $06 $00
	inc  bc                                          ; $790a: $03
	nop                                              ; $790b: $00
	dec  c                                           ; $790c: $0d
	nop                                              ; $790d: $00
	or   [hl]                                        ; $790e: $b6
	nop                                              ; $790f: $00
	jr   jr_088_7912                                 ; $7910: $18 $00

jr_088_7912:
	and  b                                           ; $7912: $a0
	add  l                                           ; $7913: $85
	nop                                              ; $7914: $00
	ld   [de], a                                     ; $7915: $12
	jr   jr_088_7918                                 ; $7916: $18 $00

jr_088_7918:
	ld   l, b                                        ; $7918: $68
	nop                                              ; $7919: $00
	or   a                                           ; $791a: $b7
	nop                                              ; $791b: $00
	db   $db                                         ; $791c: $db
	nop                                              ; $791d: $00
	ld   l, a                                        ; $791e: $6f
	nop                                              ; $791f: $00
	rst  $38                                         ; $7920: $ff
	nop                                              ; $7921: $00
	or   h                                           ; $7922: $b4
	nop                                              ; $7923: $00
	ret  c                                           ; $7924: $d8

	nop                                              ; $7925: $00
	ld   h, b                                        ; $7926: $60
	nop                                              ; $7927: $00
	add  b                                           ; $7928: $80
	adc  e                                           ; $7929: $8b
	nop                                              ; $792a: $00
	ld   [$0018], sp                                 ; $792b: $08 $18 $00
	ld   a, [$d200]                                  ; $792e: $fa $00 $d2
	nop                                              ; $7931: $00
	ldh  a, [rP1]                                    ; $7932: $f0 $00
	ret  nz                                          ; $7934: $c0

	sub  l                                           ; $7935: $95
	nop                                              ; $7936: $00
	ld   [bc], a                                     ; $7937: $02
	ret  nz                                          ; $7938: $c0

	nop                                              ; $7939: $00
	ret  nz                                          ; $793a: $c0

	rst  $38                                         ; $793b: $ff
	nop                                              ; $793c: $00
	rst  $38                                         ; $793d: $ff
	nop                                              ; $793e: $00
	rst  $38                                         ; $793f: $ff
	nop                                              ; $7940: $00
	rst  $38                                         ; $7941: $ff
	nop                                              ; $7942: $00
	rst  $38                                         ; $7943: $ff
	nop                                              ; $7944: $00
	sub  [hl]                                        ; $7945: $96
	nop                                              ; $7946: $00
	ld   [hl], c                                     ; $7947: $71
	nop                                              ; $7948: $00
	xor  b                                           ; $7949: $a8
	nop                                              ; $794a: $00
	add  b                                           ; $794b: $80
	ld   bc, $0304                                   ; $794c: $01 $04 $03
	ld   [bc], a                                     ; $794f: $02
	ld   b, $04                                      ; $7950: $06 $04
	inc  bc                                          ; $7952: $03
	adc  c                                           ; $7953: $89
	nop                                              ; $7954: $00
	add  b                                           ; $7955: $80
	ret  nz                                          ; $7956: $c0

	ld   [bc], a                                     ; $7957: $02
	ldh  a, [$30]                                    ; $7958: $f0 $30
	ret  nz                                          ; $795a: $c0

	or   a                                           ; $795b: $b7
	nop                                              ; $795c: $00
	add  b                                           ; $795d: $80
	ld   bc, $0324                                   ; $795e: $01 $24 $03
	ld   [bc], a                                     ; $7961: $02
	ld   b, $04                                      ; $7962: $06 $04
	inc  c                                           ; $7964: $0c
	ld   [$1019], sp                                 ; $7965: $08 $19 $10
	ld   [hl-], a                                    ; $7968: $32
	jr   nz, jr_088_79d0                             ; $7969: $20 $65

	ld   b, b                                        ; $796b: $40
	jp   z, $9580                                    ; $796c: $ca $80 $95

	nop                                              ; $796f: $00
	jr   z, jr_088_7972                              ; $7970: $28 $00

jr_088_7972:
	ld   d, b                                        ; $7972: $50
	nop                                              ; $7973: $00
	ld   h, d                                        ; $7974: $62
	inc  c                                           ; $7975: $0c
	rrca                                             ; $7976: $0f
	inc  bc                                          ; $7977: $03
	jp   $3000                                       ; $7978: $c3 $00 $30


	nop                                              ; $797b: $00
	call z, $b300                                    ; $797c: $cc $00 $b3
	nop                                              ; $797f: $00
	ld   l, h                                        ; $7980: $6c
	nop                                              ; $7981: $00
	ld   d, e                                        ; $7982: $53
	nop                                              ; $7983: $00
	ld   c, a                                        ; $7984: $4f
	add  c                                           ; $7985: $81
	nop                                              ; $7986: $00
	add  b                                           ; $7987: $80
	ret  nz                                          ; $7988: $c0

	ld   a, [bc]                                     ; $7989: $0a
	ldh  a, [$30]                                    ; $798a: $f0 $30
	inc  a                                           ; $798c: $3c
	inc  c                                           ; $798d: $0c
	rrca                                             ; $798e: $0f
	inc  bc                                          ; $798f: $03
	jp   $3000                                       ; $7990: $c3 $00 $30


	nop                                              ; $7993: $00
	rrca                                             ; $7994: $0f
	adc  c                                           ; $7995: $89
	nop                                              ; $7996: $00
	add  b                                           ; $7997: $80
	ret  nz                                          ; $7998: $c0

	ld   [bc], a                                     ; $7999: $02
	ldh  a, [$30]                                    ; $799a: $f0 $30
	ret  nz                                          ; $799c: $c0

	add  a                                           ; $799d: $87
	nop                                              ; $799e: $00
	add  b                                           ; $799f: $80
	ld   bc, $0351                                   ; $79a0: $01 $51 $03
	ld   [bc], a                                     ; $79a3: $02
	ld   b, $04                                      ; $79a4: $06 $04
	inc  c                                           ; $79a6: $0c
	ld   [$1019], sp                                 ; $79a7: $08 $19 $10
	ld   [hl-], a                                    ; $79aa: $32
	jr   nz, jr_088_7a12                             ; $79ab: $20 $65

	ld   b, b                                        ; $79ad: $40
	jp   z, $9480                                    ; $79ae: $ca $80 $94

	nop                                              ; $79b1: $00
	jr   z, jr_088_79b4                              ; $79b2: $28 $00

jr_088_79b4:
	ld   d, b                                        ; $79b4: $50
	nop                                              ; $79b5: $00
	and  d                                           ; $79b6: $a2
	nop                                              ; $79b7: $00
	ld   b, d                                        ; $79b8: $42
	nop                                              ; $79b9: $00
	add  b                                           ; $79ba: $80
	nop                                              ; $79bb: $00
	ld   [$0e00], sp                                 ; $79bc: $08 $00 $0e
	nop                                              ; $79bf: $00
	rlca                                             ; $79c0: $07
	nop                                              ; $79c1: $00
	ld   bc, $0400                                   ; $79c2: $01 $00 $04
	ld   [bc], a                                     ; $79c5: $02
	call nz, Call_088_4500                           ; $79c6: $c4 $00 $45
	nop                                              ; $79c9: $00
	or   l                                           ; $79ca: $b5
	nop                                              ; $79cb: $00
	daa                                              ; $79cc: $27

jr_088_79cd:
	nop                                              ; $79cd: $00
	ld   [de], a                                     ; $79ce: $12
	nop                                              ; $79cf: $00

jr_088_79d0:
	ld   b, $00                                      ; $79d0: $06 $00
	ld   b, c                                        ; $79d2: $41
	nop                                              ; $79d3: $00
	ld   d, b                                        ; $79d4: $50
	nop                                              ; $79d5: $00
	inc  l                                           ; $79d6: $2c
	nop                                              ; $79d7: $00
	inc  sp                                          ; $79d8: $33
	nop                                              ; $79d9: $00
	ret                                              ; $79da: $c9


	nop                                              ; $79db: $00
	adc  d                                           ; $79dc: $8a
	nop                                              ; $79dd: $00
	call nc, $a901                                   ; $79de: $d4 $01 $a9
	ld   [bc], a                                     ; $79e1: $02
	ld   d, d                                        ; $79e2: $52
	inc  b                                           ; $79e3: $04
	and  h                                           ; $79e4: $a4
	add  hl, bc                                      ; $79e5: $09
	jp   z, $1e1c                                    ; $79e6: $ca $1c $1e

	ld   h, $22                                      ; $79e9: $26 $22
	ld   c, d                                        ; $79eb: $4a
	ld   b, d                                        ; $79ec: $42
	sub  d                                           ; $79ed: $92
	add  d                                           ; $79ee: $82
	ld   [hl+], a                                    ; $79ef: $22
	ld   [bc], a                                     ; $79f0: $02
	ld   b, d                                        ; $79f1: $42
	ld   [bc], a                                     ; $79f2: $02
	add  d                                           ; $79f3: $82
	add  b                                           ; $79f4: $80
	ld   [bc], a                                     ; $79f5: $02
	dec  b                                           ; $79f6: $05
	rrca                                             ; $79f7: $0f
	ld   [$1019], sp                                 ; $79f8: $08 $19 $10
	ld   sp, $8020                                   ; $79fb: $31 $20 $80
	ld   h, b                                        ; $79fe: $60
	jr   jr_088_7a01                                 ; $79ff: $18 $00

jr_088_7a01:
	jr   jr_088_7a13                                 ; $7a01: $18 $10

	ld   e, $38                                      ; $7a03: $1e $38
	ccf                                              ; $7a05: $3f
	ld   a, [hl]                                     ; $7a06: $7e
	ld   a, a                                        ; $7a07: $7f
	jr   nc, jr_088_7a0a                             ; $7a08: $30 $00

jr_088_7a0a:
	ld   b, b                                        ; $7a0a: $40
	nop                                              ; $7a0b: $00
	ld   h, b                                        ; $7a0c: $60
	nop                                              ; $7a0d: $00
	sbc  b                                           ; $7a0e: $98
	nop                                              ; $7a0f: $00
	ld   h, [hl]                                     ; $7a10: $66
	nop                                              ; $7a11: $00

jr_088_7a12:
	add  hl, de                                      ; $7a12: $19

jr_088_7a13:
	nop                                              ; $7a13: $00
	ld   b, $80                                      ; $7a14: $06 $80
	ld   bc, $60e0                                   ; $7a16: $01 $e0 $60
	add  b                                           ; $7a19: $80

jr_088_7a1a:
	ld   b, $85                                      ; $7a1a: $06 $85
	nop                                              ; $7a1c: $00
	inc  hl                                          ; $7a1d: $23
	add  b                                           ; $7a1e: $80
	nop                                              ; $7a1f: $00
	ld   h, b                                        ; $7a20: $60
	nop                                              ; $7a21: $00
	sbc  b                                           ; $7a22: $98
	nop                                              ; $7a23: $00
	ld   a, c                                        ; $7a24: $79
	nop                                              ; $7a25: $00
	ld   [bc], a                                     ; $7a26: $02
	nop                                              ; $7a27: $00
	dec  b                                           ; $7a28: $05
	nop                                              ; $7a29: $00
	ld   a, [bc]                                     ; $7a2a: $0a
	nop                                              ; $7a2b: $00
	inc  d                                           ; $7a2c: $14
	ld   bc, $0229                                   ; $7a2d: $01 $29 $02
	ld   d, d                                        ; $7a30: $52
	inc  b                                           ; $7a31: $04
	and  h                                           ; $7a32: $a4
	add  hl, bc                                      ; $7a33: $09
	ret  z                                           ; $7a34: $c8

	ld   [de], a                                     ; $7a35: $12
	db   $10                                         ; $7a36: $10
	inc  h                                           ; $7a37: $24
	jr   nz, jr_088_7a82                             ; $7a38: $20 $48

	ld   b, b                                        ; $7a3a: $40
	sub  b                                           ; $7a3b: $90
	add  b                                           ; $7a3c: $80
	jr   nz, jr_088_7a3f                             ; $7a3d: $20 $00

jr_088_7a3f:
	ld   b, b                                        ; $7a3f: $40
	ld   bc, $8081                                   ; $7a40: $01 $81 $80
	ld   [bc], a                                     ; $7a43: $02
	add  b                                           ; $7a44: $80
	inc  b                                           ; $7a45: $04
	add  b                                           ; $7a46: $80
	ld   [$1080], sp                                 ; $7a47: $08 $80 $10
	add  b                                           ; $7a4a: $80
	jr   nz, jr_088_79cd                             ; $7a4b: $20 $80

	ld   b, b                                        ; $7a4d: $40
	add  b                                           ; $7a4e: $80
	add  b                                           ; $7a4f: $80
	add  d                                           ; $7a50: $82
	nop                                              ; $7a51: $00
	dec  b                                           ; $7a52: $05
	ld   e, b                                        ; $7a53: $58
	ld   e, a                                        ; $7a54: $5f
	ld   h, c                                        ; $7a55: $61
	ld   h, a                                        ; $7a56: $67
	jr   @+$1b                                       ; $7a57: $18 $19

	add  b                                           ; $7a59: $80
	ld   b, $80                                      ; $7a5a: $06 $80
	ld   bc, $0084                                   ; $7a5c: $01 $84 $00
	dec  c                                           ; $7a5f: $0d
	rra                                              ; $7a60: $1f
	ld   hl, sp-$20                                  ; $7a61: $f8 $e0
	cp   $78                                         ; $7a63: $fe $78
	rst  $38                                         ; $7a65: $ff
	ld   e, $7f                                      ; $7a66: $1e $7f
	add  a                                           ; $7a68: $87
	sbc  a                                           ; $7a69: $9f
	ld   h, c                                        ; $7a6a: $61
	ld   h, a                                        ; $7a6b: $67
	jr   jr_088_7a87                                 ; $7a6c: $18 $19

	add  b                                           ; $7a6e: $80
	ld   b, $1d                                      ; $7a6f: $06 $1d
	ldh  [rP1], a                                    ; $7a71: $e0 $00
	jr   jr_088_7a75                                 ; $7a73: $18 $00

jr_088_7a75:
	rlca                                             ; $7a75: $07
	add  b                                           ; $7a76: $80
	nop                                              ; $7a77: $00
	ldh  [$80], a                                    ; $7a78: $e0 $80
	ld   sp, hl                                      ; $7a7a: $f9
	pop  hl                                          ; $7a7b: $e1
	and  $60                                         ; $7a7c: $e6 $60
	ld   sp, hl                                      ; $7a7e: $f9
	jr   jr_088_7afd                                 ; $7a7f: $18 $7c

	ld   h, d                                        ; $7a81: $62

jr_088_7a82:
	ld   [de], a                                     ; $7a82: $12
	sub  b                                           ; $7a83: $90
	inc  h                                           ; $7a84: $24
	jr   nz, @+$4a                                   ; $7a85: $20 $48

jr_088_7a87:
	ld   b, b                                        ; $7a87: $40
	sub  b                                           ; $7a88: $90
	add  b                                           ; $7a89: $80
	jr   nz, jr_088_7a8c                             ; $7a8a: $20 $00

jr_088_7a8c:
	ld   b, b                                        ; $7a8c: $40
	ld   bc, $8081                                   ; $7a8d: $01 $81 $80
	add  d                                           ; $7a90: $82
	add  b                                           ; $7a91: $80
	inc  b                                           ; $7a92: $04
	add  b                                           ; $7a93: $80
	ld   [$1080], sp                                 ; $7a94: $08 $80 $10
	add  b                                           ; $7a97: $80
	jr   nz, jr_088_7a1a                             ; $7a98: $20 $80

	ld   b, b                                        ; $7a9a: $40
	add  b                                           ; $7a9b: $80
	add  b                                           ; $7a9c: $80
	and  d                                           ; $7a9d: $a2
	nop                                              ; $7a9e: $00
	add  b                                           ; $7a9f: $80
	ld   bc, $008c                                   ; $7aa0: $01 $8c $00
	inc  bc                                          ; $7aa3: $03
	sbc  b                                           ; $7aa4: $98
	sbc  h                                           ; $7aa5: $9c
	ld   h, d                                        ; $7aa6: $62
	ld   h, [hl]                                     ; $7aa7: $66
	add  b                                           ; $7aa8: $80
	add  hl, de                                      ; $7aa9: $19
	add  b                                           ; $7aaa: $80
	ld   b, $80                                      ; $7aab: $06 $80
	ld   bc, $0084                                   ; $7aad: $01 $84 $00
	add  b                                           ; $7ab0: $80
	add  h                                           ; $7ab1: $84
	add  b                                           ; $7ab2: $80
	adc  b                                           ; $7ab3: $88
	add  b                                           ; $7ab4: $80
	sub  b                                           ; $7ab5: $90
	add  b                                           ; $7ab6: $80
	and  b                                           ; $7ab7: $a0
	add  b                                           ; $7ab8: $80
	ret  nz                                          ; $7ab9: $c0

	rst  $30                                         ; $7aba: $f7
	nop                                              ; $7abb: $00
	dec  c                                           ; $7abc: $0d
	ld   bc, $0300                                   ; $7abd: $01 $00 $03
	nop                                              ; $7ac0: $00
	ld   b, $00                                      ; $7ac1: $06 $00
	inc  c                                           ; $7ac3: $0c
	ld   bc, $0119                                   ; $7ac4: $01 $19 $01
	ld   sp, $6101                                   ; $7ac7: $31 $01 $61
	ld   b, b                                        ; $7aca: $40
	sub  d                                           ; $7acb: $92
	nop                                              ; $7acc: $00
	ld   [$00c0], sp                                 ; $7acd: $08 $c0 $00
	ldh  a, [rP1]                                    ; $7ad0: $f0 $00
	inc  a                                           ; $7ad2: $3c
	add  b                                           ; $7ad3: $80
	adc  a                                           ; $7ad4: $8f
	ldh  [$e3], a                                    ; $7ad5: $e0 $e3
	add  b                                           ; $7ad7: $80
	or   b                                           ; $7ad8: $b0
	sbc  e                                           ; $7ad9: $9b
	nop                                              ; $7ada: $00
	inc  bc                                          ; $7adb: $03
	ret  nz                                          ; $7adc: $c0

	nop                                              ; $7add: $00
	ldh  a, [$30]                                    ; $7ade: $f0 $30
	or   b                                           ; $7ae0: $b0
	nop                                              ; $7ae1: $00
	add  b                                           ; $7ae2: $80
	ld   bc, $008c                                   ; $7ae3: $01 $8c $00
	add  hl, de                                      ; $7ae6: $19
	ld   bc, $0300                                   ; $7ae7: $01 $00 $03
	nop                                              ; $7aea: $00
	ld   b, $00                                      ; $7aeb: $06 $00
	inc  c                                           ; $7aed: $0c
	nop                                              ; $7aee: $00
	jr   jr_088_7af1                                 ; $7aef: $18 $00

jr_088_7af1:
	jr   nc, jr_088_7af3                             ; $7af1: $30 $00

jr_088_7af3:
	ld   h, b                                        ; $7af3: $60
	nop                                              ; $7af4: $00
	ret  nz                                          ; $7af5: $c0

	nop                                              ; $7af6: $00
	add  b                                           ; $7af7: $80
	ld   h, b                                        ; $7af8: $60
	ldh  [$98], a                                    ; $7af9: $e0 $98
	ld   a, b                                        ; $7afb: $78
	ld   h, [hl]                                     ; $7afc: $66

jr_088_7afd:
	ld   e, $19                                      ; $7afd: $1e $19
	rlca                                             ; $7aff: $07
	ld   b, $80                                      ; $7b00: $06 $80
	ld   bc, $0004                                   ; $7b02: $01 $04 $00
	ld   b, d                                        ; $7b05: $42

jr_088_7b06:
	jp   nz, $8000                                   ; $7b06: $c2 $00 $80

	add  b                                           ; $7b09: $80
	nop                                              ; $7b0a: $00
	add  b                                           ; $7b0b: $80
	ld   [$0680], sp                                 ; $7b0c: $08 $80 $06
	add  b                                           ; $7b0f: $80
	ld   bc, $0080                                   ; $7b10: $01 $80 $00
	add  b                                           ; $7b13: $80
	inc  b                                           ; $7b14: $04
	adc  b                                           ; $7b15: $88
	nop                                              ; $7b16: $00
	add  b                                           ; $7b17: $80
	add  b                                           ; $7b18: $80
	dec  b                                           ; $7b19: $05
	ld   h, b                                        ; $7b1a: $60

jr_088_7b1b:
	ldh  [$98], a                                    ; $7b1b: $e0 $98
	ld   a, b                                        ; $7b1d: $78
	and  d                                           ; $7b1e: $a2
	jp   nz, $8780                                   ; $7b1f: $c2 $80 $87

	add  b                                           ; $7b22: $80
	ld   [hl-], a                                    ; $7b23: $32
	add  b                                           ; $7b24: $80
	dec  d                                           ; $7b25: $15
	add  b                                           ; $7b26: $80
	rlca                                             ; $7b27: $07
	add  b                                           ; $7b28: $80
	ld   bc, $4080                                   ; $7b29: $01 $80 $40
	add  b                                           ; $7b2c: $80
	db   $10                                         ; $7b2d: $10
	add  b                                           ; $7b2e: $80
	ld   bc, $022e                                   ; $7b2f: $01 $2e $02
	inc  bc                                          ; $7b32: $03
	dec  b                                           ; $7b33: $05
	ld   b, $0a                                      ; $7b34: $06 $0a
	inc  c                                           ; $7b36: $0c
	inc  d                                           ; $7b37: $14
	jr   jr_088_7b62                                 ; $7b38: $18 $28

	jr   nc, @+$52                                   ; $7b3a: $30 $50

	ld   h, b                                        ; $7b3c: $60
	and  b                                           ; $7b3d: $a0
	ret  nz                                          ; $7b3e: $c0

	ld   [hl], b                                     ; $7b3f: $70
	inc  a                                           ; $7b40: $3c
	nop                                              ; $7b41: $00
	rrca                                             ; $7b42: $0f
	rst  ToBoot                                         ; $7b43: $c7

jr_088_7b44:
	add  $4a                                         ; $7b44: $c6 $4a
	ld   c, h                                        ; $7b46: $4c
	sub  h                                           ; $7b47: $94
	sbc  b                                           ; $7b48: $98
	jr   z, jr_088_7b7b                              ; $7b49: $28 $30

	ld   d, b                                        ; $7b4b: $50
	ld   h, b                                        ; $7b4c: $60
	and  b                                           ; $7b4d: $a0
	ret  nz                                          ; $7b4e: $c0

	ld   b, c                                        ; $7b4f: $41
	nop                                              ; $7b50: $00
	ld   [bc], a                                     ; $7b51: $02
	nop                                              ; $7b52: $00
	inc  b                                           ; $7b53: $04
	nop                                              ; $7b54: $00
	ld   [$1101], sp                                 ; $7b55: $08 $01 $11
	inc  bc                                          ; $7b58: $03
	inc  hl                                          ; $7b59: $23
	ld   [$0c49], sp                                 ; $7b5a: $08 $49 $0c
	adc  [hl]                                        ; $7b5d: $8e
	jr   jr_088_7b44                                 ; $7b5e: $18 $e4

	add  c                                           ; $7b60: $81
	nop                                              ; $7b61: $00

jr_088_7b62:
	ld   d, $04                                      ; $7b62: $16 $04
	nop                                              ; $7b64: $00
	ld   [$1000], sp                                 ; $7b65: $08 $00 $10
	nop                                              ; $7b68: $00
	jr   nz, jr_088_7b6b                             ; $7b69: $20 $00

jr_088_7b6b:
	ld   b, b                                        ; $7b6b: $40
	jr   jr_088_7b06                                 ; $7b6c: $18 $98

	db   $10                                         ; $7b6e: $10
	inc  d                                           ; $7b6f: $14
	ld   [hl], b                                     ; $7b70: $70
	ld   a, b                                        ; $7b71: $78
	jr   nz, jr_088_7ba4                             ; $7b72: $20 $30

	nop                                              ; $7b74: $00
	jr   nz, jr_088_7b77                             ; $7b75: $20 $00

jr_088_7b77:
	ld   b, b                                        ; $7b77: $40
	nop                                              ; $7b78: $00
	add  b                                           ; $7b79: $80
	add  e                                           ; $7b7a: $83

jr_088_7b7b:
	nop                                              ; $7b7b: $00
	ld   [$0020], sp                                 ; $7b7c: $08 $20 $00
	jr   c, jr_088_7b81                              ; $7b7f: $38 $00

jr_088_7b81:
	ld   e, $00                                      ; $7b81: $1e $00
	rlca                                             ; $7b83: $07
	nop                                              ; $7b84: $00
	ld   bc, $009b                                   ; $7b85: $01 $9b $00
	ld   a, [bc]                                     ; $7b88: $0a
	add  b                                           ; $7b89: $80
	nop                                              ; $7b8a: $00
	ldh  [rP1], a                                    ; $7b8b: $e0 $00
	ld   a, b                                        ; $7b8d: $78
	nop                                              ; $7b8e: $00
	ld   e, $00                                      ; $7b8f: $1e $00
	rlca                                             ; $7b91: $07
	nop                                              ; $7b92: $00
	ld   bc, $008d                                   ; $7b93: $01 $8d $00
	ld   [bc], a                                     ; $7b96: $02
	rlca                                             ; $7b97: $07
	rra                                              ; $7b98: $1f
	jr   jr_088_7b1b                                 ; $7b99: $18 $80

	rlca                                             ; $7b9b: $07
	add  h                                           ; $7b9c: $84
	nop                                              ; $7b9d: $00
	add  b                                           ; $7b9e: $80
	jr   jr_088_7bac                                 ; $7b9f: $18 $0b

	ld   b, $86                                      ; $7ba1: $06 $86
	inc  bc                                          ; $7ba3: $03

jr_088_7ba4:
	db   $e3                                         ; $7ba4: $e3
	inc  bc                                          ; $7ba5: $03
	ld   a, e                                        ; $7ba6: $7b
	ld   bc, $001f                                   ; $7ba7: $01 $1f $00
	rlca                                             ; $7baa: $07
	nop                                              ; $7bab: $00

jr_088_7bac:
	ld   bc, $0085                                   ; $7bac: $01 $85 $00
	jr   jr_088_7bb2                                 ; $7baf: $18 $01

	add  b                                           ; $7bb1: $80

jr_088_7bb2:
	add  d                                           ; $7bb2: $82
	nop                                              ; $7bb3: $00
	inc  b                                           ; $7bb4: $04
	nop                                              ; $7bb5: $00
	ld   [$1101], sp                                 ; $7bb6: $08 $01 $11
	ld   [bc], a                                     ; $7bb9: $02
	ld   [hl+], a                                    ; $7bba: $22
	nop                                              ; $7bbb: $00
	ld   b, c                                        ; $7bbc: $41
	ld   [$100a], sp                                 ; $7bbd: $08 $0a $10
	inc  d                                           ; $7bc0: $14
	nop                                              ; $7bc1: $00
	ld   [$1000], sp                                 ; $7bc2: $08 $00 $10
	nop                                              ; $7bc5: $00
	jr   nz, jr_088_7bc8                             ; $7bc6: $20 $00

jr_088_7bc8:
	ld   b, b                                        ; $7bc8: $40
	add  l                                           ; $7bc9: $85
	nop                                              ; $7bca: $00
	ld   a, [bc]                                     ; $7bcb: $0a
	ld   hl, sp+$20                                  ; $7bcc: $f8 $20
	jr   z, jr_088_7bd0                              ; $7bce: $28 $00

jr_088_7bd0:
	stop                                             ; $7bd0: $10 $00
	jr   nz, jr_088_7bd4                             ; $7bd2: $20 $00

jr_088_7bd4:
	ld   b, b                                        ; $7bd4: $40
	nop                                              ; $7bd5: $00
	add  b                                           ; $7bd6: $80
	rst  $38                                         ; $7bd7: $ff
	nop                                              ; $7bd8: $00
	rst  $38                                         ; $7bd9: $ff
	nop                                              ; $7bda: $00
	rst  $38                                         ; $7bdb: $ff
	nop                                              ; $7bdc: $00
	rst  $38                                         ; $7bdd: $ff
	nop                                              ; $7bde: $00
	rst  $38                                         ; $7bdf: $ff
	nop                                              ; $7be0: $00
	xor  [hl]                                        ; $7be1: $ae
	nop                                              ; $7be2: $00
	and  c                                           ; $7be3: $a1
	nop                                              ; $7be4: $00
	xor  h                                           ; $7be5: $ac
	nop                                              ; $7be6: $00
	add  b                                           ; $7be7: $80
	ccf                                              ; $7be8: $3f
	adc  h                                           ; $7be9: $8c
	nop                                              ; $7bea: $00
	add  b                                           ; $7beb: $80
	db   $fc                                         ; $7bec: $fc
	and  [hl]                                        ; $7bed: $a6
	nop                                              ; $7bee: $00
	add  b                                           ; $7bef: $80
	ld   bc, $021d                                   ; $7bf0: $01 $1d $02
	inc  bc                                          ; $7bf3: $03
	dec  b                                           ; $7bf4: $05
	rlca                                             ; $7bf5: $07
	ld   [$070f], sp                                 ; $7bf6: $08 $0f $07
	inc  bc                                          ; $7bf9: $03
	inc  c                                           ; $7bfa: $0c
	rrca                                             ; $7bfb: $0f
	ld   a, [hl-]                                    ; $7bfc: $3a
	ccf                                              ; $7bfd: $3f
	ret                                              ; $7bfe: $c9


	rst  $38                                         ; $7bff: $ff
	adc  e                                           ; $7c00: $8b
	ei                                               ; $7c01: $fb
	cp   d                                           ; $7c02: $ba
	jp   z, $b1c1                                    ; $7c03: $ca $c1 $b1

	sub  b                                           ; $7c06: $90
	ld   d, b                                        ; $7c07: $50
	ld   h, c                                        ; $7c08: $61
	rst  $38                                         ; $7c09: $ff
	ld   hl, $0fff                                   ; $7c0a: $21 $ff $0f

jr_088_7c0d:
	ret  z                                           ; $7c0d: $c8

	adc  b                                           ; $7c0e: $88
	adc  a                                           ; $7c0f: $8f
	add  b                                           ; $7c10: $80
	res  0, b                                        ; $7c11: $cb $80
	ld   e, d                                        ; $7c13: $5a
	add  b                                           ; $7c14: $80
	or   c                                           ; $7c15: $b1
	add  b                                           ; $7c16: $80
	ld   d, b                                        ; $7c17: $50
	rlca                                             ; $7c18: $07
	rlca                                             ; $7c19: $07
	rst  $38                                         ; $7c1a: $ff
	nop                                              ; $7c1b: $00
	ei                                               ; $7c1c: $fb
	call z, $8bcb                                    ; $7c1d: $cc $cb $8b
	adc  a                                           ; $7c20: $8f
	add  b                                           ; $7c21: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c22: $cf
	add  b                                           ; $7c23: $80
	ld   e, d                                        ; $7c24: $5a
	add  b                                           ; $7c25: $80
	or   c                                           ; $7c26: $b1
	add  b                                           ; $7c27: $80
	ld   d, b                                        ; $7c28: $50
	add  b                                           ; $7c29: $80
	add  b                                           ; $7c2a: $80
	inc  bc                                          ; $7c2b: $03
	ld   [hl], b                                     ; $7c2c: $70
	ldh  a, [$7c]                                    ; $7c2d: $f0 $7c
	db   $fc                                         ; $7c2f: $fc
	add  b                                           ; $7c30: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c31: $cf
	ld   [$cfcd], sp                                 ; $7c32: $08 $cd $cf
	ld   d, l                                        ; $7c35: $55
	ld   d, a                                        ; $7c36: $57
	add  a                                           ; $7c37: $87
	add  l                                           ; $7c38: $85
	dec  c                                           ; $7c39: $0d
	inc  c                                           ; $7c3a: $0c
	inc  bc                                          ; $7c3b: $03
	add  l                                           ; $7c3c: $85
	nop                                              ; $7c3d: $00
	add  b                                           ; $7c3e: $80
	add  b                                           ; $7c3f: $80
	ld   [$c040], sp                                 ; $7c40: $08 $40 $c0
	and  b                                           ; $7c43: $a0
	ldh  [rAUD1SWEEP], a                             ; $7c44: $e0 $10
	ldh  a, [$2f]                                    ; $7c46: $f0 $2f
	ld   c, $16                                      ; $7c48: $0e $16
	add  c                                           ; $7c4a: $81
	inc  e                                           ; $7c4b: $1c
	ld   b, $25                                      ; $7c4c: $06 $25
	add  hl, sp                                      ; $7c4e: $39
	ld   a, [hl-]                                    ; $7c4f: $3a
	dec  sp                                          ; $7c50: $3b
	dec  hl                                          ; $7c51: $2b
	dec  sp                                          ; $7c52: $3b
	ld   e, a                                        ; $7c53: $5f
	add  c                                           ; $7c54: $81
	ld   [hl], a                                     ; $7c55: $77
	inc  bc                                          ; $7c56: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c57: $cf
	ld   h, c                                        ; $7c58: $61
	ld   [hl+], a                                    ; $7c59: $22
	and  d                                           ; $7c5a: $a2
	add  d                                           ; $7c5b: $82
	push bc                                          ; $7c5c: $c5
	add  b                                           ; $7c5d: $80
	ld   c, c                                        ; $7c5e: $49
	add  b                                           ; $7c5f: $80
	adc  e                                           ; $7c60: $8b
	add  d                                           ; $7c61: $82
	adc  l                                           ; $7c62: $8d
	add  b                                           ; $7c63: $80
	pop  hl                                          ; $7c64: $e1
	add  b                                           ; $7c65: $80
	and  d                                           ; $7c66: $a2
	add  d                                           ; $7c67: $82
	push bc                                          ; $7c68: $c5
	add  b                                           ; $7c69: $80
	ld   c, c                                        ; $7c6a: $49
	add  b                                           ; $7c6b: $80
	adc  e                                           ; $7c6c: $8b
	add  d                                           ; $7c6d: $82
	adc  l                                           ; $7c6e: $8d
	add  b                                           ; $7c6f: $80
	pop  hl                                          ; $7c70: $e1
	add  b                                           ; $7c71: $80
	and  d                                           ; $7c72: $a2
	add  d                                           ; $7c73: $82
	push bc                                          ; $7c74: $c5
	add  b                                           ; $7c75: $80
	ld   c, c                                        ; $7c76: $49
	add  b                                           ; $7c77: $80
	adc  e                                           ; $7c78: $8b
	add  b                                           ; $7c79: $80
	adc  l                                           ; $7c7a: $8d
	add  b                                           ; $7c7b: $80
	adc  h                                           ; $7c7c: $8c
	dec  b                                           ; $7c7d: $05

Call_088_7c7e:
	adc  l                                           ; $7c7e: $8d
	adc  [hl]                                        ; $7c7f: $8e
	ld   [hl], l                                     ; $7c80: $75
	ld   [hl], a                                     ; $7c81: $77
	ld   [$8009], sp                                 ; $7c82: $08 $09 $80
	ld   [$1080], sp                                 ; $7c85: $08 $80 $10
	add  b                                           ; $7c88: $80
	jr   @-$7e                                       ; $7c89: $18 $80

	jr   nc, jr_088_7c0d                             ; $7c8b: $30 $80

	ld   [hl-], a                                    ; $7c8d: $32
	rlca                                             ; $7c8e: $07
	ret  nc                                          ; $7c8f: $d0

	ld   [hl], b                                     ; $7c90: $70
	ld   e, b                                        ; $7c91: $58
	jr   c, jr_088_7cfc                              ; $7c92: $38 $68

	ld   hl, sp-$5c                                  ; $7c94: $f8 $a4
	db   $fc                                         ; $7c96: $fc
	add  b                                           ; $7c97: $80
	inc  a                                           ; $7c98: $3c
	ld   [bc], a                                     ; $7c99: $02
	inc  b                                           ; $7c9a: $04
	inc  c                                           ; $7c9b: $0c
	adc  d                                           ; $7c9c: $8a
	add  c                                           ; $7c9d: $81
	adc  [hl]                                        ; $7c9e: $8e
	inc  b                                           ; $7c9f: $04
	ld   d, l                                        ; $7ca0: $55
	ld   a, a                                        ; $7ca1: $7f
	ld   e, [hl]                                     ; $7ca2: $5e
	ld   a, a                                        ; $7ca3: $7f
	ld   e, a                                        ; $7ca4: $5f
	add  c                                           ; $7ca5: $81
	ld   a, a                                        ; $7ca6: $7f
	add  hl, bc                                      ; $7ca7: $09
	rla                                              ; $7ca8: $17
	ccf                                              ; $7ca9: $3f
	cpl                                              ; $7caa: $2f
	ccf                                              ; $7cab: $3f
	inc  sp                                          ; $7cac: $33
	ccf                                              ; $7cad: $3f
	rrca                                             ; $7cae: $0f
	rra                                              ; $7caf: $1f
	add  [hl]                                        ; $7cb0: $86
	adc  l                                           ; $7cb1: $8d
	add  b                                           ; $7cb2: $80
	adc  b                                           ; $7cb3: $88
	add  b                                           ; $7cb4: $80
	add  b                                           ; $7cb5: $80
	add  b                                           ; $7cb6: $80
	add  c                                           ; $7cb7: $81
	add  b                                           ; $7cb8: $80
	add  e                                           ; $7cb9: $83
	add  d                                           ; $7cba: $82
	add  h                                           ; $7cbb: $84
	inc  bc                                          ; $7cbc: $03
	ld   c, b                                        ; $7cbd: $48
	ret  z                                           ; $7cbe: $c8

	dec  l                                           ; $7cbf: $2d
	xor  l                                           ; $7cc0: $ad
	add  b                                           ; $7cc1: $80
	adc  b                                           ; $7cc2: $88
	add  b                                           ; $7cc3: $80
	add  b                                           ; $7cc4: $80
	add  b                                           ; $7cc5: $80
	add  c                                           ; $7cc6: $81
	add  b                                           ; $7cc7: $80
	add  e                                           ; $7cc8: $83
	add  d                                           ; $7cc9: $82
	add  h                                           ; $7cca: $84
	add  b                                           ; $7ccb: $80
	ld   c, b                                        ; $7ccc: $48
	add  b                                           ; $7ccd: $80
	xor  h                                           ; $7cce: $ac
	add  b                                           ; $7ccf: $80
	adc  b                                           ; $7cd0: $88
	add  b                                           ; $7cd1: $80
	add  b                                           ; $7cd2: $80
	add  b                                           ; $7cd3: $80
	add  c                                           ; $7cd4: $81
	add  b                                           ; $7cd5: $80
	add  e                                           ; $7cd6: $83
	add  d                                           ; $7cd7: $82
	add  h                                           ; $7cd8: $84
	add  b                                           ; $7cd9: $80
	ld   c, b                                        ; $7cda: $48
	add  b                                           ; $7cdb: $80
	ld   l, l                                        ; $7cdc: $6d
	add  b                                           ; $7cdd: $80
	and  a                                           ; $7cde: $a7
	add  b                                           ; $7cdf: $80
	adc  [hl]                                        ; $7ce0: $8e
	add  b                                           ; $7ce1: $80
	inc  e                                           ; $7ce2: $1c
	add  b                                           ; $7ce3: $80
	nop                                              ; $7ce4: $00
	add  b                                           ; $7ce5: $80
	inc  bc                                          ; $7ce6: $03
	dec  de                                          ; $7ce7: $1b
	rrca                                             ; $7ce8: $0f
	inc  c                                           ; $7ce9: $0c

jr_088_7cea:
	ld   a, h                                        ; $7cea: $7c
	ld   [hl], b                                     ; $7ceb: $70
	add  c                                           ; $7cec: $81
	adc  [hl]                                        ; $7ced: $8e
	ld   a, [de]                                     ; $7cee: $1a
	ld   e, $3e                                      ; $7cef: $1e $3e
	ld   l, $7e                                      ; $7cf1: $2e $7e
	ld   e, [hl]                                     ; $7cf3: $5e
	ldh  [$bc], a                                    ; $7cf4: $e0 $bc
	or   h                                           ; $7cf6: $b4
	inc  a                                           ; $7cf7: $3c
	ld   b, h                                        ; $7cf8: $44
	ld   a, h                                        ; $7cf9: $7c
	ldh  a, [$f8]                                    ; $7cfa: $f0 $f8

jr_088_7cfc:
	adc  $1f                                         ; $7cfc: $ce $1f
	ld   a, [bc]                                     ; $7cfe: $0a
	rrca                                             ; $7cff: $0f
	ld   [$000b], sp                                 ; $7d00: $08 $0b $00
	rlca                                             ; $7d03: $07
	add  b                                           ; $7d04: $80
	inc  bc                                          ; $7d05: $03
	add  b                                           ; $7d06: $80
	ld   [bc], a                                     ; $7d07: $02
	add  b                                           ; $7d08: $80
	rlca                                             ; $7d09: $07
	add  b                                           ; $7d0a: $80
	nop                                              ; $7d0b: $00
	ld   [hl+], a                                    ; $7d0c: $22
	ld   c, e                                        ; $7d0d: $4b
	set  3, a                                        ; $7d0e: $cb $df
	call c, $d15d                                    ; $7d10: $dc $5d $d1
	add  e                                           ; $7d13: $83
	adc  e                                           ; $7d14: $8b
	ld   a, [hl+]                                    ; $7d15: $2a
	dec  hl                                          ; $7d16: $2b
	ret  c                                           ; $7d17: $d8

	ld   a, [$6f5b]                                  ; $7d18: $fa $5b $6f
	rrca                                             ; $7d1b: $0f
	jr   jr_088_7cea                                 ; $7d1c: $18 $cc

	set  3, a                                        ; $7d1e: $cb $df
	ld   e, h                                        ; $7d20: $5c
	ld   e, l                                        ; $7d21: $5d
	pop  de                                          ; $7d22: $d1

jr_088_7d23:
	add  e                                           ; $7d23: $83
	adc  e                                           ; $7d24: $8b
	ld   a, [hl+]                                    ; $7d25: $2a
	dec  hl                                          ; $7d26: $2b
	ret  c                                           ; $7d27: $d8

	ld   a, [$ff5b]                                  ; $7d28: $fa $5b $ff
	ld   b, [hl]                                     ; $7d2b: $46
	ld   a, a                                        ; $7d2c: $7f
	ld   [hl], d                                     ; $7d2d: $72
	set  3, a                                        ; $7d2e: $cb $df
	add  b                                           ; $7d30: $80
	ld   e, h                                        ; $7d31: $5c
	ld   [bc], a                                     ; $7d32: $02
	ret  nc                                          ; $7d33: $d0

	add  b                                           ; $7d34: $80
	adc  b                                           ; $7d35: $88
	add  b                                           ; $7d36: $80
	dec  hl                                          ; $7d37: $2b
	dec  de                                          ; $7d38: $1b
	ret  c                                           ; $7d39: $d8

	rst  $38                                         ; $7d3a: $ff
	sbc  $ff                                         ; $7d3b: $de $ff
	ld   e, $f0                                      ; $7d3d: $1e $f0
	inc  de                                          ; $7d3f: $13
	add  e                                           ; $7d40: $83
	adc  a                                           ; $7d41: $8f
	rrca                                             ; $7d42: $0f
	inc  a                                           ; $7d43: $3c
	ccf                                              ; $7d44: $3f
	ldh  a, [rIE]                                    ; $7d45: $f0 $ff
	add  h                                           ; $7d47: $84
	db   $fc                                         ; $7d48: $fc
	ld   b, h                                        ; $7d49: $44
	di                                               ; $7d4a: $f3

jr_088_7d4b:
	ld   b, b                                        ; $7d4b: $40
	db   $ec                                         ; $7d4c: $ec
	ld   h, b                                        ; $7d4d: $60
	ld   [hl], b                                     ; $7d4e: $70
	ret  z                                           ; $7d4f: $c8

	ld   hl, sp+$60                                  ; $7d50: $f8 $60
	ldh  a, [rLCDC]                                  ; $7d52: $f0 $40
	ldh  [$80], a                                    ; $7d54: $e0 $80
	ld   b, b                                        ; $7d56: $40
	ld   bc, $8000                                   ; $7d57: $01 $00 $80
	sub  h                                           ; $7d5a: $94
	nop                                              ; $7d5b: $00
	add  b                                           ; $7d5c: $80
	rlca                                             ; $7d5d: $07
	adc  h                                           ; $7d5e: $8c
	nop                                              ; $7d5f: $00
	inc  bc                                          ; $7d60: $03
	rst  $38                                         ; $7d61: $ff
	and  c                                           ; $7d62: $a1
	ld   hl, $8a7f                                   ; $7d63: $21 $7f $8a
	nop                                              ; $7d66: $00
	inc  bc                                          ; $7d67: $03
	rst  $38                                         ; $7d68: $ff
	dec  bc                                          ; $7d69: $0b
	ld   [$8afc], sp                                 ; $7d6a: $08 $fc $8a
	nop                                              ; $7d6d: $00
	add  b                                           ; $7d6e: $80
	add  b                                           ; $7d6f: $80
	push de                                          ; $7d70: $d5
	nop                                              ; $7d71: $00
	add  c                                           ; $7d72: $81
	inc  b                                           ; $7d73: $04
	inc  b                                           ; $7d74: $04
	nop                                              ; $7d75: $00
	ld   a, [bc]                                     ; $7d76: $0a
	dec  hl                                          ; $7d77: $2b
	ld   a, [bc]                                     ; $7d78: $0a
	cpl                                              ; $7d79: $2f
	sub  c                                           ; $7d7a: $91
	nop                                              ; $7d7b: $00
	inc  b                                           ; $7d7c: $04
	jr   nc, jr_088_7d7f                             ; $7d7d: $30 $00

jr_088_7d7f:
	ld   d, b                                        ; $7d7f: $50
	nop                                              ; $7d80: $00
	ld   b, b                                        ; $7d81: $40
	add  c                                           ; $7d82: $81
	inc  b                                           ; $7d83: $04
	inc  b                                           ; $7d84: $04
	ld   h, b                                        ; $7d85: $60
	ld   a, [bc]                                     ; $7d86: $0a
	db   $eb                                         ; $7d87: $eb
	ld   a, [bc]                                     ; $7d88: $0a
	xor  a                                           ; $7d89: $af
	adc  a                                           ; $7d8a: $8f

jr_088_7d8b:
	nop                                              ; $7d8b: $00
	add  b                                           ; $7d8c: $80
	inc  b                                           ; $7d8d: $04
	inc  b                                           ; $7d8e: $04
	jr   nc, jr_088_7d91                             ; $7d8f: $30 $00

jr_088_7d91:
	ld   d, b                                        ; $7d91: $50
	nop                                              ; $7d92: $00
	ld   b, b                                        ; $7d93: $40
	add  b                                           ; $7d94: $80
	nop                                              ; $7d95: $00
	dec  b                                           ; $7d96: $05
	inc  b                                           ; $7d97: $04
	ld   h, b                                        ; $7d98: $60
	ld   a, [bc]                                     ; $7d99: $0a
	db   $eb                                         ; $7d9a: $eb
	ld   a, [bc]                                     ; $7d9b: $0a
	xor  a                                           ; $7d9c: $af
	sub  e                                           ; $7d9d: $93
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	jr   nc, jr_088_7d23                             ; $7da0: $30 $81

	nop                                              ; $7da2: $00
	ld   b, $10                                      ; $7da3: $06 $10
	nop                                              ; $7da5: $00
	ld   d, b                                        ; $7da6: $50
	nop                                              ; $7da7: $00
	sub  b                                           ; $7da8: $90
	nop                                              ; $7da9: $00
	ldh  [$bd], a                                    ; $7daa: $e0 $bd
	nop                                              ; $7dac: $00
	inc  b                                           ; $7dad: $04
	ld   [$5616], sp                                 ; $7dae: $08 $16 $56
	dec  d                                           ; $7db1: $15
	ld   c, a                                        ; $7db2: $4f
	add  c                                           ; $7db3: $81
	jr   z, jr_088_7dba                              ; $7db4: $28 $04

	xor  h                                           ; $7db6: $ac
	jr   nz, jr_088_7d4b                             ; $7db7: $20 $92

	ld   d, b                                        ; $7db9: $50

jr_088_7dba:
	ld   d, h                                        ; $7dba: $54
	add  c                                           ; $7dbb: $81
	ld   d, d                                        ; $7dbc: $52
	inc  d                                           ; $7dbd: $14
	ld   [hl], d                                     ; $7dbe: $72
	ld   d, d                                        ; $7dbf: $52
	ld   [hl], e                                     ; $7dc0: $73
	ld   d, [hl]                                     ; $7dc1: $56
	ld   [hl], h                                     ; $7dc2: $74
	ld   e, h                                        ; $7dc3: $5c
	ld   a, l                                        ; $7dc4: $7d
	ld   e, h                                        ; $7dc5: $5c
	ld   a, d                                        ; $7dc6: $7a
	ld   e, b                                        ; $7dc7: $58
	ld   a, [hl]                                     ; $7dc8: $7e
	ld   e, c                                        ; $7dc9: $59
	ld   [hl], e                                     ; $7dca: $73
	ld   d, d                                        ; $7dcb: $52
	ld   a, e                                        ; $7dcc: $7b
	inc  d                                           ; $7dcd: $14
	dec  a                                           ; $7dce: $3d
	ld   d, $56                                      ; $7dcf: $16 $56
	dec  d                                           ; $7dd1: $15
	ld   c, a                                        ; $7dd2: $4f
	add  c                                           ; $7dd3: $81
	jr   z, jr_088_7dda                              ; $7dd4: $28 $04

	xor  h                                           ; $7dd6: $ac
	jr   nz, @-$6c                                   ; $7dd7: $20 $92

	ld   d, b                                        ; $7dd9: $50

jr_088_7dda:
	ld   d, h                                        ; $7dda: $54
	add  c                                           ; $7ddb: $81
	ld   d, d                                        ; $7ddc: $52
	inc  d                                           ; $7ddd: $14
	ld   [hl], d                                     ; $7dde: $72
	ld   d, d                                        ; $7ddf: $52
	ld   [hl], e                                     ; $7de0: $73
	ld   d, [hl]                                     ; $7de1: $56
	ld   [hl], h                                     ; $7de2: $74
	ld   a, h                                        ; $7de3: $7c
	ld   e, l                                        ; $7de4: $5d
	ld   e, h                                        ; $7de5: $5c
	ld   e, d                                        ; $7de6: $5a
	ld   e, b                                        ; $7de7: $58
	ld   e, [hl]                                     ; $7de8: $5e
	ld   e, c                                        ; $7de9: $59
	ld   d, e                                        ; $7dea: $53
	ld   [hl], d                                     ; $7deb: $72
	ei                                               ; $7dec: $fb
	sub  h                                           ; $7ded: $94
	dec  a                                           ; $7dee: $3d
	ld   d, $56                                      ; $7def: $16 $56
	dec  d                                           ; $7df1: $15
	ld   c, a                                        ; $7df2: $4f
	add  c                                           ; $7df3: $81

jr_088_7df4:
	jr   z, jr_088_7dfa                              ; $7df4: $28 $04

	xor  h                                           ; $7df6: $ac
	jr   nz, jr_088_7d8b                             ; $7df7: $20 $92

	ld   d, b                                        ; $7df9: $50

jr_088_7dfa:
	ld   d, h                                        ; $7dfa: $54
	add  b                                           ; $7dfb: $80
	ld   d, d                                        ; $7dfc: $52
	ld   de, $7253                                   ; $7dfd: $11 $53 $72
	ld   d, d                                        ; $7e00: $52
	ld   [hl], d                                     ; $7e01: $72

jr_088_7e02:
	ld   d, [hl]                                     ; $7e02: $56
	ld   [hl], h                                     ; $7e03: $74
	ld   a, h                                        ; $7e04: $7c
	ld   e, l                                        ; $7e05: $5d
	ld   e, h                                        ; $7e06: $5c
	ld   e, d                                        ; $7e07: $5a
	ld   e, b                                        ; $7e08: $58
	ld   e, [hl]                                     ; $7e09: $5e
	ld   e, c                                        ; $7e0a: $59
	ld   d, e                                        ; $7e0b: $53
	ld   [hl], d                                     ; $7e0c: $72
	ei                                               ; $7e0d: $fb
	sub  h                                           ; $7e0e: $94
	dec  [hl]                                        ; $7e0f: $35

jr_088_7e10:
	add  b                                           ; $7e10: $80
	nop                                              ; $7e11: $00
	inc  b                                           ; $7e12: $04
	add  b                                           ; $7e13: $80
	and  b                                           ; $7e14: $a0
	ret  nz                                          ; $7e15: $c0

	jp   $80c0                                       ; $7e16: $c3 $c0 $80


	add  b                                           ; $7e19: $80
	dec  d                                           ; $7e1a: $15
	add  h                                           ; $7e1b: $84
	add  b                                           ; $7e1c: $80
	add  hl, hl                                      ; $7e1d: $29
	ld   bc, $0002                                   ; $7e1e: $01 $02 $00
	ld   e, a                                        ; $7e21: $5f
	nop                                              ; $7e22: $00
	jp   nz, $1000                                   ; $7e23: $c2 $00 $10

	ld   hl, $43e0                                   ; $7e26: $21 $e0 $43
	pop  af                                          ; $7e29: $f1
	adc  a                                           ; $7e2a: $8f
	ldh  a, [$3c]                                    ; $7e2b: $f0 $3c
	add  b                                           ; $7e2d: $80
	ld   [hl], b                                     ; $7e2e: $70

jr_088_7e2f:
	nop                                              ; $7e2f: $00
	add  b                                           ; $7e30: $80
	add  [hl]                                        ; $7e31: $86
	nop                                              ; $7e32: $00
	inc  b                                           ; $7e33: $04
	ret  nz                                          ; $7e34: $c0

	nop                                              ; $7e35: $00
	ret  nz                                          ; $7e36: $c0

	ldh  a, [$e0]                                    ; $7e37: $f0 $e0
	add  c                                           ; $7e39: $81
	ld   [hl], b                                     ; $7e3a: $70
	dec  b                                           ; $7e3b: $05
	ld   d, b                                        ; $7e3c: $50
	ld   [hl], b                                     ; $7e3d: $70
	jr   nz, @-$1e                                   ; $7e3e: $20 $e0

	ld   b, b                                        ; $7e40: $40
	ret  nz                                          ; $7e41: $c0

	add  b                                           ; $7e42: $80
	add  b                                           ; $7e43: $80
	sub  b                                           ; $7e44: $90
	nop                                              ; $7e45: $00
	ld   [bc], a                                     ; $7e46: $02
	ld   bc, $0100                                   ; $7e47: $01 $00 $01
	sub  d                                           ; $7e4a: $92
	nop                                              ; $7e4b: $00
	add  b                                           ; $7e4c: $80
	db   $10                                         ; $7e4d: $10
	add  c                                           ; $7e4e: $81
	jr   nz, jr_088_7e57                             ; $7e4f: $20 $06

	ld   [hl], b                                     ; $7e51: $70
	jr   nz, jr_088_7df4                             ; $7e52: $20 $a0

	nop                                              ; $7e54: $00
	pop  de                                          ; $7e55: $d1
	nop                                              ; $7e56: $00

jr_088_7e57:
	ld   bc, $0092                                   ; $7e57: $01 $92 $00
	add  b                                           ; $7e5a: $80
	db   $10                                         ; $7e5b: $10
	add  c                                           ; $7e5c: $81
	jr   nz, jr_088_7e65                             ; $7e5d: $20 $06

	ld   [hl], b                                     ; $7e5f: $70
	jr   nz, jr_088_7e02                             ; $7e60: $20 $a0

	nop                                              ; $7e62: $00
	pop  de                                          ; $7e63: $d1
	nop                                              ; $7e64: $00

jr_088_7e65:
	ld   bc, $0092                                   ; $7e65: $01 $92 $00
	add  b                                           ; $7e68: $80
	db   $10                                         ; $7e69: $10
	add  c                                           ; $7e6a: $81
	jr   nz, jr_088_7e71                             ; $7e6b: $20 $04

	ld   [hl], b                                     ; $7e6d: $70
	jr   nz, jr_088_7e10                             ; $7e6e: $20 $a0

	nop                                              ; $7e70: $00

jr_088_7e71:
	ret  nc                                          ; $7e71: $d0

	rst  $38                                         ; $7e72: $ff
	nop                                              ; $7e73: $00
	rst  $38                                         ; $7e74: $ff
	nop                                              ; $7e75: $00
	rst  $38                                         ; $7e76: $ff
	nop                                              ; $7e77: $00
	rst  $38                                         ; $7e78: $ff
	nop                                              ; $7e79: $00
	rst  $38                                         ; $7e7a: $ff
	nop                                              ; $7e7b: $00
	adc  $00                                         ; $7e7c: $ce $00
	adc  [hl]                                        ; $7e7e: $8e
	nop                                              ; $7e7f: $00

jr_088_7e80:
	xor  b                                           ; $7e80: $a8
	nop                                              ; $7e81: $00
	add  b                                           ; $7e82: $80
	rlca                                             ; $7e83: $07
	inc  b                                           ; $7e84: $04
	ccf                                              ; $7e85: $3f
	jr   c, jr_088_7e80                              ; $7e86: $38 $f8

	ret  nz                                          ; $7e88: $c0

	ccf                                              ; $7e89: $3f
	add  a                                           ; $7e8a: $87
	nop                                              ; $7e8b: $00
	add  b                                           ; $7e8c: $80
	db   $fc                                         ; $7e8d: $fc
	nop                                              ; $7e8e: $00
	ccf                                              ; $7e8f: $3f
	add  b                                           ; $7e90: $80
	inc  bc                                          ; $7e91: $03
	ld   bc, $3f00                                   ; $7e92: $01 $00 $3f
	adc  c                                           ; $7e95: $89
	nop                                              ; $7e96: $00
	add  b                                           ; $7e97: $80
	add  b                                           ; $7e98: $80
	ld   [bc], a                                     ; $7e99: $02
	ldh  [$60], a                                    ; $7e9a: $e0 $60
	add  b                                           ; $7e9c: $80
	sbc  l                                           ; $7e9d: $9d
	nop                                              ; $7e9e: $00
	add  b                                           ; $7e9f: $80
	inc  bc                                          ; $7ea0: $03
	inc  b                                           ; $7ea1: $04
	rlca                                             ; $7ea2: $07
	inc  b                                           ; $7ea3: $04
	inc  c                                           ; $7ea4: $0c
	ld   [$8118], sp                                 ; $7ea5: $08 $18 $81
	stop                                             ; $7ea8: $10 $00
	jr   nc, jr_088_7e2f                             ; $7eaa: $30 $83

	jr   nz, jr_088_7eae                             ; $7eac: $20 $00

jr_088_7eae:
	pop  hl                                          ; $7eae: $e1
	add  e                                           ; $7eaf: $83
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	ld   [bc], a                                     ; $7eb2: $02
	add  e                                           ; $7eb3: $83
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	dec  b                                           ; $7eb6: $05
	add  c                                           ; $7eb7: $81
	nop                                              ; $7eb8: $00

jr_088_7eb9:
	nop                                              ; $7eb9: $00
	add  [hl]                                        ; $7eba: $86
	add  e                                           ; $7ebb: $83
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	add  b                                           ; $7ebe: $80
	add  a                                           ; $7ebf: $87
	nop                                              ; $7ec0: $00
	rlca                                             ; $7ec1: $07
	rlca                                             ; $7ec2: $07
	jr   jr_088_7ef9                                 ; $7ec3: $18 $34

	inc  l                                           ; $7ec5: $2c
	ld   d, e                                        ; $7ec6: $53
	ld   d, a                                        ; $7ec7: $57
	add  hl, hl                                      ; $7ec8: $29
	ld   a, [hl+]                                    ; $7ec9: $2a
	add  b                                           ; $7eca: $80
	ld   d, [hl]                                     ; $7ecb: $56
	add  b                                           ; $7ecc: $80
	xor  h                                           ; $7ecd: $ac
	add  b                                           ; $7ece: $80
	ld   d, h                                        ; $7ecf: $54
	add  b                                           ; $7ed0: $80
	xor  h                                           ; $7ed1: $ac
	nop                                              ; $7ed2: $00
	rst  $38                                         ; $7ed3: $ff
	add  c                                           ; $7ed4: $81
	nop                                              ; $7ed5: $00
	add  c                                           ; $7ed6: $81
	ld   hl, sp-$80                                  ; $7ed7: $f8 $80
	ld   [$1883], sp                                 ; $7ed9: $08 $83 $18
	ld   [bc], a                                     ; $7edc: $02
	ld   [$d038], sp                                 ; $7edd: $08 $38 $d0
	adc  c                                           ; $7ee0: $89
	nop                                              ; $7ee1: $00
	add  d                                           ; $7ee2: $82
	ld   bc, $7f00                                   ; $7ee3: $01 $00 $7f
	add  e                                           ; $7ee6: $83
	ld   b, b                                        ; $7ee7: $40
	nop                                              ; $7ee8: $00
	ret  nz                                          ; $7ee9: $c0

	add  h                                           ; $7eea: $84
	add  b                                           ; $7eeb: $80
	add  c                                           ; $7eec: $81
	nop                                              ; $7eed: $00
	ld   [bc], a                                     ; $7eee: $02
	ld   b, $00                                      ; $7eef: $06 $00
	ld   a, [bc]                                     ; $7ef1: $0a
	add  e                                           ; $7ef2: $83
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	inc  d                                           ; $7ef5: $14
	add  e                                           ; $7ef6: $83
	nop                                              ; $7ef7: $00
	inc  bc                                          ; $7ef8: $03

jr_088_7ef9:
	jr   z, jr_088_7efb                              ; $7ef9: $28 $00

jr_088_7efb:
	ld   sp, $8001                                   ; $7efb: $31 $01 $80
	nop                                              ; $7efe: $00
	add  b                                           ; $7eff: $80
	ld   bc, $0280                                   ; $7f00: $01 $80 $02
	add  b                                           ; $7f03: $80
	ld   bc, $0280                                   ; $7f04: $01 $80 $02
	add  b                                           ; $7f07: $80
	dec  b                                           ; $7f08: $05
	add  b                                           ; $7f09: $80
	ld   [bc], a                                     ; $7f0a: $02
	add  b                                           ; $7f0b: $80
	ld   e, b                                        ; $7f0c: $58
	add  b                                           ; $7f0d: $80
	xor  b                                           ; $7f0e: $a8
	add  b                                           ; $7f0f: $80
	ld   e, b                                        ; $7f10: $58
	add  b                                           ; $7f11: $80
	or   b                                           ; $7f12: $b0
	add  b                                           ; $7f13: $80
	ld   d, b                                        ; $7f14: $50
	add  b                                           ; $7f15: $80
	or   b                                           ; $7f16: $b0
	add  b                                           ; $7f17: $80
	ld   h, b                                        ; $7f18: $60
	add  b                                           ; $7f19: $80
	and  b                                           ; $7f1a: $a0
	nop                                              ; $7f1b: $00
	rla                                              ; $7f1c: $17
	add  c                                           ; $7f1d: $81
	jr   c, jr_088_7f20                              ; $7f1e: $38 $00

jr_088_7f20:
	nop                                              ; $7f20: $00
	add  e                                           ; $7f21: $83
	ld   [hl], b                                     ; $7f22: $70
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	add  e                                           ; $7f25: $83
	ldh  [rSC], a                                    ; $7f26: $e0 $02
	ld   b, c                                        ; $7f28: $41
	ld   bc, $8503                                   ; $7f29: $01 $03 $85
	ld   [bc], a                                     ; $7f2c: $02
	nop                                              ; $7f2d: $00
	ld   b, $83                                      ; $7f2e: $06 $83
	inc  b                                           ; $7f30: $04
	nop                                              ; $7f31: $00
	db   $fc                                         ; $7f32: $fc
	adc  l                                           ; $7f33: $8d
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	jr   nc, jr_088_7eb9                             ; $7f36: $30 $81

	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	ld   d, b                                        ; $7f3a: $50
	add  e                                           ; $7f3b: $83
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	and  b                                           ; $7f3e: $a0
	add  e                                           ; $7f3f: $83
	nop                                              ; $7f40: $00
	ld   bc, $05c5                                   ; $7f41: $01 $c5 $05
	add  b                                           ; $7f44: $80
	ld   a, [bc]                                     ; $7f45: $0a
	add  b                                           ; $7f46: $80
	dec  b                                           ; $7f47: $05
	add  b                                           ; $7f48: $80
	ld   a, [bc]                                     ; $7f49: $0a
	add  b                                           ; $7f4a: $80
	dec  d                                           ; $7f4b: $15
	add  b                                           ; $7f4c: $80
	ld   a, [bc]                                     ; $7f4d: $0a
	add  b                                           ; $7f4e: $80
	dec  d                                           ; $7f4f: $15
	add  b                                           ; $7f50: $80
	dec  hl                                          ; $7f51: $2b
	ld   bc, $6160                                   ; $7f52: $01 $60 $61
	add  b                                           ; $7f55: $80
	pop  bc                                          ; $7f56: $c1
	add  b                                           ; $7f57: $80
	ld   b, c                                        ; $7f58: $41
	ld   [bc], a                                     ; $7f59: $02
	pop  bc                                          ; $7f5a: $c1
	jp   $8182                                       ; $7f5b: $c3 $82 $81


	add  e                                           ; $7f5e: $83
	inc  b                                           ; $7f5f: $04
	add  d                                           ; $7f60: $82
	add  a                                           ; $7f61: $87
	dec  b                                           ; $7f62: $05
	rlca                                             ; $7f63: $07
	cp   d                                           ; $7f64: $ba
	add  e                                           ; $7f65: $83
	ret  nz                                          ; $7f66: $c0

	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	add  e                                           ; $7f69: $83
	add  b                                           ; $7f6a: $80
	add  d                                           ; $7f6b: $82
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	rrca                                             ; $7f6e: $0f
	add  e                                           ; $7f6f: $83
	ld   [$1800], sp                                 ; $7f70: $08 $00 $18
	add  b                                           ; $7f73: $80
	db   $10                                         ; $7f74: $10
	rlca                                             ; $7f75: $07
	ld   de, $1710                                   ; $7f76: $11 $10 $17
	ld   sp, $373f                                   ; $7f79: $31 $3f $37
	ccf                                              ; $7f7c: $3f
	pop  af                                          ; $7f7d: $f1
	add  c                                           ; $7f7e: $81
	nop                                              ; $7f7f: $00
	inc  c                                           ; $7f80: $0c
	ld   bc, $000f                                   ; $7f81: $01 $0f $00
	ld   a, a                                        ; $7f84: $7f
	rrca                                             ; $7f85: $0f
	rst  $38                                         ; $7f86: $ff
	ld   a, a                                        ; $7f87: $7f
	rst  $38                                         ; $7f88: $ff
	ld   hl, sp-$01                                  ; $7f89: $f8 $ff
	ret  nz                                          ; $7f8b: $c0

	ld   hl, sp-$41                                  ; $7f8c: $f8 $bf
	add  c                                           ; $7f8e: $81
	nop                                              ; $7f8f: $00
	inc  b                                           ; $7f90: $04
	add  b                                           ; $7f91: $80
	ld   hl, sp+$00                                  ; $7f92: $f8 $00
	rst  $38                                         ; $7f94: $ff
	ld   hl, sp-$7f                                  ; $7f95: $f8 $81
	rst  $38                                         ; $7f97: $ff
	dec  b                                           ; $7f98: $05
	rrca                                             ; $7f99: $0f
	rst  $38                                         ; $7f9a: $ff
	ld   bc, $eb0f                                   ; $7f9b: $01 $0f $eb
	dec  d                                           ; $7f9e: $15
	add  b                                           ; $7f9f: $80
	dec  hl                                          ; $7fa0: $2b
	add  b                                           ; $7fa1: $80
	ld   d, [hl]                                     ; $7fa2: $56
	add  b                                           ; $7fa3: $80
	ld   a, [hl+]                                    ; $7fa4: $2a
	inc  c                                           ; $7fa5: $0c
	ld   d, $d6                                      ; $7fa6: $16 $d6
	inc  c                                           ; $7fa8: $0c
	db   $fc                                         ; $7fa9: $fc
	call nz, $f0fc                                   ; $7faa: $c4 $fc $f0
	rst  $38                                         ; $7fad: $ff
	dec  b                                           ; $7fae: $05
	rlca                                             ; $7faf: $07
	inc  b                                           ; $7fb0: $04
	ld   b, $02                                      ; $7fb1: $06 $02
	add  c                                           ; $7fb3: $81
	ld   c, $00                                      ; $7fb4: $0e $00
	ld   [$0c80], sp                                 ; $7fb6: $08 $80 $0c
	add  c                                           ; $7fb9: $81
	db   $fc                                         ; $7fba: $fc
	ld   [bc], a                                     ; $7fbb: $02
	ld   e, b                                        ; $7fbc: $58
	ld   hl, sp-$60                                  ; $7fbd: $f8 $a0
	adc  l                                           ; $7fbf: $8d
	nop                                              ; $7fc0: $00
	dec  b                                           ; $7fc1: $05
	jr   nz, @+$41                                   ; $7fc2: $20 $3f

	inc  c                                           ; $7fc4: $0c
	rra                                              ; $7fc5: $1f
	nop                                              ; $7fc6: $00
	inc  c                                           ; $7fc7: $0c
	adc  b                                           ; $7fc8: $88
	nop                                              ; $7fc9: $00
	add  b                                           ; $7fca: $80
	ret  nz                                          ; $7fcb: $c0

	adc  h                                           ; $7fcc: $8c
	nop                                              ; $7fcd: $00
	add  b                                           ; $7fce: $80
	ld   bc, $008c                                   ; $7fcf: $01 $8c $00
	rlca                                             ; $7fd2: $07
	add  c                                           ; $7fd3: $81
	rst  $38                                         ; $7fd4: $ff
	rra                                              ; $7fd5: $1f
	ld   a, a                                        ; $7fd6: $7f
	rrca                                             ; $7fd7: $0f
	rra                                              ; $7fd8: $1f
	ld   bc, $860f                                   ; $7fd9: $01 $0f $86
	nop                                              ; $7fdc: $00
	inc  bc                                          ; $7fdd: $03
	ld   a, b                                        ; $7fde: $78
	ld   hl, sp+$40                                  ; $7fdf: $f8 $40
	ret  nz                                          ; $7fe1: $c0

	add  d                                           ; $7fe2: $82
	add  b                                           ; $7fe3: $80
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	rst  $38                                         ; $7fe6: $ff
	nop                                              ; $7fe7: $00
	rst  $38                                         ; $7fe8: $ff
	nop                                              ; $7fe9: $00
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	call $0000                                      ; $7ff6: $cd $00 $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
