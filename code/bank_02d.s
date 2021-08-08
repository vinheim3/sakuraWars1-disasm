; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

	ld   [$8004], sp                                 ; $4000: $08 $04 $80
	ldh  a, [$82]                                    ; $4003: $f0 $82
	add  b                                           ; $4005: $80
	add  b                                           ; $4006: $80
	sbc  c                                           ; $4007: $99
	add  b                                           ; $4008: $80
	ld   hl, $3980                                   ; $4009: $21 $80 $39
	add  d                                           ; $400c: $82
	dec  h                                           ; $400d: $25
	add  h                                           ; $400e: $84
	nop                                              ; $400f: $00
	add  b                                           ; $4010: $80
	ld   [bc], a                                     ; $4011: $02
	add  b                                           ; $4012: $80
	ld   c, d                                        ; $4013: $4a
	add  b                                           ; $4014: $80
	ld   b, l                                        ; $4015: $45
	add  b                                           ; $4016: $80
	ld   b, d                                        ; $4017: $42
	add  b                                           ; $4018: $80
	push hl                                          ; $4019: $e5
	add  h                                           ; $401a: $84
	nop                                              ; $401b: $00
	add  b                                           ; $401c: $80
	add  hl, de                                      ; $401d: $19
	add  b                                           ; $401e: $80
	and  c                                           ; $401f: $a1
	add  b                                           ; $4020: $80
	add  hl, sp                                      ; $4021: $39
	add  d                                           ; $4022: $82
	dec  h                                           ; $4023: $25
	add  [hl]                                        ; $4024: $86
	nop                                              ; $4025: $00
	add  h                                           ; $4026: $84
	ld   b, b                                        ; $4027: $40
	add  b                                           ; $4028: $80

jr_02d_4029:
	db   $e3                                         ; $4029: $e3
	add  [hl]                                        ; $402a: $86
	nop                                              ; $402b: $00
	add  b                                           ; $402c: $80
	rrca                                             ; $402d: $0f
	dec  b                                           ; $402e: $05
	ld   [hl], $39                                   ; $402f: $36 $39
	sub  h                                           ; $4031: $94
	rst  $20                                         ; $4032: $e7
	add  e                                           ; $4033: $83
	rst  $38                                         ; $4034: $ff
	add  [hl]                                        ; $4035: $86
	nop                                              ; $4036: $00
	add  b                                           ; $4037: $80
	ret  nz                                          ; $4038: $c0

	add  b                                           ; $4039: $80
	ld   hl, sp+$04                                  ; $403a: $f8 $04
	rst  $30                                         ; $403c: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $403d: $cf
	add  $f1                                         ; $403e: $c6 $f1
	rrca                                             ; $4040: $0f
	adc  e                                           ; $4041: $8b
	nop                                              ; $4042: $00
	add  b                                           ; $4043: $80
	ret  nz                                          ; $4044: $c0

	add  b                                           ; $4045: $80
	rrca                                             ; $4046: $0f
	add  h                                           ; $4047: $84
	ld   bc, $008a                                   ; $4048: $01 $8a $00
	add  b                                           ; $404b: $80
	ld   bc, $0780                                   ; $404c: $01 $80 $07

jr_02d_404f:
	add  b                                           ; $404f: $80
	rra                                              ; $4050: $1f
	add  b                                           ; $4051: $80
	ccf                                              ; $4052: $3f
	add  b                                           ; $4053: $80
	ld   a, h                                        ; $4054: $7c
	add  b                                           ; $4055: $80
	ld   hl, sp-$7e                                  ; $4056: $f8 $82
	nop                                              ; $4058: $00
	add  b                                           ; $4059: $80
	ldh  a, [$80]                                    ; $405a: $f0 $80
	ld   hl, sp-$80                                  ; $405c: $f8 $80
	db   $fc                                         ; $405e: $fc
	add  b                                           ; $405f: $80
	ld   b, $80                                      ; $4060: $06 $80
	inc  bc                                          ; $4062: $03
	ld   [bc], a                                     ; $4063: $02
	ld   [bc], a                                     ; $4064: $02
	inc  bc                                          ; $4065: $03
	cp   $80                                         ; $4066: $fe $80
	sbc  a                                           ; $4068: $9f
	add  b                                           ; $4069: $80
	sbc  [hl]                                        ; $406a: $9e
	db   $10                                         ; $406b: $10
	cp   h                                           ; $406c: $bc
	ld   a, h                                        ; $406d: $7c
	inc  a                                           ; $406e: $3c
	ld   a, h                                        ; $406f: $7c
	ld   a, b                                        ; $4070: $78
	cp   b                                           ; $4071: $b8
	ld   hl, sp-$28                                  ; $4072: $f8 $d8
	ld   hl, sp+$58                                  ; $4074: $f8 $58
	ret  c                                           ; $4076: $d8

	inc  e                                           ; $4077: $1c
	ei                                               ; $4078: $fb
	rlca                                             ; $4079: $07
	rst  $38                                         ; $407a: $ff
	jr   jr_02d_409c                                 ; $407b: $18 $1f

	add  b                                           ; $407d: $80
	rla                                              ; $407e: $17
	add  b                                           ; $407f: $80
	rrca                                             ; $4080: $0f
	inc  bc                                          ; $4081: $03
	ld   d, $17                                      ; $4082: $16 $17
	dec  hl                                          ; $4084: $2b
	cpl                                              ; $4085: $2f
	add  b                                           ; $4086: $80
	rla                                              ; $4087: $17
	ld   bc, $e025                                   ; $4088: $01 $25 $e0
	add  b                                           ; $408b: $80
	pop  bc                                          ; $408c: $c1
	rlca                                             ; $408d: $07
	add  d                                           ; $408e: $82
	jp   $c7c4                                       ; $408f: $c3 $c4 $c7


	add  b                                           ; $4092: $80
	add  [hl]                                        ; $4093: $86
	ld   b, $86                                      ; $4094: $06 $86
	add  b                                           ; $4096: $80
	adc  h                                           ; $4097: $8c
	add  b                                           ; $4098: $80
	inc  c                                           ; $4099: $0c
	dec  b                                           ; $409a: $05
	add  a                                           ; $409b: $87

jr_02d_409c:
	db   $fc                                         ; $409c: $fc
	inc  e                                           ; $409d: $1c
	db   $fc                                         ; $409e: $fc
	inc  h                                           ; $409f: $24
	cp   h                                           ; $40a0: $bc
	add  b                                           ; $40a1: $80
	ld   a, $03                                      ; $40a2: $3e $03
	ld   sp, $393f                                   ; $40a4: $31 $3f $39
	jr   nc, jr_02d_4029                             ; $40a7: $30 $80

	ld   [hl], b                                     ; $40a9: $70
	add  b                                           ; $40aa: $80
	ld   h, e                                        ; $40ab: $63
	db   $10                                         ; $40ac: $10
	add  d                                           ; $40ad: $82

jr_02d_40ae:
	ld   [hl], e                                     ; $40ae: $73
	ld   sp, $2633                                   ; $40af: $31 $33 $26
	ld   [hl], $30                                   ; $40b2: $36 $30
	inc  a                                           ; $40b4: $3c
	xor  b                                           ; $40b5: $a8
	cp   b                                           ; $40b6: $b8
	ld   h, b                                        ; $40b7: $60
	ldh  [$50], a                                    ; $40b8: $e0 $50
	jr   nc, jr_02d_40c4                             ; $40ba: $30 $08

	jr   jr_02d_40ae                                 ; $40bc: $18 $f0

	adc  l                                           ; $40be: $8d
	nop                                              ; $40bf: $00
	add  b                                           ; $40c0: $80
	jr   jr_02d_404f                                 ; $40c1: $18 $8c

	nop                                              ; $40c3: $00

jr_02d_40c4:
	add  b                                           ; $40c4: $80
	ld   c, d                                        ; $40c5: $4a
	add  b                                           ; $40c6: $80
	ld   [bc], a                                     ; $40c7: $02
	adc  d                                           ; $40c8: $8a
	nop                                              ; $40c9: $00
	add  b                                           ; $40ca: $80
	sbc  b                                           ; $40cb: $98
	add  b                                           ; $40cc: $80
	nop                                              ; $40cd: $00
	add  b                                           ; $40ce: $80
	ld   [$0780], sp                                 ; $40cf: $08 $80 $07
	add  b                                           ; $40d2: $80
	inc  bc                                          ; $40d3: $03
	add  b                                           ; $40d4: $80
	ld   bc, $0380                                   ; $40d5: $01 $80 $03
	ld   bc, $0d0e                                   ; $40d8: $01 $0e $0d
	add  b                                           ; $40db: $80
	ld   b, h                                        ; $40dc: $44
	inc  b                                           ; $40dd: $04
	inc  c                                           ; $40de: $0c
	ld   [$3830], sp                                 ; $40df: $08 $30 $38
	ldh  a, [$80]                                    ; $40e2: $f0 $80
	rst  $38                                         ; $40e4: $ff
	dec  c                                           ; $40e5: $0d
	ei                                               ; $40e6: $fb
	cp   a                                           ; $40e7: $bf
	rst  $30                                         ; $40e8: $f7
	dec  sp                                          ; $40e9: $3b
	xor  $77                                         ; $40ea: $ee $77
	db   $dd                                         ; $40ec: $dd
	db   $fc                                         ; $40ed: $fc
	ccf                                              ; $40ee: $3f
	dec  bc                                          ; $40ef: $0b
	rlca                                             ; $40f0: $07
	ld   [bc], a                                     ; $40f1: $02
	ld   bc, $8000                                   ; $40f2: $01 $00 $80
	ldh  [$03], a                                    ; $40f5: $e0 $03
	db   $fc                                         ; $40f7: $fc
	ld   e, h                                        ; $40f8: $5c
	rst  $38                                         ; $40f9: $ff
	ld   e, a                                        ; $40fa: $5f
	add  b                                           ; $40fb: $80
	db   $db                                         ; $40fc: $db
	add  b                                           ; $40fd: $80
	cp   l                                           ; $40fe: $bd
	add  b                                           ; $40ff: $80
	ld   sp, hl                                      ; $4100: $f9
	add  c                                           ; $4101: $81
	rst  $38                                         ; $4102: $ff
	ld   a, [bc]                                     ; $4103: $0a
	cp   l                                           ; $4104: $bd
	ld   a, a                                        ; $4105: $7f
	ld   e, $3f                                      ; $4106: $1e $3f
	ld   c, $1e                                      ; $4108: $0e $1e
	ld   b, $ce                                      ; $410a: $06 $ce
	sbc  $fe                                         ; $410c: $de $fe
	ei                                               ; $410e: $fb
	add  c                                           ; $410f: $81
	ldh  [$86], a                                    ; $4110: $e0 $86
	ldh  a, [$82]                                    ; $4112: $f0 $82
	ld   hl, sp-$72                                  ; $4114: $f8 $8e
	nop                                              ; $4116: $00
	add  b                                           ; $4117: $80
	ldh  a, [$82]                                    ; $4118: $f0 $82
	ldh  [$84], a                                    ; $411a: $e0 $84
	ret  nz                                          ; $411c: $c0

	add  b                                           ; $411d: $80
	add  b                                           ; $411e: $80
	add  b                                           ; $411f: $80
	nop                                              ; $4120: $00
	add  hl, de                                      ; $4121: $19
	ld   b, $07                                      ; $4122: $06 $07
	ld   [$3f0f], sp                                 ; $4124: $08 $0f $3f
	ld   a, $4d                                      ; $4127: $3e $4d
	ld   a, l                                        ; $4129: $7d
	ld   a, d                                        ; $412a: $7a
	halt                                             ; $412b: $76
	dec  e                                           ; $412c: $1d
	dec  sp                                          ; $412d: $3b
	ld   [hl], $35                                   ; $412e: $36 $35
	add  hl, bc                                      ; $4130: $09
	jr   jr_02d_4183                                 ; $4131: $18 $50

	xor  h                                           ; $4133: $ac
	ld   c, h                                        ; $4134: $4c
	ld   b, [hl]                                     ; $4135: $46
	add  [hl]                                        ; $4136: $86
	add  e                                           ; $4137: $83
	ld   b, e                                        ; $4138: $43
	ld   b, c                                        ; $4139: $41
	ld   hl, $8020                                   ; $413a: $21 $20 $80
	nop                                              ; $413d: $00
	add  b                                           ; $413e: $80
	inc  b                                           ; $413f: $04
	add  b                                           ; $4140: $80
	add  e                                           ; $4141: $83
	inc  bc                                          ; $4142: $03
	ld   l, $2f                                      ; $4143: $2e $2f
	ld   a, h                                        ; $4145: $7c
	ld   a, a                                        ; $4146: $7f
	add  b                                           ; $4147: $80
	rst  $38                                         ; $4148: $ff
	ld   [bc], a                                     ; $4149: $02
	ld   e, $fe                                      ; $414a: $1e $fe
	ldh  [$80], a                                    ; $414c: $e0 $80
	cp   $05                                         ; $414e: $fe $05
	ld   a, $2c                                      ; $4150: $3e $2c
	inc  e                                           ; $4152: $1c
	ld   l, b                                        ; $4153: $68
	ld   a, h                                        ; $4154: $7c
	inc  e                                           ; $4155: $1c
	adc  c                                           ; $4156: $89
	ld   [$0a0b], sp                                 ; $4157: $08 $0b $0a
	jr   jr_02d_4175                                 ; $415a: $18 $19

	ld   [$c3cc], sp                                 ; $415c: $08 $cc $c3
	ld   e, $1f                                      ; $415f: $1e $1f
	jr   nz, jr_02d_41a2                             ; $4161: $20 $3f

	ld   e, $00                                      ; $4163: $1e $00
	add  b                                           ; $4165: $80
	ld   bc, $0580                                   ; $4166: $01 $80 $05
	add  b                                           ; $4169: $80
	dec  hl                                          ; $416a: $2b
	add  b                                           ; $416b: $80
	rst  $38                                         ; $416c: $ff
	ld   bc, $8807                                   ; $416d: $01 $07 $88
	add  b                                           ; $4170: $80
	inc  c                                           ; $4171: $0c
	ld   [bc], a                                     ; $4172: $02
	adc  h                                           ; $4173: $8c
	inc  c                                           ; $4174: $0c

jr_02d_4175:
	ld   [$1880], sp                                 ; $4175: $08 $80 $18
	ld   [$3139], sp                                 ; $4178: $08 $39 $31
	di                                               ; $417b: $f3
	jp   $07c6                                       ; $417c: $c3 $c6 $07


	ld   [$0009], sp                                 ; $417f: $08 $09 $00
	add  b                                           ; $4182: $80

jr_02d_4183:
	ret  nz                                          ; $4183: $c0

	inc  c                                           ; $4184: $0c
	jr   nc, @-$0e                                   ; $4185: $30 $f0

	ld   hl, sp-$18                                  ; $4187: $f8 $e8
	add  h                                           ; $4189: $84
	db   $ec                                         ; $418a: $ec
	ld   e, [hl]                                     ; $418b: $5e
	sbc  [hl]                                        ; $418c: $9e
	or   c                                           ; $418d: $b1
	ccf                                              ; $418e: $3f
	ld   h, a                                        ; $418f: $67
	ld   a, a                                        ; $4190: $7f
	xor  $8d                                         ; $4191: $ee $8d
	nop                                              ; $4193: $00
	add  b                                           ; $4194: $80
	inc  b                                           ; $4195: $04
	add  b                                           ; $4196: $80
	inc  bc                                          ; $4197: $03
	add  b                                           ; $4198: $80
	ld   bc, $0088                                   ; $4199: $01 $88 $00
	dec  b                                           ; $419c: $05
	ld   a, l                                        ; $419d: $7d
	ld   [hl], e                                     ; $419e: $73
	pop  hl                                          ; $419f: $e1
	sbc  a                                           ; $41a0: $9f
	adc  a                                           ; $41a1: $8f

jr_02d_41a2:
	rst  $38                                         ; $41a2: $ff
	add  b                                           ; $41a3: $80
	ld   a, h                                        ; $41a4: $7c
	add  b                                           ; $41a5: $80
	ld   bc, $0210                                   ; $41a6: $01 $10 $02

jr_02d_41a9:
	inc  bc                                          ; $41a9: $03
	inc  b                                           ; $41aa: $04
	rlca                                             ; $41ab: $07
	add  hl, bc                                      ; $41ac: $09
	rrca                                             ; $41ad: $0f

jr_02d_41ae:
	ld   sp, hl                                      ; $41ae: $f9
	dec  sp                                          ; $41af: $3b

jr_02d_41b0:
	jr   z, jr_02d_41a9                              ; $41b0: $28 $f7

	add  $ff                                         ; $41b2: $c6 $ff
	rst  JumpTable                                         ; $41b4: $df
	ei                                               ; $41b5: $fb
	ld   [hl], l                                     ; $41b6: $75
	cp   $68                                         ; $41b7: $fe $68
	add  c                                           ; $41b9: $81
	db   $fc                                         ; $41ba: $fc
	dec  bc                                          ; $41bb: $0b
	ld   hl, sp-$04                                  ; $41bc: $f8 $fc
	ld   hl, sp-$42                                  ; $41be: $f8 $be
	or   $ff                                         ; $41c0: $f6 $ff
	rrca                                             ; $41c2: $0f
	push af                                          ; $41c3: $f5
	ld   l, c                                        ; $41c4: $69
	ccf                                              ; $41c5: $3f
	nop                                              ; $41c6: $00
	inc  bc                                          ; $41c7: $03
	add  h                                           ; $41c8: $84
	nop                                              ; $41c9: $00
	inc  c                                           ; $41ca: $0c
	adc  e                                           ; $41cb: $8b
	rst  $38                                         ; $41cc: $ff
	ld   d, [hl]                                     ; $41cd: $56
	cp   a                                           ; $41ce: $bf
	sbc  a                                           ; $41cf: $9f
	rst  $38                                         ; $41d0: $ff
	jr   c, @+$01                                    ; $41d1: $38 $ff

	ld   a, e                                        ; $41d3: $7b
	db   $fd                                         ; $41d4: $fd
	ld   a, [hl]                                     ; $41d5: $7e
	ei                                               ; $41d6: $fb
	dec  a                                           ; $41d7: $3d
	add  b                                           ; $41d8: $80
	ld   [hl], a                                     ; $41d9: $77
	ld   [bc], a                                     ; $41da: $02
	ld   h, a                                        ; $41db: $67
	ld   h, h                                        ; $41dc: $64
	ld   hl, sp-$7e                                  ; $41dd: $f8 $82
	db   $fc                                         ; $41df: $fc
	ld   [bc], a                                     ; $41e0: $02
	inc  l                                           ; $41e1: $2c
	db   $fc                                         ; $41e2: $fc
	ld   [hl], $81                                   ; $41e3: $36 $81
	cp   $04                                         ; $41e5: $fe $04
	xor  $fe                                         ; $41e7: $ee $fe
	di                                               ; $41e9: $f3
	rst  $30                                         ; $41ea: $f7
	inc  c                                           ; $41eb: $0c
	sbc  l                                           ; $41ec: $9d
	nop                                              ; $41ed: $00
	inc  bc                                          ; $41ee: $03
	rla                                              ; $41ef: $17
	jr   jr_02d_41f2                                 ; $41f0: $18 $00

jr_02d_41f2:
	ld   [$0c80], sp                                 ; $41f2: $08 $80 $0c
	ld   bc, $0501                                   ; $41f5: $01 $01 $05
	add  b                                           ; $41f8: $80
	ld   b, $02                                      ; $41f9: $06 $02
	ld   bc, $0003                                   ; $41fb: $01 $03 $00
	add  c                                           ; $41fe: $81
	ld   bc, $9f01                                   ; $41ff: $01 $01 $9f
	ld   h, b                                        ; $4202: $60
	add  b                                           ; $4203: $80
	ld   a, b                                        ; $4204: $78
	rlca                                             ; $4205: $07
	and  [hl]                                        ; $4206: $a6
	cp   [hl]                                        ; $4207: $be
	ld   c, c                                        ; $4208: $49
	ld   e, a                                        ; $4209: $5f
	cp   [hl]                                        ; $420a: $be
	cp   a                                           ; $420b: $bf
	halt                                             ; $420c: $76
	ld   a, a                                        ; $420d: $7f
	add  b                                           ; $420e: $80
	cp   a                                           ; $420f: $bf
	add  b                                           ; $4210: $80
	ld   a, a                                        ; $4211: $7f
	ld   [bc], a                                     ; $4212: $02
	ld   [bc], a                                     ; $4213: $02
	db   $fc                                         ; $4214: $fc
	ld   hl, sp-$80                                  ; $4215: $f8 $80
	jr   c, jr_02d_421a                              ; $4217: $38 $01

	ld   c, b                                        ; $4219: $48

jr_02d_421a:
	ld   b, b                                        ; $421a: $40
	add  b                                           ; $421b: $80
	sbc  b                                           ; $421c: $98
	add  b                                           ; $421d: $80
	jr   jr_02d_4220                                 ; $421e: $18 $00

jr_02d_4220:
	jr   c, jr_02d_41a2                              ; $4220: $38 $80

	dec  a                                           ; $4222: $3d
	ld   [bc], a                                     ; $4223: $02
	ld   a, [hl-]                                    ; $4224: $3a
	ld   a, d                                        ; $4225: $7a
	ld   [hl], a                                     ; $4226: $77
	add  b                                           ; $4227: $80
	ld   a, [de]                                     ; $4228: $1a
	add  b                                           ; $4229: $80
	dec  bc                                          ; $422a: $0b
	add  b                                           ; $422b: $80
	jr   jr_02d_41ae                                 ; $422c: $18 $80

	jr   c, jr_02d_41b0                              ; $422e: $38 $80

	ld   a, b                                        ; $4230: $78
	rrca                                             ; $4231: $0f
	cp   b                                           ; $4232: $b8
	and  a                                           ; $4233: $a7
	ld   h, c                                        ; $4234: $61
	ld   e, c                                        ; $4235: $59
	ld   b, a                                        ; $4236: $47
	and  b                                           ; $4237: $a0
	jr   c, jr_02d_423a                              ; $4238: $38 $00

jr_02d_423a:
	add  b                                           ; $423a: $80
	sbc  [hl]                                        ; $423b: $9e
	ret  nc                                          ; $423c: $d0

	pop  af                                          ; $423d: $f1
	jr   nz, jr_02d_42a0                             ; $423e: $20 $60

	ld   b, b                                        ; $4240: $40
	ret  nz                                          ; $4241: $c0

	add  b                                           ; $4242: $80
	add  b                                           ; $4243: $80
	add  b                                           ; $4244: $80
	ld   [bc], a                                     ; $4245: $02
	ld   hl, $0706                                   ; $4246: $21 $06 $07
	ld   sp, hl                                      ; $4249: $f9
	rlca                                             ; $424a: $07
	rst  $38                                         ; $424b: $ff
	nop                                              ; $424c: $00
	rst  $38                                         ; $424d: $ff
	ret  nc                                          ; $424e: $d0

	cp   a                                           ; $424f: $bf
	add  a                                           ; $4250: $87
	ld   e, a                                        ; $4251: $5f
	ld   h, b                                        ; $4252: $60
	ld   l, a                                        ; $4253: $6f
	ld   b, d                                        ; $4254: $42
	daa                                              ; $4255: $27

jr_02d_4256:
	jr   nc, jr_02d_428b                             ; $4256: $30 $33

	db   $fc                                         ; $4258: $fc
	cp   $18                                         ; $4259: $fe $18
	db   $fc                                         ; $425b: $fc
	jr   nc, jr_02d_4256                             ; $425c: $30 $f8

	ldh  [$f0], a                                    ; $425e: $e0 $f0
	ret  nz                                          ; $4260: $c0

	ldh  [$60], a                                    ; $4261: $e0 $60
	ldh  [$60], a                                    ; $4263: $e0 $60
	ldh  [$d0], a                                    ; $4265: $e0 $d0
	ldh  a, [$e0]                                    ; $4267: $f0 $e0
	sbc  l                                           ; $4269: $9d
	nop                                              ; $426a: $00
	ld   [bc], a                                     ; $426b: $02
	dec  bc                                          ; $426c: $0b
	rrca                                             ; $426d: $0f
	inc  de                                          ; $426e: $13
	add  c                                           ; $426f: $81
	rra                                              ; $4270: $1f
	inc  b                                           ; $4271: $04
	ccf                                              ; $4272: $3f
	cpl                                              ; $4273: $2f
	daa                                              ; $4274: $27
	cpl                                              ; $4275: $2f
	ld   a, a                                        ; $4276: $7f
	add  c                                           ; $4277: $81
	ld   e, a                                        ; $4278: $5f
	ld   [bc], a                                     ; $4279: $02
	ld   c, a                                        ; $427a: $4f
	ld   e, a                                        ; $427b: $5f
	rst  $10                                         ; $427c: $d7
	add  b                                           ; $427d: $80
	ld   sp, hl                                      ; $427e: $f9
	ld   bc, $f4f8                                   ; $427f: $01 $f8 $f4
	add  c                                           ; $4282: $81
	db   $fc                                         ; $4283: $fc
	inc  b                                           ; $4284: $04
	ld   a, [$fdfe]                                  ; $4285: $fa $fe $fd
	rst  $38                                         ; $4288: $ff
	cp   $81                                         ; $4289: $fe $81

jr_02d_428b:
	rst  $38                                         ; $428b: $ff
	dec  d                                           ; $428c: $15
	rst  $28                                         ; $428d: $ef
	ldh  a, [$61]                                    ; $428e: $f0 $61
	pop  hl                                          ; $4290: $e1
	ld   [hl+], a                                    ; $4291: $22
	ld   h, e                                        ; $4292: $63
	ld   b, l                                        ; $4293: $45
	ld   h, [hl]                                     ; $4294: $66
	ld   a, [bc]                                     ; $4295: $0a
	inc  c                                           ; $4296: $0c
	inc  b                                           ; $4297: $04
	ld   [$9088], sp                                 ; $4298: $08 $88 $90
	ld   d, b                                        ; $429b: $50
	ldh  [$27], a                                    ; $429c: $e0 $27
	rst  ToBoot                                         ; $429e: $c7
	ld   b, e                                        ; $429f: $43

jr_02d_42a0:
	add  e                                           ; $42a0: $83
	add  c                                           ; $42a1: $81
	ld   bc, $0380                                   ; $42a2: $01 $80 $03
	ld   [de], a                                     ; $42a5: $12
	ld   b, $07                                      ; $42a6: $06 $07
	dec  c                                           ; $42a8: $0d
	rrca                                             ; $42a9: $0f
	dec  de                                          ; $42aa: $1b
	rra                                              ; $42ab: $1f
	ld   h, l                                        ; $42ac: $65
	ld   a, l                                        ; $42ad: $7d
	dec  de                                          ; $42ae: $1b
	rst  $30                                         ; $42af: $f7
	ld   [hl], e                                     ; $42b0: $73
	di                                               ; $42b1: $f3
	or   e                                           ; $42b2: $b3
	di                                               ; $42b3: $f3
	pop  de                                          ; $42b4: $d1
	di                                               ; $42b5: $f3
	inc  sp                                          ; $42b6: $33
	di                                               ; $42b7: $f3
	pop  de                                          ; $42b8: $d1
	add  e                                           ; $42b9: $83
	pop  af                                          ; $42ba: $f1
	ld   bc, $000e                                   ; $42bb: $01 $0e $00
	add  h                                           ; $42be: $84
	add  b                                           ; $42bf: $80
	add  h                                           ; $42c0: $84
	ret  nz                                          ; $42c1: $c0

	add  b                                           ; $42c2: $80
	add  b                                           ; $42c3: $80
	add  h                                           ; $42c4: $84
	nop                                              ; $42c5: $00
	add  b                                           ; $42c6: $80
	ld   bc, $8202                                   ; $42c7: $01 $02 $82
	add  e                                           ; $42ca: $83
	add  l                                           ; $42cb: $85
	add  c                                           ; $42cc: $81
	add  a                                           ; $42cd: $87
	inc  d                                           ; $42ce: $14
	pop  af                                          ; $42cf: $f1
	di                                               ; $42d0: $f3
	ld   c, $0f                                      ; $42d1: $0e $0f
	jr   nc, jr_02d_4314                             ; $42d3: $30 $3f

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42d5: $cf
	rst  $38                                         ; $42d6: $ff
	ccf                                              ; $42d7: $3f
	rst  $38                                         ; $42d8: $ff
	di                                               ; $42d9: $f3
	rst  $38                                         ; $42da: $ff
	ldh  a, [rIE]                                    ; $42db: $f0 $ff
	db   $fd                                         ; $42dd: $fd
	rst  $38                                         ; $42de: $ff
	cp   $ff                                         ; $42df: $fe $ff
	ei                                               ; $42e1: $fb
	rst  $38                                         ; $42e2: $ff
	ld   a, a                                        ; $42e3: $7f
	add  e                                           ; $42e4: $83
	rst  $38                                         ; $42e5: $ff
	nop                                              ; $42e6: $00
	cp   a                                           ; $42e7: $bf
	add  e                                           ; $42e8: $83
	rst  $38                                         ; $42e9: $ff
	inc  bc                                          ; $42ea: $03
	reti                                             ; $42eb: $d9


	rst  $38                                         ; $42ec: $ff
	rst  $28                                         ; $42ed: $ef
	ld   a, l                                        ; $42ee: $7d
	add  d                                           ; $42ef: $82
	ld   a, a                                        ; $42f0: $7f
	nop                                              ; $42f1: $00
	ld   a, [hl]                                     ; $42f2: $7e
	add  c                                           ; $42f3: $81
	ld   a, a                                        ; $42f4: $7f
	nop                                              ; $42f5: $00
	halt                                             ; $42f6: $76
	add  e                                           ; $42f7: $83
	ld   a, a                                        ; $42f8: $7f
	ld   a, [bc]                                     ; $42f9: $0a
	ld   [$69de], a                                  ; $42fa: $ea $de $69
	cp   l                                           ; $42fd: $bd
	sbc  $fe                                         ; $42fe: $de $fe
	sbc  a                                           ; $4300: $9f
	ld   a, a                                        ; $4301: $7f
	ld   a, $ff                                      ; $4302: $3e $ff
	ld   e, l                                        ; $4304: $5d
	add  c                                           ; $4305: $81
	cp   $05                                         ; $4306: $fe $05
	cp   e                                           ; $4308: $bb
	rst  $38                                         ; $4309: $ff
	ld   a, e                                        ; $430a: $7b
	rlca                                             ; $430b: $07
	add  hl, bc                                      ; $430c: $09
	rrca                                             ; $430d: $0f
	add  b                                           ; $430e: $80
	sbc  a                                           ; $430f: $9f
	ld   b, $75                                      ; $4310: $06 $75
	ld   a, a                                        ; $4312: $7f
	ld   l, a                                        ; $4313: $6f

jr_02d_4314:
	rst  $38                                         ; $4314: $ff
	rra                                              ; $4315: $1f
	rst  $38                                         ; $4316: $ff
	ld   a, [hl]                                     ; $4317: $7e
	add  c                                           ; $4318: $81
	rst  $38                                         ; $4319: $ff
	nop                                              ; $431a: $00
	xor  $80                                         ; $431b: $ee $80
	ld   h, c                                        ; $431d: $61
	inc  b                                           ; $431e: $04
	and  c                                           ; $431f: $a1
	xor  d                                           ; $4320: $aa
	ld   [$f5fd], a                                  ; $4321: $ea $fd $f5
	add  b                                           ; $4324: $80
	or   $01                                         ; $4325: $f6 $01
	db   $fd                                         ; $4327: $fd
	ld   sp, hl                                      ; $4328: $f9
	add  b                                           ; $4329: $80
	ld   a, [$ff09]                                  ; $432a: $fa $09 $ff
	db   $fd                                         ; $432d: $fd
	adc  c                                           ; $432e: $89
	ld   hl, sp+$38                                  ; $432f: $f8 $38
	ld   hl, sp-$0c                                  ; $4331: $f8 $f4
	db   $fc                                         ; $4333: $fc
	sbc  h                                           ; $4334: $9c
	db   $fc                                         ; $4335: $fc
	add  b                                           ; $4336: $80
	db   $fd                                         ; $4337: $fd
	ld   bc, $7f7b                                   ; $4338: $01 $7b $7f
	add  b                                           ; $433b: $80
	rst  $38                                         ; $433c: $ff
	inc  bc                                          ; $433d: $03
	ld   [hl], e                                     ; $433e: $73
	ld   a, a                                        ; $433f: $7f
	ret  nc                                          ; $4340: $d0

	nop                                              ; $4341: $00
	add  b                                           ; $4342: $80
	inc  a                                           ; $4343: $3c
	ld   [bc], a                                     ; $4344: $02
	ld   b, d                                        ; $4345: $42
	ld   a, [hl]                                     ; $4346: $7e
	ld   l, [hl]                                     ; $4347: $6e
	add  e                                           ; $4348: $83
	ld   a, [hl]                                     ; $4349: $7e
	inc  bc                                          ; $434a: $03
	ld   l, [hl]                                     ; $434b: $6e
	ld   a, [hl]                                     ; $434c: $7e
	nop                                              ; $434d: $00
	inc  a                                           ; $434e: $3c
	add  b                                           ; $434f: $80
	nop                                              ; $4350: $00
	add  b                                           ; $4351: $80
	inc  a                                           ; $4352: $3c
	inc  bc                                          ; $4353: $03
	ld   b, h                                        ; $4354: $44
	ld   a, h                                        ; $4355: $7c
	ld   e, h                                        ; $4356: $5c
	ld   a, h                                        ; $4357: $7c
	add  h                                           ; $4358: $84
	inc  a                                           ; $4359: $3c
	ld   bc, $3c24                                   ; $435a: $01 $24 $3c
	add  b                                           ; $435d: $80
	nop                                              ; $435e: $00
	add  b                                           ; $435f: $80
	inc  a                                           ; $4360: $3c
	dec  bc                                          ; $4361: $0b
	ld   b, d                                        ; $4362: $42
	ld   a, [hl]                                     ; $4363: $7e
	ld   b, [hl]                                     ; $4364: $46
	ld   a, [hl]                                     ; $4365: $7e
	db   $10                                         ; $4366: $10
	inc  e                                           ; $4367: $1c
	ld   h, $3e                                      ; $4368: $26 $3e
	ld   d, d                                        ; $436a: $52
	ld   a, [hl]                                     ; $436b: $7e
	ld   b, d                                        ; $436c: $42
	ld   a, [hl]                                     ; $436d: $7e
	add  b                                           ; $436e: $80
	nop                                              ; $436f: $00
	add  b                                           ; $4370: $80
	inc  a                                           ; $4371: $3c
	dec  bc                                          ; $4372: $0b
	ld   b, d                                        ; $4373: $42
	ld   a, [hl]                                     ; $4374: $7e
	ld   b, [hl]                                     ; $4375: $46
	ld   a, [hl]                                     ; $4376: $7e
	jr   nz, jr_02d_43b5                             ; $4377: $20 $3c

	ld   h, d                                        ; $4379: $62
	ld   a, [hl]                                     ; $437a: $7e
	ld   b, [hl]                                     ; $437b: $46
	ld   a, [hl]                                     ; $437c: $7e
	nop                                              ; $437d: $00
	inc  a                                           ; $437e: $3c
	add  b                                           ; $437f: $80
	nop                                              ; $4380: $00
	add  b                                           ; $4381: $80
	ld   c, $0b                                      ; $4382: $0e $0b
	ld   [de], a                                     ; $4384: $12
	ld   e, $2e                                      ; $4385: $1e $2e
	ld   a, $46                                      ; $4387: $3e $46
	ld   a, [hl]                                     ; $4389: $7e
	ld   h, [hl]                                     ; $438a: $66
	ld   a, [hl]                                     ; $438b: $7e
	ld   b, [hl]                                     ; $438c: $46
	ld   a, [hl]                                     ; $438d: $7e
	ld   a, [bc]                                     ; $438e: $0a
	ld   c, $80                                      ; $438f: $0e $80
	nop                                              ; $4391: $00
	add  b                                           ; $4392: $80
	ld   a, [hl]                                     ; $4393: $7e
	dec  bc                                          ; $4394: $0b
	ld   b, d                                        ; $4395: $42
	ld   a, [hl]                                     ; $4396: $7e
	ld   h, b                                        ; $4397: $60
	ld   a, h                                        ; $4398: $7c
	ld   h, d                                        ; $4399: $62
	ld   a, [hl]                                     ; $439a: $7e
	ld   b, $3e                                      ; $439b: $06 $3e
	ld   b, [hl]                                     ; $439d: $46
	ld   a, [hl]                                     ; $439e: $7e
	nop                                              ; $439f: $00
	inc  a                                           ; $43a0: $3c
	add  b                                           ; $43a1: $80
	nop                                              ; $43a2: $00
	add  b                                           ; $43a3: $80
	ld   a, $0b                                      ; $43a4: $3e $0b
	ld   b, d                                        ; $43a6: $42
	ld   a, [hl]                                     ; $43a7: $7e
	ld   h, b                                        ; $43a8: $60
	ld   a, h                                        ; $43a9: $7c
	ld   h, d                                        ; $43aa: $62
	ld   a, [hl]                                     ; $43ab: $7e
	ld   h, [hl]                                     ; $43ac: $66
	ld   a, [hl]                                     ; $43ad: $7e
	ld   h, [hl]                                     ; $43ae: $66
	ld   a, [hl]                                     ; $43af: $7e
	nop                                              ; $43b0: $00
	inc  a                                           ; $43b1: $3c
	add  b                                           ; $43b2: $80
	nop                                              ; $43b3: $00
	add  b                                           ; $43b4: $80

jr_02d_43b5:
	ld   a, [hl]                                     ; $43b5: $7e
	dec  bc                                          ; $43b6: $0b
	ld   b, d                                        ; $43b7: $42
	ld   a, [hl]                                     ; $43b8: $7e
	ld   b, [hl]                                     ; $43b9: $46
	ld   a, [hl]                                     ; $43ba: $7e
	ld   d, $1e                                      ; $43bb: $16 $1e
	jr   z, jr_02d_43fb                              ; $43bd: $28 $3c

	ld   d, b                                        ; $43bf: $50
	ld   a, b                                        ; $43c0: $78
	ld   c, b                                        ; $43c1: $48
	ld   a, b                                        ; $43c2: $78
	add  b                                           ; $43c3: $80
	nop                                              ; $43c4: $00
	add  b                                           ; $43c5: $80
	inc  a                                           ; $43c6: $3c
	dec  bc                                          ; $43c7: $0b
	ld   b, d                                        ; $43c8: $42
	ld   a, [hl]                                     ; $43c9: $7e
	ld   h, [hl]                                     ; $43ca: $66
	ld   a, [hl]                                     ; $43cb: $7e
	ld   h, [hl]                                     ; $43cc: $66
	ld   a, [hl]                                     ; $43cd: $7e
	ld   h, [hl]                                     ; $43ce: $66
	ld   a, [hl]                                     ; $43cf: $7e
	ld   h, [hl]                                     ; $43d0: $66
	ld   a, [hl]                                     ; $43d1: $7e
	nop                                              ; $43d2: $00
	inc  a                                           ; $43d3: $3c
	add  b                                           ; $43d4: $80
	nop                                              ; $43d5: $00
	add  b                                           ; $43d6: $80
	inc  a                                           ; $43d7: $3c
	dec  bc                                          ; $43d8: $0b
	ld   b, d                                        ; $43d9: $42
	ld   a, [hl]                                     ; $43da: $7e
	ld   h, [hl]                                     ; $43db: $66
	ld   a, [hl]                                     ; $43dc: $7e
	ld   h, [hl]                                     ; $43dd: $66
	ld   a, [hl]                                     ; $43de: $7e
	ld   b, $3e                                      ; $43df: $06 $3e
	ld   b, [hl]                                     ; $43e1: $46
	ld   a, [hl]                                     ; $43e2: $7e
	nop                                              ; $43e3: $00
	inc  a                                           ; $43e4: $3c
	add  b                                           ; $43e5: $80
	rst  $38                                         ; $43e6: $ff
	nop                                              ; $43e7: $00
	add  b                                           ; $43e8: $80
	add  c                                           ; $43e9: $81
	rst  $38                                         ; $43ea: $ff
	ld   bc, $ffe0                                   ; $43eb: $01 $e0 $ff
	add  [hl]                                        ; $43ee: $86
	ldh  a, [rSC]                                    ; $43ef: $f0 $02
	sbc  a                                           ; $43f1: $9f
	rst  $38                                         ; $43f2: $ff
	nop                                              ; $43f3: $00
	add  c                                           ; $43f4: $81
	rst  $38                                         ; $43f5: $ff
	ld   bc, $ff00                                   ; $43f6: $01 $00 $ff
	add  d                                           ; $43f9: $82
	nop                                              ; $43fa: $00

jr_02d_43fb:
	add  b                                           ; $43fb: $80
	sbc  h                                           ; $43fc: $9c
	add  b                                           ; $43fd: $80
	sub  h                                           ; $43fe: $94
	add  b                                           ; $43ff: $80
	rst  $38                                         ; $4400: $ff
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	add  c                                           ; $4403: $81
	rst  $38                                         ; $4404: $ff
	ld   bc, $ff00                                   ; $4405: $01 $00 $ff
	add  d                                           ; $4408: $82
	nop                                              ; $4409: $00
	add  d                                           ; $440a: $82
	ld   [de], a                                     ; $440b: $12
	add  b                                           ; $440c: $80
	rst  $38                                         ; $440d: $ff
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	add  c                                           ; $4410: $81
	rst  $38                                         ; $4411: $ff
	ld   bc, $ff00                                   ; $4412: $01 $00 $ff
	add  d                                           ; $4415: $82
	nop                                              ; $4416: $00
	add  b                                           ; $4417: $80
	ld   b, $80                                      ; $4418: $06 $80
	ld   bc, $ff80                                   ; $441a: $01 $80 $ff
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	add  c                                           ; $441f: $81
	rst  $38                                         ; $4420: $ff
	ld   bc, $ff00                                   ; $4421: $01 $00 $ff
	add  d                                           ; $4424: $82
	nop                                              ; $4425: $00
	add  b                                           ; $4426: $80
	ld   bc, $1980                                   ; $4427: $01 $80 $19
	add  b                                           ; $442a: $80
	rst  $38                                         ; $442b: $ff
	nop                                              ; $442c: $00
	ld   bc, $ff81                                   ; $442d: $01 $81 $ff
	ld   bc, $ff07                                   ; $4430: $01 $07 $ff
	add  [hl]                                        ; $4433: $86
	rrca                                             ; $4434: $0f
	nop                                              ; $4435: $00
	ld   b, $bd                                      ; $4436: $06 $bd
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	dec  b                                           ; $443a: $05
	add  a                                           ; $443b: $87
	rlca                                             ; $443c: $07
	add  b                                           ; $443d: $80
	rst  $38                                         ; $443e: $ff
	inc  bc                                          ; $443f: $03
	inc  bc                                          ; $4440: $03
	rst  $38                                         ; $4441: $ff
	ld   bc, $ceff                                   ; $4442: $01 $ff $ce
	nop                                              ; $4445: $00
	ld   bc, $f393                                   ; $4446: $01 $93 $f3
	add  h                                           ; $4449: $84
	ldh  a, [$80]                                    ; $444a: $f0 $80
	di                                               ; $444c: $f3
	add  d                                           ; $444d: $82
	ldh  a, [$80]                                    ; $444e: $f0 $80
	ldh  a, [c]                                      ; $4450: $f2
	ld   bc, $ff9f                                   ; $4451: $01 $9f $ff
	add  b                                           ; $4454: $80
	push de                                          ; $4455: $d5
	add  b                                           ; $4456: $80
	rst  $30                                         ; $4457: $f7
	add  b                                           ; $4458: $80
	adc  b                                           ; $4459: $88
	add  b                                           ; $445a: $80
	cp   $80                                         ; $445b: $fe $80
	adc  b                                           ; $445d: $88
	add  b                                           ; $445e: $80
	sbc  h                                           ; $445f: $9c
	add  b                                           ; $4460: $80
	xor  d                                           ; $4461: $aa
	add  b                                           ; $4462: $80
	ld   [de], a                                     ; $4463: $12
	add  b                                           ; $4464: $80
	rla                                              ; $4465: $17
	add  b                                           ; $4466: $80
	dec  h                                           ; $4467: $25
	add  b                                           ; $4468: $80
	ld   l, c                                        ; $4469: $69
	add  [hl]                                        ; $446a: $86
	ld   hl, $1f80                                   ; $446b: $21 $80 $1f
	add  b                                           ; $446e: $80
	call nz, $0480                                   ; $446f: $c4 $80 $04
	add  b                                           ; $4472: $80
	rlca                                             ; $4473: $07
	add  b                                           ; $4474: $80
	call nz, $0880                                   ; $4475: $c4 $80 $08
	add  b                                           ; $4478: $80
	ret  z                                           ; $4479: $c8

	add  b                                           ; $447a: $80
	db   $10                                         ; $447b: $10
	add  b                                           ; $447c: $80
	rst  ToBoot                                         ; $447d: $c7
	add  b                                           ; $447e: $80
	ld   bc, $1980                                   ; $447f: $01 $80 $19
	add  b                                           ; $4482: $80
	add  a                                           ; $4483: $87
	add  b                                           ; $4484: $80
	add  c                                           ; $4485: $81
	add  b                                           ; $4486: $80
	adc  c                                           ; $4487: $89
	add  b                                           ; $4488: $80
	adc  d                                           ; $4489: $8a
	add  b                                           ; $448a: $80
	sub  d                                           ; $448b: $92
	ld   bc, $cfc9                                   ; $448c: $01 $c9 $cf
	add  d                                           ; $448f: $82
	rrca                                             ; $4490: $0f
	add  b                                           ; $4491: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4492: $cf
	add  h                                           ; $4493: $84
	rrca                                             ; $4494: $0f
	add  b                                           ; $4495: $80
	adc  a                                           ; $4496: $8f
	nop                                              ; $4497: $00
	ld   b, $87                                      ; $4498: $06 $87
	nop                                              ; $449a: $00
	add  b                                           ; $449b: $80
	rlca                                             ; $449c: $07
	inc  b                                           ; $449d: $04
	inc  b                                           ; $449e: $04
	rlca                                             ; $449f: $07
	ld   b, $07                                      ; $44a0: $06 $07
	ld   [bc], a                                     ; $44a2: $02
	add  a                                           ; $44a3: $87
	nop                                              ; $44a4: $00
	add  b                                           ; $44a5: $80
	rst  $38                                         ; $44a6: $ff
	inc  b                                           ; $44a7: $04
	ld   bc, $03ff                                   ; $44a8: $01 $ff $03
	rst  $38                                         ; $44ab: $ff
	ld   [bc], a                                     ; $44ac: $02
	add  a                                           ; $44ad: $87
	nop                                              ; $44ae: $00
	add  b                                           ; $44af: $80
	rst  $38                                         ; $44b0: $ff
	inc  b                                           ; $44b1: $04
	nop                                              ; $44b2: $00
	rst  $38                                         ; $44b3: $ff
	nop                                              ; $44b4: $00
	rst  $38                                         ; $44b5: $ff
	dec  b                                           ; $44b6: $05
	sub  a                                           ; $44b7: $97
	rlca                                             ; $44b8: $07
	ld   [$0705], sp                                 ; $44b9: $08 $05 $07
	inc  b                                           ; $44bc: $04

jr_02d_44bd:
	rlca                                             ; $44bd: $07
	ld   b, $07                                      ; $44be: $06 $07
	ld   [hl], d                                     ; $44c0: $72
	ld   [hl], b                                     ; $44c1: $70
	adc  b                                           ; $44c2: $88
	add  e                                           ; $44c3: $83
	ld   hl, sp+$01                                  ; $44c4: $f8 $01
	jr   nz, @+$72                                   ; $44c6: $20 $70

	add  b                                           ; $44c8: $80
	ldh  a, [rDIV]                                   ; $44c9: $f0 $04
	jr   nc, jr_02d_44bd                             ; $44cb: $30 $f0

	db   $10                                         ; $44cd: $10
	ldh  a, [$5a]                                    ; $44ce: $f0 $5a
	add  e                                           ; $44d0: $83
	ld   a, [hl]                                     ; $44d1: $7e
	ld   b, $de                                      ; $44d2: $06 $de
	cp   $16                                         ; $44d4: $fe $16
	cp   $10                                         ; $44d6: $fe $10

jr_02d_44d8:
	db   $fc                                         ; $44d8: $fc
	ld   d, b                                        ; $44d9: $50
	add  c                                           ; $44da: $81
	ld   [hl], b                                     ; $44db: $70

jr_02d_44dc:
	nop                                              ; $44dc: $00
	jr   nz, @-$71                                   ; $44dd: $20 $8d

	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	rst  $38                                         ; $44e1: $ff
	add  e                                           ; $44e2: $83
	nop                                              ; $44e3: $00
	ld   b, $55                                      ; $44e4: $06 $55
	nop                                              ; $44e6: $00
	rst  $38                                         ; $44e7: $ff
	nop                                              ; $44e8: $00
	rst  $38                                         ; $44e9: $ff
	nop                                              ; $44ea: $00
	xor  d                                           ; $44eb: $aa
	add  e                                           ; $44ec: $83
	nop                                              ; $44ed: $00
	add  b                                           ; $44ee: $80
	ei                                               ; $44ef: $fb
	dec  bc                                          ; $44f0: $0b
	add  [hl]                                        ; $44f1: $86
	rst  $38                                         ; $44f2: $ff
	db   $e3                                         ; $44f3: $e3
	rst  $38                                         ; $44f4: $ff
	db   $e3                                         ; $44f5: $e3
	rst  $38                                         ; $44f6: $ff
	db   $e3                                         ; $44f7: $e3
	rst  $38                                         ; $44f8: $ff
	rst  $20                                         ; $44f9: $e7
	rst  $38                                         ; $44fa: $ff
	add  d                                           ; $44fb: $82
	rst  $38                                         ; $44fc: $ff
	add  b                                           ; $44fd: $80
	nop                                              ; $44fe: $00
	add  b                                           ; $44ff: $80
	rst  $30                                         ; $4500: $f7
	dec  bc                                          ; $4501: $0b
	jr   @+$01                                       ; $4502: $18 $ff

	sub  h                                           ; $4504: $94
	rst  $38                                         ; $4505: $ff
	sbc  h                                           ; $4506: $9c
	rst  $38                                         ; $4507: $ff
	add  e                                           ; $4508: $83
	rst  $28                                         ; $4509: $ef
	sub  e                                           ; $450a: $93
	rst  $38                                         ; $450b: $ff
	db   $10                                         ; $450c: $10
	rst  $38                                         ; $450d: $ff
	add  b                                           ; $450e: $80
	nop                                              ; $450f: $00
	add  b                                           ; $4510: $80
	cp   $03                                         ; $4511: $fe $03
	add  d                                           ; $4513: $82
	cp   $b2                                         ; $4514: $fe $b2
	cp   $80                                         ; $4516: $fe $80
	ld   hl, sp+$05                                  ; $4518: $f8 $05
	ld   a, b                                        ; $451a: $78
	ld   hl, sp+$78                                  ; $451b: $f8 $78
	ld   hl, sp+$48                                  ; $451d: $f8 $48
	ld   a, b                                        ; $451f: $78
	add  b                                           ; $4520: $80
	nop                                              ; $4521: $00
	add  b                                           ; $4522: $80
	ldh  a, [rSC]                                    ; $4523: $f0 $02
	sub  c                                           ; $4525: $91
	pop  af                                          ; $4526: $f1
	ldh  a, [c]                                      ; $4527: $f2
	add  c                                           ; $4528: $81

jr_02d_4529:
	di                                               ; $4529: $f3
	add  b                                           ; $452a: $80
	rst  $38                                         ; $452b: $ff
	inc  bc                                          ; $452c: $03
	rst  $20                                         ; $452d: $e7
	rst  $38                                         ; $452e: $ff
	add  [hl]                                        ; $452f: $86
	rst  $38                                         ; $4530: $ff
	add  b                                           ; $4531: $80
	nop                                              ; $4532: $00
	add  b                                           ; $4533: $80
	rst  $38                                         ; $4534: $ff
	dec  bc                                          ; $4535: $0b
	ld   [$beff], sp                                 ; $4536: $08 $ff $be
	rst  $38                                         ; $4539: $ff
	ld   a, a                                        ; $453a: $7f
	rst  $38                                         ; $453b: $ff
	ld   a, $ff                                      ; $453c: $3e $ff
	ld   a, $ff                                      ; $453e: $3e $ff
	ret                                              ; $4540: $c9


	rst  $38                                         ; $4541: $ff
	add  b                                           ; $4542: $80
	nop                                              ; $4543: $00
	add  b                                           ; $4544: $80
	ret  nz                                          ; $4545: $c0

	ld   [bc], a                                     ; $4546: $02
	jr   nz, jr_02d_4529                             ; $4547: $20 $e0

	ld   h, b                                        ; $4549: $60
	add  c                                           ; $454a: $81
	ldh  [$03], a                                    ; $454b: $e0 $03
	ld   h, b                                        ; $454d: $60
	ldh  [rP1], a                                    ; $454e: $e0 $00
	ret  nz                                          ; $4550: $c0

	add  d                                           ; $4551: $82
	nop                                              ; $4552: $00
	add  d                                           ; $4553: $82
	jr   nc, jr_02d_44d8                             ; $4554: $30 $82

	nop                                              ; $4556: $00
	add  d                                           ; $4557: $82
	jr   nc, jr_02d_44dc                             ; $4558: $30 $82

	nop                                              ; $455a: $00
	add  b                                           ; $455b: $80
	inc  bc                                          ; $455c: $03
	inc  bc                                          ; $455d: $03
	ld   [bc], a                                     ; $455e: $02
	inc  bc                                          ; $455f: $03
	ld   [bc], a                                     ; $4560: $02
	inc  bc                                          ; $4561: $03
	add  b                                           ; $4562: $80
	nop                                              ; $4563: $00
	add  b                                           ; $4564: $80
	inc  bc                                          ; $4565: $03
	inc  bc                                          ; $4566: $03
	ld   [bc], a                                     ; $4567: $02
	inc  bc                                          ; $4568: $03
	ld   [bc], a                                     ; $4569: $02
	inc  bc                                          ; $456a: $03
	add  h                                           ; $456b: $84
	nop                                              ; $456c: $00
	add  b                                           ; $456d: $80
	inc  bc                                          ; $456e: $03
	ld   [$0704], sp                                 ; $456f: $08 $04 $07
	dec  bc                                          ; $4572: $0b
	rrca                                             ; $4573: $0f
	ld   c, $0f                                      ; $4574: $0e $0f
	dec  d                                           ; $4576: $15
	rra                                              ; $4577: $1f
	inc  c                                           ; $4578: $0c
	add  c                                           ; $4579: $81
	nop                                              ; $457a: $00
	add  b                                           ; $457b: $80
	ldh  a, [rTIMA]                                  ; $457c: $f0 $05
	db   $10                                         ; $457e: $10
	ldh  a, [$d0]                                    ; $457f: $f0 $d0
	ldh  a, [$30]                                    ; $4581: $f0 $30
	ldh  a, [$80]                                    ; $4583: $f0 $80
	ldh  [$80], a                                    ; $4585: $e0 $80
	nop                                              ; $4587: $00
	add  b                                           ; $4588: $80
	rrca                                             ; $4589: $0f
	nop                                              ; $458a: $00
	rra                                              ; $458b: $1f
	add  b                                           ; $458c: $80
	db   $10                                         ; $458d: $10
	add  b                                           ; $458e: $80
	ld   de, $1380                                   ; $458f: $11 $80 $13
	add  b                                           ; $4592: $80
	rla                                              ; $4593: $17
	add  e                                           ; $4594: $83
	db   $10                                         ; $4595: $10
	ld   bc, $1e11                                   ; $4596: $01 $11 $1e
	add  b                                           ; $4599: $80
	inc  c                                           ; $459a: $0c
	adc  d                                           ; $459b: $8a
	nop                                              ; $459c: $00
	add  b                                           ; $459d: $80
	rra                                              ; $459e: $1f
	ld   c, $3f                                      ; $459f: $0e $3f
	ld   hl, $2320                                   ; $45a1: $21 $20 $23
	ld   hl, $2327                                   ; $45a4: $21 $27 $23
	cpl                                              ; $45a7: $2f
	dec  hl                                          ; $45a8: $2b
	daa                                              ; $45a9: $27
	dec  h                                           ; $45aa: $25
	inc  hl                                          ; $45ab: $23
	ld   [hl+], a                                    ; $45ac: $22
	ld   hl, $80e1                                   ; $45ad: $21 $e1 $80
	nop                                              ; $45b0: $00
	add  b                                           ; $45b1: $80
	ldh  [$80], a                                    ; $45b2: $e0 $80
	ldh  a, [$80]                                    ; $45b4: $f0 $80
	db   $10                                         ; $45b6: $10
	ld   bc, $f717                                   ; $45b7: $01 $17 $f7
	add  b                                           ; $45ba: $80
	inc  de                                          ; $45bb: $13
	add  b                                           ; $45bc: $80
	ld   de, $1002                                   ; $45bd: $11 $02 $10
	rrca                                             ; $45c0: $0f
	nop                                              ; $45c1: $00
	add  b                                           ; $45c2: $80
	ld   bc, $0302                                   ; $45c3: $01 $02 $03
	ld   [bc], a                                     ; $45c6: $02
	ld   b, $81                                      ; $45c7: $06 $81
	inc  b                                           ; $45c9: $04
	nop                                              ; $45ca: $00
	inc  c                                           ; $45cb: $0c
	add  d                                           ; $45cc: $82
	ld   [$0911], sp                                 ; $45cd: $08 $11 $09
	ld   a, b                                        ; $45d0: $78
	ld   a, [hl]                                     ; $45d1: $7e
	rst  $38                                         ; $45d2: $ff
	sbc  c                                           ; $45d3: $99
	add  c                                           ; $45d4: $81
	inc  a                                           ; $45d5: $3c
	jr   jr_02d_4656                                 ; $45d6: $18 $7e

	ld   h, [hl]                                     ; $45d8: $66
	ld   a, [hl]                                     ; $45d9: $7e
	inc  a                                           ; $45da: $3c
	rst  $38                                         ; $45db: $ff
	db   $db                                         ; $45dc: $db
	rst  $20                                         ; $45dd: $e7
	ld   h, [hl]                                     ; $45de: $66
	rst  $38                                         ; $45df: $ff
	jp   $008f                                       ; $45e0: $c3 $8f $00


	add  b                                           ; $45e3: $80
	ld   bc, $0380                                   ; $45e4: $01 $80 $03
	nop                                              ; $45e7: $00
	rlca                                             ; $45e8: $07
	add  c                                           ; $45e9: $81
	dec  b                                           ; $45ea: $05
	nop                                              ; $45eb: $00
	dec  c                                           ; $45ec: $0d
	add  e                                           ; $45ed: $83
	add  hl, bc                                      ; $45ee: $09
	ld   bc, $7e78                                   ; $45ef: $01 $78 $7e
	add  b                                           ; $45f2: $80
	rst  $38                                         ; $45f3: $ff
	dec  c                                           ; $45f4: $0d
	ld   bc, $82ff                                   ; $45f5: $01 $ff $82
	rst  $38                                         ; $45f8: $ff
	db   $fd                                         ; $45f9: $fd
	jp   $ffc1                                       ; $45fa: $c3 $c1 $ff


	add  d                                           ; $45fd: $82
	rst  $38                                         ; $45fe: $ff
	add  d                                           ; $45ff: $82
	rst  $38                                         ; $4600: $ff
	add  e                                           ; $4601: $83
	nop                                              ; $4602: $00

jr_02d_4603:
	add  b                                           ; $4603: $80
	add  b                                           ; $4604: $80
	ld   [bc], a                                     ; $4605: $02
	ret  nz                                          ; $4606: $c0

	ld   b, b                                        ; $4607: $40
	ld   h, b                                        ; $4608: $60
	add  c                                           ; $4609: $81
	and  b                                           ; $460a: $a0
	nop                                              ; $460b: $00
	or   b                                           ; $460c: $b0
	add  b                                           ; $460d: $80
	sub  b                                           ; $460e: $90
	add  b                                           ; $460f: $80
	stop                                             ; $4610: $10 $00
	sub  b                                           ; $4612: $90
	add  b                                           ; $4613: $80
	pop  af                                          ; $4614: $f1
	add  h                                           ; $4615: $84
	ldh  a, [$80]                                    ; $4616: $f0 $80
	rst  $38                                         ; $4618: $ff
	nop                                              ; $4619: $00
	ldh  [$81], a                                    ; $461a: $e0 $81
	rst  $38                                         ; $461c: $ff
	ld   bc, $ff80                                   ; $461d: $01 $80 $ff
	add  b                                           ; $4620: $80
	ret                                              ; $4621: $c9


	add  b                                           ; $4622: $80
	adc  b                                           ; $4623: $88
	add  d                                           ; $4624: $82
	nop                                              ; $4625: $00
	add  b                                           ; $4626: $80
	rst  $38                                         ; $4627: $ff
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	add  c                                           ; $462a: $81
	rst  $38                                         ; $462b: $ff
	ld   bc, $ff00                                   ; $462c: $01 $00 $ff
	add  d                                           ; $462f: $82
	ld   hl, $0082                                   ; $4630: $21 $82 $00
	add  b                                           ; $4633: $80
	rst  $38                                         ; $4634: $ff
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	add  c                                           ; $4637: $81
	rst  $38                                         ; $4638: $ff
	ld   bc, $ff00                                   ; $4639: $01 $00 $ff
	add  b                                           ; $463c: $80
	nop                                              ; $463d: $00
	add  h                                           ; $463e: $84
	add  b                                           ; $463f: $80
	add  b                                           ; $4640: $80
	nop                                              ; $4641: $00
	add  h                                           ; $4642: $84
	add  b                                           ; $4643: $80
	nop                                              ; $4644: $00
	ld   [de], a                                     ; $4645: $12
	add  e                                           ; $4646: $83
	ld   e, $0a                                      ; $4647: $1e $0a
	db   $ed                                         ; $4649: $ed
	rst  $38                                         ; $464a: $ff
	sbc  [hl]                                        ; $464b: $9e
	rst  $38                                         ; $464c: $ff
	cp   a                                           ; $464d: $bf
	rst  $38                                         ; $464e: $ff
	ld   e, [hl]                                     ; $464f: $5e
	ld   a, a                                        ; $4650: $7f
	dec  l                                           ; $4651: $2d
	ccf                                              ; $4652: $3f
	inc  c                                           ; $4653: $0c
	add  e                                           ; $4654: $83
	nop                                              ; $4655: $00

jr_02d_4656:
	add  b                                           ; $4656: $80
	ret  nz                                          ; $4657: $c0

	inc  bc                                          ; $4658: $03
	ld   b, b                                        ; $4659: $40
	ret  nz                                          ; $465a: $c0

	ld   b, b                                        ; $465b: $40
	ret  nz                                          ; $465c: $c0

	add  b                                           ; $465d: $80
	add  b                                           ; $465e: $80
	add  b                                           ; $465f: $80
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	rst  $38                                         ; $4662: $ff
	add  b                                           ; $4663: $80
	ldh  [$80], a                                    ; $4664: $e0 $80
	add  b                                           ; $4666: $80
	add  b                                           ; $4667: $80
	add  e                                           ; $4668: $83
	add  b                                           ; $4669: $80
	add  a                                           ; $466a: $87
	add  d                                           ; $466b: $82
	add  [hl]                                        ; $466c: $86
	add  b                                           ; $466d: $80
	add  e                                           ; $466e: $83
	add  b                                           ; $466f: $80
	add  b                                           ; $4670: $80
	add  b                                           ; $4671: $80
	rlca                                             ; $4672: $07
	add  b                                           ; $4673: $80
	ld   bc, $c180                                   ; $4674: $01 $80 $c1
	add  b                                           ; $4677: $80
	pop  hl                                          ; $4678: $e1
	add  d                                           ; $4679: $82
	ld   hl, $c180                                   ; $467a: $21 $80 $c1
	ld   bc, $c101                                   ; $467d: $01 $01 $c1
	add  b                                           ; $4680: $80
	jr   nz, jr_02d_4603                             ; $4681: $20 $80

	ccf                                              ; $4683: $3f
	add  b                                           ; $4684: $80
	rra                                              ; $4685: $1f
	inc  bc                                          ; $4686: $03
	nop                                              ; $4687: $00
	jr   nz, jr_02d_468a                             ; $4688: $20 $00

jr_02d_468a:
	rra                                              ; $468a: $1f
	add  e                                           ; $468b: $83
	nop                                              ; $468c: $00
	add  c                                           ; $468d: $81
	rra                                              ; $468e: $1f
	add  b                                           ; $468f: $80
	rrca                                             ; $4690: $0f
	inc  bc                                          ; $4691: $03
	nop                                              ; $4692: $00
	stop                                             ; $4693: $10 $00
	rrca                                             ; $4695: $0f
	add  l                                           ; $4696: $85
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	rrca                                             ; $4699: $0f
	add  d                                           ; $469a: $82

jr_02d_469b:
	add  hl, bc                                      ; $469b: $09
	add  b                                           ; $469c: $80

jr_02d_469d:
	dec  c                                           ; $469d: $0d
	add  b                                           ; $469e: $80
	ld   b, $05                                      ; $469f: $06 $05
	inc  bc                                          ; $46a1: $03
	dec  bc                                          ; $46a2: $0b
	ld   bc, $0005                                   ; $46a3: $01 $05 $00
	inc  bc                                          ; $46a6: $03
	add  b                                           ; $46a7: $80
	nop                                              ; $46a8: $00
	ld   bc, $81ff                                   ; $46a9: $01 $ff $81
	add  b                                           ; $46ac: $80
	rst  $38                                         ; $46ad: $ff
	ld   bc, $42c3                                   ; $46ae: $01 $c3 $42
	add  b                                           ; $46b1: $80
	jp   $8180                                       ; $46b2: $c3 $80 $81


	add  b                                           ; $46b5: $80
	rst  $38                                         ; $46b6: $ff
	add  b                                           ; $46b7: $80
	ld   a, [hl]                                     ; $46b8: $7e

jr_02d_46b9:
	ld   bc, $ff00                                   ; $46b9: $01 $00 $ff
	sbc  l                                           ; $46bc: $9d
	nop                                              ; $46bd: $00
	ld   b, $7e                                      ; $46be: $06 $7e
	jp   $ffc1                                       ; $46c0: $c3 $c1 $ff


	add  d                                           ; $46c3: $82
	rst  $38                                         ; $46c4: $ff
	ld   bc, $fe80                                   ; $46c5: $01 $80 $fe
	add  b                                           ; $46c8: $80
	nop                                              ; $46c9: $00
	add  b                                           ; $46ca: $80
	rst  $38                                         ; $46cb: $ff
	add  b                                           ; $46cc: $80
	ld   a, [hl]                                     ; $46cd: $7e
	ld   bc, $0f00                                   ; $46ce: $01 $00 $0f
	add  d                                           ; $46d1: $82
	sub  b                                           ; $46d2: $90
	add  b                                           ; $46d3: $80
	jr   nc, jr_02d_4656                             ; $46d4: $30 $80

	ld   h, b                                        ; $46d6: $60
	ld   b, $c0                                      ; $46d7: $06 $c0
	ret  nc                                          ; $46d9: $d0

	add  b                                           ; $46da: $80
	and  b                                           ; $46db: $a0
	nop                                              ; $46dc: $00
	ret  nz                                          ; $46dd: $c0

	nop                                              ; $46de: $00
	add  b                                           ; $46df: $80
	db   $10                                         ; $46e0: $10
	add  b                                           ; $46e1: $80
	inc  bc                                          ; $46e2: $03
	add  d                                           ; $46e3: $82
	nop                                              ; $46e4: $00
	add  b                                           ; $46e5: $80
	rst  $38                                         ; $46e6: $ff
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	add  c                                           ; $46e9: $81
	rst  $38                                         ; $46ea: $ff
	ld   bc, $ff00                                   ; $46eb: $01 $00 $ff
	add  b                                           ; $46ee: $80
	sub  a                                           ; $46ef: $97
	add  b                                           ; $46f0: $80
	sub  h                                           ; $46f1: $94
	add  d                                           ; $46f2: $82
	nop                                              ; $46f3: $00
	add  b                                           ; $46f4: $80
	rst  $38                                         ; $46f5: $ff
	nop                                              ; $46f6: $00
	nop                                              ; $46f7: $00
	add  c                                           ; $46f8: $81
	rst  $38                                         ; $46f9: $ff
	inc  bc                                          ; $46fa: $03
	nop                                              ; $46fb: $00
	rst  $38                                         ; $46fc: $ff
	ret                                              ; $46fd: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46fe: $cf
	add  b                                           ; $46ff: $80
	ld   c, a                                        ; $4700: $4f
	add  d                                           ; $4701: $82
	rrca                                             ; $4702: $0f
	add  b                                           ; $4703: $80
	rst  $38                                         ; $4704: $ff
	nop                                              ; $4705: $00
	rlca                                             ; $4706: $07
	add  c                                           ; $4707: $81
	rst  $38                                         ; $4708: $ff
	ld   bc, $ff01                                   ; $4709: $01 $01 $ff
	sub  [hl]                                        ; $470c: $96
	nop                                              ; $470d: $00
	add  d                                           ; $470e: $82
	db   $10                                         ; $470f: $10
	add  b                                           ; $4710: $80
	cp   $80                                         ; $4711: $fe $80
	jr   nz, jr_02d_469b                             ; $4713: $20 $86

	nop                                              ; $4715: $00
	add  d                                           ; $4716: $82
	db   $10                                         ; $4717: $10
	add  b                                           ; $4718: $80
	cp   $80                                         ; $4719: $fe $80
	jr   nz, jr_02d_469d                             ; $471b: $20 $80

	cp   d                                           ; $471d: $ba
	add  d                                           ; $471e: $82
	xor  d                                           ; $471f: $aa
	add  b                                           ; $4720: $80
	cp   d                                           ; $4721: $ba
	add  b                                           ; $4722: $80
	add  d                                           ; $4723: $82
	add  b                                           ; $4724: $80
	cp   $80                                         ; $4725: $fe $80

jr_02d_4727:
	nop                                              ; $4727: $00
	add  b                                           ; $4728: $80
	ld   b, b                                        ; $4729: $40
	add  b                                           ; $472a: $80
	nop                                              ; $472b: $00
	add  d                                           ; $472c: $82
	db   $10                                         ; $472d: $10
	add  b                                           ; $472e: $80
	sub  d                                           ; $472f: $92
	add  b                                           ; $4730: $80

jr_02d_4731:
	ld   d, h                                        ; $4731: $54
	add  b                                           ; $4732: $80
	db   $10                                         ; $4733: $10
	add  b                                           ; $4734: $80
	cp   $80                                         ; $4735: $fe $80

jr_02d_4737:
	jr   z, jr_02d_46b9                              ; $4737: $28 $80

	nop                                              ; $4739: $00
	add  b                                           ; $473a: $80
	ld   a, [bc]                                     ; $473b: $0a
	add  b                                           ; $473c: $80
	ld   [$0880], a                                  ; $473d: $ea $80 $08
	add  b                                           ; $4740: $80
	cp   $80                                         ; $4741: $fe $80
	ld   [$2880], sp                                 ; $4743: $08 $80 $28
	add  b                                           ; $4746: $80
	inc  h                                           ; $4747: $24
	add  d                                           ; $4748: $82
	nop                                              ; $4749: $00
	add  b                                           ; $474a: $80
	ld   h, b                                        ; $474b: $60
	add  b                                           ; $474c: $80
	ld   [de], a                                     ; $474d: $12
	add  b                                           ; $474e: $80
	ld   [bc], a                                     ; $474f: $02
	add  b                                           ; $4750: $80
	ld   h, d                                        ; $4751: $62
	add  b                                           ; $4752: $80
	ld   [de], a                                     ; $4753: $12
	add  b                                           ; $4754: $80
	ld   [bc], a                                     ; $4755: $02
	add  h                                           ; $4756: $84

jr_02d_4757:
	nop                                              ; $4757: $00
	add  b                                           ; $4758: $80
	ld   [hl], b                                     ; $4759: $70
	add  b                                           ; $475a: $80
	inc  c                                           ; $475b: $0c
	add  b                                           ; $475c: $80
	nop                                              ; $475d: $00
	add  b                                           ; $475e: $80
	ld   [hl], b                                     ; $475f: $70
	add  b                                           ; $4760: $80
	inc  c                                           ; $4761: $0c
	adc  b                                           ; $4762: $88
	nop                                              ; $4763: $00
	add  b                                           ; $4764: $80
	ld   [hl], b                                     ; $4765: $70
	add  d                                           ; $4766: $82
	db   $10                                         ; $4767: $10
	add  d                                           ; $4768: $82
	nop                                              ; $4769: $00
	adc  d                                           ; $476a: $8a
	ld   b, b                                        ; $476b: $40
	adc  d                                           ; $476c: $8a
	nop                                              ; $476d: $00
	add  b                                           ; $476e: $80
	add  b                                           ; $476f: $80
	add  b                                           ; $4770: $80
	ld   a, [hl]                                     ; $4771: $7e
	add  h                                           ; $4772: $84
	nop                                              ; $4773: $00
	add  b                                           ; $4774: $80
	ld   a, h                                        ; $4775: $7c
	add  d                                           ; $4776: $82
	ld   b, h                                        ; $4777: $44
	add  b                                           ; $4778: $80
	and  h                                           ; $4779: $a4
	add  b                                           ; $477a: $80
	inc  d                                           ; $477b: $14
	add  h                                           ; $477c: $84
	nop                                              ; $477d: $00
	add  b                                           ; $477e: $80
	sbc  [hl]                                        ; $477f: $9e
	add  b                                           ; $4780: $80
	add  d                                           ; $4781: $82
	add  h                                           ; $4782: $84
	add  b                                           ; $4783: $80
	add  d                                           ; $4784: $82
	nop                                              ; $4785: $00
	add  b                                           ; $4786: $80
	ld   a, h                                        ; $4787: $7c
	add  b                                           ; $4788: $80
	db   $10                                         ; $4789: $10
	add  b                                           ; $478a: $80
	cp   $80                                         ; $478b: $fe $80
	ld   d, h                                        ; $478d: $54
	add  b                                           ; $478e: $80

jr_02d_478f:
	cp   $80                                         ; $478f: $fe $80
	ld   d, h                                        ; $4791: $54
	adc  d                                           ; $4792: $8a
	nop                                              ; $4793: $00
	add  b                                           ; $4794: $80
	ld   [hl], b                                     ; $4795: $70
	add  b                                           ; $4796: $80
	adc  b                                           ; $4797: $88
	add  h                                           ; $4798: $84

jr_02d_4799:
	nop                                              ; $4799: $00
	add  b                                           ; $479a: $80
	cp   $80                                         ; $479b: $fe $80
	ld   [$1080], sp                                 ; $479d: $08 $80 $10
	add  d                                           ; $47a0: $82
	jr   nz, jr_02d_4731                             ; $47a1: $20 $8e

	nop                                              ; $47a3: $00
	add  b                                           ; $47a4: $80
	jr   nz, jr_02d_4727                             ; $47a5: $20 $80

jr_02d_47a7:
	ld   a, [hl]                                     ; $47a7: $7e
	add  b                                           ; $47a8: $80
	adc  b                                           ; $47a9: $88
	add  b                                           ; $47aa: $80
	ld   [$7e80], sp                                 ; $47ab: $08 $80 $7e
	add  b                                           ; $47ae: $80

jr_02d_47af:
	nop                                              ; $47af: $00
	add  b                                           ; $47b0: $80
	cp   $80                                         ; $47b1: $fe $80
	add  d                                           ; $47b3: $82
	add  b                                           ; $47b4: $80
	jr   nz, jr_02d_4737                             ; $47b5: $20 $80

	ld   a, [hl]                                     ; $47b7: $7e
	add  b                                           ; $47b8: $80
	and  d                                           ; $47b9: $a2
	add  b                                           ; $47ba: $80
	ld   [hl+], a                                    ; $47bb: $22
	add  b                                           ; $47bc: $80

jr_02d_47bd:
	ld   a, $80                                      ; $47bd: $3e $80
	nop                                              ; $47bf: $00
	add  b                                           ; $47c0: $80
	cp   $80                                         ; $47c1: $fe $80
	add  d                                           ; $47c3: $82
	add  b                                           ; $47c4: $80
	xor  $80                                         ; $47c5: $ee $80
	ld   b, b                                        ; $47c7: $40
	add  b                                           ; $47c8: $80

jr_02d_47c9:
	xor  $80                                         ; $47c9: $ee $80
	and  h                                           ; $47cb: $a4
	add  b                                           ; $47cc: $80

jr_02d_47cd:
	add  sp, -$80                                    ; $47cd: $e8 $80
	ld   c, d                                        ; $47cf: $4a
	add  b                                           ; $47d0: $80
	or   $80                                         ; $47d1: $f6 $80
	ld   e, d                                        ; $47d3: $5a
	add  d                                           ; $47d4: $82
	jr   z, jr_02d_4757                              ; $47d5: $28 $80

	ld   c, d                                        ; $47d7: $4a
	add  b                                           ; $47d8: $80

jr_02d_47d9:
	adc  [hl]                                        ; $47d9: $8e
	add  [hl]                                        ; $47da: $86
	nop                                              ; $47db: $00
	add  b                                           ; $47dc: $80
	or   h                                           ; $47dd: $b4
	add  d                                           ; $47de: $82
	and  h                                           ; $47df: $a4
	add  b                                           ; $47e0: $80
	ldh  a, [c]                                      ; $47e1: $f2
	add  [hl]                                        ; $47e2: $86
	nop                                              ; $47e3: $00
	add  d                                           ; $47e4: $82
	inc  b                                           ; $47e5: $04
	add  b                                           ; $47e6: $80

jr_02d_47e7:
	ld   [$3080], sp                                 ; $47e7: $08 $80 $30
	adc  d                                           ; $47ea: $8a
	nop                                              ; $47eb: $00
	add  b                                           ; $47ec: $80
	ld   [hl], b                                     ; $47ed: $70
	add  b                                           ; $47ee: $80
	inc  c                                           ; $47ef: $0c
	add  [hl]                                        ; $47f0: $86
	nop                                              ; $47f1: $00
	add  h                                           ; $47f2: $84
	db   $10                                         ; $47f3: $10
	add  b                                           ; $47f4: $80
	db   $fc                                         ; $47f5: $fc
	add  [hl]                                        ; $47f6: $86
	nop                                              ; $47f7: $00
	add  b                                           ; $47f8: $80
	ld   b, d                                        ; $47f9: $42
	add  b                                           ; $47fa: $80
	ld   b, h                                        ; $47fb: $44
	add  b                                           ; $47fc: $80
	ld   c, b                                        ; $47fd: $48
	add  b                                           ; $47fe: $80
	ld   [hl], b                                     ; $47ff: $70
	sub  [hl]                                        ; $4800: $96
	nop                                              ; $4801: $00
	add  d                                           ; $4802: $82
	ld   [$1080], sp                                 ; $4803: $08 $80 $10
	add  b                                           ; $4806: $80
	jr   nz, jr_02d_478f                             ; $4807: $20 $86

	nop                                              ; $4809: $00
	add  d                                           ; $480a: $82
	add  b                                           ; $480b: $80
	add  b                                           ; $480c: $80
	sub  b                                           ; $480d: $90
	add  b                                           ; $480e: $80
	ld   c, [hl]                                     ; $480f: $4e
	add  [hl]                                        ; $4810: $86
	nop                                              ; $4811: $00
	add  b                                           ; $4812: $80
	cp   $80                                         ; $4813: $fe $80
	db   $10                                         ; $4815: $10
	add  b                                           ; $4816: $80
	jr   c, jr_02d_4799                              ; $4817: $38 $80

	sub  $86                                         ; $4819: $d6 $86
	nop                                              ; $481b: $00
	add  d                                           ; $481c: $82
	inc  b                                           ; $481d: $04
	add  b                                           ; $481e: $80
	ld   [$3080], sp                                 ; $481f: $08 $80 $30
	add  [hl]                                        ; $4822: $86
	nop                                              ; $4823: $00
	add  d                                           ; $4824: $82
	jr   nz, jr_02d_47a7                             ; $4825: $20 $80

	db   $10                                         ; $4827: $10
	add  b                                           ; $4828: $80
	inc  c                                           ; $4829: $0c
	adc  b                                           ; $482a: $88
	nop                                              ; $482b: $00
	add  b                                           ; $482c: $80
	jr   nz, jr_02d_47af                             ; $482d: $20 $80

	ld   d, b                                        ; $482f: $50
	add  b                                           ; $4830: $80
	jr   nz, jr_02d_47bd                             ; $4831: $20 $8a

	nop                                              ; $4833: $00
	add  d                                           ; $4834: $82
	db   $10                                         ; $4835: $10
	add  b                                           ; $4836: $80
	cp   $80                                         ; $4837: $fe $80
	db   $10                                         ; $4839: $10
	add  b                                           ; $483a: $80
	ld   [hl], b                                     ; $483b: $70
	add  b                                           ; $483c: $80
	sub  b                                           ; $483d: $90
	add  d                                           ; $483e: $82
	nop                                              ; $483f: $00
	add  b                                           ; $4840: $80
	ldh  [$80], a                                    ; $4841: $e0 $80
	jr   nz, jr_02d_47c9                             ; $4843: $20 $84

	inc  h                                           ; $4845: $24
	add  b                                           ; $4846: $80
	ld   a, h                                        ; $4847: $7c
	add  d                                           ; $4848: $82
	nop                                              ; $4849: $00
	add  d                                           ; $484a: $82
	jr   nz, jr_02d_47cd                             ; $484b: $20 $80

jr_02d_484d:
	db   $ec                                         ; $484d: $ec
	add  b                                           ; $484e: $80
	inc  [hl]                                        ; $484f: $34
	add  b                                           ; $4850: $80
	inc  h                                           ; $4851: $24
	add  b                                           ; $4852: $80
	ld   h, h                                        ; $4853: $64
	add  h                                           ; $4854: $84
	nop                                              ; $4855: $00
	add  b                                           ; $4856: $80
	jr   c, jr_02d_47d9                              ; $4857: $38 $80

	ld   d, h                                        ; $4859: $54
	add  h                                           ; $485a: $84

jr_02d_485b:
	sub  d                                           ; $485b: $92
	add  d                                           ; $485c: $82
	nop                                              ; $485d: $00
	add  d                                           ; $485e: $82
	add  b                                           ; $485f: $80
	add  b                                           ; $4860: $80
	ld   b, d                                        ; $4861: $42
	add  b                                           ; $4862: $80
	ld   c, h                                        ; $4863: $4c
	add  b                                           ; $4864: $80

jr_02d_4865:
	jr   nc, jr_02d_47e7                             ; $4865: $30 $80

	jr   nz, @-$7e                                   ; $4867: $20 $80

	nop                                              ; $4869: $00
	add  b                                           ; $486a: $80
	ld   c, b                                        ; $486b: $48
	add  b                                           ; $486c: $80
	cp   $80                                         ; $486d: $fe $80

jr_02d_486f:
	ld   d, h                                        ; $486f: $54
	add  b                                           ; $4870: $80
	cp   $80                                         ; $4871: $fe $80
	nop                                              ; $4873: $00
	add  b                                           ; $4874: $80
	xor  $80                                         ; $4875: $ee $80
	xor  d                                           ; $4877: $aa
	add  b                                           ; $4878: $80
	nop                                              ; $4879: $00
	add  d                                           ; $487a: $82
	db   $10                                         ; $487b: $10
	add  b                                           ; $487c: $80
	ld   a, h                                        ; $487d: $7c
	add  b                                           ; $487e: $80
	db   $10                                         ; $487f: $10
	add  b                                           ; $4880: $80
	cp   $80                                         ; $4881: $fe $80
	db   $10                                         ; $4883: $10
	add  b                                           ; $4884: $80
	ld   d, b                                        ; $4885: $50
	add  d                                           ; $4886: $82
	nop                                              ; $4887: $00
	adc  d                                           ; $4888: $8a
	ld   b, b                                        ; $4889: $40
	add  d                                           ; $488a: $82
	nop                                              ; $488b: $00
	add  d                                           ; $488c: $82
	db   $10                                         ; $488d: $10
	add  b                                           ; $488e: $80
	cp   $80                                         ; $488f: $fe $80
	db   $10                                         ; $4891: $10
	add  b                                           ; $4892: $80
	cp   $80                                         ; $4893: $fe $80
	db   $10                                         ; $4895: $10
	add  d                                           ; $4896: $82
	nop                                              ; $4897: $00
	add  b                                           ; $4898: $80
	inc  a                                           ; $4899: $3c
	add  b                                           ; $489a: $80
	ld   b, d                                        ; $489b: $42
	add  d                                           ; $489c: $82
	ld   [bc], a                                     ; $489d: $02
	add  b                                           ; $489e: $80
	inc  a                                           ; $489f: $3c
	add  b                                           ; $48a0: $80
	ld   [bc], a                                     ; $48a1: $02
	add  d                                           ; $48a2: $82
	nop                                              ; $48a3: $00
	add  b                                           ; $48a4: $80
	ld   a, [hl]                                     ; $48a5: $7e
	add  b                                           ; $48a6: $80
	nop                                              ; $48a7: $00
	add  b                                           ; $48a8: $80
	ld   a, [hl]                                     ; $48a9: $7e
	add  h                                           ; $48aa: $84

jr_02d_48ab:
	ld   [bc], a                                     ; $48ab: $02
	adc  b                                           ; $48ac: $88
	nop                                              ; $48ad: $00
	add  d                                           ; $48ae: $82
	and  h                                           ; $48af: $a4
	add  b                                           ; $48b0: $80
	inc  b                                           ; $48b1: $04
	add  b                                           ; $48b2: $80
	nop                                              ; $48b3: $00
	add  b                                           ; $48b4: $80
	inc  b                                           ; $48b5: $04
	add  b                                           ; $48b6: $80
	ld   a, [bc]                                     ; $48b7: $0a
	add  b                                           ; $48b8: $80
	inc  b                                           ; $48b9: $04
	add  b                                           ; $48ba: $80
	ld   a, [hl]                                     ; $48bb: $7e
	add  h                                           ; $48bc: $84
	ld   [bc], a                                     ; $48bd: $02
	add  d                                           ; $48be: $82
	ld   a, [bc]                                     ; $48bf: $0a
	add  b                                           ; $48c0: $80
	nop                                              ; $48c1: $00
	add  b                                           ; $48c2: $80
	cp   $80                                         ; $48c3: $fe $80
	ld   [$1080], sp                                 ; $48c5: $08 $80 $10
	add  d                                           ; $48c8: $82
	jr   nz, jr_02d_484d                             ; $48c9: $20 $82

	nop                                              ; $48cb: $00
	add  b                                           ; $48cc: $80
	ld   d, b                                        ; $48cd: $50
	add  b                                           ; $48ce: $80
	ld   a, h                                        ; $48cf: $7c
	add  b                                           ; $48d0: $80
	sub  b                                           ; $48d1: $90
	add  b                                           ; $48d2: $80
	db   $10                                         ; $48d3: $10
	add  b                                           ; $48d4: $80
	cp   $80                                         ; $48d5: $fe $80

jr_02d_48d7:
	jr   z, jr_02d_485b                              ; $48d7: $28 $82

	nop                                              ; $48d9: $00
	add  b                                           ; $48da: $80
	ld   b, b                                        ; $48db: $40
	add  b                                           ; $48dc: $80
	jr   nz, jr_02d_4865                             ; $48dd: $20 $86

jr_02d_48df:
	nop                                              ; $48df: $00
	add  b                                           ; $48e0: $80
	sub  b                                           ; $48e1: $90
	add  b                                           ; $48e2: $80
	ld   [hl], b                                     ; $48e3: $70
	add  b                                           ; $48e4: $80
	db   $10                                         ; $48e5: $10
	add  b                                           ; $48e6: $80
	jr   nz, jr_02d_486f                             ; $48e7: $20 $86

	nop                                              ; $48e9: $00
	add  b                                           ; $48ea: $80
	and  [hl]                                        ; $48eb: $a6
	add  d                                           ; $48ec: $82
	and  h                                           ; $48ed: $a4
	add  b                                           ; $48ee: $80
	ld   c, b                                        ; $48ef: $48
	add  [hl]                                        ; $48f0: $86
	nop                                              ; $48f1: $00
	add  b                                           ; $48f2: $80
	ld   h, h                                        ; $48f3: $64
	add  d                                           ; $48f4: $82
	and  h                                           ; $48f5: $a4
	add  b                                           ; $48f6: $80

jr_02d_48f7:
	ld   [hl+], a                                    ; $48f7: $22
	add  [hl]                                        ; $48f8: $86
	nop                                              ; $48f9: $00
	add  d                                           ; $48fa: $82
	sub  d                                           ; $48fb: $92
	add  b                                           ; $48fc: $80
	and  d                                           ; $48fd: $a2
	add  b                                           ; $48fe: $80
	ld   h, h                                        ; $48ff: $64
	add  [hl]                                        ; $4900: $86
	nop                                              ; $4901: $00
	add  h                                           ; $4902: $84
	ld   b, b                                        ; $4903: $40
	add  b                                           ; $4904: $80
	ld   a, $86                                      ; $4905: $3e $86
	nop                                              ; $4907: $00
	add  b                                           ; $4908: $80
	xor  $80                                         ; $4909: $ee $80
	ld   b, h                                        ; $490b: $44
	add  b                                           ; $490c: $80
	call z, $aa80                                    ; $490d: $cc $80 $aa
	add  [hl]                                        ; $4910: $86
	nop                                              ; $4911: $00
	add  b                                           ; $4912: $80
	ld   e, h                                        ; $4913: $5c
	add  b                                           ; $4914: $80
	ld   d, b                                        ; $4915: $50
	add  b                                           ; $4916: $80
	ld   [hl], b                                     ; $4917: $70
	add  b                                           ; $4918: $80
	adc  [hl]                                        ; $4919: $8e
	add  [hl]                                        ; $491a: $86
	nop                                              ; $491b: $00
	add  b                                           ; $491c: $80
	ld   b, b                                        ; $491d: $40
	add  b                                           ; $491e: $80

Jump_02d_491f:
	ld   b, d                                        ; $491f: $42
	add  b                                           ; $4920: $80
	inc  h                                           ; $4921: $24
	add  b                                           ; $4922: $80
	jr   jr_02d_48ab                                 ; $4923: $18 $86

	nop                                              ; $4925: $00
	add  b                                           ; $4926: $80
	ld   [hl], b                                     ; $4927: $70
	add  b                                           ; $4928: $80
	sbc  b                                           ; $4929: $98
	add  b                                           ; $492a: $80
	sub  h                                           ; $492b: $94
	add  b                                           ; $492c: $80
	ld   h, d                                        ; $492d: $62
	add  [hl]                                        ; $492e: $86
	nop                                              ; $492f: $00
	add  d                                           ; $4930: $82
	ld   [bc], a                                     ; $4931: $02
	add  b                                           ; $4932: $80
	ld   b, d                                        ; $4933: $42
	add  b                                           ; $4934: $80
	inc  a                                           ; $4935: $3c
	add  [hl]                                        ; $4936: $86
	nop                                              ; $4937: $00
	add  b                                           ; $4938: $80
	ld   [bc], a                                     ; $4939: $02
	add  b                                           ; $493a: $80
	inc  b                                           ; $493b: $04
	add  b                                           ; $493c: $80

jr_02d_493d:
	ld   [$3080], sp                                 ; $493d: $08 $80 $30
	add  [hl]                                        ; $4940: $86

jr_02d_4941:
	nop                                              ; $4941: $00
	add  d                                           ; $4942: $82
	ld   [$1080], sp                                 ; $4943: $08 $80 $10
	add  b                                           ; $4946: $80
	ld   h, b                                        ; $4947: $60
	add  [hl]                                        ; $4948: $86
	nop                                              ; $4949: $00
	add  b                                           ; $494a: $80
	ld   [bc], a                                     ; $494b: $02
	add  b                                           ; $494c: $80
	inc  b                                           ; $494d: $04
	add  b                                           ; $494e: $80
	ld   [$3080], sp                                 ; $494f: $08 $80 $30
	add  [hl]                                        ; $4952: $86

jr_02d_4953:
	nop                                              ; $4953: $00
	add  d                                           ; $4954: $82
	jr   nz, jr_02d_48d7                             ; $4955: $20 $80

	db   $10                                         ; $4957: $10
	add  b                                           ; $4958: $80
	inc  c                                           ; $4959: $0c
	add  [hl]                                        ; $495a: $86
	nop                                              ; $495b: $00
	add  d                                           ; $495c: $82
	jr   z, jr_02d_48df                              ; $495d: $28 $80

	ld   c, d                                        ; $495f: $4a
	add  b                                           ; $4960: $80
	adc  [hl]                                        ; $4961: $8e
	adc  b                                           ; $4962: $88
	nop                                              ; $4963: $00
	add  d                                           ; $4964: $82
	ld   a, [bc]                                     ; $4965: $0a
	add  b                                           ; $4966: $80
	nop                                              ; $4967: $00
	add  b                                           ; $4968: $80
	ld   a, [hl]                                     ; $4969: $7e
	add  h                                           ; $496a: $84
	ld   [bc], a                                     ; $496b: $02
	add  d                                           ; $496c: $82
	nop                                              ; $496d: $00
	add  d                                           ; $496e: $82
	ld   [$4886], sp                                 ; $496f: $08 $86 $48
	add  b                                           ; $4972: $80
	nop                                              ; $4973: $00
	add  b                                           ; $4974: $80
	jr   c, jr_02d_48f7                              ; $4975: $38 $80

	ld   c, b                                        ; $4977: $48
	add  b                                           ; $4978: $80
	sub  b                                           ; $4979: $90
	add  b                                           ; $497a: $80
	ld   a, h                                        ; $497b: $7c
	add  b                                           ; $497c: $80
	ld   b, h                                        ; $497d: $44
	add  b                                           ; $497e: $80
	ld   a, h                                        ; $497f: $7c
	add  b                                           ; $4980: $80
	ld   b, h                                        ; $4981: $44
	add  d                                           ; $4982: $82
	nop                                              ; $4983: $00
	add  b                                           ; $4984: $80
	ld   b, b                                        ; $4985: $40
	add  b                                           ; $4986: $80
	ldh  a, [$80]                                    ; $4987: $f0 $80
	ld   b, b                                        ; $4989: $40
	add  b                                           ; $498a: $80
	ld   e, [hl]                                     ; $498b: $5e
	add  b                                           ; $498c: $80
	ld   b, d                                        ; $498d: $42
	add  b                                           ; $498e: $80

jr_02d_498f:
	ld   b, b                                        ; $498f: $40
	add  d                                           ; $4990: $82
	nop                                              ; $4991: $00
	add  b                                           ; $4992: $80
	db   $10                                         ; $4993: $10
	add  b                                           ; $4994: $80
	ld   [$fe80], sp                                 ; $4995: $08 $80 $fe
	add  b                                           ; $4998: $80
	db   $10                                         ; $4999: $10
	add  b                                           ; $499a: $80
	ld   e, $80                                      ; $499b: $1e $80
	ld   [de], a                                     ; $499d: $12
	add  b                                           ; $499e: $80
	nop                                              ; $499f: $00
	add  b                                           ; $49a0: $80
	ld   a, [bc]                                     ; $49a1: $0a
	add  b                                           ; $49a2: $80
	ld   c, d                                        ; $49a3: $4a
	add  b                                           ; $49a4: $80
	ld   b, h                                        ; $49a5: $44
	add  b                                           ; $49a6: $80
	ldh  a, [c]                                      ; $49a7: $f2
	add  h                                           ; $49a8: $84
	ld   c, d                                        ; $49a9: $4a
	add  d                                           ; $49aa: $82

jr_02d_49ab:
	nop                                              ; $49ab: $00
	add  b                                           ; $49ac: $80
	db   $f4                                         ; $49ad: $f4
	add  b                                           ; $49ae: $80
	xor  b                                           ; $49af: $a8
	add  b                                           ; $49b0: $80
	cp   [hl]                                        ; $49b1: $be
	add  b                                           ; $49b2: $80
	add  sp, -$80                                    ; $49b3: $e8 $80
	or   [hl]                                        ; $49b5: $b6
	add  b                                           ; $49b6: $80
	ld   [$0082], a                                  ; $49b7: $ea $82 $00
	add  d                                           ; $49ba: $82
	jr   nz, jr_02d_493d                             ; $49bb: $20 $80

	cp   $80                                         ; $49bd: $fe $80
	jr   nz, jr_02d_4941                             ; $49bf: $20 $80

	inc  a                                           ; $49c1: $3c
	add  b                                           ; $49c2: $80
	ld   b, d                                        ; $49c3: $42
	add  h                                           ; $49c4: $84
	nop                                              ; $49c5: $00
	add  b                                           ; $49c6: $80
	cp   $82                                         ; $49c7: $fe $82
	ld   [bc], a                                     ; $49c9: $02
	add  b                                           ; $49ca: $80
	inc  d                                           ; $49cb: $14
	add  b                                           ; $49cc: $80
	jr   jr_02d_4953                                 ; $49cd: $18 $84

	nop                                              ; $49cf: $00
	add  b                                           ; $49d0: $80
	ld   a, h                                        ; $49d1: $7c
	add  d                                           ; $49d2: $82
	ld   b, h                                        ; $49d3: $44
	add  b                                           ; $49d4: $80
	add  h                                           ; $49d5: $84
	add  b                                           ; $49d6: $80
	inc  b                                           ; $49d7: $04
	add  d                                           ; $49d8: $82
	nop                                              ; $49d9: $00
	add  d                                           ; $49da: $82
	ld   b, b                                        ; $49db: $40
	add  b                                           ; $49dc: $80
	cp   $80                                         ; $49dd: $fe $80

jr_02d_49df:
	ld   b, h                                        ; $49df: $44
	add  b                                           ; $49e0: $80
	ld   c, b                                        ; $49e1: $48
	add  b                                           ; $49e2: $80
	ld   b, b                                        ; $49e3: $40
	add  d                                           ; $49e4: $82
	nop                                              ; $49e5: $00
	add  d                                           ; $49e6: $82

jr_02d_49e7:
	ld   [$4886], sp                                 ; $49e7: $08 $86 $48
	add  d                                           ; $49ea: $82
	nop                                              ; $49eb: $00
	add  b                                           ; $49ec: $80
	ld   c, b                                        ; $49ed: $48
	add  b                                           ; $49ee: $80
	ld   a, [hl]                                     ; $49ef: $7e
	add  b                                           ; $49f0: $80
	ld   c, b                                        ; $49f1: $48
	add  b                                           ; $49f2: $80
	cp   [hl]                                        ; $49f3: $be
	add  d                                           ; $49f4: $82
	ld   l, d                                        ; $49f5: $6a
	add  d                                           ; $49f6: $82
	nop                                              ; $49f7: $00
	add  b                                           ; $49f8: $80
	ld   a, [hl]                                     ; $49f9: $7e
	add  d                                           ; $49fa: $82
	ld   d, d                                        ; $49fb: $52
	add  b                                           ; $49fc: $80
	ld   a, [hl]                                     ; $49fd: $7e
	add  d                                           ; $49fe: $82
	ld   d, d                                        ; $49ff: $52

Jump_02d_4a00:
	add  d                                           ; $4a00: $82
	nop                                              ; $4a01: $00
	add  d                                           ; $4a02: $82
	ld   c, b                                        ; $4a03: $48
	add  b                                           ; $4a04: $80
	cp   $82                                         ; $4a05: $fe $82
	ld   c, b                                        ; $4a07: $48
	add  b                                           ; $4a08: $80
	ld   b, b                                        ; $4a09: $40
	add  d                                           ; $4a0a: $82
	nop                                              ; $4a0b: $00
	add  h                                           ; $4a0c: $84
	jr   nz, jr_02d_498f                             ; $4a0d: $20 $80

	ld   b, b                                        ; $4a0f: $40
	add  b                                           ; $4a10: $80
	ld   [hl], b                                     ; $4a11: $70
	add  b                                           ; $4a12: $80
	ld   c, b                                        ; $4a13: $48
	add  h                                           ; $4a14: $84
	ld   [bc], a                                     ; $4a15: $02
	add  b                                           ; $4a16: $80
	ld   a, [hl]                                     ; $4a17: $7e
	add  [hl]                                        ; $4a18: $86
	nop                                              ; $4a19: $00
	add  d                                           ; $4a1a: $82
	ld   c, b                                        ; $4a1b: $48
	add  b                                           ; $4a1c: $80
	ld   c, d                                        ; $4a1d: $4a
	add  b                                           ; $4a1e: $80
	adc  h                                           ; $4a1f: $8c
	add  [hl]                                        ; $4a20: $86
	nop                                              ; $4a21: $00
	add  b                                           ; $4a22: $80
	ld   a, h                                        ; $4a23: $7c
	add  b                                           ; $4a24: $80
	ld   b, h                                        ; $4a25: $44
	add  b                                           ; $4a26: $80
	ld   a, h                                        ; $4a27: $7c
	add  b                                           ; $4a28: $80
	jr   z, jr_02d_49ab                              ; $4a29: $28 $80

	ld   b, h                                        ; $4a2b: $44
	add  h                                           ; $4a2c: $84
	nop                                              ; $4a2d: $00
	add  d                                           ; $4a2e: $82
	add  b                                           ; $4a2f: $80
	add  b                                           ; $4a30: $80
	sub  b                                           ; $4a31: $90
	add  b                                           ; $4a32: $80
	adc  [hl]                                        ; $4a33: $8e
	add  [hl]                                        ; $4a34: $86
	nop                                              ; $4a35: $00
	add  b                                           ; $4a36: $80
	ld   [de], a                                     ; $4a37: $12
	add  d                                           ; $4a38: $82
	ld   [hl+], a                                    ; $4a39: $22
	add  b                                           ; $4a3a: $80
	add  $86                                         ; $4a3b: $c6 $86
	nop                                              ; $4a3d: $00
	add  d                                           ; $4a3e: $82
	ld   c, b                                        ; $4a3f: $48
	add  b                                           ; $4a40: $80
	adc  b                                           ; $4a41: $88
	add  b                                           ; $4a42: $80
	db   $10                                         ; $4a43: $10
	add  [hl]                                        ; $4a44: $86
	nop                                              ; $4a45: $00
	add  b                                           ; $4a46: $80
	cp   [hl]                                        ; $4a47: $be
	add  d                                           ; $4a48: $82
	xor  d                                           ; $4a49: $aa
	add  b                                           ; $4a4a: $80
	or   [hl]                                        ; $4a4b: $b6
	add  [hl]                                        ; $4a4c: $86
	nop                                              ; $4a4d: $00
	add  h                                           ; $4a4e: $84
	ld   [bc], a                                     ; $4a4f: $02
	add  b                                           ; $4a50: $80
	inc  a                                           ; $4a51: $3c
	add  [hl]                                        ; $4a52: $86
	nop                                              ; $4a53: $00
	add  h                                           ; $4a54: $84
	db   $10                                         ; $4a55: $10
	add  b                                           ; $4a56: $80
	jr   nz, jr_02d_49df                             ; $4a57: $20 $86

	nop                                              ; $4a59: $00
	add  d                                           ; $4a5a: $82
	ld   [$1080], sp                                 ; $4a5b: $08 $80 $10
	add  b                                           ; $4a5e: $80
	jr   nz, jr_02d_49e7                             ; $4a5f: $20 $86

	nop                                              ; $4a61: $00
	add  h                                           ; $4a62: $84
	ld   b, b                                        ; $4a63: $40
	add  b                                           ; $4a64: $80
	inc  a                                           ; $4a65: $3c
	add  [hl]                                        ; $4a66: $86
	nop                                              ; $4a67: $00
	add  d                                           ; $4a68: $82
	ld   c, b                                        ; $4a69: $48
	add  b                                           ; $4a6a: $80
	ld   c, d                                        ; $4a6b: $4a
	add  b                                           ; $4a6c: $80
	adc  h                                           ; $4a6d: $8c
	add  [hl]                                        ; $4a6e: $86
	nop                                              ; $4a6f: $00
	add  b                                           ; $4a70: $80
	ld   a, [hl]                                     ; $4a71: $7e
	add  b                                           ; $4a72: $80
	ld   c, b                                        ; $4a73: $48
	add  b                                           ; $4a74: $80
	ld   d, h                                        ; $4a75: $54
	add  b                                           ; $4a76: $80
	ld   h, [hl]                                     ; $4a77: $66
	add  [hl]                                        ; $4a78: $86
	nop                                              ; $4a79: $00
	add  b                                           ; $4a7a: $80
	ld   a, [hl]                                     ; $4a7b: $7e
	add  d                                           ; $4a7c: $82
	ld   d, d                                        ; $4a7d: $52
	add  b                                           ; $4a7e: $80
	add  [hl]                                        ; $4a7f: $86
	add  [hl]                                        ; $4a80: $86
	nop                                              ; $4a81: $00
	add  h                                           ; $4a82: $84
	ld   b, b                                        ; $4a83: $40
	add  b                                           ; $4a84: $80
	inc  a                                           ; $4a85: $3c
	add  [hl]                                        ; $4a86: $86
	nop                                              ; $4a87: $00
	add  b                                           ; $4a88: $80
	ld   c, b                                        ; $4a89: $48
	add  d                                           ; $4a8a: $82
	adc  d                                           ; $4a8b: $8a
	add  b                                           ; $4a8c: $80

jr_02d_4a8d:
	add  h                                           ; $4a8d: $84
	add  [hl]                                        ; $4a8e: $86
	nop                                              ; $4a8f: $00
	jr   nz, jr_02d_4a8d                             ; $4a90: $20 $fb

	nop                                              ; $4a92: $00
	dec  b                                           ; $4a93: $05
	nop                                              ; $4a94: $00
	dec  b                                           ; $4a95: $05
	nop                                              ; $4a96: $00
	dec  b                                           ; $4a97: $05
	nop                                              ; $4a98: $00
	dec  b                                           ; $4a99: $05
	nop                                              ; $4a9a: $00
	dec  b                                           ; $4a9b: $05
	nop                                              ; $4a9c: $00
	dec  b                                           ; $4a9d: $05
	nop                                              ; $4a9e: $00
	dec  b                                           ; $4a9f: $05
	nop                                              ; $4aa0: $00
	cp   [hl]                                        ; $4aa1: $be
	nop                                              ; $4aa2: $00
	ret  nc                                          ; $4aa3: $d0

	nop                                              ; $4aa4: $00
	ret  nc                                          ; $4aa5: $d0

	nop                                              ; $4aa6: $00
	ret  nc                                          ; $4aa7: $d0

	nop                                              ; $4aa8: $00
	ret  nc                                          ; $4aa9: $d0

	nop                                              ; $4aaa: $00
	ret  nc                                          ; $4aab: $d0

	nop                                              ; $4aac: $00
	ret  nc                                          ; $4aad: $d0

	nop                                              ; $4aae: $00
	ret  nc                                          ; $4aaf: $d0

	nop                                              ; $4ab0: $00
	sub  b                                           ; $4ab1: $90
	xor  a                                           ; $4ab2: $af
	nop                                              ; $4ab3: $00
	add  b                                           ; $4ab4: $80
	dec  de                                          ; $4ab5: $1b
	inc  bc                                          ; $4ab6: $03
	dec  d                                           ; $4ab7: $15
	rra                                              ; $4ab8: $1f
	ld   hl, $803f                                   ; $4ab9: $21 $3f $80
	ld   a, $07                                      ; $4abc: $3e $07
	ld   d, b                                        ; $4abe: $50
	ld   a, h                                        ; $4abf: $7c
	ld   c, l                                        ; $4ac0: $4d
	ld   a, l                                        ; $4ac1: $7d
	inc  hl                                          ; $4ac2: $23
	dec  sp                                          ; $4ac3: $3b
	stop                                             ; $4ac4: $10 $00
	add  b                                           ; $4ac6: $80
	ld   [hl], b                                     ; $4ac7: $70
	dec  b                                           ; $4ac8: $05
	call c, $24fc                                    ; $4ac9: $dc $fc $24
	db   $fc                                         ; $4acc: $fc
	inc  h                                           ; $4acd: $24
	db   $fc                                         ; $4ace: $fc
	add  b                                           ; $4acf: $80
	ld   [hl], b                                     ; $4ad0: $70
	add  b                                           ; $4ad1: $80
	db   $fc                                         ; $4ad2: $fc
	inc  bc                                          ; $4ad3: $03
	inc  h                                           ; $4ad4: $24
	db   $fc                                         ; $4ad5: $fc
	ld   hl, sp+$00                                  ; $4ad6: $f8 $00
	add  b                                           ; $4ad8: $80
	ccf                                              ; $4ad9: $3f
	dec  c                                           ; $4ada: $0d
	jr   nz, jr_02d_4b1c                             ; $4adb: $20 $3f

	ld   sp, $313f                                   ; $4add: $31 $3f $31
	ccf                                              ; $4ae0: $3f
	ld   sp, $313f                                   ; $4ae1: $31 $3f $31
	ccf                                              ; $4ae4: $3f
	ld   h, c                                        ; $4ae5: $61
	ld   a, a                                        ; $4ae6: $7f
	ld   bc, $8000                                   ; $4ae7: $01 $00 $80
	ld   hl, sp+$12                                  ; $4aea: $f8 $12
	ld   [$18f8], sp                                 ; $4aec: $08 $f8 $18
	ld   hl, sp+$18                                  ; $4aef: $f8 $18
	ld   hl, sp+$18                                  ; $4af1: $f8 $18
	ld   hl, sp+$18                                  ; $4af3: $f8 $18
	ld   hl, sp+$0c                                  ; $4af5: $f8 $0c
	db   $fc                                         ; $4af7: $fc
	ld   l, l                                        ; $4af8: $6d
	ld   a, a                                        ; $4af9: $7f
	ld   d, e                                        ; $4afa: $53
	ld   a, a                                        ; $4afb: $7f
	ld   c, c                                        ; $4afc: $49
	ld   a, a                                        ; $4afd: $7f
	ld   e, l                                        ; $4afe: $5d
	add  e                                           ; $4aff: $83
	ld   a, a                                        ; $4b00: $7f
	ld   bc, $6b41                                   ; $4b01: $01 $41 $6b
	add  b                                           ; $4b04: $80
	nop                                              ; $4b05: $00
	add  b                                           ; $4b06: $80
	ld   hl, sp+$03                                  ; $4b07: $f8 $03
	inc  b                                           ; $4b09: $04
	db   $fc                                         ; $4b0a: $fc
	adc  h                                           ; $4b0b: $8c
	db   $fc                                         ; $4b0c: $fc
	add  b                                           ; $4b0d: $80
	call c, $fc80                                    ; $4b0e: $dc $80 $fc
	inc  bc                                          ; $4b11: $03
	adc  h                                           ; $4b12: $8c
	db   $fc                                         ; $4b13: $fc
	inc  b                                           ; $4b14: $04
	db   $fc                                         ; $4b15: $fc
	add  b                                           ; $4b16: $80
	nop                                              ; $4b17: $00
	dec  c                                           ; $4b18: $0d
	ld   b, b                                        ; $4b19: $40
	ld   a, a                                        ; $4b1a: $7f
	ld   b, e                                        ; $4b1b: $43

jr_02d_4b1c:
	ld   a, a                                        ; $4b1c: $7f
	add  hl, bc                                      ; $4b1d: $09
	rrca                                             ; $4b1e: $0f
	inc  de                                          ; $4b1f: $13
	rra                                              ; $4b20: $1f
	ld   h, e                                        ; $4b21: $63
	ld   a, e                                        ; $4b22: $7b
	add  e                                           ; $4b23: $83
	di                                               ; $4b24: $f3
	add  d                                           ; $4b25: $82
	db   $e3                                         ; $4b26: $e3
	add  b                                           ; $4b27: $80
	nop                                              ; $4b28: $00
	dec  c                                           ; $4b29: $0d
	inc  b                                           ; $4b2a: $04
	db   $fc                                         ; $4b2b: $fc
	add  h                                           ; $4b2c: $84
	db   $fc                                         ; $4b2d: $fc
	jr   nz, @-$1e                                   ; $4b2e: $20 $e0

	sub  b                                           ; $4b30: $90
	ldh  a, [$8c]                                    ; $4b31: $f0 $8c
	cp   h                                           ; $4b33: $bc
	add  d                                           ; $4b34: $82
	sbc  [hl]                                        ; $4b35: $9e
	add  d                                           ; $4b36: $82
	adc  [hl]                                        ; $4b37: $8e
	add  d                                           ; $4b38: $82
	nop                                              ; $4b39: $00
	add  b                                           ; $4b3a: $80

jr_02d_4b3b:
	ld   a, a                                        ; $4b3b: $7f
	inc  bc                                          ; $4b3c: $03
	ld   b, d                                        ; $4b3d: $42
	ld   a, a                                        ; $4b3e: $7f
	ld   e, e                                        ; $4b3f: $5b
	ld   a, a                                        ; $4b40: $7f
	add  h                                           ; $4b41: $84
	ccf                                              ; $4b42: $3f
	ld   bc, $3f26                                   ; $4b43: $01 $26 $3f
	add  b                                           ; $4b46: $80
	nop                                              ; $4b47: $00
	add  b                                           ; $4b48: $80
	cp   e                                           ; $4b49: $bb
	ld   b, $ee                                      ; $4b4a: $06 $ee
	rst  $38                                         ; $4b4c: $ff
	ld   [hl], l                                     ; $4b4d: $75
	rst  $38                                         ; $4b4e: $ff
	ei                                               ; $4b4f: $fb
	rst  $38                                         ; $4b50: $ff
	push af                                          ; $4b51: $f5
	add  c                                           ; $4b52: $81
	rst  $38                                         ; $4b53: $ff
	ld   bc, $f560                                   ; $4b54: $01 $60 $f5
	add  b                                           ; $4b57: $80
	nop                                              ; $4b58: $00
	add  b                                           ; $4b59: $80
	cp   $0b                                         ; $4b5a: $fe $0b
	ld   b, d                                        ; $4b5c: $42
	cp   $f0                                         ; $4b5d: $fe $f0
	db   $fc                                         ; $4b5f: $fc
	ldh  a, [c]                                      ; $4b60: $f2
	cp   $f0                                         ; $4b61: $fe $f0
	db   $fc                                         ; $4b63: $fc
	ldh  a, [c]                                      ; $4b64: $f2
	cp   $42                                         ; $4b65: $fe $42
	cp   $07                                         ; $4b67: $fe $07
	inc  bc                                          ; $4b69: $03
	add  c                                           ; $4b6a: $81
	nop                                              ; $4b6b: $00
	add  c                                           ; $4b6c: $81
	cp   $01                                         ; $4b6d: $fe $01
	or   $f4                                         ; $4b6f: $f6 $f4
	add  b                                           ; $4b71: $80
	db   $e4                                         ; $4b72: $e4
	nop                                              ; $4b73: $00
	db   $fc                                         ; $4b74: $fc
	add  b                                           ; $4b75: $80
	ld   hl, sp-$80                                  ; $4b76: $f8 $80
	ldh  a, [$08]                                    ; $4b78: $f0 $08
	ldh  [$f0], a                                    ; $4b7a: $e0 $f0
	db   $10                                         ; $4b7c: $10
	jr   nc, jr_02d_4b3b                             ; $4b7d: $30 $bc

	xor  h                                           ; $4b7f: $ac
	inc  l                                           ; $4b80: $2c
	ld   a, h                                        ; $4b81: $7c
	ld   [hl], b                                     ; $4b82: $70
	add  d                                           ; $4b83: $82
	ld   hl, sp-$80                                  ; $4b84: $f8 $80
	nop                                              ; $4b86: $00
	add  b                                           ; $4b87: $80
	ldh  a, [$80]                                    ; $4b88: $f0 $80
	cp   $80                                         ; $4b8a: $fe $80
	add  d                                           ; $4b8c: $82
	add  b                                           ; $4b8d: $80
	pop  hl                                          ; $4b8e: $e1
	add  d                                           ; $4b8f: $82
	add  b                                           ; $4b90: $80
	add  b                                           ; $4b91: $80
	add  a                                           ; $4b92: $87
	rlca                                             ; $4b93: $07
	ld   a, c                                        ; $4b94: $79
	ld   bc, $473f                                   ; $4b95: $01 $3f $47
	ld   a, a                                        ; $4b98: $7f
	ld   a, b                                        ; $4b99: $78
	dec  sp                                          ; $4b9a: $3b
	nop                                              ; $4b9b: $00
	add  b                                           ; $4b9c: $80
	jr   nz, @+$03                                   ; $4b9d: $20 $01

	jr   nc, jr_02d_4bb1                             ; $4b9f: $30 $10

	add  b                                           ; $4ba1: $80
	nop                                              ; $4ba2: $00
	dec  b                                           ; $4ba3: $05
	inc  e                                           ; $4ba4: $1c
	ld   c, $18                                      ; $4ba5: $0e $18
	ld   e, $f7                                      ; $4ba7: $1e $f7
	rst  $38                                         ; $4ba9: $ff
	add  d                                           ; $4baa: $82
	nop                                              ; $4bab: $00
	add  d                                           ; $4bac: $82
	add  b                                           ; $4bad: $80
	add  b                                           ; $4bae: $80
	ret  nz                                          ; $4baf: $c0

	add  b                                           ; $4bb0: $80

jr_02d_4bb1:
	jr   nz, jr_02d_4bb4                             ; $4bb1: $20 $01

	cpl                                              ; $4bb3: $2f

jr_02d_4bb4:
	ccf                                              ; $4bb4: $3f
	add  c                                           ; $4bb5: $81
	rst  $38                                         ; $4bb6: $ff
	ld   bc, $f01f                                   ; $4bb7: $01 $1f $f0
	adc  c                                           ; $4bba: $89
	nop                                              ; $4bbb: $00
	add  b                                           ; $4bbc: $80
	rst  $38                                         ; $4bbd: $ff
	add  c                                           ; $4bbe: $81
	nop                                              ; $4bbf: $00
	add  d                                           ; $4bc0: $82
	inc  bc                                          ; $4bc1: $03
	add  a                                           ; $4bc2: $87
	rrca                                             ; $4bc3: $0f
	ld   bc, $0708                                   ; $4bc4: $01 $08 $07
	adc  b                                           ; $4bc7: $88
	rrca                                             ; $4bc8: $0f
	add  b                                           ; $4bc9: $80
	ld   bc, $0780                                   ; $4bca: $01 $80 $07
	add  c                                           ; $4bcd: $81
	nop                                              ; $4bce: $00
	add  c                                           ; $4bcf: $81
	ld   hl, sp-$80                                  ; $4bd0: $f8 $80
	add  sp, -$80                                    ; $4bd2: $e8 $80
	ret  z                                           ; $4bd4: $c8

	add  c                                           ; $4bd5: $81
	ld   hl, sp-$80                                  ; $4bd6: $f8 $80
	ldh  a, [rSB]                                    ; $4bd8: $f0 $01
	ldh  [rP1], a                                    ; $4bda: $e0 $00
	add  c                                           ; $4bdc: $81
	ldh  [$80], a                                    ; $4bdd: $e0 $80
	ldh  a, [$82]                                    ; $4bdf: $f0 $82
	ld   hl, sp+$00                                  ; $4be1: $f8 $00
	ldh  a, [$81]                                    ; $4be3: $f0 $81
	db   $fc                                         ; $4be5: $fc
	ld   bc, $e0ec                                   ; $4be6: $01 $ec $e0
	add  b                                           ; $4be9: $80
	rlca                                             ; $4bea: $07
	add  b                                           ; $4beb: $80
	inc  b                                           ; $4bec: $04
	inc  bc                                          ; $4bed: $03
	dec  c                                           ; $4bee: $0d
	rrca                                             ; $4bef: $0f
	ld   de, $8013                                   ; $4bf0: $11 $13 $80
	ld   [hl-], a                                    ; $4bf3: $32
	add  b                                           ; $4bf4: $80
	ld   c, d                                        ; $4bf5: $4a
	add  b                                           ; $4bf6: $80
	ld   c, [hl]                                     ; $4bf7: $4e
	inc  b                                           ; $4bf8: $04
	dec  sp                                          ; $4bf9: $3b
	jr   c, @+$09                                    ; $4bfa: $38 $07

	inc  b                                           ; $4bfc: $04
	rlca                                             ; $4bfd: $07
	add  b                                           ; $4bfe: $80
	inc  bc                                          ; $4bff: $03
	add  c                                           ; $4c00: $81
	ld   [$1007], sp                                 ; $4c01: $08 $07 $10
	nop                                              ; $4c04: $00
	inc  e                                           ; $4c05: $1c
	inc  a                                           ; $4c06: $3c
	ld   e, e                                        ; $4c07: $5b
	ld   a, h                                        ; $4c08: $7c
	rst  $20                                         ; $4c09: $e7
	rst  $38                                         ; $4c0a: $ff
	add  b                                           ; $4c0b: $80
	ldh  a, [$80]                                    ; $4c0c: $f0 $80
	sbc  b                                           ; $4c0e: $98
	add  b                                           ; $4c0f: $80
	inc  c                                           ; $4c10: $0c
	add  d                                           ; $4c11: $82
	inc  b                                           ; $4c12: $04
	add  b                                           ; $4c13: $80
	inc  a                                           ; $4c14: $3c

jr_02d_4c15:
	ld   b, $e4                                      ; $4c15: $06 $e4
	inc  h                                           ; $4c17: $24
	ld   h, h                                        ; $4c18: $64
	inc  h                                           ; $4c19: $24
	sbc  b                                           ; $4c1a: $98
	jr   jr_02d_4c15                                 ; $4c1b: $18 $f8

	add  b                                           ; $4c1d: $80
	ret  nz                                          ; $4c1e: $c0

	dec  bc                                          ; $4c1f: $0b
	nop                                              ; $4c20: $00

jr_02d_4c21:
	add  sp, -$20                                    ; $4c21: $e8 $e0
	ld   d, b                                        ; $4c23: $50
	ld   b, b                                        ; $4c24: $40
	ld   h, b                                        ; $4c25: $60
	ld   [hl], b                                     ; $4c26: $70
	jr   c, jr_02d_4c21                              ; $4c27: $38 $f8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c29: $cf
	rst  $38                                         ; $4c2a: $ff
	nop                                              ; $4c2b: $00
	add  c                                           ; $4c2c: $81
	ccf                                              ; $4c2d: $3f
	add  d                                           ; $4c2e: $82
	inc  sp                                          ; $4c2f: $33
	nop                                              ; $4c30: $00
	ccf                                              ; $4c31: $3f
	add  b                                           ; $4c32: $80
	rra                                              ; $4c33: $1f
	add  b                                           ; $4c34: $80
	rrca                                             ; $4c35: $0f
	add  b                                           ; $4c36: $80
	rlca                                             ; $4c37: $07
	add  b                                           ; $4c38: $80
	nop                                              ; $4c39: $00
	add  b                                           ; $4c3a: $80
	inc  bc                                          ; $4c3b: $03
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	add  b                                           ; $4c3e: $80
	inc  c                                           ; $4c3f: $0c
	add  b                                           ; $4c40: $80
	dec  c                                           ; $4c41: $0d
	ld   bc, $3505                                   ; $4c42: $01 $05 $35
	add  b                                           ; $4c45: $80
	ld   sp, $3401                                   ; $4c46: $31 $01 $34
	inc  b                                           ; $4c49: $04
	add  b                                           ; $4c4a: $80
	inc  bc                                          ; $4c4b: $03
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	add  c                                           ; $4c4e: $81
	cp   $00                                         ; $4c4f: $fe $00
	adc  $81                                         ; $4c51: $ce $81
	call z, $fc00                                    ; $4c53: $cc $00 $fc
	add  d                                           ; $4c56: $82
	ld   hl, sp-$80                                  ; $4c57: $f8 $80
	ldh  a, [rP1]                                    ; $4c59: $f0 $00
	nop                                              ; $4c5b: $00
	add  b                                           ; $4c5c: $80
	ld   h, b                                        ; $4c5d: $60
	add  b                                           ; $4c5e: $80
	ldh  a, [$82]                                    ; $4c5f: $f0 $82
	ld   hl, sp-$80                                  ; $4c61: $f8 $80
	ret  nz                                          ; $4c63: $c0

	ld   bc, $1800                                   ; $4c64: $01 $00 $18
	add  b                                           ; $4c67: $80
	ld   e, b                                        ; $4c68: $58
	ld   bc, $e0f8                                   ; $4c69: $01 $f8 $e0
	add  b                                           ; $4c6c: $80
	nop                                              ; $4c6d: $00
	scf                                              ; $4c6e: $37
	ld   bc, $3f00                                   ; $4c6f: $01 $00 $3f
	ld   bc, $3d6d                                   ; $4c72: $01 $6d $3d
	rrca                                             ; $4c75: $0f
	ccf                                              ; $4c76: $3f
	inc  b                                           ; $4c77: $04
	inc  a                                           ; $4c78: $3c
	inc  c                                           ; $4c79: $0c
	inc  [hl]                                        ; $4c7a: $34
	push bc                                          ; $4c7b: $c5
	ld   h, l                                        ; $4c7c: $65
	ld   b, b                                        ; $4c7d: $40
	ld   c, l                                        ; $4c7e: $4d
	ld   d, e                                        ; $4c7f: $53
	ld   b, b                                        ; $4c80: $40
	add  hl, de                                      ; $4c81: $19
	nop                                              ; $4c82: $00
	ld   c, h                                        ; $4c83: $4c
	db   $10                                         ; $4c84: $10
	inc  d                                           ; $4c85: $14
	db   $10                                         ; $4c86: $10
	add  b                                           ; $4c87: $80
	nop                                              ; $4c88: $00
	jr   nc, jr_02d_4c8b                             ; $4c89: $30 $00

jr_02d_4c8b:
	jr   jr_02d_4c8d                                 ; $4c8b: $18 $00

jr_02d_4c8d:
	ld   [$e000], sp                                 ; $4c8d: $08 $00 $e0
	nop                                              ; $4c90: $00
	ldh  a, [$f8]                                    ; $4c91: $f0 $f8
	ldh  a, [$fc]                                    ; $4c93: $f0 $fc
	call c, $21e6                                    ; $4c95: $dc $e6 $21
	ldh  a, [$83]                                    ; $4c98: $f0 $83
	ld   a, b                                        ; $4c9a: $78
	or   [hl]                                        ; $4c9b: $b6
	cp   h                                           ; $4c9c: $bc
	ld   e, $de                                      ; $4c9d: $1e $de
	ld   l, $0f                                      ; $4c9f: $2e $0f
	ld   h, l                                        ; $4ca1: $65
	dec  b                                           ; $4ca2: $05
	and  a                                           ; $4ca3: $a7
	ld   d, [hl]                                     ; $4ca4: $56
	jp   z, $8042                                    ; $4ca5: $ca $42 $80

	nop                                              ; $4ca8: $00
	dec  b                                           ; $4ca9: $05
	inc  c                                           ; $4caa: $0c
	nop                                              ; $4cab: $00
	ld   a, [de]                                     ; $4cac: $1a
	nop                                              ; $4cad: $00
	inc  bc                                          ; $4cae: $03
	inc  de                                          ; $4caf: $13
	add  b                                           ; $4cb0: $80
	ld   [hl+], a                                    ; $4cb1: $22
	inc  bc                                          ; $4cb2: $03
	ld   b, d                                        ; $4cb3: $42
	ld   b, e                                        ; $4cb4: $43
	ld   b, [hl]                                     ; $4cb5: $46
	ld   b, a                                        ; $4cb6: $47
	add  b                                           ; $4cb7: $80
	ld   c, c                                        ; $4cb8: $49
	add  b                                           ; $4cb9: $80
	add  hl, hl                                      ; $4cba: $29
	add  b                                           ; $4cbb: $80
	rra                                              ; $4cbc: $1f
	add  b                                           ; $4cbd: $80
	inc  d                                           ; $4cbe: $14
	add  c                                           ; $4cbf: $81
	rra                                              ; $4cc0: $1f
	inc  c                                           ; $4cc1: $0c
	nop                                              ; $4cc2: $00

jr_02d_4cc3:
	add  hl, de                                      ; $4cc3: $19
	jr   c, @+$14                                    ; $4cc4: $38 $12

	db   $10                                         ; $4cc6: $10
	ld   b, h                                        ; $4cc7: $44
	nop                                              ; $4cc8: $00
	ld   a, b                                        ; $4cc9: $78
	ld   [hl], b                                     ; $4cca: $70
	or   b                                           ; $4ccb: $b0
	ldh  a, [$cf]                                    ; $4ccc: $f0 $cf
	rst  $38                                         ; $4cce: $ff
	add  b                                           ; $4ccf: $80
	add  sp, -$80                                    ; $4cd0: $e8 $80
	ld   b, a                                        ; $4cd2: $47
	inc  bc                                          ; $4cd3: $03
	ld   b, c                                        ; $4cd4: $41
	pop  bc                                          ; $4cd5: $c1
	ld   bc, $8081                                   ; $4cd6: $01 $81 $80
	rrca                                             ; $4cd9: $0f
	add  b                                           ; $4cda: $80
	db   $10                                         ; $4cdb: $10
	inc  bc                                          ; $4cdc: $03
	ldh  a, [rAUD1SWEEP]                             ; $4cdd: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4cdf: $f0 $10
	add  c                                           ; $4ce1: $81
	ldh  a, [rTMA]                                   ; $4ce2: $f0 $06
	nop                                              ; $4ce4: $00
	sub  b                                           ; $4ce5: $90
	jr   jr_02d_4d34                                 ; $4ce6: $18 $4c

	ld   [$0020], sp                                 ; $4ce8: $08 $20 $00
	add  b                                           ; $4ceb: $80
	inc  e                                           ; $4cec: $1c
	inc  bc                                          ; $4ced: $03
	rrca                                             ; $4cee: $0f
	rra                                              ; $4cef: $1f
	di                                               ; $4cf0: $f3
	rst  $38                                         ; $4cf1: $ff
	add  c                                           ; $4cf2: $81
	nop                                              ; $4cf3: $00
	add  c                                           ; $4cf4: $81
	cp   $01                                         ; $4cf5: $fe $01
	or   $f4                                         ; $4cf7: $f6 $f4
	add  b                                           ; $4cf9: $80
	db   $e4                                         ; $4cfa: $e4
	nop                                              ; $4cfb: $00
	db   $fc                                         ; $4cfc: $fc

jr_02d_4cfd:
	add  b                                           ; $4cfd: $80
	ld   hl, sp-$80                                  ; $4cfe: $f8 $80
	ldh  a, [rSC]                                    ; $4d00: $f0 $02
	ldh  [$90], a                                    ; $4d02: $e0 $90
	ldh  a, [$80]                                    ; $4d04: $f0 $80
	ld   hl, sp+$00                                  ; $4d06: $f8 $00
	ld   a, [hl]                                     ; $4d08: $7e
	add  c                                           ; $4d09: $81
	cp   $80                                         ; $4d0a: $fe $80
	ldh  a, [$80]                                    ; $4d0c: $f0 $80
	ldh  [$80], a                                    ; $4d0e: $e0 $80
	nop                                              ; $4d10: $00
	add  b                                           ; $4d11: $80
	ldh  [$80], a                                    ; $4d12: $e0 $80
	dec  b                                           ; $4d14: $05
	add  b                                           ; $4d15: $80
	inc  c                                           ; $4d16: $0c
	add  b                                           ; $4d17: $80
	add  hl, bc                                      ; $4d18: $09
	add  d                                           ; $4d19: $82
	ld   [$0f80], sp                                 ; $4d1a: $08 $80 $0f
	add  b                                           ; $4d1d: $80
	ld   [$0f80], sp                                 ; $4d1e: $08 $80 $0f
	ld   bc, $0007                                   ; $4d21: $01 $07 $00
	add  b                                           ; $4d24: $80
	ld   [bc], a                                     ; $4d25: $02
	add  b                                           ; $4d26: $80
	rlca                                             ; $4d27: $07
	add  b                                           ; $4d28: $80
	inc  b                                           ; $4d29: $04
	add  b                                           ; $4d2a: $80
	nop                                              ; $4d2b: $00
	add  b                                           ; $4d2c: $80
	rlca                                             ; $4d2d: $07
	inc  bc                                          ; $4d2e: $03
	ld   c, $0f                                      ; $4d2f: $0e $0f
	ld   sp, hl                                      ; $4d31: $f9

jr_02d_4d32:
	rst  $38                                         ; $4d32: $ff
	add  b                                           ; $4d33: $80

jr_02d_4d34:
	jr   nz, jr_02d_4d39                             ; $4d34: $20 $03

	or   b                                           ; $4d36: $b0
	ldh  a, [$88]                                    ; $4d37: $f0 $88

jr_02d_4d39:
	ret  z                                           ; $4d39: $c8

	add  b                                           ; $4d3a: $80
	ld   c, b                                        ; $4d3b: $48
	add  b                                           ; $4d3c: $80
	ld   a, b                                        ; $4d3d: $78
	add  b                                           ; $4d3e: $80
	add  sp, -$80                                    ; $4d3f: $e8 $80
	jr   nc, jr_02d_4cc3                             ; $4d41: $30 $80

	ldh  [rP1], a                                    ; $4d43: $e0 $00
	ret  nz                                          ; $4d45: $c0

	add  c                                           ; $4d46: $81
	nop                                              ; $4d47: $00
	add  b                                           ; $4d48: $80
	ld   b, b                                        ; $4d49: $40
	add  d                                           ; $4d4a: $82
	nop                                              ; $4d4b: $00
	add  b                                           ; $4d4c: $80
	ret  nz                                          ; $4d4d: $c0

	inc  b                                           ; $4d4e: $04
	ld   [hl], b                                     ; $4d4f: $70
	ldh  a, [$be]                                    ; $4d50: $f0 $be
	cp   $00                                         ; $4d52: $fe $00
	add  d                                           ; $4d54: $82
	inc  bc                                          ; $4d55: $03
	adc  b                                           ; $4d56: $88
	rlca                                             ; $4d57: $07
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	add  b                                           ; $4d5a: $80
	ld   [bc], a                                     ; $4d5b: $02
	add  b                                           ; $4d5c: $80
	inc  bc                                          ; $4d5d: $03
	add  b                                           ; $4d5e: $80
	ld   b, $82                                      ; $4d5f: $06 $82
	rlca                                             ; $4d61: $07
	add  b                                           ; $4d62: $80
	nop                                              ; $4d63: $00
	add  b                                           ; $4d64: $80
	rlca                                             ; $4d65: $07
	add  c                                           ; $4d66: $81
	nop                                              ; $4d67: $00
	add  c                                           ; $4d68: $81
	ld   hl, sp-$80                                  ; $4d69: $f8 $80
	add  sp, -$80                                    ; $4d6b: $e8 $80
	ret  z                                           ; $4d6d: $c8

	add  c                                           ; $4d6e: $81
	ld   hl, sp-$80                                  ; $4d6f: $f8 $80
	ldh  a, [$80]                                    ; $4d71: $f0 $80
	ldh  [$80], a                                    ; $4d73: $e0 $80
	nop                                              ; $4d75: $00
	add  b                                           ; $4d76: $80
	ret  nz                                          ; $4d77: $c0

	add  b                                           ; $4d78: $80
	nop                                              ; $4d79: $00
	nop                                              ; $4d7a: $00
	jr   nc, jr_02d_4cfd                             ; $4d7b: $30 $80

	or   b                                           ; $4d7d: $b0
	dec  b                                           ; $4d7e: $05
	ldh  a, [$c0]                                    ; $4d7f: $f0 $c0
	nop                                              ; $4d81: $00
	db   $10                                         ; $4d82: $10
	ldh  a, [$e0]                                    ; $4d83: $f0 $e0
	add  b                                           ; $4d85: $80
	nop                                              ; $4d86: $00
	add  b                                           ; $4d87: $80
	rlca                                             ; $4d88: $07
	add  d                                           ; $4d89: $82
	ld   [$1380], sp                                 ; $4d8a: $08 $80 $13
	add  d                                           ; $4d8d: $82
	ld   de, $0f80                                   ; $4d8e: $11 $80 $0f
	add  c                                           ; $4d91: $81
	rlca                                             ; $4d92: $07
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	add  b                                           ; $4d95: $80
	ld   [bc], a                                     ; $4d96: $02
	add  b                                           ; $4d97: $80
	rlca                                             ; $4d98: $07
	add  b                                           ; $4d99: $80
	inc  b                                           ; $4d9a: $04
	add  b                                           ; $4d9b: $80
	nop                                              ; $4d9c: $00
	add  b                                           ; $4d9d: $80
	rlca                                             ; $4d9e: $07
	inc  bc                                          ; $4d9f: $03
	ld   c, $0f                                      ; $4da0: $0e $0f
	ld   sp, hl                                      ; $4da2: $f9
	rst  $38                                         ; $4da3: $ff
	add  b                                           ; $4da4: $80
	ldh  [$03], a                                    ; $4da5: $e0 $03
	and  b                                           ; $4da7: $a0
	ldh  [rAUD4LEN], a                               ; $4da8: $e0 $20
	ld   h, b                                        ; $4daa: $60
	add  b                                           ; $4dab: $80
	ldh  [$82], a                                    ; $4dac: $e0 $82
	jr   nz, jr_02d_4d32                             ; $4dae: $20 $82

	ldh  [rP1], a                                    ; $4db0: $e0 $00
	ret  nz                                          ; $4db2: $c0

	add  c                                           ; $4db3: $81
	nop                                              ; $4db4: $00
	add  b                                           ; $4db5: $80
	ld   b, b                                        ; $4db6: $40
	add  d                                           ; $4db7: $82
	nop                                              ; $4db8: $00
	add  b                                           ; $4db9: $80
	ret  nz                                          ; $4dba: $c0

	inc  bc                                          ; $4dbb: $03
	ld   [hl], b                                     ; $4dbc: $70
	ldh  a, [$bf]                                    ; $4dbd: $f0 $bf
	rst  $38                                         ; $4dbf: $ff
	add  c                                           ; $4dc0: $81
	nop                                              ; $4dc1: $00
	add  d                                           ; $4dc2: $82
	inc  bc                                          ; $4dc3: $03
	add  a                                           ; $4dc4: $87
	rlca                                             ; $4dc5: $07
	ld   bc, $0700                                   ; $4dc6: $01 $00 $07
	adc  b                                           ; $4dc9: $88
	rrca                                             ; $4dca: $0f
	add  l                                           ; $4dcb: $85
	nop                                              ; $4dcc: $00
	add  e                                           ; $4dcd: $83
	ld   hl, sp-$80                                  ; $4dce: $f8 $80
	add  sp, -$80                                    ; $4dd0: $e8 $80
	ret  z                                           ; $4dd2: $c8

	nop                                              ; $4dd3: $00
	ld   hl, sp-$80                                  ; $4dd4: $f8 $80
	ldh  a, [$80]                                    ; $4dd6: $f0 $80
	ldh  [$81], a                                    ; $4dd8: $e0 $81
	nop                                              ; $4dda: $00
	add  d                                           ; $4ddb: $82
	ret  nz                                          ; $4ddc: $c0

	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	add  d                                           ; $4ddf: $82
	ldh  [$85], a                                    ; $4de0: $e0 $85
	nop                                              ; $4de2: $00
	dec  c                                           ; $4de3: $0d
	rlca                                             ; $4de4: $07
	nop                                              ; $4de5: $00
	rra                                              ; $4de6: $1f
	rlca                                             ; $4de7: $07
	or   a                                           ; $4de8: $b7
	rra                                              ; $4de9: $1f
	jp   nz, Jump_02d_491f                           ; $4dea: $c2 $1f $49

	ld   e, $7c                                      ; $4ded: $1e $7c
	ld   a, $ed                                      ; $4def: $3e $ed
	ld   l, l                                        ; $4df1: $6d
	add  b                                           ; $4df2: $80
	dec  e                                           ; $4df3: $1d
	rra                                              ; $4df4: $1f
	ld   e, l                                        ; $4df5: $5d
	dec  e                                           ; $4df6: $1d
	ld   sp, hl                                      ; $4df7: $f9
	add  hl, sp                                      ; $4df8: $39
	dec  h                                           ; $4df9: $25
	ld   hl, $1012                                   ; $4dfa: $21 $12 $10
	dec  h                                           ; $4dfd: $25
	nop                                              ; $4dfe: $00
	ld   d, [hl]                                     ; $4dff: $56
	inc  b                                           ; $4e00: $04
	ld   c, $00                                      ; $4e01: $0e $00
	jr   nc, jr_02d_4e05                             ; $4e03: $30 $00

jr_02d_4e05:
	ld   hl, sp+$30                                  ; $4e05: $f8 $30
	or   h                                           ; $4e07: $b4
	or   b                                           ; $4e08: $b0
	or   [hl]                                        ; $4e09: $b6
	or   h                                           ; $4e0a: $b4
	cpl                                              ; $4e0b: $2f
	ld   l, [hl]                                     ; $4e0c: $6e
	dec  c                                           ; $4e0d: $0d
	db   $ec                                         ; $4e0e: $ec
	db   $ed                                         ; $4e0f: $ed
	db   $ec                                         ; $4e10: $ec
	ld   h, [hl]                                     ; $4e11: $66
	sub  $92                                         ; $4e12: $d6 $92
	cp   d                                           ; $4e14: $ba
	add  b                                           ; $4e15: $80
	add  d                                           ; $4e16: $82
	dec  bc                                          ; $4e17: $0b
	jr   nc, jr_02d_4e1a                             ; $4e18: $30 $00

jr_02d_4e1a:
	ld   [de], a                                     ; $4e1a: $12
	ld   h, b                                        ; $4e1b: $60
	ret  nz                                          ; $4e1c: $c0

	ld   b, b                                        ; $4e1d: $40
	dec  c                                           ; $4e1e: $0d
	nop                                              ; $4e1f: $00
	jr   jr_02d_4e22                                 ; $4e20: $18 $00

jr_02d_4e22:
	rrca                                             ; $4e22: $0f
	rra                                              ; $4e23: $1f
	add  b                                           ; $4e24: $80
	db   $10                                         ; $4e25: $10
	add  b                                           ; $4e26: $80
	daa                                              ; $4e27: $27
	add  h                                           ; $4e28: $84
	jr   nz, jr_02d_4e2e                             ; $4e29: $20 $03

	rra                                              ; $4e2b: $1f
	db   $10                                         ; $4e2c: $10
	rra                                              ; $4e2d: $1f

jr_02d_4e2e:
	db   $10                                         ; $4e2e: $10
	add  c                                           ; $4e2f: $81
	rra                                              ; $4e30: $1f
	ld   b, $00                                      ; $4e31: $06 $00
	inc  de                                          ; $4e33: $13
	jr   nc, @+$0e                                   ; $4e34: $30 $0c

	ld   [$0048], sp                                 ; $4e36: $08 $48 $00
	add  b                                           ; $4e39: $80
	ld   [hl], b                                     ; $4e3a: $70
	inc  bc                                          ; $4e3b: $03
	ret  nz                                          ; $4e3c: $c0

	ldh  a, [$bf]                                    ; $4e3d: $f0 $bf
	rst  $38                                         ; $4e3f: $ff
	add  b                                           ; $4e40: $80
	ldh  [$80], a                                    ; $4e41: $e0 $80
	rra                                              ; $4e43: $1f
	add  d                                           ; $4e44: $82
	ld   bc, $1f80                                   ; $4e45: $01 $80 $1f
	add  b                                           ; $4e48: $80
	db   $10                                         ; $4e49: $10
	inc  bc                                          ; $4e4a: $03
	ldh  a, [rAUD1SWEEP]                             ; $4e4b: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4e4d: $f0 $10
	add  b                                           ; $4e4f: $80
	ldh  a, [$0d]                                    ; $4e50: $f0 $0d
	ldh  [rAUD1SWEEP], a                             ; $4e52: $e0 $10
	or   b                                           ; $4e54: $b0
	jr   c, @+$4a                                    ; $4e55: $38 $48

	inc  c                                           ; $4e57: $0c
	jr   nz, jr_02d_4e5a                             ; $4e58: $20 $00

jr_02d_4e5a:
	inc  e                                           ; $4e5a: $1c
	ld   e, $03                                      ; $4e5b: $1e $03
	rra                                              ; $4e5d: $1f
	db   $fd                                         ; $4e5e: $fd
	rst  $38                                         ; $4e5f: $ff
	add  b                                           ; $4e60: $80
	nop                                              ; $4e61: $00
	rlca                                             ; $4e62: $07
	ld   e, $00                                      ; $4e63: $1e $00
	ld   de, $1000                                   ; $4e65: $11 $00 $10
	nop                                              ; $4e68: $00
	jr   nz, jr_02d_4e6b                             ; $4e69: $20 $00

jr_02d_4e6b:
	add  b                                           ; $4e6b: $80
	db   $10                                         ; $4e6c: $10
	ld   bc, $0848                                   ; $4e6d: $01 $48 $08
	add  c                                           ; $4e70: $81
	nop                                              ; $4e71: $00
	add  b                                           ; $4e72: $80
	ld   [bc], a                                     ; $4e73: $02
	add  b                                           ; $4e74: $80
	ld   [de], a                                     ; $4e75: $12
	ld   bc, $4a02                                   ; $4e76: $01 $02 $4a
	add  b                                           ; $4e79: $80
	dec  bc                                          ; $4e7a: $0b
	add  c                                           ; $4e7b: $81
	rrca                                             ; $4e7c: $0f
	inc  b                                           ; $4e7d: $04
	daa                                              ; $4e7e: $27
	rrca                                             ; $4e7f: $0f
	rra                                              ; $4e80: $1f
	rlca                                             ; $4e81: $07
	ld   [$0081], sp                                 ; $4e82: $08 $81 $00
	dec  b                                           ; $4e85: $05
	ld   [hl], b                                     ; $4e86: $70
	nop                                              ; $4e87: $00
	adc  b                                           ; $4e88: $88
	nop                                              ; $4e89: $00
	inc  b                                           ; $4e8a: $04
	nop                                              ; $4e8b: $00
	add  b                                           ; $4e8c: $80
	ld   [$3201], sp                                 ; $4e8d: $08 $01 $32
	jr   nc, @-$7d                                   ; $4e90: $30 $81

	nop                                              ; $4e92: $00
	add  b                                           ; $4e93: $80
	ld   b, b                                        ; $4e94: $40
	add  b                                           ; $4e95: $80
	ld   h, b                                        ; $4e96: $60
	add  hl, de                                      ; $4e97: $19
	nop                                              ; $4e98: $00
	jr   nz, @+$2c                                   ; $4e99: $20 $2a

	xor  d                                           ; $4e9b: $aa
	cp   [hl]                                        ; $4e9c: $be
	inc  a                                           ; $4e9d: $3c
	jr   c, jr_02d_4ebc                              ; $4e9e: $38 $1c

	ldh  a, [$f8]                                    ; $4ea0: $f0 $f8
	ldh  [rAUD1SWEEP], a                             ; $4ea2: $e0 $10
	nop                                              ; $4ea4: $00

jr_02d_4ea5:
	rrca                                             ; $4ea5: $0f
	nop                                              ; $4ea6: $00
	ld   [$1800], sp                                 ; $4ea7: $08 $00 $18
	nop                                              ; $4eaa: $00
	jr   z, jr_02d_4eb5                              ; $4eab: $28 $08

	ld   b, a                                        ; $4ead: $47
	rlca                                             ; $4eae: $07
	ld   b, b                                        ; $4eaf: $40
	nop                                              ; $4eb0: $00
	ld   b, b                                        ; $4eb1: $40
	add  d                                           ; $4eb2: $82
	ld   [bc], a                                     ; $4eb3: $02
	add  b                                           ; $4eb4: $80

jr_02d_4eb5:
	ld   [de], a                                     ; $4eb5: $12
	inc  b                                           ; $4eb6: $04
	db   $10                                         ; $4eb7: $10
	ld   d, d                                        ; $4eb8: $52
	ld   [de], a                                     ; $4eb9: $12
	ld   a, [de]                                     ; $4eba: $1a
	dec  de                                          ; $4ebb: $1b

jr_02d_4ebc:
	add  b                                           ; $4ebc: $80
	inc  de                                          ; $4ebd: $13
	inc  b                                           ; $4ebe: $04
	ld   sp, $1f0f                                   ; $4ebf: $31 $0f $1f
	rlca                                             ; $4ec2: $07
	ld   [$0081], sp                                 ; $4ec3: $08 $81 $00
	rlca                                             ; $4ec6: $07
	ldh  a, [rP1]                                    ; $4ec7: $f0 $00
	ld   [$0400], sp                                 ; $4ec9: $08 $00 $04
	nop                                              ; $4ecc: $00
	ld   a, [bc]                                     ; $4ecd: $0a
	ld   [$3080], sp                                 ; $4ece: $08 $80 $30
	nop                                              ; $4ed1: $00
	ld   bc, $0082                                   ; $4ed2: $01 $82 $00
	add  c                                           ; $4ed5: $81
	add  b                                           ; $4ed6: $80
	nop                                              ; $4ed7: $00
	add  c                                           ; $4ed8: $81
	add  b                                           ; $4ed9: $80
	add  b                                           ; $4eda: $80
	ld   bc, $a2a0                                   ; $4edb: $01 $a0 $a2
	add  b                                           ; $4ede: $80
	ldh  [rDIV], a                                   ; $4edf: $e0 $04
	ret  nz                                          ; $4ee1: $c0

	call nz, $2bc0                                   ; $4ee2: $c4 $c0 $2b
	inc  de                                          ; $4ee5: $13
	add  b                                           ; $4ee6: $80
	ld   [hl+], a                                    ; $4ee7: $22
	inc  bc                                          ; $4ee8: $03
	ld   b, d                                        ; $4ee9: $42
	ld   b, e                                        ; $4eea: $43
	ld   b, [hl]                                     ; $4eeb: $46
	ld   b, a                                        ; $4eec: $47
	add  b                                           ; $4eed: $80
	ld   c, c                                        ; $4eee: $49
	add  b                                           ; $4eef: $80
	add  hl, hl                                      ; $4ef0: $29
	add  b                                           ; $4ef1: $80
	rra                                              ; $4ef2: $1f
	add  b                                           ; $4ef3: $80
	inc  d                                           ; $4ef4: $14
	add  c                                           ; $4ef5: $81
	rra                                              ; $4ef6: $1f
	nop                                              ; $4ef7: $00
	nop                                              ; $4ef8: $00
	add  b                                           ; $4ef9: $80
	db   $10                                         ; $4efa: $10
	inc  bc                                          ; $4efb: $03
	inc  de                                          ; $4efc: $13
	jr   nc, jr_02d_4f03                             ; $4efd: $30 $04

	nop                                              ; $4eff: $00
	add  b                                           ; $4f00: $80
	jr   c, jr_02d_4f06                              ; $4f01: $38 $03

jr_02d_4f03:
	ld   c, b                                        ; $4f03: $48
	ld   a, b                                        ; $4f04: $78
	rst  $30                                         ; $4f05: $f7

jr_02d_4f06:
	rst  $38                                         ; $4f06: $ff
	add  b                                           ; $4f07: $80
	db   $ec                                         ; $4f08: $ec
	add  c                                           ; $4f09: $81
	ld   d, d                                        ; $4f0a: $52
	ld   [bc], a                                     ; $4f0b: $02
	jp   nc, $8c0c                                   ; $4f0c: $d2 $0c $8c

	add  d                                           ; $4f0f: $82
	inc  b                                           ; $4f10: $04
	inc  bc                                          ; $4f11: $03
	ld   hl, sp+$18                                  ; $4f12: $f8 $18
	ldh  a, [rAUD1SWEEP]                             ; $4f14: $f0 $10
	add  c                                           ; $4f16: $81
	ldh  a, [rTMA]                                   ; $4f17: $f0 $06
	nop                                              ; $4f19: $00
	db   $10                                         ; $4f1a: $10
	jr   jr_02d_4ea5                                 ; $4f1b: $18 $88

	ld   [$0040], sp                                 ; $4f1d: $08 $40 $00
	add  b                                           ; $4f20: $80
	jr   c, jr_02d_4f25                              ; $4f21: $38 $02

	ld   e, $3e                                      ; $4f23: $1e $3e

jr_02d_4f25:
	rst  $20                                         ; $4f25: $e7
	add  c                                           ; $4f26: $81
	rst  $38                                         ; $4f27: $ff
	inc  bc                                          ; $4f28: $03
	nop                                              ; $4f29: $00
	rst  $38                                         ; $4f2a: $ff
	nop                                              ; $4f2b: $00
	rst  $38                                         ; $4f2c: $ff
	add  b                                           ; $4f2d: $80
	cp   $80                                         ; $4f2e: $fe $80
	rst  $38                                         ; $4f30: $ff
	ld   [bc], a                                     ; $4f31: $02
	nop                                              ; $4f32: $00
	rst  $38                                         ; $4f33: $ff
	nop                                              ; $4f34: $00
	add  c                                           ; $4f35: $81
	rst  $38                                         ; $4f36: $ff
	add  b                                           ; $4f37: $80
	ld   a, a                                        ; $4f38: $7f
	inc  bc                                          ; $4f39: $03
	nop                                              ; $4f3a: $00
	rst  $38                                         ; $4f3b: $ff
	add  b                                           ; $4f3c: $80
	ld   a, a                                        ; $4f3d: $7f
	add  b                                           ; $4f3e: $80
	cp   a                                           ; $4f3f: $bf
	add  b                                           ; $4f40: $80
	ld   a, a                                        ; $4f41: $7f
	inc  bc                                          ; $4f42: $03
	nop                                              ; $4f43: $00
	rst  $38                                         ; $4f44: $ff
	add  b                                           ; $4f45: $80
	ld   a, a                                        ; $4f46: $7f
	add  d                                           ; $4f47: $82
	rst  $38                                         ; $4f48: $ff
	ld   [bc], a                                     ; $4f49: $02
	nop                                              ; $4f4a: $00
	rst  $38                                         ; $4f4b: $ff
	nop                                              ; $4f4c: $00
	add  e                                           ; $4f4d: $83
	rst  $38                                         ; $4f4e: $ff
	ld   [bc], a                                     ; $4f4f: $02
	nop                                              ; $4f50: $00
	rst  $38                                         ; $4f51: $ff
	nop                                              ; $4f52: $00
	add  c                                           ; $4f53: $81
	rst  $38                                         ; $4f54: $ff
	add  b                                           ; $4f55: $80
	ld   d, h                                        ; $4f56: $54
	inc  bc                                          ; $4f57: $03
	inc  bc                                          ; $4f58: $03
	ei                                               ; $4f59: $fb
	and  b                                           ; $4f5a: $a0
	ld   e, a                                        ; $4f5b: $5f
	add  b                                           ; $4f5c: $80
	xor  b                                           ; $4f5d: $a8
	dec  b                                           ; $4f5e: $05
	ld   e, b                                        ; $4f5f: $58
	ld   e, a                                        ; $4f60: $5f
	nop                                              ; $4f61: $00
	rst  $38                                         ; $4f62: $ff
	and  b                                           ; $4f63: $a0
	ld   e, a                                        ; $4f64: $5f
	add  b                                           ; $4f65: $80
	xor  a                                           ; $4f66: $af
	add  b                                           ; $4f67: $80
	nop                                              ; $4f68: $00
	add  b                                           ; $4f69: $80
	rst  $38                                         ; $4f6a: $ff
	ld   bc, $ff00                                   ; $4f6b: $01 $00 $ff
	add  c                                           ; $4f6e: $81
	nop                                              ; $4f6f: $00
	inc  bc                                          ; $4f70: $03
	rst  $38                                         ; $4f71: $ff
	nop                                              ; $4f72: $00
	rst  $38                                         ; $4f73: $ff
	nop                                              ; $4f74: $00
	add  l                                           ; $4f75: $85
	rst  $38                                         ; $4f76: $ff
	ld   bc, $ff00                                   ; $4f77: $01 $00 $ff
	add  c                                           ; $4f7a: $81
	nop                                              ; $4f7b: $00
	inc  bc                                          ; $4f7c: $03
	rst  $38                                         ; $4f7d: $ff
	nop                                              ; $4f7e: $00
	rst  $38                                         ; $4f7f: $ff
	nop                                              ; $4f80: $00
	add  c                                           ; $4f81: $81
	rst  $38                                         ; $4f82: $ff
	dec  b                                           ; $4f83: $05
	db   $fc                                         ; $4f84: $fc
	db   $fd                                         ; $4f85: $fd
	ld   sp, hl                                      ; $4f86: $f9
	ei                                               ; $4f87: $fb
	ld   [bc], a                                     ; $4f88: $02
	cp   $81                                         ; $4f89: $fe $81
	nop                                              ; $4f8b: $00
	inc  bc                                          ; $4f8c: $03
	rst  $38                                         ; $4f8d: $ff
	nop                                              ; $4f8e: $00
	rst  $38                                         ; $4f8f: $ff
	nop                                              ; $4f90: $00
	add  c                                           ; $4f91: $81
	rst  $38                                         ; $4f92: $ff
	inc  b                                           ; $4f93: $04
	ld   a, a                                        ; $4f94: $7f
	cp   a                                           ; $4f95: $bf
	ld   b, b                                        ; $4f96: $40
	ld   a, a                                        ; $4f97: $7f
	nop                                              ; $4f98: $00
	add  b                                           ; $4f99: $80
	ld   a, a                                        ; $4f9a: $7f
	add  c                                           ; $4f9b: $81
	rst  $38                                         ; $4f9c: $ff
	ld   [bc], a                                     ; $4f9d: $02
	nop                                              ; $4f9e: $00
	rst  $38                                         ; $4f9f: $ff
	nop                                              ; $4fa0: $00
	add  c                                           ; $4fa1: $81
	rst  $38                                         ; $4fa2: $ff
	add  b                                           ; $4fa3: $80
	rra                                              ; $4fa4: $1f
	inc  bc                                          ; $4fa5: $03
	ld   hl, sp-$01                                  ; $4fa6: $f8 $ff
	ld   a, b                                        ; $4fa8: $78
	ld   a, a                                        ; $4fa9: $7f
	add  b                                           ; $4faa: $80
	cp   a                                           ; $4fab: $bf
	add  b                                           ; $4fac: $80
	ld   a, a                                        ; $4fad: $7f
	inc  bc                                          ; $4fae: $03
	nop                                              ; $4faf: $00
	cp   a                                           ; $4fb0: $bf
	ret  nz                                          ; $4fb1: $c0

	ld   a, a                                        ; $4fb2: $7f
	add  b                                           ; $4fb3: $80
	cp   a                                           ; $4fb4: $bf
	add  b                                           ; $4fb5: $80
	db   $f4                                         ; $4fb6: $f4
	inc  bc                                          ; $4fb7: $03
	rlca                                             ; $4fb8: $07
	rst  $38                                         ; $4fb9: $ff
	inc  c                                           ; $4fba: $0c
	db   $f4                                         ; $4fbb: $f4
	add  b                                           ; $4fbc: $80
	add  sp, -$80                                    ; $4fbd: $e8 $80
	db   $f4                                         ; $4fbf: $f4
	inc  bc                                          ; $4fc0: $03
	ld   bc, $0bff                                   ; $4fc1: $01 $ff $0b
	push af                                          ; $4fc4: $f5
	add  b                                           ; $4fc5: $80
	ld   [$0180], a                                  ; $4fc6: $ea $80 $01
	inc  bc                                          ; $4fc9: $03
	cp   $ff                                         ; $4fca: $fe $ff
	nop                                              ; $4fcc: $00
	ld   bc, $0080                                   ; $4fcd: $01 $80 $00
	add  b                                           ; $4fd0: $80
	ld   bc, $fc03                                   ; $4fd1: $01 $03 $fc
	rst  $38                                         ; $4fd4: $ff
	ld   d, [hl]                                     ; $4fd5: $56
	ld   d, l                                        ; $4fd6: $55
	add  b                                           ; $4fd7: $80
	xor  d                                           ; $4fd8: $aa
	add  b                                           ; $4fd9: $80
	ld   e, a                                        ; $4fda: $5f
	inc  bc                                          ; $4fdb: $03
	nop                                              ; $4fdc: $00
	rst  $38                                         ; $4fdd: $ff
	and  b                                           ; $4fde: $a0
	ld   e, a                                        ; $4fdf: $5f
	add  b                                           ; $4fe0: $80
	cp   a                                           ; $4fe1: $bf
	add  b                                           ; $4fe2: $80
	ld   e, a                                        ; $4fe3: $5f
	inc  bc                                          ; $4fe4: $03
	nop                                              ; $4fe5: $00
	rst  $38                                         ; $4fe6: $ff
	and  b                                           ; $4fe7: $a0
	ld   e, a                                        ; $4fe8: $5f
	add  b                                           ; $4fe9: $80
	cp   a                                           ; $4fea: $bf
	add  b                                           ; $4feb: $80
	push de                                          ; $4fec: $d5
	inc  bc                                          ; $4fed: $03
	nop                                              ; $4fee: $00
	rst  $38                                         ; $4fef: $ff
	ld   a, [bc]                                     ; $4ff0: $0a
	push af                                          ; $4ff1: $f5
	add  b                                           ; $4ff2: $80
	db   $eb                                         ; $4ff3: $eb
	add  b                                           ; $4ff4: $80
	db   $fd                                         ; $4ff5: $fd
	inc  bc                                          ; $4ff6: $03
	ld   bc, $03ff                                   ; $4ff7: $01 $ff $03
	db   $fd                                         ; $4ffa: $fd
	add  b                                           ; $4ffb: $80
	rst  $38                                         ; $4ffc: $ff
	add  b                                           ; $4ffd: $80
	ld   d, l                                        ; $4ffe: $55
	add  b                                           ; $4fff: $80
	rst  $38                                         ; $5000: $ff
	add  b                                           ; $5001: $80
	ld   d, l                                        ; $5002: $55
	add  b                                           ; $5003: $80
	db   $eb                                         ; $5004: $eb
	add  c                                           ; $5005: $81
	ld   d, l                                        ; $5006: $55
	add  b                                           ; $5007: $80
	rst  $38                                         ; $5008: $ff
	nop                                              ; $5009: $00
	ld   d, l                                        ; $500a: $55
	add  b                                           ; $500b: $80
	xor  d                                           ; $500c: $aa
	add  b                                           ; $500d: $80
	ld   d, l                                        ; $500e: $55
	inc  bc                                          ; $500f: $03
	push de                                          ; $5010: $d5
	rst  $38                                         ; $5011: $ff
	ld   a, a                                        ; $5012: $7f
	ld   d, l                                        ; $5013: $55
	add  b                                           ; $5014: $80
	xor  d                                           ; $5015: $aa
	add  c                                           ; $5016: $81
	ld   d, l                                        ; $5017: $55
	add  b                                           ; $5018: $80
	rst  $38                                         ; $5019: $ff
	nop                                              ; $501a: $00
	ld   d, l                                        ; $501b: $55
	add  b                                           ; $501c: $80
	xor  d                                           ; $501d: $aa
	add  b                                           ; $501e: $80
	ld   d, l                                        ; $501f: $55
	inc  bc                                          ; $5020: $03
	ld   d, h                                        ; $5021: $54
	rst  $38                                         ; $5022: $ff
	cp   $55                                         ; $5023: $fe $55
	add  b                                           ; $5025: $80
	xor  d                                           ; $5026: $aa
	add  b                                           ; $5027: $80
	ld   d, l                                        ; $5028: $55
	inc  bc                                          ; $5029: $03
	ld   d, h                                        ; $502a: $54
	rst  $38                                         ; $502b: $ff
	db   $fc                                         ; $502c: $fc
	ld   d, a                                        ; $502d: $57
	add  d                                           ; $502e: $82
	rst  $38                                         ; $502f: $ff
	ld   [bc], a                                     ; $5030: $02
	nop                                              ; $5031: $00
	rst  $38                                         ; $5032: $ff
	nop                                              ; $5033: $00
	add  e                                           ; $5034: $83
	rst  $38                                         ; $5035: $ff
	ld   [bc], a                                     ; $5036: $02
	nop                                              ; $5037: $00
	rst  $38                                         ; $5038: $ff
	nop                                              ; $5039: $00
	add  c                                           ; $503a: $81
	rst  $38                                         ; $503b: $ff
	add  b                                           ; $503c: $80
	ld   a, a                                        ; $503d: $7f
	ld   [bc], a                                     ; $503e: $02
	nop                                              ; $503f: $00
	rst  $38                                         ; $5040: $ff
	nop                                              ; $5041: $00
	add  e                                           ; $5042: $83
	rst  $38                                         ; $5043: $ff
	ld   [bc], a                                     ; $5044: $02
	nop                                              ; $5045: $00
	rst  $38                                         ; $5046: $ff
	nop                                              ; $5047: $00
	add  e                                           ; $5048: $83
	rst  $38                                         ; $5049: $ff
	ld   [bc], a                                     ; $504a: $02
	nop                                              ; $504b: $00
	rst  $38                                         ; $504c: $ff
	nop                                              ; $504d: $00
	add  e                                           ; $504e: $83
	rst  $38                                         ; $504f: $ff
	ld   [bc], a                                     ; $5050: $02
	nop                                              ; $5051: $00
	rst  $38                                         ; $5052: $ff
	nop                                              ; $5053: $00
	add  c                                           ; $5054: $81
	rst  $38                                         ; $5055: $ff
	add  b                                           ; $5056: $80
	ld   e, a                                        ; $5057: $5f
	inc  bc                                          ; $5058: $03
	nop                                              ; $5059: $00
	rst  $38                                         ; $505a: $ff
	add  b                                           ; $505b: $80
	ld   a, a                                        ; $505c: $7f
	add  d                                           ; $505d: $82
	rst  $38                                         ; $505e: $ff
	ld   [bc], a                                     ; $505f: $02
	nop                                              ; $5060: $00
	rst  $38                                         ; $5061: $ff
	nop                                              ; $5062: $00
	add  e                                           ; $5063: $83
	rst  $38                                         ; $5064: $ff
	ld   [bc], a                                     ; $5065: $02
	nop                                              ; $5066: $00
	rst  $38                                         ; $5067: $ff
	nop                                              ; $5068: $00
	add  e                                           ; $5069: $83
	rst  $38                                         ; $506a: $ff
	ld   [bc], a                                     ; $506b: $02
	nop                                              ; $506c: $00
	rst  $38                                         ; $506d: $ff
	nop                                              ; $506e: $00
	add  e                                           ; $506f: $83
	rst  $38                                         ; $5070: $ff
	ld   [bc], a                                     ; $5071: $02
	nop                                              ; $5072: $00
	rst  $38                                         ; $5073: $ff
	nop                                              ; $5074: $00
	add  e                                           ; $5075: $83
	rst  $38                                         ; $5076: $ff
	ld   [bc], a                                     ; $5077: $02
	nop                                              ; $5078: $00
	rst  $38                                         ; $5079: $ff
	nop                                              ; $507a: $00
	add  e                                           ; $507b: $83
	rst  $38                                         ; $507c: $ff
	ld   [bc], a                                     ; $507d: $02
	nop                                              ; $507e: $00
	rst  $38                                         ; $507f: $ff
	nop                                              ; $5080: $00
	add  e                                           ; $5081: $83
	rst  $38                                         ; $5082: $ff
	ld   [bc], a                                     ; $5083: $02
	nop                                              ; $5084: $00
	rst  $38                                         ; $5085: $ff
	nop                                              ; $5086: $00
	add  e                                           ; $5087: $83
	rst  $38                                         ; $5088: $ff
	ld   [bc], a                                     ; $5089: $02
	nop                                              ; $508a: $00
	rst  $38                                         ; $508b: $ff
	nop                                              ; $508c: $00
	add  e                                           ; $508d: $83
	rst  $38                                         ; $508e: $ff
	ld   [bc], a                                     ; $508f: $02
	nop                                              ; $5090: $00
	rst  $38                                         ; $5091: $ff
	nop                                              ; $5092: $00
	add  e                                           ; $5093: $83
	rst  $38                                         ; $5094: $ff
	ld   [bc], a                                     ; $5095: $02
	nop                                              ; $5096: $00
	rst  $38                                         ; $5097: $ff
	nop                                              ; $5098: $00
	add  e                                           ; $5099: $83
	rst  $38                                         ; $509a: $ff
	ld   [bc], a                                     ; $509b: $02
	nop                                              ; $509c: $00
	rst  $38                                         ; $509d: $ff
	nop                                              ; $509e: $00
	add  c                                           ; $509f: $81
	rst  $38                                         ; $50a0: $ff
	add  b                                           ; $50a1: $80
	push af                                          ; $50a2: $f5
	inc  bc                                          ; $50a3: $03
	dec  d                                           ; $50a4: $15
	rst  $38                                         ; $50a5: $ff
	rra                                              ; $50a6: $1f
	push af                                          ; $50a7: $f5
	add  d                                           ; $50a8: $82
	rst  $38                                         ; $50a9: $ff
	ld   [bc], a                                     ; $50aa: $02
	nop                                              ; $50ab: $00
	rst  $38                                         ; $50ac: $ff
	nop                                              ; $50ad: $00
	add  c                                           ; $50ae: $81
	rst  $38                                         ; $50af: $ff
	add  c                                           ; $50b0: $81
	ld   d, l                                        ; $50b1: $55
	add  b                                           ; $50b2: $80
	rst  $38                                         ; $50b3: $ff
	nop                                              ; $50b4: $00
	ld   d, l                                        ; $50b5: $55
	add  b                                           ; $50b6: $80
	xor  d                                           ; $50b7: $aa
	add  b                                           ; $50b8: $80
	rst  $38                                         ; $50b9: $ff
	ld   [bc], a                                     ; $50ba: $02
	nop                                              ; $50bb: $00
	rst  $38                                         ; $50bc: $ff
	nop                                              ; $50bd: $00
	add  c                                           ; $50be: $81
	rst  $38                                         ; $50bf: $ff
	add  b                                           ; $50c0: $80
	ld   e, a                                        ; $50c1: $5f
	inc  bc                                          ; $50c2: $03
	ld   b, b                                        ; $50c3: $40
	rst  $38                                         ; $50c4: $ff
	ret  nz                                          ; $50c5: $c0

	ld   a, a                                        ; $50c6: $7f
	add  d                                           ; $50c7: $82
	rst  $38                                         ; $50c8: $ff
	ld   [bc], a                                     ; $50c9: $02
	nop                                              ; $50ca: $00
	rst  $38                                         ; $50cb: $ff
	nop                                              ; $50cc: $00
	add  e                                           ; $50cd: $83
	rst  $38                                         ; $50ce: $ff
	ld   [bc], a                                     ; $50cf: $02
	nop                                              ; $50d0: $00
	rst  $38                                         ; $50d1: $ff
	nop                                              ; $50d2: $00
	add  e                                           ; $50d3: $83
	rst  $38                                         ; $50d4: $ff
	ld   [bc], a                                     ; $50d5: $02
	nop                                              ; $50d6: $00
	rst  $38                                         ; $50d7: $ff
	nop                                              ; $50d8: $00
	add  e                                           ; $50d9: $83
	rst  $38                                         ; $50da: $ff
	ld   [bc], a                                     ; $50db: $02
	nop                                              ; $50dc: $00
	rst  $38                                         ; $50dd: $ff
	nop                                              ; $50de: $00
	add  e                                           ; $50df: $83
	rst  $38                                         ; $50e0: $ff
	ld   [bc], a                                     ; $50e1: $02
	nop                                              ; $50e2: $00
	rst  $38                                         ; $50e3: $ff
	nop                                              ; $50e4: $00
	add  e                                           ; $50e5: $83
	rst  $38                                         ; $50e6: $ff
	ld   [bc], a                                     ; $50e7: $02
	nop                                              ; $50e8: $00
	rst  $38                                         ; $50e9: $ff
	nop                                              ; $50ea: $00
	add  e                                           ; $50eb: $83
	rst  $38                                         ; $50ec: $ff
	ld   [bc], a                                     ; $50ed: $02
	nop                                              ; $50ee: $00
	rst  $38                                         ; $50ef: $ff
	nop                                              ; $50f0: $00
	add  e                                           ; $50f1: $83
	rst  $38                                         ; $50f2: $ff
	ld   [bc], a                                     ; $50f3: $02
	nop                                              ; $50f4: $00
	rst  $38                                         ; $50f5: $ff
	nop                                              ; $50f6: $00
	add  e                                           ; $50f7: $83
	rst  $38                                         ; $50f8: $ff
	ld   [bc], a                                     ; $50f9: $02
	nop                                              ; $50fa: $00
	rst  $38                                         ; $50fb: $ff
	nop                                              ; $50fc: $00
	add  c                                           ; $50fd: $81
	rst  $38                                         ; $50fe: $ff
	ld   [bc], a                                     ; $50ff: $02
	nop                                              ; $5100: $00
	cp   $50                                         ; $5101: $fe $50
	add  b                                           ; $5103: $80
	ld   d, e                                        ; $5104: $53
	ld   bc, $53fb                                   ; $5105: $01 $fb $53
	add  c                                           ; $5108: $81
	ei                                               ; $5109: $fb
	add  b                                           ; $510a: $80
	adc  e                                           ; $510b: $8b
	add  c                                           ; $510c: $81
	cp   e                                           ; $510d: $bb

jr_02d_510e:
	adc  c                                           ; $510e: $89
	xor  e                                           ; $510f: $ab
	ld   bc, $ffed                                   ; $5110: $01 $ed $ff
	add  c                                           ; $5113: $81
	add  c                                           ; $5114: $81
	ld   [bc], a                                     ; $5115: $02
	cp   a                                           ; $5116: $bf
	pop  bc                                          ; $5117: $c1
	rlca                                             ; $5118: $07
	add  b                                           ; $5119: $80
	inc  b                                           ; $511a: $04
	add  c                                           ; $511b: $81
	rlca                                             ; $511c: $07
	add  d                                           ; $511d: $82
	ld   b, $80                                      ; $511e: $06 $80
	nop                                              ; $5120: $00
	inc  bc                                          ; $5121: $03
	ld   bc, $0200                                   ; $5122: $01 $00 $02
	ld   a, c                                        ; $5125: $79
	add  b                                           ; $5126: $80
	and  a                                           ; $5127: $a7
	add  hl, bc                                      ; $5128: $09
	xor  a                                           ; $5129: $af
	or   a                                           ; $512a: $b7
	cp   a                                           ; $512b: $bf
	and  e                                           ; $512c: $a3
	cp   a                                           ; $512d: $bf
	pop  bc                                          ; $512e: $c1
	rst  $38                                         ; $512f: $ff
	adc  c                                           ; $5130: $89
	cp   e                                           ; $5131: $bb
	dec  sp                                          ; $5132: $3b
	add  b                                           ; $5133: $80
	ld   a, e                                        ; $5134: $7b
	ld   bc, $0dfb                                   ; $5135: $01 $fb $0d
	sbc  e                                           ; $5138: $9b
	nop                                              ; $5139: $00
	ld   c, $80                                      ; $513a: $0e $80
	nop                                              ; $513c: $00
	adc  a                                           ; $513d: $8f
	nop                                              ; $513e: $00
	ld   [$1800], sp                                 ; $513f: $08 $00 $18
	nop                                              ; $5142: $00
	jr   z, jr_02d_514d                              ; $5143: $28 $08

	ld   b, a                                        ; $5145: $47
	rlca                                             ; $5146: $07
	ld   b, b                                        ; $5147: $40
	nop                                              ; $5148: $00
	ld   b, b                                        ; $5149: $40
	add  d                                           ; $514a: $82
	ld   [bc], a                                     ; $514b: $02
	add  b                                           ; $514c: $80

jr_02d_514d:
	ld   [de], a                                     ; $514d: $12
	inc  b                                           ; $514e: $04
	db   $10                                         ; $514f: $10
	ld   d, d                                        ; $5150: $52
	ld   [de], a                                     ; $5151: $12
	ld   a, [de]                                     ; $5152: $1a
	dec  de                                          ; $5153: $1b
	add  b                                           ; $5154: $80
	inc  de                                          ; $5155: $13
	jr   nz, @+$33                                   ; $5156: $20 $31

	rrca                                             ; $5158: $0f
	rra                                              ; $5159: $1f
	rlca                                             ; $515a: $07
	rrca                                             ; $515b: $0f
	nop                                              ; $515c: $00
	inc  b                                           ; $515d: $04
	dec  b                                           ; $515e: $05
	ld   bc, $030b                                   ; $515f: $01 $0b $03
	rla                                              ; $5162: $17
	rlca                                             ; $5163: $07
	cpl                                              ; $5164: $2f
	ld   c, $df                                      ; $5165: $0e $df
	dec  e                                           ; $5167: $1d
	ccf                                              ; $5168: $3f
	ld   a, [hl-]                                    ; $5169: $3a
	rst  $38                                         ; $516a: $ff
	ld   b, $ff                                      ; $516b: $06 $ff
	add  hl, de                                      ; $516d: $19
	ei                                               ; $516e: $fb
	db   $db                                         ; $516f: $db
	ei                                               ; $5170: $fb
	xor  e                                           ; $5171: $ab
	ei                                               ; $5172: $fb
	ld   e, e                                        ; $5173: $5b
	ei                                               ; $5174: $fb
	cp   e                                           ; $5175: $bb
	ei                                               ; $5176: $fb
	ld   h, e                                        ; $5177: $63
	add  c                                           ; $5178: $81
	rst  $30                                         ; $5179: $f7
	nop                                              ; $517a: $00
	add  hl, de                                      ; $517b: $19
	add  b                                           ; $517c: $80
	cp   $00                                         ; $517d: $fe $00
	rst  $38                                         ; $517f: $ff

Call_02d_5180:
	add  c                                           ; $5180: $81
	add  b                                           ; $5181: $80
	ld   bc, $b8b9                                   ; $5182: $01 $b9 $b8
	add  c                                           ; $5185: $81
	or   a                                           ; $5186: $b7
	inc  b                                           ; $5187: $04
	ldh  a, [$7f]                                    ; $5188: $f0 $7f
	ld   e, c                                        ; $518a: $59
	ccf                                              ; $518b: $3f
	jr   nz, jr_02d_510e                             ; $518c: $20 $80

	rra                                              ; $518e: $1f
	nop                                              ; $518f: $00
	rst  $38                                         ; $5190: $ff
	add  c                                           ; $5191: $81
	ld   bc, $ff03                                   ; $5192: $01 $03 $ff
	add  c                                           ; $5195: $81
	rst  $38                                         ; $5196: $ff
	jp   $fe80                                       ; $5197: $c3 $80 $fe


	inc  bc                                          ; $519a: $03
	rst  $38                                         ; $519b: $ff
	call nz, Call_02d_78ff                           ; $519c: $c4 $ff $78
	add  b                                           ; $519f: $80
	rst  ToBoot                                         ; $51a0: $c7
	nop                                              ; $51a1: $00
	rst  $38                                         ; $51a2: $ff
	add  c                                           ; $51a3: $81
	ld   de, $7f01                                   ; $51a4: $11 $01 $7f
	sbc  a                                           ; $51a7: $9f
	add  b                                           ; $51a8: $80
	rst  $38                                         ; $51a9: $ff
	add  b                                           ; $51aa: $80
	rra                                              ; $51ab: $1f
	inc  bc                                          ; $51ac: $03
	rst  $38                                         ; $51ad: $ff
	rrca                                             ; $51ae: $0f
	rst  $38                                         ; $51af: $ff
	ld   bc, $ff81                                   ; $51b0: $01 $81 $ff
	add  c                                           ; $51b3: $81
	nop                                              ; $51b4: $00
	add  hl, bc                                      ; $51b5: $09
	rst  $38                                         ; $51b6: $ff
	cp   $ff                                         ; $51b7: $fe $ff
	db   $fd                                         ; $51b9: $fd
	rst  $38                                         ; $51ba: $ff
	ei                                               ; $51bb: $fb
	rst  $38                                         ; $51bc: $ff
	rst  $30                                         ; $51bd: $f7
	db   $fc                                         ; $51be: $fc
	inc  c                                           ; $51bf: $0c
	add  b                                           ; $51c0: $80
	ld   hl, sp+$00                                  ; $51c1: $f8 $00
	rst  $38                                         ; $51c3: $ff
	add  c                                           ; $51c4: $81
	nop                                              ; $51c5: $00
	dec  b                                           ; $51c6: $05
	rst  $38                                         ; $51c7: $ff
	nop                                              ; $51c8: $00
	rst  $38                                         ; $51c9: $ff
	nop                                              ; $51ca: $00
	rst  $38                                         ; $51cb: $ff
	nop                                              ; $51cc: $00
	add  b                                           ; $51cd: $80
	rst  $38                                         ; $51ce: $ff
	add  d                                           ; $51cf: $82
	nop                                              ; $51d0: $00
	nop                                              ; $51d1: $00
	rst  $38                                         ; $51d2: $ff
	add  c                                           ; $51d3: $81
	adc  b                                           ; $51d4: $88
	ld   bc, $fcfb                                   ; $51d5: $01 $fb $fc
	add  b                                           ; $51d8: $80
	rst  $38                                         ; $51d9: $ff
	add  b                                           ; $51da: $80
	ld   hl, sp+$03                                  ; $51db: $f8 $03
	rst  $38                                         ; $51dd: $ff
	ldh  a, [rIE]                                    ; $51de: $f0 $ff
	add  b                                           ; $51e0: $80
	add  c                                           ; $51e1: $81
	rst  $38                                         ; $51e2: $ff
	add  c                                           ; $51e3: $81
	ld   bc, $9d01                                   ; $51e4: $01 $01 $9d
	adc  l                                           ; $51e7: $8d
	add  c                                           ; $51e8: $81
	ld   a, l                                        ; $51e9: $7d
	inc  b                                           ; $51ea: $04
	rrca                                             ; $51eb: $0f
	cp   $9a                                         ; $51ec: $fe $9a
	db   $fc                                         ; $51ee: $fc
	inc  b                                           ; $51ef: $04
	add  b                                           ; $51f0: $80
	ld   hl, sp-$01                                  ; $51f1: $f8 $ff
	nop                                              ; $51f3: $00
	ldh  a, [rP1]                                    ; $51f4: $f0 $00
	ld   bc, $00ff                                   ; $51f6: $01 $ff $00
	add  [hl]                                        ; $51f9: $86
	db   $db                                         ; $51fa: $db
	add  b                                           ; $51fb: $80
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	rst  $38                                         ; $51fe: $ff
	add  c                                           ; $51ff: $81
	nop                                              ; $5200: $00
	ld   bc, $00ff                                   ; $5201: $01 $ff $00
	add  [hl]                                        ; $5204: $86
	ld   l, l                                        ; $5205: $6d
	add  b                                           ; $5206: $80
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	rst  $38                                         ; $5209: $ff
	add  c                                           ; $520a: $81
	nop                                              ; $520b: $00
	ld   bc, $00ff                                   ; $520c: $01 $ff $00
	add  [hl]                                        ; $520f: $86
	or   [hl]                                        ; $5210: $b6
	add  b                                           ; $5211: $80
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	rst  $38                                         ; $5214: $ff
	add  c                                           ; $5215: $81
	nop                                              ; $5216: $00
	ld   [bc], a                                     ; $5217: $02
	rst  $38                                         ; $5218: $ff
	nop                                              ; $5219: $00
	dec  de                                          ; $521a: $1b
	add  l                                           ; $521b: $85
	db   $db                                         ; $521c: $db
	ld   [bc], a                                     ; $521d: $02
	ret  nz                                          ; $521e: $c0

	nop                                              ; $521f: $00
	rst  $38                                         ; $5220: $ff
	add  c                                           ; $5221: $81
	nop                                              ; $5222: $00
	ld   [bc], a                                     ; $5223: $02
	rst  $38                                         ; $5224: $ff
	nop                                              ; $5225: $00
	inc  bc                                          ; $5226: $03
	add  l                                           ; $5227: $85
	db   $db                                         ; $5228: $db
	ld   [bc], a                                     ; $5229: $02
	ret  c                                           ; $522a: $d8

jr_02d_522b:
	nop                                              ; $522b: $00
	rst  $38                                         ; $522c: $ff
	add  c                                           ; $522d: $81
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	rst  $38                                         ; $5230: $ff
	add  b                                           ; $5231: $80
	nop                                              ; $5232: $00
	add  [hl]                                        ; $5233: $86
	db   $db                                         ; $5234: $db
	ld   bc, $ff00                                   ; $5235: $01 $00 $ff
	add  c                                           ; $5238: $81
	nop                                              ; $5239: $00
	ld   [bc], a                                     ; $523a: $02
	rst  $38                                         ; $523b: $ff
	nop                                              ; $523c: $00
	dec  c                                           ; $523d: $0d
	add  l                                           ; $523e: $85
	ld   l, l                                        ; $523f: $6d
	ld   [bc], a                                     ; $5240: $02
	ld   h, b                                        ; $5241: $60
	nop                                              ; $5242: $00
	rst  $38                                         ; $5243: $ff
	add  c                                           ; $5244: $81
	nop                                              ; $5245: $00
	ld   [bc], a                                     ; $5246: $02
	rst  $38                                         ; $5247: $ff
	nop                                              ; $5248: $00
	ld   bc, $6d85                                   ; $5249: $01 $85 $6d
	ld   [bc], a                                     ; $524c: $02
	ld   l, h                                        ; $524d: $6c
	nop                                              ; $524e: $00
	rst  $38                                         ; $524f: $ff
	add  c                                           ; $5250: $81
	nop                                              ; $5251: $00
	nop                                              ; $5252: $00
	rst  $38                                         ; $5253: $ff
	add  b                                           ; $5254: $80
	nop                                              ; $5255: $00
	add  [hl]                                        ; $5256: $86
	ld   l, l                                        ; $5257: $6d
	ld   bc, $ff00                                   ; $5258: $01 $00 $ff
	add  c                                           ; $525b: $81
	nop                                              ; $525c: $00
	ld   [bc], a                                     ; $525d: $02
	rst  $38                                         ; $525e: $ff
	nop                                              ; $525f: $00
	ld   [hl], $85                                   ; $5260: $36 $85
	or   [hl]                                        ; $5262: $b6
	ld   [bc], a                                     ; $5263: $02
	add  b                                           ; $5264: $80
	nop                                              ; $5265: $00
	rst  $38                                         ; $5266: $ff
	add  c                                           ; $5267: $81
	nop                                              ; $5268: $00
	ld   [bc], a                                     ; $5269: $02
	rst  $38                                         ; $526a: $ff
	nop                                              ; $526b: $00
	ld   b, $85                                      ; $526c: $06 $85
	or   [hl]                                        ; $526e: $b6
	ld   [bc], a                                     ; $526f: $02
	or   b                                           ; $5270: $b0
	nop                                              ; $5271: $00
	rst  $38                                         ; $5272: $ff

jr_02d_5273:
	add  c                                           ; $5273: $81
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	rst  $38                                         ; $5276: $ff
	add  b                                           ; $5277: $80
	nop                                              ; $5278: $00
	add  [hl]                                        ; $5279: $86
	or   [hl]                                        ; $527a: $b6
	ld   bc, $ff00                                   ; $527b: $01 $00 $ff
	ret  nz                                          ; $527e: $c0

	nop                                              ; $527f: $00
	add  b                                           ; $5280: $80
	ld   b, h                                        ; $5281: $44
	add  b                                           ; $5282: $80
	ld   a, a                                        ; $5283: $7f
	add  b                                           ; $5284: $80
	adc  $80                                         ; $5285: $ce $80
	ld   d, l                                        ; $5287: $55
	add  b                                           ; $5288: $80
	ld   h, h                                        ; $5289: $64
	add  b                                           ; $528a: $80
	ld   l, [hl]                                     ; $528b: $6e
	add  b                                           ; $528c: $80
	ld   b, h                                        ; $528d: $44
	add  d                                           ; $528e: $82
	nop                                              ; $528f: $00
	add  b                                           ; $5290: $80
	add  b                                           ; $5291: $80
	add  d                                           ; $5292: $82
	nop                                              ; $5293: $00
	add  d                                           ; $5294: $82
	add  b                                           ; $5295: $80
	add  h                                           ; $5296: $84
	nop                                              ; $5297: $00
	add  b                                           ; $5298: $80
	inc  bc                                          ; $5299: $03
	add  [hl]                                        ; $529a: $86
	nop                                              ; $529b: $00
	add  b                                           ; $529c: $80
	inc  bc                                          ; $529d: $03
	add  b                                           ; $529e: $80
	nop                                              ; $529f: $00
	add  b                                           ; $52a0: $80
	ld   b, b                                        ; $52a1: $40
	add  b                                           ; $52a2: $80
	db   $fc                                         ; $52a3: $fc
	add  d                                           ; $52a4: $82
	ld   b, h                                        ; $52a5: $44
	add  d                                           ; $52a6: $82
	add  h                                           ; $52a7: $84
	add  b                                           ; $52a8: $80
	jr   jr_02d_522b                                 ; $52a9: $18 $80

	nop                                              ; $52ab: $00
	add  b                                           ; $52ac: $80
	ld   b, b                                        ; $52ad: $40
	add  b                                           ; $52ae: $80
	ld   [hl], a                                     ; $52af: $77
	add  b                                           ; $52b0: $80
	and  h                                           ; $52b1: $a4
	add  b                                           ; $52b2: $80
	db   $fc                                         ; $52b3: $fc
	add  d                                           ; $52b4: $82
	inc  h                                           ; $52b5: $24
	add  b                                           ; $52b6: $80
	rst  $10                                         ; $52b7: $d7
	add  d                                           ; $52b8: $82
	nop                                              ; $52b9: $00
	adc  d                                           ; $52ba: $8a
	add  b                                           ; $52bb: $80
	add  b                                           ; $52bc: $80
	nop                                              ; $52bd: $00
	add  b                                           ; $52be: $80
	ld   a, $80                                      ; $52bf: $3e $80
	rst  $38                                         ; $52c1: $ff
	add  b                                           ; $52c2: $80

jr_02d_52c3:
	xor  d                                           ; $52c3: $aa
	add  b                                           ; $52c4: $80
	ld   a, $80                                      ; $52c5: $3e $80
	rst  $38                                         ; $52c7: $ff
	add  b                                           ; $52c8: $80
	ld   d, l                                        ; $52c9: $55
	add  b                                           ; $52ca: $80
	rst  $38                                         ; $52cb: $ff
	add  d                                           ; $52cc: $82
	nop                                              ; $52cd: $00
	add  d                                           ; $52ce: $82
	add  b                                           ; $52cf: $80
	add  b                                           ; $52d0: $80
	nop                                              ; $52d1: $00
	add  b                                           ; $52d2: $80

jr_02d_52d3:
	add  b                                           ; $52d3: $80
	add  b                                           ; $52d4: $80
	nop                                              ; $52d5: $00
	add  b                                           ; $52d6: $80
	add  b                                           ; $52d7: $80
	add  b                                           ; $52d8: $80
	nop                                              ; $52d9: $00
	add  b                                           ; $52da: $80
	ld   a, a                                        ; $52db: $7f
	add  b                                           ; $52dc: $80
	ld   e, [hl]                                     ; $52dd: $5e
	add  b                                           ; $52de: $80
	add  b                                           ; $52df: $80
	add  b                                           ; $52e0: $80
	ld   a, a                                        ; $52e1: $7f
	add  b                                           ; $52e2: $80
	ld   a, [hl+]                                    ; $52e3: $2a
	add  b                                           ; $52e4: $80
	ld   [de], a                                     ; $52e5: $12
	add  b                                           ; $52e6: $80
	ld   l, l                                        ; $52e7: $6d
	add  b                                           ; $52e8: $80
	nop                                              ; $52e9: $00
	add  b                                           ; $52ea: $80
	ld   bc, $0280                                   ; $52eb: $01 $80 $02
	add  b                                           ; $52ee: $80
	rlca                                             ; $52ef: $07
	add  b                                           ; $52f0: $80
	jr   jr_02d_5273                                 ; $52f1: $18 $80

	rlca                                             ; $52f3: $07
	add  b                                           ; $52f4: $80
	add  h                                           ; $52f5: $84
	add  b                                           ; $52f6: $80
	add  a                                           ; $52f7: $87
	add  b                                           ; $52f8: $80
	nop                                              ; $52f9: $00
	add  b                                           ; $52fa: $80

jr_02d_52fb:
	ld   bc, $8180                                   ; $52fb: $01 $80 $81
	add  b                                           ; $52fe: $80
	pop  bc                                          ; $52ff: $c1
	add  b                                           ; $5300: $80
	ld   sp, $c180                                   ; $5301: $31 $80 $c1
	add  b                                           ; $5304: $80
	ld   b, c                                        ; $5305: $41
	add  b                                           ; $5306: $80
	pop  bc                                          ; $5307: $c1
	add  d                                           ; $5308: $82

jr_02d_5309:
	nop                                              ; $5309: $00
	add  b                                           ; $530a: $80
	ld   [$0484], sp                                 ; $530b: $08 $84 $04
	add  b                                           ; $530e: $80
	ld   b, b                                        ; $530f: $40
	add  b                                           ; $5310: $80
	add  b                                           ; $5311: $80
	add  b                                           ; $5312: $80
	nop                                              ; $5313: $00
	add  b                                           ; $5314: $80
	ld   a, $80                                      ; $5315: $3e $80
	inc  e                                           ; $5317: $1c
	add  b                                           ; $5318: $80
	rst  $38                                         ; $5319: $ff
	add  b                                           ; $531a: $80
	inc  d                                           ; $531b: $14
	add  b                                           ; $531c: $80
	ccf                                              ; $531d: $3f
	add  b                                           ; $531e: $80
	ld   e, h                                        ; $531f: $5c
	add  b                                           ; $5320: $80
	ld   c, c                                        ; $5321: $49
	add  b                                           ; $5322: $80
	nop                                              ; $5323: $00
	add  b                                           ; $5324: $80
	rrca                                             ; $5325: $0f
	add  b                                           ; $5326: $80
	ld   [$8f80], sp                                 ; $5327: $08 $80 $8f
	add  b                                           ; $532a: $80
	ld   bc, $1f80                                   ; $532b: $01 $80 $1f
	add  d                                           ; $532e: $82
	ld   bc, $0080                                   ; $532f: $01 $80 $00
	add  b                                           ; $5332: $80
	ldh  [$80], a                                    ; $5333: $e0 $80
	ld   hl, $e080                                   ; $5335: $21 $80 $e0
	add  b                                           ; $5338: $80
	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	pop  af                                          ; $533b: $f1
	add  b                                           ; $533c: $80
	ld   bc, $0082                                   ; $533d: $01 $82 $00
	add  b                                           ; $5340: $80
	jr   nz, jr_02d_52c3                             ; $5341: $20 $80

	db   $fc                                         ; $5343: $fc
	add  b                                           ; $5344: $80
	db   $10                                         ; $5345: $10
	add  b                                           ; $5346: $80
	ld   [$1880], sp                                 ; $5347: $08 $80 $18
	add  b                                           ; $534a: $80
	nop                                              ; $534b: $00
	add  b                                           ; $534c: $80
	ldh  a, [$80]                                    ; $534d: $f0 $80
	nop                                              ; $534f: $00
	add  b                                           ; $5350: $80
	jr   jr_02d_52d3                                 ; $5351: $18 $80

	ld   h, $80                                      ; $5353: $26 $80
	rst  $38                                         ; $5355: $ff
	add  d                                           ; $5356: $82
	ld   d, l                                        ; $5357: $55
	add  b                                           ; $5358: $80
	ld   [hl], a                                     ; $5359: $77
	add  b                                           ; $535a: $80
	inc  b                                           ; $535b: $04
	add  b                                           ; $535c: $80
	nop                                              ; $535d: $00
	add  b                                           ; $535e: $80
	ld   bc, $0f80                                   ; $535f: $01 $80 $0f
	add  b                                           ; $5362: $80
	adc  c                                           ; $5363: $89
	add  b                                           ; $5364: $80
	add  hl, bc                                      ; $5365: $09
	add  b                                           ; $5366: $80
	rrca                                             ; $5367: $0f
	add  d                                           ; $5368: $82
	ld   bc, $0082                                   ; $5369: $01 $82 $00
	add  b                                           ; $536c: $80
	db   $e3                                         ; $536d: $e3
	add  b                                           ; $536e: $80
	ld   hl, $2080                                   ; $536f: $21 $80 $20
	add  b                                           ; $5372: $80
	pop  hl                                          ; $5373: $e1
	add  b                                           ; $5374: $80
	inc  bc                                          ; $5375: $03
	add  d                                           ; $5376: $82
	nop                                              ; $5377: $00
	add  b                                           ; $5378: $80
	jr   nz, jr_02d_52fb                             ; $5379: $20 $80

	cp   $80                                         ; $537b: $fe $80
	ld   h, h                                        ; $537d: $64
	add  b                                           ; $537e: $80
	ld   hl, sp-$80                                  ; $537f: $f8 $80
	inc  [hl]                                        ; $5381: $34
	add  b                                           ; $5382: $80
	cp   $80                                         ; $5383: $fe $80
	jr   nz, jr_02d_5309                             ; $5385: $20 $82

	nop                                              ; $5387: $00
	adc  c                                           ; $5388: $89
	ld   bc, $6107                                   ; $5389: $01 $07 $61
	or   b                                           ; $538c: $b0
	ret  nc                                          ; $538d: $d0

	rst  $38                                         ; $538e: $ff
	add  d                                           ; $538f: $82
	cp   [hl]                                        ; $5390: $be
	or   [hl]                                        ; $5391: $b6
	xor  [hl]                                        ; $5392: $ae
	add  b                                           ; $5393: $80
	cp   [hl]                                        ; $5394: $be
	inc  b                                           ; $5395: $04
	and  [hl]                                        ; $5396: $a6
	cp   [hl]                                        ; $5397: $be
	cp   $7e                                         ; $5398: $fe $7e
	ld   b, e                                        ; $539a: $43
	add  b                                           ; $539b: $80
	ccf                                              ; $539c: $3f
	add  b                                           ; $539d: $80
	nop                                              ; $539e: $00
	dec  bc                                          ; $539f: $0b
	cp   $82                                         ; $53a0: $fe $82
	add  e                                           ; $53a2: $83
	add  b                                           ; $53a3: $80
	db   $fd                                         ; $53a4: $fd
	add  l                                           ; $53a5: $85
	cp   $82                                         ; $53a6: $fe $82
	rst  $38                                         ; $53a8: $ff
	ld   sp, hl                                      ; $53a9: $f9
	rst  $38                                         ; $53aa: $ff
	add  d                                           ; $53ab: $82
	add  b                                           ; $53ac: $80
	rst  $38                                         ; $53ad: $ff
	add  d                                           ; $53ae: $82
	nop                                              ; $53af: $00
	inc  b                                           ; $53b0: $04
	ld   hl, sp+$00                                  ; $53b1: $f8 $00
	db   $fc                                         ; $53b3: $fc
	inc  b                                           ; $53b4: $04
	rst  $38                                         ; $53b5: $ff
	add  c                                           ; $53b6: $81
	nop                                              ; $53b7: $00
	ld   bc, $00ff                                   ; $53b8: $01 $ff $00
	add  b                                           ; $53bb: $80
	rst  $38                                         ; $53bc: $ff
	add  [hl]                                        ; $53bd: $86
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	rst  $38                                         ; $53c0: $ff
	add  c                                           ; $53c1: $81
	nop                                              ; $53c2: $00
	ld   bc, $00ff                                   ; $53c3: $01 $ff $00
	add  b                                           ; $53c6: $80
	rst  $38                                         ; $53c7: $ff
	adc  [hl]                                        ; $53c8: $8e
	nop                                              ; $53c9: $00
	ld   b, $3f                                      ; $53ca: $06 $3f
	ld   bc, $0141                                   ; $53cc: $01 $41 $01
	cp   a                                           ; $53cf: $bf
	or   a                                           ; $53d0: $b7
	xor  a                                           ; $53d1: $af
	add  b                                           ; $53d2: $80
	cp   a                                           ; $53d3: $bf
	inc  b                                           ; $53d4: $04
	and  a                                           ; $53d5: $a7
	cp   a                                           ; $53d6: $bf
	cp   l                                           ; $53d7: $bd
	cp   [hl]                                        ; $53d8: $be
	jp   nz, $fc80                                   ; $53d9: $c2 $80 $fc

	nop                                              ; $53dc: $00
	rst  $38                                         ; $53dd: $ff
	add  c                                           ; $53de: $81
	ld   b, b                                        ; $53df: $40
	add  c                                           ; $53e0: $81
	rst  $38                                         ; $53e1: $ff
	ld   [bc], a                                     ; $53e2: $02
	ret  nz                                          ; $53e3: $c0

	rst  $38                                         ; $53e4: $ff
	ld   a, a                                        ; $53e5: $7f
	add  b                                           ; $53e6: $80
	add  b                                           ; $53e7: $80
	add  d                                           ; $53e8: $82
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	rst  $38                                         ; $53eb: $ff
	add  c                                           ; $53ec: $81
	jr   z, jr_02d_53f2                              ; $53ed: $28 $03

	rst  $28                                         ; $53ef: $ef
	add  sp, -$11                                    ; $53f0: $e8 $ef

jr_02d_53f2:
	ccf                                              ; $53f2: $3f
	add  b                                           ; $53f3: $80
	ldh  a, [$84]                                    ; $53f4: $f0 $84
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	rst  $38                                         ; $53f8: $ff
	add  c                                           ; $53f9: $81
	nop                                              ; $53fa: $00
	ld   bc, $00ff                                   ; $53fb: $01 $ff $00
	add  b                                           ; $53fe: $80
	rst  $38                                         ; $53ff: $ff
	add  l                                           ; $5400: $85
	nop                                              ; $5401: $00
	nop                                              ; $5402: $00
	ld   h, b                                        ; $5403: $60
	adc  l                                           ; $5404: $8d
	or   b                                           ; $5405: $b0
	nop                                              ; $5406: $00
	sub  [hl]                                        ; $5407: $96
	adc  l                                           ; $5408: $8d
	xor  e                                           ; $5409: $ab
	nop                                              ; $540a: $00
	db   $ed                                         ; $540b: $ed
	rst  $38                                         ; $540c: $ff
	nop                                              ; $540d: $00
	rst  $38                                         ; $540e: $ff
	nop                                              ; $540f: $00
	rst  $38                                         ; $5410: $ff
	nop                                              ; $5411: $00
	rst  $38                                         ; $5412: $ff
	nop                                              ; $5413: $00
	rst  $38                                         ; $5414: $ff
	nop                                              ; $5415: $00
	rst  $38                                         ; $5416: $ff
	nop                                              ; $5417: $00
	rst  $38                                         ; $5418: $ff
	nop                                              ; $5419: $00
	rst  $38                                         ; $541a: $ff
	nop                                              ; $541b: $00
	rst  $38                                         ; $541c: $ff
	nop                                              ; $541d: $00
	db   $f4                                         ; $541e: $f4
	nop                                              ; $541f: $00
	ld   a, [hl+]                                    ; $5420: $2a
	ld   [bc], a                                     ; $5421: $02
	ld   b, $04                                      ; $5422: $06 $04
	jr   c, @+$40                                    ; $5424: $38 $3e

	inc  e                                           ; $5426: $1c
	rra                                              ; $5427: $1f
	ld   c, $0f                                      ; $5428: $0e $0f
	add  b                                           ; $542a: $80
	ccf                                              ; $542b: $3f
	add  b                                           ; $542c: $80
	ld   e, a                                        ; $542d: $5f
	add  b                                           ; $542e: $80
	rst  $20                                         ; $542f: $e7
	add  b                                           ; $5430: $80
	ld   a, a                                        ; $5431: $7f
	add  b                                           ; $5432: $80
	ei                                               ; $5433: $fb
	rla                                              ; $5434: $17
	db   $eb                                         ; $5435: $eb
	rst  $20                                         ; $5436: $e7
	di                                               ; $5437: $f3
	rst  $28                                         ; $5438: $ef
	push bc                                          ; $5439: $c5
	pop  bc                                          ; $543a: $c1
	ld   b, b                                        ; $543b: $40
	rla                                              ; $543c: $17
	inc  d                                           ; $543d: $14
	ld   a, e                                        ; $543e: $7b
	nop                                              ; $543f: $00
	inc  a                                           ; $5440: $3c
	jr   nz, jr_02d_547a                             ; $5441: $20 $37

	jr   c, jr_02d_5484                              ; $5443: $38 $3f

	nop                                              ; $5445: $00
	ld   [hl], b                                     ; $5446: $70
	add  b                                           ; $5447: $80
	ld   hl, sp-$10                                  ; $5448: $f8 $f0
	ld   a, h                                        ; $544a: $7c
	ld   a, b                                        ; $544b: $78
	cp   $80                                         ; $544c: $fe $80
	ld   hl, sp+$01                                  ; $544e: $f8 $01
	inc  b                                           ; $5450: $04
	rlca                                             ; $5451: $07
	add  b                                           ; $5452: $80
	cp   $80                                         ; $5453: $fe $80
	ld   a, [hl]                                     ; $5455: $7e
	dec  d                                           ; $5456: $15
	ld   l, [hl]                                     ; $5457: $6e
	adc  [hl]                                        ; $5458: $8e
	ld   d, $e6                                      ; $5459: $16 $e6
	ld   b, [hl]                                     ; $545b: $46
	adc  a                                           ; $545c: $8f
	ld   b, $da                                      ; $545d: $06 $da
	ret  nc                                          ; $545f: $d0

	inc  a                                           ; $5460: $3c
	inc  b                                           ; $5461: $04
	db   $fc                                         ; $5462: $fc
	ld   c, $fe                                      ; $5463: $0e $fe
	ld   b, $e6                                      ; $5465: $06 $e6
	nop                                              ; $5467: $00
	ld   [$7f71], sp                                 ; $5468: $08 $71 $7f
	add  hl, sp                                      ; $546b: $39
	ccf                                              ; $546c: $3f
	add  b                                           ; $546d: $80
	rra                                              ; $546e: $1f
	add  b                                           ; $546f: $80
	ccf                                              ; $5470: $3f
	add  b                                           ; $5471: $80
	ld   e, a                                        ; $5472: $5f
	add  b                                           ; $5473: $80
	rst  $20                                         ; $5474: $e7
	add  b                                           ; $5475: $80
	ld   a, a                                        ; $5476: $7f
	add  b                                           ; $5477: $80
	ei                                               ; $5478: $fb
	dec  d                                           ; $5479: $15

jr_02d_547a:
	db   $eb                                         ; $547a: $eb
	db   $e3                                         ; $547b: $e3
	rst  $20                                         ; $547c: $e7
	cp   a                                           ; $547d: $bf
	add  l                                           ; $547e: $85
	sub  c                                           ; $547f: $91
	sub  b                                           ; $5480: $90
	rst  $30                                         ; $5481: $f7
	inc  d                                           ; $5482: $14
	cpl                                              ; $5483: $2f

jr_02d_5484:
	nop                                              ; $5484: $00
	rra                                              ; $5485: $1f
	jr   c, jr_02d_54c7                              ; $5486: $38 $3f

	nop                                              ; $5488: $00
	ld   h, b                                        ; $5489: $60
	add  b                                           ; $548a: $80
	ld   hl, sp-$20                                  ; $548b: $f8 $e0
	db   $fc                                         ; $548d: $fc
	ld   hl, sp-$02                                  ; $548e: $f8 $fe
	add  b                                           ; $5490: $80
	db   $fc                                         ; $5491: $fc
	ld   bc, $f7f4                                   ; $5492: $01 $f4 $f7
	add  b                                           ; $5495: $80
	ld   c, $80                                      ; $5496: $0e $80
	cp   $80                                         ; $5498: $fe $80
	ld   a, [hl]                                     ; $549a: $7e
	inc  de                                          ; $549b: $13
	ld   l, [hl]                                     ; $549c: $6e
	adc  a                                           ; $549d: $8f
	ld   b, $fe                                      ; $549e: $06 $fe
	ld   b, h                                        ; $54a0: $44
	sbc  b                                           ; $54a1: $98
	db   $10                                         ; $54a2: $10
	call c, $dec6                                    ; $54a3: $dc $c6 $de
	ld   c, $fe                                      ; $54a6: $0e $fe
	inc  bc                                          ; $54a8: $03
	rst  $20                                         ; $54a9: $e7
	jr   c, @+$40                                    ; $54aa: $38 $3e

	inc  e                                           ; $54ac: $1c
	rra                                              ; $54ad: $1f
	ld   c, $0f                                      ; $54ae: $0e $0f
	add  b                                           ; $54b0: $80
	ccf                                              ; $54b1: $3f
	add  b                                           ; $54b2: $80
	ld   e, a                                        ; $54b3: $5f

jr_02d_54b4:
	add  b                                           ; $54b4: $80
	rst  $20                                         ; $54b5: $e7
	add  b                                           ; $54b6: $80

jr_02d_54b7:
	ld   a, a                                        ; $54b7: $7f
	add  b                                           ; $54b8: $80
	ei                                               ; $54b9: $fb
	rla                                              ; $54ba: $17
	db   $eb                                         ; $54bb: $eb
	rst  $20                                         ; $54bc: $e7
	di                                               ; $54bd: $f3
	rst  $28                                         ; $54be: $ef
	pop  bc                                          ; $54bf: $c1
	push bc                                          ; $54c0: $c5
	ld   b, b                                        ; $54c1: $40
	rla                                              ; $54c2: $17
	inc  d                                           ; $54c3: $14
	ld   a, e                                        ; $54c4: $7b
	nop                                              ; $54c5: $00

jr_02d_54c6:
	inc  a                                           ; $54c6: $3c

jr_02d_54c7:
	jr   nz, jr_02d_5500                             ; $54c7: $20 $37

	jr   c, jr_02d_550a                              ; $54c9: $38 $3f

	nop                                              ; $54cb: $00
	ld   [hl], b                                     ; $54cc: $70
	add  b                                           ; $54cd: $80
	ld   hl, sp-$10                                  ; $54ce: $f8 $f0
	ld   a, h                                        ; $54d0: $7c
	ld   a, b                                        ; $54d1: $78
	cp   $80                                         ; $54d2: $fe $80
	ld   hl, sp+$01                                  ; $54d4: $f8 $01
	inc  b                                           ; $54d6: $04
	rlca                                             ; $54d7: $07
	add  b                                           ; $54d8: $80
	cp   $80                                         ; $54d9: $fe $80
	ld   a, [hl]                                     ; $54db: $7e

jr_02d_54dc:
	inc  de                                          ; $54dc: $13
	ld   l, [hl]                                     ; $54dd: $6e
	adc  [hl]                                        ; $54de: $8e
	ld   d, $e6                                      ; $54df: $16 $e6
	ld   b, $4f                                      ; $54e1: $06 $4f
	ld   b, $5a                                      ; $54e3: $06 $5a
	ld   d, b                                        ; $54e5: $50
	cp   h                                           ; $54e6: $bc
	inc  b                                           ; $54e7: $04
	db   $fc                                         ; $54e8: $fc

jr_02d_54e9:
	ld   c, $fe                                      ; $54e9: $0e $fe
	ld   b, $e4                                      ; $54eb: $06 $e4
	inc  e                                           ; $54ed: $1c
	rra                                              ; $54ee: $1f
	ld   c, $0f                                      ; $54ef: $0e $0f
	add  b                                           ; $54f1: $80
	rlca                                             ; $54f2: $07
	add  b                                           ; $54f3: $80
	ccf                                              ; $54f4: $3f
	add  b                                           ; $54f5: $80
	ld   e, a                                        ; $54f6: $5f
	add  b                                           ; $54f7: $80
	db   $e3                                         ; $54f8: $e3
	add  b                                           ; $54f9: $80
	ld   a, a                                        ; $54fa: $7f
	dec  de                                          ; $54fb: $1b
	push af                                          ; $54fc: $f5
	push hl                                          ; $54fd: $e5
	db   $ed                                         ; $54fe: $ed
	push af                                          ; $54ff: $f5

jr_02d_5500:
	push hl                                          ; $5500: $e5
	dec  e                                           ; $5501: $1d
	ld   [bc], a                                     ; $5502: $02
	db   $e4                                         ; $5503: $e4
	nop                                              ; $5504: $00
	rla                                              ; $5505: $17
	ld   d, $09                                      ; $5506: $16 $09
	ld   b, b                                        ; $5508: $40
	xor  [hl]                                        ; $5509: $ae

jr_02d_550a:
	nop                                              ; $550a: $00
	ld   l, a                                        ; $550b: $6f
	nop                                              ; $550c: $00
	sbc  a                                           ; $550d: $9f
	nop                                              ; $550e: $00
	ld   [hl], b                                     ; $550f: $70
	nop                                              ; $5510: $00

jr_02d_5511:
	ld   hl, sp+$70                                  ; $5511: $f8 $70
	ld   a, h                                        ; $5513: $7c
	ld   a, b                                        ; $5514: $78
	ld   a, [hl]                                     ; $5515: $7e
	ld   a, b                                        ; $5516: $78

jr_02d_5517:
	ei                                               ; $5517: $fb
	add  b                                           ; $5518: $80
	add  $13                                         ; $5519: $c6 $13
	cp   [hl]                                        ; $551b: $be
	cp   a                                           ; $551c: $bf
	xor  a                                           ; $551d: $af
	and  a                                           ; $551e: $a7
	or   a                                           ; $551f: $b7
	adc  a                                           ; $5520: $8f
	jp   $83fb                                       ; $5521: $c3 $fb $83


	push hl                                          ; $5524: $e5
	nop                                              ; $5525: $00
	db   $ec                                         ; $5526: $ec
	ld   [$00fe], sp                                 ; $5527: $08 $fe $00
	ld   a, h                                        ; $552a: $7c
	ld   b, $ee                                      ; $552b: $06 $ee
	ld   b, $e6                                      ; $552d: $06 $e6
	add  l                                           ; $552f: $85
	nop                                              ; $5530: $00
	add  b                                           ; $5531: $80
	jr   nz, jr_02d_54b4                             ; $5532: $20 $80

	jr   jr_02d_54b7                                 ; $5534: $18 $81

	nop                                              ; $5536: $00
	add  b                                           ; $5537: $80
	inc  b                                           ; $5538: $04
	add  b                                           ; $5539: $80
	inc  d                                           ; $553a: $14
	inc  b                                           ; $553b: $04
	nop                                              ; $553c: $00
	ld   [$292a], sp                                 ; $553d: $08 $2a $29
	dec  hl                                          ; $5540: $2b
	add  b                                           ; $5541: $80
	jr   z, jr_02d_5544                              ; $5542: $28 $00

jr_02d_5544:
	jr   nz, jr_02d_54c6                             ; $5544: $20 $80

	inc  de                                          ; $5546: $13
	add  b                                           ; $5547: $80
	rrca                                             ; $5548: $0f
	add  a                                           ; $5549: $87
	nop                                              ; $554a: $00
	add  b                                           ; $554b: $80

jr_02d_554c:
	inc  b                                           ; $554c: $04
	add  b                                           ; $554d: $80
	ld   hl, sp-$7f                                  ; $554e: $f8 $81
	nop                                              ; $5550: $00
	add  b                                           ; $5551: $80
	add  b                                           ; $5552: $80
	add  b                                           ; $5553: $80
	sub  b                                           ; $5554: $90
	nop                                              ; $5555: $00
	ld   [$a880], sp                                 ; $5556: $08 $80 $a8
	nop                                              ; $5559: $00
	jr   z, jr_02d_54dc                              ; $555a: $28 $80

	ld   hl, $2b01                                   ; $555c: $21 $01 $2b
	dec  bc                                          ; $555f: $0b
	add  b                                           ; $5560: $80
	db   $10                                         ; $5561: $10
	add  b                                           ; $5562: $80
	ldh  [$89], a                                    ; $5563: $e0 $89
	nop                                              ; $5565: $00
	add  b                                           ; $5566: $80
	jr   nz, jr_02d_54e9                             ; $5567: $20 $80

	jr   @-$7d                                       ; $5569: $18 $81

	nop                                              ; $556b: $00
	add  b                                           ; $556c: $80
	inc  b                                           ; $556d: $04
	add  b                                           ; $556e: $80
	inc  d                                           ; $556f: $14
	rlca                                             ; $5570: $07
	db   $10                                         ; $5571: $10
	jr   jr_02d_559e                                 ; $5572: $18 $2a

	add  hl, hl                                      ; $5574: $29
	dec  hl                                          ; $5575: $2b
	jr   z, @+$0a                                    ; $5576: $28 $08

	nop                                              ; $5578: $00
	add  b                                           ; $5579: $80
	rlca                                             ; $557a: $07
	adc  c                                           ; $557b: $89
	nop                                              ; $557c: $00
	add  b                                           ; $557d: $80
	ld   [$f080], sp                                 ; $557e: $08 $80 $f0
	add  c                                           ; $5581: $81
	nop                                              ; $5582: $00
	add  b                                           ; $5583: $80
	add  b                                           ; $5584: $80
	add  b                                           ; $5585: $80
	sub  b                                           ; $5586: $90
	dec  b                                           ; $5587: $05
	add  hl, de                                      ; $5588: $19
	cp   c                                           ; $5589: $b9
	and  e                                           ; $558a: $a3
	inc  hl                                          ; $558b: $23
	ld   a, [hl+]                                    ; $558c: $2a
	ld   a, [bc]                                     ; $558d: $0a
	add  b                                           ; $558e: $80
	jr   nc, jr_02d_5511                             ; $558f: $30 $80

	ldh  [$87], a                                    ; $5591: $e0 $87
	nop                                              ; $5593: $00
	add  b                                           ; $5594: $80
	jr   nz, jr_02d_5517                             ; $5595: $20 $80

	jr   @-$7d                                       ; $5597: $18 $81

	nop                                              ; $5599: $00
	add  b                                           ; $559a: $80
	inc  b                                           ; $559b: $04
	add  b                                           ; $559c: $80
	inc  d                                           ; $559d: $14

jr_02d_559e:
	inc  b                                           ; $559e: $04
	nop                                              ; $559f: $00
	inc  c                                           ; $55a0: $0c
	ld   l, $29                                      ; $55a1: $2e $29
	dec  hl                                          ; $55a3: $2b
	add  b                                           ; $55a4: $80
	jr   z, jr_02d_55a9                              ; $55a5: $28 $02

	jr   nc, jr_02d_55bc                             ; $55a7: $30 $13

jr_02d_55a9:
	inc  bc                                          ; $55a9: $03
	add  b                                           ; $55aa: $80
	rrca                                             ; $55ab: $0f
	add  a                                           ; $55ac: $87
	nop                                              ; $55ad: $00
	add  b                                           ; $55ae: $80
	inc  b                                           ; $55af: $04
	add  b                                           ; $55b0: $80
	ld   hl, sp-$7f                                  ; $55b1: $f8 $81
	nop                                              ; $55b3: $00
	add  b                                           ; $55b4: $80
	add  b                                           ; $55b5: $80
	add  b                                           ; $55b6: $80
	sub  b                                           ; $55b7: $90
	nop                                              ; $55b8: $00

jr_02d_55b9:
	ld   [$e880], sp                                 ; $55b9: $08 $80 $e8

jr_02d_55bc:
	nop                                              ; $55bc: $00
	xor  b                                           ; $55bd: $a8
	add  b                                           ; $55be: $80
	and  c                                           ; $55bf: $a1
	ld   bc, $0bab                                   ; $55c0: $01 $ab $0b
	add  b                                           ; $55c3: $80
	db   $10                                         ; $55c4: $10
	add  b                                           ; $55c5: $80
	ldh  [$87], a                                    ; $55c6: $e0 $87
	nop                                              ; $55c8: $00
	add  b                                           ; $55c9: $80
	jr   nz, jr_02d_554c                             ; $55ca: $20 $80

	inc  e                                           ; $55cc: $1c
	add  c                                           ; $55cd: $81
	nop                                              ; $55ce: $00
	add  b                                           ; $55cf: $80
	ld   a, [bc]                                     ; $55d0: $0a
	add  b                                           ; $55d1: $80
	ld   [bc], a                                     ; $55d2: $02
	inc  b                                           ; $55d3: $04
	ld   [de], a                                     ; $55d4: $12
	ld   e, $0d                                      ; $55d5: $1e $0d
	ld   [$80e9], sp                                 ; $55d7: $08 $e9 $80
	add  sp, $00                                     ; $55da: $e8 $00
	ldh  [$80], a                                    ; $55dc: $e0 $80
	and  c                                           ; $55de: $a1
	add  b                                           ; $55df: $80
	rrca                                             ; $55e0: $0f
	add  b                                           ; $55e1: $80
	ld   h, b                                        ; $55e2: $60
	add  l                                           ; $55e3: $85
	nop                                              ; $55e4: $00
	add  b                                           ; $55e5: $80
	inc  b                                           ; $55e6: $04
	add  b                                           ; $55e7: $80
	jr   c, jr_02d_55ea                              ; $55e8: $38 $00

jr_02d_55ea:
	nop                                              ; $55ea: $00
	add  b                                           ; $55eb: $80
	ld   b, b                                        ; $55ec: $40
	add  b                                           ; $55ed: $80
	ld   d, b                                        ; $55ee: $50
	add  b                                           ; $55ef: $80
	ld   b, b                                        ; $55f0: $40
	rlca                                             ; $55f1: $07
	inc  c                                           ; $55f2: $0c
	ld   a, h                                        ; $55f3: $7c
	ld   [hl], h                                     ; $55f4: $74
	sub  h                                           ; $55f5: $94
	sub  c                                           ; $55f6: $91
	ld   [hl], c                                     ; $55f7: $71
	ld   [hl], l                                     ; $55f8: $75
	dec  b                                           ; $55f9: $05

jr_02d_55fa:
	add  b                                           ; $55fa: $80
	adc  b                                           ; $55fb: $88
	add  b                                           ; $55fc: $80
	ldh  a, [rAUD3LEVEL]                             ; $55fd: $f0 $1c
	nop                                              ; $55ff: $00
	rlca                                             ; $5600: $07
	ld   l, h                                        ; $5601: $6c
	ld   [hl], h                                     ; $5602: $74
	ld   a, e                                        ; $5603: $7b
	ld   e, e                                        ; $5604: $5b
	ld   d, a                                        ; $5605: $57
	ld   b, a                                        ; $5606: $47
	rra                                              ; $5607: $1f
	scf                                              ; $5608: $37
	ccf                                              ; $5609: $3f
	dec  hl                                          ; $560a: $2b
	cpl                                              ; $560b: $2f
	dec  hl                                          ; $560c: $2b
	cpl                                              ; $560d: $2f
	rla                                              ; $560e: $17
	ld   e, a                                        ; $560f: $5f
	ld   a, l                                        ; $5610: $7d
	ld   a, a                                        ; $5611: $7f
	ld   a, c                                        ; $5612: $79
	rra                                              ; $5613: $1f
	inc  de                                          ; $5614: $13
	ld   e, $17                                      ; $5615: $1e $17
	dec  e                                           ; $5617: $1d
	rra                                              ; $5618: $1f
	dec  de                                          ; $5619: $1b
	dec  e                                           ; $561a: $1d
	dec  d                                           ; $561b: $15
	add  b                                           ; $561c: $80
	dec  e                                           ; $561d: $1d
	ld   [de], a                                     ; $561e: $12
	rra                                              ; $561f: $1f
	ld   a, a                                        ; $5620: $7f
	sbc  a                                           ; $5621: $9f
	di                                               ; $5622: $f3
	set  7, e                                        ; $5623: $cb $fb
	rst  JumpTable                                         ; $5625: $df
	pop  hl                                          ; $5626: $e1
	rst  $28                                         ; $5627: $ef
	db   $ec                                         ; $5628: $ec
	or   $f4                                         ; $5629: $f6 $f4
	inc  d                                           ; $562b: $14
	db   $f4                                         ; $562c: $f4
	inc  d                                           ; $562d: $14
	db   $f4                                         ; $562e: $f4
	ldh  a, [$f2]                                    ; $562f: $f0 $f2
	xor  $80                                         ; $5631: $ee $80
	cp   [hl]                                        ; $5633: $be
	nop                                              ; $5634: $00
	jr   c, jr_02d_55b9                              ; $5635: $38 $82

	ld   hl, sp-$7f                                  ; $5637: $f8 $81
	ld   a, b                                        ; $5639: $78
	nop                                              ; $563a: $00
	ld   c, b                                        ; $563b: $48
	add  b                                           ; $563c: $80
	ld   a, b                                        ; $563d: $78
	dec  e                                           ; $563e: $1d
	ld   hl, sp-$02                                  ; $563f: $f8 $fe
	ld   sp, hl                                      ; $5641: $f9
	inc  [hl]                                        ; $5642: $34
	inc  l                                           ; $5643: $2c
	dec  sp                                          ; $5644: $3b
	dec  de                                          ; $5645: $1b
	rla                                              ; $5646: $17
	rlca                                             ; $5647: $07
	rra                                              ; $5648: $1f
	scf                                              ; $5649: $37
	ccf                                              ; $564a: $3f
	dec  hl                                          ; $564b: $2b
	cpl                                              ; $564c: $2f
	dec  hl                                          ; $564d: $2b
	cpl                                              ; $564e: $2f
	rla                                              ; $564f: $17
	ld   e, a                                        ; $5650: $5f
	ld   a, l                                        ; $5651: $7d
	ld   a, a                                        ; $5652: $7f
	ld   a, c                                        ; $5653: $79
	rra                                              ; $5654: $1f
	inc  de                                          ; $5655: $13
	ld   e, $17                                      ; $5656: $1e $17
	dec  e                                           ; $5658: $1d
	rra                                              ; $5659: $1f
	dec  de                                          ; $565a: $1b
	dec  e                                           ; $565b: $1d
	dec  d                                           ; $565c: $15
	add  b                                           ; $565d: $80
	dec  e                                           ; $565e: $1d
	ld   [de], a                                     ; $565f: $12
	rra                                              ; $5660: $1f
	ld   a, a                                        ; $5661: $7f
	sbc  a                                           ; $5662: $9f
	di                                               ; $5663: $f3
	set  7, c                                        ; $5664: $cb $f9
	db   $dd                                         ; $5666: $dd
	ldh  [$ee], a                                    ; $5667: $e0 $ee
	db   $ec                                         ; $5669: $ec
	or   $f4                                         ; $566a: $f6 $f4
	inc  d                                           ; $566c: $14
	db   $f4                                         ; $566d: $f4
	inc  d                                           ; $566e: $14
	db   $f4                                         ; $566f: $f4
	ldh  a, [$f2]                                    ; $5670: $f0 $f2
	xor  $80                                         ; $5672: $ee $80
	cp   [hl]                                        ; $5674: $be
	nop                                              ; $5675: $00
	jr   c, jr_02d_55fa                              ; $5676: $38 $82

	ld   hl, sp-$7f                                  ; $5678: $f8 $81
	ld   a, b                                        ; $567a: $78
	nop                                              ; $567b: $00
	ld   c, b                                        ; $567c: $48
	add  b                                           ; $567d: $80
	ld   a, b                                        ; $567e: $78
	add  hl, bc                                      ; $567f: $09
	ld   hl, sp-$02                                  ; $5680: $f8 $fe
	reti                                             ; $5682: $d9


	ld   e, [hl]                                     ; $5683: $5e
	ld   h, d                                        ; $5684: $62
	db   $fd                                         ; $5685: $fd
	ld   sp, hl                                      ; $5686: $f9
	cp   e                                           ; $5687: $bb
	xor  e                                           ; $5688: $ab
	rla                                              ; $5689: $17
	add  b                                           ; $568a: $80
	rra                                              ; $568b: $1f
	ld   de, $0f19                                   ; $568c: $11 $19 $0f
	add  hl, bc                                      ; $568f: $09
	rrca                                             ; $5690: $0f
	rlca                                             ; $5691: $07
	rra                                              ; $5692: $1f
	ld   e, $1f                                      ; $5693: $1e $1f
	inc  e                                           ; $5695: $1c
	rra                                              ; $5696: $1f
	add  hl, de                                      ; $5697: $19
	rra                                              ; $5698: $1f
	inc  de                                          ; $5699: $13
	ld   a, $27                                      ; $569a: $3e $27
	dec  a                                           ; $569c: $3d
	ld   a, $22                                      ; $569d: $3e $22
	add  b                                           ; $569f: $80
	inc  a                                           ; $56a0: $3c
	db   $10                                         ; $56a1: $10
	ccf                                              ; $56a2: $3f
	rst  $38                                         ; $56a3: $ff
	rra                                              ; $56a4: $1f
	ld   [hl], e                                     ; $56a5: $73
	ld   c, e                                        ; $56a6: $4b
	ei                                               ; $56a7: $fb
	db   $dd                                         ; $56a8: $dd
	ld   sp, hl                                      ; $56a9: $f9
	rst  $30                                         ; $56aa: $f7
	cp   $fc                                         ; $56ab: $fe $fc
	db   $fd                                         ; $56ad: $fd
	add  l                                           ; $56ae: $85
	push af                                          ; $56af: $f5
	add  a                                           ; $56b0: $87
	rst  $30                                         ; $56b1: $f7
	rst  $38                                         ; $56b2: $ff
	add  b                                           ; $56b3: $80
	ld   hl, sp-$7f                                  ; $56b4: $f8 $81
	cp   b                                           ; $56b6: $b8
	ld   bc, $58f8                                   ; $56b7: $01 $f8 $58
	add  d                                           ; $56ba: $82
	ret  c                                           ; $56bb: $d8

	ld   bc, $a8b8                                   ; $56bc: $01 $b8 $a8
	add  b                                           ; $56bf: $80
	cp   b                                           ; $56c0: $b8
	nop                                              ; $56c1: $00
	ld   hl, sp-$80                                  ; $56c2: $f8 $80
	db   $fc                                         ; $56c4: $fc
	add  h                                           ; $56c5: $84
	nop                                              ; $56c6: $00
	add  [hl]                                        ; $56c7: $86
	ld   bc, $00af                                   ; $56c8: $01 $af $00
	ld   [$000e], sp                                 ; $56cb: $08 $0e $00
	add  hl, bc                                      ; $56ce: $09
	nop                                              ; $56cf: $00
	jr   jr_02d_56d2                                 ; $56d0: $18 $00

jr_02d_56d2:
	jr   nz, jr_02d_56d4                             ; $56d2: $20 $00

jr_02d_56d4:
	ld   b, b                                        ; $56d4: $40
	add  b                                           ; $56d5: $80
	db   $10                                         ; $56d6: $10
	add  b                                           ; $56d7: $80
	inc  c                                           ; $56d8: $0c
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	add  b                                           ; $56db: $80
	inc  b                                           ; $56dc: $04
	add  b                                           ; $56dd: $80
	inc  c                                           ; $56de: $0c
	add  b                                           ; $56df: $80
	nop                                              ; $56e0: $00
	inc  d                                           ; $56e1: $14
	ld   hl, $f9a9                                   ; $56e2: $21 $a9 $f9
	db   $fd                                         ; $56e5: $fd
	db   $dd                                         ; $56e6: $dd
	add  hl, de                                      ; $56e7: $19
	daa                                              ; $56e8: $27
	rrca                                             ; $56e9: $0f
	rla                                              ; $56ea: $17
	rlca                                             ; $56eb: $07
	stop                                             ; $56ec: $10 $00
	rra                                              ; $56ee: $1f
	nop                                              ; $56ef: $00
	ld   [hl], b                                     ; $56f0: $70
	nop                                              ; $56f1: $00
	adc  b                                           ; $56f2: $88
	nop                                              ; $56f3: $00
	inc  b                                           ; $56f4: $04
	nop                                              ; $56f5: $00
	ld   [bc], a                                     ; $56f6: $02
	add  b                                           ; $56f7: $80
	ld   [$7080], sp                                 ; $56f8: $08 $80 $70
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	add  b                                           ; $56fd: $80
	add  b                                           ; $56fe: $80
	add  b                                           ; $56ff: $80
	sub  b                                           ; $5700: $90
	add  b                                           ; $5701: $80
	add  b                                           ; $5702: $80
	add  hl, bc                                      ; $5703: $09
	add  h                                           ; $5704: $84
	sub  l                                           ; $5705: $95
	sbc  a                                           ; $5706: $9f
	rst  JumpTable                                         ; $5707: $df
	db   $db                                         ; $5708: $db
	sbc  b                                           ; $5709: $98
	db   $e4                                         ; $570a: $e4
	ldh  a, [$e8]                                    ; $570b: $f0 $e8
	ldh  [$80], a                                    ; $570d: $e0 $80
	nop                                              ; $570f: $00
	ld   b, $fc                                      ; $5710: $06 $fc
	nop                                              ; $5712: $00
	ld   c, e                                        ; $5713: $4b
	nop                                              ; $5714: $00

jr_02d_5715:
	jr   c, jr_02d_5717                              ; $5715: $38 $00

jr_02d_5717:
	ld   b, b                                        ; $5717: $40
	add  c                                           ; $5718: $81
	nop                                              ; $5719: $00
	ld   [bc], a                                     ; $571a: $02
	ld   b, b                                        ; $571b: $40
	nop                                              ; $571c: $00
	add  b                                           ; $571d: $80
	add  c                                           ; $571e: $81
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	add  b                                           ; $5721: $80
	add  c                                           ; $5722: $81
	nop                                              ; $5723: $00
	db   $10                                         ; $5724: $10
	adc  b                                           ; $5725: $88
	inc  c                                           ; $5726: $0c
	inc  b                                           ; $5727: $04
	ld   a, [bc]                                     ; $5728: $0a
	jp   z, $2a0a                                    ; $5729: $ca $0a $2a

	nop                                              ; $572c: $00
	stop                                             ; $572d: $10 $00
	stop                                             ; $572f: $10 $00
	rrca                                             ; $5731: $0f
	nop                                              ; $5732: $00
	ld   h, d                                        ; $5733: $62
	nop                                              ; $5734: $00
	adc  [hl]                                        ; $5735: $8e
	add  c                                           ; $5736: $81
	nop                                              ; $5737: $00
	ld   [bc], a                                     ; $5738: $02
	inc  bc                                          ; $5739: $03
	nop                                              ; $573a: $00
	ld   bc, $0087                                   ; $573b: $01 $87 $00
	ld   [$3011], sp                                 ; $573e: $08 $11 $30
	jr   nz, jr_02d_5793                             ; $5741: $20 $50

	ld   d, e                                        ; $5743: $53
	ld   d, b                                        ; $5744: $50
	ld   d, h                                        ; $5745: $54
	nop                                              ; $5746: $00
	ld   [$0081], sp                                 ; $5747: $08 $81 $00
	dec  c                                           ; $574a: $0d
	xor  $00                                         ; $574b: $ee $00
	sub  c                                           ; $574d: $91
	nop                                              ; $574e: $00
	or   b                                           ; $574f: $b0
	nop                                              ; $5750: $00
	ret  nz                                          ; $5751: $c0

	nop                                              ; $5752: $00
	ret  nz                                          ; $5753: $c0

	nop                                              ; $5754: $00
	ld   b, b                                        ; $5755: $40
	nop                                              ; $5756: $00
	add  b                                           ; $5757: $80
	nop                                              ; $5758: $00
	add  b                                           ; $5759: $80
	ld   [de], a                                     ; $575a: $12
	add  b                                           ; $575b: $80
	ld   h, $01                                      ; $575c: $26 $01
	xor  [hl]                                        ; $575e: $ae
	ld   l, $80                                      ; $575f: $2e $80
	ld   sp, $2f80                                   ; $5761: $31 $80 $2f
	add  b                                           ; $5764: $80
	ccf                                              ; $5765: $3f
	inc  bc                                          ; $5766: $03
	ld   e, a                                        ; $5767: $5f
	rra                                              ; $5768: $1f
	cpl                                              ; $5769: $2f
	rrca                                             ; $576a: $0f
	add  b                                           ; $576b: $80
	nop                                              ; $576c: $00
	inc  c                                           ; $576d: $0c
	rra                                              ; $576e: $1f
	nop                                              ; $576f: $00
	ldh  [c], a                                      ; $5770: $e2
	nop                                              ; $5771: $00
	ld   [de], a                                     ; $5772: $12
	nop                                              ; $5773: $00
	inc  c                                           ; $5774: $0c
	nop                                              ; $5775: $00
	ld   [bc], a                                     ; $5776: $02
	nop                                              ; $5777: $00
	ld   bc, $0100                                   ; $5778: $01 $00 $01
	add  e                                           ; $577b: $83
	nop                                              ; $577c: $00
	rlca                                             ; $577d: $07
	add  d                                           ; $577e: $82
	add  b                                           ; $577f: $80
	ld   [bc], a                                     ; $5780: $02
	nop                                              ; $5781: $00
	ld   b, d                                        ; $5782: $42
	ld   b, b                                        ; $5783: $40
	call nz, $80c0                                   ; $5784: $c4 $c0 $80
	add  b                                           ; $5787: $80
	ld   a, [bc]                                     ; $5788: $0a
	adc  c                                           ; $5789: $89
	add  b                                           ; $578a: $80
	add  hl, bc                                      ; $578b: $09
	nop                                              ; $578c: $00
	ld   hl, sp+$00                                  ; $578d: $f8 $00
	rlca                                             ; $578f: $07
	nop                                              ; $5790: $00
	jr   jr_02d_5793                                 ; $5791: $18 $00

jr_02d_5793:
	jr   nz, jr_02d_5715                             ; $5793: $20 $80

	nop                                              ; $5795: $00
	ld   bc, $5010                                   ; $5796: $01 $10 $50
	add  b                                           ; $5799: $80
	rrca                                             ; $579a: $0f
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	add  b                                           ; $579d: $80
	ld   [bc], a                                     ; $579e: $02
	add  c                                           ; $579f: $81
	nop                                              ; $57a0: $00
	inc  de                                          ; $57a1: $13
	rlca                                             ; $57a2: $07
	ld   d, a                                        ; $57a3: $57
	ld   d, h                                        ; $57a4: $54
	ld   a, h                                        ; $57a5: $7c
	ld   a, [hl]                                     ; $57a6: $7e
	ld   c, d                                        ; $57a7: $4a
	inc  c                                           ; $57a8: $0c
	cpl                                              ; $57a9: $2f
	rrca                                             ; $57aa: $0f
	inc  de                                          ; $57ab: $13
	inc  bc                                          ; $57ac: $03
	ld   [$3f00], sp                                 ; $57ad: $08 $00 $3f
	nop                                              ; $57b0: $00
	ld   c, b                                        ; $57b1: $48
	nop                                              ; $57b2: $00
	adc  b                                           ; $57b3: $88
	nop                                              ; $57b4: $00
	inc  b                                           ; $57b5: $04
	add  b                                           ; $57b6: $80
	nop                                              ; $57b7: $00
	ld   bc, $0a08                                   ; $57b8: $01 $08 $0a
	add  b                                           ; $57bb: $80
	stop                                             ; $57bc: $10 $00
	nop                                              ; $57be: $00
	add  b                                           ; $57bf: $80
	ld   b, b                                        ; $57c0: $40
	add  b                                           ; $57c1: $80
	ld   c, b                                        ; $57c2: $48
	rlca                                             ; $57c3: $07
	ld   b, b                                        ; $57c4: $40
	ld   [hl], b                                     ; $57c5: $70
	ldh  a, [$d0]                                    ; $57c6: $f0 $d0
	jp   c, $c3d8                                    ; $57c8: $da $d8 $c3

	sbc  $80                                         ; $57cb: $de $80
	xor  $11                                         ; $57cd: $ee $11
	ldh  [c], a                                      ; $57cf: $e2
	ldh  [rTMA], a                                   ; $57d0: $e0 $06
	ld   [bc], a                                     ; $57d2: $02
	ret  z                                           ; $57d3: $c8

	ld   [de], a                                     ; $57d4: $12
	ld   e, a                                        ; $57d5: $5f
	inc  l                                           ; $57d6: $2c
	ld   c, l                                        ; $57d7: $4d
	dec  c                                           ; $57d8: $0d
	pop  hl                                          ; $57d9: $e1
	nop                                              ; $57da: $00
	add  [hl]                                        ; $57db: $86
	scf                                              ; $57dc: $37
	ld   a, a                                        ; $57dd: $7f
	rrca                                             ; $57de: $0f
	ld   l, $0e                                      ; $57df: $2e $0e
	add  d                                           ; $57e1: $82
	nop                                              ; $57e2: $00
	ld   [bc], a                                     ; $57e3: $02
	ld   bc, $1000                                   ; $57e4: $01 $00 $10
	add  l                                           ; $57e7: $85
	nop                                              ; $57e8: $00
	inc  c                                           ; $57e9: $0c
	jr   jr_02d_57fa                                 ; $57ea: $18 $0e

	ld   h, [hl]                                     ; $57ec: $66
	nop                                              ; $57ed: $00
	add  a                                           ; $57ee: $87
	ld   h, b                                        ; $57ef: $60
	db   $e4                                         ; $57f0: $e4
	ld   [$8c8a], sp                                 ; $57f1: $08 $8a $8c
	db   $ec                                         ; $57f4: $ec
	ld   l, h                                        ; $57f5: $6c
	inc  c                                           ; $57f6: $0c
	add  b                                           ; $57f7: $80
	db   $e4                                         ; $57f8: $e4
	add  hl, bc                                      ; $57f9: $09

jr_02d_57fa:
	adc  h                                           ; $57fa: $8c
	ld   l, $28                                      ; $57fb: $2e $28
	inc  c                                           ; $57fd: $0c
	nop                                              ; $57fe: $00
	ld   h, b                                        ; $57ff: $60
	nop                                              ; $5800: $00
	ldh  [rP1], a                                    ; $5801: $e0 $00
	ld   [$0085], sp                                 ; $5803: $08 $85 $00
	ld   de, $7018                                   ; $5806: $11 $18 $70
	ld   h, [hl]                                     ; $5809: $66
	nop                                              ; $580a: $00
	pop  af                                          ; $580b: $f1
	ld   [bc], a                                     ; $580c: $02
	ld   b, e                                        ; $580d: $43
	nop                                              ; $580e: $00
	ld   a, h                                        ; $580f: $7c
	inc  c                                           ; $5810: $0c
	ld   b, l                                        ; $5811: $45
	dec  h                                           ; $5812: $25
	jr   nz, jr_02d_5845                             ; $5813: $20 $30

	ld   a, a                                        ; $5815: $7f
	rrca                                             ; $5816: $0f
	ld   l, $0e                                      ; $5817: $2e $0e
	add  d                                           ; $5819: $82
	nop                                              ; $581a: $00
	ld   [bc], a                                     ; $581b: $02
	ld   bc, $1000                                   ; $581c: $01 $00 $10
	add  l                                           ; $581f: $85
	nop                                              ; $5820: $00
	add  hl, bc                                      ; $5821: $09
	jr   jr_02d_5832                                 ; $5822: $18 $0e

	ld   h, [hl]                                     ; $5824: $66
	nop                                              ; $5825: $00
	add  a                                           ; $5826: $87
	ld   h, b                                        ; $5827: $60
	db   $e4                                         ; $5828: $e4
	ld   [$0c0a], sp                                 ; $5829: $08 $0a $0c
	add  b                                           ; $582c: $80
	db   $ec                                         ; $582d: $ec
	nop                                              ; $582e: $00
	adc  h                                           ; $582f: $8c
	add  b                                           ; $5830: $80
	db   $e4                                         ; $5831: $e4

jr_02d_5832:
	add  hl, bc                                      ; $5832: $09
	adc  h                                           ; $5833: $8c
	ld   l, $28                                      ; $5834: $2e $28
	inc  c                                           ; $5836: $0c
	nop                                              ; $5837: $00
	ld   h, b                                        ; $5838: $60
	nop                                              ; $5839: $00
	ldh  [rP1], a                                    ; $583a: $e0 $00
	ld   [$0085], sp                                 ; $583c: $08 $85 $00
	ld   a, [bc]                                     ; $583f: $0a
	jr   @+$72                                       ; $5840: $18 $70

	ld   h, [hl]                                     ; $5842: $66
	nop                                              ; $5843: $00
	push af                                          ; $5844: $f5

jr_02d_5845:
	ld   [bc], a                                     ; $5845: $02
	ld   [de], a                                     ; $5846: $12
	ld   [$102d], sp                                 ; $5847: $08 $2d $10
	ld   d, h                                        ; $584a: $54
	add  c                                           ; $584b: $81
	inc  [hl]                                        ; $584c: $34
	ld   b, $70                                      ; $584d: $06 $70
	nop                                              ; $584f: $00
	dec  l                                           ; $5850: $2d
	add  hl, bc                                      ; $5851: $09
	ld   bc, $0400                                   ; $5852: $01 $00 $04
	add  c                                           ; $5855: $81
	nop                                              ; $5856: $00
	nop                                              ; $5857: $00
	db   $10                                         ; $5858: $10
	add  l                                           ; $5859: $85
	nop                                              ; $585a: $00
	ld   b, $18                                      ; $585b: $06 $18
	ld   c, $66                                      ; $585d: $0e $66
	nop                                              ; $585f: $00
	adc  d                                           ; $5860: $8a
	ld   h, d                                        ; $5861: $62
	ld   l, b                                        ; $5862: $68
	add  b                                           ; $5863: $80
	nop                                              ; $5864: $00
	dec  b                                           ; $5865: $05
	ld   c, $6f                                      ; $5866: $0e $6f
	ld   l, h                                        ; $5868: $6c
	ld   a, [hl]                                     ; $5869: $7e
	ld   [hl], b                                     ; $586a: $70
	ld   [hl], h                                     ; $586b: $74
	add  c                                           ; $586c: $81
	ld   [hl], b                                     ; $586d: $70
	add  h                                           ; $586e: $84
	nop                                              ; $586f: $00
	nop                                              ; $5870: $00
	ld   [$0085], sp                                 ; $5871: $08 $85 $00
	inc  b                                           ; $5874: $04
	jr   jr_02d_58e7                                 ; $5875: $18 $70

	ld   h, [hl]                                     ; $5877: $66
	nop                                              ; $5878: $00
	cp   $bf                                         ; $5879: $fe $bf
	nop                                              ; $587b: $00
	ld   [bc], a                                     ; $587c: $02
	ld   bc, $0100                                   ; $587d: $01 $00 $01
	add  b                                           ; $5880: $80
	ldh  [$84], a                                    ; $5881: $e0 $84
	nop                                              ; $5883: $00
	add  h                                           ; $5884: $84
	ld   bc, $008d                                   ; $5885: $01 $8d $00
	ld   [bc], a                                     ; $5888: $02
	add  b                                           ; $5889: $80
	nop                                              ; $588a: $00
	add  b                                           ; $588b: $80
	add  [hl]                                        ; $588c: $86
	nop                                              ; $588d: $00
	add  d                                           ; $588e: $82
	add  b                                           ; $588f: $80
	add  b                                           ; $5890: $80
	ldh  [$8c], a                                    ; $5891: $e0 $8c
	nop                                              ; $5893: $00
	ld   bc, $6160                                   ; $5894: $01 $60 $61
	add  b                                           ; $5897: $80
	jr   nc, jr_02d_589b                             ; $5898: $30 $01

	nop                                              ; $589a: $00

jr_02d_589b:
	ld   bc, $0080                                   ; $589b: $01 $80 $00
	add  b                                           ; $589e: $80
	ld   bc, $0080                                   ; $589f: $01 $80 $00
	add  h                                           ; $58a2: $84
	ld   bc, $008d                                   ; $58a3: $01 $8d $00
	nop                                              ; $58a6: $00
	add  b                                           ; $58a7: $80
	add  c                                           ; $58a8: $81
	nop                                              ; $58a9: $00
	nop                                              ; $58aa: $00
	add  b                                           ; $58ab: $80
	add  h                                           ; $58ac: $84
	nop                                              ; $58ad: $00
	add  d                                           ; $58ae: $82
	add  b                                           ; $58af: $80
	add  b                                           ; $58b0: $80
	ldh  [$9c], a                                    ; $58b1: $e0 $9c
	nop                                              ; $58b3: $00
	add  c                                           ; $58b4: $81
	inc  b                                           ; $58b5: $04
	nop                                              ; $58b6: $00
	dec  b                                           ; $58b7: $05
	add  l                                           ; $58b8: $85
	nop                                              ; $58b9: $00
	nop                                              ; $58ba: $00
	ld   bc, $0482                                   ; $58bb: $01 $82 $04
	adc  c                                           ; $58be: $89
	nop                                              ; $58bf: $00
	add  b                                           ; $58c0: $80
	inc  c                                           ; $58c1: $0c
	add  d                                           ; $58c2: $82
	ld   [$00ac], sp                                 ; $58c3: $08 $ac $00
	add  b                                           ; $58c6: $80
	inc  bc                                          ; $58c7: $03
	add  h                                           ; $58c8: $84
	rlca                                             ; $58c9: $07
	add  d                                           ; $58ca: $82
	inc  bc                                          ; $58cb: $03
	rst  $38                                         ; $58cc: $ff
	nop                                              ; $58cd: $00
	pop  af                                          ; $58ce: $f1
	nop                                              ; $58cf: $00
	nop                                              ; $58d0: $00
	cp   $83                                         ; $58d1: $fe $83
	rst  $38                                         ; $58d3: $ff
	nop                                              ; $58d4: $00
	db   $fd                                         ; $58d5: $fd
	add  b                                           ; $58d6: $80
	rst  $38                                         ; $58d7: $ff
	dec  b                                           ; $58d8: $05
	cp   $fa                                         ; $58d9: $fe $fa
	cp   $f6                                         ; $58db: $fe $f6
	cp   $0e                                         ; $58dd: $fe $0e
	add  b                                           ; $58df: $80
	ld   a, h                                        ; $58e0: $7c
	and  b                                           ; $58e1: $a0
	nop                                              ; $58e2: $00
	add  b                                           ; $58e3: $80
	ld   [$0680], sp                                 ; $58e4: $08 $80 $06

jr_02d_58e7:
	add  b                                           ; $58e7: $80
	rlca                                             ; $58e8: $07
	add  b                                           ; $58e9: $80
	inc  bc                                          ; $58ea: $03
	add  h                                           ; $58eb: $84
	ld   bc, $008b                                   ; $58ec: $01 $8b $00
	ld   [de], a                                     ; $58ef: $12
	ld   b, b                                        ; $58f0: $40
	ld   b, c                                        ; $58f1: $41
	ld   hl, $5161                                   ; $58f2: $21 $61 $51
	ld   [hl], c                                     ; $58f5: $71
	ld   c, b                                        ; $58f6: $48
	ld   a, c                                        ; $58f7: $79
	ld   c, l                                        ; $58f8: $4d
	ld   a, l                                        ; $58f9: $7d
	ld   c, a                                        ; $58fa: $4f
	rst  $38                                         ; $58fb: $ff
	rst  ToBoot                                         ; $58fc: $c7
	rst  $38                                         ; $58fd: $ff
	db   $e3                                         ; $58fe: $e3
	rst  $38                                         ; $58ff: $ff
	di                                               ; $5900: $f3
	rst  $38                                         ; $5901: $ff
	ld   hl, sp-$77                                  ; $5902: $f8 $89
	nop                                              ; $5904: $00
	add  b                                           ; $5905: $80
	ld   [bc], a                                     ; $5906: $02
	add  c                                           ; $5907: $81
	ld   b, $00                                      ; $5908: $06 $00
	add  [hl]                                        ; $590a: $86
	add  b                                           ; $590b: $80
	adc  $01                                         ; $590c: $ce $01
	xor  $ef                                         ; $590e: $ee $ef
	add  b                                           ; $5910: $80
	rst  $38                                         ; $5911: $ff
	rlca                                             ; $5912: $07
	db   $fc                                         ; $5913: $fc
	rst  $38                                         ; $5914: $ff
	ld   a, a                                        ; $5915: $7f
	rst  $38                                         ; $5916: $ff
	ld   a, c                                        ; $5917: $79
	rst  $38                                         ; $5918: $ff
	ld   a, e                                        ; $5919: $7b
	rst  $38                                         ; $591a: $ff
	adc  d                                           ; $591b: $8a
	nop                                              ; $591c: $00
	add  b                                           ; $591d: $80
	ld   [$0081], sp                                 ; $591e: $08 $81 $00
	jr   jr_02d_5933                                 ; $5921: $18 $10

	nop                                              ; $5923: $00
	jr   nc, jr_02d_5926                             ; $5924: $30 $00

jr_02d_5926:
	ld   h, b                                        ; $5926: $60
	jr   nz, @-$1e                                   ; $5927: $20 $e0

	ld   h, b                                        ; $5929: $60
	ldh  [$c1], a                                    ; $592a: $e0 $c1
	jp   $cec0                                       ; $592c: $c3 $c0 $ce


	nop                                              ; $592f: $00
	db   $fc                                         ; $5930: $fc
	ldh  a, [rP1]                                    ; $5931: $f0 $00

jr_02d_5933:
	ld   [$020e], sp                                 ; $5933: $08 $0e $02
	rlca                                             ; $5936: $07
	ld   bc, $0003                                   ; $5937: $01 $03 $00
	ld   bc, $0094                                   ; $593a: $01 $94 $00
	rla                                              ; $593d: $17
	adc  e                                           ; $593e: $8b
	rst  $38                                         ; $593f: $ff
	or   e                                           ; $5940: $b3
	rst  $38                                         ; $5941: $ff
	db   $db                                         ; $5942: $db
	rst  $38                                         ; $5943: $ff
	ld   a, c                                        ; $5944: $79
	rst  $38                                         ; $5945: $ff
	jr   z, @+$01                                    ; $5946: $28 $ff

	sbc  h                                           ; $5948: $9c
	rst  $38                                         ; $5949: $ff
	ld   b, h                                        ; $594a: $44
	ld   a, a                                        ; $594b: $7f
	jr   nz, jr_02d_598d                             ; $594c: $20 $3f

	db   $10                                         ; $594e: $10
	rra                                              ; $594f: $1f
	ld   [$040f], sp                                 ; $5950: $08 $0f $04
	rlca                                             ; $5953: $07
	ld   [bc], a                                     ; $5954: $02
	inc  bc                                          ; $5955: $03
	add  b                                           ; $5956: $80
	ld   bc, $0084                                   ; $5957: $01 $84 $00
	inc  d                                           ; $595a: $14
	ei                                               ; $595b: $fb
	rst  $38                                         ; $595c: $ff
	ldh  a, [c]                                      ; $595d: $f2
	rst  $38                                         ; $595e: $ff
	push af                                          ; $595f: $f5
	rst  $38                                         ; $5960: $ff
	or   $ff                                         ; $5961: $f6 $ff
	pop  hl                                          ; $5963: $e1
	rst  $38                                         ; $5964: $ff
	db   $e3                                         ; $5965: $e3
	rst  $38                                         ; $5966: $ff
	rst  $28                                         ; $5967: $ef
	rst  $38                                         ; $5968: $ff
	or   $fe                                         ; $5969: $f6 $fe
	cp   h                                           ; $596b: $bc
	db   $fc                                         ; $596c: $fc
	ld   [$a0f8], sp                                 ; $596d: $08 $f8 $a0
	add  b                                           ; $5970: $80
	ldh  a, [$80]                                    ; $5971: $f0 $80
	ldh  [rSC], a                                    ; $5973: $e0 $02
	ret  nz                                          ; $5975: $c0

	ld   b, b                                        ; $5976: $40
	add  b                                           ; $5977: $80
	add  d                                           ; $5978: $82
	nop                                              ; $5979: $00
	dec  b                                           ; $597a: $05
	inc  e                                           ; $597b: $1c
	db   $fc                                         ; $597c: $fc
	sbc  b                                           ; $597d: $98
	ld   hl, sp+$70                                  ; $597e: $f8 $70
	ldh  a, [$80]                                    ; $5980: $f0 $80
	ldh  [$80], a                                    ; $5982: $e0 $80
	ret  nz                                          ; $5984: $c0

	add  b                                           ; $5985: $80
	add  b                                           ; $5986: $80
	sbc  h                                           ; $5987: $9c
	nop                                              ; $5988: $00
	add  b                                           ; $5989: $80
	ld   bc, $0380                                   ; $598a: $01 $80 $03

jr_02d_598d:
	inc  b                                           ; $598d: $04
	nop                                              ; $598e: $00
	inc  bc                                          ; $598f: $03
	dec  c                                           ; $5990: $0d
	rrca                                             ; $5991: $0f
	dec  e                                           ; $5992: $1d
	add  b                                           ; $5993: $80
	rra                                              ; $5994: $1f
	inc  bc                                          ; $5995: $03
	ccf                                              ; $5996: $3f
	ld   a, [hl-]                                    ; $5997: $3a
	ccf                                              ; $5998: $3f
	add  hl, sp                                      ; $5999: $39
	add  c                                           ; $599a: $81
	ld   a, a                                        ; $599b: $7f
	inc  b                                           ; $599c: $04
	ld   l, a                                        ; $599d: $6f
	ld   a, a                                        ; $599e: $7f
	ld   c, a                                        ; $599f: $4f
	rst  $38                                         ; $59a0: $ff
	ret  nz                                          ; $59a1: $c0

	add  l                                           ; $59a2: $85
	nop                                              ; $59a3: $00
	db   $10                                         ; $59a4: $10
	ret  nz                                          ; $59a5: $c0

	ld   hl, sp-$35                                  ; $59a6: $f8 $cb
	rst  $38                                         ; $59a8: $ff
	rst  $30                                         ; $59a9: $f7
	rst  $38                                         ; $59aa: $ff
	ld   sp, hl                                      ; $59ab: $f9
	rst  $38                                         ; $59ac: $ff
	ld   a, l                                        ; $59ad: $7d
	rst  $38                                         ; $59ae: $ff
	adc  a                                           ; $59af: $8f
	rst  $38                                         ; $59b0: $ff
	ld   [hl], a                                     ; $59b1: $77
	rst  $38                                         ; $59b2: $ff
	adc  d                                           ; $59b3: $8a
	rst  $38                                         ; $59b4: $ff
	push af                                          ; $59b5: $f5
	add  e                                           ; $59b6: $83
	rst  $38                                         ; $59b7: $ff
	ld   [bc], a                                     ; $59b8: $02
	rst  $30                                         ; $59b9: $f7
	rst  $38                                         ; $59ba: $ff
	rrca                                             ; $59bb: $0f
	add  [hl]                                        ; $59bc: $86
	nop                                              ; $59bd: $00
	add  b                                           ; $59be: $80
	ld   sp, $7b09                                   ; $59bf: $31 $09 $7b
	ei                                               ; $59c2: $fb
	rst  $38                                         ; $59c3: $ff
	cp   c                                           ; $59c4: $b9
	rst  $38                                         ; $59c5: $ff
	or   [hl]                                        ; $59c6: $b6
	rst  $38                                         ; $59c7: $ff
	rra                                              ; $59c8: $1f
	rst  $38                                         ; $59c9: $ff
	ld   l, a                                        ; $59ca: $6f
	add  c                                           ; $59cb: $81
	rst  $38                                         ; $59cc: $ff
	rlca                                             ; $59cd: $07
	rrca                                             ; $59ce: $0f
	rst  $38                                         ; $59cf: $ff
	or   $ff                                         ; $59d0: $f6 $ff
	adc  [hl]                                        ; $59d2: $8e
	rst  $38                                         ; $59d3: $ff
	ld   [hl], a                                     ; $59d4: $77
	rst  $38                                         ; $59d5: $ff
	add  a                                           ; $59d6: $87
	nop                                              ; $59d7: $00
	add  b                                           ; $59d8: $80
	add  b                                           ; $59d9: $80
	rla                                              ; $59da: $17
	ldh  [rAUD4LEN], a                               ; $59db: $e0 $20

jr_02d_59dd:
	ldh  a, [$d0]                                    ; $59dd: $f0 $d0
	ld   hl, sp-$28                                  ; $59df: $f8 $d8
	ld   hl, sp-$48                                  ; $59e1: $f8 $b8
	ld   hl, sp+$08                                  ; $59e3: $f8 $08
	cp   $6e                                         ; $59e5: $fe $6e
	rst  $38                                         ; $59e7: $ff
	rra                                              ; $59e8: $1f
	rst  $38                                         ; $59e9: $ff
	rra                                              ; $59ea: $1f
	rst  $38                                         ; $59eb: $ff
	rst  $28                                         ; $59ec: $ef
	cp   $f6                                         ; $59ed: $fe $f6
	cp   $79                                         ; $59ef: $fe $79
	rst  $38                                         ; $59f1: $ff
	ld   a, a                                        ; $59f2: $7f
	add  e                                           ; $59f3: $83
	rst  $38                                         ; $59f4: $ff
	ld   [bc], a                                     ; $59f5: $02
	inc  e                                           ; $59f6: $1c
	ld   a, a                                        ; $59f7: $7f
	ld   h, e                                        ; $59f8: $63
	add  b                                           ; $59f9: $80
	ld   a, a                                        ; $59fa: $7f
	add  b                                           ; $59fb: $80
	inc  a                                           ; $59fc: $3c
	adc  a                                           ; $59fd: $8f
	nop                                              ; $59fe: $00
	ld   a, [bc]                                     ; $59ff: $0a
	db   $fc                                         ; $5a00: $fc
	rst  $38                                         ; $5a01: $ff
	db   $fd                                         ; $5a02: $fd
	rst  $38                                         ; $5a03: $ff
	cp   $ff                                         ; $5a04: $fe $ff
	ld   a, [hl]                                     ; $5a06: $7e
	rst  $38                                         ; $5a07: $ff
	ld   sp, hl                                      ; $5a08: $f9
	rst  $38                                         ; $5a09: $ff
	add  a                                           ; $5a0a: $87
	add  d                                           ; $5a0b: $82
	rst  $38                                         ; $5a0c: $ff
	inc  b                                           ; $5a0d: $04
	ld   a, a                                        ; $5a0e: $7f
	ld   a, e                                        ; $5a0f: $7b
	rlca                                             ; $5a10: $07
	dec  b                                           ; $5a11: $05
	rlca                                             ; $5a12: $07
	add  b                                           ; $5a13: $80
	inc  bc                                          ; $5a14: $03
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	add  c                                           ; $5a17: $81
	ld   bc, $0084                                   ; $5a18: $01 $84 $00
	add  d                                           ; $5a1b: $82
	rst  $38                                         ; $5a1c: $ff
	ld   [bc], a                                     ; $5a1d: $02
	db   $fd                                         ; $5a1e: $fd
	rst  $38                                         ; $5a1f: $ff
	ld   a, [$ff81]                                  ; $5a20: $fa $81 $ff
	dec  bc                                          ; $5a23: $0b
	rst  $30                                         ; $5a24: $f7
	rst  $38                                         ; $5a25: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a26: $cf
	rst  $38                                         ; $5a27: $ff
	ccf                                              ; $5a28: $3f
	rst  $38                                         ; $5a29: $ff
	cp   a                                           ; $5a2a: $bf
	ldh  a, [rSVBK]                                  ; $5a2b: $f0 $70
	ldh  [$80], a                                    ; $5a2d: $e0 $80
	ldh  [$82], a                                    ; $5a2f: $e0 $82
	ret  nz                                          ; $5a31: $c0

	nop                                              ; $5a32: $00
	ld   b, b                                        ; $5a33: $40
	add  e                                           ; $5a34: $83
	nop                                              ; $5a35: $00
	ld   [bc], a                                     ; $5a36: $02
	ld   hl, sp-$02                                  ; $5a37: $f8 $fe
	or   $81                                         ; $5a39: $f6 $81
	cp   $02                                         ; $5a3b: $fe $02
	adc  $fe                                         ; $5a3d: $ce $fe
	ld   a, $80                                      ; $5a3f: $3e $80
	cp   $80                                         ; $5a41: $fe $80
	db   $fc                                         ; $5a43: $fc
	add  b                                           ; $5a44: $80
	or   b                                           ; $5a45: $b0
	sub  b                                           ; $5a46: $90
	nop                                              ; $5a47: $00
	add  b                                           ; $5a48: $80
	ld   bc, $0301                                   ; $5a49: $01 $01 $03
	inc  b                                           ; $5a4c: $04
	add  b                                           ; $5a4d: $80
	rlca                                             ; $5a4e: $07
	inc  bc                                          ; $5a4f: $03
	rra                                              ; $5a50: $1f
	dec  hl                                          ; $5a51: $2b
	ccf                                              ; $5a52: $3f
	ld   [hl], e                                     ; $5a53: $73
	add  e                                           ; $5a54: $83
	ld   a, a                                        ; $5a55: $7f
	inc  b                                           ; $5a56: $04
	ccf                                              ; $5a57: $3f
	ld   a, a                                        ; $5a58: $7f
	ld   e, a                                        ; $5a59: $5f
	ccf                                              ; $5a5a: $3f
	jr   nz, jr_02d_59dd                             ; $5a5b: $20 $80

	ccf                                              ; $5a5d: $3f
	inc  bc                                          ; $5a5e: $03
	ld   a, a                                        ; $5a5f: $7f
	ld   b, [hl]                                     ; $5a60: $46
	ld   a, a                                        ; $5a61: $7f
	add  hl, sp                                      ; $5a62: $39
	add  c                                           ; $5a63: $81
	ld   a, a                                        ; $5a64: $7f
	add  b                                           ; $5a65: $80
	rst  $38                                         ; $5a66: $ff
	nop                                              ; $5a67: $00
	nop                                              ; $5a68: $00
	add  b                                           ; $5a69: $80
	ldh  [rSB], a                                    ; $5a6a: $e0 $01
	ld   hl, sp+$7b                                  ; $5a6c: $f8 $7b
	add  c                                           ; $5a6e: $81
	rst  $38                                         ; $5a6f: $ff
	inc  b                                           ; $5a70: $04
	cp   a                                           ; $5a71: $bf
	rst  $38                                         ; $5a72: $ff
	db   $d3                                         ; $5a73: $d3
	rst  $38                                         ; $5a74: $ff
	rst  $28                                         ; $5a75: $ef
	add  e                                           ; $5a76: $83
	rst  $38                                         ; $5a77: $ff
	ld   [$fffe], sp                                 ; $5a78: $08 $fe $ff
	db   $fd                                         ; $5a7b: $fd
	rst  $38                                         ; $5a7c: $ff
	dec  de                                          ; $5a7d: $1b
	rst  $38                                         ; $5a7e: $ff
	inc  e                                           ; $5a7f: $1c
	rst  $38                                         ; $5a80: $ff
	di                                               ; $5a81: $f3
	add  c                                           ; $5a82: $81
	rst  $38                                         ; $5a83: $ff
	ld   a, [bc]                                     ; $5a84: $0a
	rst  $30                                         ; $5a85: $f7
	rst  $38                                         ; $5a86: $ff
	jr   c, jr_02d_5ac5                              ; $5a87: $38 $3c

	db   $fc                                         ; $5a89: $fc
	rst  $38                                         ; $5a8a: $ff
	db   $f4                                         ; $5a8b: $f4
	rst  $38                                         ; $5a8c: $ff
	db   $e3                                         ; $5a8d: $e3
	rst  $38                                         ; $5a8e: $ff
	rst  $28                                         ; $5a8f: $ef
	add  a                                           ; $5a90: $87
	rst  $38                                         ; $5a91: $ff
	ld   b, $7e                                      ; $5a92: $06 $7e
	rst  $38                                         ; $5a94: $ff
	adc  [hl]                                        ; $5a95: $8e
	rst  $38                                         ; $5a96: $ff
	rlca                                             ; $5a97: $07
	rst  $38                                         ; $5a98: $ff
	rst  $30                                         ; $5a99: $f7

jr_02d_5a9a:
	add  l                                           ; $5a9a: $85
	rst  $38                                         ; $5a9b: $ff
	add  c                                           ; $5a9c: $81
	nop                                              ; $5a9d: $00
	add  b                                           ; $5a9e: $80
	ldh  [$03], a                                    ; $5a9f: $e0 $03
	ld   hl, sp+$38                                  ; $5aa1: $f8 $38
	db   $fc                                         ; $5aa3: $fc
	call c, $fe81                                    ; $5aa4: $dc $81 $fe
	nop                                              ; $5aa7: $00
	sbc  $81                                         ; $5aa8: $de $81
	cp   $04                                         ; $5aaa: $fe $04
	cp   [hl]                                        ; $5aac: $be
	cp   $7e                                         ; $5aad: $fe $7e
	db   $fc                                         ; $5aaf: $fc
	ld   a, h                                        ; $5ab0: $7c
	add  c                                           ; $5ab1: $81
	db   $fc                                         ; $5ab2: $fc
	inc  b                                           ; $5ab3: $04
	ld   a, h                                        ; $5ab4: $7c
	cp   $06                                         ; $5ab5: $fe $06
	cp   $f8                                         ; $5ab7: $fe $f8
	add  c                                           ; $5ab9: $81
	rst  $38                                         ; $5aba: $ff
	nop                                              ; $5abb: $00
	cp   $85                                         ; $5abc: $fe $85
	rst  $38                                         ; $5abe: $ff
	inc  b                                           ; $5abf: $04
	ccf                                              ; $5ac0: $3f
	rst  $38                                         ; $5ac1: $ff
	cp   $ff                                         ; $5ac2: $fe $ff
	pop  bc                                          ; $5ac4: $c1

jr_02d_5ac5:
	add  b                                           ; $5ac5: $80
	ld   a, a                                        ; $5ac6: $7f
	add  b                                           ; $5ac7: $80
	ld   e, $8d                                      ; $5ac8: $1e $8d
	nop                                              ; $5aca: $00
	add  h                                           ; $5acb: $84
	rst  $38                                         ; $5acc: $ff
	ld   [$fffe], sp                                 ; $5acd: $08 $fe $ff
	ld   a, c                                        ; $5ad0: $79
	rst  $38                                         ; $5ad1: $ff
	add  a                                           ; $5ad2: $87
	rst  $38                                         ; $5ad3: $ff
	db   $fd                                         ; $5ad4: $fd
	ld   a, a                                        ; $5ad5: $7f
	ld   a, [hl]                                     ; $5ad6: $7e
	add  b                                           ; $5ad7: $80
	rra                                              ; $5ad8: $1f
	nop                                              ; $5ad9: $00
	inc  bc                                          ; $5ada: $03
	add  b                                           ; $5adb: $80
	ld   bc, $008a                                   ; $5adc: $01 $8a $00
	add  h                                           ; $5adf: $84
	rst  $38                                         ; $5ae0: $ff
	inc  c                                           ; $5ae1: $0c
	rra                                              ; $5ae2: $1f
	rst  $38                                         ; $5ae3: $ff
	xor  $ff                                         ; $5ae4: $ee $ff
	sub  c                                           ; $5ae6: $91
	rst  $38                                         ; $5ae7: $ff
	ld   a, a                                        ; $5ae8: $7f
	rst  $38                                         ; $5ae9: $ff
	rst  JumpTable                                         ; $5aea: $df
	rst  $38                                         ; $5aeb: $ff
	cp   a                                           ; $5aec: $bf
	ldh  [$60], a                                    ; $5aed: $e0 $60
	add  d                                           ; $5aef: $82
	ld   b, b                                        ; $5af0: $40
	add  a                                           ; $5af1: $87
	nop                                              ; $5af2: $00
	add  h                                           ; $5af3: $84
	rst  $38                                         ; $5af4: $ff
	ld   b, $fe                                      ; $5af5: $06 $fe
	rst  $38                                         ; $5af7: $ff
	db   $fd                                         ; $5af8: $fd
	cp   $7a                                         ; $5af9: $fe $7a
	cp   $86                                         ; $5afb: $fe $86
	add  b                                           ; $5afd: $80
	cp   $80                                         ; $5afe: $fe $80
	inc  a                                           ; $5b00: $3c
	sub  l                                           ; $5b01: $95
	nop                                              ; $5b02: $00
	add  b                                           ; $5b03: $80
	inc  c                                           ; $5b04: $0c
	add  b                                           ; $5b05: $80
	inc  a                                           ; $5b06: $3c
	add  c                                           ; $5b07: $81
	ld   a, [hl]                                     ; $5b08: $7e
	nop                                              ; $5b09: $00
	ld   a, a                                        ; $5b0a: $7f
	add  b                                           ; $5b0b: $80
	rst  $38                                         ; $5b0c: $ff
	inc  b                                           ; $5b0d: $04
	db   $fd                                         ; $5b0e: $fd
	rst  $38                                         ; $5b0f: $ff
	di                                               ; $5b10: $f3
	cp   $0e                                         ; $5b11: $fe $0e
	add  b                                           ; $5b13: $80
	ld   [hl], b                                     ; $5b14: $70
	add  a                                           ; $5b15: $87
	nop                                              ; $5b16: $00
	add  b                                           ; $5b17: $80
	jr   jr_02d_5a9a                                 ; $5b18: $18 $80

	inc  a                                           ; $5b1a: $3c
	ld   b, $fc                                      ; $5b1b: $06 $fc
	cp   $fa                                         ; $5b1d: $fe $fa
	cp   $46                                         ; $5b1f: $fe $46
	ld   a, h                                        ; $5b21: $7c
	inc  a                                           ; $5b22: $3c
	adc  e                                           ; $5b23: $8b
	nop                                              ; $5b24: $00
	rlca                                             ; $5b25: $07
	ld   a, b                                        ; $5b26: $78
	ld   a, h                                        ; $5b27: $7c
	ld   hl, sp-$02                                  ; $5b28: $f8 $fe
	db   $fc                                         ; $5b2a: $fc
	rst  $38                                         ; $5b2b: $ff
	ld   bc, $8000                                   ; $5b2c: $01 $00 $80
	inc  bc                                          ; $5b2f: $03
	add  d                                           ; $5b30: $82
	rlca                                             ; $5b31: $07
	add  d                                           ; $5b32: $82
	rrca                                             ; $5b33: $0f
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	add  b                                           ; $5b36: $80
	rlca                                             ; $5b37: $07
	sub  c                                           ; $5b38: $91
	nop                                              ; $5b39: $00
	add  b                                           ; $5b3a: $80
	ldh  [$82], a                                    ; $5b3b: $e0 $82
	ldh  a, [$80]                                    ; $5b3d: $f0 $80
	ld   hl, sp+$00                                  ; $5b3f: $f8 $00
	ld   [hl], b                                     ; $5b41: $70
	add  c                                           ; $5b42: $81
	ld   hl, sp+$00                                  ; $5b43: $f8 $00
	adc  b                                           ; $5b45: $88
	add  b                                           ; $5b46: $80
	ldh  a, [rIE]                                    ; $5b47: $f0 $ff
	nop                                              ; $5b49: $00
	rst  $38                                         ; $5b4a: $ff
	nop                                              ; $5b4b: $00
	rst  $38                                         ; $5b4c: $ff
	nop                                              ; $5b4d: $00
	rst  $38                                         ; $5b4e: $ff
	nop                                              ; $5b4f: $00
	rst  $38                                         ; $5b50: $ff
	nop                                              ; $5b51: $00
	rst  $38                                         ; $5b52: $ff
	nop                                              ; $5b53: $00
	rst  $38                                         ; $5b54: $ff
	nop                                              ; $5b55: $00
	add  [hl]                                        ; $5b56: $86
	nop                                              ; $5b57: $00
	inc  bc                                          ; $5b58: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b59: $cf
	jr   nc, jr_02d_5ba8                             ; $5b5a: $30 $4c

	ld   a, h                                        ; $5b5c: $7c
	add  b                                           ; $5b5d: $80
	ld   a, b                                        ; $5b5e: $78
	add  b                                           ; $5b5f: $80
	ld   a, h                                        ; $5b60: $7c
	add  b                                           ; $5b61: $80
	ld   a, b                                        ; $5b62: $78
	add  b                                           ; $5b63: $80
	ld   a, h                                        ; $5b64: $7c
	add  b                                           ; $5b65: $80
	ld   a, b                                        ; $5b66: $78
	add  b                                           ; $5b67: $80
	ld   a, h                                        ; $5b68: $7c
	ld   bc, $7f4f                                   ; $5b69: $01 $4f $7f
	add  b                                           ; $5b6c: $80
	rlca                                             ; $5b6d: $07
	add  d                                           ; $5b6e: $82
	rrca                                             ; $5b6f: $0f
	add  b                                           ; $5b70: $80
	daa                                              ; $5b71: $27
	add  b                                           ; $5b72: $80
	ld   b, e                                        ; $5b73: $43
	add  d                                           ; $5b74: $82
	pop  bc                                          ; $5b75: $c1
	add  b                                           ; $5b76: $80
	adc  a                                           ; $5b77: $8f
	add  b                                           ; $5b78: $80
	rst  ToBoot                                         ; $5b79: $c7
	add  b                                           ; $5b7a: $80
	di                                               ; $5b7b: $f3
	add  b                                           ; $5b7c: $80
	ld   sp, hl                                      ; $5b7d: $f9
	add  hl, bc                                      ; $5b7e: $09
	sbc  h                                           ; $5b7f: $9c
	db   $fc                                         ; $5b80: $fc
	xor  [hl]                                        ; $5b81: $ae
	cp   $f6                                         ; $5b82: $fe $f6
	cp   $de                                         ; $5b84: $fe $de
	cp   $e1                                         ; $5b86: $fe $e1
	ld   sp, hl                                      ; $5b88: $f9
	add  b                                           ; $5b89: $80
	di                                               ; $5b8a: $f3
	add  b                                           ; $5b8b: $80
	rst  $20                                         ; $5b8c: $e7
	add  [hl]                                        ; $5b8d: $86
	rst  $28                                         ; $5b8e: $ef
	inc  bc                                          ; $5b8f: $03
	ldh  [$ef], a                                    ; $5b90: $e0 $ef
	sub  c                                           ; $5b92: $91
	sbc  a                                           ; $5b93: $9f
	add  d                                           ; $5b94: $82
	rra                                              ; $5b95: $1f
	ld   [bc], a                                     ; $5b96: $02
	ld   b, $07                                      ; $5b97: $06 $07
	inc  b                                           ; $5b99: $04
	add  c                                           ; $5b9a: $81
	rlca                                             ; $5b9b: $07
	inc  b                                           ; $5b9c: $04
	rla                                              ; $5b9d: $17
	rra                                              ; $5b9e: $1f
	inc  bc                                          ; $5b9f: $03
	rrca                                             ; $5ba0: $0f
	rlca                                             ; $5ba1: $07
	add  e                                           ; $5ba2: $83
	ld   hl, sp+$02                                  ; $5ba3: $f8 $02
	nop                                              ; $5ba5: $00
	ld   hl, sp+$20                                  ; $5ba6: $f8 $20

jr_02d_5ba8:
	add  l                                           ; $5ba8: $85
	ldh  [rP1], a                                    ; $5ba9: $e0 $00
	ld   h, $89                                      ; $5bab: $26 $89
	cp   $04                                         ; $5bad: $fe $04
	inc  h                                           ; $5baf: $24
	inc  a                                           ; $5bb0: $3c
	and  $fe                                         ; $5bb1: $e6 $fe
	ei                                               ; $5bb3: $fb
	add  e                                           ; $5bb4: $83
	db   $e3                                         ; $5bb5: $e3
	add  h                                           ; $5bb6: $84
	ldh  [rP1], a                                    ; $5bb7: $e0 $00
	db   $ec                                         ; $5bb9: $ec

jr_02d_5bba:
	add  c                                           ; $5bba: $81
	db   $ed                                         ; $5bbb: $ed
	ld   [hl+], a                                    ; $5bbc: $22
	ld   e, $ff                                      ; $5bbd: $1e $ff
	rst  JumpTable                                         ; $5bbf: $df
	rst  $38                                         ; $5bc0: $ff
	add  b                                           ; $5bc1: $80
	rst  $38                                         ; $5bc2: $ff
	ld   a, a                                        ; $5bc3: $7f
	rst  $38                                         ; $5bc4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc5: $cf
	rst  $38                                         ; $5bc6: $ff
	inc  bc                                          ; $5bc7: $03
	rst  $38                                         ; $5bc8: $ff
	ldh  a, [rIE]                                    ; $5bc9: $f0 $ff
	ccf                                              ; $5bcb: $3f
	rst  $38                                         ; $5bcc: $ff
	dec  sp                                          ; $5bcd: $3b
	rlca                                             ; $5bce: $07
	ldh  a, [$f7]                                    ; $5bcf: $f0 $f7
	ld   h, a                                        ; $5bd1: $67
	ldh  [$bc], a                                    ; $5bd2: $e0 $bc
	db   $fc                                         ; $5bd4: $fc
	ld   [$90ff], a                                  ; $5bd5: $ea $ff $90
	rst  $38                                         ; $5bd8: $ff
	jr   jr_02d_5bba                                 ; $5bd9: $18 $df

	inc  l                                           ; $5bdb: $2c
	xor  a                                           ; $5bdc: $af
	ld   bc, $00ff                                   ; $5bdd: $01 $ff $00
	add  b                                           ; $5be0: $80
	rst  $38                                         ; $5be1: $ff
	dec  c                                           ; $5be2: $0d
	nop                                              ; $5be3: $00
	sbc  a                                           ; $5be4: $9f
	rst  $38                                         ; $5be5: $ff
	ld   b, a                                        ; $5be6: $47
	ccf                                              ; $5be7: $3f
	ld   d, b                                        ; $5be8: $50
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5be9: $cf
	daa                                              ; $5bea: $27
	ldh  a, [rDIV]                                   ; $5beb: $f0 $04
	db   $fc                                         ; $5bed: $fc
	ld   d, a                                        ; $5bee: $57
	rst  $38                                         ; $5bef: $ff
	nop                                              ; $5bf0: $00
	add  b                                           ; $5bf1: $80
	rst  $38                                         ; $5bf2: $ff
	nop                                              ; $5bf3: $00
	nop                                              ; $5bf4: $00
	add  d                                           ; $5bf5: $82
	rst  $38                                         ; $5bf6: $ff
	nop                                              ; $5bf7: $00
	nop                                              ; $5bf8: $00
	add  b                                           ; $5bf9: $80
	rst  $38                                         ; $5bfa: $ff
	inc  bc                                          ; $5bfb: $03
	nop                                              ; $5bfc: $00
	sbc  a                                           ; $5bfd: $9f
	rst  $38                                         ; $5bfe: $ff
	sbc  a                                           ; $5bff: $9f
	cp   l                                           ; $5c00: $bd
	nop                                              ; $5c01: $00
	inc  bc                                          ; $5c02: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c03: $cf
	jr   nc, jr_02d_5c52                             ; $5c04: $30 $4c

	ld   a, h                                        ; $5c06: $7c
	add  b                                           ; $5c07: $80
	ld   a, b                                        ; $5c08: $78
	add  b                                           ; $5c09: $80
	ld   a, h                                        ; $5c0a: $7c
	add  b                                           ; $5c0b: $80
	ld   a, b                                        ; $5c0c: $78
	rlca                                             ; $5c0d: $07
	inc  a                                           ; $5c0e: $3c
	ld   a, h                                        ; $5c0f: $7c
	ret  c                                           ; $5c10: $d8

	ld   e, b                                        ; $5c11: $58
	xor  b                                           ; $5c12: $a8
	xor  h                                           ; $5c13: $ac
	inc  [hl]                                        ; $5c14: $34
	ret  nz                                          ; $5c15: $c0

	add  b                                           ; $5c16: $80
	nop                                              ; $5c17: $00
	adc  d                                           ; $5c18: $8a
	ret  nz                                          ; $5c19: $c0

	nop                                              ; $5c1a: $00
	and  $83                                         ; $5c1b: $e6 $83
	cp   $00                                         ; $5c1d: $fe $00
	nop                                              ; $5c1f: $00
	add  l                                           ; $5c20: $85
	jr   jr_02d_5c25                                 ; $5c21: $18 $02

	and  $fe                                         ; $5c23: $e6 $fe

jr_02d_5c25:
	ld   hl, sp-$80                                  ; $5c25: $f8 $80

jr_02d_5c27:
	rst  $20                                         ; $5c27: $e7
	ld   bc, $e0e3                                   ; $5c28: $01 $e3 $e0
	add  e                                           ; $5c2b: $83
	db   $e3                                         ; $5c2c: $e3
	nop                                              ; $5c2d: $00
	ldh  [c], a                                      ; $5c2e: $e2
	add  c                                           ; $5c2f: $81
	db   $e3                                         ; $5c30: $e3
	inc  b                                           ; $5c31: $04
	ldh  [c], a                                      ; $5c32: $e2
	db   $e3                                         ; $5c33: $e3
	db   $e4                                         ; $5c34: $e4
	rst  $20                                         ; $5c35: $e7
	pop  hl                                          ; $5c36: $e1
	add  c                                           ; $5c37: $81
	di                                               ; $5c38: $f3
	ld   a, [bc]                                     ; $5c39: $0a
	ldh  [c], a                                      ; $5c3a: $e2
	db   $e3                                         ; $5c3b: $e3
	push af                                          ; $5c3c: $f5
	rst  ToBoot                                         ; $5c3d: $c7
	ld   l, d                                        ; $5c3e: $6a
	adc  a                                           ; $5c3f: $8f
	rst  ToBoot                                         ; $5c40: $c7
	adc  a                                           ; $5c41: $8f
	ld   a, [de]                                     ; $5c42: $1a

jr_02d_5c43:
	sbc  a                                           ; $5c43: $9f
	ld   a, [hl+]                                    ; $5c44: $2a
	add  e                                           ; $5c45: $83
	ldh  [rTIMA], a                                  ; $5c46: $e0 $05
	cp   $3e                                         ; $5c48: $fe $3e
	ld   e, a                                        ; $5c4a: $5f
	rst  $38                                         ; $5c4b: $ff
	sbc  e                                           ; $5c4c: $9b

jr_02d_5c4d:
	rst  $38                                         ; $5c4d: $ff
	add  b                                           ; $5c4e: $80
	rst  $28                                         ; $5c4f: $ef
	ld   [bc], a                                     ; $5c50: $02
	xor  e                                           ; $5c51: $ab

jr_02d_5c52:
	rst  $28                                         ; $5c52: $ef
	ld   h, [hl]                                     ; $5c53: $66
	add  l                                           ; $5c54: $85
	cp   $86                                         ; $5c55: $fe $86
	ld   a, [hl]                                     ; $5c57: $7e
	nop                                              ; $5c58: $00
	db   $f4                                         ; $5c59: $f4
	adc  l                                           ; $5c5a: $8d
	db   $ed                                         ; $5c5b: $ed
	ld   b, $3d                                      ; $5c5c: $06 $3d
	rst  $38                                         ; $5c5e: $ff
	or   h                                           ; $5c5f: $b4
	ld   hl, sp+$10                                  ; $5c60: $f8 $10
	ldh  [$80], a                                    ; $5c62: $e0 $80
	add  c                                           ; $5c64: $81
	nop                                              ; $5c65: $00
	add  b                                           ; $5c66: $80
	add  b                                           ; $5c67: $80
	add  b                                           ; $5c68: $80
	ld   b, b                                        ; $5c69: $40
	add  b                                           ; $5c6a: $80
	and  b                                           ; $5c6b: $a0
	add  b                                           ; $5c6c: $80
	ld   d, a                                        ; $5c6d: $57
	add  b                                           ; $5c6e: $80
	xor  e                                           ; $5c6f: $ab
	add  b                                           ; $5c70: $80
	ld   d, l                                        ; $5c71: $55
	add  b                                           ; $5c72: $80

jr_02d_5c73:
	ld   a, [hl+]                                    ; $5c73: $2a
	add  b                                           ; $5c74: $80
	dec  d                                           ; $5c75: $15
	add  b                                           ; $5c76: $80

jr_02d_5c77:
	ld   a, [hl+]                                    ; $5c77: $2a
	add  b                                           ; $5c78: $80
	dec  d                                           ; $5c79: $15
	add  b                                           ; $5c7a: $80
	ld   a, [bc]                                     ; $5c7b: $0a
	jr   nz, jr_02d_5cd3                             ; $5c7c: $20 $55

	rst  $38                                         ; $5c7e: $ff
	nop                                              ; $5c7f: $00
	rst  $38                                         ; $5c80: $ff
	add  b                                           ; $5c81: $80
	rst  $38                                         ; $5c82: $ff
	ret  nz                                          ; $5c83: $c0

	rst  $38                                         ; $5c84: $ff
	ld   h, b                                        ; $5c85: $60

jr_02d_5c86:
	ld   a, a                                        ; $5c86: $7f
	ldh  a, [rIE]                                    ; $5c87: $f0 $ff

jr_02d_5c89:
	ld   a, b                                        ; $5c89: $78
	ld   a, a                                        ; $5c8a: $7f
	cp   h                                           ; $5c8b: $bc
	cp   a                                           ; $5c8c: $bf

jr_02d_5c8d:
	call $403f                                       ; $5c8d: $cd $3f $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c90: $cf
	jr   nz, jr_02d_5c86                             ; $5c91: $20 $f3

jr_02d_5c93:
	inc  b                                           ; $5c93: $04
	db   $fc                                         ; $5c94: $fc
	ld   [bc], a                                     ; $5c95: $02
	rst  $38                                         ; $5c96: $ff
	nop                                              ; $5c97: $00
	rst  $38                                         ; $5c98: $ff
	nop                                              ; $5c99: $00
	rst  $38                                         ; $5c9a: $ff
	nop                                              ; $5c9b: $00
	rst  $38                                         ; $5c9c: $ff
	ld   d, l                                        ; $5c9d: $55
	cp   l                                           ; $5c9e: $bd
	nop                                              ; $5c9f: $00
	inc  h                                           ; $5ca0: $24
	inc  bc                                          ; $5ca1: $03
	add  d                                           ; $5ca2: $82
	nop                                              ; $5ca3: $00
	add  b                                           ; $5ca4: $80
	jr   nz, jr_02d_5c27                             ; $5ca5: $20 $80

	ld   l, $80                                      ; $5ca7: $2e $80
	ld   b, h                                        ; $5ca9: $44
	add  b                                           ; $5caa: $80
	and  h                                           ; $5cab: $a4
	add  b                                           ; $5cac: $80
	db   $e4                                         ; $5cad: $e4
	add  b                                           ; $5cae: $80
	ld   d, h                                        ; $5caf: $54
	add  d                                           ; $5cb0: $82

jr_02d_5cb1:
	nop                                              ; $5cb1: $00
	add  b                                           ; $5cb2: $80
	ld   b, h                                        ; $5cb3: $44
	add  b                                           ; $5cb4: $80

jr_02d_5cb5:
	cp   $80                                         ; $5cb5: $fe $80
	ld   b, h                                        ; $5cb7: $44
	add  b                                           ; $5cb8: $80
	xor  $80                                         ; $5cb9: $ee $80
	xor  d                                           ; $5cbb: $aa
	add  b                                           ; $5cbc: $80
	add  $84                                         ; $5cbd: $c6 $84
	nop                                              ; $5cbf: $00
	add  b                                           ; $5cc0: $80
	jr   c, jr_02d_5c43                              ; $5cc1: $38 $80

	ld   d, h                                        ; $5cc3: $54
	add  h                                           ; $5cc4: $84

jr_02d_5cc5:
	sub  d                                           ; $5cc5: $92
	add  d                                           ; $5cc6: $82
	nop                                              ; $5cc7: $00
	add  b                                           ; $5cc8: $80
	ld   l, h                                        ; $5cc9: $6c
	add  b                                           ; $5cca: $80
	jr   z, jr_02d_5c4d                              ; $5ccb: $28 $80

jr_02d_5ccd:
	xor  d                                           ; $5ccd: $aa
	add  b                                           ; $5cce: $80
	ld   l, h                                        ; $5ccf: $6c
	add  b                                           ; $5cd0: $80
	ld   b, h                                        ; $5cd1: $44
	add  b                                           ; $5cd2: $80

jr_02d_5cd3:
	cp   $82                                         ; $5cd3: $fe $82
	nop                                              ; $5cd5: $00
	add  b                                           ; $5cd6: $80
	ld   c, $80                                      ; $5cd7: $0e $80
	ld   [$aa80], a                                  ; $5cd9: $ea $80 $aa
	add  b                                           ; $5cdc: $80
	xor  [hl]                                        ; $5cdd: $ae
	add  b                                           ; $5cde: $80
	ld   [$aa80], a                                  ; $5cdf: $ea $80 $aa
	add  d                                           ; $5ce2: $82
	nop                                              ; $5ce3: $00
	add  d                                           ; $5ce4: $82
	ld   [$7080], sp                                 ; $5ce5: $08 $80 $70
	add  b                                           ; $5ce8: $80
	db   $10                                         ; $5ce9: $10
	add  b                                           ; $5cea: $80
	cp   $80                                         ; $5ceb: $fe $80

jr_02d_5ced:
	db   $10                                         ; $5ced: $10
	add  d                                           ; $5cee: $82
	nop                                              ; $5cef: $00
	add  b                                           ; $5cf0: $80

jr_02d_5cf1:
	jr   nz, jr_02d_5c73                             ; $5cf1: $20 $80

	ld   l, $80                                      ; $5cf3: $2e $80
	jr   nz, jr_02d_5c77                             ; $5cf5: $20 $80

	ld   e, [hl]                                     ; $5cf7: $5e
	add  b                                           ; $5cf8: $80
	ld   b, h                                        ; $5cf9: $44
	add  b                                           ; $5cfa: $80
	call nz, $0084                                   ; $5cfb: $c4 $84 $00
	add  b                                           ; $5cfe: $80
	add  b                                           ; $5cff: $80
	add  b                                           ; $5d00: $80
	add  h                                           ; $5d01: $84
	add  h                                           ; $5d02: $84
	add  d                                           ; $5d03: $82
	add  d                                           ; $5d04: $82
	nop                                              ; $5d05: $00
	add  d                                           ; $5d06: $82
	jr   nz, jr_02d_5c89                             ; $5d07: $20 $80

	cp   $80                                         ; $5d09: $fe $80

jr_02d_5d0b:
	jr   nz, jr_02d_5c8d                             ; $5d0b: $20 $80

	db   $ec                                         ; $5d0d: $ec
	add  b                                           ; $5d0e: $80
	jr   nc, jr_02d_5c93                             ; $5d0f: $30 $82

	nop                                              ; $5d11: $00
	adc  d                                           ; $5d12: $8a
	ld   b, b                                        ; $5d13: $40
	add  d                                           ; $5d14: $82
	nop                                              ; $5d15: $00
	add  d                                           ; $5d16: $82
	db   $10                                         ; $5d17: $10
	add  b                                           ; $5d18: $80
	cp   $80                                         ; $5d19: $fe $80
	db   $10                                         ; $5d1b: $10
	add  b                                           ; $5d1c: $80

jr_02d_5d1d:
	cp   $80                                         ; $5d1d: $fe $80
	db   $10                                         ; $5d1f: $10
	add  d                                           ; $5d20: $82
	nop                                              ; $5d21: $00
	add  d                                           ; $5d22: $82
	db   $10                                         ; $5d23: $10
	add  b                                           ; $5d24: $80
	cp   $80                                         ; $5d25: $fe $80
	db   $10                                         ; $5d27: $10
	add  b                                           ; $5d28: $80
	ld   [hl], b                                     ; $5d29: $70
	add  b                                           ; $5d2a: $80
	sub  b                                           ; $5d2b: $90
	sub  d                                           ; $5d2c: $92
	nop                                              ; $5d2d: $00
	add  d                                           ; $5d2e: $82
	jr   nz, jr_02d_5cb1                             ; $5d2f: $20 $80

jr_02d_5d31:
	cp   $80                                         ; $5d31: $fe $80
	jr   nz, jr_02d_5cb5                             ; $5d33: $20 $80

	ld   a, [hl-]                                    ; $5d35: $3a
	add  b                                           ; $5d36: $80
	ld   h, [hl]                                     ; $5d37: $66
	add  h                                           ; $5d38: $84
	nop                                              ; $5d39: $00
	add  b                                           ; $5d3a: $80
	cp   $80                                         ; $5d3b: $fe $80
	ld   [$1080], sp                                 ; $5d3d: $08 $80 $10
	add  d                                           ; $5d40: $82
	jr   nz, jr_02d_5cc5                             ; $5d41: $20 $82

jr_02d_5d43:
	nop                                              ; $5d43: $00
	add  b                                           ; $5d44: $80
	ld   a, h                                        ; $5d45: $7c
	add  b                                           ; $5d46: $80

jr_02d_5d47:
	ld   [$1080], sp                                 ; $5d47: $08 $80 $10
	add  b                                           ; $5d4a: $80
	jr   nz, jr_02d_5ccd                             ; $5d4b: $20 $80

jr_02d_5d4d:
	inc  a                                           ; $5d4d: $3c
	add  b                                           ; $5d4e: $80
	ld   b, d                                        ; $5d4f: $42
	add  b                                           ; $5d50: $80
	db   $f4                                         ; $5d51: $f4
	add  b                                           ; $5d52: $80
	ld   b, h                                        ; $5d53: $44
	add  b                                           ; $5d54: $80

jr_02d_5d55:
	and  h                                           ; $5d55: $a4
	add  b                                           ; $5d56: $80
	xor  [hl]                                        ; $5d57: $ae
	add  [hl]                                        ; $5d58: $86
	nop                                              ; $5d59: $00
	add  d                                           ; $5d5a: $82
	cp   d                                           ; $5d5b: $ba
	add  b                                           ; $5d5c: $80
	sub  d                                           ; $5d5d: $92
	add  b                                           ; $5d5e: $80
	cp   d                                           ; $5d5f: $ba
	add  [hl]                                        ; $5d60: $86
	nop                                              ; $5d61: $00
	add  d                                           ; $5d62: $82
	sub  d                                           ; $5d63: $92
	add  b                                           ; $5d64: $80
	and  d                                           ; $5d65: $a2
	add  b                                           ; $5d66: $80
	ld   h, h                                        ; $5d67: $64
	add  [hl]                                        ; $5d68: $86
	nop                                              ; $5d69: $00
	add  b                                           ; $5d6a: $80
	jr   z, jr_02d_5ced                              ; $5d6b: $28 $80

	ld   a, h                                        ; $5d6d: $7c
	add  b                                           ; $5d6e: $80
	jr   z, jr_02d_5cf1                              ; $5d6f: $28 $80

	xor  $86                                         ; $5d71: $ee $86
	nop                                              ; $5d73: $00
	add  b                                           ; $5d74: $80
	xor  [hl]                                        ; $5d75: $ae
	add  b                                           ; $5d76: $80
	ld   [$0a80], a                                  ; $5d77: $ea $80 $0a
	add  b                                           ; $5d7a: $80
	ld   d, $86                                      ; $5d7b: $16 $86
	nop                                              ; $5d7d: $00
	add  b                                           ; $5d7e: $80
	cp   $82                                         ; $5d7f: $fe $82
	db   $10                                         ; $5d81: $10
	add  b                                           ; $5d82: $80
	jr   nc, jr_02d_5d0b                             ; $5d83: $30 $86

	nop                                              ; $5d85: $00
	add  b                                           ; $5d86: $80
	ld   c, b                                        ; $5d87: $48
	add  b                                           ; $5d88: $80
	ld   c, d                                        ; $5d89: $4a
	add  b                                           ; $5d8a: $80
	ld   d, d                                        ; $5d8b: $52
	add  b                                           ; $5d8c: $80
	ld   e, [hl]                                     ; $5d8d: $5e
	add  [hl]                                        ; $5d8e: $86
	nop                                              ; $5d8f: $00
	add  d                                           ; $5d90: $82
	add  d                                           ; $5d91: $82
	add  b                                           ; $5d92: $80
	ld   d, b                                        ; $5d93: $50
	add  b                                           ; $5d94: $80
	jr   nz, jr_02d_5d1d                             ; $5d95: $20 $86

	nop                                              ; $5d97: $00
	add  b                                           ; $5d98: $80
	ld   d, b                                        ; $5d99: $50
	add  b                                           ; $5d9a: $80
	sub  b                                           ; $5d9b: $90
	add  b                                           ; $5d9c: $80
	add  b                                           ; $5d9d: $80
	add  b                                           ; $5d9e: $80
	ld   a, [hl]                                     ; $5d9f: $7e
	add  [hl]                                        ; $5da0: $86
	nop                                              ; $5da1: $00
	add  b                                           ; $5da2: $80
	ld   b, b                                        ; $5da3: $40
	add  b                                           ; $5da4: $80
	ld   b, d                                        ; $5da5: $42
	add  b                                           ; $5da6: $80
	inc  h                                           ; $5da7: $24
	add  b                                           ; $5da8: $80
	jr   jr_02d_5d31                                 ; $5da9: $18 $86

	nop                                              ; $5dab: $00
	add  b                                           ; $5dac: $80
	ld   [hl], b                                     ; $5dad: $70
	add  b                                           ; $5dae: $80
	sbc  b                                           ; $5daf: $98
	add  b                                           ; $5db0: $80
	sub  h                                           ; $5db1: $94
	add  b                                           ; $5db2: $80
	ld   h, d                                        ; $5db3: $62
	add  [hl]                                        ; $5db4: $86
	nop                                              ; $5db5: $00
	add  b                                           ; $5db6: $80
	sub  b                                           ; $5db7: $90
	add  b                                           ; $5db8: $80
	ld   [hl], b                                     ; $5db9: $70
	add  b                                           ; $5dba: $80
	db   $10                                         ; $5dbb: $10
	add  b                                           ; $5dbc: $80
	jr   nz, jr_02d_5d47                             ; $5dbd: $20 $88

jr_02d_5dbf:
	nop                                              ; $5dbf: $00
	add  b                                           ; $5dc0: $80
	jr   nz, jr_02d_5d43                             ; $5dc1: $20 $80

	ld   d, b                                        ; $5dc3: $50
	add  b                                           ; $5dc4: $80
	jr   nz, jr_02d_5d4d                             ; $5dc5: $20 $86

	nop                                              ; $5dc7: $00
	add  b                                           ; $5dc8: $80
	and  [hl]                                        ; $5dc9: $a6
	add  b                                           ; $5dca: $80
	xor  d                                           ; $5dcb: $aa
	add  b                                           ; $5dcc: $80
	or   d                                           ; $5dcd: $b2
	add  b                                           ; $5dce: $80
	ld   d, h                                        ; $5dcf: $54
	add  [hl]                                        ; $5dd0: $86

jr_02d_5dd1:
	nop                                              ; $5dd1: $00
	add  d                                           ; $5dd2: $82
	jr   nz, jr_02d_5d55                             ; $5dd3: $20 $80

	db   $10                                         ; $5dd5: $10
	add  b                                           ; $5dd6: $80
	inc  c                                           ; $5dd7: $0c
	add  [hl]                                        ; $5dd8: $86

jr_02d_5dd9:
	nop                                              ; $5dd9: $00
	add  b                                           ; $5dda: $80
	ld   [bc], a                                     ; $5ddb: $02
	add  b                                           ; $5ddc: $80
	ld   [de], a                                     ; $5ddd: $12
	add  b                                           ; $5dde: $80
	ld   a, [hl+]                                    ; $5ddf: $2a
	add  b                                           ; $5de0: $80
	inc  a                                           ; $5de1: $3c
	adc  b                                           ; $5de2: $88
	nop                                              ; $5de3: $00
	add  b                                           ; $5de4: $80
	ld   b, h                                        ; $5de5: $44
	add  b                                           ; $5de6: $80
	db   $e4                                         ; $5de7: $e4
	add  d                                           ; $5de8: $82
	ld   b, h                                        ; $5de9: $44
	add  b                                           ; $5dea: $80
	xor  $82                                         ; $5deb: $ee $82
	xor  d                                           ; $5ded: $aa
	add  h                                           ; $5dee: $84

jr_02d_5def:
	nop                                              ; $5def: $00
	add  b                                           ; $5df0: $80
	sbc  [hl]                                        ; $5df1: $9e
	add  b                                           ; $5df2: $80
	add  d                                           ; $5df3: $82
	add  h                                           ; $5df4: $84

jr_02d_5df5:
	add  b                                           ; $5df5: $80
	add  b                                           ; $5df6: $80
	nop                                              ; $5df7: $00
	add  b                                           ; $5df8: $80
	inc  b                                           ; $5df9: $04
	add  b                                           ; $5dfa: $80
	ld   c, d                                        ; $5dfb: $4a
	add  b                                           ; $5dfc: $80

jr_02d_5dfd:
	ld   b, h                                        ; $5dfd: $44
	add  b                                           ; $5dfe: $80
	ld   b, b                                        ; $5dff: $40
	add  b                                           ; $5e00: $80
	ld   a, [hl]                                     ; $5e01: $7e
	add  d                                           ; $5e02: $82

jr_02d_5e03:
	ld   b, b                                        ; $5e03: $40
	adc  b                                           ; $5e04: $88
	nop                                              ; $5e05: $00
	add  d                                           ; $5e06: $82
	and  h                                           ; $5e07: $a4
	add  b                                           ; $5e08: $80
	inc  b                                           ; $5e09: $04
	add  h                                           ; $5e0a: $84
	nop                                              ; $5e0b: $00
	add  b                                           ; $5e0c: $80
	ld   a, h                                        ; $5e0d: $7c
	add  d                                           ; $5e0e: $82
	ld   b, h                                        ; $5e0f: $44
	add  b                                           ; $5e10: $80
	and  h                                           ; $5e11: $a4
	add  b                                           ; $5e12: $80
	inc  d                                           ; $5e13: $14
	add  d                                           ; $5e14: $82
	nop                                              ; $5e15: $00
	adc  b                                           ; $5e16: $88
	ld   b, h                                        ; $5e17: $44
	add  b                                           ; $5e18: $80
	inc  b                                           ; $5e19: $04
	add  b                                           ; $5e1a: $80
	nop                                              ; $5e1b: $00
	add  b                                           ; $5e1c: $80
	db   $10                                         ; $5e1d: $10
	add  b                                           ; $5e1e: $80
	ld   d, b                                        ; $5e1f: $50
	add  b                                           ; $5e20: $80
	ld   e, h                                        ; $5e21: $5c
	add  b                                           ; $5e22: $80
	ld   d, b                                        ; $5e23: $50
	add  b                                           ; $5e24: $80
	cp   $80                                         ; $5e25: $fe $80
	sub  d                                           ; $5e27: $92
	add  b                                           ; $5e28: $80
	xor  d                                           ; $5e29: $aa
	add  b                                           ; $5e2a: $80
	nop                                              ; $5e2b: $00
	add  b                                           ; $5e2c: $80
	db   $10                                         ; $5e2d: $10
	add  b                                           ; $5e2e: $80
	ld   a, h                                        ; $5e2f: $7c
	add  b                                           ; $5e30: $80
	db   $10                                         ; $5e31: $10
	add  b                                           ; $5e32: $80
	cp   $80                                         ; $5e33: $fe $80
	sub  d                                           ; $5e35: $92
	add  b                                           ; $5e36: $80
	cp   $80                                         ; $5e37: $fe $80
	sub  d                                           ; $5e39: $92
	add  d                                           ; $5e3a: $82
	nop                                              ; $5e3b: $00
	add  b                                           ; $5e3c: $80
	jr   c, jr_02d_5dbf                              ; $5e3d: $38 $80

jr_02d_5e3f:
	nop                                              ; $5e3f: $00
	add  b                                           ; $5e40: $80
	cp   $80                                         ; $5e41: $fe $80
	inc  b                                           ; $5e43: $04
	add  b                                           ; $5e44: $80
	ld   [$1080], sp                                 ; $5e45: $08 $80 $10
	add  d                                           ; $5e48: $82
	nop                                              ; $5e49: $00
	add  b                                           ; $5e4a: $80
	inc  h                                           ; $5e4b: $24
	add  b                                           ; $5e4c: $80
	ld   [hl+], a                                    ; $5e4d: $22
	add  d                                           ; $5e4e: $82
	jr   nz, jr_02d_5dd1                             ; $5e4f: $20 $80

	inc  a                                           ; $5e51: $3c
	add  b                                           ; $5e52: $80
	ld   b, d                                        ; $5e53: $42
	add  d                                           ; $5e54: $82
	nop                                              ; $5e55: $00
	add  h                                           ; $5e56: $84
	jr   nz, jr_02d_5dd9                             ; $5e57: $20 $80

jr_02d_5e59:
	ld   b, b                                        ; $5e59: $40
	add  b                                           ; $5e5a: $80
	ld   [hl], b                                     ; $5e5b: $70
	add  b                                           ; $5e5c: $80
	ld   c, b                                        ; $5e5d: $48
	add  d                                           ; $5e5e: $82
	ld   a, [bc]                                     ; $5e5f: $0a
	add  b                                           ; $5e60: $80
	nop                                              ; $5e61: $00
	add  b                                           ; $5e62: $80
	cp   $80                                         ; $5e63: $fe $80
	ld   [$1080], sp                                 ; $5e65: $08 $80 $10
	add  d                                           ; $5e68: $82
	jr   nz, jr_02d_5dfd                             ; $5e69: $20 $92

	nop                                              ; $5e6b: $00
	add  b                                           ; $5e6c: $80
	jr   nz, jr_02d_5def                             ; $5e6d: $20 $80

	ld   a, [$2282]                                  ; $5e6f: $fa $82 $22
	add  b                                           ; $5e72: $80
	jr   nz, jr_02d_5df5                             ; $5e73: $20 $80

	ld   a, h                                        ; $5e75: $7c
	add  d                                           ; $5e76: $82
	nop                                              ; $5e77: $00
	add  b                                           ; $5e78: $80
	inc  b                                           ; $5e79: $04
	add  b                                           ; $5e7a: $80
	ld   [$1080], sp                                 ; $5e7b: $08 $80 $10
	add  b                                           ; $5e7e: $80
	jr   nz, jr_02d_5e03                             ; $5e7f: $20 $82

jr_02d_5e81:
	ld   b, b                                        ; $5e81: $40
	add  b                                           ; $5e82: $80
	nop                                              ; $5e83: $00
	add  b                                           ; $5e84: $80

jr_02d_5e85:
	ld   a, [bc]                                     ; $5e85: $0a
	add  b                                           ; $5e86: $80
	ld   c, d                                        ; $5e87: $4a
	add  b                                           ; $5e88: $80
	ldh  a, [$80]                                    ; $5e89: $f0 $80
	ld   b, b                                        ; $5e8b: $40
	add  b                                           ; $5e8c: $80
	ld   e, [hl]                                     ; $5e8d: $5e
	add  b                                           ; $5e8e: $80
	ld   b, d                                        ; $5e8f: $42
	add  b                                           ; $5e90: $80
	ld   b, b                                        ; $5e91: $40
	add  b                                           ; $5e92: $80
	xor  $80                                         ; $5e93: $ee $80
	ld   c, d                                        ; $5e95: $4a
	add  b                                           ; $5e96: $80

jr_02d_5e97:
	ld   [$4e80], a                                  ; $5e97: $ea $80 $4e
	add  [hl]                                        ; $5e9a: $86
	nop                                              ; $5e9b: $00
	add  d                                           ; $5e9c: $82
	add  b                                           ; $5e9d: $80
	add  b                                           ; $5e9e: $80
	sub  b                                           ; $5e9f: $90
	add  b                                           ; $5ea0: $80
	ld   c, [hl]                                     ; $5ea1: $4e
	add  [hl]                                        ; $5ea2: $86
	nop                                              ; $5ea3: $00
	add  h                                           ; $5ea4: $84
	ld   b, b                                        ; $5ea5: $40
	add  b                                           ; $5ea6: $80

jr_02d_5ea7:
	ld   a, $86                                      ; $5ea7: $3e $86
	nop                                              ; $5ea9: $00
	add  d                                           ; $5eaa: $82
	ld   [$1080], sp                                 ; $5eab: $08 $80 $10
	add  b                                           ; $5eae: $80
	ld   h, b                                        ; $5eaf: $60
	add  [hl]                                        ; $5eb0: $86
	nop                                              ; $5eb1: $00
	add  d                                           ; $5eb2: $82
	ld   [$1080], sp                                 ; $5eb3: $08 $80 $10
	add  b                                           ; $5eb6: $80
	jr   nz, jr_02d_5e3f                             ; $5eb7: $20 $86

	nop                                              ; $5eb9: $00
	add  d                                           ; $5eba: $82
	inc  b                                           ; $5ebb: $04
	add  b                                           ; $5ebc: $80

jr_02d_5ebd:
	ld   [$1080], sp                                 ; $5ebd: $08 $80 $10
	add  [hl]                                        ; $5ec0: $86
	nop                                              ; $5ec1: $00
	add  b                                           ; $5ec2: $80
	sub  $80                                         ; $5ec3: $d6 $80
	xor  d                                           ; $5ec5: $aa
	add  b                                           ; $5ec6: $80
	sub  d                                           ; $5ec7: $92
	add  b                                           ; $5ec8: $80
	cp   $86                                         ; $5ec9: $fe $86
	nop                                              ; $5ecb: $00
	add  b                                           ; $5ecc: $80
	cp   $80                                         ; $5ecd: $fe $80
	db   $10                                         ; $5ecf: $10
	add  b                                           ; $5ed0: $80
	cp   $80                                         ; $5ed1: $fe $80
	db   $10                                         ; $5ed3: $10
	add  [hl]                                        ; $5ed4: $86
	nop                                              ; $5ed5: $00
	add  b                                           ; $5ed6: $80
	jr   z, jr_02d_5e59                              ; $5ed7: $28 $80

	ld   c, b                                        ; $5ed9: $48
	add  b                                           ; $5eda: $80
	adc  b                                           ; $5edb: $88
	add  b                                           ; $5edc: $80
	add  [hl]                                        ; $5edd: $86
	add  [hl]                                        ; $5ede: $86
	nop                                              ; $5edf: $00
	add  h                                           ; $5ee0: $84
	ld   [bc], a                                     ; $5ee1: $02
	add  b                                           ; $5ee2: $80
	inc  a                                           ; $5ee3: $3c
	add  [hl]                                        ; $5ee4: $86
	nop                                              ; $5ee5: $00
	add  b                                           ; $5ee6: $80
	ld   c, b                                        ; $5ee7: $48
	add  d                                           ; $5ee8: $82
	adc  d                                           ; $5ee9: $8a
	add  b                                           ; $5eea: $80
	add  h                                           ; $5eeb: $84
	add  [hl]                                        ; $5eec: $86
	nop                                              ; $5eed: $00
	add  d                                           ; $5eee: $82
	jr   nz, @-$7e                                   ; $5eef: $20 $80

	db   $10                                         ; $5ef1: $10
	add  b                                           ; $5ef2: $80
	inc  c                                           ; $5ef3: $0c
	adc  d                                           ; $5ef4: $8a
	nop                                              ; $5ef5: $00
	add  b                                           ; $5ef6: $80
	ld   b, b                                        ; $5ef7: $40
	add  b                                           ; $5ef8: $80
	jr   nz, jr_02d_5e81                             ; $5ef9: $20 $86

	nop                                              ; $5efb: $00
	add  h                                           ; $5efc: $84
	and  d                                           ; $5efd: $a2
	add  b                                           ; $5efe: $80
	ld   h, h                                        ; $5eff: $64
	add  [hl]                                        ; $5f00: $86
	nop                                              ; $5f01: $00
	add  b                                           ; $5f02: $80
	jr   nz, jr_02d_5e85                             ; $5f03: $20 $80

	db   $10                                         ; $5f05: $10
	add  b                                           ; $5f06: $80
	ld   [$0480], sp                                 ; $5f07: $08 $80 $04
	add  [hl]                                        ; $5f0a: $86
	nop                                              ; $5f0b: $00
	add  d                                           ; $5f0c: $82
	add  b                                           ; $5f0d: $80
	add  b                                           ; $5f0e: $80
	sub  b                                           ; $5f0f: $90
	add  b                                           ; $5f10: $80
	adc  [hl]                                        ; $5f11: $8e
	adc  d                                           ; $5f12: $8a
	nop                                              ; $5f13: $00
	add  d                                           ; $5f14: $82
	jr   nz, jr_02d_5e97                             ; $5f15: $20 $80

	cp   $80                                         ; $5f17: $fe $80
	db   $10                                         ; $5f19: $10
	add  b                                           ; $5f1a: $80
	ld   [$0480], sp                                 ; $5f1b: $08 $80 $04
	sub  d                                           ; $5f1e: $92
	nop                                              ; $5f1f: $00
	add  b                                           ; $5f20: $80
	cp   $82                                         ; $5f21: $fe $82
	db   $10                                         ; $5f23: $10
	add  b                                           ; $5f24: $80
	jr   jr_02d_5ea7                                 ; $5f25: $18 $80

	inc  d                                           ; $5f27: $14
	add  b                                           ; $5f28: $80
	ld   [de], a                                     ; $5f29: $12
	add  d                                           ; $5f2a: $82
	nop                                              ; $5f2b: $00
	add  b                                           ; $5f2c: $80
	ld   b, b                                        ; $5f2d: $40
	add  b                                           ; $5f2e: $80
	ld   b, h                                        ; $5f2f: $44
	add  b                                           ; $5f30: $80
	ldh  a, [c]                                      ; $5f31: $f2
	add  h                                           ; $5f32: $84
	ld   c, d                                        ; $5f33: $4a
	add  d                                           ; $5f34: $82
	nop                                              ; $5f35: $00
	add  b                                           ; $5f36: $80

jr_02d_5f37:
	inc  h                                           ; $5f37: $24
	add  b                                           ; $5f38: $80
	ld   [hl+], a                                    ; $5f39: $22
	add  d                                           ; $5f3a: $82

jr_02d_5f3b:
	jr   nz, jr_02d_5ebd                             ; $5f3b: $20 $80

	inc  a                                           ; $5f3d: $3c
	add  b                                           ; $5f3e: $80
	ld   b, d                                        ; $5f3f: $42
	nop                                              ; $5f40: $00

jr_02d_5f41:
	and  b                                           ; $5f41: $a0
	adc  l                                           ; $5f42: $8d
	ldh  [rSB], a                                    ; $5f43: $e0 $01
	ld   b, b                                        ; $5f45: $40
	nop                                              ; $5f46: $00
	add  b                                           ; $5f47: $80
	ld   c, b                                        ; $5f48: $48
	add  b                                           ; $5f49: $80
	ld   d, h                                        ; $5f4a: $54
	add  b                                           ; $5f4b: $80
	ld   [$7680], a                                  ; $5f4c: $ea $80 $76
	add  b                                           ; $5f4f: $80
	ld   c, b                                        ; $5f50: $48
	add  b                                           ; $5f51: $80
	ld   a, [hl]                                     ; $5f52: $7e
	add  b                                           ; $5f53: $80
	ret  z                                           ; $5f54: $c8

	add  b                                           ; $5f55: $80
	nop                                              ; $5f56: $00
	add  d                                           ; $5f57: $82
	ld   c, b                                        ; $5f58: $48
	add  b                                           ; $5f59: $80
	ld   d, b                                        ; $5f5a: $50
	add  b                                           ; $5f5b: $80
	sbc  $80                                         ; $5f5c: $de $80
	ld   l, b                                        ; $5f5e: $68
	add  b                                           ; $5f5f: $80
	ld   c, [hl]                                     ; $5f60: $4e
	add  b                                           ; $5f61: $80
	ld   c, b                                        ; $5f62: $48
	add  b                                           ; $5f63: $80
	nop                                              ; $5f64: $00
	add  b                                           ; $5f65: $80
	db   $10                                         ; $5f66: $10
	add  b                                           ; $5f67: $80
	ld   [$fe80], sp                                 ; $5f68: $08 $80 $fe
	add  b                                           ; $5f6b: $80
	db   $10                                         ; $5f6c: $10
	add  b                                           ; $5f6d: $80
	ld   e, $82                                      ; $5f6e: $1e $82
	ld   [de], a                                     ; $5f70: $12
	add  b                                           ; $5f71: $80
	nop                                              ; $5f72: $00
	add  b                                           ; $5f73: $80
	adc  b                                           ; $5f74: $88
	add  b                                           ; $5f75: $80
	ld   c, b                                        ; $5f76: $48
	add  b                                           ; $5f77: $80
	inc  a                                           ; $5f78: $3c
	add  b                                           ; $5f79: $80
	ret  z                                           ; $5f7a: $c8

	add  b                                           ; $5f7b: $80
	ld   a, $80                                      ; $5f7c: $3e $80
	ld   c, b                                        ; $5f7e: $48
	add  b                                           ; $5f7f: $80
	ld   d, b                                        ; $5f80: $50
	nop                                              ; $5f81: $00
	dec  b                                           ; $5f82: $05
	adc  l                                           ; $5f83: $8d
	rlca                                             ; $5f84: $07
	nop                                              ; $5f85: $00
	db   $fd                                         ; $5f86: $fd
	sbc  b                                           ; $5f87: $98
	nop                                              ; $5f88: $00
	dec  b                                           ; $5f89: $05
	rst  $38                                         ; $5f8a: $ff
	add  b                                           ; $5f8b: $80
	rst  $38                                         ; $5f8c: $ff
	ret  nz                                          ; $5f8d: $c0

	rst  $38                                         ; $5f8e: $ff
	cp   a                                           ; $5f8f: $bf
	adc  b                                           ; $5f90: $88
	nop                                              ; $5f91: $00
	inc  bc                                          ; $5f92: $03
	rst  $38                                         ; $5f93: $ff
	nop                                              ; $5f94: $00
	rst  $38                                         ; $5f95: $ff
	nop                                              ; $5f96: $00
	add  b                                           ; $5f97: $80
	rst  $38                                         ; $5f98: $ff
	adc  b                                           ; $5f99: $88
	nop                                              ; $5f9a: $00
	dec  b                                           ; $5f9b: $05
	rlca                                             ; $5f9c: $07
	inc  b                                           ; $5f9d: $04
	rlca                                             ; $5f9e: $07
	ld   b, $07                                      ; $5f9f: $06 $07
	dec  b                                           ; $5fa1: $05
	adc  b                                           ; $5fa2: $88
	nop                                              ; $5fa3: $00
	ld   b, $ff                                      ; $5fa4: $06 $ff
	ld   [bc], a                                     ; $5fa6: $02
	rst  $38                                         ; $5fa7: $ff
	ld   b, $ff                                      ; $5fa8: $06 $ff
	inc  b                                           ; $5faa: $04
	nop                                              ; $5fab: $00
	add  b                                           ; $5fac: $80
	add  b                                           ; $5fad: $80
	add  b                                           ; $5fae: $80
	ld   b, b                                        ; $5faf: $40
	add  b                                           ; $5fb0: $80
	jr   c, jr_02d_5f3b                              ; $5fb1: $38 $88

	nop                                              ; $5fb3: $00
	add  b                                           ; $5fb4: $80
	jr   nz, jr_02d_5f37                             ; $5fb5: $20 $80

	ld   d, b                                        ; $5fb7: $50
	add  b                                           ; $5fb8: $80
	jr   nz, jr_02d_5f41                             ; $5fb9: $20 $86

	nop                                              ; $5fbb: $00
	add  [hl]                                        ; $5fbc: $86
	db   $10                                         ; $5fbd: $10
	add  [hl]                                        ; $5fbe: $86
	nop                                              ; $5fbf: $00
	add  d                                           ; $5fc0: $82
	ld   c, b                                        ; $5fc1: $48
	add  b                                           ; $5fc2: $80
	adc  b                                           ; $5fc3: $88
	add  b                                           ; $5fc4: $80
	db   $10                                         ; $5fc5: $10
	add  [hl]                                        ; $5fc6: $86
	nop                                              ; $5fc7: $00
	add  h                                           ; $5fc8: $84
	ld   [bc], a                                     ; $5fc9: $02
	add  b                                           ; $5fca: $80
	inc  a                                           ; $5fcb: $3c
	add  [hl]                                        ; $5fcc: $86
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	and  b                                           ; $5fcf: $a0
	add  a                                           ; $5fd0: $87
	ldh  [$80], a                                    ; $5fd1: $e0 $80

jr_02d_5fd3:
	rst  $38                                         ; $5fd3: $ff
	inc  bc                                          ; $5fd4: $03
	ret  nz                                          ; $5fd5: $c0

	rst  $38                                         ; $5fd6: $ff
	add  b                                           ; $5fd7: $80
	rst  $38                                         ; $5fd8: $ff
	add  b                                           ; $5fd9: $80
	ld   e, h                                        ; $5fda: $5c
	add  b                                           ; $5fdb: $80
	ld   l, d                                        ; $5fdc: $6a
	add  b                                           ; $5fdd: $80
	xor  d                                           ; $5fde: $aa
	add  d                                           ; $5fdf: $82
	nop                                              ; $5fe0: $00
	add  b                                           ; $5fe1: $80
	rst  $38                                         ; $5fe2: $ff
	inc  bc                                          ; $5fe3: $03
	nop                                              ; $5fe4: $00
	rst  $38                                         ; $5fe5: $ff
	nop                                              ; $5fe6: $00
	rst  $38                                         ; $5fe7: $ff
	add  b                                           ; $5fe8: $80
	ld   c, [hl]                                     ; $5fe9: $4e
	add  d                                           ; $5fea: $82
	ld   c, b                                        ; $5feb: $48
	add  d                                           ; $5fec: $82
	nop                                              ; $5fed: $00
	add  b                                           ; $5fee: $80
	rst  $38                                         ; $5fef: $ff
	inc  bc                                          ; $5ff0: $03
	nop                                              ; $5ff1: $00
	rst  $38                                         ; $5ff2: $ff
	nop                                              ; $5ff3: $00
	rst  $38                                         ; $5ff4: $ff
	add  d                                           ; $5ff5: $82
	ld   [hl+], a                                    ; $5ff6: $22
	add  b                                           ; $5ff7: $80
	add  $82                                         ; $5ff8: $c6 $82
	nop                                              ; $5ffa: $00
	add  b                                           ; $5ffb: $80
	rst  $38                                         ; $5ffc: $ff
	inc  bc                                          ; $5ffd: $03
	nop                                              ; $5ffe: $00
	rst  $38                                         ; $5fff: $ff
	nop                                              ; $6000: $00
	rst  $38                                         ; $6001: $ff
	add  b                                           ; $6002: $80
	sub  d                                           ; $6003: $92
	add  b                                           ; $6004: $80
	and  [hl]                                        ; $6005: $a6
	add  b                                           ; $6006: $80
	cp   d                                           ; $6007: $ba
	add  d                                           ; $6008: $82
	nop                                              ; $6009: $00
	add  b                                           ; $600a: $80
	rst  $38                                         ; $600b: $ff
	inc  b                                           ; $600c: $04
	nop                                              ; $600d: $00
	rst  $38                                         ; $600e: $ff
	nop                                              ; $600f: $00
	rst  $38                                         ; $6010: $ff
	dec  b                                           ; $6011: $05
	add  a                                           ; $6012: $87
	rlca                                             ; $6013: $07

jr_02d_6014:
	add  b                                           ; $6014: $80
	rst  $38                                         ; $6015: $ff
	inc  b                                           ; $6016: $04
	inc  bc                                          ; $6017: $03
	rst  $38                                         ; $6018: $ff
	ld   bc, $05ff                                   ; $6019: $01 $ff $05
	adc  l                                           ; $601c: $8d
	rlca                                             ; $601d: $07
	nop                                              ; $601e: $00
	rst  $38                                         ; $601f: $ff
	add  a                                           ; $6020: $87
	rlca                                             ; $6021: $07
	ld   [$0705], sp                                 ; $6022: $08 $05 $07
	inc  b                                           ; $6025: $04

jr_02d_6026:
	rlca                                             ; $6026: $07
	ld   b, $07                                      ; $6027: $06 $07
	adc  d                                           ; $6029: $8a
	ld   [hl], b                                     ; $602a: $70
	adc  b                                           ; $602b: $88
	add  e                                           ; $602c: $83
	ld   hl, sp+$01                                  ; $602d: $f8 $01
	jr   nz, jr_02d_60a1                             ; $602f: $20 $70

	add  b                                           ; $6031: $80
	ldh  a, [rDIV]                                   ; $6032: $f0 $04
	jr   nc, jr_02d_6026                             ; $6034: $30 $f0

	db   $10                                         ; $6036: $10
	ldh  a, [$fd]                                    ; $6037: $f0 $fd
	adc  l                                           ; $6039: $8d
	rlca                                             ; $603a: $07
	nop                                              ; $603b: $00
	and  b                                           ; $603c: $a0
	add  e                                           ; $603d: $83
	ld   a, [hl]                                     ; $603e: $7e
	ld   b, $de                                      ; $603f: $06 $de
	cp   $16                                         ; $6041: $fe $16
	cp   $10                                         ; $6043: $fe $10
	db   $fc                                         ; $6045: $fc
	ld   d, b                                        ; $6046: $50
	add  c                                           ; $6047: $81
	ld   [hl], b                                     ; $6048: $70
	nop                                              ; $6049: $00
	jr   nz, jr_02d_5fd3                             ; $604a: $20 $87

	nop                                              ; $604c: $00
	add  b                                           ; $604d: $80
	inc  b                                           ; $604e: $04
	inc  b                                           ; $604f: $04
	dec  bc                                          ; $6050: $0b
	rrca                                             ; $6051: $0f
	inc  d                                           ; $6052: $14
	rra                                              ; $6053: $1f
	rrca                                             ; $6054: $0f
	add  c                                           ; $6055: $81
	nop                                              ; $6056: $00
	add  c                                           ; $6057: $81
	ccf                                              ; $6058: $3f
	add  e                                           ; $6059: $83
	ld   hl, $e102                                   ; $605a: $21 $02 $e1
	rst  $38                                         ; $605d: $ff
	nop                                              ; $605e: $00
	add  b                                           ; $605f: $80
	rst  $38                                         ; $6060: $ff
	add  a                                           ; $6061: $87
	nop                                              ; $6062: $00
	add  b                                           ; $6063: $80
	ld   [$f404], sp                                 ; $6064: $08 $04 $f4
	db   $fc                                         ; $6067: $fc
	ld   a, [bc]                                     ; $6068: $0a
	cp   $fc                                         ; $6069: $fe $fc
	add  d                                           ; $606b: $82
	nop                                              ; $606c: $00
	add  b                                           ; $606d: $80
	rlca                                             ; $606e: $07
	add  d                                           ; $606f: $82
	ld   [$0f80], sp                                 ; $6070: $08 $80 $0f
	add  d                                           ; $6073: $82
	ld   [$0081], sp                                 ; $6074: $08 $81 $00
	add  b                                           ; $6077: $80
	inc  bc                                          ; $6078: $03
	ld   bc, $8000                                   ; $6079: $01 $00 $80
	add  b                                           ; $607c: $80
	add  e                                           ; $607d: $83
	add  b                                           ; $607e: $80
	add  b                                           ; $607f: $80
	add  b                                           ; $6080: $80
	add  c                                           ; $6081: $81
	add  b                                           ; $6082: $80
	add  d                                           ; $6083: $82
	ld   bc, $0080                                   ; $6084: $01 $80 $00
	add  b                                           ; $6087: $80
	db   $10                                         ; $6088: $10
	add  b                                           ; $6089: $80
	ld   a, h                                        ; $608a: $7c
	add  b                                           ; $608b: $80
	inc  d                                           ; $608c: $14
	add  b                                           ; $608d: $80
	ld   a, [hl]                                     ; $608e: $7e
	add  b                                           ; $608f: $80
	db   $10                                         ; $6090: $10
	add  b                                           ; $6091: $80
	jr   z, jr_02d_6014                              ; $6092: $28 $80

	add  $82                                         ; $6094: $c6 $82
	nop                                              ; $6096: $00
	add  b                                           ; $6097: $80
	rlca                                             ; $6098: $07
	add  b                                           ; $6099: $80
	dec  b                                           ; $609a: $05
	add  b                                           ; $609b: $80
	nop                                              ; $609c: $00
	add  b                                           ; $609d: $80
	ld   [bc], a                                     ; $609e: $02
	add  b                                           ; $609f: $80
	inc  bc                                          ; $60a0: $03

jr_02d_60a1:
	add  b                                           ; $60a1: $80
	inc  b                                           ; $60a2: $04
	add  b                                           ; $60a3: $80
	nop                                              ; $60a4: $00
	add  b                                           ; $60a5: $80
	ld   b, b                                        ; $60a6: $40
	add  b                                           ; $60a7: $80
	db   $fc                                         ; $60a8: $fc
	add  b                                           ; $60a9: $80
	db   $f4                                         ; $60aa: $f4
	add  b                                           ; $60ab: $80
	ld   b, b                                        ; $60ac: $40
	add  b                                           ; $60ad: $80
	ld   [hl], b                                     ; $60ae: $70
	add  b                                           ; $60af: $80
	ld   b, b                                        ; $60b0: $40
	add  b                                           ; $60b1: $80
	db   $fc                                         ; $60b2: $fc
	adc  b                                           ; $60b3: $88
	nop                                              ; $60b4: $00
	add  b                                           ; $60b5: $80
	ld   [bc], a                                     ; $60b6: $02
	dec  b                                           ; $60b7: $05
	dec  b                                           ; $60b8: $05
	rlca                                             ; $60b9: $07
	ld   a, [bc]                                     ; $60ba: $0a
	rrca                                             ; $60bb: $0f
	rlca                                             ; $60bc: $07
	nop                                              ; $60bd: $00
	add  b                                           ; $60be: $80
	inc  b                                           ; $60bf: $04
	rlca                                             ; $60c0: $07
	ld   a, [bc]                                     ; $60c1: $0a
	ld   c, $15                                      ; $60c2: $0e $15
	rra                                              ; $60c4: $1f
	ld   l, $3f                                      ; $60c5: $2e $3f
	ld   c, $1f                                      ; $60c7: $0e $1f
	add  b                                           ; $60c9: $80
	rst  $38                                         ; $60ca: $ff
	nop                                              ; $60cb: $00
	ld   c, $80                                      ; $60cc: $0e $80
	rst  $38                                         ; $60ce: $ff
	add  l                                           ; $60cf: $85
	nop                                              ; $60d0: $00
	add  b                                           ; $60d1: $80
	add  b                                           ; $60d2: $80
	add  b                                           ; $60d3: $80
	ld   [$f408], sp                                 ; $60d4: $08 $08 $f4
	db   $fc                                         ; $60d7: $fc
	ld   a, [bc]                                     ; $60d8: $0a

jr_02d_60d9:
	cp   $03                                         ; $60d9: $fe $03

jr_02d_60db:
	rst  $38                                         ; $60db: $ff
	nop                                              ; $60dc: $00
	rst  $38                                         ; $60dd: $ff
	nop                                              ; $60de: $00
	add  b                                           ; $60df: $80
	rst  $38                                         ; $60e0: $ff
	add  d                                           ; $60e1: $82
	nop                                              ; $60e2: $00
	add  hl, bc                                      ; $60e3: $09
	rst  $38                                         ; $60e4: $ff
	add  b                                           ; $60e5: $80
	rst  $38                                         ; $60e6: $ff
	ret  nz                                          ; $60e7: $c0

	rst  $38                                         ; $60e8: $ff
	cp   a                                           ; $60e9: $bf
	rst  $38                                         ; $60ea: $ff
	nop                                              ; $60eb: $00
	rst  $38                                         ; $60ec: $ff
	nop                                              ; $60ed: $00
	add  b                                           ; $60ee: $80
	rst  $38                                         ; $60ef: $ff
	add  d                                           ; $60f0: $82
	nop                                              ; $60f1: $00
	inc  b                                           ; $60f2: $04
	rst  $38                                         ; $60f3: $ff
	nop                                              ; $60f4: $00
	rst  $38                                         ; $60f5: $ff
	nop                                              ; $60f6: $00
	rst  $38                                         ; $60f7: $ff
	xor  [hl]                                        ; $60f8: $ae
	nop                                              ; $60f9: $00
	rlca                                             ; $60fa: $07
	jr   nz, jr_02d_613c                             ; $60fb: $20 $3f

	rrca                                             ; $60fd: $0f
	rra                                              ; $60fe: $1f
	inc  b                                           ; $60ff: $04
	rrca                                             ; $6100: $0f
	nop                                              ; $6101: $00
	inc  b                                           ; $6102: $04
	add  a                                           ; $6103: $87
	nop                                              ; $6104: $00
	add  c                                           ; $6105: $81
	rst  $38                                         ; $6106: $ff
	ld   [bc], a                                     ; $6107: $02
	nop                                              ; $6108: $00
	rst  $38                                         ; $6109: $ff
	ccf                                              ; $610a: $3f
	add  h                                           ; $610b: $84
	ld   hl, $3f00                                   ; $610c: $21 $00 $3f
	add  b                                           ; $610f: $80
	nop                                              ; $6110: $00
	rlca                                             ; $6111: $07
	ld   bc, $fcff                                   ; $6112: $01 $ff $fc
	cp   $08                                         ; $6115: $fe $08
	db   $fc                                         ; $6117: $fc
	nop                                              ; $6118: $00
	ld   [$008b], sp                                 ; $6119: $08 $8b $00
	add  b                                           ; $611c: $80
	rrca                                             ; $611d: $0f
	add  b                                           ; $611e: $80
	ld   [$0f80], sp                                 ; $611f: $08 $80 $0f
	add  d                                           ; $6122: $82
	ld   [$0f80], sp                                 ; $6123: $08 $80 $0f
	add  c                                           ; $6126: $81
	nop                                              ; $6127: $00
	add  b                                           ; $6128: $80
	inc  bc                                          ; $6129: $03
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	add  b                                           ; $612c: $80
	add  b                                           ; $612d: $80
	ld   [bc], a                                     ; $612e: $02
	nop                                              ; $612f: $00
	inc  bc                                          ; $6130: $03
	add  e                                           ; $6131: $83
	add  c                                           ; $6132: $81
	add  b                                           ; $6133: $80
	add  c                                           ; $6134: $81
	nop                                              ; $6135: $00
	add  b                                           ; $6136: $80
	add  b                                           ; $6137: $80

jr_02d_6138:
	add  b                                           ; $6138: $80
	pop  hl                                          ; $6139: $e1
	add  d                                           ; $613a: $82
	add  b                                           ; $613b: $80

jr_02d_613c:
	add  b                                           ; $613c: $80
	add  sp, -$80                                    ; $613d: $e8 $80
	sbc  h                                           ; $613f: $9c
	add  b                                           ; $6140: $80
	adc  c                                           ; $6141: $89
	add  b                                           ; $6142: $80
	nop                                              ; $6143: $00
	add  b                                           ; $6144: $80
	inc  b                                           ; $6145: $04
	add  b                                           ; $6146: $80
	adc  a                                           ; $6147: $8f
	add  b                                           ; $6148: $80
	inc  b                                           ; $6149: $04
	add  b                                           ; $614a: $80
	dec  d                                           ; $614b: $15
	add  b                                           ; $614c: $80
	inc  d                                           ; $614d: $14
	add  b                                           ; $614e: $80
	inc  h                                           ; $614f: $24
	add  b                                           ; $6150: $80
	rst  ToBoot                                         ; $6151: $c7
	add  b                                           ; $6152: $80
	nop                                              ; $6153: $00
	add  b                                           ; $6154: $80
	jr   z, jr_02d_60d9                              ; $6155: $28 $82

	xor  b                                           ; $6157: $a8
	add  d                                           ; $6158: $82
	jr   z, jr_02d_60db                              ; $6159: $28 $80

	ld   a, [hl+]                                    ; $615b: $2a
	add  b                                           ; $615c: $80
	xor  h                                           ; $615d: $ac
	rlca                                             ; $615e: $07
	db   $10                                         ; $615f: $10
	rra                                              ; $6160: $1f
	rlca                                             ; $6161: $07
	rrca                                             ; $6162: $0f
	ld   [bc], a                                     ; $6163: $02
	rlca                                             ; $6164: $07
	nop                                              ; $6165: $00
	ld   [bc], a                                     ; $6166: $02
	add  a                                           ; $6167: $87
	nop                                              ; $6168: $00
	add  c                                           ; $6169: $81
	rst  $38                                         ; $616a: $ff
	ld   bc, $ff0e                                   ; $616b: $01 $0e $ff
	add  b                                           ; $616e: $80
	rra                                              ; $616f: $1f
	rrca                                             ; $6170: $0f
	ld   l, $3f                                      ; $6171: $2e $3f
	ld   c, $1f                                      ; $6173: $0e $1f
	inc  b                                           ; $6175: $04
	ld   c, $00                                      ; $6176: $0e $00
	inc  b                                           ; $6178: $04
	ld   bc, $fcff                                   ; $6179: $01 $ff $fc
	cp   $08                                         ; $617c: $fe $08
	db   $fc                                         ; $617e: $fc
	nop                                              ; $617f: $00
	ld   [$8080], sp                                 ; $6180: $08 $80 $80
	add  h                                           ; $6183: $84
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	rst  $38                                         ; $6186: $ff
	add  e                                           ; $6187: $83
	nop                                              ; $6188: $00
	ld   b, $55                                      ; $6189: $06 $55
	nop                                              ; $618b: $00
	rst  $38                                         ; $618c: $ff
	nop                                              ; $618d: $00
	rst  $38                                         ; $618e: $ff
	nop                                              ; $618f: $00
	xor  d                                           ; $6190: $aa
	jp   nz, $8100                                   ; $6191: $c2 $00 $81

	ld   a, a                                        ; $6194: $7f
	ld   bc, $d5aa                                   ; $6195: $01 $aa $d5
	add  b                                           ; $6198: $80
	rst  $38                                         ; $6199: $ff
	add  [hl]                                        ; $619a: $86
	add  b                                           ; $619b: $80
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	add  c                                           ; $619e: $81
	rst  JumpTable                                         ; $619f: $df
	inc  bc                                          ; $61a0: $03
	sbc  a                                           ; $61a1: $9f
	ld   d, l                                        ; $61a2: $55
	push de                                          ; $61a3: $d5
	ret  nz                                          ; $61a4: $c0

	add  d                                           ; $61a5: $82
	nop                                              ; $61a6: $00
	add  b                                           ; $61a7: $80
	inc  bc                                          ; $61a8: $03
	add  b                                           ; $61a9: $80
	ld   [bc], a                                     ; $61aa: $02
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	add  b                                           ; $61ad: $80
	sbc  $80                                         ; $61ae: $de $80
	xor  h                                           ; $61b0: $ac
	ld   [bc], a                                     ; $61b1: $02
	ld   d, c                                        ; $61b2: $51
	ld   de, $8240                                   ; $61b3: $11 $40 $82
	jr   nz, jr_02d_6138                             ; $61b6: $20 $80

	ret  nz                                          ; $61b8: $c0

	add  b                                           ; $61b9: $80
	ld   bc, $0000                                   ; $61ba: $01 $00 $00
	add  b                                           ; $61bd: $80
	sbc  $80                                         ; $61be: $de $80
	call Call_02d_5180                               ; $61c0: $cd $80 $51
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	add  d                                           ; $61c5: $82
	ld   bc, $c080                                   ; $61c6: $01 $80 $c0
	add  b                                           ; $61c9: $80
	jr   nz, jr_02d_61cc                             ; $61ca: $20 $00

jr_02d_61cc:
	nop                                              ; $61cc: $00
	add  b                                           ; $61cd: $80
	rst  $38                                         ; $61ce: $ff
	add  b                                           ; $61cf: $80
	ld   a, a                                        ; $61d0: $7f
	ld   [bc], a                                     ; $61d1: $02
	dec  d                                           ; $61d2: $15
	sub  l                                           ; $61d3: $95
	add  b                                           ; $61d4: $80
	add  d                                           ; $61d5: $82
	nop                                              ; $61d6: $00
	add  b                                           ; $61d7: $80
	ldh  a, [$80]                                    ; $61d8: $f0 $80
	stop                                             ; $61da: $10 $00
	nop                                              ; $61dc: $00
	add  c                                           ; $61dd: $81
	ei                                               ; $61de: $fb
	inc  bc                                          ; $61df: $03
	cp   $55                                         ; $61e0: $fe $55
	ld   d, e                                        ; $61e2: $53
	inc  bc                                          ; $61e3: $03
	add  a                                           ; $61e4: $87

jr_02d_61e5:
	nop                                              ; $61e5: $00
	add  c                                           ; $61e6: $81
	cp   $01                                         ; $61e7: $fe $01
	xor  e                                           ; $61e9: $ab
	ld   d, l                                        ; $61ea: $55
	add  b                                           ; $61eb: $80
	rst  $38                                         ; $61ec: $ff
	add  [hl]                                        ; $61ed: $86
	ld   bc, $ff80                                   ; $61ee: $01 $80 $ff
	add  h                                           ; $61f1: $84
	add  b                                           ; $61f2: $80
	add  c                                           ; $61f3: $81
	rst  $38                                         ; $61f4: $ff
	add  d                                           ; $61f5: $82
	add  b                                           ; $61f6: $80
	add  b                                           ; $61f7: $80
	cp   a                                           ; $61f8: $bf
	nop                                              ; $61f9: $00
	rst  $38                                         ; $61fa: $ff
	add  h                                           ; $61fb: $84
	nop                                              ; $61fc: $00
	add  b                                           ; $61fd: $80
	ret  nz                                          ; $61fe: $c0

	nop                                              ; $61ff: $00
	ldh  [$82], a                                    ; $6200: $e0 $82
	jr   nz, jr_02d_6206                             ; $6202: $20 $02

	and  b                                           ; $6204: $a0
	cp   a                                           ; $6205: $bf

jr_02d_6206:
	rst  $38                                         ; $6206: $ff
	add  b                                           ; $6207: $80
	inc  bc                                          ; $6208: $03
	adc  d                                           ; $6209: $8a
	nop                                              ; $620a: $00
	add  b                                           ; $620b: $80
	rst  $38                                         ; $620c: $ff
	add  b                                           ; $620d: $80
	ret  nz                                          ; $620e: $c0

	add  d                                           ; $620f: $82
	jr   nz, @-$7e                                   ; $6210: $20 $80

	ld   b, b                                        ; $6212: $40
	add  b                                           ; $6213: $80
	adc  h                                           ; $6214: $8c
	add  b                                           ; $6215: $80
	ld   d, e                                        ; $6216: $53
	add  b                                           ; $6217: $80
	ld   hl, $ff80                                   ; $6218: $21 $80 $ff
	add  b                                           ; $621b: $80
	ret  nz                                          ; $621c: $c0

	add  d                                           ; $621d: $82
	ld   bc, $0080                                   ; $621e: $01 $80 $00
	add  b                                           ; $6221: $80
	inc  c                                           ; $6222: $0c
	add  b                                           ; $6223: $80
	ld   [hl-], a                                    ; $6224: $32
	add  b                                           ; $6225: $80
	ld   hl, $ff80                                   ; $6226: $21 $80 $ff
	add  b                                           ; $6229: $80
	ldh  a, [$82]                                    ; $622a: $f0 $82
	nop                                              ; $622c: $00
	add  b                                           ; $622d: $80
	add  e                                           ; $622e: $83
	ld   bc, $4447                                   ; $622f: $01 $47 $44
	add  b                                           ; $6232: $80
	add  h                                           ; $6233: $84
	inc  bc                                          ; $6234: $03
	inc  b                                           ; $6235: $04
	dec  b                                           ; $6236: $05
	db   $fd                                         ; $6237: $fd
	rst  $38                                         ; $6238: $ff
	add  h                                           ; $6239: $84
	ld   bc, $ff81                                   ; $623a: $01 $81 $ff
	add  d                                           ; $623d: $82
	ld   bc, $fd01                                   ; $623e: $01 $01 $fd
	ld   [bc], a                                     ; $6241: $02
	sbc  l                                           ; $6242: $9d
	nop                                              ; $6243: $00
	add  b                                           ; $6244: $80
	rst  $38                                         ; $6245: $ff
	inc  bc                                          ; $6246: $03
	add  b                                           ; $6247: $80
	rst  $38                                         ; $6248: $ff
	ret  nz                                          ; $6249: $c0

	rst  $38                                         ; $624a: $ff
	adc  b                                           ; $624b: $88
	ldh  [rTMA], a                                   ; $624c: $e0 $06
	cp   a                                           ; $624e: $bf
	rst  $38                                         ; $624f: $ff
	nop                                              ; $6250: $00
	rst  $38                                         ; $6251: $ff
	jr   @+$01                                       ; $6252: $18 $ff

	ccf                                              ; $6254: $3f
	add  [hl]                                        ; $6255: $86
	inc  a                                           ; $6256: $3c
	dec  b                                           ; $6257: $05
	dec  a                                           ; $6258: $3d
	push hl                                          ; $6259: $e5
	rst  $38                                         ; $625a: $ff
	nop                                              ; $625b: $00
	rst  $38                                         ; $625c: $ff
	nop                                              ; $625d: $00
	add  b                                           ; $625e: $80
	rst  $38                                         ; $625f: $ff
	add  h                                           ; $6260: $84
	nop                                              ; $6261: $00
	add  b                                           ; $6262: $80
	jr   c, jr_02d_61e5                              ; $6263: $38 $80

	xor  e                                           ; $6265: $ab
	dec  b                                           ; $6266: $05
	rst  $38                                         ; $6267: $ff
	nop                                              ; $6268: $00
	rst  $38                                         ; $6269: $ff
	nop                                              ; $626a: $00
	rst  $38                                         ; $626b: $ff
	ret  nz                                          ; $626c: $c0

	add  l                                           ; $626d: $85
	nop                                              ; $626e: $00
	add  b                                           ; $626f: $80
	ld   b, $05                                      ; $6270: $06 $05
	ccf                                              ; $6272: $3f
	rst  $38                                         ; $6273: $ff
	nop                                              ; $6274: $00
	rst  $38                                         ; $6275: $ff
	nop                                              ; $6276: $00
	rst  $38                                         ; $6277: $ff
	add  h                                           ; $6278: $84
	nop                                              ; $6279: $00
	add  b                                           ; $627a: $80
	ldh  [$08], a                                    ; $627b: $e0 $08
	xor  h                                           ; $627d: $ac
	db   $ec                                         ; $627e: $ec
	cp   a                                           ; $627f: $bf
	rst  $38                                         ; $6280: $ff
	nop                                              ; $6281: $00
	rst  $38                                         ; $6282: $ff
	nop                                              ; $6283: $00
	rst  $38                                         ; $6284: $ff
	ld   a, a                                        ; $6285: $7f
	add  [hl]                                        ; $6286: $86
	nop                                              ; $6287: $00
	dec  b                                           ; $6288: $05
	ld   [bc], a                                     ; $6289: $02
	add  d                                           ; $628a: $82
	rst  $38                                         ; $628b: $ff
	ld   bc, $03ff                                   ; $628c: $01 $ff $03
	add  b                                           ; $628f: $80
	rst  $38                                         ; $6290: $ff
	add  a                                           ; $6291: $87
	rlca                                             ; $6292: $07
	nop                                              ; $6293: $00
	dec  b                                           ; $6294: $05
	adc  l                                           ; $6295: $8d
	cp   a                                           ; $6296: $bf
	adc  [hl]                                        ; $6297: $8e
	and  b                                           ; $6298: $a0
	add  hl, bc                                      ; $6299: $09
	ld   e, a                                        ; $629a: $5f
	rra                                              ; $629b: $1f
	db   $10                                         ; $629c: $10
	rra                                              ; $629d: $1f
	rlca                                             ; $629e: $07
	rrca                                             ; $629f: $0f
	ld   [bc], a                                     ; $62a0: $02
	rlca                                             ; $62a1: $07
	nop                                              ; $62a2: $00
	ld   [bc], a                                     ; $62a3: $02
	add  b                                           ; $62a4: $80
	rlca                                             ; $62a5: $07
	add  hl, bc                                      ; $62a6: $09
	dec  [hl]                                        ; $62a7: $35
	scf                                              ; $62a8: $37
	ld   c, d                                        ; $62a9: $4a
	ld   a, a                                        ; $62aa: $7f
	or   $c1                                         ; $62ab: $f6 $c1
	ld   b, c                                        ; $62ad: $41
	pop  bc                                          ; $62ae: $c1
	nop                                              ; $62af: $00
	add  b                                           ; $62b0: $80
	add  h                                           ; $62b1: $84
	nop                                              ; $62b2: $00
	add  b                                           ; $62b3: $80
	ld   h, b                                        ; $62b4: $60
	inc  bc                                          ; $62b5: $03
	sub  b                                           ; $62b6: $90
	ldh  a, [rLCDC]                                  ; $62b7: $f0 $40
	jr   nz, @-$7e                                   ; $62b9: $20 $80

	and  $00                                         ; $62bb: $e6 $00
	add  hl, bc                                      ; $62bd: $09
	add  c                                           ; $62be: $81
	rrca                                             ; $62bf: $0f
	ld   bc, $0600                                   ; $62c0: $01 $00 $06
	add  h                                           ; $62c3: $84
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	rlca                                             ; $62c6: $07
	adc  l                                           ; $62c7: $8d
	dec  b                                           ; $62c8: $05
	adc  [hl]                                        ; $62c9: $8e
	db   $fd                                         ; $62ca: $fd
	nop                                              ; $62cb: $00
	ld   [bc], a                                     ; $62cc: $02
	sbc  l                                           ; $62cd: $9d
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	and  b                                           ; $62d0: $a0
	adc  l                                           ; $62d1: $8d
	ldh  [rP1], a                                    ; $62d2: $e0 $00
	ld   h, a                                        ; $62d4: $67
	add  d                                           ; $62d5: $82
	ld   a, $80                                      ; $62d6: $3e $80
	dec  a                                           ; $62d8: $3d
	add  b                                           ; $62d9: $80
	ld   a, $80                                      ; $62da: $3e $80
	inc  a                                           ; $62dc: $3c
	add  b                                           ; $62dd: $80
	ld   a, $80                                      ; $62de: $3e $80
	dec  a                                           ; $62e0: $3d
	ld   bc, $e63e                                   ; $62e1: $01 $3e $e6
	add  b                                           ; $62e4: $80
	ld   b, h                                        ; $62e5: $44
	add  b                                           ; $62e6: $80
	nop                                              ; $62e7: $00
	add  b                                           ; $62e8: $80
	add  hl, sp                                      ; $62e9: $39
	add  h                                           ; $62ea: $84
	ld   b, h                                        ; $62eb: $44
	add  b                                           ; $62ec: $80
	add  hl, sp                                      ; $62ed: $39
	ld   hl, $3600                                   ; $62ee: $21 $00 $36
	adc  a                                           ; $62f1: $8f
	adc  [hl]                                        ; $62f2: $8e
	adc  a                                           ; $62f3: $8f
	add  e                                           ; $62f4: $83
	rlca                                             ; $62f5: $07
	ld   a, [de]                                     ; $62f6: $1a
	rst  JumpTable                                         ; $62f7: $df
	rst  $10                                         ; $62f8: $d7
	ld   e, a                                        ; $62f9: $5f
	ld   d, a                                        ; $62fa: $57
	rst  JumpTable                                         ; $62fb: $df
	jp   nz, $0b07                                   ; $62fc: $c2 $07 $0b

	adc  a                                           ; $62ff: $8f
	ld   d, l                                        ; $6300: $55
	cp   $ee                                         ; $6301: $fe $ee
	cp   $18                                         ; $6303: $fe $18
	db   $fc                                         ; $6305: $fc
	dec  bc                                          ; $6306: $0b
	rra                                              ; $6307: $1f
	dec  e                                           ; $6308: $1d
	rra                                              ; $6309: $1f
	dec  e                                           ; $630a: $1d
	rra                                              ; $630b: $1f
	add  sp, -$04                                    ; $630c: $e8 $fc

jr_02d_630e:
	ld   a, [de]                                     ; $630e: $1a
	cp   $83                                         ; $630f: $fe $83
	add  b                                           ; $6311: $80
	dec  d                                           ; $6312: $15
	add  b                                           ; $6313: $80
	dec  l                                           ; $6314: $2d
	add  b                                           ; $6315: $80
	db   $10                                         ; $6316: $10
	add  b                                           ; $6317: $80
	scf                                              ; $6318: $37
	add  b                                           ; $6319: $80
	ld   b, l                                        ; $631a: $45
	add  b                                           ; $631b: $80
	scf                                              ; $631c: $37
	add  b                                           ; $631d: $80
	db   $10                                         ; $631e: $10
	ld   bc, $af2d                                   ; $631f: $01 $2d $af
	add  b                                           ; $6322: $80
	ld   b, a                                        ; $6323: $47
	add  b                                           ; $6324: $80
	and  a                                           ; $6325: $a7
	add  b                                           ; $6326: $80
	ld   b, a                                        ; $6327: $47
	add  b                                           ; $6328: $80
	ld   h, a                                        ; $6329: $67
	add  b                                           ; $632a: $80
	rla                                              ; $632b: $17
	add  b                                           ; $632c: $80
	ld   h, a                                        ; $632d: $67
	add  b                                           ; $632e: $80
	ld   b, a                                        ; $632f: $47
	ld   bc, $a5a7                                   ; $6330: $01 $a7 $a5
	adc  l                                           ; $6333: $8d
	cp   a                                           ; $6334: $bf
	adc  [hl]                                        ; $6335: $8e
	and  b                                           ; $6336: $a0
	jr   nz, jr_02d_6339                             ; $6337: $20 $00

jr_02d_6339:
	ld   a, a                                        ; $6339: $7f
	jr   jr_02d_637b                                 ; $633a: $18 $3f

	ret  nc                                          ; $633c: $d0

	rst  $38                                         ; $633d: $ff
	cp   b                                           ; $633e: $b8
	rst  $38                                         ; $633f: $ff
	cp   b                                           ; $6340: $b8
	rst  $38                                         ; $6341: $ff
	db   $10                                         ; $6342: $10
	ccf                                              ; $6343: $3f
	ld   e, b                                        ; $6344: $58
	ld   a, a                                        ; $6345: $7f
	ld   [hl], a                                     ; $6346: $77
	ld   a, a                                        ; $6347: $7f
	daa                                              ; $6348: $27
	ldh  a, [$c0]                                    ; $6349: $f0 $c0
	ldh  [$58], a                                    ; $634b: $e0 $58
	ld   hl, sp-$18                                  ; $634d: $f8 $e8
	ld   hl, sp-$18                                  ; $634f: $f8 $e8
	ld   hl, sp+$40                                  ; $6351: $f8 $40
	ldh  [$d0], a                                    ; $6353: $e0 $d0
	ldh  a, [rSVBK]                                  ; $6355: $f0 $70
	ldh  a, [$60]                                    ; $6357: $f0 $60
	add  a                                           ; $6359: $87
	nop                                              ; $635a: $00
	add  b                                           ; $635b: $80
	inc  c                                           ; $635c: $0c
	nop                                              ; $635d: $00
	ld   [de], a                                     ; $635e: $12
	add  c                                           ; $635f: $81
	ld   e, $00                                      ; $6360: $1e $00
	dec  bc                                          ; $6362: $0b
	adc  l                                           ; $6363: $8d
	dec  b                                           ; $6364: $05
	adc  [hl]                                        ; $6365: $8e
	db   $fd                                         ; $6366: $fd
	nop                                              ; $6367: $00
	ld   [bc], a                                     ; $6368: $02
	sbc  l                                           ; $6369: $9d
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	and  b                                           ; $636c: $a0
	add  a                                           ; $636d: $87
	ldh  [$80], a                                    ; $636e: $e0 $80
	rst  $38                                         ; $6370: $ff
	inc  b                                           ; $6371: $04
	ret  nz                                          ; $6372: $c0

	rst  $38                                         ; $6373: $ff
	add  b                                           ; $6374: $80
	rst  $38                                         ; $6375: $ff
	daa                                              ; $6376: $27
	add  b                                           ; $6377: $80
	ld   a, $80                                      ; $6378: $3e $80
	dec  a                                           ; $637a: $3d

jr_02d_637b:
	add  e                                           ; $637b: $83
	inc  a                                           ; $637c: $3c
	inc  b                                           ; $637d: $04
	db   $fc                                         ; $637e: $fc
	rst  $38                                         ; $637f: $ff
	jr   @+$01                                       ; $6380: $18 $ff

	nop                                              ; $6382: $00
	add  b                                           ; $6383: $80
	rst  $38                                         ; $6384: $ff
	add  b                                           ; $6385: $80
	call nz, $ab80                                   ; $6386: $c4 $80 $ab
	add  b                                           ; $6389: $80
	jr   c, jr_02d_630e                              ; $638a: $38 $82

	nop                                              ; $638c: $00
	ld   [$00ff], sp                                 ; $638d: $08 $ff $00
	rst  $38                                         ; $6390: $ff
	nop                                              ; $6391: $00
	rst  $38                                         ; $6392: $ff
	ret                                              ; $6393: $c9


	adc  a                                           ; $6394: $8f
	add  b                                           ; $6395: $80
	ld   b, $84                                      ; $6396: $06 $84
	nop                                              ; $6398: $00
	dec  bc                                          ; $6399: $0b
	ccf                                              ; $639a: $3f
	rst  $38                                         ; $639b: $ff
	nop                                              ; $639c: $00
	rst  $38                                         ; $639d: $ff
	nop                                              ; $639e: $00
	rst  $38                                         ; $639f: $ff
	ld   [de], a                                     ; $63a0: $12
	cp   $40                                         ; $63a1: $fe $40
	db   $ec                                         ; $63a3: $ec
	and  b                                           ; $63a4: $a0
	ldh  [$82], a                                    ; $63a5: $e0 $82
	nop                                              ; $63a7: $00
	add  b                                           ; $63a8: $80
	rst  $38                                         ; $63a9: $ff
	inc  b                                           ; $63aa: $04
	nop                                              ; $63ab: $00
	rst  $38                                         ; $63ac: $ff
	nop                                              ; $63ad: $00
	rst  $38                                         ; $63ae: $ff
	ld   a, a                                        ; $63af: $7f
	add  b                                           ; $63b0: $80
	dec  d                                           ; $63b1: $15
	add  b                                           ; $63b2: $80
	ld   [bc], a                                     ; $63b3: $02
	add  e                                           ; $63b4: $83
	nop                                              ; $63b5: $00
	ld   b, $80                                      ; $63b6: $06 $80
	rst  $38                                         ; $63b8: $ff
	nop                                              ; $63b9: $00
	rst  $38                                         ; $63ba: $ff
	nop                                              ; $63bb: $00
	rst  $38                                         ; $63bc: $ff
	db   $fd                                         ; $63bd: $fd
	add  b                                           ; $63be: $80
	ld   b, a                                        ; $63bf: $47
	add  [hl]                                        ; $63c0: $86
	rlca                                             ; $63c1: $07
	inc  bc                                          ; $63c2: $03
	rst  $38                                         ; $63c3: $ff
	inc  bc                                          ; $63c4: $03
	rst  $38                                         ; $63c5: $ff
	ld   bc, $ff80                                   ; $63c6: $01 $80 $ff
	add  d                                           ; $63c9: $82
	add  b                                           ; $63ca: $80
	add  c                                           ; $63cb: $81
	rst  $38                                         ; $63cc: $ff
	add  b                                           ; $63cd: $80
	add  b                                           ; $63ce: $80
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	add  b                                           ; $63d1: $80
	ld   d, l                                        ; $63d2: $55
	add  c                                           ; $63d3: $81
	ld   a, a                                        ; $63d4: $7f
	nop                                              ; $63d5: $00
	sbc  a                                           ; $63d6: $9f
	add  d                                           ; $63d7: $82
	jr   nz, jr_02d_63da                             ; $63d8: $20 $00

jr_02d_63da:
	ldh  [$80], a                                    ; $63da: $e0 $80
	ret  nz                                          ; $63dc: $c0

	add  c                                           ; $63dd: $81
	nop                                              ; $63de: $00
	add  b                                           ; $63df: $80
	ld   d, l                                        ; $63e0: $55
	add  b                                           ; $63e1: $80
	db   $fc                                         ; $63e2: $fc
	ld   [bc], a                                     ; $63e3: $02
	cp   $c9                                         ; $63e4: $fe $c9
	scf                                              ; $63e6: $37
	add  b                                           ; $63e7: $80
	ld   d, e                                        ; $63e8: $53
	add  b                                           ; $63e9: $80
	adc  h                                           ; $63ea: $8c
	add  b                                           ; $63eb: $80
	ld   b, b                                        ; $63ec: $40
	add  c                                           ; $63ed: $81
	jr   nz, jr_02d_63f1                             ; $63ee: $20 $01

	ld   [hl], l                                     ; $63f0: $75

jr_02d_63f1:
	ld   d, l                                        ; $63f1: $55
	add  b                                           ; $63f2: $80
	ccf                                              ; $63f3: $3f
	ld   [bc], a                                     ; $63f4: $02
	cp   $9f                                         ; $63f5: $fe $9f
	ld   h, c                                        ; $63f7: $61
	add  b                                           ; $63f8: $80
	ld   [hl-], a                                    ; $63f9: $32
	add  b                                           ; $63fa: $80
	inc  c                                           ; $63fb: $0c
	add  b                                           ; $63fc: $80
	nop                                              ; $63fd: $00
	add  c                                           ; $63fe: $81
	ld   bc, $5501                                   ; $63ff: $01 $01 $55
	ld   d, h                                        ; $6402: $54
	add  b                                           ; $6403: $80
	ccf                                              ; $6404: $3f
	ld   [bc], a                                     ; $6405: $02
	rst  JumpTable                                         ; $6406: $df
	db   $d3                                         ; $6407: $d3
	inc  c                                           ; $6408: $0c
	add  b                                           ; $6409: $80
	add  b                                           ; $640a: $80
	add  b                                           ; $640b: $80

jr_02d_640c:
	ld   b, b                                        ; $640c: $40
	add  b                                           ; $640d: $80
	add  b                                           ; $640e: $80
	add  c                                           ; $640f: $81
	nop                                              ; $6410: $00
	add  b                                           ; $6411: $80
	ld   d, l                                        ; $6412: $55
	add  b                                           ; $6413: $80
	rrca                                             ; $6414: $0f
	ld   bc, $e8ef                                   ; $6415: $01 $ef $e8
	add  d                                           ; $6418: $82
	inc  b                                           ; $6419: $04
	nop                                              ; $641a: $00
	rlca                                             ; $641b: $07
	add  b                                           ; $641c: $80
	inc  bc                                          ; $641d: $03
	add  c                                           ; $641e: $81
	nop                                              ; $641f: $00
	add  b                                           ; $6420: $80
	ld   d, l                                        ; $6421: $55
	add  c                                           ; $6422: $81
	rst  $38                                         ; $6423: $ff
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	add  d                                           ; $6426: $82
	ld   bc, $ff81                                   ; $6427: $01 $81 $ff
	add  b                                           ; $642a: $80
	ld   bc, $0000                                   ; $642b: $01 $00 $00
	add  b                                           ; $642e: $80
	ld   d, h                                        ; $642f: $54
	add  d                                           ; $6430: $82
	cp   $ff                                         ; $6431: $fe $ff
	nop                                              ; $6433: $00
	rst  $38                                         ; $6434: $ff
	nop                                              ; $6435: $00
	rst  $38                                         ; $6436: $ff
	nop                                              ; $6437: $00
	rst  $38                                         ; $6438: $ff
	nop                                              ; $6439: $00
	rst  $38                                         ; $643a: $ff
	nop                                              ; $643b: $00
	rst  $38                                         ; $643c: $ff
	nop                                              ; $643d: $00
	rst  $38                                         ; $643e: $ff
	nop                                              ; $643f: $00
	rst  $38                                         ; $6440: $ff
	nop                                              ; $6441: $00
	sub  l                                           ; $6442: $95
	nop                                              ; $6443: $00
	inc  hl                                          ; $6444: $23
	ld   [bc], a                                     ; $6445: $02
	inc  bc                                          ; $6446: $03
	ld   d, l                                        ; $6447: $55
	ld   d, h                                        ; $6448: $54
	xor  e                                           ; $6449: $ab
	xor  d                                           ; $644a: $aa
	add  b                                           ; $644b: $80
	ld   d, l                                        ; $644c: $55
	db   $10                                         ; $644d: $10
	ld   a, [hl+]                                    ; $644e: $2a
	xor  d                                           ; $644f: $aa
	ld   d, b                                        ; $6450: $50
	ret  nc                                          ; $6451: $d0

	sbc  b                                           ; $6452: $98
	ldh  a, [$74]                                    ; $6453: $f0 $74
	add  sp, -$2b                                    ; $6455: $e8 $d5
	rst  JumpTable                                         ; $6457: $df
	ld   b, c                                        ; $6458: $41
	ret  nz                                          ; $6459: $c0

	nop                                              ; $645a: $00
	ret  nz                                          ; $645b: $c0

	ld   b, b                                        ; $645c: $40
	ret  nz                                          ; $645d: $c0

	ld   b, b                                        ; $645e: $40
	add  b                                           ; $645f: $80
	ret  nz                                          ; $6460: $c0

	nop                                              ; $6461: $00
	ld   b, b                                        ; $6462: $40
	add  b                                           ; $6463: $80
	nop                                              ; $6464: $00
	inc  b                                           ; $6465: $04
	jr   nz, jr_02d_6468                             ; $6466: $20 $00

jr_02d_6468:
	ldh  [$f8], a                                    ; $6468: $e0 $f8
	ld   e, $8d                                      ; $646a: $1e $8d
	cp   $00                                         ; $646c: $fe $00
	ei                                               ; $646e: $fb
	adc  l                                           ; $646f: $8d
	db   $e3                                         ; $6470: $e3
	add  h                                           ; $6471: $84
	sbc  a                                           ; $6472: $9f
	add  b                                           ; $6473: $80
	sub  l                                           ; $6474: $95
	add  b                                           ; $6475: $80
	sbc  d                                           ; $6476: $9a
	add  b                                           ; $6477: $80
	add  b                                           ; $6478: $80
	add  d                                           ; $6479: $82

jr_02d_647a:
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00

jr_02d_647c:
	rst  $38                                         ; $647c: $ff
	add  b                                           ; $647d: $80
	db   $10                                         ; $647e: $10
	add  c                                           ; $647f: $81
	rra                                              ; $6480: $1f
	nop                                              ; $6481: $00
	inc  e                                           ; $6482: $1c
	add  b                                           ; $6483: $80
	cp   a                                           ; $6484: $bf
	inc  bc                                          ; $6485: $03
	rst  $38                                         ; $6486: $ff
	db   $fc                                         ; $6487: $fc
	rst  $38                                         ; $6488: $ff
	jr   jr_02d_640c                                 ; $6489: $18 $81

	rst  $38                                         ; $648b: $ff
	nop                                              ; $648c: $00
	add  c                                           ; $648d: $81
	add  c                                           ; $648e: $81
	ld   a, [hl]                                     ; $648f: $7e
	add  h                                           ; $6490: $84
	cp   $06                                         ; $6491: $fe $06
	nop                                              ; $6493: $00
	jr   jr_02d_647a                                 ; $6494: $18 $e4

	db   $fc                                         ; $6496: $fc
	rst  $20                                         ; $6497: $e7
	rst  $38                                         ; $6498: $ff
	db   $ec                                         ; $6499: $ec
	adc  c                                           ; $649a: $89
	db   $ed                                         ; $649b: $ed
	ld   bc, $0001                                   ; $649c: $01 $01 $00
	add  b                                           ; $649f: $80
	rst  $38                                         ; $64a0: $ff

jr_02d_64a1:
	ld   bc, $40bf                                   ; $64a1: $01 $bf $40
	add  b                                           ; $64a4: $80
	xor  b                                           ; $64a5: $a8
	add  b                                           ; $64a6: $80
	ld   d, b                                        ; $64a7: $50
	add  b                                           ; $64a8: $80
	xor  d                                           ; $64a9: $aa
	add  b                                           ; $64aa: $80
	ld   d, h                                        ; $64ab: $54
	add  b                                           ; $64ac: $80

jr_02d_64ad:
	xor  d                                           ; $64ad: $aa
	add  b                                           ; $64ae: $80
	ld   d, h                                        ; $64af: $54
	add  b                                           ; $64b0: $80
	xor  d                                           ; $64b1: $aa
	add  b                                           ; $64b2: $80
	dec  b                                           ; $64b3: $05
	add  b                                           ; $64b4: $80
	ld   [bc], a                                     ; $64b5: $02
	add  b                                           ; $64b6: $80
	ld   bc, $0082                                   ; $64b7: $01 $82 $00
	add  b                                           ; $64ba: $80
	add  b                                           ; $64bb: $80
	add  d                                           ; $64bc: $82
	nop                                              ; $64bd: $00
	add  b                                           ; $64be: $80
	ld   e, a                                        ; $64bf: $5f
	add  b                                           ; $64c0: $80
	xor  a                                           ; $64c1: $af
	add  b                                           ; $64c2: $80
	ld   e, a                                        ; $64c3: $5f
	add  b                                           ; $64c4: $80
	xor  a                                           ; $64c5: $af
	add  b                                           ; $64c6: $80
	ld   d, a                                        ; $64c7: $57
	add  b                                           ; $64c8: $80
	dec  hl                                          ; $64c9: $2b
	add  b                                           ; $64ca: $80
	rla                                              ; $64cb: $17
	add  b                                           ; $64cc: $80
	dec  bc                                          ; $64cd: $0b
	rrca                                             ; $64ce: $0f
	ld   d, l                                        ; $64cf: $55
	rst  $38                                         ; $64d0: $ff
	ld   b, b                                        ; $64d1: $40
	rst  $38                                         ; $64d2: $ff
	ret  nz                                          ; $64d3: $c0

	rst  $38                                         ; $64d4: $ff
	ret  nc                                          ; $64d5: $d0

	rst  $38                                         ; $64d6: $ff
	ldh  a, [rIE]                                    ; $64d7: $f0 $ff
	db   $f4                                         ; $64d9: $f4
	rst  $38                                         ; $64da: $ff
	db   $fc                                         ; $64db: $fc
	rst  $38                                         ; $64dc: $ff
	db   $fd                                         ; $64dd: $fd
	rst  $38                                         ; $64de: $ff
	cp   [hl]                                        ; $64df: $be
	nop                                              ; $64e0: $00
	ld   [de], a                                     ; $64e1: $12
	rlca                                             ; $64e2: $07
	ld   hl, sp+$04                                  ; $64e3: $f8 $04
	db   $fc                                         ; $64e5: $fc
	inc  b                                           ; $64e6: $04
	db   $fc                                         ; $64e7: $fc
	nop                                              ; $64e8: $00
	db   $fc                                         ; $64e9: $fc
	ld   [bc], a                                     ; $64ea: $02
	cp   $02                                         ; $64eb: $fe $02
	cp   $02                                         ; $64ed: $fe $02
	cp   $02                                         ; $64ef: $fe $02
	cp   $fd                                         ; $64f1: $fe $fd
	ccf                                              ; $64f3: $3f
	ld   a, $80                                      ; $64f4: $3e $80
	ccf                                              ; $64f6: $3f
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	add  [hl]                                        ; $64f9: $86
	jr   nz, jr_02d_647c                             ; $64fa: $20 $80

	ccf                                              ; $64fc: $3f
	dec  b                                           ; $64fd: $05
	adc  b                                           ; $64fe: $88
	ret  z                                           ; $64ff: $c8

	ld   e, l                                        ; $6500: $5d
	sbc  l                                           ; $6501: $9d
	sbc  h                                           ; $6502: $9c
	inc  e                                           ; $6503: $1c
	add  b                                           ; $6504: $80
	ld   b, c                                        ; $6505: $41
	add  b                                           ; $6506: $80
	ld   b, l                                        ; $6507: $45
	add  b                                           ; $6508: $80
	ld   b, [hl]                                     ; $6509: $46
	add  b                                           ; $650a: $80
	ld   b, b                                        ; $650b: $40
	add  b                                           ; $650c: $80
	ld   a, [hl]                                     ; $650d: $7e
	add  b                                           ; $650e: $80
	ld   b, c                                        ; $650f: $41
	add  b                                           ; $6510: $80
	ld   a, b                                        ; $6511: $78
	ld   b, $74                                      ; $6512: $06 $74
	ld   [hl], a                                     ; $6514: $77
	dec  bc                                          ; $6515: $0b
	adc  [hl]                                        ; $6516: $8e
	add  a                                           ; $6517: $87
	adc  l                                           ; $6518: $8d
	dec  c                                           ; $6519: $0d
	add  c                                           ; $651a: $81
	add  c                                           ; $651b: $81
	add  b                                           ; $651c: $80
	db   $fc                                         ; $651d: $fc
	add  b                                           ; $651e: $80
	jr   c, jr_02d_64a1                              ; $651f: $38 $80

	jr   nc, jr_02d_6523                             ; $6521: $30 $00

jr_02d_6523:
	ld   [hl-], a                                    ; $6523: $32
	add  c                                           ; $6524: $81
	inc  sp                                          ; $6525: $33
	nop                                              ; $6526: $00
	ld   [hl-], a                                    ; $6527: $32
	add  c                                           ; $6528: $81
	inc  sp                                          ; $6529: $33
	add  d                                           ; $652a: $82
	jr   nc, jr_02d_64ad                             ; $652b: $30 $80

	ld   [hl], h                                     ; $652d: $74
	add  b                                           ; $652e: $80
	halt                                             ; $652f: $76
	add  b                                           ; $6530: $80
	ld   [hl], a                                     ; $6531: $77
	add  d                                           ; $6532: $82
	ld   a, e                                        ; $6533: $7b
	add  b                                           ; $6534: $80
	dec  a                                           ; $6535: $3d
	add  b                                           ; $6536: $80
	ld   e, b                                        ; $6537: $58
	add  b                                           ; $6538: $80
	ld   b, b                                        ; $6539: $40
	add  h                                           ; $653a: $84
	ld   a, a                                        ; $653b: $7f
	add  b                                           ; $653c: $80
	cp   [hl]                                        ; $653d: $be
	add  b                                           ; $653e: $80
	sbc  $01                                         ; $653f: $de $01

jr_02d_6541:
	db   $ec                                         ; $6541: $ec
	db   $ed                                         ; $6542: $ed
	add  b                                           ; $6543: $80
	push hl                                          ; $6544: $e5

jr_02d_6545:
	add  b                                           ; $6545: $80
	dec  b                                           ; $6546: $05
	inc  b                                           ; $6547: $04
	ld   bc, $3630                                   ; $6548: $01 $30 $36
	ld   h, c                                        ; $654b: $61
	ld   h, a                                        ; $654c: $67
	add  b                                           ; $654d: $80
	ld   b, a                                        ; $654e: $47
	add  b                                           ; $654f: $80
	rst  ToBoot                                         ; $6550: $c7
	inc  b                                           ; $6551: $04
	add  a                                           ; $6552: $87
	add  l                                           ; $6553: $85
	add  d                                           ; $6554: $82
	add  l                                           ; $6555: $85
	dec  b                                           ; $6556: $05
	add  b                                           ; $6557: $80
	dec  bc                                          ; $6558: $0b
	ld   d, $03                                      ; $6559: $16 $03
	ld   [bc], a                                     ; $655b: $02
	dec  c                                           ; $655c: $0d
	db   $fc                                         ; $655d: $fc
	xor  $ff                                         ; $655e: $ee $ff
	reti                                             ; $6560: $d9


	rst  $38                                         ; $6561: $ff
	and  a                                           ; $6562: $a7
	rst  $38                                         ; $6563: $ff
	ld   h, b                                        ; $6564: $60

jr_02d_6565:
	rst  $38                                         ; $6565: $ff
	db   $f4                                         ; $6566: $f4
	rst  $38                                         ; $6567: $ff
	db   $e3                                         ; $6568: $e3
	rst  $38                                         ; $6569: $ff
	add  hl, bc                                      ; $656a: $09

jr_02d_656b:
	sbc  a                                           ; $656b: $9f
	inc  b                                           ; $656c: $04
	rst  $38                                         ; $656d: $ff

jr_02d_656e:
	ld   a, h                                        ; $656e: $7c
	rst  $38                                         ; $656f: $ff
	db   $fd                                         ; $6570: $fd
	add  c                                           ; $6571: $81
	rst  $38                                         ; $6572: $ff
	ld   [bc], a                                     ; $6573: $02
	ld   [bc], a                                     ; $6574: $02
	rst  $38                                         ; $6575: $ff
	ld   b, $81                                      ; $6576: $06 $81
	rst  $38                                         ; $6578: $ff
	inc  c                                           ; $6579: $0c
	ld   e, l                                        ; $657a: $5d
	ldh  [c], a                                      ; $657b: $e2
	ld   b, b                                        ; $657c: $40
	ldh  [$c0], a                                    ; $657d: $e0 $c0
	ldh  a, [$88]                                    ; $657f: $f0 $88
	ld   hl, sp+$1e                                  ; $6581: $f8 $1e
	cp   $15                                         ; $6583: $fe $15
	rst  $38                                         ; $6585: $ff
	xor  d                                           ; $6586: $aa
	add  c                                           ; $6587: $81
	rst  $38                                         ; $6588: $ff
	nop                                              ; $6589: $00
	ld   a, a                                        ; $658a: $7f
	add  c                                           ; $658b: $81
	add  b                                           ; $658c: $80
	add  d                                           ; $658d: $82
	nop                                              ; $658e: $00
	add  b                                           ; $658f: $80
	rra                                              ; $6590: $1f
	ld   b, $5f                                      ; $6591: $06 $5f
	rst  $38                                         ; $6593: $ff
	and  l                                           ; $6594: $a5
	rst  $38                                         ; $6595: $ff
	ld   hl, sp-$01                                  ; $6596: $f8 $ff

jr_02d_6598:
	db   $fd                                         ; $6598: $fd
	add  e                                           ; $6599: $83
	nop                                              ; $659a: $00
	inc  b                                           ; $659b: $04
	ld   c, b                                        ; $659c: $48
	ld   a, b                                        ; $659d: $78
	jr   c, jr_02d_6598                              ; $659e: $38 $f8

	ld   [$f883], sp                                 ; $65a0: $08 $83 $f8
	add  b                                           ; $65a3: $80
	add  hl, bc                                      ; $65a4: $09
	add  b                                           ; $65a5: $80
	ld   sp, $3201                                   ; $65a6: $31 $01 $32
	inc  sp                                          ; $65a9: $33
	add  b                                           ; $65aa: $80
	ld   [hl], e                                     ; $65ab: $73
	nop                                              ; $65ac: $00
	ld   h, h                                        ; $65ad: $64
	add  c                                           ; $65ae: $81
	ld   h, a                                        ; $65af: $67
	add  b                                           ; $65b0: $80
	rst  $20                                         ; $65b1: $e7
	add  b                                           ; $65b2: $80
	rst  ToBoot                                         ; $65b3: $c7
	ld   bc, $f230                                   ; $65b4: $01 $30 $f2
	add  b                                           ; $65b7: $80
	or   $03                                         ; $65b8: $f6 $03
	or   h                                           ; $65ba: $b4
	db   $f4                                         ; $65bb: $f4
	jr   nc, jr_02d_656e                             ; $65bc: $30 $b0

	add  d                                           ; $65be: $82
	jr   nc, jr_02d_6541                             ; $65bf: $30 $80

	inc  sp                                          ; $65c1: $33
	add  b                                           ; $65c2: $80
	jr   nc, jr_02d_6545                             ; $65c3: $30 $80

	ld   b, $05                                      ; $65c5: $06 $05
	ld   a, [bc]                                     ; $65c7: $0a
	ld   c, $16                                      ; $65c8: $0e $16
	ld   e, $33                                      ; $65ca: $1e $33
	ccf                                              ; $65cc: $3f
	add  d                                           ; $65cd: $82
	nop                                              ; $65ce: $00
	add  b                                           ; $65cf: $80
	ld   hl, sp-$80                                  ; $65d0: $f8 $80
	nop                                              ; $65d2: $00
	add  b                                           ; $65d3: $80
	cp   $03                                         ; $65d4: $fe $03
	ld   bc, $01ff                                   ; $65d6: $01 $ff $01
	rst  $38                                         ; $65d9: $ff
	add  b                                           ; $65da: $80
	nop                                              ; $65db: $00
	add  b                                           ; $65dc: $80
	rst  $38                                         ; $65dd: $ff
	add  d                                           ; $65de: $82
	cp   $80                                         ; $65df: $fe $80
	nop                                              ; $65e1: $00
	add  h                                           ; $65e2: $84
	jr   nz, jr_02d_6565                             ; $65e3: $20 $80

	ccf                                              ; $65e5: $3f
	add  b                                           ; $65e6: $80
	jr   nz, jr_02d_656b                             ; $65e7: $20 $82

	and  b                                           ; $65e9: $a0
	add  b                                           ; $65ea: $80
	nop                                              ; $65eb: $00
	add  h                                           ; $65ec: $84
	ld   b, b                                        ; $65ed: $40
	add  b                                           ; $65ee: $80
	ld   a, [hl]                                     ; $65ef: $7e
	add  [hl]                                        ; $65f0: $86
	ld   b, b                                        ; $65f1: $40
	add  h                                           ; $65f2: $84
	add  c                                           ; $65f3: $81
	add  b                                           ; $65f4: $80
	db   $fd                                         ; $65f5: $fd
	add  h                                           ; $65f6: $84
	add  c                                           ; $65f7: $81
	add  b                                           ; $65f8: $80
	add  b                                           ; $65f9: $80
	nop                                              ; $65fa: $00
	db   $fc                                         ; $65fb: $fc
	adc  c                                           ; $65fc: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65fd: $cf
	nop                                              ; $65fe: $00
	ret                                              ; $65ff: $c9


	add  b                                           ; $6600: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6601: $cf
	ld   bc, $adff                                   ; $6602: $01 $ff $ad
	add  e                                           ; $6605: $83
	xor  b                                           ; $6606: $a8
	add  d                                           ; $6607: $82
	xor  h                                           ; $6608: $ac
	add  b                                           ; $6609: $80
	xor  [hl]                                        ; $660a: $ae
	add  d                                           ; $660b: $82
	xor  a                                           ; $660c: $af
	add  d                                           ; $660d: $82
	ei                                               ; $660e: $fb
	adc  d                                           ; $660f: $8a
	ld   a, d                                        ; $6610: $7a
	inc  c                                           ; $6611: $0c
	rst  JumpTable                                         ; $6612: $df
	ld   hl, sp-$18                                  ; $6613: $f8 $e8
	rst  $38                                         ; $6615: $ff
	cp   a                                           ; $6616: $bf
	db   $fc                                         ; $6617: $fc
	or   h                                           ; $6618: $b4
	db   $fc                                         ; $6619: $fc
	sbc  h                                           ; $661a: $9c
	db   $fc                                         ; $661b: $fc
	call nz, $ecfc                                   ; $661c: $c4 $fc $ec
	add  c                                           ; $661f: $81
	db   $fc                                         ; $6620: $fc
	ld   [bc], a                                     ; $6621: $02
	add  a                                           ; $6622: $87
	rst  $38                                         ; $6623: $ff
	dec  bc                                          ; $6624: $0b
	add  b                                           ; $6625: $80
	ld   d, b                                        ; $6626: $50
	ld   b, $a8                                      ; $6627: $06 $a8
	ld   a, [$d822]                                  ; $6629: $fa $22 $d8
	ld   d, d                                        ; $662c: $52
	xor  [hl]                                        ; $662d: $ae
	xor  d                                           ; $662e: $aa
	add  b                                           ; $662f: $80
	ld   d, b                                        ; $6630: $50
	inc  b                                           ; $6631: $04
	jp   nc, $89ba                                   ; $6632: $d2 $ba $89

	ldh  [rIE], a                                    ; $6635: $e0 $ff
	add  c                                           ; $6637: $81
	nop                                              ; $6638: $00
	add  b                                           ; $6639: $80
	ld   h, a                                        ; $663a: $67
	dec  b                                           ; $663b: $05
	sub  h                                           ; $663c: $94
	rst  $30                                         ; $663d: $f7
	di                                               ; $663e: $f3
	pop  af                                          ; $663f: $f1
	ld   bc, $8061                                   ; $6640: $01 $61 $80
	inc  b                                           ; $6643: $04
	ld   [bc], a                                     ; $6644: $02
	cp   $00                                         ; $6645: $fe $00
	rst  $38                                         ; $6647: $ff
	add  c                                           ; $6648: $81
	nop                                              ; $6649: $00
	add  b                                           ; $664a: $80
	ldh  [$03], a                                    ; $664b: $e0 $03
	ld   h, $e6                                      ; $664d: $26 $e6
	sub  $96                                         ; $664f: $d6 $96
	add  b                                           ; $6651: $80
	and  [hl]                                        ; $6652: $a6
	add  b                                           ; $6653: $80
	inc  b                                           ; $6654: $04
	ld   [bc], a                                     ; $6655: $02
	add  l                                           ; $6656: $85
	rst  $38                                         ; $6657: $ff
	ld   a, [$0081]                                  ; $6658: $fa $81 $00
	add  b                                           ; $665b: $80
	ret  nz                                          ; $665c: $c0

	ld   a, [bc]                                     ; $665d: $0a
	rra                                              ; $665e: $1f
	rst  $38                                         ; $665f: $ff
	rst  ToBoot                                         ; $6660: $c7
	rst  $20                                         ; $6661: $e7
	ret  nz                                          ; $6662: $c0

	ret  c                                           ; $6663: $d8

	jp   c, $26db                                    ; $6664: $da $db $26

	rlca                                             ; $6667: $07
	ld   b, $80                                      ; $6668: $06 $80
	rst  $38                                         ; $666a: $ff
	add  c                                           ; $666b: $81
	rst  $28                                         ; $666c: $ef
	add  hl, bc                                      ; $666d: $09
	ld   [$696f], a                                  ; $666e: $ea $6f $69
	ld   l, a                                        ; $6671: $6f
	ld   l, c                                        ; $6672: $69
	ld   l, a                                        ; $6673: $6f
	ld   l, c                                        ; $6674: $69
	ld   l, a                                        ; $6675: $6f
	ld   d, l                                        ; $6676: $55
	rst  ToBoot                                         ; $6677: $c7
	add  b                                           ; $6678: $80
	db   $db                                         ; $6679: $db
	add  b                                           ; $667a: $80
	add  b                                           ; $667b: $80
	add  b                                           ; $667c: $80
	add  e                                           ; $667d: $83
	add  b                                           ; $667e: $80
	or   a                                           ; $667f: $b7
	add  b                                           ; $6680: $80
	ld   b, $80                                      ; $6681: $06 $80
	inc  c                                           ; $6683: $0c
	inc  bc                                          ; $6684: $03
	ret  c                                           ; $6685: $d8

	reti                                             ; $6686: $d9


	ld   d, c                                        ; $6687: $51
	ld   d, b                                        ; $6688: $50
	add  b                                           ; $6689: $80
	ld   d, a                                        ; $668a: $57
	add  b                                           ; $668b: $80
	and  b                                           ; $668c: $a0
	add  b                                           ; $668d: $80
	add  b                                           ; $668e: $80
	add  b                                           ; $668f: $80
	ccf                                              ; $6690: $3f
	add  b                                           ; $6691: $80
	nop                                              ; $6692: $00
	add  b                                           ; $6693: $80
	ld   bc, $aa03                                   ; $6694: $01 $03 $aa
	cp   $54                                         ; $6697: $fe $54
	nop                                              ; $6699: $00
	add  b                                           ; $669a: $80
	rst  $30                                         ; $669b: $f7
	add  b                                           ; $669c: $80
	rlca                                             ; $669d: $07
	dec  bc                                          ; $669e: $0b
	dec  bc                                          ; $669f: $0b
	rrca                                             ; $66a0: $0f
	push hl                                          ; $66a1: $e5
	rst  $28                                         ; $66a2: $ef
	inc  bc                                          ; $66a3: $03
	ld   a, [de]                                     ; $66a4: $1a
	call $caf5                                       ; $66a5: $cd $f5 $ca
	ld   a, [$fde2]                                  ; $66a8: $fa $e2 $fd
	add  b                                           ; $66ab: $80
	ld   hl, sp-$80                                  ; $66ac: $f8 $80
	push hl                                          ; $66ae: $e5
	add  b                                           ; $66af: $80
	dec  e                                           ; $66b0: $1d
	add  b                                           ; $66b1: $80
	db   $fd                                         ; $66b2: $fd
	add  b                                           ; $66b3: $80
	ld   a, [hl]                                     ; $66b4: $7e
	add  b                                           ; $66b5: $80
	ccf                                              ; $66b6: $3f
	add  b                                           ; $66b7: $80
	rra                                              ; $66b8: $1f
	add  b                                           ; $66b9: $80
	cp   a                                           ; $66ba: $bf
	rlca                                             ; $66bb: $07
	jr   nz, jr_02d_66f6                             ; $66bc: $20 $38

	ld   e, l                                        ; $66be: $5d
	rst  ToBoot                                         ; $66bf: $c7
	inc  d                                           ; $66c0: $14
	rst  $10                                         ; $66c1: $d7
	sub  [hl]                                        ; $66c2: $96
	rst  $10                                         ; $66c3: $d7
	add  b                                           ; $66c4: $80
	nop                                              ; $66c5: $00
	add  b                                           ; $66c6: $80
	jr   jr_02d_66d0                                 ; $66c7: $18 $07

	ld   l, b                                        ; $66c9: $68
	ld   a, h                                        ; $66ca: $7c
	xor  e                                           ; $66cb: $ab
	cp   a                                           ; $66cc: $bf
	nop                                              ; $66cd: $00
	rst  $38                                         ; $66ce: $ff
	di                                               ; $66cf: $f3

jr_02d_66d0:
	inc  c                                           ; $66d0: $0c
	add  d                                           ; $66d1: $82
	ld   e, $80                                      ; $66d2: $1e $80
	inc  c                                           ; $66d4: $0c
	add  d                                           ; $66d5: $82
	nop                                              ; $66d6: $00
	add  b                                           ; $66d7: $80
	ld   a, a                                        ; $66d8: $7f
	ld   c, $49                                      ; $66d9: $0e $49
	rst  $38                                         ; $66db: $ff
	add  b                                           ; $66dc: $80
	ld   a, a                                        ; $66dd: $7f
	ld   c, c                                        ; $66de: $49
	ld   a, a                                        ; $66df: $7f
	ld   [hl], $7f                                   ; $66e0: $36 $7f
	nop                                              ; $66e2: $00
	ld   a, a                                        ; $66e3: $7f
	ret                                              ; $66e4: $c9


	rst  $38                                         ; $66e5: $ff
	ld   a, a                                        ; $66e6: $7f
	nop                                              ; $66e7: $00
	ld   a, [$cf81]                                  ; $66e8: $fa $81 $cf
	nop                                              ; $66eb: $00
	call z, $cf81                                    ; $66ec: $cc $81 $cf
	nop                                              ; $66ef: $00
	adc  $83                                         ; $66f0: $ce $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66f2: $cf
	ld   bc, $ffc8                                   ; $66f3: $01 $c8 $ff

jr_02d_66f6:
	add  [hl]                                        ; $66f6: $86
	rst  $10                                         ; $66f7: $d7
	add  b                                           ; $66f8: $80
	ld   l, e                                        ; $66f9: $6b
	add  b                                           ; $66fa: $80
	xor  e                                           ; $66fb: $ab
	add  b                                           ; $66fc: $80
	res  0, b                                        ; $66fd: $cb $80
	ldh  a, [$80]                                    ; $66ff: $f0 $80
	cp   d                                           ; $6701: $ba
	add  b                                           ; $6702: $80
	jp   c, $e280                                    ; $6703: $da $80 $e2

	add  d                                           ; $6706: $82
	ld   a, [$f280]                                  ; $6707: $fa $80 $f2
	add  b                                           ; $670a: $80
	jp   z, $3a80                                    ; $670b: $ca $80 $3a

	nop                                              ; $670e: $00
	sub  a                                           ; $670f: $97
	add  c                                           ; $6710: $81
	db   $fc                                         ; $6711: $fc
	rrca                                             ; $6712: $0f
	ret  z                                           ; $6713: $c8

	cp   $9e                                         ; $6714: $fe $9e
	rst  $38                                         ; $6716: $ff
	cp   e                                           ; $6717: $bb
	cp   $f6                                         ; $6718: $fe $f6
	db   $fd                                         ; $671a: $fd
	db   $ed                                         ; $671b: $ed
	ld   a, [$f2da]                                  ; $671c: $fa $da $f2
	ld   c, l                                        ; $671f: $4d
	add  d                                           ; $6720: $82
	ret  nz                                          ; $6721: $c0

	ld   b, d                                        ; $6722: $42
	add  b                                           ; $6723: $80
	ld   hl, $0080                                   ; $6724: $21 $80 $00
	dec  bc                                          ; $6727: $0b
	inc  h                                           ; $6728: $24
	ld   a, a                                        ; $6729: $7f
	rra                                              ; $672a: $1f
	rst  $38                                         ; $672b: $ff
	ld   [hl-], a                                    ; $672c: $32
	rst  $38                                         ; $672d: $ff
	ld   a, h                                        ; $672e: $7c
	rst  $38                                         ; $672f: $ff
	cp   [hl]                                        ; $6730: $be
	ld   c, d                                        ; $6731: $4a
	add  h                                           ; $6732: $84
	add  l                                           ; $6733: $85
	add  b                                           ; $6734: $80
	ld   c, d                                        ; $6735: $4a
	add  c                                           ; $6736: $81
	nop                                              ; $6737: $00
	inc  bc                                          ; $6738: $03
	rst  $38                                         ; $6739: $ff
	add  b                                           ; $673a: $80
	rst  $38                                         ; $673b: $ff
	nop                                              ; $673c: $00
	add  b                                           ; $673d: $80
	rst  $38                                         ; $673e: $ff
	ld   b, $80                                      ; $673f: $06 $80
	cp   [hl]                                        ; $6741: $be
	ld   a, $26                                      ; $6742: $3e $26
	cp   [hl]                                        ; $6744: $be
	dec  h                                           ; $6745: $25
	dec  a                                           ; $6746: $3d
	add  c                                           ; $6747: $81
	nop                                              ; $6748: $00
	inc  bc                                          ; $6749: $03
	rst  $38                                         ; $674a: $ff

jr_02d_674b:
	ld   bc, $00ff                                   ; $674b: $01 $ff $00
	add  b                                           ; $674e: $80
	rst  $38                                         ; $674f: $ff
	inc  b                                           ; $6750: $04
	ld   bc, $ca13                                   ; $6751: $01 $13 $ca
	ld   a, [de]                                     ; $6754: $1a
	jp   $bd80                                       ; $6755: $c3 $80 $bd


jr_02d_6758:
	add  b                                           ; $6758: $80
	nop                                              ; $6759: $00
	ld   bc, $f827                                   ; $675a: $01 $27 $f8
	add  b                                           ; $675d: $80
	rst  $38                                         ; $675e: $ff
	dec  b                                           ; $675f: $05
	ld   c, a                                        ; $6760: $4f
	rst  $38                                         ; $6761: $ff
	ccf                                              ; $6762: $3f
	rst  $38                                         ; $6763: $ff
	ld   c, $a1                                      ; $6764: $0e $a1
	add  b                                           ; $6766: $80
	add  [hl]                                        ; $6767: $86
	add  b                                           ; $6768: $80
	adc  h                                           ; $6769: $8c
	add  b                                           ; $676a: $80
	jr   jr_02d_677f                                 ; $676b: $18 $12

	or   b                                           ; $676d: $b0
	jr   nc, @-$7a                                   ; $676e: $30 $84

	call nz, $eece                                   ; $6770: $c4 $ce $ee
	db   $ec                                         ; $6773: $ec
	db   $fc                                         ; $6774: $fc
	ld   b, e                                        ; $6775: $43
	or   a                                           ; $6776: $b7
	ld   h, b                                        ; $6777: $60
	ld   l, h                                        ; $6778: $6c
	ld   b, e                                        ; $6779: $43
	ld   e, e                                        ; $677a: $5b
	ld   b, a                                        ; $677b: $47
	ld   d, a                                        ; $677c: $57
	rla                                              ; $677d: $17
	scf                                              ; $677e: $37

jr_02d_677f:
	ld   c, $80                                      ; $677f: $0e $80
	ld   l, $1f                                      ; $6781: $2e $1f
	ld   l, [hl]                                     ; $6783: $6e
	ld   [de], a                                     ; $6784: $12
	ld   d, d                                        ; $6785: $52
	ld   d, h                                        ; $6786: $54
	ld   d, l                                        ; $6787: $55
	xor  e                                           ; $6788: $ab
	xor  d                                           ; $6789: $aa
	db   $fc                                         ; $678a: $fc
	db   $fd                                         ; $678b: $fd
	db   $fc                                         ; $678c: $fc
	db   $fd                                         ; $678d: $fd
	jr   nz, jr_02d_67b1                             ; $678e: $20 $21

	ret  c                                           ; $6790: $d8

	sub  c                                           ; $6791: $91
	ret  c                                           ; $6792: $d8

	reti                                             ; $6793: $d9


	ld   c, c                                        ; $6794: $49
	ret  c                                           ; $6795: $d8

	add  d                                           ; $6796: $82
	ld   [hl], l                                     ; $6797: $75
	add  b                                           ; $6798: $80
	cp   d                                           ; $6799: $ba
	jr   nz, @-$3f                                   ; $679a: $20 $bf

	jr   nc, jr_02d_6758                             ; $679c: $30 $ba

	inc  [hl]                                        ; $679e: $34
	or   h                                           ; $679f: $b4
	jr   z, jr_02d_674b                              ; $67a0: $28 $a9

	ld   bc, $8380                                   ; $67a2: $01 $80 $83
	ld   [bc], a                                     ; $67a5: $02
	ld   [hl], c                                     ; $67a6: $71
	ld   a, [hl]                                     ; $67a7: $7e
	rrca                                             ; $67a8: $0f
	add  b                                           ; $67a9: $80
	rlca                                             ; $67aa: $07
	add  b                                           ; $67ab: $80
	inc  bc                                          ; $67ac: $03
	add  b                                           ; $67ad: $80
	ld   bc, $0080                                   ; $67ae: $01 $80 $00

jr_02d_67b1:
	add  d                                           ; $67b1: $82
	cp   $80                                         ; $67b2: $fe $80
	nop                                              ; $67b4: $00
	ld   de, $745e                                   ; $67b5: $11 $5e $74
	rra                                              ; $67b8: $1f
	ld   a, [hl+]                                    ; $67b9: $2a
	ldh  a, [$d1]                                    ; $67ba: $f0 $d1
	add  hl, bc                                      ; $67bc: $09
	add  sp, -$40                                    ; $67bd: $e8 $c0
	pop  af                                          ; $67bf: $f1
	xor  $ff                                         ; $67c0: $ee $ff
	ld   d, l                                        ; $67c2: $55
	rst  $38                                         ; $67c3: $ff
	nop                                              ; $67c4: $00
	rst  $38                                         ; $67c5: $ff
	xor  d                                           ; $67c6: $aa
	ccf                                              ; $67c7: $3f
	add  b                                           ; $67c8: $80
	ld   a, a                                        ; $67c9: $7f
	ld   b, $bf                                      ; $67ca: $06 $bf
	ld   a, a                                        ; $67cc: $7f
	dec  d                                           ; $67cd: $15
	ccf                                              ; $67ce: $3f
	jr   nz, jr_02d_6830                             ; $67cf: $20 $5f

	push de                                          ; $67d1: $d5
	add  e                                           ; $67d2: $83
	ld   a, a                                        ; $67d3: $7f
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	add  e                                           ; $67d6: $83
	rst  $38                                         ; $67d7: $ff
	inc  b                                           ; $67d8: $04
	ld   d, l                                        ; $67d9: $55
	rst  $38                                         ; $67da: $ff
	nop                                              ; $67db: $00
	rst  $38                                         ; $67dc: $ff
	ld   d, l                                        ; $67dd: $55
	add  e                                           ; $67de: $83
	rst  $38                                         ; $67df: $ff
	ld   [bc], a                                     ; $67e0: $02
	ld   bc, $fcff                                   ; $67e1: $01 $ff $fc
	add  c                                           ; $67e4: $81
	cp   $04                                         ; $67e5: $fe $04
	ld   d, h                                        ; $67e7: $54
	db   $fc                                         ; $67e8: $fc
	nop                                              ; $67e9: $00
	db   $fc                                         ; $67ea: $fc
	ld   d, h                                        ; $67eb: $54
	add  e                                           ; $67ec: $83
	db   $fc                                         ; $67ed: $fc
	nop                                              ; $67ee: $00
	adc  d                                           ; $67ef: $8a
	add  c                                           ; $67f0: $81
	rst  $38                                         ; $67f1: $ff
	ld   [$ffb0], sp                                 ; $67f2: $08 $b0 $ff
	cp   $ff                                         ; $67f5: $fe $ff
	pop  de                                          ; $67f7: $d1
	rst  $38                                         ; $67f8: $ff
	ret  nz                                          ; $67f9: $c0

	rst  $38                                         ; $67fa: $ff
	push de                                          ; $67fb: $d5
	add  c                                           ; $67fc: $81
	rst  $38                                         ; $67fd: $ff
	nop                                              ; $67fe: $00
	dec  b                                           ; $67ff: $05
	add  c                                           ; $6800: $81
	rst  $38                                         ; $6801: $ff
	ld   [$fff2], sp                                 ; $6802: $08 $f2 $ff
	ld   a, a                                        ; $6805: $7f
	rst  $38                                         ; $6806: $ff
	daa                                              ; $6807: $27
	rst  $38                                         ; $6808: $ff
	sub  b                                           ; $6809: $90
	rst  $38                                         ; $680a: $ff
	ccf                                              ; $680b: $3f
	add  b                                           ; $680c: $80
	add  c                                           ; $680d: $81
	ld   bc, $4bb9                                   ; $680e: $01 $b9 $4b
	add  l                                           ; $6811: $85
	dec  c                                           ; $6812: $0d
	add  hl, bc                                      ; $6813: $09
	nop                                              ; $6814: $00
	rlca                                             ; $6815: $07
	db   $10                                         ; $6816: $10
	rra                                              ; $6817: $1f
	db   $e4                                         ; $6818: $e4
	di                                               ; $6819: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $681a: $cf
	rst  $28                                         ; $681b: $ef
	jp   nc, $84ef                                   ; $681c: $d2 $ef $84

	xor  $80                                         ; $681f: $ee $80
	ld   c, $03                                      ; $6821: $0e $03
	inc  c                                           ; $6823: $0c
	ld   c, [hl]                                     ; $6824: $4e
	ld   bc, $80cf                                   ; $6825: $01 $cf $80
	sbc  a                                           ; $6828: $9f
	nop                                              ; $6829: $00
	ld   [hl], c                                     ; $682a: $71
	add  e                                           ; $682b: $83
	rst  $38                                         ; $682c: $ff
	ld   b, $f8                                      ; $682d: $06 $f8
	db   $fc                                         ; $682f: $fc

jr_02d_6830:
	db   $e4                                         ; $6830: $e4
	ldh  a, [$d0]                                    ; $6831: $f0 $d0
	ldh  [hScriptOpcodeParams], a                                    ; $6833: $e0 $a0
	add  b                                           ; $6835: $80
	ret  nc                                          ; $6836: $d0

	ld   bc, $97e8                                   ; $6837: $01 $e8 $97
	add  e                                           ; $683a: $83
	rst  $38                                         ; $683b: $ff
	ld   b, $1f                                      ; $683c: $06 $1f
	ccf                                              ; $683e: $3f
	daa                                              ; $683f: $27
	rrca                                             ; $6840: $0f
	dec  bc                                          ; $6841: $0b
	rlca                                             ; $6842: $07
	dec  b                                           ; $6843: $05
	add  c                                           ; $6844: $81
	inc  bc                                          ; $6845: $03
	ld   bc, $efad                                   ; $6846: $01 $ad $ef
	add  h                                           ; $6849: $84
	ld   l, a                                        ; $684a: $6f
	add  b                                           ; $684b: $80
	ld   l, [hl]                                     ; $684c: $6e
	ld   b, $2c                                      ; $684d: $06 $2c
	ld   l, l                                        ; $684f: $6d
	inc  hl                                          ; $6850: $23
	rst  $28                                         ; $6851: $ef
	call z, $1ee7                                    ; $6852: $cc $e7 $1e
	add  d                                           ; $6855: $82
	ld   hl, sp+$02                                  ; $6856: $f8 $02
	ld   sp, hl                                      ; $6858: $f9
	ld   hl, sp-$07                                  ; $6859: $f8 $f9
	add  b                                           ; $685b: $80
	jr   jr_02d_686a                                 ; $685c: $18 $0c

	inc  e                                           ; $685e: $1c
	db   $fc                                         ; $685f: $fc
	db   $f4                                         ; $6860: $f4
	db   $fc                                         ; $6861: $fc
	ld   a, [de]                                     ; $6862: $1a
	cp   $4c                                         ; $6863: $fe $4c
	call z, $7efe                                    ; $6865: $cc $fe $7e
	inc  sp                                          ; $6868: $33
	ccf                                              ; $6869: $3f

jr_02d_686a:
	nop                                              ; $686a: $00
	add  a                                           ; $686b: $87
	rra                                              ; $686c: $1f
	inc  bc                                          ; $686d: $03
	inc  e                                           ; $686e: $1c
	db   $db                                         ; $686f: $db
	rst  $38                                         ; $6870: $ff
	daa                                              ; $6871: $27
	add  b                                           ; $6872: $80
	rst  $38                                         ; $6873: $ff
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	add  a                                           ; $6876: $87
	rst  $38                                         ; $6877: $ff
	ld   bc, $56df                                   ; $6878: $01 $df $56
	add  b                                           ; $687b: $80
	halt                                             ; $687c: $76
	ld   [bc], a                                     ; $687d: $02
	cp   $88                                         ; $687e: $fe $88
	jr   nc, @-$7d                                   ; $6880: $30 $81

	or   $07                                         ; $6882: $f6 $07
	add  a                                           ; $6884: $87
	ld   sp, hl                                      ; $6885: $f9
	cp   c                                           ; $6886: $b9
	rst  $38                                         ; $6887: $ff
	cp   b                                           ; $6888: $b8
	cp   $46                                         ; $6889: $fe $46
	cp   $84                                         ; $688b: $fe $84
	nop                                              ; $688d: $00
	add  b                                           ; $688e: $80
	ld   bc, $fe00                                   ; $688f: $01 $00 $fe
	add  e                                           ; $6892: $83
	rst  $38                                         ; $6893: $ff
	nop                                              ; $6894: $00
	ld   bc, $ff81                                   ; $6895: $01 $81 $ff
	inc  b                                           ; $6898: $04
	db   $fc                                         ; $6899: $fc
	rst  $38                                         ; $689a: $ff
	ei                                               ; $689b: $fb
	db   $fc                                         ; $689c: $fc
	inc  b                                           ; $689d: $04
	add  b                                           ; $689e: $80
	ld   hl, sp-$7d                                  ; $689f: $f8 $83
	adc  b                                           ; $68a1: $88
	nop                                              ; $68a2: $00
	ld   [$7f81], sp                                 ; $68a3: $08 $81 $7f
	add  b                                           ; $68a6: $80
	rst  JumpTable                                         ; $68a7: $df
	ld   a, [bc]                                     ; $68a8: $0a
	xor  c                                           ; $68a9: $a9
	cp   a                                           ; $68aa: $bf
	ld   d, l                                        ; $68ab: $55
	rst  $38                                         ; $68ac: $ff
	ld   a, [$b4ff]                                  ; $68ad: $fa $ff $b4
	cp   a                                           ; $68b0: $bf
	ld   [$fabf], sp                                 ; $68b1: $08 $bf $fa
	add  c                                           ; $68b4: $81
	rst  $38                                         ; $68b5: $ff
	add  b                                           ; $68b6: $80
	rst  $30                                         ; $68b7: $f7
	ld   [bc], a                                     ; $68b8: $02
	xor  d                                           ; $68b9: $aa
	rst  $28                                         ; $68ba: $ef
	ld   d, l                                        ; $68bb: $55
	add  c                                           ; $68bc: $81
	rst  $38                                         ; $68bd: $ff
	inc  b                                           ; $68be: $04
	xor  d                                           ; $68bf: $aa
	rst  $28                                         ; $68c0: $ef
	nop                                              ; $68c1: $00
	rst  $28                                         ; $68c2: $ef
	cp   c                                           ; $68c3: $b9
	add  c                                           ; $68c4: $81
	db   $fc                                         ; $68c5: $fc
	add  b                                           ; $68c6: $80
	db   $fd                                         ; $68c7: $fd
	ld   [bc], a                                     ; $68c8: $02
	xor  d                                           ; $68c9: $aa
	cp   $55                                         ; $68ca: $fe $55
	add  c                                           ; $68cc: $81
	rst  $38                                         ; $68cd: $ff
	dec  b                                           ; $68ce: $05
	xor  d                                           ; $68cf: $aa
	cp   $00                                         ; $68d0: $fe $00
	cp   $54                                         ; $68d2: $fe $54
	nop                                              ; $68d4: $00
	add  b                                           ; $68d5: $80
	cp   a                                           ; $68d6: $bf
	inc  b                                           ; $68d7: $04
	ld   a, a                                        ; $68d8: $7f
	ld   a, [hl]                                     ; $68d9: $7e
	xor  d                                           ; $68da: $aa
	cp   $51                                         ; $68db: $fe $51
	add  c                                           ; $68dd: $81
	cp   $04                                         ; $68de: $fe $04
	and  a                                           ; $68e0: $a7
	ld   sp, hl                                      ; $68e1: $f9
	dec  bc                                          ; $68e2: $0b
	ld   hl, sp+$72                                  ; $68e3: $f8 $72
	add  c                                           ; $68e5: $81
	cp   l                                           ; $68e6: $bd
	inc  b                                           ; $68e7: $04
	ld   b, e                                        ; $68e8: $43
	db   $eb                                         ; $68e9: $eb
	db   $db                                         ; $68ea: $db
	dec  de                                          ; $68eb: $1b
	ld   h, a                                        ; $68ec: $67
	add  c                                           ; $68ed: $81
	rst  $30                                         ; $68ee: $f7
	nop                                              ; $68ef: $00
	ld   c, a                                        ; $68f0: $4f
	add  c                                           ; $68f1: $81
	rst  $28                                         ; $68f2: $ef
	ld   de, $ff00                                   ; $68f3: $11 $00 $ff
	cp   a                                           ; $68f6: $bf
	rst  $38                                         ; $68f7: $ff
	cp   $ff                                         ; $68f8: $fe $ff
	ld   a, [hl]                                     ; $68fa: $7e
	cp   $fc                                         ; $68fb: $fe $fc
	cp   $a8                                         ; $68fd: $fe $a8
	db   $fc                                         ; $68ff: $fc
	nop                                              ; $6900: $00
	db   $fc                                         ; $6901: $fc
	nop                                              ; $6902: $00
	db   $fc                                         ; $6903: $fc
	ld   a, [hl+]                                    ; $6904: $2a
	sbc  [hl]                                        ; $6905: $9e
	add  b                                           ; $6906: $80
	ld   a, $01                                      ; $6907: $3e $01
	ld   hl, $823d                                   ; $6909: $21 $3d $82
	ld   a, l                                        ; $690c: $7d
	add  b                                           ; $690d: $80
	db   $fc                                         ; $690e: $fc
	add  b                                           ; $690f: $80
	nop                                              ; $6910: $00
	add  b                                           ; $6911: $80
	jr   z, jr_02d_6914                              ; $6912: $28 $00

jr_02d_6914:
	add  b                                           ; $6914: $80
	add  b                                           ; $6915: $80
	call nc, $ea05                                   ; $6916: $d4 $05 $ea
	ld   a, [hl+]                                    ; $6919: $2a
	db   $fd                                         ; $691a: $fd
	ld   [bc], a                                     ; $691b: $02
	ld   a, a                                        ; $691c: $7f
	ccf                                              ; $691d: $3f

jr_02d_691e:
	add  b                                           ; $691e: $80
	nop                                              ; $691f: $00
	add  e                                           ; $6920: $83
	rst  $38                                         ; $6921: $ff
	nop                                              ; $6922: $00
	ld   bc, $0381                                   ; $6923: $01 $81 $03
	inc  b                                           ; $6926: $04
	rlca                                             ; $6927: $07
	ld   b, $f8                                      ; $6928: $06 $f8
	db   $fc                                         ; $692a: $fc
	ld   hl, sp-$80                                  ; $692b: $f8 $80
	nop                                              ; $692d: $00
	add  c                                           ; $692e: $81
	rst  $38                                         ; $692f: $ff
	add  b                                           ; $6930: $80
	ldh  a, [c]                                      ; $6931: $f2
	nop                                              ; $6932: $00
	ld   bc, $7280                                   ; $6933: $01 $80 $72
	ld   [bc], a                                     ; $6936: $02
	jr   c, jr_02d_69b1                              ; $6937: $38 $78

	ld   b, b                                        ; $6939: $40
	add  b                                           ; $693a: $80
	ld   a, l                                        ; $693b: $7d
	nop                                              ; $693c: $00
	ld   a, h                                        ; $693d: $7c
	add  c                                           ; $693e: $81
	ld   a, l                                        ; $693f: $7d
	add  c                                           ; $6940: $81
	ld   bc, $8103                                   ; $6941: $01 $03 $81
	ld   bc, $fe7f                                   ; $6944: $01 $7f $fe
	add  e                                           ; $6947: $83
	rst  $38                                         ; $6948: $ff
	ld   [de], a                                     ; $6949: $12

jr_02d_694a:
	ld   d, l                                        ; $694a: $55
	rst  $38                                         ; $694b: $ff
	nop                                              ; $694c: $00
	rst  $38                                         ; $694d: $ff
	nop                                              ; $694e: $00
	rst  $38                                         ; $694f: $ff
	nop                                              ; $6950: $00
	rst  $38                                         ; $6951: $ff
	xor  d                                           ; $6952: $aa

jr_02d_6953:
	rra                                              ; $6953: $1f
	adc  d                                           ; $6954: $8a
	sbc  a                                           ; $6955: $9f
	ret  nz                                          ; $6956: $c0

	rst  JumpTable                                         ; $6957: $df
	ld   [$8aff], a                                  ; $6958: $ea $ff $8a
	cp   a                                           ; $695b: $bf
	or   l                                           ; $695c: $b5
	add  c                                           ; $695d: $81
	cp   a                                           ; $695e: $bf
	inc  c                                           ; $695f: $0c
	sub  l                                           ; $6960: $95
	cp   a                                           ; $6961: $bf
	dec  d                                           ; $6962: $15
	rst  $38                                         ; $6963: $ff
	xor  d                                           ; $6964: $aa
	rst  $38                                         ; $6965: $ff
	nop                                              ; $6966: $00
	rst  $38                                         ; $6967: $ff
	xor  d                                           ; $6968: $aa
	rst  $38                                         ; $6969: $ff
	xor  d                                           ; $696a: $aa
	rst  $38                                         ; $696b: $ff
	ld   d, l                                        ; $696c: $55
	add  c                                           ; $696d: $81
	rst  $38                                         ; $696e: $ff
	inc  c                                           ; $696f: $0c
	ld   d, l                                        ; $6970: $55
	rst  $38                                         ; $6971: $ff
	ld   l, c                                        ; $6972: $69
	db   $fc                                         ; $6973: $fc
	sub  c                                           ; $6974: $91
	pop  af                                          ; $6975: $f1
	dec  bc                                          ; $6976: $0b
	rst  $38                                         ; $6977: $ff
	xor  e                                           ; $6978: $ab
	rst  $38                                         ; $6979: $ff
	xor  d                                           ; $697a: $aa
	rst  $38                                         ; $697b: $ff
	ld   d, l                                        ; $697c: $55
	add  c                                           ; $697d: $81
	rst  $38                                         ; $697e: $ff
	dec  b                                           ; $697f: $05
	ld   d, l                                        ; $6980: $55
	rst  $38                                         ; $6981: $ff
	ld   d, l                                        ; $6982: $55
	ld   bc, $feff                                   ; $6983: $01 $ff $fe
	add  d                                           ; $6986: $82
	rst  $38                                         ; $6987: $ff
	add  h                                           ; $6988: $84
	nop                                              ; $6989: $00
	add  c                                           ; $698a: $81
	rst  $38                                         ; $698b: $ff
	add  d                                           ; $698c: $82
	ld   hl, sp+$03                                  ; $698d: $f8 $03
	db   $fc                                         ; $698f: $fc
	inc  b                                           ; $6990: $04
	cp   $06                                         ; $6991: $fe $06
	add  b                                           ; $6993: $80
	rst  $38                                         ; $6994: $ff
	add  c                                           ; $6995: $81
	ld   hl, sp+$02                                  ; $6996: $f8 $02
	jr   c, @-$06                                    ; $6998: $38 $f8

	jr   c, jr_02d_691e                              ; $699a: $38 $82

	ld   b, b                                        ; $699c: $40
	add  b                                           ; $699d: $80
	ld   h, b                                        ; $699e: $60
	add  b                                           ; $699f: $80
	ld   [$ff86], a                                  ; $69a0: $ea $86 $ff
	add  d                                           ; $69a3: $82
	db   $10                                         ; $69a4: $10
	add  b                                           ; $69a5: $80
	ld   [$ae80], sp                                 ; $69a6: $08 $80 $ae
	add  b                                           ; $69a9: $80
	rst  $38                                         ; $69aa: $ff
	add  c                                           ; $69ab: $81
	db   $e3                                         ; $69ac: $e3
	ld   [bc], a                                     ; $69ad: $02
	ldh  [c], a                                      ; $69ae: $e2
	db   $e3                                         ; $69af: $e3
	ldh  [c], a                                      ; $69b0: $e2

jr_02d_69b1:
	add  d                                           ; $69b1: $82
	ld   bc, $0080                                   ; $69b2: $01 $80 $00
	add  b                                           ; $69b5: $80
	xor  d                                           ; $69b6: $aa
	add  e                                           ; $69b7: $83
	rst  $38                                         ; $69b8: $ff
	ld   [bc], a                                     ; $69b9: $02
	nop                                              ; $69ba: $00
	rst  $38                                         ; $69bb: $ff
	dec  c                                           ; $69bc: $0d
	add  c                                           ; $69bd: $81
	ei                                               ; $69be: $fb
	ld   bc, $f7ed                                   ; $69bf: $01 $ed $f7
	add  b                                           ; $69c2: $80
	ld   b, a                                        ; $69c3: $47
	ld   [bc], a                                     ; $69c4: $02
	rrca                                             ; $69c5: $0f
	inc  hl                                          ; $69c6: $23
	jr   nz, jr_02d_694a                             ; $69c7: $20 $81

	rra                                              ; $69c9: $1f
	ld   [bc], a                                     ; $69ca: $02
	inc  bc                                          ; $69cb: $03
	di                                               ; $69cc: $f3
	xor  a                                           ; $69cd: $af
	add  c                                           ; $69ce: $81
	rst  JumpTable                                         ; $69cf: $df
	nop                                              ; $69d0: $00
	jr   nc, jr_02d_6953                             ; $69d1: $30 $80

	cp   a                                           ; $69d3: $bf
	nop                                              ; $69d4: $00
	or   b                                           ; $69d5: $b0
	add  b                                           ; $69d6: $80
	halt                                             ; $69d7: $76
	add  d                                           ; $69d8: $82
	ld   a, d                                        ; $69d9: $7a
	add  b                                           ; $69da: $80
	ld   a, [hl+]                                    ; $69db: $2a
	add  hl, bc                                      ; $69dc: $09
	xor  b                                           ; $69dd: $a8
	db   $fc                                         ; $69de: $fc
	nop                                              ; $69df: $00
	db   $fc                                         ; $69e0: $fc
	nop                                              ; $69e1: $00
	db   $fc                                         ; $69e2: $fc
	nop                                              ; $69e3: $00
	db   $fc                                         ; $69e4: $fc
	xor  b                                           ; $69e5: $a8
	nop                                              ; $69e6: $00
	add  b                                           ; $69e7: $80
	ld   d, h                                        ; $69e8: $54
	add  b                                           ; $69e9: $80
	inc  d                                           ; $69ea: $14
	add  b                                           ; $69eb: $80
	ld   a, [bc]                                     ; $69ec: $0a
	ld   bc, $6840                                   ; $69ed: $01 $40 $68
	add  b                                           ; $69f0: $80
	add  c                                           ; $69f1: $81
	add  b                                           ; $69f2: $80
	ld   b, c                                        ; $69f3: $41
	add  b                                           ; $69f4: $80
	add  c                                           ; $69f5: $81
	add  b                                           ; $69f6: $80
	ld   b, c                                        ; $69f7: $41
	add  b                                           ; $69f8: $80
	pop  bc                                          ; $69f9: $c1
	add  d                                           ; $69fa: $82
	ld   b, c                                        ; $69fb: $41
	inc  bc                                          ; $69fc: $03
	rst  $10                                         ; $69fd: $d7
	rst  $38                                         ; $69fe: $ff
	add  b                                           ; $69ff: $80
	rst  $38                                         ; $6a00: $ff
	add  b                                           ; $6a01: $80
	jp   $f802                                       ; $6a02: $c3 $02 $f8


	rst  $38                                         ; $6a05: $ff
	db   $fc                                         ; $6a06: $fc
	add  l                                           ; $6a07: $85
	rst  $38                                         ; $6a08: $ff
	ld   [de], a                                     ; $6a09: $12
	adc  c                                           ; $6a0a: $89
	rst  $38                                         ; $6a0b: $ff
	dec  c                                           ; $6a0c: $0d
	ldh  a, [c]                                      ; $6a0d: $f2
	db   $fd                                         ; $6a0e: $fd
	ld   sp, hl                                      ; $6a0f: $f9
	add  hl, bc                                      ; $6a10: $09
	ld   sp, hl                                      ; $6a11: $f9
	rla                                              ; $6a12: $17
	ld   sp, hl                                      ; $6a13: $f9
	jp   nz, $81ff                                   ; $6a14: $c2 $ff $81

	rst  $38                                         ; $6a17: $ff
	ld   [bc], a                                     ; $6a18: $02
	rst  $38                                         ; $6a19: $ff
	ld   d, a                                        ; $6a1a: $57
	add  c                                           ; $6a1b: $81
	add  b                                           ; $6a1c: $80
	add  b                                           ; $6a1d: $80
	ld   a, h                                        ; $6a1e: $7c
	add  b                                           ; $6a1f: $80
	db   $fc                                         ; $6a20: $fc
	dec  bc                                          ; $6a21: $0b
	nop                                              ; $6a22: $00
	add  hl, hl                                      ; $6a23: $29
	ld   sp, hl                                      ; $6a24: $f9
	add  d                                           ; $6a25: $82
	ld   a, [$f800]                                  ; $6a26: $fa $00 $f8
	ld   bc, $02f9                                   ; $6a29: $01 $f9 $02
	rst  $38                                         ; $6a2c: $ff
	ld   d, l                                        ; $6a2d: $55
	add  c                                           ; $6a2e: $81
	nop                                              ; $6a2f: $00
	add  b                                           ; $6a30: $80
	add  b                                           ; $6a31: $80
	add  b                                           ; $6a32: $80
	jr   nz, jr_02d_6a36                             ; $6a33: $20 $01

	ld   b, b                                        ; $6a35: $40

jr_02d_6a36:
	ld   h, b                                        ; $6a36: $60
	add  b                                           ; $6a37: $80
	ldh  a, [rSC]                                    ; $6a38: $f0 $02
	add  b                                           ; $6a3a: $80
	ld   hl, sp-$59                                  ; $6a3b: $f8 $a7
	add  b                                           ; $6a3d: $80
	ld   b, b                                        ; $6a3e: $40
	add  b                                           ; $6a3f: $80
	add  b                                           ; $6a40: $80
	add  b                                           ; $6a41: $80
	nop                                              ; $6a42: $00
	add  b                                           ; $6a43: $80
	ld   a, [hl+]                                    ; $6a44: $2a
	add  [hl]                                        ; $6a45: $86
	rst  ToBoot                                         ; $6a46: $c7
	add  h                                           ; $6a47: $84
	nop                                              ; $6a48: $00
	add  b                                           ; $6a49: $80
	xor  d                                           ; $6a4a: $aa
	add  [hl]                                        ; $6a4b: $86
	rst  $38                                         ; $6a4c: $ff
	add  h                                           ; $6a4d: $84
	nop                                              ; $6a4e: $00
	add  b                                           ; $6a4f: $80
	xor  d                                           ; $6a50: $aa
	add  d                                           ; $6a51: $82
	pop  af                                          ; $6a52: $f1
	add  d                                           ; $6a53: $82
	ldh  a, [rP1]                                    ; $6a54: $f0 $00
	rst  $38                                         ; $6a56: $ff
	add  b                                           ; $6a57: $80
	db   $fc                                         ; $6a58: $fc
	add  b                                           ; $6a59: $80
	rst  $20                                         ; $6a5a: $e7
	add  b                                           ; $6a5b: $80
	sbc  a                                           ; $6a5c: $9f
	add  d                                           ; $6a5d: $82
	rst  $38                                         ; $6a5e: $ff
	dec  b                                           ; $6a5f: $05
	db   $fc                                         ; $6a60: $fc
	rst  $38                                         ; $6a61: $ff
	pop  af                                          ; $6a62: $f1
	cp   $33                                         ; $6a63: $fe $33
	ccf                                              ; $6a65: $3f
	add  b                                           ; $6a66: $80
	cp   $09                                         ; $6a67: $fe $09
	db   $fc                                         ; $6a69: $fc
	rst  $38                                         ; $6a6a: $ff
	pop  af                                          ; $6a6b: $f1
	cp   $c4                                         ; $6a6c: $fe $c4
	ld   hl, sp+$10                                  ; $6a6e: $f8 $10
	ldh  [rLCDC], a                                  ; $6a70: $e0 $40
	add  b                                           ; $6a72: $80
	add  b                                           ; $6a73: $80
	ld   bc, $0405                                   ; $6a74: $01 $05 $04
	rlca                                             ; $6a77: $07
	sbc  l                                           ; $6a78: $9d
	cp   $e0                                         ; $6a79: $fe $e0
	add  b                                           ; $6a7b: $80
	add  b                                           ; $6a7c: $80
	nop                                              ; $6a7d: $00
	ld   a, [bc]                                     ; $6a7e: $0a
	ld   b, $07                                      ; $6a7f: $06 $07
	jr   @+$20                                       ; $6a81: $18 $1e

	ld   c, l                                        ; $6a83: $4d
	ld   [hl], l                                     ; $6a84: $75
	ld   [$70aa], a                                  ; $6a85: $ea $aa $70
	rst  $38                                         ; $6a88: $ff
	ldh  a, [$81]                                    ; $6a89: $f0 $81
	nop                                              ; $6a8b: $00
	add  b                                           ; $6a8c: $80
	rra                                              ; $6a8d: $1f
	ld   [$ff67], sp                                 ; $6a8e: $08 $67 $ff
	ret  nz                                          ; $6a91: $c0

	cp   a                                           ; $6a92: $bf
	ld   c, e                                        ; $6a93: $4b
	ld   e, a                                        ; $6a94: $5f
	and  b                                           ; $6a95: $a0
	xor  a                                           ; $6a96: $af
	db   $fc                                         ; $6a97: $fc
	add  d                                           ; $6a98: $82
	nop                                              ; $6a99: $00
	dec  bc                                          ; $6a9a: $0b
	inc  bc                                          ; $6a9b: $03
	db   $ec                                         ; $6a9c: $ec
	cp   $10                                         ; $6a9d: $fe $10
	rst  $38                                         ; $6a9f: $ff
	cp   $ff                                         ; $6aa0: $fe $ff
	ld   hl, sp-$01                                  ; $6aa2: $f8 $ff
	ret  nz                                          ; $6aa4: $c0

	rst  $38                                         ; $6aa5: $ff
	call nz, $0381                                   ; $6aa6: $c4 $81 $03
	ld   bc, $ff00                                   ; $6aa9: $01 $00 $ff
	add  c                                           ; $6aac: $81
	nop                                              ; $6aad: $00
	ld   [$8880], sp                                 ; $6aae: $08 $80 $88
	ld   hl, sp+$08                                  ; $6ab1: $f8 $08
	rst  $38                                         ; $6ab3: $ff
	cp   $ff                                         ; $6ab4: $fe $ff
	xor  h                                           ; $6ab6: $ac
	ld   d, l                                        ; $6ab7: $55
	add  b                                           ; $6ab8: $80
	nop                                              ; $6ab9: $00
	ld   [bc], a                                     ; $6aba: $02
	ld   bc, $01ff                                   ; $6abb: $01 $ff $01
	add  d                                           ; $6abe: $82
	ld   [bc], a                                     ; $6abf: $02
	add  b                                           ; $6ac0: $80
	inc  b                                           ; $6ac1: $04
	inc  b                                           ; $6ac2: $04
	add  h                                           ; $6ac3: $84
	ld   h, h                                        ; $6ac4: $64
	rst  $38                                         ; $6ac5: $ff
	and  $06                                         ; $6ac6: $e6 $06
	add  b                                           ; $6ac8: $80
	ld   [$0703], sp                                 ; $6ac9: $08 $03 $07
	rst  $38                                         ; $6acc: $ff
	ld   b, $01                                      ; $6acd: $06 $01
	add  h                                           ; $6acf: $84
	nop                                              ; $6ad0: $00
	ld   [bc], a                                     ; $6ad1: $02
	ld   a, a                                        ; $6ad2: $7f
	rst  $38                                         ; $6ad3: $ff
	ld   d, $81                                      ; $6ad4: $16 $81
	ld   b, c                                        ; $6ad6: $41
	add  b                                           ; $6ad7: $80
	pop  bc                                          ; $6ad8: $c1
	inc  b                                           ; $6ad9: $04
	ld   de, $07d1                                   ; $6ada: $11 $d1 $07
	inc  d                                           ; $6add: $14
	inc  b                                           ; $6ade: $04
	add  c                                           ; $6adf: $81
	nop                                              ; $6ae0: $00
	add  b                                           ; $6ae1: $80
	rst  $38                                         ; $6ae2: $ff
	ld   [bc], a                                     ; $6ae3: $02
	nop                                              ; $6ae4: $00
	rst  $38                                         ; $6ae5: $ff
	add  b                                           ; $6ae6: $80
	add  c                                           ; $6ae7: $81
	rst  $38                                         ; $6ae8: $ff
	nop                                              ; $6ae9: $00
	add  b                                           ; $6aea: $80
	add  b                                           ; $6aeb: $80
	rst  $38                                         ; $6aec: $ff
	add  e                                           ; $6aed: $83
	nop                                              ; $6aee: $00
	add  b                                           ; $6aef: $80
	rst  $38                                         ; $6af0: $ff
	ld   [bc], a                                     ; $6af1: $02
	nop                                              ; $6af2: $00
	rst  $38                                         ; $6af3: $ff
	ld   [bc], a                                     ; $6af4: $02
	add  c                                           ; $6af5: $81
	rst  $38                                         ; $6af6: $ff
	inc  bc                                          ; $6af7: $03
	ld   [bc], a                                     ; $6af8: $02
	rst  $38                                         ; $6af9: $ff
	cp   $01                                         ; $6afa: $fe $01
	add  b                                           ; $6afc: $80
	nop                                              ; $6afd: $00
	add  b                                           ; $6afe: $80
	ld   bc, $ff80                                   ; $6aff: $01 $80 $ff
	add  hl, bc                                      ; $6b02: $09
	ld   c, $f1                                      ; $6b03: $0e $f1
	inc  bc                                          ; $6b05: $03
	ei                                               ; $6b06: $fb
	ld   a, [$04fb]                                  ; $6b07: $fa $fb $04
	cp   $a9                                         ; $6b0a: $fe $a9
	ld   d, l                                        ; $6b0c: $55
	add  b                                           ; $6b0d: $80
	xor  d                                           ; $6b0e: $aa
	add  b                                           ; $6b0f: $80
	ld   d, l                                        ; $6b10: $55
	add  b                                           ; $6b11: $80
	rst  $38                                         ; $6b12: $ff
	ld   b, $3b                                      ; $6b13: $06 $3b
	db   $fc                                         ; $6b15: $fc
	or   e                                           ; $6b16: $b3
	rst  $30                                         ; $6b17: $f7
	ld   b, c                                        ; $6b18: $41
	jp   $8101                                       ; $6b19: $c3 $01 $81


	nop                                              ; $6b1c: $00
	add  b                                           ; $6b1d: $80
	add  b                                           ; $6b1e: $80
	add  b                                           ; $6b1f: $80
	ld   b, b                                        ; $6b20: $40
	inc  b                                           ; $6b21: $04
	ldh  a, [rIE]                                    ; $6b22: $f0 $ff
	ld   l, b                                        ; $6b24: $68
	rst  $38                                         ; $6b25: $ff
	sbc  b                                           ; $6b26: $98
	add  b                                           ; $6b27: $80
	add  b                                           ; $6b28: $80
	add  b                                           ; $6b29: $80
	nop                                              ; $6b2a: $00
	add  d                                           ; $6b2b: $82
	add  b                                           ; $6b2c: $80
	add  d                                           ; $6b2d: $82

jr_02d_6b2e:
	ld   b, b                                        ; $6b2e: $40
	ld   [bc], a                                     ; $6b2f: $02
	rst  $38                                         ; $6b30: $ff
	nop                                              ; $6b31: $00
	rst  $38                                         ; $6b32: $ff
	adc  b                                           ; $6b33: $88
	nop                                              ; $6b34: $00
	rlca                                             ; $6b35: $07
	jr   jr_02d_6b57                                 ; $6b36: $18 $1f

	nop                                              ; $6b38: $00
	rst  $38                                         ; $6b39: $ff
	ld   bc, $06ff                                   ; $6b3a: $01 $ff $06
	nop                                              ; $6b3d: $00
	add  b                                           ; $6b3e: $80
	ld   bc, $020a                                   ; $6b3f: $01 $0a $02
	inc  bc                                          ; $6b42: $03
	ld   bc, $4c0f                                   ; $6b43: $01 $0f $4c
	ld   a, a                                        ; $6b46: $7f
	nop                                              ; $6b47: $00
	rst  $38                                         ; $6b48: $ff
	cp   h                                           ; $6b49: $bc
	rst  $38                                         ; $6b4a: $ff
	add  b                                           ; $6b4b: $80
	and  e                                           ; $6b4c: $a3
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	ret  nz                                          ; $6b4f: $c0

	add  l                                           ; $6b50: $85
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	ret  nz                                          ; $6b53: $c0

	sub  [hl]                                        ; $6b54: $96
	nop                                              ; $6b55: $00
	add  [hl]                                        ; $6b56: $86

jr_02d_6b57:
	ret  nz                                          ; $6b57: $c0

	sub  l                                           ; $6b58: $95
	nop                                              ; $6b59: $00
	add  [hl]                                        ; $6b5a: $86
	ret  nz                                          ; $6b5b: $c0

	rst  $38                                         ; $6b5c: $ff
	nop                                              ; $6b5d: $00
	rst  $38                                         ; $6b5e: $ff
	nop                                              ; $6b5f: $00
	rst  $38                                         ; $6b60: $ff
	nop                                              ; $6b61: $00
	rst  $38                                         ; $6b62: $ff
	nop                                              ; $6b63: $00
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
	rst  $38                                         ; $6b6e: $ff
	nop                                              ; $6b6f: $00
	rst  $38                                         ; $6b70: $ff
	nop                                              ; $6b71: $00
	rst  $38                                         ; $6b72: $ff
	nop                                              ; $6b73: $00
	rst  $38                                         ; $6b74: $ff
	nop                                              ; $6b75: $00
	rst  $38                                         ; $6b76: $ff
	nop                                              ; $6b77: $00
	rst  $38                                         ; $6b78: $ff
	nop                                              ; $6b79: $00
	add  c                                           ; $6b7a: $81
	nop                                              ; $6b7b: $00
	ld   a, [bc]                                     ; $6b7c: $0a
	ld   [bc], a                                     ; $6b7d: $02
	add  b                                           ; $6b7e: $80
	ld   b, $80                                      ; $6b7f: $06 $80
	dec  b                                           ; $6b81: $05
	add  b                                           ; $6b82: $80
	ld   b, $80                                      ; $6b83: $06 $80
	inc  b                                           ; $6b85: $04
	ld   [$fe00], sp                                 ; $6b86: $08 $00 $fe
	ld   sp, hl                                      ; $6b89: $f9
	ld   hl, sp-$10                                  ; $6b8a: $f8 $f0
	db   $fc                                         ; $6b8c: $fc
	db   $ec                                         ; $6b8d: $ec
	cp   $e1                                         ; $6b8e: $fe $e1
	add  a                                           ; $6b90: $87
	nop                                              ; $6b91: $00
	inc  bc                                          ; $6b92: $03
	db   $10                                         ; $6b93: $10
	ldh  a, [$60]                                    ; $6b94: $f0 $60
	ld   a, a                                        ; $6b96: $7f
	add  b                                           ; $6b97: $80
	ccf                                              ; $6b98: $3f
	nop                                              ; $6b99: $00
	rst  $38                                         ; $6b9a: $ff
	adc  h                                           ; $6b9b: $8c
	nop                                              ; $6b9c: $00
	add  b                                           ; $6b9d: $80
	ld   hl, sp-$77                                  ; $6b9e: $f8 $89
	nop                                              ; $6ba0: $00
	add  b                                           ; $6ba1: $80
	ld   bc, $0380                                   ; $6ba2: $01 $80 $03
	nop                                              ; $6ba5: $00
	rst  $38                                         ; $6ba6: $ff
	add  d                                           ; $6ba7: $82
	nop                                              ; $6ba8: $00
	add  b                                           ; $6ba9: $80
	ret  nz                                          ; $6baa: $c0

	add  b                                           ; $6bab: $80
	jr   nc, jr_02d_6b2e                             ; $6bac: $30 $80

	ld   [$0605], sp                                 ; $6bae: $08 $05 $06
	add  [hl]                                        ; $6bb1: $86
	add  c                                           ; $6bb2: $81
	ld   bc, $9080                                   ; $6bb3: $01 $80 $90
	add  c                                           ; $6bb6: $81
	nop                                              ; $6bb7: $00
	ld   [bc], a                                     ; $6bb8: $02
	rlca                                             ; $6bb9: $07
	ld   [$830f], sp                                 ; $6bba: $08 $0f $83
	nop                                              ; $6bbd: $00
	dec  b                                           ; $6bbe: $05
	rrca                                             ; $6bbf: $0f
	ldh  [$ef], a                                    ; $6bc0: $e0 $ef
	nop                                              ; $6bc2: $00
	ld   de, $8019                                   ; $6bc3: $11 $19 $80
	jr   jr_02d_6bca                                 ; $6bc6: $18 $02

	rst  $20                                         ; $6bc8: $e7
	nop                                              ; $6bc9: $00

jr_02d_6bca:
	rst  $38                                         ; $6bca: $ff
	add  b                                           ; $6bcb: $80
	nop                                              ; $6bcc: $00
	add  c                                           ; $6bcd: $81
	jr   jr_02d_6bd5                                 ; $6bce: $18 $05

	rst  $20                                         ; $6bd0: $e7
	nop                                              ; $6bd1: $00
	rst  $38                                         ; $6bd2: $ff
	nop                                              ; $6bd3: $00
	rst  $28                                         ; $6bd4: $ef

jr_02d_6bd5:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd5: $cf
	add  b                                           ; $6bd6: $80
	ld   c, a                                        ; $6bd7: $4f
	ld   [bc], a                                     ; $6bd8: $02
	adc  a                                           ; $6bd9: $8f
	ld   c, a                                        ; $6bda: $4f
	jp   $0381                                       ; $6bdb: $c3 $81 $03


	ld   a, [bc]                                     ; $6bde: $0a
	ld   bc, $cd03                                   ; $6bdf: $01 $03 $cd
	rrca                                             ; $6be2: $0f
	ret  nz                                          ; $6be3: $c0

	rrca                                             ; $6be4: $0f
	cpl                                              ; $6be5: $2f
	rst  $38                                         ; $6be6: $ff
	nop                                              ; $6be7: $00
	rst  $38                                         ; $6be8: $ff
	nop                                              ; $6be9: $00
	add  e                                           ; $6bea: $83
	rst  $38                                         ; $6beb: $ff
	ld   [bc], a                                     ; $6bec: $02
	nop                                              ; $6bed: $00
	rst  $38                                         ; $6bee: $ff
	nop                                              ; $6bef: $00
	add  e                                           ; $6bf0: $83
	rst  $38                                         ; $6bf1: $ff
	ld   [bc], a                                     ; $6bf2: $02
	nop                                              ; $6bf3: $00
	rst  $38                                         ; $6bf4: $ff
	nop                                              ; $6bf5: $00
	add  e                                           ; $6bf6: $83
	rst  $38                                         ; $6bf7: $ff
	ld   [bc], a                                     ; $6bf8: $02
	nop                                              ; $6bf9: $00
	rst  $38                                         ; $6bfa: $ff
	nop                                              ; $6bfb: $00
	add  e                                           ; $6bfc: $83
	rst  $38                                         ; $6bfd: $ff
	ld   [bc], a                                     ; $6bfe: $02
	nop                                              ; $6bff: $00
	rst  $38                                         ; $6c00: $ff
	nop                                              ; $6c01: $00
	add  e                                           ; $6c02: $83
	rst  $38                                         ; $6c03: $ff
	ld   [bc], a                                     ; $6c04: $02
	nop                                              ; $6c05: $00
	rst  $38                                         ; $6c06: $ff
	nop                                              ; $6c07: $00
	add  e                                           ; $6c08: $83
	rst  $38                                         ; $6c09: $ff
	ld   [bc], a                                     ; $6c0a: $02
	nop                                              ; $6c0b: $00
	rst  $38                                         ; $6c0c: $ff
	nop                                              ; $6c0d: $00
	add  e                                           ; $6c0e: $83
	rst  $38                                         ; $6c0f: $ff
	ld   [bc], a                                     ; $6c10: $02
	nop                                              ; $6c11: $00
	rst  $38                                         ; $6c12: $ff
	nop                                              ; $6c13: $00
	add  c                                           ; $6c14: $81
	rst  $38                                         ; $6c15: $ff
	cp   [hl]                                        ; $6c16: $be
	nop                                              ; $6c17: $00
	add  b                                           ; $6c18: $80
	xor  d                                           ; $6c19: $aa
	add  b                                           ; $6c1a: $80
	ld   d, l                                        ; $6c1b: $55
	add  b                                           ; $6c1c: $80
	xor  d                                           ; $6c1d: $aa
	add  b                                           ; $6c1e: $80
	ld   d, l                                        ; $6c1f: $55
	add  b                                           ; $6c20: $80
	xor  d                                           ; $6c21: $aa
	add  b                                           ; $6c22: $80
	ld   d, l                                        ; $6c23: $55
	add  b                                           ; $6c24: $80
	xor  d                                           ; $6c25: $aa
	add  b                                           ; $6c26: $80
	ld   d, l                                        ; $6c27: $55
	add  b                                           ; $6c28: $80
	xor  d                                           ; $6c29: $aa
	add  b                                           ; $6c2a: $80
	ld   d, l                                        ; $6c2b: $55
	add  b                                           ; $6c2c: $80
	xor  d                                           ; $6c2d: $aa
	ld   bc, $505f                                   ; $6c2e: $01 $5f $50
	add  b                                           ; $6c31: $80
	and  e                                           ; $6c32: $a3
	add  b                                           ; $6c33: $80
	ld   d, e                                        ; $6c34: $53
	add  b                                           ; $6c35: $80
	and  e                                           ; $6c36: $a3
	add  b                                           ; $6c37: $80
	inc  bc                                          ; $6c38: $03
	ld   bc, $aaa5                                   ; $6c39: $01 $a5 $aa
	add  b                                           ; $6c3c: $80
	ld   d, l                                        ; $6c3d: $55
	inc  bc                                          ; $6c3e: $03
	rst  $38                                         ; $6c3f: $ff
	ret  nz                                          ; $6c40: $c0

	push af                                          ; $6c41: $f5
	dec  [hl]                                        ; $6c42: $35
	add  [hl]                                        ; $6c43: $86
	push af                                          ; $6c44: $f5
	ld   bc, $aa55                                   ; $6c45: $01 $55 $aa
	add  b                                           ; $6c48: $80
	ld   d, l                                        ; $6c49: $55
	add  b                                           ; $6c4a: $80
	xor  d                                           ; $6c4b: $aa
	add  b                                           ; $6c4c: $80
	ld   d, l                                        ; $6c4d: $55
	add  b                                           ; $6c4e: $80
	xor  d                                           ; $6c4f: $aa
	add  b                                           ; $6c50: $80
	ld   d, l                                        ; $6c51: $55
	add  b                                           ; $6c52: $80
	xor  d                                           ; $6c53: $aa
	add  b                                           ; $6c54: $80
	ld   d, l                                        ; $6c55: $55
	add  b                                           ; $6c56: $80
	ld   [$5580], a                                  ; $6c57: $ea $80 $55
	add  b                                           ; $6c5a: $80
	ld   [$5580], a                                  ; $6c5b: $ea $80 $55
	add  b                                           ; $6c5e: $80
	ld   [$5580], a                                  ; $6c5f: $ea $80 $55
	add  b                                           ; $6c62: $80
	add  sp, -$80                                    ; $6c63: $e8 $80
	ld   d, b                                        ; $6c65: $50
	nop                                              ; $6c66: $00
	ret  nz                                          ; $6c67: $c0

	add  a                                           ; $6c68: $87
	nop                                              ; $6c69: $00
	add  b                                           ; $6c6a: $80
	ccf                                              ; $6c6b: $3f
	add  d                                           ; $6c6c: $82
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	ret  nc                                          ; $6c6f: $d0

	add  a                                           ; $6c70: $87
	nop                                              ; $6c71: $00
	add  b                                           ; $6c72: $80
	rst  $28                                         ; $6c73: $ef
	add  d                                           ; $6c74: $82
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	db   $10                                         ; $6c77: $10
	add  a                                           ; $6c78: $87
	nop                                              ; $6c79: $00
	add  b                                           ; $6c7a: $80
	rst  $38                                         ; $6c7b: $ff
	adc  h                                           ; $6c7c: $8c
	nop                                              ; $6c7d: $00
	add  b                                           ; $6c7e: $80
	rst  $38                                         ; $6c7f: $ff
	adc  h                                           ; $6c80: $8c
	nop                                              ; $6c81: $00
	add  b                                           ; $6c82: $80
	rst  $38                                         ; $6c83: $ff
	adc  h                                           ; $6c84: $8c
	nop                                              ; $6c85: $00
	add  b                                           ; $6c86: $80
	rst  $38                                         ; $6c87: $ff
	add  d                                           ; $6c88: $82
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	db   $10                                         ; $6c8b: $10
	add  a                                           ; $6c8c: $87
	nop                                              ; $6c8d: $00
	add  b                                           ; $6c8e: $80
	rst  $28                                         ; $6c8f: $ef
	add  d                                           ; $6c90: $82
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	ld   d, $87                                      ; $6c93: $16 $87
	nop                                              ; $6c95: $00
	add  b                                           ; $6c96: $80
	ld   hl, sp-$7e                                  ; $6c97: $f8 $82
	nop                                              ; $6c99: $00
	ld   bc, $aaac                                   ; $6c9a: $01 $ac $aa
	add  b                                           ; $6c9d: $80
	ld   d, l                                        ; $6c9e: $55
	ld   bc, $a8ab                                   ; $6c9f: $01 $ab $a8
	add  b                                           ; $6ca2: $80
	ld   d, l                                        ; $6ca3: $55
	add  b                                           ; $6ca4: $80
	xor  c                                           ; $6ca5: $a9
	add  h                                           ; $6ca6: $84
	ld   bc, $a901                                   ; $6ca7: $01 $01 $a9
	xor  d                                           ; $6caa: $aa
	add  b                                           ; $6cab: $80
	ld   d, l                                        ; $6cac: $55
	ld   bc, $00ff                                   ; $6cad: $01 $ff $00
	add  c                                           ; $6cb0: $81
	rst  $38                                         ; $6cb1: $ff
	add  l                                           ; $6cb2: $85
	nop                                              ; $6cb3: $00
	add  b                                           ; $6cb4: $80
	xor  d                                           ; $6cb5: $aa
	add  b                                           ; $6cb6: $80
	ld   d, l                                        ; $6cb7: $55
	ld   bc, $02fe                                   ; $6cb8: $01 $fe $02
	add  b                                           ; $6cbb: $80
	pop  af                                          ; $6cbc: $f1
	ld   bc, $12d2                                   ; $6cbd: $01 $d2 $12
	add  b                                           ; $6cc0: $80
	ld   de, $1082                                   ; $6cc1: $11 $82 $10
	ld   bc, $a894                                   ; $6cc4: $01 $94 $a8
	add  b                                           ; $6cc7: $80
	ld   b, b                                        ; $6cc8: $40
	add  b                                           ; $6cc9: $80
	add  b                                           ; $6cca: $80
	adc  b                                           ; $6ccb: $88
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	dec  c                                           ; $6cce: $0d
	adc  l                                           ; $6ccf: $8d
	inc  bc                                          ; $6cd0: $03
	ld   de, $f5e4                                   ; $6cd1: $11 $e4 $f5
	push de                                          ; $6cd4: $d5
	push af                                          ; $6cd5: $f5
	sub  l                                           ; $6cd6: $95
	push af                                          ; $6cd7: $f5
	sub  l                                           ; $6cd8: $95
	push af                                          ; $6cd9: $f5
	sub  l                                           ; $6cda: $95
	push af                                          ; $6cdb: $f5
	sub  l                                           ; $6cdc: $95
	push af                                          ; $6cdd: $f5
	or   l                                           ; $6cde: $b5
	push af                                          ; $6cdf: $f5
	dec  [hl]                                        ; $6ce0: $35
	push af                                          ; $6ce1: $f5
	dec  d                                           ; $6ce2: $15
	xor  d                                           ; $6ce3: $aa
	add  b                                           ; $6ce4: $80
	ld   d, l                                        ; $6ce5: $55
	add  b                                           ; $6ce6: $80
	ld   a, [bc]                                     ; $6ce7: $0a
	add  b                                           ; $6ce8: $80
	dec  b                                           ; $6ce9: $05
	add  b                                           ; $6cea: $80
	ld   [bc], a                                     ; $6ceb: $02
	add  b                                           ; $6cec: $80
	ld   bc, $0080                                   ; $6ced: $01 $80 $00
	add  b                                           ; $6cf0: $80
	ld   bc, $e080                                   ; $6cf1: $01 $80 $e0
	add  b                                           ; $6cf4: $80
	ld   b, b                                        ; $6cf5: $40
	add  b                                           ; $6cf6: $80
	ret  nz                                          ; $6cf7: $c0

	add  b                                           ; $6cf8: $80
	ld   b, b                                        ; $6cf9: $40
	add  b                                           ; $6cfa: $80
	ret  nz                                          ; $6cfb: $c0

	ld   bc, $4143                                   ; $6cfc: $01 $43 $41
	add  b                                           ; $6cff: $80
	pop  bc                                          ; $6d00: $c1
	ld   [bc], a                                     ; $6d01: $02
	ld   b, c                                        ; $6d02: $41
	ld   b, b                                        ; $6d03: $40
	jp   $0083                                       ; $6d04: $c3 $83 $00


	dec  b                                           ; $6d07: $05
	jr   nc, jr_02d_6d0a                             ; $6d08: $30 $00

jr_02d_6d0a:
	add  hl, sp                                      ; $6d0a: $39
	ld   bc, $00c0                                   ; $6d0b: $01 $c0 $00
	add  b                                           ; $6d0e: $80
	ld   bc, $f30b                                   ; $6d0f: $01 $0b $f3
	nop                                              ; $6d12: $00
	db   $eb                                         ; $6d13: $eb
	nop                                              ; $6d14: $00

jr_02d_6d15:
	stop                                             ; $6d15: $10 $00
	inc  e                                           ; $6d17: $1c
	nop                                              ; $6d18: $00
	ld   a, $00                                      ; $6d19: $3e $00
	call c, $80fc                                    ; $6d1b: $dc $fc $80
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	db   $fc                                         ; $6d20: $fc
	add  b                                           ; $6d21: $80
	nop                                              ; $6d22: $00
	ld   bc, $12ec                                   ; $6d23: $01 $ec $12
	add  a                                           ; $6d26: $87
	nop                                              ; $6d27: $00
	add  h                                           ; $6d28: $84
	rst  $38                                         ; $6d29: $ff
	adc  b                                           ; $6d2a: $88
	nop                                              ; $6d2b: $00
	add  h                                           ; $6d2c: $84
	rst  $38                                         ; $6d2d: $ff
	adc  b                                           ; $6d2e: $88
	nop                                              ; $6d2f: $00
	add  h                                           ; $6d30: $84
	rst  $38                                         ; $6d31: $ff
	adc  b                                           ; $6d32: $88
	nop                                              ; $6d33: $00
	add  e                                           ; $6d34: $83
	rst  $38                                         ; $6d35: $ff
	ld   bc, $2fc0                                   ; $6d36: $01 $c0 $2f
	add  a                                           ; $6d39: $87
	nop                                              ; $6d3a: $00
	add  h                                           ; $6d3b: $84

jr_02d_6d3c:
	rst  $28                                         ; $6d3c: $ef
	nop                                              ; $6d3d: $00
	ld   d, $87                                      ; $6d3e: $16 $87
	nop                                              ; $6d40: $00

jr_02d_6d41:
	add  h                                           ; $6d41: $84
	ld   hl, sp+$00                                  ; $6d42: $f8 $00
	inc  b                                           ; $6d44: $04
	adc  l                                           ; $6d45: $8d
	ld   bc, $0300                                   ; $6d46: $01 $00 $03
	add  a                                           ; $6d49: $87
	nop                                              ; $6d4a: $00
	add  h                                           ; $6d4b: $84
	rst  $38                                         ; $6d4c: $ff
	nop                                              ; $6d4d: $00
	inc  l                                           ; $6d4e: $2c
	add  a                                           ; $6d4f: $87
	db   $10                                         ; $6d50: $10
	add  h                                           ; $6d51: $84
	ret  nc                                          ; $6d52: $d0

	nop                                              ; $6d53: $00
	inc  a                                           ; $6d54: $3c
	adc  l                                           ; $6d55: $8d
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	dec  c                                           ; $6d58: $0d
	adc  c                                           ; $6d59: $89
	inc  bc                                          ; $6d5a: $03
	ld   c, $02                                      ; $6d5b: $0e $02
	inc  bc                                          ; $6d5d: $03
	ld   [bc], a                                     ; $6d5e: $02
	inc  sp                                          ; $6d5f: $33
	or   h                                           ; $6d60: $b4
	push af                                          ; $6d61: $f5
	dec  b                                           ; $6d62: $05
	push bc                                          ; $6d63: $c5
	dec  h                                           ; $6d64: $25
	push hl                                          ; $6d65: $e5
	ld   h, l                                        ; $6d66: $65
	push hl                                          ; $6d67: $e5
	ld   h, l                                        ; $6d68: $65
	push hl                                          ; $6d69: $e5
	ld   h, l                                        ; $6d6a: $65
	add  c                                           ; $6d6b: $81
	push hl                                          ; $6d6c: $e5
	ld   [bc], a                                     ; $6d6d: $02
	db   $e4                                         ; $6d6e: $e4
	push hl                                          ; $6d6f: $e5
	cp   $83                                         ; $6d70: $fe $83
	nop                                              ; $6d72: $00
	ld   [$0007], sp                                 ; $6d73: $08 $07 $00
	rrca                                             ; $6d76: $0f
	nop                                              ; $6d77: $00
	jr   jr_02d_6d41                                 ; $6d78: $18 $c7

	jr   z, jr_02d_6d3c                              ; $6d7a: $28 $c0

	rst  $38                                         ; $6d7c: $ff
	add  b                                           ; $6d7d: $80
	jr   nz, jr_02d_6d80                             ; $6d7e: $20 $00

jr_02d_6d80:
	ret  nz                                          ; $6d80: $c0

	add  b                                           ; $6d81: $80
	ld   b, b                                        ; $6d82: $40
	dec  c                                           ; $6d83: $0d
	pop  bc                                          ; $6d84: $c1
	ret  nz                                          ; $6d85: $c0

	pop  hl                                          ; $6d86: $e1
	nop                                              ; $6d87: $00
	and  b                                           ; $6d88: $a0
	rra                                              ; $6d89: $1f
	rst  $28                                         ; $6d8a: $ef
	ccf                                              ; $6d8b: $3f
	rst  $30                                         ; $6d8c: $f7
	rrca                                             ; $6d8d: $0f
	ld   l, a                                        ; $6d8e: $6f
	rst  $30                                         ; $6d8f: $f7
	scf                                              ; $6d90: $37
	db   $10                                         ; $6d91: $10
	add  c                                           ; $6d92: $81
	jr   nc, jr_02d_6d15                             ; $6d93: $30 $80

	nop                                              ; $6d95: $00
	ld   bc, $3830                                   ; $6d96: $01 $30 $38
	add  d                                           ; $6d99: $82
	inc  h                                           ; $6d9a: $24
	add  c                                           ; $6d9b: $81
	inc  b                                           ; $6d9c: $04
	rlca                                             ; $6d9d: $07
	and  d                                           ; $6d9e: $a2
	ld   b, h                                        ; $6d9f: $44
	xor  h                                           ; $6da0: $ac
	add  b                                           ; $6da1: $80
	ld   l, c                                        ; $6da2: $69
	ld   b, h                                        ; $6da3: $44
	xor  a                                           ; $6da4: $af
	xor  c                                           ; $6da5: $a9
	add  b                                           ; $6da6: $80
	ld   b, c                                        ; $6da7: $41
	add  b                                           ; $6da8: $80
	xor  c                                           ; $6da9: $a9
	nop                                              ; $6daa: $00
	jp   hl                                          ; $6dab: $e9


	add  c                                           ; $6dac: $81
	ld   bc, $a801                                   ; $6dad: $01 $01 $a8
	ld   d, l                                        ; $6db0: $55
	add  b                                           ; $6db1: $80
	xor  $80                                         ; $6db2: $ee $80
	ld   d, l                                        ; $6db4: $55
	add  b                                           ; $6db5: $80
	xor  d                                           ; $6db6: $aa
	add  b                                           ; $6db7: $80
	ld   d, l                                        ; $6db8: $55
	add  b                                           ; $6db9: $80
	xor  d                                           ; $6dba: $aa
	nop                                              ; $6dbb: $00
	rst  $38                                         ; $6dbc: $ff
	add  c                                           ; $6dbd: $81
	nop                                              ; $6dbe: $00
	ld   bc, $55aa                                   ; $6dbf: $01 $aa $55
	add  b                                           ; $6dc2: $80
	xor  $80                                         ; $6dc3: $ee $80
	ld   d, l                                        ; $6dc5: $55
	add  b                                           ; $6dc6: $80
	xor  d                                           ; $6dc7: $aa
	add  b                                           ; $6dc8: $80
	ld   d, l                                        ; $6dc9: $55
	add  b                                           ; $6dca: $80
	xor  d                                           ; $6dcb: $aa
	nop                                              ; $6dcc: $00
	rst  $38                                         ; $6dcd: $ff
	add  c                                           ; $6dce: $81
	nop                                              ; $6dcf: $00
	ld   bc, $55aa                                   ; $6dd0: $01 $aa $55
	add  b                                           ; $6dd3: $80
	xor  $01                                         ; $6dd4: $ee $01
	ld   d, l                                        ; $6dd6: $55
	ld   d, h                                        ; $6dd7: $54
	add  b                                           ; $6dd8: $80
	xor  d                                           ; $6dd9: $aa
	ld   bc, $5554                                   ; $6dda: $01 $54 $55
	add  b                                           ; $6ddd: $80
	xor  d                                           ; $6dde: $aa
	nop                                              ; $6ddf: $00
	rst  $38                                         ; $6de0: $ff
	add  c                                           ; $6de1: $81
	nop                                              ; $6de2: $00
	inc  c                                           ; $6de3: $0c
	xor  b                                           ; $6de4: $a8
	ld   d, $4e                                      ; $6de5: $16 $4e
	dec  c                                           ; $6de7: $0d
	rst  $28                                         ; $6de8: $ef
	add  hl, bc                                      ; $6de9: $09
	ld   a, [de]                                     ; $6dea: $1a
	ld   b, $1d                                      ; $6deb: $06 $1d
	dec  b                                           ; $6ded: $05
	ld   a, [bc]                                     ; $6dee: $0a
	adc  d                                           ; $6def: $8a
	sub  a                                           ; $6df0: $97
	add  c                                           ; $6df1: $81
	nop                                              ; $6df2: $00
	ld   bc, $45a2                                   ; $6df3: $01 $a2 $45
	add  b                                           ; $6df6: $80
	xor  $80                                         ; $6df7: $ee $80
	ld   b, l                                        ; $6df9: $45
	add  b                                           ; $6dfa: $80
	xor  d                                           ; $6dfb: $aa
	add  b                                           ; $6dfc: $80
	ld   b, h                                        ; $6dfd: $44
	rlca                                             ; $6dfe: $07
	xor  e                                           ; $6dff: $ab
	xor  b                                           ; $6e00: $a8
	add  sp, $00                                     ; $6e01: $e8 $00
	inc  b                                           ; $6e03: $04
	nop                                              ; $6e04: $00
	xor  c                                           ; $6e05: $a9
	ld   d, b                                        ; $6e06: $50
	add  b                                           ; $6e07: $80
	add  sp, -$80                                    ; $6e08: $e8 $80
	ld   d, b                                        ; $6e0a: $50
	add  b                                           ; $6e0b: $80
	xor  b                                           ; $6e0c: $a8
	ld   [bc], a                                     ; $6e0d: $02
	db   $10                                         ; $6e0e: $10
	ld   de, $80f9                                   ; $6e0f: $11 $f9 $80
	add  hl, bc                                      ; $6e12: $09
	add  c                                           ; $6e13: $81
	ld   bc, $fd00                                   ; $6e14: $01 $00 $fd
	add  [hl]                                        ; $6e17: $86
	ld   bc, $fd85                                   ; $6e18: $01 $85 $fd
	ld   bc, $7f80                                   ; $6e1b: $01 $80 $7f
	add  b                                           ; $6e1e: $80
	rst  $38                                         ; $6e1f: $ff
	add  b                                           ; $6e20: $80
	ld   e, a                                        ; $6e21: $5f
	inc  bc                                          ; $6e22: $03
	rst  $38                                         ; $6e23: $ff
	nop                                              ; $6e24: $00
	xor  b                                           ; $6e25: $a8
	ld   d, a                                        ; $6e26: $57
	add  b                                           ; $6e27: $80
	xor  e                                           ; $6e28: $ab
	inc  b                                           ; $6e29: $04
	rst  $38                                         ; $6e2a: $ff
	nop                                              ; $6e2b: $00
	ld   d, b                                        ; $6e2c: $50
	xor  a                                           ; $6e2d: $af
	db   $ec                                         ; $6e2e: $ec
	add  e                                           ; $6e2f: $83
	ret  nc                                          ; $6e30: $d0

	ld   [bc], a                                     ; $6e31: $02
	ret  nz                                          ; $6e32: $c0

	nop                                              ; $6e33: $00
	db   $10                                         ; $6e34: $10
	add  c                                           ; $6e35: $81
	db   $d3                                         ; $6e36: $d3
	inc  b                                           ; $6e37: $04
	jp   $1303                                       ; $6e38: $c3 $03 $13


	db   $d3                                         ; $6e3b: $d3
	ccf                                              ; $6e3c: $3f
	add  b                                           ; $6e3d: $80
	rlca                                             ; $6e3e: $07
	add  b                                           ; $6e3f: $80
	ld   a, a                                        ; $6e40: $7f
	adc  c                                           ; $6e41: $89
	rst  $38                                         ; $6e42: $ff
	add  b                                           ; $6e43: $80
	di                                               ; $6e44: $f3
	ld   [bc], a                                     ; $6e45: $02
	ldh  a, [c]                                      ; $6e46: $f2
	di                                               ; $6e47: $f3
	ldh  a, [c]                                      ; $6e48: $f2
	adc  c                                           ; $6e49: $89
	di                                               ; $6e4a: $f3
	inc  b                                           ; $6e4b: $04
	db   $e4                                         ; $6e4c: $e4
	and  $c2                                         ; $6e4d: $e6 $c2
	call nz, $81f5                                   ; $6e4f: $c4 $f5 $81
	ld   sp, hl                                      ; $6e52: $f9
	inc  b                                           ; $6e53: $04
	db   $fd                                         ; $6e54: $fd
	push hl                                          ; $6e55: $e5
	push af                                          ; $6e56: $f5
	push bc                                          ; $6e57: $c5
	push af                                          ; $6e58: $f5
	add  c                                           ; $6e59: $81
	sub  l                                           ; $6e5a: $95
	nop                                              ; $6e5b: $00
	cp   b                                           ; $6e5c: $b8
	add  b                                           ; $6e5d: $80
	db   $fc                                         ; $6e5e: $fc
	add  c                                           ; $6e5f: $81
	cp   $00                                         ; $6e60: $fe $00
	ld   a, [$fe81]                                  ; $6e62: $fa $81 $fe
	nop                                              ; $6e65: $00
	rst  $38                                         ; $6e66: $ff
	add  c                                           ; $6e67: $81
	cp   $08                                         ; $6e68: $fe $08
	db   $fd                                         ; $6e6a: $fd
	db   $fc                                         ; $6e6b: $fc
	ld   h, l                                        ; $6e6c: $65
	ld   [hl], a                                     ; $6e6d: $77
	ld   e, a                                        ; $6e6e: $5f
	ld   l, a                                        ; $6e6f: $6f
	ccf                                              ; $6e70: $3f
	ld   e, a                                        ; $6e71: $5f
	rst  $38                                         ; $6e72: $ff
	add  c                                           ; $6e73: $81
	ccf                                              ; $6e74: $3f
	inc  bc                                          ; $6e75: $03
	cp   a                                           ; $6e76: $bf
	inc  a                                           ; $6e77: $3c
	ccf                                              ; $6e78: $3f
	inc  a                                           ; $6e79: $3c
	add  b                                           ; $6e7a: $80
	ccf                                              ; $6e7b: $3f
	nop                                              ; $6e7c: $00
	db   $e3                                         ; $6e7d: $e3
	add  b                                           ; $6e7e: $80
	add  sp, $0c                                     ; $6e7f: $e8 $0c
	ldh  [$f8], a                                    ; $6e81: $e0 $f8
	ldh  a, [$f8]                                    ; $6e83: $f0 $f8
	ldh  [$fc], a                                    ; $6e85: $e0 $fc
	call z, $1ffb                                    ; $6e87: $cc $fb $1f
	rst  $30                                         ; $6e8a: $f7
	scf                                              ; $6e8b: $37
	rst  $30                                         ; $6e8c: $f7
	ldh  a, [$80]                                    ; $6e8d: $f0 $80
	ld   hl, sp-$7a                                  ; $6e8f: $f8 $86
	rst  $38                                         ; $6e91: $ff
	ld   [bc], a                                     ; $6e92: $02
	rrca                                             ; $6e93: $0f
	rst  $38                                         ; $6e94: $ff
	ldh  a, [$80]                                    ; $6e95: $f0 $80
	rst  $38                                         ; $6e97: $ff
	ld   bc, $f00f                                   ; $6e98: $01 $0f $f0
	adc  c                                           ; $6e9b: $89
	rst  $38                                         ; $6e9c: $ff
	inc  b                                           ; $6e9d: $04
	rrca                                             ; $6e9e: $0f
	rst  $38                                         ; $6e9f: $ff
	ldh  a, [rIE]                                    ; $6ea0: $f0 $ff
	nop                                              ; $6ea2: $00
	adc  e                                           ; $6ea3: $8b
	rst  $38                                         ; $6ea4: $ff
	ld   [bc], a                                     ; $6ea5: $02
	rra                                              ; $6ea6: $1f
	rst  $38                                         ; $6ea7: $ff
	rra                                              ; $6ea8: $1f
	adc  l                                           ; $6ea9: $8d
	rst  $38                                         ; $6eaa: $ff
	nop                                              ; $6eab: $00
	rst  $30                                         ; $6eac: $f7
	add  c                                           ; $6ead: $81
	di                                               ; $6eae: $f3
	nop                                              ; $6eaf: $00
	rst  $38                                         ; $6eb0: $ff
	add  c                                           ; $6eb1: $81
	ld   sp, hl                                      ; $6eb2: $f9
	ld   [wPreservedDEduringAnimSpriteSpecLoad+1], sp                                 ; $6eb3: $08 $f3 $c1
	rst  $38                                         ; $6eb6: $ff
	add  b                                           ; $6eb7: $80
	rst  JumpTable                                         ; $6eb8: $df
	rrca                                             ; $6eb9: $0f
	dec  bc                                          ; $6eba: $0b
	add  hl, bc                                      ; $6ebb: $09
	ld   h, c                                        ; $6ebc: $61
	add  c                                           ; $6ebd: $81
	db   $fd                                         ; $6ebe: $fd
	nop                                              ; $6ebf: $00
	ld   hl, sp-$7f                                  ; $6ec0: $f8 $81
	ei                                               ; $6ec2: $fb
	ld   [$f7f1], sp                                 ; $6ec3: $08 $f1 $f7
	ld   b, h                                        ; $6ec6: $44
	call nz, $98ec                                   ; $6ec7: $c4 $ec $98
	or   $f8                                         ; $6eca: $f6 $f8
	ld   bc, $ff89                                   ; $6ecc: $01 $89 $ff
	add  b                                           ; $6ecf: $80
	ld   a, a                                        ; $6ed0: $7f
	add  b                                           ; $6ed1: $80
	ccf                                              ; $6ed2: $3f
	adc  [hl]                                        ; $6ed3: $8e
	db   $fd                                         ; $6ed4: $fd
	add  b                                           ; $6ed5: $80
	rst  $38                                         ; $6ed6: $ff
	ld   bc, $2bd4                                   ; $6ed7: $01 $d4 $2b
	add  b                                           ; $6eda: $80
	ld   d, l                                        ; $6edb: $55
	add  b                                           ; $6edc: $80
	dec  bc                                          ; $6edd: $0b
	add  b                                           ; $6ede: $80
	dec  d                                           ; $6edf: $15
	add  b                                           ; $6ee0: $80
	ld   [bc], a                                     ; $6ee1: $02
	add  b                                           ; $6ee2: $80
	dec  b                                           ; $6ee3: $05
	ld   bc, $ff00                                   ; $6ee4: $01 $00 $ff
	add  b                                           ; $6ee7: $80
	db   $d3                                         ; $6ee8: $d3
	ld   bc, $d313                                   ; $6ee9: $01 $13 $d3
	add  b                                           ; $6eec: $80
	ld   d, e                                        ; $6eed: $53
	add  b                                           ; $6eee: $80
	sub  e                                           ; $6eef: $93
	add  b                                           ; $6ef0: $80
	ld   d, e                                        ; $6ef1: $53
	add  b                                           ; $6ef2: $80
	sub  e                                           ; $6ef3: $93
	add  b                                           ; $6ef4: $80
	ld   d, e                                        ; $6ef5: $53
	ld   bc, $f333                                   ; $6ef6: $01 $33 $f3
	adc  [hl]                                        ; $6ef9: $8e
	rst  $38                                         ; $6efa: $ff
	add  e                                           ; $6efb: $83
	di                                               ; $6efc: $f3
	add  c                                           ; $6efd: $81
	ldh  a, [c]                                      ; $6efe: $f2
	add  b                                           ; $6eff: $80
	di                                               ; $6f00: $f3
	nop                                              ; $6f01: $00
	pop  af                                          ; $6f02: $f1
	add  c                                           ; $6f03: $81
	ldh  a, [c]                                      ; $6f04: $f2
	ld   [bc], a                                     ; $6f05: $02
	di                                               ; $6f06: $f3
	db   $f4                                         ; $6f07: $f4
	or   b                                           ; $6f08: $b0
	add  c                                           ; $6f09: $81
	dec  [hl]                                        ; $6f0a: $35
	ld   bc, $75f5                                   ; $6f0b: $01 $f5 $75
	add  b                                           ; $6f0e: $80
	ld   c, l                                        ; $6f0f: $4d
	add  b                                           ; $6f10: $80
	ccf                                              ; $6f11: $3f
	ld   b, $f5                                      ; $6f12: $06 $f5
	ld   [$ffe0], a                                  ; $6f14: $ea $e0 $ff
	ld   d, l                                        ; $6f17: $55
	xor  d                                           ; $6f18: $aa
	inc  bc                                          ; $6f19: $03
	add  c                                           ; $6f1a: $81
	cp   $3a                                         ; $6f1b: $fe $3a
	ld   a, [$55fd]                                  ; $6f1d: $fa $fd $55
	xor  l                                           ; $6f20: $ad
	dec  b                                           ; $6f21: $05
	db   $fd                                         ; $6f22: $fd
	ld   d, l                                        ; $6f23: $55
	xor  l                                           ; $6f24: $ad
	dec  c                                           ; $6f25: $0d
	ei                                               ; $6f26: $fb
	db   $eb                                         ; $6f27: $eb
	ld   hl, sp+$27                                  ; $6f28: $f8 $27
	ccf                                              ; $6f2a: $3f
	dec  d                                           ; $6f2b: $15
	ld   a, [hl+]                                    ; $6f2c: $2a
	nop                                              ; $6f2d: $00
	ccf                                              ; $6f2e: $3f
	inc  d                                           ; $6f2f: $14
	dec  hl                                          ; $6f30: $2b
	nop                                              ; $6f31: $00
	ccf                                              ; $6f32: $3f
	jr   nc, jr_02d_6f74                             ; $6f33: $30 $3f

	nop                                              ; $6f35: $00
	ccf                                              ; $6f36: $3f
	inc  [hl]                                        ; $6f37: $34
	ccf                                              ; $6f38: $3f
	ret  nz                                          ; $6f39: $c0

	ld   hl, sp+$40                                  ; $6f3a: $f8 $40
	cp   b                                           ; $6f3c: $b8
	nop                                              ; $6f3d: $00
	ld   hl, sp+$00                                  ; $6f3e: $f8 $00
	ld   hl, sp+$00                                  ; $6f40: $f8 $00
	ld   sp, hl                                      ; $6f42: $f9
	ld   [bc], a                                     ; $6f43: $02
	ret  nz                                          ; $6f44: $c0

	ccf                                              ; $6f45: $3f
	rst  $38                                         ; $6f46: $ff
	nop                                              ; $6f47: $00
	rst  $38                                         ; $6f48: $ff
	ccf                                              ; $6f49: $3f
	ret  nz                                          ; $6f4a: $c0

	nop                                              ; $6f4b: $00
	rst  $38                                         ; $6f4c: $ff
	nop                                              ; $6f4d: $00
	rst  $38                                         ; $6f4e: $ff
	nop                                              ; $6f4f: $00
	rra                                              ; $6f50: $1f
	db   $10                                         ; $6f51: $10
	rst  $38                                         ; $6f52: $ff
	ret  nc                                          ; $6f53: $d0

	ccf                                              ; $6f54: $3f
	rst  $28                                         ; $6f55: $ef
	ldh  a, [rP1]                                    ; $6f56: $f0 $00
	add  b                                           ; $6f58: $80
	rst  $38                                         ; $6f59: $ff
	add  b                                           ; $6f5a: $80
	rra                                              ; $6f5b: $1f
	add  hl, bc                                      ; $6f5c: $09
	add  b                                           ; $6f5d: $80
	ld   a, d                                        ; $6f5e: $7a
	ld   hl, sp+$00                                  ; $6f5f: $f8 $00
	ld   hl, sp+$00                                  ; $6f61: $f8 $00
	ld   hl, sp+$00                                  ; $6f63: $f8 $00
	ld   hl, sp-$06                                  ; $6f65: $f8 $fa
	add  b                                           ; $6f67: $80
	nop                                              ; $6f68: $00
	rra                                              ; $6f69: $1f
	pop  af                                          ; $6f6a: $f1
	adc  $3f                                         ; $6f6b: $ce $3f
	nop                                              ; $6f6d: $00
	rst  $38                                         ; $6f6e: $ff
	nop                                              ; $6f6f: $00
	rst  $38                                         ; $6f70: $ff
	nop                                              ; $6f71: $00
	rst  $38                                         ; $6f72: $ff
	nop                                              ; $6f73: $00

jr_02d_6f74:
	rst  $38                                         ; $6f74: $ff
	nop                                              ; $6f75: $00
	ccf                                              ; $6f76: $3f
	ld   b, b                                        ; $6f77: $40
	ld   a, a                                        ; $6f78: $7f
	nop                                              ; $6f79: $00
	rst  $38                                         ; $6f7a: $ff
	nop                                              ; $6f7b: $00
	rst  $38                                         ; $6f7c: $ff
	nop                                              ; $6f7d: $00
	rst  $38                                         ; $6f7e: $ff
	nop                                              ; $6f7f: $00
	rst  $38                                         ; $6f80: $ff
	nop                                              ; $6f81: $00
	rst  $38                                         ; $6f82: $ff
	ld   [bc], a                                     ; $6f83: $02
	rst  $38                                         ; $6f84: $ff
	ld   [bc], a                                     ; $6f85: $02
	rst  $38                                         ; $6f86: $ff
	ld   [bc], a                                     ; $6f87: $02
	rst  $38                                         ; $6f88: $ff
	ld   [bc], a                                     ; $6f89: $02
	add  b                                           ; $6f8a: $80
	rst  $38                                         ; $6f8b: $ff
	add  b                                           ; $6f8c: $80
	add  hl, de                                      ; $6f8d: $19
	dec  bc                                          ; $6f8e: $0b
	adc  a                                           ; $6f8f: $8f
	ld   c, a                                        ; $6f90: $4f
	rst  ToBoot                                         ; $6f91: $c7
	rlca                                             ; $6f92: $07
	ld   hl, sp+$62                                  ; $6f93: $f8 $62
	sbc  c                                           ; $6f95: $99
	ld   bc, $cb89                                   ; $6f96: $01 $89 $cb
	ret  nz                                          ; $6f99: $c0

	add  b                                           ; $6f9a: $80
	add  b                                           ; $6f9b: $80
	db   $e3                                         ; $6f9c: $e3
	add  b                                           ; $6f9d: $80
	cp   a                                           ; $6f9e: $bf
	add  b                                           ; $6f9f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa0: $cf
	add  b                                           ; $6fa1: $80
	call z, $0305                                    ; $6fa2: $cc $05 $03
	add  hl, bc                                      ; $6fa5: $09
	ldh  a, [c]                                      ; $6fa6: $f2
	ldh  a, [$f2]                                    ; $6fa7: $f0 $f2
	ld   a, [$0080]                                  ; $6fa9: $fa $80 $00
	dec  d                                           ; $6fac: $15
	rst  $38                                         ; $6fad: $ff
	ldh  [$1f], a                                    ; $6fae: $e0 $1f
	nop                                              ; $6fb0: $00
	ld   a, a                                        ; $6fb1: $7f
	add  b                                           ; $6fb2: $80
	rst  $38                                         ; $6fb3: $ff
	ld   c, $ef                                      ; $6fb4: $0e $ef
	sub  d                                           ; $6fb6: $92
	ld   [hl], e                                     ; $6fb7: $73
	ld   bc, $2a39                                   ; $6fb8: $01 $39 $2a
	ld   e, $0a                                      ; $6fbb: $1e $0a
	adc  c                                           ; $6fbd: $89
	ld   [hl], d                                     ; $6fbe: $72
	db   $fd                                         ; $6fbf: $fd
	nop                                              ; $6fc0: $00
	rst  $38                                         ; $6fc1: $ff
	nop                                              ; $6fc2: $00
	add  c                                           ; $6fc3: $81
	rst  $38                                         ; $6fc4: $ff
	rlca                                             ; $6fc5: $07
	ccf                                              ; $6fc6: $3f
	rst  $38                                         ; $6fc7: $ff
	rra                                              ; $6fc8: $1f
	rst  $38                                         ; $6fc9: $ff
	rst  ToBoot                                         ; $6fca: $c7
	rst  $38                                         ; $6fcb: $ff
	jr   jr_02d_6fce                                 ; $6fcc: $18 $00

jr_02d_6fce:
	add  b                                           ; $6fce: $80
	rst  $38                                         ; $6fcf: $ff
	ld   [bc], a                                     ; $6fd0: $02
	nop                                              ; $6fd1: $00
	rst  $38                                         ; $6fd2: $ff
	nop                                              ; $6fd3: $00
	add  a                                           ; $6fd4: $87
	rst  $38                                         ; $6fd5: $ff
	add  b                                           ; $6fd6: $80
	nop                                              ; $6fd7: $00
	add  b                                           ; $6fd8: $80
	di                                               ; $6fd9: $f3
	inc  b                                           ; $6fda: $04
	nop                                              ; $6fdb: $00
	rst  $38                                         ; $6fdc: $ff
	nop                                              ; $6fdd: $00
	rst  $38                                         ; $6fde: $ff
	add  b                                           ; $6fdf: $80
	add  b                                           ; $6fe0: $80
	and  b                                           ; $6fe1: $a0
	ld   b, $98                                      ; $6fe2: $06 $98
	ret  c                                           ; $6fe4: $d8

	call nz, $f1f4                                   ; $6fe5: $c4 $f4 $f1
	ld   bc, $8600                                   ; $6fe8: $01 $00 $86
	rst  $38                                         ; $6feb: $ff
	ld   [hl+], a                                    ; $6fec: $22
	ldh  [rIE], a                                    ; $6fed: $e0 $ff
	sbc  a                                           ; $6fef: $9f
	rst  $38                                         ; $6ff0: $ff
	add  b                                           ; $6ff1: $80
	rst  $38                                         ; $6ff2: $ff
	nop                                              ; $6ff3: $00
	rst  $38                                         ; $6ff4: $ff
	ld   c, $f5                                      ; $6ff5: $0e $f5
	push de                                          ; $6ff7: $d5
	db   $ec                                         ; $6ff8: $ec
	ccf                                              ; $6ff9: $3f
	ld   sp, hl                                      ; $6ffa: $f9
	ld   [$0ffb], sp                                 ; $6ffb: $08 $fb $0f
	rst  $38                                         ; $6ffe: $ff
	db   $e4                                         ; $6fff: $e4
	ei                                               ; $7000: $fb
	rla                                              ; $7001: $17
	add  sp, -$28                                    ; $7002: $e8 $d8
	and  b                                           ; $7004: $a0
	sbc  a                                           ; $7005: $9f
	rst  $38                                         ; $7006: $ff
	ld   e, [hl]                                     ; $7007: $5e
	xor  l                                           ; $7008: $ad
	ld   c, e                                        ; $7009: $4b
	ld   [hl], h                                     ; $700a: $74
	inc  l                                           ; $700b: $2c
	ret  nc                                          ; $700c: $d0

	or   b                                           ; $700d: $b0
	ld   b, b                                        ; $700e: $40
	ret  nz                                          ; $700f: $c0

	add  h                                           ; $7010: $84
	nop                                              ; $7011: $00
	add  b                                           ; $7012: $80
	ei                                               ; $7013: $fb
	add  c                                           ; $7014: $81
	ld   [$0902], sp                                 ; $7015: $08 $02 $09
	ld   [$800a], sp                                 ; $7018: $08 $0a $80
	add  hl, bc                                      ; $701b: $09
	rla                                              ; $701c: $17
	dec  bc                                          ; $701d: $0b
	ld   a, [de]                                     ; $701e: $1a
	ld   [bc], a                                     ; $701f: $02
	ld   l, h                                        ; $7020: $6c
	dec  e                                           ; $7021: $1d
	ld   l, [hl]                                     ; $7022: $6e
	rst  $38                                         ; $7023: $ff
	ld   hl, sp+$0b                                  ; $7024: $f8 $0b
	ld   a, e                                        ; $7026: $7b
	dec  de                                          ; $7027: $1b
	add  h                                           ; $7028: $84
	ld   h, a                                        ; $7029: $67
	ld   b, b                                        ; $702a: $40
	rst  JumpTable                                         ; $702b: $df
	rra                                              ; $702c: $1f
	ccf                                              ; $702d: $3f
	ld   b, b                                        ; $702e: $40
	ld   a, a                                        ; $702f: $7f
	nop                                              ; $7030: $00
	rst  $38                                         ; $7031: $ff
	nop                                              ; $7032: $00
	rst  $38                                         ; $7033: $ff
	nop                                              ; $7034: $00
	add  c                                           ; $7035: $81
	rst  $38                                         ; $7036: $ff
	inc  bc                                          ; $7037: $03
	nop                                              ; $7038: $00
	rst  $38                                         ; $7039: $ff
	rrca                                             ; $703a: $0f
	ldh  a, [$80]                                    ; $703b: $f0 $80
	ldh  [rSC], a                                    ; $703d: $e0 $02
	ccf                                              ; $703f: $3f
	ret  nz                                          ; $7040: $c0

	rst  $38                                         ; $7041: $ff
	add  b                                           ; $7042: $80
	nop                                              ; $7043: $00
	ld   bc, $00ff                                   ; $7044: $01 $ff $00
	add  c                                           ; $7047: $81
	rst  $38                                         ; $7048: $ff
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	add  b                                           ; $704b: $80
	rst  $38                                         ; $704c: $ff
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	add  b                                           ; $704f: $80
	ccf                                              ; $7050: $3f
	ld   b, $ab                                      ; $7051: $06 $ab
	ld   d, h                                        ; $7053: $54
	rst  $38                                         ; $7054: $ff
	nop                                              ; $7055: $00
	inc  a                                           ; $7056: $3c
	rst  ToBoot                                         ; $7057: $c7
	inc  b                                           ; $7058: $04
	add  c                                           ; $7059: $81
	rst  $38                                         ; $705a: $ff
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	add  b                                           ; $705d: $80
	rst  $38                                         ; $705e: $ff
	nop                                              ; $705f: $00
	ld   bc, $fd80                                   ; $7060: $01 $80 $fd
	ld   b, $ff                                      ; $7063: $06 $ff
	ld   bc, $06fa                                   ; $7065: $01 $fa $06
	inc  bc                                          ; $7068: $03
	rst  $38                                         ; $7069: $ff
	nop                                              ; $706a: $00
	add  c                                           ; $706b: $81
	rst  $38                                         ; $706c: $ff
	inc  bc                                          ; $706d: $03
	jr   nz, @+$01                                   ; $706e: $20 $ff

	and  b                                           ; $7070: $a0
	rst  $38                                         ; $7071: $ff
	add  b                                           ; $7072: $80
	ld   a, a                                        ; $7073: $7f
	rlca                                             ; $7074: $07
	jr   z, jr_02d_70f6                              ; $7075: $28 $7f

	ld   hl, sp+$2f                                  ; $7077: $f8 $2f
	ld   a, [bc]                                     ; $7079: $0a
	rst  $38                                         ; $707a: $ff
	rrca                                             ; $707b: $0f
	ld   a, [$f580]                                  ; $707c: $fa $80 $f5
	inc  bc                                          ; $707f: $03
	rlca                                             ; $7080: $07
	rst  $38                                         ; $7081: $ff
	dec  c                                           ; $7082: $0d
	push af                                          ; $7083: $f5
	add  b                                           ; $7084: $80
	ld   [$0307], a                                  ; $7085: $ea $07 $03
	rst  $38                                         ; $7088: $ff
	ld   d, $ea                                      ; $7089: $16 $ea
	xor  h                                           ; $708b: $ac
	di                                               ; $708c: $f3
	db   $f4                                         ; $708d: $f4
	xor  e                                           ; $708e: $ab
	add  b                                           ; $708f: $80
	ld   d, l                                        ; $7090: $55
	inc  bc                                          ; $7091: $03
	cp   $ff                                         ; $7092: $fe $ff
	ld   d, h                                        ; $7094: $54
	ld   d, l                                        ; $7095: $55
	add  b                                           ; $7096: $80
	xor  d                                           ; $7097: $aa
	rlca                                             ; $7098: $07
	db   $fc                                         ; $7099: $fc
	rst  $38                                         ; $709a: $ff
	ld   bc, $0002                                   ; $709b: $01 $02 $00
	rst  $38                                         ; $709e: $ff
	ld   bc, $80fe                                   ; $709f: $01 $fe $80
	rst  $38                                         ; $70a2: $ff
	ld   [bc], a                                     ; $70a3: $02
	nop                                              ; $70a4: $00
	rst  $38                                         ; $70a5: $ff
	nop                                              ; $70a6: $00
	add  c                                           ; $70a7: $81
	rst  $38                                         ; $70a8: $ff
	rlca                                             ; $70a9: $07
	nop                                              ; $70aa: $00
	rst  $38                                         ; $70ab: $ff
	nop                                              ; $70ac: $00
	rst  $38                                         ; $70ad: $ff
	ccf                                              ; $70ae: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70af: $cf
	ld   e, b                                        ; $70b0: $58
	xor  b                                           ; $70b1: $a8
	add  b                                           ; $70b2: $80
	ld   d, b                                        ; $70b3: $50
	inc  bc                                          ; $70b4: $03
	ld   a, a                                        ; $70b5: $7f
	rst  $38                                         ; $70b6: $ff
	ret  nc                                          ; $70b7: $d0

	ld   d, b                                        ; $70b8: $50
	add  b                                           ; $70b9: $80
	xor  b                                           ; $70ba: $a8
	rlca                                             ; $70bb: $07
	rra                                              ; $70bc: $1f
	rst  $38                                         ; $70bd: $ff
	ld   c, b                                        ; $70be: $48
	xor  b                                           ; $70bf: $a8
	add  b                                           ; $70c0: $80
	rst  $38                                         ; $70c1: $ff
	ld   [hl], l                                     ; $70c2: $75
	ld   a, [bc]                                     ; $70c3: $0a
	add  b                                           ; $70c4: $80
	dec  b                                           ; $70c5: $05
	inc  bc                                          ; $70c6: $03
	cp   $ff                                         ; $70c7: $fe $ff
	inc  b                                           ; $70c9: $04
	dec  b                                           ; $70ca: $05
	add  b                                           ; $70cb: $80
	ld   [bc], a                                     ; $70cc: $02
	add  b                                           ; $70cd: $80
	rst  $38                                         ; $70ce: $ff
	add  b                                           ; $70cf: $80
	ld   [bc], a                                     ; $70d0: $02
	inc  bc                                          ; $70d1: $03
	nop                                              ; $70d2: $00
	rst  $38                                         ; $70d3: $ff
	ld   d, b                                        ; $70d4: $50
	xor  a                                           ; $70d5: $af
	add  b                                           ; $70d6: $80
	ld   e, a                                        ; $70d7: $5f
	inc  bc                                          ; $70d8: $03
	add  b                                           ; $70d9: $80
	rst  $38                                         ; $70da: $ff
	jr   z, jr_02d_7134                              ; $70db: $28 $57

	add  b                                           ; $70dd: $80
	xor  e                                           ; $70de: $ab
	ld   b, $a0                                      ; $70df: $06 $a0
	rst  $38                                         ; $70e1: $ff
	db   $f4                                         ; $70e2: $f4
	xor  e                                           ; $70e3: $ab
	ld   bc, $00fe                                   ; $70e4: $01 $fe $00
	add  b                                           ; $70e7: $80
	rst  $38                                         ; $70e8: $ff
	add  d                                           ; $70e9: $82
	nop                                              ; $70ea: $00
	add  b                                           ; $70eb: $80
	db   $fc                                         ; $70ec: $fc
	inc  bc                                          ; $70ed: $03
	cp   $01                                         ; $70ee: $fe $01
	rst  $38                                         ; $70f0: $ff
	nop                                              ; $70f1: $00
	add  c                                           ; $70f2: $81
	rst  $38                                         ; $70f3: $ff
	inc  bc                                          ; $70f4: $03
	nop                                              ; $70f5: $00

jr_02d_70f6:
	rst  $38                                         ; $70f6: $ff
	ld   [bc], a                                     ; $70f7: $02
	db   $fd                                         ; $70f8: $fd
	add  b                                           ; $70f9: $80
	cp   $80                                         ; $70fa: $fe $80
	rst  $38                                         ; $70fc: $ff
	inc  bc                                          ; $70fd: $03
	nop                                              ; $70fe: $00
	rst  $38                                         ; $70ff: $ff
	nop                                              ; $7100: $00
	rst  $38                                         ; $7101: $ff
	add  b                                           ; $7102: $80
	cp   $01                                         ; $7103: $fe $01
	ld   h, b                                        ; $7105: $60
	rst  JumpTable                                         ; $7106: $df
	add  b                                           ; $7107: $80
	ld   b, b                                        ; $7108: $40
	inc  bc                                          ; $7109: $03
	ld   a, a                                        ; $710a: $7f
	ccf                                              ; $710b: $3f
	ld   b, b                                        ; $710c: $40
	cp   a                                           ; $710d: $bf
	add  b                                           ; $710e: $80
	ld   a, a                                        ; $710f: $7f
	inc  bc                                          ; $7110: $03
	nop                                              ; $7111: $00
	rst  $38                                         ; $7112: $ff
	add  b                                           ; $7113: $80
	ld   a, a                                        ; $7114: $7f
	add  b                                           ; $7115: $80
	cp   a                                           ; $7116: $bf
	ld   bc, $ff00                                   ; $7117: $01 $00 $ff
	add  b                                           ; $711a: $80
	nop                                              ; $711b: $00
	add  b                                           ; $711c: $80
	rst  $38                                         ; $711d: $ff
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	add  c                                           ; $7120: $81
	rst  $38                                         ; $7121: $ff
	ld   [bc], a                                     ; $7122: $02
	nop                                              ; $7123: $00
	rst  $38                                         ; $7124: $ff
	nop                                              ; $7125: $00
	add  c                                           ; $7126: $81
	rst  $38                                         ; $7127: $ff
	rlca                                             ; $7128: $07
	rrca                                             ; $7129: $0f
	ld   [hl], e                                     ; $712a: $73
	ld   h, h                                        ; $712b: $64
	rst  $20                                         ; $712c: $e7
	ld   a, [bc]                                     ; $712d: $0a
	dec  d                                           ; $712e: $15
	ld   c, e                                        ; $712f: $4b
	xor  e                                           ; $7130: $ab
	add  b                                           ; $7131: $80
	ld   d, l                                        ; $7132: $55
	inc  bc                                          ; $7133: $03

jr_02d_7134:
	nop                                              ; $7134: $00
	rst  $38                                         ; $7135: $ff
	xor  b                                           ; $7136: $a8
	ld   d, a                                        ; $7137: $57
	add  b                                           ; $7138: $80
	xor  d                                           ; $7139: $aa
	add  b                                           ; $713a: $80
	cp   $05                                         ; $713b: $fe $05
	ld   bc, $03fd                                   ; $713d: $01 $fd $03
	ld   hl, sp-$19                                  ; $7140: $f8 $e7
	ldh  [$80], a                                    ; $7142: $e0 $80
	pop  bc                                          ; $7144: $c1
	dec  b                                           ; $7145: $05
	rra                                              ; $7146: $1f
	rst  JumpTable                                         ; $7147: $df
	jr   nz, jr_02d_7169                             ; $7148: $20 $1f

	rst  $38                                         ; $714a: $ff
	nop                                              ; $714b: $00
	add  b                                           ; $714c: $80
	rra                                              ; $714d: $1f
	add  b                                           ; $714e: $80
	rst  $38                                         ; $714f: $ff
	inc  bc                                          ; $7150: $03
	call nc, $ff2b                                   ; $7151: $d4 $2b $ff
	nop                                              ; $7154: $00
	add  d                                           ; $7155: $82
	rst  $38                                         ; $7156: $ff
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	add  b                                           ; $7159: $80
	rst  $38                                         ; $715a: $ff
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	add  d                                           ; $715d: $82
	rst  $38                                         ; $715e: $ff
	inc  bc                                          ; $715f: $03
	ld   a, [hl+]                                    ; $7160: $2a
	push de                                          ; $7161: $d5
	rst  $38                                         ; $7162: $ff
	nop                                              ; $7163: $00
	add  d                                           ; $7164: $82
	rst  $38                                         ; $7165: $ff
	add  hl, de                                      ; $7166: $19
	xor  e                                           ; $7167: $ab
	ld   d, h                                        ; $7168: $54

jr_02d_7169:
	db   $fd                                         ; $7169: $fd
	inc  bc                                          ; $716a: $03
	ldh  a, [c]                                      ; $716b: $f2
	push af                                          ; $716c: $f5
	ldh  [$e9], a                                    ; $716d: $e0 $e9
	ld   hl, sp+$0b                                  ; $716f: $f8 $0b
	sub  e                                           ; $7171: $93
	ld   [hl], e                                     ; $7172: $73
	add  e                                           ; $7173: $83
	and  a                                           ; $7174: $a7
	jr   z, jr_02d_71e6                              ; $7175: $28 $6f

	ret  nz                                          ; $7177: $c0

	ld   c, a                                        ; $7178: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7179: $cf
	rst  JumpTable                                         ; $717a: $df
	rst  $38                                         ; $717b: $ff
	rra                                              ; $717c: $1f
	ld   hl, sp-$01                                  ; $717d: $f8 $ff
	jr   jr_02d_71a0                                 ; $717f: $18 $1f

	add  b                                           ; $7181: $80
	cpl                                              ; $7182: $2f
	add  b                                           ; $7183: $80
	rra                                              ; $7184: $1f
	inc  bc                                          ; $7185: $03
	ld   hl, sp-$01                                  ; $7186: $f8 $ff
	jr   @+$21                                       ; $7188: $18 $1f

	add  b                                           ; $718a: $80
	cpl                                              ; $718b: $2f
	add  b                                           ; $718c: $80
	db   $f4                                         ; $718d: $f4
	inc  bc                                          ; $718e: $03
	rlca                                             ; $718f: $07
	rst  $38                                         ; $7190: $ff
	inc  c                                           ; $7191: $0c
	db   $f4                                         ; $7192: $f4
	add  b                                           ; $7193: $80
	add  sp, -$80                                    ; $7194: $e8 $80
	db   $f4                                         ; $7196: $f4
	inc  bc                                          ; $7197: $03
	ld   bc, $0aff                                   ; $7198: $01 $ff $0a
	db   $f4                                         ; $719b: $f4
	add  b                                           ; $719c: $80
	add  sp, -$80                                    ; $719d: $e8 $80
	dec  b                                           ; $719f: $05

jr_02d_71a0:
	add  b                                           ; $71a0: $80
	rst  $38                                         ; $71a1: $ff
	add  b                                           ; $71a2: $80
	ld   bc, $0080                                   ; $71a3: $01 $80 $00
	add  b                                           ; $71a6: $80
	ld   bc, $fc03                                   ; $71a7: $01 $03 $fc
	rst  $38                                         ; $71aa: $ff
	ld   [bc], a                                     ; $71ab: $02
	ld   bc, $0080                                   ; $71ac: $01 $80 $00
	add  b                                           ; $71af: $80
	ld   a, a                                        ; $71b0: $7f
	inc  bc                                          ; $71b1: $03
	nop                                              ; $71b2: $00
	rst  $38                                         ; $71b3: $ff
	add  b                                           ; $71b4: $80
	ld   a, a                                        ; $71b5: $7f
	add  b                                           ; $71b6: $80
	cp   a                                           ; $71b7: $bf
	add  b                                           ; $71b8: $80
	ld   a, a                                        ; $71b9: $7f
	inc  bc                                          ; $71ba: $03
	nop                                              ; $71bb: $00
	rst  $38                                         ; $71bc: $ff
	add  b                                           ; $71bd: $80
	ld   a, a                                        ; $71be: $7f
	add  b                                           ; $71bf: $80
	cp   a                                           ; $71c0: $bf
	add  b                                           ; $71c1: $80
	ret  nc                                          ; $71c2: $d0

	inc  bc                                          ; $71c3: $03
	rra                                              ; $71c4: $1f
	rst  $38                                         ; $71c5: $ff
	inc  [hl]                                        ; $71c6: $34
	call nc, $a880                                   ; $71c7: $d4 $80 $a8
	add  b                                           ; $71ca: $80
	call nc, $0703                                   ; $71cb: $d4 $03 $07
	rst  $38                                         ; $71ce: $ff
	inc  l                                           ; $71cf: $2c
	call nc, $ea80                                   ; $71d0: $d4 $80 $ea
	add  b                                           ; $71d3: $80
	nop                                              ; $71d4: $00
	inc  bc                                          ; $71d5: $03
	db   $fd                                         ; $71d6: $fd
	rst  $38                                         ; $71d7: $ff
	inc  bc                                          ; $71d8: $03
	ld   bc, $0082                                   ; $71d9: $01 $82 $00
	add  b                                           ; $71dc: $80
	rst  $38                                         ; $71dd: $ff
	add  b                                           ; $71de: $80
	ld   bc, $0280                                   ; $71df: $01 $80 $02
	dec  b                                           ; $71e2: $05
	ld   c, a                                        ; $71e3: $4f
	ld   c, e                                        ; $71e4: $4b
	ld   a, [de]                                     ; $71e5: $1a

jr_02d_71e6:
	ld   sp, hl                                      ; $71e6: $f9
	cp   b                                           ; $71e7: $b8
	ld   c, c                                        ; $71e8: $49
	add  b                                           ; $71e9: $80
	xor  b                                           ; $71ea: $a8
	dec  c                                           ; $71eb: $0d
	ld   l, c                                        ; $71ec: $69
	jr   z, jr_02d_7218                              ; $71ed: $28 $29

	jp   hl                                          ; $71ef: $e9


	ld   l, b                                        ; $71f0: $68
	ld   sp, hl                                      ; $71f1: $f9
	cp   b                                           ; $71f2: $b8
	or   d                                           ; $71f3: $b2
	ld   [hl], e                                     ; $71f4: $73
	ld   a, a                                        ; $71f5: $7f
	nop                                              ; $71f6: $00
	rst  $38                                         ; $71f7: $ff
	and  b                                           ; $71f8: $a0
	ld   e, a                                        ; $71f9: $5f
	add  b                                           ; $71fa: $80
	nop                                              ; $71fb: $00
	ld   bc, $00ff                                   ; $71fc: $01 $ff $00
	add  b                                           ; $71ff: $80
	rst  $38                                         ; $7200: $ff
	ld   bc, $57a8                                   ; $7201: $01 $a8 $57
	add  b                                           ; $7204: $80
	xor  e                                           ; $7205: $ab
	and  h                                           ; $7206: $a4
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	ret  nz                                          ; $7209: $c0

	add  l                                           ; $720a: $85
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	ret  nz                                          ; $720d: $c0

	sub  [hl]                                        ; $720e: $96
	nop                                              ; $720f: $00
	add  [hl]                                        ; $7210: $86
	ret  nz                                          ; $7211: $c0

	sub  l                                           ; $7212: $95
	nop                                              ; $7213: $00
	add  [hl]                                        ; $7214: $86
	ret  nz                                          ; $7215: $c0

	rst  $38                                         ; $7216: $ff
	nop                                              ; $7217: $00

jr_02d_7218:
	rst  $38                                         ; $7218: $ff
	nop                                              ; $7219: $00
	rst  $38                                         ; $721a: $ff
	nop                                              ; $721b: $00
	rst  $38                                         ; $721c: $ff
	nop                                              ; $721d: $00
	rst  $38                                         ; $721e: $ff
	nop                                              ; $721f: $00
	rst  $38                                         ; $7220: $ff
	nop                                              ; $7221: $00
	rst  $38                                         ; $7222: $ff
	nop                                              ; $7223: $00
	rst  $38                                         ; $7224: $ff
	nop                                              ; $7225: $00
	rst  $38                                         ; $7226: $ff
	nop                                              ; $7227: $00
	rst  $38                                         ; $7228: $ff
	nop                                              ; $7229: $00
	rst  $38                                         ; $722a: $ff
	nop                                              ; $722b: $00
	rst  $38                                         ; $722c: $ff
	nop                                              ; $722d: $00
	rst  $38                                         ; $722e: $ff
	nop                                              ; $722f: $00
	rst  $38                                         ; $7230: $ff
	nop                                              ; $7231: $00
	rst  $38                                         ; $7232: $ff
	nop                                              ; $7233: $00
	add  c                                           ; $7234: $81
	nop                                              ; $7235: $00
	ld   b, a                                        ; $7236: $47
	ld   [bc], a                                     ; $7237: $02
	nop                                              ; $7238: $00
	dec  b                                           ; $7239: $05
	add  l                                           ; $723a: $85
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	ld   [bc], a                                     ; $723d: $02
	add  b                                           ; $723e: $80
	ld   bc, $0386                                   ; $723f: $01 $86 $03
	adc  e                                           ; $7242: $8b
	ld   [bc], a                                     ; $7243: $02
	add  d                                           ; $7244: $82
	nop                                              ; $7245: $00
	ld   b, $12                                      ; $7246: $06 $12
	nop                                              ; $7248: $00
	ld   [de], a                                     ; $7249: $12
	nop                                              ; $724a: $00
	ld   a, [bc]                                     ; $724b: $0a
	ld   bc, $8609                                   ; $724c: $01 $09 $86
	inc  bc                                          ; $724f: $03
	adc  e                                           ; $7250: $8b
	ld   [bc], a                                     ; $7251: $02
	inc  bc                                          ; $7252: $03
	ei                                               ; $7253: $fb
	ld   d, h                                        ; $7254: $54
	ld   [hl], h                                     ; $7255: $74
	inc  c                                           ; $7256: $0c
	add  b                                           ; $7257: $80
	dec  c                                           ; $7258: $0d
	nop                                              ; $7259: $00
	dec  l                                           ; $725a: $2d
	add  b                                           ; $725b: $80
	db   $dd                                         ; $725c: $dd
	add  b                                           ; $725d: $80
	db   $fd                                         ; $725e: $fd
	inc  b                                           ; $725f: $04
	call $b5fd                                       ; $7260: $cd $fd $b5
	db   $fd                                         ; $7263: $fd
	ld   a, c                                        ; $7264: $79
	add  b                                           ; $7265: $80
	ld   l, c                                        ; $7266: $69
	add  b                                           ; $7267: $80
	pop  de                                          ; $7268: $d1
	add  b                                           ; $7269: $80
	push de                                          ; $726a: $d5
	add  b                                           ; $726b: $80
	cp   c                                           ; $726c: $b9
	add  d                                           ; $726d: $82
	xor  c                                           ; $726e: $a9
	add  b                                           ; $726f: $80
	cp   c                                           ; $7270: $b9
	add  b                                           ; $7271: $80
	push de                                          ; $7272: $d5
	ld   [bc], a                                     ; $7273: $02
	ld   bc, $7a6a                                   ; $7274: $01 $6a $7a
	add  c                                           ; $7277: $81
	ld   b, [hl]                                     ; $7278: $46
	nop                                              ; $7279: $00
	ld   d, [hl]                                     ; $727a: $56
	add  b                                           ; $727b: $80
	ld   l, [hl]                                     ; $727c: $6e
	add  b                                           ; $727d: $80
	cp   $04                                         ; $727e: $fe $04
	and  $fe                                         ; $7280: $e6 $fe
	jp   c, $bcfe                                    ; $7282: $da $fe $bc

	add  b                                           ; $7285: $80
	or   h                                           ; $7286: $b4
	ld   bc, $68e8                                   ; $7287: $01 $e8 $68
	add  b                                           ; $728a: $80
	ld   l, d                                        ; $728b: $6a
	add  b                                           ; $728c: $80
	ld   e, h                                        ; $728d: $5c
	add  d                                           ; $728e: $82
	ld   d, h                                        ; $728f: $54
	add  b                                           ; $7290: $80
	ld   e, h                                        ; $7291: $5c
	add  b                                           ; $7292: $80
	ld   l, d                                        ; $7293: $6a
	nop                                              ; $7294: $00
	ld   a, [$0085]                                  ; $7295: $fa $85 $00
	nop                                              ; $7298: $00
	ld   [bc], a                                     ; $7299: $02
	add  b                                           ; $729a: $80
	ld   bc, $0386                                   ; $729b: $01 $86 $03
	dec  c                                           ; $729e: $0d
	ld   [bc], a                                     ; $729f: $02
	ld   [hl+], a                                    ; $72a0: $22
	ld   [bc], a                                     ; $72a1: $02
	or   d                                           ; $72a2: $b2
	ld   [bc], a                                     ; $72a3: $02
	sub  [hl]                                        ; $72a4: $96
	nop                                              ; $72a5: $00
	ld   h, b                                        ; $72a6: $60
	nop                                              ; $72a7: $00
	ld   h, h                                        ; $72a8: $64
	ld   [bc], a                                     ; $72a9: $02
	ld   [hl+], a                                    ; $72aa: $22
	ld   [bc], a                                     ; $72ab: $02
	daa                                              ; $72ac: $27
	add  l                                           ; $72ad: $85
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	ld   bc, $0080                                   ; $72b0: $01 $80 $00
	adc  e                                           ; $72b3: $8b
	ld   bc, $0300                                   ; $72b4: $01 $00 $03
	add  c                                           ; $72b7: $81
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	ld   [bc], a                                     ; $72ba: $02
	add  c                                           ; $72bb: $81
	ld   bc, $0700                                   ; $72bc: $01 $00 $07
	add  l                                           ; $72bf: $85
	nop                                              ; $72c0: $00
	db   $10                                         ; $72c1: $10
	ld   [bc], a                                     ; $72c2: $02
	ld   bc, $0311                                   ; $72c3: $01 $11 $03
	ld   e, e                                        ; $72c6: $5b
	inc  bc                                          ; $72c7: $03
	ld   c, e                                        ; $72c8: $4b
	inc  bc                                          ; $72c9: $03
	inc  sp                                          ; $72ca: $33
	ld   [bc], a                                     ; $72cb: $02
	ld   [hl-], a                                    ; $72cc: $32
	ld   [bc], a                                     ; $72cd: $02
	ld   [de], a                                     ; $72ce: $12
	ld   [bc], a                                     ; $72cf: $02
	ld   [de], a                                     ; $72d0: $12
	ld   [bc], a                                     ; $72d1: $02
	ld   b, $81                                      ; $72d2: $06 $81
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	inc  b                                           ; $72d6: $04
	add  c                                           ; $72d7: $81
	ld   [bc], a                                     ; $72d8: $02
	inc  bc                                          ; $72d9: $03
	ei                                               ; $72da: $fb
	ld   d, h                                        ; $72db: $54
	ld   [hl], h                                     ; $72dc: $74
	inc  c                                           ; $72dd: $0c
	add  b                                           ; $72de: $80
	dec  c                                           ; $72df: $0d
	nop                                              ; $72e0: $00
	dec  l                                           ; $72e1: $2d
	add  b                                           ; $72e2: $80
	db   $dd                                         ; $72e3: $dd
	add  b                                           ; $72e4: $80
	db   $fd                                         ; $72e5: $fd
	ld   b, $cd                                      ; $72e6: $06 $cd
	db   $fd                                         ; $72e8: $fd
	or   l                                           ; $72e9: $b5
	cp   l                                           ; $72ea: $bd
	add  hl, sp                                      ; $72eb: $39
	xor  c                                           ; $72ec: $a9
	add  hl, hl                                      ; $72ed: $29
	add  b                                           ; $72ee: $80
	ld   de, $9501                                   ; $72ef: $11 $01 $95
	dec  d                                           ; $72f2: $15
	add  b                                           ; $72f3: $80
	cp   c                                           ; $72f4: $b9
	add  d                                           ; $72f5: $82
	xor  c                                           ; $72f6: $a9
	add  b                                           ; $72f7: $80
	cp   c                                           ; $72f8: $b9
	add  b                                           ; $72f9: $80
	push de                                          ; $72fa: $d5
	nop                                              ; $72fb: $00
	db   $fc                                         ; $72fc: $fc
	add  l                                           ; $72fd: $85
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	ld   bc, $0080                                   ; $7300: $01 $80 $00
	adc  e                                           ; $7303: $8b
	ld   bc, $0300                                   ; $7304: $01 $00 $03
	add  c                                           ; $7307: $81
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	ld   [bc], a                                     ; $730a: $02
	add  c                                           ; $730b: $81
	ld   bc, $fd02                                   ; $730c: $01 $02 $fd
	ld   l, d                                        ; $730f: $6a
	ld   a, d                                        ; $7310: $7a
	add  c                                           ; $7311: $81
	ld   b, [hl]                                     ; $7312: $46
	nop                                              ; $7313: $00
	ld   d, [hl]                                     ; $7314: $56
	add  b                                           ; $7315: $80
	ld   l, [hl]                                     ; $7316: $6e
	add  b                                           ; $7317: $80
	cp   $06                                         ; $7318: $fe $06
	and  $fe                                         ; $731a: $e6 $fe
	jp   c, $9cde                                    ; $731c: $da $de $9c

	call nc, $8014                                   ; $731f: $d4 $14 $80
	ld   [$4a01], sp                                 ; $7322: $08 $01 $4a
	ld   a, [bc]                                     ; $7325: $0a
	add  b                                           ; $7326: $80
	ld   e, h                                        ; $7327: $5c
	add  d                                           ; $7328: $82
	ld   d, h                                        ; $7329: $54
	add  b                                           ; $732a: $80
	ld   e, h                                        ; $732b: $5c
	add  b                                           ; $732c: $80
	ld   l, d                                        ; $732d: $6a
	nop                                              ; $732e: $00
	ld   a, [$0085]                                  ; $732f: $fa $85 $00
	nop                                              ; $7332: $00
	ld   [bc], a                                     ; $7333: $02
	add  b                                           ; $7334: $80
	ld   bc, $0385                                   ; $7335: $01 $85 $03
	ld   c, $23                                      ; $7338: $0e $23
	ld   [bc], a                                     ; $733a: $02
	or   d                                           ; $733b: $b2
	ld   [bc], a                                     ; $733c: $02
	sub  d                                           ; $733d: $92
	ld   [bc], a                                     ; $733e: $02
	ld   h, d                                        ; $733f: $62
	ld   [bc], a                                     ; $7340: $02
	ld   h, d                                        ; $7341: $62
	ld   [bc], a                                     ; $7342: $02
	ld   [hl+], a                                    ; $7343: $22
	ld   [bc], a                                     ; $7344: $02
	ld   [hl+], a                                    ; $7345: $22
	ld   [bc], a                                     ; $7346: $02
	ei                                               ; $7347: $fb
	add  b                                           ; $7348: $80
	ld   [hl], h                                     ; $7349: $74
	nop                                              ; $734a: $00
	ld   a, h                                        ; $734b: $7c
	add  c                                           ; $734c: $81
	ld   a, l                                        ; $734d: $7d
	add  d                                           ; $734e: $82
	db   $fd                                         ; $734f: $fd
	inc  b                                           ; $7350: $04
	call $b5fd                                       ; $7351: $cd $fd $b5
	db   $fd                                         ; $7354: $fd
	ld   a, c                                        ; $7355: $79
	add  b                                           ; $7356: $80
	ld   l, c                                        ; $7357: $69
	add  b                                           ; $7358: $80
	pop  de                                          ; $7359: $d1
	add  b                                           ; $735a: $80
	push de                                          ; $735b: $d5
	add  b                                           ; $735c: $80
	adc  c                                           ; $735d: $89
	nop                                              ; $735e: $00
	xor  c                                           ; $735f: $a9
	add  c                                           ; $7360: $81
	adc  c                                           ; $7361: $89
	ld   bc, $89a9                                   ; $7362: $01 $a9 $89
	add  b                                           ; $7365: $80
	push de                                          ; $7366: $d5
	nop                                              ; $7367: $00
	ld   bc, $7a80                                   ; $7368: $01 $80 $7a
	add  h                                           ; $736b: $84
	ld   a, [hl]                                     ; $736c: $7e
	add  b                                           ; $736d: $80
	cp   $04                                         ; $736e: $fe $04
	and  $fe                                         ; $7370: $e6 $fe
	jp   c, $bcfe                                    ; $7372: $da $fe $bc

	add  b                                           ; $7375: $80
	or   h                                           ; $7376: $b4
	ld   bc, $68e8                                   ; $7377: $01 $e8 $68
	add  b                                           ; $737a: $80
	ld   l, d                                        ; $737b: $6a
	add  b                                           ; $737c: $80
	ld   b, h                                        ; $737d: $44
	nop                                              ; $737e: $00
	ld   d, h                                        ; $737f: $54
	add  c                                           ; $7380: $81
	ld   b, h                                        ; $7381: $44
	ld   bc, $4454                                   ; $7382: $01 $54 $44
	add  b                                           ; $7385: $80
	ld   l, d                                        ; $7386: $6a
	nop                                              ; $7387: $00
	ld   a, [$0085]                                  ; $7388: $fa $85 $00
	nop                                              ; $738b: $00
	ld   [bc], a                                     ; $738c: $02
	add  b                                           ; $738d: $80
	ld   bc, $0383                                   ; $738e: $01 $83 $03
	inc  c                                           ; $7391: $0c
	inc  de                                          ; $7392: $13
	inc  bc                                          ; $7393: $03
	ld   e, e                                        ; $7394: $5b
	ld   [bc], a                                     ; $7395: $02
	ld   c, d                                        ; $7396: $4a
	ld   [bc], a                                     ; $7397: $02
	ld   [hl-], a                                    ; $7398: $32
	ld   [bc], a                                     ; $7399: $02
	ld   [hl-], a                                    ; $739a: $32
	ld   [bc], a                                     ; $739b: $02
	ld   [de], a                                     ; $739c: $12
	ld   [bc], a                                     ; $739d: $02
	ld   [de], a                                     ; $739e: $12
	add  c                                           ; $739f: $81
	ld   [bc], a                                     ; $73a0: $02
	nop                                              ; $73a1: $00
	ei                                               ; $73a2: $fb
	add  b                                           ; $73a3: $80
	ld   [hl], h                                     ; $73a4: $74
	nop                                              ; $73a5: $00
	ld   a, h                                        ; $73a6: $7c
	add  c                                           ; $73a7: $81
	ld   a, l                                        ; $73a8: $7d
	add  d                                           ; $73a9: $82
	db   $fd                                         ; $73aa: $fd
	inc  b                                           ; $73ab: $04
	call $b5fd                                       ; $73ac: $cd $fd $b5
	db   $fd                                         ; $73af: $fd
	ld   a, c                                        ; $73b0: $79
	add  b                                           ; $73b1: $80
	ld   l, c                                        ; $73b2: $69
	add  b                                           ; $73b3: $80
	pop  de                                          ; $73b4: $d1
	add  b                                           ; $73b5: $80
	push bc                                          ; $73b6: $c5
	rlca                                             ; $73b7: $07
	sub  c                                           ; $73b8: $91
	add  c                                           ; $73b9: $81
	and  c                                           ; $73ba: $a1
	add  c                                           ; $73bb: $81
	sbc  c                                           ; $73bc: $99
	adc  c                                           ; $73bd: $89
	xor  c                                           ; $73be: $a9
	adc  c                                           ; $73bf: $89
	add  b                                           ; $73c0: $80
	push de                                          ; $73c1: $d5
	nop                                              ; $73c2: $00
	ld   bc, $7a80                                   ; $73c3: $01 $80 $7a
	add  h                                           ; $73c6: $84
	ld   a, [hl]                                     ; $73c7: $7e
	add  b                                           ; $73c8: $80
	cp   $04                                         ; $73c9: $fe $04
	and  $fe                                         ; $73cb: $e6 $fe
	jp   c, $bcfe                                    ; $73cd: $da $fe $bc

	add  b                                           ; $73d0: $80
	or   h                                           ; $73d1: $b4
	ld   bc, $68e8                                   ; $73d2: $01 $e8 $68
	add  b                                           ; $73d5: $80
	ld   h, d                                        ; $73d6: $62
	rlca                                             ; $73d7: $07
	ld   c, b                                        ; $73d8: $48
	ld   b, b                                        ; $73d9: $40
	ld   d, b                                        ; $73da: $50
	ld   b, b                                        ; $73db: $40
	ld   c, h                                        ; $73dc: $4c
	ld   b, h                                        ; $73dd: $44
	ld   d, h                                        ; $73de: $54
	ld   b, h                                        ; $73df: $44
	add  b                                           ; $73e0: $80
	ld   l, d                                        ; $73e1: $6a
	nop                                              ; $73e2: $00
	ld   a, [$0085]                                  ; $73e3: $fa $85 $00
	nop                                              ; $73e6: $00
	ld   [bc], a                                     ; $73e7: $02
	add  b                                           ; $73e8: $80
	ld   bc, $0386                                   ; $73e9: $01 $86 $03
	dec  c                                           ; $73ec: $0d
	ld   [bc], a                                     ; $73ed: $02
	ld   [de], a                                     ; $73ee: $12
	ld   [bc], a                                     ; $73ef: $02
	ld   e, d                                        ; $73f0: $5a
	ld   [bc], a                                     ; $73f1: $02
	ld   c, d                                        ; $73f2: $4a
	ld   [bc], a                                     ; $73f3: $02
	ld   [hl-], a                                    ; $73f4: $32
	ld   [bc], a                                     ; $73f5: $02
	ld   [hl-], a                                    ; $73f6: $32
	ld   [bc], a                                     ; $73f7: $02
	ld   [de], a                                     ; $73f8: $12
	ld   [bc], a                                     ; $73f9: $02
	db   $eb                                         ; $73fa: $eb
	add  b                                           ; $73fb: $80
	ld   [hl], h                                     ; $73fc: $74
	nop                                              ; $73fd: $00
	ld   a, h                                        ; $73fe: $7c
	add  c                                           ; $73ff: $81
	ld   a, l                                        ; $7400: $7d
	add  d                                           ; $7401: $82
	db   $fd                                         ; $7402: $fd
	inc  b                                           ; $7403: $04
	call $b5fd                                       ; $7404: $cd $fd $b5
	db   $fd                                         ; $7407: $fd
	ld   a, c                                        ; $7408: $79
	add  b                                           ; $7409: $80
	ld   l, c                                        ; $740a: $69
	add  b                                           ; $740b: $80
	pop  de                                          ; $740c: $d1
	add  b                                           ; $740d: $80
	push bc                                          ; $740e: $c5
	ld   [bc], a                                     ; $740f: $02
	sub  c                                           ; $7410: $91
	add  c                                           ; $7411: $81
	and  c                                           ; $7412: $a1
	add  c                                           ; $7413: $81
	add  c                                           ; $7414: $81
	inc  b                                           ; $7415: $04
	and  c                                           ; $7416: $a1
	add  c                                           ; $7417: $81
	push de                                          ; $7418: $d5
	push bc                                          ; $7419: $c5
	ld   bc, $7a80                                   ; $741a: $01 $80 $7a
	add  h                                           ; $741d: $84
	ld   a, [hl]                                     ; $741e: $7e
	add  b                                           ; $741f: $80
	cp   $04                                         ; $7420: $fe $04
	and  $fe                                         ; $7422: $e6 $fe
	jp   c, $bcfe                                    ; $7424: $da $fe $bc

	add  b                                           ; $7427: $80
	or   h                                           ; $7428: $b4
	ld   bc, $68e8                                   ; $7429: $01 $e8 $68
	add  b                                           ; $742c: $80
	ld   h, d                                        ; $742d: $62
	ld   [bc], a                                     ; $742e: $02
	ld   c, b                                        ; $742f: $48
	ld   b, b                                        ; $7430: $40
	ld   d, b                                        ; $7431: $50
	add  c                                           ; $7432: $81
	ld   b, b                                        ; $7433: $40
	inc  b                                           ; $7434: $04
	ld   d, b                                        ; $7435: $50
	ld   b, b                                        ; $7436: $40
	ld   l, d                                        ; $7437: $6a
	ld   h, d                                        ; $7438: $62
	ld   a, [$0085]                                  ; $7439: $fa $85 $00
	nop                                              ; $743c: $00
	ld   [bc], a                                     ; $743d: $02
	add  b                                           ; $743e: $80
	ld   bc, $0386                                   ; $743f: $01 $86 $03
	dec  c                                           ; $7442: $0d
	ld   [bc], a                                     ; $7443: $02
	ld   a, [bc]                                     ; $7444: $0a
	ld   [bc], a                                     ; $7445: $02
	ld   a, [hl+]                                    ; $7446: $2a
	ld   [bc], a                                     ; $7447: $02
	ld   [hl+], a                                    ; $7448: $22
	ld   [bc], a                                     ; $7449: $02
	ld   a, [de]                                     ; $744a: $1a
	ld   [bc], a                                     ; $744b: $02
	ld   a, [de]                                     ; $744c: $1a
	ld   [bc], a                                     ; $744d: $02
	ld   a, [bc]                                     ; $744e: $0a
	ld   [bc], a                                     ; $744f: $02
	di                                               ; $7450: $f3
	add  b                                           ; $7451: $80
	ld   [hl], h                                     ; $7452: $74
	nop                                              ; $7453: $00
	ld   a, h                                        ; $7454: $7c
	add  c                                           ; $7455: $81
	ld   a, l                                        ; $7456: $7d
	add  d                                           ; $7457: $82
	db   $fd                                         ; $7458: $fd
	inc  b                                           ; $7459: $04
	call $b5fd                                       ; $745a: $cd $fd $b5
	db   $fd                                         ; $745d: $fd
	ld   a, c                                        ; $745e: $79
	add  b                                           ; $745f: $80
	ld   l, c                                        ; $7460: $69
	add  b                                           ; $7461: $80
	pop  de                                          ; $7462: $d1
	add  b                                           ; $7463: $80
	push bc                                          ; $7464: $c5
	ld   [bc], a                                     ; $7465: $02
	sub  c                                           ; $7466: $91
	add  c                                           ; $7467: $81
	and  c                                           ; $7468: $a1
	add  c                                           ; $7469: $81
	add  c                                           ; $746a: $81
	inc  b                                           ; $746b: $04
	xor  c                                           ; $746c: $a9
	add  c                                           ; $746d: $81
	pop  de                                          ; $746e: $d1
	pop  bc                                          ; $746f: $c1
	add  hl, bc                                      ; $7470: $09
	add  b                                           ; $7471: $80
	ld   a, d                                        ; $7472: $7a
	add  h                                           ; $7473: $84
	ld   a, [hl]                                     ; $7474: $7e
	add  b                                           ; $7475: $80
	cp   $04                                         ; $7476: $fe $04
	and  $fe                                         ; $7478: $e6 $fe
	jp   c, $bcfe                                    ; $747a: $da $fe $bc

	add  b                                           ; $747d: $80
	or   h                                           ; $747e: $b4
	ld   bc, $68e8                                   ; $747f: $01 $e8 $68
	add  b                                           ; $7482: $80
	ld   h, d                                        ; $7483: $62
	ld   [bc], a                                     ; $7484: $02
	ld   c, b                                        ; $7485: $48
	ld   b, b                                        ; $7486: $40
	ld   d, b                                        ; $7487: $50
	add  c                                           ; $7488: $81
	ld   b, b                                        ; $7489: $40
	inc  c                                           ; $748a: $0c
	ld   d, h                                        ; $748b: $54
	ld   b, b                                        ; $748c: $40
	ld   l, b                                        ; $748d: $68
	ld   h, b                                        ; $748e: $60
	di                                               ; $748f: $f3
	nop                                              ; $7490: $00
	jr   jr_02d_7493                                 ; $7491: $18 $00

jr_02d_7493:
	jr   nc, jr_02d_7495                             ; $7493: $30 $00

jr_02d_7495:
	ld   h, b                                        ; $7495: $60
	nop                                              ; $7496: $00
	ld   b, b                                        ; $7497: $40
	and  [hl]                                        ; $7498: $a6
	nop                                              ; $7499: $00
	add  d                                           ; $749a: $82
	inc  b                                           ; $749b: $04
	add  b                                           ; $749c: $80
	ld   b, $80                                      ; $749d: $06 $80
	ld   a, [bc]                                     ; $749f: $0a
	add  b                                           ; $74a0: $80
	dec  bc                                          ; $74a1: $0b
	add  d                                           ; $74a2: $82
	rrca                                             ; $74a3: $0f
	add  b                                           ; $74a4: $80
	ld   b, $94                                      ; $74a5: $06 $94
	nop                                              ; $74a7: $00
	add  d                                           ; $74a8: $82
	inc  b                                           ; $74a9: $04
	adc  a                                           ; $74aa: $8f
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	ld   bc, $0091                                   ; $74ad: $01 $91 $00
	nop                                              ; $74b0: $00
	ld   bc, $0089                                   ; $74b1: $01 $89 $00
	nop                                              ; $74b4: $00
	ld   bc, $0091                                   ; $74b5: $01 $91 $00
	nop                                              ; $74b8: $00
	ld   bc, $00ff                                   ; $74b9: $01 $ff $00
	sbc  h                                           ; $74bc: $9c
	nop                                              ; $74bd: $00
	inc  [hl]                                        ; $74be: $34
	ld   d, l                                        ; $74bf: $55
	xor  d                                           ; $74c0: $aa
	ld   d, h                                        ; $74c1: $54
	ld   d, l                                        ; $74c2: $55
	and  c                                           ; $74c3: $a1
	xor  d                                           ; $74c4: $aa
	ld   c, d                                        ; $74c5: $4a
	ld   d, l                                        ; $74c6: $55
	sub  l                                           ; $74c7: $95
	xor  d                                           ; $74c8: $aa
	ld   a, [hl+]                                    ; $74c9: $2a
	ld   d, l                                        ; $74ca: $55
	ld   d, h                                        ; $74cb: $54
	xor  e                                           ; $74cc: $ab
	xor  b                                           ; $74cd: $a8
	ld   d, a                                        ; $74ce: $57
	ld   d, h                                        ; $74cf: $54
	xor  e                                           ; $74d0: $ab
	xor  b                                           ; $74d1: $a8
	ld   d, a                                        ; $74d2: $57
	ld   d, b                                        ; $74d3: $50
	xor  a                                           ; $74d4: $af
	and  b                                           ; $74d5: $a0
	ld   e, a                                        ; $74d6: $5f
	ld   b, b                                        ; $74d7: $40
	cp   a                                           ; $74d8: $bf
	nop                                              ; $74d9: $00
	rst  $38                                         ; $74da: $ff
	nop                                              ; $74db: $00
	rst  $38                                         ; $74dc: $ff
	nop                                              ; $74dd: $00
	rst  $38                                         ; $74de: $ff
	nop                                              ; $74df: $00
	rst  $38                                         ; $74e0: $ff
	nop                                              ; $74e1: $00
	rst  $38                                         ; $74e2: $ff
	nop                                              ; $74e3: $00
	rst  $38                                         ; $74e4: $ff
	nop                                              ; $74e5: $00
	rst  $38                                         ; $74e6: $ff
	ld   bc, $0bff                                   ; $74e7: $01 $ff $0b
	rst  $38                                         ; $74ea: $ff
	rra                                              ; $74eb: $1f
	rst  $38                                         ; $74ec: $ff
	ccf                                              ; $74ed: $3f
	rst  $38                                         ; $74ee: $ff
	cpl                                              ; $74ef: $2f
	rst  $38                                         ; $74f0: $ff
	rrca                                             ; $74f1: $0f
	rst  $38                                         ; $74f2: $ff
	ld   e, a                                        ; $74f3: $5f
	add  c                                           ; $74f4: $81
	rst  $38                                         ; $74f5: $ff
	add  b                                           ; $74f6: $80
	cp   $80                                         ; $74f7: $fe $80
	db   $fc                                         ; $74f9: $fc
	add  b                                           ; $74fa: $80
	ld   sp, hl                                      ; $74fb: $f9
	add  b                                           ; $74fc: $80
	db   $e3                                         ; $74fd: $e3
	add  b                                           ; $74fe: $80
	di                                               ; $74ff: $f3
	add  b                                           ; $7500: $80
	rst  ToBoot                                         ; $7501: $c7
	add  b                                           ; $7502: $80
	sbc  a                                           ; $7503: $9f
	add  b                                           ; $7504: $80
	ccf                                              ; $7505: $3f
	add  b                                           ; $7506: $80
	ld   a, a                                        ; $7507: $7f
	adc  h                                           ; $7508: $8c
	rst  $38                                         ; $7509: $ff
	ld   [bc], a                                     ; $750a: $02
	cp   a                                           ; $750b: $bf
	rst  $38                                         ; $750c: $ff
	cp   a                                           ; $750d: $bf
	sub  a                                           ; $750e: $97
	rst  $38                                         ; $750f: $ff
	ld   [bc], a                                     ; $7510: $02
	rst  $30                                         ; $7511: $f7
	rst  $38                                         ; $7512: $ff
	rst  $30                                         ; $7513: $f7
	adc  l                                           ; $7514: $8d
	rst  $38                                         ; $7515: $ff
	ld   [bc], a                                     ; $7516: $02
	ld   a, a                                        ; $7517: $7f
	rst  $38                                         ; $7518: $ff
	ld   a, a                                        ; $7519: $7f
	add  l                                           ; $751a: $85
	rst  $38                                         ; $751b: $ff
	add  d                                           ; $751c: $82
	cp   $02                                         ; $751d: $fe $02
	cp   [hl]                                        ; $751f: $be
	cp   $be                                         ; $7520: $fe $be
	add  a                                           ; $7522: $87
	cp   $8e                                         ; $7523: $fe $8e
	ld   a, a                                        ; $7525: $7f
	adc  b                                           ; $7526: $88
	rst  $38                                         ; $7527: $ff
	ld   [bc], a                                     ; $7528: $02
	db   $fc                                         ; $7529: $fc
	rst  $38                                         ; $752a: $ff
	db   $fc                                         ; $752b: $fc
	adc  e                                           ; $752c: $8b
	rst  $38                                         ; $752d: $ff
	ld   [bc], a                                     ; $752e: $02
	ld   a, a                                        ; $752f: $7f
	rst  $38                                         ; $7530: $ff
	ld   a, a                                        ; $7531: $7f
	adc  a                                           ; $7532: $8f
	rst  $38                                         ; $7533: $ff
	ld   [bc], a                                     ; $7534: $02
	rst  JumpTable                                         ; $7535: $df
	rst  $38                                         ; $7536: $ff
	rst  JumpTable                                         ; $7537: $df
	add  l                                           ; $7538: $85
	rst  $38                                         ; $7539: $ff
	ld   [bc], a                                     ; $753a: $02
	ld   a, a                                        ; $753b: $7f
	rst  $38                                         ; $753c: $ff
	ld   a, a                                        ; $753d: $7f
	add  e                                           ; $753e: $83
	rst  $38                                         ; $753f: $ff
	add  b                                           ; $7540: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7541: $cf
	inc  bc                                          ; $7542: $03
	db   $e3                                         ; $7543: $e3
	ldh  [$fa], a                                    ; $7544: $e0 $fa
	ld   sp, hl                                      ; $7546: $f9
	add  b                                           ; $7547: $80
	db   $fc                                         ; $7548: $fc
	add  b                                           ; $7549: $80
	cp   $84                                         ; $754a: $fe $84
	rst  $38                                         ; $754c: $ff
	inc  e                                           ; $754d: $1c
	ld   a, [$a0af]                                  ; $754e: $fa $af $a0
	ld   e, a                                        ; $7551: $5f
	ld   b, b                                        ; $7552: $40
	cp   a                                           ; $7553: $bf
	nop                                              ; $7554: $00
	rst  $38                                         ; $7555: $ff
	nop                                              ; $7556: $00
	rst  $38                                         ; $7557: $ff
	nop                                              ; $7558: $00
	rst  $38                                         ; $7559: $ff
	nop                                              ; $755a: $00
	rst  $38                                         ; $755b: $ff
	nop                                              ; $755c: $00
	rst  $38                                         ; $755d: $ff
	nop                                              ; $755e: $00
	rst  $38                                         ; $755f: $ff
	nop                                              ; $7560: $00
	rst  $38                                         ; $7561: $ff
	dec  b                                           ; $7562: $05
	rst  $38                                         ; $7563: $ff
	rrca                                             ; $7564: $0f
	rst  $38                                         ; $7565: $ff
	rra                                              ; $7566: $1f
	rst  $38                                         ; $7567: $ff
	ccf                                              ; $7568: $3f
	rst  $38                                         ; $7569: $ff
	ld   a, a                                        ; $756a: $7f
	add  a                                           ; $756b: $87
	rst  $38                                         ; $756c: $ff
	add  b                                           ; $756d: $80
	cp   $80                                         ; $756e: $fe $80
	ld   hl, sp-$80                                  ; $7570: $f8 $80
	pop  af                                          ; $7572: $f1
	add  b                                           ; $7573: $80
	rst  $20                                         ; $7574: $e7
	add  d                                           ; $7575: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7576: $cf
	add  b                                           ; $7577: $80
	sbc  a                                           ; $7578: $9f
	add  b                                           ; $7579: $80
	ccf                                              ; $757a: $3f
	add  b                                           ; $757b: $80
	ld   a, a                                        ; $757c: $7f
	sbc  h                                           ; $757d: $9c
	rst  $38                                         ; $757e: $ff
	ld   [bc], a                                     ; $757f: $02
	db   $fd                                         ; $7580: $fd
	rst  $38                                         ; $7581: $ff
	db   $fd                                         ; $7582: $fd
	or   e                                           ; $7583: $b3
	rst  $38                                         ; $7584: $ff
	ld   [bc], a                                     ; $7585: $02
	ld   a, a                                        ; $7586: $7f
	rst  $38                                         ; $7587: $ff

jr_02d_7588:
	ld   a, [hl]                                     ; $7588: $7e
	adc  l                                           ; $7589: $8d
	cp   $8e                                         ; $758a: $fe $8e
	ld   a, a                                        ; $758c: $7f
	adc  b                                           ; $758d: $88
	rst  $38                                         ; $758e: $ff
	ld   [bc], a                                     ; $758f: $02
	rst  $30                                         ; $7590: $f7
	rst  $38                                         ; $7591: $ff
	rst  $30                                         ; $7592: $f7
	xor  a                                           ; $7593: $af
	rst  $38                                         ; $7594: $ff
	ld   [bc], a                                     ; $7595: $02
	db   $fd                                         ; $7596: $fd
	rst  $38                                         ; $7597: $ff
	db   $fd                                         ; $7598: $fd
	adc  l                                           ; $7599: $8d
	rst  $38                                         ; $759a: $ff
	ld   [bc], a                                     ; $759b: $02
	nop                                              ; $759c: $00
	cp   $50                                         ; $759d: $fe $50
	add  b                                           ; $759f: $80
	ld   d, e                                        ; $75a0: $53
	ld   bc, $53fb                                   ; $75a1: $01 $fb $53
	add  c                                           ; $75a4: $81
	ei                                               ; $75a5: $fb
	add  b                                           ; $75a6: $80
	adc  e                                           ; $75a7: $8b
	add  c                                           ; $75a8: $81
	cp   e                                           ; $75a9: $bb
	adc  c                                           ; $75aa: $89
	xor  e                                           ; $75ab: $ab
	ld   bc, $ffed                                   ; $75ac: $01 $ed $ff
	add  c                                           ; $75af: $81
	add  c                                           ; $75b0: $81
	ld   [bc], a                                     ; $75b1: $02
	cp   a                                           ; $75b2: $bf
	pop  bc                                          ; $75b3: $c1
	rlca                                             ; $75b4: $07
	add  b                                           ; $75b5: $80
	inc  b                                           ; $75b6: $04
	add  c                                           ; $75b7: $81
	rlca                                             ; $75b8: $07
	add  d                                           ; $75b9: $82
	ld   b, $80                                      ; $75ba: $06 $80
	nop                                              ; $75bc: $00
	inc  bc                                          ; $75bd: $03
	ld   bc, $0200                                   ; $75be: $01 $00 $02
	ld   a, c                                        ; $75c1: $79
	add  b                                           ; $75c2: $80
	and  a                                           ; $75c3: $a7
	add  hl, bc                                      ; $75c4: $09
	xor  a                                           ; $75c5: $af
	or   a                                           ; $75c6: $b7
	cp   a                                           ; $75c7: $bf
	and  e                                           ; $75c8: $a3
	cp   a                                           ; $75c9: $bf
	pop  bc                                          ; $75ca: $c1
	rst  $38                                         ; $75cb: $ff
	adc  c                                           ; $75cc: $89
	cp   e                                           ; $75cd: $bb
	dec  sp                                          ; $75ce: $3b
	add  b                                           ; $75cf: $80
	ld   a, e                                        ; $75d0: $7b
	ld   bc, $0dfb                                   ; $75d1: $01 $fb $0d
	cp   l                                           ; $75d4: $bd
	nop                                              ; $75d5: $00
	ld   a, [de]                                     ; $75d6: $1a
	inc  bc                                          ; $75d7: $03
	dec  b                                           ; $75d8: $05
	ld   bc, $030b                                   ; $75d9: $01 $0b $03
	rla                                              ; $75dc: $17
	rlca                                             ; $75dd: $07
	cpl                                              ; $75de: $2f
	ld   c, $df                                      ; $75df: $0e $df
	dec  e                                           ; $75e1: $1d
	ccf                                              ; $75e2: $3f
	ld   a, [hl-]                                    ; $75e3: $3a
	rst  $38                                         ; $75e4: $ff
	ld   b, $ff                                      ; $75e5: $06 $ff
	add  hl, de                                      ; $75e7: $19
	ei                                               ; $75e8: $fb
	db   $db                                         ; $75e9: $db
	ei                                               ; $75ea: $fb
	xor  e                                           ; $75eb: $ab
	ei                                               ; $75ec: $fb
	ld   e, e                                        ; $75ed: $5b
	ei                                               ; $75ee: $fb
	cp   e                                           ; $75ef: $bb
	ei                                               ; $75f0: $fb
	ld   h, e                                        ; $75f1: $63
	add  c                                           ; $75f2: $81
	rst  $30                                         ; $75f3: $f7
	nop                                              ; $75f4: $00
	add  hl, de                                      ; $75f5: $19
	add  b                                           ; $75f6: $80
	cp   $00                                         ; $75f7: $fe $00
	rst  $38                                         ; $75f9: $ff
	add  c                                           ; $75fa: $81
	add  b                                           ; $75fb: $80
	ld   bc, $b8b9                                   ; $75fc: $01 $b9 $b8
	add  c                                           ; $75ff: $81
	or   a                                           ; $7600: $b7
	inc  b                                           ; $7601: $04
	ldh  a, [$7f]                                    ; $7602: $f0 $7f
	ld   e, c                                        ; $7604: $59
	ccf                                              ; $7605: $3f
	jr   nz, jr_02d_7588                             ; $7606: $20 $80

	rra                                              ; $7608: $1f
	nop                                              ; $7609: $00
	rst  $38                                         ; $760a: $ff
	add  c                                           ; $760b: $81
	ld   bc, $ff03                                   ; $760c: $01 $03 $ff
	add  c                                           ; $760f: $81
	rst  $38                                         ; $7610: $ff
	jp   $fe80                                       ; $7611: $c3 $80 $fe


	inc  bc                                          ; $7614: $03
	rst  $38                                         ; $7615: $ff
	call nz, Call_02d_78ff                           ; $7616: $c4 $ff $78
	add  b                                           ; $7619: $80
	rst  ToBoot                                         ; $761a: $c7
	nop                                              ; $761b: $00
	rst  $38                                         ; $761c: $ff
	add  c                                           ; $761d: $81
	ld   de, $7f01                                   ; $761e: $11 $01 $7f
	sbc  a                                           ; $7621: $9f
	add  b                                           ; $7622: $80
	rst  $38                                         ; $7623: $ff
	add  b                                           ; $7624: $80
	rra                                              ; $7625: $1f
	inc  bc                                          ; $7626: $03
	rst  $38                                         ; $7627: $ff
	rrca                                             ; $7628: $0f
	rst  $38                                         ; $7629: $ff
	ld   bc, $ff81                                   ; $762a: $01 $81 $ff
	add  c                                           ; $762d: $81
	nop                                              ; $762e: $00
	add  hl, bc                                      ; $762f: $09
	rst  $38                                         ; $7630: $ff
	cp   $ff                                         ; $7631: $fe $ff
	db   $fd                                         ; $7633: $fd
	rst  $38                                         ; $7634: $ff
	ei                                               ; $7635: $fb
	rst  $38                                         ; $7636: $ff
	rst  $30                                         ; $7637: $f7
	db   $fc                                         ; $7638: $fc
	inc  c                                           ; $7639: $0c
	add  b                                           ; $763a: $80
	ld   hl, sp+$00                                  ; $763b: $f8 $00
	rst  $38                                         ; $763d: $ff
	add  c                                           ; $763e: $81
	nop                                              ; $763f: $00
	dec  b                                           ; $7640: $05
	rst  $38                                         ; $7641: $ff
	nop                                              ; $7642: $00
	rst  $38                                         ; $7643: $ff
	nop                                              ; $7644: $00
	rst  $38                                         ; $7645: $ff
	nop                                              ; $7646: $00
	add  b                                           ; $7647: $80
	rst  $38                                         ; $7648: $ff
	add  d                                           ; $7649: $82
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	rst  $38                                         ; $764c: $ff
	add  c                                           ; $764d: $81
	adc  b                                           ; $764e: $88
	ld   bc, $fcfb                                   ; $764f: $01 $fb $fc
	add  b                                           ; $7652: $80
	rst  $38                                         ; $7653: $ff
	add  b                                           ; $7654: $80
	ld   hl, sp+$03                                  ; $7655: $f8 $03
	rst  $38                                         ; $7657: $ff
	ldh  a, [rIE]                                    ; $7658: $f0 $ff
	add  b                                           ; $765a: $80
	add  c                                           ; $765b: $81
	rst  $38                                         ; $765c: $ff
	add  c                                           ; $765d: $81
	ld   bc, $9d01                                   ; $765e: $01 $01 $9d
	adc  l                                           ; $7661: $8d
	add  c                                           ; $7662: $81
	ld   a, l                                        ; $7663: $7d
	inc  b                                           ; $7664: $04
	rrca                                             ; $7665: $0f
	cp   $9a                                         ; $7666: $fe $9a
	db   $fc                                         ; $7668: $fc
	inc  b                                           ; $7669: $04
	add  b                                           ; $766a: $80
	ld   hl, sp-$01                                  ; $766b: $f8 $ff
	nop                                              ; $766d: $00
	ldh  a, [rP1]                                    ; $766e: $f0 $00
	ld   bc, $00ff                                   ; $7670: $01 $ff $00
	add  [hl]                                        ; $7673: $86
	db   $db                                         ; $7674: $db
	add  b                                           ; $7675: $80
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	rst  $38                                         ; $7678: $ff
	add  c                                           ; $7679: $81
	nop                                              ; $767a: $00
	ld   bc, $00ff                                   ; $767b: $01 $ff $00
	add  [hl]                                        ; $767e: $86
	ld   l, l                                        ; $767f: $6d
	add  b                                           ; $7680: $80
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	rst  $38                                         ; $7683: $ff
	add  c                                           ; $7684: $81
	nop                                              ; $7685: $00
	ld   bc, $00ff                                   ; $7686: $01 $ff $00
	add  [hl]                                        ; $7689: $86
	or   [hl]                                        ; $768a: $b6
	add  b                                           ; $768b: $80
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	rst  $38                                         ; $768e: $ff
	add  c                                           ; $768f: $81
	nop                                              ; $7690: $00
	ld   [bc], a                                     ; $7691: $02
	rst  $38                                         ; $7692: $ff
	nop                                              ; $7693: $00
	dec  de                                          ; $7694: $1b
	add  l                                           ; $7695: $85
	db   $db                                         ; $7696: $db
	ld   [bc], a                                     ; $7697: $02
	ret  nz                                          ; $7698: $c0

	nop                                              ; $7699: $00
	rst  $38                                         ; $769a: $ff
	add  c                                           ; $769b: $81
	nop                                              ; $769c: $00
	ld   [bc], a                                     ; $769d: $02
	rst  $38                                         ; $769e: $ff
	nop                                              ; $769f: $00
	inc  bc                                          ; $76a0: $03
	add  l                                           ; $76a1: $85
	db   $db                                         ; $76a2: $db
	ld   [bc], a                                     ; $76a3: $02
	ret  c                                           ; $76a4: $d8

jr_02d_76a5:
	nop                                              ; $76a5: $00
	rst  $38                                         ; $76a6: $ff
	add  c                                           ; $76a7: $81
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	rst  $38                                         ; $76aa: $ff
	add  b                                           ; $76ab: $80
	nop                                              ; $76ac: $00
	add  [hl]                                        ; $76ad: $86
	db   $db                                         ; $76ae: $db
	ld   bc, $ff00                                   ; $76af: $01 $00 $ff
	add  c                                           ; $76b2: $81
	nop                                              ; $76b3: $00
	ld   [bc], a                                     ; $76b4: $02
	rst  $38                                         ; $76b5: $ff
	nop                                              ; $76b6: $00
	dec  c                                           ; $76b7: $0d
	add  l                                           ; $76b8: $85
	ld   l, l                                        ; $76b9: $6d
	ld   [bc], a                                     ; $76ba: $02
	ld   h, b                                        ; $76bb: $60
	nop                                              ; $76bc: $00
	rst  $38                                         ; $76bd: $ff
	add  c                                           ; $76be: $81
	nop                                              ; $76bf: $00
	ld   [bc], a                                     ; $76c0: $02
	rst  $38                                         ; $76c1: $ff
	nop                                              ; $76c2: $00
	ld   bc, $6d85                                   ; $76c3: $01 $85 $6d
	ld   [bc], a                                     ; $76c6: $02
	ld   l, h                                        ; $76c7: $6c
	nop                                              ; $76c8: $00
	rst  $38                                         ; $76c9: $ff
	add  c                                           ; $76ca: $81
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	rst  $38                                         ; $76cd: $ff
	add  b                                           ; $76ce: $80
	nop                                              ; $76cf: $00
	add  [hl]                                        ; $76d0: $86
	ld   l, l                                        ; $76d1: $6d
	ld   bc, $ff00                                   ; $76d2: $01 $00 $ff
	add  c                                           ; $76d5: $81
	nop                                              ; $76d6: $00
	ld   [bc], a                                     ; $76d7: $02
	rst  $38                                         ; $76d8: $ff
	nop                                              ; $76d9: $00
	ld   [hl], $85                                   ; $76da: $36 $85
	or   [hl]                                        ; $76dc: $b6
	ld   [bc], a                                     ; $76dd: $02
	add  b                                           ; $76de: $80
	nop                                              ; $76df: $00
	rst  $38                                         ; $76e0: $ff
	add  c                                           ; $76e1: $81
	nop                                              ; $76e2: $00
	ld   [bc], a                                     ; $76e3: $02
	rst  $38                                         ; $76e4: $ff
	nop                                              ; $76e5: $00
	ld   b, $85                                      ; $76e6: $06 $85
	or   [hl]                                        ; $76e8: $b6
	ld   [bc], a                                     ; $76e9: $02
	or   b                                           ; $76ea: $b0
	nop                                              ; $76eb: $00
	rst  $38                                         ; $76ec: $ff

jr_02d_76ed:
	add  c                                           ; $76ed: $81
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	rst  $38                                         ; $76f0: $ff
	add  b                                           ; $76f1: $80
	nop                                              ; $76f2: $00
	add  [hl]                                        ; $76f3: $86
	or   [hl]                                        ; $76f4: $b6
	ld   bc, $ff00                                   ; $76f5: $01 $00 $ff
	ret  nz                                          ; $76f8: $c0

	nop                                              ; $76f9: $00
	add  b                                           ; $76fa: $80
	ld   b, h                                        ; $76fb: $44
	add  b                                           ; $76fc: $80
	ld   a, a                                        ; $76fd: $7f
	add  b                                           ; $76fe: $80
	adc  $80                                         ; $76ff: $ce $80
	ld   d, l                                        ; $7701: $55
	add  b                                           ; $7702: $80
	ld   h, h                                        ; $7703: $64
	add  b                                           ; $7704: $80
	ld   l, [hl]                                     ; $7705: $6e
	add  b                                           ; $7706: $80
	ld   b, h                                        ; $7707: $44
	add  d                                           ; $7708: $82
	nop                                              ; $7709: $00
	add  b                                           ; $770a: $80
	add  b                                           ; $770b: $80
	add  d                                           ; $770c: $82
	nop                                              ; $770d: $00
	add  d                                           ; $770e: $82
	add  b                                           ; $770f: $80
	add  h                                           ; $7710: $84
	nop                                              ; $7711: $00
	add  b                                           ; $7712: $80
	inc  bc                                          ; $7713: $03
	add  [hl]                                        ; $7714: $86
	nop                                              ; $7715: $00
	add  b                                           ; $7716: $80
	inc  bc                                          ; $7717: $03
	add  b                                           ; $7718: $80
	nop                                              ; $7719: $00
	add  b                                           ; $771a: $80
	ld   b, b                                        ; $771b: $40
	add  b                                           ; $771c: $80
	db   $fc                                         ; $771d: $fc
	add  d                                           ; $771e: $82
	ld   b, h                                        ; $771f: $44
	add  d                                           ; $7720: $82
	add  h                                           ; $7721: $84
	add  b                                           ; $7722: $80
	jr   jr_02d_76a5                                 ; $7723: $18 $80

	nop                                              ; $7725: $00
	add  b                                           ; $7726: $80
	ld   b, b                                        ; $7727: $40
	add  b                                           ; $7728: $80
	ld   [hl], a                                     ; $7729: $77
	add  b                                           ; $772a: $80
	and  h                                           ; $772b: $a4
	add  b                                           ; $772c: $80
	db   $fc                                         ; $772d: $fc
	add  d                                           ; $772e: $82
	inc  h                                           ; $772f: $24
	add  b                                           ; $7730: $80
	rst  $10                                         ; $7731: $d7
	add  d                                           ; $7732: $82
	nop                                              ; $7733: $00
	adc  d                                           ; $7734: $8a
	add  b                                           ; $7735: $80
	add  b                                           ; $7736: $80
	nop                                              ; $7737: $00
	add  b                                           ; $7738: $80
	ld   a, $80                                      ; $7739: $3e $80
	rst  $38                                         ; $773b: $ff
	add  b                                           ; $773c: $80

jr_02d_773d:
	xor  d                                           ; $773d: $aa
	add  b                                           ; $773e: $80
	ld   a, $80                                      ; $773f: $3e $80
	rst  $38                                         ; $7741: $ff
	add  b                                           ; $7742: $80
	ld   d, l                                        ; $7743: $55
	add  b                                           ; $7744: $80
	rst  $38                                         ; $7745: $ff
	add  d                                           ; $7746: $82
	nop                                              ; $7747: $00
	add  d                                           ; $7748: $82
	add  b                                           ; $7749: $80
	add  b                                           ; $774a: $80
	nop                                              ; $774b: $00
	add  b                                           ; $774c: $80

jr_02d_774d:
	add  b                                           ; $774d: $80
	add  b                                           ; $774e: $80
	nop                                              ; $774f: $00
	add  b                                           ; $7750: $80
	add  b                                           ; $7751: $80
	add  b                                           ; $7752: $80
	nop                                              ; $7753: $00
	add  b                                           ; $7754: $80
	ld   a, a                                        ; $7755: $7f
	add  b                                           ; $7756: $80
	ld   e, [hl]                                     ; $7757: $5e
	add  b                                           ; $7758: $80
	add  b                                           ; $7759: $80
	add  b                                           ; $775a: $80
	ld   a, a                                        ; $775b: $7f
	add  b                                           ; $775c: $80
	ld   a, [hl+]                                    ; $775d: $2a
	add  b                                           ; $775e: $80
	ld   [de], a                                     ; $775f: $12
	add  b                                           ; $7760: $80
	ld   l, l                                        ; $7761: $6d
	add  b                                           ; $7762: $80
	nop                                              ; $7763: $00
	add  b                                           ; $7764: $80
	ld   bc, $0280                                   ; $7765: $01 $80 $02
	add  b                                           ; $7768: $80
	rlca                                             ; $7769: $07
	add  b                                           ; $776a: $80
	jr   jr_02d_76ed                                 ; $776b: $18 $80

	rlca                                             ; $776d: $07
	add  b                                           ; $776e: $80
	add  h                                           ; $776f: $84
	add  b                                           ; $7770: $80
	add  a                                           ; $7771: $87
	add  b                                           ; $7772: $80
	nop                                              ; $7773: $00
	add  b                                           ; $7774: $80

jr_02d_7775:
	ld   bc, $8180                                   ; $7775: $01 $80 $81
	add  b                                           ; $7778: $80
	pop  bc                                          ; $7779: $c1
	add  b                                           ; $777a: $80
	ld   sp, $c180                                   ; $777b: $31 $80 $c1
	add  b                                           ; $777e: $80
	ld   b, c                                        ; $777f: $41
	add  b                                           ; $7780: $80
	pop  bc                                          ; $7781: $c1
	add  d                                           ; $7782: $82

jr_02d_7783:
	nop                                              ; $7783: $00
	add  b                                           ; $7784: $80
	ld   [$0484], sp                                 ; $7785: $08 $84 $04
	add  b                                           ; $7788: $80
	ld   b, b                                        ; $7789: $40
	add  b                                           ; $778a: $80
	add  b                                           ; $778b: $80
	add  b                                           ; $778c: $80
	nop                                              ; $778d: $00
	add  b                                           ; $778e: $80
	ld   a, $80                                      ; $778f: $3e $80
	inc  e                                           ; $7791: $1c
	add  b                                           ; $7792: $80
	rst  $38                                         ; $7793: $ff
	add  b                                           ; $7794: $80
	inc  d                                           ; $7795: $14
	add  b                                           ; $7796: $80
	ccf                                              ; $7797: $3f
	add  b                                           ; $7798: $80
	ld   e, h                                        ; $7799: $5c
	add  b                                           ; $779a: $80
	ld   c, c                                        ; $779b: $49
	add  b                                           ; $779c: $80
	nop                                              ; $779d: $00
	add  b                                           ; $779e: $80
	rrca                                             ; $779f: $0f
	add  b                                           ; $77a0: $80
	ld   [$8f80], sp                                 ; $77a1: $08 $80 $8f
	add  b                                           ; $77a4: $80
	ld   bc, $1f80                                   ; $77a5: $01 $80 $1f
	add  d                                           ; $77a8: $82
	ld   bc, $0080                                   ; $77a9: $01 $80 $00
	add  b                                           ; $77ac: $80
	ldh  [$80], a                                    ; $77ad: $e0 $80
	ld   hl, $e080                                   ; $77af: $21 $80 $e0
	add  b                                           ; $77b2: $80
	nop                                              ; $77b3: $00
	add  b                                           ; $77b4: $80
	pop  af                                          ; $77b5: $f1
	add  b                                           ; $77b6: $80
	ld   bc, $0082                                   ; $77b7: $01 $82 $00
	add  b                                           ; $77ba: $80
	jr   nz, jr_02d_773d                             ; $77bb: $20 $80

	db   $fc                                         ; $77bd: $fc
	add  b                                           ; $77be: $80
	db   $10                                         ; $77bf: $10
	add  b                                           ; $77c0: $80
	ld   [$1880], sp                                 ; $77c1: $08 $80 $18
	add  b                                           ; $77c4: $80
	nop                                              ; $77c5: $00
	add  b                                           ; $77c6: $80
	ldh  a, [$80]                                    ; $77c7: $f0 $80
	nop                                              ; $77c9: $00
	add  b                                           ; $77ca: $80
	jr   jr_02d_774d                                 ; $77cb: $18 $80

	ld   h, $80                                      ; $77cd: $26 $80
	rst  $38                                         ; $77cf: $ff
	add  d                                           ; $77d0: $82
	ld   d, l                                        ; $77d1: $55
	add  b                                           ; $77d2: $80
	ld   [hl], a                                     ; $77d3: $77
	add  b                                           ; $77d4: $80
	inc  b                                           ; $77d5: $04
	add  b                                           ; $77d6: $80
	nop                                              ; $77d7: $00
	add  b                                           ; $77d8: $80
	ld   bc, $0f80                                   ; $77d9: $01 $80 $0f
	add  b                                           ; $77dc: $80
	adc  c                                           ; $77dd: $89
	add  b                                           ; $77de: $80
	add  hl, bc                                      ; $77df: $09
	add  b                                           ; $77e0: $80
	rrca                                             ; $77e1: $0f
	add  d                                           ; $77e2: $82
	ld   bc, $0082                                   ; $77e3: $01 $82 $00
	add  b                                           ; $77e6: $80
	db   $e3                                         ; $77e7: $e3
	add  b                                           ; $77e8: $80
	ld   hl, $2080                                   ; $77e9: $21 $80 $20
	add  b                                           ; $77ec: $80
	pop  hl                                          ; $77ed: $e1
	add  b                                           ; $77ee: $80
	inc  bc                                          ; $77ef: $03
	add  d                                           ; $77f0: $82
	nop                                              ; $77f1: $00
	add  b                                           ; $77f2: $80
	jr   nz, jr_02d_7775                             ; $77f3: $20 $80

	cp   $80                                         ; $77f5: $fe $80
	ld   h, h                                        ; $77f7: $64
	add  b                                           ; $77f8: $80
	ld   hl, sp-$80                                  ; $77f9: $f8 $80
	inc  [hl]                                        ; $77fb: $34
	add  b                                           ; $77fc: $80
	cp   $80                                         ; $77fd: $fe $80
	jr   nz, jr_02d_7783                             ; $77ff: $20 $82

	nop                                              ; $7801: $00
	adc  c                                           ; $7802: $89
	ld   bc, $6107                                   ; $7803: $01 $07 $61
	or   b                                           ; $7806: $b0
	ret  nc                                          ; $7807: $d0

	rst  $38                                         ; $7808: $ff
	add  d                                           ; $7809: $82
	cp   [hl]                                        ; $780a: $be
	or   [hl]                                        ; $780b: $b6
	xor  [hl]                                        ; $780c: $ae
	add  b                                           ; $780d: $80
	cp   [hl]                                        ; $780e: $be
	inc  b                                           ; $780f: $04
	and  [hl]                                        ; $7810: $a6
	cp   [hl]                                        ; $7811: $be
	cp   $7e                                         ; $7812: $fe $7e
	ld   b, e                                        ; $7814: $43
	add  b                                           ; $7815: $80
	ccf                                              ; $7816: $3f
	add  b                                           ; $7817: $80
	nop                                              ; $7818: $00
	dec  bc                                          ; $7819: $0b
	cp   $82                                         ; $781a: $fe $82
	add  e                                           ; $781c: $83
	add  b                                           ; $781d: $80
	db   $fd                                         ; $781e: $fd
	add  l                                           ; $781f: $85
	cp   $82                                         ; $7820: $fe $82
	rst  $38                                         ; $7822: $ff
	ld   sp, hl                                      ; $7823: $f9
	rst  $38                                         ; $7824: $ff
	add  d                                           ; $7825: $82
	add  b                                           ; $7826: $80
	rst  $38                                         ; $7827: $ff
	add  d                                           ; $7828: $82
	nop                                              ; $7829: $00
	inc  b                                           ; $782a: $04
	ld   hl, sp+$00                                  ; $782b: $f8 $00
	db   $fc                                         ; $782d: $fc
	inc  b                                           ; $782e: $04
	rst  $38                                         ; $782f: $ff
	add  c                                           ; $7830: $81
	nop                                              ; $7831: $00
	ld   bc, $00ff                                   ; $7832: $01 $ff $00
	add  b                                           ; $7835: $80
	rst  $38                                         ; $7836: $ff
	add  [hl]                                        ; $7837: $86
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	rst  $38                                         ; $783a: $ff
	add  c                                           ; $783b: $81
	nop                                              ; $783c: $00
	ld   bc, $00ff                                   ; $783d: $01 $ff $00
	add  b                                           ; $7840: $80
	rst  $38                                         ; $7841: $ff
	adc  [hl]                                        ; $7842: $8e
	nop                                              ; $7843: $00
	ld   b, $3f                                      ; $7844: $06 $3f
	ld   bc, $0141                                   ; $7846: $01 $41 $01
	cp   a                                           ; $7849: $bf
	or   a                                           ; $784a: $b7
	xor  a                                           ; $784b: $af
	add  b                                           ; $784c: $80
	cp   a                                           ; $784d: $bf
	inc  b                                           ; $784e: $04
	and  a                                           ; $784f: $a7
	cp   a                                           ; $7850: $bf
	cp   l                                           ; $7851: $bd
	cp   [hl]                                        ; $7852: $be
	jp   nz, $fc80                                   ; $7853: $c2 $80 $fc

	nop                                              ; $7856: $00
	rst  $38                                         ; $7857: $ff
	add  c                                           ; $7858: $81
	ld   b, b                                        ; $7859: $40
	add  c                                           ; $785a: $81
	rst  $38                                         ; $785b: $ff
	ld   [bc], a                                     ; $785c: $02
	ret  nz                                          ; $785d: $c0

	rst  $38                                         ; $785e: $ff
	ld   a, a                                        ; $785f: $7f
	add  b                                           ; $7860: $80
	add  b                                           ; $7861: $80
	add  d                                           ; $7862: $82
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	rst  $38                                         ; $7865: $ff
	add  c                                           ; $7866: $81
	jr   z, jr_02d_786c                              ; $7867: $28 $03

	rst  $28                                         ; $7869: $ef
	add  sp, -$11                                    ; $786a: $e8 $ef

jr_02d_786c:
	ccf                                              ; $786c: $3f
	add  b                                           ; $786d: $80
	ldh  a, [$84]                                    ; $786e: $f0 $84
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	rst  $38                                         ; $7872: $ff
	add  c                                           ; $7873: $81
	nop                                              ; $7874: $00
	ld   bc, $00ff                                   ; $7875: $01 $ff $00
	add  b                                           ; $7878: $80
	rst  $38                                         ; $7879: $ff
	add  l                                           ; $787a: $85
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	ld   h, b                                        ; $787d: $60
	adc  l                                           ; $787e: $8d
	or   b                                           ; $787f: $b0
	nop                                              ; $7880: $00
	sub  [hl]                                        ; $7881: $96
	adc  l                                           ; $7882: $8d
	xor  e                                           ; $7883: $ab
	nop                                              ; $7884: $00
	db   $ed                                         ; $7885: $ed
	rst  $38                                         ; $7886: $ff
	nop                                              ; $7887: $00
	rst  $38                                         ; $7888: $ff
	nop                                              ; $7889: $00
	rst  $38                                         ; $788a: $ff
	nop                                              ; $788b: $00
	rst  $38                                         ; $788c: $ff
	nop                                              ; $788d: $00
	rst  $38                                         ; $788e: $ff
	nop                                              ; $788f: $00
	rst  $38                                         ; $7890: $ff
	nop                                              ; $7891: $00
	rst  $38                                         ; $7892: $ff
	nop                                              ; $7893: $00
	rst  $38                                         ; $7894: $ff
	nop                                              ; $7895: $00
	rst  $38                                         ; $7896: $ff
	nop                                              ; $7897: $00
	db   $f4                                         ; $7898: $f4
	nop                                              ; $7899: $00
	add  hl, sp                                      ; $789a: $39
	ld   bc, $0080                                   ; $789b: $01 $80 $00
	ld   c, $30                                      ; $789e: $0e $30

jr_02d_78a0:
	nop                                              ; $78a0: $00
	ld   a, b                                        ; $78a1: $78
	nop                                              ; $78a2: $00
	add  hl, bc                                      ; $78a3: $09
	nop                                              ; $78a4: $00
	ld   [hl], e                                     ; $78a5: $73
	nop                                              ; $78a6: $00
	jr   c, jr_02d_78a9                              ; $78a7: $38 $00

jr_02d_78a9:
	ld   b, b                                        ; $78a9: $40
	nop                                              ; $78aa: $00
	ld   a, e                                        ; $78ab: $7b
	nop                                              ; $78ac: $00
	ld   sp, $0083                                   ; $78ad: $31 $83 $00
	ld   [bc], a                                     ; $78b0: $02
	sub  d                                           ; $78b1: $92
	nop                                              ; $78b2: $00
	ret  nz                                          ; $78b3: $c0

	add  e                                           ; $78b4: $83
	nop                                              ; $78b5: $00
	ld   [bc], a                                     ; $78b6: $02
	sbc  $00                                         ; $78b7: $de $00
	adc  h                                           ; $78b9: $8c
	add  e                                           ; $78ba: $83
	nop                                              ; $78bb: $00
	ld   [bc], a                                     ; $78bc: $02
	db   $e3                                         ; $78bd: $e3
	nop                                              ; $78be: $00
	ld   [hl], a                                     ; $78bf: $77
	add  e                                           ; $78c0: $83
	nop                                              ; $78c1: $00
	ld   b, $07                                      ; $78c2: $06 $07
	nop                                              ; $78c4: $00
	sub  e                                           ; $78c5: $93
	nop                                              ; $78c6: $00
	sbc  a                                           ; $78c7: $9f
	nop                                              ; $78c8: $00
	dec  de                                          ; $78c9: $1b
	adc  c                                           ; $78ca: $89
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	add  h                                           ; $78cd: $84
	add  e                                           ; $78ce: $83
	nop                                              ; $78cf: $00
	inc  c                                           ; $78d0: $0c
	ld   sp, $7b00                                   ; $78d1: $31 $00 $7b
	nop                                              ; $78d4: $00
	inc  sp                                          ; $78d5: $33

jr_02d_78d6:
	nop                                              ; $78d6: $00
	add  hl, sp                                      ; $78d7: $39
	nop                                              ; $78d8: $00
	ld   a, e                                        ; $78d9: $7b
	nop                                              ; $78da: $00
	dec  sp                                          ; $78db: $3b
	nop                                              ; $78dc: $00
	ld   [$0081], sp                                 ; $78dd: $08 $81 $00
	ld   a, [bc]                                     ; $78e0: $0a
	sub  $00                                         ; $78e1: $d6 $00
	sub  $00                                         ; $78e3: $d6 $00
	add  b                                           ; $78e5: $80
	nop                                              ; $78e6: $00
	ret  nz                                          ; $78e7: $c0

	nop                                              ; $78e8: $00
	adc  $00                                         ; $78e9: $ce $00
	add  [hl]                                        ; $78eb: $86
	adc  a                                           ; $78ec: $8f
	nop                                              ; $78ed: $00
	inc  b                                           ; $78ee: $04
	ld   [$1000], sp                                 ; $78ef: $08 $00 $10
	nop                                              ; $78f2: $00
	db   $10                                         ; $78f3: $10
	add  a                                           ; $78f4: $87
	nop                                              ; $78f5: $00
	ld   [hl+], a                                    ; $78f6: $22
	ld   [$1800], sp                                 ; $78f7: $08 $00 $18
	nop                                              ; $78fa: $00
	inc  a                                           ; $78fb: $3c
	nop                                              ; $78fc: $00
	jr   nz, jr_02d_78ff                             ; $78fd: $20 $00

Call_02d_78ff:
jr_02d_78ff:
	inc  c                                           ; $78ff: $0c
	nop                                              ; $7900: $00
	jr   jr_02d_7903                                 ; $7901: $18 $00

jr_02d_7903:
	jr   nc, jr_02d_7905                             ; $7903: $30 $00

jr_02d_7905:
	inc  e                                           ; $7905: $1c
	nop                                              ; $7906: $00
	inc  a                                           ; $7907: $3c
	nop                                              ; $7908: $00
	jr   jr_02d_790b                                 ; $7909: $18 $00

jr_02d_790b:
	inc  a                                           ; $790b: $3c
	nop                                              ; $790c: $00
	jr   nz, jr_02d_790f                             ; $790d: $20 $00

jr_02d_790f:
	inc  e                                           ; $790f: $1c
	nop                                              ; $7910: $00
	inc  e                                           ; $7911: $1c
	nop                                              ; $7912: $00
	jr   nz, jr_02d_7915                             ; $7913: $20 $00

jr_02d_7915:
	inc  a                                           ; $7915: $3c
	nop                                              ; $7916: $00
	jr   jr_02d_7919                                 ; $7917: $18 $00

jr_02d_7919:
	inc  c                                           ; $7919: $0c
	add  c                                           ; $791a: $81
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	jr   jr_02d_78a0                                 ; $791d: $18 $81

	nop                                              ; $791f: $00
	ld   c, $30                                      ; $7920: $0e $30

jr_02d_7922:
	nop                                              ; $7922: $00
	ld   a, [de]                                     ; $7923: $1a
	nop                                              ; $7924: $00
	ld   a, [hl-]                                    ; $7925: $3a
	nop                                              ; $7926: $00
	inc  b                                           ; $7927: $04
	nop                                              ; $7928: $00
	inc  a                                           ; $7929: $3c
	nop                                              ; $792a: $00
	inc  e                                           ; $792b: $1c
	nop                                              ; $792c: $00
	jr   jr_02d_792f                                 ; $792d: $18 $00

jr_02d_792f:
	inc  a                                           ; $792f: $3c
	add  c                                           ; $7930: $81
	nop                                              ; $7931: $00
	ld   c, $20                                      ; $7932: $0e $20
	nop                                              ; $7934: $00
	inc  a                                           ; $7935: $3c
	nop                                              ; $7936: $00
	jr   jr_02d_7939                                 ; $7937: $18 $00

jr_02d_7939:
	jr   jr_02d_793b                                 ; $7939: $18 $00

jr_02d_793b:
	inc  a                                           ; $793b: $3c
	nop                                              ; $793c: $00
	inc  b                                           ; $793d: $04
	nop                                              ; $793e: $00
	jr   jr_02d_7941                                 ; $793f: $18 $00

jr_02d_7941:
	inc  e                                           ; $7941: $1c
	add  c                                           ; $7942: $81
	nop                                              ; $7943: $00
	ld   [$003c], sp                                 ; $7944: $08 $3c $00
	jr   jr_02d_7949                                 ; $7947: $18 $00

jr_02d_7949:
	inc  a                                           ; $7949: $3c
	nop                                              ; $794a: $00
	jr   c, jr_02d_794d                              ; $794b: $38 $00

jr_02d_794d:
	inc  c                                           ; $794d: $0c
	add  c                                           ; $794e: $81
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	jr   jr_02d_78d6                                 ; $7951: $18 $83

	nop                                              ; $7953: $00
	inc  b                                           ; $7954: $04
	stop                                             ; $7955: $10 $00
	jr   jr_02d_7959                                 ; $7957: $18 $00

jr_02d_7959:
	inc  a                                           ; $7959: $3c
	add  c                                           ; $795a: $81
	nop                                              ; $795b: $00
	ld   [bc], a                                     ; $795c: $02
	inc  a                                           ; $795d: $3c
	nop                                              ; $795e: $00
	inc  a                                           ; $795f: $3c
	add  c                                           ; $7960: $81
	nop                                              ; $7961: $00
	ld   b, $3c                                      ; $7962: $06 $3c
	nop                                              ; $7964: $00
	jr   jr_02d_7967                                 ; $7965: $18 $00

jr_02d_7967:
	jr   jr_02d_7969                                 ; $7967: $18 $00

jr_02d_7969:
	inc  a                                           ; $7969: $3c
	add  c                                           ; $796a: $81
	nop                                              ; $796b: $00
	inc  e                                           ; $796c: $1c
	jr   c, jr_02d_796f                              ; $796d: $38 $00

jr_02d_796f:
	jr   jr_02d_7971                                 ; $796f: $18 $00

jr_02d_7971:
	jr   nz, jr_02d_7973                             ; $7971: $20 $00

jr_02d_7973:
	inc  a                                           ; $7973: $3c
	nop                                              ; $7974: $00
	jr   jr_02d_7977                                 ; $7975: $18 $00

jr_02d_7977:
	jr   c, jr_02d_7979                              ; $7977: $38 $00

jr_02d_7979:
	ld   a, h                                        ; $7979: $7c
	nop                                              ; $797a: $00
	inc  b                                           ; $797b: $04
	nop                                              ; $797c: $00
	ld   a, b                                        ; $797d: $78
	nop                                              ; $797e: $00
	inc  a                                           ; $797f: $3c
	nop                                              ; $7980: $00
	ld   b, b                                        ; $7981: $40
	nop                                              ; $7982: $00
	ld   a, h                                        ; $7983: $7c
	nop                                              ; $7984: $00
	jr   c, jr_02d_7987                              ; $7985: $38 $00

jr_02d_7987:
	ld   hl, sp+$00                                  ; $7987: $f8 $00
	ld   a, b                                        ; $7989: $78
	add  c                                           ; $798a: $81
	nop                                              ; $798b: $00
	ld   [bc], a                                     ; $798c: $02
	ld   [hl], b                                     ; $798d: $70
	nop                                              ; $798e: $00
	ld   [hl], b                                     ; $798f: $70
	add  c                                           ; $7990: $81
	nop                                              ; $7991: $00
	ld   b, $78                                      ; $7992: $06 $78
	nop                                              ; $7994: $00
	ld   hl, sp+$00                                  ; $7995: $f8 $00
	ld   [hl], c                                     ; $7997: $71
	nop                                              ; $7998: $00
	dec  sp                                          ; $7999: $3b
	add  c                                           ; $799a: $81
	nop                                              ; $799b: $00
	ld   [bc], a                                     ; $799c: $02
	jr   c, jr_02d_799f                              ; $799d: $38 $00

jr_02d_799f:
	jr   c, jr_02d_7922                              ; $799f: $38 $81

	nop                                              ; $79a1: $00
	inc  c                                           ; $79a2: $0c
	dec  sp                                          ; $79a3: $3b
	nop                                              ; $79a4: $00
	ld   [hl], c                                     ; $79a5: $71
	nop                                              ; $79a6: $00
	sub  c                                           ; $79a7: $91
	nop                                              ; $79a8: $00
	ret  nz                                          ; $79a9: $c0

	nop                                              ; $79aa: $00
	ld   c, d                                        ; $79ab: $4a
	nop                                              ; $79ac: $00
	ret  nz                                          ; $79ad: $c0

	nop                                              ; $79ae: $00
	adc  [hl]                                        ; $79af: $8e
	add  c                                           ; $79b0: $81
	nop                                              ; $79b1: $00
	ld   [de], a                                     ; $79b2: $12
	add  b                                           ; $79b3: $80
	nop                                              ; $79b4: $00
	push de                                          ; $79b5: $d5
	nop                                              ; $79b6: $00
	jr   nz, jr_02d_79b9                             ; $79b7: $20 $00

jr_02d_79b9:
	stop                                             ; $79b9: $10 $00
	ld   [$0400], sp                                 ; $79bb: $08 $00 $04
	nop                                              ; $79be: $00
	inc  b                                           ; $79bf: $04
	nop                                              ; $79c0: $00
	ld   [$1000], sp                                 ; $79c1: $08 $00 $10
	nop                                              ; $79c4: $00
	rst  JumpTable                                         ; $79c5: $df
	adc  l                                           ; $79c6: $8d
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	rst  $38                                         ; $79c9: $ff
	rst  $38                                         ; $79ca: $ff
	nop                                              ; $79cb: $00
	sbc  [hl]                                        ; $79cc: $9e
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	ld   b, h                                        ; $79cf: $44
	add  e                                           ; $79d0: $83
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	ld   l, l                                        ; $79d3: $6d
	add  c                                           ; $79d4: $81
	nop                                              ; $79d5: $00
	inc  b                                           ; $79d6: $04
	jr   c, jr_02d_79d9                              ; $79d7: $38 $00

jr_02d_79d9:
	ld   bc, $1000                                   ; $79d9: $01 $00 $10
	add  c                                           ; $79dc: $81
	nop                                              ; $79dd: $00
	inc  b                                           ; $79de: $04
	ld   [$c900], sp                                 ; $79df: $08 $00 $c9
	nop                                              ; $79e2: $00
	db   $eb                                         ; $79e3: $eb
	add  e                                           ; $79e4: $83
	nop                                              ; $79e5: $00
	ld   [bc], a                                     ; $79e6: $02
	db   $e3                                         ; $79e7: $e3
	nop                                              ; $79e8: $00
	ret                                              ; $79e9: $c9


	add  e                                           ; $79ea: $83
	nop                                              ; $79eb: $00
	ld   c, $8c                                      ; $79ec: $0e $8c
	nop                                              ; $79ee: $00
	sbc  $00                                         ; $79ef: $de $00
	ld   c, h                                        ; $79f1: $4c
	nop                                              ; $79f2: $00
	ld   c, [hl]                                     ; $79f3: $4e
	nop                                              ; $79f4: $00
	sbc  [hl]                                        ; $79f5: $9e
	nop                                              ; $79f6: $00
	adc  $00                                         ; $79f7: $ce $00
	ld   a, c                                        ; $79f9: $79
	nop                                              ; $79fa: $00
	inc  a                                           ; $79fb: $3c
	add  c                                           ; $79fc: $81
	nop                                              ; $79fd: $00
	ld   [bc], a                                     ; $79fe: $02
	inc  a                                           ; $79ff: $3c
	nop                                              ; $7a00: $00
	jr   c, @-$7b                                    ; $7a01: $38 $83

	nop                                              ; $7a03: $00
	ld   b, $41                                      ; $7a04: $06 $41
	nop                                              ; $7a06: $00
	ld   bc, $0300                                   ; $7a07: $01 $00 $03
	nop                                              ; $7a0a: $00
	ld   b, $81                                      ; $7a0b: $06 $81
	nop                                              ; $7a0d: $00
	ld   [de], a                                     ; $7a0e: $12
	inc  bc                                          ; $7a0f: $03
	nop                                              ; $7a10: $00
	inc  bc                                          ; $7a11: $03
	nop                                              ; $7a12: $00
	ldh  a, [rP1]                                    ; $7a13: $f0 $00
	db   $f4                                         ; $7a15: $f4
	nop                                              ; $7a16: $00
	ld   de, $8000                                   ; $7a17: $11 $00 $80
	nop                                              ; $7a1a: $00
	db   $db                                         ; $7a1b: $db
	nop                                              ; $7a1c: $00
	ld   c, $00                                      ; $7a1d: $0e $00
	add  b                                           ; $7a1f: $80
	nop                                              ; $7a20: $00
	add  b                                           ; $7a21: $80
	add  c                                           ; $7a22: $81
	nop                                              ; $7a23: $00

jr_02d_7a24:
	nop                                              ; $7a24: $00
	ld   b, h                                        ; $7a25: $44
	add  c                                           ; $7a26: $81
	nop                                              ; $7a27: $00
	ld   a, [bc]                                     ; $7a28: $0a
	ld   [$0400], sp                                 ; $7a29: $08 $00 $04
	nop                                              ; $7a2c: $00
	ld   [hl], d                                     ; $7a2d: $72
	nop                                              ; $7a2e: $00
	ld   [hl], d                                     ; $7a2f: $72
	nop                                              ; $7a30: $00
	inc  b                                           ; $7a31: $04
	nop                                              ; $7a32: $00
	ld   [$0081], sp                                 ; $7a33: $08 $81 $00
	inc  b                                           ; $7a36: $04
	inc  e                                           ; $7a37: $1c
	nop                                              ; $7a38: $00
	ld   a, [hl+]                                    ; $7a39: $2a
	nop                                              ; $7a3a: $00
	ld   d, l                                        ; $7a3b: $55
	add  c                                           ; $7a3c: $81
	nop                                              ; $7a3d: $00
	ld   [bc], a                                     ; $7a3e: $02
	inc  e                                           ; $7a3f: $1c
	nop                                              ; $7a40: $00
	inc  e                                           ; $7a41: $1c
	add  c                                           ; $7a42: $81
	nop                                              ; $7a43: $00
	inc  d                                           ; $7a44: $14
	ld   h, e                                        ; $7a45: $63
	nop                                              ; $7a46: $00
	add  hl, sp                                      ; $7a47: $39
	nop                                              ; $7a48: $00
	ld   a, l                                        ; $7a49: $7d
	nop                                              ; $7a4a: $00
	inc  b                                           ; $7a4b: $04
	nop                                              ; $7a4c: $00
	ld   a, b                                        ; $7a4d: $78
	nop                                              ; $7a4e: $00
	inc  a                                           ; $7a4f: $3c
	nop                                              ; $7a50: $00
	ld   b, b                                        ; $7a51: $40
	nop                                              ; $7a52: $00
	ld   a, h                                        ; $7a53: $7c

jr_02d_7a54:
	nop                                              ; $7a54: $00
	jr   c, jr_02d_7a57                              ; $7a55: $38 $00

jr_02d_7a57:
	di                                               ; $7a57: $f3
	nop                                              ; $7a58: $00
	or   a                                           ; $7a59: $b7
	add  a                                           ; $7a5a: $87
	nop                                              ; $7a5b: $00
	ld   b, $07                                      ; $7a5c: $06 $07
	nop                                              ; $7a5e: $00
	ld   b, e                                        ; $7a5f: $43
	nop                                              ; $7a60: $00
	sbc  [hl]                                        ; $7a61: $9e
	nop                                              ; $7a62: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a63: $cf
	add  c                                           ; $7a64: $81
	nop                                              ; $7a65: $00
	ld   [bc], a                                     ; $7a66: $02
	rrca                                             ; $7a67: $0f
	nop                                              ; $7a68: $00
	ld   c, $81                                      ; $7a69: $0e $81
	nop                                              ; $7a6b: $00
	ld   [bc], a                                     ; $7a6c: $02
	ret  nz                                          ; $7a6d: $c0

	nop                                              ; $7a6e: $00
	sub  b                                           ; $7a6f: $90
	add  c                                           ; $7a70: $81
	nop                                              ; $7a71: $00
	ld   a, [bc]                                     ; $7a72: $0a
	ld   [$0400], sp                                 ; $7a73: $08 $00 $04
	nop                                              ; $7a76: $00
	ld   [hl], d                                     ; $7a77: $72
	nop                                              ; $7a78: $00
	ld   [hl], d                                     ; $7a79: $72
	nop                                              ; $7a7a: $00
	inc  b                                           ; $7a7b: $04
	nop                                              ; $7a7c: $00
	ld   [$0081], sp                                 ; $7a7d: $08 $81 $00
	ld   [bc], a                                     ; $7a80: $02
	ld   a, [hl]                                     ; $7a81: $7e
	nop                                              ; $7a82: $00
	dec  e                                           ; $7a83: $1d
	add  c                                           ; $7a84: $81
	nop                                              ; $7a85: $00
	ld   [bc], a                                     ; $7a86: $02
	dec  e                                           ; $7a87: $1d
	nop                                              ; $7a88: $00
	dec  e                                           ; $7a89: $1d
	add  c                                           ; $7a8a: $81
	nop                                              ; $7a8b: $00
	ld   [bc], a                                     ; $7a8c: $02
	dec  e                                           ; $7a8d: $1d
	nop                                              ; $7a8e: $00
	ld   a, [hl]                                     ; $7a8f: $7e
	xor  a                                           ; $7a90: $af
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	inc  h                                           ; $7a93: $24
	add  c                                           ; $7a94: $81
	nop                                              ; $7a95: $00
	ld   [bc], a                                     ; $7a96: $02
	ld   e, d                                        ; $7a97: $5a
	nop                                              ; $7a98: $00
	ld   e, d                                        ; $7a99: $5a
	add  c                                           ; $7a9a: $81
	nop                                              ; $7a9b: $00
	inc  b                                           ; $7a9c: $04
	jr   nz, jr_02d_7a9f                             ; $7a9d: $20 $00

jr_02d_7a9f:
	inc  e                                           ; $7a9f: $1c
	nop                                              ; $7aa0: $00
	jr   jr_02d_7a24                                 ; $7aa1: $18 $81

	nop                                              ; $7aa3: $00
	inc  c                                           ; $7aa4: $0c
	ld   a, b                                        ; $7aa5: $78
	nop                                              ; $7aa6: $00
	ld   [hl], b                                     ; $7aa7: $70
	nop                                              ; $7aa8: $00
	jr   jr_02d_7aab                                 ; $7aa9: $18 $00

jr_02d_7aab:
	ld   [$3c00], sp                                 ; $7aab: $08 $00 $3c
	nop                                              ; $7aae: $00
	ld   h, b                                        ; $7aaf: $60
	nop                                              ; $7ab0: $00
	ld   b, h                                        ; $7ab1: $44
	add  c                                           ; $7ab2: $81
	nop                                              ; $7ab3: $00
	ld   [$007e], sp                                 ; $7ab4: $08 $7e $00
	ld   a, h                                        ; $7ab7: $7c
	nop                                              ; $7ab8: $00
	jr   nz, jr_02d_7abb                             ; $7ab9: $20 $00

jr_02d_7abb:
	ld   [hl], $00                                   ; $7abb: $36 $00
	inc  e                                           ; $7abd: $1c
	add  c                                           ; $7abe: $81
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	ld   [$0081], sp                                 ; $7ac1: $08 $81 $00
	ld   b, $7e                                      ; $7ac4: $06 $7e
	nop                                              ; $7ac6: $00
	ld   a, h                                        ; $7ac7: $7c
	nop                                              ; $7ac8: $00
	ld   e, $00                                      ; $7ac9: $1e $00
	inc  c                                           ; $7acb: $0c
	add  c                                           ; $7acc: $81
	nop                                              ; $7acd: $00
	ld   [bc], a                                     ; $7ace: $02
	jr   nc, jr_02d_7ad1                             ; $7acf: $30 $00

jr_02d_7ad1:
	jr   nz, jr_02d_7a54                             ; $7ad1: $20 $81

	nop                                              ; $7ad3: $00
	ld   [bc], a                                     ; $7ad4: $02
	ld   a, h                                        ; $7ad5: $7c
	nop                                              ; $7ad6: $00
	ld   a, b                                        ; $7ad7: $78
	add  l                                           ; $7ad8: $85
	nop                                              ; $7ad9: $00
	inc  b                                           ; $7ada: $04
	ld   a, b                                        ; $7adb: $78
	nop                                              ; $7adc: $00
	ld   a, h                                        ; $7add: $7c
	nop                                              ; $7ade: $00
	db   $10                                         ; $7adf: $10
	add  c                                           ; $7ae0: $81
	nop                                              ; $7ae1: $00
	ld   [bc], a                                     ; $7ae2: $02
	ld   l, [hl]                                     ; $7ae3: $6e
	nop                                              ; $7ae4: $00
	ld   l, h                                        ; $7ae5: $6c
	add  c                                           ; $7ae6: $81
	nop                                              ; $7ae7: $00
	inc  b                                           ; $7ae8: $04
	jr   nc, jr_02d_7aeb                             ; $7ae9: $30 $00

jr_02d_7aeb:
	ld   l, [hl]                                     ; $7aeb: $6e
	nop                                              ; $7aec: $00
	ld   c, h                                        ; $7aed: $4c
	rst  $38                                         ; $7aee: $ff
	nop                                              ; $7aef: $00
	sbc  [hl]                                        ; $7af0: $9e
	nop                                              ; $7af1: $00
	ld   [bc], a                                     ; $7af2: $02
	jr   jr_02d_7af5                                 ; $7af3: $18 $00

jr_02d_7af5:
	inc  a                                           ; $7af5: $3c
	add  a                                           ; $7af6: $87
	nop                                              ; $7af7: $00
	ld   a, [bc]                                     ; $7af8: $0a
	inc  a                                           ; $7af9: $3c

jr_02d_7afa:
	nop                                              ; $7afa: $00
	add  sp, $00                                     ; $7afb: $e8 $00
	ld   h, b                                        ; $7afd: $60
	nop                                              ; $7afe: $00
	add  b                                           ; $7aff: $80
	nop                                              ; $7b00: $00
	ld   [hl], d                                     ; $7b01: $72
	nop                                              ; $7b02: $00
	ld   h, b                                        ; $7b03: $60
	add  l                                           ; $7b04: $85
	nop                                              ; $7b05: $00
	jr   z, jr_02d_7afa                              ; $7b06: $28 $f2

	nop                                              ; $7b08: $00
	ld   h, b                                        ; $7b09: $60
	nop                                              ; $7b0a: $00
	add  b                                           ; $7b0b: $80
	nop                                              ; $7b0c: $00
	ld   [hl], a                                     ; $7b0d: $77
	nop                                              ; $7b0e: $00
	ld   h, [hl]                                     ; $7b0f: $66
	nop                                              ; $7b10: $00
	ld   b, $00                                      ; $7b11: $06 $00
	inc  bc                                          ; $7b13: $03
	nop                                              ; $7b14: $00
	inc  bc                                          ; $7b15: $03
	nop                                              ; $7b16: $00
	rst  $30                                         ; $7b17: $f7
	nop                                              ; $7b18: $00
	ld   h, b                                        ; $7b19: $60
	nop                                              ; $7b1a: $00
	add  b                                           ; $7b1b: $80
	nop                                              ; $7b1c: $00
	ld   [hl], a                                     ; $7b1d: $77
	nop                                              ; $7b1e: $00
	ld   h, [hl]                                     ; $7b1f: $66
	nop                                              ; $7b20: $00
	ld   b, $00                                      ; $7b21: $06 $00
	ld   b, $00                                      ; $7b23: $06 $00
	ld   b, $00                                      ; $7b25: $06 $00
	rlca                                             ; $7b27: $07
	nop                                              ; $7b28: $00
	ld   d, d                                        ; $7b29: $52
	nop                                              ; $7b2a: $00
	ld   h, [hl]                                     ; $7b2b: $66
	nop                                              ; $7b2c: $00
	ld   c, d                                        ; $7b2d: $4a
	nop                                              ; $7b2e: $00
	ld   d, [hl]                                     ; $7b2f: $56
	add  c                                           ; $7b30: $81
	nop                                              ; $7b31: $00
	db   $10                                         ; $7b32: $10
	inc  bc                                          ; $7b33: $03
	nop                                              ; $7b34: $00
	push hl                                          ; $7b35: $e5
	nop                                              ; $7b36: $00
	ld   a, $00                                      ; $7b37: $3e $00
	ld   h, b                                        ; $7b39: $60
	nop                                              ; $7b3a: $00
	add  b                                           ; $7b3b: $80
	nop                                              ; $7b3c: $00
	ld   [hl], l                                     ; $7b3d: $75
	nop                                              ; $7b3e: $00
	ld   h, b                                        ; $7b3f: $60
	nop                                              ; $7b40: $00
	ld   [bc], a                                     ; $7b41: $02
	nop                                              ; $7b42: $00
	ld   b, $81                                      ; $7b43: $06 $81
	nop                                              ; $7b45: $00
	ld   [$0001], sp                                 ; $7b46: $08 $01 $00
	inc  a                                           ; $7b49: $3c

jr_02d_7b4a:
	nop                                              ; $7b4a: $00
	inc  e                                           ; $7b4b: $1c
	nop                                              ; $7b4c: $00
	jr   jr_02d_7b4f                                 ; $7b4d: $18 $00

jr_02d_7b4f:
	inc  a                                           ; $7b4f: $3c
	add  c                                           ; $7b50: $81
	nop                                              ; $7b51: $00
	inc  b                                           ; $7b52: $04
	jr   nz, jr_02d_7b55                             ; $7b53: $20 $00

jr_02d_7b55:
	inc  a                                           ; $7b55: $3c
	nop                                              ; $7b56: $00
	jr   @+$01                                       ; $7b57: $18 $ff

	nop                                              ; $7b59: $00
	rst  $38                                         ; $7b5a: $ff
	nop                                              ; $7b5b: $00
	rst  $38                                         ; $7b5c: $ff
	nop                                              ; $7b5d: $00
	adc  d                                           ; $7b5e: $8a
	nop                                              ; $7b5f: $00
	ld   d, [hl]                                     ; $7b60: $56
	ld   [de], a                                     ; $7b61: $12
	nop                                              ; $7b62: $00
	dec  b                                           ; $7b63: $05
	nop                                              ; $7b64: $00
	dec  l                                           ; $7b65: $2d
	nop                                              ; $7b66: $00
	dec  hl                                          ; $7b67: $2b
	nop                                              ; $7b68: $00
	dec  bc                                          ; $7b69: $0b
	nop                                              ; $7b6a: $00
	cpl                                              ; $7b6b: $2f
	nop                                              ; $7b6c: $00
	ld   h, $00                                      ; $7b6d: $26 $00
	ld   bc, $5500                                   ; $7b6f: $01 $00 $55
	nop                                              ; $7b72: $00
	and  a                                           ; $7b73: $a7
	nop                                              ; $7b74: $00
	xor  a                                           ; $7b75: $af
	nop                                              ; $7b76: $00
	rlc  b                                           ; $7b77: $cb $00
	rlc  b                                           ; $7b79: $cb $00
	db   $eb                                         ; $7b7b: $eb
	nop                                              ; $7b7c: $00
	ld   l, e                                        ; $7b7d: $6b
	nop                                              ; $7b7e: $00
	adc  l                                           ; $7b7f: $8d
	nop                                              ; $7b80: $00
	or   d                                           ; $7b81: $b2
	nop                                              ; $7b82: $00
	ld   [hl], c                                     ; $7b83: $71

jr_02d_7b84:
	nop                                              ; $7b84: $00
	ld   a, c                                        ; $7b85: $79
	nop                                              ; $7b86: $00
	ld   l, b                                        ; $7b87: $68
	nop                                              ; $7b88: $00
	ld   l, b                                        ; $7b89: $68
	nop                                              ; $7b8a: $00
	ld   l, b                                        ; $7b8b: $68
	nop                                              ; $7b8c: $00
	ld   l, b                                        ; $7b8d: $68
	nop                                              ; $7b8e: $00
	ld   e, b                                        ; $7b8f: $58
	nop                                              ; $7b90: $00
	and  b                                           ; $7b91: $a0
	nop                                              ; $7b92: $00
	cp   $00                                         ; $7b93: $fe $00
	db   $fc                                         ; $7b95: $fc
	nop                                              ; $7b96: $00
	ld   b, $00                                      ; $7b97: $06 $00
	adc  h                                           ; $7b99: $8c
	nop                                              ; $7b9a: $00
	ret  c                                           ; $7b9b: $d8

	nop                                              ; $7b9c: $00
	ld   [hl], b                                     ; $7b9d: $70
	nop                                              ; $7b9e: $00
	jr   nc, jr_02d_7ba1                             ; $7b9f: $30 $00

jr_02d_7ba1:
	stop                                             ; $7ba1: $10 $00
	jr   nc, jr_02d_7ba5                             ; $7ba3: $30 $00

jr_02d_7ba5:
	jr   c, jr_02d_7ba7                              ; $7ba5: $38 $00

jr_02d_7ba7:
	ld   l, b                                        ; $7ba7: $68
	nop                                              ; $7ba8: $00
	ld   [hl], b                                     ; $7ba9: $70
	nop                                              ; $7baa: $00
	ld   de, $0300                                   ; $7bab: $11 $00 $03
	nop                                              ; $7bae: $00
	ld   b, $00                                      ; $7baf: $06 $00
	inc  b                                           ; $7bb1: $04
	nop                                              ; $7bb2: $00
	jr   jr_02d_7bb5                                 ; $7bb3: $18 $00

jr_02d_7bb5:
	sbc  h                                           ; $7bb5: $9c
	nop                                              ; $7bb6: $00
	inc  b                                           ; $7bb7: $04
	add  c                                           ; $7bb8: $81
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	add  b                                           ; $7bbb: $80
	add  c                                           ; $7bbc: $81
	nop                                              ; $7bbd: $00
	ld   [bc], a                                     ; $7bbe: $02
	ld   bc, $0100                                   ; $7bbf: $01 $00 $01
	add  c                                           ; $7bc2: $81
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	jr   nz, jr_02d_7b4a                             ; $7bc5: $20 $83

	nop                                              ; $7bc7: $00
	ld   b, $60                                      ; $7bc8: $06 $60

jr_02d_7bca:
	nop                                              ; $7bca: $00
	ret  nz                                          ; $7bcb: $c0

	nop                                              ; $7bcc: $00
	add  b                                           ; $7bcd: $80
	nop                                              ; $7bce: $00
	ld   b, c                                        ; $7bcf: $41
	add  c                                           ; $7bd0: $81
	nop                                              ; $7bd1: $00
	jr   c, jr_02d_7b84                              ; $7bd2: $38 $b0

	nop                                              ; $7bd4: $00
	sbc  $00                                         ; $7bd5: $de $00
	adc  [hl]                                        ; $7bd7: $8e
	nop                                              ; $7bd8: $00
	ret  z                                           ; $7bd9: $c8

	nop                                              ; $7bda: $00
	ld   c, h                                        ; $7bdb: $4c
	nop                                              ; $7bdc: $00
	ld   [hl], h                                     ; $7bdd: $74

jr_02d_7bde:
	nop                                              ; $7bde: $00
	ld   a, e                                        ; $7bdf: $7b
	nop                                              ; $7be0: $00
	ld   a, $00                                      ; $7be1: $3e $00
	dec  hl                                          ; $7be3: $2b
	nop                                              ; $7be4: $00
	add  c                                           ; $7be5: $81
	nop                                              ; $7be6: $00
	sub  h                                           ; $7be7: $94
	nop                                              ; $7be8: $00
	inc  d                                           ; $7be9: $14
	nop                                              ; $7bea: $00
	ld   [hl], $00                                   ; $7beb: $36 $00
	dec  [hl]                                        ; $7bed: $35
	nop                                              ; $7bee: $00
	sbc  c                                           ; $7bef: $99
	nop                                              ; $7bf0: $00
	jr   nz, jr_02d_7bf3                             ; $7bf1: $20 $00

jr_02d_7bf3:
	ld   l, d                                        ; $7bf3: $6a
	nop                                              ; $7bf4: $00
	ld   l, d                                        ; $7bf5: $6a
	nop                                              ; $7bf6: $00
	ld   a, [hl+]                                    ; $7bf7: $2a
	nop                                              ; $7bf8: $00
	ld   h, d                                        ; $7bf9: $62
	nop                                              ; $7bfa: $00
	ld   c, b                                        ; $7bfb: $48
	nop                                              ; $7bfc: $00
	ldh  [rP1], a                                    ; $7bfd: $e0 $00
	sbc  h                                           ; $7bff: $9c
	nop                                              ; $7c00: $00
	ld   [hl], c                                     ; $7c01: $71
	nop                                              ; $7c02: $00
	ld   bc, $7100                                   ; $7c03: $01 $00 $71
	nop                                              ; $7c06: $00
	ld   [hl], c                                     ; $7c07: $71
	nop                                              ; $7c08: $00
	ld   [hl], e                                     ; $7c09: $73
	nop                                              ; $7c0a: $00
	ld   [hl], e                                     ; $7c0b: $73
	add  c                                           ; $7c0c: $81
	nop                                              ; $7c0d: $00
	inc  c                                           ; $7c0e: $0c
	sub  b                                           ; $7c0f: $90
	nop                                              ; $7c10: $00
	ld   hl, sp+$00                                  ; $7c11: $f8 $00
	ret  nz                                          ; $7c13: $c0

	nop                                              ; $7c14: $00
	call c, $dc00                                    ; $7c15: $dc $00 $dc
	nop                                              ; $7c18: $00
	sbc  $00                                         ; $7c19: $de $00
	sbc  $81                                         ; $7c1b: $de $81
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	jr   nz, jr_02d_7bde                             ; $7c1f: $20 $bd

	nop                                              ; $7c21: $00
	ld   [bc], a                                     ; $7c22: $02
	inc  sp                                          ; $7c23: $33
	nop                                              ; $7c24: $00
	inc  sp                                          ; $7c25: $33
	adc  e                                           ; $7c26: $8b
	nop                                              ; $7c27: $00
	ld   [bc], a                                     ; $7c28: $02
	call z, $cc00                                    ; $7c29: $cc $00 $cc
	adc  e                                           ; $7c2c: $8b
	nop                                              ; $7c2d: $00
	ld   [bc], a                                     ; $7c2e: $02
	sbc  b                                           ; $7c2f: $98
	nop                                              ; $7c30: $00
	sbc  b                                           ; $7c31: $98
	adc  e                                           ; $7c32: $8b
	nop                                              ; $7c33: $00
	ld   [bc], a                                     ; $7c34: $02
	stop                                             ; $7c35: $10 $00
	db   $10                                         ; $7c37: $10
	adc  e                                           ; $7c38: $8b
	nop                                              ; $7c39: $00
	ld   [bc], a                                     ; $7c3a: $02
	jr   c, jr_02d_7c3d                              ; $7c3b: $38 $00

jr_02d_7c3d:
	jr   c, jr_02d_7bca                              ; $7c3d: $38 $8b

	nop                                              ; $7c3f: $00
	ld   [bc], a                                     ; $7c40: $02
	ld   c, $00                                      ; $7c41: $0e $00
	ld   c, $9b                                      ; $7c43: $0e $9b
	nop                                              ; $7c45: $00
	ld   [bc], a                                     ; $7c46: $02
	add  e                                           ; $7c47: $83
	nop                                              ; $7c48: $00
	add  e                                           ; $7c49: $83
	adc  e                                           ; $7c4a: $8b
	nop                                              ; $7c4b: $00
	ld   [bc], a                                     ; $7c4c: $02
	ld   a, [bc]                                     ; $7c4d: $0a
	nop                                              ; $7c4e: $00
	ld   a, [bc]                                     ; $7c4f: $0a
	adc  e                                           ; $7c50: $8b
	nop                                              ; $7c51: $00
	ld   [bc], a                                     ; $7c52: $02
	inc  h                                           ; $7c53: $24
	nop                                              ; $7c54: $00
	inc  h                                           ; $7c55: $24
	adc  e                                           ; $7c56: $8b
	nop                                              ; $7c57: $00
	ld   [bc], a                                     ; $7c58: $02
	ld   hl, sp+$00                                  ; $7c59: $f8 $00
	ld   hl, sp-$75                                  ; $7c5b: $f8 $8b
	nop                                              ; $7c5d: $00
	ld   [bc], a                                     ; $7c5e: $02
	ld   h, b                                        ; $7c5f: $60
	nop                                              ; $7c60: $00
	ld   h, b                                        ; $7c61: $60
	call $3e00                                       ; $7c62: $cd $00 $3e
	sub  c                                           ; $7c65: $91
	nop                                              ; $7c66: $00
	ret  c                                           ; $7c67: $d8

	nop                                              ; $7c68: $00
	ld   c, e                                        ; $7c69: $4b
	nop                                              ; $7c6a: $00
	ld   a, l                                        ; $7c6b: $7d
	nop                                              ; $7c6c: $00
	ld   [hl], $00                                   ; $7c6d: $36 $00
	ld   [hl], $00                                   ; $7c6f: $36 $00
	ld   [hl], $00                                   ; $7c71: $36 $00
	ld   c, c                                        ; $7c73: $49
	nop                                              ; $7c74: $00
	jr   nz, jr_02d_7c77                             ; $7c75: $20 $00

jr_02d_7c77:
	ld   [$0c00], sp                                 ; $7c77: $08 $00 $0c
	nop                                              ; $7c7a: $00
	inc  b                                           ; $7c7b: $04
	nop                                              ; $7c7c: $00
	ld   b, $00                                      ; $7c7d: $06 $00
	sbc  $00                                         ; $7c7f: $de $00
	ret  c                                           ; $7c81: $d8

	nop                                              ; $7c82: $00
	jr   nz, jr_02d_7c85                             ; $7c83: $20 $00

jr_02d_7c85:
	db   $fc                                         ; $7c85: $fc
	nop                                              ; $7c86: $00
	ld   a, b                                        ; $7c87: $78

jr_02d_7c88:
	nop                                              ; $7c88: $00
	ld   a, b                                        ; $7c89: $78

jr_02d_7c8a:
	nop                                              ; $7c8a: $00
	ld   a, b                                        ; $7c8b: $78
	nop                                              ; $7c8c: $00
	ld   a, b                                        ; $7c8d: $78
	nop                                              ; $7c8e: $00
	ld   a, h                                        ; $7c8f: $7c
	nop                                              ; $7c90: $00
	ccf                                              ; $7c91: $3f
	nop                                              ; $7c92: $00
	cp   a                                           ; $7c93: $bf
	nop                                              ; $7c94: $00
	db   $fc                                         ; $7c95: $fc
	nop                                              ; $7c96: $00
	ld   a, b                                        ; $7c97: $78
	nop                                              ; $7c98: $00
	ld   a, b                                        ; $7c99: $78
	nop                                              ; $7c9a: $00
	ld   a, b                                        ; $7c9b: $78
	nop                                              ; $7c9c: $00
	ld   a, b                                        ; $7c9d: $78
	nop                                              ; $7c9e: $00
	ld   hl, sp+$00                                  ; $7c9f: $f8 $00
	jr   nz, jr_02d_7ca3                             ; $7ca1: $20 $00

jr_02d_7ca3:
	inc  h                                           ; $7ca3: $24
	add  c                                           ; $7ca4: $81
	nop                                              ; $7ca5: $00
	ld   [bc], a                                     ; $7ca6: $02
	rst  $38                                         ; $7ca7: $ff
	nop                                              ; $7ca8: $00
	cp   $83                                         ; $7ca9: $fe $83
	nop                                              ; $7cab: $00
	inc  b                                           ; $7cac: $04
	ld   e, [hl]                                     ; $7cad: $5e
	nop                                              ; $7cae: $00
	ld   c, $00                                      ; $7caf: $0e $00
	ld   d, c                                        ; $7cb1: $51
	add  c                                           ; $7cb2: $81
	nop                                              ; $7cb3: $00
	ld   [bc], a                                     ; $7cb4: $02
	cp   $00                                         ; $7cb5: $fe $00
	cp   $83                                         ; $7cb7: $fe $83
	nop                                              ; $7cb9: $00
	inc  b                                           ; $7cba: $04
	db   $f4                                         ; $7cbb: $f4
	nop                                              ; $7cbc: $00
	ldh  [rP1], a                                    ; $7cbd: $e0 $00
	inc  d                                           ; $7cbf: $14
	add  c                                           ; $7cc0: $81
	nop                                              ; $7cc1: $00
	ld   [bc], a                                     ; $7cc2: $02
	rst  $38                                         ; $7cc3: $ff
	nop                                              ; $7cc4: $00
	cp   $81                                         ; $7cc5: $fe $81
	nop                                              ; $7cc7: $00
	ld   b, $03                                      ; $7cc8: $06 $03
	nop                                              ; $7cca: $00
	ld   a, l                                        ; $7ccb: $7d
	nop                                              ; $7ccc: $00
	dec  sp                                          ; $7ccd: $3b
	nop                                              ; $7cce: $00
	ld   b, h                                        ; $7ccf: $44

jr_02d_7cd0:
	add  c                                           ; $7cd0: $81
	nop                                              ; $7cd1: $00
	ld   [bc], a                                     ; $7cd2: $02
	cp   $00                                         ; $7cd3: $fe $00
	cp   $83                                         ; $7cd5: $fe $83
	nop                                              ; $7cd7: $00
	ld   b, $fc                                      ; $7cd8: $06 $fc
	nop                                              ; $7cda: $00
	cp   b                                           ; $7cdb: $b8
	nop                                              ; $7cdc: $00
	or   h                                           ; $7cdd: $b4
	nop                                              ; $7cde: $00
	ld   a, b                                        ; $7cdf: $78
	add  c                                           ; $7ce0: $81
	nop                                              ; $7ce1: $00
	ld   b, $01                                      ; $7ce2: $06 $01
	nop                                              ; $7ce4: $00
	ld   a, e                                        ; $7ce5: $7b
	nop                                              ; $7ce6: $00
	ld   a, e                                        ; $7ce7: $7b
	nop                                              ; $7ce8: $00
	inc  bc                                          ; $7ce9: $03
	add  c                                           ; $7cea: $81
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	adc  [hl]                                        ; $7ced: $8e
	add  e                                           ; $7cee: $83
	nop                                              ; $7cef: $00
	ld   b, $8a                                      ; $7cf0: $06 $8a
	nop                                              ; $7cf2: $00
	jp   z, $8000                                    ; $7cf3: $ca $00 $80

	nop                                              ; $7cf6: $00
	add  b                                           ; $7cf7: $80
	add  c                                           ; $7cf8: $81
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	ld   d, h                                        ; $7cfb: $54
	add  e                                           ; $7cfc: $83
	nop                                              ; $7cfd: $00
	ld   [bc], a                                     ; $7cfe: $02
	jr   z, jr_02d_7d01                              ; $7cff: $28 $00

jr_02d_7d01:
	jr   z, jr_02d_7c88                              ; $7d01: $28 $85

	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	jr   nc, jr_02d_7c8a                             ; $7d05: $30 $83

	nop                                              ; $7d07: $00
	ld   b, $01                                      ; $7d08: $06 $01
	nop                                              ; $7d0a: $00
	inc  bc                                          ; $7d0b: $03
	nop                                              ; $7d0c: $00
	ld   bc, $0100                                   ; $7d0d: $01 $00 $01
	add  c                                           ; $7d10: $81
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	ld   [hl+], a                                    ; $7d13: $22
	add  e                                           ; $7d14: $83
	nop                                              ; $7d15: $00
	ld   a, [bc]                                     ; $7d16: $0a
	ret  nz                                          ; $7d17: $c0

	nop                                              ; $7d18: $00
	ldh  [rP1], a                                    ; $7d19: $e0 $00
	ret  nz                                          ; $7d1b: $c0

	nop                                              ; $7d1c: $00
	ldh  [rP1], a                                    ; $7d1d: $e0 $00
	jr   nz, jr_02d_7d21                             ; $7d1f: $20 $00

jr_02d_7d21:
	jr   nz, jr_02d_7cd0                             ; $7d21: $20 $ad

	nop                                              ; $7d23: $00
	inc  b                                           ; $7d24: $04
	ld   c, c                                        ; $7d25: $49
	nop                                              ; $7d26: $00
	ld   [hl], $00                                   ; $7d27: $36 $00
	ld   [hl], a                                     ; $7d29: $77
	add  c                                           ; $7d2a: $81
	nop                                              ; $7d2b: $00
	ld   [bc], a                                     ; $7d2c: $02
	rst  $30                                         ; $7d2d: $f7
	nop                                              ; $7d2e: $00
	rst  $30                                         ; $7d2f: $f7
	add  c                                           ; $7d30: $81
	nop                                              ; $7d31: $00
	ld   [bc], a                                     ; $7d32: $02
	ld   bc, $2b00                                   ; $7d33: $01 $00 $2b
	add  c                                           ; $7d36: $81
	nop                                              ; $7d37: $00
	inc  h                                           ; $7d38: $24
	ld   b, $00                                      ; $7d39: $06 $00
	jr   nc, jr_02d_7d3d                             ; $7d3b: $30 $00

jr_02d_7d3d:
	adc  h                                           ; $7d3d: $8c
	nop                                              ; $7d3e: $00
	xor  d                                           ; $7d3f: $aa
	nop                                              ; $7d40: $00
	ld   a, b                                        ; $7d41: $78
	nop                                              ; $7d42: $00
	call z, $0600                                    ; $7d43: $cc $00 $06
	nop                                              ; $7d46: $00
	ld   e, $00                                      ; $7d47: $1e $00
	inc  c                                           ; $7d49: $0c
	nop                                              ; $7d4a: $00
	inc  c                                           ; $7d4b: $0c
	nop                                              ; $7d4c: $00
	inc  c                                           ; $7d4d: $0c
	nop                                              ; $7d4e: $00
	dec  b                                           ; $7d4f: $05
	nop                                              ; $7d50: $00
	cpl                                              ; $7d51: $2f
	nop                                              ; $7d52: $00
	jr   c, jr_02d_7d55                              ; $7d53: $38 $00

jr_02d_7d55:
	and  h                                           ; $7d55: $a4
	nop                                              ; $7d56: $00
	ret  nc                                          ; $7d57: $d0

	nop                                              ; $7d58: $00
	ret  nc                                          ; $7d59: $d0

	nop                                              ; $7d5a: $00
	add  b                                           ; $7d5b: $80
	nop                                              ; $7d5c: $00
	add  b                                           ; $7d5d: $80
	add  c                                           ; $7d5e: $81
	nop                                              ; $7d5f: $00
	ld   [$0040], sp                                 ; $7d60: $08 $40 $00
	ld   a, b                                        ; $7d63: $78
	nop                                              ; $7d64: $00
	ld   c, l                                        ; $7d65: $4d
	nop                                              ; $7d66: $00
	ld   c, $00                                      ; $7d67: $0e $00
	ld   c, $81                                      ; $7d69: $0e $81
	nop                                              ; $7d6b: $00
	ld   [bc], a                                     ; $7d6c: $02
	ld   c, $00                                      ; $7d6d: $0e $00
	rra                                              ; $7d6f: $1f
	add  c                                           ; $7d70: $81
	nop                                              ; $7d71: $00
	ld   b, $3f                                      ; $7d72: $06 $3f
	nop                                              ; $7d74: $00
	ld   l, e                                        ; $7d75: $6b
	nop                                              ; $7d76: $00
	ldh  [rP1], a                                    ; $7d77: $e0 $00
	ldh  [$81], a                                    ; $7d79: $e0 $81
	nop                                              ; $7d7b: $00
	ld   [bc], a                                     ; $7d7c: $02
	ldh  [rP1], a                                    ; $7d7d: $e0 $00
	ldh  a, [$81]                                    ; $7d7f: $f0 $81
	nop                                              ; $7d81: $00
	ld   b, $f8                                      ; $7d82: $06 $f8
	nop                                              ; $7d84: $00
	cp   b                                           ; $7d85: $b8
	nop                                              ; $7d86: $00
	inc  bc                                          ; $7d87: $03
	nop                                              ; $7d88: $00
	inc  bc                                          ; $7d89: $03
	add  c                                           ; $7d8a: $81
	nop                                              ; $7d8b: $00
	ld   [bc], a                                     ; $7d8c: $02
	inc  bc                                          ; $7d8d: $03
	nop                                              ; $7d8e: $00
	inc  bc                                          ; $7d8f: $03
	add  c                                           ; $7d90: $81
	nop                                              ; $7d91: $00
	ld   b, $3b                                      ; $7d92: $06 $3b
	nop                                              ; $7d94: $00
	dec  sp                                          ; $7d95: $3b
	nop                                              ; $7d96: $00
	add  b                                           ; $7d97: $80
	nop                                              ; $7d98: $00
	add  b                                           ; $7d99: $80
	add  c                                           ; $7d9a: $81
	nop                                              ; $7d9b: $00
	ld   [bc], a                                     ; $7d9c: $02
	add  b                                           ; $7d9d: $80
	nop                                              ; $7d9e: $00
	add  b                                           ; $7d9f: $80
	add  c                                           ; $7da0: $81
	nop                                              ; $7da1: $00
	inc  b                                           ; $7da2: $04
	cp   b                                           ; $7da3: $b8
	nop                                              ; $7da4: $00
	dec  c                                           ; $7da5: $0d
	nop                                              ; $7da6: $00
	pop  af                                          ; $7da7: $f1
	adc  e                                           ; $7da8: $8b
	nop                                              ; $7da9: $00
	ld   [bc], a                                     ; $7daa: $02
	and  e                                           ; $7dab: $a3
	nop                                              ; $7dac: $00
	and  e                                           ; $7dad: $a3
	adc  e                                           ; $7dae: $8b
	nop                                              ; $7daf: $00
	ld   [bc], a                                     ; $7db0: $02
	inc  c                                           ; $7db1: $0c
	nop                                              ; $7db2: $00
	inc  c                                           ; $7db3: $0c
	adc  e                                           ; $7db4: $8b
	nop                                              ; $7db5: $00
	ld   [bc], a                                     ; $7db6: $02
	ld   hl, $2100                                   ; $7db7: $21 $00 $21
	adc  e                                           ; $7dba: $8b
	nop                                              ; $7dbb: $00
	ld   [bc], a                                     ; $7dbc: $02
	ret  nz                                          ; $7dbd: $c0

	nop                                              ; $7dbe: $00
	ret  nz                                          ; $7dbf: $c0

	cp   a                                           ; $7dc0: $bf
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	ccf                                              ; $7dc3: $3f
	add  c                                           ; $7dc4: $81
	nop                                              ; $7dc5: $00
	ld   [$001f], sp                                 ; $7dc6: $08 $1f $00
	ld   e, a                                        ; $7dc9: $5f
	nop                                              ; $7dca: $00
	ld   d, a                                        ; $7dcb: $57
	nop                                              ; $7dcc: $00
	rla                                              ; $7dcd: $17
	nop                                              ; $7dce: $00
	ccf                                              ; $7dcf: $3f
	add  c                                           ; $7dd0: $81
	nop                                              ; $7dd1: $00
	inc  c                                           ; $7dd2: $0c
	adc  b                                           ; $7dd3: $88
	nop                                              ; $7dd4: $00
	ld   bc, $1500                                   ; $7dd5: $01 $00 $15
	nop                                              ; $7dd8: $00
	ld   e, b                                        ; $7dd9: $58
	nop                                              ; $7dda: $00
	call z, $d400                                    ; $7ddb: $cc $00 $d4
	nop                                              ; $7dde: $00
	call c, $0083                                    ; $7ddf: $dc $83 $00
	inc  b                                           ; $7de2: $04
	ldh  a, [rP1]                                    ; $7de3: $f0 $00
	ld   h, c                                        ; $7de5: $61
	nop                                              ; $7de6: $00
	inc  bc                                          ; $7de7: $03
	add  e                                           ; $7de8: $83
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	sub  d                                           ; $7deb: $92
	add  e                                           ; $7dec: $83
	nop                                              ; $7ded: $00
	inc  b                                           ; $7dee: $04
	ldh  a, [rP1]                                    ; $7def: $f0 $00
	cp   b                                           ; $7df1: $b8
	nop                                              ; $7df2: $00
	inc  c                                           ; $7df3: $0c
	add  e                                           ; $7df4: $83
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	ld   b, h                                        ; $7df7: $44
	add  e                                           ; $7df8: $83
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	ld   [bc], a                                     ; $7dfb: $02
	add  c                                           ; $7dfc: $81
	nop                                              ; $7dfd: $00
	ld   b, $26                                      ; $7dfe: $06 $26
	nop                                              ; $7e00: $00
	jr   nc, jr_02d_7e03                             ; $7e01: $30 $00

jr_02d_7e03:
	inc  e                                           ; $7e03: $1c
	nop                                              ; $7e04: $00
	ld   [$0083], sp                                 ; $7e05: $08 $83 $00
	ld   [bc], a                                     ; $7e08: $02
	rra                                              ; $7e09: $1f
	nop                                              ; $7e0a: $00
	rra                                              ; $7e0b: $1f
	adc  e                                           ; $7e0c: $8b
	nop                                              ; $7e0d: $00
	ld   b, $80                                      ; $7e0e: $06 $80
	nop                                              ; $7e10: $00
	add  b                                           ; $7e11: $80
	nop                                              ; $7e12: $00
	inc  bc                                          ; $7e13: $03
	nop                                              ; $7e14: $00
	inc  bc                                          ; $7e15: $03
	adc  e                                           ; $7e16: $8b
	nop                                              ; $7e17: $00
	ld   [bc], a                                     ; $7e18: $02
	ret  nz                                          ; $7e19: $c0

	nop                                              ; $7e1a: $00
	add  b                                           ; $7e1b: $80
	add  c                                           ; $7e1c: $81
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	ld   b, b                                        ; $7e1f: $40
	add  e                                           ; $7e20: $83
	nop                                              ; $7e21: $00
	ld   a, [bc]                                     ; $7e22: $0a
	jr   jr_02d_7e25                                 ; $7e23: $18 $00

jr_02d_7e25:
	inc  a                                           ; $7e25: $3c
	nop                                              ; $7e26: $00
	inc  b                                           ; $7e27: $04
	nop                                              ; $7e28: $00
	add  hl, sp                                      ; $7e29: $39
	nop                                              ; $7e2a: $00
	inc  e                                           ; $7e2b: $1c

jr_02d_7e2c:
	nop                                              ; $7e2c: $00
	dec  b                                           ; $7e2d: $05
	add  e                                           ; $7e2e: $83
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	ld   [bc], a                                     ; $7e31: $02
	add  c                                           ; $7e32: $81
	nop                                              ; $7e33: $00
	ld   b, $c0                                      ; $7e34: $06 $c0
	nop                                              ; $7e36: $00
	ldh  [rP1], a                                    ; $7e37: $e0 $00
	ret  nz                                          ; $7e39: $c0

	nop                                              ; $7e3a: $00
	ldh  [c], a                                      ; $7e3b: $e2
	add  a                                           ; $7e3c: $87
	nop                                              ; $7e3d: $00
	ld   b, $31                                      ; $7e3e: $06 $31
	nop                                              ; $7e40: $00
	ld   a, e                                        ; $7e41: $7b
	nop                                              ; $7e42: $00
	jr   nc, jr_02d_7e45                             ; $7e43: $30 $00

jr_02d_7e45:
	ld   a, d                                        ; $7e45: $7a
	add  e                                           ; $7e46: $83
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	ld   [$0081], sp                                 ; $7e49: $08 $81 $00
	ld   b, $96                                      ; $7e4c: $06 $96
	nop                                              ; $7e4e: $00
	sub  $00                                         ; $7e4f: $d6 $00
	ld   b, b                                        ; $7e51: $40
	nop                                              ; $7e52: $00
	ld   [$00bd], sp                                 ; $7e53: $08 $bd $00
	ld   b, $2a                                      ; $7e56: $06 $2a
	nop                                              ; $7e58: $00
	ld   d, e                                        ; $7e59: $53
	nop                                              ; $7e5a: $00
	ld   [hl], e                                     ; $7e5b: $73
	nop                                              ; $7e5c: $00
	ld   a, [bc]                                     ; $7e5d: $0a
	add  a                                           ; $7e5e: $87
	nop                                              ; $7e5f: $00
	ld   b, $4c                                      ; $7e60: $06 $4c
	nop                                              ; $7e62: $00
	push bc                                          ; $7e63: $c5
	nop                                              ; $7e64: $00
	jp   Jump_02d_4a00                               ; $7e65: $c3 $00 $4a


	add  a                                           ; $7e68: $87
	nop                                              ; $7e69: $00
	ld   b, $92                                      ; $7e6a: $06 $92
	nop                                              ; $7e6c: $00
	add  e                                           ; $7e6d: $83
	nop                                              ; $7e6e: $00
	ld   [hl], c                                     ; $7e6f: $71
	nop                                              ; $7e70: $00
	ld   h, b                                        ; $7e71: $60
	add  a                                           ; $7e72: $87
	nop                                              ; $7e73: $00
	ld   b, $44                                      ; $7e74: $06 $44
	nop                                              ; $7e76: $00
	call z, $9800                                    ; $7e77: $cc $00 $98
	nop                                              ; $7e7a: $00
	db   $10                                         ; $7e7b: $10
	add  a                                           ; $7e7c: $87
	nop                                              ; $7e7d: $00
	ld   b, $14                                      ; $7e7e: $06 $14
	nop                                              ; $7e80: $00
	ld   [hl], $00                                   ; $7e81: $36 $00
	ldh  [c], a                                      ; $7e83: $e2
	nop                                              ; $7e84: $00
	ret  nz                                          ; $7e85: $c0

	adc  c                                           ; $7e86: $89
	nop                                              ; $7e87: $00
	ld   [bc], a                                     ; $7e88: $02
	ccf                                              ; $7e89: $3f
	nop                                              ; $7e8a: $00
	ccf                                              ; $7e8b: $3f
	adc  e                                           ; $7e8c: $8b
	nop                                              ; $7e8d: $00
	ld   [bc], a                                     ; $7e8e: $02
	rst  ToBoot                                         ; $7e8f: $c7
	nop                                              ; $7e90: $00
	rst  ToBoot                                         ; $7e91: $c7
	adc  c                                           ; $7e92: $89
	nop                                              ; $7e93: $00
	inc  b                                           ; $7e94: $04
	ld   b, b                                        ; $7e95: $40
	nop                                              ; $7e96: $00
	or   b                                           ; $7e97: $b0
	nop                                              ; $7e98: $00
	ldh  a, [$89]                                    ; $7e99: $f0 $89
	nop                                              ; $7e9b: $00
	inc  b                                           ; $7e9c: $04
	dec  h                                           ; $7e9d: $25
	nop                                              ; $7e9e: $00
	dec  a                                           ; $7e9f: $3d
	nop                                              ; $7ea0: $00
	jr   jr_02d_7e2c                                 ; $7ea1: $18 $89

	nop                                              ; $7ea3: $00
	inc  b                                           ; $7ea4: $04
	ld   [bc], a                                     ; $7ea5: $02
	nop                                              ; $7ea6: $00
	ldh  [rP1], a                                    ; $7ea7: $e0 $00
	ldh  [c], a                                      ; $7ea9: $e2
	adc  c                                           ; $7eaa: $89
	nop                                              ; $7eab: $00
	inc  b                                           ; $7eac: $04
	ld   b, d                                        ; $7ead: $42
	nop                                              ; $7eae: $00
	ld   a, e                                        ; $7eaf: $7b
	nop                                              ; $7eb0: $00
	add  hl, sp                                      ; $7eb1: $39
	adc  c                                           ; $7eb2: $89
	nop                                              ; $7eb3: $00
	inc  b                                           ; $7eb4: $04
	ld   c, b                                        ; $7eb5: $48
	nop                                              ; $7eb6: $00
	call nz, $8c00                                   ; $7eb7: $c4 $00 $8c
	ret                                              ; $7eba: $c9


	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	nop                                              ; $7ebf: $00
	rst  $38                                         ; $7ec0: $ff
	nop                                              ; $7ec1: $00
	rst  $38                                         ; $7ec2: $ff
	nop                                              ; $7ec3: $00
	rst  $38                                         ; $7ec4: $ff
	nop                                              ; $7ec5: $00
	rst  $38                                         ; $7ec6: $ff
	nop                                              ; $7ec7: $00
	rst  $38                                         ; $7ec8: $ff
	nop                                              ; $7ec9: $00
	rst  $38                                         ; $7eca: $ff
	nop                                              ; $7ecb: $00
	or   $00                                         ; $7ecc: $f6 $00
	halt                                             ; $7ece: $76
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	ld   c, $91                                      ; $7ed1: $0e $91
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	ld   c, $89                                      ; $7ed5: $0e $89
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	ld   c, $83                                      ; $7ed9: $0e $83
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	ld   bc, $0089                                   ; $7edd: $01 $89 $00
	ld   [bc], a                                     ; $7ee0: $02
	ld   bc, $0e00                                   ; $7ee1: $01 $00 $0e
	adc  c                                           ; $7ee4: $89
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	ld   c, $83                                      ; $7ee7: $0e $83
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	ld   bc, $0089                                   ; $7eeb: $01 $89 $00
	ld   [bc], a                                     ; $7eee: $02
	ld   bc, $0e00                                   ; $7eef: $01 $00 $0e
	adc  c                                           ; $7ef2: $89
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	ld   c, $83                                      ; $7ef5: $0e $83
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	ld   bc, $0089                                   ; $7ef9: $01 $89 $00
	ld   [bc], a                                     ; $7efc: $02
	ld   bc, $0e00                                   ; $7efd: $01 $00 $0e
	adc  c                                           ; $7f00: $89
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	ld   c, $83                                      ; $7f03: $0e $83
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	ld   bc, $0089                                   ; $7f07: $01 $89 $00
	ld   [bc], a                                     ; $7f0a: $02
	ld   bc, $0e00                                   ; $7f0b: $01 $00 $0e
	adc  c                                           ; $7f0e: $89
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	ld   c, $83                                      ; $7f11: $0e $83
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	ld   bc, $0089                                   ; $7f15: $01 $89 $00
	ld   [bc], a                                     ; $7f18: $02
	ld   bc, $0e00                                   ; $7f19: $01 $00 $0e
	adc  c                                           ; $7f1c: $89
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	ld   c, $83                                      ; $7f1f: $0e $83
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	ld   bc, $0089                                   ; $7f23: $01 $89 $00
	ld   [bc], a                                     ; $7f26: $02
	ld   bc, $0e00                                   ; $7f27: $01 $00 $0e
	adc  c                                           ; $7f2a: $89
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	ld   c, $91                                      ; $7f2d: $0e $91
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	ld   c, $89                                      ; $7f31: $0e $89
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	ld   [bc], a                                     ; $7f35: $02
	add  b                                           ; $7f36: $80
	nop                                              ; $7f37: $00
	ld   [bc], a                                     ; $7f38: $02
	ld   bc, $0700                                   ; $7f39: $01 $00 $07
	add  a                                           ; $7f3c: $87
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	rlca                                             ; $7f3f: $07
	add  b                                           ; $7f40: $80
	nop                                              ; $7f41: $00
	ld   [bc], a                                     ; $7f42: $02
	ld   bc, $0200                                   ; $7f43: $01 $00 $02
	adc  c                                           ; $7f46: $89
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	ld   [bc], a                                     ; $7f49: $02
	add  b                                           ; $7f4a: $80
	nop                                              ; $7f4b: $00
	ld   [bc], a                                     ; $7f4c: $02
	ld   bc, $0700                                   ; $7f4d: $01 $00 $07
	add  a                                           ; $7f50: $87
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	rlca                                             ; $7f53: $07
	add  b                                           ; $7f54: $80
	nop                                              ; $7f55: $00
	ld   [bc], a                                     ; $7f56: $02
	ld   bc, $0200                                   ; $7f57: $01 $00 $02
	adc  c                                           ; $7f5a: $89
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	ld   [bc], a                                     ; $7f5d: $02
	add  b                                           ; $7f5e: $80
	nop                                              ; $7f5f: $00
	ld   [bc], a                                     ; $7f60: $02
	ld   bc, $0700                                   ; $7f61: $01 $00 $07
	add  a                                           ; $7f64: $87
	nop                                              ; $7f65: $00
	ld   [bc], a                                     ; $7f66: $02
	rlca                                             ; $7f67: $07
	nop                                              ; $7f68: $00
	ld   bc, $0080                                   ; $7f69: $01 $80 $00
	nop                                              ; $7f6c: $00
	ld   [bc], a                                     ; $7f6d: $02
	adc  c                                           ; $7f6e: $89
	nop                                              ; $7f6f: $00
	ld   [bc], a                                     ; $7f70: $02
	ld   [bc], a                                     ; $7f71: $02
	nop                                              ; $7f72: $00
	ld   bc, $0080                                   ; $7f73: $01 $80 $00
	nop                                              ; $7f76: $00
	rlca                                             ; $7f77: $07
	add  a                                           ; $7f78: $87
	nop                                              ; $7f79: $00
	dec  b                                           ; $7f7a: $05
	rlca                                             ; $7f7b: $07
	nop                                              ; $7f7c: $00
	ld   bc, $0006                                   ; $7f7d: $01 $06 $00
	inc  b                                           ; $7f80: $04
	adc  c                                           ; $7f81: $89
	nop                                              ; $7f82: $00
	ld   [bc], a                                     ; $7f83: $02
	ld   [bc], a                                     ; $7f84: $02
	nop                                              ; $7f85: $00
	ld   bc, $0080                                   ; $7f86: $01 $80 $00
	nop                                              ; $7f89: $00
	rlca                                             ; $7f8a: $07
	add  a                                           ; $7f8b: $87
	nop                                              ; $7f8c: $00
	ld   [bc], a                                     ; $7f8d: $02
	rlca                                             ; $7f8e: $07
	nop                                              ; $7f8f: $00
	rlca                                             ; $7f90: $07
	add  b                                           ; $7f91: $80
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	inc  b                                           ; $7f94: $04
	adc  c                                           ; $7f95: $89
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	ld   [bc], a                                     ; $7f98: $02
	add  b                                           ; $7f99: $80
	nop                                              ; $7f9a: $00
	ld   [bc], a                                     ; $7f9b: $02
	ld   bc, $0700                                   ; $7f9c: $01 $00 $07
	add  a                                           ; $7f9f: $87
	nop                                              ; $7fa0: $00
	ld   [bc], a                                     ; $7fa1: $02
	rlca                                             ; $7fa2: $07
	nop                                              ; $7fa3: $00
	rlca                                             ; $7fa4: $07
	add  b                                           ; $7fa5: $80
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	inc  b                                           ; $7fa8: $04
	adc  c                                           ; $7fa9: $89
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	ld   [bc], a                                     ; $7fac: $02
	sub  c                                           ; $7fad: $91
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	ld   [bc], a                                     ; $7fb0: $02
	adc  c                                           ; $7fb1: $89
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	ld   a, [bc]                                     ; $7fb4: $0a
	add  c                                           ; $7fb5: $81
	nop                                              ; $7fb6: $00
	add  b                                           ; $7fb7: $80
	ld   bc, $0082                                   ; $7fb8: $01 $82 $00
	add  b                                           ; $7fbb: $80
	ld   bc, $0081                                   ; $7fbc: $01 $81 $00
	dec  b                                           ; $7fbf: $05
	inc  bc                                          ; $7fc0: $03
	ld   [$0300], sp                                 ; $7fc1: $08 $00 $03
	nop                                              ; $7fc4: $00
	ld   [bc], a                                     ; $7fc5: $02
	adc  c                                           ; $7fc6: $89
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	ld   a, [bc]                                     ; $7fc9: $0a
	add  [hl]                                        ; $7fca: $86
	nop                                              ; $7fcb: $00
	ld   [bc], a                                     ; $7fcc: $02
	ld   bc, $0100                                   ; $7fcd: $01 $00 $01
	add  d                                           ; $7fd0: $82
	nop                                              ; $7fd1: $00
	ld   bc, $0109                                   ; $7fd2: $01 $09 $01
	add  b                                           ; $7fd5: $80
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	ld   [bc], a                                     ; $7fd8: $02
	adc  c                                           ; $7fd9: $89
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	ld   c, $8d                                      ; $7fdc: $0e $8d
	nop                                              ; $7fde: $00
	add  d                                           ; $7fdf: $82
	jr   nz, jr_02d_7fe2                             ; $7fe0: $20 $00

jr_02d_7fe2:
	ld   c, $ff                                      ; $7fe2: $0e $ff
	nop                                              ; $7fe4: $00
	rst  $38                                         ; $7fe5: $ff
	nop                                              ; $7fe6: $00
	rst  $38                                         ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	add  $00                                         ; $7fe9: $c6 $00
	ld   [$ff00], sp                                 ; $7feb: $08 $00 $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	rst  $38                                         ; $7ff3: $ff
	nop                                              ; $7ff4: $00
	rst  $38                                         ; $7ff5: $ff
	nop                                              ; $7ff6: $00
	rst  $38                                         ; $7ff7: $ff
	nop                                              ; $7ff8: $00
	rst  $38                                         ; $7ff9: $ff
	nop                                              ; $7ffa: $00
	rst  $30                                         ; $7ffb: $f7
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
