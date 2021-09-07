; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $098", ROMX[$4000], BANK[$98]

	ld   d, h                                        ; $4000: $54
	ld   bc, $fe03                                   ; $4001: $01 $03 $fe
	ld   a, $ff                                      ; $4004: $3e $ff
	pop  bc                                          ; $4006: $c1
	add  b                                           ; $4007: $80
	ld   a, c                                        ; $4008: $79
	add  hl, bc                                      ; $4009: $09
	add  b                                           ; $400a: $80
	add  d                                           ; $400b: $82
	add  b                                           ; $400c: $80
	db   $f4                                         ; $400d: $f4
	ld   [hl], b                                     ; $400e: $70
	ret  z                                           ; $400f: $c8

	ret  nz                                          ; $4010: $c0

jr_098_4011:
	jr   nc, jr_098_4013                             ; $4011: $30 $00

jr_098_4013:
	ret  nz                                          ; $4013: $c0

	adc  [hl]                                        ; $4014: $8e
	nop                                              ; $4015: $00
	add  d                                           ; $4016: $82
	ld   bc, $009a                                   ; $4017: $01 $9a $00
	dec  c                                           ; $401a: $0d
	pop  hl                                          ; $401b: $e1
	ld   a, [hl]                                     ; $401c: $7e
	ld   l, a                                        ; $401d: $6f
	cp   a                                           ; $401e: $bf
	inc  hl                                          ; $401f: $23
	ld   e, a                                        ; $4020: $5f
	inc  c                                           ; $4021: $0c
	daa                                              ; $4022: $27
	rlca                                             ; $4023: $07
	add  hl, de                                      ; $4024: $19
	ld   bc, $0006                                   ; $4025: $01 $06 $00
	ld   bc, $0090                                   ; $4028: $01 $90 $00
	ld   bc, $7887                                   ; $402b: $01 $87 $78
	add  b                                           ; $402e: $80
	adc  a                                           ; $402f: $8f
	add  b                                           ; $4030: $80
	ldh  a, [$09]                                    ; $4031: $f0 $09
	ld   a, a                                        ; $4033: $7f
	rst  $38                                         ; $4034: $ff
	adc  a                                           ; $4035: $8f
	rst  $38                                         ; $4036: $ff
	or   b                                           ; $4037: $b0
	ld   a, a                                        ; $4038: $7f
	ccf                                              ; $4039: $3f
	add  b                                           ; $403a: $80
	nop                                              ; $403b: $00
	ld   a, a                                        ; $403c: $7f
	adc  [hl]                                        ; $403d: $8e
	nop                                              ; $403e: $00
	ld   a, [bc]                                     ; $403f: $0a

Jump_098_4040:
	rrca                                             ; $4040: $0f
	nop                                              ; $4041: $00
	ld   c, $00                                      ; $4042: $0e $00
	inc  bc                                          ; $4044: $03
	nop                                              ; $4045: $00
	ld   bc, $0700                                   ; $4046: $01 $00 $07
	nop                                              ; $4049: $00
	inc  b                                           ; $404a: $04
	add  a                                           ; $404b: $87
	nop                                              ; $404c: $00
	inc  c                                           ; $404d: $0c
	ld   bc, $0100                                   ; $404e: $01 $00 $01
	nop                                              ; $4051: $00
	add  hl, bc                                      ; $4052: $09
	nop                                              ; $4053: $00
	ld   [$0100], sp                                 ; $4054: $08 $00 $01
	nop                                              ; $4057: $00
	dec  b                                           ; $4058: $05
	nop                                              ; $4059: $00
	dec  b                                           ; $405a: $05
	add  e                                           ; $405b: $83
	nop                                              ; $405c: $00
	ld   [de], a                                     ; $405d: $12
	inc  bc                                          ; $405e: $03
	nop                                              ; $405f: $00
	inc  b                                           ; $4060: $04
	nop                                              ; $4061: $00
	inc  b                                           ; $4062: $04
	nop                                              ; $4063: $00
	rlca                                             ; $4064: $07
	nop                                              ; $4065: $00
	ld   [$0400], sp                                 ; $4066: $08 $00 $04
	nop                                              ; $4069: $00
	stop                                             ; $406a: $10 $00
	jr   jr_098_406e                                 ; $406c: $18 $00

jr_098_406e:
	ld   [bc], a                                     ; $406e: $02
	nop                                              ; $406f: $00
	ld   bc, $0081                                   ; $4070: $01 $81 $00
	ld   [bc], a                                     ; $4073: $02
	inc  de                                          ; $4074: $13
	nop                                              ; $4075: $00
	db   $10                                         ; $4076: $10
	adc  c                                           ; $4077: $89
	nop                                              ; $4078: $00
	ld   c, $80                                      ; $4079: $0e $80
	nop                                              ; $407b: $00
	ld   b, b                                        ; $407c: $40
	nop                                              ; $407d: $00
	ld   b, b                                        ; $407e: $40
	nop                                              ; $407f: $00
	ldh  [rP1], a                                    ; $4080: $e0 $00
	sub  b                                           ; $4082: $90
	nop                                              ; $4083: $00
	add  b                                           ; $4084: $80
	nop                                              ; $4085: $00
	ld   d, b                                        ; $4086: $50
	nop                                              ; $4087: $00
	jr   nz, jr_098_4011                             ; $4088: $20 $87

	nop                                              ; $408a: $00
	add  b                                           ; $408b: $80
	ld   bc, $0080                                   ; $408c: $01 $80 $00
	inc  c                                           ; $408f: $0c
	rlca                                             ; $4090: $07
	nop                                              ; $4091: $00
	dec  c                                           ; $4092: $0d
	nop                                              ; $4093: $00
	rlca                                             ; $4094: $07
	nop                                              ; $4095: $00
	add  hl, bc                                      ; $4096: $09
	nop                                              ; $4097: $00
	rlca                                             ; $4098: $07
	nop                                              ; $4099: $00
	ld   [bc], a                                     ; $409a: $02
	nop                                              ; $409b: $00
	ld   bc, $0093                                   ; $409c: $01 $93 $00
	add  b                                           ; $409f: $80
	ld   b, b                                        ; $40a0: $40
	add  b                                           ; $40a1: $80
	nop                                              ; $40a2: $00
	add  b                                           ; $40a3: $80
	add  b                                           ; $40a4: $80
	add  b                                           ; $40a5: $80
	inc  bc                                          ; $40a6: $03
	ld   c, $12                                      ; $40a7: $0e $12
	ld   [bc], a                                     ; $40a9: $02
	ld   [hl-], a                                    ; $40aa: $32
	ld   [bc], a                                     ; $40ab: $02
	inc  bc                                          ; $40ac: $03
	nop                                              ; $40ad: $00
	ld   hl, $1a00                                   ; $40ae: $21 $00 $1a
	nop                                              ; $40b1: $00
	inc  d                                           ; $40b2: $14
	nop                                              ; $40b3: $00
	rrca                                             ; $40b4: $0f
	nop                                              ; $40b5: $00
	inc  bc                                          ; $40b6: $03
	add  l                                           ; $40b7: $85
	nop                                              ; $40b8: $00
	inc  b                                           ; $40b9: $04
	ld   [$0b00], sp                                 ; $40ba: $08 $00 $0b
	nop                                              ; $40bd: $00
	inc  bc                                          ; $40be: $03

jr_098_40bf:
	add  c                                           ; $40bf: $81
	nop                                              ; $40c0: $00
	ld   b, $c0                                      ; $40c1: $06 $c0
	nop                                              ; $40c3: $00
	or   b                                           ; $40c4: $b0
	nop                                              ; $40c5: $00
	ld   l, a                                        ; $40c6: $6f
	nop                                              ; $40c7: $00
	rra                                              ; $40c8: $1f
	add  [hl]                                        ; $40c9: $86
	nop                                              ; $40ca: $00
	rlca                                             ; $40cb: $07
	ld   [hl], b                                     ; $40cc: $70
	rst  $30                                         ; $40cd: $f7
	nop                                              ; $40ce: $00
	or   a                                           ; $40cf: $b7
	nop                                              ; $40d0: $00
	cpl                                              ; $40d1: $2f
	nop                                              ; $40d2: $00
	inc  e                                           ; $40d3: $1c
	add  e                                           ; $40d4: $83
	nop                                              ; $40d5: $00
	inc  b                                           ; $40d6: $04
	call nz, $f800                                   ; $40d7: $c4 $00 $f8
	nop                                              ; $40da: $00
	ccf                                              ; $40db: $3f
	add  c                                           ; $40dc: $81
	nop                                              ; $40dd: $00
	ld   a, [bc]                                     ; $40de: $0a
	ld   a, [de]                                     ; $40df: $1a
	nop                                              ; $40e0: $00
	jr   jr_098_40e3                                 ; $40e1: $18 $00

jr_098_40e3:
	add  hl, bc                                      ; $40e3: $09
	nop                                              ; $40e4: $00
	ld   a, [bc]                                     ; $40e5: $0a
	nop                                              ; $40e6: $00
	dec  b                                           ; $40e7: $05
	nop                                              ; $40e8: $00
	inc  b                                           ; $40e9: $04
	add  e                                           ; $40ea: $83
	nop                                              ; $40eb: $00
	add  b                                           ; $40ec: $80
	ret  nz                                          ; $40ed: $c0

	add  b                                           ; $40ee: $80
	nop                                              ; $40ef: $00
	ld   b, $f8                                      ; $40f0: $06 $f8
	nop                                              ; $40f2: $00
	inc  h                                           ; $40f3: $24
	nop                                              ; $40f4: $00
	inc  l                                           ; $40f5: $2c
	nop                                              ; $40f6: $00
	ldh  a, [$81]                                    ; $40f7: $f0 $81
	nop                                              ; $40f9: $00
	ld   [bc], a                                     ; $40fa: $02
	add  b                                           ; $40fb: $80
	nop                                              ; $40fc: $00
	ld   b, b                                        ; $40fd: $40
	add  c                                           ; $40fe: $81
	nop                                              ; $40ff: $00
	nop                                              ; $4100: $00
	ret  nz                                          ; $4101: $c0

	add  a                                           ; $4102: $87
	nop                                              ; $4103: $00
	add  b                                           ; $4104: $80
	ld   b, b                                        ; $4105: $40
	add  b                                           ; $4106: $80
	add  b                                           ; $4107: $80
	inc  b                                           ; $4108: $04
	ld   b, e                                        ; $4109: $43
	ld   b, b                                        ; $410a: $40
	rrca                                             ; $410b: $0f
	nop                                              ; $410c: $00
	adc  h                                           ; $410d: $8c
	add  c                                           ; $410e: $81
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	add  b                                           ; $4111: $80
	sub  c                                           ; $4112: $91
	nop                                              ; $4113: $00
	ld   c, $23                                      ; $4114: $0e $23
	jr   nz, jr_098_40bf                             ; $4116: $20 $a7

	jr   nz, @+$72                                   ; $4118: $20 $70

	nop                                              ; $411a: $00
	or   $00                                         ; $411b: $f6 $00
	add  hl, bc                                      ; $411d: $09
	nop                                              ; $411e: $00
	inc  c                                           ; $411f: $0c
	nop                                              ; $4120: $00
	sbc  [hl]                                        ; $4121: $9e
	nop                                              ; $4122: $00
	sbc  b                                           ; $4123: $98
	add  e                                           ; $4124: $83
	nop                                              ; $4125: $00
	ld   b, $04                                      ; $4126: $06 $04
	nop                                              ; $4128: $00
	dec  de                                          ; $4129: $1b
	nop                                              ; $412a: $00
	rst  $28                                         ; $412b: $ef
	nop                                              ; $412c: $00
	pop  af                                          ; $412d: $f1
	add  d                                           ; $412e: $82
	nop                                              ; $412f: $00
	add  b                                           ; $4130: $80
	ld   c, $19                                      ; $4131: $0e $19
	nop                                              ; $4133: $00
	ldh  a, [rP1]                                    ; $4134: $f0 $00
	pop  af                                          ; $4136: $f1
	nop                                              ; $4137: $00
	ld   bc, $0400                                   ; $4138: $01 $00 $04
	nop                                              ; $413b: $00
	dec  b                                           ; $413c: $05
	nop                                              ; $413d: $00
	ld   c, $00                                      ; $413e: $0e $00
	rst  $30                                         ; $4140: $f7
	nop                                              ; $4141: $00
	ld   hl, sp+$00                                  ; $4142: $f8 $00
	ldh  [rP1], a                                    ; $4144: $e0 $00
	ld   h, e                                        ; $4146: $63
	nop                                              ; $4147: $00
	ld   e, $00                                      ; $4148: $1e $00
	ld   bc, $dc00                                   ; $414a: $01 $00 $dc
	add  c                                           ; $414d: $81
	nop                                              ; $414e: $00
	rrca                                             ; $414f: $0f
	stop                                             ; $4150: $10 $00
	sub  b                                           ; $4152: $90
	nop                                              ; $4153: $00
	ld   d, h                                        ; $4154: $54
	nop                                              ; $4155: $00
	inc  l                                           ; $4156: $2c
	nop                                              ; $4157: $00
	pop  bc                                          ; $4158: $c1
	nop                                              ; $4159: $00
	ld   sp, hl                                      ; $415a: $f9
	nop                                              ; $415b: $00
	add  d                                           ; $415c: $82
	ld   [bc], a                                     ; $415d: $02
	dec  b                                           ; $415e: $05
	ld   bc, $0080                                   ; $415f: $01 $80 $00
	ld   [$0042], sp                                 ; $4162: $08 $42 $00
	jr   nz, jr_098_4167                             ; $4165: $20 $00

jr_098_4167:
	dec  b                                           ; $4167: $05
	nop                                              ; $4168: $00
	ld   b, b                                        ; $4169: $40

jr_098_416a:
	nop                                              ; $416a: $00
	ld   [hl+], a                                    ; $416b: $22
	add  c                                           ; $416c: $81
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	ld   bc, $008b                                   ; $416f: $01 $8b $00
	add  b                                           ; $4172: $80
	inc  b                                           ; $4173: $04
	inc  bc                                          ; $4174: $03
	ld   l, $0e                                      ; $4175: $2e $0e
	ld   h, b                                        ; $4177: $60
	nop                                              ; $4178: $00
	add  b                                           ; $4179: $80
	inc  b                                           ; $417a: $04
	dec  b                                           ; $417b: $05
	adc  [hl]                                        ; $417c: $8e
	ld   c, $8e                                      ; $417d: $0e $8e
	ld   c, $4c                                      ; $417f: $0e $4c
	inc  c                                           ; $4181: $0c

Jump_098_4182:
	add  b                                           ; $4182: $80
	nop                                              ; $4183: $00
	add  b                                           ; $4184: $80
	ld   c, $00                                      ; $4185: $0e $00
	adc  [hl]                                        ; $4187: $8e
	add  c                                           ; $4188: $81
	ld   c, $01                                      ; $4189: $0e $01
	ld   c, [hl]                                     ; $418b: $4e
	ld   c, $80                                      ; $418c: $0e $80
	inc  b                                           ; $418e: $04
	ld   b, $40                                      ; $418f: $06 $40
	nop                                              ; $4191: $00
	ld   c, b                                        ; $4192: $48
	nop                                              ; $4193: $00
	adc  h                                           ; $4194: $8c
	nop                                              ; $4195: $00
	ld   b, b                                        ; $4196: $40
	add  c                                           ; $4197: $81
	nop                                              ; $4198: $00
	inc  d                                           ; $4199: $14
	add  e                                           ; $419a: $83
	nop                                              ; $419b: $00
	pop  bc                                          ; $419c: $c1
	nop                                              ; $419d: $00
	add  h                                           ; $419e: $84
	nop                                              ; $419f: $00
	add  h                                           ; $41a0: $84
	nop                                              ; $41a1: $00
	ret  nz                                          ; $41a2: $c0

	nop                                              ; $41a3: $00
	call nc, $cb00                                   ; $41a4: $d4 $00 $cb
	nop                                              ; $41a7: $00
	xor  c                                           ; $41a8: $a9
	nop                                              ; $41a9: $00
	ld   [bc], a                                     ; $41aa: $02
	nop                                              ; $41ab: $00
	ld   b, e                                        ; $41ac: $43
	nop                                              ; $41ad: $00
	ld   de, $0081                                   ; $41ae: $11 $81 $00
	ld   [$00dc], sp                                 ; $41b1: $08 $dc $00
	cp   [hl]                                        ; $41b4: $be
	nop                                              ; $41b5: $00
	ld   a, [hl-]                                    ; $41b6: $3a
	nop                                              ; $41b7: $00
	ld   a, b                                        ; $41b8: $78
	nop                                              ; $41b9: $00
	ret  nz                                          ; $41ba: $c0

	add  c                                           ; $41bb: $81
	nop                                              ; $41bc: $00
	ld   c, $04                                      ; $41bd: $0e $04
	nop                                              ; $41bf: $00
	ld   h, d                                        ; $41c0: $62
	nop                                              ; $41c1: $00
	db   $e4                                         ; $41c2: $e4
	nop                                              ; $41c3: $00
	inc  bc                                          ; $41c4: $03
	nop                                              ; $41c5: $00
	ld   [bc], a                                     ; $41c6: $02
	nop                                              ; $41c7: $00
	ld   c, $00                                      ; $41c8: $0e $00
	cp   l                                           ; $41ca: $bd
	add  b                                           ; $41cb: $80
	jr   nc, @+$01                                   ; $41cc: $30 $ff

	nop                                              ; $41ce: $00
	rst  $38                                         ; $41cf: $ff
	nop                                              ; $41d0: $00
	rst  $38                                         ; $41d1: $ff
	nop                                              ; $41d2: $00
	rst  $38                                         ; $41d3: $ff
	nop                                              ; $41d4: $00
	rst  $38                                         ; $41d5: $ff
	nop                                              ; $41d6: $00
	rst  $38                                         ; $41d7: $ff
	nop                                              ; $41d8: $00
	rst  $38                                         ; $41d9: $ff
	nop                                              ; $41da: $00
	rst  $38                                         ; $41db: $ff
	nop                                              ; $41dc: $00
	rst  $38                                         ; $41dd: $ff
	nop                                              ; $41de: $00
	rst  $38                                         ; $41df: $ff
	nop                                              ; $41e0: $00
	rst  $38                                         ; $41e1: $ff
	nop                                              ; $41e2: $00
	sub  d                                           ; $41e3: $92
	nop                                              ; $41e4: $00
	ld   [$b078], sp                                 ; $41e5: $08 $78 $b0
	jr   c, jr_098_416a                              ; $41e8: $38 $80

	or   b                                           ; $41ea: $b0
	add  b                                           ; $41eb: $80
	ret  nz                                          ; $41ec: $c0

	nop                                              ; $41ed: $00
	add  b                                           ; $41ee: $80
	adc  a                                           ; $41ef: $8f
	nop                                              ; $41f0: $00
	ld   [bc], a                                     ; $41f1: $02
	inc  bc                                          ; $41f2: $03
	nop                                              ; $41f3: $00
	inc  b                                           ; $41f4: $04
	add  c                                           ; $41f5: $81
	inc  bc                                          ; $41f6: $03
	ld   [de], a                                     ; $41f7: $12
	inc  e                                           ; $41f8: $1c
	rlca                                             ; $41f9: $07
	ld   a, d                                        ; $41fa: $7a
	ld   a, [de]                                     ; $41fb: $1a
	adc  h                                           ; $41fc: $8c
	ld   a, h                                        ; $41fd: $7c
	ld   h, b                                        ; $41fe: $60
	ld   l, c                                        ; $41ff: $69
	ld   e, c                                        ; $4200: $59
	ld   bc, $b0a0                                   ; $4201: $01 $a0 $b0
	ld   sp, hl                                      ; $4204: $f9
	jp   z, $6aea                                    ; $4205: $ca $ea $6a

	add  $44                                         ; $4208: $c6 $44
	nop                                              ; $420a: $00
	add  b                                           ; $420b: $80
	ld   a, [hl-]                                    ; $420c: $3a
	inc  bc                                          ; $420d: $03
	ld   [bc], a                                     ; $420e: $02
	ld   b, d                                        ; $420f: $42
	ld   e, e                                        ; $4210: $5b
	dec  de                                          ; $4211: $1b
	add  b                                           ; $4212: $80
	ld   bc, $2405                                   ; $4213: $01 $05 $24
	dec  h                                           ; $4216: $25
	dec  c                                           ; $4217: $0d
	inc  l                                           ; $4218: $2c
	jr   nz, @+$04                                   ; $4219: $20 $02

	add  b                                           ; $421b: $80
	xor  $80                                         ; $421c: $ee $80
	or   $01                                         ; $421e: $f6 $01
	ld   a, [$80f8]                                  ; $4220: $fa $f8 $80
	ld   a, c                                        ; $4223: $79
	dec  bc                                          ; $4224: $0b
	add  b                                           ; $4225: $80
	ldh  a, [$72]                                    ; $4226: $f0 $72
	ldh  [c], a                                      ; $4228: $e2
	push hl                                          ; $4229: $e5
	dec  b                                           ; $422a: $05
	inc  d                                           ; $422b: $14
	dec  b                                           ; $422c: $05
	ret  z                                           ; $422d: $c8

	ld   hl, sp-$3c                                  ; $422e: $f8 $c4
	push hl                                          ; $4230: $e5
	add  b                                           ; $4231: $80
	and  $09                                         ; $4232: $e6 $09
	ld   a, [de]                                     ; $4234: $1a
	ld   a, [hl-]                                    ; $4235: $3a
	ld   e, l                                        ; $4236: $5d
	ld   l, l                                        ; $4237: $6d
	ld   b, e                                        ; $4238: $43
	ld   d, e                                        ; $4239: $53
	rrca                                             ; $423a: $0f
	rlca                                             ; $423b: $07
	or   [hl]                                        ; $423c: $b6
	ld   b, c                                        ; $423d: $41
	add  e                                           ; $423e: $83
	nop                                              ; $423f: $00
	nop                                              ; $4240: $00
	add  b                                           ; $4241: $80

Call_098_4242:
Jump_098_4242:
	add  c                                           ; $4242: $81
	nop                                              ; $4243: $00
	ld   [bc], a                                     ; $4244: $02
	ld   b, b                                        ; $4245: $40
	add  b                                           ; $4246: $80
	and  b                                           ; $4247: $a0
	add  b                                           ; $4248: $80
	ret  nz                                          ; $4249: $c0

	rlca                                             ; $424a: $07
	add  b                                           ; $424b: $80
	ld   h, h                                        ; $424c: $64
	nop                                              ; $424d: $00
	rlca                                             ; $424e: $07
	ld   bc, $0003                                   ; $424f: $01 $03 $00
	ld   bc, $0087                                   ; $4252: $01 $87 $00
	ld   [$54ef], sp                                 ; $4255: $08 $ef $54
	ld   b, h                                        ; $4258: $44
	add  l                                           ; $4259: $85
	or   l                                           ; $425a: $b5
	inc  b                                           ; $425b: $04
	call nz, $1707                                   ; $425c: $c4 $07 $17
	add  b                                           ; $425f: $80
	ld   a, [bc]                                     ; $4260: $0a
	ld   bc, $2d0d                                   ; $4261: $01 $0d $2d
	add  b                                           ; $4264: $80
	inc  e                                           ; $4265: $1c
	add  hl, bc                                      ; $4266: $09
	dec  de                                          ; $4267: $1b
	sbc  $05                                         ; $4268: $de $05
	ld   [de], a                                     ; $426a: $12
	jp   nc, $0bcb                                   ; $426b: $d2 $cb $0b

	dec  b                                           ; $426e: $05
	db   $fd                                         ; $426f: $fd
	ld   hl, sp-$80                                  ; $4270: $f8 $80
	call c, $f005                                    ; $4272: $dc $05 $f0
	push af                                          ; $4275: $f5
	dec  b                                           ; $4276: $05
	or   l                                           ; $4277: $b5
	or   c                                           ; $4278: $b1
	add  h                                           ; $4279: $84
	add  c                                           ; $427a: $81
	or   $05                                         ; $427b: $f6 $05
	ld   a, [hl]                                     ; $427d: $7e
	ld   l, e                                        ; $427e: $6b
	db   $eb                                         ; $427f: $eb
	xor  e                                           ; $4280: $ab
	rst  $38                                         ; $4281: $ff
	db   $dd                                         ; $4282: $dd
	add  b                                           ; $4283: $80
	db   $ed                                         ; $4284: $ed
	ld   bc, $7677                                   ; $4285: $01 $77 $76
	add  b                                           ; $4288: $80
	and  e                                           ; $4289: $a3
	ld   [de], a                                     ; $428a: $12
	ld   [$5b57], sp                                 ; $428b: $08 $57 $5b
	sub  b                                           ; $428e: $90
	sub  h                                           ; $428f: $94
	ld   b, e                                        ; $4290: $43
	ld   h, c                                        ; $4291: $61
	dec  l                                           ; $4292: $2d
	ld   l, l                                        ; $4293: $6d
	push hl                                          ; $4294: $e5
	sub  [hl]                                        ; $4295: $96
	add  h                                           ; $4296: $84
	call $2740                                       ; $4297: $cd $40 $27
	nop                                              ; $429a: $00
	jr   nc, jr_098_42fd                             ; $429b: $30 $60

	ld   l, b                                        ; $429d: $68
	add  c                                           ; $429e: $81
	ldh  a, [rTMA]                                   ; $429f: $f0 $06
	ld   hl, sp-$60                                  ; $42a1: $f8 $a0
	or   b                                           ; $42a3: $b0
	ret  nz                                          ; $42a4: $c0

	ldh  [rP1], a                                    ; $42a5: $e0 $00
	ret  nz                                          ; $42a7: $c0

	add  c                                           ; $42a8: $81
	nop                                              ; $42a9: $00
	nop                                              ; $42aa: $00
	ccf                                              ; $42ab: $3f
	add  c                                           ; $42ac: $81
	rla                                              ; $42ad: $17
	inc  bc                                          ; $42ae: $03
	scf                                              ; $42af: $37
	rrca                                             ; $42b0: $0f
	rst  $28                                         ; $42b1: $ef
	nop                                              ; $42b2: $00
	add  b                                           ; $42b3: $80
	rst  $38                                         ; $42b4: $ff
	add  b                                           ; $42b5: $80
	nop                                              ; $42b6: $00
	add  b                                           ; $42b7: $80
	rst  $38                                         ; $42b8: $ff
	add  b                                           ; $42b9: $80
	nop                                              ; $42ba: $00
	ld   [bc], a                                     ; $42bb: $02
	ld   [hl], $b2                                   ; $42bc: $36 $b2

Jump_098_42be:
	sbc  a                                           ; $42be: $9f
	add  c                                           ; $42bf: $81
	reti                                             ; $42c0: $d9


	ld   bc, $00c7                                   ; $42c1: $01 $c7 $00
	add  b                                           ; $42c4: $80
	ld   hl, sp+$01                                  ; $42c5: $f8 $01
	rlca                                             ; $42c7: $07
	nop                                              ; $42c8: $00
	add  b                                           ; $42c9: $80
	db   $fc                                         ; $42ca: $fc
	dec  b                                           ; $42cb: $05
	inc  bc                                          ; $42cc: $03
	nop                                              ; $42cd: $00
	sbc  l                                           ; $42ce: $9d
	sbc  h                                           ; $42cf: $9c
	dec  e                                           ; $42d0: $1d
	inc  e                                           ; $42d1: $1c
	add  b                                           ; $42d2: $80
	ld   c, h                                        ; $42d3: $4c
	db   $10                                         ; $42d4: $10
	and  e                                           ; $42d5: $a3
	and  b                                           ; $42d6: $a0
	push de                                          ; $42d7: $d5
	ld   d, e                                        ; $42d8: $53
	ld   l, a                                        ; $42d9: $6f
	ld   l, b                                        ; $42da: $68
	di                                               ; $42db: $f3
	or   b                                           ; $42dc: $b0
	cp   [hl]                                        ; $42dd: $be
	ld   e, $60                                      ; $42de: $1e $60
	nop                                              ; $42e0: $00
	inc  a                                           ; $42e1: $3c
	inc  l                                           ; $42e2: $2c
	ld   c, d                                        ; $42e3: $4a
	ld   e, d                                        ; $42e4: $5a
	ld   h, [hl]                                     ; $42e5: $66
	add  b                                           ; $42e6: $80
	ld   h, $00                                      ; $42e7: $26 $00
	ld   h, [hl]                                     ; $42e9: $66
	add  b                                           ; $42ea: $80
	ld   e, d                                        ; $42eb: $5a
	add  b                                           ; $42ec: $80
	inc  a                                           ; $42ed: $3c
	add  d                                           ; $42ee: $82
	nop                                              ; $42ef: $00
	add  b                                           ; $42f0: $80
	rst  $38                                         ; $42f1: $ff
	add  b                                           ; $42f2: $80
	nop                                              ; $42f3: $00
	inc  bc                                          ; $42f4: $03
	ld   a, [$fa02]                                  ; $42f5: $fa $02 $fa
	ld   [bc], a                                     ; $42f8: $02
	add  b                                           ; $42f9: $80
	cp   $80                                         ; $42fa: $fe $80
	nop                                              ; $42fc: $00

jr_098_42fd:
	ld   [bc], a                                     ; $42fd: $02
	rst  $38                                         ; $42fe: $ff
	nop                                              ; $42ff: $00
	xor  d                                           ; $4300: $aa
	add  a                                           ; $4301: $87
	ld   b, h                                        ; $4302: $44
	ld   bc, $4454                                   ; $4303: $01 $54 $44
	add  b                                           ; $4306: $80
	ld   e, h                                        ; $4307: $5c
	add  b                                           ; $4308: $80
	ld   b, b                                        ; $4309: $40
	nop                                              ; $430a: $00
	ld   d, [hl]                                     ; $430b: $56
	adc  l                                           ; $430c: $8d
	ld   d, b                                        ; $430d: $50
	db   $10                                         ; $430e: $10
	rlca                                             ; $430f: $07
	ld   a, a                                        ; $4310: $7f
	ld   [hl], a                                     ; $4311: $77
	halt                                             ; $4312: $76
	ld   l, [hl]                                     ; $4313: $6e
	ld   l, a                                        ; $4314: $6f
	ld   a, a                                        ; $4315: $7f
	cp   h                                           ; $4316: $bc

jr_098_4317:
	ld   a, h                                        ; $4317: $7c
	jp   nz, $3803                                   ; $4318: $c2 $03 $38

	ld   a, [hl-]                                    ; $431b: $3a
	ld   a, b                                        ; $431c: $78
	ld   [hl], b                                     ; $431d: $70
	or   b                                           ; $431e: $b0
	ld   b, h                                        ; $431f: $44
	add  e                                           ; $4320: $83
	nop                                              ; $4321: $00
	ld   bc, $00ff                                   ; $4322: $01 $ff $00
	add  b                                           ; $4325: $80
	rst  $38                                         ; $4326: $ff
	add  hl, bc                                      ; $4327: $09
	ret  nz                                          ; $4328: $c0

	nop                                              ; $4329: $00
	rst  $38                                         ; $432a: $ff
	inc  bc                                          ; $432b: $03
	rst  $38                                         ; $432c: $ff
	ret  nz                                          ; $432d: $c0

	db   $fc                                         ; $432e: $fc
	nop                                              ; $432f: $00
	rst  $38                                         ; $4330: $ff
	nop                                              ; $4331: $00
	add  b                                           ; $4332: $80
	ld   a, a                                        ; $4333: $7f
	add  b                                           ; $4334: $80
	ld   b, b                                        ; $4335: $40
	inc  bc                                          ; $4336: $03
	ld   e, a                                        ; $4337: $5f
	ld   b, b                                        ; $4338: $40
	rra                                              ; $4339: $1f
	nop                                              ; $433a: $00
	add  b                                           ; $433b: $80
	rst  $38                                         ; $433c: $ff
	inc  bc                                          ; $433d: $03
	ldh  [rP1], a                                    ; $433e: $e0 $00
	ldh  [rP1], a                                    ; $4340: $e0 $00
	add  b                                           ; $4342: $80
	rst  $38                                         ; $4343: $ff
	add  b                                           ; $4344: $80
	nop                                              ; $4345: $00
	add  b                                           ; $4346: $80
	rst  $38                                         ; $4347: $ff
	add  b                                           ; $4348: $80
	nop                                              ; $4349: $00
	nop                                              ; $434a: $00
	rst  $38                                         ; $434b: $ff
	add  e                                           ; $434c: $83
	nop                                              ; $434d: $00
	ld   bc, $00ff                                   ; $434e: $01 $ff $00
	add  b                                           ; $4351: $80
	rst  $38                                         ; $4352: $ff
	add  b                                           ; $4353: $80
	nop                                              ; $4354: $00
	add  b                                           ; $4355: $80
	rst  $38                                         ; $4356: $ff
	add  b                                           ; $4357: $80
	nop                                              ; $4358: $00
	rlca                                             ; $4359: $07
	adc  $11                                         ; $435a: $ce $11
	ld   e, a                                        ; $435c: $5f
	inc  a                                           ; $435d: $3c
	cp   a                                           ; $435e: $bf
	ld   h, b                                        ; $435f: $60
	ld   h, e                                        ; $4360: $63
	nop                                              ; $4361: $00
	add  b                                           ; $4362: $80
	rst  $38                                         ; $4363: $ff
	add  b                                           ; $4364: $80
	nop                                              ; $4365: $00
	add  b                                           ; $4366: $80
	rst  $38                                         ; $4367: $ff
	add  c                                           ; $4368: $81
	nop                                              ; $4369: $00
	add  b                                           ; $436a: $80
	rst  $38                                         ; $436b: $ff
	inc  b                                           ; $436c: $04
	rra                                              ; $436d: $1f
	rst  $38                                         ; $436e: $ff
	rrca                                             ; $436f: $0f
	rst  $28                                         ; $4370: $ef
	nop                                              ; $4371: $00
	add  b                                           ; $4372: $80
	rst  $38                                         ; $4373: $ff
	add  b                                           ; $4374: $80
	nop                                              ; $4375: $00
	add  b                                           ; $4376: $80
	rst  $38                                         ; $4377: $ff
	add  b                                           ; $4378: $80
	nop                                              ; $4379: $00
	nop                                              ; $437a: $00
	ld   c, $80                                      ; $437b: $0e $80
	ld   [$e004], a                                  ; $437d: $ea $04 $e0
	adc  $e0                                         ; $4380: $ce $e0
	ret  nz                                          ; $4382: $c0

	nop                                              ; $4383: $00
	add  b                                           ; $4384: $80
	rst  $38                                         ; $4385: $ff
	add  b                                           ; $4386: $80
	nop                                              ; $4387: $00
	inc  bc                                          ; $4388: $03
	ld   e, a                                        ; $4389: $5f
	ld   b, b                                        ; $438a: $40
	ld   e, a                                        ; $438b: $5f
	ld   b, b                                        ; $438c: $40
	add  b                                           ; $438d: $80
	ld   a, a                                        ; $438e: $7f
	add  b                                           ; $438f: $80
	nop                                              ; $4390: $00
	ld   [bc], a                                     ; $4391: $02
	ret  nz                                          ; $4392: $c0

jr_098_4393:
	rlca                                             ; $4393: $07
	jr   c, jr_098_4317                              ; $4394: $38 $81

	nop                                              ; $4396: $00
	dec  b                                           ; $4397: $05
	inc  bc                                          ; $4398: $03
	nop                                              ; $4399: $00
	inc  b                                           ; $439a: $04
	inc  bc                                          ; $439b: $03
	inc  c                                           ; $439c: $0c
	nop                                              ; $439d: $00
	add  b                                           ; $439e: $80
	rlca                                             ; $439f: $07
	nop                                              ; $43a0: $00
	rla                                              ; $43a1: $17
	add  c                                           ; $43a2: $81
	rrca                                             ; $43a3: $0f
	inc  b                                           ; $43a4: $04
	ld   de, $0200                                   ; $43a5: $11 $00 $02
	nop                                              ; $43a8: $00
	db   $fc                                         ; $43a9: $fc
	add  b                                           ; $43aa: $80
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	db   $fd                                         ; $43ad: $fd
	add  b                                           ; $43ae: $80
	ld   bc, $8501                                   ; $43af: $01 $01 $85
	add  e                                           ; $43b2: $83
	add  d                                           ; $43b3: $82
	ei                                               ; $43b4: $fb
	nop                                              ; $43b5: $00
	ld   sp, hl                                      ; $43b6: $f9
	add  b                                           ; $43b7: $80
	sub  b                                           ; $43b8: $90
	inc  bc                                          ; $43b9: $03
	ld   [hl], b                                     ; $43ba: $70
	ld   h, d                                        ; $43bb: $62
	rst  $20                                         ; $43bc: $e7
	rst  $10                                         ; $43bd: $d7
	add  b                                           ; $43be: $80
	db   $db                                         ; $43bf: $db
	ld   [bc], a                                     ; $43c0: $02
	call c, $8f8c                                    ; $43c1: $dc $8c $8f
	add  b                                           ; $43c4: $80
	sub  e                                           ; $43c5: $93
	add  b                                           ; $43c6: $80
	cp   h                                           ; $43c7: $bc
	inc  b                                           ; $43c8: $04
	rst  JumpTable                                         ; $43c9: $df
	inc  bc                                          ; $43ca: $03
	ld   [bc], a                                     ; $43cb: $02
	add  l                                           ; $43cc: $85
	and  h                                           ; $43cd: $a4
	add  b                                           ; $43ce: $80
	db   $f4                                         ; $43cf: $f4
	add  b                                           ; $43d0: $80
	db   $eb                                         ; $43d1: $eb
	add  b                                           ; $43d2: $80
	dec  de                                          ; $43d3: $1b
	add  b                                           ; $43d4: $80
	rst  $20                                         ; $43d5: $e7
	inc  bc                                          ; $43d6: $03
	sbc  a                                           ; $43d7: $9f
	ld   a, a                                        ; $43d8: $7f
	rra                                              ; $43d9: $1f
	pop  de                                          ; $43da: $d1
	add  b                                           ; $43db: $80
	ld   [$e009], a                                  ; $43dc: $ea $09 $e0
	ld   h, b                                        ; $43df: $60
	ldh  [rAUD4LEN], a                               ; $43e0: $e0 $20
	ld   h, d                                        ; $43e2: $62
	inc  l                                           ; $43e3: $2c
	and  b                                           ; $43e4: $a0
	xor  [hl]                                        ; $43e5: $ae
	and  b                                           ; $43e6: $a0
	add  b                                           ; $43e7: $80
	add  c                                           ; $43e8: $81
	ret  nz                                          ; $43e9: $c0

	nop                                              ; $43ea: $00
	ld   c, $80                                      ; $43eb: $0e $80
	inc  bc                                          ; $43ed: $03
	add  b                                           ; $43ee: $80
	inc  e                                           ; $43ef: $1c
	add  d                                           ; $43f0: $82
	rra                                              ; $43f1: $1f
	add  b                                           ; $43f2: $80
	rlca                                             ; $43f3: $07
	ld   [bc], a                                     ; $43f4: $02
	dec  de                                          ; $43f5: $1b
	ld   e, e                                        ; $43f6: $5b
	inc  a                                           ; $43f7: $3c
	add  b                                           ; $43f8: $80
	dec  a                                           ; $43f9: $3d
	nop                                              ; $43fa: $00
	sub  [hl]                                        ; $43fb: $96
	add  d                                           ; $43fc: $82
	and  d                                           ; $43fd: $a2
	add  d                                           ; $43fe: $82
	ld   [hl+], a                                    ; $43ff: $22
	rlca                                             ; $4400: $07
	and  d                                           ; $4401: $a2
	xor  d                                           ; $4402: $aa
	ld   [hl+], a                                    ; $4403: $22
	cp   d                                           ; $4404: $ba
	ld   a, [hl-]                                    ; $4405: $3a
	add  d                                           ; $4406: $82
	ld   [bc], a                                     ; $4407: $02
	ld   d, a                                        ; $4408: $57
	adc  h                                           ; $4409: $8c
	ld   d, b                                        ; $440a: $50
	dec  b                                           ; $440b: $05
	ld   d, c                                        ; $440c: $51
	and  $0f                                         ; $440d: $e6 $0f
	ld   c, $01                                      ; $440f: $0e $01
	jr   jr_098_4393                                 ; $4411: $18 $80

	ld   [bc], a                                     ; $4413: $02
	ld   bc, $0b03                                   ; $4414: $01 $03 $0b
	add  b                                           ; $4417: $80
	ld   b, $06                                      ; $4418: $06 $06
	rlca                                             ; $441a: $07
	rra                                              ; $441b: $1f
	rlca                                             ; $441c: $07
	or   a                                           ; $441d: $b7
	ld   b, a                                        ; $441e: $47
	rst  $28                                         ; $441f: $ef
	rst  $30                                         ; $4420: $f7
	add  b                                           ; $4421: $80
	or   $08                                         ; $4422: $f6 $08
	ld   b, $04                                      ; $4424: $06 $04
	or   l                                           ; $4426: $b5
	or   a                                           ; $4427: $b7
	ld   d, a                                        ; $4428: $57
	call nc, $c2c4                                   ; $4429: $d4 $c4 $c2
	ldh  [c], a                                      ; $442c: $e2
	add  c                                           ; $442d: $81
	and  $00                                         ; $442e: $e6 $00
	add  $81                                         ; $4430: $c6 $81
	cp   a                                           ; $4432: $bf
	ld   [$1f5f], sp                                 ; $4433: $08 $5f $1f
	rst  JumpTable                                         ; $4436: $df
	sbc  e                                           ; $4437: $9b
	db   $e3                                         ; $4438: $e3
	rst  $20                                         ; $4439: $e7
	ld   hl, sp+$38                                  ; $443a: $f8 $38

jr_098_443c:
	ccf                                              ; $443c: $3f
	add  b                                           ; $443d: $80
	rrca                                             ; $443e: $0f
	add  b                                           ; $443f: $80
	ret  nz                                          ; $4440: $c0

	add  d                                           ; $4441: $82
	rst  $38                                         ; $4442: $ff
	add  b                                           ; $4443: $80
	db   $fd                                         ; $4444: $fd
	add  b                                           ; $4445: $80
	rst  JumpTable                                         ; $4446: $df
	inc  bc                                          ; $4447: $03
	rst  $38                                         ; $4448: $ff
	ccf                                              ; $4449: $3f
	jr   nc, jr_098_443c                             ; $444a: $30 $f0

	add  b                                           ; $444c: $80
	xor  $01                                         ; $444d: $ee $01
	ld   c, $00                                      ; $444f: $0e $00
	add  b                                           ; $4451: $80
	ldh  [$03], a                                    ; $4452: $e0 $03
	ld   [$a0e4], a                                  ; $4454: $ea $e4 $a0
	and  c                                           ; $4457: $a1
	add  b                                           ; $4458: $80
	ld   [$4603], a                                  ; $4459: $ea $03 $46
	ld   h, a                                        ; $445c: $67
	ld   h, $2e                                      ; $445d: $26 $2e
	add  b                                           ; $445f: $80
	cpl                                              ; $4460: $2f
	add  hl, bc                                      ; $4461: $09
	xor  a                                           ; $4462: $af
	add  [hl]                                        ; $4463: $86
	ld   a, c                                        ; $4464: $79
	ld   a, b                                        ; $4465: $78
	add  hl, de                                      ; $4466: $19
	sbc  a                                           ; $4467: $9f
	ld   h, [hl]                                     ; $4468: $66
	ld   h, h                                        ; $4469: $64
	ld   h, [hl]                                     ; $446a: $66
	ld   l, [hl]                                     ; $446b: $6e
	add  b                                           ; $446c: $80
	ld   c, a                                        ; $446d: $4f
	rlca                                             ; $446e: $07
	ld   l, a                                        ; $446f: $6f
	ld   h, e                                        ; $4470: $63
	ld   [hl], b                                     ; $4471: $70
	or   a                                           ; $4472: $b7
	or   b                                           ; $4473: $b0
	sbc  l                                           ; $4474: $9d
	ld   a, [bc]                                     ; $4475: $0a
	ld   c, d                                        ; $4476: $4a
	add  h                                           ; $4477: $84
	adc  d                                           ; $4478: $8a
	add  c                                           ; $4479: $81
	ld   a, [bc]                                     ; $447a: $0a
	inc  b                                           ; $447b: $04
	ld   c, d                                        ; $447c: $4a
	ld   a, [bc]                                     ; $447d: $0a
	adc  d                                           ; $447e: $8a
	ld   a, [bc]                                     ; $447f: $0a
	or   [hl]                                        ; $4480: $b6
	add  c                                           ; $4481: $81
	ld   d, b                                        ; $4482: $50
	nop                                              ; $4483: $00
	ld   d, c                                        ; $4484: $51
	adc  c                                           ; $4485: $89
	ld   d, b                                        ; $4486: $50
	db   $10                                         ; $4487: $10
	sub  a                                           ; $4488: $97
	adc  a                                           ; $4489: $8f
	ld   e, a                                        ; $448a: $5f
	ld   c, a                                        ; $448b: $4f
	rra                                              ; $448c: $1f
	inc  bc                                          ; $448d: $03
	or   e                                           ; $448e: $b3
	inc  l                                           ; $448f: $2c
	ld   c, h                                        ; $4490: $4c
	rrca                                             ; $4491: $0f
	cpl                                              ; $4492: $2f
	rlca                                             ; $4493: $07
	rrca                                             ; $4494: $0f
	ld   [$0510], sp                                 ; $4495: $08 $10 $05
	dec  d                                           ; $4498: $15
	add  c                                           ; $4499: $81
	rst  $20                                         ; $449a: $e7
	inc  e                                           ; $449b: $1c
	rst  ToBoot                                         ; $449c: $c7
	call nz, $2224                                   ; $449d: $c4 $24 $22
	ld   d, d                                        ; $44a0: $52
	add  $a6                                         ; $44a1: $c6 $a6
	add  a                                           ; $44a3: $87
	add  $04                                         ; $44a4: $c6 $04
	ld   b, h                                        ; $44a6: $44
	ld   b, $37                                      ; $44a7: $06 $37
	ld   [hl], b                                     ; $44a9: $70
	ldh  a, [$1f]                                    ; $44aa: $f0 $1f
	rst  $38                                         ; $44ac: $ff
	add  b                                           ; $44ad: $80
	rst  $28                                         ; $44ae: $ef
	add  b                                           ; $44af: $80
	rst  $38                                         ; $44b0: $ff
	ld   [hl], a                                     ; $44b1: $77
	rlca                                             ; $44b2: $07
	nop                                              ; $44b3: $00
	ld   [hl], b                                     ; $44b4: $70
	nop                                              ; $44b5: $00
	ld   a, b                                        ; $44b6: $78
	adc  a                                           ; $44b7: $8f
	add  a                                           ; $44b8: $87
	add  b                                           ; $44b9: $80
	ld   c, $80                                      ; $44ba: $0e $80
	ldh  a, [$03]                                    ; $44bc: $f0 $03
	ld   bc, $1fe1                                   ; $44be: $01 $e1 $1f
	rst  $38                                         ; $44c1: $ff
	add  b                                           ; $44c2: $80
	db   $fc                                         ; $44c3: $fc
	add  b                                           ; $44c4: $80
	ld   bc, $0f80                                   ; $44c5: $01 $80 $0f
	ld   bc, $d0f8                                   ; $44c8: $01 $f8 $d0
	add  b                                           ; $44cb: $80
	ld   l, a                                        ; $44cc: $6f
	add  b                                           ; $44cd: $80
	db   $eb                                         ; $44ce: $eb
	db   $10                                         ; $44cf: $10
	rst  $28                                         ; $44d0: $ef
	rst  $20                                         ; $44d1: $e7
	and  a                                           ; $44d2: $a7
	add  a                                           ; $44d3: $87
	ld   d, e                                        ; $44d4: $53
	ld   d, a                                        ; $44d5: $57
	sbc  l                                           ; $44d6: $9d
	sbc  e                                           ; $44d7: $9b
	ld   a, [hl-]                                    ; $44d8: $3a
	cp   c                                           ; $44d9: $b9
	cp   a                                           ; $44da: $bf
	ld   a, l                                        ; $44db: $7d
	cp   b                                           ; $44dc: $b8
	jp   c, $eddc                                    ; $44dd: $da $dc $ed

	xor  $80                                         ; $44e0: $ee $80
	or   $08                                         ; $44e2: $f6 $08
	ldh  a, [c]                                      ; $44e4: $f2
	ldh  a, [$fc]                                    ; $44e5: $f0 $fc
	ld   hl, sp-$06                                  ; $44e7: $f8 $fa
	ld   hl, sp-$03                                  ; $44e9: $f8 $fd
	ld   [hl], b                                     ; $44eb: $70
	sbc  l                                           ; $44ec: $9d
	add  e                                           ; $44ed: $83
	ld   a, [bc]                                     ; $44ee: $0a
	nop                                              ; $44ef: $00
	adc  d                                           ; $44f0: $8a
	add  a                                           ; $44f1: $87
	ld   a, [bc]                                     ; $44f2: $0a
	nop                                              ; $44f3: $00
	ld   [hl], $81                                   ; $44f4: $36 $81
	ld   d, b                                        ; $44f6: $50
	nop                                              ; $44f7: $00
	ld   d, c                                        ; $44f8: $51
	adc  c                                           ; $44f9: $89
	ld   d, b                                        ; $44fa: $50
	db   $10                                         ; $44fb: $10
	sub  a                                           ; $44fc: $97
	adc  a                                           ; $44fd: $8f
	ld   e, a                                        ; $44fe: $5f
	ld   c, a                                        ; $44ff: $4f
	rra                                              ; $4500: $1f
	inc  bc                                          ; $4501: $03
	or   e                                           ; $4502: $b3
	inc  l                                           ; $4503: $2c
	ld   c, h                                        ; $4504: $4c
	rrca                                             ; $4505: $0f
	cpl                                              ; $4506: $2f
	rlca                                             ; $4507: $07
	rrca                                             ; $4508: $0f
	ld   [$0510], sp                                 ; $4509: $08 $10 $05
	sub  l                                           ; $450c: $95
	add  c                                           ; $450d: $81
	rst  $20                                         ; $450e: $e7
	inc  e                                           ; $450f: $1c
	ld   b, a                                        ; $4510: $47
	call nz, $2224                                   ; $4511: $c4 $24 $22
	ld   d, d                                        ; $4514: $52
	add  $a6                                         ; $4515: $c6 $a6
	add  a                                           ; $4517: $87
	add  $04                                         ; $4518: $c6 $04
	ld   b, h                                        ; $451a: $44
	ld   b, $37                                      ; $451b: $06 $37
	ld   [hl], b                                     ; $451d: $70
	ldh  a, [$1f]                                    ; $451e: $f0 $1f
	rst  $38                                         ; $4520: $ff
	add  b                                           ; $4521: $80
	rst  $28                                         ; $4522: $ef
	add  b                                           ; $4523: $80
	rst  $38                                         ; $4524: $ff
	ld   [hl], a                                     ; $4525: $77
	rlca                                             ; $4526: $07
	nop                                              ; $4527: $00
	ld   [hl], b                                     ; $4528: $70
	nop                                              ; $4529: $00
	ld   a, b                                        ; $452a: $78
	adc  a                                           ; $452b: $8f
	add  a                                           ; $452c: $87
	add  b                                           ; $452d: $80
	ld   c, $80                                      ; $452e: $0e $80
	ldh  a, [$03]                                    ; $4530: $f0 $03
	ld   bc, $1fe1                                   ; $4532: $01 $e1 $1f
	rst  $38                                         ; $4535: $ff
	add  b                                           ; $4536: $80
	db   $fc                                         ; $4537: $fc
	add  b                                           ; $4538: $80
	ld   bc, $0f80                                   ; $4539: $01 $80 $0f
	ld   bc, $d0f8                                   ; $453c: $01 $f8 $d0
	add  b                                           ; $453f: $80
	ld   l, a                                        ; $4540: $6f
	add  b                                           ; $4541: $80
	db   $eb                                         ; $4542: $eb
	db   $10                                         ; $4543: $10
	rst  $28                                         ; $4544: $ef
	rst  $20                                         ; $4545: $e7
	and  a                                           ; $4546: $a7
	add  a                                           ; $4547: $87
	ld   d, e                                        ; $4548: $53
	ld   d, a                                        ; $4549: $57
	sbc  l                                           ; $454a: $9d
	sbc  e                                           ; $454b: $9b
	ld   a, [hl-]                                    ; $454c: $3a
	cp   c                                           ; $454d: $b9
	cp   a                                           ; $454e: $bf
	ld   a, l                                        ; $454f: $7d
	cp   b                                           ; $4550: $b8
	jp   c, $eddc                                    ; $4551: $da $dc $ed

	xor  $80                                         ; $4554: $ee $80
	or   $08                                         ; $4556: $f6 $08
	ldh  a, [c]                                      ; $4558: $f2
	ldh  a, [$fc]                                    ; $4559: $f0 $fc
	ld   hl, sp-$06                                  ; $455b: $f8 $fa
	ld   hl, sp-$03                                  ; $455d: $f8 $fd
	ld   [hl], b                                     ; $455f: $70
	sbc  l                                           ; $4560: $9d
	add  e                                           ; $4561: $83
	ld   a, [bc]                                     ; $4562: $0a
	nop                                              ; $4563: $00

jr_098_4564:
	adc  d                                           ; $4564: $8a
	add  a                                           ; $4565: $87
	ld   a, [bc]                                     ; $4566: $0a
	inc  bc                                          ; $4567: $03
	add  b                                           ; $4568: $80
	ld   [$020a], sp                                 ; $4569: $08 $0a $02
	add  b                                           ; $456c: $80
	ld   [$1004], sp                                 ; $456d: $08 $04 $10
	ld   bc, $000d                                   ; $4570: $01 $0d $00
	inc  bc                                          ; $4573: $03
	add  e                                           ; $4574: $83
	nop                                              ; $4575: $00
	inc  bc                                          ; $4576: $03
	and  $42                                         ; $4577: $e6 $42
	jp   $8083                                       ; $4579: $c3 $83 $80


	ld   b, e                                        ; $457c: $43
	ld   a, [bc]                                     ; $457d: $0a
	ld   [hl], a                                     ; $457e: $77
	ld   h, c                                        ; $457f: $61
	add  hl, sp                                      ; $4580: $39
	ld   sp, $58df                                   ; $4581: $31 $df $58
	ld   l, [hl]                                     ; $4584: $6e
	inc  l                                           ; $4585: $2c
	ld   l, $0e                                      ; $4586: $2e $0e
	ld   h, b                                        ; $4588: $60
	add  b                                           ; $4589: $80
	ld   [hl], b                                     ; $458a: $70
	inc  b                                           ; $458b: $04
	ccf                                              ; $458c: $3f
	ld   a, a                                        ; $458d: $7f
	dec  sp                                          ; $458e: $3b
	cp   e                                           ; $458f: $bb
	cp   a                                           ; $4590: $bf
	add  d                                           ; $4591: $82
	rst  $38                                         ; $4592: $ff
	inc  bc                                          ; $4593: $03
	ccf                                              ; $4594: $3f
	rst  $38                                         ; $4595: $ff
	ret  nz                                          ; $4596: $c0

	rst  $38                                         ; $4597: $ff
	add  b                                           ; $4598: $80
	rlca                                             ; $4599: $07
	dec  bc                                          ; $459a: $0b
	inc  e                                           ; $459b: $1c
	db   $fc                                         ; $459c: $fc
	and  b                                           ; $459d: $a0
	jp   $9d83                                       ; $459e: $c3 $83 $9d


	sbc  h                                           ; $45a1: $9c
	sbc  a                                           ; $45a2: $9f
	sbc  e                                           ; $45a3: $9b
	ld   e, e                                        ; $45a4: $5b
	ld   d, l                                        ; $45a5: $55
	ld   d, a                                        ; $45a6: $57
	add  b                                           ; $45a7: $80
	ld   d, [hl]                                     ; $45a8: $56
	nop                                              ; $45a9: $00
	and  e                                           ; $45aa: $a3
	adc  l                                           ; $45ab: $8d
	nop                                              ; $45ac: $00
	ld   e, b                                        ; $45ad: $58
	ld   bc, $008c                                   ; $45ae: $01 $8c $00
	ld   [bc], a                                     ; $45b1: $02
	ld   hl, sp+$00                                  ; $45b2: $f8 $00
	rlca                                             ; $45b4: $07
	add  e                                           ; $45b5: $83
	nop                                              ; $45b6: $00
	ld   [$00e0], sp                                 ; $45b7: $08 $e0 $00
	ld   a, b                                        ; $45ba: $78
	nop                                              ; $45bb: $00
	rst  $38                                         ; $45bc: $ff
	nop                                              ; $45bd: $00
	ret  c                                           ; $45be: $d8

	nop                                              ; $45bf: $00
	ld   b, b                                        ; $45c0: $40
	add  b                                           ; $45c1: $80
	ld   b, $03                                      ; $45c2: $06 $03
	ld   bc, $6d05                                   ; $45c4: $01 $05 $6d
	ld   h, e                                        ; $45c7: $63
	add  b                                           ; $45c8: $80
	ld   e, d                                        ; $45c9: $5a
	dec  b                                           ; $45ca: $05
	ld   a, [de]                                     ; $45cb: $1a
	inc  d                                           ; $45cc: $14
	inc  c                                           ; $45cd: $0c
	add  hl, bc                                      ; $45ce: $09
	inc  bc                                          ; $45cf: $03
	nop                                              ; $45d0: $00
	add  b                                           ; $45d1: $80
	ld   d, $03                                      ; $45d2: $16 $03
	ld   b, $05                                      ; $45d4: $06 $05
	inc  bc                                          ; $45d6: $03
	ld   [bc], a                                     ; $45d7: $02
	adc  e                                           ; $45d8: $8b
	nop                                              ; $45d9: $00
	ld   b, $07                                      ; $45da: $06 $07
	nop                                              ; $45dc: $00
	jr   jr_098_45df                                 ; $45dd: $18 $00

jr_098_45df:
	rlca                                             ; $45df: $07
	nop                                              ; $45e0: $00
	jr   jr_098_4564                                 ; $45e1: $18 $81

	nop                                              ; $45e3: $00
	ld   b, $08                                      ; $45e4: $06 $08
	nop                                              ; $45e6: $00
	ld   [rROMB0], sp                                 ; $45e7: $08 $00 $20
	nop                                              ; $45ea: $00
	jr   nz, @-$7d                                   ; $45eb: $20 $81

	nop                                              ; $45ed: $00
	ld   e, $0a                                      ; $45ee: $1e $0a
	nop                                              ; $45f0: $00
	inc  c                                           ; $45f1: $0c
	nop                                              ; $45f2: $00
	ld   a, [de]                                     ; $45f3: $1a
	nop                                              ; $45f4: $00
	inc  e                                           ; $45f5: $1c
	nop                                              ; $45f6: $00
	and  b                                           ; $45f7: $a0
	nop                                              ; $45f8: $00
	ld   h, b                                        ; $45f9: $60
	nop                                              ; $45fa: $00
	jr   nc, jr_098_45fd                             ; $45fb: $30 $00

jr_098_45fd:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45fd: $cf
	nop                                              ; $45fe: $00
	ld   a, a                                        ; $45ff: $7f

jr_098_4600:
	nop                                              ; $4600: $00
	or   b                                           ; $4601: $b0
	nop                                              ; $4602: $00
	or   b                                           ; $4603: $b0
	nop                                              ; $4604: $00
	ld   b, c                                        ; $4605: $41
	nop                                              ; $4606: $00
	add  e                                           ; $4607: $83
	nop                                              ; $4608: $00
	db   $e4                                         ; $4609: $e4
	nop                                              ; $460a: $00
	ld   l, e                                        ; $460b: $6b
	nop                                              ; $460c: $00
	dec  c                                           ; $460d: $0d
	add  e                                           ; $460e: $83
	nop                                              ; $460f: $00
	ld   [bc], a                                     ; $4610: $02
	ldh  a, [rP1]                                    ; $4611: $f0 $00
	ldh  a, [$8d]                                    ; $4613: $f0 $8d
	nop                                              ; $4615: $00
	ld   [$0003], sp                                 ; $4616: $08 $03 $00
	inc  b                                           ; $4619: $04
	nop                                              ; $461a: $00
	add  hl, de                                      ; $461b: $19
	nop                                              ; $461c: $00
	ld   b, $00                                      ; $461d: $06 $00
	add  sp, -$7f                                    ; $461f: $e8 $81
	nop                                              ; $4621: $00
	ld   a, [bc]                                     ; $4622: $0a
	stop                                             ; $4623: $10 $00
	rlca                                             ; $4625: $07
	nop                                              ; $4626: $00
	jr   jr_098_4629                                 ; $4627: $18 $00

jr_098_4629:
	pop  bc                                          ; $4629: $c1
	nop                                              ; $462a: $00
	ld   h, d                                        ; $462b: $62
	ret  nz                                          ; $462c: $c0

	inc  [hl]                                        ; $462d: $34
	add  c                                           ; $462e: $81
	and  b                                           ; $462f: $a0
	inc  b                                           ; $4630: $04
	ld   b, c                                        ; $4631: $41
	ret  nz                                          ; $4632: $c0

	sbc  b                                           ; $4633: $98
	jr   nc, jr_098_4640                             ; $4634: $30 $0a

	add  c                                           ; $4636: $81
	ld   l, b                                        ; $4637: $68
	inc  e                                           ; $4638: $1c
	call nc, $a0b0                                   ; $4639: $d4 $b0 $a0
	add  b                                           ; $463c: $80
	jr   nz, jr_098_463f                             ; $463d: $20 $00

jr_098_463f:
	ld   [hl+], a                                    ; $463f: $22

jr_098_4640:
	nop                                              ; $4640: $00
	ld   [hl+], a                                    ; $4641: $22
	nop                                              ; $4642: $00
	inc  b                                           ; $4643: $04
	nop                                              ; $4644: $00
	ld   [de], a                                     ; $4645: $12
	nop                                              ; $4646: $00
	ld   b, c                                        ; $4647: $41
	nop                                              ; $4648: $00
	ld   [bc], a                                     ; $4649: $02
	nop                                              ; $464a: $00
	and  c                                           ; $464b: $a1
	nop                                              ; $464c: $00
	ld   [hl+], a                                    ; $464d: $22
	nop                                              ; $464e: $00
	push af                                          ; $464f: $f5
	nop                                              ; $4650: $00
	ld   [bc], a                                     ; $4651: $02
	nop                                              ; $4652: $00
	inc  b                                           ; $4653: $04
	nop                                              ; $4654: $00
	ld   [bc], a                                     ; $4655: $02
	add  e                                           ; $4656: $83
	nop                                              ; $4657: $00
	dec  h                                           ; $4658: $25
	ld   [bc], a                                     ; $4659: $02
	nop                                              ; $465a: $00
	ld   [hl+], a                                    ; $465b: $22
	nop                                              ; $465c: $00
	or   b                                           ; $465d: $b0
	nop                                              ; $465e: $00
	stop                                             ; $465f: $10 $00
	add  b                                           ; $4661: $80
	nop                                              ; $4662: $00
	ld   bc, $1600                                   ; $4663: $01 $00 $16
	nop                                              ; $4666: $00
	ld   d, h                                        ; $4667: $54
	nop                                              ; $4668: $00
	ld   h, e                                        ; $4669: $63
	nop                                              ; $466a: $00
	ld   hl, sp+$00                                  ; $466b: $f8 $00
	call nc, $0b00                                   ; $466d: $d4 $00 $0b
	nop                                              ; $4670: $00
	ld   b, $00                                      ; $4671: $06 $00
	ld   h, c                                        ; $4673: $61
	nop                                              ; $4674: $00
	ld   a, b                                        ; $4675: $78
	nop                                              ; $4676: $00
	sbc  $00                                         ; $4677: $de $00
	ld   d, [hl]                                     ; $4679: $56
	nop                                              ; $467a: $00
	db   $f4                                         ; $467b: $f4
	ld   h, b                                        ; $467c: $60
	dec  e                                           ; $467d: $1d
	jr   jr_098_4600                                 ; $467e: $18 $80

	ld   h, h                                        ; $4680: $64
	nop                                              ; $4681: $00
	ld   bc, $0091                                   ; $4682: $01 $91 $00
	inc  b                                           ; $4685: $04
	inc  bc                                          ; $4686: $03
	nop                                              ; $4687: $00
	jp   nz, $c100                                   ; $4688: $c2 $00 $c1

	add  [hl]                                        ; $468b: $86
	nop                                              ; $468c: $00
	ld   de, $e101                                   ; $468d: $11 $01 $e1
	ld   [bc], a                                     ; $4690: $02
	ld   l, d                                        ; $4691: $6a
	ld   [bc], a                                     ; $4692: $02
	sbc  l                                           ; $4693: $9d
	nop                                              ; $4694: $00
	rrca                                             ; $4695: $0f
	nop                                              ; $4696: $00
	ld   a, h                                        ; $4697: $7c
	nop                                              ; $4698: $00
	sub  h                                           ; $4699: $94
	nop                                              ; $469a: $00
	rrca                                             ; $469b: $0f
	nop                                              ; $469c: $00
	rrca                                             ; $469d: $0f
	nop                                              ; $469e: $00
	db   $10                                         ; $469f: $10
	add  e                                           ; $46a0: $83
	nop                                              ; $46a1: $00
	jr   jr_098_46b4                                 ; $46a2: $18 $10

	nop                                              ; $46a4: $00
	dec  bc                                          ; $46a5: $0b
	nop                                              ; $46a6: $00
	ld   e, e                                        ; $46a7: $5b
	nop                                              ; $46a8: $00
	jr   nz, jr_098_46ab                             ; $46a9: $20 $00

jr_098_46ab:
	ld   d, b                                        ; $46ab: $50
	nop                                              ; $46ac: $00
	stop                                             ; $46ad: $10 $00
	jp   nz, Jump_098_7200                           ; $46af: $c2 $00 $72

	nop                                              ; $46b2: $00
	xor  h                                           ; $46b3: $ac

jr_098_46b4:
	nop                                              ; $46b4: $00
	ld   d, c                                        ; $46b5: $51
	nop                                              ; $46b6: $00
	ld   l, l                                        ; $46b7: $6d
	nop                                              ; $46b8: $00
	jr   z, jr_098_46bb                              ; $46b9: $28 $00

jr_098_46bb:
	ret  z                                           ; $46bb: $c8

	add  d                                           ; $46bc: $82
	nop                                              ; $46bd: $00
	rra                                              ; $46be: $1f
	jr   jr_098_46da                                 ; $46bf: $18 $19

	inc  e                                           ; $46c1: $1c
	dec  e                                           ; $46c2: $1d
	nop                                              ; $46c3: $00
	ld   b, e                                        ; $46c4: $43
	nop                                              ; $46c5: $00
	ld   a, e                                        ; $46c6: $7b
	nop                                              ; $46c7: $00
	ld   [hl], b                                     ; $46c8: $70
	nop                                              ; $46c9: $00
	ld   hl, sp+$30                                  ; $46ca: $f8 $30
	or   b                                           ; $46cc: $b0
	jr   nc, @+$0a                                   ; $46cd: $30 $08

	nop                                              ; $46cf: $00
	ld   [$6000], sp                                 ; $46d0: $08 $00 $60
	nop                                              ; $46d3: $00
	stop                                             ; $46d4: $10 $00
	stop                                             ; $46d6: $10 $00
	ld   b, b                                        ; $46d8: $40
	nop                                              ; $46d9: $00

jr_098_46da:
	ret  z                                           ; $46da: $c8

	nop                                              ; $46db: $00
	sub  [hl]                                        ; $46dc: $96
	nop                                              ; $46dd: $00
	ld   a, [hl]                                     ; $46de: $7e
	add  c                                           ; $46df: $81
	nop                                              ; $46e0: $00
	ld   [$0080], sp                                 ; $46e1: $08 $80 $00
	inc  bc                                          ; $46e4: $03
	nop                                              ; $46e5: $00
	dec  b                                           ; $46e6: $05
	nop                                              ; $46e7: $00
	adc  b                                           ; $46e8: $88
	nop                                              ; $46e9: $00
	ld   c, $91                                      ; $46ea: $0e $91
	nop                                              ; $46ec: $00
	inc  d                                           ; $46ed: $14
	ret  nz                                          ; $46ee: $c0

	nop                                              ; $46ef: $00
	jr   nc, jr_098_46f2                             ; $46f0: $30 $00

jr_098_46f2:
	jr   nc, jr_098_46f4                             ; $46f2: $30 $00

jr_098_46f4:
	jp   $0d00                                       ; $46f4: $c3 $00 $0d


	nop                                              ; $46f7: $00
	rla                                              ; $46f8: $17
	nop                                              ; $46f9: $00
	dec  e                                           ; $46fa: $1d
	ldh  [$e4], a                                    ; $46fb: $e0 $e4
	nop                                              ; $46fd: $00
	ldh  [rSB], a                                    ; $46fe: $e0 $01
	ld   h, c                                        ; $4700: $61
	ld   bc, $8189                                   ; $4701: $01 $89 $81
	nop                                              ; $4704: $00
	inc  b                                           ; $4705: $04
	ld   [hl], b                                     ; $4706: $70
	nop                                              ; $4707: $00
	sbc  b                                           ; $4708: $98
	nop                                              ; $4709: $00
	ldh  [$87], a                                    ; $470a: $e0 $87
	nop                                              ; $470c: $00
	ld   [$00c0], sp                                 ; $470d: $08 $c0 $00
	ld   a, [$3a00]                                  ; $4710: $fa $00 $3a
	nop                                              ; $4713: $00
	add  c                                           ; $4714: $81
	nop                                              ; $4715: $00
	add  c                                           ; $4716: $81
	add  e                                           ; $4717: $83
	nop                                              ; $4718: $00
	ld   d, $3f                                      ; $4719: $16 $3f
	nop                                              ; $471b: $00
	rst  JumpTable                                         ; $471c: $df
	nop                                              ; $471d: $00
	cp   [hl]                                        ; $471e: $be
	nop                                              ; $471f: $00
	ld   e, [hl]                                     ; $4720: $5e
	nop                                              ; $4721: $00
	add  b                                           ; $4722: $80
	nop                                              ; $4723: $00
	add  b                                           ; $4724: $80
	nop                                              ; $4725: $00
	ret  nz                                          ; $4726: $c0

	nop                                              ; $4727: $00
	ccf                                              ; $4728: $3f
	nop                                              ; $4729: $00
	add  b                                           ; $472a: $80
	nop                                              ; $472b: $00
	rst  $38                                         ; $472c: $ff
	nop                                              ; $472d: $00
	ld   a, [hl]                                     ; $472e: $7e
	nop                                              ; $472f: $00
	cp   $8f                                         ; $4730: $fe $8f
	nop                                              ; $4732: $00
	ld   c, $01                                      ; $4733: $0e $01
	dec  de                                          ; $4735: $1b
	jr   jr_098_473e                                 ; $4736: $18 $06

	ld   d, $b6                                      ; $4738: $16 $b6
	adc  l                                           ; $473a: $8d
	ld   l, e                                        ; $473b: $6b
	ld   l, d                                        ; $473c: $6a
	ld   l, b                                        ; $473d: $68

jr_098_473e:
	ld   d, b                                        ; $473e: $50
	ld   sp, $0d25                                   ; $473f: $31 $25 $0d
	inc  bc                                          ; $4742: $03
	add  c                                           ; $4743: $81
	ld   a, [de]                                     ; $4744: $1a
	ld   [bc], a                                     ; $4745: $02
	inc  d                                           ; $4746: $14
	inc  c                                           ; $4747: $0c
	ld   [$0089], sp                                 ; $4748: $08 $89 $00
	ld   bc, $1c1d                                   ; $474b: $01 $1d $1c
	add  b                                           ; $474e: $80
	nop                                              ; $474f: $00
	inc  d                                           ; $4750: $14
	ld   h, d                                        ; $4751: $62
	nop                                              ; $4752: $00
	jr   jr_098_4755                                 ; $4753: $18 $00

jr_098_4755:
	sbc  c                                           ; $4755: $99
	nop                                              ; $4756: $00
	ldh  a, [c]                                      ; $4757: $f2
	nop                                              ; $4758: $00
	sub  b                                           ; $4759: $90
	nop                                              ; $475a: $00
	sub  b                                           ; $475b: $90
	nop                                              ; $475c: $00
	sub  a                                           ; $475d: $97
	nop                                              ; $475e: $00
	sbc  h                                           ; $475f: $9c
	nop                                              ; $4760: $00
	ld   h, b                                        ; $4761: $60
	nop                                              ; $4762: $00
	sbc  e                                           ; $4763: $9b
	nop                                              ; $4764: $00
	ldh  [$87], a                                    ; $4765: $e0 $87
	nop                                              ; $4767: $00
	add  d                                           ; $4768: $82
	add  b                                           ; $4769: $80
	add  b                                           ; $476a: $80
	nop                                              ; $476b: $00
	ld   [bc], a                                     ; $476c: $02
	ld   b, b                                        ; $476d: $40
	ret  nz                                          ; $476e: $c0

	jr   nz, jr_098_46f2                             ; $476f: $20 $81

	and  b                                           ; $4771: $a0
	ld   [bc], a                                     ; $4772: $02
	ld   b, b                                        ; $4773: $40
	ret  nz                                          ; $4774: $c0

	add  b                                           ; $4775: $80
	sub  c                                           ; $4776: $91
	nop                                              ; $4777: $00
	add  b                                           ; $4778: $80
	add  b                                           ; $4779: $80
	rlca                                             ; $477a: $07
	ldh  a, [rSVBK]                                  ; $477b: $f0 $70
	ld   a, b                                        ; $477d: $78
	ld   [$a4ac], sp                                 ; $477e: $08 $ac $a4
	ld   c, $0a                                      ; $4781: $0e $0a
	add  b                                           ; $4783: $80
	ld   l, d                                        ; $4784: $6a
	add  b                                           ; $4785: $80
	ld   a, [bc]                                     ; $4786: $0a
	ld   bc, $4440                                   ; $4787: $01 $40 $44
	add  b                                           ; $478a: $80
	inc  d                                           ; $478b: $14
	inc  bc                                          ; $478c: $03
	inc  b                                           ; $478d: $04
	add  h                                           ; $478e: $84
	nop                                              ; $478f: $00
	ld   a, b                                        ; $4790: $78
	rst  $38                                         ; $4791: $ff
	nop                                              ; $4792: $00
	rst  $38                                         ; $4793: $ff
	nop                                              ; $4794: $00
	rst  $38                                         ; $4795: $ff
	nop                                              ; $4796: $00
	rst  $38                                         ; $4797: $ff
	nop                                              ; $4798: $00
	rst  $38                                         ; $4799: $ff
	nop                                              ; $479a: $00
	rst  $38                                         ; $479b: $ff
	nop                                              ; $479c: $00
	rst  $38                                         ; $479d: $ff
	nop                                              ; $479e: $00
	rst  $38                                         ; $479f: $ff
	nop                                              ; $47a0: $00
	rst  $38                                         ; $47a1: $ff
	nop                                              ; $47a2: $00
	rst  $38                                         ; $47a3: $ff
	nop                                              ; $47a4: $00
	rst  $38                                         ; $47a5: $ff
	nop                                              ; $47a6: $00
	sub  e                                           ; $47a7: $93
	nop                                              ; $47a8: $00
	inc  bc                                          ; $47a9: $03
	cp   e                                           ; $47aa: $bb
	ld   b, b                                        ; $47ab: $40
	ld   e, c                                        ; $47ac: $59
	ld   e, l                                        ; $47ad: $5d
	add  b                                           ; $47ae: $80
	ld   b, l                                        ; $47af: $45
	inc  b                                           ; $47b0: $04
	ld   d, l                                        ; $47b1: $55
	ld   b, l                                        ; $47b2: $45
	ld   b, h                                        ; $47b3: $44
	ld   b, l                                        ; $47b4: $45
	ld   d, l                                        ; $47b5: $55
	add  b                                           ; $47b6: $80
	ld   b, h                                        ; $47b7: $44
	nop                                              ; $47b8: $00
	ld   b, l                                        ; $47b9: $45
	add  b                                           ; $47ba: $80
	ld   d, l                                        ; $47bb: $55
	inc  e                                           ; $47bc: $1c
	ld   de, $e0f0                                   ; $47bd: $11 $f0 $e0
	ccf                                              ; $47c0: $3f
	cp   a                                           ; $47c1: $bf
	ret  nz                                          ; $47c2: $c0

	ld   b, b                                        ; $47c3: $40
	cp   $ff                                         ; $47c4: $fe $ff
	db   $dd                                         ; $47c6: $dd
	sbc  $7b                                         ; $47c7: $de $7b
	ld   a, l                                        ; $47c9: $7d
	sub  [hl]                                        ; $47ca: $96
	sbc  d                                           ; $47cb: $9a
	xor  $61                                         ; $47cc: $ee $61
	rst  JumpTable                                         ; $47ce: $df

jr_098_47cf:
	ld   a, e                                        ; $47cf: $7b
	cpl                                              ; $47d0: $2f
	db   $fc                                         ; $47d1: $fc
	rst  $30                                         ; $47d2: $f7
	sbc  a                                           ; $47d3: $9f
	sbc  c                                           ; $47d4: $99
	rlca                                             ; $47d5: $07
	ld   h, [hl]                                     ; $47d6: $66
	ld   h, c                                        ; $47d7: $61
	ld   e, c                                        ; $47d8: $59
	ld   e, b                                        ; $47d9: $58
	add  b                                           ; $47da: $80
	cp   $02                                         ; $47db: $fe $02
	sbc  [hl]                                        ; $47dd: $9e
	ld   e, $ff                                      ; $47de: $1e $ff
	add  b                                           ; $47e0: $80
	ld   l, a                                        ; $47e1: $6f
	inc  c                                           ; $47e2: $0c
	and  a                                           ; $47e3: $a7
	rst  $20                                         ; $47e4: $e7
	jr   c, jr_098_47cf                              ; $47e5: $38 $e8

	rst  $28                                         ; $47e7: $ef
	ld   a, [hl]                                     ; $47e8: $7e
	cp   $87                                         ; $47e9: $fe $87
	ld   a, a                                        ; $47eb: $7f
	ld   a, b                                        ; $47ec: $78
	scf                                              ; $47ed: $37
	or   a                                           ; $47ee: $b7
	add  h                                           ; $47ef: $84
	add  b                                           ; $47f0: $80
	ei                                               ; $47f1: $fb
	nop                                              ; $47f2: $00
	ld   a, [$e280]                                  ; $47f3: $fa $80 $e2
	ld   [bc], a                                     ; $47f6: $02
	ld   c, $0c                                      ; $47f7: $0e $0c
	db   $fc                                         ; $47f9: $fc
	add  b                                           ; $47fa: $80
	rst  $28                                         ; $47fb: $ef
	ld   [bc], a                                     ; $47fc: $02
	ldh  a, [$fb]                                    ; $47fd: $f0 $fb
	dec  bc                                          ; $47ff: $0b
	add  b                                           ; $4800: $80
	db   $dd                                         ; $4801: $dd
	ld   [de], a                                     ; $4802: $12
	ld   a, a                                        ; $4803: $7f
	nop                                              ; $4804: $00
	add  b                                           ; $4805: $80
	nop                                              ; $4806: $00
	ld   [hl], b                                     ; $4807: $70
	nop                                              ; $4808: $00
	add  sp, $70                                     ; $4809: $e8 $70
	ld   d, h                                        ; $480b: $54
	ld   l, b                                        ; $480c: $68
	ld   a, [hl-]                                    ; $480d: $3a
	ld   d, h                                        ; $480e: $54
	call $26aa                                       ; $480f: $cd $aa $26
	push af                                          ; $4812: $f5
	rrca                                             ; $4813: $0f
	nop                                              ; $4814: $00
	ld   bc, $0089                                   ; $4815: $01 $89 $00
	ld   [$0080], sp                                 ; $4818: $08 $80 $00
	ld   h, b                                        ; $481b: $60
	nop                                              ; $481c: $00
	push af                                          ; $481d: $f5
	ld   a, [bc]                                     ; $481e: $0a
	ld   b, d                                        ; $481f: $42
	ld   [hl+], a                                    ; $4820: $22
	ld   a, [hl+]                                    ; $4821: $2a
	add  a                                           ; $4822: $87
	ld   [hl+], a                                    ; $4823: $22
	ld   [bc], a                                     ; $4824: $02
	adc  h                                           ; $4825: $8c
	ldh  [c], a                                      ; $4826: $e2
	and  $80                                         ; $4827: $e6 $80
	db   $ed                                         ; $4829: $ed
	add  b                                           ; $482a: $80
	db   $db                                         ; $482b: $db
	ld   [bc], a                                     ; $482c: $02
	ret  nc                                          ; $482d: $d0

	pop  de                                          ; $482e: $d1
	push de                                          ; $482f: $d5
	add  c                                           ; $4830: $81
	call nc, $d780                                   ; $4831: $d4 $80 $d7
	inc  b                                           ; $4834: $04
	ldh  [$f0], a                                    ; $4835: $e0 $f0
	db   $dd                                         ; $4837: $dd
	call $8000                                       ; $4838: $cd $00 $80
	cp   $81                                         ; $483b: $fe $81
	ld   [bc], a                                     ; $483d: $02
	ld   [bc], a                                     ; $483e: $02
	ldh  a, [c]                                      ; $483f: $f2
	ldh  a, [rP1]                                    ; $4840: $f0 $00
	add  b                                           ; $4842: $80
	rst  $38                                         ; $4843: $ff
	add  c                                           ; $4844: $81
	nop                                              ; $4845: $00
	add  b                                           ; $4846: $80
	ld   h, a                                        ; $4847: $67
	add  b                                           ; $4848: $80
	add  hl, de                                      ; $4849: $19
	add  b                                           ; $484a: $80
	ld   h, l                                        ; $484b: $65
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	add  b                                           ; $484e: $80
	rst  $38                                         ; $484f: $ff
	add  b                                           ; $4850: $80
	nop                                              ; $4851: $00
	add  b                                           ; $4852: $80
	rst  $38                                         ; $4853: $ff
	add  b                                           ; $4854: $80
	nop                                              ; $4855: $00
	rlca                                             ; $4856: $07
	inc  [hl]                                        ; $4857: $34
	or   a                                           ; $4858: $b7
	xor  e                                           ; $4859: $ab
	xor  a                                           ; $485a: $af
	rst  $20                                         ; $485b: $e7
	ld   l, a                                        ; $485c: $6f
	rrca                                             ; $485d: $0f
	nop                                              ; $485e: $00
	add  b                                           ; $485f: $80
	rst  $38                                         ; $4860: $ff
	add  b                                           ; $4861: $80
	nop                                              ; $4862: $00
	add  b                                           ; $4863: $80
	rst  $38                                         ; $4864: $ff
	add  b                                           ; $4865: $80
	nop                                              ; $4866: $00
	inc  bc                                          ; $4867: $03
	ld   l, $ee                                      ; $4868: $2e $ee
	adc  a                                           ; $486a: $8f
	xor  a                                           ; $486b: $af
	add  b                                           ; $486c: $80
	or   a                                           ; $486d: $b7
	ld   bc, $00e0                                   ; $486e: $01 $e0 $00
	add  b                                           ; $4871: $80
	rst  $38                                         ; $4872: $ff
	add  b                                           ; $4873: $80
	nop                                              ; $4874: $00
	add  b                                           ; $4875: $80
	rst  $38                                         ; $4876: $ff
	add  b                                           ; $4877: $80
	nop                                              ; $4878: $00
	rlca                                             ; $4879: $07
	ld   [bc], a                                     ; $487a: $02
	ld   [$7ce8], a                                  ; $487b: $ea $e8 $7c
	db   $fc                                         ; $487e: $fc
	cp   d                                           ; $487f: $ba
	ld   a, [hl-]                                    ; $4880: $3a
	nop                                              ; $4881: $00
	add  b                                           ; $4882: $80
	rst  $38                                         ; $4883: $ff
	add  b                                           ; $4884: $80
	nop                                              ; $4885: $00
	add  b                                           ; $4886: $80
	rst  $38                                         ; $4887: $ff
	add  b                                           ; $4888: $80
	nop                                              ; $4889: $00
	inc  bc                                          ; $488a: $03
	ccf                                              ; $488b: $3f
	add  b                                           ; $488c: $80
	cp   a                                           ; $488d: $bf
	nop                                              ; $488e: $00
	add  b                                           ; $488f: $80
	ld   a, a                                        ; $4890: $7f
	add  b                                           ; $4891: $80
	ld   b, b                                        ; $4892: $40
	inc  bc                                          ; $4893: $03
	ld   e, a                                        ; $4894: $5f
	ld   b, b                                        ; $4895: $40
	rra                                              ; $4896: $1f
	nop                                              ; $4897: $00
	add  b                                           ; $4898: $80
	rst  $38                                         ; $4899: $ff
	add  c                                           ; $489a: $81
	nop                                              ; $489b: $00
	add  b                                           ; $489c: $80
	ld   e, l                                        ; $489d: $5d
	inc  bc                                          ; $489e: $03
	dec  de                                          ; $489f: $1b
	ei                                               ; $48a0: $fb
	dec  bc                                          ; $48a1: $0b
	dec  de                                          ; $48a2: $1b
	add  c                                           ; $48a3: $81
	inc  bc                                          ; $48a4: $03
	nop                                              ; $48a5: $00
	dec  bc                                          ; $48a6: $0b
	add  c                                           ; $48a7: $81
	inc  bc                                          ; $48a8: $03
	ld   [$0107], sp                                 ; $48a9: $08 $07 $01
	db   $fd                                         ; $48ac: $fd
	nop                                              ; $48ad: $00
	inc  a                                           ; $48ae: $3c
	inc  l                                           ; $48af: $2c
	ld   c, d                                        ; $48b0: $4a
	ld   e, d                                        ; $48b1: $5a
	ld   h, [hl]                                     ; $48b2: $66
	add  b                                           ; $48b3: $80
	ld   h, $00                                      ; $48b4: $26 $00
	ld   h, [hl]                                     ; $48b6: $66
	add  b                                           ; $48b7: $80
	ld   e, d                                        ; $48b8: $5a
	add  b                                           ; $48b9: $80
	inc  a                                           ; $48ba: $3c
	add  d                                           ; $48bb: $82
	nop                                              ; $48bc: $00
	add  b                                           ; $48bd: $80
	rst  $38                                         ; $48be: $ff
	add  b                                           ; $48bf: $80
	nop                                              ; $48c0: $00
	add  b                                           ; $48c1: $80
	rst  $38                                         ; $48c2: $ff
	add  b                                           ; $48c3: $80
	nop                                              ; $48c4: $00
	nop                                              ; $48c5: $00
	rst  $38                                         ; $48c6: $ff
	add  e                                           ; $48c7: $83
	nop                                              ; $48c8: $00
	ld   bc, $00ff                                   ; $48c9: $01 $ff $00
	add  b                                           ; $48cc: $80
	rst  $38                                         ; $48cd: $ff
	add  b                                           ; $48ce: $80
	nop                                              ; $48cf: $00
	inc  bc                                          ; $48d0: $03
	ld   e, a                                        ; $48d1: $5f
	ld   b, b                                        ; $48d2: $40
	ld   e, a                                        ; $48d3: $5f
	ld   b, b                                        ; $48d4: $40
	add  b                                           ; $48d5: $80
	ld   a, a                                        ; $48d6: $7f
	add  b                                           ; $48d7: $80
	nop                                              ; $48d8: $00
	ld   [bc], a                                     ; $48d9: $02
	rst  $38                                         ; $48da: $ff
	nop                                              ; $48db: $00
	ld   d, l                                        ; $48dc: $55
	add  a                                           ; $48dd: $87
	ld   [hl+], a                                    ; $48de: $22
	ld   bc, $222a                                   ; $48df: $01 $2a $22
	add  b                                           ; $48e2: $80
	ld   a, [hl-]                                    ; $48e3: $3a
	add  b                                           ; $48e4: $80
	ld   [bc], a                                     ; $48e5: $02
	nop                                              ; $48e6: $00
	ld   l, d                                        ; $48e7: $6a
	adc  l                                           ; $48e8: $8d
	ld   a, [bc]                                     ; $48e9: $0a
	ld   bc, $00e0                                   ; $48ea: $01 $e0 $00
	add  b                                           ; $48ed: $80
	rst  $38                                         ; $48ee: $ff
	add  b                                           ; $48ef: $80
	nop                                              ; $48f0: $00
	nop                                              ; $48f1: $00
	ld   [bc], a                                     ; $48f2: $02
	add  b                                           ; $48f3: $80
	ld   a, [$0200]                                  ; $48f4: $fa $00 $02
	add  b                                           ; $48f7: $80
	cp   $81                                         ; $48f8: $fe $81
	nop                                              ; $48fa: $00
	add  b                                           ; $48fb: $80
	rst  $38                                         ; $48fc: $ff
	nop                                              ; $48fd: $00
	nop                                              ; $48fe: $00
	add  b                                           ; $48ff: $80
	rst  $38                                         ; $4900: $ff
	add  b                                           ; $4901: $80
	nop                                              ; $4902: $00
	add  b                                           ; $4903: $80
	rst  $38                                         ; $4904: $ff
	add  c                                           ; $4905: $81
	nop                                              ; $4906: $00
	add  h                                           ; $4907: $84
	rst  $38                                         ; $4908: $ff
	nop                                              ; $4909: $00
	nop                                              ; $490a: $00
	add  b                                           ; $490b: $80
	rst  $38                                         ; $490c: $ff
	add  b                                           ; $490d: $80
	nop                                              ; $490e: $00
	add  b                                           ; $490f: $80
	rst  $38                                         ; $4910: $ff
	add  b                                           ; $4911: $80
	nop                                              ; $4912: $00
	rlca                                             ; $4913: $07
	inc  bc                                          ; $4914: $03
	di                                               ; $4915: $f3
	push af                                          ; $4916: $f5
	db   $fd                                         ; $4917: $fd
	ld   a, [hl-]                                    ; $4918: $3a
	ld   a, $fc                                      ; $4919: $3e $fc
	nop                                              ; $491b: $00
	add  b                                           ; $491c: $80
	rst  $38                                         ; $491d: $ff
	add  b                                           ; $491e: $80
	nop                                              ; $491f: $00
	add  b                                           ; $4920: $80
	rst  $38                                         ; $4921: $ff
	add  b                                           ; $4922: $80
	nop                                              ; $4923: $00
	ld   b, $0f                                      ; $4924: $06 $0f
	ret  nz                                          ; $4926: $c0

	inc  c                                           ; $4927: $0c
	ldh  a, [$f3]                                    ; $4928: $f0 $f3
	call z, $8159                                    ; $492a: $cc $59 $81
	ld   d, l                                        ; $492d: $55
	add  c                                           ; $492e: $81
	ld   d, h                                        ; $492f: $54
	add  b                                           ; $4930: $80
	ld   d, l                                        ; $4931: $55
	nop                                              ; $4932: $00
	ld   d, h                                        ; $4933: $54
	add  b                                           ; $4934: $80
	ld   b, l                                        ; $4935: $45
	ld   bc, $5d5c                                   ; $4936: $01 $5c $5d
	add  b                                           ; $4939: $80
	ld   b, c                                        ; $493a: $41
	nop                                              ; $493b: $00
	ld   bc, $ff82                                   ; $493c: $01 $82 $ff
	add  b                                           ; $493f: $80
	ld   a, a                                        ; $4940: $7f
	ld   a, [bc]                                     ; $4941: $0a
	sbc  a                                           ; $4942: $9f
	rst  JumpTable                                         ; $4943: $df
	ld   h, a                                        ; $4944: $67
	daa                                              ; $4945: $27
	ld   hl, sp-$0c                                  ; $4946: $f8 $f4
	call z, $0ece                                    ; $4948: $cc $ce $0e
	inc  bc                                          ; $494b: $03
	db   $fc                                         ; $494c: $fc
	add  b                                           ; $494d: $80
	ld   hl, sp-$80                                  ; $494e: $f8 $80
	rst  $30                                         ; $4950: $f7
	add  h                                           ; $4951: $84
	rst  $38                                         ; $4952: $ff
	dec  b                                           ; $4953: $05
	cp   $3f                                         ; $4954: $fe $3f
	cp   l                                           ; $4956: $bd
	rst  JumpTable                                         ; $4957: $df
	cp   h                                           ; $4958: $bc
	ld   e, $80                                      ; $4959: $1e $80
	ld   a, [hl]                                     ; $495b: $7e
	ld   a, [bc]                                     ; $495c: $0a
	cp   $fc                                         ; $495d: $fe $fc
	rst  $38                                         ; $495f: $ff
	ei                                               ; $4960: $fb
	ld   a, [$82e2]                                  ; $4961: $fa $e2 $82
	ld   [$9708], a                                  ; $4964: $ea $08 $97
	rla                                              ; $4967: $17
	add  b                                           ; $4968: $80
	ld   e, b                                        ; $4969: $58
	add  b                                           ; $496a: $80
	inc  sp                                          ; $496b: $33
	add  b                                           ; $496c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $496d: $cf
	inc  bc                                          ; $496e: $03
	rra                                              ; $496f: $1f
	rst  $38                                         ; $4970: $ff
	db   $ec                                         ; $4971: $ec
	rrca                                             ; $4972: $0f
	add  b                                           ; $4973: $80
	inc  bc                                          ; $4974: $03
	dec  d                                           ; $4975: $15
	db   $eb                                         ; $4976: $eb
	jp   hl                                          ; $4977: $e9


	pop  af                                          ; $4978: $f1
	ldh  a, [$0c]                                    ; $4979: $f0 $0c
	inc  sp                                          ; $497b: $33
	nop                                              ; $497c: $00
	ld   [hl], b                                     ; $497d: $70
	ret  nz                                          ; $497e: $c0

jr_098_497f:
	cp   a                                           ; $497f: $bf
	jr   nc, @+$3c                                   ; $4980: $30 $3a

	dec  sp                                          ; $4982: $3b
	dec  b                                           ; $4983: $05
	ld   b, $a6                                      ; $4984: $06 $a6
	or   [hl]                                        ; $4986: $b6
	ld   d, b                                        ; $4987: $50
	ld   l, e                                        ; $4988: $6b
	ld   l, c                                        ; $4989: $69
	ld   l, b                                        ; $498a: $68
	rst  $10                                         ; $498b: $d7
	add  e                                           ; $498c: $83
	nop                                              ; $498d: $00
	ld   [bc], a                                     ; $498e: $02
	add  b                                           ; $498f: $80
	nop                                              ; $4990: $00
	ld   b, b                                        ; $4991: $40
	add  d                                           ; $4992: $82
	add  b                                           ; $4993: $80
	inc  bc                                          ; $4994: $03
	nop                                              ; $4995: $00
	and  b                                           ; $4996: $a0
	ret  nz                                          ; $4997: $c0

	rrca                                             ; $4998: $0f
	add  c                                           ; $4999: $81
	ld   d, [hl]                                     ; $499a: $56
	nop                                              ; $499b: $00
	ld   d, d                                        ; $499c: $52
	add  c                                           ; $499d: $81
	ld   d, a                                        ; $499e: $57
	nop                                              ; $499f: $00
	ld   d, l                                        ; $49a0: $55
	add  c                                           ; $49a1: $81
	ld   d, a                                        ; $49a2: $57
	ld   bc, $5756                                   ; $49a3: $01 $56 $57
	add  b                                           ; $49a6: $80
	ld   d, c                                        ; $49a7: $51
	add  b                                           ; $49a8: $80
	pop  bc                                          ; $49a9: $c1
	inc  bc                                          ; $49aa: $03
	jp   hl                                          ; $49ab: $e9


	db   $ed                                         ; $49ac: $ed
	ld   d, h                                        ; $49ad: $54
	ld   e, d                                        ; $49ae: $5a
	add  b                                           ; $49af: $80
	ld   a, [de]                                     ; $49b0: $1a
	inc  b                                           ; $49b1: $04
	ld   [bc], a                                     ; $49b2: $02
	adc  h                                           ; $49b3: $8c
	and  [hl]                                        ; $49b4: $a6

jr_098_49b5:
	and  e                                           ; $49b5: $a3
	sub  l                                           ; $49b6: $95
	add  c                                           ; $49b7: $81
	sub  $08                                         ; $49b8: $d6 $08
	call nz, $acae                                   ; $49ba: $c4 $ae $ac
	xor  l                                           ; $49bd: $ad
	add  hl, hl                                      ; $49be: $29
	bit  5, e                                        ; $49bf: $cb $6b
	inc  sp                                          ; $49c1: $33
	ld   d, e                                        ; $49c2: $53
	add  c                                           ; $49c3: $81
	ld   l, e                                        ; $49c4: $6b
	ld   [bc], a                                     ; $49c5: $02
	dec  bc                                          ; $49c6: $0b
	or   a                                           ; $49c7: $b7
	sub  a                                           ; $49c8: $97
	add  b                                           ; $49c9: $80
	adc  a                                           ; $49ca: $8f
	inc  bc                                          ; $49cb: $03
	rst  $20                                         ; $49cc: $e7
	xor  $f9                                         ; $49cd: $ee $f9
	ldh  a, [$89]                                    ; $49cf: $f0 $89
	rst  $38                                         ; $49d1: $ff
	dec  b                                           ; $49d2: $05
	ld   a, [$78ff]                                  ; $49d3: $fa $ff $78
	db   $fd                                         ; $49d6: $fd
	ld   [hl], c                                     ; $49d7: $71
	pop  af                                          ; $49d8: $f1
	add  b                                           ; $49d9: $80
	db   $fd                                         ; $49da: $fd
	add  [hl]                                        ; $49db: $86
	cp   $0c                                         ; $49dc: $fe $0c
	sbc  $31                                         ; $49de: $de $31
	sbc  c                                           ; $49e0: $99
	adc  l                                           ; $49e1: $8d
	ld   d, h                                        ; $49e2: $54
	jp   c, $da9a                                    ; $49e3: $da $9a $da

	jp   $e6ec                                       ; $49e6: $c3 $ec $e6


	ldh  [$63], a                                    ; $49e9: $e0 $63
	add  b                                           ; $49eb: $80
	ld   [hl], b                                     ; $49ec: $70
	ld   bc, $f877                                   ; $49ed: $01 $77 $f8
	add  c                                           ; $49f0: $81
	and  b                                           ; $49f1: $a0
	inc  b                                           ; $49f2: $04
	jr   nc, jr_098_49b5                             ; $49f3: $30 $c0

	ld   h, b                                        ; $49f5: $60
	nop                                              ; $49f6: $00
	ret  nz                                          ; $49f7: $c0

	add  c                                           ; $49f8: $81
	nop                                              ; $49f9: $00
	dec  b                                           ; $49fa: $05
	ret  nz                                          ; $49fb: $c0

	nop                                              ; $49fc: $00
	jr   c, jr_098_497f                              ; $49fd: $38 $80

	pop  de                                          ; $49ff: $d1
	ld   d, [hl]                                     ; $4a00: $56
	add  b                                           ; $4a01: $80
	ld   d, a                                        ; $4a02: $57
	add  b                                           ; $4a03: $80
	ld   d, [hl]                                     ; $4a04: $56
	inc  bc                                          ; $4a05: $03
	ld   d, h                                        ; $4a06: $54
	ld   d, l                                        ; $4a07: $55
	ld   e, c                                        ; $4a08: $59
	ld   d, b                                        ; $4a09: $50
	add  b                                           ; $4a0a: $80
	ld   d, e                                        ; $4a0b: $53
	ld   bc, $475f                                   ; $4a0c: $01 $5f $47
	add  b                                           ; $4a0f: $80
	ld   b, [hl]                                     ; $4a10: $46
	ld   a, [bc]                                     ; $4a11: $0a
	ld   a, [de]                                     ; $4a12: $1a
	ld   l, e                                        ; $4a13: $6b
	pop  hl                                          ; $4a14: $e1
	add  b                                           ; $4a15: $80
	inc  bc                                          ; $4a16: $03
	inc  c                                           ; $4a17: $0c
	nop                                              ; $4a18: $00
	ldh  a, [$87]                                    ; $4a19: $f0 $87
	rlca                                             ; $4a1b: $07
	rst  $38                                         ; $4a1c: $ff
	add  c                                           ; $4a1d: $81
	cp   a                                           ; $4a1e: $bf
	nop                                              ; $4a1f: $00
	ccf                                              ; $4a20: $3f
	add  b                                           ; $4a21: $80
	rra                                              ; $4a22: $1f
	add  b                                           ; $4a23: $80
	cpl                                              ; $4a24: $2f
	add  b                                           ; $4a25: $80
	call $ef80                                       ; $4a26: $cd $80 $ef
	rlca                                             ; $4a29: $07
	and  e                                           ; $4a2a: $a3
	and  a                                           ; $4a2b: $a7
	push af                                          ; $4a2c: $f5
	rst  $30                                         ; $4a2d: $f7
	or   $f1                                         ; $4a2e: $f6 $f1
	di                                               ; $4a30: $f3
	ldh  a, [c]                                      ; $4a31: $f2
	add  b                                           ; $4a32: $80
	db   $d3                                         ; $4a33: $d3
	dec  b                                           ; $4a34: $05
	ei                                               ; $4a35: $fb
	db   $f4                                         ; $4a36: $f4
	or   b                                           ; $4a37: $b0
	adc  a                                           ; $4a38: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a39: $cf
	rst  $38                                         ; $4a3a: $ff
	add  b                                           ; $4a3b: $80
	ldh  a, [$80]                                    ; $4a3c: $f0 $80
	ret  nz                                          ; $4a3e: $c0

	dec  b                                           ; $4a3f: $05
	ld   a, $be                                      ; $4a40: $3e $be
	rst  $38                                         ; $4a42: $ff
	ld   a, a                                        ; $4a43: $7f
	rst  JumpTable                                         ; $4a44: $df
	sbc  $80                                         ; $4a45: $de $80
	cp   $02                                         ; $4a47: $fe $02
	cp   d                                           ; $4a49: $ba
	ld   b, l                                        ; $4a4a: $45
	ld   bc, $ff81                                   ; $4a4b: $01 $81 $ff
	add  d                                           ; $4a4e: $82
	nop                                              ; $4a4f: $00
	add  c                                           ; $4a50: $81
	rst  $38                                         ; $4a51: $ff
	inc  b                                           ; $4a52: $04
	ld   a, h                                        ; $4a53: $7c
	jr   c, jr_098_4ad1                              ; $4a54: $38 $7b

	inc  hl                                          ; $4a56: $23
	db   $e3                                         ; $4a57: $e3
	add  b                                           ; $4a58: $80
	db   $dd                                         ; $4a59: $dd
	inc  bc                                          ; $4a5a: $03
	dec  e                                           ; $4a5b: $1d
	dec  c                                           ; $4a5c: $0d
	dec  e                                           ; $4a5d: $1d
	dec  c                                           ; $4a5e: $0d
	add  b                                           ; $4a5f: $80
	ld   h, e                                        ; $4a60: $63
	add  b                                           ; $4a61: $80
	ei                                               ; $4a62: $fb
	ld   [bc], a                                     ; $4a63: $02
	ldh  [c], a                                      ; $4a64: $e2
	ld   h, c                                        ; $4a65: $61
	ld   a, b                                        ; $4a66: $78
	add  b                                           ; $4a67: $80
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	ld   a, [$fc86]                                  ; $4a6a: $fa $86 $fc
	ld   b, $c0                                      ; $4a6d: $06 $c0
	cp   $00                                         ; $4a6f: $fe $00
	ld   l, [hl]                                     ; $4a71: $6e
	ld   b, c                                        ; $4a72: $41
	ld   c, a                                        ; $4a73: $4f
	ld   d, a                                        ; $4a74: $57
	add  b                                           ; $4a75: $80
	ld   d, h                                        ; $4a76: $54
	dec  bc                                          ; $4a77: $0b
	ld   d, e                                        ; $4a78: $53
	ld   b, e                                        ; $4a79: $43
	ld   a, [hl]                                     ; $4a7a: $7e
	ld   b, [hl]                                     ; $4a7b: $46
	ld   [hl], l                                     ; $4a7c: $75
	dec  d                                           ; $4a7d: $15
	ld   a, [de]                                     ; $4a7e: $1a
	dec  de                                          ; $4a7f: $1b
	ld   sp, hl                                      ; $4a80: $f9
	dec  sp                                          ; $4a81: $3b
	ld   b, e                                        ; $4a82: $43

Jump_098_4a83:
	rst  JumpTable                                         ; $4a83: $df
	add  b                                           ; $4a84: $80
	rra                                              ; $4a85: $1f
	inc  de                                          ; $4a86: $13
	rst  JumpTable                                         ; $4a87: $df
	ret  c                                           ; $4a88: $d8

	sbc  b                                           ; $4a89: $98
	add  b                                           ; $4a8a: $80
	ld   h, b                                        ; $4a8b: $60
	ld   e, a                                        ; $4a8c: $5f
	xor  a                                           ; $4a8d: $af
	ld   h, b                                        ; $4a8e: $60
	jr   nc, jr_098_4aa0                             ; $4a8f: $30 $0f

	rst  $28                                         ; $4a91: $ef
	or   b                                           ; $4a92: $b0
	sub  h                                           ; $4a93: $94
	push af                                          ; $4a94: $f5
	ldh  a, [rTIMA]                                  ; $4a95: $f0 $05
	call nz, $e6c6                                   ; $4a97: $c4 $c6 $e6
	ldh  [c], a                                      ; $4a9a: $e2
	add  b                                           ; $4a9b: $80
	ld   [hl+], a                                    ; $4a9c: $22
	ld   a, [bc]                                     ; $4a9d: $0a
	ld   [bc], a                                     ; $4a9e: $02
	add  d                                           ; $4a9f: $82

jr_098_4aa0:
	and  d                                           ; $4aa0: $a2
	ld   [hl+], a                                    ; $4aa1: $22
	ld   b, d                                        ; $4aa2: $42
	jp   nz, $fd82                                   ; $4aa3: $c2 $82 $fd

	db   $fc                                         ; $4aa6: $fc
	cp   $ff                                         ; $4aa7: $fe $ff
	add  b                                           ; $4aa9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aaa: $cf
	nop                                              ; $4aab: $00
	nop                                              ; $4aac: $00
	add  b                                           ; $4aad: $80
	sbc  h                                           ; $4aae: $9c
	add  b                                           ; $4aaf: $80
	add  $09                                         ; $4ab0: $c6 $09
	ret  nz                                          ; $4ab2: $c0

	pop  bc                                          ; $4ab3: $c1
	pop  hl                                          ; $4ab4: $e1
	ldh  [rP1], a                                    ; $4ab5: $e0 $00
	ldh  [$60], a                                    ; $4ab7: $e0 $60
	ld   e, [hl]                                     ; $4ab9: $5e
	and  c                                           ; $4aba: $a1
	add  b                                           ; $4abb: $80
	add  c                                           ; $4abc: $81
	rst  $38                                         ; $4abd: $ff
	add  b                                           ; $4abe: $80
	nop                                              ; $4abf: $00
	add  b                                           ; $4ac0: $80
	ret  nz                                          ; $4ac1: $c0

	add  b                                           ; $4ac2: $80
	rst  $38                                         ; $4ac3: $ff
	add  b                                           ; $4ac4: $80
	ld   a, a                                        ; $4ac5: $7f
	dec  b                                           ; $4ac6: $05
	add  hl, de                                      ; $4ac7: $19
	ld   l, c                                        ; $4ac8: $69
	adc  l                                           ; $4ac9: $8d
	dec  a                                           ; $4aca: $3d
	ld   sp, $80f1                                   ; $4acb: $31 $f1 $80
	add  a                                           ; $4ace: $87
	add  b                                           ; $4acf: $80
	dec  de                                          ; $4ad0: $1b

jr_098_4ad1:
	rrca                                             ; $4ad1: $0f
	ld   a, e                                        ; $4ad2: $7b
	ld   a, a                                        ; $4ad3: $7f
	ldh  [$eb], a                                    ; $4ad4: $e0 $eb
	nop                                              ; $4ad6: $00
	ld   d, $c0                                      ; $4ad7: $16 $c0
	ld   e, b                                        ; $4ad9: $58
	ld   h, h                                        ; $4ada: $64
	push hl                                          ; $4adb: $e5
	xor  $e6                                         ; $4adc: $ee $e6
	db   $d3                                         ; $4ade: $d3
	push de                                          ; $4adf: $d5
	or   c                                           ; $4ae0: $b1
	cp   a                                           ; $4ae1: $bf
	add  b                                           ; $4ae2: $80
	xor  a                                           ; $4ae3: $af
	add  b                                           ; $4ae4: $80
	ld   a, [hl]                                     ; $4ae5: $7e
	ld   bc, $977d                                   ; $4ae6: $01 $7d $97
	add  c                                           ; $4ae9: $81
	ld   a, [bc]                                     ; $4aea: $0a
	ld   b, $1e                                      ; $4aeb: $06 $1e
	ld   [bc], a                                     ; $4aed: $02
	cp   $00                                         ; $4aee: $fe $00
	inc  bc                                          ; $4af0: $03
	sbc  h                                           ; $4af1: $9c
	cp   h                                           ; $4af2: $bc
	add  b                                           ; $4af3: $80
	ld   e, h                                        ; $4af4: $5c
	inc  bc                                          ; $4af5: $03
	call c, $c8cd                                    ; $4af6: $dc $cd $c8
	rst  $30                                         ; $4af9: $f7
	add  c                                           ; $4afa: $81
	ldh  [rP1], a                                    ; $4afb: $e0 $00
	ldh  a, [$83]                                    ; $4afd: $f0 $83
	ret  nz                                          ; $4aff: $c0

	nop                                              ; $4b00: $00
	ldh  [$81], a                                    ; $4b01: $e0 $81
	add  b                                           ; $4b03: $80
	inc  b                                           ; $4b04: $04

jr_098_4b05:
	ret  nz                                          ; $4b05: $c0

	nop                                              ; $4b06: $00
	swap a                                           ; $4b07: $cb $37
	inc  sp                                          ; $4b09: $33
	add  c                                           ; $4b0a: $81
	scf                                              ; $4b0b: $37
	db   $10                                         ; $4b0c: $10
	rst  $10                                         ; $4b0d: $d7
	rla                                              ; $4b0e: $17
	daa                                              ; $4b0f: $27
	ld   b, a                                        ; $4b10: $47
	ld   [hl], a                                     ; $4b11: $77
	ld   b, a                                        ; $4b12: $47
	ld   c, a                                        ; $4b13: $4f
	ld   d, e                                        ; $4b14: $53
	ld   d, c                                        ; $4b15: $51
	ld   d, e                                        ; $4b16: $53
	adc  b                                           ; $4b17: $88
	xor  c                                           ; $4b18: $a9
	jr   z, jr_098_4b61                              ; $4b19: $28 $46

	ld   e, [hl]                                     ; $4b1b: $5e
	ld   e, d                                        ; $4b1c: $5a
	ld   b, d                                        ; $4b1d: $42
	add  b                                           ; $4b1e: $80
	ld   b, h                                        ; $4b1f: $44
	ld   [$dd5d], sp                                 ; $4b20: $08 $5d $dd
	xor  c                                           ; $4b23: $a9
	add  hl, bc                                      ; $4b24: $09
	or   b                                           ; $4b25: $b0
	sub  b                                           ; $4b26: $90
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b27: $cf
	adc  c                                           ; $4b28: $89
	ld   b, [hl]                                     ; $4b29: $46
	add  b                                           ; $4b2a: $80
	and  h                                           ; $4b2b: $a4
	ld   c, $80                                      ; $4b2c: $0e $80
	and  e                                           ; $4b2e: $a3
	dec  hl                                          ; $4b2f: $2b
	ld   a, [hl+]                                    ; $4b30: $2a
	ld   [hl+], a                                    ; $4b31: $22
	and  c                                           ; $4b32: $a1
	or   c                                           ; $4b33: $b1
	ld   d, a                                        ; $4b34: $57
	rrca                                             ; $4b35: $0f
	res  1, a                                        ; $4b36: $cb $8f
	inc  l                                           ; $4b38: $2c
	sbc  h                                           ; $4b39: $9c
	rst  $38                                         ; $4b3a: $ff
	ld   b, e                                        ; $4b3b: $43
	add  b                                           ; $4b3c: $80
	ccf                                              ; $4b3d: $3f
	add  b                                           ; $4b3e: $80
	ld   c, a                                        ; $4b3f: $4f
	add  b                                           ; $4b40: $80
	or   a                                           ; $4b41: $b7
	ld   [bc], a                                     ; $4b42: $02
	scf                                              ; $4b43: $37
	ld   [hl], a                                     ; $4b44: $77
	ld   c, a                                        ; $4b45: $4f
	add  b                                           ; $4b46: $80
	ld   a, a                                        ; $4b47: $7f
	nop                                              ; $4b48: $00
	rrca                                             ; $4b49: $0f
	add  b                                           ; $4b4a: $80
	ld   a, a                                        ; $4b4b: $7f
	add  b                                           ; $4b4c: $80
	add  b                                           ; $4b4d: $80
	nop                                              ; $4b4e: $00
	rst  $38                                         ; $4b4f: $ff
	add  d                                           ; $4b50: $82
	ld   hl, sp-$7e                                  ; $4b51: $f8 $82
	db   $fc                                         ; $4b53: $fc
	add  d                                           ; $4b54: $82
	db   $fd                                         ; $4b55: $fd
	cp   [hl]                                        ; $4b56: $be
	nop                                              ; $4b57: $00
	db   $10                                         ; $4b58: $10
	ld   [bc], a                                     ; $4b59: $02
	nop                                              ; $4b5a: $00
	ld   hl, sp-$73                                  ; $4b5b: $f8 $8d
	rst  $38                                         ; $4b5d: $ff
	ld   bc, $f30b                                   ; $4b5e: $01 $0b $f3

jr_098_4b61:
	add  b                                           ; $4b61: $80
	rst  $30                                         ; $4b62: $f7
	add  b                                           ; $4b63: $80
	ldh  a, [c]                                      ; $4b64: $f2
	add  [hl]                                        ; $4b65: $86
	di                                               ; $4b66: $f3
	add  b                                           ; $4b67: $80
	rst  $30                                         ; $4b68: $f7
	adc  [hl]                                        ; $4b69: $8e
	rst  $38                                         ; $4b6a: $ff
	inc  b                                           ; $4b6b: $04
	ldh  a, [rIF]                                    ; $4b6c: $f0 $0f
	ld   [hl], b                                     ; $4b6e: $70
	ld   a, [hl]                                     ; $4b6f: $7e
	adc  [hl]                                        ; $4b70: $8e
	add  b                                           ; $4b71: $80
	ldh  a, [rSC]                                    ; $4b72: $f0 $02
	ret  nz                                          ; $4b74: $c0

	pop  bc                                          ; $4b75: $c1
	add  c                                           ; $4b76: $81
	add  b                                           ; $4b77: $80
	ld   b, d                                        ; $4b78: $42
	dec  b                                           ; $4b79: $05
	ld   b, l                                        ; $4b7a: $45
	ld   b, h                                        ; $4b7b: $44
	ld   c, d                                        ; $4b7c: $4a
	ld   c, c                                        ; $4b7d: $49
	db   $e3                                         ; $4b7e: $e3
	pop  hl                                          ; $4b7f: $e1
	add  b                                           ; $4b80: $80
	ld   e, $80                                      ; $4b81: $1e $80
	jr   nc, jr_098_4b05                             ; $4b83: $30 $80

	ret  nz                                          ; $4b85: $c0

	add  d                                           ; $4b86: $82
	nop                                              ; $4b87: $00
	add  b                                           ; $4b88: $80
	ld   b, b                                        ; $4b89: $40
	add  b                                           ; $4b8a: $80
	add  b                                           ; $4b8b: $80
	add  b                                           ; $4b8c: $80
	ret  nz                                          ; $4b8d: $c0

	add  b                                           ; $4b8e: $80
	inc  sp                                          ; $4b8f: $33
	add  b                                           ; $4b90: $80
	inc  c                                           ; $4b91: $0c
	add  b                                           ; $4b92: $80
	inc  bc                                          ; $4b93: $03

jr_098_4b94:
	add  b                                           ; $4b94: $80
	rlca                                             ; $4b95: $07
	add  b                                           ; $4b96: $80
	inc  bc                                          ; $4b97: $03
	add  b                                           ; $4b98: $80
	ld   [bc], a                                     ; $4b99: $02
	add  d                                           ; $4b9a: $82
	nop                                              ; $4b9b: $00
	add  b                                           ; $4b9c: $80
	rst  ToBoot                                         ; $4b9d: $c7
	add  b                                           ; $4b9e: $80
	jr   c, @-$7e                                    ; $4b9f: $38 $80

	adc  h                                           ; $4ba1: $8c
	add  b                                           ; $4ba2: $80
	ld   [bc], a                                     ; $4ba3: $02
	add  b                                           ; $4ba4: $80
	add  c                                           ; $4ba5: $81
	add  d                                           ; $4ba6: $82
	nop                                              ; $4ba7: $00
	add  d                                           ; $4ba8: $82
	rst  $38                                         ; $4ba9: $ff
	add  b                                           ; $4baa: $80
	ld   a, a                                        ; $4bab: $7f
	add  h                                           ; $4bac: $84
	rra                                              ; $4bad: $1f
	add  b                                           ; $4bae: $80
	cp   a                                           ; $4baf: $bf
	add  c                                           ; $4bb0: $81
	rst  $38                                         ; $4bb1: $ff
	adc  [hl]                                        ; $4bb2: $8e
	nop                                              ; $4bb3: $00
	adc  l                                           ; $4bb4: $8d
	ld   c, $00                                      ; $4bb5: $0e $00
	xor  $8d                                         ; $4bb7: $ee $8d
	rst  $38                                         ; $4bb9: $ff
	nop                                              ; $4bba: $00
	rra                                              ; $4bbb: $1f
	adc  l                                           ; $4bbc: $8d
	rst  $38                                         ; $4bbd: $ff
	ld   bc, $fff8                                   ; $4bbe: $01 $f8 $ff
	add  d                                           ; $4bc1: $82
	cp   $00                                         ; $4bc2: $fe $00
	db   $fd                                         ; $4bc4: $fd
	add  c                                           ; $4bc5: $81
	db   $fc                                         ; $4bc6: $fc
	inc  b                                           ; $4bc7: $04
	ld   a, [$f9f8]                                  ; $4bc8: $fa $f8 $f9
	ld   hl, sp-$05                                  ; $4bcb: $f8 $fb
	add  b                                           ; $4bcd: $80
	ld   hl, sp+$01                                  ; $4bce: $f8 $01
	add  c                                           ; $4bd0: $81
	add  e                                           ; $4bd1: $83
	add  c                                           ; $4bd2: $81
	inc  bc                                          ; $4bd3: $03
	add  e                                           ; $4bd4: $83
	rlca                                             ; $4bd5: $07
	ld   bc, $cfc7                                   ; $4bd6: $01 $c7 $cf
	add  b                                           ; $4bd9: $80
	cpl                                              ; $4bda: $2f
	ld   bc, $f31f                                   ; $4bdb: $01 $1f $f3
	add  c                                           ; $4bde: $81
	db   $e3                                         ; $4bdf: $e3
	add  h                                           ; $4be0: $84
	pop  hl                                          ; $4be1: $e1
	add  d                                           ; $4be2: $82
	pop  bc                                          ; $4be3: $c1
	add  b                                           ; $4be4: $80
	ldh  [rSB], a                                    ; $4be5: $e0 $01
	cp   e                                           ; $4be7: $bb
	cp   a                                           ; $4be8: $bf
	add  d                                           ; $4be9: $82
	sbc  $00                                         ; $4bea: $de $00
	ret  z                                           ; $4bec: $c8

	add  b                                           ; $4bed: $80
	adc  $00                                         ; $4bee: $ce $00
	xor  $84                                         ; $4bf0: $ee $84
	and  $00                                         ; $4bf2: $e6 $00
	dec  h                                           ; $4bf4: $25
	adc  l                                           ; $4bf5: $8d
	rst  $38                                         ; $4bf6: $ff
	ld   bc, $f30b                                   ; $4bf7: $01 $0b $f3
	add  b                                           ; $4bfa: $80
	rst  $30                                         ; $4bfb: $f7
	add  d                                           ; $4bfc: $82
	di                                               ; $4bfd: $f3
	add  b                                           ; $4bfe: $80
	rst  $30                                         ; $4bff: $f7
	add  h                                           ; $4c00: $84
	di                                               ; $4c01: $f3
	nop                                              ; $4c02: $00
	rst  $38                                         ; $4c03: $ff
	add  a                                           ; $4c04: $87
	nop                                              ; $4c05: $00
	add  b                                           ; $4c06: $80
	ld   bc, $0609                                   ; $4c07: $01 $09 $06
	rlca                                             ; $4c0a: $07
	add  hl, de                                      ; $4c0b: $19
	ld   e, $29                                      ; $4c0c: $1e $29
	dec  sp                                          ; $4c0e: $3b
	ld   hl, $2b34                                   ; $4c0f: $21 $34 $2b
	jr   z, jr_098_4b94                              ; $4c12: $28 $80

	ld   c, b                                        ; $4c14: $48
	ld   bc, $5251                                   ; $4c15: $01 $51 $52
	add  b                                           ; $4c18: $80
	sub  h                                           ; $4c19: $94
	add  b                                           ; $4c1a: $80
	and  h                                           ; $4c1b: $a4
	ld   bc, $a8a9                                   ; $4c1c: $01 $a9 $a8
	add  b                                           ; $4c1f: $80
	nop                                              ; $4c20: $00
	add  b                                           ; $4c21: $80
	ld   [$1082], sp                                 ; $4c22: $08 $82 $10
	rlca                                             ; $4c25: $07
	jp   hl                                          ; $4c26: $e9


	jr   nz, jr_098_4c5f                             ; $4c27: $20 $36

	ld   hl, $4109                                   ; $4c29: $21 $09 $41
	push de                                          ; $4c2c: $d5
	ld   b, e                                        ; $4c2d: $43
	add  d                                           ; $4c2e: $82
	nop                                              ; $4c2f: $00
	add  b                                           ; $4c30: $80
	add  h                                           ; $4c31: $84
	rlca                                             ; $4c32: $07
	adc  [hl]                                        ; $4c33: $8e
	add  h                                           ; $4c34: $84
	push af                                          ; $4c35: $f5
	sub  [hl]                                        ; $4c36: $96
	or   [hl]                                        ; $4c37: $b6
	sub  [hl]                                        ; $4c38: $96
	call c, $8095                                    ; $4c39: $dc $95 $80
	and  l                                           ; $4c3c: $a5
	add  h                                           ; $4c3d: $84
	nop                                              ; $4c3e: $00
	add  b                                           ; $4c3f: $80
	add  b                                           ; $4c40: $80
	add  hl, bc                                      ; $4c41: $09
	pop  bc                                          ; $4c42: $c1
	ld   b, c                                        ; $4c43: $41
	jr   nc, jr_098_4c66                             ; $4c44: $30 $20

	rst  $28                                         ; $4c46: $ef
	jr   nc, jr_098_4cc5                             ; $4c47: $30 $7c

	jr   nc, jr_098_4cc7                             ; $4c49: $30 $7c

	ld   a, a                                        ; $4c4b: $7f
	add  b                                           ; $4c4c: $80
	ccf                                              ; $4c4d: $3f
	add  b                                           ; $4c4e: $80
	rra                                              ; $4c4f: $1f
	nop                                              ; $4c50: $00
	cpl                                              ; $4c51: $2f
	add  c                                           ; $4c52: $81
	rrca                                             ; $4c53: $0f
	ld   bc, $8494                                   ; $4c54: $01 $94 $84
	add  b                                           ; $4c57: $80
	ld   b, h                                        ; $4c58: $44
	ld   [bc], a                                     ; $4c59: $02
	jp   c, Jump_098_5f4a                            ; $4c5a: $da $4a $5f

	add  l                                           ; $4c5d: $85
	nop                                              ; $4c5e: $00

jr_098_4c5f:
	ld   [$00fe], sp                                 ; $4c5f: $08 $fe $00
	xor  c                                           ; $4c62: $a9
	rst  $38                                         ; $4c63: $ff
	rlca                                             ; $4c64: $07
	rst  $38                                         ; $4c65: $ff

jr_098_4c66:
	rlca                                             ; $4c66: $07
	rst  $38                                         ; $4c67: $ff
	xor  b                                           ; $4c68: $a8
	add  a                                           ; $4c69: $87
	ld   c, $00                                      ; $4c6a: $0e $00
	ldh  a, [$80]                                    ; $4c6c: $f0 $80
	add  c                                           ; $4c6e: $81
	add  c                                           ; $4c6f: $81
	cp   $00                                         ; $4c70: $fe $00
	ldh  [$89], a                                    ; $4c72: $e0 $89
	rst  $38                                         ; $4c74: $ff
	inc  b                                           ; $4c75: $04
	pop  hl                                          ; $4c76: $e1
	ld   bc, $57a8                                   ; $4c77: $01 $a8 $57
	nop                                              ; $4c7a: $00
	adc  e                                           ; $4c7b: $8b
	rst  $38                                         ; $4c7c: $ff
	ld   [bc], a                                     ; $4c7d: $02
	ld   bc, $4741                                   ; $4c7e: $01 $41 $47
	add  b                                           ; $4c81: $80
	ld   b, $88                                      ; $4c82: $06 $88
	inc  b                                           ; $4c84: $04
	add  c                                           ; $4c85: $81
	dec  b                                           ; $4c86: $05
	ld   b, $ea                                      ; $4c87: $06 $ea
	rra                                              ; $4c89: $1f
	ld   sp, $383f                                   ; $4c8a: $31 $3f $38
	ccf                                              ; $4c8d: $3f
	ld   a, [hl]                                     ; $4c8e: $7e
	add  c                                           ; $4c8f: $81
	ld   a, a                                        ; $4c90: $7f
	add  h                                           ; $4c91: $84
	rst  JumpTable                                         ; $4c92: $df
	add  b                                           ; $4c93: $80
	ldh  [$80], a                                    ; $4c94: $e0 $80
	ldh  a, [rDIV]                                   ; $4c96: $f0 $04
	nop                                              ; $4c98: $00
	ldh  a, [rP1]                                    ; $4c99: $f0 $00
	db   $fc                                         ; $4c9b: $fc
	db   $f4                                         ; $4c9c: $f4
	add  b                                           ; $4c9d: $80
	ei                                               ; $4c9e: $fb
	add  c                                           ; $4c9f: $81
	ld   hl, sp-$80                                  ; $4ca0: $f8 $80
	db   $fc                                         ; $4ca2: $fc
	nop                                              ; $4ca3: $00
	ldh  [$87], a                                    ; $4ca4: $e0 $87
	db   $f4                                         ; $4ca6: $f4
	ld   [$f864], sp                                 ; $4ca7: $08 $64 $f8
	cp   b                                           ; $4caa: $b8
	ld   a, b                                        ; $4cab: $78
	jr   jr_098_4d26                                 ; $4cac: $18 $78

	xor  a                                           ; $4cae: $af
	ld   a, a                                        ; $4caf: $7f
	ld   [$f380], sp                                 ; $4cb0: $08 $80 $f3
	adc  c                                           ; $4cb3: $89
	ldh  a, [$80]                                    ; $4cb4: $f0 $80
	di                                               ; $4cb6: $f3
	ld   [bc], a                                     ; $4cb7: $02
	inc  sp                                          ; $4cb8: $33
	di                                               ; $4cb9: $f3
	ret  nz                                          ; $4cba: $c0

	add  b                                           ; $4cbb: $80
	ld   bc, $0682                                   ; $4cbc: $01 $82 $06
	add  e                                           ; $4cbf: $83
	inc  b                                           ; $4cc0: $04
	rlca                                             ; $4cc1: $07
	jp   c, Jump_098_5939                            ; $4cc2: $da $39 $59

jr_098_4cc5:
	ld   [hl], c                                     ; $4cc5: $71
	or   c                                           ; $4cc6: $b1

jr_098_4cc7:
	pop  bc                                          ; $4cc7: $c1
	ld   b, d                                        ; $4cc8: $42
	ld   [bc], a                                     ; $4cc9: $02
	add  b                                           ; $4cca: $80
	add  d                                           ; $4ccb: $82
	add  b                                           ; $4ccc: $80
	ld   b, c                                        ; $4ccd: $41
	add  b                                           ; $4cce: $80
	ld   b, e                                        ; $4ccf: $43
	add  b                                           ; $4cd0: $80
	push bc                                          ; $4cd1: $c5
	add  b                                           ; $4cd2: $80
	jr   z, @-$7e                                    ; $4cd3: $28 $80

	ld   c, b                                        ; $4cd5: $48
	add  [hl]                                        ; $4cd6: $86
	ld   d, b                                        ; $4cd7: $50
	add  b                                           ; $4cd8: $80
	ld   d, a                                        ; $4cd9: $57
	add  b                                           ; $4cda: $80
	ld   a, [hl+]                                    ; $4cdb: $2a
	add  b                                           ; $4cdc: $80
	ld   b, d                                        ; $4cdd: $42
	add  b                                           ; $4cde: $80
	add  d                                           ; $4cdf: $82
	add  d                                           ; $4ce0: $82
	add  l                                           ; $4ce1: $85
	add  b                                           ; $4ce2: $80
	adc  [hl]                                        ; $4ce3: $8e
	add  b                                           ; $4ce4: $80
	or   c                                           ; $4ce5: $b1
	add  b                                           ; $4ce6: $80
	db   $dd                                         ; $4ce7: $dd
	add  b                                           ; $4ce8: $80
	ld   [hl], a                                     ; $4ce9: $77
	nop                                              ; $4cea: $00
	and  l                                           ; $4ceb: $a5
	add  c                                           ; $4cec: $81
	nop                                              ; $4ced: $00
	inc  c                                           ; $4cee: $0c
	add  b                                           ; $4cef: $80
	nop                                              ; $4cf0: $00
	ld   bc, $6000                                   ; $4cf1: $01 $00 $60
	nop                                              ; $4cf4: $00
	add  b                                           ; $4cf5: $80
	nop                                              ; $4cf6: $00
	ld   c, h                                        ; $4cf7: $4c
	nop                                              ; $4cf8: $00
	add  b                                           ; $4cf9: $80
	nop                                              ; $4cfa: $00
	ld   [hl+], a                                    ; $4cfb: $22
	add  c                                           ; $4cfc: $81
	ld   a, [hl+]                                    ; $4cfd: $2a
	add  b                                           ; $4cfe: $80
	dec  d                                           ; $4cff: $15
	add  d                                           ; $4d00: $82
	sub  l                                           ; $4d01: $95
	add  b                                           ; $4d02: $80
	sub  a                                           ; $4d03: $97
	add  b                                           ; $4d04: $80
	cp   l                                           ; $4d05: $bd
	add  b                                           ; $4d06: $80
	rst  ToBoot                                         ; $4d07: $c7
	inc  bc                                          ; $4d08: $03
	ld   l, d                                        ; $4d09: $6a
	ld   a, [hl+]                                    ; $4d0a: $2a
	ld   h, [hl]                                     ; $4d0b: $66
	ld   h, $80                                      ; $4d0c: $26 $80
	dec  h                                           ; $4d0e: $25
	add  h                                           ; $4d0f: $84
	dec  d                                           ; $4d10: $15
	add  b                                           ; $4d11: $80
	rla                                              ; $4d12: $17
	add  b                                           ; $4d13: $80
	dec  d                                           ; $4d14: $15
	add  [hl]                                        ; $4d15: $86
	nop                                              ; $4d16: $00
	add  b                                           ; $4d17: $80
	add  b                                           ; $4d18: $80
	add  c                                           ; $4d19: $81
	ld   b, b                                        ; $4d1a: $40
	inc  bc                                          ; $4d1b: $03
	ret  nz                                          ; $4d1c: $c0

	and  b                                           ; $4d1d: $a0
	ldh  [$c0], a                                    ; $4d1e: $e0 $c0
	adc  l                                           ; $4d20: $8d
	rst  $38                                         ; $4d21: $ff
	add  b                                           ; $4d22: $80
	xor  a                                           ; $4d23: $af
	add  b                                           ; $4d24: $80
	ld   d, a                                        ; $4d25: $57

jr_098_4d26:
	rlca                                             ; $4d26: $07
	cpl                                              ; $4d27: $2f
	rst  $28                                         ; $4d28: $ef
	rst  JumpTable                                         ; $4d29: $df
	ld   e, a                                        ; $4d2a: $5f
	ld   c, a                                        ; $4d2b: $4f
	xor  a                                           ; $4d2c: $af
	ld   a, a                                        ; $4d2d: $7f
	rst  JumpTable                                         ; $4d2e: $df
	add  b                                           ; $4d2f: $80
	rst  $28                                         ; $4d30: $ef
	add  b                                           ; $4d31: $80
	rst  JumpTable                                         ; $4d32: $df
	add  d                                           ; $4d33: $82
	rst  $38                                         ; $4d34: $ff
	add  b                                           ; $4d35: $80
	di                                               ; $4d36: $f3
	add  b                                           ; $4d37: $80
	jp   $ff80                                       ; $4d38: $c3 $80 $ff


	ld   [bc], a                                     ; $4d3b: $02
	ei                                               ; $4d3c: $fb
	rst  $38                                         ; $4d3d: $ff
	ei                                               ; $4d3e: $fb
	add  c                                           ; $4d3f: $81
	rst  $38                                         ; $4d40: $ff
	nop                                              ; $4d41: $00
	ld   sp, hl                                      ; $4d42: $f9
	add  c                                           ; $4d43: $81
	rlca                                             ; $4d44: $07
	ld   [bc], a                                     ; $4d45: $02
	dec  b                                           ; $4d46: $05
	rlca                                             ; $4d47: $07
	dec  bc                                          ; $4d48: $0b
	add  c                                           ; $4d49: $81
	rrca                                             ; $4d4a: $0f
	nop                                              ; $4d4b: $00
	ld   d, $81                                      ; $4d4c: $16 $81
	ld   e, $02                                      ; $4d4e: $1e $02
	inc  l                                           ; $4d50: $2c

jr_098_4d51:
	inc  a                                           ; $4d51: $3c
	ld   a, a                                        ; $4d52: $7f
	add  e                                           ; $4d53: $83
	sbc  a                                           ; $4d54: $9f
	add  b                                           ; $4d55: $80
	rra                                              ; $4d56: $1f
	add  h                                           ; $4d57: $84
	rrca                                             ; $4d58: $0f
	add  b                                           ; $4d59: $80
	rlca                                             ; $4d5a: $07
	add  d                                           ; $4d5b: $82
	db   $fc                                         ; $4d5c: $fc
	add  d                                           ; $4d5d: $82
	cp   $86                                         ; $4d5e: $fe $86
	rst  $38                                         ; $4d60: $ff
	ld   bc, $18e7                                   ; $4d61: $01 $e7 $18
	add  b                                           ; $4d64: $80
	rrca                                             ; $4d65: $0f
	nop                                              ; $4d66: $00
	inc  b                                           ; $4d67: $04
	add  a                                           ; $4d68: $87
	rlca                                             ; $4d69: $07
	ld   [bc], a                                     ; $4d6a: $02
	ld   bc, $0e03                                   ; $4d6b: $01 $03 $0e
	add  a                                           ; $4d6e: $87
	ldh  a, [$80]                                    ; $4d6f: $f0 $80
	ld   [hl], b                                     ; $4d71: $70
	add  d                                           ; $4d72: $82
	nop                                              ; $4d73: $00
	add  h                                           ; $4d74: $84
	inc  b                                           ; $4d75: $04
	adc  b                                           ; $4d76: $88
	nop                                              ; $4d77: $00
	ld   bc, $c936                                   ; $4d78: $01 $36 $c9
	add  b                                           ; $4d7b: $80
	ret  nc                                          ; $4d7c: $d0

	add  b                                           ; $4d7d: $80
	ldh  [$80], a                                    ; $4d7e: $e0 $80
	add  b                                           ; $4d80: $80
	add  b                                           ; $4d81: $80
	ldh  a, [$80]                                    ; $4d82: $f0 $80
	ld   hl, sp-$80                                  ; $4d84: $f8 $80
	push af                                          ; $4d86: $f5
	add  b                                           ; $4d87: $80
	add  $80                                         ; $4d88: $c6 $80
	ld   a, [hl-]                                    ; $4d8a: $3a
	add  b                                           ; $4d8b: $80
	xor  d                                           ; $4d8c: $aa
	add  h                                           ; $4d8d: $84
	ld   c, d                                        ; $4d8e: $4a
	add  b                                           ; $4d8f: $80
	ld   [$3a80], a                                  ; $4d90: $ea $80 $3a
	add  b                                           ; $4d93: $80
	ld   a, [de]                                     ; $4d94: $1a
	ld   a, [bc]                                     ; $4d95: $0a
	call $b006                                       ; $4d96: $cd $06 $b0
	and  c                                           ; $4d99: $a1
	push hl                                          ; $4d9a: $e5
	ld   hl, $3531                                   ; $4d9b: $21 $31 $35
	ld   b, $20                                      ; $4d9e: $06 $20
	inc  a                                           ; $4da0: $3c
	add  e                                           ; $4da1: $83
	nop                                              ; $4da2: $00
	ld   bc, $0080                                   ; $4da3: $01 $80 $00
	add  c                                           ; $4da6: $81
	add  b                                           ; $4da7: $80
	adc  b                                           ; $4da8: $88
	nop                                              ; $4da9: $00
	ld   c, $08                                      ; $4daa: $0e $08
	ld   [hl], c                                     ; $4dac: $71
	nop                                              ; $4dad: $00
	sub  h                                           ; $4dae: $94
	jr   nz, jr_098_4de1                             ; $4daf: $20 $30

	adc  b                                           ; $4db1: $88
	inc  c                                           ; $4db2: $0c
	ld   [$f858], sp                                 ; $4db3: $08 $58 $f8
	ldh  [rLCDC], a                                  ; $4db6: $e0 $40
	ld   [hl], e                                     ; $4db8: $73
	nop                                              ; $4db9: $00
	add  b                                           ; $4dba: $80
	ld   [$1701], sp                                 ; $4dbb: $08 $01 $17
	dec  d                                           ; $4dbe: $15
	add  b                                           ; $4dbf: $80
	ld   e, b                                        ; $4dc0: $58
	add  b                                           ; $4dc1: $80
	ld   a, h                                        ; $4dc2: $7c
	add  b                                           ; $4dc3: $80
	and  l                                           ; $4dc4: $a5
	add  b                                           ; $4dc5: $80
	add  d                                           ; $4dc6: $82
	add  b                                           ; $4dc7: $80
	and  d                                           ; $4dc8: $a2
	add  b                                           ; $4dc9: $80
	sub  c                                           ; $4dca: $91
	add  b                                           ; $4dcb: $80
	sub  b                                           ; $4dcc: $90
	nop                                              ; $4dcd: $00
	jr   nz, jr_098_4d51                             ; $4dce: $20 $81

	ld   h, b                                        ; $4dd0: $60
	ld   bc, $f0b0                                   ; $4dd1: $01 $b0 $f0
	add  b                                           ; $4dd4: $80
	rst  $38                                         ; $4dd5: $ff
	add  b                                           ; $4dd6: $80
	inc  bc                                          ; $4dd7: $03
	add  d                                           ; $4dd8: $82
	nop                                              ; $4dd9: $00
	add  b                                           ; $4dda: $80
	add  b                                           ; $4ddb: $80
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	add  e                                           ; $4dde: $83
	rst  $38                                         ; $4ddf: $ff
	add  b                                           ; $4de0: $80

jr_098_4de1:
	rlca                                             ; $4de1: $07
	add  b                                           ; $4de2: $80
	nop                                              ; $4de3: $00
	add  d                                           ; $4de4: $82
	rst  $38                                         ; $4de5: $ff
	inc  bc                                          ; $4de6: $03
	ld   bc, $14ff                                   ; $4de7: $01 $ff $14
	ld   [$c580], a                                  ; $4dea: $ea $80 $c5
	add  b                                           ; $4ded: $80
	xor  a                                           ; $4dee: $af
	add  b                                           ; $4def: $80
	inc  de                                          ; $4df0: $13
	add  d                                           ; $4df1: $82
	nop                                              ; $4df2: $00
	add  b                                           ; $4df3: $80
	db   $fc                                         ; $4df4: $fc
	add  b                                           ; $4df5: $80
	cp   $88                                         ; $4df6: $fe $88
	rst  $38                                         ; $4df8: $ff
	add  b                                           ; $4df9: $80
	nop                                              ; $4dfa: $00
	add  b                                           ; $4dfb: $80
	add  b                                           ; $4dfc: $80
	add  b                                           ; $4dfd: $80
	rst  $38                                         ; $4dfe: $ff
	dec  bc                                          ; $4dff: $0b

jr_098_4e00:
	ret  c                                           ; $4e00: $d8

	jr   c, jr_098_4e53                              ; $4e01: $38 $50

	ld   [hl], b                                     ; $4e03: $70
	ld   h, b                                        ; $4e04: $60
	ld   a, b                                        ; $4e05: $78
	ld   h, b                                        ; $4e06: $60
	ld   a, h                                        ; $4e07: $7c
	ld   e, b                                        ; $4e08: $58
	ld   e, a                                        ; $4e09: $5f
	ld   c, h                                        ; $4e0a: $4c
	ld   c, a                                        ; $4e0b: $4f
	add  b                                           ; $4e0c: $80
	ld   b, a                                        ; $4e0d: $47
	add  b                                           ; $4e0e: $80
	ld   b, b                                        ; $4e0f: $40
	ld   bc, $03c3                                   ; $4e10: $01 $c3 $03
	add  a                                           ; $4e13: $87
	nop                                              ; $4e14: $00
	ld   bc, $00ff                                   ; $4e15: $01 $ff $00

jr_098_4e18:
	add  e                                           ; $4e18: $83
	rst  $38                                         ; $4e19: $ff
	add  b                                           ; $4e1a: $80
	ld   a, a                                        ; $4e1b: $7f
	add  b                                           ; $4e1c: $80
	rlca                                             ; $4e1d: $07
	add  b                                           ; $4e1e: $80
	ld   bc, $0081                                   ; $4e1f: $01 $81 $00
	dec  c                                           ; $4e22: $0d
	ldh  [rP1], a                                    ; $4e23: $e0 $00
	db   $fc                                         ; $4e25: $fc
	ldh  [rIE], a                                    ; $4e26: $e0 $ff
	cp   $03                                         ; $4e28: $fe $03
	ld   [bc], a                                     ; $4e2a: $02
	inc  bc                                          ; $4e2b: $03
	ld   [bc], a                                     ; $4e2c: $02
	inc  bc                                          ; $4e2d: $03
	ld   [bc], a                                     ; $4e2e: $02
	inc  bc                                          ; $4e2f: $03
	inc  b                                           ; $4e30: $04
	add  c                                           ; $4e31: $81
	rlca                                             ; $4e32: $07
	nop                                              ; $4e33: $00
	dec  bc                                          ; $4e34: $0b
	add  c                                           ; $4e35: $81
	rrca                                             ; $4e36: $0f
	ld   [bc], a                                     ; $4e37: $02
	nop                                              ; $4e38: $00
	ld   hl, sp+$07                                  ; $4e39: $f8 $07
	adc  e                                           ; $4e3b: $8b
	rst  $38                                         ; $4e3c: $ff
	ld   bc, $00f8                                   ; $4e3d: $01 $f8 $00
	add  b                                           ; $4e40: $80
	di                                               ; $4e41: $f3
	add  h                                           ; $4e42: $84
	ldh  a, [$80]                                    ; $4e43: $f0 $80
	pop  af                                          ; $4e45: $f1
	add  b                                           ; $4e46: $80
	db   $f4                                         ; $4e47: $f4
	add  b                                           ; $4e48: $80
	ldh  a, [rSB]                                    ; $4e49: $f0 $01
	ei                                               ; $4e4b: $fb
	inc  b                                           ; $4e4c: $04
	add  b                                           ; $4e4d: $80
	ret  z                                           ; $4e4e: $c8

	add  b                                           ; $4e4f: $80
	ld   [$0780], sp                                 ; $4e50: $08 $80 $07

jr_098_4e53:
	add  b                                           ; $4e53: $80
	ld   bc, $8180                                   ; $4e54: $01 $80 $81
	add  d                                           ; $4e57: $82
	ld   [bc], a                                     ; $4e58: $02
	add  b                                           ; $4e59: $80
	ld   a, [hl+]                                    ; $4e5a: $2a
	add  d                                           ; $4e5b: $82
	ld   c, e                                        ; $4e5c: $4b
	add  b                                           ; $4e5d: $80
	jp   z, Jump_098_4a83                            ; $4e5e: $ca $83 $4a

	add  c                                           ; $4e61: $81
	ld   l, d                                        ; $4e62: $6a
	nop                                              ; $4e63: $00
	jr   nz, @-$7b                                   ; $4e64: $20 $83

	nop                                              ; $4e66: $00
	add  d                                           ; $4e67: $82
	add  b                                           ; $4e68: $80
	add  b                                           ; $4e69: $80
	ld   b, b                                        ; $4e6a: $40
	add  b                                           ; $4e6b: $80
	ld   h, b                                        ; $4e6c: $60
	add  b                                           ; $4e6d: $80
	ld   d, b                                        ; $4e6e: $50
	nop                                              ; $4e6f: $00
	ld   [$0480], sp                                 ; $4e70: $08 $80 $04
	dec  b                                           ; $4e73: $05
	nop                                              ; $4e74: $00
	ld   [$2400], sp                                 ; $4e75: $08 $00 $24
	ld   c, b                                        ; $4e78: $48
	ld   l, h                                        ; $4e79: $6c
	add  b                                           ; $4e7a: $80
	nop                                              ; $4e7b: $00
	add  b                                           ; $4e7c: $80
	jr   nc, jr_098_4e00                             ; $4e7d: $30 $81

	nop                                              ; $4e7f: $00
	ld   [bc], a                                     ; $4e80: $02
	rst  $30                                         ; $4e81: $f7
	ld   [bc], a                                     ; $4e82: $02
	ld   [$0581], sp                                 ; $4e83: $08 $81 $05
	nop                                              ; $4e86: $00
	ld   bc, $0981                                   ; $4e87: $01 $81 $09
	nop                                              ; $4e8a: $00
	ld   bc, $1180                                   ; $4e8b: $01 $80 $11
	rlca                                             ; $4e8e: $07
	ld   sp, $5111                                   ; $4e8f: $31 $11 $51
	ld   c, b                                        ; $4e92: $48
	inc  bc                                          ; $4e93: $03
	or   $02                                         ; $4e94: $f6 $02
	jr   nz, jr_098_4e18                             ; $4e96: $20 $80

	add  hl, bc                                      ; $4e98: $09
	inc  bc                                          ; $4e99: $03
	rrca                                             ; $4e9a: $0f
	ld   l, a                                        ; $4e9b: $6f
	rra                                              ; $4e9c: $1f
	sbc  a                                           ; $4e9d: $9f
	add  d                                           ; $4e9e: $82
	ld   a, a                                        ; $4e9f: $7f
	add  b                                           ; $4ea0: $80
	rst  $38                                         ; $4ea1: $ff
	add  b                                           ; $4ea2: $80
	ld   a, a                                        ; $4ea3: $7f
	sub  h                                           ; $4ea4: $94
	rst  $38                                         ; $4ea5: $ff
	nop                                              ; $4ea6: $00
	cp   $81                                         ; $4ea7: $fe $81
	rst  $38                                         ; $4ea9: $ff
	nop                                              ; $4eaa: $00
	cp   $80                                         ; $4eab: $fe $80
	rst  $38                                         ; $4ead: $ff
	ld   [bc], a                                     ; $4eae: $02
	cp   $ff                                         ; $4eaf: $fe $ff
	cp   $83                                         ; $4eb1: $fe $83
	rst  $38                                         ; $4eb3: $ff
	inc  b                                           ; $4eb4: $04
	rst  JumpTable                                         ; $4eb5: $df
	ccf                                              ; $4eb6: $3f
	rst  JumpTable                                         ; $4eb7: $df
	rst  $38                                         ; $4eb8: $ff
	ccf                                              ; $4eb9: $3f
	add  c                                           ; $4eba: $81
	rst  $38                                         ; $4ebb: $ff
	inc  b                                           ; $4ebc: $04
	nop                                              ; $4ebd: $00
	rst  $38                                         ; $4ebe: $ff
	ld   bc, $feff                                   ; $4ebf: $01 $ff $fe
	adc  c                                           ; $4ec2: $89
	rst  $38                                         ; $4ec3: $ff
	ld   [bc], a                                     ; $4ec4: $02
	and  c                                           ; $4ec5: $a1
	cp   a                                           ; $4ec6: $bf
	cp   [hl]                                        ; $4ec7: $be
	add  c                                           ; $4ec8: $81
	cp   a                                           ; $4ec9: $bf
	nop                                              ; $4eca: $00
	ld   e, a                                        ; $4ecb: $5f
	add  c                                           ; $4ecc: $81
	rst  $38                                         ; $4ecd: $ff
	ld   [bc], a                                     ; $4ece: $02
	ccf                                              ; $4ecf: $3f
	rst  $38                                         ; $4ed0: $ff
	ld   a, a                                        ; $4ed1: $7f
	add  c                                           ; $4ed2: $81
	rst  $38                                         ; $4ed3: $ff
	ld   a, [bc]                                     ; $4ed4: $0a
	ld   a, e                                        ; $4ed5: $7b
	ld   a, a                                        ; $4ed6: $7f
	ccf                                              ; $4ed7: $3f
	cp   a                                           ; $4ed8: $bf
	sub  e                                           ; $4ed9: $93
	sbc  a                                           ; $4eda: $9f
	rrca                                             ; $4edb: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4edc: $cf
	adc  a                                           ; $4edd: $8f
	rst  $28                                         ; $4ede: $ef
	rst  ToBoot                                         ; $4edf: $c7
	add  c                                           ; $4ee0: $81
	rst  $38                                         ; $4ee1: $ff
	ld   [bc], a                                     ; $4ee2: $02
	sbc  a                                           ; $4ee3: $9f
	xor  a                                           ; $4ee4: $af
	db   $dd                                         ; $4ee5: $dd
	add  e                                           ; $4ee6: $83
	rst  $38                                         ; $4ee7: $ff
	nop                                              ; $4ee8: $00
	ld   sp, hl                                      ; $4ee9: $f9
	add  l                                           ; $4eea: $85
	rst  $38                                         ; $4eeb: $ff
	ld   [bc], a                                     ; $4eec: $02
	ldh  a, [$fc]                                    ; $4eed: $f0 $fc

jr_098_4eef:
	pop  af                                          ; $4eef: $f1
	add  e                                           ; $4ef0: $83
	db   $fd                                         ; $4ef1: $fd
	add  b                                           ; $4ef2: $80
	rst  $38                                         ; $4ef3: $ff
	nop                                              ; $4ef4: $00
	ld   sp, hl                                      ; $4ef5: $f9
	add  e                                           ; $4ef6: $83
	rst  $38                                         ; $4ef7: $ff

jr_098_4ef8:
	ld   [bc], a                                     ; $4ef8: $02
	ld   a, h                                        ; $4ef9: $7c
	ld   a, a                                        ; $4efa: $7f
	ld   b, $8d                                      ; $4efb: $06 $8d
	rst  $38                                         ; $4efd: $ff
	ld   bc, $f008                                   ; $4efe: $01 $08 $f0
	add  b                                           ; $4f01: $80
	pop  af                                          ; $4f02: $f1
	add  [hl]                                        ; $4f03: $86

jr_098_4f04:
	push af                                          ; $4f04: $f5
	add  d                                           ; $4f05: $82
	rst  $30                                         ; $4f06: $f7
	nop                                              ; $4f07: $00
	db   $fc                                         ; $4f08: $fc
	add  c                                           ; $4f09: $81
	ld   [bc], a                                     ; $4f0a: $02
	ld   bc, $0407                                   ; $4f0b: $01 $07 $04
	add  b                                           ; $4f0e: $80
	inc  c                                           ; $4f0f: $0c
	dec  b                                           ; $4f10: $05
	daa                                              ; $4f11: $27
	dec  h                                           ; $4f12: $25
	ld   a, l                                        ; $4f13: $7d
	ld   a, c                                        ; $4f14: $79
	dec  l                                           ; $4f15: $2d
	add  hl, hl                                      ; $4f16: $29
	add  c                                           ; $4f17: $81
	ld   c, d                                        ; $4f18: $4a
	add  hl, bc                                      ; $4f19: $09
	ld   l, d                                        ; $4f1a: $6a
	cp   d                                           ; $4f1b: $ba
	jp   c, $dadb                                    ; $4f1c: $da $db $da

	ld   hl, sp-$57                                  ; $4f1f: $f8 $a9
	add  hl, hl                                      ; $4f21: $29
	xor  c                                           ; $4f22: $a9
	jp   hl                                          ; $4f23: $e9


	add  c                                           ; $4f24: $81
	ld   c, e                                        ; $4f25: $4b
	inc  bc                                          ; $4f26: $03
	res  5, e                                        ; $4f27: $cb $ab
	ld   e, $4c                                      ; $4f29: $1e $4c
	add  b                                           ; $4f2b: $80
	ld   b, e                                        ; $4f2c: $43
	add  b                                           ; $4f2d: $80
	ret  nz                                          ; $4f2e: $c0

	dec  de                                          ; $4f2f: $1b
	ldh  a, [$30]                                    ; $4f30: $f0 $30
	inc  a                                           ; $4f32: $3c
	inc  e                                           ; $4f33: $1c
	ld   a, [de]                                     ; $4f34: $1a
	ld   a, [bc]                                     ; $4f35: $0a
	dec  c                                           ; $4f36: $0d
	dec  b                                           ; $4f37: $05
	ld   a, [bc]                                     ; $4f38: $0a
	ld   c, $fd                                      ; $4f39: $0e $fd
	nop                                              ; $4f3b: $00
	inc  bc                                          ; $4f3c: $03
	nop                                              ; $4f3d: $00
	call z, $fc00                                    ; $4f3e: $cc $00 $fc
	nop                                              ; $4f41: $00
	ld   sp, $0100                                   ; $4f42: $31 $00 $01
	nop                                              ; $4f45: $00
	ld   bc, $8100                                   ; $4f46: $01 $00 $81
	nop                                              ; $4f49: $00
	inc  de                                          ; $4f4a: $13
	sub  c                                           ; $4f4b: $91
	add  [hl]                                        ; $4f4c: $86
	ld   de, $9180                                   ; $4f4d: $11 $80 $91
	rlca                                             ; $4f50: $07
	ld   d, c                                        ; $4f51: $51
	pop  de                                          ; $4f52: $d1
	ld   sp, $bdf1                                   ; $4f53: $31 $f1 $bd
	rst  $38                                         ; $4f56: $ff
	db   $fc                                         ; $4f57: $fc
	db   $fd                                         ; $4f58: $fd
	add  c                                           ; $4f59: $81
	db   $fc                                         ; $4f5a: $fc
	adc  l                                           ; $4f5b: $8d
	rst  $38                                         ; $4f5c: $ff
	ld   bc, $fff3                                   ; $4f5d: $01 $f3 $ff
	add  b                                           ; $4f60: $80
	ei                                               ; $4f61: $fb
	nop                                              ; $4f62: $00
	di                                               ; $4f63: $f3
	or   e                                           ; $4f64: $b3
	rst  $38                                         ; $4f65: $ff
	ld   bc, $7e81                                   ; $4f66: $01 $81 $7e
	add  b                                           ; $4f69: $80
	jr   c, jr_098_4eef                              ; $4f6a: $38 $83

	nop                                              ; $4f6c: $00
	add  d                                           ; $4f6d: $82
	ld   bc, $0280                                   ; $4f6e: $01 $80 $02
	add  b                                           ; $4f71: $80
	rrca                                             ; $4f72: $0f
	add  b                                           ; $4f73: $80
	jr   nz, jr_098_4ef8                             ; $4f74: $20 $82

	ld   b, b                                        ; $4f76: $40
	add  b                                           ; $4f77: $80
	add  b                                           ; $4f78: $80
	add  h                                           ; $4f79: $84
	nop                                              ; $4f7a: $00
	add  b                                           ; $4f7b: $80
	rst  $38                                         ; $4f7c: $ff
	add  b                                           ; $4f7d: $80
	ld   [$1082], sp                                 ; $4f7e: $08 $82 $10
	add  d                                           ; $4f81: $82
	jr   nz, jr_098_4f04                             ; $4f82: $20 $80

	ld   b, b                                        ; $4f84: $40
	add  b                                           ; $4f85: $80
	add  b                                           ; $4f86: $80
	ld   [bc], a                                     ; $4f87: $02
	nop                                              ; $4f88: $00
	inc  e                                           ; $4f89: $1c
	dec  e                                           ; $4f8a: $1d
	add  b                                           ; $4f8b: $80
	ld   bc, $0000                                   ; $4f8c: $01 $00 $00
	add  c                                           ; $4f8f: $81
	inc  bc                                          ; $4f90: $03
	nop                                              ; $4f91: $00
	ld   [bc], a                                     ; $4f92: $02
	add  b                                           ; $4f93: $80
	dec  b                                           ; $4f94: $05
	add  b                                           ; $4f95: $80
	add  hl, bc                                      ; $4f96: $09
	add  b                                           ; $4f97: $80
	rrca                                             ; $4f98: $0f
	ld   bc, $0e09                                   ; $4f99: $01 $09 $0e
	adc  l                                           ; $4f9c: $8d
	rst  $38                                         ; $4f9d: $ff
	nop                                              ; $4f9e: $00
	rrca                                             ; $4f9f: $0f
	add  l                                           ; $4fa0: $85
	rst  $30                                         ; $4fa1: $f7
	add  b                                           ; $4fa2: $80
	or   $02                                         ; $4fa3: $f6 $02
	push af                                          ; $4fa5: $f5
	db   $f4                                         ; $4fa6: $f4
	ldh  a, [c]                                      ; $4fa7: $f2
	add  c                                           ; $4fa8: $81
	ldh  a, [$08]                                    ; $4fa9: $f0 $08
	rst  $28                                         ; $4fab: $ef
	inc  de                                          ; $4fac: $13
	inc  e                                           ; $4fad: $1c
	rra                                              ; $4fae: $1f
	inc  sp                                          ; $4faf: $33
	ccf                                              ; $4fb0: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fb1: $cf
	rst  $38                                         ; $4fb2: $ff
	ccf                                              ; $4fb3: $3f
	add  d                                           ; $4fb4: $82
	rst  $38                                         ; $4fb5: $ff
	add  b                                           ; $4fb6: $80
	ld   a, a                                        ; $4fb7: $7f
	inc  b                                           ; $4fb8: $04
	ld   [hl], a                                     ; $4fb9: $77
	adc  [hl]                                        ; $4fba: $8e
	add  hl, de                                      ; $4fbb: $19
	sbc  c                                           ; $4fbc: $99
	adc  c                                           ; $4fbd: $89
	add  b                                           ; $4fbe: $80
	jp   hl                                          ; $4fbf: $e9


	add  b                                           ; $4fc0: $80
	ld   sp, hl                                      ; $4fc1: $f9
	add  h                                           ; $4fc2: $84
	ld   hl, sp+$04                                  ; $4fc3: $f8 $04
	db   $f4                                         ; $4fc5: $f4
	db   $fc                                         ; $4fc6: $fc
	add  hl, bc                                      ; $4fc7: $09
	rrca                                             ; $4fc8: $0f
	ld   e, $81                                      ; $4fc9: $1e $81
	rra                                              ; $4fcb: $1f
	add  c                                           ; $4fcc: $81
	ccf                                              ; $4fcd: $3f
	nop                                              ; $4fce: $00
	cp   a                                           ; $4fcf: $bf
	add  d                                           ; $4fd0: $82
	rst  $38                                         ; $4fd1: $ff
	ld   a, [bc]                                     ; $4fd2: $0a
	cp   a                                           ; $4fd3: $bf
	rst  $38                                         ; $4fd4: $ff
	db   $fc                                         ; $4fd5: $fc
	ld   b, d                                        ; $4fd6: $42
	ld   h, d                                        ; $4fd7: $62
	and  d                                           ; $4fd8: $a2
	or   d                                           ; $4fd9: $b2
	sub  d                                           ; $4fda: $92
	ld   e, $cc                                      ; $4fdb: $1e $cc
	adc  h                                           ; $4fdd: $8c
	add  c                                           ; $4fde: $81
	push hl                                          ; $4fdf: $e5
	ld   b, $c5                                      ; $4fe0: $06 $c5
	ld   sp, hl                                      ; $4fe2: $f9
	jp   hl                                          ; $4fe3: $e9


	ld   sp, hl                                      ; $4fe4: $f9
	ld   l, a                                        ; $4fe5: $6f
	ld   sp, hl                                      ; $4fe6: $f9
	jp   hl                                          ; $4fe7: $e9


	add  e                                           ; $4fe8: $83
	ld   sp, hl                                      ; $4fe9: $f9
	nop                                              ; $4fea: $00
	ld   a, b                                        ; $4feb: $78
	add  c                                           ; $4fec: $81
	ld   hl, sp+$00                                  ; $4fed: $f8 $00
	db   $f4                                         ; $4fef: $f4
	add  c                                           ; $4ff0: $81
	db   $fc                                         ; $4ff1: $fc
	nop                                              ; $4ff2: $00
	ld   hl, sp-$7b                                  ; $4ff3: $f8 $85
	nop                                              ; $4ff5: $00
	add  b                                           ; $4ff6: $80
	add  b                                           ; $4ff7: $80
	add  b                                           ; $4ff8: $80
	ret  nz                                          ; $4ff9: $c0

	inc  b                                           ; $4ffa: $04
	or   b                                           ; $4ffb: $b0
	ldh  a, [$cc]                                    ; $4ffc: $f0 $cc
	db   $fc                                         ; $4ffe: $fc
	adc  a                                           ; $4fff: $8f
	xor  c                                           ; $5000: $a9
	rst  $38                                         ; $5001: $ff
	add  b                                           ; $5002: $80
	rst  $30                                         ; $5003: $f7
	add  b                                           ; $5004: $80
	xor  $86                                         ; $5005: $ee $86
	rst  $38                                         ; $5007: $ff
	add  b                                           ; $5008: $80
	rst  $30                                         ; $5009: $f7
	add  b                                           ; $500a: $80
	cp   $80                                         ; $500b: $fe $80
	db   $f4                                         ; $500d: $f4
	add  b                                           ; $500e: $80
	ld   c, $02                                      ; $500f: $0e $02
	ldh  a, [rIE]                                    ; $5011: $f0 $ff
	rrca                                             ; $5013: $0f
	sbc  e                                           ; $5014: $9b
	rst  $38                                         ; $5015: $ff
	inc  b                                           ; $5016: $04
	rlca                                             ; $5017: $07
	ld   hl, sp+$07                                  ; $5018: $f8 $07
	rst  $38                                         ; $501a: $ff
	ld   hl, sp-$77                                  ; $501b: $f8 $89
	rst  $38                                         ; $501d: $ff

jr_098_501e:
	ld   bc, $09f6                                   ; $501e: $01 $f6 $09
	add  b                                           ; $5021: $80
	sub  c                                           ; $5022: $91
	ld   bc, $e161                                   ; $5023: $01 $61 $e1
	add  b                                           ; $5026: $80
	and  c                                           ; $5027: $a1
	add  d                                           ; $5028: $82
	and  d                                           ; $5029: $a2
	add  d                                           ; $502a: $82
	and  h                                           ; $502b: $a4
	nop                                              ; $502c: $00
	ld   a, b                                        ; $502d: $78
	adc  l                                           ; $502e: $8d
	rst  $38                                         ; $502f: $ff
	ld   [bc], a                                     ; $5030: $02
	rrca                                             ; $5031: $0f
	ldh  a, [$e8]                                    ; $5032: $f0 $e8
	add  c                                           ; $5034: $81
	ldh  [rP1], a                                    ; $5035: $e0 $00
	ret  nc                                          ; $5037: $d0

	add  c                                           ; $5038: $81
	ret  nz                                          ; $5039: $c0

	nop                                              ; $503a: $00
	and  b                                           ; $503b: $a0
	add  c                                           ; $503c: $81
	add  b                                           ; $503d: $80
	ld   [bc], a                                     ; $503e: $02
	ld   b, b                                        ; $503f: $40
	nop                                              ; $5040: $00
	ld   [$7783], sp                                 ; $5041: $08 $83 $77
	adc  b                                           ; $5044: $88
	di                                               ; $5045: $f3
	ld   [bc], a                                     ; $5046: $02
	ei                                               ; $5047: $fb
	db   $fc                                         ; $5048: $fc
	call c, $fc81                                    ; $5049: $dc $81 $fc
	nop                                              ; $504c: $00
	jp   z, $fe81                                    ; $504d: $ca $81 $fe

	nop                                              ; $5050: $00
	push hl                                          ; $5051: $e5
	add  c                                           ; $5052: $81
	rst  $38                                         ; $5053: $ff
	ld   [bc], a                                     ; $5054: $02
	cp   [hl]                                        ; $5055: $be
	cp   a                                           ; $5056: $bf
	ld   d, a                                        ; $5057: $57
	add  c                                           ; $5058: $81
	rst  $38                                         ; $5059: $ff
	ld   [bc], a                                     ; $505a: $02
	rrca                                             ; $505b: $0f
	ld   a, a                                        ; $505c: $7f
	ld   h, a                                        ; $505d: $67
	add  c                                           ; $505e: $81
	ld   a, a                                        ; $505f: $7f
	inc  bc                                          ; $5060: $03
	ld   [hl], e                                     ; $5061: $73
	ld   a, a                                        ; $5062: $7f
	add  hl, de                                      ; $5063: $19
	ccf                                              ; $5064: $3f
	add  b                                           ; $5065: $80
	cp   a                                           ; $5066: $bf
	inc  b                                           ; $5067: $04
	ld   a, [de]                                     ; $5068: $1a
	db   $fd                                         ; $5069: $fd
	ld   sp, hl                                      ; $506a: $f9
	rst  $38                                         ; $506b: $ff
	cp   $87                                         ; $506c: $fe $87
	rst  $38                                         ; $506e: $ff
	nop                                              ; $506f: $00
	ld   sp, hl                                      ; $5070: $f9
	add  b                                           ; $5071: $80
	rst  $38                                         ; $5072: $ff
	add  c                                           ; $5073: $81
	db   $fc                                         ; $5074: $fc
	nop                                              ; $5075: $00
	ld   a, [$fe81]                                  ; $5076: $fa $81 $fe
	add  d                                           ; $5079: $82
	rst  $38                                         ; $507a: $ff
	rlca                                             ; $507b: $07
	ld   a, [$fbff]                                  ; $507c: $fa $ff $fb
	rst  $38                                         ; $507f: $ff
	ld   [hl], e                                     ; $5080: $73
	di                                               ; $5081: $f3
	ld   a, [$82f9]                                  ; $5082: $fa $f9 $82
	db   $fd                                         ; $5085: $fd
	ld   bc, $ee6f                                   ; $5086: $01 $6f $ee
	add  b                                           ; $5089: $80
	or   $80                                         ; $508a: $f6 $80
	rst  $30                                         ; $508c: $f7
	inc  bc                                          ; $508d: $03
	di                                               ; $508e: $f3
	rst  $30                                         ; $508f: $f7
	inc  b                                           ; $5090: $04
	rst  $38                                         ; $5091: $ff
	add  b                                           ; $5092: $80
	ld   a, a                                        ; $5093: $7f
	add  b                                           ; $5094: $80
	xor  a                                           ; $5095: $af
	add  b                                           ; $5096: $80
	ld   d, d                                        ; $5097: $52
	ld   bc, $75f5                                   ; $5098: $01 $f5 $75
	add  b                                           ; $509b: $80
	jr   nz, jr_098_501e                             ; $509c: $20 $80

	ld   d, l                                        ; $509e: $55
	ld   [bc], a                                     ; $509f: $02
	ldh  [c], a                                      ; $50a0: $e2
	ld   [hl+], a                                    ; $50a1: $22
	cp   a                                           ; $50a2: $bf
	add  c                                           ; $50a3: $81
	rst  $38                                         ; $50a4: $ff
	add  b                                           ; $50a5: $80
	rst  JumpTable                                         ; $50a6: $df
	add  b                                           ; $50a7: $80
	or   [hl]                                        ; $50a8: $b6
	add  b                                           ; $50a9: $80
	ld   e, c                                        ; $50aa: $59
	add  b                                           ; $50ab: $80
	adc  d                                           ; $50ac: $8a
	add  b                                           ; $50ad: $80
	ld   d, c                                        ; $50ae: $51
	add  b                                           ; $50af: $80
	and  d                                           ; $50b0: $a2
	add  b                                           ; $50b1: $80
	db   $fd                                         ; $50b2: $fd
	add  b                                           ; $50b3: $80
	and  d                                           ; $50b4: $a2
	add  b                                           ; $50b5: $80
	call nc, $ca80                                   ; $50b6: $d4 $80 $ca
	add  b                                           ; $50b9: $80
	dec  d                                           ; $50ba: $15
	add  b                                           ; $50bb: $80
	xor  d                                           ; $50bc: $aa
	add  d                                           ; $50bd: $82
	nop                                              ; $50be: $00
	add  b                                           ; $50bf: $80
	ld   d, h                                        ; $50c0: $54
	add  b                                           ; $50c1: $80
	xor  d                                           ; $50c2: $aa
	add  b                                           ; $50c3: $80
	ld   d, h                                        ; $50c4: $54
	add  b                                           ; $50c5: $80
	xor  d                                           ; $50c6: $aa
	add  b                                           ; $50c7: $80
	ld   de, $0084                                   ; $50c8: $11 $84 $00
	ld   [bc], a                                     ; $50cb: $02
	rra                                              ; $50cc: $1f
	rst  $38                                         ; $50cd: $ff
	rra                                              ; $50ce: $1f
	add  b                                           ; $50cf: $80
	ldh  [$03], a                                    ; $50d0: $e0 $03
	rra                                              ; $50d2: $1f
	nop                                              ; $50d3: $00
	rst  $38                                         ; $50d4: $ff
	rra                                              ; $50d5: $1f
	add  l                                           ; $50d6: $85
	rst  $38                                         ; $50d7: $ff
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	add  b                                           ; $50da: $80
	rst  $38                                         ; $50db: $ff
	add  b                                           ; $50dc: $80
	nop                                              ; $50dd: $00
	ld   bc, $00ff                                   ; $50de: $01 $ff $00
	add  a                                           ; $50e1: $87
	rst  $38                                         ; $50e2: $ff
	ld   [bc], a                                     ; $50e3: $02
	rlca                                             ; $50e4: $07
	rst  $38                                         ; $50e5: $ff
	ld   hl, sp-$80                                  ; $50e6: $f8 $80
	rlca                                             ; $50e8: $07
	inc  bc                                          ; $50e9: $03
	ld   hl, sp+$00                                  ; $50ea: $f8 $00
	rst  $38                                         ; $50ec: $ff
	ld   hl, sp-$7b                                  ; $50ed: $f8 $85
	rst  $38                                         ; $50ef: $ff
	nop                                              ; $50f0: $00
	rst  $10                                         ; $50f1: $d7
	add  c                                           ; $50f2: $81
	xor  b                                           ; $50f3: $a8
	ld   [bc], a                                     ; $50f4: $02
	ld   l, b                                        ; $50f5: $68
	add  sp, -$0f                                    ; $50f6: $e8 $f1
	add  b                                           ; $50f8: $80
	ld   sp, $d102                                   ; $50f9: $31 $02 $d1
	ld   [de], a                                     ; $50fc: $12
	or   d                                           ; $50fd: $b2
	add  b                                           ; $50fe: $80
	and  d                                           ; $50ff: $a2
	add  b                                           ; $5100: $80
	and  h                                           ; $5101: $a4
	ld   e, d                                        ; $5102: $5a
	ld   bc, $1808                                   ; $5103: $01 $08 $18
	nop                                              ; $5106: $00
	inc  b                                           ; $5107: $04
	nop                                              ; $5108: $00
	ld   [de], a                                     ; $5109: $12

jr_098_510a:
	nop                                              ; $510a: $00
	ld   c, $00                                      ; $510b: $0e $00
	ld   bc, $0083                                   ; $510d: $01 $83 $00
	nop                                              ; $5110: $00
	ld   bc, $0081                                   ; $5111: $01 $81 $00
	ld   a, [bc]                                     ; $5114: $0a
	jp   nz, $2000                                   ; $5115: $c2 $00 $20

	nop                                              ; $5118: $00
	ld   [hl+], a                                    ; $5119: $22
	nop                                              ; $511a: $00
	add  b                                           ; $511b: $80
	nop                                              ; $511c: $00
	ret  nz                                          ; $511d: $c0

	nop                                              ; $511e: $00
	add  b                                           ; $511f: $80
	adc  c                                           ; $5120: $89
	nop                                              ; $5121: $00
	inc  d                                           ; $5122: $14
	ret  nz                                          ; $5123: $c0

	nop                                              ; $5124: $00
	jr   nz, jr_098_5127                             ; $5125: $20 $00

jr_098_5127:
	ret  nz                                          ; $5127: $c0

	nop                                              ; $5128: $00
	ld   h, b                                        ; $5129: $60
	nop                                              ; $512a: $00
	ld   h, b                                        ; $512b: $60
	nop                                              ; $512c: $00
	stop                                             ; $512d: $10 $00
	ld   [$a000], sp                                 ; $512f: $08 $00 $a0
	nop                                              ; $5132: $00
	inc  d                                           ; $5133: $14
	nop                                              ; $5134: $00
	adc  b                                           ; $5135: $88
	nop                                              ; $5136: $00
	inc  b                                           ; $5137: $04
	add  c                                           ; $5138: $81
	nop                                              ; $5139: $00
	ld   b, $47                                      ; $513a: $06 $47
	nop                                              ; $513c: $00
	jr   jr_098_513f                                 ; $513d: $18 $00

jr_098_513f:
	ld   bc, $3600                                   ; $513f: $01 $00 $36
	add  c                                           ; $5142: $81
	nop                                              ; $5143: $00
	inc  bc                                          ; $5144: $03
	ld   [$8200], sp                                 ; $5145: $08 $00 $82
	ld   [bc], a                                     ; $5148: $02
	add  b                                           ; $5149: $80
	inc  bc                                          ; $514a: $03
	dec  b                                           ; $514b: $05
	add  [hl]                                        ; $514c: $86
	ld   b, $40                                      ; $514d: $06 $40
	nop                                              ; $514f: $00
	inc  hl                                          ; $5150: $23
	inc  bc                                          ; $5151: $03
	add  h                                           ; $5152: $84
	rlca                                             ; $5153: $07
	add  b                                           ; $5154: $80
	nop                                              ; $5155: $00
	ld   b, $0e                                      ; $5156: $06 $0e
	nop                                              ; $5158: $00
	dec  b                                           ; $5159: $05
	nop                                              ; $515a: $00
	ld   [$0300], sp                                 ; $515b: $08 $00 $03
	add  l                                           ; $515e: $85
	nop                                              ; $515f: $00
	ld   [$0040], sp                                 ; $5160: $08 $40 $00
	jr   nz, jr_098_5165                             ; $5163: $20 $00

jr_098_5165:
	inc  e                                           ; $5165: $1c
	nop                                              ; $5166: $00
	ld   c, l                                        ; $5167: $4d
	nop                                              ; $5168: $00
	ld   sp, $0083                                   ; $5169: $31 $83 $00
	ld   [$0004], sp                                 ; $516c: $08 $04 $00
	ld   [de], a                                     ; $516f: $12
	nop                                              ; $5170: $00
	dec  [hl]                                        ; $5171: $35
	nop                                              ; $5172: $00
	and  e                                           ; $5173: $a3
	nop                                              ; $5174: $00
	add  b                                           ; $5175: $80
	add  c                                           ; $5176: $81
	nop                                              ; $5177: $00
	ld   c, $08                                      ; $5178: $0e $08
	nop                                              ; $517a: $00
	inc  b                                           ; $517b: $04
	nop                                              ; $517c: $00
	inc  e                                           ; $517d: $1c
	nop                                              ; $517e: $00
	ld   d, b                                        ; $517f: $50
	nop                                              ; $5180: $00
	ld   b, b                                        ; $5181: $40
	nop                                              ; $5182: $00
	ld   b, c                                        ; $5183: $41
	nop                                              ; $5184: $00
	ld   l, b                                        ; $5185: $68
	nop                                              ; $5186: $00
	jr   z, jr_098_510a                              ; $5187: $28 $81

	nop                                              ; $5189: $00
	ld   [bc], a                                     ; $518a: $02
	inc  bc                                          ; $518b: $03
	nop                                              ; $518c: $00
	ld   [bc], a                                     ; $518d: $02
	add  e                                           ; $518e: $83
	nop                                              ; $518f: $00
	nop                                              ; $5190: $00
	ldh  [$81], a                                    ; $5191: $e0 $81
	nop                                              ; $5193: $00
	inc  bc                                          ; $5194: $03
	ret  nc                                          ; $5195: $d0

	nop                                              ; $5196: $00
	and  b                                           ; $5197: $a0
	add  b                                           ; $5198: $80
	add  b                                           ; $5199: $80
	ret  nz                                          ; $519a: $c0

	ld   a, [bc]                                     ; $519b: $0a
	sub  b                                           ; $519c: $90
	add  b                                           ; $519d: $80
	inc  bc                                          ; $519e: $03
	nop                                              ; $519f: $00
	ld   b, d                                        ; $51a0: $42
	ld   b, b                                        ; $51a1: $40
	ld   b, c                                        ; $51a2: $41
	ld   b, b                                        ; $51a3: $40
	ld   b, e                                        ; $51a4: $43
	ld   b, b                                        ; $51a5: $40
	ld   b, c                                        ; $51a6: $41
	add  c                                           ; $51a7: $81
	ld   b, b                                        ; $51a8: $40
	nop                                              ; $51a9: $00
	ld   b, $81                                      ; $51aa: $06 $81
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	ld   a, [bc]                                     ; $51ae: $0a
	add  c                                           ; $51af: $81

jr_098_51b0:
	nop                                              ; $51b0: $00
	ld   [$0012], sp                                 ; $51b1: $08 $12 $00
	ret  nc                                          ; $51b4: $d0

	nop                                              ; $51b5: $00
	inc  a                                           ; $51b6: $3c
	nop                                              ; $51b7: $00
	ret  nc                                          ; $51b8: $d0

	nop                                              ; $51b9: $00
	jr   nz, @-$73                                   ; $51ba: $20 $8b

	nop                                              ; $51bc: $00
	ld   a, [bc]                                     ; $51bd: $0a
	ld   b, b                                        ; $51be: $40
	nop                                              ; $51bf: $00
	jr   nz, jr_098_51c2                             ; $51c0: $20 $00

jr_098_51c2:
	ld   b, b                                        ; $51c2: $40
	nop                                              ; $51c3: $00
	ld   h, b                                        ; $51c4: $60
	nop                                              ; $51c5: $00
	ld   e, h                                        ; $51c6: $5c
	nop                                              ; $51c7: $00
	inc  e                                           ; $51c8: $1c
	add  e                                           ; $51c9: $83
	nop                                              ; $51ca: $00
	ld   b, $49                                      ; $51cb: $06 $49
	nop                                              ; $51cd: $00
	ld   e, [hl]                                     ; $51ce: $5e
	nop                                              ; $51cf: $00
	inc  e                                           ; $51d0: $1c
	nop                                              ; $51d1: $00
	ld   b, $81                                      ; $51d2: $06 $81
	nop                                              ; $51d4: $00
	ld   [$0013], sp                                 ; $51d5: $08 $13 $00
	jr   nz, jr_098_51da                             ; $51d8: $20 $00

jr_098_51da:
	ld   l, [hl]                                     ; $51da: $6e
	nop                                              ; $51db: $00
	jr   nc, jr_098_51de                             ; $51dc: $30 $00

jr_098_51de:
	ld   h, b                                        ; $51de: $60
	adc  c                                           ; $51df: $89
	nop                                              ; $51e0: $00
	ld   a, [bc]                                     ; $51e1: $0a
	stop                                             ; $51e2: $10 $00
	inc  h                                           ; $51e4: $24
	nop                                              ; $51e5: $00
	rla                                              ; $51e6: $17
	nop                                              ; $51e7: $00
	ld   h, e                                        ; $51e8: $63
	nop                                              ; $51e9: $00
	add  b                                           ; $51ea: $80
	nop                                              ; $51eb: $00
	ret  nz                                          ; $51ec: $c0

jr_098_51ed:
	add  d                                           ; $51ed: $82
	nop                                              ; $51ee: $00
	add  hl, bc                                      ; $51ef: $09
	ld   h, b                                        ; $51f0: $60
	ldh  [rP1], a                                    ; $51f1: $e0 $00
	jr   nz, jr_098_51f5                             ; $51f3: $20 $00

jr_098_51f5:
	ld   h, h                                        ; $51f5: $64
	nop                                              ; $51f6: $00
	ld   b, l                                        ; $51f7: $45
	nop                                              ; $51f8: $00
	add  c                                           ; $51f9: $81
	adc  c                                           ; $51fa: $89
	nop                                              ; $51fb: $00
	ld   b, $14                                      ; $51fc: $06 $14
	nop                                              ; $51fe: $00
	jr   jr_098_5201                                 ; $51ff: $18 $00

jr_098_5201:
	ld   c, $00                                      ; $5201: $0e $00
	ld   [bc], a                                     ; $5203: $02
	add  a                                           ; $5204: $87
	nop                                              ; $5205: $00
	ld   c, $01                                      ; $5206: $0e $01
	nop                                              ; $5208: $00
	dec  b                                           ; $5209: $05
	nop                                              ; $520a: $00
	rlca                                             ; $520b: $07
	nop                                              ; $520c: $00
	ld   b, d                                        ; $520d: $42
	nop                                              ; $520e: $00
	ld   [hl], b                                     ; $520f: $70
	nop                                              ; $5210: $00
	jr   nz, jr_098_5213                             ; $5211: $20 $00

jr_098_5213:
	ld   [bc], a                                     ; $5213: $02
	nop                                              ; $5214: $00
	inc  de                                          ; $5215: $13
	sbc  c                                           ; $5216: $99
	nop                                              ; $5217: $00
	add  b                                           ; $5218: $80
	rrca                                             ; $5219: $0f
	add  b                                           ; $521a: $80
	nop                                              ; $521b: $00
	ld   a, [bc]                                     ; $521c: $0a
	ld   h, $00                                      ; $521d: $26 $00
	add  hl, de                                      ; $521f: $19
	nop                                              ; $5220: $00
	ld   h, a                                        ; $5221: $67
	nop                                              ; $5222: $00
	ld   a, c                                        ; $5223: $79
	nop                                              ; $5224: $00
	add  hl, sp                                      ; $5225: $39
	nop                                              ; $5226: $00
	jr   jr_098_51b0                                 ; $5227: $18 $87

	nop                                              ; $5229: $00
	inc  b                                           ; $522a: $04
	ld   bc, $3f00                                   ; $522b: $01 $00 $3f
	nop                                              ; $522e: $00
	ld   a, $81                                      ; $522f: $3e $81
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	inc  bc                                          ; $5233: $03
	add  b                                           ; $5234: $80
	nop                                              ; $5235: $00
	add  b                                           ; $5236: $80
	inc  bc                                          ; $5237: $03
	add  hl, bc                                      ; $5238: $09
	nop                                              ; $5239: $00
	rst  $38                                         ; $523a: $ff
	nop                                              ; $523b: $00
	ei                                               ; $523c: $fb
	nop                                              ; $523d: $00
	inc  b                                           ; $523e: $04
	nop                                              ; $523f: $00
	ccf                                              ; $5240: $3f
	nop                                              ; $5241: $00
	inc  a                                           ; $5242: $3c
	add  c                                           ; $5243: $81
	nop                                              ; $5244: $00
	ld   [bc], a                                     ; $5245: $02
	inc  bc                                          ; $5246: $03
	nop                                              ; $5247: $00
	inc  bc                                          ; $5248: $03
	add  c                                           ; $5249: $81
	nop                                              ; $524a: $00
	ld   [bc], a                                     ; $524b: $02
	rst  $38                                         ; $524c: $ff
	nop                                              ; $524d: $00
	rst  $38                                         ; $524e: $ff
	adc  c                                           ; $524f: $89
	nop                                              ; $5250: $00

jr_098_5251:
	ld   a, [bc]                                     ; $5251: $0a
	ret  nz                                          ; $5252: $c0

	nop                                              ; $5253: $00
	cp   h                                           ; $5254: $bc
	nop                                              ; $5255: $00
	jp   $e400                                       ; $5256: $c3 $00 $e4


	nop                                              ; $5259: $00
	scf                                              ; $525a: $37
	nop                                              ; $525b: $00
	inc  c                                           ; $525c: $0c
	add  c                                           ; $525d: $81
	nop                                              ; $525e: $00
	inc  b                                           ; $525f: $04
	ld   d, c                                        ; $5260: $51
	nop                                              ; $5261: $00
	pop  bc                                          ; $5262: $c1
	nop                                              ; $5263: $00
	ldh  a, [$81]                                    ; $5264: $f0 $81
	nop                                              ; $5266: $00
	ld   [bc], a                                     ; $5267: $02
	ldh  [rP1], a                                    ; $5268: $e0 $00
	jr   nz, jr_098_51ed                             ; $526a: $20 $81

	nop                                              ; $526c: $00
	ld   [bc], a                                     ; $526d: $02
	ld   b, b                                        ; $526e: $40
	nop                                              ; $526f: $00
	add  b                                           ; $5270: $80
	and  e                                           ; $5271: $a3
	nop                                              ; $5272: $00
	inc  b                                           ; $5273: $04
	ld   c, $00                                      ; $5274: $0e $00
	dec  c                                           ; $5276: $0d
	nop                                              ; $5277: $00
	inc  bc                                          ; $5278: $03
	add  c                                           ; $5279: $81
	nop                                              ; $527a: $00
	add  b                                           ; $527b: $80
	add  b                                           ; $527c: $80
	inc  c                                           ; $527d: $0c
	and  b                                           ; $527e: $a0
	add  b                                           ; $527f: $80
	ldh  [rP1], a                                    ; $5280: $e0 $00
	db   $f4                                         ; $5282: $f4
	nop                                              ; $5283: $00
	push af                                          ; $5284: $f5
	nop                                              ; $5285: $00
	ld   sp, hl                                      ; $5286: $f9
	nop                                              ; $5287: $00
	ld   b, b                                        ; $5288: $40
	nop                                              ; $5289: $00
	ld   b, h                                        ; $528a: $44
	add  c                                           ; $528b: $81
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	ld   [hl+], a                                    ; $528e: $22
	add  c                                           ; $528f: $81
	nop                                              ; $5290: $00
	ld   a, [hl+]                                    ; $5291: $2a
	ret  nz                                          ; $5292: $c0

	nop                                              ; $5293: $00
	push bc                                          ; $5294: $c5
	nop                                              ; $5295: $00
	dec  b                                           ; $5296: $05
	nop                                              ; $5297: $00
	rra                                              ; $5298: $1f
	nop                                              ; $5299: $00
	ld   a, [de]                                     ; $529a: $1a
	nop                                              ; $529b: $00
	xor  [hl]                                        ; $529c: $ae
	add  b                                           ; $529d: $80
	cp   d                                           ; $529e: $ba
	nop                                              ; $529f: $00
	ld   a, [$cc00]                                  ; $52a0: $fa $00 $cc
	nop                                              ; $52a3: $00
	ld   b, b                                        ; $52a4: $40
	nop                                              ; $52a5: $00
	add  sp, $00                                     ; $52a6: $e8 $00
	inc  bc                                          ; $52a8: $03
	nop                                              ; $52a9: $00
	db   $d3                                         ; $52aa: $d3
	nop                                              ; $52ab: $00
	ld   b, a                                        ; $52ac: $47
	nop                                              ; $52ad: $00
	sub  b                                           ; $52ae: $90
	nop                                              ; $52af: $00
	ld   l, b                                        ; $52b0: $68
	nop                                              ; $52b1: $00
	or   b                                           ; $52b2: $b0
	nop                                              ; $52b3: $00
	call nz, Boot                                    ; $52b4: $c4 $00 $01
	nop                                              ; $52b7: $00
	ld   [de], a                                     ; $52b8: $12
	nop                                              ; $52b9: $00
	ld   bc, $2800                                   ; $52ba: $01 $00 $28
	add  c                                           ; $52bd: $81
	nop                                              ; $52be: $00
	rrca                                             ; $52bf: $0f
	stop                                             ; $52c0: $10 $00
	ld   [hl+], a                                    ; $52c2: $22
	nop                                              ; $52c3: $00
	ld   bc, $0200                                   ; $52c4: $01 $00 $02
	nop                                              ; $52c7: $00
	ld   bc, $1800                                   ; $52c8: $01 $00 $18
	nop                                              ; $52cb: $00
	ld   d, b                                        ; $52cc: $50
	nop                                              ; $52cd: $00
	ld   l, h                                        ; $52ce: $6c
	jr   nz, jr_098_5251                             ; $52cf: $20 $80

	ld   d, b                                        ; $52d1: $50
	ld   bc, $282e                                   ; $52d2: $01 $2e $28
	add  b                                           ; $52d5: $80
	db   $10                                         ; $52d6: $10
	ld   [$282b], sp                                 ; $52d7: $08 $2b $28
	ld   [de], a                                     ; $52da: $12
	db   $10                                         ; $52db: $10
	rrca                                             ; $52dc: $0f
	nop                                              ; $52dd: $00
	inc  e                                           ; $52de: $1c
	nop                                              ; $52df: $00
	db   $10                                         ; $52e0: $10
	rst  $38                                         ; $52e1: $ff
	nop                                              ; $52e2: $00
	rst  $38                                         ; $52e3: $ff
	nop                                              ; $52e4: $00
	rst  $38                                         ; $52e5: $ff
	nop                                              ; $52e6: $00
	rst  $38                                         ; $52e7: $ff
	nop                                              ; $52e8: $00
	rst  $38                                         ; $52e9: $ff
	nop                                              ; $52ea: $00
	rst  $38                                         ; $52eb: $ff
	nop                                              ; $52ec: $00
	rst  $38                                         ; $52ed: $ff
	nop                                              ; $52ee: $00
	rst  $38                                         ; $52ef: $ff
	nop                                              ; $52f0: $00
	rst  $38                                         ; $52f1: $ff
	nop                                              ; $52f2: $00
	rst  $38                                         ; $52f3: $ff
	nop                                              ; $52f4: $00
	rst  $38                                         ; $52f5: $ff
	nop                                              ; $52f6: $00
	sbc  h                                           ; $52f7: $9c
	nop                                              ; $52f8: $00
	nop                                              ; $52f9: $00
	rst  $38                                         ; $52fa: $ff
	add  b                                           ; $52fb: $80
	db   $ec                                         ; $52fc: $ec
	dec  b                                           ; $52fd: $05
	ldh  [c], a                                      ; $52fe: $e2
	ld   [$e3eb], a                                  ; $52ff: $ea $eb $e3
	or   e                                           ; $5302: $b3
	or   a                                           ; $5303: $b7
	add  b                                           ; $5304: $80
	push af                                          ; $5305: $f5
	dec  bc                                          ; $5306: $0b
	dec  b                                           ; $5307: $05
	rst  $28                                         ; $5308: $ef
	xor  $0e                                         ; $5309: $ee $0e
	xor  $e4                                         ; $530b: $ee $e4
	and  d                                           ; $530d: $a2
	and  l                                           ; $530e: $a5
	ld   a, [$c8f9]                                  ; $530f: $fa $f9 $c8
	ret                                              ; $5312: $c9


	add  b                                           ; $5313: $80
	dec  h                                           ; $5314: $25

jr_098_5315:
	ld   bc, $5455                                   ; $5315: $01 $55 $54
	add  b                                           ; $5318: $80
	ld   a, [hl+]                                    ; $5319: $2a
	add  b                                           ; $531a: $80
	sub  d                                           ; $531b: $92
	dec  d                                           ; $531c: $15
	xor  c                                           ; $531d: $a9
	add  hl, hl                                      ; $531e: $29
	push de                                          ; $531f: $d5
	ld   d, l                                        ; $5320: $55
	add  hl, hl                                      ; $5321: $29
	cp   l                                           ; $5322: $bd
	ld   d, l                                        ; $5323: $55
	and  c                                           ; $5324: $a1
	ld   b, c                                        ; $5325: $41
	or   c                                           ; $5326: $b1
	adc  d                                           ; $5327: $8a
	or   $e8                                         ; $5328: $f6 $e8
	or   $f1                                         ; $532a: $f6 $f1
	ld   a, a                                        ; $532c: $7f
	ld   a, h                                        ; $532d: $7c
	jr   jr_098_5315                                 ; $532e: $18 $e5

	db   $ed                                         ; $5330: $ed
	db   $e3                                         ; $5331: $e3
	di                                               ; $5332: $f3
	add  b                                           ; $5333: $80
	ld   [$d080], a                                  ; $5334: $ea $80 $d0
	dec  bc                                          ; $5337: $0b
	ld   b, [hl]                                     ; $5338: $46
	ld   d, a                                        ; $5339: $57
	sub  c                                           ; $533a: $91
	or   h                                           ; $533b: $b4
	inc  h                                           ; $533c: $24

jr_098_533d:
	sbc  b                                           ; $533d: $98
	ld   b, c                                        ; $533e: $41
	inc  bc                                          ; $533f: $03
	ld   [hl+], a                                    ; $5340: $22
	xor  [hl]                                        ; $5341: $ae
	or   d                                           ; $5342: $b2
	or   $80                                         ; $5343: $f6 $80
	jr   c, jr_098_5353                              ; $5345: $38 $0c

	sbc  b                                           ; $5347: $98
	cp   e                                           ; $5348: $bb
	xor  h                                           ; $5349: $ac
	adc  h                                           ; $534a: $8c
	inc  b                                           ; $534b: $04
	ccf                                              ; $534c: $3f
	jr   c, @+$16                                    ; $534d: $38 $14

	ld   [de], a                                     ; $534f: $12
	db   $fd                                         ; $5350: $fd
	ld   [bc], a                                     ; $5351: $02
	ei                                               ; $5352: $fb

jr_098_5353:
	nop                                              ; $5353: $00
	add  b                                           ; $5354: $80
	cp   $80                                         ; $5355: $fe $80
	ld   [bc], a                                     ; $5357: $02
	inc  bc                                          ; $5358: $03
	ld   a, [$f802]                                  ; $5359: $fa $02 $f8
	nop                                              ; $535c: $00
	add  b                                           ; $535d: $80
	rst  $38                                         ; $535e: $ff
	add  b                                           ; $535f: $80
	nop                                              ; $5360: $00
	ld   bc, $7384                                   ; $5361: $01 $84 $73
	add  c                                           ; $5364: $81
	rst  $30                                         ; $5365: $f7
	add  b                                           ; $5366: $80
	ld   d, a                                        ; $5367: $57
	nop                                              ; $5368: $00
	nop                                              ; $5369: $00
	add  b                                           ; $536a: $80
	rst  $38                                         ; $536b: $ff
	add  b                                           ; $536c: $80
	nop                                              ; $536d: $00
	add  b                                           ; $536e: $80
	rst  $38                                         ; $536f: $ff
	add  b                                           ; $5370: $80
	nop                                              ; $5371: $00
	rlca                                             ; $5372: $07
	add  hl, de                                      ; $5373: $19
	ret  c                                           ; $5374: $d8

	add  $c0                                         ; $5375: $c6 $c0
	ld   hl, sp-$80                                  ; $5377: $f8 $80
	cp   a                                           ; $5379: $bf
	nop                                              ; $537a: $00
	add  b                                           ; $537b: $80
	rst  $38                                         ; $537c: $ff
	add  b                                           ; $537d: $80
	nop                                              ; $537e: $00
	add  b                                           ; $537f: $80
	rst  $38                                         ; $5380: $ff
	add  c                                           ; $5381: $81
	nop                                              ; $5382: $00
	add  b                                           ; $5383: $80
	ld   d, e                                        ; $5384: $53
	inc  b                                           ; $5385: $04
	ld   c, h                                        ; $5386: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5387: $cf

jr_098_5388:
	jr   nc, jr_098_533d                             ; $5388: $30 $b3

	nop                                              ; $538a: $00
	add  b                                           ; $538b: $80
	rst  $38                                         ; $538c: $ff
	add  b                                           ; $538d: $80
	nop                                              ; $538e: $00
	add  b                                           ; $538f: $80
	rst  $38                                         ; $5390: $ff
	add  b                                           ; $5391: $80
	nop                                              ; $5392: $00
	rlca                                             ; $5393: $07
	add  hl, sp                                      ; $5394: $39
	ccf                                              ; $5395: $3f
	sbc  $1f                                         ; $5396: $de $1f
	inc  hl                                          ; $5398: $23
	rlca                                             ; $5399: $07
	db   $e3                                         ; $539a: $e3
	nop                                              ; $539b: $00
	add  b                                           ; $539c: $80
	rst  $38                                         ; $539d: $ff
	add  b                                           ; $539e: $80
	nop                                              ; $539f: $00
	add  b                                           ; $53a0: $80
	rst  $38                                         ; $53a1: $ff
	add  b                                           ; $53a2: $80
	nop                                              ; $53a3: $00
	rla                                              ; $53a4: $17
	jr   z, @+$03                                    ; $53a5: $28 $01

	ld   hl, $b980                                   ; $53a7: $21 $80 $b9
	add  c                                           ; $53aa: $81
	ldh  a, [rTMA]                                   ; $53ab: $f0 $06
	add  [hl]                                        ; $53ad: $86
	sbc  b                                           ; $53ae: $98
	ld   a, e                                        ; $53af: $7b
	nop                                              ; $53b0: $00
	call c, $1ce3                                    ; $53b1: $dc $e3 $1c
	nop                                              ; $53b4: $00
	ld   [$5440], sp                                 ; $53b5: $08 $40 $54
	ld   c, h                                        ; $53b8: $4c
	ld   e, d                                        ; $53b9: $5a
	ld   [bc], a                                     ; $53ba: $02
	ld   c, [hl]                                     ; $53bb: $4e
	ld   d, d                                        ; $53bc: $52
	add  b                                           ; $53bd: $80
	ld   [de], a                                     ; $53be: $12
	ld   b, $f2                                      ; $53bf: $06 $f2
	ld   [hl+], a                                    ; $53c1: $22
	jr   c, jr_098_5388                              ; $53c2: $38 $c4

	jr   c, jr_098_53c6                              ; $53c4: $38 $00

jr_098_53c6:
	ld   [$0a83], a                                  ; $53c6: $ea $83 $0a
	inc  b                                           ; $53c9: $04
	jp   z, $3a0a                                    ; $53ca: $ca $0a $3a

	jp   z, $80da                                    ; $53cd: $ca $da $80

	ldh  [c], a                                      ; $53d0: $e2
	add  hl, bc                                      ; $53d1: $09
	ld   [hl+], a                                    ; $53d2: $22
	and  d                                           ; $53d3: $a2
	ld   b, d                                        ; $53d4: $42
	sbc  e                                           ; $53d5: $9b
	ld   b, b                                        ; $53d6: $40
	ld   c, [hl]                                     ; $53d7: $4e
	ld   d, b                                        ; $53d8: $50
	ld   c, b                                        ; $53d9: $48
	ld   b, h                                        ; $53da: $44
	ld   d, h                                        ; $53db: $54
	add  a                                           ; $53dc: $87
	ld   b, h                                        ; $53dd: $44
	ld   [bc], a                                     ; $53de: $02
	rst  $28                                         ; $53df: $ef
	nop                                              ; $53e0: $00
	ld   [bc], a                                     ; $53e1: $02
	add  c                                           ; $53e2: $81
	ld   bc, $0300                                   ; $53e3: $01 $00 $03
	add  c                                           ; $53e6: $81
	nop                                              ; $53e7: $00
	rlca                                             ; $53e8: $07
	ld   bc, $0100                                   ; $53e9: $01 $00 $01
	nop                                              ; $53ec: $00
	ld   b, $01                                      ; $53ed: $06 $01
	ei                                               ; $53ef: $fb
	dec  d                                           ; $53f0: $15
	add  c                                           ; $53f1: $81
	inc  de                                          ; $53f2: $13
	ld   bc, $2f2b                                   ; $53f3: $01 $2b $2f
	add  b                                           ; $53f6: $80
	xor  l                                           ; $53f7: $ad
	add  b                                           ; $53f8: $80
	di                                               ; $53f9: $f3
	add  b                                           ; $53fa: $80
	ld   d, h                                        ; $53fb: $54
	add  hl, bc                                      ; $53fc: $09

jr_098_53fd:
	rla                                              ; $53fd: $17
	sub  e                                           ; $53fe: $93
	ld   b, e                                        ; $53ff: $43
	rst  ToBoot                                         ; $5400: $c7
	nop                                              ; $5401: $00
	inc  a                                           ; $5402: $3c
	inc  l                                           ; $5403: $2c
	ld   c, d                                        ; $5404: $4a
	ld   e, d                                        ; $5405: $5a
	ld   h, [hl]                                     ; $5406: $66
	add  b                                           ; $5407: $80
	ld   h, $00                                      ; $5408: $26 $00
	ld   h, [hl]                                     ; $540a: $66
	add  b                                           ; $540b: $80
	ld   e, d                                        ; $540c: $5a
	add  b                                           ; $540d: $80
	inc  a                                           ; $540e: $3c
	add  d                                           ; $540f: $82
	nop                                              ; $5410: $00
	add  b                                           ; $5411: $80
	rst  $38                                         ; $5412: $ff
	add  b                                           ; $5413: $80
	nop                                              ; $5414: $00
	inc  bc                                          ; $5415: $03
	ld   a, [$fa02]                                  ; $5416: $fa $02 $fa
	ld   [bc], a                                     ; $5419: $02
	add  b                                           ; $541a: $80
	cp   $80                                         ; $541b: $fe $80
	nop                                              ; $541d: $00
	inc  bc                                          ; $541e: $03
	rst  $38                                         ; $541f: $ff
	nop                                              ; $5420: $00
	rst  $38                                         ; $5421: $ff
	nop                                              ; $5422: $00
	add  b                                           ; $5423: $80
	rst  $38                                         ; $5424: $ff
	add  b                                           ; $5425: $80
	nop                                              ; $5426: $00
	add  b                                           ; $5427: $80
	rst  $38                                         ; $5428: $ff
	add  b                                           ; $5429: $80
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	rst  $38                                         ; $542c: $ff
	add  e                                           ; $542d: $83
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00
	xor  b                                           ; $5430: $a8
	adc  l                                           ; $5431: $8d
	ld   d, b                                        ; $5432: $50
	nop                                              ; $5433: $00
	ld   d, d                                        ; $5434: $52
	add  a                                           ; $5435: $87
	ld   b, h                                        ; $5436: $44
	ld   bc, $4454                                   ; $5437: $01 $54 $44
	add  b                                           ; $543a: $80
	ld   e, h                                        ; $543b: $5c
	add  b                                           ; $543c: $80
	ld   b, b                                        ; $543d: $40
	nop                                              ; $543e: $00
	cp   $8d                                         ; $543f: $fe $8d
	nop                                              ; $5441: $00
	ld   bc, $00ff                                   ; $5442: $01 $ff $00
	add  b                                           ; $5445: $80
	rst  $38                                         ; $5446: $ff
	add  b                                           ; $5447: $80
	nop                                              ; $5448: $00
	add  b                                           ; $5449: $80
	rst  $38                                         ; $544a: $ff
	add  b                                           ; $544b: $80
	nop                                              ; $544c: $00
	rlca                                             ; $544d: $07
	ldh  a, [$03]                                    ; $544e: $f0 $03
	inc  sp                                          ; $5450: $33
	rrca                                             ; $5451: $0f
	ld   d, a                                        ; $5452: $57
	daa                                              ; $5453: $27
	cp   a                                           ; $5454: $bf
	nop                                              ; $5455: $00
	add  b                                           ; $5456: $80
	rst  $38                                         ; $5457: $ff
	add  b                                           ; $5458: $80
	nop                                              ; $5459: $00
	add  b                                           ; $545a: $80
	rst  $38                                         ; $545b: $ff
	add  c                                           ; $545c: $81
	nop                                              ; $545d: $00
	add  b                                           ; $545e: $80
	sbc  a                                           ; $545f: $9f
	add  d                                           ; $5460: $82
	rst  $38                                         ; $5461: $ff
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	add  b                                           ; $5464: $80
	rst  $38                                         ; $5465: $ff
	add  b                                           ; $5466: $80
	nop                                              ; $5467: $00
	inc  bc                                          ; $5468: $03
	ld   e, a                                        ; $5469: $5f
	ld   b, b                                        ; $546a: $40
	ld   e, a                                        ; $546b: $5f
	ld   b, b                                        ; $546c: $40
	add  b                                           ; $546d: $80
	ld   a, a                                        ; $546e: $7f
	add  b                                           ; $546f: $80
	nop                                              ; $5470: $00
	ld   [bc], a                                     ; $5471: $02
	rra                                              ; $5472: $1f
	ret  nz                                          ; $5473: $c0

	jr   nz, jr_098_53fd                             ; $5474: $20 $87

	nop                                              ; $5476: $00
	ld   c, $01                                      ; $5477: $0e $01
	nop                                              ; $5479: $00
	ld   [bc], a                                     ; $547a: $02
	ld   bc, $0305                                   ; $547b: $01 $05 $03
	dec  bc                                          ; $547e: $0b
	nop                                              ; $547f: $00
	db   $10                                         ; $5480: $10
	rrca                                             ; $5481: $0f
	cpl                                              ; $5482: $2f
	nop                                              ; $5483: $00
	ld   b, b                                        ; $5484: $40
	ld   h, $a6                                      ; $5485: $26 $a6
	add  b                                           ; $5487: $80
	ccf                                              ; $5488: $3f
	add  b                                           ; $5489: $80
	ld   hl, sp+$07                                  ; $548a: $f8 $07
	rst  $38                                         ; $548c: $ff
	sbc  a                                           ; $548d: $9f
	sbc  b                                           ; $548e: $98
	call nz, $ef43                                   ; $548f: $c4 $43 $ef
	xor  a                                           ; $5492: $af
	ccf                                              ; $5493: $3f
	add  b                                           ; $5494: $80
	sbc  a                                           ; $5495: $9f
	add  b                                           ; $5496: $80
	xor  a                                           ; $5497: $af
	add  b                                           ; $5498: $80
	rst  ToBoot                                         ; $5499: $c7
	inc  bc                                          ; $549a: $03
	scf                                              ; $549b: $37
	dec  [hl]                                        ; $549c: $35
	set  1, b                                        ; $549d: $cb $c8
	add  b                                           ; $549f: $80
	dec  a                                           ; $54a0: $3d
	ld   bc, $deff                                   ; $54a1: $01 $ff $de
	add  b                                           ; $54a4: $80
	rst  $38                                         ; $54a5: $ff
	ld   bc, $cbfe                                   ; $54a6: $01 $fe $cb
	add  b                                           ; $54a9: $80
	db   $fd                                         ; $54aa: $fd
	rlca                                             ; $54ab: $07
	db   $fc                                         ; $54ac: $fc
	pop  af                                          ; $54ad: $f1
	ld   hl, sp-$0b                                  ; $54ae: $f8 $f5
	rst  $30                                         ; $54b0: $f7
	or   $f3                                         ; $54b1: $f6 $f3
	ld   [$e081], sp                                 ; $54b3: $08 $81 $e0
	inc  c                                           ; $54b6: $0c
	jr   c, jr_098_54e9                              ; $54b7: $38 $30

	ld   d, b                                        ; $54b9: $50
	ret  nc                                          ; $54ba: $d0

	sub  e                                           ; $54bb: $93
	ret  nc                                          ; $54bc: $d0

	sub  h                                           ; $54bd: $94
	ret  nc                                          ; $54be: $d0

	sub  b                                           ; $54bf: $90
	inc  de                                          ; $54c0: $13
	rla                                              ; $54c1: $17
	ld   d, c                                        ; $54c2: $51
	rst  $28                                         ; $54c3: $ef
	add  e                                           ; $54c4: $83
	ld   [hl+], a                                    ; $54c5: $22
	nop                                              ; $54c6: $00
	and  d                                           ; $54c7: $a2
	add  b                                           ; $54c8: $80
	ld   [hl+], a                                    ; $54c9: $22
	inc  b                                           ; $54ca: $04
	and  d                                           ; $54cb: $a2
	xor  d                                           ; $54cc: $aa
	ld   [hl+], a                                    ; $54cd: $22
	ld   a, [hl-]                                    ; $54ce: $3a
	cp   d                                           ; $54cf: $ba
	add  b                                           ; $54d0: $80
	add  d                                           ; $54d1: $82
	nop                                              ; $54d2: $00
	ld   a, a                                        ; $54d3: $7f
	add  l                                           ; $54d4: $85
	nop                                              ; $54d5: $00
	inc  bc                                          ; $54d6: $03
	ld   bc, $0200                                   ; $54d7: $01 $00 $02
	ld   bc, $0080                                   ; $54da: $01 $80 $00
	ld   bc, $0305                                   ; $54dd: $01 $05 $03
	add  c                                           ; $54e0: $81
	dec  bc                                          ; $54e1: $0b
	nop                                              ; $54e2: $00
	rlca                                             ; $54e3: $07
	add  b                                           ; $54e4: $80
	ld   d, $0b                                      ; $54e5: $16 $0b
	ld   [hl], $06                                   ; $54e7: $36 $06

jr_098_54e9:
	call nz, $2b2c                                   ; $54e9: $c4 $2c $2b
	reti                                             ; $54ec: $d9


	ld   e, $0c                                      ; $54ed: $1e $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ef: $cf
	db   $e3                                         ; $54f0: $e3
	rra                                              ; $54f1: $1f
	inc  bc                                          ; $54f2: $03
	add  b                                           ; $54f3: $80
	ld   a, a                                        ; $54f4: $7f
	add  l                                           ; $54f5: $85
	rst  $38                                         ; $54f6: $ff
	rlca                                             ; $54f7: $07
	db   $dd                                         ; $54f8: $dd
	ld   e, l                                        ; $54f9: $5d
	ld   a, a                                        ; $54fa: $7f
	rst  $38                                         ; $54fb: $ff
	cp   $ff                                         ; $54fc: $fe $ff
	db   $fd                                         ; $54fe: $fd
	db   $fc                                         ; $54ff: $fc
	add  d                                           ; $5500: $82
	cp   $82                                         ; $5501: $fe $82
	rst  $38                                         ; $5503: $ff
	add  b                                           ; $5504: $80
	rst  JumpTable                                         ; $5505: $df
	add  b                                           ; $5506: $80
	ei                                               ; $5507: $fb
	ld   b, $1e                                      ; $5508: $06 $1e
	adc  a                                           ; $550a: $8f
	rst  $30                                         ; $550b: $f7
	or   [hl]                                        ; $550c: $b6
	ldh  a, [$d4]                                    ; $550d: $f0 $d4
	di                                               ; $550f: $f3
	add  l                                           ; $5510: $85
	ld   [hl], a                                     ; $5511: $77
	dec  b                                           ; $5512: $05
	ld   [hl], b                                     ; $5513: $70
	ld   h, b                                        ; $5514: $60
	ld   l, [hl]                                     ; $5515: $6e
	ld   a, [de]                                     ; $5516: $1a
	ld   d, b                                        ; $5517: $50
	ld   d, h                                        ; $5518: $54
	add  e                                           ; $5519: $83
	ld   d, e                                        ; $551a: $53
	ld   bc, $5713                                   ; $551b: $01 $13 $57
	add  b                                           ; $551e: $80
	scf                                              ; $551f: $37
	ld   bc, $2e27                                   ; $5520: $01 $27 $2e
	add  b                                           ; $5523: $80
	xor  [hl]                                        ; $5524: $ae
	nop                                              ; $5525: $00
	inc  b                                           ; $5526: $04
	add  b                                           ; $5527: $80
	ld   l, d                                        ; $5528: $6a
	add  b                                           ; $5529: $80
	xor  d                                           ; $552a: $aa
	inc  bc                                          ; $552b: $03
	adc  d                                           ; $552c: $8a
	xor  d                                           ; $552d: $aa
	adc  d                                           ; $552e: $8a
	ld   [$0a81], a                                  ; $552f: $ea $81 $0a
	nop                                              ; $5532: $00
	jp   z, $2a81                                    ; $5533: $ca $81 $2a

	nop                                              ; $5536: $00
	ld   e, b                                        ; $5537: $58
	add  h                                           ; $5538: $84
	inc  bc                                          ; $5539: $03
	dec  c                                           ; $553a: $0d
	nop                                              ; $553b: $00
	rlca                                             ; $553c: $07
	nop                                              ; $553d: $00
	ld   b, $00                                      ; $553e: $06 $00
	ld   bc, $0302                                   ; $5540: $01 $02 $03
	ld   [bc], a                                     ; $5543: $02
	ei                                               ; $5544: $fb
	add  sp, -$06                                    ; $5545: $e8 $fa
	or   $e4                                         ; $5547: $f6 $e4
	add  b                                           ; $5549: $80
	db   $d3                                         ; $554a: $d3
	add  b                                           ; $554b: $80
	ld   [hl], h                                     ; $554c: $74
	add  b                                           ; $554d: $80
	dec  hl                                          ; $554e: $2b
	dec  b                                           ; $554f: $05
	ld   c, a                                        ; $5550: $4f
	ld   b, e                                        ; $5551: $43
	db   $d3                                         ; $5552: $d3
	call c, $0f0c                                    ; $5553: $dc $0c $0f
	add  b                                           ; $5556: $80
	nop                                              ; $5557: $00
	add  b                                           ; $5558: $80
	inc  bc                                          ; $5559: $03
	add  b                                           ; $555a: $80
	ei                                               ; $555b: $fb
	add  b                                           ; $555c: $80
	inc  bc                                          ; $555d: $03
	add  b                                           ; $555e: $80
	db   $fc                                         ; $555f: $fc
	add  b                                           ; $5560: $80
	ld   [hl], a                                     ; $5561: $77
	nop                                              ; $5562: $00
	rst  $38                                         ; $5563: $ff
	add  b                                           ; $5564: $80
	ld   a, a                                        ; $5565: $7f
	inc  b                                           ; $5566: $04
	rst  $38                                         ; $5567: $ff
	ld   bc, $5b41                                   ; $5568: $01 $41 $5b
	dec  de                                          ; $556b: $1b
	add  b                                           ; $556c: $80
	or   l                                           ; $556d: $b5
	add  b                                           ; $556e: $80
	adc  a                                           ; $556f: $8f
	add  b                                           ; $5570: $80
	ld   [hl], a                                     ; $5571: $77
	add  b                                           ; $5572: $80
	cp   a                                           ; $5573: $bf
	add  c                                           ; $5574: $81
	rst  $38                                         ; $5575: $ff
	rlca                                             ; $5576: $07
	cp   a                                           ; $5577: $bf
	ld   e, e                                        ; $5578: $5b
	dec  de                                          ; $5579: $1b
	ccf                                              ; $557a: $3f
	rra                                              ; $557b: $1f
	rrca                                             ; $557c: $0f
	ld   e, a                                        ; $557d: $5f
	rrca                                             ; $557e: $0f
	add  b                                           ; $557f: $80
	ld   [hl], e                                     ; $5580: $73
	ld   [bc], a                                     ; $5581: $02
	ld   a, h                                        ; $5582: $7c
	ld   e, h                                        ; $5583: $5c
	ld   e, a                                        ; $5584: $5f
	add  c                                           ; $5585: $81
	ld   a, a                                        ; $5586: $7f
	nop                                              ; $5587: $00
	ld   a, [hl]                                     ; $5588: $7e
	add  b                                           ; $5589: $80
	inc  e                                           ; $558a: $1c
	ld   [$cdcc], sp                                 ; $558b: $08 $cc $cd
	ldh  a, [$fc]                                    ; $558e: $f0 $fc
	db   $ed                                         ; $5590: $ed

jr_098_5591:
	call $1fed                                       ; $5591: $cd $ed $1f
	ld   e, $80                                      ; $5594: $1e $80
	ld   b, $80                                      ; $5596: $06 $80
	sbc  b                                           ; $5598: $98
	nop                                              ; $5599: $00
	jp   z, Jump_098_6a82                            ; $559a: $ca $82 $6a

	add  d                                           ; $559d: $82
	ld   [$ca82], a                                  ; $559e: $ea $82 $ca
	nop                                              ; $55a1: $00
	xor  d                                           ; $55a2: $aa
	add  b                                           ; $55a3: $80
	adc  d                                           ; $55a4: $8a
	nop                                              ; $55a5: $00
	rst  $30                                         ; $55a6: $f7
	add  c                                           ; $55a7: $81
	ld   d, b                                        ; $55a8: $50
	nop                                              ; $55a9: $00
	ld   d, c                                        ; $55aa: $51
	adc  c                                           ; $55ab: $89
	ld   d, b                                        ; $55ac: $50
	ld   [$06f7], sp                                 ; $55ad: $08 $f7 $06
	ld   [hl], l                                     ; $55b0: $75
	dec  c                                           ; $55b1: $0d
	sub  e                                           ; $55b2: $93
	inc  hl                                          ; $55b3: $23
	ccf                                              ; $55b4: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55b5: $cf
	adc  a                                           ; $55b6: $8f
	add  b                                           ; $55b7: $80
	or   a                                           ; $55b8: $b7
	add  b                                           ; $55b9: $80
	cp   e                                           ; $55ba: $bb
	nop                                              ; $55bb: $00
	cp   l                                           ; $55bc: $bd
	add  b                                           ; $55bd: $80
	dec  a                                           ; $55be: $3d
	ld   b, $9d                                      ; $55bf: $06 $9d
	ld   h, e                                        ; $55c1: $63
	inc  bc                                          ; $55c2: $03
	ld   l, b                                        ; $55c3: $68
	ld   l, d                                        ; $55c4: $6a
	adc  [hl]                                        ; $55c5: $8e
	adc  h                                           ; $55c6: $8c
	add  b                                           ; $55c7: $80
	and  e                                           ; $55c8: $a3
	add  hl, bc                                      ; $55c9: $09
	call z, $89ea                                    ; $55ca: $cc $ea $89
	ret                                              ; $55cd: $c9


	add  hl, bc                                      ; $55ce: $09
	dec  e                                           ; $55cf: $1d
	dec  b                                           ; $55d0: $05
	ld   [hl], l                                     ; $55d1: $75
	cp   $fc                                         ; $55d2: $fe $fc
	add  b                                           ; $55d4: $80
	nop                                              ; $55d5: $00
	inc  bc                                          ; $55d6: $03
	inc  bc                                          ; $55d7: $03
	ld   [bc], a                                     ; $55d8: $02
	rst  $38                                         ; $55d9: $ff
	cp   $80                                         ; $55da: $fe $80
	nop                                              ; $55dc: $00
	inc  bc                                          ; $55dd: $03
	rst  $38                                         ; $55de: $ff
	cp   a                                           ; $55df: $bf
	ld   a, e                                        ; $55e0: $7b
	dec  sp                                          ; $55e1: $3b
	add  b                                           ; $55e2: $80
	rra                                              ; $55e3: $1f
	add  b                                           ; $55e4: $80
	ld   e, $09                                      ; $55e5: $1e $09
	pop  bc                                          ; $55e7: $c1
	ld   sp, hl                                      ; $55e8: $f9
	cp   a                                           ; $55e9: $bf
	rst  $20                                         ; $55ea: $e7
	ld   [hl], a                                     ; $55eb: $77
	sub  a                                           ; $55ec: $97
	rst  $38                                         ; $55ed: $ff
	ld   a, a                                        ; $55ee: $7f
	rst  $38                                         ; $55ef: $ff
	ei                                               ; $55f0: $fb
	add  b                                           ; $55f1: $80
	cp   a                                           ; $55f2: $bf
	ld   bc, $fbff                                   ; $55f3: $01 $ff $fb
	add  b                                           ; $55f6: $80
	ld   a, a                                        ; $55f7: $7f
	ld   [bc], a                                     ; $55f8: $02
	or   c                                           ; $55f9: $b1
	scf                                              ; $55fa: $37
	add  [hl]                                        ; $55fb: $86
	add  b                                           ; $55fc: $80
	rrca                                             ; $55fd: $0f
	add  b                                           ; $55fe: $80
	rra                                              ; $55ff: $1f
	ld   [bc], a                                     ; $5600: $02
	adc  b                                           ; $5601: $88
	adc  a                                           ; $5602: $8f
	rlca                                             ; $5603: $07
	add  b                                           ; $5604: $80
	sub  a                                           ; $5605: $97
	dec  c                                           ; $5606: $0d
	db   $e3                                         ; $5607: $e3
	ei                                               ; $5608: $fb
	reti                                             ; $5609: $d9


	db   $dd                                         ; $560a: $dd
	sbc  $db                                         ; $560b: $de $db
	jr   jr_098_5591                                 ; $560d: $18 $82

	call nz, $e0c8                                   ; $560f: $c4 $c8 $e0
	and  b                                           ; $5612: $a0
	ldh  [$2e], a                                    ; $5613: $e0 $2e
	add  b                                           ; $5615: $80
	ret  nz                                          ; $5616: $c0

	inc  bc                                          ; $5617: $03
	inc  a                                           ; $5618: $3c
	ld   d, a                                        ; $5619: $57
	ld   a, [bc]                                     ; $561a: $0a
	adc  d                                           ; $561b: $8a
	adc  e                                           ; $561c: $8b
	ld   a, [bc]                                     ; $561d: $0a
	nop                                              ; $561e: $00
	or   h                                           ; $561f: $b4
	add  c                                           ; $5620: $81
	ld   d, c                                        ; $5621: $51
	rlca                                             ; $5622: $07
	ld   e, l                                        ; $5623: $5d
	ld   d, b                                        ; $5624: $50
	ld   e, [hl]                                     ; $5625: $5e
	ld   b, [hl]                                     ; $5626: $46
	ld   [hl], l                                     ; $5627: $75
	ld   b, l                                        ; $5628: $45
	ld   a, e                                        ; $5629: $7b
	dec  de                                          ; $562a: $1b
	add  b                                           ; $562b: $80
	inc  d                                           ; $562c: $14
	ld   [bc], a                                     ; $562d: $02
	dec  l                                           ; $562e: $2d
	ld   c, h                                        ; $562f: $4c
	ld   hl, $7e80                                   ; $5630: $21 $80 $7e
	add  b                                           ; $5633: $80
	cp   [hl]                                        ; $5634: $be
	ld   de, $dfd0                                   ; $5635: $11 $d0 $df
	ld   h, b                                        ; $5638: $60
	ld   [hl], b                                     ; $5639: $70
	nop                                              ; $563a: $00
	ld   h, b                                        ; $563b: $60
	nop                                              ; $563c: $00
	add  b                                           ; $563d: $80
	nop                                              ; $563e: $00
	ld   bc, $8c00                                   ; $563f: $01 $00 $8c
	dec  b                                           ; $5642: $05
	add  [hl]                                        ; $5643: $86
	ld   b, $0e                                      ; $5644: $06 $0e
	ld   [bc], a                                     ; $5646: $02
	ld   a, e                                        ; $5647: $7b
	add  b                                           ; $5648: $80
	inc  bc                                          ; $5649: $03
	ld   bc, $b434                                   ; $564a: $01 $34 $b4
	add  b                                           ; $564d: $80
	ld   e, h                                        ; $564e: $5c
	add  b                                           ; $564f: $80
	dec  bc                                          ; $5650: $0b
	dec  c                                           ; $5651: $0d
	adc  e                                           ; $5652: $8b
	and  e                                           ; $5653: $a3
	adc  a                                           ; $5654: $8f
	or   a                                           ; $5655: $b7
	jp   $e1de                                       ; $5656: $c3 $de $e1


	ld   [$f3f4], a                                  ; $5659: $ea $f4 $f3
	ld   hl, sp-$05                                  ; $565c: $f8 $fb
	ld   a, [hl]                                     ; $565e: $7e
	ld   a, h                                        ; $565f: $7c
	add  b                                           ; $5660: $80
	cp   a                                           ; $5661: $bf
	dec  h                                           ; $5662: $25
	db   $db                                         ; $5663: $db
	db   $dd                                         ; $5664: $dd
	rst  $38                                         ; $5665: $ff
	cp   $ff                                         ; $5666: $fe $ff
	rst  $30                                         ; $5668: $f7
	rst  $38                                         ; $5669: $ff
	cp   $7e                                         ; $566a: $fe $7e
	ld   l, l                                        ; $566c: $6d
	cp   l                                           ; $566d: $bd
	ld   h, b                                        ; $566e: $60
	add  d                                           ; $566f: $82
	ld   h, [hl]                                     ; $5670: $66
	rla                                              ; $5671: $17
	dec  hl                                          ; $5672: $2b
	ld   de, $9c15                                   ; $5673: $11 $15 $9c
	ld   h, h                                        ; $5676: $64
	push hl                                          ; $5677: $e5
	sbc  c                                           ; $5678: $99
	sbc  e                                           ; $5679: $9b
	ld   [hl], e                                     ; $567a: $73
	ld   a, c                                        ; $567b: $79
	ret                                              ; $567c: $c9


	db   $ec                                         ; $567d: $ec
	ld   l, $b2                                      ; $567e: $2e $b2
	cp   [hl]                                        ; $5680: $be
	ld   c, [hl]                                     ; $5681: $4e
	ld   a, b                                        ; $5682: $78
	inc  a                                           ; $5683: $3c
	dec  b                                           ; $5684: $05
	ret  c                                           ; $5685: $d8

	ld   e, b                                        ; $5686: $58
	ld   a, h                                        ; $5687: $7c
	cp   l                                           ; $5688: $bd
	add  b                                           ; $5689: $80
	ld   a, $09                                      ; $568a: $3e $09
	or   b                                           ; $568c: $b0
	ldh  a, [$cf]                                    ; $568d: $f0 $cf
	rst  $38                                         ; $568f: $ff
	adc  a                                           ; $5690: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5691: $cf
	rrca                                             ; $5692: $0f
	ld   l, a                                        ; $5693: $6f
	xor  $01                                         ; $5694: $ee $01
	cp   l                                           ; $5696: $bd
	nop                                              ; $5697: $00
	ld   [hl], $02                                   ; $5698: $36 $02
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	add  c                                           ; $569c: $81
	rst  $38                                         ; $569d: $ff
	add  b                                           ; $569e: $80
	cp   a                                           ; $569f: $bf
	add  b                                           ; $56a0: $80
	rst  $38                                         ; $56a1: $ff
	add  b                                           ; $56a2: $80
	rst  JumpTable                                         ; $56a3: $df
	sub  l                                           ; $56a4: $95
	rst  $38                                         ; $56a5: $ff
	add  b                                           ; $56a6: $80
	nop                                              ; $56a7: $00
	add  b                                           ; $56a8: $80
	add  b                                           ; $56a9: $80
	add  b                                           ; $56aa: $80
	ret  nz                                          ; $56ab: $c0

	add  b                                           ; $56ac: $80
	ldh  a, [$86]                                    ; $56ad: $f0 $86
	rst  $38                                         ; $56af: $ff
	add  b                                           ; $56b0: $80
	rlca                                             ; $56b1: $07
	add  b                                           ; $56b2: $80
	rrca                                             ; $56b3: $0f
	add  b                                           ; $56b4: $80
	rra                                              ; $56b5: $1f
	add  b                                           ; $56b6: $80
	ld   a, a                                        ; $56b7: $7f
	add  l                                           ; $56b8: $85
	rst  $38                                         ; $56b9: $ff
	ld   [bc], a                                     ; $56ba: $02
	db   $fc                                         ; $56bb: $fc
	add  b                                           ; $56bc: $80
	add  e                                           ; $56bd: $83
	add  b                                           ; $56be: $80
	ldh  [rTMA], a                                   ; $56bf: $e0 $06
	ld   hl, sp+$78                                  ; $56c1: $f8 $78
	ld   a, h                                        ; $56c3: $7c
	db   $fc                                         ; $56c4: $fc
	cp   $9e                                         ; $56c5: $fe $9e
	sbc  a                                           ; $56c7: $9f
	add  b                                           ; $56c8: $80
	cp   $80                                         ; $56c9: $fe $80
	db   $fc                                         ; $56cb: $fc
	add  c                                           ; $56cc: $81
	rst  $38                                         ; $56cd: $ff
	add  b                                           ; $56ce: $80
	jp   $1f80                                       ; $56cf: $c3 $80 $1f


	add  b                                           ; $56d2: $80
	ld   a, a                                        ; $56d3: $7f
	ld   [$6c6f], sp                                 ; $56d4: $08 $6f $6c
	inc  e                                           ; $56d7: $1c
	inc  de                                          ; $56d8: $13
	inc  sp                                          ; $56d9: $33
	daa                                              ; $56da: $27
	ld   h, a                                        ; $56db: $67
	ld   [hl], b                                     ; $56dc: $70
	ldh  a, [$80]                                    ; $56dd: $f0 $80
	db   $fc                                         ; $56df: $fc
	add  b                                           ; $56e0: $80
	cp   $80                                         ; $56e1: $fe $80
	db   $fd                                         ; $56e3: $fd
	add  b                                           ; $56e4: $80
	dec  sp                                          ; $56e5: $3b
	add  b                                           ; $56e6: $80
	rst  $30                                         ; $56e7: $f7
	add  b                                           ; $56e8: $80
	rst  $28                                         ; $56e9: $ef
	add  b                                           ; $56ea: $80
	rst  JumpTable                                         ; $56eb: $df
	add  b                                           ; $56ec: $80
	inc  bc                                          ; $56ed: $03
	add  b                                           ; $56ee: $80
	rra                                              ; $56ef: $1f
	add  b                                           ; $56f0: $80
	ld   a, a                                        ; $56f1: $7f
	and  d                                           ; $56f2: $a2
	rst  $38                                         ; $56f3: $ff
	dec  b                                           ; $56f4: $05
	cp   a                                           ; $56f5: $bf
	cp   l                                           ; $56f6: $bd
	db   $ed                                         ; $56f7: $ed
	xor  $f6                                         ; $56f8: $ee $f6
	rst  $30                                         ; $56fa: $f7
	add  b                                           ; $56fb: $80
	cp   $81                                         ; $56fc: $fe $81
	rst  $38                                         ; $56fe: $ff
	add  b                                           ; $56ff: $80
	sbc  a                                           ; $5700: $9f
	add  b                                           ; $5701: $80
	rst  $20                                         ; $5702: $e7
	add  b                                           ; $5703: $80
	di                                               ; $5704: $f3
	add  b                                           ; $5705: $80
	pop  de                                          ; $5706: $d1
	add  b                                           ; $5707: $80
	ld   b, l                                        ; $5708: $45
	ld   bc, $6916                                   ; $5709: $01 $16 $69
	add  b                                           ; $570c: $80
	sbc  a                                           ; $570d: $9f
	nop                                              ; $570e: $00
	add  b                                           ; $570f: $80
	add  d                                           ; $5710: $82
	cp   a                                           ; $5711: $bf
	add  d                                           ; $5712: $82
	ld   e, a                                        ; $5713: $5f

jr_098_5714:
	add  b                                           ; $5714: $80
	cpl                                              ; $5715: $2f
	add  b                                           ; $5716: $80
	inc  de                                          ; $5717: $13
	nop                                              ; $5718: $00
	nop                                              ; $5719: $00
	add  b                                           ; $571a: $80
	rst  $38                                         ; $571b: $ff
	ld   bc, $ff00                                   ; $571c: $01 $00 $ff
	add  b                                           ; $571f: $80
	rlca                                             ; $5720: $07
	add  b                                           ; $5721: $80
	adc  a                                           ; $5722: $8f
	nop                                              ; $5723: $00
	rst  $38                                         ; $5724: $ff
	add  b                                           ; $5725: $80
	cp   $80                                         ; $5726: $fe $80
	db   $fc                                         ; $5728: $fc
	add  b                                           ; $5729: $80
	ldh  [rP1], a                                    ; $572a: $e0 $00
	inc  b                                           ; $572c: $04
	add  b                                           ; $572d: $80
	db   $e4                                         ; $572e: $e4
	nop                                              ; $572f: $00
	inc  b                                           ; $5730: $04
	add  b                                           ; $5731: $80
	add  h                                           ; $5732: $84
	add  b                                           ; $5733: $80
	inc  b                                           ; $5734: $04
	add  d                                           ; $5735: $82
	ld   [$1080], sp                                 ; $5736: $08 $80 $10
	ld   [bc], a                                     ; $5739: $02
	ld   hl, $0e20                                   ; $573a: $21 $20 $0e
	add  c                                           ; $573d: $81
	nop                                              ; $573e: $00
	ld   bc, $3038                                   ; $573f: $01 $38 $30
	add  b                                           ; $5742: $80
	jr   nz, jr_098_5748                             ; $5743: $20 $03

	nop                                              ; $5745: $00
	db   $10                                         ; $5746: $10
	ld   d, h                                        ; $5747: $54

jr_098_5748:
	ld   e, b                                        ; $5748: $58
	add  b                                           ; $5749: $80
	jr   @+$04                                       ; $574a: $18 $02

	ret  c                                           ; $574c: $d8

	jr   jr_098_5714                                 ; $574d: $18 $c5

	add  b                                           ; $574f: $80
	nop                                              ; $5750: $00
	nop                                              ; $5751: $00
	add  b                                           ; $5752: $80
	add  b                                           ; $5753: $80
	db   $10                                         ; $5754: $10
	ld   bc, $4011                                   ; $5755: $01 $11 $40
	add  c                                           ; $5758: $81
	nop                                              ; $5759: $00
	ld   bc, $2010                                   ; $575a: $01 $10 $20
	add  d                                           ; $575d: $82
	nop                                              ; $575e: $00
	adc  c                                           ; $575f: $89
	rst  $38                                         ; $5760: $ff
	add  c                                           ; $5761: $81
	cp   $01                                         ; $5762: $fe $01
	nop                                              ; $5764: $00
	ld   bc, $ff89                                   ; $5765: $01 $89 $ff
	add  d                                           ; $5768: $82
	ld   a, a                                        ; $5769: $7f
	add  h                                           ; $576a: $84
	rst  $38                                         ; $576b: $ff
	add  b                                           ; $576c: $80
	rst  $30                                         ; $576d: $f7
	add  b                                           ; $576e: $80
	rst  $28                                         ; $576f: $ef
	add  b                                           ; $5770: $80
	ld   sp, hl                                      ; $5771: $f9
	add  b                                           ; $5772: $80
	rst  $38                                         ; $5773: $ff
	add  b                                           ; $5774: $80
	di                                               ; $5775: $f3
	adc  [hl]                                        ; $5776: $8e
	rst  $38                                         ; $5777: $ff
	ld   [bc], a                                     ; $5778: $02
	call z, $fdcd                                    ; $5779: $cc $cd $fd
	add  c                                           ; $577c: $81
	db   $fc                                         ; $577d: $fc
	add  b                                           ; $577e: $80
	cp   $84                                         ; $577f: $fe $84
	rst  $38                                         ; $5781: $ff
	add  b                                           ; $5782: $80
	rst  $20                                         ; $5783: $e7
	add  b                                           ; $5784: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5785: $cf
	add  hl, bc                                      ; $5786: $09
	sbc  a                                           ; $5787: $9f
	sbc  e                                           ; $5788: $9b
	ld   a, [hl-]                                    ; $5789: $3a
	ld   h, $65                                      ; $578a: $26 $65
	ld   c, l                                        ; $578c: $4d
	ld   c, c                                        ; $578d: $49
	ld   e, c                                        ; $578e: $59
	db   $d3                                         ; $578f: $d3
	or   e                                           ; $5790: $b3
	add  b                                           ; $5791: $80
	or   d                                           ; $5792: $b2
	ld   bc, $e6a6                                   ; $5793: $01 $a6 $e6
	add  b                                           ; $5796: $80
	rst  JumpTable                                         ; $5797: $df
	add  c                                           ; $5798: $81
	cp   a                                           ; $5799: $bf
	ld   bc, $6faf                                   ; $579a: $01 $af $6f
	add  b                                           ; $579d: $80
	ld   e, l                                        ; $579e: $5d
	add  b                                           ; $579f: $80
	ld   c, e                                        ; $57a0: $4b
	ld   b, $0b                                      ; $57a1: $06 $0b
	ld   a, [bc]                                     ; $57a3: $0a
	ld   h, $a6                                      ; $57a4: $26 $a6
	or   [hl]                                        ; $57a6: $b6
	and  a                                           ; $57a7: $a7
	rst  $28                                         ; $57a8: $ef
	add  b                                           ; $57a9: $80
	rst  JumpTable                                         ; $57aa: $df
	add  b                                           ; $57ab: $80
	sbc  a                                           ; $57ac: $9f
	add  b                                           ; $57ad: $80
	cp   a                                           ; $57ae: $bf
	add  b                                           ; $57af: $80

jr_098_57b0:
	ccf                                              ; $57b0: $3f
	ld   bc, $2b2f                                   ; $57b1: $01 $2f $2b
	add  b                                           ; $57b4: $80
	ld   l, e                                        ; $57b5: $6b
	ld   [bc], a                                     ; $57b6: $02
	ld   h, e                                        ; $57b7: $63
	ld   h, l                                        ; $57b8: $65
	db   $fd                                         ; $57b9: $fd
	add  d                                           ; $57ba: $82
	rst  $38                                         ; $57bb: $ff
	add  b                                           ; $57bc: $80
	db   $fd                                         ; $57bd: $fd
	add  d                                           ; $57be: $82
	cp   $80                                         ; $57bf: $fe $80
	db   $eb                                         ; $57c1: $eb
	rlca                                             ; $57c2: $07
	add  sp, -$38                                    ; $57c3: $e8 $c8
	ld   d, c                                        ; $57c5: $51
	ld   [hl], l                                     ; $57c6: $75
	db   $eb                                         ; $57c7: $eb
	db   $ed                                         ; $57c8: $ed
	push af                                          ; $57c9: $f5
	or   $81                                         ; $57ca: $f6 $81
	ld   a, [$f302]                                  ; $57cc: $fa $02 $f3
	ld   [hl], l                                     ; $57cf: $75
	ld   a, c                                        ; $57d0: $79
	add  b                                           ; $57d1: $80
	add  hl, sp                                      ; $57d2: $39
	inc  bc                                          ; $57d3: $03
	dec  de                                          ; $57d4: $1b
	dec  e                                           ; $57d5: $1d
	sbc  l                                           ; $57d6: $9d
	sbc  a                                           ; $57d7: $9f
	add  b                                           ; $57d8: $80
	cp   [hl]                                        ; $57d9: $be
	add  b                                           ; $57da: $80
	cp   a                                           ; $57db: $bf
	add  c                                           ; $57dc: $81
	rst  JumpTable                                         ; $57dd: $df
	nop                                              ; $57de: $00
	ld   e, a                                        ; $57df: $5f
	add  c                                           ; $57e0: $81
	ld   a, a                                        ; $57e1: $7f
	add  d                                           ; $57e2: $82
	cp   a                                           ; $57e3: $bf
	add  b                                           ; $57e4: $80
	inc  c                                           ; $57e5: $0c
	add  b                                           ; $57e6: $80
	db   $e3                                         ; $57e7: $e3
	add  b                                           ; $57e8: $80
	ld   hl, sp-$80                                  ; $57e9: $f8 $80
	db   $fc                                         ; $57eb: $fc
	add  b                                           ; $57ec: $80
	ld   a, a                                        ; $57ed: $7f
	add  b                                           ; $57ee: $80
	cp   a                                           ; $57ef: $bf
	add  d                                           ; $57f0: $82
	cp   $80                                         ; $57f1: $fe $80
	nop                                              ; $57f3: $00
	add  b                                           ; $57f4: $80
	inc  bc                                          ; $57f5: $03
	add  b                                           ; $57f6: $80
	db   $fc                                         ; $57f7: $fc
	add  b                                           ; $57f8: $80
	nop                                              ; $57f9: $00
	ld   [de], a                                     ; $57fa: $12
	ld   bc, $8600                                   ; $57fb: $01 $00 $86
	add  b                                           ; $57fe: $80
	ld   e, b                                        ; $57ff: $58
	ld   b, b                                        ; $5800: $40
	jr   nz, jr_098_5803                             ; $5801: $20 $00

jr_098_5803:
	ld   hl, sp-$40                                  ; $5803: $f8 $c0
	jr   jr_098_5807                                 ; $5805: $18 $00

jr_098_5807:
	inc  hl                                          ; $5807: $23
	ld   [bc], a                                     ; $5808: $02
	ld   b, a                                        ; $5809: $47
	inc  b                                           ; $580a: $04
	add  l                                           ; $580b: $85
	inc  b                                           ; $580c: $04
	ld   c, $81                                      ; $580d: $0e $81
	ld   [$1880], sp                                 ; $580f: $08 $80 $18

jr_098_5812:
	add  hl, bc                                      ; $5812: $09
	add  hl, sp                                      ; $5813: $39
	inc  e                                           ; $5814: $1c
	sbc  b                                           ; $5815: $98
	jr   jr_098_57b0                                 ; $5816: $18 $98

	jr   jr_098_5812                                 ; $5818: $18 $f8

	jr   @+$5e                                       ; $581a: $18 $5c

jr_098_581c:
	sbc  h                                           ; $581c: $9c
	add  b                                           ; $581d: $80
	cp   h                                           ; $581e: $bc
	add  d                                           ; $581f: $82
	cp   $93                                         ; $5820: $fe $93
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	rst  $38                                         ; $5824: $ff
	add  b                                           ; $5825: $80
	cp   $80                                         ; $5826: $fe $80
	ld   sp, hl                                      ; $5828: $f9
	add  b                                           ; $5829: $80
	and  $80                                         ; $582a: $e6 $80
	add  hl, de                                      ; $582c: $19
	add  b                                           ; $582d: $80
	daa                                              ; $582e: $27
	nop                                              ; $582f: $00
	rst  $38                                         ; $5830: $ff
	add  b                                           ; $5831: $80
	ld   bc, $0080                                   ; $5832: $01 $80 $00
	nop                                              ; $5835: $00
	rst  $38                                         ; $5836: $ff
	add  b                                           ; $5837: $80
	ld   bc, $fe80                                   ; $5838: $01 $80 $fe
	add  b                                           ; $583b: $80
	ld   bc, $fe80                                   ; $583c: $01 $80 $fe
	add  b                                           ; $583f: $80
	rst  $38                                         ; $5840: $ff
	add  b                                           ; $5841: $80
	di                                               ; $5842: $f3
	nop                                              ; $5843: $00
	rst  $38                                         ; $5844: $ff
	add  b                                           ; $5845: $80
	ld   bc, $fc80                                   ; $5846: $01 $80 $fc
	nop                                              ; $5849: $00
	rst  $38                                         ; $584a: $ff
	add  b                                           ; $584b: $80
	ld   a, a                                        ; $584c: $7f
	add  b                                           ; $584d: $80
	sbc  a                                           ; $584e: $9f
	add  b                                           ; $584f: $80
	ld   h, b                                        ; $5850: $60

jr_098_5851:
	add  b                                           ; $5851: $80
	sub  b                                           ; $5852: $90
	add  e                                           ; $5853: $83
	rst  $38                                         ; $5854: $ff
	add  b                                           ; $5855: $80
	ccf                                              ; $5856: $3f
	add  b                                           ; $5857: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5858: $cf
	add  c                                           ; $5859: $81
	rst  $38                                         ; $585a: $ff
	add  b                                           ; $585b: $80
	ccf                                              ; $585c: $3f
	add  b                                           ; $585d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $585e: $cf
	add  b                                           ; $585f: $80
	rst  $38                                         ; $5860: $ff
	add  b                                           ; $5861: $80
	pop  af                                          ; $5862: $f1
	dec  b                                           ; $5863: $05
	ld   [$efe0], a                                  ; $5864: $ea $e0 $ef
	add  sp, -$02                                    ; $5867: $e8 $fe
	ldh  a, [$80]                                    ; $5869: $f0 $80
	ld   a, [$ff06]                                  ; $586b: $fa $06 $ff
	db   $fd                                         ; $586e: $fd
	rst  $38                                         ; $586f: $ff
	cp   $03                                         ; $5870: $fe $03
	inc  b                                           ; $5872: $04
	ld   b, $83                                      ; $5873: $06 $83
	ld   [bc], a                                     ; $5875: $02
	ld   [$0282], sp                                 ; $5876: $08 $82 $02
	ld   b, d                                        ; $5879: $42
	ld   [bc], a                                     ; $587a: $02
	jr   nz, @+$06                                   ; $587b: $20 $04

	sbc  b                                           ; $587d: $98
	add  b                                           ; $587e: $80
	ld   bc, $0086                                   ; $587f: $01 $86 $00
	nop                                              ; $5882: $00
	ld   bc, $0084                                   ; $5883: $01 $84 $00
	db   $10                                         ; $5886: $10
	inc  e                                           ; $5887: $1c
	inc  c                                           ; $5888: $0c
	ld   e, $06                                      ; $5889: $1e $06
	add  a                                           ; $588b: $87
	rlca                                             ; $588c: $07
	ld   l, a                                        ; $588d: $6f
	ld   h, e                                        ; $588e: $63
	ld   h, a                                        ; $588f: $67
	ld   hl, $30b3                                   ; $5890: $21 $b3 $30
	jr   z, jr_098_589d                              ; $5893: $28 $08

	ld   d, c                                        ; $5895: $51
	nop                                              ; $5896: $00
	jr   nc, jr_098_581c                             ; $5897: $30 $83

	nop                                              ; $5899: $00
	add  b                                           ; $589a: $80
	ret  nz                                          ; $589b: $c0

	add  l                                           ; $589c: $85

jr_098_589d:
	ldh  [$03], a                                    ; $589d: $e0 $03
	ld   h, b                                        ; $589f: $60
	add  d                                           ; $58a0: $82
	call $81ce                                       ; $58a1: $cd $ce $81
	xor  $00                                         ; $58a4: $ee $00
	rst  $28                                         ; $58a6: $ef
	add  a                                           ; $58a7: $87
	rst  $38                                         ; $58a8: $ff
	add  h                                           ; $58a9: $84
	rst  JumpTable                                         ; $58aa: $df
	add  h                                           ; $58ab: $84
	ld   l, a                                        ; $58ac: $6f
	add  b                                           ; $58ad: $80
	xor  a                                           ; $58ae: $af
	add  b                                           ; $58af: $80
	or   a                                           ; $58b0: $b7
	add  e                                           ; $58b1: $83
	rst  $38                                         ; $58b2: $ff
	add  b                                           ; $58b3: $80
	ld   bc, $0084                                   ; $58b4: $01 $84 $00
	nop                                              ; $58b7: $00
	rst  $38                                         ; $58b8: $ff
	add  b                                           ; $58b9: $80
	nop                                              ; $58ba: $00
	ld   [bc], a                                     ; $58bb: $02
	cp   a                                           ; $58bc: $bf
	add  b                                           ; $58bd: $80
	ld   b, b                                        ; $58be: $40

jr_098_58bf:
	add  c                                           ; $58bf: $81

Call_098_58c0:
	nop                                              ; $58c0: $00
	nop                                              ; $58c1: $00
	ret  nz                                          ; $58c2: $c0

	add  d                                           ; $58c3: $82
	add  b                                           ; $58c4: $80

jr_098_58c5:
	dec  b                                           ; $58c5: $05
	nop                                              ; $58c6: $00
	ld   [$3888], sp                                 ; $58c7: $08 $88 $38
	jr   jr_098_58c5                                 ; $58ca: $18 $f9

	add  c                                           ; $58cc: $81
	jr   jr_098_5851                                 ; $58cd: $18 $82

	db   $10                                         ; $58cf: $10
	add  d                                           ; $58d0: $82
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	dec  b                                           ; $58d3: $05
	add  c                                           ; $58d4: $81
	inc  b                                           ; $58d5: $04
	nop                                              ; $58d6: $00
	rst  $38                                         ; $58d7: $ff
	add  h                                           ; $58d8: $84
	ld   a, a                                        ; $58d9: $7f
	add  d                                           ; $58da: $82
	cp   a                                           ; $58db: $bf
	add  b                                           ; $58dc: $80
	rst  JumpTable                                         ; $58dd: $df
	add  b                                           ; $58de: $80
	ld   e, a                                        ; $58df: $5f
	ld   bc, $906f                                   ; $58e0: $01 $6f $90
	add  c                                           ; $58e3: $81
	nop                                              ; $58e4: $00
	add  d                                           ; $58e5: $82
	add  b                                           ; $58e6: $80
	add  b                                           ; $58e7: $80
	ret  nz                                          ; $58e8: $c0

	add  d                                           ; $58e9: $82
	ldh  [$80], a                                    ; $58ea: $e0 $80
	ldh  a, [rSB]                                    ; $58ec: $f0 $01
	ret  nc                                          ; $58ee: $d0

	cpl                                              ; $58ef: $2f
	add  c                                           ; $58f0: $81
	ld   e, a                                        ; $58f1: $5f
	inc  bc                                          ; $58f2: $03
	ld   e, [hl]                                     ; $58f3: $5e
	cp   [hl]                                        ; $58f4: $be
	cp   h                                           ; $58f5: $bc
	add  e                                           ; $58f6: $83
	add  d                                           ; $58f7: $82
	add  b                                           ; $58f8: $80
	add  b                                           ; $58f9: $80
	sbc  a                                           ; $58fa: $9f
	ld   bc, $c0bf                                   ; $58fb: $01 $bf $c0
	add  b                                           ; $58fe: $80
	rst  $38                                         ; $58ff: $ff
	add  b                                           ; $5900: $80
	inc  bc                                          ; $5901: $03
	add  b                                           ; $5902: $80
	ld   bc, $0001                                   ; $5903: $01 $01 $00
	rst  $38                                         ; $5906: $ff
	add  d                                           ; $5907: $82
	nop                                              ; $5908: $00
	add  c                                           ; $5909: $81
	rst  $38                                         ; $590a: $ff
	ld   bc, $d02f                                   ; $590b: $01 $2f $d0
	add  d                                           ; $590e: $82
	add  sp, -$80                                    ; $590f: $e8 $80
	db   $e4                                         ; $5911: $e4
	add  e                                           ; $5912: $83
	inc  b                                           ; $5913: $04
	add  b                                           ; $5914: $80
	db   $e4                                         ; $5915: $e4
	ld   [bc], a                                     ; $5916: $02
	db   $f4                                         ; $5917: $f4
	sub  a                                           ; $5918: $97
	ld   h, a                                        ; $5919: $67
	add  b                                           ; $591a: $80
	ld   [hl], e                                     ; $591b: $73
	add  b                                           ; $591c: $80
	inc  sp                                          ; $591d: $33
	add  d                                           ; $591e: $82
	add  hl, sp                                      ; $591f: $39

jr_098_5920:
	add  b                                           ; $5920: $80
	add  hl, de                                      ; $5921: $19
	add  b                                           ; $5922: $80
	jr   jr_098_5927                                 ; $5923: $18 $02

	rla                                              ; $5925: $17
	db   $10                                         ; $5926: $10

jr_098_5927:
	ld   sp, hl                                      ; $5927: $f9
	add  e                                           ; $5928: $83
	cp   $84                                         ; $5929: $fe $84
	db   $fc                                         ; $592b: $fc
	add  b                                           ; $592c: $80
	ldh  [rDIV], a                                   ; $592d: $e0 $04
	ld   e, h                                        ; $592f: $5c
	ld   b, b                                        ; $5930: $40
	ld   h, e                                        ; $5931: $63
	add  b                                           ; $5932: $80
	ret  nz                                          ; $5933: $c0

	add  c                                           ; $5934: $81
	ld   b, b                                        ; $5935: $40
	ld   bc, $2060                                   ; $5936: $01 $60 $20

Jump_098_5939:
	add  b                                           ; $5939: $80
	jr   nc, jr_098_593c                             ; $593a: $30 $00

jr_098_593c:
	jr   c, jr_098_58bf                              ; $593c: $38 $81

	jr   jr_098_5943                                 ; $593e: $18 $03

	inc  e                                           ; $5940: $1c
	inc  c                                           ; $5941: $0c
	jp   hl                                          ; $5942: $e9


jr_098_5943:
	and  $80                                         ; $5943: $e6 $80
	xor  $82                                         ; $5945: $ee $82
	call z, $9c80                                    ; $5947: $cc $80 $9c
	add  c                                           ; $594a: $81
	sbc  b                                           ; $594b: $98
	add  hl, bc                                      ; $594c: $09
	sbc  c                                           ; $594d: $99
	add  hl, de                                      ; $594e: $19

jr_098_594f:
	jr   jr_098_5920                                 ; $594f: $18 $cf

	nop                                              ; $5951: $00
	ld   [$3010], sp                                 ; $5952: $08 $10 $30
	nop                                              ; $5955: $00
	inc  b                                           ; $5956: $04
	add  c                                           ; $5957: $81
	ld   [$1801], sp                                 ; $5958: $08 $01 $18
	ld   [$0082], sp                                 ; $595b: $08 $82 $00
	nop                                              ; $595e: $00
	db   $f4                                         ; $595f: $f4
	add  c                                           ; $5960: $81
	ld   [hl], b                                     ; $5961: $70
	ld   bc, $30f0                                   ; $5962: $01 $f0 $30
	add  b                                           ; $5965: $80
	or   b                                           ; $5966: $b0
	add  d                                           ; $5967: $82
	cp   b                                           ; $5968: $b8
	nop                                              ; $5969: $00
	cp   h                                           ; $596a: $bc
	add  b                                           ; $596b: $80
	call c, Call_098_5c02                            ; $596c: $dc $02 $5c
	and  b                                           ; $596f: $a0
	rst  $38                                         ; $5970: $ff
	add  d                                           ; $5971: $82
	ld   a, a                                        ; $5972: $7f
	add  d                                           ; $5973: $82
	ccf                                              ; $5974: $3f
	add  d                                           ; $5975: $82
	rra                                              ; $5976: $1f
	add  b                                           ; $5977: $80
	rrca                                             ; $5978: $0f
	add  b                                           ; $5979: $80
	or   e                                           ; $597a: $b3
	add  b                                           ; $597b: $80
	db   $d3                                         ; $597c: $d3
	add  b                                           ; $597d: $80
	pop  de                                          ; $597e: $d1
	add  b                                           ; $597f: $80
	ret  c                                           ; $5980: $d8

	add  h                                           ; $5981: $84
	ret  z                                           ; $5982: $c8

	add  b                                           ; $5983: $80
	ret  nz                                          ; $5984: $c0

	adc  [hl]                                        ; $5985: $8e
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	rlca                                             ; $5988: $07
	add  b                                           ; $5989: $80
	jr   @-$7d                                       ; $598a: $18 $81

	ld   [$0c00], sp                                 ; $598c: $08 $00 $0c
	add  d                                           ; $598f: $82
	inc  b                                           ; $5990: $04
	add  c                                           ; $5991: $81
	nop                                              ; $5992: $00
	inc  bc                                          ; $5993: $03
	ld   [bc], a                                     ; $5994: $02
	nop                                              ; $5995: $00
	ld   a, [$8004]                                  ; $5996: $fa $04 $80
	inc  c                                           ; $5999: $0c
	add  h                                           ; $599a: $84
	ld   c, $82                                      ; $599b: $0e $82
	ld   e, $80                                      ; $599d: $1e $80
	rra                                              ; $599f: $1f
	nop                                              ; $59a0: $00
	rst  $38                                         ; $59a1: $ff
	add  b                                           ; $59a2: $80
	rst  $28                                         ; $59a3: $ef
	nop                                              ; $59a4: $00
	rst  $30                                         ; $59a5: $f7
	add  c                                           ; $59a6: $81
	ld   [hl], a                                     ; $59a7: $77
	add  b                                           ; $59a8: $80
	ld   a, e                                        ; $59a9: $7b
	nop                                              ; $59aa: $00
	ld   a, l                                        ; $59ab: $7d
	add  c                                           ; $59ac: $81
	dec  a                                           ; $59ad: $3d
	add  c                                           ; $59ae: $81
	ld   a, $01                                      ; $59af: $3e $01
	pop  af                                          ; $59b1: $f1
	ldh  a, [$8c]                                    ; $59b2: $f0 $8c
	ld   hl, sp+$00                                  ; $59b4: $f8 $00
	rst  $38                                         ; $59b6: $ff
	adc  [hl]                                        ; $59b7: $8e
	nop                                              ; $59b8: $00
	add  b                                           ; $59b9: $80
	ld   bc, $008b                                   ; $59ba: $01 $8b $00
	ld   bc, $1fe0                                   ; $59bd: $01 $e0 $1f
	add  c                                           ; $59c0: $81
	rst  $38                                         ; $59c1: $ff
	add  b                                           ; $59c2: $80
	inc  a                                           ; $59c3: $3c
	adc  b                                           ; $59c4: $88
	nop                                              ; $59c5: $00
	add  b                                           ; $59c6: $80
	db   $fc                                         ; $59c7: $fc
	nop                                              ; $59c8: $00
	nop                                              ; $59c9: $00
	add  h                                           ; $59ca: $84
	jr   c, jr_098_594f                              ; $59cb: $38 $82

	ld   [hl], b                                     ; $59cd: $70
	add  b                                           ; $59ce: $80
	ldh  [rP1], a                                    ; $59cf: $e0 $00
	rlca                                             ; $59d1: $07
	add  c                                           ; $59d2: $81
	ld   a, b                                        ; $59d3: $78
	nop                                              ; $59d4: $00
	ld   a, h                                        ; $59d5: $7c
	add  d                                           ; $59d6: $82
	inc  a                                           ; $59d7: $3c
	nop                                              ; $59d8: $00
	inc  e                                           ; $59d9: $1c
	add  e                                           ; $59da: $83
	ld   e, $03                                      ; $59db: $1e $03
	ld   c, $f1                                      ; $59dd: $0e $f1
	nop                                              ; $59df: $00
	ld   bc, $008b                                   ; $59e0: $01 $8b $00
	dec  b                                           ; $59e3: $05
	rlca                                             ; $59e4: $07
	ei                                               ; $59e5: $fb
	ld   a, e                                        ; $59e6: $7b
	ld   a, c                                        ; $59e7: $79
	add  hl, sp                                      ; $59e8: $39
	cp   c                                           ; $59e9: $b9
	add  b                                           ; $59ea: $80
	ld   sp, $5103                                   ; $59eb: $31 $03 $51
	ld   de, $2001                                   ; $59ee: $11 $01 $20
	add  b                                           ; $59f1: $80
	nop                                              ; $59f2: $00
	ld   [bc], a                                     ; $59f3: $02
	stop                                             ; $59f4: $10 $00
	rst  $28                                         ; $59f6: $ef
	add  c                                           ; $59f7: $81
	ldh  [$82], a                                    ; $59f8: $e0 $82
	ldh  a, [$80]                                    ; $59fa: $f0 $80
	ld   hl, sp-$80                                  ; $59fc: $f8 $80
	db   $fc                                         ; $59fe: $fc
	add  b                                           ; $59ff: $80
	cp   $80                                         ; $5a00: $fe $80
	rst  $38                                         ; $5a02: $ff
	nop                                              ; $5a03: $00
	ld   b, $86                                      ; $5a04: $06 $86
	ld   [bc], a                                     ; $5a06: $02
	nop                                              ; $5a07: $00
	ld   b, $80                                      ; $5a08: $06 $80
	rrca                                             ; $5a0a: $0f
	add  b                                           ; $5a0b: $80
	rra                                              ; $5a0c: $1f
	add  b                                           ; $5a0d: $80
	ccf                                              ; $5a0e: $3f
	nop                                              ; $5a0f: $00
	inc  b                                           ; $5a10: $04
	add  e                                           ; $5a11: $83
	nop                                              ; $5a12: $00
	ld   bc, $0c0a                                   ; $5a13: $01 $0a $0c
	add  b                                           ; $5a16: $80
	inc  a                                           ; $5a17: $3c
	nop                                              ; $5a18: $00
	db   $fd                                         ; $5a19: $fd
	add  c                                           ; $5a1a: $81
	cp   $02                                         ; $5a1b: $fe $02
	rst  $38                                         ; $5a1d: $ff
	ld   hl, sp+$79                                  ; $5a1e: $f8 $79
	add  b                                           ; $5a20: $80
	dec  sp                                          ; $5a21: $3b
	ld   bc, $7030                                   ; $5a22: $01 $30 $70
	add  b                                           ; $5a25: $80
	inc  bc                                          ; $5a26: $03
	inc  c                                           ; $5a27: $0c
	rlca                                             ; $5a28: $07
	ld   b, $1e                                      ; $5a29: $06 $1e
	call c, $b33c                                    ; $5a2b: $dc $3c $b3
	inc  sp                                          ; $5a2e: $33
	ld   a, a                                        ; $5a2f: $7f
	rra                                              ; $5a30: $1f
	rst  JumpTable                                         ; $5a31: $df
	rra                                              ; $5a32: $1f
	jr   @-$06                                       ; $5a33: $18 $f8

	add  b                                           ; $5a35: $80
	ldh  a, [$80]                                    ; $5a36: $f0 $80
	add  b                                           ; $5a38: $80
	add  b                                           ; $5a39: $80
	ccf                                              ; $5a3a: $3f
	add  l                                           ; $5a3b: $85
	rst  $38                                         ; $5a3c: $ff
	ld   [bc], a                                     ; $5a3d: $02
	add  a                                           ; $5a3e: $87
	rlca                                             ; $5a3f: $07
	ld   a, a                                        ; $5a40: $7f
	add  b                                           ; $5a41: $80
	rrca                                             ; $5a42: $0f
	add  b                                           ; $5a43: $80
	ld   a, a                                        ; $5a44: $7f
	adc  e                                           ; $5a45: $8b
	rst  $38                                         ; $5a46: $ff
	add  d                                           ; $5a47: $82
	cp   $84                                         ; $5a48: $fe $84
	db   $fc                                         ; $5a4a: $fc
	ld   [bc], a                                     ; $5a4b: $02
	cp   $c2                                         ; $5a4c: $fe $c2
	inc  a                                           ; $5a4e: $3c
	add  b                                           ; $5a4f: $80
	ld   a, h                                        ; $5a50: $7c
	add  b                                           ; $5a51: $80
	ld   a, b                                        ; $5a52: $78
	add  b                                           ; $5a53: $80
	ld   hl, sp-$80                                  ; $5a54: $f8 $80
	db   $fc                                         ; $5a56: $fc
	add  b                                           ; $5a57: $80
	db   $f4                                         ; $5a58: $f4
	add  b                                           ; $5a59: $80
	ld   hl, sp-$80                                  ; $5a5a: $f8 $80
	ld   a, h                                        ; $5a5c: $7c
	nop                                              ; $5a5d: $00
	rst  $38                                         ; $5a5e: $ff
	add  b                                           ; $5a5f: $80
	ld   hl, sp-$7e                                  ; $5a60: $f8 $82
	ld   a, [$fe80]                                  ; $5a62: $fa $80 $fe
	add  c                                           ; $5a65: $81
	rst  $38                                         ; $5a66: $ff
	add  d                                           ; $5a67: $82
	ei                                               ; $5a68: $fb
	add  b                                           ; $5a69: $80
	nop                                              ; $5a6a: $00
	add  e                                           ; $5a6b: $83
	rst  $38                                         ; $5a6c: $ff
	add  d                                           ; $5a6d: $82
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	rst  $38                                         ; $5a70: $ff
	add  d                                           ; $5a71: $82
	cp   $80                                         ; $5a72: $fe $80
	nop                                              ; $5a74: $00
	add  e                                           ; $5a75: $83
	rst  $38                                         ; $5a76: $ff
	add  d                                           ; $5a77: $82
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	rst  $38                                         ; $5a7a: $ff
	add  d                                           ; $5a7b: $82
	ld   a, a                                        ; $5a7c: $7f
	add  b                                           ; $5a7d: $80
	nop                                              ; $5a7e: $00
	add  e                                           ; $5a7f: $83
	rst  $38                                         ; $5a80: $ff
	add  d                                           ; $5a81: $82
	nop                                              ; $5a82: $00
	nop                                              ; $5a83: $00
	rst  $38                                         ; $5a84: $ff
	add  d                                           ; $5a85: $82
	ld   sp, hl                                      ; $5a86: $f9
	add  b                                           ; $5a87: $80
	nop                                              ; $5a88: $00
	add  b                                           ; $5a89: $80
	db   $fc                                         ; $5a8a: $fc
	nop                                              ; $5a8b: $00
	rst  $38                                         ; $5a8c: $ff
	add  b                                           ; $5a8d: $80
	rst  ToBoot                                         ; $5a8e: $c7
	add  b                                           ; $5a8f: $80
	rrca                                             ; $5a90: $0f
	add  b                                           ; $5a91: $80
	ld   a, a                                        ; $5a92: $7f
	add  e                                           ; $5a93: $83
	rst  $38                                         ; $5a94: $ff
	ld   bc, $0e01                                   ; $5a95: $01 $01 $0e
	add  c                                           ; $5a98: $81
	rrca                                             ; $5a99: $0f
	add  c                                           ; $5a9a: $81
	rlca                                             ; $5a9b: $07
	add  c                                           ; $5a9c: $81
	add  a                                           ; $5a9d: $87
	add  e                                           ; $5a9e: $83
	add  e                                           ; $5a9f: $83

jr_098_5aa0:
	nop                                              ; $5aa0: $00
	db   $fc                                         ; $5aa1: $fc
	add  e                                           ; $5aa2: $83
	nop                                              ; $5aa3: $00
	add  h                                           ; $5aa4: $84
	add  b                                           ; $5aa5: $80
	add  b                                           ; $5aa6: $80
	ret  nz                                          ; $5aa7: $c0

	add  b                                           ; $5aa8: $80
	ldh  [rSB], a                                    ; $5aa9: $e0 $01
	rrca                                             ; $5aab: $0f
	ld   [$0080], sp                                 ; $5aac: $08 $80 $00
	nop                                              ; $5aaf: $00
	inc  b                                           ; $5ab0: $04
	add  b                                           ; $5ab1: $80
	nop                                              ; $5ab2: $00
	nop                                              ; $5ab3: $00
	ld   [bc], a                                     ; $5ab4: $02
	add  b                                           ; $5ab5: $80
	nop                                              ; $5ab6: $00
	nop                                              ; $5ab7: $00
	ld   bc, $0083                                   ; $5ab8: $01 $83 $00
	nop                                              ; $5abb: $00
	rst  $38                                         ; $5abc: $ff
	add  d                                           ; $5abd: $82
	ld   a, a                                        ; $5abe: $7f
	add  d                                           ; $5abf: $82
	ccf                                              ; $5ac0: $3f
	add  d                                           ; $5ac1: $82
	rra                                              ; $5ac2: $1f
	nop                                              ; $5ac3: $00
	adc  a                                           ; $5ac4: $8f
	add  b                                           ; $5ac5: $80
	rrca                                             ; $5ac6: $0f
	nop                                              ; $5ac7: $00
	adc  a                                           ; $5ac8: $8f
	add  h                                           ; $5ac9: $84
	rst  $38                                         ; $5aca: $ff
	add  b                                           ; $5acb: $80
	cp   $10                                         ; $5acc: $fe $10
	db   $fd                                         ; $5ace: $fd
	cp   $f0                                         ; $5acf: $fe $f0
	db   $f4                                         ; $5ad1: $f4
	add  sp, -$10                                    ; $5ad2: $e8 $f0
	add  b                                           ; $5ad4: $80
	sbc  b                                           ; $5ad5: $98
	ldh  a, [$f4]                                    ; $5ad6: $f0 $f4
	ret  z                                           ; $5ad8: $c8

	ret  nc                                          ; $5ad9: $d0

	and  b                                           ; $5ada: $a0
	add  $00                                         ; $5adb: $c6 $00
	add  e                                           ; $5add: $83
	nop                                              ; $5ade: $00
	add  b                                           ; $5adf: $80
	ld   [bc], a                                     ; $5ae0: $02
	ld   bc, $0706                                   ; $5ae1: $01 $06 $07
	add  c                                           ; $5ae4: $81
	rra                                              ; $5ae5: $1f
	add  c                                           ; $5ae6: $81
	rrca                                             ; $5ae7: $0f
	ld   [bc], a                                     ; $5ae8: $02
	rra                                              ; $5ae9: $1f
	rlca                                             ; $5aea: $07
	rrca                                             ; $5aeb: $0f
	add  c                                           ; $5aec: $81
	inc  bc                                          ; $5aed: $03
	ld   b, $07                                      ; $5aee: $06 $07
	ld   bc, $0083                                   ; $5af0: $01 $83 $00
	ld   b, c                                        ; $5af3: $41
	add  b                                           ; $5af4: $80
	cp   a                                           ; $5af5: $bf
	adc  h                                           ; $5af6: $8c
	rst  $38                                         ; $5af7: $ff
	add  b                                           ; $5af8: $80
	ld   a, a                                        ; $5af9: $7f
	adc  d                                           ; $5afa: $8a
	rst  $38                                         ; $5afb: $ff
	add  b                                           ; $5afc: $80
	cp   $80                                         ; $5afd: $fe $80
	ld   hl, sp-$76                                  ; $5aff: $f8 $8a
	rst  $38                                         ; $5b01: $ff
	add  b                                           ; $5b02: $80
	rlca                                             ; $5b03: $07
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	add  b                                           ; $5b06: $80
	ld   a, $04                                      ; $5b07: $3e $04
	ld   c, $8e                                      ; $5b09: $0e $8e
	add  c                                           ; $5b0b: $81
	pop  hl                                          ; $5b0c: $e1
	ldh  [$80], a                                    ; $5b0d: $e0 $80
	ld   hl, sp-$7f                                  ; $5b0f: $f8 $81
	db   $fc                                         ; $5b11: $fc
	add  b                                           ; $5b12: $80
	db   $fd                                         ; $5b13: $fd
	inc  bc                                          ; $5b14: $03
	rst  $38                                         ; $5b15: $ff
	ei                                               ; $5b16: $fb
	ld   a, [bc]                                     ; $5b17: $0a
	ldh  a, [c]                                      ; $5b18: $f2
	add  b                                           ; $5b19: $80
	ld   [hl], d                                     ; $5b1a: $72
	add  b                                           ; $5b1b: $80
	ld   [hl], b                                     ; $5b1c: $70
	add  b                                           ; $5b1d: $80
	jr   nz, jr_098_5aa0                             ; $5b1e: $20 $80

	nop                                              ; $5b20: $00
	add  b                                           ; $5b21: $80
	ld   bc, $8180                                   ; $5b22: $01 $80 $81
	add  b                                           ; $5b25: $80
	pop  bc                                          ; $5b26: $c1
	ld   bc, $04f3                                   ; $5b27: $01 $f3 $04
	add  d                                           ; $5b2a: $82
	ld   b, $81                                      ; $5b2b: $06 $81
	ld   d, $81                                      ; $5b2d: $16 $81
	ld   c, $82                                      ; $5b2f: $0e $82
	cpl                                              ; $5b31: $2f
	ld   bc, $5cec                                   ; $5b32: $01 $ec $5c
	add  b                                           ; $5b35: $80
	ld   e, [hl]                                     ; $5b36: $5e
	nop                                              ; $5b37: $00
	sbc  $82                                         ; $5b38: $de $82
	ld   l, $01                                      ; $5b3a: $2e $01
	ld   c, $8e                                      ; $5b3c: $0e $8e
	add  b                                           ; $5b3e: $80
	adc  $00                                         ; $5b3f: $ce $00
	adc  [hl]                                        ; $5b41: $8e
	add  b                                           ; $5b42: $80
	adc  a                                           ; $5b43: $8f
	ld   [bc], a                                     ; $5b44: $02
	ld   [hl], a                                     ; $5b45: $77
	inc  bc                                          ; $5b46: $03
	rlca                                             ; $5b47: $07
	add  d                                           ; $5b48: $82
	ld   bc, $0001                                   ; $5b49: $01 $01 $00
	ld   [bc], a                                     ; $5b4c: $02
	add  c                                           ; $5b4d: $81
	nop                                              ; $5b4e: $00
	nop                                              ; $5b4f: $00
	ld   bc, $0081                                   ; $5b50: $01 $81 $00
	nop                                              ; $5b53: $00
	ccf                                              ; $5b54: $3f
	add  b                                           ; $5b55: $80
	cpl                                              ; $5b56: $2f
	add  b                                           ; $5b57: $80
	inc  l                                           ; $5b58: $2c
	nop                                              ; $5b59: $00
	jr   nc, @-$7e                                   ; $5b5a: $30 $80

	db   $10                                         ; $5b5c: $10
	ld   bc, $0800                                   ; $5b5d: $01 $00 $08
	add  b                                           ; $5b60: $80
	add  hl, bc                                      ; $5b61: $09
	inc  b                                           ; $5b62: $04
	ld   bc, $0005                                   ; $5b63: $01 $05 $00
	ld   [bc], a                                     ; $5b66: $02
	cp   $81                                         ; $5b67: $fe $81
	rlca                                             ; $5b69: $07
	add  b                                           ; $5b6a: $80
	daa                                              ; $5b6b: $27
	add  b                                           ; $5b6c: $80
	ld   [hl], a                                     ; $5b6d: $77
	add  b                                           ; $5b6e: $80

jr_098_5b6f:
	rst  $10                                         ; $5b6f: $d7
	ld   bc, $bbbf                                   ; $5b70: $01 $bf $bb
	add  b                                           ; $5b73: $80
	db   $db                                         ; $5b74: $db
	add  b                                           ; $5b75: $80
	ei                                               ; $5b76: $fb
	nop                                              ; $5b77: $00
	db   $fc                                         ; $5b78: $fc
	add  l                                           ; $5b79: $85
	nop                                              ; $5b7a: $00
	add  d                                           ; $5b7b: $82
	add  b                                           ; $5b7c: $80
	add  d                                           ; $5b7d: $82
	ret  nz                                          ; $5b7e: $c0

	ld   [bc], a                                     ; $5b7f: $02
	ld   a, a                                        ; $5b80: $7f
	ld   h, $66                                      ; $5b81: $26 $66
	add  c                                           ; $5b83: $81
	ld   b, $00                                      ; $5b84: $06 $00
	ld   h, $81                                      ; $5b86: $26 $81
	ld   b, $00                                      ; $5b88: $06 $00
	ld   d, $80                                      ; $5b8a: $16 $80
	ld   b, $03                                      ; $5b8c: $06 $03
	nop                                              ; $5b8e: $00
	inc  bc                                          ; $5b8f: $03
	inc  b                                           ; $5b90: $04
	or   $81                                         ; $5b91: $f6 $81
	ld   bc, $0880                                   ; $5b93: $01 $80 $08
	ld   bc, $9e1e                                   ; $5b96: $01 $1e $9e
	add  d                                           ; $5b99: $82
	sbc  a                                           ; $5b9a: $9f
	inc  b                                           ; $5b9b: $04
	sbc  l                                           ; $5b9c: $9d
	dec  e                                           ; $5b9d: $1d
	ld   e, $9e                                      ; $5b9e: $1e $9e
	ld   a, a                                        ; $5ba0: $7f
	add  b                                           ; $5ba1: $80
	db   $fc                                         ; $5ba2: $fc
	add  b                                           ; $5ba3: $80
	push af                                          ; $5ba4: $f5
	nop                                              ; $5ba5: $00
	ei                                               ; $5ba6: $fb
	add  c                                           ; $5ba7: $81
	ld   a, e                                        ; $5ba8: $7b
	nop                                              ; $5ba9: $00
	ld   a, a                                        ; $5baa: $7f
	add  b                                           ; $5bab: $80
	cp   a                                           ; $5bac: $bf
	add  b                                           ; $5bad: $80
	rst  JumpTable                                         ; $5bae: $df
	add  b                                           ; $5baf: $80
	ld   c, a                                        ; $5bb0: $4f
	inc  b                                           ; $5bb1: $04
	rst  $38                                         ; $5bb2: $ff
	nop                                              ; $5bb3: $00
	rlca                                             ; $5bb4: $07
	nop                                              ; $5bb5: $00
	ld   hl, sp-$80                                  ; $5bb6: $f8 $80
	rlca                                             ; $5bb8: $07
	add  h                                           ; $5bb9: $84
	rst  $38                                         ; $5bba: $ff
	add  b                                           ; $5bbb: $80
	db   $fc                                         ; $5bbc: $fc
	inc  bc                                          ; $5bbd: $03
	ldh  [$60], a                                    ; $5bbe: $e0 $60
	rrca                                             ; $5bc0: $0f
	adc  a                                           ; $5bc1: $8f
	add  b                                           ; $5bc2: $80
	ld   a, a                                        ; $5bc3: $7f
	add  d                                           ; $5bc4: $82
	rst  $38                                         ; $5bc5: $ff
	add  b                                           ; $5bc6: $80
	pop  bc                                          ; $5bc7: $c1
	add  b                                           ; $5bc8: $80
	add  b                                           ; $5bc9: $80
	add  c                                           ; $5bca: $81
	nop                                              ; $5bcb: $00
	ld   bc, $9f1f                                   ; $5bcc: $01 $1f $9f
	add  b                                           ; $5bcf: $80
	adc  a                                           ; $5bd0: $8f
	inc  b                                           ; $5bd1: $04
	add  a                                           ; $5bd2: $87
	rst  ToBoot                                         ; $5bd3: $c7
	pop  bc                                          ; $5bd4: $c1
	pop  hl                                          ; $5bd5: $e1
	ldh  [$80], a                                    ; $5bd6: $e0 $80
	ldh  a, [$80]                                    ; $5bd8: $f0 $80
	ld   c, $80                                      ; $5bda: $0e $80
	rra                                              ; $5bdc: $1f
	ld   [bc], a                                     ; $5bdd: $02
	rst  $38                                         ; $5bde: $ff
	ld   hl, sp+$07                                  ; $5bdf: $f8 $07
	add  b                                           ; $5be1: $80
	ldh  [c], a                                      ; $5be2: $e2
	add  b                                           ; $5be3: $80
	sub  b                                           ; $5be4: $90
	add  b                                           ; $5be5: $80
	ret  nz                                          ; $5be6: $c0

	add  e                                           ; $5be7: $83
	nop                                              ; $5be8: $00
	ld   bc, $9880                                   ; $5be9: $01 $80 $98
	add  c                                           ; $5bec: $81
	jr   jr_098_5b6f                                 ; $5bed: $18 $80

	ld   e, $82                                      ; $5bef: $1e $82
	ccf                                              ; $5bf1: $3f
	nop                                              ; $5bf2: $00
	ld   a, a                                        ; $5bf3: $7f
	add  b                                           ; $5bf4: $80
	ld   a, l                                        ; $5bf5: $7d
	add  b                                           ; $5bf6: $80
	ld   a, h                                        ; $5bf7: $7c
	add  b                                           ; $5bf8: $80
	ld   a, [hl]                                     ; $5bf9: $7e
	ld   b, $7a                                      ; $5bfa: $06 $7a
	dec  b                                           ; $5bfc: $05
	nop                                              ; $5bfd: $00
	ld   h, a                                        ; $5bfe: $67
	ld   h, h                                        ; $5bff: $64
	ld   a, d                                        ; $5c00: $7a
	ld   a, c                                        ; $5c01: $79

Call_098_5c02:
	add  c                                           ; $5c02: $81
	cp   $01                                         ; $5c03: $fe $01
	or   $f7                                         ; $5c05: $f6 $f7
	add  b                                           ; $5c07: $80
	di                                               ; $5c08: $f3
	add  b                                           ; $5c09: $80
	ld   sp, hl                                      ; $5c0a: $f9
	inc  bc                                          ; $5c0b: $03
	reti                                             ; $5c0c: $d9


	ld   h, $00                                      ; $5c0d: $26 $00
	rst  $38                                         ; $5c0f: $ff
	add  b                                           ; $5c10: $80
	nop                                              ; $5c11: $00
	add  c                                           ; $5c12: $81
	rst  $38                                         ; $5c13: $ff
	add  d                                           ; $5c14: $82
	ld   a, a                                        ; $5c15: $7f
	add  d                                           ; $5c16: $82
	ccf                                              ; $5c17: $3f
	add  b                                           ; $5c18: $80
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	rst  $38                                         ; $5c1b: $ff
	add  d                                           ; $5c1c: $82
	nop                                              ; $5c1d: $00
	add  b                                           ; $5c1e: $80
	ldh  [$80], a                                    ; $5c1f: $e0 $80
	db   $fc                                         ; $5c21: $fc
	add  b                                           ; $5c22: $80
	cp   $82                                         ; $5c23: $fe $82
	rst  $38                                         ; $5c25: $ff
	rst  $38                                         ; $5c26: $ff
	nop                                              ; $5c27: $00
	db   $ec                                         ; $5c28: $ec
	nop                                              ; $5c29: $00
	add  [hl]                                        ; $5c2a: $86
	ld   bc, $0084                                   ; $5c2b: $01 $84 $00
	ld   [bc], a                                     ; $5c2e: $02
	ld   [$0800], sp                                 ; $5c2f: $08 $00 $08
	add  e                                           ; $5c32: $83
	nop                                              ; $5c33: $00
	ld   b, $7b                                      ; $5c34: $06 $7b
	inc  bc                                          ; $5c36: $03
	dec  bc                                          ; $5c37: $0b
	inc  bc                                          ; $5c38: $03
	ldh  a, [rP1]                                    ; $5c39: $f0 $00
	add  b                                           ; $5c3b: $80
	sub  c                                           ; $5c3c: $91
	nop                                              ; $5c3d: $00
	ld   a, [de]                                     ; $5c3e: $1a
	ld   [$fc00], sp                                 ; $5c3f: $08 $00 $fc
	nop                                              ; $5c42: $00
	ld   a, [$f000]                                  ; $5c43: $fa $00 $f0
	nop                                              ; $5c46: $00
	inc  bc                                          ; $5c47: $03
	nop                                              ; $5c48: $00
	ld   c, $00                                      ; $5c49: $0e $00
	ldh  a, [c]                                      ; $5c4b: $f2
	nop                                              ; $5c4c: $00
	ld   a, c                                        ; $5c4d: $79
	nop                                              ; $5c4e: $00
	ld   a, h                                        ; $5c4f: $7c
	nop                                              ; $5c50: $00
	ld   a, [hl]                                     ; $5c51: $7e
	nop                                              ; $5c52: $00
	pop  hl                                          ; $5c53: $e1
	nop                                              ; $5c54: $00
	ld   a, [hl]                                     ; $5c55: $7e
	nop                                              ; $5c56: $00
	add  l                                           ; $5c57: $85
	nop                                              ; $5c58: $00
	ld   h, e                                        ; $5c59: $63
	add  c                                           ; $5c5a: $81
	nop                                              ; $5c5b: $00
	ld   d, $05                                      ; $5c5c: $16 $05
	nop                                              ; $5c5e: $00
	ld   b, $00                                      ; $5c5f: $06 $00
	inc  c                                           ; $5c61: $0c
	nop                                              ; $5c62: $00
	inc  de                                          ; $5c63: $13
	nop                                              ; $5c64: $00
	ld   l, $00                                      ; $5c65: $2e $00
	ld   sp, $2000                                   ; $5c67: $31 $00 $20
	nop                                              ; $5c6a: $00
	ld   e, b                                        ; $5c6b: $58
	nop                                              ; $5c6c: $00
	or   h                                           ; $5c6d: $b4
	nop                                              ; $5c6e: $00
	ld   c, d                                        ; $5c6f: $4a
	nop                                              ; $5c70: $00
	add  h                                           ; $5c71: $84
	nop                                              ; $5c72: $00
	ld   [bc], a                                     ; $5c73: $02
	adc  e                                           ; $5c74: $8b
	nop                                              ; $5c75: $00
	inc  c                                           ; $5c76: $0c
	ldh  [rP1], a                                    ; $5c77: $e0 $00
	ld   h, b                                        ; $5c79: $60
	nop                                              ; $5c7a: $00
	or   h                                           ; $5c7b: $b4
	jr   nc, jr_098_5cf2                             ; $5c7c: $30 $74

	ld   [hl], b                                     ; $5c7e: $70
	ld   [$0800], sp                                 ; $5c7f: $08 $00 $08
	nop                                              ; $5c82: $00
	ld   [bc], a                                     ; $5c83: $02
	add  c                                           ; $5c84: $81
	nop                                              ; $5c85: $00
	db   $10                                         ; $5c86: $10
	inc  b                                           ; $5c87: $04
	nop                                              ; $5c88: $00
	jr   jr_098_5c8b                                 ; $5c89: $18 $00

jr_098_5c8b:
	ld   h, h                                        ; $5c8b: $64
	nop                                              ; $5c8c: $00
	ld   b, h                                        ; $5c8d: $44
	nop                                              ; $5c8e: $00
	ld   [bc], a                                     ; $5c8f: $02
	nop                                              ; $5c90: $00
	inc  b                                           ; $5c91: $04
	nop                                              ; $5c92: $00
	jr   jr_098_5c95                                 ; $5c93: $18 $00

jr_098_5c95:
	jr   c, jr_098_5c97                              ; $5c95: $38 $00

jr_098_5c97:
	ld   h, b                                        ; $5c97: $60
	add  c                                           ; $5c98: $81
	nop                                              ; $5c99: $00
	ld   a, [de]                                     ; $5c9a: $1a
	adc  b                                           ; $5c9b: $88
	nop                                              ; $5c9c: $00
	ld   bc, $1100                                   ; $5c9d: $01 $00 $11
	nop                                              ; $5ca0: $00
	ld   [hl+], a                                    ; $5ca1: $22
	nop                                              ; $5ca2: $00
	rst  ToBoot                                         ; $5ca3: $c7
	nop                                              ; $5ca4: $00
	add  hl, sp                                      ; $5ca5: $39
	nop                                              ; $5ca6: $00
	ccf                                              ; $5ca7: $3f
	nop                                              ; $5ca8: $00
	inc  b                                           ; $5ca9: $04
	nop                                              ; $5caa: $00
	add  a                                           ; $5cab: $87
	nop                                              ; $5cac: $00
	ret  nz                                          ; $5cad: $c0

	nop                                              ; $5cae: $00
	ret  nc                                          ; $5caf: $d0

	nop                                              ; $5cb0: $00
	cp   l                                           ; $5cb1: $bd
	nop                                              ; $5cb2: $00
	jr   z, jr_098_5cb5                              ; $5cb3: $28 $00

jr_098_5cb5:
	inc  b                                           ; $5cb5: $04
	add  c                                           ; $5cb6: $81
	nop                                              ; $5cb7: $00
	inc  h                                           ; $5cb8: $24
	inc  b                                           ; $5cb9: $04
	nop                                              ; $5cba: $00
	add  c                                           ; $5cbb: $81
	nop                                              ; $5cbc: $00
	ld   b, h                                        ; $5cbd: $44
	nop                                              ; $5cbe: $00
	add  b                                           ; $5cbf: $80
	nop                                              ; $5cc0: $00
	ld   b, d                                        ; $5cc1: $42
	nop                                              ; $5cc2: $00
	ld   hl, $5500                                   ; $5cc3: $21 $00 $55
	nop                                              ; $5cc6: $00
	or   a                                           ; $5cc7: $b7
	nop                                              ; $5cc8: $00
	ld   a, c                                        ; $5cc9: $79
	nop                                              ; $5cca: $00
	call c, $3400                                    ; $5ccb: $dc $00 $34
	nop                                              ; $5cce: $00
	ld   d, b                                        ; $5ccf: $50
	nop                                              ; $5cd0: $00
	ld   c, b                                        ; $5cd1: $48
	nop                                              ; $5cd2: $00
	ld   c, c                                        ; $5cd3: $49
	nop                                              ; $5cd4: $00
	call $3f00                                       ; $5cd5: $cd $00 $3f
	nop                                              ; $5cd8: $00
	ld   de, $2200                                   ; $5cd9: $11 $00 $22
	nop                                              ; $5cdc: $00
	ld   b, b                                        ; $5cdd: $40

jr_098_5cde:
	add  c                                           ; $5cde: $81
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	add  b                                           ; $5ce1: $80
	sub  e                                           ; $5ce2: $93
	nop                                              ; $5ce3: $00
	ld   [$0002], sp                                 ; $5ce4: $08 $02 $00
	rrca                                             ; $5ce7: $0f
	nop                                              ; $5ce8: $00
	ld   [hl], $00                                   ; $5ce9: $36 $00
	ld   c, l                                        ; $5ceb: $4d
	nop                                              ; $5cec: $00
	sbc  b                                           ; $5ced: $98
	add  c                                           ; $5cee: $81
	nop                                              ; $5cef: $00
	ld   e, $32                                      ; $5cf0: $1e $32

jr_098_5cf2:
	nop                                              ; $5cf2: $00
	ld   [$4800], sp                                 ; $5cf3: $08 $00 $48
	nop                                              ; $5cf6: $00
	stop                                             ; $5cf7: $10 $00
	cp   a                                           ; $5cf9: $bf
	nop                                              ; $5cfa: $00
	dec  bc                                          ; $5cfb: $0b

jr_098_5cfc:
	nop                                              ; $5cfc: $00
	add  d                                           ; $5cfd: $82

jr_098_5cfe:
	nop                                              ; $5cfe: $00
	adc  e                                           ; $5cff: $8b
	nop                                              ; $5d00: $00
	add  hl, bc                                      ; $5d01: $09
	nop                                              ; $5d02: $00
	ld   bc, $2a00                                   ; $5d03: $01 $00 $2a
	nop                                              ; $5d06: $00
	ccf                                              ; $5d07: $3f
	nop                                              ; $5d08: $00
	inc  e                                           ; $5d09: $1c
	nop                                              ; $5d0a: $00
	inc  c                                           ; $5d0b: $0c
	nop                                              ; $5d0c: $00
	add  a                                           ; $5d0d: $87
	nop                                              ; $5d0e: $00
	call nz, $0081                                   ; $5d0f: $c4 $81 $00
	inc  d                                           ; $5d12: $14
	add  e                                           ; $5d13: $83
	nop                                              ; $5d14: $00
	inc  b                                           ; $5d15: $04
	nop                                              ; $5d16: $00
	ld   [hl], b                                     ; $5d17: $70
	nop                                              ; $5d18: $00
	adc  h                                           ; $5d19: $8c
	nop                                              ; $5d1a: $00
	ld   b, a                                        ; $5d1b: $47
	nop                                              ; $5d1c: $00
	jr   c, jr_098_5d1f                              ; $5d1d: $38 $00

jr_098_5d1f:
	db   $fc                                         ; $5d1f: $fc
	nop                                              ; $5d20: $00
	ld   a, b                                        ; $5d21: $78
	nop                                              ; $5d22: $00
	jr   c, jr_098_5d25                              ; $5d23: $38 $00

jr_098_5d25:
	ld   b, [hl]                                     ; $5d25: $46
	nop                                              ; $5d26: $00
	add  c                                           ; $5d27: $81
	add  e                                           ; $5d28: $83
	nop                                              ; $5d29: $00
	ld   c, $08                                      ; $5d2a: $0e $08
	nop                                              ; $5d2c: $00
	ld   c, b                                        ; $5d2d: $48
	nop                                              ; $5d2e: $00
	add  b                                           ; $5d2f: $80
	nop                                              ; $5d30: $00
	ld   sp, $2100                                   ; $5d31: $31 $00 $21
	nop                                              ; $5d34: $00
	ldh  [rP1], a                                    ; $5d35: $e0 $00
	ld   [hl-], a                                    ; $5d37: $32
	nop                                              ; $5d38: $00
	db   $fc                                         ; $5d39: $fc
	add  b                                           ; $5d3a: $80
	dec  c                                           ; $5d3b: $0d
	dec  b                                           ; $5d3c: $05
	dec  e                                           ; $5d3d: $1d
	rra                                              ; $5d3e: $1f
	ld   a, d                                        ; $5d3f: $7a
	cp   $84                                         ; $5d40: $fe $84
	db   $fc                                         ; $5d42: $fc
	add  b                                           ; $5d43: $80
	ld   a, b                                        ; $5d44: $78
	sbc  e                                           ; $5d45: $9b
	nop                                              ; $5d46: $00
	ld   b, $0f                                      ; $5d47: $06 $0f
	nop                                              ; $5d49: $00
	ld   [hl], e                                     ; $5d4a: $73
	nop                                              ; $5d4b: $00
	sbc  h                                           ; $5d4c: $9c
	nop                                              ; $5d4d: $00
	ldh  [$81], a                                    ; $5d4e: $e0 $81
	nop                                              ; $5d50: $00
	ld   [$0001], sp                                 ; $5d51: $08 $01 $00
	jp   $c300                                       ; $5d54: $c3 $00 $c3


	nop                                              ; $5d57: $00
	add  c                                           ; $5d58: $81
	nop                                              ; $5d59: $00
	add  b                                           ; $5d5a: $80
	add  b                                           ; $5d5b: $80
	jr   jr_098_5cde                                 ; $5d5c: $18 $80

	inc  [hl]                                        ; $5d5e: $34
	dec  bc                                          ; $5d5f: $0b
	jr   jr_098_5cfc                                 ; $5d60: $18 $9a

	nop                                              ; $5d62: $00
	add  d                                           ; $5d63: $82
	nop                                              ; $5d64: $00
	cp   $00                                         ; $5d65: $fe $00
	ld   b, b                                        ; $5d67: $40
	nop                                              ; $5d68: $00
	ld   c, [hl]                                     ; $5d69: $4e
	nop                                              ; $5d6a: $00
	sub  b                                           ; $5d6b: $90
	add  c                                           ; $5d6c: $81
	nop                                              ; $5d6d: $00
	ld   [bc], a                                     ; $5d6e: $02
	add  b                                           ; $5d6f: $80
	nop                                              ; $5d70: $00
	jr   nz, jr_098_5cfe                             ; $5d71: $20 $8b

	nop                                              ; $5d73: $00
	ld   c, $20                                      ; $5d74: $0e $20
	nop                                              ; $5d76: $00
	stop                                             ; $5d77: $10 $00
	adc  [hl]                                        ; $5d79: $8e
	nop                                              ; $5d7a: $00
	ld   b, $00                                      ; $5d7b: $06 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d7d: $cf
	nop                                              ; $5d7e: $00
	ld   b, b                                        ; $5d7f: $40
	nop                                              ; $5d80: $00
	sbc  c                                           ; $5d81: $99
	nop                                              ; $5d82: $00
	ld   h, b                                        ; $5d83: $60
	add  e                                           ; $5d84: $83
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	ld   c, $8d                                      ; $5d87: $0e $8d
	nop                                              ; $5d89: $00
	ld   a, [bc]                                     ; $5d8a: $0a
	ld   hl, sp+$00                                  ; $5d8b: $f8 $00
	rst  $30                                         ; $5d8d: $f7
	nop                                              ; $5d8e: $00
	rst  $38                                         ; $5d8f: $ff
	nop                                              ; $5d90: $00
	rrca                                             ; $5d91: $0f
	nop                                              ; $5d92: $00
	ldh  a, [rP1]                                    ; $5d93: $f0 $00
	rrca                                             ; $5d95: $0f
	add  e                                           ; $5d96: $83
	nop                                              ; $5d97: $00
	ld   b, $78                                      ; $5d98: $06 $78
	nop                                              ; $5d9a: $00
	add  e                                           ; $5d9b: $83
	nop                                              ; $5d9c: $00
	ld   hl, sp+$00                                  ; $5d9d: $f8 $00
	inc  bc                                          ; $5d9f: $03
	add  l                                           ; $5da0: $85
	nop                                              ; $5da1: $00
	inc  b                                           ; $5da2: $04
	ld   a, a                                        ; $5da3: $7f
	xor  d                                           ; $5da4: $aa
	db   $eb                                         ; $5da5: $eb
	ld   b, c                                        ; $5da6: $41
	ld   a, a                                        ; $5da7: $7f
	add  b                                           ; $5da8: $80
	ccf                                              ; $5da9: $3f
	sub  a                                           ; $5daa: $97
	nop                                              ; $5dab: $00
	ld   d, $04                                      ; $5dac: $16 $04
	nop                                              ; $5dae: $00
	ld   b, $00                                      ; $5daf: $06 $00
	inc  bc                                          ; $5db1: $03
	nop                                              ; $5db2: $00
	ld   bc, $0700                                   ; $5db3: $01 $00 $07
	nop                                              ; $5db6: $00
	adc  b                                           ; $5db7: $88
	nop                                              ; $5db8: $00
	ld   [$8100], sp                                 ; $5db9: $08 $00 $81
	nop                                              ; $5dbc: $00
	ld   b, $00                                      ; $5dbd: $06 $00
	ld   b, $00                                      ; $5dbf: $06 $00
	ld   bc, $0700                                   ; $5dc1: $01 $00 $07
	sub  e                                           ; $5dc4: $93
	nop                                              ; $5dc5: $00
	ld   bc, $0080                                   ; $5dc6: $01 $80 $00
	add  b                                           ; $5dc9: $80
	jr   nc, jr_098_5dcc                             ; $5dca: $30 $00

jr_098_5dcc:
	add  b                                           ; $5dcc: $80
	add  e                                           ; $5dcd: $83
	nop                                              ; $5dce: $00
	ld   a, [bc]                                     ; $5dcf: $0a
	ret  nz                                          ; $5dd0: $c0

	nop                                              ; $5dd1: $00
	ret  nz                                          ; $5dd2: $c0

	nop                                              ; $5dd3: $00
	ldh  [rP1], a                                    ; $5dd4: $e0 $00
	stop                                             ; $5dd6: $10 $00
	call nz, $3c00                                   ; $5dd8: $c4 $00 $3c
	add  c                                           ; $5ddb: $81
	nop                                              ; $5ddc: $00
	ld   a, [de]                                     ; $5ddd: $1a
	inc  c                                           ; $5dde: $0c
	nop                                              ; $5ddf: $00
	and  b                                           ; $5de0: $a0
	nop                                              ; $5de1: $00
	db   $eb                                         ; $5de2: $eb
	nop                                              ; $5de3: $00
	rst  $38                                         ; $5de4: $ff
	nop                                              ; $5de5: $00
	add  b                                           ; $5de6: $80
	nop                                              ; $5de7: $00
	ld   [$0800], sp                                 ; $5de8: $08 $00 $08
	nop                                              ; $5deb: $00
	sub  b                                           ; $5dec: $90
	nop                                              ; $5ded: $00
	ret  nz                                          ; $5dee: $c0

	nop                                              ; $5def: $00
	ld   bc, $4800                                   ; $5df0: $01 $00 $48
	nop                                              ; $5df3: $00
	daa                                              ; $5df4: $27
	nop                                              ; $5df5: $00
	ld   [bc], a                                     ; $5df6: $02
	nop                                              ; $5df7: $00
	inc  c                                           ; $5df8: $0c
	rst  $38                                         ; $5df9: $ff
	nop                                              ; $5dfa: $00
	rst  $38                                         ; $5dfb: $ff
	nop                                              ; $5dfc: $00
	rst  $38                                         ; $5dfd: $ff
	nop                                              ; $5dfe: $00
	rst  $38                                         ; $5dff: $ff
	nop                                              ; $5e00: $00
	rst  $38                                         ; $5e01: $ff
	nop                                              ; $5e02: $00
	rst  $38                                         ; $5e03: $ff
	nop                                              ; $5e04: $00
	rst  $38                                         ; $5e05: $ff
	nop                                              ; $5e06: $00
	rst  $38                                         ; $5e07: $ff
	nop                                              ; $5e08: $00
	rst  $38                                         ; $5e09: $ff
	nop                                              ; $5e0a: $00
	rst  $38                                         ; $5e0b: $ff
	nop                                              ; $5e0c: $00
	rst  $38                                         ; $5e0d: $ff
	nop                                              ; $5e0e: $00
	sub  h                                           ; $5e0f: $94
	nop                                              ; $5e10: $00
	inc  b                                           ; $5e11: $04
	rst  $38                                         ; $5e12: $ff
	ld   e, b                                        ; $5e13: $58
	ld   e, l                                        ; $5e14: $5d
	ld   [hl], $33                                   ; $5e15: $36 $33
	add  c                                           ; $5e17: $81
	ld   l, a                                        ; $5e18: $6f
	ld   [bc], a                                     ; $5e19: $02
	ld   l, l                                        ; $5e1a: $6d
	xor  $ec                                         ; $5e1b: $ee $ec
	add  b                                           ; $5e1d: $80
	pop  af                                          ; $5e1e: $f1
	add  b                                           ; $5e1f: $80
	db   $e3                                         ; $5e20: $e3
	add  b                                           ; $5e21: $80
	reti                                             ; $5e22: $d9


	add  b                                           ; $5e23: $80
	ld   a, c                                        ; $5e24: $79
	add  b                                           ; $5e25: $80
	cp   h                                           ; $5e26: $bc
	add  b                                           ; $5e27: $80
	and  e                                           ; $5e28: $a3
	add  b                                           ; $5e29: $80
	rra                                              ; $5e2a: $1f
	ld   [bc], a                                     ; $5e2b: $02
	cp   b                                           ; $5e2c: $b8
	cp   d                                           ; $5e2d: $ba
	jp   nz, $cd80                                   ; $5e2e: $c2 $80 $cd

	ld   [bc], a                                     ; $5e31: $02
	push de                                          ; $5e32: $d5
	sub  l                                           ; $5e33: $95
	add  b                                           ; $5e34: $80
	add  b                                           ; $5e35: $80
	rrca                                             ; $5e36: $0f
	add  b                                           ; $5e37: $80
	nop                                              ; $5e38: $00

jr_098_5e39:
	add  b                                           ; $5e39: $80
	or   $02                                         ; $5e3a: $f6 $02
	add  e                                           ; $5e3c: $83
	xor  a                                           ; $5e3d: $af
	dec  l                                           ; $5e3e: $2d
	add  b                                           ; $5e3f: $80
	xor  l                                           ; $5e40: $ad
	nop                                              ; $5e41: $00
	ld   d, a                                        ; $5e42: $57
	add  c                                           ; $5e43: $81
	ld   d, [hl]                                     ; $5e44: $56
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	add  b                                           ; $5e47: $80
	and  $80                                         ; $5e48: $e6 $80
	jp   $2180                                       ; $5e4a: $c3 $80 $21


	add  b                                           ; $5e4d: $80
	ld   h, b                                        ; $5e4e: $60
	add  b                                           ; $5e4f: $80
	rlca                                             ; $5e50: $07
	add  b                                           ; $5e51: $80
	xor  a                                           ; $5e52: $af
	dec  b                                           ; $5e53: $05
	and  a                                           ; $5e54: $a7
	rst  $20                                         ; $5e55: $e7
	ld   d, a                                        ; $5e56: $57
	jr   jr_098_5e39                                 ; $5e57: $18 $e0

	ldh  a, [$81]                                    ; $5e59: $f0 $81
	ret  nz                                          ; $5e5b: $c0

	nop                                              ; $5e5c: $00
	ldh  [$80], a                                    ; $5e5d: $e0 $80
	add  b                                           ; $5e5f: $80
	add  b                                           ; $5e60: $80
	nop                                              ; $5e61: $00
	ld   bc, sGlobalFlags1                                   ; $5e62: $01 $80 $a0
	add  c                                           ; $5e65: $81
	ret  nz                                          ; $5e66: $c0

	inc  bc                                          ; $5e67: $03
	ld   hl, $fc00                                   ; $5e68: $21 $00 $fc
	nop                                              ; $5e6b: $00
	add  b                                           ; $5e6c: $80
	db   $fc                                         ; $5e6d: $fc
	dec  b                                           ; $5e6e: $05
	ld   bc, $fa02                                   ; $5e6f: $01 $02 $fa
	ld   [bc], a                                     ; $5e72: $02
	ld   hl, sp+$00                                  ; $5e73: $f8 $00
	add  b                                           ; $5e75: $80
	cp   $02                                         ; $5e76: $fe $02
	ld   bc, $0200                                   ; $5e78: $01 $00 $02
	add  b                                           ; $5e7b: $80
	cp   d                                           ; $5e7c: $ba
	ld   bc, $b5a2                                   ; $5e7d: $01 $a2 $b5
	add  b                                           ; $5e80: $80
	ld   d, l                                        ; $5e81: $55
	nop                                              ; $5e82: $00
	dec  d                                           ; $5e83: $15
	add  d                                           ; $5e84: $82
	ld   a, [hl+]                                    ; $5e85: $2a
	add  b                                           ; $5e86: $80
	ld   d, l                                        ; $5e87: $55
	inc  bc                                          ; $5e88: $03
	sub  l                                           ; $5e89: $95
	dec  d                                           ; $5e8a: $15
	ld   [$806a], a                                  ; $5e8b: $ea $6a $80
	ld   [$7582], a                                  ; $5e8e: $ea $82 $75
	add  d                                           ; $5e91: $82
	cp   d                                           ; $5e92: $ba
	add  b                                           ; $5e93: $80
	ld   e, l                                        ; $5e94: $5d
	add  b                                           ; $5e95: $80
	ld   e, h                                        ; $5e96: $5c
	add  d                                           ; $5e97: $82
	xor  e                                           ; $5e98: $ab
	add  d                                           ; $5e99: $82
	ld   d, l                                        ; $5e9a: $55
	add  b                                           ; $5e9b: $80
	xor  d                                           ; $5e9c: $aa
	inc  de                                          ; $5e9d: $13
	and  c                                           ; $5e9e: $a1
	and  b                                           ; $5e9f: $a0
	ld   c, $01                                      ; $5ea0: $0e $01
	ld   a, [hl]                                     ; $5ea2: $7e
	nop                                              ; $5ea3: $00
	or   b                                           ; $5ea4: $b0
	pop  de                                          ; $5ea5: $d1
	pop  af                                          ; $5ea6: $f1
	and  $ee                                         ; $5ea7: $e6 $ee
	rst  $20                                         ; $5ea9: $e7
	sbc  a                                           ; $5eaa: $9f
	add  b                                           ; $5eab: $80
	ld   l, a                                        ; $5eac: $6f
	rra                                              ; $5ead: $1f
	ldh  [rP1], a                                    ; $5eae: $e0 $00
	ld   a, a                                        ; $5eb0: $7f
	rst  $38                                         ; $5eb1: $ff
	add  b                                           ; $5eb2: $80
	nop                                              ; $5eb3: $00
	inc  bc                                          ; $5eb4: $03
	rra                                              ; $5eb5: $1f
	ret  nz                                          ; $5eb6: $c0

	rst  JumpTable                                         ; $5eb7: $df
	nop                                              ; $5eb8: $00
	add  b                                           ; $5eb9: $80
	ld   a, a                                        ; $5eba: $7f
	add  b                                           ; $5ebb: $80
	ld   b, b                                        ; $5ebc: $40
	inc  bc                                          ; $5ebd: $03
	ld   e, a                                        ; $5ebe: $5f
	ld   b, b                                        ; $5ebf: $40
	rra                                              ; $5ec0: $1f
	nop                                              ; $5ec1: $00
	add  b                                           ; $5ec2: $80
	rst  $38                                         ; $5ec3: $ff
	add  c                                           ; $5ec4: $81
	nop                                              ; $5ec5: $00
	add  b                                           ; $5ec6: $80
	rst  $38                                         ; $5ec7: $ff
	add  b                                           ; $5ec8: $80
	ld   a, a                                        ; $5ec9: $7f
	add  b                                           ; $5eca: $80
	ld   a, b                                        ; $5ecb: $78
	add  b                                           ; $5ecc: $80
	or   a                                           ; $5ecd: $b7
	add  b                                           ; $5ece: $80
	rst  $30                                         ; $5ecf: $f7
	add  b                                           ; $5ed0: $80
	ld   l, a                                        ; $5ed1: $6f
	add  c                                           ; $5ed2: $81
	rrca                                             ; $5ed3: $0f
	inc  b                                           ; $5ed4: $04
	ld   c, $f8                                      ; $5ed5: $0e $f8
	ldh  a, [$f8]                                    ; $5ed7: $f0 $f8
	pop  af                                          ; $5ed9: $f1
	add  b                                           ; $5eda: $80
	ldh  a, [c]                                      ; $5edb: $f2
	inc  bc                                          ; $5edc: $03
	ld   [hl], l                                     ; $5edd: $75
	ld   a, l                                        ; $5ede: $7d
	cp   d                                           ; $5edf: $ba
	ld   [hl-], a                                    ; $5ee0: $32
	add  b                                           ; $5ee1: $80
	dec  sp                                          ; $5ee2: $3b
	nop                                              ; $5ee3: $00
	ld   b, e                                        ; $5ee4: $43
	add  b                                           ; $5ee5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee6: $cf
	inc  c                                           ; $5ee7: $0c
	cpl                                              ; $5ee8: $2f
	inc  c                                           ; $5ee9: $0c
	ld   [de], a                                     ; $5eea: $12
	nop                                              ; $5eeb: $00
	dec  c                                           ; $5eec: $0d
	ld   bc, $0081                                   ; $5eed: $01 $81 $00
	ld   b, b                                        ; $5ef0: $40
	add  b                                           ; $5ef1: $80
	and  b                                           ; $5ef2: $a0
	ld   b, b                                        ; $5ef3: $40
	ld   d, b                                        ; $5ef4: $50
	add  b                                           ; $5ef5: $80
	and  b                                           ; $5ef6: $a0
	ld   bc, $e5e0                                   ; $5ef7: $01 $e0 $e5
	add  d                                           ; $5efa: $82
	ld   [$6a80], a                                  ; $5efb: $ea $80 $6a
	inc  bc                                          ; $5efe: $03
	ld   a, [hl+]                                    ; $5eff: $2a
	ld   [$6a4a], a                                  ; $5f00: $ea $4a $6a
	add  e                                           ; $5f03: $83
	ld   a, [bc]                                     ; $5f04: $0a
	ld   [bc], a                                     ; $5f05: $02
	inc  de                                          ; $5f06: $13
	nop                                              ; $5f07: $00
	inc  c                                           ; $5f08: $0c
	add  e                                           ; $5f09: $83
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	ld   bc, $0085                                   ; $5f0c: $01 $85 $00
	ld   b, $fe                                      ; $5f0f: $06 $fe
	nop                                              ; $5f11: $00
	inc  a                                           ; $5f12: $3c
	inc  l                                           ; $5f13: $2c
	ld   c, d                                        ; $5f14: $4a
	ld   e, d                                        ; $5f15: $5a
	ld   h, [hl]                                     ; $5f16: $66
	add  b                                           ; $5f17: $80
	ld   h, $00                                      ; $5f18: $26 $00
	ld   h, [hl]                                     ; $5f1a: $66
	add  b                                           ; $5f1b: $80
	ld   e, d                                        ; $5f1c: $5a
	add  b                                           ; $5f1d: $80
	inc  a                                           ; $5f1e: $3c
	add  b                                           ; $5f1f: $80
	nop                                              ; $5f20: $00
	ld   bc, $4041                                   ; $5f21: $01 $41 $40
	add  b                                           ; $5f24: $80
	ld   e, h                                        ; $5f25: $5c
	add  b                                           ; $5f26: $80
	ld   b, h                                        ; $5f27: $44
	nop                                              ; $5f28: $00
	ld   d, h                                        ; $5f29: $54
	add  a                                           ; $5f2a: $87
	ld   b, h                                        ; $5f2b: $44

jr_098_5f2c:
	ld   bc, $0011                                   ; $5f2c: $01 $11 $00
	add  b                                           ; $5f2f: $80
	rst  $38                                         ; $5f30: $ff
	add  b                                           ; $5f31: $80
	nop                                              ; $5f32: $00
	inc  bc                                          ; $5f33: $03
	ld   e, a                                        ; $5f34: $5f
	ld   b, b                                        ; $5f35: $40
	ld   e, a                                        ; $5f36: $5f
	ld   b, b                                        ; $5f37: $40
	add  b                                           ; $5f38: $80
	ld   a, a                                        ; $5f39: $7f
	add  b                                           ; $5f3a: $80
	nop                                              ; $5f3b: $00
	inc  bc                                          ; $5f3c: $03
	rst  $38                                         ; $5f3d: $ff
	nop                                              ; $5f3e: $00
	rst  $38                                         ; $5f3f: $ff
	nop                                              ; $5f40: $00
	add  b                                           ; $5f41: $80
	rst  $38                                         ; $5f42: $ff
	add  b                                           ; $5f43: $80
	nop                                              ; $5f44: $00
	inc  bc                                          ; $5f45: $03
	jp   nz, $ca0a                                   ; $5f46: $c2 $0a $ca

	ld   [bc], a                                     ; $5f49: $02

Jump_098_5f4a:
	add  b                                           ; $5f4a: $80
	cp   $80                                         ; $5f4b: $fe $80
	nop                                              ; $5f4d: $00
	inc  bc                                          ; $5f4e: $03
	inc  bc                                          ; $5f4f: $03
	ld   a, e                                        ; $5f50: $7b
	ld   a, b                                        ; $5f51: $78
	nop                                              ; $5f52: $00
	add  b                                           ; $5f53: $80
	rst  $38                                         ; $5f54: $ff
	add  b                                           ; $5f55: $80
	nop                                              ; $5f56: $00
	add  b                                           ; $5f57: $80
	rst  $38                                         ; $5f58: $ff
	add  c                                           ; $5f59: $81
	nop                                              ; $5f5a: $00
	add  b                                           ; $5f5b: $80
	rst  $38                                         ; $5f5c: $ff
	inc  b                                           ; $5f5d: $04
	adc  a                                           ; $5f5e: $8f
	rst  $38                                         ; $5f5f: $ff
	ld   [hl], a                                     ; $5f60: $77
	rlca                                             ; $5f61: $07
	nop                                              ; $5f62: $00
	add  b                                           ; $5f63: $80
	rst  $38                                         ; $5f64: $ff
	add  b                                           ; $5f65: $80
	nop                                              ; $5f66: $00
	add  b                                           ; $5f67: $80
	rst  $38                                         ; $5f68: $ff
	add  c                                           ; $5f69: $81
	nop                                              ; $5f6a: $00
	add  b                                           ; $5f6b: $80
	cp   $80                                         ; $5f6c: $fe $80
	db   $fd                                         ; $5f6e: $fd
	add  b                                           ; $5f6f: $80
	ei                                               ; $5f70: $fb
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	add  b                                           ; $5f73: $80
	rst  $38                                         ; $5f74: $ff
	add  b                                           ; $5f75: $80
	nop                                              ; $5f76: $00
	add  b                                           ; $5f77: $80
	rst  $38                                         ; $5f78: $ff
	add  c                                           ; $5f79: $81
	nop                                              ; $5f7a: $00
	ld   [bc], a                                     ; $5f7b: $02
	ld   a, a                                        ; $5f7c: $7f
	ld   a, [hl]                                     ; $5f7d: $7e
	cp   $81                                         ; $5f7e: $fe $81
	rst  $38                                         ; $5f80: $ff
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	add  b                                           ; $5f83: $80
	rst  $38                                         ; $5f84: $ff
	add  b                                           ; $5f85: $80
	nop                                              ; $5f86: $00
	add  b                                           ; $5f87: $80
	rst  $38                                         ; $5f88: $ff
	add  b                                           ; $5f89: $80
	nop                                              ; $5f8a: $00
	jr   jr_098_5f2c                                 ; $5f8b: $18 $9f

	add  b                                           ; $5f8d: $80
	cp   b                                           ; $5f8e: $b8
	ld   h, b                                        ; $5f8f: $60
	xor  h                                           ; $5f90: $ac
	sbc  b                                           ; $5f91: $98
	or   a                                           ; $5f92: $b7
	ld   d, h                                        ; $5f93: $54
	ld   d, [hl]                                     ; $5f94: $56
	ld   d, b                                        ; $5f95: $50
	ld   e, d                                        ; $5f96: $5a
	ld   d, h                                        ; $5f97: $54
	ld   c, b                                        ; $5f98: $48
	ld   b, d                                        ; $5f99: $42
	ld   a, d                                        ; $5f9a: $7a
	ld   c, [hl]                                     ; $5f9b: $4e
	ld   b, [hl]                                     ; $5f9c: $46
	inc  l                                           ; $5f9d: $2c
	inc  c                                           ; $5f9e: $0c
	dec  e                                           ; $5f9f: $1d
	sbc  l                                           ; $5fa0: $9d
	ld   e, h                                        ; $5fa1: $5c
	sbc  e                                           ; $5fa2: $9b
	ld   [hl], a                                     ; $5fa3: $77
	ld   [hl], b                                     ; $5fa4: $70
	add  b                                           ; $5fa5: $80
	add  b                                           ; $5fa6: $80
	dec  b                                           ; $5fa7: $05
	ld   [$d60e], sp                                 ; $5fa8: $08 $0e $d6
	call nc, $e0c4                                   ; $5fab: $d4 $c4 $e0
	add  b                                           ; $5fae: $80
	xor  b                                           ; $5faf: $a8
	ld   [$0121], sp                                 ; $5fb0: $08 $21 $01
	dec  d                                           ; $5fb3: $15
	ld   h, l                                        ; $5fb4: $65
	ld   [hl], b                                     ; $5fb5: $70
	ld   [bc], a                                     ; $5fb6: $02
	inc  c                                           ; $5fb7: $0c
	ld   [bc], a                                     ; $5fb8: $02

jr_098_5fb9:
	ldh  a, [c]                                      ; $5fb9: $f2
	add  b                                           ; $5fba: $80
	ld   c, $00                                      ; $5fbb: $0e $00
	cp   $80                                         ; $5fbd: $fe $80

jr_098_5fbf:
	ld   a, [$fe80]                                  ; $5fbf: $fa $80 $fe
	add  b                                           ; $5fc2: $80
	ld   a, [hl]                                     ; $5fc3: $7e
	add  b                                           ; $5fc4: $80
	ld   a, d                                        ; $5fc5: $7a
	add  b                                           ; $5fc6: $80
	rst  $30                                         ; $5fc7: $f7
	add  d                                           ; $5fc8: $82
	rst  $28                                         ; $5fc9: $ef
	add  b                                           ; $5fca: $80
	rst  JumpTable                                         ; $5fcb: $df
	add  b                                           ; $5fcc: $80
	rst  $10                                         ; $5fcd: $d7
	add  b                                           ; $5fce: $80
	sbc  a                                           ; $5fcf: $9f
	add  b                                           ; $5fd0: $80
	adc  h                                           ; $5fd1: $8c
	add  b                                           ; $5fd2: $80
	inc  sp                                          ; $5fd3: $33
	inc  bc                                          ; $5fd4: $03
	rst  $38                                         ; $5fd5: $ff
	cp   $fc                                         ; $5fd6: $fe $fc
	db   $fd                                         ; $5fd8: $fd
	add  b                                           ; $5fd9: $80
	ld   a, a                                        ; $5fda: $7f
	add  b                                           ; $5fdb: $80
	ldh  a, [$80]                                    ; $5fdc: $f0 $80
	adc  a                                           ; $5fde: $8f
	add  b                                           ; $5fdf: $80
	ld   a, h                                        ; $5fe0: $7c
	add  b                                           ; $5fe1: $80
	ldh  [rTAC], a                                   ; $5fe2: $e0 $07
	nop                                              ; $5fe4: $00
	ld   sp, $15cc                                   ; $5fe5: $31 $cc $15
	ld   b, $eb                                      ; $5fe8: $06 $eb
	ld   sp, hl                                      ; $5fea: $f9
	db   $fc                                         ; $5feb: $fc
	add  b                                           ; $5fec: $80
	rlca                                             ; $5fed: $07
	add  b                                           ; $5fee: $80
	ld   hl, sp-$80                                  ; $5fef: $f8 $80
	rra                                              ; $5ff1: $1f
	add  b                                           ; $5ff2: $80
	inc  bc                                          ; $5ff3: $03
	ld   bc, $ff00                                   ; $5ff4: $01 $00 $ff
	add  c                                           ; $5ff7: $81
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	add  b                                           ; $5ffa: $80
	add  c                                           ; $5ffb: $81
	nop                                              ; $5ffc: $00
	inc  b                                           ; $5ffd: $04
	ld   b, b                                        ; $5ffe: $40
	add  b                                           ; $5fff: $80
	or   b                                           ; $6000: $b0
	nop                                              ; $6001: $00

Call_098_6002:
	ld   [$b081], sp                                 ; $6002: $08 $81 $b0
	ld   bc, $3a37                                   ; $6005: $01 $37 $3a
	add  b                                           ; $6008: $80
	ld   [bc], a                                     ; $6009: $02
	ld   [bc], a                                     ; $600a: $02
	ld   a, [de]                                     ; $600b: $1a

Call_098_600c:
	jr   jr_098_6046                                 ; $600c: $18 $38

	add  b                                           ; $600e: $80
	ld   a, [hl-]                                    ; $600f: $3a
	rlca                                             ; $6010: $07
	dec  sp                                          ; $6011: $3b
	ld   a, e                                        ; $6012: $7b
	ld   e, l                                        ; $6013: $5d
	db   $dd                                         ; $6014: $dd
	ld   e, $3e                                      ; $6015: $1e $3e
	ld   c, a                                        ; $6017: $4f
	xor  a                                           ; $6018: $af
	add  b                                           ; $6019: $80
	adc  e                                           ; $601a: $8b
	inc  bc                                          ; $601b: $03
	and  e                                           ; $601c: $a3
	jr   nz, jr_098_6037                             ; $601d: $20 $18

	dec  de                                          ; $601f: $1b
	add  b                                           ; $6020: $80
	di                                               ; $6021: $f3
	add  b                                           ; $6022: $80
	dec  bc                                          ; $6023: $0b
	add  b                                           ; $6024: $80
	rst  $30                                         ; $6025: $f7
	add  b                                           ; $6026: $80
	rrca                                             ; $6027: $0f
	add  b                                           ; $6028: $80
	cp   $80                                         ; $6029: $fe $80
	cp   [hl]                                        ; $602b: $be
	inc  bc                                          ; $602c: $03
	cp   h                                           ; $602d: $bc
	inc  a                                           ; $602e: $3c
	jr   c, @-$46                                    ; $602f: $38 $b8

	add  b                                           ; $6031: $80
	and  b                                           ; $6032: $a0
	inc  bc                                          ; $6033: $03
	sbc  b                                           ; $6034: $98
	ret  c                                           ; $6035: $d8

	ld   a, b                                        ; $6036: $78

jr_098_6037:
	jr   c, jr_098_5fb9                              ; $6037: $38 $80

	ld   a, b                                        ; $6039: $78
	add  b                                           ; $603a: $80
	ldh  a, [$80]                                    ; $603b: $f0 $80
	jr   c, jr_098_5fbf                              ; $603d: $38 $80

	cp   a                                           ; $603f: $bf
	add  b                                           ; $6040: $80
	or   a                                           ; $6041: $b7
	add  b                                           ; $6042: $80
	cp   [hl]                                        ; $6043: $be
	add  b                                           ; $6044: $80
	cp   l                                           ; $6045: $bd

jr_098_6046:
	add  b                                           ; $6046: $80
	sub  e                                           ; $6047: $93
	add  b                                           ; $6048: $80
	xor  h                                           ; $6049: $ac
	add  b                                           ; $604a: $80
	or   b                                           ; $604b: $b0
	add  b                                           ; $604c: $80
	inc  bc                                          ; $604d: $03
	add  b                                           ; $604e: $80
	rst  $38                                         ; $604f: $ff
	add  hl, bc                                      ; $6050: $09
	jp   nz, $3dfe                                   ; $6051: $c2 $fe $3d

	inc  hl                                          ; $6054: $23
	and  d                                           ; $6055: $a2
	add  h                                           ; $6056: $84
	inc  b                                           ; $6057: $04
	ld   [$0800], sp                                 ; $6058: $08 $00 $08
	add  b                                           ; $605b: $80
	nop                                              ; $605c: $00
	add  b                                           ; $605d: $80
	db   $fc                                         ; $605e: $fc
	add  b                                           ; $605f: $80
	rst  $38                                         ; $6060: $ff
	add  b                                           ; $6061: $80
	rrca                                             ; $6062: $0f
	add  b                                           ; $6063: $80
	ldh  a, [$80]                                    ; $6064: $f0 $80
	rst  $38                                         ; $6066: $ff
	add  b                                           ; $6067: $80
	rrca                                             ; $6068: $0f
	add  c                                           ; $6069: $81
	nop                                              ; $606a: $00
	dec  b                                           ; $606b: $05
	rlca                                             ; $606c: $07
	jr   nc, jr_098_60a7                             ; $606d: $30 $38

	add  b                                           ; $606f: $80
	ret  nz                                          ; $6070: $c0

	and  b                                           ; $6071: $a0
	add  b                                           ; $6072: $80
	ldh  [rDIV], a                                   ; $6073: $e0 $04
	ldh  a, [rP1]                                    ; $6075: $f0 $00
	db   $10                                         ; $6077: $10
	ldh  [$ef], a                                    ; $6078: $e0 $ef
	add  b                                           ; $607a: $80
	ldh  a, [rSB]                                    ; $607b: $f0 $01
	scf                                              ; $607d: $37
	db   $dd                                         ; $607e: $dd
	adc  e                                           ; $607f: $8b
	ld   a, [bc]                                     ; $6080: $0a
	dec  bc                                          ; $6081: $0b
	adc  d                                           ; $6082: $8a
	ld   a, [bc]                                     ; $6083: $0a
	jr   nc, jr_098_60cd                             ; $6084: $30 $47

	ld   c, a                                        ; $6086: $4f
	ld   d, c                                        ; $6087: $51
	ld   e, c                                        ; $6088: $59
	ld   d, d                                        ; $6089: $52
	ld   d, [hl]                                     ; $608a: $56
	ld   d, l                                        ; $608b: $55
	ld   d, a                                        ; $608c: $57
	ld   d, [hl]                                     ; $608d: $56
	add  h                                           ; $608e: $84
	ld   d, a                                        ; $608f: $57
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	add  b                                           ; $6092: $80
	db   $fd                                         ; $6093: $fd
	add  b                                           ; $6094: $80
	di                                               ; $6095: $f3
	add  b                                           ; $6096: $80
	ld   bc, $7880                                   ; $6097: $01 $80 $78
	add  b                                           ; $609a: $80
	inc  b                                           ; $609b: $04
	add  b                                           ; $609c: $80
	ld   a, d                                        ; $609d: $7a
	add  b                                           ; $609e: $80
	dec  de                                          ; $609f: $1b
	add  b                                           ; $60a0: $80
	dec  b                                           ; $60a1: $05
	add  b                                           ; $60a2: $80
	pop  af                                          ; $60a3: $f1
	add  b                                           ; $60a4: $80
	pop  hl                                          ; $60a5: $e1
	add  b                                           ; $60a6: $80

jr_098_60a7:
	jp   $0780                                       ; $60a7: $c3 $80 $07


	add  b                                           ; $60aa: $80
	inc  a                                           ; $60ab: $3c
	add  b                                           ; $60ac: $80
	inc  bc                                          ; $60ad: $03
	add  b                                           ; $60ae: $80
	rlca                                             ; $60af: $07
	add  b                                           ; $60b0: $80
	add  b                                           ; $60b1: $80
	add  b                                           ; $60b2: $80
	cp   a                                           ; $60b3: $bf
	add  b                                           ; $60b4: $80
	cp   e                                           ; $60b5: $bb
	add  d                                           ; $60b6: $82
	ld   a, a                                        ; $60b7: $7f
	add  b                                           ; $60b8: $80
	db   $fc                                         ; $60b9: $fc
	add  b                                           ; $60ba: $80
	ei                                               ; $60bb: $fb
	add  b                                           ; $60bc: $80
	adc  e                                           ; $60bd: $8b
	add  b                                           ; $60be: $80
	inc  [hl]                                        ; $60bf: $34
	add  b                                           ; $60c0: $80
	add  e                                           ; $60c1: $83
	add  b                                           ; $60c2: $80
	rst  $38                                         ; $60c3: $ff
	add  b                                           ; $60c4: $80
	cp   $80                                         ; $60c5: $fe $80
	cp   a                                           ; $60c7: $bf
	add  b                                           ; $60c8: $80
	rst  $38                                         ; $60c9: $ff
	add  d                                           ; $60ca: $82
	ld   a, a                                        ; $60cb: $7f
	add  b                                           ; $60cc: $80

jr_098_60cd:
	rst  $38                                         ; $60cd: $ff
	add  b                                           ; $60ce: $80
	cp   $80                                         ; $60cf: $fe $80
	rst  $38                                         ; $60d1: $ff
	add  b                                           ; $60d2: $80
	ei                                               ; $60d3: $fb
	nop                                              ; $60d4: $00
	rst  $38                                         ; $60d5: $ff
	add  b                                           ; $60d6: $80
	rlca                                             ; $60d7: $07
	add  b                                           ; $60d8: $80
	ld   sp, hl                                      ; $60d9: $f9
	add  d                                           ; $60da: $82
	db   $fc                                         ; $60db: $fc
	ld   b, $ff                                      ; $60dc: $06 $ff
	rrca                                             ; $60de: $0f
	ld   [$efc8], sp                                 ; $60df: $08 $c8 $ef
	rst  $10                                         ; $60e2: $d7
	rst  $30                                         ; $60e3: $f7
	add  b                                           ; $60e4: $80
	rst  $20                                         ; $60e5: $e7
	add  b                                           ; $60e6: $80
	ld   c, a                                        ; $60e7: $4f
	ld   b, $b0                                      ; $60e8: $06 $b0
	or   a                                           ; $60ea: $b7
	or   b                                           ; $60eb: $b0
	or   l                                           ; $60ec: $b5
	cp   b                                           ; $60ed: $b8
	sub  b                                           ; $60ee: $90
	adc  d                                           ; $60ef: $8a
	add  b                                           ; $60f0: $80
	ld   a, [bc]                                     ; $60f1: $0a
	nop                                              ; $60f2: $00
	xor  d                                           ; $60f3: $aa
	add  d                                           ; $60f4: $82
	jp   z, $0a01                                    ; $60f5: $ca $01 $0a

	ld   [$0a81], a                                  ; $60f8: $ea $81 $0a
	inc  bc                                          ; $60fb: $03
	adc  d                                           ; $60fc: $8a
	ld   a, [bc]                                     ; $60fd: $0a
	scf                                              ; $60fe: $37
	ld   d, a                                        ; $60ff: $57

Jump_098_6100:
	add  b                                           ; $6100: $80
	ld   d, e                                        ; $6101: $53
	ld   [bc], a                                     ; $6102: $02
	ld   d, h                                        ; $6103: $54
	ld   d, b                                        ; $6104: $50
	ld   d, e                                        ; $6105: $53
	add  l                                           ; $6106: $85
	ld   d, b                                        ; $6107: $50
	ld   [de], a                                     ; $6108: $12
	ld   d, c                                        ; $6109: $51
	ld   d, b                                        ; $610a: $50
	add  [hl]                                        ; $610b: $86
	add  b                                           ; $610c: $80
	add  d                                           ; $610d: $82
	add  e                                           ; $610e: $83
	call $1bcf                                       ; $610f: $cd $cf $1b
	ld   e, $c6                                      ; $6112: $1e $c6
	inc  bc                                          ; $6114: $03
	ld   [hl], e                                     ; $6115: $73
	inc  a                                           ; $6116: $3c
	xor  h                                           ; $6117: $ac
	ccf                                              ; $6118: $3f
	rst  JumpTable                                         ; $6119: $df
	rst  $30                                         ; $611a: $f7
	scf                                              ; $611b: $37
	add  b                                           ; $611c: $80
	ld   b, b                                        ; $611d: $40
	add  b                                           ; $611e: $80
	sub  b                                           ; $611f: $90
	add  b                                           ; $6120: $80
	db   $ed                                         ; $6121: $ed
	ld   [bc], a                                     ; $6122: $02
	push af                                          ; $6123: $f5
	push hl                                          ; $6124: $e5
	jp   hl                                          ; $6125: $e9


	add  b                                           ; $6126: $80
	reti                                             ; $6127: $d9


	ld   [bc], a                                     ; $6128: $02
	cp   c                                           ; $6129: $b9
	dec  [hl]                                        ; $612a: $35
	ld   [hl], l                                     ; $612b: $75
	add  b                                           ; $612c: $80
	and  h                                           ; $612d: $a4
	add  d                                           ; $612e: $82
	ld   a, e                                        ; $612f: $7b
	add  b                                           ; $6130: $80
	add  a                                           ; $6131: $87
	add  b                                           ; $6132: $80
	rst  $38                                         ; $6133: $ff
	add  b                                           ; $6134: $80
	rst  ToBoot                                         ; $6135: $c7
	add  b                                           ; $6136: $80
	cp   c                                           ; $6137: $b9
	add  b                                           ; $6138: $80
	ld   b, [hl]                                     ; $6139: $46
	add  b                                           ; $613a: $80
	add  d                                           ; $613b: $82
	adc  l                                           ; $613c: $8d
	rst  $38                                         ; $613d: $ff
	add  b                                           ; $613e: $80
	db   $fc                                         ; $613f: $fc
	add  d                                           ; $6140: $82
	db   $fd                                         ; $6141: $fd
	add  b                                           ; $6142: $80
	ei                                               ; $6143: $fb
	ld   bc, $fbfa                                   ; $6144: $01 $fa $fb
	add  b                                           ; $6147: $80
	or   $09                                         ; $6148: $f6 $09
	db   $fc                                         ; $614a: $fc
	cp   $fd                                         ; $614b: $fe $fd
	db   $fc                                         ; $614d: $fc
	db   $fd                                         ; $614e: $fd
	cp   c                                           ; $614f: $b9
	cp   e                                           ; $6150: $bb
	cp   b                                           ; $6151: $b8
	cp   c                                           ; $6152: $b9
	ld   [hl], h                                     ; $6153: $74
	add  c                                           ; $6154: $81
	ld   [hl], a                                     ; $6155: $77
	add  hl, bc                                      ; $6156: $09
	dec  hl                                          ; $6157: $2b
	db   $eb                                         ; $6158: $eb
	ld   c, $2c                                      ; $6159: $0e $2c
	ld   c, $06                                      ; $615b: $0e $06
	ld   a, [bc]                                     ; $615d: $0a
	xor  d                                           ; $615e: $aa
	ld   a, [bc]                                     ; $615f: $0a
	ld   c, d                                        ; $6160: $4a
	add  c                                           ; $6161: $81
	xor  d                                           ; $6162: $aa
	ld   bc, $2aea                                   ; $6163: $01 $ea $2a
	add  b                                           ; $6166: $80
	ld   a, [bc]                                     ; $6167: $0a
	nop                                              ; $6168: $00
	ld   l, d                                        ; $6169: $6a
	add  e                                           ; $616a: $83
	ld   [$b605], a                                  ; $616b: $ea $05 $b6
	ld   d, b                                        ; $616e: $50
	ld   d, e                                        ; $616f: $53
	ld   d, c                                        ; $6170: $51
	ld   d, a                                        ; $6171: $57
	ld   d, e                                        ; $6172: $53
	add  b                                           ; $6173: $80
	ld   d, l                                        ; $6174: $55
	add  b                                           ; $6175: $80
	ld   d, c                                        ; $6176: $51
	add  b                                           ; $6177: $80
	ld   d, b                                        ; $6178: $50
	ld   a, [bc]                                     ; $6179: $0a
	ld   d, e                                        ; $617a: $53
	ld   d, b                                        ; $617b: $50
	ld   d, h                                        ; $617c: $54
	ld   d, b                                        ; $617d: $50
	rlca                                             ; $617e: $07
	rra                                              ; $617f: $1f
	sbc  $e6                                         ; $6180: $de $e6
	and  h                                           ; $6182: $a4
	ld   hl, sp+$7b                                  ; $6183: $f8 $7b
	add  b                                           ; $6185: $80
	db   $fd                                         ; $6186: $fd
	rlca                                             ; $6187: $07
	cp   [hl]                                        ; $6188: $be
	or   [hl]                                        ; $6189: $b6
	halt                                             ; $618a: $76
	and  $04                                         ; $618b: $e6 $04
	ld   a, l                                        ; $618d: $7d
	inc  c                                           ; $618e: $0c
	db   $ed                                         ; $618f: $ed
	add  b                                           ; $6190: $80
	pop  bc                                          ; $6191: $c1
	add  b                                           ; $6192: $80
	jp   nz, $8380                                   ; $6193: $c2 $80 $83

	add  b                                           ; $6196: $80
	and  e                                           ; $6197: $a3
	add  b                                           ; $6198: $80
	halt                                             ; $6199: $76
	add  b                                           ; $619a: $80
	pop  bc                                          ; $619b: $c1
	add  b                                           ; $619c: $80
	cp   b                                           ; $619d: $b8
	add  b                                           ; $619e: $80
	ld   h, a                                        ; $619f: $67
	add  b                                           ; $61a0: $80
	ld   b, $80                                      ; $61a1: $06 $80
	rrca                                             ; $61a3: $0f
	add  b                                           ; $61a4: $80
	call z, $fe80                                    ; $61a5: $cc $80 $fe
	add  b                                           ; $61a8: $80
	push af                                          ; $61a9: $f5
	add  b                                           ; $61aa: $80
	call c, $3880                                    ; $61ab: $dc $80 $38
	ld   bc, $3dc2                                   ; $61ae: $01 $c2 $3d
	call $6800                                       ; $61b1: $cd $00 $68
	ld   bc, $0080                                   ; $61b4: $01 $80 $00
	add  hl, bc                                      ; $61b7: $09
	ret  nz                                          ; $61b8: $c0

	nop                                              ; $61b9: $00
	ldh  [$c0], a                                    ; $61ba: $e0 $c0
	ldh  a, [$e0]                                    ; $61bc: $f0 $e0
	ld   hl, sp-$10                                  ; $61be: $f8 $f0
	db   $fc                                         ; $61c0: $fc
	ld   hl, sp-$80                                  ; $61c1: $f8 $80
	jr   c, @+$03                                    ; $61c3: $38 $01

	add  $c4                                         ; $61c5: $c6 $c4
	add  b                                           ; $61c7: $80
	jr   c, jr_098_61d0                              ; $61c8: $38 $06

	dec  a                                           ; $61ca: $3d
	db   $fc                                         ; $61cb: $fc
	sbc  $3e                                         ; $61cc: $de $3e
	ld   l, $1e                                      ; $61ce: $2e $1e

jr_098_61d0:
	rla                                              ; $61d0: $17
	add  c                                           ; $61d1: $81
	rrca                                             ; $61d2: $0f
	nop                                              ; $61d3: $00
	dec  bc                                          ; $61d4: $0b
	add  c                                           ; $61d5: $81
	rlca                                             ; $61d6: $07
	ld   b, $fa                                      ; $61d7: $06 $fa
	nop                                              ; $61d9: $00
	add  b                                           ; $61da: $80
	nop                                              ; $61db: $00
	ldh  [c], a                                      ; $61dc: $e2
	add  b                                           ; $61dd: $80
	ld   [hl], b                                     ; $61de: $70
	add  b                                           ; $61df: $80
	ldh  [$09], a                                    ; $61e0: $e0 $09
	ld   h, b                                        ; $61e2: $60
	jr   c, @+$72                                    ; $61e3: $38 $70

jr_098_61e5:
	or   $b0                                         ; $61e5: $f6 $b0
	adc  b                                           ; $61e7: $88
	cp   b                                           ; $61e8: $b8
	cp   $dc                                         ; $61e9: $fe $dc
	db   $ed                                         ; $61eb: $ed
	add  l                                           ; $61ec: $85
	db   $fc                                         ; $61ed: $fc
	ld   [bc], a                                     ; $61ee: $02
	db   $fd                                         ; $61ef: $fd
	cp   $fc                                         ; $61f0: $fe $fc
	add  c                                           ; $61f2: $81
	cp   $0e                                         ; $61f3: $fe $0e
	ei                                               ; $61f5: $fb
	inc  bc                                          ; $61f6: $03
	rrca                                             ; $61f7: $0f
	rlca                                             ; $61f8: $07
	rra                                              ; $61f9: $1f
	rrca                                             ; $61fa: $0f
	ld   a, $1f                                      ; $61fb: $3e $1f
	ld   a, l                                        ; $61fd: $7d
	ccf                                              ; $61fe: $3f
	ld   a, $3f                                      ; $61ff: $3e $3f
	cp   c                                           ; $6201: $b9
	ccf                                              ; $6202: $3f
	ld   a, d                                        ; $6203: $7a
	add  c                                           ; $6204: $81
	ld   a, a                                        ; $6205: $7f
	inc  bc                                          ; $6206: $03
	db   $fc                                         ; $6207: $fc
	rst  $38                                         ; $6208: $ff
	db   $fd                                         ; $6209: $fd
	rst  $38                                         ; $620a: $ff
	add  b                                           ; $620b: $80
	cp   $80                                         ; $620c: $fe $80
	db   $fc                                         ; $620e: $fc
	add  b                                           ; $620f: $80
	ld   hl, sp-$80                                  ; $6210: $f8 $80
	ldh  a, [$80]                                    ; $6212: $f0 $80
	ld   [hl], c                                     ; $6214: $71
	add  b                                           ; $6215: $80
	ld   h, c                                        ; $6216: $61
	add  b                                           ; $6217: $80
	ld   h, e                                        ; $6218: $63
	add  d                                           ; $6219: $82
	ld   b, e                                        ; $621a: $43
	ld   [bc], a                                     ; $621b: $02
	ld   c, e                                        ; $621c: $4b
	ld   b, e                                        ; $621d: $43
	rst  JumpTable                                         ; $621e: $df
	add  e                                           ; $621f: $83
	rst  ToBoot                                         ; $6220: $c7
	nop                                              ; $6221: $00
	and  a                                           ; $6222: $a7
	add  e                                           ; $6223: $83
	add  a                                           ; $6224: $87
	add  b                                           ; $6225: $80
	add  [hl]                                        ; $6226: $86
	add  b                                           ; $6227: $80
	ld   b, $00                                      ; $6228: $06 $00
	ld   a, [bc]                                     ; $622a: $0a
	add  e                                           ; $622b: $83
	ld   [bc], a                                     ; $622c: $02
	add  b                                           ; $622d: $80
	nop                                              ; $622e: $00
	ld   bc, $8004                                   ; $622f: $01 $04 $80
	add  b                                           ; $6232: $80
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	ld   [bc], a                                     ; $6235: $02
	add  c                                           ; $6236: $81
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	ld   h, c                                        ; $6239: $61
	add  c                                           ; $623a: $81
	nop                                              ; $623b: $00
	ld   [bc], a                                     ; $623c: $02
	rra                                              ; $623d: $1f
	nop                                              ; $623e: $00
	cpl                                              ; $623f: $2f
	add  c                                           ; $6240: $81
	rrca                                             ; $6241: $0f
	ld   [bc], a                                     ; $6242: $02
	rlca                                             ; $6243: $07
	rrca                                             ; $6244: $0f
	rra                                              ; $6245: $1f
	add  b                                           ; $6246: $80
	ld   bc, $0081                                   ; $6247: $01 $81 $00
	ld   [de], a                                     ; $624a: $12
	inc  c                                           ; $624b: $0c
	ld   bc, $0300                                   ; $624c: $01 $00 $03
	ld   l, c                                        ; $624f: $69
	add  b                                           ; $6250: $80
	ldh  a, [$e7]                                    ; $6251: $f0 $e7
	rst  $30                                         ; $6253: $f7
	or   $b6                                         ; $6254: $f6 $b6
	or   a                                           ; $6256: $b7
	sbc  a                                           ; $6257: $9f
	sbc  e                                           ; $6258: $9b
	set  3, e                                        ; $6259: $cb $db
	rst  JumpTable                                         ; $625b: $df
	call $80c5                                       ; $625c: $cd $c5 $80
	adc  $02                                         ; $625f: $ce $02
	ld   c, h                                        ; $6261: $4c
	ld   l, b                                        ; $6262: $68
	jr   nz, jr_098_61e5                             ; $6263: $20 $80

	ld   [hl+], a                                    ; $6265: $22
	ld   [bc], a                                     ; $6266: $02
	jp   nz, $e606                                   ; $6267: $c2 $06 $e6

	add  c                                           ; $626a: $81
	ld   h, $1b                                      ; $626b: $26 $1b
	and  [hl]                                        ; $626d: $a6
	ld   h, $e6                                      ; $626e: $26 $e6
	ld   h, $bb                                      ; $6270: $26 $bb
	ld   a, a                                        ; $6272: $7f
	rst  $38                                         ; $6273: $ff
	ccf                                              ; $6274: $3f
	ld   e, a                                        ; $6275: $5f
	rra                                              ; $6276: $1f
	cpl                                              ; $6277: $2f
	rrca                                             ; $6278: $0f
	rlca                                             ; $6279: $07
	rrca                                             ; $627a: $0f
	rra                                              ; $627b: $1f
	rlca                                             ; $627c: $07
	add  hl, bc                                      ; $627d: $09
	inc  bc                                          ; $627e: $03
	ld   b, $00                                      ; $627f: $06 $00
	add  e                                           ; $6281: $83
	nop                                              ; $6282: $00
	ld   b, b                                        ; $6283: $40
	nop                                              ; $6284: $00
	jr   nc, jr_098_6287                             ; $6285: $30 $00

jr_098_6287:
	rrca                                             ; $6287: $0f
	nop                                              ; $6288: $00
	add  b                                           ; $6289: $80
	ld   b, $80                                      ; $628a: $06 $80
	scf                                              ; $628c: $37
	add  d                                           ; $628d: $82
	rst  $30                                         ; $628e: $f7
	nop                                              ; $628f: $00
	rst  $38                                         ; $6290: $ff
	add  a                                           ; $6291: $87
	nop                                              ; $6292: $00
	add  b                                           ; $6293: $80
	inc  bc                                          ; $6294: $03
	db   $10                                         ; $6295: $10
	rra                                              ; $6296: $1f
	ld   e, $fe                                      ; $6297: $1e $fe
	nop                                              ; $6299: $00
	ldh  [rP1], a                                    ; $629a: $e0 $00
	cpl                                              ; $629c: $2f
	rrca                                             ; $629d: $0f
	rst  $28                                         ; $629e: $ef
	rrca                                             ; $629f: $0f
	ret  nz                                          ; $62a0: $c0

	nop                                              ; $62a1: $00
	cpl                                              ; $62a2: $2f
	nop                                              ; $62a3: $00
	xor  b                                           ; $62a4: $a8
	nop                                              ; $62a5: $00
	db   $10                                         ; $62a6: $10
	add  c                                           ; $62a7: $81
	nop                                              ; $62a8: $00
	ld   bc, $038b                                   ; $62a9: $01 $8b $03
	add  b                                           ; $62ac: $80
	rlca                                             ; $62ad: $07
	add  b                                           ; $62ae: $80
	rrca                                             ; $62af: $0f
	ld   [bc], a                                     ; $62b0: $02
	ccf                                              ; $62b1: $3f
	ld   a, $fe                                      ; $62b2: $3e $fe
	add  b                                           ; $62b4: $80
	ld   sp, hl                                      ; $62b5: $f9
	add  b                                           ; $62b6: $80
	rst  ToBoot                                         ; $62b7: $c7

jr_098_62b8:
	add  b                                           ; $62b8: $80
	jr   c, jr_098_62c2                              ; $62b9: $38 $07

	ld   b, $39                                      ; $62bb: $06 $39
	rst  $38                                         ; $62bd: $ff
	jr   c, jr_098_62b8                              ; $62be: $38 $f8

	rlca                                             ; $62c0: $07
	nop                                              ; $62c1: $00

jr_098_62c2:
	ld   hl, sp-$7d                                  ; $62c2: $f8 $83
	nop                                              ; $62c4: $00
	dec  b                                           ; $62c5: $05
	inc  bc                                          ; $62c6: $03
	nop                                              ; $62c7: $00
	inc  e                                           ; $62c8: $1c
	nop                                              ; $62c9: $00
	ld   l, a                                        ; $62ca: $6f
	adc  a                                           ; $62cb: $8f
	add  b                                           ; $62cc: $80
	ld   b, a                                        ; $62cd: $47
	add  b                                           ; $62ce: $80
	rlca                                             ; $62cf: $07
	nop                                              ; $62d0: $00
	inc  bc                                          ; $62d1: $03
	add  b                                           ; $62d2: $80
	jp   $f300                                       ; $62d3: $c3 $00 $f3


	add  b                                           ; $62d6: $80
	pop  af                                          ; $62d7: $f1
	add  b                                           ; $62d8: $80
	ld   sp, $f100                                   ; $62d9: $31 $00 $f1
	add  b                                           ; $62dc: $80
	add  c                                           ; $62dd: $81
	ld   bc, $e961                                   ; $62de: $01 $61 $e9
	add  e                                           ; $62e1: $83
	ld   l, c                                        ; $62e2: $69
	ld   [bc], a                                     ; $62e3: $02
	add  sp, -$16                                    ; $62e4: $e8 $ea
	ldh  a, [c]                                      ; $62e6: $f2
	add  b                                           ; $62e7: $80
	jp   nc, $d680                                   ; $62e8: $d2 $80 $d6

	ld   bc, $c2d2                                   ; $62eb: $01 $d2 $c2
	add  b                                           ; $62ee: $80
	rst  ToBoot                                         ; $62ef: $c7
	add  b                                           ; $62f0: $80
	adc  a                                           ; $62f1: $8f
	add  b                                           ; $62f2: $80
	adc  [hl]                                        ; $62f3: $8e
	dec  c                                           ; $62f4: $0d
	jr   jr_098_6311                                 ; $62f5: $18 $1a

	add  a                                           ; $62f7: $87
	sbc  e                                           ; $62f8: $9b
	rra                                              ; $62f9: $1f
	dec  a                                           ; $62fa: $3d
	ld   a, [hl]                                     ; $62fb: $7e
	or   d                                           ; $62fc: $b2
	pop  af                                          ; $62fd: $f1
	adc  [hl]                                        ; $62fe: $8e
	add  b                                           ; $62ff: $80
	ld   [hl], b                                     ; $6300: $70
	nop                                              ; $6301: $00
	add  b                                           ; $6302: $80
	add  c                                           ; $6303: $81
	nop                                              ; $6304: $00
	inc  b                                           ; $6305: $04
	ld   a, $00                                      ; $6306: $3e $00
	ld   b, c                                        ; $6308: $41
	nop                                              ; $6309: $00
	add  b                                           ; $630a: $80
	add  c                                           ; $630b: $81
	nop                                              ; $630c: $00
	add  l                                           ; $630d: $85
	ret  nz                                          ; $630e: $c0

	add  b                                           ; $630f: $80
	ret  z                                           ; $6310: $c8

jr_098_6311:
	add  b                                           ; $6311: $80
	call c, $c480                                    ; $6312: $dc $80 $c4
	ld   bc, $9ada                                   ; $6315: $01 $da $9a
	add  b                                           ; $6318: $80
	xor  [hl]                                        ; $6319: $ae
	add  b                                           ; $631a: $80
	or   [hl]                                        ; $631b: $b6
	rlca                                             ; $631c: $07
	sub  h                                           ; $631d: $94
	sbc  h                                           ; $631e: $9c
	and  h                                           ; $631f: $a4
	inc  a                                           ; $6320: $3c
	ld   c, b                                        ; $6321: $48
	ld   a, b                                        ; $6322: $78
	db   $10                                         ; $6323: $10
	ld   sp, $e180                                   ; $6324: $31 $80 $e1
	add  b                                           ; $6327: $80
	add  c                                           ; $6328: $81
	rlca                                             ; $6329: $07
	ld   bc, $00ff                                   ; $632a: $01 $ff $00

jr_098_632d:
	add  b                                           ; $632d: $80
	nop                                              ; $632e: $00
	ret  nz                                          ; $632f: $c0

	add  b                                           ; $6330: $80
	ldh  [$81], a                                    ; $6331: $e0 $81
	ret  nz                                          ; $6333: $c0

	nop                                              ; $6334: $00
	ldh  a, [$81]                                    ; $6335: $f0 $81
	ldh  [rP1], a                                    ; $6337: $e0 $00
	ld   hl, sp-$7f                                  ; $6339: $f8 $81
	ldh  a, [rP1]                                    ; $633b: $f0 $00
	ld   [hl], b                                     ; $633d: $70
	add  c                                           ; $633e: $81
	ldh  a, [rP1]                                    ; $633f: $f0 $00
	ld   a, h                                        ; $6341: $7c
	add  l                                           ; $6342: $85
	ld   hl, sp+$00                                  ; $6343: $f8 $00
	cp   $83                                         ; $6345: $fe $83
	db   $fc                                         ; $6347: $fc
	nop                                              ; $6348: $00
	rst  $38                                         ; $6349: $ff
	sub  e                                           ; $634a: $93
	cp   $80                                         ; $634b: $fe $80
	ld   a, [hl]                                     ; $634d: $7e
	ld   bc, $3c3d                                   ; $634e: $01 $3d $3c
	add  b                                           ; $6351: $80
	inc  e                                           ; $6352: $1c
	ld   bc, $181a                                   ; $6353: $01 $1a $18
	add  d                                           ; $6356: $82
	ld   [$0400], sp                                 ; $6357: $08 $00 $04
	add  l                                           ; $635a: $85
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	ld   [$0081], sp                                 ; $635d: $08 $81 $00
	inc  bc                                          ; $6360: $03
	ld   b, $08                                      ; $6361: $06 $08
	ccf                                              ; $6363: $3f
	ld   a, $80                                      ; $6364: $3e $80
	ld   a, a                                        ; $6366: $7f
	ld   b, $fb                                      ; $6367: $06 $fb
	rst  $38                                         ; $6369: $ff
	ld   hl, sp-$01                                  ; $636a: $f8 $ff
	db   $fd                                         ; $636c: $fd
	rst  $38                                         ; $636d: $ff
	cp   $80                                         ; $636e: $fe $80
	rst  $38                                         ; $6370: $ff
	add  e                                           ; $6371: $83
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	add  b                                           ; $6374: $80
	nop                                              ; $6375: $00
	ret  nz                                          ; $6376: $c0

	add  b                                           ; $6377: $80
	ldh  [$c0], a                                    ; $6378: $e0 $c0
	ld   b, b                                        ; $637a: $40
	ret  nz                                          ; $637b: $c0

	ldh  a, [$e0]                                    ; $637c: $f0 $e0
	and  b                                           ; $637e: $a0
	add  e                                           ; $637f: $83
	ldh  [rP1], a                                    ; $6380: $e0 $00
	ld   h, b                                        ; $6382: $60
	add  c                                           ; $6383: $81
	ldh  [rSB], a                                    ; $6384: $e0 $01
	and  b                                           ; $6386: $a0
	ldh  [$80], a                                    ; $6387: $e0 $80
	and  b                                           ; $6389: $a0
	ld   [$808c], sp                                 ; $638a: $08 $8c $80
	db   $fc                                         ; $638d: $fc
	nop                                              ; $638e: $00
	add  b                                           ; $638f: $80
	nop                                              ; $6390: $00
	ret  nz                                          ; $6391: $c0

	add  b                                           ; $6392: $80
	ldh  [$81], a                                    ; $6393: $e0 $81
	ret  nz                                          ; $6395: $c0

	nop                                              ; $6396: $00
	ldh  a, [$81]                                    ; $6397: $f0 $81
	ldh  [rSC], a                                    ; $6399: $e0 $02
	ld   h, b                                        ; $639b: $60
	ldh  [$d0], a                                    ; $639c: $e0 $d0
	add  c                                           ; $639e: $81
	ret  nz                                          ; $639f: $c0

	nop                                              ; $63a0: $00
	ld   b, b                                        ; $63a1: $40
	add  c                                           ; $63a2: $81
	ret  nz                                          ; $63a3: $c0

	ld   bc, $80a0                                   ; $63a4: $01 $a0 $80
	add  b                                           ; $63a7: $80
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	jr   nz, jr_098_632d                             ; $63aa: $20 $81

	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	ldh  [$8f], a                                    ; $63ae: $e0 $8f
	nop                                              ; $63b0: $00
	ld   [bc], a                                     ; $63b1: $02
	add  b                                           ; $63b2: $80
	nop                                              ; $63b3: $00
	ld   b, b                                        ; $63b4: $40
	add  c                                           ; $63b5: $81
	add  b                                           ; $63b6: $80
	nop                                              ; $63b7: $00
	and  b                                           ; $63b8: $a0
	add  c                                           ; $63b9: $81
	ret  nz                                          ; $63ba: $c0

	nop                                              ; $63bb: $00
	ret  nc                                          ; $63bc: $d0

	add  c                                           ; $63bd: $81
	ldh  [rP1], a                                    ; $63be: $e0 $00
	ld   e, b                                        ; $63c0: $58
	add  e                                           ; $63c1: $83
	nop                                              ; $63c2: $00
	inc  b                                           ; $63c3: $04
	ld   bc, $8000                                   ; $63c4: $01 $00 $80
	nop                                              ; $63c7: $00
	inc  c                                           ; $63c8: $0c
	add  l                                           ; $63c9: $85
	nop                                              ; $63ca: $00
	inc  b                                           ; $63cb: $04
	rlca                                             ; $63cc: $07
	add  b                                           ; $63cd: $80
	nop                                              ; $63ce: $00
	add  b                                           ; $63cf: $80
	add  e                                           ; $63d0: $83
	add  c                                           ; $63d1: $81
	add  b                                           ; $63d2: $80
	nop                                              ; $63d3: $00
	pop  hl                                          ; $63d4: $e1
	add  c                                           ; $63d5: $81
	ret  nz                                          ; $63d6: $c0

	inc  b                                           ; $63d7: $04
	rst  JumpTable                                         ; $63d8: $df
	ret  nz                                          ; $63d9: $c0

	dec  de                                          ; $63da: $1b
	inc  bc                                          ; $63db: $03
	dec  bc                                          ; $63dc: $0b
	add  e                                           ; $63dd: $83
	inc  bc                                          ; $63de: $03
	add  b                                           ; $63df: $80
	rlca                                             ; $63e0: $07
	nop                                              ; $63e1: $00
	ld   b, a                                        ; $63e2: $47
	add  c                                           ; $63e3: $81
	rlca                                             ; $63e4: $07
	ld   bc, $0737                                   ; $63e5: $01 $37 $07
	add  b                                           ; $63e8: $80
	inc  bc                                          ; $63e9: $03
	nop                                              ; $63ea: $00
	inc  sp                                          ; $63eb: $33
	add  c                                           ; $63ec: $81
	inc  bc                                          ; $63ed: $03
	nop                                              ; $63ee: $00
	dec  bc                                          ; $63ef: $0b
	add  c                                           ; $63f0: $81
	inc  bc                                          ; $63f1: $03
	ld   b, $33                                      ; $63f2: $06 $33
	inc  bc                                          ; $63f4: $03
	ld   b, e                                        ; $63f5: $43
	inc  bc                                          ; $63f6: $03
	dec  de                                          ; $63f7: $1b
	rlca                                             ; $63f8: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63f9: $cf
	add  b                                           ; $63fa: $80
	nop                                              ; $63fb: $00
	add  b                                           ; $63fc: $80
	ld   [bc], a                                     ; $63fd: $02
	ld   [bc], a                                     ; $63fe: $02
	inc  bc                                          ; $63ff: $03
	add  hl, bc                                      ; $6400: $09
	dec  c                                           ; $6401: $0d
	add  b                                           ; $6402: $80
	dec  a                                           ; $6403: $3d
	nop                                              ; $6404: $00
	db   $fc                                         ; $6405: $fc
	add  c                                           ; $6406: $81
	cp   $0b                                         ; $6407: $fe $0b
	rst  $38                                         ; $6409: $ff
	ld   sp, hl                                      ; $640a: $f9
	rst  $38                                         ; $640b: $ff
	db   $e4                                         ; $640c: $e4
	add  sp, -$30                                    ; $640d: $e8 $d0
	ldh  [rSC], a                                    ; $640f: $e0 $02
	ld   b, h                                        ; $6411: $44
	add  c                                           ; $6412: $81
	ld   [bc], a                                     ; $6413: $02
	nop                                              ; $6414: $00
	add  b                                           ; $6415: $80
	ld   [bc], a                                     ; $6416: $02
	ld   bc, $0706                                   ; $6417: $01 $06 $07
	add  b                                           ; $641a: $80
	rra                                              ; $641b: $1f
	dec  bc                                          ; $641c: $0b
	ld   b, h                                        ; $641d: $44
	add  b                                           ; $641e: $80
	adc  e                                           ; $641f: $8b
	add  b                                           ; $6420: $80
	or   e                                           ; $6421: $b3
	ret  nz                                          ; $6422: $c0

	call nz, Call_098_58c0                           ; $6423: $c4 $c0 $58
	ret  nz                                          ; $6426: $c0

	ldh  [rP1], a                                    ; $6427: $e0 $00
	add  b                                           ; $6429: $80

jr_098_642a:
	add  b                                           ; $642a: $80
	ld   [bc], a                                     ; $642b: $02
	ldh  [rLCDC], a                                  ; $642c: $e0 $40
	ld   [hl], b                                     ; $642e: $70
	add  b                                           ; $642f: $80
	ldh  [$03], a                                    ; $6430: $e0 $03
	ld   h, b                                        ; $6432: $60
	ld   a, b                                        ; $6433: $78
	ld   [hl], b                                     ; $6434: $70
	ld   a, h                                        ; $6435: $7c
	add  b                                           ; $6436: $80
	jr   c, @+$0f                                    ; $6437: $38 $0d

	sbc  b                                           ; $6439: $98
	sbc  [hl]                                        ; $643a: $9e
	db   $fc                                         ; $643b: $fc
	ld   a, a                                        ; $643c: $7f
	ld   a, [hl]                                     ; $643d: $7e
	ccf                                              ; $643e: $3f
	cp   a                                           ; $643f: $bf
	ld   h, b                                        ; $6440: $60
	nop                                              ; $6441: $00
	cpl                                              ; $6442: $2f
	nop                                              ; $6443: $00
	ret  nz                                          ; $6444: $c0

	jr   nz, jr_098_6476                             ; $6445: $20 $2f

	add  b                                           ; $6447: $80
	ldh  [$80], a                                    ; $6448: $e0 $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $644a: $cf
	add  b                                           ; $644b: $80
	ld   h, a                                        ; $644c: $67
	add  c                                           ; $644d: $81
	ld   [hl], a                                     ; $644e: $77
	ld   de, $00cc                                   ; $644f: $11 $cc $00
	dec  bc                                          ; $6452: $0b
	nop                                              ; $6453: $00
	ld   [hl], e                                     ; $6454: $73
	nop                                              ; $6455: $00
	inc  b                                           ; $6456: $04
	nop                                              ; $6457: $00
	jr   jr_098_645a                                 ; $6458: $18 $00

jr_098_645a:
	ldh  [rP1], a                                    ; $645a: $e0 $00
	add  b                                           ; $645c: $80
	nop                                              ; $645d: $00
	ld   h, b                                        ; $645e: $60
	nop                                              ; $645f: $00
	rst  ToBoot                                         ; $6460: $c7
	dec  de                                          ; $6461: $1b
	add  c                                           ; $6462: $81
	inc  de                                          ; $6463: $13
	add  b                                           ; $6464: $80
	ld   [de], a                                     ; $6465: $12
	add  b                                           ; $6466: $80
	db   $10                                         ; $6467: $10
	ld   bc, $5616                                   ; $6468: $01 $16 $56
	add  c                                           ; $646b: $81
	inc  d                                           ; $646c: $14
	nop                                              ; $646d: $00
	dec  h                                           ; $646e: $25
	add  b                                           ; $646f: $80
	inc  h                                           ; $6470: $24
	ld   [bc], a                                     ; $6471: $02
	ld   [hl+], a                                    ; $6472: $22
	ld   [de], a                                     ; $6473: $12
	ld   [bc], a                                     ; $6474: $02
	add  b                                           ; $6475: $80

jr_098_6476:
	nop                                              ; $6476: $00
	ld   bc, $0008                                   ; $6477: $01 $08 $00
	add  b                                           ; $647a: $80
	ld   bc, $3008                                   ; $647b: $01 $08 $30
	nop                                              ; $647e: $00
	ld   b, d                                        ; $647f: $42
	ld   [bc], a                                     ; $6480: $02
	add  hl, de                                      ; $6481: $19
	dec  b                                           ; $6482: $05
	ret                                              ; $6483: $c9


	halt                                             ; $6484: $76
	ld   [hl], h                                     ; $6485: $74
	add  b                                           ; $6486: $80
	ld   a, h                                        ; $6487: $7c
	add  e                                           ; $6488: $83
	db   $fc                                         ; $6489: $fc
	ld   bc, $7d7c                                   ; $648a: $01 $7c $7d
	add  [hl]                                        ; $648d: $86
	ld   a, c                                        ; $648e: $79
	add  h                                           ; $648f: $84
	add  hl, sp                                      ; $6490: $39
	ld   bc, $9919                                   ; $6491: $01 $19 $99
	add  b                                           ; $6494: $80
	add  hl, de                                      ; $6495: $19
	ld   [bc], a                                     ; $6496: $02
	adc  l                                           ; $6497: $8d
	inc  l                                           ; $6498: $2c
	ld   h, a                                        ; $6499: $67
	add  b                                           ; $649a: $80
	ld   b, l                                        ; $649b: $45
	ld   bc, $4044                                   ; $649c: $01 $44 $40
	add  b                                           ; $649f: $80
	ld   d, b                                        ; $64a0: $50
	add  b                                           ; $64a1: $80
	ld   d, d                                        ; $64a2: $52
	nop                                              ; $64a3: $00
	ld   e, e                                        ; $64a4: $5b
	add  d                                           ; $64a5: $82
	ld   e, c                                        ; $64a6: $59
	inc  d                                           ; $64a7: $14
	jr   jr_098_642a                                 ; $64a8: $18 $80

	nop                                              ; $64aa: $00
	sbc  h                                           ; $64ab: $9c
	adc  h                                           ; $64ac: $8c
	ld   c, $46                                      ; $64ad: $0e $46
	ld   b, $02                                      ; $64af: $06 $02
	inc  bc                                          ; $64b1: $03
	ccf                                              ; $64b2: $3f
	ld   de, $2031                                   ; $64b3: $11 $31 $20
	add  sp, $10                                     ; $64b6: $e8 $10
	ldh  a, [rSB]                                    ; $64b8: $f0 $01
	ld   [hl], $57                                   ; $64ba: $36 $57
	ld   b, a                                        ; $64bc: $47
	add  b                                           ; $64bd: $80
	ld   c, e                                        ; $64be: $4b
	inc  bc                                          ; $64bf: $03
	adc  e                                           ; $64c0: $8b
	and  e                                           ; $64c1: $a3
	push hl                                          ; $64c2: $e5
	pop  hl                                          ; $64c3: $e1
	add  c                                           ; $64c4: $81
	db   $e3                                         ; $64c5: $e3
	add  d                                           ; $64c6: $82
	pop  af                                          ; $64c7: $f1
	add  b                                           ; $64c8: $80
	ldh  a, [$82]                                    ; $64c9: $f0 $82
	ld   a, b                                        ; $64cb: $78
	add  b                                           ; $64cc: $80
	inc  a                                           ; $64cd: $3c
	dec  bc                                          ; $64ce: $0b
	inc  e                                           ; $64cf: $1c
	sbc  h                                           ; $64d0: $9c
	ld   c, $ce                                      ; $64d1: $0e $ce
	ld   b, $66                                      ; $64d3: $06 $66
	inc  bc                                          ; $64d5: $03
	inc  sp                                          ; $64d6: $33
	inc  a                                           ; $64d7: $3c
	dec  c                                           ; $64d8: $0d
	dec  d                                           ; $64d9: $15
	add  l                                           ; $64da: $85
	add  b                                           ; $64db: $80
	add  h                                           ; $64dc: $84
	ld   c, $90                                      ; $64dd: $0e $90
	ld   [$080c], sp                                 ; $64df: $08 $0c $08
	add  hl, bc                                      ; $64e2: $09
	adc  d                                           ; $64e3: $8a
	jp   hl                                          ; $64e4: $e9


	ld   [$0828], sp                                 ; $64e5: $08 $28 $08
	sbc  b                                           ; $64e8: $98
	nop                                              ; $64e9: $00
	ret  nz                                          ; $64ea: $c0

	ld   b, b                                        ; $64eb: $40
	inc  c                                           ; $64ec: $0c
	add  c                                           ; $64ed: $81
	add  b                                           ; $64ee: $80
	inc  b                                           ; $64ef: $04
	ld   b, $00                                      ; $64f0: $06 $00
	inc  bc                                          ; $64f2: $03
	nop                                              ; $64f3: $00
	ld   bc, $0081                                   ; $64f4: $01 $81 $00
	ld   [bc], a                                     ; $64f7: $02
	rla                                              ; $64f8: $17
	ld   bc, $8209                                   ; $64f9: $01 $09 $82
	ld   bc, $0920                                   ; $64fc: $01 $20 $09

jr_098_64ff:
	ld   [$080a], sp                                 ; $64ff: $08 $0a $08
	inc  d                                           ; $6502: $14
	ld   bc, $0600                                   ; $6503: $01 $00 $06
	ld   [$0204], sp                                 ; $6506: $08 $04 $02
	ld   bc, $1000                                   ; $6509: $01 $00 $10
	nop                                              ; $650c: $00
	ld   [de], a                                     ; $650d: $12
	nop                                              ; $650e: $00
	dec  c                                           ; $650f: $0d
	rrca                                             ; $6510: $0f
	rra                                              ; $6511: $1f
	rla                                              ; $6512: $17
	rlc  b                                           ; $6513: $cb $00
	rst  $38                                         ; $6515: $ff
	nop                                              ; $6516: $00
	add  d                                           ; $6517: $82
	ld   e, c                                        ; $6518: $59
	jr   jr_098_6569                                 ; $6519: $18 $4e

	ld   c, $2f                                      ; $651b: $0e $2f
	ld   l, a                                        ; $651d: $6f
	daa                                              ; $651e: $27
	add  b                                           ; $651f: $80
	ld   hl, $600c                                   ; $6520: $21 $0c $60
	db   $10                                         ; $6523: $10
	sub  b                                           ; $6524: $90
	db   $10                                         ; $6525: $10
	adc  b                                           ; $6526: $88
	add  b                                           ; $6527: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6528: $cf
	ld   [$04db], sp                                 ; $6529: $08 $db $04
	jr   jr_098_652e                                 ; $652c: $18 $00

jr_098_652e:
	ld   h, b                                        ; $652e: $60
	add  c                                           ; $652f: $81
	nop                                              ; $6530: $00
	ld   [bc], a                                     ; $6531: $02
	ret  nz                                          ; $6532: $c0

	nop                                              ; $6533: $00
	add  c                                           ; $6534: $81
	add  c                                           ; $6535: $81
	ld   bc, $e701                                   ; $6536: $01 $01 $e7
	dec  de                                          ; $6539: $1b
	add  e                                           ; $653a: $83
	inc  de                                          ; $653b: $13
	add  b                                           ; $653c: $80
	db   $10                                         ; $653d: $10
	ld   [bc], a                                     ; $653e: $02
	ld   d, $54                                      ; $653f: $16 $54
	dec  d                                           ; $6541: $15
	add  b                                           ; $6542: $80
	inc  d                                           ; $6543: $14
	add  b                                           ; $6544: $80
	inc  h                                           ; $6545: $24
	rlca                                             ; $6546: $07
	daa                                              ; $6547: $27
	inc  hl                                          ; $6548: $23
	inc  de                                          ; $6549: $13
	nop                                              ; $654a: $00
	inc  bc                                          ; $654b: $03
	nop                                              ; $654c: $00
	ld   [$8000], sp                                 ; $654d: $08 $00 $80
	ld   bc, $3008                                   ; $6550: $01 $08 $30
	nop                                              ; $6553: $00
	ld   b, d                                        ; $6554: $42
	ld   [bc], a                                     ; $6555: $02
	add  hl, de                                      ; $6556: $19
	dec  b                                           ; $6557: $05
	ret                                              ; $6558: $c9


	halt                                             ; $6559: $76
	ld   [hl], h                                     ; $655a: $74
	add  b                                           ; $655b: $80
	ld   a, h                                        ; $655c: $7c
	add  e                                           ; $655d: $83
	db   $fc                                         ; $655e: $fc
	ld   bc, $7d7c                                   ; $655f: $01 $7c $7d
	add  [hl]                                        ; $6562: $86
	ld   a, c                                        ; $6563: $79
	add  h                                           ; $6564: $84
	add  hl, sp                                      ; $6565: $39
	ld   bc, $9919                                   ; $6566: $01 $19 $99

jr_098_6569:
	add  b                                           ; $6569: $80
	add  hl, de                                      ; $656a: $19
	ld   [bc], a                                     ; $656b: $02
	adc  l                                           ; $656c: $8d
	xor  h                                           ; $656d: $ac
	rst  $20                                         ; $656e: $e7
	add  b                                           ; $656f: $80
	ld   b, l                                        ; $6570: $45
	ld   bc, $4044                                   ; $6571: $01 $44 $40
	add  b                                           ; $6574: $80
	ld   d, b                                        ; $6575: $50
	add  b                                           ; $6576: $80
	ld   d, d                                        ; $6577: $52
	nop                                              ; $6578: $00
	ld   e, e                                        ; $6579: $5b
	add  d                                           ; $657a: $82
	ld   e, c                                        ; $657b: $59
	dec  bc                                          ; $657c: $0b
	jr   jr_098_64ff                                 ; $657d: $18 $80

jr_098_657f:
	nop                                              ; $657f: $00
	sbc  h                                           ; $6580: $9c
	adc  h                                           ; $6581: $8c
	ld   c, $46                                      ; $6582: $0e $46
	ld   b, $02                                      ; $6584: $06 $02
	inc  bc                                          ; $6586: $03
	ld   hl, $8001                                   ; $6587: $21 $01 $80
	nop                                              ; $658a: $00
	ld   b, $f8                                      ; $658b: $06 $f8
	nop                                              ; $658d: $00
	and  $18                                         ; $658e: $e6 $18
	ld   h, $57                                      ; $6590: $26 $57
	ld   b, a                                        ; $6592: $47
	add  b                                           ; $6593: $80
	ld   c, e                                        ; $6594: $4b
	inc  bc                                          ; $6595: $03
	adc  e                                           ; $6596: $8b
	and  e                                           ; $6597: $a3
	push hl                                          ; $6598: $e5
	pop  hl                                          ; $6599: $e1
	add  c                                           ; $659a: $81
	db   $e3                                         ; $659b: $e3
	add  d                                           ; $659c: $82
	pop  af                                          ; $659d: $f1
	add  b                                           ; $659e: $80
	ldh  a, [$82]                                    ; $659f: $f0 $82
	ld   a, b                                        ; $65a1: $78
	add  b                                           ; $65a2: $80
	inc  a                                           ; $65a3: $3c
	inc  e                                           ; $65a4: $1c
	inc  e                                           ; $65a5: $1c
	sbc  h                                           ; $65a6: $9c
	adc  [hl]                                        ; $65a7: $8e
	adc  $46                                         ; $65a8: $ce $46
	ld   h, [hl]                                     ; $65aa: $66
	inc  hl                                          ; $65ab: $23
	inc  sp                                          ; $65ac: $33
	call c, $150d                                    ; $65ad: $dc $0d $15
	dec  b                                           ; $65b0: $05
	inc  b                                           ; $65b1: $04
	add  h                                           ; $65b2: $84
	sub  b                                           ; $65b3: $90
	ld   [$080c], sp                                 ; $65b4: $08 $0c $08
	add  hl, bc                                      ; $65b7: $09
	adc  d                                           ; $65b8: $8a
	jp   hl                                          ; $65b9: $e9


	ld   [$0828], sp                                 ; $65ba: $08 $28 $08
	sbc  b                                           ; $65bd: $98
	nop                                              ; $65be: $00
	ret  nz                                          ; $65bf: $c0

	ld   b, b                                        ; $65c0: $40
	inc  c                                           ; $65c1: $0c
	add  c                                           ; $65c2: $81
	add  b                                           ; $65c3: $80
	inc  b                                           ; $65c4: $04
	ld   b, $00                                      ; $65c5: $06 $00
	inc  bc                                          ; $65c7: $03
	nop                                              ; $65c8: $00
	ld   bc, $0081                                   ; $65c9: $01 $81 $00
	nop                                              ; $65cc: $00
	ccf                                              ; $65cd: $3f
	add  b                                           ; $65ce: $80
	ld   h, $02                                      ; $65cf: $26 $02
	ld   bc, $0029                                   ; $65d1: $01 $29 $00
	add  b                                           ; $65d4: $80
	ld   [$091a], sp                                 ; $65d5: $08 $1a $09

jr_098_65d8:
	ld   a, [bc]                                     ; $65d8: $0a
	ld   [$0114], sp                                 ; $65d9: $08 $14 $01
	nop                                              ; $65dc: $00
	ld   b, $08                                      ; $65dd: $06 $08
	inc  b                                           ; $65df: $04
	ld   [bc], a                                     ; $65e0: $02
	ld   bc, $1000                                   ; $65e1: $01 $00 $10
	nop                                              ; $65e4: $00
	ld   [de], a                                     ; $65e5: $12
	nop                                              ; $65e6: $00
	dec  c                                           ; $65e7: $0d
	rrca                                             ; $65e8: $0f
	rra                                              ; $65e9: $1f
	rla                                              ; $65ea: $17
	rlc  b                                           ; $65eb: $cb $00
	rst  $38                                         ; $65ed: $ff
	nop                                              ; $65ee: $00
	ld   [bc], a                                     ; $65ef: $02
	add  hl, sp                                      ; $65f0: $39
	sbc  b                                           ; $65f1: $98
	add  b                                           ; $65f2: $80
	ld   e, $08                                      ; $65f3: $1e $08
	rra                                              ; $65f5: $1f
	ld   a, a                                        ; $65f6: $7f
	ccf                                              ; $65f7: $3f
	add  hl, sp                                      ; $65f8: $39
	add  hl, de                                      ; $65f9: $19
	jr   jr_098_663c                                 ; $65fa: $18 $40

	add  b                                           ; $65fc: $80
	jr   jr_098_657f                                 ; $65fd: $18 $80

	add  b                                           ; $65ff: $80
	ld   b, $cf                                      ; $6600: $06 $cf
	ld   [$04db], sp                                 ; $6602: $08 $db $04
	jr   jr_098_6607                                 ; $6605: $18 $00

jr_098_6607:
	ld   h, b                                        ; $6607: $60
	add  c                                           ; $6608: $81
	nop                                              ; $6609: $00
	ld   [bc], a                                     ; $660a: $02
	ret  nz                                          ; $660b: $c0

	nop                                              ; $660c: $00
	add  c                                           ; $660d: $81
	add  c                                           ; $660e: $81
	ld   bc, $e701                                   ; $660f: $01 $01 $e7
	dec  de                                          ; $6612: $1b
	add  e                                           ; $6613: $83
	inc  de                                          ; $6614: $13
	add  b                                           ; $6615: $80
	db   $10                                         ; $6616: $10
	ld   [bc], a                                     ; $6617: $02
	ld   d, $54                                      ; $6618: $16 $54
	dec  d                                           ; $661a: $15
	add  b                                           ; $661b: $80
	inc  d                                           ; $661c: $14
	add  b                                           ; $661d: $80
	inc  h                                           ; $661e: $24
	ld   [bc], a                                     ; $661f: $02
	ld   h, $22                                      ; $6620: $26 $22
	ld   [de], a                                     ; $6622: $12
	add  c                                           ; $6623: $81
	ld   [bc], a                                     ; $6624: $02
	nop                                              ; $6625: $00
	dec  bc                                          ; $6626: $0b
	add  b                                           ; $6627: $80
	inc  bc                                          ; $6628: $03
	add  hl, bc                                      ; $6629: $09
	nop                                              ; $662a: $00
	inc  sp                                          ; $662b: $33
	nop                                              ; $662c: $00
	ld   b, d                                        ; $662d: $42
	ld   [bc], a                                     ; $662e: $02
	add  hl, de                                      ; $662f: $19
	dec  b                                           ; $6630: $05
	ret                                              ; $6631: $c9


	halt                                             ; $6632: $76
	ld   [hl], h                                     ; $6633: $74
	add  b                                           ; $6634: $80
	ld   a, h                                        ; $6635: $7c
	add  e                                           ; $6636: $83
	db   $fc                                         ; $6637: $fc
	ld   bc, $7d7c                                   ; $6638: $01 $7c $7d
	add  [hl]                                        ; $663b: $86

jr_098_663c:
	ld   a, c                                        ; $663c: $79
	add  h                                           ; $663d: $84
	add  hl, sp                                      ; $663e: $39
	ld   bc, $9919                                   ; $663f: $01 $19 $99
	add  b                                           ; $6642: $80
	add  hl, de                                      ; $6643: $19
	ld   [bc], a                                     ; $6644: $02
	dec  c                                           ; $6645: $0d
	inc  l                                           ; $6646: $2c
	rst  $20                                         ; $6647: $e7
	add  b                                           ; $6648: $80
	ld   b, l                                        ; $6649: $45
	ld   bc, $4044                                   ; $664a: $01 $44 $40
	add  b                                           ; $664d: $80
	ld   d, b                                        ; $664e: $50
	add  b                                           ; $664f: $80
	ld   d, d                                        ; $6650: $52
	nop                                              ; $6651: $00
	ld   e, e                                        ; $6652: $5b
	add  d                                           ; $6653: $82
	ld   e, c                                        ; $6654: $59
	dec  bc                                          ; $6655: $0b
	jr   jr_098_65d8                                 ; $6656: $18 $80

	nop                                              ; $6658: $00
	sbc  h                                           ; $6659: $9c
	adc  h                                           ; $665a: $8c
	ld   c, $46                                      ; $665b: $0e $46
	ld   b, $02                                      ; $665d: $06 $02
	inc  bc                                          ; $665f: $03
	ld   hl, $8001                                   ; $6660: $21 $01 $80
	nop                                              ; $6663: $00
	ld   b, $f8                                      ; $6664: $06 $f8
	nop                                              ; $6666: $00
	cp   $00                                         ; $6667: $fe $00
	ld   h, $57                                      ; $6669: $26 $57
	ld   b, a                                        ; $666b: $47
	add  b                                           ; $666c: $80
	ld   c, e                                        ; $666d: $4b
	inc  bc                                          ; $666e: $03
	adc  e                                           ; $666f: $8b
	and  e                                           ; $6670: $a3
	push hl                                          ; $6671: $e5
	pop  hl                                          ; $6672: $e1
	add  c                                           ; $6673: $81
	db   $e3                                         ; $6674: $e3
	add  d                                           ; $6675: $82
	pop  af                                          ; $6676: $f1
	add  b                                           ; $6677: $80
	ldh  a, [$82]                                    ; $6678: $f0 $82
	ld   a, b                                        ; $667a: $78
	add  b                                           ; $667b: $80
	inc  a                                           ; $667c: $3c
	dec  bc                                          ; $667d: $0b
	inc  e                                           ; $667e: $1c
	sbc  h                                           ; $667f: $9c
	adc  [hl]                                        ; $6680: $8e
	adc  $46                                         ; $6681: $ce $46
	ld   h, [hl]                                     ; $6683: $66
	inc  hl                                          ; $6684: $23
	inc  sp                                          ; $6685: $33
	ld   e, h                                        ; $6686: $5c
	dec  c                                           ; $6687: $0d
	dec  d                                           ; $6688: $15
	dec  b                                           ; $6689: $05
	add  b                                           ; $668a: $80
	inc  b                                           ; $668b: $04
	ld   c, $90                                      ; $668c: $0e $90
	ld   [$080c], sp                                 ; $668e: $08 $0c $08
	add  hl, bc                                      ; $6691: $09
	adc  d                                           ; $6692: $8a
	jp   hl                                          ; $6693: $e9


	ld   [$0828], sp                                 ; $6694: $08 $28 $08
	sbc  b                                           ; $6697: $98
	nop                                              ; $6698: $00
	ret  nz                                          ; $6699: $c0

	ld   b, b                                        ; $669a: $40
	inc  c                                           ; $669b: $0c
	add  c                                           ; $669c: $81
	add  b                                           ; $669d: $80
	inc  b                                           ; $669e: $04
	ld   b, $00                                      ; $669f: $06 $00
	inc  bc                                          ; $66a1: $03
	nop                                              ; $66a2: $00
	ld   bc, $0081                                   ; $66a3: $01 $81 $00
	ld   [bc], a                                     ; $66a6: $02
	ld   bc, $0900                                   ; $66a7: $01 $00 $09
	add  c                                           ; $66aa: $81
	ld   [$1880], sp                                 ; $66ab: $08 $80 $18
	ld   a, [de]                                     ; $66ae: $1a
	jr   c, jr_098_66b9                              ; $66af: $38 $08

	ld   c, $26                                      ; $66b1: $0e $26
	rlca                                             ; $66b3: $07
	ld   de, $0801                                   ; $66b4: $11 $01 $08
	inc  b                                           ; $66b7: $04

jr_098_66b8:
	ld   [bc], a                                     ; $66b8: $02

jr_098_66b9:
	ld   bc, $1000                                   ; $66b9: $01 $00 $10
	nop                                              ; $66bc: $00
	ld   [de], a                                     ; $66bd: $12
	nop                                              ; $66be: $00
	dec  c                                           ; $66bf: $0d
	rrca                                             ; $66c0: $0f
	rra                                              ; $66c1: $1f
	rla                                              ; $66c2: $17
	rlc  b                                           ; $66c3: $cb $00
	rst  $38                                         ; $66c5: $ff
	nop                                              ; $66c6: $00
	ld   [bc], a                                     ; $66c7: $02
	add  hl, sp                                      ; $66c8: $39
	sbc  b                                           ; $66c9: $98
	add  b                                           ; $66ca: $80
	ld   e, $02                                      ; $66cb: $1e $02
	rra                                              ; $66cd: $1f
	rst  JumpTable                                         ; $66ce: $df
	rra                                              ; $66cf: $1f
	add  b                                           ; $66d0: $80
	add  hl, de                                      ; $66d1: $19
	ld   bc, $5838                                   ; $66d2: $01 $38 $58
	add  b                                           ; $66d5: $80
	ret  nc                                          ; $66d6: $d0

	ld   [$04dc], sp                                 ; $66d7: $08 $dc $04
	rlca                                             ; $66da: $07
	jr   jr_098_66b8                                 ; $66db: $18 $db

	inc  b                                           ; $66dd: $04
	jr   jr_098_66e0                                 ; $66de: $18 $00

jr_098_66e0:
	ld   h, b                                        ; $66e0: $60
	add  c                                           ; $66e1: $81
	nop                                              ; $66e2: $00
	ld   [bc], a                                     ; $66e3: $02
	ret  nz                                          ; $66e4: $c0

	nop                                              ; $66e5: $00
	add  c                                           ; $66e6: $81
	add  c                                           ; $66e7: $81
	ld   bc, $0804                                   ; $66e8: $01 $04 $08
	nop                                              ; $66eb: $00
	ret  nz                                          ; $66ec: $c0

	ld   b, b                                        ; $66ed: $40
	inc  c                                           ; $66ee: $0c
	add  c                                           ; $66ef: $81
	add  b                                           ; $66f0: $80
	inc  e                                           ; $66f1: $1c
	ld   b, $00                                      ; $66f2: $06 $00
	ld   b, e                                        ; $66f4: $43
	nop                                              ; $66f5: $00
	ld   sp, $ae50                                   ; $66f6: $31 $50 $ae
	adc  b                                           ; $66f9: $88
	add  $40                                         ; $66fa: $c6 $40
	call z, Call_098_600c                            ; $66fc: $cc $0c $60
	nop                                              ; $66ff: $00
	jr   nc, jr_098_6702                             ; $6700: $30 $00

jr_098_6702:
	ld   [$0818], sp                                 ; $6702: $08 $18 $08
	nop                                              ; $6705: $00
	ld   c, $02                                      ; $6706: $0e $02
	rlca                                             ; $6708: $07
	nop                                              ; $6709: $00
	dec  bc                                          ; $670a: $0b
	nop                                              ; $670b: $00
	ret  nz                                          ; $670c: $c0

	ld   b, b                                        ; $670d: $40
	inc  c                                           ; $670e: $0c
	add  c                                           ; $670f: $81
	add  b                                           ; $6710: $80
	jr   jr_098_6719                                 ; $6711: $18 $06

	nop                                              ; $6713: $00
	ld   b, e                                        ; $6714: $43
	nop                                              ; $6715: $00
	add  hl, hl                                      ; $6716: $29
	ld   e, b                                        ; $6717: $58
	cp   [hl]                                        ; $6718: $be

jr_098_6719:
	xor  d                                           ; $6719: $aa
	or   $40                                         ; $671a: $f6 $40
	call c, Call_098_6002                            ; $671c: $dc $02 $60
	inc  c                                           ; $671f: $0c
	jr   nc, jr_098_6722                             ; $6720: $30 $00

jr_098_6722:
	ld   [$0818], sp                                 ; $6722: $08 $18 $08
	nop                                              ; $6725: $00
	ld   c, $02                                      ; $6726: $0e $02
	rlca                                             ; $6728: $07
	nop                                              ; $6729: $00
	inc  bc                                          ; $672a: $03
	rst  $38                                         ; $672b: $ff
	nop                                              ; $672c: $00
	rst  $38                                         ; $672d: $ff
	nop                                              ; $672e: $00
	rst  $38                                         ; $672f: $ff
	nop                                              ; $6730: $00
	rst  $38                                         ; $6731: $ff
	nop                                              ; $6732: $00
	cp   c                                           ; $6733: $b9
	nop                                              ; $6734: $00
	and  b                                           ; $6735: $a0
	ld   e, a                                        ; $6736: $5f
	ld   b, c                                        ; $6737: $41
	cp   [hl]                                        ; $6738: $be
	db   $e3                                         ; $6739: $e3
	sbc  l                                           ; $673a: $9d
	db   $fc                                         ; $673b: $fc
	rlca                                             ; $673c: $07
	ldh  a, [$1f]                                    ; $673d: $f0 $1f
	ldh  a, [$2f]                                    ; $673f: $f0 $2f
	ld   hl, sp-$39                                  ; $6741: $f8 $c7
	ei                                               ; $6743: $fb
	add  l                                           ; $6744: $85
	ld   a, a                                        ; $6745: $7f
	sub  b                                           ; $6746: $90
	ld   hl, sp+$27                                  ; $6747: $f8 $27
	inc  a                                           ; $6749: $3c
	db   $e3                                         ; $674a: $e3
	ld   [bc], a                                     ; $674b: $02
	db   $fd                                         ; $674c: $fd
	nop                                              ; $674d: $00
	rst  $38                                         ; $674e: $ff
	db   $10                                         ; $674f: $10
	rst  $38                                         ; $6750: $ff
	jr   c, @+$01                                    ; $6751: $38 $ff

	ld   a, h                                        ; $6753: $7c
	rst  $28                                         ; $6754: $ef
	ld   bc, $84ff                                   ; $6755: $01 $ff $84
	ld   a, e                                        ; $6758: $7b
	ld   h, e                                        ; $6759: $63
	call c, $e639                                    ; $675a: $dc $39 $e6
	dec  e                                           ; $675d: $1d
	ldh  a, [c]                                      ; $675e: $f2
	rrca                                             ; $675f: $0f
	ld   hl, sp+$6f                                  ; $6760: $f8 $6f
	call nc, $e23f                                   ; $6762: $d4 $3f $e2
	or   $8a                                         ; $6765: $f6 $8a
	ld   a, [$7a46]                                  ; $6767: $fa $46 $7a
	and  [hl]                                        ; $676a: $a6
	cp   $12                                         ; $676b: $fe $12
	cp   $0a                                         ; $676d: $fe $0a
	cp   $06                                         ; $676f: $fe $06
	ld   l, [hl]                                     ; $6771: $6e
	sub  d                                           ; $6772: $92
	sub  [hl]                                        ; $6773: $96
	ld   l, d                                        ; $6774: $6a
	db   $fc                                         ; $6775: $fc
	rlca                                             ; $6776: $07
	ld   sp, hl                                      ; $6777: $f9
	rrca                                             ; $6778: $0f
	or   c                                           ; $6779: $b1
	ld   e, a                                        ; $677a: $5f
	inc  hl                                          ; $677b: $23
	cp   $23                                         ; $677c: $fe $23
	cp   $46                                         ; $677e: $fe $46
	db   $fc                                         ; $6780: $fc
	ld   b, [hl]                                     ; $6781: $46
	db   $fc                                         ; $6782: $fc
	adc  h                                           ; $6783: $8c
	ld   hl, sp-$13                                  ; $6784: $f8 $ed
	add  $c6                                         ; $6786: $c6 $c6
	ld   b, e                                        ; $6788: $43
	add  $43                                         ; $6789: $c6 $43
	add  e                                           ; $678b: $83
	add  c                                           ; $678c: $81
	add  e                                           ; $678d: $83
	add  c                                           ; $678e: $81
	add  c                                           ; $678f: $81
	add  b                                           ; $6790: $80
	add  c                                           ; $6791: $81
	add  b                                           ; $6792: $80
	add  c                                           ; $6793: $81
	add  b                                           ; $6794: $80
	ld   e, c                                        ; $6795: $59
	or   a                                           ; $6796: $b7
	jp   hl                                          ; $6797: $e9


	rra                                              ; $6798: $1f
	xor  b                                           ; $6799: $a8
	ld   e, a                                        ; $679a: $5f
	inc  b                                           ; $679b: $04
	rst  $38                                         ; $679c: $ff
	inc  b                                           ; $679d: $04
	rst  $38                                         ; $679e: $ff
	add  d                                           ; $679f: $82
	rst  $38                                         ; $67a0: $ff
	add  d                                           ; $67a1: $82
	rst  $38                                         ; $67a2: $ff
	add  c                                           ; $67a3: $81
	rst  $38                                         ; $67a4: $ff
	add  d                                           ; $67a5: $82
	ld   a, [hl]                                     ; $67a6: $7e
	jp   nz, $c23e                                   ; $67a7: $c2 $3e $c2

	cp   [hl]                                        ; $67aa: $be
	jp   nz, Jump_098_42be                           ; $67ab: $c2 $be $42

	cp   $62                                         ; $67ae: $fe $62
	sbc  $62                                         ; $67b0: $de $62
	sbc  $22                                         ; $67b2: $de $22
	cp   $8c                                         ; $67b4: $fe $8c
	ld   hl, sp-$74                                  ; $67b6: $f8 $8c
	ld   hl, sp+$1f                                  ; $67b8: $f8 $1f
	rst  $30                                         ; $67ba: $f7
	rra                                              ; $67bb: $1f
	ldh  a, [$1f]                                    ; $67bc: $f0 $1f
	rst  $30                                         ; $67be: $f7
	ld   e, $f2                                      ; $67bf: $1e $f2
	rra                                              ; $67c1: $1f
	pop  af                                          ; $67c2: $f1
	sbc  [hl]                                        ; $67c3: $9e
	ldh  a, [rLCDC]                                  ; $67c4: $f0 $40
	ld   b, b                                        ; $67c6: $40
	ld   b, b                                        ; $67c7: $40
	ld   b, b                                        ; $67c8: $40
	ldh  [$e0], a                                    ; $67c9: $e0 $e0
	ld   hl, sp+$18                                  ; $67cb: $f8 $18
	db   $fc                                         ; $67cd: $fc
	db   $e4                                         ; $67ce: $e4
	call c, $f8b8                                    ; $67cf: $dc $b8 $f8
	ldh  [rP1], a                                    ; $67d2: $e0 $00
	nop                                              ; $67d4: $00
	pop  bc                                          ; $67d5: $c1
	ld   a, a                                        ; $67d6: $7f
	pop  bc                                          ; $67d7: $c1
	ld   a, a                                        ; $67d8: $7f
	pop  hl                                          ; $67d9: $e1
	ld   a, a                                        ; $67da: $7f
	ld   h, c                                        ; $67db: $61
	ld   a, a                                        ; $67dc: $7f
	ld   [hl], c                                     ; $67dd: $71
	ld   a, a                                        ; $67de: $7f
	ld   [hl], c                                     ; $67df: $71
	ld   e, a                                        ; $67e0: $5f
	ld   [hl], c                                     ; $67e1: $71
	ld   e, a                                        ; $67e2: $5f
	ld   [hl], e                                     ; $67e3: $73
	ld   e, a                                        ; $67e4: $5f
	or   d                                           ; $67e5: $b2
	ld   l, [hl]                                     ; $67e6: $6e
	or   d                                           ; $67e7: $b2
	ld   l, [hl]                                     ; $67e8: $6e
	or   d                                           ; $67e9: $b2
	ld   l, [hl]                                     ; $67ea: $6e
	or   [hl]                                        ; $67eb: $b6
	ld   l, d                                        ; $67ec: $6a
	cp   $22                                         ; $67ed: $fe $22
	cp   $22                                         ; $67ef: $fe $22
	cp   $42                                         ; $67f1: $fe $42
	cp   $4e                                         ; $67f3: $fe $4e
	sbc  [hl]                                        ; $67f5: $9e
	ldh  a, [$4e]                                    ; $67f6: $f0 $4e
	ld   hl, sp-$12                                  ; $67f8: $f8 $ee
	ld   hl, sp+$7e                                  ; $67fa: $f8 $7e
	ld   a, h                                        ; $67fc: $7c
	ccf                                              ; $67fd: $3f
	cpl                                              ; $67fe: $2f
	ld   e, $14                                      ; $67ff: $1e $14
	rrca                                             ; $6801: $0f
	ld   c, $07                                      ; $6802: $0e $07
	ld   b, $00                                      ; $6804: $06 $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	add  c                                           ; $680b: $81
	add  c                                           ; $680c: $81
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	ld   [hl], e                                     ; $6815: $73
	ld   e, [hl]                                     ; $6816: $5e
	rst  $30                                         ; $6817: $f7
	sbc  [hl]                                        ; $6818: $9e
	rst  $30                                         ; $6819: $f7
	sbc  l                                           ; $681a: $9d
	ld   a, a                                        ; $681b: $7f
	dec  sp                                          ; $681c: $3b
	rst  $30                                         ; $681d: $f7
	inc  b                                           ; $681e: $04
	ret  nz                                          ; $681f: $c0

	ld   b, b                                        ; $6820: $40
	ld   b, b                                        ; $6821: $40
	ld   b, b                                        ; $6822: $40
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	ld   a, [$fe4e]                                  ; $6825: $fa $4e $fe
	sbc  [hl]                                        ; $6828: $9e
	cp   $fa                                         ; $6829: $fe $fa
	cp   $0a                                         ; $682b: $fe $0a
	sbc  [hl]                                        ; $682d: $9e
	ld   e, $3a                                      ; $682e: $1e $3a
	ld   a, [de]                                     ; $6830: $1a
	ld   [hl-], a                                    ; $6831: $32
	ld   [hl-], a                                    ; $6832: $32
	ld   [hl+], a                                    ; $6833: $22
	ld   [hl+], a                                    ; $6834: $22
	rrca                                             ; $6835: $0f
	rrca                                             ; $6836: $0f
	ccf                                              ; $6837: $3f
	ccf                                              ; $6838: $3f
	ld   a, a                                        ; $6839: $7f
	ld   a, a                                        ; $683a: $7f
	rst  $38                                         ; $683b: $ff
	rst  $38                                         ; $683c: $ff
	rst  $28                                         ; $683d: $ef
	rst  $38                                         ; $683e: $ff
	db   $e3                                         ; $683f: $e3
	rst  $38                                         ; $6840: $ff
	pop  hl                                          ; $6841: $e1
	rst  $38                                         ; $6842: $ff
	ldh  a, [rIE]                                    ; $6843: $f0 $ff
	add  c                                           ; $6845: $81
	nop                                              ; $6846: $00
	ret  nz                                          ; $6847: $c0

	add  b                                           ; $6848: $80
	ldh  [rLCDC], a                                  ; $6849: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $684b: $f0 $20
	ld   hl, sp+$10                                  ; $684d: $f8 $10
	db   $fc                                         ; $684f: $fc
	inc  c                                           ; $6850: $0c
	rst  $38                                         ; $6851: $ff
	add  e                                           ; $6852: $83
	rst  $30                                         ; $6853: $f7
	ldh  [$e0], a                                    ; $6854: $e0 $e0
	ret  nz                                          ; $6856: $c0

	ret  nz                                          ; $6857: $c0

	nop                                              ; $6858: $00
	ld   bc, $0301                                   ; $6859: $01 $01 $03
	inc  bc                                          ; $685c: $03
	rlca                                             ; $685d: $07
	rlca                                             ; $685e: $07
	dec  bc                                          ; $685f: $0b
	dec  bc                                          ; $6860: $0b
	dec  sp                                          ; $6861: $3b
	inc  sp                                          ; $6862: $33
	di                                               ; $6863: $f3
	jp   Jump_098_4242                               ; $6864: $c3 $42 $42


	jp   nz, $e2c2                                   ; $6867: $c2 $c2 $e2

	ldh  [c], a                                      ; $686a: $e2
	ldh  a, [c]                                      ; $686b: $f2
	ldh  a, [c]                                      ; $686c: $f2
	jp   c, $daea                                    ; $686d: $da $ea $da

	ld   [$ea9a], a                                  ; $6870: $ea $9a $ea
	ld   c, $f6                                      ; $6873: $0e $f6
	ld   hl, sp-$01                                  ; $6875: $f8 $ff
	db   $fc                                         ; $6877: $fc
	rst  $38                                         ; $6878: $ff
	cp   $ff                                         ; $6879: $fe $ff
	rst  $38                                         ; $687b: $ff
	rst  $38                                         ; $687c: $ff
	rst  $38                                         ; $687d: $ff
	rst  $38                                         ; $687e: $ff

jr_098_687f:
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	jr   jr_098_687f                                 ; $6885: $18 $f8

	ld   b, $fe                                      ; $6887: $06 $fe
	ld   bc, $80ff                                   ; $6889: $01 $ff $80
	rst  $38                                         ; $688c: $ff
	pop  bc                                          ; $688d: $c1
	rst  $38                                         ; $688e: $ff
	ldh  [c], a                                      ; $688f: $e2
	rst  $38                                         ; $6890: $ff
	ldh  [c], a                                      ; $6891: $e2
	rst  $38                                         ; $6892: $ff
	db   $f4                                         ; $6893: $f4
	rst  $38                                         ; $6894: $ff
	ld   [bc], a                                     ; $6895: $02
	inc  bc                                          ; $6896: $03
	inc  c                                           ; $6897: $0c
	rrca                                             ; $6898: $0f
	jr   nc, jr_098_68da                             ; $6899: $30 $3f

	ret  nz                                          ; $689b: $c0

	rst  $38                                         ; $689c: $ff
	nop                                              ; $689d: $00
	rst  $38                                         ; $689e: $ff
	nop                                              ; $689f: $00
	rst  $38                                         ; $68a0: $ff
	nop                                              ; $68a1: $00
	rst  $38                                         ; $68a2: $ff
	nop                                              ; $68a3: $00
	rst  $38                                         ; $68a4: $ff
	ld   c, $f6                                      ; $68a5: $0e $f6
	ld   c, $f6                                      ; $68a7: $0e $f6
	ld   c, $f6                                      ; $68a9: $0e $f6
	ld   c, $f6                                      ; $68ab: $0e $f6
	ld   c, $f6                                      ; $68ad: $0e $f6
	ld   c, $f6                                      ; $68af: $0e $f6
	ld   c, $fe                                      ; $68b1: $0e $fe
	ld   c, $fe                                      ; $68b3: $0e $fe
	adc  h                                           ; $68b5: $8c
	ld   hl, sp-$74                                  ; $68b6: $f8 $8c
	ld   hl, sp+$1f                                  ; $68b8: $f8 $1f
	rst  $30                                         ; $68ba: $f7
	rra                                              ; $68bb: $1f
	ldh  a, [$1f]                                    ; $68bc: $f0 $1f
	di                                               ; $68be: $f3
	ld   e, $f6                                      ; $68bf: $1e $f6
	rra                                              ; $68c1: $1f
	pop  af                                          ; $68c2: $f1
	sbc  [hl]                                        ; $68c3: $9e
	ldh  a, [rLCDC]                                  ; $68c4: $f0 $40
	ld   b, b                                        ; $68c6: $40
	ld   b, b                                        ; $68c7: $40
	ld   b, b                                        ; $68c8: $40
	ldh  a, [$f0]                                    ; $68c9: $f0 $f0
	db   $fc                                         ; $68cb: $fc
	inc  c                                           ; $68cc: $0c
	db   $fc                                         ; $68cd: $fc
	ldh  a, [$dc]                                    ; $68ce: $f0 $dc
	cp   b                                           ; $68d0: $b8
	ld   hl, sp-$40                                  ; $68d1: $f8 $c0
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	ld   d, b                                        ; $68d5: $50
	nop                                              ; $68d6: $00
	xor  b                                           ; $68d7: $a8
	nop                                              ; $68d8: $00
	ld   b, b                                        ; $68d9: $40

jr_098_68da:
	nop                                              ; $68da: $00
	add  c                                           ; $68db: $81
	add  c                                           ; $68dc: $81
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	add  e                                           ; $68e5: $83
	ld   bc, $80c1                                   ; $68e6: $01 $c1 $80
	ldh  [rLCDC], a                                  ; $68e9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $68eb: $f0 $20
	ld   hl, sp+$10                                  ; $68ed: $f8 $10
	db   $fc                                         ; $68ef: $fc
	inc  c                                           ; $68f0: $0c
	rst  $38                                         ; $68f1: $ff
	add  e                                           ; $68f2: $83
	rst  $30                                         ; $68f3: $f7
	ldh  [$e0], a                                    ; $68f4: $e0 $e0
	ret  nz                                          ; $68f6: $c0

	ret  nz                                          ; $68f7: $c0

	nop                                              ; $68f8: $00
	ld   bc, $0301                                   ; $68f9: $01 $01 $03
	inc  bc                                          ; $68fc: $03
	rlca                                             ; $68fd: $07
	rlca                                             ; $68fe: $07
	dec  bc                                          ; $68ff: $0b
	dec  bc                                          ; $6900: $0b
	dec  sp                                          ; $6901: $3b
	inc  sp                                          ; $6902: $33
	di                                               ; $6903: $f3
	jp   Jump_098_4040                               ; $6904: $c3 $40 $40


	ld   b, b                                        ; $6907: $40
	ld   b, b                                        ; $6908: $40
	ld   b, b                                        ; $6909: $40
	ld   b, b                                        ; $690a: $40
	ldh  a, [$f0]                                    ; $690b: $f0 $f0
	cp   $ec                                         ; $690d: $fe $ec
	sbc  $b8                                         ; $690f: $de $b8
	ld   hl, sp-$20                                  ; $6911: $f8 $e0
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	adc  h                                           ; $6915: $8c
	ld   hl, sp-$74                                  ; $6916: $f8 $8c
	ld   hl, sp+$1f                                  ; $6918: $f8 $1f
	di                                               ; $691a: $f3
	rra                                              ; $691b: $1f
	db   $f4                                         ; $691c: $f4
	rra                                              ; $691d: $1f
	di                                               ; $691e: $f3
	ld   e, $f6                                      ; $691f: $1e $f6
	rra                                              ; $6921: $1f
	pop  af                                          ; $6922: $f1
	sbc  [hl]                                        ; $6923: $9e
	ldh  a, [rLCDC]                                  ; $6924: $f0 $40
	ld   b, b                                        ; $6926: $40
	ld   b, b                                        ; $6927: $40
	ld   b, b                                        ; $6928: $40
	ldh  a, [$f0]                                    ; $6929: $f0 $f0
	db   $fc                                         ; $692b: $fc
	inc  c                                           ; $692c: $0c
	db   $fc                                         ; $692d: $fc
	ldh  a, [$dc]                                    ; $692e: $f0 $dc
	cp   b                                           ; $6930: $b8
	ld   hl, sp-$20                                  ; $6931: $f8 $e0
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	ld   b, b                                        ; $6935: $40
	ld   b, b                                        ; $6936: $40
	ld   b, b                                        ; $6937: $40
	ld   b, b                                        ; $6938: $40
	ld   b, b                                        ; $6939: $40
	ld   b, b                                        ; $693a: $40
	db   $fc                                         ; $693b: $fc
	ld   hl, sp-$08                                  ; $693c: $f8 $f8
	ldh  [$dc], a                                    ; $693e: $e0 $dc
	cp   b                                           ; $6940: $b8
	ldh  a, [$e0]                                    ; $6941: $f0 $e0
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	add  c                                           ; $6945: $81
	nop                                              ; $6946: $00
	pop  bc                                          ; $6947: $c1
	add  b                                           ; $6948: $80
	ldh  [rLCDC], a                                  ; $6949: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $694b: $f0 $20
	ld   hl, sp+$10                                  ; $694d: $f8 $10
	db   $fc                                         ; $694f: $fc
	inc  c                                           ; $6950: $0c
	rst  $38                                         ; $6951: $ff
	add  e                                           ; $6952: $83
	rst  $30                                         ; $6953: $f7
	ldh  [$e0], a                                    ; $6954: $e0 $e0
	ret  nz                                          ; $6956: $c0

	ret  nz                                          ; $6957: $c0

	nop                                              ; $6958: $00
	ld   bc, $0301                                   ; $6959: $01 $01 $03
	inc  bc                                          ; $695c: $03
	rlca                                             ; $695d: $07
	rlca                                             ; $695e: $07
	dec  bc                                          ; $695f: $0b
	dec  bc                                          ; $6960: $0b
	dec  sp                                          ; $6961: $3b
	inc  sp                                          ; $6962: $33
	di                                               ; $6963: $f3
	jp   Jump_098_4040                               ; $6964: $c3 $40 $40


	ld   b, b                                        ; $6967: $40
	ld   b, b                                        ; $6968: $40
	ret  nz                                          ; $6969: $c0

	ld   b, b                                        ; $696a: $40
	db   $fc                                         ; $696b: $fc
	ld   hl, sp-$10                                  ; $696c: $f8 $f0
	ldh  [$bc], a                                    ; $696e: $e0 $bc
	sbc  b                                           ; $6970: $98
	ldh  a, [$e0]                                    ; $6971: $f0 $e0
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	add  e                                           ; $6975: $83
	nop                                              ; $6976: $00
	ret  nz                                          ; $6977: $c0

	add  b                                           ; $6978: $80
	ldh  [rLCDC], a                                  ; $6979: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $697b: $f0 $20
	ld   hl, sp+$10                                  ; $697d: $f8 $10
	db   $fc                                         ; $697f: $fc
	inc  c                                           ; $6980: $0c
	rst  $38                                         ; $6981: $ff
	add  e                                           ; $6982: $83
	rst  $30                                         ; $6983: $f7
	ldh  [$e0], a                                    ; $6984: $e0 $e0
	ret  nz                                          ; $6986: $c0

	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	ld   bc, $0301                                   ; $6989: $01 $01 $03
	inc  bc                                          ; $698c: $03
	rlca                                             ; $698d: $07
	rlca                                             ; $698e: $07
	dec  bc                                          ; $698f: $0b
	dec  bc                                          ; $6990: $0b
	dec  sp                                          ; $6991: $3b
	inc  sp                                          ; $6992: $33
	di                                               ; $6993: $f3
	jp   $f88c                                       ; $6994: $c3 $8c $f8


	adc  [hl]                                        ; $6997: $8e
	cp   $1f                                         ; $6998: $fe $1f
	pop  af                                          ; $699a: $f1
	rra                                              ; $699b: $1f
	ldh  a, [$1f]                                    ; $699c: $f0 $1f
	rst  $30                                         ; $699e: $f7
	ld   e, $f2                                      ; $699f: $1e $f2
	rra                                              ; $69a1: $1f
	pop  af                                          ; $69a2: $f1
	sbc  [hl]                                        ; $69a3: $9e
	ldh  a, [rLCDC]                                  ; $69a4: $f0 $40
	ld   b, b                                        ; $69a6: $40
	ld   b, b                                        ; $69a7: $40
	ld   b, b                                        ; $69a8: $40
	ret  nz                                          ; $69a9: $c0

	ret  nz                                          ; $69aa: $c0

	ldh  [$60], a                                    ; $69ab: $e0 $60
	ld   hl, sp-$08                                  ; $69ad: $f8 $f8
	call c, $f0bc                                    ; $69af: $dc $bc $f0
	ldh  [rP1], a                                    ; $69b2: $e0 $00
	nop                                              ; $69b4: $00
	add  c                                           ; $69b5: $81
	ld   bc, $80c0                                   ; $69b6: $01 $c0 $80
	ldh  [rLCDC], a                                  ; $69b9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $69bb: $f0 $20
	ld   hl, sp+$10                                  ; $69bd: $f8 $10
	db   $fc                                         ; $69bf: $fc
	inc  c                                           ; $69c0: $0c
	rst  $38                                         ; $69c1: $ff
	add  e                                           ; $69c2: $83
	rst  $30                                         ; $69c3: $f7
	ldh  [$e0], a                                    ; $69c4: $e0 $e0
	jr   nz, jr_098_69c8                             ; $69c6: $20 $00

jr_098_69c8:
	nop                                              ; $69c8: $00
	ld   bc, $0301                                   ; $69c9: $01 $01 $03
	inc  bc                                          ; $69cc: $03
	rlca                                             ; $69cd: $07
	rlca                                             ; $69ce: $07
	dec  bc                                          ; $69cf: $0b
	dec  bc                                          ; $69d0: $0b
	dec  sp                                          ; $69d1: $3b
	inc  sp                                          ; $69d2: $33
	di                                               ; $69d3: $f3
	jp   $f88c                                       ; $69d4: $c3 $8c $f8


	adc  a                                           ; $69d7: $8f
	rst  $38                                         ; $69d8: $ff
	rra                                              ; $69d9: $1f
	ldh  a, [$1f]                                    ; $69da: $f0 $1f
	pop  af                                          ; $69dc: $f1
	ld   e, $f6                                      ; $69dd: $1e $f6
	ld   e, $f0                                      ; $69df: $1e $f0
	rra                                              ; $69e1: $1f
	pop  af                                          ; $69e2: $f1
	sbc  [hl]                                        ; $69e3: $9e
	ldh  a, [rLCDC]                                  ; $69e4: $f0 $40
	ld   b, b                                        ; $69e6: $40
	ldh  [$e0], a                                    ; $69e7: $e0 $e0
	ld   hl, sp+$58                                  ; $69e9: $f8 $58
	db   $fc                                         ; $69eb: $fc
	db   $e4                                         ; $69ec: $e4
	db   $fc                                         ; $69ed: $fc
	or   b                                           ; $69ee: $b0
	call c, $f8b8                                    ; $69ef: $dc $b8 $f8
	ret  nz                                          ; $69f2: $c0

	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	inc  bc                                          ; $69f5: $03
	inc  bc                                          ; $69f6: $03
	ld   bc, $0101                                   ; $69f7: $01 $01 $01
	ld   bc, $0303                                   ; $69fa: $01 $03 $03
	inc  bc                                          ; $69fd: $03
	inc  bc                                          ; $69fe: $03
	ld   b, $04                                      ; $69ff: $06 $04
	rlca                                             ; $6a01: $07
	inc  b                                           ; $6a02: $04
	inc  bc                                          ; $6a03: $03
	ld   [bc], a                                     ; $6a04: $02
	add  c                                           ; $6a05: $81
	nop                                              ; $6a06: $00
	ret  nz                                          ; $6a07: $c0

	add  b                                           ; $6a08: $80
	ldh  [rLCDC], a                                  ; $6a09: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6a0b: $f0 $20
	ld   hl, sp+$10                                  ; $6a0d: $f8 $10
	db   $fc                                         ; $6a0f: $fc
	adc  h                                           ; $6a10: $8c
	ld   a, a                                        ; $6a11: $7f
	ld   h, e                                        ; $6a12: $63
	rra                                              ; $6a13: $1f
	inc  e                                           ; $6a14: $1c
	ldh  [$c0], a                                    ; $6a15: $e0 $c0
	ret  nz                                          ; $6a17: $c0

	nop                                              ; $6a18: $00
	ld   bc, $0201                                   ; $6a19: $01 $01 $02
	ld   [bc], a                                     ; $6a1c: $02
	ld   b, $06                                      ; $6a1d: $06 $06
	rrca                                             ; $6a1f: $0f
	dec  bc                                          ; $6a20: $0b
	ld   a, $32                                      ; $6a21: $3e $32
	db   $fc                                         ; $6a23: $fc
	call z, Call_098_4242                            ; $6a24: $cc $42 $42
	add  d                                           ; $6a27: $82
	add  d                                           ; $6a28: $82
	ld   [bc], a                                     ; $6a29: $02
	ld   [bc], a                                     ; $6a2a: $02
	ld   [bc], a                                     ; $6a2b: $02
	ld   [bc], a                                     ; $6a2c: $02
	ld   [bc], a                                     ; $6a2d: $02
	ld   [bc], a                                     ; $6a2e: $02
	ld   [bc], a                                     ; $6a2f: $02
	ld   [bc], a                                     ; $6a30: $02
	add  d                                           ; $6a31: $82
	add  d                                           ; $6a32: $82
	add  [hl]                                        ; $6a33: $86
	add  [hl]                                        ; $6a34: $86
	add  a                                           ; $6a35: $87
	add  h                                           ; $6a36: $84
	adc  $cc                                         ; $6a37: $ce $cc
	cp   $f4                                         ; $6a39: $fe $f4
	rst  $38                                         ; $6a3b: $ff
	jp   $80e7                                       ; $6a3c: $c3 $e7 $80


	jp   Jump_098_4182                               ; $6a3f: $c3 $82 $41


	pop  bc                                          ; $6a42: $c1
	ld   b, b                                        ; $6a43: $40
	ld   b, b                                        ; $6a44: $40
	jp   Jump_098_7003                               ; $6a45: $c3 $03 $70


	nop                                              ; $6a48: $00
	ld   a, h                                        ; $6a49: $7c
	ld   h, b                                        ; $6a4a: $60
	sbc  a                                           ; $6a4b: $9f
	inc  e                                           ; $6a4c: $1c
	ldh  [$c0], a                                    ; $6a4d: $e0 $c0
	ccf                                              ; $6a4f: $3f
	dec  sp                                          ; $6a50: $3b
	rst  ToBoot                                         ; $6a51: $c7
	inc  b                                           ; $6a52: $04
	db   $f4                                         ; $6a53: $f4
	add  h                                           ; $6a54: $84
	di                                               ; $6a55: $f3
	ldh  a, [rIF]                                    ; $6a56: $f0 $0f
	nop                                              ; $6a58: $00
	rra                                              ; $6a59: $1f
	nop                                              ; $6a5a: $00
	rlca                                             ; $6a5b: $07
	nop                                              ; $6a5c: $00
	inc  bc                                          ; $6a5d: $03
	ld   bc, $068f                                   ; $6a5e: $01 $8f $06
	rst  $38                                         ; $6a61: $ff
	db   $fc                                         ; $6a62: $fc
	rst  $38                                         ; $6a63: $ff
	add  d                                           ; $6a64: $82
	sbc  d                                           ; $6a65: $9a
	sbc  [hl]                                        ; $6a66: $9e
	and  $7e                                         ; $6a67: $e6 $7e
	cp   $7e                                         ; $6a69: $fe $7e
	cp   $9e                                         ; $6a6b: $fe $9e
	cp   $0e                                         ; $6a6d: $fe $0e
	cp   $82                                         ; $6a6f: $fe $82
	ld   a, d                                        ; $6a71: $7a
	ld   b, d                                        ; $6a72: $42
	or   d                                           ; $6a73: $b2
	ld   [hl+], a                                    ; $6a74: $22
	add  e                                           ; $6a75: $83
	ld   bc, $80c1                                   ; $6a76: $01 $c1 $80
	ldh  [rLCDC], a                                  ; $6a79: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6a7b: $f0 $20
	ld   hl, sp+$10                                  ; $6a7d: $f8 $10
	db   $fc                                         ; $6a7f: $fc
	adc  h                                           ; $6a80: $8c
	ld   a, a                                        ; $6a81: $7f

Jump_098_6a82:
	ld   h, e                                        ; $6a82: $63
	rra                                              ; $6a83: $1f
	inc  e                                           ; $6a84: $1c
	ldh  [$c0], a                                    ; $6a85: $e0 $c0
	ret  nz                                          ; $6a87: $c0

	nop                                              ; $6a88: $00
	ld   bc, $0201                                   ; $6a89: $01 $01 $02
	ld   [bc], a                                     ; $6a8c: $02
	ld   b, $06                                      ; $6a8d: $06 $06
	rrca                                             ; $6a8f: $0f
	dec  bc                                          ; $6a90: $0b
	ld   a, $32                                      ; $6a91: $3e $32
	db   $fc                                         ; $6a93: $fc
	call z, $0081                                    ; $6a94: $cc $81 $00
	pop  bc                                          ; $6a97: $c1
	add  b                                           ; $6a98: $80
	ldh  [rLCDC], a                                  ; $6a99: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6a9b: $f0 $20
	ld   hl, sp+$10                                  ; $6a9d: $f8 $10
	db   $fc                                         ; $6a9f: $fc
	adc  h                                           ; $6aa0: $8c
	ld   a, a                                        ; $6aa1: $7f
	ld   h, e                                        ; $6aa2: $63
	rra                                              ; $6aa3: $1f
	inc  e                                           ; $6aa4: $1c
	ldh  [$c0], a                                    ; $6aa5: $e0 $c0
	ret  nz                                          ; $6aa7: $c0

	nop                                              ; $6aa8: $00
	ld   bc, $0201                                   ; $6aa9: $01 $01 $02
	ld   [bc], a                                     ; $6aac: $02
	ld   b, $06                                      ; $6aad: $06 $06
	rrca                                             ; $6aaf: $0f
	dec  bc                                          ; $6ab0: $0b
	ld   a, $32                                      ; $6ab1: $3e $32
	db   $fc                                         ; $6ab3: $fc
	call z, $0083                                    ; $6ab4: $cc $83 $00
	ret  nz                                          ; $6ab7: $c0

	add  b                                           ; $6ab8: $80
	ldh  [rLCDC], a                                  ; $6ab9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6abb: $f0 $20
	ld   hl, sp+$10                                  ; $6abd: $f8 $10
	db   $fc                                         ; $6abf: $fc
	adc  h                                           ; $6ac0: $8c
	ld   a, a                                        ; $6ac1: $7f
	ld   h, e                                        ; $6ac2: $63
	rra                                              ; $6ac3: $1f
	inc  e                                           ; $6ac4: $1c
	ldh  [$c0], a                                    ; $6ac5: $e0 $c0
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	ld   bc, $0201                                   ; $6ac9: $01 $01 $02
	ld   [bc], a                                     ; $6acc: $02
	ld   b, $06                                      ; $6acd: $06 $06
	rrca                                             ; $6acf: $0f
	dec  bc                                          ; $6ad0: $0b
	ld   a, $32                                      ; $6ad1: $3e $32
	db   $fc                                         ; $6ad3: $fc
	call z, $0181                                    ; $6ad4: $cc $81 $01
	ret  nz                                          ; $6ad7: $c0

	add  b                                           ; $6ad8: $80
	ldh  [rLCDC], a                                  ; $6ad9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6adb: $f0 $20
	ld   hl, sp+$10                                  ; $6add: $f8 $10
	db   $fc                                         ; $6adf: $fc
	adc  h                                           ; $6ae0: $8c
	ld   a, a                                        ; $6ae1: $7f
	ld   h, e                                        ; $6ae2: $63
	rra                                              ; $6ae3: $1f
	inc  e                                           ; $6ae4: $1c
	ldh  [rAUD4LEN], a                               ; $6ae5: $e0 $20
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	ld   bc, $0201                                   ; $6ae9: $01 $01 $02
	ld   [bc], a                                     ; $6aec: $02
	ld   b, $06                                      ; $6aed: $06 $06
	rrca                                             ; $6aef: $0f
	dec  bc                                          ; $6af0: $0b
	ld   a, $32                                      ; $6af1: $3e $32
	db   $fc                                         ; $6af3: $fc
	call z, $0303                                    ; $6af4: $cc $03 $03
	ld   bc, $0101                                   ; $6af7: $01 $01 $01
	ld   bc, $0101                                   ; $6afa: $01 $01 $01
	ld   bc, $0101                                   ; $6afd: $01 $01 $01
	ld   bc, $0101                                   ; $6b00: $01 $01 $01
	ld   bc, $8101                                   ; $6b03: $01 $01 $81
	nop                                              ; $6b06: $00
	ret  nz                                          ; $6b07: $c0

	add  b                                           ; $6b08: $80
	ldh  [rLCDC], a                                  ; $6b09: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6b0b: $f0 $20
	ld   hl, sp+$10                                  ; $6b0d: $f8 $10
	db   $fc                                         ; $6b0f: $fc
	inc  c                                           ; $6b10: $0c
	ld   a, a                                        ; $6b11: $7f
	inc  bc                                          ; $6b12: $03
	rra                                              ; $6b13: $1f
	nop                                              ; $6b14: $00
	ldh  [$c0], a                                    ; $6b15: $e0 $c0
	ret  nz                                          ; $6b17: $c0

	nop                                              ; $6b18: $00
	ld   bc, $0201                                   ; $6b19: $01 $01 $02
	ld   [bc], a                                     ; $6b1c: $02
	ld   b, $06                                      ; $6b1d: $06 $06
	ld   c, $0a                                      ; $6b1f: $0e $0a
	ld   a, [hl-]                                    ; $6b21: $3a
	ld   [hl-], a                                    ; $6b22: $32
	ldh  a, [c]                                      ; $6b23: $f2
	jp   nz, Jump_098_4242                           ; $6b24: $c2 $42 $42

	add  d                                           ; $6b27: $82
	add  d                                           ; $6b28: $82
	ld   [bc], a                                     ; $6b29: $02
	ld   [bc], a                                     ; $6b2a: $02
	ld   [bc], a                                     ; $6b2b: $02
	ld   [bc], a                                     ; $6b2c: $02
	ld   [bc], a                                     ; $6b2d: $02
	ld   [bc], a                                     ; $6b2e: $02
	ld   [bc], a                                     ; $6b2f: $02
	ld   [bc], a                                     ; $6b30: $02
	ld   [bc], a                                     ; $6b31: $02
	ld   [bc], a                                     ; $6b32: $02
	ld   [bc], a                                     ; $6b33: $02
	ld   [bc], a                                     ; $6b34: $02
	ld   bc, $0101                                   ; $6b35: $01 $01 $01
	ld   bc, $0303                                   ; $6b38: $01 $03 $03
	rrca                                             ; $6b3b: $0f
	dec  c                                           ; $6b3c: $0d
	jr   c, jr_098_6b6f                              ; $6b3d: $38 $30

	ret  nz                                          ; $6b3f: $c0

	ret  nz                                          ; $6b40: $c0

	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	rrca                                             ; $6b45: $0f
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	jr   nz, jr_098_6b4d                             ; $6b4b: $20 $00

jr_098_6b4d:
	jr   nz, jr_098_6b4f                             ; $6b4d: $20 $00

jr_098_6b4f:
	jr   nc, jr_098_6b51                             ; $6b4f: $30 $00

jr_098_6b51:
	ld   [hl], b                                     ; $6b51: $70
	nop                                              ; $6b52: $00
	ld   a, b                                        ; $6b53: $78
	nop                                              ; $6b54: $00
	ldh  [c], a                                      ; $6b55: $e2
	ld   [bc], a                                     ; $6b56: $02
	ld   [bc], a                                     ; $6b57: $02
	ld   [bc], a                                     ; $6b58: $02
	ld   [bc], a                                     ; $6b59: $02
	ld   [bc], a                                     ; $6b5a: $02
	inc  bc                                          ; $6b5b: $03
	inc  bc                                          ; $6b5c: $03
	inc  bc                                          ; $6b5d: $03
	ld   [bc], a                                     ; $6b5e: $02
	inc  bc                                          ; $6b5f: $03
	ld   [bc], a                                     ; $6b60: $02
	inc  bc                                          ; $6b61: $03
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	ld   [bc], a                                     ; $6b65: $02
	ld   [bc], a                                     ; $6b66: $02
	ld   [bc], a                                     ; $6b67: $02
	ld   [bc], a                                     ; $6b68: $02
	ld   [bc], a                                     ; $6b69: $02
	ld   [bc], a                                     ; $6b6a: $02
	ld   [bc], a                                     ; $6b6b: $02
	ld   [bc], a                                     ; $6b6c: $02
	ldh  [c], a                                      ; $6b6d: $e2
	ldh  [c], a                                      ; $6b6e: $e2

jr_098_6b6f:
	cp   $1e                                         ; $6b6f: $fe $1e
	ld   [bc], a                                     ; $6b71: $02
	ld   [bc], a                                     ; $6b72: $02
	ld   [bc], a                                     ; $6b73: $02
	ld   [bc], a                                     ; $6b74: $02
	add  e                                           ; $6b75: $83
	ld   bc, $80c1                                   ; $6b76: $01 $c1 $80
	ldh  [rLCDC], a                                  ; $6b79: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6b7b: $f0 $20
	ld   hl, sp+$10                                  ; $6b7d: $f8 $10
	db   $fc                                         ; $6b7f: $fc
	inc  c                                           ; $6b80: $0c
	ld   a, a                                        ; $6b81: $7f
	inc  bc                                          ; $6b82: $03
	rra                                              ; $6b83: $1f
	nop                                              ; $6b84: $00
	ldh  [$c0], a                                    ; $6b85: $e0 $c0
	ret  nz                                          ; $6b87: $c0

	nop                                              ; $6b88: $00
	ld   bc, $0201                                   ; $6b89: $01 $01 $02
	ld   [bc], a                                     ; $6b8c: $02
	ld   b, $06                                      ; $6b8d: $06 $06
	ld   c, $0a                                      ; $6b8f: $0e $0a
	ld   a, [hl-]                                    ; $6b91: $3a
	ld   [hl-], a                                    ; $6b92: $32
	ldh  a, [c]                                      ; $6b93: $f2
	jp   nz, $0081                                   ; $6b94: $c2 $81 $00

	pop  bc                                          ; $6b97: $c1
	add  b                                           ; $6b98: $80
	ldh  [rLCDC], a                                  ; $6b99: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6b9b: $f0 $20
	ld   hl, sp+$10                                  ; $6b9d: $f8 $10
	db   $fc                                         ; $6b9f: $fc
	inc  c                                           ; $6ba0: $0c
	ld   a, a                                        ; $6ba1: $7f
	inc  bc                                          ; $6ba2: $03
	rra                                              ; $6ba3: $1f
	nop                                              ; $6ba4: $00
	ldh  [$c0], a                                    ; $6ba5: $e0 $c0
	ret  nz                                          ; $6ba7: $c0

	nop                                              ; $6ba8: $00
	ld   bc, $0201                                   ; $6ba9: $01 $01 $02
	ld   [bc], a                                     ; $6bac: $02
	ld   b, $06                                      ; $6bad: $06 $06
	ld   c, $0a                                      ; $6baf: $0e $0a
	ld   a, [hl-]                                    ; $6bb1: $3a
	ld   [hl-], a                                    ; $6bb2: $32
	ldh  a, [c]                                      ; $6bb3: $f2
	jp   nz, $0083                                   ; $6bb4: $c2 $83 $00

	ret  nz                                          ; $6bb7: $c0

	add  b                                           ; $6bb8: $80
	ldh  [rLCDC], a                                  ; $6bb9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6bbb: $f0 $20
	ld   hl, sp+$10                                  ; $6bbd: $f8 $10
	db   $fc                                         ; $6bbf: $fc
	inc  c                                           ; $6bc0: $0c
	ld   a, a                                        ; $6bc1: $7f
	inc  bc                                          ; $6bc2: $03
	rra                                              ; $6bc3: $1f
	nop                                              ; $6bc4: $00
	ldh  [$c0], a                                    ; $6bc5: $e0 $c0
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	ld   bc, $0201                                   ; $6bc9: $01 $01 $02
	ld   [bc], a                                     ; $6bcc: $02
	ld   b, $06                                      ; $6bcd: $06 $06
	ld   c, $0a                                      ; $6bcf: $0e $0a
	ld   a, [hl-]                                    ; $6bd1: $3a
	ld   [hl-], a                                    ; $6bd2: $32
	ldh  a, [c]                                      ; $6bd3: $f2
	jp   nz, $0181                                   ; $6bd4: $c2 $81 $01

	ret  nz                                          ; $6bd7: $c0

	add  b                                           ; $6bd8: $80
	ldh  [rLCDC], a                                  ; $6bd9: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $6bdb: $f0 $20
	ld   hl, sp+$10                                  ; $6bdd: $f8 $10
	db   $fc                                         ; $6bdf: $fc
	inc  c                                           ; $6be0: $0c
	ld   a, a                                        ; $6be1: $7f
	inc  bc                                          ; $6be2: $03
	rra                                              ; $6be3: $1f
	nop                                              ; $6be4: $00
	ldh  [rAUD4LEN], a                               ; $6be5: $e0 $20
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	ld   bc, $0201                                   ; $6be9: $01 $01 $02
	ld   [bc], a                                     ; $6bec: $02
	ld   b, $06                                      ; $6bed: $06 $06
	ld   c, $0a                                      ; $6bef: $0e $0a
	ld   a, [hl-]                                    ; $6bf1: $3a
	ld   [hl-], a                                    ; $6bf2: $32
	ldh  a, [c]                                      ; $6bf3: $f2
	jp   nz, $0081                                   ; $6bf4: $c2 $81 $00

	pop  bc                                          ; $6bf7: $c1
	add  c                                           ; $6bf8: $81
	pop  hl                                          ; $6bf9: $e1
	ld   b, c                                        ; $6bfa: $41
	pop  af                                          ; $6bfb: $f1
	jr   nz, @-$06                                   ; $6bfc: $20 $f8

	db   $10                                         ; $6bfe: $10
	db   $fc                                         ; $6bff: $fc
	inc  c                                           ; $6c00: $0c
	rst  $38                                         ; $6c01: $ff
	add  e                                           ; $6c02: $83
	rst  $30                                         ; $6c03: $f7
	ldh  [$e0], a                                    ; $6c04: $e0 $e0
	ret  nz                                          ; $6c06: $c0

	jr   nz, jr_098_6c29                             ; $6c07: $20 $20

	ld   hl, $e321                                   ; $6c09: $21 $21 $e3
	jp   $0707                                       ; $6c0c: $c3 $07 $07


	dec  bc                                          ; $6c0f: $0b
	dec  bc                                          ; $6c10: $0b
	dec  sp                                          ; $6c11: $3b
	inc  sp                                          ; $6c12: $33
	di                                               ; $6c13: $f3
	jp   $0081                                       ; $6c14: $c3 $81 $00


	pop  bc                                          ; $6c17: $c1
	add  c                                           ; $6c18: $81
	pop  hl                                          ; $6c19: $e1
	ld   b, c                                        ; $6c1a: $41
	pop  af                                          ; $6c1b: $f1
	jr   nz, @-$06                                   ; $6c1c: $20 $f8

	db   $10                                         ; $6c1e: $10
	db   $fc                                         ; $6c1f: $fc
	adc  h                                           ; $6c20: $8c
	ld   a, a                                        ; $6c21: $7f
	ld   h, e                                        ; $6c22: $63
	rra                                              ; $6c23: $1f
	inc  e                                           ; $6c24: $1c
	ldh  [$c0], a                                    ; $6c25: $e0 $c0
	jr   nz, jr_098_6c49                             ; $6c27: $20 $20

jr_098_6c29:
	ld   hl, $e221                                   ; $6c29: $21 $21 $e2
	jp   nz, $0606                                   ; $6c2c: $c2 $06 $06

	rrca                                             ; $6c2f: $0f
	dec  bc                                          ; $6c30: $0b
	ld   a, $32                                      ; $6c31: $3e $32
	db   $fc                                         ; $6c33: $fc
	call nz, $0081                                   ; $6c34: $c4 $81 $00
	pop  bc                                          ; $6c37: $c1
	add  c                                           ; $6c38: $81
	pop  hl                                          ; $6c39: $e1
	ld   b, c                                        ; $6c3a: $41
	pop  af                                          ; $6c3b: $f1
	jr   nz, @-$06                                   ; $6c3c: $20 $f8

	db   $10                                         ; $6c3e: $10
	db   $fc                                         ; $6c3f: $fc
	inc  c                                           ; $6c40: $0c
	ld   a, a                                        ; $6c41: $7f
	inc  bc                                          ; $6c42: $03
	rra                                              ; $6c43: $1f
	nop                                              ; $6c44: $00
	ldh  [$c0], a                                    ; $6c45: $e0 $c0
	jr   nz, jr_098_6c69                             ; $6c47: $20 $20

jr_098_6c49:
	ld   hl, $e221                                   ; $6c49: $21 $21 $e2
	jp   nz, $0606                                   ; $6c4c: $c2 $06 $06

	ld   c, $0a                                      ; $6c4f: $0e $0a
	ld   a, [hl-]                                    ; $6c51: $3a
	ld   [hl-], a                                    ; $6c52: $32
	ldh  a, [c]                                      ; $6c53: $f2
	jp   nz, $0000                                  ; $6c54: $c2 $00 $00

	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00

jr_098_6c69:
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	ld   b, e                                        ; $6cb5: $43
	ld   bc, $0086                                   ; $6cb6: $01 $86 $00
	dec  b                                           ; $6cb9: $05
	ld   bc, $0200                                   ; $6cba: $01 $00 $02
	nop                                              ; $6cbd: $00
	rrca                                             ; $6cbe: $0f
	inc  bc                                          ; $6cbf: $03
	add  b                                           ; $6cc0: $80
	rlca                                             ; $6cc1: $07
	nop                                              ; $6cc2: $00
	rrca                                             ; $6cc3: $0f
	add  l                                           ; $6cc4: $85
	nop                                              ; $6cc5: $00
	ld   bc, $7f80                                   ; $6cc6: $01 $80 $7f
	add  l                                           ; $6cc9: $85
	rst  $38                                         ; $6cca: $ff
	add  [hl]                                        ; $6ccb: $86
	nop                                              ; $6ccc: $00
	add  [hl]                                        ; $6ccd: $86
	rst  $38                                         ; $6cce: $ff
	add  [hl]                                        ; $6ccf: $86
	nop                                              ; $6cd0: $00
	add  [hl]                                        ; $6cd1: $86
	rst  $38                                         ; $6cd2: $ff
	add  [hl]                                        ; $6cd3: $86
	nop                                              ; $6cd4: $00
	add  [hl]                                        ; $6cd5: $86
	rst  $38                                         ; $6cd6: $ff
	add  [hl]                                        ; $6cd7: $86
	nop                                              ; $6cd8: $00
	add  [hl]                                        ; $6cd9: $86
	rst  $38                                         ; $6cda: $ff
	add  [hl]                                        ; $6cdb: $86
	nop                                              ; $6cdc: $00
	add  [hl]                                        ; $6cdd: $86
	rst  $38                                         ; $6cde: $ff
	add  [hl]                                        ; $6cdf: $86
	nop                                              ; $6ce0: $00
	add  b                                           ; $6ce1: $80
	db   $fd                                         ; $6ce2: $fd
	add  b                                           ; $6ce3: $80
	or   $80                                         ; $6ce4: $f6 $80
	ei                                               ; $6ce6: $fb
	add  b                                           ; $6ce7: $80
	cp   $86                                         ; $6ce8: $fe $86
	nop                                              ; $6cea: $00
	add  b                                           ; $6ceb: $80
	ld   d, l                                        ; $6cec: $55
	add  b                                           ; $6ced: $80
	xor  d                                           ; $6cee: $aa
	add  b                                           ; $6cef: $80
	ld   d, l                                        ; $6cf0: $55
	add  b                                           ; $6cf1: $80
	xor  d                                           ; $6cf2: $aa
	add  [hl]                                        ; $6cf3: $86
	nop                                              ; $6cf4: $00
	add  b                                           ; $6cf5: $80
	ld   b, b                                        ; $6cf6: $40
	add  b                                           ; $6cf7: $80
	add  b                                           ; $6cf8: $80
	add  b                                           ; $6cf9: $80
	ld   b, b                                        ; $6cfa: $40
	add  b                                           ; $6cfb: $80
	xor  d                                           ; $6cfc: $aa
	add  l                                           ; $6cfd: $85
	nop                                              ; $6cfe: $00
	ld   b, $01                                      ; $6cff: $06 $01
	ld   de, $2116                                   ; $6d01: $11 $16 $21
	dec  hl                                          ; $6d04: $2b
	ld   b, c                                        ; $6d05: $41
	ld   a, l                                        ; $6d06: $7d
	add  b                                           ; $6d07: $80
	adc  e                                           ; $6d08: $8b
	ld   hl, $7f0f                                   ; $6d09: $21 $0f $7f
	rra                                              ; $6d0c: $1f
	rst  $10                                         ; $6d0d: $d7
	ld   [hl], $8a                                   ; $6d0e: $36 $8a
	ret                                              ; $6d10: $c9


	dec  d                                           ; $6d11: $15
	inc  de                                          ; $6d12: $13
	cp   e                                           ; $6d13: $bb
	or   a                                           ; $6d14: $b7
	ld   h, [hl]                                     ; $6d15: $66
	ld   l, [hl]                                     ; $6d16: $6e
	ld   e, l                                        ; $6d17: $5d
	ld   c, h                                        ; $6d18: $4c
	xor  $af                                         ; $6d19: $ee $af
	xor  [hl]                                        ; $6d1b: $ae
	ld   a, [bc]                                     ; $6d1c: $0a
	ld   [$6164], sp                                 ; $6d1d: $08 $64 $61
	reti                                             ; $6d20: $d9


	rst  $10                                         ; $6d21: $d7
	pop  af                                          ; $6d22: $f1
	jp   hl                                          ; $6d23: $e9


	ld   h, e                                        ; $6d24: $63
	ld   d, d                                        ; $6d25: $52
	ld   b, d                                        ; $6d26: $42
	ld   e, $82                                      ; $6d27: $1e $82
	ld   l, [hl]                                     ; $6d29: $6e
	ld   l, $8f                                      ; $6d2a: $2e $8f
	add  b                                           ; $6d2c: $80
	ld   c, a                                        ; $6d2d: $4f
	inc  bc                                          ; $6d2e: $03
	adc  $86                                         ; $6d2f: $ce $86
	add  l                                           ; $6d31: $85
	ld   a, c                                        ; $6d32: $79
	add  c                                           ; $6d33: $81
	ld   [bc], a                                     ; $6d34: $02
	inc  d                                           ; $6d35: $14
	add  h                                           ; $6d36: $84
	ld   bc, $00fc                                   ; $6d37: $01 $fc $00
	push af                                          ; $6d3a: $f5
	db   $f4                                         ; $6d3b: $f4
	ld   a, e                                        ; $6d3c: $7b
	ld   l, d                                        ; $6d3d: $6a
	dec  hl                                          ; $6d3e: $2b
	inc  bc                                          ; $6d3f: $03
	add  l                                           ; $6d40: $85
	dec  l                                           ; $6d41: $2d
	dec  c                                           ; $6d42: $0d
	dec  e                                           ; $6d43: $1d
	ld   e, [hl]                                     ; $6d44: $5e
	sbc  [hl]                                        ; $6d45: $9e
	adc  [hl]                                        ; $6d46: $8e
	ld   c, [hl]                                     ; $6d47: $4e
	ld   l, [hl]                                     ; $6d48: $6e
	xor  $ff                                         ; $6d49: $ee $ff
	add  c                                           ; $6d4b: $81
	nop                                              ; $6d4c: $00
	inc  c                                           ; $6d4d: $0c
	add  b                                           ; $6d4e: $80
	nop                                              ; $6d4f: $00
	ret  nz                                          ; $6d50: $c0

	add  b                                           ; $6d51: $80
	cp   b                                           ; $6d52: $b8
	add  b                                           ; $6d53: $80
	ret  z                                           ; $6d54: $c8

	ret  nz                                          ; $6d55: $c0

	ld   d, b                                        ; $6d56: $50
	ld   b, b                                        ; $6d57: $40
	jr   nc, jr_098_6d7a                             ; $6d58: $30 $20

	ldh  a, [$8e]                                    ; $6d5a: $f0 $8e
	rrca                                             ; $6d5c: $0f
	ldh  [rIE], a                                    ; $6d5d: $e0 $ff
	add  b                                           ; $6d5f: $80
	ld   a, [$ff80]                                  ; $6d60: $fa $80 $ff
	add  b                                           ; $6d63: $80
	cp   $86                                         ; $6d64: $fe $86
	rst  $38                                         ; $6d66: $ff
	add  b                                           ; $6d67: $80
	ld   d, l                                        ; $6d68: $55
	add  b                                           ; $6d69: $80
	xor  d                                           ; $6d6a: $aa
	add  b                                           ; $6d6b: $80
	ld   d, l                                        ; $6d6c: $55
	add  b                                           ; $6d6d: $80
	ld   a, [$d580]                                  ; $6d6e: $fa $80 $d5
	add  b                                           ; $6d71: $80
	ld   a, [$fc1b]                                  ; $6d72: $fa $1b $fc
	rst  $38                                         ; $6d75: $ff
	ld   hl, sp-$05                                  ; $6d76: $f8 $fb
	ld   d, h                                        ; $6d78: $54
	ld   d, l                                        ; $6d79: $55

jr_098_6d7a:
	xor  b                                           ; $6d7a: $a8
	xor  d                                           ; $6d7b: $aa
	ld   d, b                                        ; $6d7c: $50
	ld   e, a                                        ; $6d7d: $5f
	and  d                                           ; $6d7e: $a2
	or   [hl]                                        ; $6d7f: $b6
	dec  b                                           ; $6d80: $05
	ld   a, l                                        ; $6d81: $7d
	ld   a, [bc]                                     ; $6d82: $0a
	xor  d                                           ; $6d83: $aa
	dec  d                                           ; $6d84: $15
	push de                                          ; $6d85: $d5
	xor  d                                           ; $6d86: $aa
	rl   l                                           ; $6d87: $cb $15
	push af                                          ; $6d89: $f5
	dec  hl                                          ; $6d8a: $2b
	xor  e                                           ; $6d8b: $ab
	ld   d, l                                        ; $6d8c: $55
	ld   d, [hl]                                     ; $6d8d: $56
	xor  e                                           ; $6d8e: $ab
	xor  b                                           ; $6d8f: $a8
	add  b                                           ; $6d90: $80
	ld   d, l                                        ; $6d91: $55
	ld   [$aaab], sp                                 ; $6d92: $08 $ab $aa
	ld   d, l                                        ; $6d95: $55
	ld   d, [hl]                                     ; $6d96: $56
	xor  a                                           ; $6d97: $af
	ld   [$33b9], a                                  ; $6d98: $ea $b9 $33
	ld   sp, $7180                                   ; $6d9b: $31 $80 $71
	ld   bc, $6a68                                   ; $6d9e: $01 $68 $6a
	add  b                                           ; $6da1: $80
	jp   z, $aa27                                    ; $6da2: $ca $27 $aa

	adc  d                                           ; $6da5: $8a
	ld   [hl+], a                                    ; $6da6: $22
	ld   [bc], a                                     ; $6da7: $02
	db   $fc                                         ; $6da8: $fc
	nop                                              ; $6da9: $00
	call nz, Call_098_743c                           ; $6daa: $c4 $3c $74
	ld   a, h                                        ; $6dad: $7c
	ld   [$6806], sp                                 ; $6dae: $08 $06 $68
	ld   l, d                                        ; $6db1: $6a
	ld   b, h                                        ; $6db2: $44
	ld   b, [hl]                                     ; $6db3: $46
	or   d                                           ; $6db4: $b2
	sub  e                                           ; $6db5: $93
	ld   b, a                                        ; $6db6: $47
	add  e                                           ; $6db7: $83
	and  e                                           ; $6db8: $a3
	rst  ToBoot                                         ; $6db9: $c7
	adc  l                                           ; $6dba: $8d
	cp   $f7                                         ; $6dbb: $fe $f7
	rst  $38                                         ; $6dbd: $ff
	ld   sp, hl                                      ; $6dbe: $f9
	pop  hl                                          ; $6dbf: $e1
	ld   [hl], $de                                   ; $6dc0: $36 $de
	add  hl, sp                                      ; $6dc2: $39
	or   c                                           ; $6dc3: $b1
	jp   z, $b1e8                                    ; $6dc4: $ca $e8 $b1

	ldh  [$e2], a                                    ; $6dc7: $e0 $e2
	ld   [hl], c                                     ; $6dc9: $71
	add  a                                           ; $6dca: $87
	rst  $20                                         ; $6dcb: $e7
	add  b                                           ; $6dcc: $80
	ld   h, a                                        ; $6dcd: $67
	add  b                                           ; $6dce: $80
	ld   h, e                                        ; $6dcf: $63
	add  b                                           ; $6dd0: $80
	ld   [hl], c                                     ; $6dd1: $71
	nop                                              ; $6dd2: $00
	or   h                                           ; $6dd3: $b4
	add  b                                           ; $6dd4: $80
	or   b                                           ; $6dd5: $b0
	ld   b, $30                                      ; $6dd6: $06 $30
	ld   hl, $2520                                   ; $6dd8: $21 $20 $25
	jr   nz, @-$67                                   ; $6ddb: $20 $97

	db   $10                                         ; $6ddd: $10
	add  b                                           ; $6dde: $80
	ld   b, b                                        ; $6ddf: $40
	dec  b                                           ; $6de0: $05
	ld   e, h                                        ; $6de1: $5c
	ld   b, b                                        ; $6de2: $40
	or   h                                           ; $6de3: $b4
	and  b                                           ; $6de4: $a0
	sub  b                                           ; $6de5: $90
	add  b                                           ; $6de6: $80
	add  b                                           ; $6de7: $80
	ld   b, b                                        ; $6de8: $40
	dec  b                                           ; $6de9: $05
	and  b                                           ; $6dea: $a0
	nop                                              ; $6deb: $00
	jr   c, jr_098_6dee                              ; $6dec: $38 $00

jr_098_6dee:
	ld   a, b                                        ; $6dee: $78
	rrca                                             ; $6def: $0f
	add  b                                           ; $6df0: $80
	ld   a, [bc]                                     ; $6df1: $0a
	add  b                                           ; $6df2: $80
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	rrca                                             ; $6df5: $0f
	add  b                                           ; $6df6: $80
	ld   a, [bc]                                     ; $6df7: $0a
	add  [hl]                                        ; $6df8: $86
	rrca                                             ; $6df9: $0f
	nop                                              ; $6dfa: $00
	rst  $38                                         ; $6dfb: $ff
	add  b                                           ; $6dfc: $80
	xor  a                                           ; $6dfd: $af
	add  b                                           ; $6dfe: $80
	dec  b                                           ; $6dff: $05
	ld   [bc], a                                     ; $6e00: $02
	ld   hl, sp-$70                                  ; $6e01: $f8 $90
	sub  a                                           ; $6e03: $97
	add  b                                           ; $6e04: $80
	db   $fd                                         ; $6e05: $fd
	add  a                                           ; $6e06: $87
	rst  $38                                         ; $6e07: $ff
	add  b                                           ; $6e08: $80
	ld   e, a                                        ; $6e09: $5f
	add  b                                           ; $6e0a: $80
	ld   a, [bc]                                     ; $6e0b: $0a
	ld   [bc], a                                     ; $6e0c: $02
	ldh  a, [rLCDC]                                  ; $6e0d: $f0 $40
	ld   c, a                                        ; $6e0f: $4f
	add  b                                           ; $6e10: $80
	xor  b                                           ; $6e11: $a8
	add  a                                           ; $6e12: $87
	rst  $38                                         ; $6e13: $ff
	add  b                                           ; $6e14: $80
	xor  a                                           ; $6e15: $af
	add  b                                           ; $6e16: $80
	dec  b                                           ; $6e17: $05
	ld   [bc], a                                     ; $6e18: $02
	ld   hl, sp+$00                                  ; $6e19: $f8 $00
	rlca                                             ; $6e1b: $07
	add  b                                           ; $6e1c: $80
	db   $f4                                         ; $6e1d: $f4
	add  b                                           ; $6e1e: $80
	cp   $85                                         ; $6e1f: $fe $85
	rst  $38                                         ; $6e21: $ff
	add  b                                           ; $6e22: $80
	ld   e, a                                        ; $6e23: $5f
	add  b                                           ; $6e24: $80
	ld   a, [bc]                                     ; $6e25: $0a
	ld   [bc], a                                     ; $6e26: $02
	ldh  a, [rP1]                                    ; $6e27: $f0 $00
	rrca                                             ; $6e29: $0f
	add  b                                           ; $6e2a: $80
	xor  b                                           ; $6e2b: $a8
	add  a                                           ; $6e2c: $87
	rst  $38                                         ; $6e2d: $ff
	add  b                                           ; $6e2e: $80
	xor  a                                           ; $6e2f: $af
	add  b                                           ; $6e30: $80
	dec  b                                           ; $6e31: $05
	ld   [bc], a                                     ; $6e32: $02
	ldh  a, [rP1]                                    ; $6e33: $f0 $00
	rrca                                             ; $6e35: $0f
	adc  c                                           ; $6e36: $89
	rst  $38                                         ; $6e37: $ff
	add  b                                           ; $6e38: $80
	ld   e, a                                        ; $6e39: $5f
	add  b                                           ; $6e3a: $80
	dec  bc                                          ; $6e3b: $0b
	add  l                                           ; $6e3c: $85
	rst  $38                                         ; $6e3d: $ff
	inc  de                                          ; $6e3e: $13
	cp   $ff                                         ; $6e3f: $fe $ff
	ld   hl, sp-$01                                  ; $6e41: $f8 $ff
	pop  af                                          ; $6e43: $f1
	ei                                               ; $6e44: $fb
	jp   $8fff                                       ; $6e45: $c3 $ff $8f


	cp   c                                           ; $6e48: $b9
	pop  hl                                          ; $6e49: $e1
	rst  $38                                         ; $6e4a: $ff
	add  $ee                                         ; $6e4b: $c6 $ee
	dec  c                                           ; $6e4d: $0d
	db   $fd                                         ; $6e4e: $fd
	ld   a, [hl-]                                    ; $6e4f: $3a
	ld   a, d                                        ; $6e50: $7a
	ld   a, a                                        ; $6e51: $7f
	rst  $38                                         ; $6e52: $ff
	add  b                                           ; $6e53: $80
	db   $fc                                         ; $6e54: $fc
	add  b                                           ; $6e55: $80
	rst  $38                                         ; $6e56: $ff
	add  b                                           ; $6e57: $80
	cp   $80                                         ; $6e58: $fe $80
	ld   d, l                                        ; $6e5a: $55
	add  b                                           ; $6e5b: $80
	xor  d                                           ; $6e5c: $aa
	add  b                                           ; $6e5d: $80
	ld   d, l                                        ; $6e5e: $55
	add  b                                           ; $6e5f: $80
	xor  d                                           ; $6e60: $aa
	add  b                                           ; $6e61: $80
	ld   d, l                                        ; $6e62: $55
	dec  bc                                          ; $6e63: $0b
	xor  d                                           ; $6e64: $aa
	xor  l                                           ; $6e65: $ad
	ld   d, a                                        ; $6e66: $57
	ld   e, b                                        ; $6e67: $58
	xor  b                                           ; $6e68: $a8
	and  h                                           ; $6e69: $a4
	ld   d, h                                        ; $6e6a: $54
	ld   e, b                                        ; $6e6b: $58
	xor  b                                           ; $6e6c: $a8
	sub  b                                           ; $6e6d: $90
	ld   [hl], b                                     ; $6e6e: $70
	nop                                              ; $6e6f: $00
	add  b                                           ; $6e70: $80
	ret  nz                                          ; $6e71: $c0

	add  b                                           ; $6e72: $80
	ld   b, b                                        ; $6e73: $40
	nop                                              ; $6e74: $00
	ret  nz                                          ; $6e75: $c0

	add  b                                           ; $6e76: $80
	ld   b, b                                        ; $6e77: $40
	inc  b                                           ; $6e78: $04
	ret  nz                                          ; $6e79: $c0

	ld   b, b                                        ; $6e7a: $40
	rrca                                             ; $6e7b: $0f
	ld   b, $16                                      ; $6e7c: $06 $16
	add  b                                           ; $6e7e: $80
	inc  c                                           ; $6e7f: $0c
	dec  b                                           ; $6e80: $05
	ld   a, [bc]                                     ; $6e81: $0a
	ld   a, [hl+]                                    ; $6e82: $2a
	dec  de                                          ; $6e83: $1b
	dec  e                                           ; $6e84: $1d
	ld   de, $8150                                   ; $6e85: $11 $50 $81
	jr   nc, jr_098_6e8c                             ; $6e88: $30 $02

	jr   jr_098_6e8c                                 ; $6e8a: $18 $00

jr_098_6e8c:
	xor  a                                           ; $6e8c: $af
	add  d                                           ; $6e8d: $82
	ld   a, a                                        ; $6e8e: $7f
	dec  de                                          ; $6e8f: $1b
	ccf                                              ; $6e90: $3f
	sbc  a                                           ; $6e91: $9f
	cp   a                                           ; $6e92: $bf
	sbc  l                                           ; $6e93: $9d
	sbc  [hl]                                        ; $6e94: $9e
	inc  e                                           ; $6e95: $1c
	ld   c, $1e                                      ; $6e96: $0e $1e
	rla                                              ; $6e98: $17
	rra                                              ; $6e99: $1f
	add  hl, de                                      ; $6e9a: $19
	ld   b, c                                        ; $6e9b: $41
	ld   a, a                                        ; $6e9c: $7f
	rst  JumpTable                                         ; $6e9d: $df
	rst  $38                                         ; $6e9e: $ff
	ld   e, a                                        ; $6e9f: $5f
	ld   a, a                                        ; $6ea0: $7f
	ld   a, $e7                                      ; $6ea1: $3e $e7
	rst  $38                                         ; $6ea3: $ff
	dec  de                                          ; $6ea4: $1b
	ld   [hl], b                                     ; $6ea5: $70
	ld   a, [hl]                                     ; $6ea6: $7e
	ld   a, [hl+]                                    ; $6ea7: $2a
	ld   a, $1d                                      ; $6ea8: $3e $1d
	db   $fd                                         ; $6eaa: $fd
	ld   e, b                                        ; $6eab: $58
	add  e                                           ; $6eac: $83
	jr   nz, jr_098_6eaf                             ; $6ead: $20 $00

jr_098_6eaf:
	ret  c                                           ; $6eaf: $d8

	add  c                                           ; $6eb0: $81
	nop                                              ; $6eb1: $00
	ld   b, $a0                                      ; $6eb2: $06 $a0
	nop                                              ; $6eb4: $00
	ld   [bc], a                                     ; $6eb5: $02
	nop                                              ; $6eb6: $00
	inc  c                                           ; $6eb7: $0c
	nop                                              ; $6eb8: $00
	or   $80                                         ; $6eb9: $f6 $80
	ret  z                                           ; $6ebb: $c8

	add  b                                           ; $6ebc: $80

jr_098_6ebd:
	xor  $00                                         ; $6ebd: $ee $00
	rst  $28                                         ; $6ebf: $ef
	add  b                                           ; $6ec0: $80
	xor  $80                                         ; $6ec1: $ee $80
	db   $ec                                         ; $6ec3: $ec
	add  b                                           ; $6ec4: $80
	add  sp, -$80                                    ; $6ec5: $e8 $80
	ldh  [$80], a                                    ; $6ec7: $e0 $80
	ret  nz                                          ; $6ec9: $c0

	nop                                              ; $6eca: $00
	db   $10                                         ; $6ecb: $10
	adc  [hl]                                        ; $6ecc: $8e
	rrca                                             ; $6ecd: $0f
	xor  [hl]                                        ; $6ece: $ae
	rst  $38                                         ; $6ecf: $ff
	add  b                                           ; $6ed0: $80
	push af                                          ; $6ed1: $f5
	adc  h                                           ; $6ed2: $8c
	rst  $38                                         ; $6ed3: $ff
	add  b                                           ; $6ed4: $80
	ld   d, b                                        ; $6ed5: $50
	add  b                                           ; $6ed6: $80
	ld   [$ff86], a                                  ; $6ed7: $ea $86 $ff
	db   $10                                         ; $6eda: $10
	db   $fc                                         ; $6edb: $fc
	rst  $38                                         ; $6edc: $ff
	ld   hl, sp-$1c                                  ; $6edd: $f8 $e4
	nop                                              ; $6edf: $00
	ld   e, $a0                                      ; $6ee0: $1e $a0
	and  d                                           ; $6ee2: $a2
	ld   d, b                                        ; $6ee3: $50
	ld   e, a                                        ; $6ee4: $5f
	and  e                                           ; $6ee5: $a3
	or   a                                           ; $6ee6: $b7
	add  a                                           ; $6ee7: $87
	rst  $38                                         ; $6ee8: $ff
	rra                                              ; $6ee9: $1f
	cp   a                                           ; $6eea: $bf
	ccf                                              ; $6eeb: $3f
	add  b                                           ; $6eec: $80
	rst  $38                                         ; $6eed: $ff
	add  b                                           ; $6eee: $80
	ld   a, [bc]                                     ; $6eef: $0a
	ld   [bc], a                                     ; $6ef0: $02
	ld   [hl], b                                     ; $6ef1: $70
	nop                                              ; $6ef2: $00
	adc  a                                           ; $6ef3: $8f
	add  b                                           ; $6ef4: $80
	ld   hl, sp-$79                                  ; $6ef5: $f8 $87
	rst  $38                                         ; $6ef7: $ff
	add  b                                           ; $6ef8: $80
	xor  a                                           ; $6ef9: $af
	inc  b                                           ; $6efa: $04
	dec  b                                           ; $6efb: $05
	inc  b                                           ; $6efc: $04
	pop  af                                          ; $6efd: $f1
	nop                                              ; $6efe: $00
	rrca                                             ; $6eff: $0f
	add  b                                           ; $6f00: $80
	add  sp, -$80                                    ; $6f01: $e8 $80
	push af                                          ; $6f03: $f5
	db   $10                                         ; $6f04: $10
	ld   a, [$fffb]                                  ; $6f05: $fa $fb $ff
	db   $fc                                         ; $6f08: $fc
	cp   $f7                                         ; $6f09: $fe $f7
	ld   e, e                                        ; $6f0b: $5b
	ld   e, c                                        ; $6f0c: $59
	xor  c                                           ; $6f0d: $a9
	ld   e, c                                        ; $6f0e: $59
	add  hl, bc                                      ; $6f0f: $09
	ret  nz                                          ; $6f10: $c0

	jr   nc, jr_098_6f53                             ; $6f11: $30 $40

	ret  nz                                          ; $6f13: $c0

	nop                                              ; $6f14: $00
	add  b                                           ; $6f15: $80
	add  d                                           ; $6f16: $82
	nop                                              ; $6f17: $00
	db   $10                                         ; $6f18: $10
	ret  nz                                          ; $6f19: $c0

	add  b                                           ; $6f1a: $80
	add  [hl]                                        ; $6f1b: $86
	ld   b, b                                        ; $6f1c: $40
	ld   h, c                                        ; $6f1d: $61
	ldh  [c], a                                      ; $6f1e: $e2
	or   $71                                         ; $6f1f: $f6 $71
	di                                               ; $6f21: $f3
	ld   sp, $1c7d                                   ; $6f22: $31 $7d $1c
	dec  a                                           ; $6f25: $3d
	inc  c                                           ; $6f26: $0c
	ld   e, $06                                      ; $6f27: $1e $06
	add  hl, de                                      ; $6f29: $19
	add  e                                           ; $6f2a: $83
	nop                                              ; $6f2b: $00
	inc  b                                           ; $6f2c: $04
	add  b                                           ; $6f2d: $80
	nop                                              ; $6f2e: $00
	ld   b, b                                        ; $6f2f: $40
	add  b                                           ; $6f30: $80
	adc  c                                           ; $6f31: $89
	add  c                                           ; $6f32: $81
	add  b                                           ; $6f33: $80
	ld   b, $ac                                      ; $6f34: $06 $ac
	ret  nz                                          ; $6f36: $c0

	rrca                                             ; $6f37: $0f
	inc  b                                           ; $6f38: $04
	inc  bc                                          ; $6f39: $03
	dec  de                                          ; $6f3a: $1b
	jr   jr_098_6ebd                                 ; $6f3b: $18 $80

	inc  e                                           ; $6f3d: $1c
	add  c                                           ; $6f3e: $81
	rra                                              ; $6f3f: $1f

jr_098_6f40:
	ld   [de], a                                     ; $6f40: $12
	sbc  a                                           ; $6f41: $9f
	rra                                              ; $6f42: $1f
	ccf                                              ; $6f43: $3f
	rrca                                             ; $6f44: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f45: $cf
	rrca                                             ; $6f46: $0f
	jr   c, jr_098_6f40                              ; $6f47: $38 $f7

	ld   l, [hl]                                     ; $6f49: $6e
	ld   c, $f8                                      ; $6f4a: $0e $f8
	ld   sp, hl                                      ; $6f4c: $f9
	ld   [hl], b                                     ; $6f4d: $70
	ld   [hl], a                                     ; $6f4e: $77
	ld   hl, $8baf                                   ; $6f4f: $21 $af $8b
	rst  $38                                         ; $6f52: $ff

jr_098_6f53:
	db   $fc                                         ; $6f53: $fc
	add  c                                           ; $6f54: $81
	rst  $38                                         ; $6f55: $ff
	inc  b                                           ; $6f56: $04
	ld   a, [bc]                                     ; $6f57: $0a
	pop  af                                          ; $6f58: $f1
	ld   [hl], c                                     ; $6f59: $71
	ld   [hl], b                                     ; $6f5a: $70
	add  sp, -$7f                                    ; $6f5b: $e8 $81
	ldh  [rDIV], a                                   ; $6f5d: $e0 $04
	ret  nz                                          ; $6f5f: $c0

	ldh  [$b6], a                                    ; $6f60: $e0 $b6
	ret  nz                                          ; $6f62: $c0

	ld   b, b                                        ; $6f63: $40
	add  c                                           ; $6f64: $81
	ret  nz                                          ; $6f65: $c0

	ld   bc, $80b4                                   ; $6f66: $01 $b4 $80
	add  h                                           ; $6f69: $84
	nop                                              ; $6f6a: $00
	ld   [bc], a                                     ; $6f6b: $02
	ld   bc, $3000                                   ; $6f6c: $01 $00 $30
	add  b                                           ; $6f6f: $80
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	ld   bc, $5380                                   ; $6f72: $01 $80 $53
	nop                                              ; $6f75: $00
	jr   nz, @-$70                                   ; $6f76: $20 $8e

	rrca                                             ; $6f78: $0f
	or   h                                           ; $6f79: $b4
	rst  $38                                         ; $6f7a: $ff
	db   $10                                         ; $6f7b: $10
	cp   $ff                                         ; $6f7c: $fe $ff
	ld   hl, sp-$01                                  ; $6f7e: $f8 $ff
	pop  af                                          ; $6f80: $f1
	ei                                               ; $6f81: $fb
	jp   $8fff                                       ; $6f82: $c3 $ff $8f


	cp   c                                           ; $6f85: $b9
	pop  hl                                          ; $6f86: $e1
	rst  $38                                         ; $6f87: $ff
	rst  ToBoot                                         ; $6f88: $c7
	rst  $28                                         ; $6f89: $ef
	rrca                                             ; $6f8a: $0f
	rst  $38                                         ; $6f8b: $ff
	ccf                                              ; $6f8c: $3f
	add  b                                           ; $6f8d: $80
	ld   a, a                                        ; $6f8e: $7f
	and  h                                           ; $6f8f: $a4
	rst  $38                                         ; $6f90: $ff
	ld   [bc], a                                     ; $6f91: $02
	ei                                               ; $6f92: $fb
	db   $fc                                         ; $6f93: $fc
	ldh  a, [$81]                                    ; $6f94: $f0 $81
	ld   hl, sp+$04                                  ; $6f96: $f8 $04
	rst  $28                                         ; $6f98: $ef
	rst  $38                                         ; $6f99: $ff
	pop  bc                                          ; $6f9a: $c1
	pop  hl                                          ; $6f9b: $e1
	add  b                                           ; $6f9c: $80
	add  c                                           ; $6f9d: $81
	ret  nz                                          ; $6f9e: $c0

	ld   bc, $8000                                   ; $6f9f: $01 $00 $80
	add  h                                           ; $6fa2: $84
	nop                                              ; $6fa3: $00
	add  b                                           ; $6fa4: $80
	ld   bc, $e112                                   ; $6fa5: $01 $12 $e1
	ld   h, c                                        ; $6fa8: $61
	rst  $38                                         ; $6fa9: $ff
	rra                                              ; $6faa: $1f
	ld   a, a                                        ; $6fab: $7f
	rlca                                             ; $6fac: $07
	ld   d, a                                        ; $6fad: $57
	dec  bc                                          ; $6fae: $0b
	rst  ToBoot                                         ; $6faf: $c7
	add  e                                           ; $6fb0: $83
	ld   h, c                                        ; $6fb1: $61
	ld   b, c                                        ; $6fb2: $41
	ld   e, b                                        ; $6fb3: $58
	ld   h, b                                        ; $6fb4: $60
	and  [hl]                                        ; $6fb5: $a6
	cp   b                                           ; $6fb6: $b8
	ld   sp, hl                                      ; $6fb7: $f9
	db   $fc                                         ; $6fb8: $fc
	rst  $38                                         ; $6fb9: $ff
	add  b                                           ; $6fba: $80
	ld   a, [$f904]                                  ; $6fbb: $fa $04 $f9
	db   $fd                                         ; $6fbe: $fd
	ldh  [c], a                                      ; $6fbf: $e2
	ld   l, [hl]                                     ; $6fc0: $6e
	ld   b, b                                        ; $6fc1: $40
	add  b                                           ; $6fc2: $80
	add  b                                           ; $6fc3: $80
	inc  c                                           ; $6fc4: $0c
	nop                                              ; $6fc5: $00
	jr   nz, jr_098_6ffe                             ; $6fc6: $20 $36

	nop                                              ; $6fc8: $00
	ret  nz                                          ; $6fc9: $c0

	nop                                              ; $6fca: $00
	ret  nz                                          ; $6fcb: $c0

	add  b                                           ; $6fcc: $80
	or   b                                           ; $6fcd: $b0
	ld   b, b                                        ; $6fce: $40
	ld   b, e                                        ; $6fcf: $43
	and  b                                           ; $6fd0: $a0
	xor  $81                                         ; $6fd1: $ee $81
	rrca                                             ; $6fd3: $0f
	add  hl, sp                                      ; $6fd4: $39
	rra                                              ; $6fd5: $1f
	rlca                                             ; $6fd6: $07
	ld   h, a                                        ; $6fd7: $67
	rlca                                             ; $6fd8: $07
	rra                                              ; $6fd9: $1f
	inc  hl                                          ; $6fda: $23
	ld   [bc], a                                     ; $6fdb: $02
	inc  bc                                          ; $6fdc: $03
	rrca                                             ; $6fdd: $0f
	ld   de, $0002                                   ; $6fde: $11 $02 $00
	or   $ff                                         ; $6fe1: $f6 $ff
	rst  JumpTable                                         ; $6fe3: $df
	rst  $38                                         ; $6fe4: $ff
	cp   a                                           ; $6fe5: $bf
	rst  $38                                         ; $6fe6: $ff
	ld   e, a                                        ; $6fe7: $5f
	sbc  $9e                                         ; $6fe8: $de $9e
	cp   [hl]                                        ; $6fea: $be
	cp   a                                           ; $6feb: $bf
	cp   h                                           ; $6fec: $bc
	cp   [hl]                                        ; $6fed: $be
	cp   b                                           ; $6fee: $b8
	dec  a                                           ; $6fef: $3d
	nop                                              ; $6ff0: $00
	ld   sp, $c080                                   ; $6ff1: $31 $80 $c0
	nop                                              ; $6ff4: $00
	add  hl, de                                      ; $6ff5: $19
	nop                                              ; $6ff6: $00
	or   b                                           ; $6ff7: $b0
	nop                                              ; $6ff8: $00
	ld   h, e                                        ; $6ff9: $63
	nop                                              ; $6ffa: $00
	ld   b, $00                                      ; $6ffb: $06 $00
	ret  nz                                          ; $6ffd: $c0

jr_098_6ffe:
	nop                                              ; $6ffe: $00
	adc  h                                           ; $6fff: $8c
	nop                                              ; $7000: $00
	ld   a, e                                        ; $7001: $7b
	inc  de                                          ; $7002: $13

Jump_098_7003:
	sbc  e                                           ; $7003: $9b
	ld   e, d                                        ; $7004: $5a
	sbc  d                                           ; $7005: $9a
	ld   a, [de]                                     ; $7006: $1a
	dec  de                                          ; $7007: $1b
	jr   jr_098_7046                                 ; $7008: $18 $3c

	inc  c                                           ; $700a: $0c
	ld   c, $08                                      ; $700b: $0e $08
	jr   @+$0a                                       ; $700d: $18 $08

	add  b                                           ; $700f: $80
	dec  bc                                          ; $7010: $0b
	nop                                              ; $7011: $00
	inc  b                                           ; $7012: $04

jr_098_7013:
	add  l                                           ; $7013: $85
	nop                                              ; $7014: $00
	ld   [bc], a                                     ; $7015: $02
	ld   hl, sp+$00                                  ; $7016: $f8 $00
	rlca                                             ; $7018: $07
	add  b                                           ; $7019: $80
	ldh  a, [$81]                                    ; $701a: $f0 $81
	rst  $38                                         ; $701c: $ff
	adc  b                                           ; $701d: $88
	nop                                              ; $701e: $00
	ld   [bc], a                                     ; $701f: $02
	ret  nz                                          ; $7020: $c0

	nop                                              ; $7021: $00
	ccf                                              ; $7022: $3f
	add  b                                           ; $7023: $80
	ret  nz                                          ; $7024: $c0

	ld   bc, $00ff                                   ; $7025: $01 $ff $00
	adc  c                                           ; $7028: $89
	rst  $38                                         ; $7029: $ff
	inc  de                                          ; $702a: $13
	ld   a, a                                        ; $702b: $7f
	db   $fc                                         ; $702c: $fc
	add  e                                           ; $702d: $83
	rst  $38                                         ; $702e: $ff
	nop                                              ; $702f: $00
	cp   $ff                                         ; $7030: $fe $ff
	db   $fc                                         ; $7032: $fc
	cp   $f0                                         ; $7033: $fe $f0
	rst  $38                                         ; $7035: $ff
	db   $e3                                         ; $7036: $e3
	rst  $30                                         ; $7037: $f7
	add  a                                           ; $7038: $87
	rst  $38                                         ; $7039: $ff
	rra                                              ; $703a: $1f
	cp   a                                           ; $703b: $bf
	ccf                                              ; $703c: $3f
	ld   a, a                                        ; $703d: $7f
	rst  $38                                         ; $703e: $ff
	add  b                                           ; $703f: $80
	rra                                              ; $7040: $1f
	ld   bc, $7fff                                   ; $7041: $01 $ff $7f
	cp   d                                           ; $7044: $ba
	rst  $38                                         ; $7045: $ff

jr_098_7046:
	nop                                              ; $7046: $00
	ld   a, a                                        ; $7047: $7f
	add  e                                           ; $7048: $83
	nop                                              ; $7049: $00
	inc  e                                           ; $704a: $1c
	rrca                                             ; $704b: $0f
	nop                                              ; $704c: $00
	rra                                              ; $704d: $1f
	rrca                                             ; $704e: $0f
	dec  a                                           ; $704f: $3d
	rra                                              ; $7050: $1f
	ld   a, [de]                                     ; $7051: $1a
	rra                                              ; $7052: $1f
	rla                                              ; $7053: $17
	rra                                              ; $7054: $1f
	adc  a                                           ; $7055: $8f
	dec  e                                           ; $7056: $1d
	dec  a                                           ; $7057: $3d
	ld   c, $1e                                      ; $7058: $0e $1e
	rlca                                             ; $705a: $07
	add  a                                           ; $705b: $87
	inc  bc                                          ; $705c: $03
	db   $eb                                         ; $705d: $eb
	add  d                                           ; $705e: $82
	or   [hl]                                        ; $705f: $b6
	and  b                                           ; $7060: $a0
	jr   c, jr_098_7013                              ; $7061: $38 $b0

	or   d                                           ; $7063: $b2
	or   b                                           ; $7064: $b0
	sbc  c                                           ; $7065: $99
	push af                                          ; $7066: $f5
	sub  l                                           ; $7067: $95
	add  b                                           ; $7068: $80
	ld   a, [$ed80]                                  ; $7069: $fa $80 $ed
	ld   bc, $7afa                                   ; $706c: $01 $fa $7a
	add  b                                           ; $706f: $80
	db   $fd                                         ; $7070: $fd
	add  b                                           ; $7071: $80
	rst  $38                                         ; $7072: $ff
	add  b                                           ; $7073: $80
	cp   $0b                                         ; $7074: $fe $0b
	rst  $38                                         ; $7076: $ff
	xor  $51                                         ; $7077: $ee $51
	ld   c, b                                        ; $7079: $48
	xor  b                                           ; $707a: $a8
	and  h                                           ; $707b: $a4
	ld   d, h                                        ; $707c: $54
	ld   d, d                                        ; $707d: $52
	xor  d                                           ; $707e: $aa
	xor  c                                           ; $707f: $a9
	ld   d, l                                        ; $7080: $55
	ld   d, h                                        ; $7081: $54
	add  b                                           ; $7082: $80

jr_098_7083:
	xor  d                                           ; $7083: $aa
	inc  h                                           ; $7084: $24
	push de                                          ; $7085: $d5
	call nc, $dfea                                   ; $7086: $d4 $ea $df
	jr   nc, jr_098_7083                             ; $7089: $30 $f8

	ld   a, b                                        ; $708b: $78
	ld   a, a                                        ; $708c: $7f
	cp   b                                           ; $708d: $b8
	cp   h                                           ; $708e: $bc
	call c, $e0de                                    ; $708f: $dc $de $e0
	db   $ed                                         ; $7092: $ed
	ld   b, b                                        ; $7093: $40
	ld   [hl], d                                     ; $7094: $72
	add  b                                           ; $7095: $80
	rst  $20                                         ; $7096: $e7
	nop                                              ; $7097: $00
	and  h                                           ; $7098: $a4
	nop                                              ; $7099: $00
	ld   [bc], a                                     ; $709a: $02
	ld   bc, $01fd                                   ; $709b: $01 $fd $01
	ld   [hl], c                                     ; $709e: $71
	inc  bc                                          ; $709f: $03
	adc  e                                           ; $70a0: $8b
	nop                                              ; $70a1: $00
	dec  b                                           ; $70a2: $05
	nop                                              ; $70a3: $00
	inc  de                                          ; $70a4: $13
	nop                                              ; $70a5: $00
	jr   jr_098_70a8                                 ; $70a6: $18 $00

jr_098_70a8:
	ld   a, c                                        ; $70a8: $79
	ld   h, b                                        ; $70a9: $60
	add  b                                           ; $70aa: $80
	ldh  [rIF], a                                    ; $70ab: $e0 $0f
	ldh  a, [$c0]                                    ; $70ad: $f0 $c0
	rst  JumpTable                                         ; $70af: $df
	cp   a                                           ; $70b0: $bf
	ccf                                              ; $70b1: $3f
	cp   a                                           ; $70b2: $bf
	ccf                                              ; $70b3: $3f
	ld   a, a                                        ; $70b4: $7f
	rst  $38                                         ; $70b5: $ff
	ccf                                              ; $70b6: $3f
	cp   a                                           ; $70b7: $bf
	nop                                              ; $70b8: $00
	ldh  a, [$0c]                                    ; $70b9: $f0 $0c
	inc  e                                           ; $70bb: $1c
	ld   e, $80                                      ; $70bc: $1e $80
	ld   a, $00                                      ; $70be: $3e $00
	cp   $80                                         ; $70c0: $fe $80
	db   $fd                                         ; $70c2: $fd
	add  b                                           ; $70c3: $80
	ld   a, [$f780]                                  ; $70c4: $fa $80 $f7
	add  b                                           ; $70c7: $80
	call $3b01                                       ; $70c8: $cd $01 $3b
	res  1, l                                        ; $70cb: $cb $8d
	rrca                                             ; $70cd: $0f
	sbc  a                                           ; $70ce: $9f
	rst  $38                                         ; $70cf: $ff
	add  b                                           ; $70d0: $80
	add  b                                           ; $70d1: $80
	adc  e                                           ; $70d2: $8b
	rst  $38                                         ; $70d3: $ff
	ld   [bc], a                                     ; $70d4: $02
	add  b                                           ; $70d5: $80
	nop                                              ; $70d6: $00
	ld   a, a                                        ; $70d7: $7f
	add  b                                           ; $70d8: $80
	add  b                                           ; $70d9: $80
	adc  c                                           ; $70da: $89
	rst  $38                                         ; $70db: $ff
	add  d                                           ; $70dc: $82
	nop                                              ; $70dd: $00
	ld   [bc], a                                     ; $70de: $02
	cp   $00                                         ; $70df: $fe $00
	ld   bc, $fe80                                   ; $70e1: $01 $80 $fe
	add  l                                           ; $70e4: $85
	rst  $38                                         ; $70e5: $ff
	add  h                                           ; $70e6: $84
	nop                                              ; $70e7: $00
	ld   [bc], a                                     ; $70e8: $02
	db   $fc                                         ; $70e9: $fc
	nop                                              ; $70ea: $00
	inc  bc                                          ; $70eb: $03
	add  b                                           ; $70ec: $80
	db   $fc                                         ; $70ed: $fc
	add  e                                           ; $70ee: $83
	rst  $38                                         ; $70ef: $ff
	add  [hl]                                        ; $70f0: $86
	nop                                              ; $70f1: $00
	ld   [bc], a                                     ; $70f2: $02
	ldh  [rP1], a                                    ; $70f3: $e0 $00
	rra                                              ; $70f5: $1f
	add  b                                           ; $70f6: $80
	ldh  [$81], a                                    ; $70f7: $e0 $81
	rst  $38                                         ; $70f9: $ff
	nop                                              ; $70fa: $00
	cp   a                                           ; $70fb: $bf
	add  c                                           ; $70fc: $81
	rrca                                             ; $70fd: $0f
	inc  bc                                          ; $70fe: $03
	rra                                              ; $70ff: $1f
	ld   d, $0e                                      ; $7100: $16 $0e
	ld   [$3080], sp                                 ; $7102: $08 $80 $30
	ld   b, $60                                      ; $7105: $06 $60
	nop                                              ; $7107: $00
	jr   nz, jr_098_710b                             ; $7108: $20 $01

	pop  af                                          ; $710a: $f1

jr_098_710b:
	inc  bc                                          ; $710b: $03
	push hl                                          ; $710c: $e5
	add  c                                           ; $710d: $81
	ret  nc                                          ; $710e: $d0

	nop                                              ; $710f: $00
	ret  z                                           ; $7110: $c8

	add  c                                           ; $7111: $81
	nop                                              ; $7112: $00
	rlca                                             ; $7113: $07
	ld   [bc], a                                     ; $7114: $02
	nop                                              ; $7115: $00
	adc  h                                           ; $7116: $8c
	pop  hl                                          ; $7117: $e1
	ld   h, a                                        ; $7118: $67
	or   $73                                         ; $7119: $f6 $73
	add  e                                           ; $711b: $83
	adc  h                                           ; $711c: $8c
	rst  $38                                         ; $711d: $ff
	ld   b, $3f                                      ; $711e: $06 $3f
	rst  $38                                         ; $7120: $ff
	dec  a                                           ; $7121: $3d
	ld   bc, $0307                                   ; $7122: $01 $07 $03
	rrca                                             ; $7125: $0f
	add  c                                           ; $7126: $81
	rlca                                             ; $7127: $07
	ld   bc, $0f1f                                   ; $7128: $01 $1f $0f
	add  b                                           ; $712b: $80
	ld   c, $2a                                      ; $712c: $0e $2a
	ld   d, $06                                      ; $712e: $16 $06
	add  hl, bc                                      ; $7130: $09
	ld   bc, $0087                                   ; $7131: $01 $87 $00
	ld   h, b                                        ; $7134: $60
	nop                                              ; $7135: $00
	inc  a                                           ; $7136: $3c
	nop                                              ; $7137: $00
	sbc  a                                           ; $7138: $9f
	add  b                                           ; $7139: $80
	ld   h, e                                        ; $713a: $63
	ld   b, b                                        ; $713b: $40
	ldh  a, [$e0]                                    ; $713c: $f0 $e0
	ld   hl, sp-$10                                  ; $713e: $f8 $f0
	db   $fc                                         ; $7140: $fc
	ld   hl, sp-$41                                  ; $7141: $f8 $bf
	nop                                              ; $7143: $00
	ld   h, [hl]                                     ; $7144: $66
	inc  bc                                          ; $7145: $03
	ld   a, $07                                      ; $7146: $3e $07
	add  sp, $00                                     ; $7148: $e8 $00
	rst  $30                                         ; $714a: $f7
	nop                                              ; $714b: $00
	ld   bc, $1e00                                   ; $714c: $01 $00 $1e
	nop                                              ; $714f: $00
	jr   nz, jr_098_7171                             ; $7150: $20 $1f

	sbc  $3f                                         ; $7152: $de $3f
	ld   a, $ff                                      ; $7154: $3e $ff
	sbc  a                                           ; $7156: $9f
	rst  $38                                         ; $7157: $ff
	sbc  b                                           ; $7158: $98
	add  b                                           ; $7159: $80
	rrca                                             ; $715a: $0f
	nop                                              ; $715b: $00
	rlca                                             ; $715c: $07
	add  b                                           ; $715d: $80
	nop                                              ; $715e: $00
	add  b                                           ; $715f: $80
	rlca                                             ; $7160: $07
	add  b                                           ; $7161: $80
	rra                                              ; $7162: $1f
	add  b                                           ; $7163: $80
	ld   b, $05                                      ; $7164: $06 $05
	nop                                              ; $7166: $00
	add  b                                           ; $7167: $80
	ret  nz                                          ; $7168: $c0

	jp   $c343                                       ; $7169: $c3 $43 $c3


	add  b                                           ; $716c: $80
	add  a                                           ; $716d: $87
	inc  bc                                          ; $716e: $03
	dec  b                                           ; $716f: $05
	rlca                                             ; $7170: $07

jr_098_7171:
	and  $e7                                         ; $7171: $e6 $e7
	add  b                                           ; $7173: $80
	pop  af                                          ; $7174: $f1
	nop                                              ; $7175: $00
	ldh  a, [$8d]                                    ; $7176: $f0 $8d
	rrca                                             ; $7178: $0f
	xor  l                                           ; $7179: $ad
	rst  $38                                         ; $717a: $ff
	add  b                                           ; $717b: $80
	cp   $8a                                         ; $717c: $fe $8a
	rst  $38                                         ; $717e: $ff
	inc  bc                                          ; $717f: $03
	ret  nz                                          ; $7180: $c0

	jp   $0201                                       ; $7181: $c3 $01 $02


	add  l                                           ; $7184: $85
	rst  $38                                         ; $7185: $ff
	inc  bc                                          ; $7186: $03
	cp   $c1                                         ; $7187: $fe $c1
	push bc                                          ; $7189: $c5
	dec  b                                           ; $718a: $05
	add  b                                           ; $718b: $80
	ld   a, [bc]                                     ; $718c: $0a
	add  b                                           ; $718d: $80
	dec  d                                           ; $718e: $15
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	add  [hl]                                        ; $7191: $86
	rst  $38                                         ; $7192: $ff
	rlca                                             ; $7193: $07
	nop                                              ; $7194: $00
	ld   e, a                                        ; $7195: $5f
	ld   e, b                                        ; $7196: $58
	and  b                                           ; $7197: $a0
	and  h                                           ; $7198: $a4
	ld   c, b                                        ; $7199: $48
	ld   c, e                                        ; $719a: $4b
	nop                                              ; $719b: $00
	add  [hl]                                        ; $719c: $86
	rst  $38                                         ; $719d: $ff
	rlca                                             ; $719e: $07
	rra                                              ; $719f: $1f
	rst  JumpTable                                         ; $71a0: $df
	ld   b, e                                        ; $71a1: $43
	ld   a, a                                        ; $71a2: $7f
	inc  b                                           ; $71a3: $04
	ld   [hl], a                                     ; $71a4: $77
	ld   bc, $8076                                   ; $71a5: $01 $76 $80
	ld   [bc], a                                     ; $71a8: $02
	add  a                                           ; $71a9: $87
	nop                                              ; $71aa: $00
	dec  b                                           ; $71ab: $05
	ld   [$d000], sp                                 ; $71ac: $08 $00 $d0
	ld   bc, $0524                                   ; $71af: $01 $24 $05
	add  b                                           ; $71b2: $80
	ld   [bc], a                                     ; $71b3: $02
	add  d                                           ; $71b4: $82
	ld   bc, $0a0a                                   ; $71b5: $01 $0a $0a
	ld   c, $2c                                      ; $71b8: $0e $2c
	ld   a, $df                                      ; $71ba: $3e $df
	ei                                               ; $71bc: $fb
	ld   c, h                                        ; $71bd: $4c
	rst  $38                                         ; $71be: $ff
	ld   bc, $3f80                                   ; $71bf: $01 $80 $3f
	add  d                                           ; $71c2: $82
	add  b                                           ; $71c3: $80
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	add  d                                           ; $71c6: $82
	add  b                                           ; $71c7: $80
	add  b                                           ; $71c8: $80
	nop                                              ; $71c9: $00
	ld   b, $20                                      ; $71ca: $06 $20
	nop                                              ; $71cc: $00
	ldh  [c], a                                      ; $71cd: $e2
	ld   bc, $01fd                                   ; $71ce: $01 $fd $01
	nop                                              ; $71d1: $00
	add  b                                           ; $71d2: $80
	cp   $87                                         ; $71d3: $fe $87
	rst  $38                                         ; $71d5: $ff
	ld   bc, $fc03                                   ; $71d6: $01 $03 $fc
	add  b                                           ; $71d9: $80
	rst  $38                                         ; $71da: $ff
	add  b                                           ; $71db: $80
	inc  bc                                          ; $71dc: $03
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	add  b                                           ; $71df: $80
	db   $fc                                         ; $71e0: $fc
	add  l                                           ; $71e1: $85
	rst  $38                                         ; $71e2: $ff
	ld   bc, $3fc0                                   ; $71e3: $01 $c0 $3f
	add  b                                           ; $71e6: $80
	nop                                              ; $71e7: $00
	add  b                                           ; $71e8: $80
	jp   $0380                                       ; $71e9: $c3 $80 $03


	add  hl, bc                                      ; $71ec: $09
	ret  nz                                          ; $71ed: $c0

	nop                                              ; $71ee: $00
	inc  a                                           ; $71ef: $3c
	nop                                              ; $71f0: $00
	rra                                              ; $71f1: $1f
	nop                                              ; $71f2: $00
	ld   a, h                                        ; $71f3: $7c
	nop                                              ; $71f4: $00
	or   b                                           ; $71f5: $b0
	cpl                                              ; $71f6: $2f
	add  d                                           ; $71f7: $82
	scf                                              ; $71f8: $37
	add  d                                           ; $71f9: $82
	dec  sp                                          ; $71fa: $3b
	add  b                                           ; $71fb: $80
	nop                                              ; $71fc: $00
	dec  b                                           ; $71fd: $05
	ret  nz                                          ; $71fe: $c0

	nop                                              ; $71ff: $00

Jump_098_7200:
	jr   c, jr_098_7202                              ; $7200: $38 $00

jr_098_7202:
	inc  b                                           ; $7202: $04
	db   $fc                                         ; $7203: $fc
	add  h                                           ; $7204: $84
	ld   hl, sp-$7e                                  ; $7205: $f8 $82
	db   $fc                                         ; $7207: $fc
	add  d                                           ; $7208: $82
	nop                                              ; $7209: $00
	or   a                                           ; $720a: $b7
	nop                                              ; $720b: $00
	dec  bc                                          ; $720c: $0b
	ld   a, d                                        ; $720d: $7a
	rst  JumpTable                                         ; $720e: $df
	dec  hl                                          ; $720f: $2b
	rst  $38                                         ; $7210: $ff
	jr   nc, @+$01                                   ; $7211: $30 $ff

	db   $10                                         ; $7213: $10
	xor  d                                           ; $7214: $aa
	ld   e, e                                        ; $7215: $5b
	ld   l, a                                        ; $7216: $6f
	db   $e3                                         ; $7217: $e3
	db   $d3                                         ; $7218: $d3
	add  b                                           ; $7219: $80
	ld   c, l                                        ; $721a: $4d
	add  hl, de                                      ; $721b: $19
	db   $fd                                         ; $721c: $fd
	rst  $38                                         ; $721d: $ff
	ld   a, b                                        ; $721e: $78
	ld   [hl], e                                     ; $721f: $73
	cp   a                                           ; $7220: $bf
	ld   [hl], l                                     ; $7221: $75
	sub  d                                           ; $7222: $92
	jp   nc, $ab2e                                   ; $7223: $d2 $2e $ab

	ret  c                                           ; $7226: $d8

	pop  de                                          ; $7227: $d1
	ld   a, b                                        ; $7228: $78
	ld   a, e                                        ; $7229: $7b
	dec  [hl]                                        ; $722a: $35
	cp   a                                           ; $722b: $bf
	reti                                             ; $722c: $d9


	ld   e, a                                        ; $722d: $5f
	or   l                                           ; $722e: $b5
	ld   c, d                                        ; $722f: $4a
	and  l                                           ; $7230: $a5
	or   l                                           ; $7231: $b5
	pop  de                                          ; $7232: $d1
	cp   e                                           ; $7233: $bb
	ld   [hl], c                                     ; $7234: $71
	db   $f4                                         ; $7235: $f4
	add  b                                           ; $7236: $80
	xor  a                                           ; $7237: $af
	ld   a, a                                        ; $7238: $7f
	sub  d                                           ; $7239: $92
	rst  $10                                         ; $723a: $d7
	db   $e4                                         ; $723b: $e4
	rst  $28                                         ; $723c: $ef
	and  l                                           ; $723d: $a5
	rst  $38                                         ; $723e: $ff
	db   $fd                                         ; $723f: $fd
	rst  $30                                         ; $7240: $f7
	ld   e, d                                        ; $7241: $5a
	cp   a                                           ; $7242: $bf
	and  l                                           ; $7243: $a5
	ret  nc                                          ; $7244: $d0

	rst  $38                                         ; $7245: $ff
	ld   d, [hl]                                     ; $7246: $56
	dec  bc                                          ; $7247: $0b
	rst  $38                                         ; $7248: $ff
	ld   b, [hl]                                     ; $7249: $46
	rst  $38                                         ; $724a: $ff
	ret  nc                                          ; $724b: $d0

	rst  $38                                         ; $724c: $ff
	ld   d, h                                        ; $724d: $54
	cp   $3e                                         ; $724e: $fe $3e
	xor  a                                           ; $7250: $af
	xor  h                                           ; $7251: $ac

jr_098_7252:
	rst  $38                                         ; $7252: $ff
	adc  b                                           ; $7253: $88
	ld   a, a                                        ; $7254: $7f
	add  $33                                         ; $7255: $c6 $33
	ld   [hl], h                                     ; $7257: $74
	adc  l                                           ; $7258: $8d
	ld   [hl], h                                     ; $7259: $74
	ld   b, c                                        ; $725a: $41
	or   a                                           ; $725b: $b7
	cp   b                                           ; $725c: $b8
	pop  bc                                          ; $725d: $c1
	rst  $38                                         ; $725e: $ff
	ld   a, h                                        ; $725f: $7c
	rst  $10                                         ; $7260: $d7
	adc  b                                           ; $7261: $88
	ld   [$f14f], a                                  ; $7262: $ea $4f $f1
	rrca                                             ; $7265: $0f
	ld   hl, sp+$05                                  ; $7266: $f8 $05
	cp   $02                                         ; $7268: $fe $02
	rst  JumpTable                                         ; $726a: $df
	ld   l, c                                        ; $726b: $69
	rlca                                             ; $726c: $07
	ld   sp, hl                                      ; $726d: $f9
	ld   bc, $5f46                                   ; $726e: $01 $46 $5f
	and  l                                           ; $7271: $a5
	xor  e                                           ; $7272: $ab
	ld   c, [hl]                                     ; $7273: $4e
	dec  d                                           ; $7274: $15
	jr   nz, jr_098_7252                             ; $7275: $20 $db

	inc  de                                          ; $7277: $13
	dec  l                                           ; $7278: $2d
	inc  l                                           ; $7279: $2c
	sbc  h                                           ; $727a: $9c
	rra                                              ; $727b: $1f
	pop  hl                                          ; $727c: $e1
	and  h                                           ; $727d: $a4
	ldh  a, [rIE]                                    ; $727e: $f0 $ff
	ld   [hl], c                                     ; $7280: $71
	ld   c, d                                        ; $7281: $4a
	ei                                               ; $7282: $fb
	db   $10                                         ; $7283: $10
	db   $fd                                         ; $7284: $fd
	db   $e4                                         ; $7285: $e4
	cp   b                                           ; $7286: $b8
	inc  e                                           ; $7287: $1c
	dec  e                                           ; $7288: $1d
	add  h                                           ; $7289: $84
	or   a                                           ; $728a: $b7
	ld   h, l                                        ; $728b: $65
	ld   [hl], e                                     ; $728c: $73
	call z, $acf2                                    ; $728d: $cc $f2 $ac
	ld   [hl], a                                     ; $7290: $77
	ld   d, b                                        ; $7291: $50
	rst  $28                                         ; $7292: $ef
	cp   d                                           ; $7293: $ba
	rst  $38                                         ; $7294: $ff
	or   l                                           ; $7295: $b5
	rst  JumpTable                                         ; $7296: $df
	db   $f4                                         ; $7297: $f4
	ld   l, $c9                                      ; $7298: $2e $c9
	rst  JumpTable                                         ; $729a: $df
	ld   a, [hl-]                                    ; $729b: $3a
	rst  $38                                         ; $729c: $ff
	ld   e, $fb                                      ; $729d: $1e $fb
	ld   a, h                                        ; $729f: $7c
	xor  a                                           ; $72a0: $af
	dec  sp                                          ; $72a1: $3b
	push de                                          ; $72a2: $d5
	ld   c, a                                        ; $72a3: $4f
	rst  $28                                         ; $72a4: $ef
	db   $10                                         ; $72a5: $10
	xor  $ac                                         ; $72a6: $ee $ac
	rst  $38                                         ; $72a8: $ff
	ld   l, d                                        ; $72a9: $6a
	cp   a                                           ; $72aa: $bf
	adc  d                                           ; $72ab: $8a
	rst  $38                                         ; $72ac: $ff
	sub  l                                           ; $72ad: $95
	rst  $38                                         ; $72ae: $ff
	ld   a, h                                        ; $72af: $7c
	ld   a, a                                        ; $72b0: $7f
	ld   d, c                                        ; $72b1: $51
	sbc  a                                           ; $72b2: $9f
	add  h                                           ; $72b3: $84
	rst  $38                                         ; $72b4: $ff
	di                                               ; $72b5: $f3
	ld   e, [hl]                                     ; $72b6: $5e
	ld   [hl], a                                     ; $72b7: $77
	xor  a                                           ; $72b8: $af
	rra                                              ; $72b9: $1f
	reti                                             ; $72ba: $d9


	db   $dd                                         ; $72bb: $dd
	xor  d                                           ; $72bc: $aa
	ld   a, [$edc1]                                  ; $72bd: $fa $c1 $ed

jr_098_72c0:
	db   $db                                         ; $72c0: $db
	ld   h, [hl]                                     ; $72c1: $66
	add  e                                           ; $72c2: $83
	rst  $30                                         ; $72c3: $f7
	ld   b, h                                        ; $72c4: $44
	ld   a, a                                        ; $72c5: $7f
	and  [hl]                                        ; $72c6: $a6
	xor  a                                           ; $72c7: $af
	ld   d, l                                        ; $72c8: $55
	ld   d, a                                        ; $72c9: $57
	ld   h, b                                        ; $72ca: $60
	rst  $28                                         ; $72cb: $ef
	ret  nz                                          ; $72cc: $c0

	ld   a, [hl]                                     ; $72cd: $7e
	inc  d                                           ; $72ce: $14
	jr   nz, jr_098_7349                             ; $72cf: $20 $78

	cp   $b3                                         ; $72d1: $fe $b3
	db   $fd                                         ; $72d3: $fd
	ldh  [c], a                                      ; $72d4: $e2
	xor  [hl]                                        ; $72d5: $ae
	call nz, $b95f                                   ; $72d6: $c4 $5f $b9
	and  [hl]                                        ; $72d9: $a6
	add  b                                           ; $72da: $80
	ld   d, e                                        ; $72db: $53
	ld   a, a                                        ; $72dc: $7f
	inc  bc                                          ; $72dd: $03
	rst  $28                                         ; $72de: $ef
	xor  [hl]                                        ; $72df: $ae
	ld   b, b                                        ; $72e0: $40
	add  hl, hl                                      ; $72e1: $29
	ld   hl, sp-$29                                  ; $72e2: $f8 $d7
	ld   a, [hl]                                     ; $72e4: $7e
	and  l                                           ; $72e5: $a5
	rst  JumpTable                                         ; $72e6: $df
	ld   a, [hl+]                                    ; $72e7: $2a
	ld   a, a                                        ; $72e8: $7f
	db   $e3                                         ; $72e9: $e3
	cp   [hl]                                        ; $72ea: $be
	ld   [hl], e                                     ; $72eb: $73
	ld   a, a                                        ; $72ec: $7f
	add  c                                           ; $72ed: $81
	rst  JumpTable                                         ; $72ee: $df
	jr   nc, jr_098_72c0                             ; $72ef: $30 $cf

	adc  [hl]                                        ; $72f1: $8e
	ld   a, b                                        ; $72f2: $78
	adc  c                                           ; $72f3: $89
	ld   e, $7d                                      ; $72f4: $1e $7d
	add  c                                           ; $72f6: $81
	ccf                                              ; $72f7: $3f
	ld   d, b                                        ; $72f8: $50
	or   $ab                                         ; $72f9: $f6 $ab
	ld   e, a                                        ; $72fb: $5f
	ld   d, l                                        ; $72fc: $55
	ld   e, e                                        ; $72fd: $5b
	ei                                               ; $72fe: $fb
	push bc                                          ; $72ff: $c5
	ld   l, a                                        ; $7300: $6f
	ld   c, a                                        ; $7301: $4f
	ld   [hl], c                                     ; $7302: $71
	and  $02                                         ; $7303: $e6 $02
	db   $ed                                         ; $7305: $ed
	ld   bc, $01d2                                   ; $7306: $01 $d2 $01
	call c, $3000                                    ; $7309: $dc $00 $30
	adc  $db                                         ; $730c: $ce $db
	ld   h, [hl]                                     ; $730e: $66
	sbc  b                                           ; $730f: $98
	ld   sp, hl                                      ; $7310: $f9
	add  hl, bc                                      ; $7311: $09
	rst  $28                                         ; $7312: $ef
	ld   c, e                                        ; $7313: $4b
	ld   d, a                                        ; $7314: $57
	and  c                                           ; $7315: $a1
	ld   a, a                                        ; $7316: $7f
	add  b                                           ; $7317: $80
	ld   a, [hl]                                     ; $7318: $7e
	rst  JumpTable                                         ; $7319: $df
	db   $eb                                         ; $731a: $eb
	ld   e, e                                        ; $731b: $5b
	ld   a, l                                        ; $731c: $7d
	adc  l                                           ; $731d: $8d
	ei                                               ; $731e: $fb
	ld   d, l                                        ; $731f: $55
	dec  h                                           ; $7320: $25
	adc  e                                           ; $7321: $8b
	rst  $38                                         ; $7322: $ff
	ld   b, d                                        ; $7323: $42
	rst  $38                                         ; $7324: $ff
	ld   d, h                                        ; $7325: $54
	db   $fd                                         ; $7326: $fd
	cp   $b7                                         ; $7327: $fe $b7
	cp   l                                           ; $7329: $bd
	db   $eb                                         ; $732a: $eb
	ld   b, l                                        ; $732b: $45
	rst  $30                                         ; $732c: $f7
	ld   e, l                                        ; $732d: $5d
	cp   $e7                                         ; $732e: $fe $e7
	xor  l                                           ; $7330: $ad
	ld   d, d                                        ; $7331: $52
	rst  $10                                         ; $7332: $d7
	ld   a, $ef                                      ; $7333: $3e $ef
	ld   a, $d7                                      ; $7335: $3e $d7
	ld   c, h                                        ; $7337: $4c
	rst  $20                                         ; $7338: $e7
	ld   l, d                                        ; $7339: $6a
	rst  $38                                         ; $733a: $ff
	ld   a, [$755f]                                  ; $733b: $fa $5f $75
	ld   d, a                                        ; $733e: $57
	xor  l                                           ; $733f: $ad
	xor  a                                           ; $7340: $af
	sbc  c                                           ; $7341: $99
	ld   a, [hl]                                     ; $7342: $7e
	add  c                                           ; $7343: $81
	cp   $81                                         ; $7344: $fe $81
	sub  $ba                                         ; $7346: $d6 $ba
	rst  $38                                         ; $7348: $ff

jr_098_7349:
	ld   c, l                                        ; $7349: $4d
	rst  $38                                         ; $734a: $ff
	ld   d, c                                        ; $734b: $51
	or   $40                                         ; $734c: $f6 $40
	ld   l, d                                        ; $734e: $6a
	adc  l                                           ; $734f: $8d
	ld   [hl], a                                     ; $7350: $77
	rla                                              ; $7351: $17
	db   $ec                                         ; $7352: $ec
	ld   d, c                                        ; $7353: $51
	ld   a, h                                        ; $7354: $7c
	ld   c, h                                        ; $7355: $4c
	ld   a, $de                                      ; $7356: $3e $de
	ld   c, a                                        ; $7358: $4f
	inc  de                                          ; $7359: $13
	ld   h, l                                        ; $735a: $65
	ld   l, a                                        ; $735b: $6f
	cp   $45                                         ; $735c: $fe $45
	ld   b, h                                        ; $735e: $44
	cp   a                                           ; $735f: $bf
	cp   c                                           ; $7360: $b9
	rst  $20                                         ; $7361: $e7
	jr   jr_098_736b                                 ; $7362: $18 $07

	push af                                          ; $7364: $f5
	sbc  b                                           ; $7365: $98
	rst  $20                                         ; $7366: $e7
	cp   $8e                                         ; $7367: $fe $8e
	ld   a, l                                        ; $7369: $7d
	adc  l                                           ; $736a: $8d

jr_098_736b:
	ld   hl, sp-$2b                                  ; $736b: $f8 $d5
	db   $fd                                         ; $736d: $fd
	and  d                                           ; $736e: $a2
	cp   [hl]                                        ; $736f: $be
	ld   c, b                                        ; $7370: $48
	pop  bc                                          ; $7371: $c1
	dec  d                                           ; $7372: $15
	push de                                          ; $7373: $d5
	or   l                                           ; $7374: $b5
	db   $eb                                         ; $7375: $eb
	rst  $30                                         ; $7376: $f7
	nop                                              ; $7377: $00
	xor  a                                           ; $7378: $af
	ld   d, b                                        ; $7379: $50
	add  e                                           ; $737a: $83
	cp   a                                           ; $737b: $bf
	ld   e, e                                        ; $737c: $5b
	rst  $38                                         ; $737d: $ff
	sbc  b                                           ; $737e: $98
	ld   b, e                                        ; $737f: $43
	push af                                          ; $7380: $f5
	ld   a, h                                        ; $7381: $7c
	dec  d                                           ; $7382: $15
	pop  bc                                          ; $7383: $c1
	ld   l, $71                                      ; $7384: $2e $71
	di                                               ; $7386: $f3
	db   $fc                                         ; $7387: $fc
	adc  l                                           ; $7388: $8d
	ld   a, $c5                                      ; $7389: $3e $c5
	add  e                                           ; $738b: $83
	ccf                                              ; $738c: $3f
	ld   hl, sp-$79                                  ; $738d: $f8 $87
	ldh  [$ed], a                                    ; $738f: $e0 $ed
	rra                                              ; $7391: $1f
	adc  [hl]                                        ; $7392: $8e
	sbc  e                                           ; $7393: $9b
	db   $dd                                         ; $7394: $dd
	rst  JumpTable                                         ; $7395: $df
	ldh  a, [c]                                      ; $7396: $f2
	rst  $30                                         ; $7397: $f7
	or   d                                           ; $7398: $b2
	cp   a                                           ; $7399: $bf
	xor  e                                           ; $739a: $ab
	db   $fd                                         ; $739b: $fd
	dec  bc                                          ; $739c: $0b
	rst  $38                                         ; $739d: $ff
	ld   [de], a                                     ; $739e: $12
	rst  $38                                         ; $739f: $ff
	or   h                                           ; $73a0: $b4
	rst  $38                                         ; $73a1: $ff
	ld   d, h                                        ; $73a2: $54
	ld   e, d                                        ; $73a3: $5a
	add  b                                           ; $73a4: $80
	or   l                                           ; $73a5: $b5
	ld   a, a                                        ; $73a6: $7f
	adc  [hl]                                        ; $73a7: $8e
	xor  a                                           ; $73a8: $af
	inc  c                                           ; $73a9: $0c
	ld   a, a                                        ; $73aa: $7f
	inc  c                                           ; $73ab: $0c
	ld   a, a                                        ; $73ac: $7f
	ld   d, d                                        ; $73ad: $52
	rst  $30                                         ; $73ae: $f7
	and  d                                           ; $73af: $a2
	rst  $38                                         ; $73b0: $ff
	xor  [hl]                                        ; $73b1: $ae
	ld   sp, hl                                      ; $73b2: $f9
	and  [hl]                                        ; $73b3: $a6
	ccf                                              ; $73b4: $3f
	ld   d, d                                        ; $73b5: $52
	cp   $9d                                         ; $73b6: $fe $9d
	push de                                          ; $73b8: $d5
	and  [hl]                                        ; $73b9: $a6
	jp   c, $cd78                                    ; $73ba: $da $78 $cd

	ld   b, l                                        ; $73bd: $45
	rst  $38                                         ; $73be: $ff
	cp   $81                                         ; $73bf: $fe $81
	ld   d, l                                        ; $73c1: $55
	ld   a, a                                        ; $73c2: $7f
	dec  [hl]                                        ; $73c3: $35
	ld   e, a                                        ; $73c4: $5f
	ret                                              ; $73c5: $c9


	sbc  a                                           ; $73c6: $9f
	ld   a, h                                        ; $73c7: $7c
	ld   d, l                                        ; $73c8: $55
	xor  e                                           ; $73c9: $ab
	db   $eb                                         ; $73ca: $eb
	push af                                          ; $73cb: $f5
	ld   [hl], a                                     ; $73cc: $77
	db   $dd                                         ; $73cd: $dd
	ret  nz                                          ; $73ce: $c0

	add  sp, $0f                                     ; $73cf: $e8 $0f
	dec  d                                           ; $73d1: $15
	db   $ed                                         ; $73d2: $ed
	ld   [hl], a                                     ; $73d3: $77
	ld   hl, sp+$48                                  ; $73d4: $f8 $48
	rst  $38                                         ; $73d6: $ff
	add  a                                           ; $73d7: $87
	di                                               ; $73d8: $f3
	ld   e, d                                        ; $73d9: $5a
	ldh  [rAUD4LEN], a                               ; $73da: $e0 $20
	adc  l                                           ; $73dc: $8d
	inc  hl                                          ; $73dd: $23
	db   $fd                                         ; $73de: $fd
	add  hl, sp                                      ; $73df: $39
	cp   e                                           ; $73e0: $bb
	ld   c, d                                        ; $73e1: $4a
	ld   [hl], e                                     ; $73e2: $73
	ld   c, e                                        ; $73e3: $4b
	add  b                                           ; $73e4: $80
	ld   a, a                                        ; $73e5: $7f
	jr   nc, jr_098_7423                             ; $73e6: $30 $3b

	rrca                                             ; $73e8: $0f
	ld   [hl+], a                                    ; $73e9: $22
	ld   e, e                                        ; $73ea: $5b
	ld   l, $e7                                      ; $73eb: $2e $e7
	add  hl, de                                      ; $73ed: $19
	jp   $f1ff                                       ; $73ee: $c3 $ff $f1


	and  a                                           ; $73f1: $a7
	cp   b                                           ; $73f2: $b8
	jr   nz, jr_098_7455                             ; $73f3: $20 $60

	cp   [hl]                                        ; $73f5: $be
	inc  bc                                          ; $73f6: $03
	ld   l, e                                        ; $73f7: $6b
	or   a                                           ; $73f8: $b7
	dec  l                                           ; $73f9: $2d
	rst  $30                                         ; $73fa: $f7
	cp   [hl]                                        ; $73fb: $be
	rst  $38                                         ; $73fc: $ff
	xor  $fe                                         ; $73fd: $ee $fe
	ld   c, l                                        ; $73ff: $4d

Jump_098_7400:
	db   $fd                                         ; $7400: $fd
	and  a                                           ; $7401: $a7
	di                                               ; $7402: $f3
	ld   c, d                                        ; $7403: $4a
	rst  $38                                         ; $7404: $ff
	call nc, $0f7f                                   ; $7405: $d4 $7f $0f
	db   $fd                                         ; $7408: $fd
	sub  d                                           ; $7409: $92
	ld   a, [$7dbc]                                  ; $740a: $fa $bc $7d
	and  h                                           ; $740d: $a4
	xor  a                                           ; $740e: $af
	ld   e, h                                        ; $740f: $5c
	ld   d, a                                        ; $7410: $57
	call z, $066f                                    ; $7411: $cc $6f $06
	rst  $38                                         ; $7414: $ff
	add  hl, bc                                      ; $7415: $09
	rst  $38                                         ; $7416: $ff
	sub  a                                           ; $7417: $97
	daa                                              ; $7418: $27

jr_098_7419:
	cp   $1f                                         ; $7419: $fe $1f
	ld   sp, hl                                      ; $741b: $f9
	cp   $aa                                         ; $741c: $fe $aa
	xor  h                                           ; $741e: $ac
	ld   c, d                                        ; $741f: $4a
	ld   a, c                                        ; $7420: $79
	reti                                             ; $7421: $d9


	push de                                          ; $7422: $d5

jr_098_7423:
	sbc  c                                           ; $7423: $99
	cp   $45                                         ; $7424: $fe $45
	rst  $28                                         ; $7426: $ef
	ld   l, h                                        ; $7427: $6c
	ld   e, [hl]                                     ; $7428: $5e
	sub  $a9                                         ; $7429: $d6 $a9
	xor  $ba                                         ; $742b: $ee $ba
	xor  l                                           ; $742d: $ad
	ld   h, $2e                                      ; $742e: $26 $2e
	add  [hl]                                        ; $7430: $86
	ld   sp, hl                                      ; $7431: $f9
	ld   a, [$4ddd]                                  ; $7432: $fa $dd $4d
	ccf                                              ; $7435: $3f
	pop  hl                                          ; $7436: $e1
	rst  $38                                         ; $7437: $ff
	db   $eb                                         ; $7438: $eb
	ld   a, d                                        ; $7439: $7a
	xor  $b5                                         ; $743a: $ee $b5

Call_098_743c:
	ld   sp, $aa7b                                   ; $743c: $31 $7b $aa
	cp   $fd                                         ; $743f: $fe $fd
	cp   l                                           ; $7441: $bd
	ld   l, [hl]                                     ; $7442: $6e
	rst  $38                                         ; $7443: $ff
	sbc  e                                           ; $7444: $9b
	jp   c, $fd05                                    ; $7445: $da $05 $fd

	add  c                                           ; $7448: $81
	rst  $38                                         ; $7449: $ff
	ld   a, [bc]                                     ; $744a: $0a
	cp   a                                           ; $744b: $bf
	add  e                                           ; $744c: $83
	rst  $38                                         ; $744d: $ff
	and  b                                           ; $744e: $a0
	rst  $38                                         ; $744f: $ff
	ld   d, b                                        ; $7450: $50

jr_098_7451:
	rst  $28                                         ; $7451: $ef
	ld   b, l                                        ; $7452: $45
	push bc                                          ; $7453: $c5
	ld   d, l                                        ; $7454: $55

jr_098_7455:
	cp   a                                           ; $7455: $bf
	ld   [hl], c                                     ; $7456: $71
	ld   a, a                                        ; $7457: $7f
	ld   b, b                                        ; $7458: $40
	ld   a, a                                        ; $7459: $7f
	or   a                                           ; $745a: $b7
	ldh  [$bb], a                                    ; $745b: $e0 $bb
	or   a                                           ; $745d: $b7
	ldh  [$e2], a                                    ; $745e: $e0 $e2
	and  l                                           ; $7460: $a5
	or   a                                           ; $7461: $b7
	or   b                                           ; $7462: $b0
	rst  $38                                         ; $7463: $ff
	inc  b                                           ; $7464: $04
	ld   e, [hl]                                     ; $7465: $5e
	cp   e                                           ; $7466: $bb
	or   b                                           ; $7467: $b0
	ld   [hl], d                                     ; $7468: $72
	inc  c                                           ; $7469: $0c
	adc  h                                           ; $746a: $8c
	ld   a, a                                        ; $746b: $7f
	inc  [hl]                                        ; $746c: $34
	cp   a                                           ; $746d: $bf
	rra                                              ; $746e: $1f
	ld   [hl], a                                     ; $746f: $77
	add  e                                           ; $7470: $83
	db   $e3                                         ; $7471: $e3
	add  d                                           ; $7472: $82
	or   a                                           ; $7473: $b7
	or   c                                           ; $7474: $b1
	ld   b, $7a                                      ; $7475: $06 $7a
	inc  bc                                          ; $7477: $03
	ld   b, $f1                                      ; $7478: $06 $f1
	ld   a, e                                        ; $747a: $7b
	ldh  a, [$f3]                                    ; $747b: $f0 $f3
	ld   a, [hl]                                     ; $747d: $7e
	add  b                                           ; $747e: $80
	db   $eb                                         ; $747f: $eb
	dec  sp                                          ; $7480: $3b
	rst  JumpTable                                         ; $7481: $df
	ld   d, b                                        ; $7482: $50
	rst  $38                                         ; $7483: $ff
	ld   [hl], l                                     ; $7484: $75
	rra                                              ; $7485: $1f
	halt                                             ; $7486: $76
	ld   e, a                                        ; $7487: $5f
	ld   [hl], d                                     ; $7488: $72
	dec  l                                           ; $7489: $2d
	and  h                                           ; $748a: $a4
	scf                                              ; $748b: $37
	ld   a, l                                        ; $748c: $7d
	ld   [de], a                                     ; $748d: $12
	and  l                                           ; $748e: $a5
	dec  bc                                          ; $748f: $0b
	inc  de                                          ; $7490: $13
	pop  bc                                          ; $7491: $c1
	xor  c                                           ; $7492: $a9
	ret  nz                                          ; $7493: $c0

	jr   nz, jr_098_7419                             ; $7494: $20 $83

	nop                                              ; $7496: $00
	ld   [$0060], sp                                 ; $7497: $08 $60 $00
	add  b                                           ; $749a: $80
	nop                                              ; $749b: $00
	ld   b, b                                        ; $749c: $40
	nop                                              ; $749d: $00
	add  b                                           ; $749e: $80
	nop                                              ; $749f: $00
	jr   nz, @-$71                                   ; $74a0: $20 $8d

	nop                                              ; $74a2: $00
	ld   [bc], a                                     ; $74a3: $02
	cp   e                                           ; $74a4: $bb
	nop                                              ; $74a5: $00
	cp   e                                           ; $74a6: $bb
	adc  e                                           ; $74a7: $8b
	nop                                              ; $74a8: $00
	ld   [bc], a                                     ; $74a9: $02
	cp   b                                           ; $74aa: $b8
	nop                                              ; $74ab: $00
	ld   [de], a                                     ; $74ac: $12
	add  c                                           ; $74ad: $81
	nop                                              ; $74ae: $00
	inc  b                                           ; $74af: $04
	add  b                                           ; $74b0: $80
	nop                                              ; $74b1: $00
	sub  c                                           ; $74b2: $91
	nop                                              ; $74b3: $00
	cp   e                                           ; $74b4: $bb
	add  l                                           ; $74b5: $85
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	xor  b                                           ; $74b8: $a8
	add  e                                           ; $74b9: $83
	nop                                              ; $74ba: $00
	ld   [bc], a                                     ; $74bb: $02
	stop                                             ; $74bc: $10 $00
	cp   b                                           ; $74be: $b8
	pop  bc                                          ; $74bf: $c1
	nop                                              ; $74c0: $00
	inc  b                                           ; $74c1: $04
	rrca                                             ; $74c2: $0f
	nop                                              ; $74c3: $00
	rla                                              ; $74c4: $17
	nop                                              ; $74c5: $00
	jr   jr_098_7451                                 ; $74c6: $18 $89

	nop                                              ; $74c8: $00
	inc  b                                           ; $74c9: $04
	add  b                                           ; $74ca: $80
	nop                                              ; $74cb: $00
	ld   b, a                                        ; $74cc: $47
	nop                                              ; $74cd: $00
	rst  ToBoot                                         ; $74ce: $c7
	adc  e                                           ; $74cf: $8b
	nop                                              ; $74d0: $00
	ld   [bc], a                                     ; $74d1: $02
	cp   [hl]                                        ; $74d2: $be
	nop                                              ; $74d3: $00
	cp   [hl]                                        ; $74d4: $be
	adc  e                                           ; $74d5: $8b
	nop                                              ; $74d6: $00
	ld   [bc], a                                     ; $74d7: $02
	ld   a, c                                        ; $74d8: $79
	nop                                              ; $74d9: $00
	ld   a, c                                        ; $74da: $79
	adc  e                                           ; $74db: $8b
	nop                                              ; $74dc: $00
	ld   [bc], a                                     ; $74dd: $02
	jp   $c300                                       ; $74de: $c3 $00 $c3


	adc  e                                           ; $74e1: $8b
	nop                                              ; $74e2: $00
	ld   [bc], a                                     ; $74e3: $02
	db   $ec                                         ; $74e4: $ec
	nop                                              ; $74e5: $00
	db   $ec                                         ; $74e6: $ec
	adc  e                                           ; $74e7: $8b
	nop                                              ; $74e8: $00
	ld   [bc], a                                     ; $74e9: $02
	cp   a                                           ; $74ea: $bf
	nop                                              ; $74eb: $00
	cp   a                                           ; $74ec: $bf
	adc  e                                           ; $74ed: $8b
	nop                                              ; $74ee: $00
	ld   [bc], a                                     ; $74ef: $02
	ld   a, l                                        ; $74f0: $7d
	nop                                              ; $74f1: $00
	ld   a, l                                        ; $74f2: $7d
	adc  e                                           ; $74f3: $8b
	nop                                              ; $74f4: $00
	ld   [bc], a                                     ; $74f5: $02
	rst  $20                                         ; $74f6: $e7
	nop                                              ; $74f7: $00
	rst  $20                                         ; $74f8: $e7
	adc  e                                           ; $74f9: $8b
	nop                                              ; $74fa: $00
	ld   [bc], a                                     ; $74fb: $02
	sbc  [hl]                                        ; $74fc: $9e
	nop                                              ; $74fd: $00
	sbc  [hl]                                        ; $74fe: $9e
	adc  e                                           ; $74ff: $8b
	nop                                              ; $7500: $00
	ld   [bc], a                                     ; $7501: $02
	ld   h, a                                        ; $7502: $67
	nop                                              ; $7503: $00
	ld   h, a                                        ; $7504: $67
	adc  e                                           ; $7505: $8b
	nop                                              ; $7506: $00
	ld   [bc], a                                     ; $7507: $02
	cp   [hl]                                        ; $7508: $be
	nop                                              ; $7509: $00
	cp   [hl]                                        ; $750a: $be
	adc  e                                           ; $750b: $8b
	nop                                              ; $750c: $00
	ld   [bc], a                                     ; $750d: $02
	ld   a, b                                        ; $750e: $78
	nop                                              ; $750f: $00
	ld   a, b                                        ; $7510: $78
	adc  e                                           ; $7511: $8b
	nop                                              ; $7512: $00
	ld   [bc], a                                     ; $7513: $02
	rst  ToBoot                                         ; $7514: $c7
	nop                                              ; $7515: $00
	rst  ToBoot                                         ; $7516: $c7
	adc  e                                           ; $7517: $8b
	nop                                              ; $7518: $00
	ld   [bc], a                                     ; $7519: $02
	rst  $28                                         ; $751a: $ef
	nop                                              ; $751b: $00
	rst  $28                                         ; $751c: $ef
	adc  e                                           ; $751d: $8b
	nop                                              ; $751e: $00
	inc  c                                           ; $751f: $0c
	ld   b, $00                                      ; $7520: $06 $00
	ld   de, $0300                                   ; $7522: $11 $00 $03
	nop                                              ; $7525: $00
	inc  bc                                          ; $7526: $03
	nop                                              ; $7527: $00
	rrca                                             ; $7528: $0f
	nop                                              ; $7529: $00
	rla                                              ; $752a: $17
	nop                                              ; $752b: $00
	rrca                                             ; $752c: $0f
	add  e                                           ; $752d: $83
	nop                                              ; $752e: $00
	ld   a, [bc]                                     ; $752f: $0a
	ld   c, h                                        ; $7530: $4c
	nop                                              ; $7531: $00
	dec  bc                                          ; $7532: $0b
	nop                                              ; $7533: $00
	ld   b, $00                                      ; $7534: $06 $00
	adc  [hl]                                        ; $7536: $8e
	nop                                              ; $7537: $00
	ld   c, a                                        ; $7538: $4f
	nop                                              ; $7539: $00
	add  b                                           ; $753a: $80
	add  e                                           ; $753b: $83
	nop                                              ; $753c: $00
	ld   [$0030], sp                                 ; $753d: $08 $30 $00
	ld   c, $00                                      ; $7540: $0e $00
	adc  [hl]                                        ; $7542: $8e
	nop                                              ; $7543: $00
	adc  [hl]                                        ; $7544: $8e
	nop                                              ; $7545: $00
	ld   a, $85                                      ; $7546: $3e $85
	nop                                              ; $7548: $00
	ld   [$00c3], sp                                 ; $7549: $08 $c3 $00
	jr   jr_098_754e                                 ; $754c: $18 $00

jr_098_754e:
	stop                                             ; $754e: $10 $00
	or   b                                           ; $7550: $b0
	nop                                              ; $7551: $00
	ld   a, e                                        ; $7552: $7b
	add  l                                           ; $7553: $85
	nop                                              ; $7554: $00
	inc  b                                           ; $7555: $04
	inc  hl                                          ; $7556: $23
	nop                                              ; $7557: $00
	ret  nz                                          ; $7558: $c0

	nop                                              ; $7559: $00
	ret  nz                                          ; $755a: $c0

	add  c                                           ; $755b: $81
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	inc  hl                                          ; $755e: $23
	add  l                                           ; $755f: $85
	nop                                              ; $7560: $00
	ld   [$000e], sp                                 ; $7561: $08 $0e $00
	pop  hl                                          ; $7564: $e1
	nop                                              ; $7565: $00
	ldh  [c], a                                      ; $7566: $e2
	nop                                              ; $7567: $00
	pop  hl                                          ; $7568: $e1
	nop                                              ; $7569: $00
	db   $ec                                         ; $756a: $ec
	add  l                                           ; $756b: $85
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	adc  h                                           ; $756e: $8c
	add  l                                           ; $756f: $85
	nop                                              ; $7570: $00
	db   $10                                         ; $7571: $10
	adc  h                                           ; $7572: $8c
	nop                                              ; $7573: $00
	rra                                              ; $7574: $1f
	nop                                              ; $7575: $00
	ld   l, $00                                      ; $7576: $2e $00
	rra                                              ; $7578: $1f
	nop                                              ; $7579: $00
	ld   c, a                                        ; $757a: $4f
	nop                                              ; $757b: $00
	jr   jr_098_757e                                 ; $757c: $18 $00

jr_098_757e:
	jr   jr_098_7580                                 ; $757e: $18 $00

jr_098_7580:
	inc  e                                           ; $7580: $1c
	nop                                              ; $7581: $00
	ld   a, l                                        ; $7582: $7d
	add  c                                           ; $7583: $81
	nop                                              ; $7584: $00
	ld   [$009e], sp                                 ; $7585: $08 $9e $00
	rlca                                             ; $7588: $07
	nop                                              ; $7589: $00
	rrca                                             ; $758a: $0f
	nop                                              ; $758b: $00
	ld   [hl], c                                     ; $758c: $71
	nop                                              ; $758d: $00
	ld   [hl], c                                     ; $758e: $71
	add  c                                           ; $758f: $81
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	sub  [hl]                                        ; $7592: $96
	add  c                                           ; $7593: $81
	nop                                              ; $7594: $00
	ld   [$007d], sp                                 ; $7595: $08 $7d $00
	inc  e                                           ; $7598: $1c
	nop                                              ; $7599: $00
	jr   c, jr_098_759c                              ; $759a: $38 $00

jr_098_759c:
	rst  ToBoot                                         ; $759c: $c7
	nop                                              ; $759d: $00
	add  a                                           ; $759e: $87
	add  c                                           ; $759f: $81
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	add  hl, de                                      ; $75a2: $19
	add  c                                           ; $75a3: $81
	nop                                              ; $75a4: $00
	inc  c                                           ; $75a5: $0c
	pop  hl                                          ; $75a6: $e1
	nop                                              ; $75a7: $00
	ld   [hl], c                                     ; $75a8: $71
	nop                                              ; $75a9: $00
	db   $fc                                         ; $75aa: $fc
	nop                                              ; $75ab: $00
	dec  bc                                          ; $75ac: $0b
	nop                                              ; $75ad: $00
	ld   b, $00                                      ; $75ae: $06 $00
	ld   c, $00                                      ; $75b0: $0e $00
	ld   l, a                                        ; $75b2: $6f
	add  c                                           ; $75b3: $81
	nop                                              ; $75b4: $00
	inc  c                                           ; $75b5: $0c
	cp   e                                           ; $75b6: $bb
	nop                                              ; $75b7: $00
	ld   de, $9a00                                   ; $75b8: $11 $00 $9a
	nop                                              ; $75bb: $00
	ld   c, $00                                      ; $75bc: $0e $00
	adc  [hl]                                        ; $75be: $8e
	nop                                              ; $75bf: $00
	adc  [hl]                                        ; $75c0: $8e
	nop                                              ; $75c1: $00
	ld   a, $81                                      ; $75c2: $3e $81
	nop                                              ; $75c4: $00
	inc  d                                           ; $75c5: $14
	cp   b                                           ; $75c6: $b8
	nop                                              ; $75c7: $00
	jr   jr_098_75ca                                 ; $75c8: $18 $00

jr_098_75ca:
	ld   h, b                                        ; $75ca: $60
	nop                                              ; $75cb: $00
	or   b                                           ; $75cc: $b0
	nop                                              ; $75cd: $00
	ld   l, b                                        ; $75ce: $68
	nop                                              ; $75cf: $00
	ld   [$f000], a                                  ; $75d0: $ea $00 $f0
	nop                                              ; $75d3: $00
	ld   [bc], a                                     ; $75d4: $02
	nop                                              ; $75d5: $00
	xor  $00                                         ; $75d6: $ee $00

jr_098_75d8:
	call nz, $eb00                                   ; $75d8: $c4 $00 $eb
	add  e                                           ; $75db: $83
	nop                                              ; $75dc: $00
	ld   [bc], a                                     ; $75dd: $02
	jr   c, jr_098_75e0                              ; $75de: $38 $00

jr_098_75e0:
	ld   sp, hl                                      ; $75e0: $f9
	add  c                                           ; $75e1: $81
	nop                                              ; $75e2: $00
	inc  b                                           ; $75e3: $04
	xor  $00                                         ; $75e4: $ee $00
	ld   b, h                                        ; $75e6: $44
	nop                                              ; $75e7: $00
	ld   h, $83                                      ; $75e8: $26 $83
	nop                                              ; $75ea: $00
	ld   [bc], a                                     ; $75eb: $02
	inc  bc                                          ; $75ec: $03
	nop                                              ; $75ed: $00
	adc  a                                           ; $75ee: $8f
	add  l                                           ; $75ef: $85
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	add  d                                           ; $75f2: $82
	add  e                                           ; $75f3: $83
	nop                                              ; $75f4: $00
	inc  b                                           ; $75f5: $04
	xor  b                                           ; $75f6: $a8
	nop                                              ; $75f7: $00
	ld   [hl+], a                                    ; $75f8: $22
	nop                                              ; $75f9: $00
	ld   [$008d], sp                                 ; $75fa: $08 $8d $00
	nop                                              ; $75fd: $00
	ld   bc, $0083                                   ; $75fe: $01 $83 $00
	nop                                              ; $7601: $00
	ld   bc, $0085                                   ; $7602: $01 $85 $00
	ld   [$00f8], sp                                 ; $7605: $08 $f8 $00
	ld   [hl], h                                     ; $7608: $74
	nop                                              ; $7609: $00
	ld   hl, sp+$00                                  ; $760a: $f8 $00
	jr   nc, jr_098_760e                             ; $760c: $30 $00

jr_098_760e:
	ld   b, h                                        ; $760e: $44
	add  a                                           ; $760f: $87
	nop                                              ; $7610: $00
	jr   jr_098_75d8                                 ; $7611: $18 $c5

	nop                                              ; $7613: $00
	jr   z, jr_098_7616                              ; $7614: $28 $00

jr_098_7616:
	stop                                             ; $7616: $10 $00
	push de                                          ; $7618: $d5
	nop                                              ; $7619: $00
	ld   b, $00                                      ; $761a: $06 $00
	rra                                              ; $761c: $1f
	nop                                              ; $761d: $00
	ld   l, $00                                      ; $761e: $2e $00
	rra                                              ; $7620: $1f
	nop                                              ; $7621: $00
	rst  $30                                         ; $7622: $f7
	nop                                              ; $7623: $00
	ld   [hl], c                                     ; $7624: $71
	nop                                              ; $7625: $00
	ld   [hl], b                                     ; $7626: $70
	nop                                              ; $7627: $00
	ld   l, b                                        ; $7628: $68
	nop                                              ; $7629: $00
	rlca                                             ; $762a: $07
	add  c                                           ; $762b: $81
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	sbc  c                                           ; $762e: $99
	add  c                                           ; $762f: $81
	nop                                              ; $7630: $00
	ld   [bc], a                                     ; $7631: $02
	sbc  c                                           ; $7632: $99
	nop                                              ; $7633: $00
	jp   nz, $0081                                   ; $7634: $c2 $81 $00

	ld   b, $26                                      ; $7637: $06 $26
	nop                                              ; $7639: $00
	inc  e                                           ; $763a: $1c
	nop                                              ; $763b: $00
	inc  e                                           ; $763c: $1c
	nop                                              ; $763d: $00
	ld   a, l                                        ; $763e: $7d
	add  c                                           ; $763f: $81
	nop                                              ; $7640: $00
	ld   b, $c3                                      ; $7641: $06 $c3
	nop                                              ; $7643: $00
	ldh  [rP1], a                                    ; $7644: $e0 $00
	ret  nz                                          ; $7646: $c0

	nop                                              ; $7647: $00
	ld   [hl], e                                     ; $7648: $73
	add  c                                           ; $7649: $81
	nop                                              ; $764a: $00
	ld   [bc], a                                     ; $764b: $02
	ld   [hl], b                                     ; $764c: $70
	nop                                              ; $764d: $00
	ldh  [$81], a                                    ; $764e: $e0 $81
	nop                                              ; $7650: $00
	inc  c                                           ; $7651: $0c
	rst  $20                                         ; $7652: $e7
	nop                                              ; $7653: $00
	db   $eb                                         ; $7654: $eb
	nop                                              ; $7655: $00
	jp   Jump_098_7400                               ; $7656: $c3 $00 $74


	nop                                              ; $7659: $00
	inc  sp                                          ; $765a: $33
	nop                                              ; $765b: $00
	inc  sp                                          ; $765c: $33
	nop                                              ; $765d: $00
	cp   e                                           ; $765e: $bb
	add  c                                           ; $765f: $81
	nop                                              ; $7660: $00
	ld   [bc], a                                     ; $7661: $02
	ld   e, $00                                      ; $7662: $1e $00
	xor  [hl]                                        ; $7664: $ae
	add  c                                           ; $7665: $81
	nop                                              ; $7666: $00
	inc  c                                           ; $7667: $0c
	ld   [$1000], sp                                 ; $7668: $08 $00 $10
	nop                                              ; $766b: $00
	ld   [de], a                                     ; $766c: $12
	nop                                              ; $766d: $00
	cp   b                                           ; $766e: $b8
	nop                                              ; $766f: $00
	ld   [bc], a                                     ; $7670: $02
	nop                                              ; $7671: $00
	db   $fc                                         ; $7672: $fc
	nop                                              ; $7673: $00
	call $0081                                       ; $7674: $cd $81 $00
	ld   b, $db                                      ; $7677: $06 $db
	nop                                              ; $7679: $00
	ld   h, b                                        ; $767a: $60
	nop                                              ; $767b: $00
	ld   h, h                                        ; $767c: $64
	nop                                              ; $767d: $00
	xor  $81                                         ; $767e: $ee $81
	nop                                              ; $7680: $00
	ld   b, $e7                                      ; $7681: $06 $e7
	nop                                              ; $7683: $00
	ld   [hl], c                                     ; $7684: $71
	nop                                              ; $7685: $00
	ld   bc, $3d00                                   ; $7686: $01 $00 $3d
	add  c                                           ; $7689: $81
	nop                                              ; $768a: $00
	ld   [bc], a                                     ; $768b: $02
	ld   b, h                                        ; $768c: $44
	nop                                              ; $768d: $00
	xor  $81                                         ; $768e: $ee $81
	nop                                              ; $7690: $00
	ld   b, $99                                      ; $7691: $06 $99

jr_098_7693:
	nop                                              ; $7693: $00
	sub  $00                                         ; $7694: $d6 $00
	ret                                              ; $7696: $c9


	nop                                              ; $7697: $00
	add  [hl]                                        ; $7698: $86
	add  a                                           ; $7699: $87
	nop                                              ; $769a: $00
	ld   b, $9d                                      ; $769b: $06 $9d
	nop                                              ; $769d: $00
	sbc  b                                           ; $769e: $98
	nop                                              ; $769f: $00
	jr   jr_098_76a2                                 ; $76a0: $18 $00

jr_098_76a2:
	dec  e                                           ; $76a2: $1d
	add  a                                           ; $76a3: $87
	nop                                              ; $76a4: $00
	ld   [bc], a                                     ; $76a5: $02
	db   $dd                                         ; $76a6: $dd
	nop                                              ; $76a7: $00
	adc  b                                           ; $76a8: $88
	add  c                                           ; $76a9: $81
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	ld   d, l                                        ; $76ac: $55
	add  a                                           ; $76ad: $87
	nop                                              ; $76ae: $00
	ld   [bc], a                                     ; $76af: $02
	ret  nz                                          ; $76b0: $c0

	nop                                              ; $76b1: $00
	add  b                                           ; $76b2: $80
	add  c                                           ; $76b3: $81
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	ld   b, b                                        ; $76b6: $40
	adc  e                                           ; $76b7: $8b
	nop                                              ; $76b8: $00
	ld   [bc], a                                     ; $76b9: $02
	xor  $00                                         ; $76ba: $ee $00
	xor  $8b                                         ; $76bc: $ee $8b
	nop                                              ; $76be: $00
	ld   [bc], a                                     ; $76bf: $02
	db   $e3                                         ; $76c0: $e3
	nop                                              ; $76c1: $00
	ldh  [c], a                                      ; $76c2: $e2
	add  c                                           ; $76c3: $81
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	ld   bc, $0089                                   ; $76c6: $01 $89 $00
	ld   b, $74                                      ; $76c9: $06 $74
	nop                                              ; $76cb: $00
	ld   hl, sp+$00                                  ; $76cc: $f8 $00
	ld   [hl], h                                     ; $76ce: $74
	nop                                              ; $76cf: $00
	ld   hl, sp-$79                                  ; $76d0: $f8 $87
	nop                                              ; $76d2: $00
	inc  b                                           ; $76d3: $04
	push de                                          ; $76d4: $d5
	nop                                              ; $76d5: $00
	stop                                             ; $76d6: $10 $00
	push bc                                          ; $76d8: $c5
	adc  c                                           ; $76d9: $89
	nop                                              ; $76da: $00
	inc  b                                           ; $76db: $04
	add  [hl]                                        ; $76dc: $86
	nop                                              ; $76dd: $00
	ld   [hl], c                                     ; $76de: $71
	nop                                              ; $76df: $00
	rst  $30                                         ; $76e0: $f7
	adc  c                                           ; $76e1: $89
	nop                                              ; $76e2: $00
	inc  b                                           ; $76e3: $04
	ld   e, e                                        ; $76e4: $5b
	nop                                              ; $76e5: $00
	ret  nz                                          ; $76e6: $c0

	nop                                              ; $76e7: $00
	sbc  e                                           ; $76e8: $9b
	adc  c                                           ; $76e9: $89
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	inc  hl                                          ; $76ec: $23
	add  c                                           ; $76ed: $81
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	inc  hl                                          ; $76f0: $23
	adc  c                                           ; $76f1: $89
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	inc  c                                           ; $76f4: $0c
	add  c                                           ; $76f5: $81
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	inc  c                                           ; $76f8: $0c
	adc  c                                           ; $76f9: $89
	nop                                              ; $76fa: $00
	inc  b                                           ; $76fb: $04
	or   b                                           ; $76fc: $b0
	nop                                              ; $76fd: $00
	ld   l, $00                                      ; $76fe: $2e $00
	sbc  [hl]                                        ; $7700: $9e
	adc  c                                           ; $7701: $89
	nop                                              ; $7702: $00
	inc  b                                           ; $7703: $04
	ld   sp, $0100                                   ; $7704: $31 $00 $01
	nop                                              ; $7707: $00
	jr   nc, jr_098_7693                             ; $7708: $30 $89

	nop                                              ; $770a: $00
	inc  b                                           ; $770b: $04
	sub  [hl]                                        ; $770c: $96
	nop                                              ; $770d: $00
	ld   [hl], b                                     ; $770e: $70
	nop                                              ; $770f: $00
	and  $89                                         ; $7710: $e6 $89
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	ld   b, [hl]                                     ; $7714: $46
	add  c                                           ; $7715: $81
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	ld   b, [hl]                                     ; $7718: $46
	adc  c                                           ; $7719: $89
	nop                                              ; $771a: $00
	inc  b                                           ; $771b: $04
	ld   de, $0c00                                   ; $771c: $11 $00 $0c
	nop                                              ; $771f: $00
	dec  e                                           ; $7720: $1d
	adc  c                                           ; $7721: $89
	nop                                              ; $7722: $00
	inc  b                                           ; $7723: $04
	ld   d, l                                        ; $7724: $55
	nop                                              ; $7725: $00
	adc  b                                           ; $7726: $88
	nop                                              ; $7727: $00
	db   $dd                                         ; $7728: $dd
	adc  c                                           ; $7729: $89
	nop                                              ; $772a: $00
	inc  b                                           ; $772b: $04
	ld   b, b                                        ; $772c: $40
	nop                                              ; $772d: $00
	add  b                                           ; $772e: $80
	nop                                              ; $772f: $00
	ret  nz                                          ; $7730: $c0

	adc  c                                           ; $7731: $89
	nop                                              ; $7732: $00
	ld   [$00aa], sp                                 ; $7733: $08 $aa $00
	ld   b, h                                        ; $7736: $44
	nop                                              ; $7737: $00
	call z, $cc00                                    ; $7738: $cc $00 $cc
	nop                                              ; $773b: $00
	xor  $85                                         ; $773c: $ee $85
	nop                                              ; $773e: $00
	ld   a, [bc]                                     ; $773f: $0a
	add  b                                           ; $7740: $80
	nop                                              ; $7741: $00
	ld   h, e                                        ; $7742: $63
	nop                                              ; $7743: $00
	ld   b, c                                        ; $7744: $41
	nop                                              ; $7745: $00
	ld   c, c                                        ; $7746: $49
	nop                                              ; $7747: $00
	db   $e3                                         ; $7748: $e3
	nop                                              ; $7749: $00
	ld   [$00ff], sp                                 ; $774a: $08 $ff $00
	rst  $38                                         ; $774d: $ff
	nop                                              ; $774e: $00
	add  c                                           ; $774f: $81
	nop                                              ; $7750: $00
	scf                                              ; $7751: $37
	ld   bc, $0080                                   ; $7752: $01 $80 $00
	ld   [bc], a                                     ; $7755: $02
	ld   b, b                                        ; $7756: $40
	nop                                              ; $7757: $00
	ld   b, b                                        ; $7758: $40
	add  l                                           ; $7759: $85
	nop                                              ; $775a: $00
	ld   d, $70                                      ; $775b: $16 $70
	nop                                              ; $775d: $00
	ld   a, a                                        ; $775e: $7f
	nop                                              ; $775f: $00
	rrca                                             ; $7760: $0f
	nop                                              ; $7761: $00
	stop                                             ; $7762: $10 $00
	stop                                             ; $7764: $10 $00
	ret  nz                                          ; $7766: $c0

	nop                                              ; $7767: $00
	ld   hl, sp+$00                                  ; $7768: $f8 $00
	ld   a, a                                        ; $776a: $7f
	nop                                              ; $776b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $776c: $cf
	nop                                              ; $776d: $00
	ld   a, b                                        ; $776e: $78
	nop                                              ; $776f: $00
	rst  $28                                         ; $7770: $ef
	nop                                              ; $7771: $00
	rra                                              ; $7772: $1f
	add  e                                           ; $7773: $83
	nop                                              ; $7774: $00
	add  b                                           ; $7775: $80
	ret  nz                                          ; $7776: $c0

	ld   hl, $0010                                   ; $7777: $21 $10 $00
	rra                                              ; $777a: $1f
	nop                                              ; $777b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $777c: $cf
	nop                                              ; $777d: $00
	and  b                                           ; $777e: $a0
	nop                                              ; $777f: $00
	ld   l, a                                        ; $7780: $6f
	nop                                              ; $7781: $00
	adc  a                                           ; $7782: $8f
	nop                                              ; $7783: $00
	add  b                                           ; $7784: $80
	nop                                              ; $7785: $00
	ld   b, b                                        ; $7786: $40
	nop                                              ; $7787: $00
	ld   b, b                                        ; $7788: $40
	nop                                              ; $7789: $00
	jr   nz, jr_098_778c                             ; $778a: $20 $00

jr_098_778c:
	jr   nc, jr_098_778e                             ; $778c: $30 $00

jr_098_778e:
	jr   jr_098_7790                                 ; $778e: $18 $00

jr_098_7790:
	ld   e, $00                                      ; $7790: $1e $00
	ld   hl, $1100                                   ; $7792: $21 $00 $11
	nop                                              ; $7795: $00
	daa                                              ; $7796: $27
	nop                                              ; $7797: $00
	ld   bc, $8000                                   ; $7798: $01 $00 $80
	jr   nz, jr_098_77a5                             ; $779b: $20 $08

	ld   c, b                                        ; $779d: $48
	ld   b, b                                        ; $779e: $40
	sub  b                                           ; $779f: $90
	add  b                                           ; $77a0: $80
	jr   z, jr_098_77a3                              ; $77a1: $28 $00

jr_098_77a3:
	ld   b, b                                        ; $77a3: $40
	nop                                              ; $77a4: $00

jr_098_77a5:
	ld   [hl], b                                     ; $77a5: $70
	adc  l                                           ; $77a6: $8d
	nop                                              ; $77a7: $00
	ld   c, $38                                      ; $77a8: $0e $38
	nop                                              ; $77aa: $00
	ld   b, b                                        ; $77ab: $40
	nop                                              ; $77ac: $00
	ld   a, [$0200]                                  ; $77ad: $fa $00 $02
	nop                                              ; $77b0: $00
	add  c                                           ; $77b1: $81
	nop                                              ; $77b2: $00
	ld   [hl], c                                     ; $77b3: $71
	nop                                              ; $77b4: $00
	ld   l, b                                        ; $77b5: $68
	nop                                              ; $77b6: $00
	add  hl, de                                      ; $77b7: $19
	add  l                                           ; $77b8: $85
	nop                                              ; $77b9: $00
	add  hl, bc                                      ; $77ba: $09
	ld   c, $00                                      ; $77bb: $0e $00
	di                                               ; $77bd: $f3
	nop                                              ; $77be: $00
	db   $fc                                         ; $77bf: $fc
	nop                                              ; $77c0: $00
	ld   c, h                                        ; $77c1: $4c
	nop                                              ; $77c2: $00
	ld   c, h                                        ; $77c3: $4c
	nop                                              ; $77c4: $00
	add  b                                           ; $77c5: $80
	ld   a, b                                        ; $77c6: $78
	ld   a, [bc]                                     ; $77c7: $0a
	ld   a, c                                        ; $77c8: $79
	ld   a, b                                        ; $77c9: $78
	add  b                                           ; $77ca: $80
	nop                                              ; $77cb: $00
	pop  bc                                          ; $77cc: $c1
	nop                                              ; $77cd: $00
	ld   b, e                                        ; $77ce: $43
	nop                                              ; $77cf: $00
	rst  $38                                         ; $77d0: $ff
	nop                                              ; $77d1: $00
	db   $fc                                         ; $77d2: $fc
	add  e                                           ; $77d3: $83
	nop                                              ; $77d4: $00
	inc  c                                           ; $77d5: $0c
	inc  bc                                          ; $77d6: $03
	nop                                              ; $77d7: $00
	rra                                              ; $77d8: $1f
	nop                                              ; $77d9: $00
	db   $fc                                         ; $77da: $fc
	nop                                              ; $77db: $00
	pop  hl                                          ; $77dc: $e1
	nop                                              ; $77dd: $00
	rlca                                             ; $77de: $07
	nop                                              ; $77df: $00
	or   $00                                         ; $77e0: $f6 $00
	ldh  a, [$87]                                    ; $77e2: $f0 $87
	nop                                              ; $77e4: $00
	ld   c, $01                                      ; $77e5: $0e $01
	nop                                              ; $77e7: $00
	ld   [bc], a                                     ; $77e8: $02
	nop                                              ; $77e9: $00
	inc  c                                           ; $77ea: $0c
	nop                                              ; $77eb: $00
	ldh  a, [rP1]                                    ; $77ec: $f0 $00
	db   $e4                                         ; $77ee: $e4
	nop                                              ; $77ef: $00
	sbc  l                                           ; $77f0: $9d
	nop                                              ; $77f1: $00
	ld   b, [hl]                                     ; $77f2: $46
	nop                                              ; $77f3: $00
	and  b                                           ; $77f4: $a0
	add  c                                           ; $77f5: $81
	nop                                              ; $77f6: $00
	ld   b, $10                                      ; $77f7: $06 $10
	nop                                              ; $77f9: $00
	ld   b, b                                        ; $77fa: $40
	nop                                              ; $77fb: $00
	ld   [hl], b                                     ; $77fc: $70
	nop                                              ; $77fd: $00
	ld   b, b                                        ; $77fe: $40
	and  c                                           ; $77ff: $a1
	nop                                              ; $7800: $00
	ld   b, $3f                                      ; $7801: $06 $3f
	nop                                              ; $7803: $00
	jr   c, jr_098_7806                              ; $7804: $38 $00

jr_098_7806:
	inc  b                                           ; $7806: $04
	nop                                              ; $7807: $00
	ld   [bc], a                                     ; $7808: $02
	add  c                                           ; $7809: $81
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	ld   bc, $0081                                   ; $780c: $01 $81 $00
	ld   c, $18                                      ; $780f: $0e $18
	nop                                              ; $7811: $00
	ld   d, a                                        ; $7812: $57
	nop                                              ; $7813: $00
	adc  b                                           ; $7814: $88
	nop                                              ; $7815: $00
	call nc, $3200                                   ; $7816: $d4 $00 $32
	nop                                              ; $7819: $00
	ld   d, c                                        ; $781a: $51
	nop                                              ; $781b: $00
	add  b                                           ; $781c: $80
	nop                                              ; $781d: $00
	ld   [$0081], sp                                 ; $781e: $08 $81 $00
	inc  h                                           ; $7821: $24
	inc  b                                           ; $7822: $04
	nop                                              ; $7823: $00
	jr   nz, jr_098_7826                             ; $7824: $20 $00

jr_098_7826:
	and  b                                           ; $7826: $a0
	nop                                              ; $7827: $00
	ld   h, b                                        ; $7828: $60
	nop                                              ; $7829: $00
	dec  h                                           ; $782a: $25
	nop                                              ; $782b: $00
	jr   nc, jr_098_782e                             ; $782c: $30 $00

jr_098_782e:
	jp   c, Jump_098_6100                            ; $782e: $da $00 $61

	nop                                              ; $7831: $00
	pop  bc                                          ; $7832: $c1
	nop                                              ; $7833: $00
	or   b                                           ; $7834: $b0
	nop                                              ; $7835: $00
	pop  bc                                          ; $7836: $c1
	nop                                              ; $7837: $00
	ld   bc, $0b00                                   ; $7838: $01 $00 $0b
	nop                                              ; $783b: $00
	ld   b, h                                        ; $783c: $44
	nop                                              ; $783d: $00
	ret  nz                                          ; $783e: $c0

	nop                                              ; $783f: $00
	ld   [$8200], sp                                 ; $7840: $08 $00 $82
	nop                                              ; $7843: $00
	inc  a                                           ; $7844: $3c
	nop                                              ; $7845: $00
	jp   nz, $0081                                   ; $7846: $c2 $81 $00

	nop                                              ; $7849: $00
	add  h                                           ; $784a: $84
	add  l                                           ; $784b: $85
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	add  h                                           ; $784e: $84
	add  e                                           ; $784f: $83
	nop                                              ; $7850: $00
	ld   [$0008], sp                                 ; $7851: $08 $08 $00
	ld   b, c                                        ; $7854: $41
	nop                                              ; $7855: $00
	ld   d, c                                        ; $7856: $51
	nop                                              ; $7857: $00
	ld   h, b                                        ; $7858: $60
	nop                                              ; $7859: $00
	add  b                                           ; $785a: $80
	add  c                                           ; $785b: $81
	nop                                              ; $785c: $00
	add  b                                           ; $785d: $80
	ld   [$9403], sp                                 ; $785e: $08 $03 $94
	inc  d                                           ; $7861: $14
	ld   c, d                                        ; $7862: $4a
	ld   a, [bc]                                     ; $7863: $0a
	add  b                                           ; $7864: $80
	dec  b                                           ; $7865: $05
	ld   [bc], a                                     ; $7866: $02
	ld   a, [hl+]                                    ; $7867: $2a
	ld   a, [bc]                                     ; $7868: $0a
	ldh  [$8d], a                                    ; $7869: $e0 $8d
	nop                                              ; $786b: $00
	ld   [bc], a                                     ; $786c: $02
	rra                                              ; $786d: $1f
	nop                                              ; $786e: $00
	rra                                              ; $786f: $1f
	add  e                                           ; $7870: $83
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	rst  $38                                         ; $7873: $ff
	add  e                                           ; $7874: $83
	nop                                              ; $7875: $00
	ld   c, $01                                      ; $7876: $0e $01
	nop                                              ; $7878: $00
	rlca                                             ; $7879: $07

jr_098_787a:
	nop                                              ; $787a: $00
	rra                                              ; $787b: $1f
	nop                                              ; $787c: $00
	ld   a, [hl]                                     ; $787d: $7e
	nop                                              ; $787e: $00
	ld   a, c                                        ; $787f: $79
	nop                                              ; $7880: $00
	jr   nz, jr_098_7883                             ; $7881: $20 $00

jr_098_7883:
	ld   hl, $1000                                   ; $7883: $21 $00 $10
	add  c                                           ; $7886: $81
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	adc  b                                           ; $7889: $88
	add  c                                           ; $788a: $81
	nop                                              ; $788b: $00
	ld   [$0044], sp                                 ; $788c: $08 $44 $00
	jr   c, jr_098_7891                              ; $788f: $38 $00

jr_098_7891:
	inc  c                                           ; $7891: $0c
	nop                                              ; $7892: $00
	adc  b                                           ; $7893: $88
	nop                                              ; $7894: $00
	add  b                                           ; $7895: $80
	add  c                                           ; $7896: $81
	nop                                              ; $7897: $00
	ld   c, $82                                      ; $7898: $0e $82
	nop                                              ; $789a: $00
	ld   a, d                                        ; $789b: $7a
	nop                                              ; $789c: $00
	inc  e                                           ; $789d: $1c
	nop                                              ; $789e: $00
	inc  [hl]                                        ; $789f: $34
	nop                                              ; $78a0: $00
	ld   [hl], b                                     ; $78a1: $70
	nop                                              ; $78a2: $00
	jr   nz, jr_098_78a5                             ; $78a3: $20 $00

jr_098_78a5:
	pop  bc                                          ; $78a5: $c1
	nop                                              ; $78a6: $00
	ld   b, d                                        ; $78a7: $42
	add  e                                           ; $78a8: $83
	nop                                              ; $78a9: $00
	ld   a, [bc]                                     ; $78aa: $0a
	ld   bc, $4200                                   ; $78ab: $01 $00 $42
	nop                                              ; $78ae: $00
	ld   e, h                                        ; $78af: $5c
	nop                                              ; $78b0: $00
	ld   [bc], a                                     ; $78b1: $02
	nop                                              ; $78b2: $00
	ld   a, [de]                                     ; $78b3: $1a
	nop                                              ; $78b4: $00
	ld   b, h                                        ; $78b5: $44
	add  a                                           ; $78b6: $87
	nop                                              ; $78b7: $00
	inc  c                                           ; $78b8: $0c
	ld   c, h                                        ; $78b9: $4c
	nop                                              ; $78ba: $00
	ld   [de], a                                     ; $78bb: $12
	nop                                              ; $78bc: $00
	sub  c                                           ; $78bd: $91
	nop                                              ; $78be: $00
	ld   c, b                                        ; $78bf: $48
	nop                                              ; $78c0: $00
	and  l                                           ; $78c1: $a5
	nop                                              ; $78c2: $00
	ld   d, d                                        ; $78c3: $52
	nop                                              ; $78c4: $00
	jr   nc, @-$7d                                   ; $78c5: $30 $81

	nop                                              ; $78c7: $00
	inc  b                                           ; $78c8: $04
	ld   b, $00                                      ; $78c9: $06 $00
	dec  b                                           ; $78cb: $05
	nop                                              ; $78cc: $00
	inc  bc                                          ; $78cd: $03
	add  e                                           ; $78ce: $83
	nop                                              ; $78cf: $00
	ld   [bc], a                                     ; $78d0: $02
	rra                                              ; $78d1: $1f
	nop                                              ; $78d2: $00
	rra                                              ; $78d3: $1f
	add  e                                           ; $78d4: $83
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	adc  b                                           ; $78d7: $88
	add  c                                           ; $78d8: $81
	nop                                              ; $78d9: $00
	inc  b                                           ; $78da: $04
	adc  b                                           ; $78db: $88
	nop                                              ; $78dc: $00
	add  b                                           ; $78dd: $80
	nop                                              ; $78de: $00
	add  b                                           ; $78df: $80
	add  l                                           ; $78e0: $85
	nop                                              ; $78e1: $00
	ld   b, $80                                      ; $78e2: $06 $80
	nop                                              ; $78e4: $00
	ld   b, b                                        ; $78e5: $40
	nop                                              ; $78e6: $00
	ret  nz                                          ; $78e7: $c0

	nop                                              ; $78e8: $00
	ld   h, b                                        ; $78e9: $60
	add  c                                           ; $78ea: $81
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	ld   b, b                                        ; $78ed: $40
	add  e                                           ; $78ee: $83
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	jr   nz, jr_098_787a                             ; $78f1: $20 $87

	nop                                              ; $78f3: $00
	add  b                                           ; $78f4: $80
	ld   bc, $030f                                   ; $78f5: $01 $0f $03
	ld   [bc], a                                     ; $78f8: $02
	ld   b, $07                                      ; $78f9: $06 $07
	rrca                                             ; $78fb: $0f
	ld   [$131b], sp                                 ; $78fc: $08 $1b $13
	nop                                              ; $78ff: $00
	ld   [$0501], sp                                 ; $7900: $08 $01 $05
	nop                                              ; $7903: $00
	ld   [bc], a                                     ; $7904: $02
	nop                                              ; $7905: $00
	ld   bc, $0086                                   ; $7906: $01 $86 $00
	ld   a, [bc]                                     ; $7909: $0a
	jr   nz, jr_098_790c                             ; $790a: $20 $00

jr_098_790c:
	ld   h, b                                        ; $790c: $60
	nop                                              ; $790d: $00
	ld   b, e                                        ; $790e: $43
	nop                                              ; $790f: $00
	add  b                                           ; $7910: $80
	nop                                              ; $7911: $00
	ldh  a, [rP1]                                    ; $7912: $f0 $00
	dec  bc                                          ; $7914: $0b
	add  c                                           ; $7915: $81
	nop                                              ; $7916: $00
	ld   b, $49                                      ; $7917: $06 $49
	nop                                              ; $7919: $00
	ret  nz                                          ; $791a: $c0

	nop                                              ; $791b: $00
	ldh  a, [rP1]                                    ; $791c: $f0 $00
	ld   bc, $0089                                   ; $791e: $01 $89 $00
	ld   de, $0001                                   ; $7921: $11 $01 $00
	inc  bc                                          ; $7924: $03
	nop                                              ; $7925: $00
	cp   $00                                         ; $7926: $fe $00
	inc  b                                           ; $7928: $04
	nop                                              ; $7929: $00
	add  hl, bc                                      ; $792a: $09
	nop                                              ; $792b: $00
	add  c                                           ; $792c: $81
	nop                                              ; $792d: $00
	ld   [hl], b                                     ; $792e: $70
	nop                                              ; $792f: $00
	pop  bc                                          ; $7930: $c1
	nop                                              ; $7931: $00
	ld   sp, $8000                                   ; $7932: $31 $00 $80
	ld   bc, $0908                                   ; $7935: $01 $08 $09
	ld   bc, $00c0                                   ; $7938: $01 $c0 $00
	ld   sp, $0800                                   ; $793b: $31 $00 $08
	nop                                              ; $793e: $00
	ld   bc, $00ff                                   ; $793f: $01 $ff $00
	rst  $38                                         ; $7942: $ff
	nop                                              ; $7943: $00
	rst  $38                                         ; $7944: $ff
	nop                                              ; $7945: $00
	rst  $38                                         ; $7946: $ff
	nop                                              ; $7947: $00
	rst  $38                                         ; $7948: $ff
	nop                                              ; $7949: $00
	rst  $38                                         ; $794a: $ff
	nop                                              ; $794b: $00
	rst  $38                                         ; $794c: $ff
	nop                                              ; $794d: $00
	rst  $38                                         ; $794e: $ff
	nop                                              ; $794f: $00
	rst  $38                                         ; $7950: $ff
	nop                                              ; $7951: $00
	rst  $38                                         ; $7952: $ff
	nop                                              ; $7953: $00

jr_098_7954:
	rst  $38                                         ; $7954: $ff
	nop                                              ; $7955: $00
	sub  d                                           ; $7956: $92
	nop                                              ; $7957: $00
	add  b                                           ; $7958: $80
	rrca                                             ; $7959: $0f
	add  d                                           ; $795a: $82
	rst  $38                                         ; $795b: $ff
	rlca                                             ; $795c: $07
	sbc  a                                           ; $795d: $9f
	ld   a, e                                        ; $795e: $7b
	ld   [hl+], a                                    ; $795f: $22
	cp   a                                           ; $7960: $bf
	sbc  c                                           ; $7961: $99
	rst  JumpTable                                         ; $7962: $df
	adc  $ee                                         ; $7963: $ce $ee
	add  b                                           ; $7965: $80
	ldh  [rAUD4ENV], a                               ; $7966: $e0 $21
	db   $e4                                         ; $7968: $e4
	db   $f4                                         ; $7969: $f4
	db   $fc                                         ; $796a: $fc
	cp   l                                           ; $796b: $bd
	xor  a                                           ; $796c: $af
	cp   $99                                         ; $796d: $fe $99
	ld   sp, hl                                      ; $796f: $f9
	ld   h, b                                        ; $7970: $60
	and  $82                                         ; $7971: $e6 $82
	sbc  [hl]                                        ; $7973: $9e
	ld   [$497b], sp                                 ; $7974: $08 $7b $49
	push af                                          ; $7977: $f5
	call nc, $1e3f                                   ; $7978: $d4 $3f $1e
	sbc  a                                           ; $797b: $9f
	xor  a                                           ; $797c: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $797d: $cf
	rst  $10                                         ; $797e: $d7
	ld   [hl], a                                     ; $797f: $77
	ld   a, e                                        ; $7980: $7b
	ld   [hl-], a                                    ; $7981: $32
	rst  $30                                         ; $7982: $f7
	reti                                             ; $7983: $d9


	ld   a, a                                        ; $7984: $7f
	ld   h, [hl]                                     ; $7985: $66
	ld   [hl], c                                     ; $7986: $71
	ld   [hl], a                                     ; $7987: $77
	add  l                                           ; $7988: $85
	add  d                                           ; $7989: $82
	add  b                                           ; $798a: $80
	cp   d                                           ; $798b: $ba
	inc  bc                                          ; $798c: $03
	ld   [hl+], a                                    ; $798d: $22
	and  d                                           ; $798e: $a2
	xor  d                                           ; $798f: $aa
	ld   a, [hl+]                                    ; $7990: $2a
	add  b                                           ; $7991: $80
	xor  d                                           ; $7992: $aa
	inc  bc                                          ; $7993: $03
	ld   a, [hl+]                                    ; $7994: $2a
	xor  d                                           ; $7995: $aa
	and  d                                           ; $7996: $a2
	xor  d                                           ; $7997: $aa
	add  b                                           ; $7998: $80
	ld   a, [hl+]                                    ; $7999: $2a
	rlca                                             ; $799a: $07
	ld   [hl], b                                     ; $799b: $70
	ld   [bc], a                                     ; $799c: $02
	dec  bc                                          ; $799d: $0b
	dec  b                                           ; $799e: $05
	inc  b                                           ; $799f: $04
	rlca                                             ; $79a0: $07
	rst  $30                                         ; $79a1: $f7
	nop                                              ; $79a2: $00
	add  b                                           ; $79a3: $80
	rst  $38                                         ; $79a4: $ff
	add  b                                           ; $79a5: $80
	nop                                              ; $79a6: $00
	add  b                                           ; $79a7: $80
	rst  $38                                         ; $79a8: $ff
	add  b                                           ; $79a9: $80
	nop                                              ; $79aa: $00
	inc  b                                           ; $79ab: $04
	inc  bc                                          ; $79ac: $03
	cp   b                                           ; $79ad: $b8
	cp   c                                           ; $79ae: $b9
	ld   [hl], l                                     ; $79af: $75
	ld   [hl], a                                     ; $79b0: $77
	add  b                                           ; $79b1: $80
	push af                                          ; $79b2: $f5
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	add  b                                           ; $79b5: $80
	rst  $38                                         ; $79b6: $ff
	add  b                                           ; $79b7: $80
	nop                                              ; $79b8: $00
	add  b                                           ; $79b9: $80
	rst  $38                                         ; $79ba: $ff
	add  b                                           ; $79bb: $80
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	ld   b, $80                                      ; $79be: $06 $80
	or   $80                                         ; $79c0: $f6 $80
	or   [hl]                                        ; $79c2: $b6
	ld   [bc], a                                     ; $79c3: $02
	add  $c0                                         ; $79c4: $c6 $c0
	nop                                              ; $79c6: $00
	add  b                                           ; $79c7: $80
	rst  $38                                         ; $79c8: $ff
	add  b                                           ; $79c9: $80
	nop                                              ; $79ca: $00
	add  b                                           ; $79cb: $80
	rst  $38                                         ; $79cc: $ff
	add  b                                           ; $79cd: $80
	nop                                              ; $79ce: $00
	ld   [bc], a                                     ; $79cf: $02
	dec  b                                           ; $79d0: $05
	inc  e                                           ; $79d1: $1c
	jr   jr_098_7954                                 ; $79d2: $18 $80

	ld   c, h                                        ; $79d4: $4c
	add  b                                           ; $79d5: $80
	ld   d, h                                        ; $79d6: $54
	dec  bc                                          ; $79d7: $0b
	ld   b, h                                        ; $79d8: $44
	ld   d, h                                        ; $79d9: $54
	sub  h                                           ; $79da: $94
	call nz, $0044                                   ; $79db: $c4 $44 $00
	sub  h                                           ; $79de: $94
	sub  d                                           ; $79df: $92
	ld   [de], a                                     ; $79e0: $12
	db   $ed                                         ; $79e1: $ed
	nop                                              ; $79e2: $00
	ld   [bc], a                                     ; $79e3: $02
	add  c                                           ; $79e4: $81
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	ld   bc, $0087                                   ; $79e7: $01 $87 $00
	inc  bc                                          ; $79ea: $03
	rst  $28                                         ; $79eb: $ef
	ldh  a, [$d0]                                    ; $79ec: $f0 $d0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79ee: $cf
	add  b                                           ; $79ef: $80
	rst  ToBoot                                         ; $79f0: $c7
	nop                                              ; $79f1: $00
	rst  $20                                         ; $79f2: $e7
	add  c                                           ; $79f3: $81
	ld   h, a                                        ; $79f4: $67
	ld   bc, $33f3                                   ; $79f5: $01 $f3 $33
	add  b                                           ; $79f8: $80
	dec  sp                                          ; $79f9: $3b
	inc  b                                           ; $79fa: $04
	ld   a, h                                        ; $79fb: $7c
	inc  e                                           ; $79fc: $1c
	rst  ToBoot                                         ; $79fd: $c7
	rra                                              ; $79fe: $1f
	rlca                                             ; $79ff: $07
	adc  e                                           ; $7a00: $8b
	rst  $38                                         ; $7a01: $ff
	ld   [bc], a                                     ; $7a02: $02
	ld   sp, hl                                      ; $7a03: $f9
	cp   $fb                                         ; $7a04: $fe $fb
	add  l                                           ; $7a06: $85
	rst  $38                                         ; $7a07: $ff
	nop                                              ; $7a08: $00
	ei                                               ; $7a09: $fb
	add  e                                           ; $7a0a: $83
	rst  $38                                         ; $7a0b: $ff
	dec  b                                           ; $7a0c: $05
	ld   sp, hl                                      ; $7a0d: $f9
	rra                                              ; $7a0e: $1f
	db   $dd                                         ; $7a0f: $dd
	rst  ToBoot                                         ; $7a10: $c7
	sbc  h                                           ; $7a11: $9c
	ret  c                                           ; $7a12: $d8

	add  d                                           ; $7a13: $82
	rst  JumpTable                                         ; $7a14: $df
	add  b                                           ; $7a15: $80
	reti                                             ; $7a16: $d9


	add  b                                           ; $7a17: $80
	sub  $08                                         ; $7a18: $d6 $08
	jp   $e68f                                       ; $7a1a: $c3 $8f $e6


	add  sp, -$3c                                    ; $7a1d: $e8 $c4
	jp   nz, $223e                                   ; $7a1f: $c2 $3e $22

	ldh  a, [c]                                      ; $7a22: $f2
	add  l                                           ; $7a23: $85
	ld   [$6a80], a                                  ; $7a24: $ea $80 $6a
	nop                                              ; $7a27: $00
	rst  $38                                         ; $7a28: $ff
	add  l                                           ; $7a29: $85
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	ld   bc, $0083                                   ; $7a2c: $01 $83 $00
	ld   [bc], a                                     ; $7a2f: $02
	ld   [bc], a                                     ; $7a30: $02
	ld   bc, $807d                                   ; $7a31: $01 $7d $80
	cpl                                              ; $7a34: $2f
	inc  de                                          ; $7a35: $13
	scf                                              ; $7a36: $37
	or   a                                           ; $7a37: $b7
	ld   [hl], a                                     ; $7a38: $77
	ld   a, a                                        ; $7a39: $7f
	ld   l, [hl]                                     ; $7a3a: $6e
	ld   l, d                                        ; $7a3b: $6a
	adc  l                                           ; $7a3c: $8d
	add  l                                           ; $7a3d: $85
	ld   [hl], l                                     ; $7a3e: $75
	ld   [hl], b                                     ; $7a3f: $70
	xor  d                                           ; $7a40: $aa
	xor  b                                           ; $7a41: $a8
	ld   e, b                                        ; $7a42: $58
	ld   e, e                                        ; $7a43: $5b
	nop                                              ; $7a44: $00
	inc  a                                           ; $7a45: $3c
	inc  l                                           ; $7a46: $2c
	ld   c, d                                        ; $7a47: $4a
	ld   e, d                                        ; $7a48: $5a
	ld   h, [hl]                                     ; $7a49: $66
	add  b                                           ; $7a4a: $80
	ld   h, $00                                      ; $7a4b: $26 $00
	ld   h, [hl]                                     ; $7a4d: $66
	add  b                                           ; $7a4e: $80
	ld   e, d                                        ; $7a4f: $5a
	add  b                                           ; $7a50: $80
	inc  a                                           ; $7a51: $3c
	add  d                                           ; $7a52: $82
	nop                                              ; $7a53: $00
	add  b                                           ; $7a54: $80
	rst  $38                                         ; $7a55: $ff
	add  b                                           ; $7a56: $80
	nop                                              ; $7a57: $00
	inc  bc                                          ; $7a58: $03
	ld   a, [$fa02]                                  ; $7a59: $fa $02 $fa
	ld   [bc], a                                     ; $7a5c: $02
	add  b                                           ; $7a5d: $80
	cp   $80                                         ; $7a5e: $fe $80
	nop                                              ; $7a60: $00
	inc  bc                                          ; $7a61: $03
	rst  $38                                         ; $7a62: $ff
	nop                                              ; $7a63: $00
	rst  $38                                         ; $7a64: $ff
	nop                                              ; $7a65: $00
	add  b                                           ; $7a66: $80
	rst  $38                                         ; $7a67: $ff
	add  b                                           ; $7a68: $80
	nop                                              ; $7a69: $00
	add  b                                           ; $7a6a: $80
	rst  $38                                         ; $7a6b: $ff
	add  b                                           ; $7a6c: $80
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	rst  $38                                         ; $7a6f: $ff
	add  e                                           ; $7a70: $83
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	xor  d                                           ; $7a73: $aa
	add  a                                           ; $7a74: $87
	ld   b, h                                        ; $7a75: $44
	ld   bc, $4454                                   ; $7a76: $01 $54 $44
	add  b                                           ; $7a79: $80
	ld   e, h                                        ; $7a7a: $5c
	add  b                                           ; $7a7b: $80
	ld   b, b                                        ; $7a7c: $40
	nop                                              ; $7a7d: $00
	ld   d, [hl]                                     ; $7a7e: $56
	adc  l                                           ; $7a7f: $8d
	ld   d, b                                        ; $7a80: $50
	nop                                              ; $7a81: $00
	ld   hl, sp-$73                                  ; $7a82: $f8 $8d
	nop                                              ; $7a84: $00
	ld   bc, $00ff                                   ; $7a85: $01 $ff $00
	add  b                                           ; $7a88: $80
	rst  $38                                         ; $7a89: $ff
	add  b                                           ; $7a8a: $80
	nop                                              ; $7a8b: $00
	add  b                                           ; $7a8c: $80
	rst  $38                                         ; $7a8d: $ff
	add  b                                           ; $7a8e: $80
	nop                                              ; $7a8f: $00
	rlca                                             ; $7a90: $07
	ld   hl, sp+$01                                  ; $7a91: $f8 $01
	ld   a, [de]                                     ; $7a93: $1a
	inc  b                                           ; $7a94: $04
	jr   z, jr_098_7aa7                              ; $7a95: $28 $10

	rst  JumpTable                                         ; $7a97: $df
	nop                                              ; $7a98: $00
	add  b                                           ; $7a99: $80
	rst  $38                                         ; $7a9a: $ff
	add  b                                           ; $7a9b: $80
	nop                                              ; $7a9c: $00
	add  b                                           ; $7a9d: $80
	rst  $38                                         ; $7a9e: $ff
	add  c                                           ; $7a9f: $81
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	rst  $38                                         ; $7aa2: $ff
	add  b                                           ; $7aa3: $80
	ccf                                              ; $7aa4: $3f
	add  b                                           ; $7aa5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aa6: $cf

jr_098_7aa7:
	ld   bc, $00ff                                   ; $7aa7: $01 $ff $00
	add  b                                           ; $7aaa: $80
	rst  $38                                         ; $7aab: $ff
	add  b                                           ; $7aac: $80
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	ld   b, b                                        ; $7aaf: $40
	add  b                                           ; $7ab0: $80
	ld   e, a                                        ; $7ab1: $5f
	nop                                              ; $7ab2: $00
	ld   b, b                                        ; $7ab3: $40
	add  b                                           ; $7ab4: $80
	ld   a, a                                        ; $7ab5: $7f
	add  c                                           ; $7ab6: $81
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	rst  $38                                         ; $7ab9: $ff
	add  h                                           ; $7aba: $84
	nop                                              ; $7abb: $00
	ld   c, $01                                      ; $7abc: $0e $01
	nop                                              ; $7abe: $00
	inc  bc                                          ; $7abf: $03
	ld   bc, $0905                                   ; $7ac0: $01 $05 $09
	ld   [de], a                                     ; $7ac3: $12
	rlca                                             ; $7ac4: $07
	daa                                              ; $7ac5: $27
	dec  e                                           ; $7ac6: $1d
	ld   e, a                                        ; $7ac7: $5f
	ld   bc, $5ee3                                   ; $7ac8: $01 $e3 $5e
	inc  a                                           ; $7acb: $3c
	add  b                                           ; $7acc: $80
	ld   [bc], a                                     ; $7acd: $02
	ld   [$3e3a], sp                                 ; $7ace: $08 $3a $3e
	ld   a, h                                        ; $7ad1: $7c
	ld   a, c                                        ; $7ad2: $79
	rst  $38                                         ; $7ad3: $ff
	ld   e, $e0                                      ; $7ad4: $1e $e0
	nop                                              ; $7ad6: $00
	rst  $38                                         ; $7ad7: $ff
	add  b                                           ; $7ad8: $80
	rst  $30                                         ; $7ad9: $f7
	add  b                                           ; $7ada: $80
	ei                                               ; $7adb: $fb
	add  c                                           ; $7adc: $81
	rst  $38                                         ; $7add: $ff
	add  hl, bc                                      ; $7ade: $09
	ld   a, a                                        ; $7adf: $7f
	rst  JumpTable                                         ; $7ae0: $df
	cp   a                                           ; $7ae1: $bf
	rrca                                             ; $7ae2: $0f
	ld   e, a                                        ; $7ae3: $5f
	ld   b, a                                        ; $7ae4: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae5: $cf
	ld   h, e                                        ; $7ae6: $63
	or   a                                           ; $7ae7: $b7
	inc  de                                          ; $7ae8: $13
	add  [hl]                                        ; $7ae9: $86
	rst  $38                                         ; $7aea: $ff
	rlca                                             ; $7aeb: $07
	cp   $fb                                         ; $7aec: $fe $fb
	db   $fd                                         ; $7aee: $fd
	db   $e4                                         ; $7aef: $e4
	db   $fd                                         ; $7af0: $fd
	db   $dd                                         ; $7af1: $dd
	db   $fd                                         ; $7af2: $fd
	db   $e3                                         ; $7af3: $e3
	add  c                                           ; $7af4: $81
	xor  d                                           ; $7af5: $aa
	nop                                              ; $7af6: $00
	and  d                                           ; $7af7: $a2
	add  d                                           ; $7af8: $82
	xor  d                                           ; $7af9: $aa
	ld   [bc], a                                     ; $7afa: $02
	ld   a, [hl+]                                    ; $7afb: $2a
	ld   [hl+], a                                    ; $7afc: $22
	and  d                                           ; $7afd: $a2
	add  b                                           ; $7afe: $80
	ld   a, [hl-]                                    ; $7aff: $3a
	add  b                                           ; $7b00: $80
	ld   [bc], a                                     ; $7b01: $02
	inc  b                                           ; $7b02: $04
	add  c                                           ; $7b03: $81
	db   $eb                                         ; $7b04: $eb
	ld   a, [$e5f5]                                  ; $7b05: $fa $f5 $e5
	add  b                                           ; $7b08: $80
	ld   a, [rRAMG]                                  ; $7b09: $fa $00 $00
	add  b                                           ; $7b0c: $80
	rst  $38                                         ; $7b0d: $ff
	add  b                                           ; $7b0e: $80
	nop                                              ; $7b0f: $00
	add  b                                           ; $7b10: $80
	rst  $38                                         ; $7b11: $ff
	add  b                                           ; $7b12: $80
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	ld   d, a                                        ; $7b15: $57
	add  e                                           ; $7b16: $83
	ld   d, b                                        ; $7b17: $50
	ld   a, [bc]                                     ; $7b18: $0a
	ld   a, b                                        ; $7b19: $78
	nop                                              ; $7b1a: $00
	ld   hl, sp+$00                                  ; $7b1b: $f8 $00
	adc  h                                           ; $7b1d: $8c
	ld   l, b                                        ; $7b1e: $68
	ld   h, d                                        ; $7b1f: $62
	nop                                              ; $7b20: $00
	pop  hl                                          ; $7b21: $e1
	ld   a, [bc]                                     ; $7b22: $0a
	dec  d                                           ; $7b23: $15
	adc  e                                           ; $7b24: $8b
	nop                                              ; $7b25: $00
	ld   [bc], a                                     ; $7b26: $02
	db   $fc                                         ; $7b27: $fc
	nop                                              ; $7b28: $00
	db   $fc                                         ; $7b29: $fc
	add  e                                           ; $7b2a: $83
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	ld   bc, $0080                                   ; $7b2d: $01 $80 $00
	ld   a, [bc]                                     ; $7b30: $0a
	ld   [bc], a                                     ; $7b31: $02
	dec  b                                           ; $7b32: $05
	nop                                              ; $7b33: $00
	ld   bc, $fb03                                   ; $7b34: $01 $03 $fb
	ld   bc, $3c82                                   ; $7b37: $01 $82 $3c
	cp   e                                           ; $7b3a: $bb
	ld   a, e                                        ; $7b3b: $7b
	add  b                                           ; $7b3c: $80
	ld   [hl], e                                     ; $7b3d: $73
	nop                                              ; $7b3e: $00
	ld   h, a                                        ; $7b3f: $67
	add  c                                           ; $7b40: $81
	rst  $20                                         ; $7b41: $e7
	ld   a, [bc]                                     ; $7b42: $0a

jr_098_7b43:
	rst  ToBoot                                         ; $7b43: $c7
	add  a                                           ; $7b44: $87
	dec  [hl]                                        ; $7b45: $35
	ld   [hl], c                                     ; $7b46: $71
	adc  e                                           ; $7b47: $8b
	adc  a                                           ; $7b48: $8f
	rst  $38                                         ; $7b49: $ff
	ldh  a, [$f7]                                    ; $7b4a: $f0 $f7
	rst  $38                                         ; $7b4c: $ff
	ld   hl, sp-$7c                                  ; $7b4d: $f8 $84
	rst  $38                                         ; $7b4f: $ff
	add  b                                           ; $7b50: $80
	db   $fd                                         ; $7b51: $fd
	add  b                                           ; $7b52: $80
	rst  JumpTable                                         ; $7b53: $df
	rlca                                             ; $7b54: $07
	rst  $38                                         ; $7b55: $ff
	cp   c                                           ; $7b56: $b9
	ld   [hl], a                                     ; $7b57: $77
	or   d                                           ; $7b58: $b2
	ei                                               ; $7b59: $fb
	ld   a, e                                        ; $7b5a: $7b
	ei                                               ; $7b5b: $fb
	ld   sp, hl                                      ; $7b5c: $f9
	add  d                                           ; $7b5d: $82
	db   $fd                                         ; $7b5e: $fd
	ld   bc, $feff                                   ; $7b5f: $01 $ff $fe
	add  b                                           ; $7b62: $80
	sbc  $03                                         ; $7b63: $de $03
	cp   $e0                                         ; $7b65: $fe $e0
	cp   $ee                                         ; $7b67: $fe $ee
	add  c                                           ; $7b69: $81
	cp   $00                                         ; $7b6a: $fe $00
	ld   [hl], a                                     ; $7b6c: $77
	add  c                                           ; $7b6d: $81
	rst  $38                                         ; $7b6e: $ff
	nop                                              ; $7b6f: $00
	cp   e                                           ; $7b70: $bb
	add  b                                           ; $7b71: $80
	rst  $38                                         ; $7b72: $ff
	rlca                                             ; $7b73: $07
	rst  ToBoot                                         ; $7b74: $c7
	scf                                              ; $7b75: $37
	dec  bc                                          ; $7b76: $0b
	ld   [hl-], a                                    ; $7b77: $32
	ld   [$eaca], a                                  ; $7b78: $ea $ca $ea
	jp   z, $0a80                                    ; $7b7b: $ca $80 $0a

	add  c                                           ; $7b7e: $81
	ld   l, d                                        ; $7b7f: $6a
	ld   bc, $6a2a                                   ; $7b80: $01 $2a $6a
	add  d                                           ; $7b83: $82
	xor  d                                           ; $7b84: $aa
	inc  bc                                          ; $7b85: $03
	jr   jr_098_7b43                                 ; $7b86: $18 $bb

	add  e                                           ; $7b88: $83
	nop                                              ; $7b89: $00
	add  b                                           ; $7b8a: $80
	ld   a, a                                        ; $7b8b: $7f
	add  c                                           ; $7b8c: $81
	ld   b, b                                        ; $7b8d: $40
	ld   [bc], a                                     ; $7b8e: $02
	ld   e, a                                        ; $7b8f: $5f
	rra                                              ; $7b90: $1f
	nop                                              ; $7b91: $00
	add  b                                           ; $7b92: $80
	rst  $38                                         ; $7b93: $ff
	add  b                                           ; $7b94: $80
	nop                                              ; $7b95: $00
	rla                                              ; $7b96: $17
	ld   bc, $4b09                                   ; $7b97: $01 $09 $4b
	ld   d, d                                        ; $7b9a: $52
	add  hl, de                                      ; $7b9b: $19
	dec  de                                          ; $7b9c: $1b
	rla                                              ; $7b9d: $17
	ld   d, a                                        ; $7b9e: $57
	ld   d, e                                        ; $7b9f: $53
	ld   d, a                                        ; $7ba0: $57
	rst  ToBoot                                         ; $7ba1: $c7
	ld   d, $e6                                      ; $7ba2: $16 $e6
	ld   [bc], a                                     ; $7ba4: $02
	ld   a, [hl-]                                    ; $7ba5: $3a
	ld   b, d                                        ; $7ba6: $42
	ld   a, [de]                                     ; $7ba7: $1a
	ldh  a, [$30]                                    ; $7ba8: $f0 $30
	dec  c                                           ; $7baa: $0d
	call nc, $a5a4                                   ; $7bab: $d4 $a4 $a5
	ld   h, e                                        ; $7bae: $63
	add  c                                           ; $7baf: $81
	ld   a, e                                        ; $7bb0: $7b
	add  b                                           ; $7bb1: $80
	db   $db                                         ; $7bb2: $db
	add  b                                           ; $7bb3: $80
	ei                                               ; $7bb4: $fb
	add  b                                           ; $7bb5: $80
	ld   hl, sp+$04                                  ; $7bb6: $f8 $04
	db   $fc                                         ; $7bb8: $fc
	db   $e4                                         ; $7bb9: $e4
	ldh  [c], a                                      ; $7bba: $e2
	ld   [bc], a                                     ; $7bbb: $02
	inc  bc                                          ; $7bbc: $03
	add  b                                           ; $7bbd: $80
	ei                                               ; $7bbe: $fb
	ld   a, [bc]                                     ; $7bbf: $0a
	ld   a, [$f8fd]                                  ; $7bc0: $fa $fd $f8
	db   $fc                                         ; $7bc3: $fc
	ld   hl, sp-$0d                                  ; $7bc4: $f8 $f3
	ldh  a, [$74]                                    ; $7bc6: $f0 $74
	ld   a, b                                        ; $7bc8: $78
	ld   [hl], b                                     ; $7bc9: $70
	ld   a, a                                        ; $7bca: $7f
	add  b                                           ; $7bcb: $80
	rra                                              ; $7bcc: $1f
	add  b                                           ; $7bcd: $80
	nop                                              ; $7bce: $00
	add  b                                           ; $7bcf: $80
	ret  nz                                          ; $7bd0: $c0

	add  b                                           ; $7bd1: $80
	ld   hl, sp-$80                                  ; $7bd2: $f8 $80
	ld   a, a                                        ; $7bd4: $7f
	add  b                                           ; $7bd5: $80
	adc  a                                           ; $7bd6: $8f
	inc  bc                                          ; $7bd7: $03
	ldh  a, [$30]                                    ; $7bd8: $f0 $30
	ccf                                              ; $7bda: $3f
	rst  $38                                         ; $7bdb: $ff
	add  b                                           ; $7bdc: $80
	adc  $80                                         ; $7bdd: $ce $80
	jr   nc, @+$0d                                   ; $7bdf: $30 $0b

	ld   a, b                                        ; $7be1: $78
	ld   a, d                                        ; $7be2: $7a
	ld   a, e                                        ; $7be3: $7b
	ld   a, a                                        ; $7be4: $7f
	or   a                                           ; $7be5: $b7
	cp   l                                           ; $7be6: $bd
	call z, $03c0                                    ; $7be7: $cc $c0 $03
	ld   bc, $f8fe                                   ; $7bea: $01 $fe $f8
	add  b                                           ; $7bed: $80
	dec  a                                           ; $7bee: $3d
	inc  bc                                          ; $7bef: $03
	dec  c                                           ; $7bf0: $0d
	add  hl, bc                                      ; $7bf1: $09
	db   $d3                                         ; $7bf2: $d3
	db   $db                                         ; $7bf3: $db
	add  b                                           ; $7bf4: $80
	cp   d                                           ; $7bf5: $ba
	add  b                                           ; $7bf6: $80
	ld   a, e                                        ; $7bf7: $7b
	add  hl, bc                                      ; $7bf8: $09
	db   $db                                         ; $7bf9: $db
	db   $d3                                         ; $7bfa: $d3
	ldh  [c], a                                      ; $7bfb: $e2
	db   $d3                                         ; $7bfc: $d3
	ret                                              ; $7bfd: $c9


	ret  nz                                          ; $7bfe: $c0

	add  [hl]                                        ; $7bff: $86
	or   c                                           ; $7c00: $b1
	ldh  a, [rIE]                                    ; $7c01: $f0 $ff
	add  b                                           ; $7c03: $80
	cp   $80                                         ; $7c04: $fe $80
	ld   hl, sp+$15                                  ; $7c06: $f8 $15
	rst  $20                                         ; $7c08: $e7
	db   $eb                                         ; $7c09: $eb
	db   $d3                                         ; $7c0a: $d3
	jp   $35a3                                       ; $7c0b: $c3 $a3 $35


	adc  d                                           ; $7c0e: $8a
	ld   a, [de]                                     ; $7c0f: $1a
	ld   a, [hl+]                                    ; $7c10: $2a
	ld   a, [hl-]                                    ; $7c11: $3a
	jp   nz, $32ee                                   ; $7c12: $c2 $ee $32

	ld   b, $18                                      ; $7c15: $06 $18
	nop                                              ; $7c17: $00
	ret  z                                           ; $7c18: $c8

	ld   h, b                                        ; $7c19: $60
	or   b                                           ; $7c1a: $b0
	ld   d, b                                        ; $7c1b: $50
	ld   e, b                                        ; $7c1c: $58
	ld   c, [hl]                                     ; $7c1d: $4e
	add  c                                           ; $7c1e: $81
	ld   d, b                                        ; $7c1f: $50
	ld   [bc], a                                     ; $7c20: $02
	ld   d, d                                        ; $7c21: $52
	ld   d, b                                        ; $7c22: $50
	ld   d, c                                        ; $7c23: $51
	add  a                                           ; $7c24: $87
	ld   d, b                                        ; $7c25: $50
	ld   [bc], a                                     ; $7c26: $02
	ld   bc, $f4fe                                   ; $7c27: $01 $fe $f4
	add  b                                           ; $7c2a: $80
	cp   l                                           ; $7c2b: $bd
	dec  b                                           ; $7c2c: $05
	db   $fd                                         ; $7c2d: $fd
	pop  af                                          ; $7c2e: $f1
	ld   bc, $00fd                                   ; $7c2f: $01 $fd $00
	inc  bc                                          ; $7c32: $03
	add  e                                           ; $7c33: $83
	nop                                              ; $7c34: $00
	inc  h                                           ; $7c35: $24
	ld   a, a                                        ; $7c36: $7f
	add  e                                           ; $7c37: $83
	inc  sp                                          ; $7c38: $33
	pop  af                                          ; $7c39: $f1
	call z, $fcfd                                    ; $7c3a: $cc $fd $fc
	db   $fd                                         ; $7c3d: $fd
	push af                                          ; $7c3e: $f5
	db   $fd                                         ; $7c3f: $fd
	rst  $38                                         ; $7c40: $ff
	ld   a, $fc                                      ; $7c41: $3e $fc
	dec  c                                           ; $7c43: $0d
	add  hl, sp                                      ; $7c44: $39
	ld   bc, $3f71                                   ; $7c45: $01 $71 $3f
	add  h                                           ; $7c48: $84
	ret  nz                                          ; $7c49: $c0

	ei                                               ; $7c4a: $fb
	ccf                                              ; $7c4b: $3f
	rst  $38                                         ; $7c4c: $ff
	ret  nz                                          ; $7c4d: $c0

	nop                                              ; $7c4e: $00
	ret  nz                                          ; $7c4f: $c0

	ldh  [$30], a                                    ; $7c50: $e0 $30
	db   $10                                         ; $7c52: $10
	ccf                                              ; $7c53: $3f
	dec  sp                                          ; $7c54: $3b
	set  1, a                                        ; $7c55: $cb $cf
	db   $fd                                         ; $7c57: $fd
	dec  a                                           ; $7c58: $3d
	rra                                              ; $7c59: $1f
	rst  JumpTable                                         ; $7c5a: $df
	add  b                                           ; $7c5b: $80
	ldh  a, [$80]                                    ; $7c5c: $f0 $80
	nop                                              ; $7c5e: $00
	add  b                                           ; $7c5f: $80
	inc  bc                                          ; $7c60: $03
	add  b                                           ; $7c61: $80
	rra                                              ; $7c62: $1f
	dec  b                                           ; $7c63: $05
	db   $fc                                         ; $7c64: $fc
	cp   $e3                                         ; $7c65: $fe $e3
	jp   hl                                          ; $7c67: $e9


	set  0, e                                        ; $7c68: $cb $c3
	add  b                                           ; $7c6a: $80
	ld   [$4c10], sp                                 ; $7c6b: $08 $10 $4c
	ld   l, h                                        ; $7c6e: $6c
	xor  h                                           ; $7c6f: $ac
	cp   [hl]                                        ; $7c70: $be
	or   [hl]                                        ; $7c71: $b6
	db   $f4                                         ; $7c72: $f4
	halt                                             ; $7c73: $76
	rst  ToBoot                                         ; $7c74: $c7
	ei                                               ; $7c75: $fb
	ccf                                              ; $7c76: $3f
	db   $fd                                         ; $7c77: $fd
	cp   $b8                                         ; $7c78: $fe $b8
	cp   [hl]                                        ; $7c7a: $be
	ld   a, l                                        ; $7c7b: $7d
	dec  e                                           ; $7c7c: $1d
	dec  de                                          ; $7c7d: $1b
	add  b                                           ; $7c7e: $80
	inc  bc                                          ; $7c7f: $03
	add  c                                           ; $7c80: $81
	ld   a, e                                        ; $7c81: $7b
	add  b                                           ; $7c82: $80
	ld   a, d                                        ; $7c83: $7a
	inc  bc                                          ; $7c84: $03
	ld   a, c                                        ; $7c85: $79
	ld   sp, hl                                      ; $7c86: $f9
	cp   h                                           ; $7c87: $bc
	jp   $00ff                                       ; $7c88: $c3 $ff $00


	adc  h                                           ; $7c8b: $8c
	nop                                              ; $7c8c: $00
	dec  c                                           ; $7c8d: $0d
	ld   bc, $0082                                   ; $7c8e: $01 $82 $00
	ld   [$000c], sp                                 ; $7c91: $08 $0c $00
	jr   nc, jr_098_7c96                             ; $7c94: $30 $00

jr_098_7c96:
	ld   bc, $4e0c                                   ; $7c96: $01 $0c $4e
	jr   nc, jr_098_7d0d                             ; $7c99: $30 $72

	add  c                                           ; $7c9b: $81
	nop                                              ; $7c9c: $00
	ld   [bc], a                                     ; $7c9d: $02
	ld   sp, $0c00                                   ; $7c9e: $31 $00 $0c
	adc  e                                           ; $7ca1: $8b
	nop                                              ; $7ca2: $00
	ld   [$000e], sp                                 ; $7ca3: $08 $0e $00
	add  hl, bc                                      ; $7ca6: $09
	nop                                              ; $7ca7: $00
	jr   jr_098_7caa                                 ; $7ca8: $18 $00

jr_098_7caa:
	jr   nz, jr_098_7cac                             ; $7caa: $20 $00

jr_098_7cac:
	ld   b, b                                        ; $7cac: $40
	add  b                                           ; $7cad: $80
	db   $10                                         ; $7cae: $10

jr_098_7caf:
	add  b                                           ; $7caf: $80
	inc  c                                           ; $7cb0: $0c
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	add  b                                           ; $7cb3: $80
	inc  b                                           ; $7cb4: $04
	add  b                                           ; $7cb5: $80
	inc  c                                           ; $7cb6: $0c
	add  b                                           ; $7cb7: $80
	nop                                              ; $7cb8: $00
	rlca                                             ; $7cb9: $07
	ld   hl, $7929                                   ; $7cba: $21 $29 $79
	ld   a, l                                        ; $7cbd: $7d
	sbc  l                                           ; $7cbe: $9d
	add  hl, de                                      ; $7cbf: $19
	rst  ToBoot                                         ; $7cc0: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cc1: $cf
	add  b                                           ; $7cc2: $80
	rst  ToBoot                                         ; $7cc3: $c7
	ld   a, [bc]                                     ; $7cc4: $0a
	nop                                              ; $7cc5: $00
	jr   jr_098_7caf                                 ; $7cc6: $18 $e7

	nop                                              ; $7cc8: $00
	ld   [hl], b                                     ; $7cc9: $70
	nop                                              ; $7cca: $00
	adc  b                                           ; $7ccb: $88
	nop                                              ; $7ccc: $00
	inc  b                                           ; $7ccd: $04
	nop                                              ; $7cce: $00
	ld   [bc], a                                     ; $7ccf: $02
	add  b                                           ; $7cd0: $80
	ld   [$7080], sp                                 ; $7cd1: $08 $80 $70
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	add  b                                           ; $7cd6: $80
	add  b                                           ; $7cd7: $80
	add  b                                           ; $7cd8: $80
	sub  b                                           ; $7cd9: $90
	add  b                                           ; $7cda: $80
	add  b                                           ; $7cdb: $80
	rlca                                             ; $7cdc: $07
	add  h                                           ; $7cdd: $84
	sub  h                                           ; $7cde: $94
	sbc  [hl]                                        ; $7cdf: $9e
	sbc  $d9                                         ; $7ce0: $de $d9
	sbc  b                                           ; $7ce2: $98
	db   $e3                                         ; $7ce3: $e3
	di                                               ; $7ce4: $f3
	add  b                                           ; $7ce5: $80
	db   $e3                                         ; $7ce6: $e3
	ld   a, [bc]                                     ; $7ce7: $0a
	nop                                              ; $7ce8: $00
	jr   jr_098_7d04                                 ; $7ce9: $18 $19

	ld   a, l                                        ; $7ceb: $7d
	ld   a, h                                        ; $7cec: $7c
	ld   a, [hl]                                     ; $7ced: $7e
	cp   $02                                         ; $7cee: $fe $02
	ld   b, d                                        ; $7cf0: $42
	inc  c                                           ; $7cf1: $0c
	ld   c, h                                        ; $7cf2: $4c
	add  b                                           ; $7cf3: $80
	ld   [hl], $02                                   ; $7cf4: $36 $02
	nop                                              ; $7cf6: $00
	rst  $30                                         ; $7cf7: $f7
	ld   [hl], b                                     ; $7cf8: $70
	add  b                                           ; $7cf9: $80
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	ld   hl, sp-$73                                  ; $7cfc: $f8 $8d
	nop                                              ; $7cfe: $00
	ld   [$be7f], sp                                 ; $7cff: $08 $7f $be
	ld   a, $7e                                      ; $7d02: $3e $7e

jr_098_7d04:
	ld   a, a                                        ; $7d04: $7f
	ret  nz                                          ; $7d05: $c0

	jp   nz, $3230                                   ; $7d06: $c2 $30 $32

	add  b                                           ; $7d09: $80
	ld   l, h                                        ; $7d0a: $6c
	ld   [bc], a                                     ; $7d0b: $02
	nop                                              ; $7d0c: $00

jr_098_7d0d:
	rst  $28                                         ; $7d0d: $ef
	ld   c, $80                                      ; $7d0e: $0e $80
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	rra                                              ; $7d12: $1f
	adc  a                                           ; $7d13: $8f
	nop                                              ; $7d14: $00
	ld   [$000c], sp                                 ; $7d15: $08 $0c $00
	jr   nc, jr_098_7d1a                             ; $7d18: $30 $00

jr_098_7d1a:
	ld   bc, $4e0c                                   ; $7d1a: $01 $0c $4e
	jr   nc, jr_098_7d91                             ; $7d1d: $30 $72

	add  c                                           ; $7d1f: $81
	nop                                              ; $7d20: $00
	ld   [bc], a                                     ; $7d21: $02
	ld   sp, $0c00                                   ; $7d22: $31 $00 $0c
	adc  l                                           ; $7d25: $8d
	nop                                              ; $7d26: $00
	inc  b                                           ; $7d27: $04
	ld   a, $00                                      ; $7d28: $3e $00
	ld   hl, $2000                                   ; $7d2a: $21 $00 $20
	add  b                                           ; $7d2d: $80
	nop                                              ; $7d2e: $00
	ld   bc, $5010                                   ; $7d2f: $01 $10 $50
	add  b                                           ; $7d32: $80
	db   $10                                         ; $7d33: $10
	add  b                                           ; $7d34: $80
	inc  c                                           ; $7d35: $0c
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	add  b                                           ; $7d38: $80
	inc  b                                           ; $7d39: $04
	add  b                                           ; $7d3a: $80
	nop                                              ; $7d3b: $00
	ld   bc, $ae2e                                   ; $7d3c: $01 $2e $ae
	add  b                                           ; $7d3f: $80
	db   $e3                                         ; $7d40: $e3
	add  b                                           ; $7d41: $80
	dec  e                                           ; $7d42: $1d
	add  b                                           ; $7d43: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d44: $cf
	add  b                                           ; $7d45: $80
	rst  ToBoot                                         ; $7d46: $c7
	ld   [$1800], sp                                 ; $7d47: $08 $00 $18
	add  hl, de                                      ; $7d4a: $19
	ld   a, l                                        ; $7d4b: $7d
	ld   [hl], e                                     ; $7d4c: $73
	nop                                              ; $7d4d: $00
	ld   [$0400], sp                                 ; $7d4e: $08 $00 $04
	add  b                                           ; $7d51: $80
	nop                                              ; $7d52: $00
	ld   bc, $0a08                                   ; $7d53: $01 $08 $0a
	add  b                                           ; $7d56: $80
	ld   [$7080], sp                                 ; $7d57: $08 $80 $70
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	add  b                                           ; $7d5c: $80
	sub  b                                           ; $7d5d: $90
	add  b                                           ; $7d5e: $80
	add  b                                           ; $7d5f: $80
	ld   bc, $9d9c                                   ; $7d60: $01 $9c $9d
	add  b                                           ; $7d63: $80
	rst  ToBoot                                         ; $7d64: $c7
	add  b                                           ; $7d65: $80
	cp   b                                           ; $7d66: $b8
	add  b                                           ; $7d67: $80
	di                                               ; $7d68: $f3
	add  b                                           ; $7d69: $80
	db   $e3                                         ; $7d6a: $e3
	ld   b, $00                                      ; $7d6b: $06 $00
	jr   @-$66                                       ; $7d6d: $18 $98

	cp   [hl]                                        ; $7d6f: $be
	ld   a, $0e                                      ; $7d70: $3e $0e
	adc  $80                                         ; $7d72: $ce $80
	ld   d, $08                                      ; $7d74: $16 $08
	ld   [$3648], sp                                 ; $7d76: $08 $48 $36
	scf                                              ; $7d79: $37
	jr   c, jr_098_7db6                              ; $7d7a: $38 $3a

	nop                                              ; $7d7c: $00
	db   $f4                                         ; $7d7d: $f4
	ld   [hl], b                                     ; $7d7e: $70
	add  b                                           ; $7d7f: $80
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	ld   hl, sp-$73                                  ; $7d82: $f8 $8d
	nop                                              ; $7d84: $00
	ld   [bc], a                                     ; $7d85: $02
	rst  $38                                         ; $7d86: $ff
	ld   [hl], b                                     ; $7d87: $70
	ld   [hl], e                                     ; $7d88: $73
	add  b                                           ; $7d89: $80
	add  sp, $08                                     ; $7d8a: $e8 $08
	db   $10                                         ; $7d8c: $10
	ld   [de], a                                     ; $7d8d: $12
	ld   l, h                                        ; $7d8e: $6c
	db   $ec                                         ; $7d8f: $ec
	inc  e                                           ; $7d90: $1c

jr_098_7d91:
	ld   e, h                                        ; $7d91: $5c
	nop                                              ; $7d92: $00
	cpl                                              ; $7d93: $2f
	ld   c, $80                                      ; $7d94: $0e $80
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	rra                                              ; $7d98: $1f
	adc  a                                           ; $7d99: $8f
	nop                                              ; $7d9a: $00
	add  b                                           ; $7d9b: $80
	ld   b, b                                        ; $7d9c: $40
	add  b                                           ; $7d9d: $80
	nop                                              ; $7d9e: $00
	add  b                                           ; $7d9f: $80

jr_098_7da0:
	db   $10                                         ; $7da0: $10
	add  b                                           ; $7da1: $80
	nop                                              ; $7da2: $00
	add  b                                           ; $7da3: $80
	inc  h                                           ; $7da4: $24
	sub  [hl]                                        ; $7da5: $96
	nop                                              ; $7da6: $00
	add  b                                           ; $7da7: $80
	sub  b                                           ; $7da8: $90
	add  b                                           ; $7da9: $80
	nop                                              ; $7daa: $00
	add  b                                           ; $7dab: $80
	ld   c, b                                        ; $7dac: $48
	sub  h                                           ; $7dad: $94
	nop                                              ; $7dae: $00
	inc  c                                           ; $7daf: $0c
	rrca                                             ; $7db0: $0f
	nop                                              ; $7db1: $00
	ld   [$1800], sp                                 ; $7db2: $08 $00 $18

jr_098_7db5:
	nop                                              ; $7db5: $00

jr_098_7db6:
	jr   nz, jr_098_7dc0                             ; $7db6: $20 $08

	ld   c, b                                        ; $7db8: $48
	rlca                                             ; $7db9: $07
	ld   b, a                                        ; $7dba: $47
	nop                                              ; $7dbb: $00
	ld   b, d                                        ; $7dbc: $42
	add  c                                           ; $7dbd: $81
	ld   [bc], a                                     ; $7dbe: $02
	add  b                                           ; $7dbf: $80

jr_098_7dc0:
	ld   [de], a                                     ; $7dc0: $12

jr_098_7dc1:
	add  b                                           ; $7dc1: $80
	db   $10                                         ; $7dc2: $10
	ld   [bc], a                                     ; $7dc3: $02
	ld   d, b                                        ; $7dc4: $50
	ld   [de], a                                     ; $7dc5: $12
	inc  de                                          ; $7dc6: $13
	add  b                                           ; $7dc7: $80
	dec  de                                          ; $7dc8: $1b
	rrca                                             ; $7dc9: $0f
	inc  de                                          ; $7dca: $13
	dec  l                                           ; $7dcb: $2d
	rrca                                             ; $7dcc: $0f
	rla                                              ; $7dcd: $17
	rlca                                             ; $7dce: $07
	ld   [$0700], sp                                 ; $7dcf: $08 $00 $07
	nop                                              ; $7dd2: $00
	ldh  a, [rP1]                                    ; $7dd3: $f0 $00
	ld   [$0400], sp                                 ; $7dd5: $08 $00 $04
	nop                                              ; $7dd8: $00
	ld   [bc], a                                     ; $7dd9: $02
	add  b                                           ; $7dda: $80
	ld   [$3001], sp                                 ; $7ddb: $08 $01 $30
	ld   sp, $0081                                   ; $7dde: $31 $81 $00
	add  d                                           ; $7de1: $82
	add  b                                           ; $7de2: $80
	ld   bc, $8081                                   ; $7de3: $01 $81 $80
	add  b                                           ; $7de6: $80
	and  b                                           ; $7de7: $a0
	ld   bc, $e0e2                                   ; $7de8: $01 $e2 $e0
	add  b                                           ; $7deb: $80
	ret  nz                                          ; $7dec: $c0

	add  hl, bc                                      ; $7ded: $09
	call nz, $08c0                                   ; $7dee: $c4 $c0 $08
	nop                                              ; $7df1: $00
	sbc  a                                           ; $7df2: $9f
	rlca                                             ; $7df3: $07
	rst  $30                                         ; $7df4: $f7
	ld   l, [hl]                                     ; $7df5: $6e
	ld   c, [hl]                                     ; $7df6: $4e
	ld   e, a                                        ; $7df7: $5f
	add  b                                           ; $7df8: $80
	rra                                              ; $7df9: $1f
	inc  b                                           ; $7dfa: $04
	sbc  a                                           ; $7dfb: $9f
	ccf                                              ; $7dfc: $3f
	ld   a, a                                        ; $7dfd: $7f
	dec  b                                           ; $7dfe: $05
	dec  [hl]                                        ; $7dff: $35
	add  b                                           ; $7e00: $80
	nop                                              ; $7e01: $00
	add  b                                           ; $7e02: $80
	rlca                                             ; $7e03: $07
	ld   bc, $1000                                   ; $7e04: $01 $00 $10
	add  b                                           ; $7e07: $80
	ld   a, [bc]                                     ; $7e08: $0a
	add  b                                           ; $7e09: $80
	nop                                              ; $7e0a: $00
	ld   b, $0e                                      ; $7e0b: $06 $0e
	ld   l, $1c                                      ; $7e0d: $2e $1c
	dec  e                                           ; $7e0f: $1d
	nop                                              ; $7e10: $00
	ld   a, h                                        ; $7e11: $7c
	inc  a                                           ; $7e12: $3c
	add  b                                           ; $7e13: $80
	nop                                              ; $7e14: $00
	ld   [bc], a                                     ; $7e15: $02
	add  [hl]                                        ; $7e16: $86
	ldh  [$e4], a                                    ; $7e17: $e0 $e4
	add  b                                           ; $7e19: $80
	jr   jr_098_7da0                                 ; $7e1a: $18 $84

	ld   hl, sp+$01                                  ; $7e1c: $f8 $01
	ld   d, b                                        ; $7e1e: $50
	ld   d, h                                        ; $7e1f: $54
	add  b                                           ; $7e20: $80
	nop                                              ; $7e21: $00
	add  b                                           ; $7e22: $80
	ldh  a, [rSB]                                    ; $7e23: $f0 $01
	nop                                              ; $7e25: $00
	inc  b                                           ; $7e26: $04
	add  b                                           ; $7e27: $80
	xor  b                                           ; $7e28: $a8
	inc  bc                                          ; $7e29: $03
	nop                                              ; $7e2a: $00
	inc  b                                           ; $7e2b: $04
	ld   [hl], b                                     ; $7e2c: $70
	db   $f4                                         ; $7e2d: $f4
	add  b                                           ; $7e2e: $80
	jr   c, jr_098_7e31                              ; $7e2f: $38 $00

jr_098_7e31:
	nop                                              ; $7e31: $00
	add  b                                           ; $7e32: $80
	jr   c, jr_098_7db5                              ; $7e33: $38 $80

	nop                                              ; $7e35: $00
	ld   [$007c], sp                                 ; $7e36: $08 $7c $00
	ld   e, $00                                      ; $7e39: $1e $00
	ld   de, $1000                                   ; $7e3b: $11 $00 $10
	nop                                              ; $7e3e: $00
	jr   nz, jr_098_7dc1                             ; $7e3f: $20 $80

	nop                                              ; $7e41: $00
	ld   bc, $5010                                   ; $7e42: $01 $10 $50
	add  b                                           ; $7e45: $80

jr_098_7e46:
	ld   [rRAMG], sp                                 ; $7e46: $08 $00 $00
	add  b                                           ; $7e49: $80
	ld   [bc], a                                     ; $7e4a: $02
	add  b                                           ; $7e4b: $80
	ld   [de], a                                     ; $7e4c: $12

jr_098_7e4d:
	add  b                                           ; $7e4d: $80
	ld   [bc], a                                     ; $7e4e: $02
	ld   bc, $0b43                                   ; $7e4f: $01 $43 $0b
	add  d                                           ; $7e52: $82
	rrca                                             ; $7e53: $0f
	inc  b                                           ; $7e54: $04
	daa                                              ; $7e55: $27
	rrca                                             ; $7e56: $0f
	rla                                              ; $7e57: $17
	rlca                                             ; $7e58: $07
	rrca                                             ; $7e59: $0f
	add  c                                           ; $7e5a: $81
	nop                                              ; $7e5b: $00
	inc  b                                           ; $7e5c: $04
	ld   [hl], b                                     ; $7e5d: $70
	nop                                              ; $7e5e: $00
	adc  b                                           ; $7e5f: $88
	nop                                              ; $7e60: $00
	inc  b                                           ; $7e61: $04
	add  b                                           ; $7e62: $80
	nop                                              ; $7e63: $00
	ld   bc, $0a08                                   ; $7e64: $01 $08 $0a
	add  b                                           ; $7e67: $80
	jr   nc, jr_098_7e6a                             ; $7e68: $30 $00

jr_098_7e6a:
	nop                                              ; $7e6a: $00
	add  b                                           ; $7e6b: $80
	ld   b, b                                        ; $7e6c: $40
	add  b                                           ; $7e6d: $80
	ld   h, b                                        ; $7e6e: $60
	add  b                                           ; $7e6f: $80
	nop                                              ; $7e70: $00
	ld   c, $0a                                      ; $7e71: $0e $0a
	ld   a, [hl+]                                    ; $7e73: $2a
	ld   a, $be                                      ; $7e74: $3e $be
	cp   d                                           ; $7e76: $ba
	jr   c, jr_098_7e4d                              ; $7e77: $38 $d4

	ldh  a, [$e8]                                    ; $7e79: $f0 $e8
	ldh  [rIF], a                                    ; $7e7b: $e0 $0f
	nop                                              ; $7e7d: $00
	ld   bc, $7c7d                                   ; $7e7e: $01 $7d $7c
	add  d                                           ; $7e81: $82
	ld   a, [hl]                                     ; $7e82: $7e
	ld   bc, $f606                                   ; $7e83: $01 $06 $f6
	add  b                                           ; $7e86: $80
	dec  b                                           ; $7e87: $05
	add  b                                           ; $7e88: $80
	nop                                              ; $7e89: $00
	add  b                                           ; $7e8a: $80
	dec  b                                           ; $7e8b: $05
	inc  c                                           ; $7e8c: $0c
	ld   [bc], a                                     ; $7e8d: $02
	ld   [de], a                                     ; $7e8e: $12
	ld   a, [bc]                                     ; $7e8f: $0a
	ld   a, [hl+]                                    ; $7e90: $2a
	nop                                              ; $7e91: $00
	ld   bc, $5e1c                                   ; $7e92: $01 $1c $5e
	jr   c, jr_098_7ed3                              ; $7e95: $38 $3c

	nop                                              ; $7e97: $00
	ldh  a, [rSVBK]                                  ; $7e98: $f0 $70
	add  d                                           ; $7e9a: $82
	nop                                              ; $7e9b: $00
	inc  b                                           ; $7e9c: $04
	add  h                                           ; $7e9d: $84
	cp   b                                           ; $7e9e: $b8
	ld   a, [hl-]                                    ; $7e9f: $3a
	ld   c, h                                        ; $7ea0: $4c
	ld   a, h                                        ; $7ea1: $7c
	add  c                                           ; $7ea2: $81
	or   h                                           ; $7ea3: $b4
	ld   [bc], a                                     ; $7ea4: $02
	add  [hl]                                        ; $7ea5: $86
	ret  z                                           ; $7ea6: $c8

	call z, $0080                                    ; $7ea7: $cc $80 $00
	add  b                                           ; $7eaa: $80
	ld   [hl], b                                     ; $7eab: $70
	ld   bc, $8480                                   ; $7eac: $01 $80 $84
	add  b                                           ; $7eaf: $80
	xor  b                                           ; $7eb0: $a8
	ld   b, $00                                      ; $7eb1: $06 $00
	add  d                                           ; $7eb3: $82
	inc  a                                           ; $7eb4: $3c
	ld   a, l                                        ; $7eb5: $7d
	ld   e, $3e                                      ; $7eb6: $1e $3e
	nop                                              ; $7eb8: $00
	add  b                                           ; $7eb9: $80
	ld   c, $80                                      ; $7eba: $0e $80
	nop                                              ; $7ebc: $00
	ld   b, $01                                      ; $7ebd: $06 $01
	nop                                              ; $7ebf: $00
	ld   de, $1000                                   ; $7ec0: $11 $00 $10
	nop                                              ; $7ec3: $00
	jr   nz, jr_098_7e46                             ; $7ec4: $20 $80

	nop                                              ; $7ec6: $00
	ld   bc, $5010                                   ; $7ec7: $01 $10 $50
	add  b                                           ; $7eca: $80
	ld   [rRAMG], sp                                 ; $7ecb: $08 $00 $00
	add  b                                           ; $7ece: $80
	ld   [bc], a                                     ; $7ecf: $02
	add  b                                           ; $7ed0: $80
	ld   [de], a                                     ; $7ed1: $12
	add  b                                           ; $7ed2: $80

jr_098_7ed3:
	ld   [bc], a                                     ; $7ed3: $02
	ld   bc, $0b43                                   ; $7ed4: $01 $43 $0b
	add  d                                           ; $7ed7: $82
	rrca                                             ; $7ed8: $0f
	inc  bc                                          ; $7ed9: $03
	daa                                              ; $7eda: $27
	rrca                                             ; $7edb: $0f
	rla                                              ; $7edc: $17
	rlca                                             ; $7edd: $07
	add  b                                           ; $7ede: $80
	nop                                              ; $7edf: $00
	ld   b, $0f                                      ; $7ee0: $06 $0f
	nop                                              ; $7ee2: $00
	ld   [hl], b                                     ; $7ee3: $70
	nop                                              ; $7ee4: $00
	adc  b                                           ; $7ee5: $88
	nop                                              ; $7ee6: $00
	inc  b                                           ; $7ee7: $04
	add  b                                           ; $7ee8: $80
	nop                                              ; $7ee9: $00
	ld   bc, $0a08                                   ; $7eea: $01 $08 $0a
	add  b                                           ; $7eed: $80
	jr   nc, jr_098_7ef0                             ; $7eee: $30 $00

jr_098_7ef0:
	nop                                              ; $7ef0: $00
	add  b                                           ; $7ef1: $80
	ld   b, b                                        ; $7ef2: $40
	add  b                                           ; $7ef3: $80
	ld   h, b                                        ; $7ef4: $60
	add  b                                           ; $7ef5: $80
	nop                                              ; $7ef6: $00
	db   $10                                         ; $7ef7: $10
	ld   a, [bc]                                     ; $7ef8: $0a
	ld   a, [hl+]                                    ; $7ef9: $2a
	ld   a, $be                                      ; $7efa: $3e $be
	cp   d                                           ; $7efc: $ba
	jr   c, jr_098_7ed3                              ; $7efd: $38 $d4

	ldh  a, [$e8]                                    ; $7eff: $f0 $e8
	ldh  [$08], a                                    ; $7f01: $e0 $08
	nop                                              ; $7f03: $00
	and  $0d                                         ; $7f04: $e6 $0d
	dec  l                                           ; $7f06: $2d
	dec  e                                           ; $7f07: $1d
	inc  e                                           ; $7f08: $1c
	add  b                                           ; $7f09: $80
	ld   e, $01                                      ; $7f0a: $1e $01
	ld   b, $76                                      ; $7f0c: $06 $76
	add  b                                           ; $7f0e: $80
	ld   [hl], $03                                   ; $7f0f: $36 $03
	dec  [hl]                                        ; $7f11: $35
	ld   b, l                                        ; $7f12: $45
	nop                                              ; $7f13: $00
	jr   nc, @-$7e                                   ; $7f14: $30 $80

	ld   b, $01                                      ; $7f16: $06 $01
	ld   bc, $8011                                   ; $7f18: $01 $11 $80
	ld   a, [bc]                                     ; $7f1b: $0a
	add  b                                           ; $7f1c: $80
	nop                                              ; $7f1d: $00
	ld   bc, $2f0e                                   ; $7f1e: $01 $0e $2f
	add  b                                           ; $7f21: $80
	inc  e                                           ; $7f22: $1c
	ld   [bc], a                                     ; $7f23: $02
	nop                                              ; $7f24: $00

jr_098_7f25:
	ld   a, h                                        ; $7f25: $7c
	inc  a                                           ; $7f26: $3c
	add  b                                           ; $7f27: $80
	nop                                              ; $7f28: $00
	ld   [bc], a                                     ; $7f29: $02
	ld   [bc], a                                     ; $7f2a: $02
	sbc  b                                           ; $7f2b: $98
	ld   a, d                                        ; $7f2c: $7a
	add  c                                           ; $7f2d: $81
	ld   l, h                                        ; $7f2e: $6c
	nop                                              ; $7f2f: $00
	inc  c                                           ; $7f30: $0c
	add  b                                           ; $7f31: $80
	sbc  h                                           ; $7f32: $9c
	inc  bc                                          ; $7f33: $03
	cp   h                                           ; $7f34: $bc
	cp   [hl]                                        ; $7f35: $be
	ret  nz                                          ; $7f36: $c0

	call nz, $0080                                   ; $7f37: $c4 $80 $00
	add  b                                           ; $7f3a: $80
	or   b                                           ; $7f3b: $b0
	ld   bc, $4440                                   ; $7f3c: $01 $40 $44

jr_098_7f3f:
	add  b                                           ; $7f3f: $80
	xor  b                                           ; $7f40: $a8
	inc  bc                                          ; $7f41: $03
	nop                                              ; $7f42: $00
	add  b                                           ; $7f43: $80
	jr   c, jr_098_7fc0                              ; $7f44: $38 $7a

	add  b                                           ; $7f46: $80
	inc  e                                           ; $7f47: $1c
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	add  b                                           ; $7f4a: $80
	inc  e                                           ; $7f4b: $1c
	add  b                                           ; $7f4c: $80
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	ld   a, $81                                      ; $7f4f: $3e $81
	nop                                              ; $7f51: $00
	inc  c                                           ; $7f52: $0c
	rrca                                             ; $7f53: $0f
	nop                                              ; $7f54: $00
	ld   [$1800], sp                                 ; $7f55: $08 $00 $18
	nop                                              ; $7f58: $00
	jr   nz, jr_098_7f63                             ; $7f59: $20 $08

	ld   c, b                                        ; $7f5b: $48
	rlca                                             ; $7f5c: $07
	ld   b, a                                        ; $7f5d: $47
	nop                                              ; $7f5e: $00
	ld   b, d                                        ; $7f5f: $42
	add  c                                           ; $7f60: $81
	ld   [bc], a                                     ; $7f61: $02
	add  b                                           ; $7f62: $80

jr_098_7f63:
	ld   [de], a                                     ; $7f63: $12
	add  b                                           ; $7f64: $80
	db   $10                                         ; $7f65: $10
	ld   [bc], a                                     ; $7f66: $02
	ld   d, b                                        ; $7f67: $50
	ld   [de], a                                     ; $7f68: $12
	inc  de                                          ; $7f69: $13
	add  b                                           ; $7f6a: $80
	dec  de                                          ; $7f6b: $1b
	inc  bc                                          ; $7f6c: $03
	inc  de                                          ; $7f6d: $13
	dec  l                                           ; $7f6e: $2d
	rrca                                             ; $7f6f: $0f
	rra                                              ; $7f70: $1f
	add  e                                           ; $7f71: $83
	nop                                              ; $7f72: $00
	ld   b, $f0                                      ; $7f73: $06 $f0
	nop                                              ; $7f75: $00
	ld   [$0400], sp                                 ; $7f76: $08 $00 $04
	nop                                              ; $7f79: $00
	ld   [bc], a                                     ; $7f7a: $02
	add  b                                           ; $7f7b: $80
	ld   [$3001], sp                                 ; $7f7c: $08 $01 $30
	ld   sp, $0081                                   ; $7f7f: $31 $81 $00
	add  d                                           ; $7f82: $82
	add  b                                           ; $7f83: $80
	ld   bc, $8081                                   ; $7f84: $01 $81 $80
	add  b                                           ; $7f87: $80
	and  b                                           ; $7f88: $a0
	ld   bc, $e0e2                                   ; $7f89: $01 $e2 $e0
	add  b                                           ; $7f8c: $80
	ret  nz                                          ; $7f8d: $c0

	nop                                              ; $7f8e: $00
	inc  bc                                          ; $7f8f: $03
	add  b                                           ; $7f90: $80
	nop                                              ; $7f91: $00
	add  b                                           ; $7f92: $80
	ld   a, a                                        ; $7f93: $7f
	add  b                                           ; $7f94: $80
	ld   a, [hl]                                     ; $7f95: $7e
	add  b                                           ; $7f96: $80
	ld   a, a                                        ; $7f97: $7f
	ld   bc, $ef0f                                   ; $7f98: $01 $0f $ef
	add  b                                           ; $7f9b: $80
	ld   a, [bc]                                     ; $7f9c: $0a
	dec  b                                           ; $7f9d: $05
	nop                                              ; $7f9e: $00
	db   $10                                         ; $7f9f: $10
	rlca                                             ; $7fa0: $07
	rla                                              ; $7fa1: $17
	nop                                              ; $7fa2: $00
	jr   nz, jr_098_7f25                             ; $7fa3: $20 $80

	dec  d                                           ; $7fa5: $15
	add  b                                           ; $7fa6: $80
	nop                                              ; $7fa7: $00
	ld   bc, $5f1c                                   ; $7fa8: $01 $1c $5f
	add  b                                           ; $7fab: $80
	jr   c, @+$04                                    ; $7fac: $38 $02

	nop                                              ; $7fae: $00
	ld   hl, sp+$78                                  ; $7faf: $f8 $78
	add  b                                           ; $7fb1: $80
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	inc  b                                           ; $7fb4: $04
	add  b                                           ; $7fb5: $80
	nop                                              ; $7fb6: $00
	ld   bc, $f4f0                                   ; $7fb7: $01 $f0 $f4
	add  b                                           ; $7fba: $80
	jr   jr_098_7f3f                                 ; $7fbb: $18 $82

	ld   hl, sp+$01                                  ; $7fbd: $f8 $01
	xor  b                                           ; $7fbf: $a8

jr_098_7fc0:
	xor  h                                           ; $7fc0: $ac
	add  b                                           ; $7fc1: $80
	nop                                              ; $7fc2: $00
	add  b                                           ; $7fc3: $80
	ldh  a, [rSB]                                    ; $7fc4: $f0 $01
	nop                                              ; $7fc6: $00
	inc  b                                           ; $7fc7: $04
	add  b                                           ; $7fc8: $80
	ld   d, b                                        ; $7fc9: $50
	ld   b, $00                                      ; $7fca: $06 $00
	add  d                                           ; $7fcc: $82
	inc  a                                           ; $7fcd: $3c
	ld   a, l                                        ; $7fce: $7d
	ld   c, $2e                                      ; $7fcf: $0e $2e
	nop                                              ; $7fd1: $00
	add  b                                           ; $7fd2: $80
	ld   c, $80                                      ; $7fd3: $0e $80
	nop                                              ; $7fd5: $00
	inc  bc                                          ; $7fd6: $03
	jr   jr_098_7fd9                                 ; $7fd7: $18 $00

jr_098_7fd9:
	rrca                                             ; $7fd9: $0f
	rlca                                             ; $7fda: $07
	add  b                                           ; $7fdb: $80
	ld   b, $80                                      ; $7fdc: $06 $80
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	rrca                                             ; $7fe0: $0f
	rst  $38                                         ; $7fe1: $ff
	nop                                              ; $7fe2: $00
	rst  $38                                         ; $7fe3: $ff
	nop                                              ; $7fe4: $00
	rst  $38                                         ; $7fe5: $ff
	nop                                              ; $7fe6: $00
	rst  $38                                         ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	rst  $38                                         ; $7fe9: $ff
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	nop                                              ; $7fec: $00
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	db   $ed                                         ; $7ff1: $ed
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	xor  c                                           ; $7ff4: $a9
	ld   bc, $001c                                   ; $7ff5: $01 $1c $00
	ret                                              ; $7ff8: $c9


	ld   bc, $ff1d                                   ; $7ff9: $01 $1d $ff
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
