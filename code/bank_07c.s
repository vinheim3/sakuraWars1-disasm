; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

	ld   c, e                                        ; $4000: $4b

Jump_07c_4001:
	ld   bc, $e700                                   ; $4001: $01 $00 $e7
	add  b                                           ; $4004: $80
	nop                                              ; $4005: $00
	ld   [bc], a                                     ; $4006: $02
	ret  nz                                          ; $4007: $c0

	jp   $8803                                       ; $4008: $c3 $03 $88


	jp   $2803                                       ; $400b: $c3 $03 $28


	ret  nz                                          ; $400e: $c0

	rst  $38                                         ; $400f: $ff
	ld   c, a                                        ; $4010: $4f
	adc  b                                           ; $4011: $88
	ld   e, a                                        ; $4012: $5f
	ld   b, $40                                      ; $4013: $06 $40
	nop                                              ; $4015: $00
	ld   bc, $f879                                   ; $4016: $01 $79 $f8
	adc  [hl]                                        ; $4019: $8e
	xor  $80                                         ; $401a: $ee $80
	db   $e3                                         ; $401c: $e3
	nop                                              ; $401d: $00
	add  sp, -$7e                                    ; $401e: $e8 $82
	db   $eb                                         ; $4020: $eb
	add  b                                           ; $4021: $80
	adc  b                                           ; $4022: $88
	inc  bc                                          ; $4023: $03
	ld   c, b                                        ; $4024: $48
	dec  hl                                          ; $4025: $2b
	sub  h                                           ; $4026: $94
	rst  $38                                         ; $4027: $ff
	add  b                                           ; $4028: $80
	ld   a, a                                        ; $4029: $7f
	dec  bc                                          ; $402a: $0b
	rra                                              ; $402b: $1f
	sbc  a                                           ; $402c: $9f
	add  e                                           ; $402d: $83
	db   $e3                                         ; $402e: $e3
	ldh  [$3c], a                                    ; $402f: $e0 $3c
	cp   h                                           ; $4031: $bc
	add  a                                           ; $4032: $87
	ld   b, a                                        ; $4033: $47
	add  hl, sp                                      ; $4034: $39
	ld   a, c                                        ; $4035: $79
	ld   bc, $fd88                                   ; $4036: $01 $88 $fd
	add  b                                           ; $4039: $80
	dec  a                                           ; $403a: $3d
	inc  b                                           ; $403b: $04
	dec  c                                           ; $403c: $0d
	call Call_07c_71c1                               ; $403d: $cd $c1 $71
	ld   c, $8d                                      ; $4040: $0e $8d
	ld   a, a                                        ; $4042: $7f
	adc  b                                           ; $4043: $88
	rst  $38                                         ; $4044: $ff
	ld   [bc], a                                     ; $4045: $02
	db   $fc                                         ; $4046: $fc
	rst  $38                                         ; $4047: $ff
	db   $fc                                         ; $4048: $fc
	add  b                                           ; $4049: $80
	ld   hl, sp-$80                                  ; $404a: $f8 $80
	ld   h, b                                        ; $404c: $60
	add  d                                           ; $404d: $82
	rst  $38                                         ; $404e: $ff
	dec  bc                                          ; $404f: $0b
	cp   $cf                                         ; $4050: $fe $cf
	pop  af                                          ; $4052: $f1
	add  [hl]                                        ; $4053: $86
	rst  ToBoot                                         ; $4054: $c7
	adc  a                                           ; $4055: $8f
	rrca                                             ; $4056: $0f
	dec  e                                           ; $4057: $1d
	rra                                              ; $4058: $1f
	dec  sp                                          ; $4059: $3b
	ccf                                              ; $405a: $3f
	rlca                                             ; $405b: $07
	add  c                                           ; $405c: $81
	ldh  a, [rSC]                                    ; $405d: $f0 $02
	ld   [hl], b                                     ; $405f: $70
	ldh  a, [rSVBK]                                  ; $4060: $f0 $70
	add  a                                           ; $4062: $87
	ldh  a, [rP1]                                    ; $4063: $f0 $00
	rst  $30                                         ; $4065: $f7
	adc  b                                           ; $4066: $88
	ld   a, [bc]                                     ; $4067: $0a
	dec  b                                           ; $4068: $05
	ld   [$01f2], sp                                 ; $4069: $08 $f2 $01
	add  e                                           ; $406c: $83
	ld   a, [hl]                                     ; $406d: $7e
	cpl                                              ; $406e: $2f
	add  e                                           ; $406f: $83
	ret  z                                           ; $4070: $c8

	add  d                                           ; $4071: $82
	ret  c                                           ; $4072: $d8

	add  c                                           ; $4073: $81
	db   $18, $80                                    ; $4074: $18 $80
	db   $fc                                         ; $4076: $fc
	ld   bc, $be00                                   ; $4077: $01 $00 $be
	add  e                                           ; $407a: $83
	ccf                                              ; $407b: $3f
	add  b                                           ; $407c: $80
	inc  a                                           ; $407d: $3c
	dec  b                                           ; $407e: $05
	ld   [bc], a                                     ; $407f: $02

Call_07c_4080:
	ld   bc, $3803                                   ; $4080: $01 $03 $38
	ccf                                              ; $4083: $3f
	rlca                                             ; $4084: $07
	add  b                                           ; $4085: $80
	ccf                                              ; $4086: $3f
	nop                                              ; $4087: $00
	rrca                                             ; $4088: $0f
	add  c                                           ; $4089: $81
	xor  a                                           ; $408a: $af
	add  b                                           ; $408b: $80
	xor  h                                           ; $408c: $ac
	ld   b, $22                                      ; $408d: $06 $22
	ld   bc, $fc03                                   ; $408f: $01 $03 $fc
	rst  $38                                         ; $4092: $ff
	inc  bc                                          ; $4093: $03
	adc  a                                           ; $4094: $8f
	add  c                                           ; $4095: $81
	xor  a                                           ; $4096: $af
	inc  b                                           ; $4097: $04
	jr   nz, jr_07c_40d2                             ; $4098: $20 $38

	ld   hl, sp-$3a                                  ; $409a: $f8 $c6
	ld   b, $80                                      ; $409c: $06 $80
	ld   bc, $fc03                                   ; $409e: $01 $03 $fc
	rst  $38                                         ; $40a1: $ff
	inc  bc                                          ; $40a2: $03
	db   $e3                                         ; $40a3: $e3
	add  e                                           ; $40a4: $83
	db   $eb                                         ; $40a5: $eb
	ld   [bc], a                                     ; $40a6: $02
	ld   b, a                                        ; $40a7: $47
	cpl                                              ; $40a8: $2f
	ld   h, b                                        ; $40a9: $60
	add  b                                           ; $40aa: $80
	jr   nz, @+$03                                   ; $40ab: $20 $01

	cp   $be                                         ; $40ad: $fe $be
	add  b                                           ; $40af: $80
	jr   nz, jr_07c_40b4                             ; $40b0: $20 $02

	inc  hl                                          ; $40b2: $23
	cpl                                              ; $40b3: $2f

jr_07c_40b4:
	inc  l                                           ; $40b4: $2c
	add  d                                           ; $40b5: $82
	cpl                                              ; $40b6: $2f
	dec  b                                           ; $40b7: $05
	ld   a, b                                        ; $40b8: $78
	nop                                              ; $40b9: $00
	add  b                                           ; $40ba: $80
	ld   b, d                                        ; $40bb: $42
	jp   $8001                                       ; $40bc: $c3 $01 $80


	jp   $0380                                       ; $40bf: $c3 $80 $03


	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	add  b                                           ; $40c4: $80
	ret  nz                                          ; $40c5: $c0

	rlca                                             ; $40c6: $07
	inc  bc                                          ; $40c7: $03
	jp   $98c0                                       ; $40c8: $c3 $c0 $98


	ld   a, a                                        ; $40cb: $7f
	rst  $38                                         ; $40cc: $ff
	nop                                              ; $40cd: $00
	rra                                              ; $40ce: $1f
	add  [hl]                                        ; $40cf: $86
	ld   e, a                                        ; $40d0: $5f
	inc  b                                           ; $40d1: $04

jr_07c_40d2:
	rra                                              ; $40d2: $1f
	inc  bc                                          ; $40d3: $03
	db   $e3                                         ; $40d4: $e3
	ldh  [$08], a                                    ; $40d5: $e0 $08
	adc  h                                           ; $40d7: $8c
	db   $eb                                         ; $40d8: $eb
	nop                                              ; $40d9: $00
	db   $f4                                         ; $40da: $f4
	adc  l                                           ; $40db: $8d
	db   $fd                                         ; $40dc: $fd
	dec  b                                           ; $40dd: $05
	ld   bc, $7c1c                                   ; $40de: $01 $1c $7c
	ld   h, a                                        ; $40e1: $67
	ld   a, a                                        ; $40e2: $7f
	ld   a, b                                        ; $40e3: $78
	add  c                                           ; $40e4: $81
	ld   a, h                                        ; $40e5: $7c
	add  l                                           ; $40e6: $85
	ld   a, l                                        ; $40e7: $7d
	ld   bc, $7f7e                                   ; $40e8: $01 $7e $7f
	add  b                                           ; $40eb: $80
	ccf                                              ; $40ec: $3f
	add  hl, bc                                      ; $40ed: $09
	rlca                                             ; $40ee: $07
	rst  ToBoot                                         ; $40ef: $c7
	pop  bc                                          ; $40f0: $c1
	add  hl, sp                                      ; $40f1: $39
	ld   a, b                                        ; $40f2: $78
	ld   c, [hl]                                     ; $40f3: $4e
	ld   a, [hl]                                     ; $40f4: $7e
	ld   [hl], e                                     ; $40f5: $73
	ld   a, a                                        ; $40f6: $7f
	ld   a, h                                        ; $40f7: $7c
	add  b                                           ; $40f8: $80
	ld   a, a                                        ; $40f9: $7f
	nop                                              ; $40fa: $00
	rst  $38                                         ; $40fb: $ff
	add  e                                           ; $40fc: $83
	nop                                              ; $40fd: $00
	add  b                                           ; $40fe: $80
	dec  bc                                          ; $40ff: $0b
	add  b                                           ; $4100: $80
	add  a                                           ; $4101: $87
	add  b                                           ; $4102: $80
	sbc  a                                           ; $4103: $9f
	ld   [$3f38], sp                                 ; $4104: $08 $38 $3f
	rst  $20                                         ; $4107: $e7
	rst  $28                                         ; $4108: $ef
	scf                                              ; $4109: $37
	ccf                                              ; $410a: $3f
	ld   h, a                                        ; $410b: $67
	ld   a, a                                        ; $410c: $7f
	rst  JumpTable                                         ; $410d: $df
	add  c                                           ; $410e: $81
	rst  $38                                         ; $410f: $ff
	ld   [bc], a                                     ; $4110: $02
	cp   a                                           ; $4111: $bf
	rst  $38                                         ; $4112: $ff
	ld   a, a                                        ; $4113: $7f
	add  h                                           ; $4114: $84
	rst  $38                                         ; $4115: $ff
	add  b                                           ; $4116: $80
	cp   $82                                         ; $4117: $fe $82
	db   $fc                                         ; $4119: $fc
	add  b                                           ; $411a: $80
	ld   hl, sp-$80                                  ; $411b: $f8 $80
	ldh  a, [rTMA]                                   ; $411d: $f0 $06
	pop  hl                                          ; $411f: $e1
	ldh  [c], a                                      ; $4120: $e2
	jp   $0fcf                                       ; $4121: $c3 $cf $0f


	add  b                                           ; $4124: $80
	ld   a, a                                        ; $4125: $7f
	add  b                                           ; $4126: $80
	ccf                                              ; $4127: $3f
	add  hl, bc                                      ; $4128: $09
	rlca                                             ; $4129: $07
	rst  ToBoot                                         ; $412a: $c7
	pop  bc                                          ; $412b: $c1
	add  hl, sp                                      ; $412c: $39
	ld   a, b                                        ; $412d: $78
	ld   c, [hl]                                     ; $412e: $4e
	ld   a, [hl]                                     ; $412f: $7e
	ld   [hl], e                                     ; $4130: $73
	ld   a, a                                        ; $4131: $7f
	ld   a, h                                        ; $4132: $7c
	add  b                                           ; $4133: $80
	ld   a, a                                        ; $4134: $7f
	add  [hl]                                        ; $4135: $86
	rst  $38                                         ; $4136: $ff
	add  b                                           ; $4137: $80
	ld   a, a                                        ; $4138: $7f
	ld   b, $1f                                      ; $4139: $06 $1f
	sbc  a                                           ; $413b: $9f
	add  a                                           ; $413c: $87
	rst  $20                                         ; $413d: $e7
	pop  hl                                          ; $413e: $e1
	add  hl, sp                                      ; $413f: $39
	rst  ToBoot                                         ; $4140: $c7
	add  [hl]                                        ; $4141: $86
	nop                                              ; $4142: $00
	add  [hl]                                        ; $4143: $86
	rrca                                             ; $4144: $0f
	add  [hl]                                        ; $4145: $86
	nop                                              ; $4146: $00
	add  c                                           ; $4147: $81
	rst  $38                                         ; $4148: $ff
	inc  b                                           ; $4149: $04
	cp   $ff                                         ; $414a: $fe $ff
	db   $fc                                         ; $414c: $fc
	cp   $fc                                         ; $414d: $fe $fc
	add  l                                           ; $414f: $85
	nop                                              ; $4150: $00
	inc  bc                                          ; $4151: $03
	ld   [hl], b                                     ; $4152: $70
	ldh  a, [rSTAT]                                  ; $4153: $f0 $41
	pop  bc                                          ; $4155: $c1
	add  b                                           ; $4156: $80
	rlca                                             ; $4157: $07
	ld   [bc], a                                     ; $4158: $02
	sub  h                                           ; $4159: $94
	sub  a                                           ; $415a: $97
	inc  bc                                          ; $415b: $03
	add  l                                           ; $415c: $85

jr_07c_415d:
	nop                                              ; $415d: $00
	ld   [$7f7c], sp                                 ; $415e: $08 $7c $7f
	or   e                                           ; $4161: $b3
	cp   a                                           ; $4162: $bf
	adc  [hl]                                        ; $4163: $8e
	rst  $38                                         ; $4164: $ff
	ld   a, c                                        ; $4165: $79
	rst  $38                                         ; $4166: $ff
	ld   hl, sp-$7b                                  ; $4167: $f8 $85
	nop                                              ; $4169: $00
	inc  bc                                          ; $416a: $03
	jr   nc, jr_07c_415d                             ; $416b: $30 $f0

	nop                                              ; $416d: $00
	ret  nz                                          ; $416e: $c0

	add  b                                           ; $416f: $80
	add  b                                           ; $4170: $80
	adc  d                                           ; $4171: $8a
	nop                                              ; $4172: $00
	add  b                                           ; $4173: $80
	dec  h                                           ; $4174: $25
	add  b                                           ; $4175: $80
	ret  nz                                          ; $4176: $c0

	add  b                                           ; $4177: $80
	ld   bc, $0086                                   ; $4178: $01 $86 $00
	ld   [$dfdb], sp                                 ; $417b: $08 $db $df
	jr   c, @+$41                                    ; $417e: $38 $3f

	di                                               ; $4180: $f3
	rst  $38                                         ; $4181: $ff
	rst  $28                                         ; $4182: $ef
	rst  $38                                         ; $4183: $ff
	rra                                              ; $4184: $1f
	add  l                                           ; $4185: $85
	nop                                              ; $4186: $00
	ld   [bc], a                                     ; $4187: $02
	adc  b                                           ; $4188: $88
	rst  $38                                         ; $4189: $ff
	ld   [hl], a                                     ; $418a: $77
	add  h                                           ; $418b: $84
	rst  $38                                         ; $418c: $ff
	add  [hl]                                        ; $418d: $86
	nop                                              ; $418e: $00
	add  [hl]                                        ; $418f: $86
	rst  $38                                         ; $4190: $ff
	add  l                                           ; $4191: $85
	nop                                              ; $4192: $00
	ld   [$fd0d], sp                                 ; $4193: $08 $0d $fd
	xor  $fe                                         ; $4196: $ee $fe
	nop                                              ; $4198: $00
	ldh  [$c6], a                                    ; $4199: $e0 $c6
	rst  ToBoot                                         ; $419b: $c7
	ld   bc, $0085                                   ; $419c: $01 $85 $00
	add  b                                           ; $419f: $80
	inc  b                                           ; $41a0: $04
	add  b                                           ; $41a1: $80
	ld   a, b                                        ; $41a2: $78
	add  b                                           ; $41a3: $80
	ldh  a, [$80]                                    ; $41a4: $f0 $80
	jp   nz, $008a                                   ; $41a6: $c2 $8a $00

	add  b                                           ; $41a9: $80
	ccf                                              ; $41aa: $3f
	ld   [bc], a                                     ; $41ab: $02
	cp   $ff                                         ; $41ac: $fe $ff
	ld   bc, $0085                                   ; $41ae: $01 $85 $00
	add  b                                           ; $41b1: $80
	rlca                                             ; $41b2: $07
	inc  b                                           ; $41b3: $04
	cp   $ff                                         ; $41b4: $fe $ff
	pop  af                                          ; $41b6: $f1
	rst  $38                                         ; $41b7: $ff
	rrca                                             ; $41b8: $0f
	add  b                                           ; $41b9: $80
	rst  $38                                         ; $41ba: $ff
	add  l                                           ; $41bb: $85
	nop                                              ; $41bc: $00
	inc  b                                           ; $41bd: $04
	ldh  [$f0], a                                    ; $41be: $e0 $f0
	nop                                              ; $41c0: $00
	ldh  a, [$e0]                                    ; $41c1: $f0 $e0
	add  d                                           ; $41c3: $82
	ldh  a, [$87]                                    ; $41c4: $f0 $87
	rrca                                             ; $41c6: $0f
	rlca                                             ; $41c7: $07
	ld   c, $0f                                      ; $41c8: $0e $0f
	dec  c                                           ; $41ca: $0d
	rrca                                             ; $41cb: $0f
	inc  c                                           ; $41cc: $0c
	rrca                                             ; $41cd: $0f
	ld   [bc], a                                     ; $41ce: $02
	db   $fd                                         ; $41cf: $fd
	add  b                                           ; $41d0: $80
	rst  $30                                         ; $41d1: $f7
	dec  h                                           ; $41d2: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d3: $cf
	rst  $38                                         ; $41d4: $ff
	halt                                             ; $41d5: $76
	rst  $38                                         ; $41d6: $ff
	add  hl, hl                                      ; $41d7: $29
	rst  $38                                         ; $41d8: $ff
	rra                                              ; $41d9: $1f
	rst  $38                                         ; $41da: $ff
	ld   a, [hl]                                     ; $41db: $7e
	rst  $38                                         ; $41dc: $ff
	db   $fd                                         ; $41dd: $fd
	rst  $38                                         ; $41de: $ff
	adc  $3f                                         ; $41df: $ce $3f
	dec  l                                           ; $41e1: $2d
	ccf                                              ; $41e2: $3f
	ret  c                                           ; $41e3: $d8

	rst  $38                                         ; $41e4: $ff
	ld   [hl], $ff                                   ; $41e5: $36 $ff
	add  sp, -$01                                    ; $41e7: $e8 $ff
	sub  b                                           ; $41e9: $90
	cp   $60                                         ; $41ea: $fe $60
	ld   hl, sp-$10                                  ; $41ec: $f8 $f0
	ldh  [$50], a                                    ; $41ee: $e0 $50
	db   $fc                                         ; $41f0: $fc
	ld   a, h                                        ; $41f1: $7c
	ldh  a, [rP1]                                    ; $41f2: $f0 $00
	ldh  [$80], a                                    ; $41f4: $e0 $80
	ret  nz                                          ; $41f6: $c0

	add  b                                           ; $41f7: $80
	nop                                              ; $41f8: $00
	add  b                                           ; $41f9: $80
	ld   bc, $0780                                   ; $41fa: $01 $80 $07
	add  b                                           ; $41fd: $80
	ld   e, $80                                      ; $41fe: $1e $80
	inc  b                                           ; $4200: $04
	add  b                                           ; $4201: $80
	db   $10                                         ; $4202: $10
	add  b                                           ; $4203: $80
	ld   [$1180], sp                                 ; $4204: $08 $80 $11
	add  b                                           ; $4207: $80
	ld   b, e                                        ; $4208: $43
	add  b                                           ; $4209: $80
	add  a                                           ; $420a: $87
	db   $10                                         ; $420b: $10
	ld   c, $0f                                      ; $420c: $0e $0f
	add  hl, sp                                      ; $420e: $39
	ccf                                              ; $420f: $3f
	nop                                              ; $4210: $00
	rlca                                             ; $4211: $07
	ld   c, $0f                                      ; $4212: $0e $0f
	add  hl, sp                                      ; $4214: $39
	ccf                                              ; $4215: $3f
	ld   [hl], a                                     ; $4216: $77
	ld   a, a                                        ; $4217: $7f
	rst  $28                                         ; $4218: $ef
	rst  $38                                         ; $4219: $ff
	sbc  a                                           ; $421a: $9f
	rst  $38                                         ; $421b: $ff
	ld   a, a                                        ; $421c: $7f
	add  c                                           ; $421d: $81
	rst  $38                                         ; $421e: $ff
	ld   [bc], a                                     ; $421f: $02
	ld   a, a                                        ; $4220: $7f
	rst  $38                                         ; $4221: $ff
	ld   a, a                                        ; $4222: $7f
	sub  a                                           ; $4223: $97
	rst  $38                                         ; $4224: $ff
	inc  b                                           ; $4225: $04
	ret  c                                           ; $4226: $d8

	rst  $38                                         ; $4227: $ff
	ld   h, $ff                                      ; $4228: $26 $ff
	ld   bc, $ff8d                                   ; $422a: $01 $8d $ff
	inc  c                                           ; $422d: $0c
	cp   $ff                                         ; $422e: $fe $ff
	cp   $ff                                         ; $4230: $fe $ff
	db   $fc                                         ; $4232: $fc
	rst  $38                                         ; $4233: $ff
	ld   hl, sp-$01                                  ; $4234: $f8 $ff
	ei                                               ; $4236: $fb
	rst  $38                                         ; $4237: $ff
	rst  $30                                         ; $4238: $f7
	rst  $38                                         ; $4239: $ff
	rst  $30                                         ; $423a: $f7
	add  c                                           ; $423b: $81
	rst  $38                                         ; $423c: $ff
	ld   a, [bc]                                     ; $423d: $0a
	sub  e                                           ; $423e: $93
	rst  $38                                         ; $423f: $ff
	ld   b, e                                        ; $4240: $43
	rst  $38                                         ; $4241: $ff
	inc  l                                           ; $4242: $2c
	rst  $38                                         ; $4243: $ff
	ld   hl, sp-$01                                  ; $4244: $f8 $ff
	db   $db                                         ; $4246: $db
	rst  $38                                         ; $4247: $ff
	rst  JumpTable                                         ; $4248: $df
	add  e                                           ; $4249: $83
	rst  $38                                         ; $424a: $ff
	ld   b, $d0                                      ; $424b: $06 $d0
	rst  $28                                         ; $424d: $ef
	ccf                                              ; $424e: $3f
	rst  $38                                         ; $424f: $ff
	ret  nz                                          ; $4250: $c0

	rst  $38                                         ; $4251: $ff
	ccf                                              ; $4252: $3f
	add  a                                           ; $4253: $87
	rst  $38                                         ; $4254: $ff
	ld   [bc], a                                     ; $4255: $02
	rrca                                             ; $4256: $0f
	rst  $38                                         ; $4257: $ff
	rrca                                             ; $4258: $0f
	adc  h                                           ; $4259: $8c
	rst  $38                                         ; $425a: $ff
	adc  l                                           ; $425b: $8d
	ldh  a, [rAUD1LOW]                               ; $425c: $f0 $13
	ldh  a, [c]                                      ; $425e: $f2
	rst  $38                                         ; $425f: $ff
	ld   hl, sp-$01                                  ; $4260: $f8 $ff
	ld   a, [$fdfc]                                  ; $4262: $fa $fc $fd
	ld   sp, hl                                      ; $4265: $f9
	db   $eb                                         ; $4266: $eb
	di                                               ; $4267: $f3
	adc  $ee                                         ; $4268: $ce $ee
	cp   l                                           ; $426a: $bd
	db   $fd                                         ; $426b: $fd
	ld   c, a                                        ; $426c: $4f
	rst  $38                                         ; $426d: $ff
	ld   [hl], b                                     ; $426e: $70
	ret  nz                                          ; $426f: $c0

	add  b                                           ; $4270: $80
	nop                                              ; $4271: $00
	add  b                                           ; $4272: $80
	ld   b, a                                        ; $4273: $47
	add  b                                           ; $4274: $80
	sbc  a                                           ; $4275: $9f
	add  hl, bc                                      ; $4276: $09
	jr   c, @+$41                                    ; $4277: $38 $3f

	and  $ff                                         ; $4279: $e6 $ff
	ret  c                                           ; $427b: $d8

	rst  $38                                         ; $427c: $ff
	or   l                                           ; $427d: $b5
	rst  $38                                         ; $427e: $ff
	ld   c, a                                        ; $427f: $4f
	inc  a                                           ; $4280: $3c
	add  b                                           ; $4281: $80
	rst  $38                                         ; $4282: $ff
	ld   [$ef6f], sp                                 ; $4283: $08 $6f $ef
	inc  e                                           ; $4286: $1c
	sbc  a                                           ; $4287: $9f
	ei                                               ; $4288: $fb
	rst  $38                                         ; $4289: $ff
	rst  ToBoot                                         ; $428a: $c7
	rst  $38                                         ; $428b: $ff
	ccf                                              ; $428c: $3f
	add  c                                           ; $428d: $81
	rst  $38                                         ; $428e: $ff
	ld   b, $0f                                      ; $428f: $06 $0f
	rst  $38                                         ; $4291: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4292: $cf
	rst  $38                                         ; $4293: $ff
	cp   a                                           ; $4294: $bf
	rst  $38                                         ; $4295: $ff
	ld   a, a                                        ; $4296: $7f
	add  a                                           ; $4297: $87
	rst  $38                                         ; $4298: $ff
	ld   a, [bc]                                     ; $4299: $0a
	cp   $ff                                         ; $429a: $fe $ff
	db   $fd                                         ; $429c: $fd
	rst  $38                                         ; $429d: $ff
	or   $ff                                         ; $429e: $f6 $ff
	pop  af                                          ; $42a0: $f1
	rst  $38                                         ; $42a1: $ff
	db   $db                                         ; $42a2: $db
	rst  $38                                         ; $42a3: $ff
	rst  JumpTable                                         ; $42a4: $df
	add  e                                           ; $42a5: $83
	rst  $38                                         ; $42a6: $ff
	ld   b, $03                                      ; $42a7: $06 $03
	rst  $38                                         ; $42a9: $ff
	ei                                               ; $42aa: $fb
	rst  $38                                         ; $42ab: $ff
	rst  $20                                         ; $42ac: $e7
	rst  $38                                         ; $42ad: $ff
	rra                                              ; $42ae: $1f
	adc  a                                           ; $42af: $8f
	rst  $38                                         ; $42b0: $ff
	ld   b, $fe                                      ; $42b1: $06 $fe
	rst  $38                                         ; $42b3: $ff
	db   $fd                                         ; $42b4: $fd
	rst  $38                                         ; $42b5: $ff
	ld   a, [$f9ff]                                  ; $42b6: $fa $ff $f9
	add  e                                           ; $42b9: $83
	rst  $38                                         ; $42ba: $ff
	ld   [$ffef], sp                                 ; $42bb: $08 $ef $ff
	rla                                              ; $42be: $17
	rst  $38                                         ; $42bf: $ff
	rst  $30                                         ; $42c0: $f7
	rst  $38                                         ; $42c1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c2: $cf
	rst  $38                                         ; $42c3: $ff
	ccf                                              ; $42c4: $3f
	add  c                                           ; $42c5: $81
	rst  $38                                         ; $42c6: $ff
	ld   [bc], a                                     ; $42c7: $02
	cp   $0f                                         ; $42c8: $fe $0f
	ld   c, $81                                      ; $42ca: $0e $81
	rrca                                             ; $42cc: $0f
	ld   [bc], a                                     ; $42cd: $02
	dec  c                                           ; $42ce: $0d
	rrca                                             ; $42cf: $0f
	dec  c                                           ; $42d0: $0d
	add  l                                           ; $42d1: $85
	rrca                                             ; $42d2: $0f
	ld   b, $13                                      ; $42d3: $06 $13
	rst  $38                                         ; $42d5: $ff
	jp   Jump_07c_5fff                               ; $42d6: $c3 $ff $5f


	rst  $38                                         ; $42d9: $ff
	ld   a, a                                        ; $42da: $7f
	add  a                                           ; $42db: $87
	rst  $38                                         ; $42dc: $ff
	ld   [bc], a                                     ; $42dd: $02
	rst  $28                                         ; $42de: $ef
	rst  $38                                         ; $42df: $ff
	rst  $28                                         ; $42e0: $ef
	add  e                                           ; $42e1: $83
	rst  $38                                         ; $42e2: $ff
	ld   [$fff8], sp                                 ; $42e3: $08 $f8 $ff
	and  $ff                                         ; $42e6: $e6 $ff
	db   $fd                                         ; $42e8: $fd
	rst  $38                                         ; $42e9: $ff
	jp   $dfff                                       ; $42ea: $c3 $ff $df


	add  c                                           ; $42ed: $81
	rst  $38                                         ; $42ee: $ff
	ld   [de], a                                     ; $42ef: $12
	ld   hl, sp-$01                                  ; $42f0: $f8 $ff
	rst  $30                                         ; $42f2: $f7
	rst  $38                                         ; $42f3: $ff
	cp   $ff                                         ; $42f4: $fe $ff
	add  c                                           ; $42f6: $81
	rst  $38                                         ; $42f7: $ff
	ld   c, a                                        ; $42f8: $4f
	rst  $38                                         ; $42f9: $ff
	ccf                                              ; $42fa: $3f
	rst  $38                                         ; $42fb: $ff
	rst  $28                                         ; $42fc: $ef
	rst  $38                                         ; $42fd: $ff
	rrca                                             ; $42fe: $0f

Call_07c_42ff:
	rst  $38                                         ; $42ff: $ff
	sbc  a                                           ; $4300: $9f
	rst  $38                                         ; $4301: $ff
	ld   a, a                                        ; $4302: $7f
	sub  l                                           ; $4303: $95
	rst  $38                                         ; $4304: $ff
	add  b                                           ; $4305: $80
	ldh  [$8a], a                                    ; $4306: $e0 $8a
	rst  $38                                         ; $4308: $ff
	add  b                                           ; $4309: $80
	ret  nz                                          ; $430a: $c0

	ld   [bc], a                                     ; $430b: $02
	ccf                                              ; $430c: $3f
	nop                                              ; $430d: $00
	ret  nz                                          ; $430e: $c0

	add  l                                           ; $430f: $85
	rst  $38                                         ; $4310: $ff
	add  b                                           ; $4311: $80
	cp   $03                                         ; $4312: $fe $03
	ld   bc, $fe00                                   ; $4314: $01 $00 $fe
	nop                                              ; $4317: $00
	add  b                                           ; $4318: $80
	ld   a, a                                        ; $4319: $7f
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	add  l                                           ; $431c: $85
	rst  $38                                         ; $431d: $ff
	add  b                                           ; $431e: $80
	rrca                                             ; $431f: $0f
	ld   b, $e1                                      ; $4320: $06 $e1
	ld   de, $0e00                                   ; $4322: $11 $00 $0e
	sbc  [hl]                                        ; $4325: $9e
	rlca                                             ; $4326: $07
	sbc  b                                           ; $4327: $98
	adc  c                                           ; $4328: $89
	rst  $38                                         ; $4329: $ff
	add  b                                           ; $432a: $80
	ld   a, a                                        ; $432b: $7f
	inc  bc                                          ; $432c: $03
	rra                                              ; $432d: $1f
	sbc  a                                           ; $432e: $9f
	ld   a, a                                        ; $432f: $7f
	rrca                                             ; $4330: $0f
	add  b                                           ; $4331: $80
	ld   [$f708], sp                                 ; $4332: $08 $08 $f7
	nop                                              ; $4335: $00
	ei                                               ; $4336: $fb
	inc  bc                                          ; $4337: $03
	rst  $38                                         ; $4338: $ff
	ld   hl, sp-$01                                  ; $4339: $f8 $ff
	rlca                                             ; $433b: $07
	rst  $38                                         ; $433c: $ff
	add  c                                           ; $433d: $81
	rrca                                             ; $433e: $0f
	dec  bc                                          ; $433f: $0b
	nop                                              ; $4340: $00
	ldh  a, [rIF]                                    ; $4341: $f0 $0f
	nop                                              ; $4343: $00
	rst  $30                                         ; $4344: $f7
	rlca                                             ; $4345: $07
	rst  $28                                         ; $4346: $ef
	add  sp, -$17                                    ; $4347: $e8 $e9
	ld   [$cacb], sp                                 ; $4349: $08 $cb $ca
	add  d                                           ; $434c: $82
	rlc  [hl]                                        ; $434d: $cb $06
	rlca                                             ; $434f: $07
	nop                                              ; $4350: $00
	rst  $28                                         ; $4351: $ef
	rrca                                             ; $4352: $0f
	rst  $38                                         ; $4353: $ff
	ldh  [$ef], a                                    ; $4354: $e0 $ef
	add  b                                           ; $4356: $80
	rrca                                             ; $4357: $0f
	inc  c                                           ; $4358: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4359: $cf
	add  e                                           ; $435a: $83
	inc  sp                                          ; $435b: $33
	ldh  [$8c], a                                    ; $435c: $e0 $8c
	ld   hl, sp-$1d                                  ; $435e: $f8 $e3
	rst  $20                                         ; $4360: $e7
	rra                                              ; $4361: $1f
	rst  $38                                         ; $4362: $ff
	ldh  [rIE], a                                    ; $4363: $e0 $ff
	rra                                              ; $4365: $1f
	add  [hl]                                        ; $4366: $86
	rst  $38                                         ; $4367: $ff
	add  b                                           ; $4368: $80
	ccf                                              ; $4369: $3f
	inc  bc                                          ; $436a: $03
	nop                                              ; $436b: $00
	ret  nz                                          ; $436c: $c0

	rst  $38                                         ; $436d: $ff
	ccf                                              ; $436e: $3f
	adc  d                                           ; $436f: $8a
	rst  $38                                         ; $4370: $ff
	inc  bc                                          ; $4371: $03
	ld   c, b                                        ; $4372: $48
	add  hl, hl                                      ; $4373: $29

jr_07c_4374:
	cpl                                              ; $4374: $2f
	ld   l, $8a                                      ; $4375: $2e $8a
	cpl                                              ; $4377: $2f
	dec  bc                                          ; $4378: $0b
	ld   h, a                                        ; $4379: $67
	rst  $20                                         ; $437a: $e7
	pop  hl                                          ; $437b: $e1
	ld   a, c                                        ; $437c: $79
	ld   hl, sp-$62                                  ; $437d: $f8 $9e
	cp   $e7                                         ; $437f: $fe $e7
	rst  $38                                         ; $4381: $ff
	ld   sp, hl                                      ; $4382: $f9
	rst  $38                                         ; $4383: $ff
	cp   $86                                         ; $4384: $fe $86
	rst  $38                                         ; $4386: $ff
	add  b                                           ; $4387: $80
	ld   a, a                                        ; $4388: $7f
	ld   a, [bc]                                     ; $4389: $0a
	rra                                              ; $438a: $1f
	sbc  a                                           ; $438b: $9f
	add  a                                           ; $438c: $87
	rst  $20                                         ; $438d: $e7
	pop  hl                                          ; $438e: $e1
	ld   a, c                                        ; $438f: $79
	ld   hl, sp-$62                                  ; $4390: $f8 $9e
	cp   $e7                                         ; $4392: $fe $e7
	ld   hl, sp-$77                                  ; $4394: $f8 $89
	rst  $38                                         ; $4396: $ff
	add  b                                           ; $4397: $80
	ld   a, a                                        ; $4398: $7f
	ld   [bc], a                                     ; $4399: $02
	rra                                              ; $439a: $1f
	sbc  a                                           ; $439b: $9f
	ld   d, e                                        ; $439c: $53
	adc  l                                           ; $439d: $8d
	rlc  e                                           ; $439e: $cb $03
	pop  hl                                          ; $43a0: $e1
	ld   hl, sp-$01                                  ; $43a1: $f8 $ff
	cp   $8a                                         ; $43a3: $fe $8a
	rst  $38                                         ; $43a5: $ff
	dec  bc                                          ; $43a6: $0b
	rrca                                             ; $43a7: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a8: $cf
	add  e                                           ; $43a9: $83
	inc  sp                                          ; $43aa: $33
	ldh  [$8c], a                                    ; $43ab: $e0 $8c
	ld   hl, sp-$1d                                  ; $43ad: $f8 $e3
	cp   $f8                                         ; $43af: $fe $f8
	rst  $38                                         ; $43b1: $ff
	cp   $80                                         ; $43b2: $fe $80
	rst  $38                                         ; $43b4: $ff
	add  b                                           ; $43b5: $80
	ret  nz                                          ; $43b6: $c0

	add  h                                           ; $43b7: $84
	rst  $38                                         ; $43b8: $ff
	add  b                                           ; $43b9: $80
	ccf                                              ; $43ba: $3f
	ld   [$cf0f], sp                                 ; $43bb: $08 $0f $cf
	add  e                                           ; $43be: $83
	inc  sp                                          ; $43bf: $33
	ldh  [$8c], a                                    ; $43c0: $e0 $8c
	ld   a, h                                        ; $43c2: $7c
	rrca                                             ; $43c3: $0f
	jr   nz, @-$79                                   ; $43c4: $20 $85

	cpl                                              ; $43c6: $2f
	add  b                                           ; $43c7: $80
	ld   l, $06                                      ; $43c8: $2e $06
	ld   hl, $2120                                   ; $43ca: $21 $20 $21
	ld   l, $2f                                      ; $43cd: $2e $2f
	ld   hl, $839f                                   ; $43cf: $21 $9f $83
	rst  $38                                         ; $43d2: $ff
	add  b                                           ; $43d3: $80
	db   $fc                                         ; $43d4: $fc
	dec  b                                           ; $43d5: $05
	inc  bc                                          ; $43d6: $03
	nop                                              ; $43d7: $00
	add  e                                           ; $43d8: $83
	ld   a, h                                        ; $43d9: $7c
	rst  $38                                         ; $43da: $ff
	inc  bc                                          ; $43db: $03
	add  b                                           ; $43dc: $80
	rst  $38                                         ; $43dd: $ff
	add  b                                           ; $43de: $80
	ld   hl, sp-$80                                  ; $43df: $f8 $80
	rst  $38                                         ; $43e1: $ff
	add  b                                           ; $43e2: $80
	ld   hl, sp+$05                                  ; $43e3: $f8 $05
	ld   b, $01                                      ; $43e5: $06 $01
	rlca                                             ; $43e7: $07
	ld   hl, sp-$01                                  ; $43e8: $f8 $ff
	rlca                                             ; $43ea: $07
	add  d                                           ; $43eb: $82
	rst  $38                                         ; $43ec: $ff
	inc  b                                           ; $43ed: $04
	rlca                                             ; $43ee: $07
	rst  $20                                         ; $43ef: $e7
	pop  hl                                          ; $43f0: $e1
	add  hl, sp                                      ; $43f1: $39
	jr   c, jr_07c_4374                              ; $43f2: $38 $80

	ld   c, $80                                      ; $43f4: $0e $80
	db   $eb                                         ; $43f6: $eb
	nop                                              ; $43f7: $00
	ld   [$eb84], sp                                 ; $43f8: $08 $84 $eb
	nop                                              ; $43fb: $00
	rst  $30                                         ; $43fc: $f7
	add  c                                           ; $43fd: $81
	rst  $38                                         ; $43fe: $ff
	add  b                                           ; $43ff: $80
	ld   a, a                                        ; $4400: $7f
	ld   a, [bc]                                     ; $4401: $0a
	rra                                              ; $4402: $1f
	sbc  a                                           ; $4403: $9f
	add  a                                           ; $4404: $87
	rst  $20                                         ; $4405: $e7
	pop  hl                                          ; $4406: $e1
	add  hl, sp                                      ; $4407: $39
	ld   hl, sp-$32                                  ; $4408: $f8 $ce
	cp   $f3                                         ; $440a: $fe $f3
	db   $fc                                         ; $440c: $fc
	adc  c                                           ; $440d: $89
	rst  $38                                         ; $440e: $ff
	add  b                                           ; $440f: $80
	ld   a, a                                        ; $4410: $7f
	ld   [bc], a                                     ; $4411: $02

jr_07c_4412:
	rra                                              ; $4412: $1f
	sbc  a                                           ; $4413: $9f
	ld   a, a                                        ; $4414: $7f
	adc  e                                           ; $4415: $8b
	rst  $38                                         ; $4416: $ff
	dec  bc                                          ; $4417: $0b
	pop  af                                          ; $4418: $f1
	rst  $38                                         ; $4419: $ff
	ld   sp, $3f0f                                   ; $441a: $31 $0f $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $441d: $cf
	ret  nz                                          ; $441e: $c0

	jr   nc, jr_07c_4412                             ; $441f: $30 $f1

	inc  c                                           ; $4421: $0c
	dec  a                                           ; $4422: $3d
	ld   [bc], a                                     ; $4423: $02
	add  h                                           ; $4424: $84
	ld   a, [bc]                                     ; $4425: $0a
	ld   bc, wMiniGameTrainingBattleRank                                   ; $4426: $01 $21 $cb
	add  b                                           ; $4429: $80
	ret  z                                           ; $442a: $c8

	inc  b                                           ; $442b: $04
	ld   [$8b0b], sp                                 ; $442c: $08 $0b $8b
	ld   c, b                                        ; $442f: $48
	res  0, c                                        ; $4430: $cb $81
	dec  bc                                          ; $4432: $0b
	add  b                                           ; $4433: $80
	ret  z                                           ; $4434: $c8

	ld   bc, $c0d8                                   ; $4435: $01 $d8 $c0
	add  b                                           ; $4438: $80
	ldh  [rTIMA], a                                  ; $4439: $e0 $05
	jr   jr_07c_4444                                 ; $443b: $18 $07

	rra                                              ; $443d: $1f
	ldh  [rIE], a                                    ; $443e: $e0 $ff
	rra                                              ; $4440: $1f
	add  b                                           ; $4441: $80
	rst  $38                                         ; $4442: $ff
	add  b                                           ; $4443: $80

jr_07c_4444:
	db   $fc                                         ; $4444: $fc
	add  hl, bc                                      ; $4445: $09
	inc  bc                                          ; $4446: $03
	nop                                              ; $4447: $00
	db   $fc                                         ; $4448: $fc
	nop                                              ; $4449: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $444a: $cf
	rrca                                             ; $444b: $0f
	ccf                                              ; $444c: $3f
	ret  nz                                          ; $444d: $c0

	rst  $38                                         ; $444e: $ff
	ccf                                              ; $444f: $3f
	add  b                                           ; $4450: $80
	rst  $38                                         ; $4451: $ff
	add  b                                           ; $4452: $80
	ld   hl, sp+$04                                  ; $4453: $f8 $04
	rlca                                             ; $4455: $07
	nop                                              ; $4456: $00
	ld   sp, hl                                      ; $4457: $f9
	ld   bc, $80ff                                   ; $4458: $01 $ff $80
	ld   hl, sp+$02                                  ; $445b: $f8 $02
	adc  c                                           ; $445d: $89
	db   $eb                                         ; $445e: $eb
	ld   l, d                                        ; $445f: $6a
	add  b                                           ; $4460: $80
	db   $eb                                         ; $4461: $eb
	ld   d, $e8                                      ; $4462: $16 $e8
	ldh  [$1f], a                                    ; $4464: $e0 $1f
	nop                                              ; $4466: $00
	rst  $20                                         ; $4467: $e7
	rlca                                             ; $4468: $07
	rst  $38                                         ; $4469: $ff
	ldh  [$e3], a                                    ; $446a: $e0 $e3
	dec  bc                                          ; $446c: $0b
	ld   c, a                                        ; $446d: $4f
	daa                                              ; $446e: $27
	jr   z, jr_07c_4491                              ; $446f: $28 $20

	ld   l, c                                        ; $4471: $69
	nop                                              ; $4472: $00
	ld   a, [hl]                                     ; $4473: $7e
	nop                                              ; $4474: $00
	sbc  a                                           ; $4475: $9f
	ld   e, $ff                                      ; $4476: $1e $ff
	add  c                                           ; $4478: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4479: $cf
	add  c                                           ; $447a: $81
	cpl                                              ; $447b: $2f
	dec  b                                           ; $447c: $05
	and  e                                           ; $447d: $a3
	jp   $0438                                       ; $447e: $c3 $38 $04


	ret  nz                                          ; $4481: $c0

	inc  bc                                          ; $4482: $03
	add  b                                           ; $4483: $80
	rst  ToBoot                                         ; $4484: $c7
	ld   bc, $00e7                                   ; $4485: $01 $e7 $00
	add  b                                           ; $4488: $80
	pop  bc                                          ; $4489: $c1
	inc  b                                           ; $448a: $04
	jp   c, $dac0                                    ; $448b: $da $c0 $da

	jp   $81e4                                       ; $448e: $c3 $e4 $81


jr_07c_4491:
	rst  $38                                         ; $4491: $ff
	add  b                                           ; $4492: $80
	ccf                                              ; $4493: $3f
	ld   a, [bc]                                     ; $4494: $0a
	rrca                                             ; $4495: $0f
	adc  a                                           ; $4496: $8f
	add  e                                           ; $4497: $83
	di                                               ; $4498: $f3
	ldh  a, [$3c]                                    ; $4499: $f0 $3c
	ld   a, h                                        ; $449b: $7c
	ld   c, a                                        ; $449c: $4f
	adc  a                                           ; $449d: $8f
	inc  bc                                          ; $449e: $03
	ld   h, b                                        ; $449f: $60
	add  a                                           ; $44a0: $87
	db   $eb                                         ; $44a1: $eb
	add  b                                           ; $44a2: $80
	add  sp, $05                                     ; $44a3: $e8 $05
	ld   a, [bc]                                     ; $44a5: $0a
	add  hl, bc                                      ; $44a6: $09
	dec  bc                                          ; $44a7: $0b
	ret  nz                                          ; $44a8: $c0

	inc  a                                           ; $44a9: $3c
	db   $fc                                         ; $44aa: $fc
	add  h                                           ; $44ab: $84
	rst  $38                                         ; $44ac: $ff
	add  b                                           ; $44ad: $80
	ret  nz                                          ; $44ae: $c0

	inc  de                                          ; $44af: $13

jr_07c_44b0:
	jr   nc, jr_07c_44c1                             ; $44b0: $30 $0f

	ccf                                              ; $44b2: $3f
	ret  nz                                          ; $44b3: $c0

	rst  $38                                         ; $44b4: $ff
	ccf                                              ; $44b5: $3f
	rlca                                             ; $44b6: $07
	rst  $20                                         ; $44b7: $e7
	pop  hl                                          ; $44b8: $e1
	add  hl, sp                                      ; $44b9: $39
	ld   hl, sp-$32                                  ; $44ba: $f8 $ce
	adc  [hl]                                        ; $44bc: $8e
	add  e                                           ; $44bd: $83
	ld   h, e                                        ; $44be: $63
	dec  e                                           ; $44bf: $1d
	ld   a, l                                        ; $44c0: $7d

jr_07c_44c1:
	add  c                                           ; $44c1: $81
	db   $fd                                         ; $44c2: $fd
	ld   a, l                                        ; $44c3: $7d
	add  b                                           ; $44c4: $80
	db   $fd                                         ; $44c5: $fd
	nop                                              ; $44c6: $00
	cp   $83                                         ; $44c7: $fe $83
	rst  $38                                         ; $44c9: $ff
	adc  b                                           ; $44ca: $88
	ld   a, a                                        ; $44cb: $7f
	add  d                                           ; $44cc: $82
	rst  $38                                         ; $44cd: $ff
	nop                                              ; $44ce: $00
	cp   $81                                         ; $44cf: $fe $81
	rst  $38                                         ; $44d1: $ff
	inc  b                                           ; $44d2: $04
	or   $ff                                         ; $44d3: $f6 $ff
	di                                               ; $44d5: $f3
	rst  $38                                         ; $44d6: $ff
	ei                                               ; $44d7: $fb
	add  c                                           ; $44d8: $81
	rst  $38                                         ; $44d9: $ff
	ld   [$ff81], sp                                 ; $44da: $08 $81 $ff
	ld   a, l                                        ; $44dd: $7d
	rst  $38                                         ; $44de: $ff
	di                                               ; $44df: $f3
	rst  $38                                         ; $44e0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e1: $cf
	rst  $38                                         ; $44e2: $ff
	ccf                                              ; $44e3: $3f
	add  l                                           ; $44e4: $85
	rst  $38                                         ; $44e5: $ff
	ld   a, [bc]                                     ; $44e6: $0a
	ldh  a, [rP1]                                    ; $44e7: $f0 $00
	rst  $38                                         ; $44e9: $ff
	nop                                              ; $44ea: $00
	di                                               ; $44eb: $f3
	inc  bc                                          ; $44ec: $03
	ld   a, a                                        ; $44ed: $7f
	ld   [hl], b                                     ; $44ee: $70
	ld   hl, sp+$0a                                  ; $44ef: $f8 $0a
	ld   a, [$0a83]                                  ; $44f1: $fa $83 $0a
	inc  b                                           ; $44f4: $04
	call $ce00                                       ; $44f5: $cd $00 $ce
	ld   c, $fe                                      ; $44f8: $0e $fe
	add  b                                           ; $44fa: $80
	ret  nz                                          ; $44fb: $c0

	ld   bc, $d808                                   ; $44fc: $01 $08 $d8
	add  l                                           ; $44ff: $85
	ret  z                                           ; $4500: $c8

	add  hl, bc                                      ; $4501: $09
	ld   sp, hl                                      ; $4502: $f9
	inc  e                                           ; $4503: $1c
	ld   a, a                                        ; $4504: $7f
	inc  bc                                          ; $4505: $03
	nop                                              ; $4506: $00
	inc  c                                           ; $4507: $0c
	inc  a                                           ; $4508: $3c
	inc  sp                                          ; $4509: $33
	ccf                                              ; $450a: $3f
	inc  a                                           ; $450b: $3c
	add  h                                           ; $450c: $84
	ccf                                              ; $450d: $3f
	ld   bc, $0787                                   ; $450e: $01 $87 $07
	add  b                                           ; $4511: $80
	rst  $38                                         ; $4512: $ff
	add  b                                           ; $4513: $80
	ld   a, a                                        ; $4514: $7f
	inc  b                                           ; $4515: $04
	jr   jr_07c_44b0                                 ; $4516: $18 $98

	add  e                                           ; $4518: $83
	ld   h, b                                        ; $4519: $60
	db   $e3                                         ; $451a: $e3
	add  b                                           ; $451b: $80
	sbc  h                                           ; $451c: $9c
	inc  bc                                          ; $451d: $03
	add  e                                           ; $451e: $83
	adc  a                                           ; $451f: $8f
	xor  h                                           ; $4520: $ac
	jp   $eb81                                       ; $4521: $c3 $81 $eb


	add  b                                           ; $4524: $80
	adc  b                                           ; $4525: $88
	inc  bc                                          ; $4526: $03
	ld   c, d                                        ; $4527: $4a
	add  hl, hl                                      ; $4528: $29
	ld   l, e                                        ; $4529: $6b
	ld   [$eb80], sp                                 ; $452a: $08 $80 $eb
	add  b                                           ; $452d: $80
	dec  hl                                          ; $452e: $2b
	add  hl, bc                                      ; $452f: $09
	dec  bc                                          ; $4530: $0b
	jp   $2e8e                                       ; $4531: $c3 $8e $2e


	ld   hl, $2920                                   ; $4534: $21 $20 $29
	ld   h, $2e                                      ; $4537: $26 $2e
	jr   nz, jr_07c_44c1                             ; $4539: $20 $86

	cpl                                              ; $453b: $2f
	nop                                              ; $453c: $00
	sbc  a                                           ; $453d: $9f
	rst  $38                                         ; $453e: $ff
	nop                                              ; $453f: $00
	db   $fc                                         ; $4540: $fc
	nop                                              ; $4541: $00
	rst  $28                                         ; $4542: $ef
	ld   bc, $0086                                   ; $4543: $01 $86 $00
	add  [hl]                                        ; $4546: $86
	rrca                                             ; $4547: $0f
	add  [hl]                                        ; $4548: $86
	nop                                              ; $4549: $00
	add  [hl]                                        ; $454a: $86
	rst  $38                                         ; $454b: $ff
	add  [hl]                                        ; $454c: $86
	nop                                              ; $454d: $00
	nop                                              ; $454e: $00
	rst  $38                                         ; $454f: $ff
	add  b                                           ; $4550: $80
	add  b                                           ; $4551: $80
	add  b                                           ; $4552: $80
	ldh  [$80], a                                    ; $4553: $e0 $80
	ld   hl, sp+$00                                  ; $4555: $f8 $00
	rst  $38                                         ; $4557: $ff
	add  [hl]                                        ; $4558: $86
	nop                                              ; $4559: $00
	ld   bc, $18e7                                   ; $455a: $01 $e7 $18
	add  b                                           ; $455d: $80
	ld   b, $80                                      ; $455e: $06 $80
	ld   bc, $0080                                   ; $4560: $01 $80 $00
	nop                                              ; $4563: $00
	rst  $38                                         ; $4564: $ff
	add  l                                           ; $4565: $85
	nop                                              ; $4566: $00
	ld   bc, $25da                                   ; $4567: $01 $da $25
	add  b                                           ; $456a: $80
	nop                                              ; $456b: $00
	add  b                                           ; $456c: $80
	add  hl, hl                                      ; $456d: $29
	add  b                                           ; $456e: $80
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	rst  $38                                         ; $4571: $ff
	add  l                                           ; $4572: $85
	nop                                              ; $4573: $00
	ld   bc, $55aa                                   ; $4574: $01 $aa $55
	add  b                                           ; $4577: $80
	nop                                              ; $4578: $00
	add  b                                           ; $4579: $80
	ld   d, l                                        ; $457a: $55
	add  b                                           ; $457b: $80
	ld   [bc], a                                     ; $457c: $02
	nop                                              ; $457d: $00
	rst  $38                                         ; $457e: $ff
	add  l                                           ; $457f: $85
	nop                                              ; $4580: $00
	ld   bc, $5fa0                                   ; $4581: $01 $a0 $5f
	add  b                                           ; $4584: $80
	nop                                              ; $4585: $00
	add  b                                           ; $4586: $80
	ld   d, l                                        ; $4587: $55
	add  b                                           ; $4588: $80
	xor  e                                           ; $4589: $ab
	nop                                              ; $458a: $00
	rst  $38                                         ; $458b: $ff
	add  [hl]                                        ; $458c: $86
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	rst  $38                                         ; $458f: $ff
	add  b                                           ; $4590: $80
	nop                                              ; $4591: $00
	add  b                                           ; $4592: $80
	ld   d, a                                        ; $4593: $57
	add  c                                           ; $4594: $81
	rst  $38                                         ; $4595: $ff
	add  [hl]                                        ; $4596: $86
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	rst  $38                                         ; $4599: $ff
	add  b                                           ; $459a: $80
	nop                                              ; $459b: $00
	add  e                                           ; $459c: $83
	rst  $38                                         ; $459d: $ff
	add  l                                           ; $459e: $85
	nop                                              ; $459f: $00
	ld   [$e817], sp                                 ; $45a0: $08 $17 $e8
	rlca                                             ; $45a3: $07
	inc  b                                           ; $45a4: $04
	db   $e4                                         ; $45a5: $e4
	ldh  [$f0], a                                    ; $45a6: $e0 $f0
	ldh  [$e8], a                                    ; $45a8: $e0 $e8
	add  l                                           ; $45aa: $85
	nop                                              ; $45ab: $00
	ld   bc, $5fa0                                   ; $45ac: $01 $a0 $5f
	add  b                                           ; $45af: $80
	add  b                                           ; $45b0: $80
	inc  b                                           ; $45b1: $04
	sbc  a                                           ; $45b2: $9f
	rra                                              ; $45b3: $1f
	ccf                                              ; $45b4: $3f
	rra                                              ; $45b5: $1f
	ld   e, a                                        ; $45b6: $5f
	add  [hl]                                        ; $45b7: $86
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	rst  $38                                         ; $45ba: $ff
	add  b                                           ; $45bb: $80
	nop                                              ; $45bc: $00
	add  b                                           ; $45bd: $80
	push af                                          ; $45be: $f5
	add  c                                           ; $45bf: $81
	rst  $38                                         ; $45c0: $ff
	add  l                                           ; $45c1: $85
	nop                                              ; $45c2: $00
	ld   bc, $f50a                                   ; $45c3: $01 $0a $f5
	add  b                                           ; $45c6: $80
	nop                                              ; $45c7: $00
	add  b                                           ; $45c8: $80
	ld   d, l                                        ; $45c9: $55
	add  b                                           ; $45ca: $80
	ld   [$ff00], a                                  ; $45cb: $ea $00 $ff
	add  l                                           ; $45ce: $85
	nop                                              ; $45cf: $00
	ld   bc, $55aa                                   ; $45d0: $01 $aa $55
	add  b                                           ; $45d3: $80
	nop                                              ; $45d4: $00
	add  b                                           ; $45d5: $80
	ld   d, l                                        ; $45d6: $55
	add  b                                           ; $45d7: $80
	xor  d                                           ; $45d8: $aa
	nop                                              ; $45d9: $00
	rst  $38                                         ; $45da: $ff
	add  l                                           ; $45db: $85
	nop                                              ; $45dc: $00
	ld   bc, $55aa                                   ; $45dd: $01 $aa $55
	add  b                                           ; $45e0: $80
	nop                                              ; $45e1: $00
	add  b                                           ; $45e2: $80
	ld   d, l                                        ; $45e3: $55
	add  b                                           ; $45e4: $80
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	rst  $38                                         ; $45e7: $ff
	add  l                                           ; $45e8: $85
	nop                                              ; $45e9: $00
	ld   bc, $13ec                                   ; $45ea: $01 $ec $13
	add  b                                           ; $45ed: $80
	inc  b                                           ; $45ee: $04
	add  b                                           ; $45ef: $80
	ld   c, b                                        ; $45f0: $48
	add  b                                           ; $45f1: $80
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	ldh  a, [$8d]                                    ; $45f4: $f0 $8d
	rrca                                             ; $45f6: $0f
	sbc  a                                           ; $45f7: $9f
	rst  $38                                         ; $45f8: $ff
	add  b                                           ; $45f9: $80
	ldh  [$80], a                                    ; $45fa: $e0 $80
	db   $fc                                         ; $45fc: $fc
	adc  d                                           ; $45fd: $8a
	rst  $38                                         ; $45fe: $ff
	add  h                                           ; $45ff: $84
	nop                                              ; $4600: $00
	adc  b                                           ; $4601: $88
	ld   a, a                                        ; $4602: $7f
	add  h                                           ; $4603: $84
	nop                                              ; $4604: $00
	add  l                                           ; $4605: $85
	rst  $38                                         ; $4606: $ff
	add  b                                           ; $4607: $80
	cp   $00                                         ; $4608: $fe $00
	rst  $38                                         ; $460a: $ff
	add  e                                           ; $460b: $83
	nop                                              ; $460c: $00
	ld   bc, $ea15                                   ; $460d: $01 $15 $ea
	add  b                                           ; $4610: $80
	db   $f4                                         ; $4611: $f4
	add  b                                           ; $4612: $80
	and  b                                           ; $4613: $a0
	add  b                                           ; $4614: $80
	ld   b, b                                        ; $4615: $40
	add  b                                           ; $4616: $80
	add  b                                           ; $4617: $80
	nop                                              ; $4618: $00
	rst  $38                                         ; $4619: $ff
	add  e                                           ; $461a: $83
	nop                                              ; $461b: $00
	ld   b, $97                                      ; $461c: $06 $97
	ld   c, $76                                      ; $461e: $0e $76
	ld   a, [hl]                                     ; $4620: $7e
	ld   l, [hl]                                     ; $4621: $6e
	ld   d, a                                        ; $4622: $57
	ld   d, l                                        ; $4623: $55
	add  b                                           ; $4624: $80
	ld   e, a                                        ; $4625: $5f
	ld   bc, $8a77                                   ; $4626: $01 $77 $8a
	add  e                                           ; $4629: $83
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	rst  $38                                         ; $462c: $ff
	add  b                                           ; $462d: $80
	ld   b, [hl]                                     ; $462e: $46
	add  b                                           ; $462f: $80
	sbc  h                                           ; $4630: $9c
	dec  b                                           ; $4631: $05
	ld   a, c                                        ; $4632: $79
	ld   a, b                                        ; $4633: $78
	adc  $cf                                         ; $4634: $ce $cf
	ld   hl, sp+$10                                  ; $4636: $f8 $10
	add  e                                           ; $4638: $83
	nop                                              ; $4639: $00
	ld   [bc], a                                     ; $463a: $02
	ld   h, a                                        ; $463b: $67
	jr   nz, jr_07c_4679                             ; $463c: $20 $3b

	add  b                                           ; $463e: $80
	dec  bc                                          ; $463f: $0b
	dec  b                                           ; $4640: $05
	ld   c, e                                        ; $4641: $4b
	call nc, $e8e4                                   ; $4642: $d4 $e4 $e8
	ret  nc                                          ; $4645: $d0

	adc  b                                           ; $4646: $88
	add  e                                           ; $4647: $83
	nop                                              ; $4648: $00
	ld   a, [bc]                                     ; $4649: $0a
	sbc  a                                           ; $464a: $9f
	inc  e                                           ; $464b: $1c
	ld   a, h                                        ; $464c: $7c
	ld   c, h                                        ; $464d: $4c
	ld   b, h                                        ; $464e: $44
	ld   c, [hl]                                     ; $464f: $4e
	xor  [hl]                                        ; $4650: $ae
	adc  [hl]                                        ; $4651: $8e
	ld   e, [hl]                                     ; $4652: $5e
	dec  e                                           ; $4653: $1d
	ld   a, d                                        ; $4654: $7a
	add  e                                           ; $4655: $83
	nop                                              ; $4656: $00
	ld   a, [bc]                                     ; $4657: $0a
	cp   a                                           ; $4658: $bf
	ret                                              ; $4659: $c9


jr_07c_465a:
	jp   hl                                          ; $465a: $e9


	push hl                                          ; $465b: $e5
	sub  l                                           ; $465c: $95
	ld   [hl], d                                     ; $465d: $72
	ld   b, d                                        ; $465e: $42
	ld   a, a                                        ; $465f: $7f
	ld   b, c                                        ; $4660: $41
	ccf                                              ; $4661: $3f
	sbc  $83                                         ; $4662: $de $83
	nop                                              ; $4664: $00
	inc  b                                           ; $4665: $04
	jp   hl                                          ; $4666: $e9


	ld   [hl], b                                     ; $4667: $70
	ld   l, d                                        ; $4668: $6a
	cp   $f2                                         ; $4669: $fe $f2

jr_07c_466b:
	add  b                                           ; $466b: $80
	ldh  [c], a                                      ; $466c: $e2
	add  b                                           ; $466d: $80
	cp   h                                           ; $466e: $bc
	ld   bc, $57a8                                   ; $466f: $01 $a8 $57
	add  e                                           ; $4672: $83
	nop                                              ; $4673: $00
	ld   bc, $bf40                                   ; $4674: $01 $40 $bf
	add  b                                           ; $4677: $80
	rla                                              ; $4678: $17

jr_07c_4679:
	add  b                                           ; $4679: $80
	dec  bc                                          ; $467a: $0b
	add  b                                           ; $467b: $80
	dec  b                                           ; $467c: $05
	add  b                                           ; $467d: $80
	ld   [bc], a                                     ; $467e: $02
	nop                                              ; $467f: $00
	rst  $38                                         ; $4680: $ff
	add  h                                           ; $4681: $84
	nop                                              ; $4682: $00
	adc  b                                           ; $4683: $88
	rst  $38                                         ; $4684: $ff
	add  b                                           ; $4685: $80
	nop                                              ; $4686: $00
	add  b                                           ; $4687: $80
	inc  bc                                          ; $4688: $03
	add  b                                           ; $4689: $80
	rrca                                             ; $468a: $0f
	add  a                                           ; $468b: $87
	rst  $28                                         ; $468c: $ef
	nop                                              ; $468d: $00
	rra                                              ; $468e: $1f
	adc  l                                           ; $468f: $8d
	rrca                                             ; $4690: $0f
	xor  a                                           ; $4691: $af
	rst  $38                                         ; $4692: $ff
	adc  c                                           ; $4693: $89

jr_07c_4694:
	ld   a, a                                        ; $4694: $7f
	add  d                                           ; $4695: $82
	rst  $38                                         ; $4696: $ff
	ld   bc, $fd7d                                   ; $4697: $01 $7d $fd
	add  b                                           ; $469a: $80
	cp   $80                                         ; $469b: $fe $80
	db   $fc                                         ; $469d: $fc
	add  b                                           ; $469e: $80
	ld   a, [$f480]                                  ; $469f: $fa $80 $f4
	add  b                                           ; $46a2: $80
	ld   hl, sp-$80                                  ; $46a3: $f8 $80
	ldh  a, [$80]                                    ; $46a5: $f0 $80
	ldh  [$8e], a                                    ; $46a7: $e0 $8e
	nop                                              ; $46a9: $00
	ld   b, $02                                      ; $46aa: $06 $02
	ld   [hl], $16                                   ; $46ac: $36 $16
	scf                                              ; $46ae: $37
	dec  d                                           ; $46af: $15
	rla                                              ; $46b0: $17
	dec  d                                           ; $46b1: $15
	add  b                                           ; $46b2: $80
	daa                                              ; $46b3: $27
	inc  bc                                          ; $46b4: $03
	cpl                                              ; $46b5: $2f
	dec  l                                           ; $46b6: $2d
	ld   a, a                                        ; $46b7: $7f
	ld   c, a                                        ; $46b8: $4f
	add  b                                           ; $46b9: $80
	add  hl, sp                                      ; $46ba: $39
	ld   bc, $0f3f                                   ; $46bb: $01 $3f $0f
	add  b                                           ; $46be: $80
	inc  bc                                          ; $46bf: $03
	ld   bc, $7cfc                                   ; $46c0: $01 $fc $7c
	add  b                                           ; $46c3: $80
	or   $09                                         ; $46c4: $f6 $09
	or   e                                           ; $46c6: $b3
	ld   [hl], e                                     ; $46c7: $73
	ret  c                                           ; $46c8: $d8

	ld   hl, sp-$54                                  ; $46c9: $f8 $ac
	xor  l                                           ; $46cb: $ad
	add  e                                           ; $46cc: $83
	sub  d                                           ; $46cd: $92
	add  c                                           ; $46ce: $81
	ldh  a, [c]                                      ; $46cf: $f2
	add  b                                           ; $46d0: $80
	call z, Call_07c_4080                            ; $46d1: $cc $80 $40
	ld   bc, $2320                                   ; $46d4: $01 $20 $23
	add  b                                           ; $46d7: $80
	jr   jr_07c_465a                                 ; $46d8: $18 $80

	ret  nz                                          ; $46da: $c0

	add  hl, bc                                      ; $46db: $09
	ld   a, a                                        ; $46dc: $7f
	rst  $20                                         ; $46dd: $e7
	cp   [hl]                                        ; $46de: $be
	ld   b, b                                        ; $46df: $40
	rst  $38                                         ; $46e0: $ff
	xor  c                                           ; $46e1: $a9
	add  hl, sp                                      ; $46e2: $39
	ld   c, c                                        ; $46e3: $49
	ld   [hl], e                                     ; $46e4: $73
	inc  sp                                          ; $46e5: $33
	add  b                                           ; $46e6: $80
	add  $80                                         ; $46e7: $c6 $80
	jr   jr_07c_466b                                 ; $46e9: $18 $80

	ld   h, c                                        ; $46eb: $61
	add  b                                           ; $46ec: $80
	add  [hl]                                        ; $46ed: $86
	add  b                                           ; $46ee: $80
	ld   [hl], b                                     ; $46ef: $70
	inc  bc                                          ; $46f0: $03
	jr   c, jr_07c_4731                              ; $46f1: $38 $3e

	sbc  a                                           ; $46f3: $9f
	sbc  c                                           ; $46f4: $99
	add  b                                           ; $46f5: $80
	ld   b, a                                        ; $46f6: $47
	dec  bc                                          ; $46f7: $0b
	ld   a, a                                        ; $46f8: $7f
	ld   a, [hl]                                     ; $46f9: $7e
	or   a                                           ; $46fa: $b7
	or   h                                           ; $46fb: $b4
	ld   l, a                                        ; $46fc: $6f
	ld   l, e                                        ; $46fd: $6b
	sbc  l                                           ; $46fe: $9d
	sub  l                                           ; $46ff: $95
	dec  a                                           ; $4700: $3d
	dec  l                                           ; $4701: $2d
	reti                                             ; $4702: $d9


	rst  ToBoot                                         ; $4703: $c7
	add  d                                           ; $4704: $82
	xor  b                                           ; $4705: $a8
	add  b                                           ; $4706: $80
	and  b                                           ; $4707: $a0
	inc  bc                                          ; $4708: $03
	db   $f4                                         ; $4709: $f4
	sub  h                                           ; $470a: $94
	db   $fc                                         ; $470b: $fc
	db   $ec                                         ; $470c: $ec
	add  b                                           ; $470d: $80
	db   $f4                                         ; $470e: $f4
	ld   [bc], a                                     ; $470f: $02
	ldh  a, [$b0]                                    ; $4710: $f0 $b0
	jr   nc, jr_07c_4694                             ; $4712: $30 $80

	ld   bc, $008c                                   ; $4714: $01 $8c $00
	add  b                                           ; $4717: $80
	ld   a, a                                        ; $4718: $7f
	add  b                                           ; $4719: $80
	rst  $38                                         ; $471a: $ff
	add  b                                           ; $471b: $80
	ld   e, a                                        ; $471c: $5f
	add  b                                           ; $471d: $80
	ccf                                              ; $471e: $3f
	add  b                                           ; $471f: $80
	ld   e, a                                        ; $4720: $5f
	add  b                                           ; $4721: $80
	cpl                                              ; $4722: $2f
	add  b                                           ; $4723: $80
	rla                                              ; $4724: $17
	add  b                                           ; $4725: $80
	dec  bc                                          ; $4726: $0b
	nop                                              ; $4727: $00
	rst  $38                                         ; $4728: $ff
	add  l                                           ; $4729: $85
	rst  $28                                         ; $472a: $ef
	add  [hl]                                        ; $472b: $86
	rst  $38                                         ; $472c: $ff
	nop                                              ; $472d: $00
	rra                                              ; $472e: $1f
	adc  l                                           ; $472f: $8d
	rrca                                             ; $4730: $0f

jr_07c_4731:
	adc  c                                           ; $4731: $89
	rst  $38                                         ; $4732: $ff
	add  h                                           ; $4733: $84
	cp   $82                                         ; $4734: $fe $82
	rst  $38                                         ; $4736: $ff
	add  h                                           ; $4737: $84
	db   $fc                                         ; $4738: $fc
	add  b                                           ; $4739: $80
	nop                                              ; $473a: $00
	add  b                                           ; $473b: $80
	cp   $01                                         ; $473c: $fe $01
	add  $39                                         ; $473e: $c6 $39
	add  c                                           ; $4740: $81
	nop                                              ; $4741: $00
	dec  b                                           ; $4742: $05
	ldh  a, [rP1]                                    ; $4743: $f0 $00
	inc  c                                           ; $4745: $0c
	nop                                              ; $4746: $00
	ldh  [c], a                                      ; $4747: $e2
	ldh  [$80], a                                    ; $4748: $e0 $80
	ld   hl, sp-$80                                  ; $474a: $f8 $80
	nop                                              ; $474c: $00
	ld   [bc], a                                     ; $474d: $02
	ret  c                                           ; $474e: $d8

	nop                                              ; $474f: $00
	ld   e, c                                        ; $4750: $59
	add  a                                           ; $4751: $87
	rst  $38                                         ; $4752: $ff
	add  b                                           ; $4753: $80
	cp   $82                                         ; $4754: $fe $82
	rst  $38                                         ; $4756: $ff
	ld   bc, $d050                                   ; $4757: $01 $50 $d0
	add  b                                           ; $475a: $80
	and  b                                           ; $475b: $a0
	add  b                                           ; $475c: $80
	ld   b, b                                        ; $475d: $40
	ld   bc, $8081                                   ; $475e: $01 $81 $80
	add  b                                           ; $4761: $80
	ld   b, c                                        ; $4762: $41
	add  b                                           ; $4763: $80
	add  c                                           ; $4764: $81
	add  b                                           ; $4765: $80
	ld   bc, $8180                                   ; $4766: $01 $80 $81
	nop                                              ; $4769: $00
	ld   bc, $0083                                   ; $476a: $01 $83 $00
	ld   [bc], a                                     ; $476d: $02
	ldh  a, [rP1]                                    ; $476e: $f0 $00
	add  b                                           ; $4770: $80
	add  l                                           ; $4771: $85
	ret  nz                                          ; $4772: $c0

	ld   bc, $3786                                   ; $4773: $01 $86 $37
	add  d                                           ; $4776: $82
	rlca                                             ; $4777: $07
	adc  b                                           ; $4778: $88
	ld   bc, $610a                                   ; $4779: $01 $0a $61
	cp   h                                           ; $477c: $bc
	db   $f4                                         ; $477d: $f4
	rst  $38                                         ; $477e: $ff
	ei                                               ; $477f: $fb
	rst  $38                                         ; $4780: $ff
	ld   a, a                                        ; $4781: $7f
	rst  $38                                         ; $4782: $ff
	cp   $ff                                         ; $4783: $fe $ff
	cp   a                                           ; $4785: $bf
	add  c                                           ; $4786: $81
	rst  $38                                         ; $4787: $ff
	add  b                                           ; $4788: $80
	ld   a, a                                        ; $4789: $7f
	inc  l                                           ; $478a: $2c
	ld   bc, $8d7f                                   ; $478b: $01 $7f $8d
	rst  $38                                         ; $478e: $ff
	ld   [hl+], a                                    ; $478f: $22
	rst  $38                                         ; $4790: $ff
	jp   Jump_07c_7fff                               ; $4791: $c3 $ff $7f


	rst  $38                                         ; $4794: $ff
	rst  JumpTable                                         ; $4795: $df
	rst  $38                                         ; $4796: $ff
	jp   hl                                          ; $4797: $e9


	rst  $38                                         ; $4798: $ff
	cp   [hl]                                        ; $4799: $be
	rst  $38                                         ; $479a: $ff
	ld   [$0787], sp                                 ; $479b: $08 $87 $07
	ldh  [$83], a                                    ; $479e: $e0 $83
	rst  $38                                         ; $47a0: $ff
	ld   a, h                                        ; $47a1: $7c
	db   $e3                                         ; $47a2: $e3
	add  e                                           ; $47a3: $83
	rst  $38                                         ; $47a4: $ff
	ld   a, [$f7ff]                                  ; $47a5: $fa $ff $f7
	rst  $38                                         ; $47a8: $ff
	sbc  a                                           ; $47a9: $9f
	rst  $38                                         ; $47aa: $ff
	adc  h                                           ; $47ab: $8c
	ld   de, $7d69                                   ; $47ac: $11 $69 $7d
	sbc  a                                           ; $47af: $9f
	rst  $38                                         ; $47b0: $ff
	ld   a, a                                        ; $47b1: $7f
	rst  $38                                         ; $47b2: $ff
	rst  JumpTable                                         ; $47b3: $df
	rst  $38                                         ; $47b4: $ff
	ld   a, a                                        ; $47b5: $7f
	rst  $38                                         ; $47b6: $ff
	db   $fd                                         ; $47b7: $fd
	add  c                                           ; $47b8: $81
	rst  $38                                         ; $47b9: $ff
	nop                                              ; $47ba: $00
	ld   e, c                                        ; $47bb: $59
	sub  e                                           ; $47bc: $93
	nop                                              ; $47bd: $00
	ld   [bc], a                                     ; $47be: $02
	ld   a, $00                                      ; $47bf: $3e $00
	ld   b, $85                                      ; $47c1: $06 $85
	ld   c, $01                                      ; $47c3: $0e $01
	ld   sp, $8007                                   ; $47c5: $31 $07 $80
	dec  bc                                          ; $47c8: $0b
	add  b                                           ; $47c9: $80
	rlca                                             ; $47ca: $07
	add  b                                           ; $47cb: $80
	inc  bc                                          ; $47cc: $03
	add  b                                           ; $47cd: $80
	dec  b                                           ; $47ce: $05
	add  b                                           ; $47cf: $80
	inc  bc                                          ; $47d0: $03
	add  b                                           ; $47d1: $80
	ld   bc, $0280                                   ; $47d2: $01 $80 $02
	nop                                              ; $47d5: $00
	rst  $28                                         ; $47d6: $ef
	adc  l                                           ; $47d7: $8d
	rst  $38                                         ; $47d8: $ff
	nop                                              ; $47d9: $00
	rra                                              ; $47da: $1f
	adc  l                                           ; $47db: $8d
	rrca                                             ; $47dc: $0f
	nop                                              ; $47dd: $00
	rst  $38                                         ; $47de: $ff
	adc  h                                           ; $47df: $8c
	cp   $01                                         ; $47e0: $fe $01
	ldh  [$5a], a                                    ; $47e2: $e0 $5a
	adc  e                                           ; $47e4: $8b
	jr   c, jr_07c_47e9                              ; $47e5: $38 $02

	add  d                                           ; $47e7: $82
	nop                                              ; $47e8: $00

jr_07c_47e9:
	ret  c                                           ; $47e9: $d8

	add  c                                           ; $47ea: $81
	reti                                             ; $47eb: $d9


	nop                                              ; $47ec: $00
	ld   bc, $d982                                   ; $47ed: $01 $82 $d9
	add  d                                           ; $47f0: $82
	db   $db                                         ; $47f1: $db
	add  b                                           ; $47f2: $80
	ret  nz                                          ; $47f3: $c0

	ld   [bc], a                                     ; $47f4: $02
	nop                                              ; $47f5: $00
	add  b                                           ; $47f6: $80
	rst  $38                                         ; $47f7: $ff
	add  b                                           ; $47f8: $80
	cp   $04                                         ; $47f9: $fe $04
	rst  $38                                         ; $47fb: $ff
	db   $e3                                         ; $47fc: $e3
	xor  $c2                                         ; $47fd: $ee $c2
	ld   d, e                                        ; $47ff: $53
	add  b                                           ; $4800: $80
	inc  de                                          ; $4801: $13
	ld   bc, $0d11                                   ; $4802: $01 $11 $0d
	add  c                                           ; $4805: $81
	nop                                              ; $4806: $00
	ld   bc, $00ff                                   ; $4807: $01 $ff $00
	add  b                                           ; $480a: $80
	add  b                                           ; $480b: $80
	adc  d                                           ; $480c: $8a
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00
	ldh  [$81], a                                    ; $480f: $e0 $81
	nop                                              ; $4811: $00
	nop                                              ; $4812: $00
	and  b                                           ; $4813: $a0
	add  c                                           ; $4814: $81
	nop                                              ; $4815: $00
	add  b                                           ; $4816: $80
	ld   b, b                                        ; $4817: $40
	add  b                                           ; $4818: $80
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	ld   b, b                                        ; $481b: $40
	add  d                                           ; $481c: $82
	nop                                              ; $481d: $00
	adc  l                                           ; $481e: $8d
	ld   bc, $6c01                                   ; $481f: $01 $01 $6c
	ld   a, a                                        ; $4822: $7f
	add  d                                           ; $4823: $82
	ld   a, e                                        ; $4824: $7b
	add  d                                           ; $4825: $82
	dec  sp                                          ; $4826: $3b
	add  c                                           ; $4827: $81
	dec  de                                          ; $4828: $1b
	nop                                              ; $4829: $00
	ld   e, e                                        ; $482a: $5b
	add  b                                           ; $482b: $80
	ld   d, e                                        ; $482c: $53
	ld   bc, rAUDTERM                                   ; $482d: $01 $25 $ff
	adc  b                                           ; $4830: $88
	db   $fd                                         ; $4831: $fd
	add  d                                           ; $4832: $82
	db   $dd                                         ; $4833: $dd
	nop                                              ; $4834: $00
	push hl                                          ; $4835: $e5
	adc  e                                           ; $4836: $8b
	rst  $38                                         ; $4837: $ff
	add  b                                           ; $4838: $80
	rst  $30                                         ; $4839: $f7
	nop                                              ; $483a: $00
	inc  a                                           ; $483b: $3c
	add  l                                           ; $483c: $85
	rst  $38                                         ; $483d: $ff
	add  d                                           ; $483e: $82
	rst  $30                                         ; $483f: $f7
	ld   bc, $f0f6                                   ; $4840: $01 $f6 $f0
	add  b                                           ; $4843: $80
	ld   [hl], b                                     ; $4844: $70
	nop                                              ; $4845: $00
	ld   d, a                                        ; $4846: $57
	adc  l                                           ; $4847: $8d
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	inc  e                                           ; $484a: $1c
	add  c                                           ; $484b: $81
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	inc  d                                           ; $484e: $14
	add  c                                           ; $484f: $81
	nop                                              ; $4850: $00
	add  b                                           ; $4851: $80
	ld   [$0080], sp                                 ; $4852: $08 $80 $00
	nop                                              ; $4855: $00
	ld   [$0081], sp                                 ; $4856: $08 $81 $00
	add  b                                           ; $4859: $80
	ld   bc, $0080                                   ; $485a: $01 $80 $00
	add  b                                           ; $485d: $80
	ld   bc, $0088                                   ; $485e: $01 $88 $00
	ld   bc, $7f6f                                   ; $4861: $01 $6f $7f
	add  b                                           ; $4864: $80
	rst  $38                                         ; $4865: $ff
	add  b                                           ; $4866: $80
	ld   a, a                                        ; $4867: $7f
	add  b                                           ; $4868: $80
	cp   a                                           ; $4869: $bf
	add  b                                           ; $486a: $80
	ld   a, a                                        ; $486b: $7f
	nop                                              ; $486c: $00
	rst  $28                                         ; $486d: $ef
	add  e                                           ; $486e: $83
	rst  $20                                         ; $486f: $e7
	nop                                              ; $4870: $00
	rla                                              ; $4871: $17
	adc  l                                           ; $4872: $8d
	rrca                                             ; $4873: $0f
	nop                                              ; $4874: $00
	rst  $38                                         ; $4875: $ff
	add  b                                           ; $4876: $80
	ldh  [$8c], a                                    ; $4877: $e0 $8c
	ldh  a, [$8d]                                    ; $4879: $f0 $8d
	nop                                              ; $487b: $00
	add  b                                           ; $487c: $80
	cpl                                              ; $487d: $2f
	add  b                                           ; $487e: $80
	dec  l                                           ; $487f: $2d
	add  b                                           ; $4880: $80
	inc  l                                           ; $4881: $2c
	add  b                                           ; $4882: $80
	inc  bc                                          ; $4883: $03
	add  d                                           ; $4884: $82
	cp   a                                           ; $4885: $bf
	add  d                                           ; $4886: $82
	or   a                                           ; $4887: $b7
	ld   bc, $8f8e                                   ; $4888: $01 $8e $8f
	add  b                                           ; $488b: $80
	adc  e                                           ; $488c: $8b
	add  b                                           ; $488d: $80
	dec  bc                                          ; $488e: $0b
	add  b                                           ; $488f: $80
	jp   $cf80                                       ; $4890: $c3 $80 $cf


	add  d                                           ; $4893: $82
	ld   c, e                                        ; $4894: $4b
	add  b                                           ; $4895: $80
	inc  bc                                          ; $4896: $03
	nop                                              ; $4897: $00
	cp   $9e                                         ; $4898: $fe $9e
	nop                                              ; $489a: $00
	adc  l                                           ; $489b: $8d
	ld   bc, $0902                                   ; $489c: $01 $02 $09
	ld   e, d                                        ; $489f: $5a
	ld   d, d                                        ; $48a0: $52
	add  l                                           ; $48a1: $85
	ld   b, [hl]                                     ; $48a2: $46
	rlca                                             ; $48a3: $07
	ld   e, [hl]                                     ; $48a4: $5e
	ld   b, [hl]                                     ; $48a5: $46
	ld   h, $06                                      ; $48a6: $26 $06
	add  [hl]                                        ; $48a8: $86
	inc  b                                           ; $48a9: $04
	xor  c                                           ; $48aa: $a9
	rst  JumpTable                                         ; $48ab: $df
	add  b                                           ; $48ac: $80
	sbc  a                                           ; $48ad: $9f
	add  [hl]                                        ; $48ae: $86
	sbc  e                                           ; $48af: $9b
	add  d                                           ; $48b0: $82
	adc  e                                           ; $48b1: $8b
	ld   bc, $f3eb                                   ; $48b2: $01 $eb $f3
	adc  b                                           ; $48b5: $88
	ldh  a, [c]                                      ; $48b6: $f2
	inc  b                                           ; $48b7: $04
	ld   [hl], d                                     ; $48b8: $72
	ldh  [c], a                                      ; $48b9: $e2
	ld   h, d                                        ; $48ba: $62
	ldh  [c], a                                      ; $48bb: $e2
	add  h                                           ; $48bc: $84
	add  c                                           ; $48bd: $81
	ld   de, $1080                                   ; $48be: $11 $80 $10
	adc  b                                           ; $48c1: $88
	ld   de, $7700                                   ; $48c2: $11 $00 $77
	add  b                                           ; $48c5: $80
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00
	sbc  a                                           ; $48c8: $9f
	add  b                                           ; $48c9: $80
	nop                                              ; $48ca: $00
	ld   b, $bf                                      ; $48cb: $06 $bf
	jr   nz, jr_07c_48f5                             ; $48cd: $20 $26

	jr   nz, jr_07c_48ea                             ; $48cf: $20 $19

	nop                                              ; $48d1: $00
	dec  sp                                          ; $48d2: $3b
	add  c                                           ; $48d3: $81
	ld   [hl+], a                                    ; $48d4: $22
	nop                                              ; $48d5: $00
	ld   h, [hl]                                     ; $48d6: $66
	add  b                                           ; $48d7: $80
	nop                                              ; $48d8: $00
	nop                                              ; $48d9: $00
	rst  $38                                         ; $48da: $ff
	add  b                                           ; $48db: $80
	nop                                              ; $48dc: $00
	ld   b, $ff                                      ; $48dd: $06 $ff
	nop                                              ; $48df: $00
	ld   h, [hl]                                     ; $48e0: $66
	nop                                              ; $48e1: $00
	sbc  c                                           ; $48e2: $99
	nop                                              ; $48e3: $00
	cp   e                                           ; $48e4: $bb
	add  c                                           ; $48e5: $81
	ld   [hl+], a                                    ; $48e6: $22
	nop                                              ; $48e7: $00
	ld   h, [hl]                                     ; $48e8: $66
	add  b                                           ; $48e9: $80

jr_07c_48ea:
	nop                                              ; $48ea: $00
	nop                                              ; $48eb: $00
	rst  $38                                         ; $48ec: $ff
	add  b                                           ; $48ed: $80
	nop                                              ; $48ee: $00
	ld   b, $ff                                      ; $48ef: $06 $ff
	nop                                              ; $48f1: $00
	ld   h, [hl]                                     ; $48f2: $66
	nop                                              ; $48f3: $00
	sbc  c                                           ; $48f4: $99

jr_07c_48f5:
	nop                                              ; $48f5: $00
	cp   e                                           ; $48f6: $bb
	add  c                                           ; $48f7: $81
	ld   [hl+], a                                    ; $48f8: $22
	nop                                              ; $48f9: $00
	sbc  c                                           ; $48fa: $99
	add  d                                           ; $48fb: $82
	daa                                              ; $48fc: $27
	ld   bc, $4707                                   ; $48fd: $01 $07 $47
	add  c                                           ; $4900: $81
	ld   h, a                                        ; $4901: $67
	ld   [bc], a                                     ; $4902: $02
	daa                                              ; $4903: $27
	rlca                                             ; $4904: $07
	ld   b, a                                        ; $4905: $47
	add  c                                           ; $4906: $81
	ld   h, a                                        ; $4907: $67
	nop                                              ; $4908: $00
	rst  $10                                         ; $4909: $d7

jr_07c_490a:
	adc  l                                           ; $490a: $8d
	rrca                                             ; $490b: $0f
	nop                                              ; $490c: $00
	rst  $38                                         ; $490d: $ff
	adc  h                                           ; $490e: $8c
	ldh  a, [$8f]                                    ; $490f: $f0 $8f
	nop                                              ; $4911: $00
	add  b                                           ; $4912: $80
	cp   b                                           ; $4913: $b8
	add  b                                           ; $4914: $80
	rlca                                             ; $4915: $07
	add  b                                           ; $4916: $80
	cp   a                                           ; $4917: $bf

jr_07c_4918:
	add  d                                           ; $4918: $82
	or   a                                           ; $4919: $b7
	add  b                                           ; $491a: $80
	cp   h                                           ; $491b: $bc
	dec  b                                           ; $491c: $05
	and  b                                           ; $491d: $a0
	and  e                                           ; $491e: $a3
	inc  bc                                          ; $491f: $03
	rra                                              ; $4920: $1f
	ret  nc                                          ; $4921: $d0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4922: $cf
	add  b                                           ; $4923: $80
	res  0, b                                        ; $4924: $cb $80
	ld   c, h                                        ; $4926: $4c
	inc  b                                           ; $4927: $04
	ld   b, c                                        ; $4928: $41
	ld   b, e                                        ; $4929: $43
	add  c                                           ; $492a: $81
	adc  a                                           ; $492b: $8f
	inc  c                                           ; $492c: $0c
	add  b                                           ; $492d: $80
	ld   a, b                                        ; $492e: $78
	add  b                                           ; $492f: $80
	ldh  a, [$80]                                    ; $4930: $f0 $80
	rst  $38                                         ; $4932: $ff
	add  e                                           ; $4933: $83
	nop                                              ; $4934: $00
	inc  b                                           ; $4935: $04
	add  b                                           ; $4936: $80
	ld   sp, hl                                      ; $4937: $f9
	adc  c                                           ; $4938: $89
	pop  af                                          ; $4939: $f1
	ld   bc, $0380                                   ; $493a: $01 $80 $03
	add  b                                           ; $493d: $80
	inc  c                                           ; $493e: $0c
	add  b                                           ; $493f: $80
	ldh  a, [$81]                                    ; $4940: $f0 $81
	nop                                              ; $4942: $00
	add  b                                           ; $4943: $80
	ld   bc, $4005                                   ; $4944: $01 $05 $40
	ldh  [hScriptOpcodeParams], a                                    ; $4947: $e0 $a0
	ret  nz                                          ; $4949: $c0

	pop  bc                                          ; $494a: $c1
	ld   bc, $3180                                   ; $494b: $01 $80 $31
	add  b                                           ; $494e: $80
	pop  af                                          ; $494f: $f1
	add  d                                           ; $4950: $82
	nop                                              ; $4951: $00
	add  b                                           ; $4952: $80
	cp   $80                                         ; $4953: $fe $80
	nop                                              ; $4955: $00
	add  b                                           ; $4956: $80
	ld   d, $84                                      ; $4957: $16 $84
	sub  $01                                         ; $4959: $d6 $01
	rla                                              ; $495b: $17
	sub  b                                           ; $495c: $90
	add  b                                           ; $495d: $80
	or   b                                           ; $495e: $b0
	add  b                                           ; $495f: $80
	and  b                                           ; $4960: $a0
	adc  b                                           ; $4961: $88
	add  b                                           ; $4962: $80
	nop                                              ; $4963: $00
	ld   a, c                                        ; $4964: $79
	add  a                                           ; $4965: $87
	adc  e                                           ; $4966: $8b
	nop                                              ; $4967: $00
	adc  b                                           ; $4968: $88
	add  e                                           ; $4969: $83
	adc  e                                           ; $496a: $8b
	nop                                              ; $496b: $00
	jp   hl                                          ; $496c: $e9


	add  b                                           ; $496d: $80
	ldh  [c], a                                      ; $496e: $e2
	add  a                                           ; $496f: $87
	ld   [$ca81], a                                  ; $4970: $ea $81 $ca
	ld   bc, $acea                                   ; $4973: $01 $ea $ac
	add  d                                           ; $4976: $82
	ld   de, $9182                                   ; $4977: $11 $82 $91
	nop                                              ; $497a: $00
	adc  c                                           ; $497b: $89
	add  b                                           ; $497c: $80
	add  c                                           ; $497d: $81
	nop                                              ; $497e: $00
	adc  b                                           ; $497f: $88
	add  b                                           ; $4980: $80
	adc  c                                           ; $4981: $89
	ld   bc, $518b                                   ; $4982: $01 $8b $51
	add  e                                           ; $4985: $83
	ld   [hl+], a                                    ; $4986: $22
	nop                                              ; $4987: $00
	jr   nz, jr_07c_490a                             ; $4988: $20 $80

	inc  hl                                          ; $498a: $23
	ld   bc, $1f3f                                   ; $498b: $01 $3f $1f
	add  b                                           ; $498e: $80
	ccf                                              ; $498f: $3f
	add  b                                           ; $4990: $80
	cp   a                                           ; $4991: $bf
	inc  bc                                          ; $4992: $03
	rst  JumpTable                                         ; $4993: $df
	db   $fd                                         ; $4994: $fd
	ld   [hl+], a                                    ; $4995: $22
	jr   nz, jr_07c_4918                             ; $4996: $20 $80

	daa                                              ; $4998: $27
	ld   bc, $0f3f                                   ; $4999: $01 $3f $0f
	add  c                                           ; $499c: $81
	rst  JumpTable                                         ; $499d: $df
	ld   [$dfd7], sp                                 ; $499e: $08 $d7 $df
	ret                                              ; $49a1: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49a2: $cf
	jp   nz, $e2c3                                   ; $49a3: $c2 $c3 $e2

	ld   [hl+], a                                    ; $49a6: $22
	nop                                              ; $49a7: $00
	adc  c                                           ; $49a8: $89
	rst  $38                                         ; $49a9: $ff
	ld   [bc], a                                     ; $49aa: $02
	ccf                                              ; $49ab: $3f
	rst  $38                                         ; $49ac: $ff
	ccf                                              ; $49ad: $3f
	add  b                                           ; $49ae: $80
	nop                                              ; $49af: $00
	add  b                                           ; $49b0: $80
	add  b                                           ; $49b1: $80
	nop                                              ; $49b2: $00
	ldh  [$83], a                                    ; $49b3: $e0 $83
	ldh  a, [rTMA]                                   ; $49b5: $f0 $06
	di                                               ; $49b7: $f3
	push bc                                          ; $49b8: $c5
	rst  $28                                         ; $49b9: $ef
	adc  b                                           ; $49ba: $88
	rst  JumpTable                                         ; $49bb: $df
	ld   l, [hl]                                     ; $49bc: $6e
	nop                                              ; $49bd: $00
	add  b                                           ; $49be: $80
	rrca                                             ; $49bf: $0f
	add  b                                           ; $49c0: $80
	nop                                              ; $49c1: $00
	add  b                                           ; $49c2: $80
	rrca                                             ; $49c3: $0f
	add  b                                           ; $49c4: $80
	nop                                              ; $49c5: $00
	add  b                                           ; $49c6: $80
	inc  b                                           ; $49c7: $04
	add  d                                           ; $49c8: $82
	dec  b                                           ; $49c9: $05
	ld   bc, $f000                                   ; $49ca: $01 $00 $f0
	add  b                                           ; $49cd: $80
	nop                                              ; $49ce: $00
	add  b                                           ; $49cf: $80
	ldh  a, [$80]                                    ; $49d0: $f0 $80
	add  b                                           ; $49d2: $80
	add  b                                           ; $49d3: $80
	nop                                              ; $49d4: $00
	add  b                                           ; $49d5: $80
	jr   nc, @-$7c                                   ; $49d6: $30 $82

	ldh  a, [$88]                                    ; $49d8: $f0 $88
	nop                                              ; $49da: $00
	add  h                                           ; $49db: $84
	add  b                                           ; $49dc: $80
	sbc  b                                           ; $49dd: $98
	nop                                              ; $49de: $00
	add  h                                           ; $49df: $84
	ld   a, [hl]                                     ; $49e0: $7e
	add  d                                           ; $49e1: $82
	inc  bc                                          ; $49e2: $03
	add  d                                           ; $49e3: $82
	ld   [de], a                                     ; $49e4: $12
	add  b                                           ; $49e5: $80
	inc  de                                          ; $49e6: $13
	add  b                                           ; $49e7: $80
	ld   [de], a                                     ; $49e8: $12
	add  b                                           ; $49e9: $80
	db   $10                                         ; $49ea: $10
	add  b                                           ; $49eb: $80
	nop                                              ; $49ec: $00
	add  d                                           ; $49ed: $82
	pop  hl                                          ; $49ee: $e1
	add  b                                           ; $49ef: $80
	ldh  a, [rTAC]                                   ; $49f0: $f0 $07
	pop  hl                                          ; $49f2: $e1
	ldh  [$86], a                                    ; $49f3: $e0 $86
	add  b                                           ; $49f5: $80
	jr   jr_07c_49f8                                 ; $49f6: $18 $00

jr_07c_49f8:
	jr   nz, jr_07c_49fa                             ; $49f8: $20 $00

jr_07c_49fa:
	add  b                                           ; $49fa: $80
	ccf                                              ; $49fb: $3f
	nop                                              ; $49fc: $00
	jp   hl                                          ; $49fd: $e9


	add  c                                           ; $49fe: $81
	sub  $80                                         ; $49ff: $d6 $80
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	cp   $85                                         ; $4a03: $fe $85
	nop                                              ; $4a05: $00
	add  b                                           ; $4a06: $80
	cp   $01                                         ; $4a07: $fe $01
	pop  de                                          ; $4a09: $d1
	and  b                                           ; $4a0a: $a0
	add  b                                           ; $4a0b: $80
	ret  nz                                          ; $4a0c: $c0

	nop                                              ; $4a0d: $00
	and  b                                           ; $4a0e: $a0
	add  b                                           ; $4a0f: $80
	add  b                                           ; $4a10: $80
	ld   [bc], a                                     ; $4a11: $02
	and  b                                           ; $4a12: $a0
	xor  b                                           ; $4a13: $a8
	and  b                                           ; $4a14: $a0
	add  h                                           ; $4a15: $84
	add  b                                           ; $4a16: $80
	nop                                              ; $4a17: $00
	ld   a, d                                        ; $4a18: $7a
	add  d                                           ; $4a19: $82
	xor  e                                           ; $4a1a: $ab
	add  b                                           ; $4a1b: $80
	and  e                                           ; $4a1c: $a3
	add  d                                           ; $4a1d: $82
	xor  e                                           ; $4a1e: $ab

jr_07c_4a1f:
	nop                                              ; $4a1f: $00
	db   $eb                                         ; $4a20: $eb
	add  b                                           ; $4a21: $80
	rlc  d                                           ; $4a22: $cb $02
	adc  d                                           ; $4a24: $8a
	adc  h                                           ; $4a25: $8c
	xor  a                                           ; $4a26: $af
	add  h                                           ; $4a27: $84
	ld   [$e280], a                                  ; $4a28: $ea $80 $e2
	add  e                                           ; $4a2b: $83
	jp   hl                                          ; $4a2c: $e9


	ld   a, [bc]                                     ; $4a2d: $0a
	ld   h, b                                        ; $4a2e: $60
	jr   nz, jr_07c_4a1f                             ; $4a2f: $20 $ee

	rrca                                             ; $4a31: $0f
	ld   b, $1f                                      ; $4a32: $06 $1f
	inc  e                                           ; $4a34: $1c
	rra                                              ; $4a35: $1f
	dec  c                                           ; $4a36: $0d
	ccf                                              ; $4a37: $3f
	dec  sp                                          ; $4a38: $3b
	add  c                                           ; $4a39: $81
	ccf                                              ; $4a3a: $3f
	ld   [$7f1f], sp                                 ; $4a3b: $08 $1f $7f
	ld   [hl], e                                     ; $4a3e: $73
	ld   a, a                                        ; $4a3f: $7f
	and  a                                           ; $4a40: $a7
	di                                               ; $4a41: $f3
	db   $e3                                         ; $4a42: $e3
	rst  $38                                         ; $4a43: $ff
	ld   a, a                                        ; $4a44: $7f
	add  c                                           ; $4a45: $81
	rst  $38                                         ; $4a46: $ff
	ld   [$ff9f], sp                                 ; $4a47: $08 $9f $ff
	rst  JumpTable                                         ; $4a4a: $df
	rst  $38                                         ; $4a4b: $ff
	xor  a                                           ; $4a4c: $af
	rst  $38                                         ; $4a4d: $ff
	db   $fd                                         ; $4a4e: $fd
	rst  $38                                         ; $4a4f: $ff
	ld   l, l                                        ; $4a50: $6d
	add  b                                           ; $4a51: $80
	nop                                              ; $4a52: $00
	adc  h                                           ; $4a53: $8c
	rst  $38                                         ; $4a54: $ff
	add  b                                           ; $4a55: $80
	ld   [bc], a                                     ; $4a56: $02
	adc  e                                           ; $4a57: $8b
	rst  $38                                         ; $4a58: $ff
	add  hl, bc                                      ; $4a59: $09
	rst  $20                                         ; $4a5a: $e7
	ccf                                              ; $4a5b: $3f
	ld   sp, $bcbf                                   ; $4a5c: $31 $bf $bc
	rst  JumpTable                                         ; $4a5f: $df
	adc  $f6                                         ; $4a60: $ce $f6
	ldh  a, [c]                                      ; $4a62: $f2
	db   $fc                                         ; $4a63: $fc
	add  b                                           ; $4a64: $80
	rst  $38                                         ; $4a65: $ff
	nop                                              ; $4a66: $00
	db   $fc                                         ; $4a67: $fc
	add  c                                           ; $4a68: $81
	rst  $38                                         ; $4a69: $ff
	adc  c                                           ; $4a6a: $89
	ld   bc, $0001                                   ; $4a6b: $01 $01 $00
	rrca                                             ; $4a6e: $0f
	add  b                                           ; $4a6f: $80
	inc  bc                                          ; $4a70: $03
	adc  d                                           ; $4a71: $8a
	rrca                                             ; $4a72: $0f
	inc  bc                                          ; $4a73: $03
	ldh  a, [$80]                                    ; $4a74: $f0 $80
	nop                                              ; $4a76: $00
	add  b                                           ; $4a77: $80
	add  b                                           ; $4a78: $80
	rst  $38                                         ; $4a79: $ff
	add  b                                           ; $4a7a: $80
	nop                                              ; $4a7b: $00
	add  b                                           ; $4a7c: $80
	rst  $38                                         ; $4a7d: $ff
	add  hl, bc                                      ; $4a7e: $09
	ret  nz                                          ; $4a7f: $c0

	ld   a, a                                        ; $4a80: $7f
	ld   e, a                                        ; $4a81: $5f
	sbc  a                                           ; $4a82: $9f
	cp   a                                           ; $4a83: $bf
	ld   a, a                                        ; $4a84: $7f
	cp   a                                           ; $4a85: $bf
	ld   bc, $0100                                   ; $4a86: $01 $00 $01
	add  b                                           ; $4a89: $80
	rst  $38                                         ; $4a8a: $ff
	add  b                                           ; $4a8b: $80
	nop                                              ; $4a8c: $00
	add  b                                           ; $4a8d: $80
	rst  $38                                         ; $4a8e: $ff
	ld   a, [bc]                                     ; $4a8f: $0a
	ld   a, [hl]                                     ; $4a90: $7e
	push de                                          ; $4a91: $d5
	ld   d, a                                        ; $4a92: $57
	dec  hl                                          ; $4a93: $2b
	xor  c                                           ; $4a94: $a9
	push de                                          ; $4a95: $d5
	db   $d3                                         ; $4a96: $d3
	ld   sp, hl                                      ; $4a97: $f9
	and  $67                                         ; $4a98: $e6 $67
	nop                                              ; $4a9a: $00
	add  b                                           ; $4a9b: $80
	rra                                              ; $4a9c: $1f
	dec  d                                           ; $4a9d: $15
	ld   a, a                                        ; $4a9e: $7f
	add  e                                           ; $4a9f: $83
	rst  $38                                         ; $4aa0: $ff
	inc  bc                                          ; $4aa1: $03
	rst  $38                                         ; $4aa2: $ff
	db   $fc                                         ; $4aa3: $fc
	db   $fd                                         ; $4aa4: $fd
	ld   sp, hl                                      ; $4aa5: $f9
	db   $fc                                         ; $4aa6: $fc
	ld   hl, sp-$03                                  ; $4aa7: $f8 $fd
	add  hl, sp                                      ; $4aa9: $39
	db   $fc                                         ; $4aaa: $fc
	inc  h                                           ; $4aab: $24
	add  sp, -$38                                    ; $4aac: $e8 $c8
	ret  nc                                          ; $4aae: $d0

	or   b                                           ; $4aaf: $b0
	ret  nz                                          ; $4ab0: $c0

	sbc  [hl]                                        ; $4ab1: $9e
	ld   bc, $81ff                                   ; $4ab2: $01 $ff $81
	nop                                              ; $4ab5: $00
	ld   [bc], a                                     ; $4ab6: $02
	rst  $38                                         ; $4ab7: $ff
	nop                                              ; $4ab8: $00
	rst  $38                                         ; $4ab9: $ff
	add  [hl]                                        ; $4aba: $86
	nop                                              ; $4abb: $00
	add  b                                           ; $4abc: $80
	rst  $38                                         ; $4abd: $ff
	add  d                                           ; $4abe: $82
	nop                                              ; $4abf: $00
	add  b                                           ; $4ac0: $80
	rst  $38                                         ; $4ac1: $ff
	add  l                                           ; $4ac2: $85
	nop                                              ; $4ac3: $00
	ld   [bc], a                                     ; $4ac4: $02
	ccf                                              ; $4ac5: $3f
	ret  nz                                          ; $4ac6: $c0

	rst  $38                                         ; $4ac7: $ff
	add  c                                           ; $4ac8: $81
	nop                                              ; $4ac9: $00
	ld   de, $01fe                                   ; $4aca: $11 $fe $01
	ld   hl, sp+$01                                  ; $4acd: $f8 $01
	ld   a, [bc]                                     ; $4acf: $0a
	inc  bc                                          ; $4ad0: $03
	inc  d                                           ; $4ad1: $14
	rlca                                             ; $4ad2: $07
	dec  hl                                          ; $4ad3: $2b
	rrca                                             ; $4ad4: $0f
	sbc  a                                           ; $4ad5: $9f
	ld   d, a                                        ; $4ad6: $57
	sbc  a                                           ; $4ad7: $9f
	rra                                              ; $4ad8: $1f
	xor  a                                           ; $4ad9: $af
	ccf                                              ; $4ada: $3f
	ld   h, e                                        ; $4adb: $63
	add  e                                           ; $4adc: $83
	add  b                                           ; $4add: $80
	rst  $38                                         ; $4ade: $ff
	add  b                                           ; $4adf: $80
	adc  e                                           ; $4ae0: $8b
	add  b                                           ; $4ae1: $80
	dec  b                                           ; $4ae2: $05
	inc  bc                                          ; $4ae3: $03
	cp   $ff                                         ; $4ae4: $fe $ff
	ld   b, h                                        ; $4ae6: $44
	ld   b, l                                        ; $4ae7: $45
	add  b                                           ; $4ae8: $80
	adc  e                                           ; $4ae9: $8b
	add  b                                           ; $4aea: $80
	ld   b, l                                        ; $4aeb: $45
	add  b                                           ; $4aec: $80
	db   $f4                                         ; $4aed: $f4
	inc  bc                                          ; $4aee: $03
	dec  sp                                          ; $4aef: $3b
	ei                                               ; $4af0: $fb
	inc  [hl]                                        ; $4af1: $34
	db   $f4                                         ; $4af2: $f4
	add  b                                           ; $4af3: $80
	add  sp, $03                                     ; $4af4: $e8 $03
	rra                                              ; $4af6: $1f
	rst  $38                                         ; $4af7: $ff
	ld   [$80e8], sp                                 ; $4af8: $08 $e8 $80
	db   $f4                                         ; $4afb: $f4
	add  b                                           ; $4afc: $80
	add  sp, -$80                                    ; $4afd: $e8 $80
	rla                                              ; $4aff: $17
	add  b                                           ; $4b00: $80
	rst  $38                                         ; $4b01: $ff
	add  b                                           ; $4b02: $80
	rla                                              ; $4b03: $17
	add  b                                           ; $4b04: $80
	rrca                                             ; $4b05: $0f
	inc  bc                                          ; $4b06: $03
	or   $f7                                         ; $4b07: $f6 $f7
	ld   c, $0f                                      ; $4b09: $0e $0f
	add  b                                           ; $4b0b: $80
	rla                                              ; $4b0c: $17
	add  b                                           ; $4b0d: $80
	rrca                                             ; $4b0e: $0f
	add  b                                           ; $4b0f: $80
	rst  $38                                         ; $4b10: $ff
	ld   [bc], a                                     ; $4b11: $02
	inc  bc                                          ; $4b12: $03
	rst  $38                                         ; $4b13: $ff
	inc  bc                                          ; $4b14: $03
	add  c                                           ; $4b15: $81
	rst  $38                                         ; $4b16: $ff
	ld   [bc], a                                     ; $4b17: $02
	nop                                              ; $4b18: $00
	rst  $38                                         ; $4b19: $ff
	nop                                              ; $4b1a: $00
	add  e                                           ; $4b1b: $83
	rst  $38                                         ; $4b1c: $ff
	add  b                                           ; $4b1d: $80
	ret  nc                                          ; $4b1e: $d0

	add  b                                           ; $4b1f: $80
	rst  $38                                         ; $4b20: $ff
	add  b                                           ; $4b21: $80
	ret  nc                                          ; $4b22: $d0

	add  b                                           ; $4b23: $80
	ldh  [$80], a                                    ; $4b24: $e0 $80
	rst  $38                                         ; $4b26: $ff
	add  b                                           ; $4b27: $80
	ldh  [$80], a                                    ; $4b28: $e0 $80
	push de                                          ; $4b2a: $d5
	add  b                                           ; $4b2b: $80
	ld   [$0080], a                                  ; $4b2c: $ea $80 $00
	add  b                                           ; $4b2f: $80
	cp   $80                                         ; $4b30: $fe $80
	ld   bc, $0280                                   ; $4b32: $01 $80 $02
	add  b                                           ; $4b35: $80
	rst  $38                                         ; $4b36: $ff
	add  b                                           ; $4b37: $80
	ld   [bc], a                                     ; $4b38: $02
	add  b                                           ; $4b39: $80
	ld   d, l                                        ; $4b3a: $55
	add  b                                           ; $4b3b: $80
	xor  d                                           ; $4b3c: $aa
	dec  b                                           ; $4b3d: $05
	ld   c, l                                        ; $4b3e: $4d
	ld   e, a                                        ; $4b3f: $5f
	and  h                                           ; $4b40: $a4
	db   $ec                                         ; $4b41: $ec
	ld   l, h                                        ; $4b42: $6c
	db   $ed                                         ; $4b43: $ed
	add  b                                           ; $4b44: $80
	db   $ec                                         ; $4b45: $ec
	add  hl, bc                                      ; $4b46: $09
	ld   c, b                                        ; $4b47: $48
	db   $ed                                         ; $4b48: $ed
	cp   h                                           ; $4b49: $bc
	db   $fc                                         ; $4b4a: $fc
	cp   d                                           ; $4b4b: $ba
	ei                                               ; $4b4c: $fb
	pop  de                                          ; $4b4d: $d1
	or   d                                           ; $4b4e: $b2
	ld   c, c                                        ; $4b4f: $49
	ld   d, l                                        ; $4b50: $55
	add  b                                           ; $4b51: $80
	xor  d                                           ; $4b52: $aa
	ld   bc, $ff00                                   ; $4b53: $01 $00 $ff
	add  b                                           ; $4b56: $80
	nop                                              ; $4b57: $00
	ld   bc, $55aa                                   ; $4b58: $01 $aa $55
	add  b                                           ; $4b5b: $80
	xor  e                                           ; $4b5c: $ab
	dec  b                                           ; $4b5d: $05
	nop                                              ; $4b5e: $00
	rst  $38                                         ; $4b5f: $ff
	ld   d, l                                        ; $4b60: $55
	xor  d                                           ; $4b61: $aa
	nop                                              ; $4b62: $00
	rrca                                             ; $4b63: $0f
	add  b                                           ; $4b64: $80
	inc  bc                                          ; $4b65: $03
	adc  d                                           ; $4b66: $8a
	rrca                                             ; $4b67: $0f
	ld   a, [bc]                                     ; $4b68: $0a
	db   $10                                         ; $4b69: $10
	sbc  a                                           ; $4b6a: $9f
	add  b                                           ; $4b6b: $80
	rst  $38                                         ; $4b6c: $ff
	ldh  [$9f], a                                    ; $4b6d: $e0 $9f
	xor  a                                           ; $4b6f: $af
	ld   l, a                                        ; $4b70: $6f
	ld   d, a                                        ; $4b71: $57
	sub  a                                           ; $4b72: $97
	add  b                                           ; $4b73: $80
	add  b                                           ; $4b74: $80
	ld   d, l                                        ; $4b75: $55
	add  b                                           ; $4b76: $80
	cp   d                                           ; $4b77: $ba
	dec  bc                                          ; $4b78: $0b
	rst  $38                                         ; $4b79: $ff
	db   $fc                                         ; $4b7a: $fc
	dec  hl                                          ; $4b7b: $2b
	jr   z, @+$01                                    ; $4b7c: $28 $ff

	cp   $29                                         ; $4b7e: $fe $29
	xor  b                                           ; $4b80: $a8
	call nc, $2b55                                   ; $4b81: $d4 $55 $2b
	ld   a, [hl+]                                    ; $4b84: $2a
	add  b                                           ; $4b85: $80
	ld   d, l                                        ; $4b86: $55
	add  b                                           ; $4b87: $80
	xor  $0a                                         ; $4b88: $ee $0a
	rst  $38                                         ; $4b8a: $ff
	rrca                                             ; $4b8b: $0f
	ld   hl, sp+$18                                  ; $4b8c: $f8 $18
	ldh  [rP1], a                                    ; $4b8e: $e0 $00
	rst  $28                                         ; $4b90: $ef
	ldh  a, [$e0]                                    ; $4b91: $f0 $e0
	ld   [hl], b                                     ; $4b93: $70
	ld   a, a                                        ; $4b94: $7f
	add  b                                           ; $4b95: $80
	ccf                                              ; $4b96: $3f
	ld   [bc], a                                     ; $4b97: $02
	dec  b                                           ; $4b98: $05
	rst  $28                                         ; $4b99: $ef
	ld   [$ff80], a                                  ; $4b9a: $ea $80 $ff
	add  d                                           ; $4b9d: $82
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	rst  $38                                         ; $4ba0: $ff
	add  c                                           ; $4ba1: $81
	nop                                              ; $4ba2: $00
	add  c                                           ; $4ba3: $81
	rst  $38                                         ; $4ba4: $ff
	ld   [bc], a                                     ; $4ba5: $02
	ld   d, l                                        ; $4ba6: $55
	rst  $38                                         ; $4ba7: $ff
	xor  d                                           ; $4ba8: $aa
	add  b                                           ; $4ba9: $80
	rst  $38                                         ; $4baa: $ff
	add  d                                           ; $4bab: $82
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	rst  $38                                         ; $4bae: $ff
	add  c                                           ; $4baf: $81
	nop                                              ; $4bb0: $00
	add  c                                           ; $4bb1: $81
	rst  $38                                         ; $4bb2: $ff
	ld   a, [bc]                                     ; $4bb3: $0a
	ld   d, l                                        ; $4bb4: $55
	rst  $38                                         ; $4bb5: $ff
	xor  d                                           ; $4bb6: $aa
	rst  $38                                         ; $4bb7: $ff
	cp   $00                                         ; $4bb8: $fe $00
	ld   [bc], a                                     ; $4bba: $02
	nop                                              ; $4bbb: $00
	inc  b                                           ; $4bbc: $04
	ld   hl, sp+$00                                  ; $4bbd: $f8 $00
	add  b                                           ; $4bbf: $80
	ld   bc, $ff81                                   ; $4bc0: $01 $81 $ff
	ld   [$ff55], sp                                 ; $4bc3: $08 $55 $ff
	xor  d                                           ; $4bc6: $aa
	rst  $38                                         ; $4bc7: $ff
	ld   b, b                                        ; $4bc8: $40
	ld   a, a                                        ; $4bc9: $7f
	jr   c, jr_07c_4bd0                              ; $4bca: $38 $04

	inc  bc                                          ; $4bcc: $03
	add  l                                           ; $4bcd: $85
	rst  $38                                         ; $4bce: $ff
	add  hl, bc                                      ; $4bcf: $09

jr_07c_4bd0:
	ld   d, l                                        ; $4bd0: $55
	rst  $38                                         ; $4bd1: $ff
	xor  d                                           ; $4bd2: $aa
	rst  $38                                         ; $4bd3: $ff
	ld   [hl], h                                     ; $4bd4: $74
	adc  e                                           ; $4bd5: $8b
	cp   $ff                                         ; $4bd6: $fe $ff
	xor  d                                           ; $4bd8: $aa
	xor  e                                           ; $4bd9: $ab
	add  b                                           ; $4bda: $80
	ld   d, l                                        ; $4bdb: $55
	add  b                                           ; $4bdc: $80
	xor  e                                           ; $4bdd: $ab
	add  b                                           ; $4bde: $80
	ld   d, l                                        ; $4bdf: $55
	add  hl, bc                                      ; $4be0: $09
	ld   bc, $aaab                                   ; $4be1: $01 $ab $aa
	rst  $38                                         ; $4be4: $ff
	dec  bc                                          ; $4be5: $0b
	db   $f4                                         ; $4be6: $f4
	rra                                              ; $4be7: $1f
	rst  $38                                         ; $4be8: $ff
	db   $10                                         ; $4be9: $10
	ldh  a, [$80]                                    ; $4bea: $f0 $80
	ld   a, [$f580]                                  ; $4bec: $fa $80 $f5
	add  b                                           ; $4bef: $80
	rst  $38                                         ; $4bf0: $ff
	add  hl, bc                                      ; $4bf1: $09
	ld   d, l                                        ; $4bf2: $55
	rst  $38                                         ; $4bf3: $ff
	xor  d                                           ; $4bf4: $aa
	rst  $38                                         ; $4bf5: $ff
	add  sp, $17                                     ; $4bf6: $e8 $17
	db   $fc                                         ; $4bf8: $fc
	rst  $38                                         ; $4bf9: $ff
	inc  b                                           ; $4bfa: $04
	rlca                                             ; $4bfb: $07
	add  b                                           ; $4bfc: $80
	xor  a                                           ; $4bfd: $af
	add  b                                           ; $4bfe: $80
	ld   d, a                                        ; $4bff: $57
	add  b                                           ; $4c00: $80
	rst  $38                                         ; $4c01: $ff
	ld   [$ff55], sp                                 ; $4c02: $08 $55 $ff
	xor  d                                           ; $4c05: $aa
	rst  $38                                         ; $4c06: $ff
	nop                                              ; $4c07: $00
	rst  $38                                         ; $4c08: $ff
	nop                                              ; $4c09: $00
	rst  $38                                         ; $4c0a: $ff
	nop                                              ; $4c0b: $00
	add  l                                           ; $4c0c: $85
	rst  $38                                         ; $4c0d: $ff
	add  hl, bc                                      ; $4c0e: $09
	ld   d, l                                        ; $4c0f: $55
	rst  $38                                         ; $4c10: $ff
	xor  d                                           ; $4c11: $aa
	rst  $38                                         ; $4c12: $ff
	ld   a, [hl+]                                    ; $4c13: $2a
	push de                                          ; $4c14: $d5
	ccf                                              ; $4c15: $3f
	rst  $38                                         ; $4c16: $ff
	dec  d                                           ; $4c17: $15
	push de                                          ; $4c18: $d5
	add  b                                           ; $4c19: $80
	rst  $38                                         ; $4c1a: $ff
	add  b                                           ; $4c1b: $80
	push de                                          ; $4c1c: $d5
	add  b                                           ; $4c1d: $80
	rst  $38                                         ; $4c1e: $ff
	dec  b                                           ; $4c1f: $05
	ld   d, l                                        ; $4c20: $55
	rst  $38                                         ; $4c21: $ff
	xor  d                                           ; $4c22: $aa
	rst  $38                                         ; $4c23: $ff
	xor  d                                           ; $4c24: $aa
	ld   d, l                                        ; $4c25: $55
	add  b                                           ; $4c26: $80
	rst  $38                                         ; $4c27: $ff
	add  b                                           ; $4c28: $80
	ld   d, l                                        ; $4c29: $55
	add  b                                           ; $4c2a: $80
	rst  $38                                         ; $4c2b: $ff
	add  b                                           ; $4c2c: $80
	ld   d, l                                        ; $4c2d: $55
	add  b                                           ; $4c2e: $80
	rst  $38                                         ; $4c2f: $ff
	dec  b                                           ; $4c30: $05
	ld   d, l                                        ; $4c31: $55
	rst  $38                                         ; $4c32: $ff
	xor  d                                           ; $4c33: $aa
	rst  $38                                         ; $4c34: $ff
	xor  d                                           ; $4c35: $aa
	ld   d, l                                        ; $4c36: $55
	add  b                                           ; $4c37: $80
	rst  $38                                         ; $4c38: $ff
	add  b                                           ; $4c39: $80
	ld   d, l                                        ; $4c3a: $55
	add  b                                           ; $4c3b: $80
	rst  $38                                         ; $4c3c: $ff
	add  b                                           ; $4c3d: $80
	ld   d, l                                        ; $4c3e: $55
	add  b                                           ; $4c3f: $80
	rst  $38                                         ; $4c40: $ff
	dec  b                                           ; $4c41: $05
	ld   d, l                                        ; $4c42: $55
	rst  $38                                         ; $4c43: $ff
	xor  d                                           ; $4c44: $aa
	rst  $38                                         ; $4c45: $ff
	xor  d                                           ; $4c46: $aa
	ld   d, l                                        ; $4c47: $55
	add  b                                           ; $4c48: $80
	rst  $38                                         ; $4c49: $ff
	add  b                                           ; $4c4a: $80
	ld   d, l                                        ; $4c4b: $55
	add  b                                           ; $4c4c: $80
	rst  $38                                         ; $4c4d: $ff
	add  b                                           ; $4c4e: $80
	ld   d, l                                        ; $4c4f: $55
	add  b                                           ; $4c50: $80
	rst  $38                                         ; $4c51: $ff
	ld   [bc], a                                     ; $4c52: $02
	ld   d, l                                        ; $4c53: $55
	rst  $38                                         ; $4c54: $ff
	xor  d                                           ; $4c55: $aa
	add  b                                           ; $4c56: $80
	rst  $38                                         ; $4c57: $ff
	add  l                                           ; $4c58: $85
	nop                                              ; $4c59: $00
	add  d                                           ; $4c5a: $82
	rst  $38                                         ; $4c5b: $ff
	inc  b                                           ; $4c5c: $04
	db   $fc                                         ; $4c5d: $fc
	rst  $38                                         ; $4c5e: $ff
	dec  bc                                          ; $4c5f: $0b
	rst  $30                                         ; $4c60: $f7
	rst  $38                                         ; $4c61: $ff
	add  l                                           ; $4c62: $85
	nop                                              ; $4c63: $00
	inc  bc                                          ; $4c64: $03
	ret  nz                                          ; $4c65: $c0

	rst  $38                                         ; $4c66: $ff
	ccf                                              ; $4c67: $3f
	rst  $38                                         ; $4c68: $ff
	add  b                                           ; $4c69: $80
	ld   hl, sp+$02                                  ; $4c6a: $f8 $02
	ret  nz                                          ; $4c6c: $c0

	rst  ToBoot                                         ; $4c6d: $c7
	ld   hl, sp-$7b                                  ; $4c6e: $f8 $85
	nop                                              ; $4c70: $00
	ld   [bc], a                                     ; $4c71: $02
	rra                                              ; $4c72: $1f
	db   $e3                                         ; $4c73: $e3
	inc  bc                                          ; $4c74: $03
	add  b                                           ; $4c75: $80
	rra                                              ; $4c76: $1f
	add  c                                           ; $4c77: $81
	rst  $38                                         ; $4c78: $ff
	add  [hl]                                        ; $4c79: $86
	nop                                              ; $4c7a: $00
	add  d                                           ; $4c7b: $82
	ldh  a, [$80]                                    ; $4c7c: $f0 $80
	ldh  [$80], a                                    ; $4c7e: $e0 $80
	ldh  a, [rSB]                                    ; $4c80: $f0 $01
	and  a                                           ; $4c82: $a7
	xor  a                                           ; $4c83: $af
	add  b                                           ; $4c84: $80
	ld   e, a                                        ; $4c85: $5f
	add  b                                           ; $4c86: $80
	xor  a                                           ; $4c87: $af
	add  b                                           ; $4c88: $80
	ld   e, a                                        ; $4c89: $5f
	add  b                                           ; $4c8a: $80
	xor  a                                           ; $4c8b: $af
	add  b                                           ; $4c8c: $80
	ld   e, a                                        ; $4c8d: $5f
	add  b                                           ; $4c8e: $80
	xor  a                                           ; $4c8f: $af
	add  b                                           ; $4c90: $80
	ld   c, a                                        ; $4c91: $4f
	ld   bc, $fef6                                   ; $4c92: $01 $f6 $fe
	add  b                                           ; $4c95: $80
	db   $fd                                         ; $4c96: $fd
	add  b                                           ; $4c97: $80

jr_07c_4c98:
	ld   a, [$f580]                                  ; $4c98: $fa $80 $f5
	add  b                                           ; $4c9b: $80
	ld   a, [$f580]                                  ; $4c9c: $fa $80 $f5
	add  b                                           ; $4c9f: $80
	ld   [$d580], a                                  ; $4ca0: $ea $80 $d5
	add  b                                           ; $4ca3: $80
	xor  d                                           ; $4ca4: $aa
	add  b                                           ; $4ca5: $80
	ld   d, h                                        ; $4ca6: $54
	add  b                                           ; $4ca7: $80
	xor  b                                           ; $4ca8: $a8
	add  b                                           ; $4ca9: $80
	ld   d, b                                        ; $4caa: $50
	add  b                                           ; $4cab: $80
	and  b                                           ; $4cac: $a0
	add  b                                           ; $4cad: $80
	ld   b, b                                        ; $4cae: $40
	add  b                                           ; $4caf: $80
	add  b                                           ; $4cb0: $80
	sub  b                                           ; $4cb1: $90
	nop                                              ; $4cb2: $00
	dec  b                                           ; $4cb3: $05
	dec  hl                                          ; $4cb4: $2b
	rst  $10                                         ; $4cb5: $d7
	ld   e, l                                        ; $4cb6: $5d
	cp   $5d                                         ; $4cb7: $fe $5d
	db   $fd                                         ; $4cb9: $fd
	add  b                                           ; $4cba: $80
	rlca                                             ; $4cbb: $07
	add  [hl]                                        ; $4cbc: $86
	nop                                              ; $4cbd: $00
	ld   bc, $dfff                                   ; $4cbe: $01 $ff $df
	add  b                                           ; $4cc1: $80
	res  0, b                                        ; $4cc2: $cb $80
	ld   d, l                                        ; $4cc4: $55
	add  b                                           ; $4cc5: $80
	jp   z, Jump_07c_5580                            ; $4cc6: $ca $80 $55

	add  b                                           ; $4cc9: $80
	rrca                                             ; $4cca: $0f

jr_07c_4ccb:
	add  b                                           ; $4ccb: $80
	ld   bc, $0080                                   ; $4ccc: $01 $80 $00
	ld   bc, $c7ff                                   ; $4ccf: $01 $ff $c7
	add  b                                           ; $4cd2: $80
	add  a                                           ; $4cd3: $87
	add  b                                           ; $4cd4: $80
	ld   b, a                                        ; $4cd5: $47
	add  b                                           ; $4cd6: $80
	add  a                                           ; $4cd7: $87
	add  b                                           ; $4cd8: $80
	ld   b, a                                        ; $4cd9: $47
	add  b                                           ; $4cda: $80
	rst  ToBoot                                         ; $4cdb: $c7
	add  b                                           ; $4cdc: $80
	ld   b, a                                        ; $4cdd: $47
	add  b                                           ; $4cde: $80
	rlca                                             ; $4cdf: $07
	nop                                              ; $4ce0: $00
	rst  ToBoot                                         ; $4ce1: $c7
	adc  l                                           ; $4ce2: $8d
	ldh  a, [$08]                                    ; $4ce3: $f0 $08
	or   b                                           ; $4ce5: $b0
	rst  $38                                         ; $4ce6: $ff
	ei                                               ; $4ce7: $fb
	rst  $38                                         ; $4ce8: $ff
	sub  b                                           ; $4ce9: $90
	rst  $30                                         ; $4cea: $f7
	inc  d                                           ; $4ceb: $14
	rla                                              ; $4cec: $17
	or   d                                           ; $4ced: $b2
	add  c                                           ; $4cee: $81
	or   $04                                         ; $4cef: $f6 $04
	and  l                                           ; $4cf1: $a5
	rst  $20                                         ; $4cf2: $e7
	ld   b, [hl]                                     ; $4cf3: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf4: $cf
	ld   h, b                                        ; $4cf5: $60
	add  l                                           ; $4cf6: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf7: $cf
	inc  bc                                          ; $4cf8: $03
	ld   e, a                                        ; $4cf9: $5f
	nop                                              ; $4cfa: $00
	ld   a, a                                        ; $4cfb: $7f
	nop                                              ; $4cfc: $00
	add  b                                           ; $4cfd: $80
	rst  $38                                         ; $4cfe: $ff
	ld   b, $00                                      ; $4cff: $06 $00
	rst  $38                                         ; $4d01: $ff
	jr   nz, jr_07c_4ccb                             ; $4d02: $20 $c7

	add  $c7                                         ; $4d04: $c6 $c7
	add  $81                                         ; $4d06: $c6 $81
	rst  ToBoot                                         ; $4d08: $c7
	inc  bc                                          ; $4d09: $03
	rst  $20                                         ; $4d0a: $e7
	nop                                              ; $4d0b: $00
	rst  $38                                         ; $4d0c: $ff
	nop                                              ; $4d0d: $00
	add  b                                           ; $4d0e: $80
	rst  $38                                         ; $4d0f: $ff
	inc  b                                           ; $4d10: $04
	nop                                              ; $4d11: $00
	rst  $38                                         ; $4d12: $ff
	jr   nz, @-$0e                                   ; $4d13: $20 $f0

	jr   nc, jr_07c_4c98                             ; $4d15: $30 $81

	ldh  a, [rSC]                                    ; $4d17: $f0 $02
	ld   [hl], b                                     ; $4d19: $70
	ldh  a, [$60]                                    ; $4d1a: $f0 $60
	add  b                                           ; $4d1c: $80
	ldh  a, [rP1]                                    ; $4d1d: $f0 $00
	nop                                              ; $4d1f: $00
	add  b                                           ; $4d20: $80
	ldh  a, [rTMA]                                   ; $4d21: $f0 $06
	nop                                              ; $4d23: $00
	ldh  a, [$09]                                    ; $4d24: $f0 $09
	or   $f0                                         ; $4d26: $f6 $f0
	pop  af                                          ; $4d28: $f1
	add  hl, bc                                      ; $4d29: $09
	adc  c                                           ; $4d2a: $89
	rst  $38                                         ; $4d2b: $ff
	nop                                              ; $4d2c: $00
	rst  $30                                         ; $4d2d: $f7
	add  b                                           ; $4d2e: $80
	ccf                                              ; $4d2f: $3f
	sbc  e                                           ; $4d30: $9b
	rst  $38                                         ; $4d31: $ff
	add  b                                           ; $4d32: $80
	ldh  [$80], a                                    ; $4d33: $e0 $80
	ret  nc                                          ; $4d35: $d0

	add  b                                           ; $4d36: $80
	ldh  [$80], a                                    ; $4d37: $e0 $80
	ret  nc                                          ; $4d39: $d0

	add  b                                           ; $4d3a: $80
	and  b                                           ; $4d3b: $a0
	add  b                                           ; $4d3c: $80
	ret  nc                                          ; $4d3d: $d0

	add  b                                           ; $4d3e: $80
	and  b                                           ; $4d3f: $a0
	add  b                                           ; $4d40: $80
	ld   d, b                                        ; $4d41: $50
	ld   bc, $8f87                                   ; $4d42: $01 $87 $8f
	add  h                                           ; $4d45: $84
	rrca                                             ; $4d46: $0f
	inc  bc                                          ; $4d47: $03
	and  c                                           ; $4d48: $a1
	ld   d, a                                        ; $4d49: $57
	xor  d                                           ; $4d4a: $aa
	xor  e                                           ; $4d4b: $ab
	add  b                                           ; $4d4c: $80
	ld   d, a                                        ; $4d4d: $57
	add  b                                           ; $4d4e: $80
	xor  e                                           ; $4d4f: $ab
	ld   bc, $aa55                                   ; $4d50: $01 $55 $aa
	add  b                                           ; $4d53: $80
	call nc, $aa80                                   ; $4d54: $d4 $80 $aa
	add  b                                           ; $4d57: $80
	call nc, $ea80                                   ; $4d58: $d4 $80 $ea
	ld   [bc], a                                     ; $4d5b: $02
	dec  c                                           ; $4d5c: $0d
	db   $fd                                         ; $4d5d: $fd
	ldh  a, [$82]                                    ; $4d5e: $f0 $82
	rst  $38                                         ; $4d60: $ff
	adc  c                                           ; $4d61: $89
	nop                                              ; $4d62: $00
	inc  b                                           ; $4d63: $04
	ld   h, b                                        ; $4d64: $60
	ldh  [$81], a                                    ; $4d65: $e0 $81
	rst  $38                                         ; $4d67: $ff

jr_07c_4d68:
	cp   $8b                                         ; $4d68: $fe $8b
	nop                                              ; $4d6a: $00
	add  b                                           ; $4d6b: $80
	add  b                                           ; $4d6c: $80
	ld   bc, $00ff                                   ; $4d6d: $01 $ff $00
	add  b                                           ; $4d70: $80
	ret  nz                                          ; $4d71: $c0

jr_07c_4d72:
	add  b                                           ; $4d72: $80
	ldh  [$80], a                                    ; $4d73: $e0 $80
	ld   a, b                                        ; $4d75: $78
	add  b                                           ; $4d76: $80
	ld   e, $80                                      ; $4d77: $1e $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d79: $cf
	add  hl, bc                                      ; $4d7a: $09
	inc  sp                                          ; $4d7b: $33
	di                                               ; $4d7c: $f3
	sbc  c                                           ; $4d7d: $99
	ld   sp, hl                                      ; $4d7e: $f9
	add  b                                           ; $4d7f: $80
	nop                                              ; $4d80: $00
	rra                                              ; $4d81: $1f
	nop                                              ; $4d82: $00
	rra                                              ; $4d83: $1f
	nop                                              ; $4d84: $00
	add  b                                           ; $4d85: $80
	ld   [$0080], sp                                 ; $4d86: $08 $80 $00
	add  b                                           ; $4d89: $80
	add  b                                           ; $4d8a: $80
	ld   a, [bc]                                     ; $4d8b: $0a
	rst  JumpTable                                         ; $4d8c: $df
	ret  nz                                          ; $4d8d: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8e: $cf
	ret  nz                                          ; $4d8f: $c0

	cpl                                              ; $4d90: $2f
	rlca                                             ; $4d91: $07
	rst  $20                                         ; $4d92: $e7
	nop                                              ; $4d93: $00
	rst  $20                                         ; $4d94: $e7
	jr   jr_07c_4def                                 ; $4d95: $18 $58

	add  c                                           ; $4d97: $81
	ld   b, b                                        ; $4d98: $40
	add  b                                           ; $4d99: $80

jr_07c_4d9a:
	nop                                              ; $4d9a: $00
	ld   b, $e7                                      ; $4d9b: $06 $e7
	nop                                              ; $4d9d: $00
	rst  $38                                         ; $4d9e: $ff
	nop                                              ; $4d9f: $00
	rst  JumpTable                                         ; $4da0: $df
	ldh  a, [$30]                                    ; $4da1: $f0 $30
	add  b                                           ; $4da3: $80
	ldh  a, [$85]                                    ; $4da4: $f0 $85
	jr   nc, jr_07c_4dc1                             ; $4da6: $30 $19

	jr   nz, jr_07c_4d9a                             ; $4da8: $20 $f0

	ldh  [$30], a                                    ; $4daa: $e0 $30
	cpl                                              ; $4dac: $2f
	rst  $38                                         ; $4dad: $ff

jr_07c_4dae:
	adc  b                                           ; $4dae: $88
	rst  $38                                         ; $4daf: $ff
	jr   c, jr_07c_4d72                              ; $4db0: $38 $c0

	rst  $30                                         ; $4db2: $f7
	add  a                                           ; $4db3: $87
	ret  nz                                          ; $4db4: $c0

	rst  ToBoot                                         ; $4db5: $c7
	ld   [hl], a                                     ; $4db6: $77
	rst  $38                                         ; $4db7: $ff
	dec  h                                           ; $4db8: $25
	rst  $38                                         ; $4db9: $ff
	xor  d                                           ; $4dba: $aa
	rst  $38                                         ; $4dbb: $ff
	ldh  [rIE], a                                    ; $4dbc: $e0 $ff
	ld   d, d                                        ; $4dbe: $52
	adc  a                                           ; $4dbf: $8f
	ret  nc                                          ; $4dc0: $d0

jr_07c_4dc1:
	rra                                              ; $4dc1: $1f
	add  b                                           ; $4dc2: $80
	ld   e, $1f                                      ; $4dc3: $1e $1f
	rst  $28                                         ; $4dc5: $ef
	cp   $1d                                         ; $4dc6: $fe $1d
	rst  $38                                         ; $4dc8: $ff
	ld   d, h                                        ; $4dc9: $54
	rst  $38                                         ; $4dca: $ff
	xor  d                                           ; $4dcb: $aa
	rst  $38                                         ; $4dcc: $ff

jr_07c_4dcd:
	nop                                              ; $4dcd: $00
	rst  $38                                         ; $4dce: $ff
	nop                                              ; $4dcf: $00
	rst  $38                                         ; $4dd0: $ff
	and  e                                           ; $4dd1: $a3
	ccf                                              ; $4dd2: $3f
	ld   bc, $841e                                   ; $4dd3: $01 $1e $84
	inc  b                                           ; $4dd6: $04
	ld   h, e                                        ; $4dd7: $63
	ld   a, b                                        ; $4dd8: $78
	or   [hl]                                        ; $4dd9: $b6
	cp   $af                                         ; $4dda: $fe $af
	rst  $38                                         ; $4ddc: $ff
	rrca                                             ; $4ddd: $0f
	ldh  a, [rP1]                                    ; $4dde: $f0 $00
	ldh  a, [$80]                                    ; $4de0: $f0 $80
	ldh  a, [$30]                                    ; $4de2: $f0 $30
	ld   [hl], b                                     ; $4de4: $70
	add  b                                           ; $4de5: $80
	jr   nc, jr_07c_4d68                             ; $4de6: $30 $80

	ld   [hl], b                                     ; $4de8: $70
	inc  b                                           ; $4de9: $04
	sub  b                                           ; $4dea: $90
	ldh  a, [hScriptOpcodeParams]                                    ; $4deb: $f0 $a0
	ldh  a, [rTAC]                                   ; $4ded: $f0 $07

jr_07c_4def:
	adc  l                                           ; $4def: $8d
	rst  $38                                         ; $4df0: $ff
	nop                                              ; $4df1: $00
	rst  $30                                         ; $4df2: $f7
	adc  l                                           ; $4df3: $8d
	rst  $38                                         ; $4df4: $ff
	add  b                                           ; $4df5: $80
	cp   $80                                         ; $4df6: $fe $80
	db   $fd                                         ; $4df8: $fd
	add  b                                           ; $4df9: $80
	ld   a, [$f580]                                  ; $4dfa: $fa $80 $f5
	add  b                                           ; $4dfd: $80
	ld   [$d580], a                                  ; $4dfe: $ea $80 $d5
	add  b                                           ; $4e01: $80
	xor  d                                           ; $4e02: $aa
	add  b                                           ; $4e03: $80
	ld   d, h                                        ; $4e04: $54
	add  b                                           ; $4e05: $80
	and  b                                           ; $4e06: $a0
	add  b                                           ; $4e07: $80
	ld   b, b                                        ; $4e08: $40
	add  b                                           ; $4e09: $80
	and  b                                           ; $4e0a: $a0
	add  b                                           ; $4e0b: $80
	ld   b, b                                        ; $4e0c: $40
	add  b                                           ; $4e0d: $80
	add  b                                           ; $4e0e: $80
	add  h                                           ; $4e0f: $84
	nop                                              ; $4e10: $00
	db   $10                                         ; $4e11: $10
	xor  c                                           ; $4e12: $a9
	ld   d, l                                        ; $4e13: $55
	xor  l                                           ; $4e14: $ad
	xor  a                                           ; $4e15: $af
	ld   e, h                                        ; $4e16: $5c
	ld   e, c                                        ; $4e17: $59
	xor  b                                           ; $4e18: $a8
	xor  [hl]                                        ; $4e19: $ae
	ld   e, [hl]                                     ; $4e1a: $5e
	ld   c, [hl]                                     ; $4e1b: $4e
	cp   [hl]                                        ; $4e1c: $be
	xor  [hl]                                        ; $4e1d: $ae
	ld   e, e                                        ; $4e1e: $5b
	ld   e, l                                        ; $4e1f: $5d
	xor  d                                           ; $4e20: $aa

jr_07c_4e21:
	xor  a                                           ; $4e21: $af
	cp   $80                                         ; $4e22: $fe $80
	rst  $38                                         ; $4e24: $ff
	nop                                              ; $4e25: $00
	ld   a, a                                        ; $4e26: $7f
	add  b                                           ; $4e27: $80
	ccf                                              ; $4e28: $3f
	ld   [bc], a                                     ; $4e29: $02
	cpl                                              ; $4e2a: $2f
	ccf                                              ; $4e2b: $3f
	jr   c, jr_07c_4dae                              ; $4e2c: $38 $80

	ccf                                              ; $4e2e: $3f
	inc  bc                                          ; $4e2f: $03
	jr   c, jr_07c_4e41                              ; $4e30: $38 $0f

	ccf                                              ; $4e32: $3f
	ld   e, a                                        ; $4e33: $5f
	add  b                                           ; $4e34: $80
	ld   a, a                                        ; $4e35: $7f
	add  c                                           ; $4e36: $81
	rst  $38                                         ; $4e37: $ff
	nop                                              ; $4e38: $00
	rst  JumpTable                                         ; $4e39: $df
	add  c                                           ; $4e3a: $81
	rst  ToBoot                                         ; $4e3b: $c7
	nop                                              ; $4e3c: $00
	ld   b, h                                        ; $4e3d: $44
	add  b                                           ; $4e3e: $80
	rst  ToBoot                                         ; $4e3f: $c7
	nop                                              ; $4e40: $00

jr_07c_4e41:
	ld   b, h                                        ; $4e41: $44
	add  d                                           ; $4e42: $82
	rst  ToBoot                                         ; $4e43: $c7
	nop                                              ; $4e44: $00
	rst  $20                                         ; $4e45: $e7
	add  e                                           ; $4e46: $83
	ldh  a, [rSC]                                    ; $4e47: $f0 $02
	ldh  [$f0], a                                    ; $4e49: $e0 $f0
	jr   nc, jr_07c_4dcd                             ; $4e4b: $30 $80

	ldh  a, [rTMA]                                   ; $4e4d: $f0 $06
	jr   nc, jr_07c_4e21                             ; $4e4f: $30 $d0

	ldh  a, [$c0]                                    ; $4e51: $f0 $c0
	ldh  a, [$f2]                                    ; $4e53: $f0 $f2
	ld   [bc], a                                     ; $4e55: $02
	add  b                                           ; $4e56: $80
	ld   bc, $0310                                   ; $4e57: $01 $10 $03
	nop                                              ; $4e5a: $00
	db   $fc                                         ; $4e5b: $fc
	jp   $1fc0                                       ; $4e5c: $c3 $c0 $1f


	nop                                              ; $4e5f: $00
	rst  $38                                         ; $4e60: $ff
	inc  bc                                          ; $4e61: $03
	rst  $38                                         ; $4e62: $ff
	rra                                              ; $4e63: $1f
	rst  $38                                         ; $4e64: $ff
	ld   hl, sp-$39                                  ; $4e65: $f8 $c7
	ld   b, b                                        ; $4e67: $40
	ld   a, b                                        ; $4e68: $78
	ld   sp, hl                                      ; $4e69: $f9
	add  b                                           ; $4e6a: $80
	rrca                                             ; $4e6b: $0f
	inc  bc                                          ; $4e6c: $03
	rst  $28                                         ; $4e6d: $ef
	cpl                                              ; $4e6e: $2f
	rst  $28                                         ; $4e6f: $ef
	ld   l, a                                        ; $4e70: $6f
	add  c                                           ; $4e71: $81
	rst  $28                                         ; $4e72: $ef
	add  b                                           ; $4e73: $80
	rst  $20                                         ; $4e74: $e7
	nop                                              ; $4e75: $00
	xor  [hl]                                        ; $4e76: $ae
	adc  l                                           ; $4e77: $8d
	rst  $38                                         ; $4e78: $ff
	ld   bc, $efbe                                   ; $4e79: $01 $be $ef
	add  b                                           ; $4e7c: $80
	rst  $20                                         ; $4e7d: $e7
	add  b                                           ; $4e7e: $80
	db   $eb                                         ; $4e7f: $eb
	add  b                                           ; $4e80: $80
	push hl                                          ; $4e81: $e5
	add  b                                           ; $4e82: $80
	db   $eb                                         ; $4e83: $eb
	add  b                                           ; $4e84: $80
	push hl                                          ; $4e85: $e5
	add  b                                           ; $4e86: $80
	db   $e3                                         ; $4e87: $e3
	add  b                                           ; $4e88: $80
	pop  hl                                          ; $4e89: $e1
	nop                                              ; $4e8a: $00
	xor  [hl]                                        ; $4e8b: $ae
	adc  l                                           ; $4e8c: $8d
	rst  $38                                         ; $4e8d: $ff
	ld   bc, $e3b2                                   ; $4e8e: $01 $b2 $e3
	adc  h                                           ; $4e91: $8c
	pop  hl                                          ; $4e92: $e1
	nop                                              ; $4e93: $00
	xor  [hl]                                        ; $4e94: $ae
	add  l                                           ; $4e95: $85
	rst  $38                                         ; $4e96: $ff
	add  b                                           ; $4e97: $80
	cp   $06                                         ; $4e98: $fe $06
	ld   sp, hl                                      ; $4e9a: $f9
	ld   hl, sp-$0a                                  ; $4e9b: $f8 $f6
	pop  af                                          ; $4e9d: $f1
	jp   hl                                          ; $4e9e: $e9


	rst  $20                                         ; $4e9f: $e7
	cp   c                                           ; $4ea0: $b9
	add  c                                           ; $4ea1: $81
	pop  hl                                          ; $4ea2: $e1
	ld   [$efe0], sp                                 ; $4ea3: $08 $e0 $ef
	rst  JumpTable                                         ; $4ea6: $df
	ret  z                                           ; $4ea7: $c8

	ld   [hl], a                                     ; $4ea8: $77
	rrca                                             ; $4ea9: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eaa: $cf
	jr   nz, jr_07c_4f1b                             ; $4eab: $20 $6e

	add  c                                           ; $4ead: $81
	db   $ec                                         ; $4eae: $ec
	ld   [bc], a                                     ; $4eaf: $02
	add  d                                           ; $4eb0: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eb1: $cf
	rst  $28                                         ; $4eb2: $ef
	add  b                                           ; $4eb3: $80
	rst  JumpTable                                         ; $4eb4: $df
	inc  bc                                          ; $4eb5: $03
	cp   a                                           ; $4eb6: $bf
	ccf                                              ; $4eb7: $3f
	cp   a                                           ; $4eb8: $bf
	ccf                                              ; $4eb9: $3f
	add  d                                           ; $4eba: $82
	ld   a, a                                        ; $4ebb: $7f
	add  c                                           ; $4ebc: $81
	rst  $38                                         ; $4ebd: $ff
	nop                                              ; $4ebe: $00
	or   b                                           ; $4ebf: $b0
	add  c                                           ; $4ec0: $81
	xor  $00                                         ; $4ec1: $ee $00
	rst  $28                                         ; $4ec3: $ef
	add  c                                           ; $4ec4: $81
	xor  $80                                         ; $4ec5: $ee $80
	and  $01                                         ; $4ec7: $e6 $01
	ld   [$80eb], a                                  ; $4ec9: $ea $eb $80
	rst  $30                                         ; $4ecc: $f7
	add  b                                           ; $4ecd: $80
	db   $eb                                         ; $4ece: $eb
	nop                                              ; $4ecf: $00
	and  c                                           ; $4ed0: $a1
	adc  e                                           ; $4ed1: $8b
	rst  $38                                         ; $4ed2: $ff
	inc  bc                                          ; $4ed3: $03
	add  b                                           ; $4ed4: $80
	ld   a, a                                        ; $4ed5: $7f
	ld   d, l                                        ; $4ed6: $55
	rst  $30                                         ; $4ed7: $f7
	add  b                                           ; $4ed8: $80
	xor  $80                                         ; $4ed9: $ee $80
	or   $01                                         ; $4edb: $f6 $01
	add  sp, -$12                                    ; $4edd: $e8 $ee
	add  h                                           ; $4edf: $84
	cp   $02                                         ; $4ee0: $fe $02
	ld   d, c                                        ; $4ee2: $51
	db   $fd                                         ; $4ee3: $fd
	ld   [$0081], sp                                 ; $4ee4: $08 $81 $00
	ld   b, $fc                                      ; $4ee7: $06 $fc
	add  e                                           ; $4ee9: $83
	add  b                                           ; $4eea: $80
	cp   a                                           ; $4eeb: $bf
	and  b                                           ; $4eec: $a0
	cp   a                                           ; $4eed: $bf
	or   b                                           ; $4eee: $b0
	add  b                                           ; $4eef: $80
	cp   a                                           ; $4ef0: $bf
	add  c                                           ; $4ef1: $81
	cp   b                                           ; $4ef2: $b8
	nop                                              ; $4ef3: $00
	ld   d, a                                        ; $4ef4: $57
	add  c                                           ; $4ef5: $81
	nop                                              ; $4ef6: $00
	add  b                                           ; $4ef7: $80
	cp   $06                                         ; $4ef8: $fe $06
	ld   [bc], a                                     ; $4efa: $02
	cp   $86                                         ; $4efb: $fe $86
	cp   $3e                                         ; $4efd: $fe $3e
	adc  $8e                                         ; $4eff: $ce $8e
	add  c                                           ; $4f01: $81
	ld   c, $00                                      ; $4f02: $0e $00
	dec  de                                          ; $4f04: $1b
	adc  c                                           ; $4f05: $89
	cp   b                                           ; $4f06: $b8
	add  b                                           ; $4f07: $80
	cp   a                                           ; $4f08: $bf
	add  b                                           ; $4f09: $80
	cp   l                                           ; $4f0a: $bd
	nop                                              ; $4f0b: $00
	xor  l                                           ; $4f0c: $ad
	adc  c                                           ; $4f0d: $89
	ld   c, $80                                      ; $4f0e: $0e $80
	cp   $80                                         ; $4f10: $fe $80
	ld   e, [hl]                                     ; $4f12: $5e
	ld   bc, $ba19                                   ; $4f13: $01 $19 $ba
	add  b                                           ; $4f16: $80
	cp   l                                           ; $4f17: $bd
	add  hl, bc                                      ; $4f18: $09
	rst  $20                                         ; $4f19: $e7
	rst  $38                                         ; $4f1a: $ff

jr_07c_4f1b:
	xor  a                                           ; $4f1b: $af
	and  b                                           ; $4f1c: $a0
	ret  nc                                          ; $4f1d: $d0

	rst  JumpTable                                         ; $4f1e: $df
	adc  [hl]                                        ; $4f1f: $8e
	add  d                                           ; $4f20: $82
	adc  e                                           ; $4f21: $8b
	sbc  a                                           ; $4f22: $9f
	add  b                                           ; $4f23: $80
	cp   e                                           ; $4f24: $bb
	ld   bc, $be1d                                   ; $4f25: $01 $1d $be
	add  b                                           ; $4f28: $80
	ld   e, [hl]                                     ; $4f29: $5e
	ld   [bc], a                                     ; $4f2a: $02
	ld   d, $1e                                      ; $4f2b: $16 $1e
	ld   a, [$0680]                                  ; $4f2d: $fa $80 $06
	inc  bc                                          ; $4f30: $03
	or   $12                                         ; $4f31: $f6 $12
	ld   e, $fa                                      ; $4f33: $1e $fa
	add  b                                           ; $4f35: $80
	ld   b, $02                                      ; $4f36: $06 $02
	or   $1e                                         ; $4f38: $f6 $1e
	cp   c                                           ; $4f3a: $b9
	add  b                                           ; $4f3b: $80
	cp   d                                           ; $4f3c: $ba
	add  b                                           ; $4f3d: $80
	cp   c                                           ; $4f3e: $b9
	add  h                                           ; $4f3f: $84
	cp   b                                           ; $4f40: $b8
	inc  b                                           ; $4f41: $04
	ld   hl, sp-$01                                  ; $4f42: $f8 $ff
	or   b                                           ; $4f44: $b0
	cp   a                                           ; $4f45: $bf
	ld   d, l                                        ; $4f46: $55
	add  c                                           ; $4f47: $81
	cp   $80                                         ; $4f48: $fe $80
	ld   a, [hl]                                     ; $4f4a: $7e
	add  b                                           ; $4f4b: $80
	cp   [hl]                                        ; $4f4c: $be
	add  b                                           ; $4f4d: $80
	ld   e, [hl]                                     ; $4f4e: $5e
	add  b                                           ; $4f4f: $80
	ld   a, $04                                      ; $4f50: $3e $04
	ld   c, $fe                                      ; $4f52: $0e $fe
	ld   b, $fe                                      ; $4f54: $06 $fe
	inc  bc                                          ; $4f56: $03
	rst  $38                                         ; $4f57: $ff
	nop                                              ; $4f58: $00
	rst  $38                                         ; $4f59: $ff
	nop                                              ; $4f5a: $00
	rst  $38                                         ; $4f5b: $ff
	nop                                              ; $4f5c: $00
	rst  $38                                         ; $4f5d: $ff
	nop                                              ; $4f5e: $00
	cp   c                                           ; $4f5f: $b9
	nop                                              ; $4f60: $00
	sub  c                                           ; $4f61: $91
	ld   bc, $0f01                                   ; $4f62: $01 $01 $0f
	nop                                              ; $4f65: $00
	add  b                                           ; $4f66: $80
	rrca                                             ; $4f67: $0f
	add  b                                           ; $4f68: $80
	ld   c, $82                                      ; $4f69: $0e $82
	nop                                              ; $4f6b: $00
	add  b                                           ; $4f6c: $80
	ld   bc, $0f82                                   ; $4f6d: $01 $82 $0f
	ld   bc, $fe0e                                   ; $4f70: $01 $0e $fe
	add  b                                           ; $4f73: $80
	adc  $84                                         ; $4f74: $ce $84
	ld   c, $84                                      ; $4f76: $0e $84
	adc  [hl]                                        ; $4f78: $8e
	add  b                                           ; $4f79: $80
	ld   bc, $d982                                   ; $4f7a: $01 $82 $d9
	add  c                                           ; $4f7d: $81
	ret  nc                                          ; $4f7e: $d0

	add  b                                           ; $4f7f: $80
	rst  $10                                         ; $4f80: $d7
	nop                                              ; $4f81: $00
	rst  JumpTable                                         ; $4f82: $df
	add  c                                           ; $4f83: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f84: $cf
	ld   bc, $56df                                   ; $4f85: $01 $df $56
	add  l                                           ; $4f88: $85
	ld   c, c                                        ; $4f89: $49
	ld   [$c909], sp                                 ; $4f8a: $08 $09 $c9
	pop  bc                                          ; $4f8d: $c1
	db   $fc                                         ; $4f8e: $fc
	ld   a, [$f4fc]                                  ; $4f8f: $fa $fc $f4
	ld   hl, sp+$48                                  ; $4f92: $f8 $48
	add  b                                           ; $4f94: $80
	add  b                                           ; $4f95: $80
	nop                                              ; $4f96: $00
	ret  nz                                          ; $4f97: $c0

	add  b                                           ; $4f98: $80
	add  b                                           ; $4f99: $80
	ld   bc, $0181                                   ; $4f9a: $01 $81 $01
	add  b                                           ; $4f9d: $80
	ld   b, $80                                      ; $4f9e: $06 $80
	ld   [$1080], sp                                 ; $4fa0: $08 $80 $10
	add  hl, bc                                      ; $4fa3: $09
	ld   h, c                                        ; $4fa4: $61
	ld   h, b                                        ; $4fa5: $60
	ld   bc, $ff00                                   ; $4fa6: $01 $00 $ff
	ldh  [rAUDENA], a                                ; $4fa9: $e0 $26
	ld   b, $d6                                      ; $4fab: $06 $d6
	sub  [hl]                                        ; $4fad: $96
	add  b                                           ; $4fae: $80
	ld   d, $01                                      ; $4faf: $16 $01
	sub  [hl]                                        ; $4fb1: $96
	ld   d, $81                                      ; $4fb2: $16 $81
	nop                                              ; $4fb4: $00
	ld   [bc], a                                     ; $4fb5: $02
	ccf                                              ; $4fb6: $3f
	ld   [hl], $09                                   ; $4fb7: $36 $09
	adc  b                                           ; $4fb9: $88
	ld   c, c                                        ; $4fba: $49
	add  b                                           ; $4fbb: $80
	nop                                              ; $4fbc: $00
	rrca                                             ; $4fbd: $0f
	inc  bc                                          ; $4fbe: $03
	db   $fc                                         ; $4fbf: $fc
	add  hl, sp                                      ; $4fc0: $39
	ld   sp, hl                                      ; $4fc1: $f9
	ld   l, c                                        ; $4fc2: $69
	ld   e, c                                        ; $4fc3: $59
	ld   a, [bc]                                     ; $4fc4: $0a
	ld   [de], a                                     ; $4fc5: $12
	ld   a, [de]                                     ; $4fc6: $1a
	ld   [hl+], a                                    ; $4fc7: $22
	inc  h                                           ; $4fc8: $24
	inc  b                                           ; $4fc9: $04
	dec  [hl]                                        ; $4fca: $35
	inc  b                                           ; $4fcb: $04

jr_07c_4fcc:
	ret  nz                                          ; $4fcc: $c0

	ld   [$0980], sp                                 ; $4fcd: $08 $80 $09
	ld   [bc], a                                     ; $4fd0: $02
	adc  b                                           ; $4fd1: $88
	ld   a, [hl]                                     ; $4fd2: $7e
	ld   h, h                                        ; $4fd3: $64
	add  c                                           ; $4fd4: $81
	ld   a, h                                        ; $4fd5: $7c
	ld   a, [bc]                                     ; $4fd6: $0a
	ld   [hl], h                                     ; $4fd7: $74
	ld   a, l                                        ; $4fd8: $7d
	ld   e, l                                        ; $4fd9: $5d
	ld   a, l                                        ; $4fda: $7d
	ld   a, c                                        ; $4fdb: $79
	ld   sp, hl                                      ; $4fdc: $f9
	ld   l, c                                        ; $4fdd: $69
	ld   hl, sp-$50                                  ; $4fde: $f8 $b0
	ldh  a, [c]                                      ; $4fe0: $f2
	ld   h, d                                        ; $4fe1: $62
	add  b                                           ; $4fe2: $80
	nop                                              ; $4fe3: $00
	ld   bc, $8f80                                   ; $4fe4: $01 $80 $8f
	add  b                                           ; $4fe7: $80
	cp   a                                           ; $4fe8: $bf
	inc  bc                                          ; $4fe9: $03
	ccf                                              ; $4fea: $3f
	jr   nc, jr_07c_4fed                             ; $4feb: $30 $00

jr_07c_4fed:
	rrca                                             ; $4fed: $0f
	add  d                                           ; $4fee: $82
	ld   a, a                                        ; $4fef: $7f
	ld   [bc], a                                     ; $4ff0: $02
	rst  $38                                         ; $4ff1: $ff
	pop  hl                                          ; $4ff2: $e1
	ld   sp, $f083                                   ; $4ff3: $31 $83 $f0
	inc  bc                                          ; $4ff6: $03
	pop  af                                          ; $4ff7: $f1
	ld   de, $e030                                   ; $4ff8: $11 $30 $e0
	add  b                                           ; $4ffb: $80
	ld   hl, sp-$80                                  ; $4ffc: $f8 $80
	cp   $02                                         ; $4ffe: $fe $02
	rst  $38                                         ; $5000: $ff
	ld   de, $81fe                                   ; $5001: $11 $fe $81
	ld   hl, sp-$80                                  ; $5004: $f8 $80
	ld   [$f880], sp                                 ; $5006: $08 $80 $f8
	add  b                                           ; $5009: $80
	add  sp, $01                                     ; $500a: $e8 $01
	add  hl, hl                                      ; $500c: $29
	ld   hl, $c180                                   ; $500d: $21 $80 $c1
	add  b                                           ; $5010: $80
	rst  $38                                         ; $5011: $ff
	add  b                                           ; $5012: $80
	nop                                              ; $5013: $00
	add  b                                           ; $5014: $80
	rrca                                             ; $5015: $0f
	add  b                                           ; $5016: $80
	add  a                                           ; $5017: $87
	inc  bc                                          ; $5018: $03
	rst  $38                                         ; $5019: $ff
	add  b                                           ; $501a: $80
	ld   a, a                                        ; $501b: $7f
	nop                                              ; $501c: $00
	add  c                                           ; $501d: $81
	rst  $38                                         ; $501e: $ff
	dec  b                                           ; $501f: $05
	cp   a                                           ; $5020: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5021: $cf
	xor  a                                           ; $5022: $af
	jr   nc, jr_07c_5025                             ; $5023: $30 $00

jr_07c_5025:
	sub  b                                           ; $5025: $90
	add  b                                           ; $5026: $80
	ret  nc                                          ; $5027: $d0

	add  b                                           ; $5028: $80
	ret  nz                                          ; $5029: $c0

	dec  b                                           ; $502a: $05
	ld   [hl], a                                     ; $502b: $77
	rst  $30                                         ; $502c: $f7
	dec  bc                                          ; $502d: $0b
	db   $eb                                         ; $502e: $eb
	jp   hl                                          ; $502f: $e9


	ret                                              ; $5030: $c9


	add  b                                           ; $5031: $80
	ret  z                                           ; $5032: $c8

	nop                                              ; $5033: $00
	ret  nz                                          ; $5034: $c0

	add  d                                           ; $5035: $82
	rrca                                             ; $5036: $0f
	add  b                                           ; $5037: $80
	dec  bc                                          ; $5038: $0b
	ld   bc, $f70d                                   ; $5039: $01 $0d $f7
	add  c                                           ; $503c: $81
	ld   a, [$f280]                                  ; $503d: $fa $80 $f2
	add  b                                           ; $5040: $80
	ld   [bc], a                                     ; $5041: $02
	ld   [bc], a                                     ; $5042: $02
	jr   c, jr_07c_4fcc                              ; $5043: $38 $87

	rst  ToBoot                                         ; $5045: $c7
	add  c                                           ; $5046: $81
	rlca                                             ; $5047: $07
	add  e                                           ; $5048: $83
	inc  bc                                          ; $5049: $03
	nop                                              ; $504a: $00
	ld   b, e                                        ; $504b: $43
	add  c                                           ; $504c: $81
	inc  bc                                          ; $504d: $03
	ld   bc, $e023                                   ; $504e: $01 $23 $e0
	adc  c                                           ; $5051: $89
	rrca                                             ; $5052: $0f
	add  b                                           ; $5053: $80
	inc  c                                           ; $5054: $0c
	add  b                                           ; $5055: $80
	inc  bc                                          ; $5056: $03
	nop                                              ; $5057: $00
	ld   a, [hl]                                     ; $5058: $7e
	add  a                                           ; $5059: $87
	adc  [hl]                                        ; $505a: $8e
	add  b                                           ; $505b: $80
	ld   c, $80                                      ; $505c: $0e $80
	ld   c, [hl]                                     ; $505e: $4e
	add  b                                           ; $505f: $80
	adc  [hl]                                        ; $5060: $8e
	nop                                              ; $5061: $00
	pop  bc                                          ; $5062: $c1
	add  c                                           ; $5063: $81
	rst  JumpTable                                         ; $5064: $df
	nop                                              ; $5065: $00
	sbc  $80                                         ; $5066: $de $80
	rst  JumpTable                                         ; $5068: $df
	add  b                                           ; $5069: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $506a: $cf
	add  b                                           ; $506b: $80
	rst  ToBoot                                         ; $506c: $c7
	nop                                              ; $506d: $00
	jp   nz, $9280                                   ; $506e: $c2 $80 $92

	ld   b, $72                                      ; $5071: $06 $72
	ld   [hl], b                                     ; $5073: $70
	sbc  [hl]                                        ; $5074: $9e
	pop  af                                          ; $5075: $f1
	sub  b                                           ; $5076: $90
	ldh  [$60], a                                    ; $5077: $e0 $60
	add  b                                           ; $5079: $80
	ret  nz                                          ; $507a: $c0

	add  c                                           ; $507b: $81
	add  b                                           ; $507c: $80
	add  b                                           ; $507d: $80
	pop  af                                          ; $507e: $f1
	dec  b                                           ; $507f: $05
	cp   $3e                                         ; $5080: $fe $3e
	inc  h                                           ; $5082: $24
	rra                                              ; $5083: $1f
	sbc  d                                           ; $5084: $9a
	ld   h, b                                        ; $5085: $60
	add  b                                           ; $5086: $80
	jr   nc, @+$0f                                   ; $5087: $30 $0d

	ld   a, [de]                                     ; $5089: $1a
	jr   jr_07c_50c9                                 ; $508a: $18 $3d

	ld   sp, $2730                                   ; $508c: $31 $30 $27
	and  a                                           ; $508f: $a7
	xor  a                                           ; $5090: $af
	rst  $28                                         ; $5091: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5092: $cf
	rst  $28                                         ; $5093: $ef
	ld   [$7fca], a                                  ; $5094: $ea $ca $7f
	add  b                                           ; $5097: $80
	rst  $38                                         ; $5098: $ff
	inc  b                                           ; $5099: $04
	ld   a, a                                        ; $509a: $7f
	rst  $38                                         ; $509b: $ff
	nop                                              ; $509c: $00
	rst  $38                                         ; $509d: $ff
	nop                                              ; $509e: $00
	add  e                                           ; $509f: $83
	rst  $38                                         ; $50a0: $ff
	ld   [bc], a                                     ; $50a1: $02
	cp   c                                           ; $50a2: $b9
	ld   c, a                                        ; $50a3: $4f
	ld   c, $82                                      ; $50a4: $0e $82
	ld   hl, sp+$03                                  ; $50a6: $f8 $03
	ld   sp, hl                                      ; $50a8: $f9
	ld   bc, $04fc                                   ; $50a9: $01 $fc $04
	add  c                                           ; $50ac: $81
	ld   hl, sp-$80                                  ; $50ad: $f8 $80
	db   $fc                                         ; $50af: $fc
	ld   b, $ef                                      ; $50b0: $06 $ef
	ld   e, d                                        ; $50b2: $5a
	or   a                                           ; $50b3: $b7
	ld   de, $6313                                   ; $50b4: $11 $13 $63
	ld   h, a                                        ; $50b7: $67
	add  b                                           ; $50b8: $80
	add  e                                           ; $50b9: $83
	dec  c                                           ; $50ba: $0d

jr_07c_50bb:
	inc  bc                                          ; $50bb: $03
	rrca                                             ; $50bc: $0f
	rlca                                             ; $50bd: $07
	ld   d, $07                                      ; $50be: $16 $07
	dec  h                                           ; $50c0: $25
	ld   d, a                                        ; $50c1: $57
	sub  e                                           ; $50c2: $93
	ld   h, a                                        ; $50c3: $67
	rst  $30                                         ; $50c4: $f7
	ldh  a, [c]                                      ; $50c5: $f2
	jp   nc, Jump_07c_60f0                           ; $50c6: $d2 $f0 $60

jr_07c_50c9:
	add  c                                           ; $50c9: $81
	push hl                                          ; $50ca: $e5
	ld   [bc], a                                     ; $50cb: $02
	and  l                                           ; $50cc: $a5
	pop  hl                                          ; $50cd: $e1
	pop  bc                                          ; $50ce: $c1
	add  b                                           ; $50cf: $80
	ret  z                                           ; $50d0: $c8

	dec  b                                           ; $50d1: $05
	bit  1, e                                        ; $50d2: $cb $4b
	db   $d3                                         ; $50d4: $d3
	inc  de                                          ; $50d5: $13
	nop                                              ; $50d6: $00
	rrca                                             ; $50d7: $0f
	add  l                                           ; $50d8: $85
	rst  $38                                         ; $50d9: $ff
	ld   [bc], a                                     ; $50da: $02
	ldh  a, [rP1]                                    ; $50db: $f0 $00
	rrca                                             ; $50dd: $0f
	add  d                                           ; $50de: $82
	rst  $38                                         ; $50df: $ff
	ld   bc, $f00f                                   ; $50e0: $01 $0f $f0
	add  c                                           ; $50e3: $81
	rst  $38                                         ; $50e4: $ff
	nop                                              ; $50e5: $00
	rst  $30                                         ; $50e6: $f7
	add  c                                           ; $50e7: $81
	rst  $38                                         ; $50e8: $ff
	ld   [bc], a                                     ; $50e9: $02
	nop                                              ; $50ea: $00
	rlca                                             ; $50eb: $07
	db   $fc                                         ; $50ec: $fc
	add  c                                           ; $50ed: $81
	rst  $38                                         ; $50ee: $ff
	inc  c                                           ; $50ef: $0c
	db   $d3                                         ; $50f0: $d3
	di                                               ; $50f1: $f3
	ld   [de], a                                     ; $50f2: $12
	pop  af                                          ; $50f3: $f1
	ldh  a, [$f1]                                    ; $50f4: $f0 $f1
	pop  de                                          ; $50f6: $d1
	ldh  a, [$e0]                                    ; $50f7: $f0 $e0
	ldh  a, [$09]                                    ; $50f9: $f0 $09
	ld   sp, hl                                      ; $50fb: $f9
	nop                                              ; $50fc: $00
	add  c                                           ; $50fd: $81
	rst  $38                                         ; $50fe: $ff
	rlca                                             ; $50ff: $07
	cp   b                                           ; $5100: $b8
	rst  ToBoot                                         ; $5101: $c7
	ld   b, b                                        ; $5102: $40
	rst  ToBoot                                         ; $5103: $c7
	ld   b, a                                        ; $5104: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5105: $cf
	adc  a                                           ; $5106: $8f
	rlca                                             ; $5107: $07
	add  b                                           ; $5108: $80
	rst  $20                                         ; $5109: $e7
	ld   [bc], a                                     ; $510a: $02
	ld   hl, sp-$01                                  ; $510b: $f8 $ff
	nop                                              ; $510d: $00
	add  c                                           ; $510e: $81
	rst  $38                                         ; $510f: $ff
	inc  b                                           ; $5110: $04
	ld   a, $c1                                      ; $5111: $3e $c1
	ld   [$e0e8], sp                                 ; $5113: $08 $e8 $e0
	add  b                                           ; $5116: $80
	ldh  a, [$80]                                    ; $5117: $f0 $80
	ld   hl, sp+$03                                  ; $5119: $f8 $03
	cp   $01                                         ; $511b: $fe $01
	rst  $38                                         ; $511d: $ff
	nop                                              ; $511e: $00
	add  c                                           ; $511f: $81
	rst  $38                                         ; $5120: $ff
	ld   [bc], a                                     ; $5121: $02
	rlca                                             ; $5122: $07
	ld   hl, sp+$00                                  ; $5123: $f8 $00
	add  d                                           ; $5125: $82
	db   $fc                                         ; $5126: $fc
	add  b                                           ; $5127: $80
	ld   a, [hl]                                     ; $5128: $7e
	nop                                              ; $5129: $00
	nop                                              ; $512a: $00
	add  b                                           ; $512b: $80
	ccf                                              ; $512c: $3f
	nop                                              ; $512d: $00
	nop                                              ; $512e: $00
	add  b                                           ; $512f: $80
	cp   a                                           ; $5130: $bf
	ld   b, $ff                                      ; $5131: $06 $ff
	add  e                                           ; $5133: $83
	ld   [hl], e                                     ; $5134: $73
	inc  sp                                          ; $5135: $33
	dec  sp                                          ; $5136: $3b
	rra                                              ; $5137: $1f
	jr   c, jr_07c_50bb                              ; $5138: $38 $81

	ccf                                              ; $513a: $3f
	nop                                              ; $513b: $00
	rra                                              ; $513c: $1f
	add  b                                           ; $513d: $80
	add  b                                           ; $513e: $80
	inc  b                                           ; $513f: $04
	rra                                              ; $5140: $1f
	sbc  a                                           ; $5141: $9f
	cp   a                                           ; $5142: $bf
	rst  $38                                         ; $5143: $ff
	ccf                                              ; $5144: $3f
	add  l                                           ; $5145: $85
	nop                                              ; $5146: $00
	nop                                              ; $5147: $00
	rst  $38                                         ; $5148: $ff
	add  b                                           ; $5149: $80
	rlca                                             ; $514a: $07
	add  b                                           ; $514b: $80
	ccf                                              ; $514c: $3f
	add  b                                           ; $514d: $80
	ld   a, a                                        ; $514e: $7f
	nop                                              ; $514f: $00
	rst  $38                                         ; $5150: $ff
	add  [hl]                                        ; $5151: $86
	nop                                              ; $5152: $00
	add  [hl]                                        ; $5153: $86
	rst  $38                                         ; $5154: $ff
	add  [hl]                                        ; $5155: $86

jr_07c_5156:
	nop                                              ; $5156: $00
	add  [hl]                                        ; $5157: $86
	rst  $38                                         ; $5158: $ff
	add  [hl]                                        ; $5159: $86
	nop                                              ; $515a: $00
	add  [hl]                                        ; $515b: $86
	ldh  a, [$8b]                                    ; $515c: $f0 $8b
	rst  $38                                         ; $515e: $ff
	ld   a, [bc]                                     ; $515f: $0a
	cp   $ff                                         ; $5160: $fe $ff
	db   $fd                                         ; $5162: $fd
	db   $fc                                         ; $5163: $fc
	rst  $38                                         ; $5164: $ff
	cp   a                                           ; $5165: $bf
	rst  $38                                         ; $5166: $ff
	rst  JumpTable                                         ; $5167: $df
	rst  $38                                         ; $5168: $ff
	rst  $20                                         ; $5169: $e7
	ei                                               ; $516a: $fb
	add  b                                           ; $516b: $80
	rst  $20                                         ; $516c: $e7
	ld   b, $87                                      ; $516d: $06 $87
	add  h                                           ; $516f: $84
	adc  e                                           ; $5170: $8b
	ld   l, e                                        ; $5171: $6b
	ld   [hl], d                                     ; $5172: $72
	jp   nc, $82c0                                   ; $5173: $d2 $c0 $82

	rst  $38                                         ; $5176: $ff
	add  b                                           ; $5177: $80
	cp   $05                                         ; $5178: $fe $05
	ldh  [$c0], a                                    ; $517a: $e0 $c0
	jr   c, jr_07c_5156                              ; $517c: $38 $d8

	rst  $20                                         ; $517e: $e7
	daa                                              ; $517f: $27
	add  b                                           ; $5180: $80
	ld   c, a                                        ; $5181: $4f
	ld   bc, $909f                                   ; $5182: $01 $9f $90
	add  d                                           ; $5185: $82
	ldh  a, [$80]                                    ; $5186: $f0 $80
	db   $10                                         ; $5188: $10
	add  b                                           ; $5189: $80
	nop                                              ; $518a: $00
	add  l                                           ; $518b: $85
	ldh  a, [rSC]                                    ; $518c: $f0 $02
	rst  $28                                         ; $518e: $ef
	ld   d, h                                        ; $518f: $54
	ld   b, h                                        ; $5190: $44
	add  b                                           ; $5191: $80
	call nc, $9080                                   ; $5192: $d4 $80 $90
	add  b                                           ; $5195: $80
	adc  b                                           ; $5196: $88
	add  b                                           ; $5197: $80
	add  b                                           ; $5198: $80
	add  b                                           ; $5199: $80
	add  c                                           ; $519a: $81
	ld   bc, $8283                                   ; $519b: $01 $83 $82
	add  b                                           ; $519e: $80
	inc  hl                                          ; $519f: $23
	nop                                              ; $51a0: $00
	ld   bc, $0380                                   ; $51a1: $01 $80 $03
	add  b                                           ; $51a4: $80
	rrca                                             ; $51a5: $0f
	add  c                                           ; $51a6: $81
	ccf                                              ; $51a7: $3f
	add  c                                           ; $51a8: $81
	rst  $38                                         ; $51a9: $ff
	inc  b                                           ; $51aa: $04
	rst  ToBoot                                         ; $51ab: $c7
	rlca                                             ; $51ac: $07
	db   $e3                                         ; $51ad: $e3
	ei                                               ; $51ae: $fb
	rst  $20                                         ; $51af: $e7
	adc  e                                           ; $51b0: $8b
	rst  $38                                         ; $51b1: $ff
	add  b                                           ; $51b2: $80
	rrca                                             ; $51b3: $0f
	nop                                              ; $51b4: $00
	rst  $38                                         ; $51b5: $ff
	adc  l                                           ; $51b6: $8d
	ldh  a, [rP1]                                    ; $51b7: $f0 $00

jr_07c_51b9:
	rrca                                             ; $51b9: $0f
	add  c                                           ; $51ba: $81
	ld   bc, $0f06                                   ; $51bb: $01 $06 $0f
	ld   a, $33                                      ; $51be: $3e $33
	ld   c, a                                        ; $51c0: $4f
	ld   c, l                                        ; $51c1: $4d
	adc  a                                           ; $51c2: $8f
	adc  [hl]                                        ; $51c3: $8e
	add  b                                           ; $51c4: $80
	and  a                                           ; $51c5: $a7
	add  b                                           ; $51c6: $80
	ld   a, e                                        ; $51c7: $7b
	ld   [$7470], sp                                 ; $51c8: $08 $70 $74
	db   $f4                                         ; $51cb: $f4
	ld   hl, sp-$38                                  ; $51cc: $f8 $c8
	ldh  a, [$b0]                                    ; $51ce: $f0 $b0
	db   $10                                         ; $51d0: $10
	sub  b                                           ; $51d1: $90
	add  b                                           ; $51d2: $80
	ret  nz                                          ; $51d3: $c0

	add  b                                           ; $51d4: $80
	ldh  [rTIMA], a                                  ; $51d5: $e0 $05
	jr   nz, jr_07c_51b9                             ; $51d7: $20 $e0

	ret  nc                                          ; $51d9: $d0

	ldh  a, [$e1]                                    ; $51da: $f0 $e1
	ld   bc, $1080                                   ; $51dc: $01 $80 $10
	add  b                                           ; $51df: $80
	inc  a                                           ; $51e0: $3c
	add  b                                           ; $51e1: $80
	ccf                                              ; $51e2: $3f
	add  b                                           ; $51e3: $80
	ld   a, a                                        ; $51e4: $7f
	add  b                                           ; $51e5: $80
	rst  $38                                         ; $51e6: $ff
	add  b                                           ; $51e7: $80
	ccf                                              ; $51e8: $3f
	add  b                                           ; $51e9: $80
	inc  bc                                          ; $51ea: $03
	ld   bc, $f0ff                                   ; $51eb: $01 $ff $f0
	add  b                                           ; $51ee: $80
	ld   [hl], b                                     ; $51ef: $70
	add  b                                           ; $51f0: $80
	nop                                              ; $51f1: $00
	adc  b                                           ; $51f2: $88
	ldh  a, [rP1]                                    ; $51f3: $f0 $00
	rrca                                             ; $51f5: $0f
	xor  l                                           ; $51f6: $ad
	rst  $38                                         ; $51f7: $ff
	adc  [hl]                                        ; $51f8: $8e

jr_07c_51f9:
	ldh  a, [$0a]                                    ; $51f9: $f0 $0a
	db   $fd                                         ; $51fb: $fd
	ei                                               ; $51fc: $fb
	db   $fd                                         ; $51fd: $fd
	rst  $30                                         ; $51fe: $f7
	rst  $38                                         ; $51ff: $ff
	xor  $ea                                         ; $5200: $ee $ea
	ld   l, [hl]                                     ; $5202: $6e
	ld   a, [hl]                                     ; $5203: $7e
	ld   e, h                                        ; $5204: $5c
	ld   d, h                                        ; $5205: $54
	add  b                                           ; $5206: $80
	ld   e, h                                        ; $5207: $5c
	add  b                                           ; $5208: $80
	ld   e, c                                        ; $5209: $59
	ld   b, $5a                                      ; $520a: $06 $5a
	ld   a, d                                        ; $520c: $7a
	or   a                                           ; $520d: $b7
	rst  $20                                         ; $520e: $e7
	ld   l, h                                        ; $520f: $6c
	dec  c                                           ; $5210: $0d
	ld   bc, $1f80                                   ; $5211: $01 $80 $1f
	ld   bc, $ff3f                                   ; $5214: $01 $3f $ff
	add  b                                           ; $5217: $80

jr_07c_5218:
	ld   hl, sp+$00                                  ; $5218: $f8 $00
	ret  nz                                          ; $521a: $c0

	add  b                                           ; $521b: $80

jr_07c_521c:
	add  b                                           ; $521c: $80
	inc  c                                           ; $521d: $0c
	nop                                              ; $521e: $00
	jr   nz, jr_07c_5260                             ; $521f: $20 $3f

	rst  $28                                         ; $5221: $ef
	rst  $38                                         ; $5222: $ff
	rst  $30                                         ; $5223: $f7
	rst  $38                                         ; $5224: $ff
	ei                                               ; $5225: $fb
	rst  $38                                         ; $5226: $ff
	push bc                                          ; $5227: $c5
	rst  ToBoot                                         ; $5228: $c7
	ld   e, $1f                                      ; $5229: $1e $1f
	add  b                                           ; $522b: $80
	ld   a, a                                        ; $522c: $7f
	add  b                                           ; $522d: $80
	rst  $38                                         ; $522e: $ff
	nop                                              ; $522f: $00
	rrca                                             ; $5230: $0f
	add  a                                           ; $5231: $87
	ldh  a, [$0a]                                    ; $5232: $f0 $0a
	ld   [hl], b                                     ; $5234: $70
	ldh  a, [$b0]                                    ; $5235: $f0 $b0
	ldh  a, [$d0]                                    ; $5237: $f0 $d0
	ldh  a, [rAUD3HIGH]                              ; $5239: $f0 $1e
	ld   hl, $4b23                                   ; $523b: $21 $23 $4b
	ld   c, b                                        ; $523e: $48
	add  b                                           ; $523f: $80
	ld   e, e                                        ; $5240: $5b
	add  d                                           ; $5241: $82
	ld   d, d                                        ; $5242: $52
	add  b                                           ; $5243: $80
	ld   b, b                                        ; $5244: $40
	add  b                                           ; $5245: $80
	ld   b, e                                        ; $5246: $43
	add  b                                           ; $5247: $80
	ld   b, $80                                      ; $5248: $06 $80
	db   $fc                                         ; $524a: $fc
	add  b                                           ; $524b: $80
	add  b                                           ; $524c: $80
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	add  b                                           ; $524f: $80
	ld   e, $00                                      ; $5250: $1e $00
	ccf                                              ; $5252: $3f

jr_07c_5253:
	add  b                                           ; $5253: $80
	ld   a, a                                        ; $5254: $7f
	nop                                              ; $5255: $00
	rst  $38                                         ; $5256: $ff
	add  b                                           ; $5257: $80
	add  $03                                         ; $5258: $c6 $03
	ret  nz                                          ; $525a: $c0

	jr   c, jr_07c_5298                              ; $525b: $38 $3b

	inc  bc                                          ; $525d: $03
	add  b                                           ; $525e: $80
	nop                                              ; $525f: $00

jr_07c_5260:
	add  b                                           ; $5260: $80
	ccf                                              ; $5261: $3f
	add  b                                           ; $5262: $80
	ld   a, a                                        ; $5263: $7f
	add  b                                           ; $5264: $80
	ccf                                              ; $5265: $3f
	add  b                                           ; $5266: $80
	inc  a                                           ; $5267: $3c
	add  b                                           ; $5268: $80
	nop                                              ; $5269: $00
	add  b                                           ; $526a: $80
	inc  bc                                          ; $526b: $03
	nop                                              ; $526c: $00
	rst  $38                                         ; $526d: $ff
	add  c                                           ; $526e: $81
	ldh  a, [$80]                                    ; $526f: $f0 $80
	ld   [hl], b                                     ; $5271: $70
	add  d                                           ; $5272: $82
	ldh  a, [$80]                                    ; $5273: $f0 $80
	jr   nc, jr_07c_51f9                             ; $5275: $30 $82

	ldh  a, [rSB]                                    ; $5277: $f0 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5279: $cf
	ret  nz                                          ; $527a: $c0

	add  b                                           ; $527b: $80
	adc  b                                           ; $527c: $88
	add  b                                           ; $527d: $80
	ld   [$0980], sp                                 ; $527e: $08 $80 $09
	add  b                                           ; $5281: $80
	ld   bc, $7180                                   ; $5282: $01 $80 $71
	inc  b                                           ; $5285: $04
	ld   hl, $38e1                                   ; $5286: $21 $e1 $38
	ld   hl, sp+$00                                  ; $5289: $f8 $00

jr_07c_528b:
	add  b                                           ; $528b: $80
	ld   [hl], b                                     ; $528c: $70
	add  b                                           ; $528d: $80
	jr   nc, @-$7c                                   ; $528e: $30 $82

	db   $10                                         ; $5290: $10
	add  l                                           ; $5291: $85
	nop                                              ; $5292: $00
	add  b                                           ; $5293: $80
	ret  nz                                          ; $5294: $c0

	add  b                                           ; $5295: $80
	jr   nc, jr_07c_5218                             ; $5296: $30 $80

jr_07c_5298:
	add  e                                           ; $5298: $83
	add  b                                           ; $5299: $80
	jr   nz, jr_07c_521c                             ; $529a: $20 $80

	ld   [$0380], sp                                 ; $529c: $08 $80 $03
	add  b                                           ; $529f: $80
	ld   [$a880], sp                                 ; $52a0: $08 $80 $a8
	ld   bc, $707f                                   ; $52a3: $01 $7f $70
	add  d                                           ; $52a6: $82
	nop                                              ; $52a7: $00
	add  b                                           ; $52a8: $80
	ld   h, b                                        ; $52a9: $60
	add  b                                           ; $52aa: $80
	db   $10                                         ; $52ab: $10
	add  b                                           ; $52ac: $80
	ret  nz                                          ; $52ad: $c0

	add  b                                           ; $52ae: $80
	ldh  a, [$80]                                    ; $52af: $f0 $80
	jr   nc, jr_07c_52b3                             ; $52b1: $30 $00

jr_07c_52b3:
	ld   [hl], e                                     ; $52b3: $73
	add  a                                           ; $52b4: $87
	db   $fc                                         ; $52b5: $fc
	nop                                              ; $52b6: $00
	ld   a, b                                        ; $52b7: $78
	add  e                                           ; $52b8: $83
	ld   hl, sp-$7e                                  ; $52b9: $f8 $82
	jr   nz, @-$7e                                   ; $52bb: $20 $80

	ld   h, h                                        ; $52bd: $64
	add  b                                           ; $52be: $80
	ld   h, a                                        ; $52bf: $67
	add  b                                           ; $52c0: $80
	rlca                                             ; $52c1: $07
	add  b                                           ; $52c2: $80
	inc  bc                                          ; $52c3: $03
	add  b                                           ; $52c4: $80
	ld   b, h                                        ; $52c5: $44
	add  b                                           ; $52c6: $80
	rrca                                             ; $52c7: $0f
	add  b                                           ; $52c8: $80
	xor  b                                           ; $52c9: $a8
	add  d                                           ; $52ca: $82
	jr   z, jr_07c_5253                              ; $52cb: $28 $86

	xor  b                                           ; $52cd: $a8
	add  b                                           ; $52ce: $80
	jr   z, jr_07c_52d2                              ; $52cf: $28 $01

	rrca                                             ; $52d1: $0f

jr_07c_52d2:
	nop                                              ; $52d2: $00
	add  b                                           ; $52d3: $80
	add  b                                           ; $52d4: $80
	add  b                                           ; $52d5: $80
	ldh  [$88], a                                    ; $52d6: $e0 $88
	ldh  a, [rSB]                                    ; $52d8: $f0 $01
	rst  $38                                         ; $52da: $ff
	ldh  a, [$80]                                    ; $52db: $f0 $80
	ret  nz                                          ; $52dd: $c0

	add  d                                           ; $52de: $82
	nop                                              ; $52df: $00
	add  b                                           ; $52e0: $80
	ldh  [$80], a                                    ; $52e1: $e0 $80
	nop                                              ; $52e3: $00
	add  d                                           ; $52e4: $82
	rst  $38                                         ; $52e5: $ff
	add  b                                           ; $52e6: $80
	inc  bc                                          ; $52e7: $03
	add  b                                           ; $52e8: $80
	inc  e                                           ; $52e9: $1c
	add  b                                           ; $52ea: $80
	rlca                                             ; $52eb: $07
	add  b                                           ; $52ec: $80
	ld   c, c                                        ; $52ed: $49
	add  b                                           ; $52ee: $80
	ld   c, $80                                      ; $52ef: $0e $80
	rlca                                             ; $52f1: $07
	add  b                                           ; $52f2: $80
	ld   bc, $fc80                                   ; $52f3: $01 $80 $fc
	add  d                                           ; $52f6: $82
	add  sp, -$80                                    ; $52f7: $e8 $80
	adc  b                                           ; $52f9: $88

jr_07c_52fa:
	add  b                                           ; $52fa: $80
	ret  z                                           ; $52fb: $c8

	add  b                                           ; $52fc: $80
	ld   a, c                                        ; $52fd: $79

jr_07c_52fe:
	add  b                                           ; $52fe: $80
	adc  [hl]                                        ; $52ff: $8e
	add  b                                           ; $5300: $80
	db   $e3                                         ; $5301: $e3
	add  b                                           ; $5302: $80
	ld   hl, sp+$00                                  ; $5303: $f8 $00
	rst  $38                                         ; $5305: $ff
	add  e                                           ; $5306: $83
	ldh  a, [$80]                                    ; $5307: $f0 $80
	jr   nc, jr_07c_528b                             ; $5309: $30 $80

	ret  nz                                          ; $530b: $c0

	add  b                                           ; $530c: $80
	ld   [hl], b                                     ; $530d: $70
	add  b                                           ; $530e: $80
	sub  b                                           ; $530f: $90
	add  b                                           ; $5310: $80
	ldh  [rP1], a                                    ; $5311: $e0 $00
	rrca                                             ; $5313: $0f
	add  d                                           ; $5314: $82
	nop                                              ; $5315: $00
	add  h                                           ; $5316: $84
	cp   $83                                         ; $5317: $fe $83
	rst  $38                                         ; $5319: $ff
	nop                                              ; $531a: $00
	add  b                                           ; $531b: $80
	add  e                                           ; $531c: $83
	ld   a, a                                        ; $531d: $7f
	add  b                                           ; $531e: $80
	nop                                              ; $531f: $00
	jr   jr_07c_535a                                 ; $5320: $18 $38

	jp   nz, $18fe                                   ; $5322: $c2 $fe $18

	inc  hl                                          ; $5325: $23
	nop                                              ; $5326: $00
	inc  b                                           ; $5327: $04
	ld   a, h                                        ; $5328: $7c
	and  a                                           ; $5329: $a7
	db   $ed                                         ; $532a: $ed
	db   $fd                                         ; $532b: $fd
	push af                                          ; $532c: $f5
	db   $fd                                         ; $532d: $fd
	ld   a, [$0002]                                  ; $532e: $fa $02 $00
	ld   h, $86                                      ; $5331: $26 $86
	sub  a                                           ; $5333: $97

jr_07c_5334:
	ld   b, a                                        ; $5334: $47
	ld   [hl+], a                                    ; $5335: $22
	and  a                                           ; $5336: $a7
	jp   $eddb                                       ; $5337: $c3 $db $ed


	adc  b                                           ; $533a: $88
	cp   $80                                         ; $533b: $fe $80
	rst  $38                                         ; $533d: $ff
	dec  b                                           ; $533e: $05
	rlca                                             ; $533f: $07
	rst  $20                                         ; $5340: $e7
	rla                                              ; $5341: $17
	sbc  h                                           ; $5342: $9c
	sbc  l                                           ; $5343: $9d
	sbc  c                                           ; $5344: $99
	add  b                                           ; $5345: $80
	sbc  a                                           ; $5346: $9f
	add  b                                           ; $5347: $80
	sub  l                                           ; $5348: $95
	add  b                                           ; $5349: $80
	sub  d                                           ; $534a: $92
	inc  bc                                          ; $534b: $03
	sub  l                                           ; $534c: $95
	add  l                                           ; $534d: $85
	ld   [de], a                                     ; $534e: $12
	inc  de                                          ; $534f: $13
	add  c                                           ; $5350: $81
	dec  h                                           ; $5351: $25
	ld   [bc], a                                     ; $5352: $02
	push af                                          ; $5353: $f5
	ei                                               ; $5354: $fb
	xor  c                                           ; $5355: $a9
	add  b                                           ; $5356: $80
	db   $eb                                         ; $5357: $eb
	nop                                              ; $5358: $00
	dec  hl                                          ; $5359: $2b

jr_07c_535a:
	add  b                                           ; $535a: $80
	xor  e                                           ; $535b: $ab
	ld   [$2f2c], sp                                 ; $535c: $08 $2c $2f
	xor  b                                           ; $535f: $a8
	xor  e                                           ; $5360: $ab
	dec  hl                                          ; $5361: $2b
	ld   c, e                                        ; $5362: $4b
	ld   b, e                                        ; $5363: $43
	ld   e, e                                        ; $5364: $5b
	adc  a                                           ; $5365: $8f
	add  b                                           ; $5366: $80
	rst  $10                                         ; $5367: $d7
	rrca                                             ; $5368: $0f
	call nc, $d0d7                                   ; $5369: $d4 $d7 $d0
	pop  de                                          ; $536c: $d1
	ret  nc                                          ; $536d: $d0

	ld   [de], a                                     ; $536e: $12
	db   $10                                         ; $536f: $10
	pop  af                                          ; $5370: $f1
	db   $f4                                         ; $5371: $f4
	rst  $30                                         ; $5372: $f7
	nop                                              ; $5373: $00
	inc  c                                           ; $5374: $0c
	ldh  [$93], a                                    ; $5375: $e0 $93
	ld   a, [hl-]                                    ; $5377: $3a
	jr   c, jr_07c_52fa                              ; $5378: $38 $80

	daa                                              ; $537a: $27
	add  b                                           ; $537b: $80
	jr   nc, jr_07c_52fe                             ; $537c: $30 $80

	cpl                                              ; $537e: $2f
	add  b                                           ; $537f: $80
	jr   nz, jr_07c_5387                             ; $5380: $20 $05

	jr   nc, jr_07c_5334                             ; $5382: $30 $b0

	ld   d, b                                        ; $5384: $50
	ld   d, c                                        ; $5385: $51
	pop  hl                                          ; $5386: $e1

jr_07c_5387:
	db   $ed                                         ; $5387: $ed
	add  b                                           ; $5388: $80
	ld   e, l                                        ; $5389: $5d
	add  c                                           ; $538a: $81
	db   $dd                                         ; $538b: $dd
	add  b                                           ; $538c: $80
	push de                                          ; $538d: $d5
	ld   de, $5cdc                                   ; $538e: $11 $dc $5c
	ld   d, e                                        ; $5391: $53
	ld   e, e                                        ; $5392: $5b
	jr   jr_07c_53fd                                 ; $5393: $18 $68

	ld   l, d                                        ; $5395: $6a
	ld   [hl], d                                     ; $5396: $72
	jp   nc, $e0c0                                   ; $5397: $d2 $c0 $e0

	add  d                                           ; $539a: $82
	call nz, $2004                                   ; $539b: $c4 $04 $20
	nop                                              ; $539e: $00
	jr   nz, jr_07c_53a1                             ; $539f: $20 $00

jr_07c_53a1:
	add  b                                           ; $53a1: $80
	ld   d, b                                        ; $53a2: $50
	add  d                                           ; $53a3: $82
	ld   c, b                                        ; $53a4: $48
	ld   bc, $0989                                   ; $53a5: $01 $89 $09
	add  d                                           ; $53a8: $82
	ld   de, $3180                                   ; $53a9: $11 $80 $31
	rlca                                             ; $53ac: $07
	jr   nc, jr_07c_53e0                             ; $53ad: $30 $31

	nop                                              ; $53af: $00
	ld   hl, $2120                                   ; $53b0: $21 $20 $21
	ld   h, b                                        ; $53b3: $60
	ld   h, c                                        ; $53b4: $61
	add  b                                           ; $53b5: $80
	jr   nz, jr_07c_53c7                             ; $53b6: $20 $0f

	inc  b                                           ; $53b8: $04
	inc  h                                           ; $53b9: $24
	add  [hl]                                        ; $53ba: $86
	and  [hl]                                        ; $53bb: $a6
	and  b                                           ; $53bc: $a0
	and  d                                           ; $53bd: $a2
	or   e                                           ; $53be: $b3
	cp   a                                           ; $53bf: $bf
	xor  [hl]                                        ; $53c0: $ae
	cp   a                                           ; $53c1: $bf
	and  e                                           ; $53c2: $a3
	cp   a                                           ; $53c3: $bf
	dec  h                                           ; $53c4: $25
	and  a                                           ; $53c5: $a7
	ld   l, c                                        ; $53c6: $69

jr_07c_53c7:
	adc  b                                           ; $53c7: $88
	add  l                                           ; $53c8: $85
	add  b                                           ; $53c9: $80
	add  hl, bc                                      ; $53ca: $09
	nop                                              ; $53cb: $00
	ld   l, $00                                      ; $53cc: $2e $00
	rra                                              ; $53ce: $1f
	nop                                              ; $53cf: $00
	rrca                                             ; $53d0: $0f
	ret  nz                                          ; $53d1: $c0

	ld   a, a                                        ; $53d2: $7f
	ld   h, c                                        ; $53d3: $61
	ld   bc, $6183                                   ; $53d4: $01 $83 $61
	add  d                                           ; $53d7: $82
	pop  hl                                          ; $53d8: $e1
	ld   b, $61                                      ; $53d9: $06 $61
	pop  hl                                          ; $53db: $e1
	ld   hl, $03e1                                   ; $53dc: $21 $e1 $03
	and  e                                           ; $53df: $a3

jr_07c_53e0:
	and  d                                           ; $53e0: $a2
	add  e                                           ; $53e1: $83
	and  c                                           ; $53e2: $a1
	nop                                              ; $53e3: $00
	cp   h                                           ; $53e4: $bc
	add  c                                           ; $53e5: $81
	add  b                                           ; $53e6: $80
	add  b                                           ; $53e7: $80
	adc  a                                           ; $53e8: $8f
	add  b                                           ; $53e9: $80
	add  b                                           ; $53ea: $80
	inc  b                                           ; $53eb: $04
	and  b                                           ; $53ec: $a0
	jr   nc, @+$33                                   ; $53ed: $30 $31

	inc  c                                           ; $53ef: $0c
	dec  c                                           ; $53f0: $0d
	add  c                                           ; $53f1: $81
	ld   [bc], a                                     ; $53f2: $02
	inc  b                                           ; $53f3: $04
	ld   [de], a                                     ; $53f4: $12
	ld   b, c                                        ; $53f5: $41
	ld   l, c                                        ; $53f6: $69
	ret  nz                                          ; $53f7: $c0

	call nz, $0580                                   ; $53f8: $c4 $80 $05
	inc  bc                                          ; $53fb: $03
	inc  c                                           ; $53fc: $0c

jr_07c_53fd:
	ld   c, $ef                                      ; $53fd: $0e $ef
	xor  $80                                         ; $53ff: $ee $80
	sub  c                                           ; $5401: $91
	ld   bc, $6eee                                   ; $5402: $01 $ee $6e
	add  b                                           ; $5405: $80
	ld   d, c                                        ; $5406: $51
	add  b                                           ; $5407: $80
	ld   l, [hl]                                     ; $5408: $6e
	nop                                              ; $5409: $00
	ld   a, a                                        ; $540a: $7f
	add  b                                           ; $540b: $80
	ld   a, [hl]                                     ; $540c: $7e
	add  b                                           ; $540d: $80
	ld   a, h                                        ; $540e: $7c
	add  b                                           ; $540f: $80
	adc  a                                           ; $5410: $8f
	ld   [$1070], sp                                 ; $5411: $08 $70 $10
	ld   d, h                                        ; $5414: $54
	or   h                                           ; $5415: $b4
	ld   [hl], l                                     ; $5416: $75
	sub  l                                           ; $5417: $95
	ld   d, l                                        ; $5418: $55
	or   l                                           ; $5419: $b5
	dec  [hl]                                        ; $541a: $35
	add  c                                           ; $541b: $81
	or   l                                           ; $541c: $b5
	ld   [bc], a                                     ; $541d: $02
	nop                                              ; $541e: $00
	ldh  a, [rIF]                                    ; $541f: $f0 $0f
	rst  $38                                         ; $5421: $ff
	nop                                              ; $5422: $00
	rst  $38                                         ; $5423: $ff
	nop                                              ; $5424: $00
	rst  $38                                         ; $5425: $ff
	nop                                              ; $5426: $00
	rst  $38                                         ; $5427: $ff
	nop                                              ; $5428: $00
	reti                                             ; $5429: $d9


	nop                                              ; $542a: $00
	pop  de                                          ; $542b: $d1
	ld   bc, $0086                                   ; $542c: $01 $86 $00
	add  [hl]                                        ; $542f: $86
	rrca                                             ; $5430: $0f
	add  [hl]                                        ; $5431: $86
	nop                                              ; $5432: $00
	add  [hl]                                        ; $5433: $86
	rst  $38                                         ; $5434: $ff
	add  [hl]                                        ; $5435: $86
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	rst  $38                                         ; $5438: $ff
	add  b                                           ; $5439: $80
	add  b                                           ; $543a: $80
	add  b                                           ; $543b: $80
	ldh  [$80], a                                    ; $543c: $e0 $80
	ld   hl, sp+$00                                  ; $543e: $f8 $00
	rst  $38                                         ; $5440: $ff
	add  [hl]                                        ; $5441: $86
	nop                                              ; $5442: $00
	ld   bc, $18e7                                   ; $5443: $01 $e7 $18
	add  b                                           ; $5446: $80
	ld   b, $80                                      ; $5447: $06 $80
	ld   bc, $0080                                   ; $5449: $01 $80 $00
	nop                                              ; $544c: $00
	rst  $38                                         ; $544d: $ff
	add  l                                           ; $544e: $85
	nop                                              ; $544f: $00
	ld   bc, $25da                                   ; $5450: $01 $da $25
	add  b                                           ; $5453: $80
	nop                                              ; $5454: $00
	add  b                                           ; $5455: $80
	add  hl, hl                                      ; $5456: $29
	add  b                                           ; $5457: $80
	nop                                              ; $5458: $00
	nop                                              ; $5459: $00
	rst  $38                                         ; $545a: $ff
	add  l                                           ; $545b: $85
	nop                                              ; $545c: $00
	ld   bc, $55aa                                   ; $545d: $01 $aa $55
	add  b                                           ; $5460: $80
	nop                                              ; $5461: $00
	add  b                                           ; $5462: $80
	ld   d, l                                        ; $5463: $55
	add  b                                           ; $5464: $80
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	rst  $38                                         ; $5467: $ff
	add  l                                           ; $5468: $85
	nop                                              ; $5469: $00
	ld   bc, $5fa0                                   ; $546a: $01 $a0 $5f
	add  b                                           ; $546d: $80
	nop                                              ; $546e: $00
	add  b                                           ; $546f: $80
	ld   d, l                                        ; $5470: $55
	add  b                                           ; $5471: $80
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	rst  $38                                         ; $5474: $ff
	add  [hl]                                        ; $5475: $86
	nop                                              ; $5476: $00
	nop                                              ; $5477: $00
	rst  $38                                         ; $5478: $ff
	add  b                                           ; $5479: $80
	nop                                              ; $547a: $00
	add  b                                           ; $547b: $80
	ld   c, b                                        ; $547c: $48
	add  b                                           ; $547d: $80
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	rst  $38                                         ; $5480: $ff
	add  [hl]                                        ; $5481: $86
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	rst  $38                                         ; $5484: $ff
	add  b                                           ; $5485: $80
	nop                                              ; $5486: $00
	add  b                                           ; $5487: $80
	ccf                                              ; $5488: $3f
	add  b                                           ; $5489: $80
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	rst  $38                                         ; $548c: $ff
	add  l                                           ; $548d: $85
	nop                                              ; $548e: $00
	ld   [$e817], sp                                 ; $548f: $08 $17 $e8
	inc  b                                           ; $5492: $04
	rlca                                             ; $5493: $07
	db   $e3                                         ; $5494: $e3
	rst  $20                                         ; $5495: $e7
	rlca                                             ; $5496: $07
	rla                                              ; $5497: $17
	add  sp, -$7b                                    ; $5498: $e8 $85
	nop                                              ; $549a: $00
	ld   bc, $5fa0                                   ; $549b: $01 $a0 $5f
	add  b                                           ; $549e: $80
	nop                                              ; $549f: $00
	inc  b                                           ; $54a0: $04
	rra                                              ; $54a1: $1f
	sbc  a                                           ; $54a2: $9f
	add  b                                           ; $54a3: $80
	and  b                                           ; $54a4: $a0
	ld   e, a                                        ; $54a5: $5f
	add  [hl]                                        ; $54a6: $86
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	rst  $38                                         ; $54a9: $ff
	add  b                                           ; $54aa: $80
	nop                                              ; $54ab: $00
	add  b                                           ; $54ac: $80
	push af                                          ; $54ad: $f5
	add  b                                           ; $54ae: $80
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	rst  $38                                         ; $54b1: $ff
	add  l                                           ; $54b2: $85
	nop                                              ; $54b3: $00
	ld   bc, $f50a                                   ; $54b4: $01 $0a $f5
	add  b                                           ; $54b7: $80
	nop                                              ; $54b8: $00
	add  b                                           ; $54b9: $80
	ld   d, l                                        ; $54ba: $55
	add  b                                           ; $54bb: $80
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	rst  $38                                         ; $54be: $ff
	add  l                                           ; $54bf: $85
	nop                                              ; $54c0: $00
	ld   bc, $55aa                                   ; $54c1: $01 $aa $55
	add  b                                           ; $54c4: $80
	nop                                              ; $54c5: $00
	add  b                                           ; $54c6: $80
	ld   d, l                                        ; $54c7: $55
	add  b                                           ; $54c8: $80
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	rst  $38                                         ; $54cb: $ff
	add  l                                           ; $54cc: $85
	nop                                              ; $54cd: $00
	ld   bc, $55aa                                   ; $54ce: $01 $aa $55
	add  b                                           ; $54d1: $80
	nop                                              ; $54d2: $00
	add  b                                           ; $54d3: $80
	ld   d, l                                        ; $54d4: $55
	add  b                                           ; $54d5: $80
	nop                                              ; $54d6: $00
	nop                                              ; $54d7: $00
	rst  $38                                         ; $54d8: $ff
	add  l                                           ; $54d9: $85
	nop                                              ; $54da: $00
	ld   bc, $13ec                                   ; $54db: $01 $ec $13
	add  b                                           ; $54de: $80
	inc  b                                           ; $54df: $04
	add  b                                           ; $54e0: $80
	ld   c, b                                        ; $54e1: $48
	add  b                                           ; $54e2: $80
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	ldh  a, [$8d]                                    ; $54e5: $f0 $8d
	rrca                                             ; $54e7: $0f
	sbc  a                                           ; $54e8: $9f
	rst  $38                                         ; $54e9: $ff
	add  b                                           ; $54ea: $80
	ldh  [$80], a                                    ; $54eb: $e0 $80
	db   $fc                                         ; $54ed: $fc
	adc  d                                           ; $54ee: $8a
	rst  $38                                         ; $54ef: $ff
	add  h                                           ; $54f0: $84
	nop                                              ; $54f1: $00
	adc  b                                           ; $54f2: $88
	ld   a, a                                        ; $54f3: $7f
	add  h                                           ; $54f4: $84
	nop                                              ; $54f5: $00
	adc  b                                           ; $54f6: $88
	rst  $38                                         ; $54f7: $ff
	add  h                                           ; $54f8: $84
	nop                                              ; $54f9: $00
	adc  b                                           ; $54fa: $88
	rst  $38                                         ; $54fb: $ff
	add  e                                           ; $54fc: $83
	nop                                              ; $54fd: $00
	inc  b                                           ; $54fe: $04

Jump_07c_54ff:
	inc  c                                           ; $54ff: $0c
	sbc  l                                           ; $5500: $9d
	adc  c                                           ; $5501: $89
	cp   c                                           ; $5502: $b9
	add  c                                           ; $5503: $81
	add  b                                           ; $5504: $80
	and  b                                           ; $5505: $a0
	ld   bc, $82a2                                   ; $5506: $01 $a2 $82
	add  b                                           ; $5509: $80
	adc  d                                           ; $550a: $8a
	add  h                                           ; $550b: $84
	nop                                              ; $550c: $00
	add  b                                           ; $550d: $80

jr_07c_550e:
	sbc  b                                           ; $550e: $98
	dec  b                                           ; $550f: $05
	ld   hl, $0720                                   ; $5510: $21 $20 $07
	ld   c, $18                                      ; $5513: $0e $18
	db   $10                                         ; $5515: $10
	add  b                                           ; $5516: $80
	ld   c, $84                                      ; $5517: $0e $84
	rla                                              ; $5519: $17
	add  hl, bc                                      ; $551a: $09
	db   $10                                         ; $551b: $10
	ld   e, e                                        ; $551c: $5b
	dec  bc                                          ; $551d: $0b

jr_07c_551e:
	dec  hl                                          ; $551e: $2b
	dec  bc                                          ; $551f: $0b
	ld   [hl], h                                     ; $5520: $74
	inc  b                                           ; $5521: $04
	jr   jr_07c_5524                                 ; $5522: $18 $00

jr_07c_5524:
	ld   [$a084], sp                                 ; $5524: $08 $84 $a0
	inc  bc                                          ; $5527: $03
	nop                                              ; $5528: $00
	inc  bc                                          ; $5529: $03
	nop                                              ; $552a: $00
	ld   [bc], a                                     ; $552b: $02
	add  c                                           ; $552c: $81
	nop                                              ; $552d: $00
	ld   [bc], a                                     ; $552e: $02
	add  hl, bc                                      ; $552f: $09
	nop                                              ; $5530: $00
	ld   [$0084], sp                                 ; $5531: $08 $84 $00
	add  b                                           ; $5534: $80
	ld   h, h                                        ; $5535: $64
	add  b                                           ; $5536: $80
	ld   [hl-], a                                    ; $5537: $32
	add  b                                           ; $5538: $80
	sbc  b                                           ; $5539: $98
	add  b                                           ; $553a: $80
	add  b                                           ; $553b: $80
	add  b                                           ; $553c: $80
	adc  $83                                         ; $553d: $ce $83
	nop                                              ; $553f: $00
	ld   b, $60                                      ; $5540: $06 $60
	ld   a, c                                        ; $5542: $79
	ld   c, e                                        ; $5543: $4b
	ld   e, a                                        ; $5544: $5f
	rrca                                             ; $5545: $0f
	dec  de                                          ; $5546: $1b
	add  hl, bc                                      ; $5547: $09
	add  c                                           ; $5548: $81
	ld   d, e                                        ; $5549: $53
	nop                                              ; $554a: $00
	ld   b, e                                        ; $554b: $43
	add  h                                           ; $554c: $84
	nop                                              ; $554d: $00
	adc  b                                           ; $554e: $88
	rst  $38                                         ; $554f: $ff
	add  h                                           ; $5550: $84
	nop                                              ; $5551: $00
	adc  b                                           ; $5552: $88

jr_07c_5553:
	rst  $38                                         ; $5553: $ff
	add  b                                           ; $5554: $80
	nop                                              ; $5555: $00
	add  b                                           ; $5556: $80
	inc  bc                                          ; $5557: $03
	add  b                                           ; $5558: $80
	rrca                                             ; $5559: $0f
	add  a                                           ; $555a: $87
	rst  $28                                         ; $555b: $ef
	nop                                              ; $555c: $00
	rra                                              ; $555d: $1f
	adc  l                                           ; $555e: $8d
	rrca                                             ; $555f: $0f
	add  h                                           ; $5560: $84
	rst  $38                                         ; $5561: $ff
	add  b                                           ; $5562: $80
	cp   $80                                         ; $5563: $fe $80
	db   $fc                                         ; $5565: $fc
	add  b                                           ; $5566: $80
	ld   hl, sp-$80                                  ; $5567: $f8 $80
	ldh  a, [$80]                                    ; $5569: $f0 $80
	ret  nz                                          ; $556b: $c0

	add  b                                           ; $556c: $80
	rst  JumpTable                                         ; $556d: $df
	add  b                                           ; $556e: $80
	sbc  a                                           ; $556f: $9f
	adc  d                                           ; $5570: $8a
	rra                                              ; $5571: $1f
	adc  a                                           ; $5572: $8f
	rst  $38                                         ; $5573: $ff
	adc  [hl]                                        ; $5574: $8e
	ld   a, a                                        ; $5575: $7f
	sbc  [hl]                                        ; $5576: $9e
	rst  $38                                         ; $5577: $ff
	add  b                                           ; $5578: $80
	jp   z, $ea03                                    ; $5579: $ca $03 $ea

	add  sp, -$16                                    ; $557c: $e8 $ea
	add  sp, -$80                                    ; $557e: $e8 $80

Jump_07c_5580:
	jp   nc, $d080                                   ; $5580: $d2 $80 $d0

	add  b                                           ; $5583: $80
	add  b                                           ; $5584: $80
	add  b                                           ; $5585: $80
	db   $f4                                         ; $5586: $f4
	inc  b                                           ; $5587: $04
	ldh  a, [$fc]                                    ; $5588: $f0 $fc
	ld   a, h                                        ; $558a: $7c
	ld   b, b                                        ; $558b: $40
	jr   nc, jr_07c_550e                             ; $558c: $30 $80

	nop                                              ; $558e: $00
	ld   a, [bc]                                     ; $558f: $0a
	inc  c                                           ; $5590: $0c
	adc  h                                           ; $5591: $8c
	dec  b                                           ; $5592: $05
	rst  ToBoot                                         ; $5593: $c7
	jp   nz, $b9a3                                   ; $5594: $c2 $a3 $b9

	add  d                                           ; $5597: $82
	sub  [hl]                                        ; $5598: $96
	add  b                                           ; $5599: $80
	ld   c, $80                                      ; $559a: $0e $80
	jr   nz, jr_07c_551e                             ; $559c: $20 $80

	inc  e                                           ; $559e: $1c
	ld   bc, $4c0c                                   ; $559f: $01 $0c $4c
	add  b                                           ; $55a2: $80
	ld   [hl], b                                     ; $55a3: $70
	inc  de                                          ; $55a4: $13
	ld   a, h                                        ; $55a5: $7c
	ld   bc, $243d                                   ; $55a6: $01 $3d $24
	db   $fc                                         ; $55a9: $fc
	ld   b, c                                        ; $55aa: $41
	db   $fd                                         ; $55ab: $fd
	ld   h, h                                        ; $55ac: $64
	jr   nc, jr_07c_55bf                             ; $55ad: $30 $10

	ldh  [rP1], a                                    ; $55af: $e0 $00
	ret  c                                           ; $55b1: $d8

	ld   a, [de]                                     ; $55b2: $1a
	ldh  a, [c]                                      ; $55b3: $f2
	or   h                                           ; $55b4: $b4
	call z, $f900                                    ; $55b5: $cc $00 $f9
	dec  c                                           ; $55b8: $0d
	add  b                                           ; $55b9: $80
	ld   [hl], e                                     ; $55ba: $73
	ld   bc, $463a                                   ; $55bb: $01 $3a $46
	add  b                                           ; $55be: $80

jr_07c_55bf:
	ld   h, d                                        ; $55bf: $62
	dec  c                                           ; $55c0: $0d
	jr   jr_07c_55d9                                 ; $55c1: $18 $16

	ld   c, $46                                      ; $55c3: $0e $46
	ld   c, a                                        ; $55c5: $4f
	add  l                                           ; $55c6: $85
	sbc  [hl]                                        ; $55c7: $9e
	ld   a, [bc]                                     ; $55c8: $0a
	inc  a                                           ; $55c9: $3c
	inc  e                                           ; $55ca: $1c
	db   $f4                                         ; $55cb: $f4
	inc  a                                           ; $55cc: $3c
	ret  z                                           ; $55cd: $c8

	jr   z, jr_07c_5553                              ; $55ce: $28 $83

	ld   d, e                                        ; $55d0: $53
	ld   bc, $db9b                                   ; $55d1: $01 $9b $db
	add  b                                           ; $55d4: $80
	inc  de                                          ; $55d5: $13
	add  c                                           ; $55d6: $81
	inc  bc                                          ; $55d7: $03
	add  b                                           ; $55d8: $80

jr_07c_55d9:
	rra                                              ; $55d9: $1f
	add  b                                           ; $55da: $80
	ccf                                              ; $55db: $3f
	sbc  [hl]                                        ; $55dc: $9e
	rst  $38                                         ; $55dd: $ff
	adc  l                                           ; $55de: $8d
	rst  $28                                         ; $55df: $ef
	nop                                              ; $55e0: $00
	rra                                              ; $55e1: $1f
	add  c                                           ; $55e2: $81
	rrca                                             ; $55e3: $0f
	add  b                                           ; $55e4: $80
	inc  c                                           ; $55e5: $0c
	add  b                                           ; $55e6: $80
	ld   [$0086], sp                                 ; $55e7: $08 $86 $00
	add  b                                           ; $55ea: $80
	add  b                                           ; $55eb: $80
	add  [hl]                                        ; $55ec: $86
	nop                                              ; $55ed: $00
	nop                                              ; $55ee: $00
	inc  bc                                          ; $55ef: $03
	add  e                                           ; $55f0: $83
	ld   [bc], a                                     ; $55f1: $02
	nop                                              ; $55f2: $00
	ld   e, $82                                      ; $55f3: $1e $82
	rra                                              ; $55f5: $1f
	add  e                                           ; $55f6: $83
	inc  e                                           ; $55f7: $1c
	nop                                              ; $55f8: $00
	db   $fc                                         ; $55f9: $fc
	add  e                                           ; $55fa: $83
	nop                                              ; $55fb: $00
	nop                                              ; $55fc: $00
	rst  $38                                         ; $55fd: $ff
	add  c                                           ; $55fe: $81
	nop                                              ; $55ff: $00
	dec  b                                           ; $5600: $05
	ldh  a, [rP1]                                    ; $5601: $f0 $00

jr_07c_5603:
	inc  c                                           ; $5603: $0c
	nop                                              ; $5604: $00
	ldh  [c], a                                      ; $5605: $e2
	ldh  [$80], a                                    ; $5606: $e0 $80
	ld   hl, sp-$80                                  ; $5608: $f8 $80
	nop                                              ; $560a: $00
	ld   [bc], a                                     ; $560b: $02
	ret  c                                           ; $560c: $d8

	nop                                              ; $560d: $00
	reti                                             ; $560e: $d9


	adc  [hl]                                        ; $560f: $8e
	ld   a, a                                        ; $5610: $7f
	add  h                                           ; $5611: $84
	rst  $38                                         ; $5612: $ff
	nop                                              ; $5613: $00
	cp   $86                                         ; $5614: $fe $86
	rst  $38                                         ; $5616: $ff
	nop                                              ; $5617: $00
	cp   $84                                         ; $5618: $fe $84
	rst  $38                                         ; $561a: $ff
	adc  b                                           ; $561b: $88
	rrca                                             ; $561c: $0f
	add  c                                           ; $561d: $81
	ld   hl, sp-$76                                  ; $561e: $f8 $8a
	ld   sp, hl                                      ; $5620: $f9
	ld   [bc], a                                     ; $5621: $02
	ld   h, [hl]                                     ; $5622: $66
	cp   h                                           ; $5623: $bc
	or   h                                           ; $5624: $b4
	add  b                                           ; $5625: $80
	cp   [hl]                                        ; $5626: $be
	ld   bc, $3aba                                   ; $5627: $01 $ba $3a
	add  l                                           ; $562a: $85
	cp   b                                           ; $562b: $b8
	ld   a, [bc]                                     ; $562c: $0a
	ld   a, $18                                      ; $562d: $3e $18
	ld   [hl], h                                     ; $562f: $74
	ld   h, c                                        ; $5630: $61
	add  c                                           ; $5631: $81
	db   $fc                                         ; $5632: $fc
	ld   a, b                                        ; $5633: $78
	db   $e4                                         ; $5634: $e4
	sub  b                                           ; $5635: $90
	ldh  a, [$60]                                    ; $5636: $f0 $60

jr_07c_5638:
	add  b                                           ; $5638: $80
	ld   a, h                                        ; $5639: $7c
	add  b                                           ; $563a: $80
	inc  e                                           ; $563b: $1c
	dec  c                                           ; $563c: $0d
	nop                                              ; $563d: $00
	ld   a, h                                        ; $563e: $7c
	nop                                              ; $563f: $00
	cp   $86                                         ; $5640: $fe $86
	ld   b, $e0                                      ; $5642: $06 $e0
	add  d                                           ; $5644: $82
	cp   $fc                                         ; $5645: $fe $fc
	ld   h, d                                        ; $5647: $62
	ld   [bc], a                                     ; $5648: $02
	ld   a, [hl]                                     ; $5649: $7e
	ld   a, h                                        ; $564a: $7c
	add  b                                           ; $564b: $80
	ld   a, b                                        ; $564c: $78
	ld   a, [bc]                                     ; $564d: $0a
	nop                                              ; $564e: $00
	ld   a, h                                        ; $564f: $7c
	nop                                              ; $5650: $00
	ldh  [c], a                                      ; $5651: $e2
	ld   [de], a                                     ; $5652: $12
	ldh  [c], a                                      ; $5653: $e2
	or   $96                                         ; $5654: $f6 $96
	or   $66                                         ; $5656: $f6 $66
	or   $81                                         ; $5658: $f6 $81
	di                                               ; $565a: $f3
	dec  b                                           ; $565b: $05
	inc  sp                                          ; $565c: $33
	ld   sp, $d733                                   ; $565d: $31 $33 $d7
	inc  bc                                          ; $5660: $03
	ld   [bc], a                                     ; $5661: $02
	adc  [hl]                                        ; $5662: $8e
	ccf                                              ; $5663: $3f
	add  h                                           ; $5664: $84
	rst  $38                                         ; $5665: $ff
	nop                                              ; $5666: $00
	pop  bc                                          ; $5667: $c1
	add  [hl]                                        ; $5668: $86
	jp   $c100                                       ; $5669: $c3 $00 $c1


	adc  [hl]                                        ; $566c: $8e

jr_07c_566d:
	rst  $38                                         ; $566d: $ff
	adc  l                                           ; $566e: $8d
	rst  $28                                         ; $566f: $ef

jr_07c_5670:
	nop                                              ; $5670: $00
	db   $10                                         ; $5671: $10
	adc  l                                           ; $5672: $8d
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	rlca                                             ; $5675: $07
	add  e                                           ; $5676: $83
	ld   b, $84                                      ; $5677: $06 $84
	ld   c, $81                                      ; $5679: $0e $81
	ld   e, $02                                      ; $567b: $1e $02
	nop                                              ; $567d: $00
	ldh  a, [rAUD1SWEEP]                             ; $567e: $f0 $10
	adc  d                                           ; $5680: $8a
	jr   c, jr_07c_5603                              ; $5681: $38 $80

	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	ret  c                                           ; $5685: $d8

	add  c                                           ; $5686: $81
	reti                                             ; $5687: $d9


	nop                                              ; $5688: $00
	ld   bc, $d982                                   ; $5689: $01 $82 $d9
	add  d                                           ; $568c: $82
	db   $db                                         ; $568d: $db
	add  b                                           ; $568e: $80
	ret  nz                                          ; $568f: $c0

	add  b                                           ; $5690: $80
	nop                                              ; $5691: $00
	add  d                                           ; $5692: $82
	ld   a, a                                        ; $5693: $7f
	inc  bc                                          ; $5694: $03
	ld   h, e                                        ; $5695: $63
	ld   l, a                                        ; $5696: $6f
	ld   b, e                                        ; $5697: $43
	ld   d, e                                        ; $5698: $53
	add  b                                           ; $5699: $80
	inc  de                                          ; $569a: $13
	ld   bc, $0d11                                   ; $569b: $01 $11 $0d
	add  d                                           ; $569e: $82
	nop                                              ; $569f: $00
	adc  [hl]                                        ; $56a0: $8e
	rst  $38                                         ; $56a1: $ff
	add  d                                           ; $56a2: $82
	rra                                              ; $56a3: $1f
	add  c                                           ; $56a4: $81
	cp   a                                           ; $56a5: $bf
	add  b                                           ; $56a6: $80
	rst  $38                                         ; $56a7: $ff
	add  c                                           ; $56a8: $81
	cp   a                                           ; $56a9: $bf
	add  c                                           ; $56aa: $81
	rst  $38                                         ; $56ab: $ff
	nop                                              ; $56ac: $00
	cp   $8d                                         ; $56ad: $fe $8d
	ld   sp, hl                                      ; $56af: $f9
	nop                                              ; $56b0: $00
	ld   l, [hl]                                     ; $56b1: $6e
	add  h                                           ; $56b2: $84
	jr   c, jr_07c_5638                              ; $56b3: $38 $83

	ld   a, b                                        ; $56b5: $78
	inc  b                                           ; $56b6: $04
	jr   c, @+$7a                                    ; $56b7: $38 $78

	ld   a, [hl]                                     ; $56b9: $7e
	ld   e, b                                        ; $56ba: $58
	db   $f4                                         ; $56bb: $f4
	adc  e                                           ; $56bc: $8b
	nop                                              ; $56bd: $00
	ld   [bc], a                                     ; $56be: $02
	ld   a, h                                        ; $56bf: $7c
	nop                                              ; $56c0: $00
	ld   a, h                                        ; $56c1: $7c
	adc  e                                           ; $56c2: $8b
	nop                                              ; $56c3: $00
	ld   [bc], a                                     ; $56c4: $02
	ld   a, h                                        ; $56c5: $7c
	nop                                              ; $56c6: $00
	push hl                                          ; $56c7: $e5
	adc  c                                           ; $56c8: $89
	inc  sp                                          ; $56c9: $33
	ld   [bc], a                                     ; $56ca: $02
	ld   [hl], $30                                   ; $56cb: $36 $30
	ret  nc                                          ; $56cd: $d0

	add  b                                           ; $56ce: $80
	nop                                              ; $56cf: $00
	adc  [hl]                                        ; $56d0: $8e
	ccf                                              ; $56d1: $3f
	add  d                                           ; $56d2: $82
	db   $e3                                         ; $56d3: $e3
	add  c                                           ; $56d4: $81
	rst  $30                                         ; $56d5: $f7
	add  b                                           ; $56d6: $80
	rst  $38                                         ; $56d7: $ff
	add  c                                           ; $56d8: $81
	rst  $30                                         ; $56d9: $f7
	sub  d                                           ; $56da: $92
	rst  $38                                         ; $56db: $ff
	adc  b                                           ; $56dc: $88
	rst  $28                                         ; $56dd: $ef
	add  e                                           ; $56de: $83
	rst  $20                                         ; $56df: $e7
	nop                                              ; $56e0: $00
	jr   jr_07c_5670                                 ; $56e1: $18 $8d

	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	rra                                              ; $56e5: $1f
	add  b                                           ; $56e6: $80
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	db   $10                                         ; $56e9: $10
	adc  b                                           ; $56ea: $88
	jr   nc, jr_07c_566d                             ; $56eb: $30 $80

	ld   [hl], b                                     ; $56ed: $70
	nop                                              ; $56ee: $00
	ldh  a, [$8d]                                    ; $56ef: $f0 $8d
	nop                                              ; $56f1: $00
	add  b                                           ; $56f2: $80
	cpl                                              ; $56f3: $2f
	add  b                                           ; $56f4: $80
	dec  l                                           ; $56f5: $2d
	add  b                                           ; $56f6: $80
	inc  l                                           ; $56f7: $2c
	add  b                                           ; $56f8: $80
	inc  bc                                          ; $56f9: $03
	add  d                                           ; $56fa: $82
	cp   a                                           ; $56fb: $bf
	add  d                                           ; $56fc: $82
	or   a                                           ; $56fd: $b7
	ld   bc, $8f8e                                   ; $56fe: $01 $8e $8f
	add  b                                           ; $5701: $80
	adc  e                                           ; $5702: $8b
	add  b                                           ; $5703: $80
	dec  bc                                          ; $5704: $0b
	add  b                                           ; $5705: $80
	jp   $cf80                                       ; $5706: $c3 $80 $cf


	add  d                                           ; $5709: $82
	ld   c, e                                        ; $570a: $4b
	add  b                                           ; $570b: $80
	inc  bc                                          ; $570c: $03
	nop                                              ; $570d: $00
	ld   bc, $ff9d                                   ; $570e: $01 $9d $ff
	nop                                              ; $5711: $00
	cp   $8d                                         ; $5712: $fe $8d
	ld   sp, hl                                      ; $5714: $f9
	ld   [bc], a                                     ; $5715: $02
	ld   c, $58                                      ; $5716: $0e $58
	ld   c, b                                        ; $5718: $48
	add  [hl]                                        ; $5719: $86
	ld   e, b                                        ; $571a: $58
	dec  b                                           ; $571b: $05
	ld   b, b                                        ; $571c: $40
	jr   nz, jr_07c_571f                             ; $571d: $20 $00

jr_07c_571f:
	add  [hl]                                        ; $571f: $86
	nop                                              ; $5720: $00
	ld   a, h                                        ; $5721: $7c
	adc  e                                           ; $5722: $8b
	nop                                              ; $5723: $00
	ld   [bc], a                                     ; $5724: $02
	ld   a, h                                        ; $5725: $7c
	nop                                              ; $5726: $00
	ld   a, h                                        ; $5727: $7c
	adc  e                                           ; $5728: $8b
	nop                                              ; $5729: $00
	ld   [bc], a                                     ; $572a: $02
	ld   a, h                                        ; $572b: $7c
	nop                                              ; $572c: $00
	pop  hl                                          ; $572d: $e1
	add  c                                           ; $572e: $81
	ld   sp, $3080                                   ; $572f: $31 $80 $30
	nop                                              ; $5732: $00
	ld   hl, $1185                                   ; $5733: $21 $85 $11
	ld   [bc], a                                     ; $5736: $02
	pop  af                                          ; $5737: $f1
	ld   de, $801f                                   ; $5738: $11 $1f $80
	nop                                              ; $573b: $00
	nop                                              ; $573c: $00
	rra                                              ; $573d: $1f
	add  b                                           ; $573e: $80
	nop                                              ; $573f: $00
	ld   b, $bf                                      ; $5740: $06 $bf
	jr   nz, jr_07c_576a                             ; $5742: $20 $26

	jr   nz, jr_07c_575f                             ; $5744: $20 $19

	nop                                              ; $5746: $00
	dec  sp                                          ; $5747: $3b
	add  c                                           ; $5748: $81
	ld   [hl+], a                                    ; $5749: $22
	nop                                              ; $574a: $00
	ld   h, [hl]                                     ; $574b: $66
	add  b                                           ; $574c: $80
	nop                                              ; $574d: $00
	nop                                              ; $574e: $00
	rst  $38                                         ; $574f: $ff
	add  b                                           ; $5750: $80
	nop                                              ; $5751: $00
	ld   b, $ff                                      ; $5752: $06 $ff
	nop                                              ; $5754: $00
	ld   h, [hl]                                     ; $5755: $66
	nop                                              ; $5756: $00
	sbc  c                                           ; $5757: $99
	nop                                              ; $5758: $00
	cp   e                                           ; $5759: $bb
	add  c                                           ; $575a: $81
	ld   [hl+], a                                    ; $575b: $22
	nop                                              ; $575c: $00
	ld   h, [hl]                                     ; $575d: $66
	add  b                                           ; $575e: $80

jr_07c_575f:
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	rst  $38                                         ; $5761: $ff
	add  b                                           ; $5762: $80
	nop                                              ; $5763: $00
	ld   b, $ff                                      ; $5764: $06 $ff
	nop                                              ; $5766: $00
	ld   h, [hl]                                     ; $5767: $66
	nop                                              ; $5768: $00
	sbc  c                                           ; $5769: $99

jr_07c_576a:
	nop                                              ; $576a: $00
	cp   e                                           ; $576b: $bb
	add  c                                           ; $576c: $81
	ld   [hl+], a                                    ; $576d: $22
	nop                                              ; $576e: $00
	sbc  c                                           ; $576f: $99
	add  d                                           ; $5770: $82
	daa                                              ; $5771: $27
	ld   bc, $4707                                   ; $5772: $01 $07 $47
	add  c                                           ; $5775: $81
	ld   h, a                                        ; $5776: $67
	ld   [bc], a                                     ; $5777: $02
	daa                                              ; $5778: $27
	rlca                                             ; $5779: $07
	ld   b, a                                        ; $577a: $47
	add  c                                           ; $577b: $81
	ld   h, a                                        ; $577c: $67
	nop                                              ; $577d: $00
	ret  c                                           ; $577e: $d8

	adc  l                                           ; $577f: $8d
	nop                                              ; $5780: $00
	nop                                              ; $5781: $00
	ld   a, a                                        ; $5782: $7f
	add  e                                           ; $5783: $83
	ld   [hl], b                                     ; $5784: $70
	add  a                                           ; $5785: $87
	ldh  a, [$8f]                                    ; $5786: $f0 $8f
	nop                                              ; $5788: $00

jr_07c_5789:
	add  b                                           ; $5789: $80
	cp   b                                           ; $578a: $b8
	add  b                                           ; $578b: $80
	rlca                                             ; $578c: $07
	add  b                                           ; $578d: $80
	cp   a                                           ; $578e: $bf
	add  d                                           ; $578f: $82
	or   a                                           ; $5790: $b7
	add  b                                           ; $5791: $80
	cp   h                                           ; $5792: $bc
	dec  b                                           ; $5793: $05
	and  b                                           ; $5794: $a0
	and  e                                           ; $5795: $a3
	inc  bc                                          ; $5796: $03
	rra                                              ; $5797: $1f
	ret  nc                                          ; $5798: $d0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5799: $cf
	add  b                                           ; $579a: $80
	res  0, b                                        ; $579b: $cb $80
	ld   c, h                                        ; $579d: $4c
	inc  b                                           ; $579e: $04
	ld   b, c                                        ; $579f: $41
	ld   b, e                                        ; $57a0: $43
	add  c                                           ; $57a1: $81
	adc  a                                           ; $57a2: $8f
	inc  c                                           ; $57a3: $0c
	add  b                                           ; $57a4: $80
	ld   a, b                                        ; $57a5: $78
	inc  bc                                          ; $57a6: $03
	ldh  a, [$8f]                                    ; $57a7: $f0 $8f
	rst  $38                                         ; $57a9: $ff
	add  b                                           ; $57aa: $80
	add  e                                           ; $57ab: $83
	nop                                              ; $57ac: $00
	inc  b                                           ; $57ad: $04
	add  b                                           ; $57ae: $80
	ld   sp, hl                                      ; $57af: $f9
	adc  c                                           ; $57b0: $89
	pop  af                                          ; $57b1: $f1
	ld   bc, $0380                                   ; $57b2: $01 $80 $03
	add  b                                           ; $57b5: $80
	inc  c                                           ; $57b6: $0c
	add  b                                           ; $57b7: $80
	ldh  a, [$81]                                    ; $57b8: $f0 $81
	nop                                              ; $57ba: $00
	add  b                                           ; $57bb: $80
	dec  b                                           ; $57bc: $05
	dec  b                                           ; $57bd: $05
	ld   [$d0f8], sp                                 ; $57be: $08 $f8 $d0
	ldh  [$c4], a                                    ; $57c1: $e0 $c4
	inc  b                                           ; $57c3: $04
	add  b                                           ; $57c4: $80
	inc  [hl]                                        ; $57c5: $34
	add  b                                           ; $57c6: $80
	db   $f4                                         ; $57c7: $f4
	nop                                              ; $57c8: $00
	ld   bc, $0081                                   ; $57c9: $01 $81 $00
	add  b                                           ; $57cc: $80
	inc  a                                           ; $57cd: $3c
	add  d                                           ; $57ce: $82
	inc  b                                           ; $57cf: $04
	nop                                              ; $57d0: $00
	dec  b                                           ; $57d1: $05
	add  e                                           ; $57d2: $83
	inc  b                                           ; $57d3: $04
	add  b                                           ; $57d4: $80
	sub  b                                           ; $57d5: $90
	add  b                                           ; $57d6: $80
	or   h                                           ; $57d7: $b4
	add  b                                           ; $57d8: $80
	and  b                                           ; $57d9: $a0
	add  d                                           ; $57da: $82
	add  b                                           ; $57db: $80
	add  h                                           ; $57dc: $84
	adc  b                                           ; $57dd: $88
	add  b                                           ; $57de: $80
	nop                                              ; $57df: $00
	add  b                                           ; $57e0: $80
	daa                                              ; $57e1: $27
	add  b                                           ; $57e2: $80
	nop                                              ; $57e3: $00
	add  b                                           ; $57e4: $80
	ld   e, [hl]                                     ; $57e5: $5e
	add  h                                           ; $57e6: $84
	ld   b, $80                                      ; $57e7: $06 $80
	ld   d, $80                                      ; $57e9: $16 $80
	nop                                              ; $57eb: $00
	add  b                                           ; $57ec: $80
	ld   b, c                                        ; $57ed: $41
	add  b                                           ; $57ee: $80
	nop                                              ; $57ef: $00
	add  b                                           ; $57f0: $80
	or   c                                           ; $57f1: $b1
	add  h                                           ; $57f2: $84
	nop                                              ; $57f3: $00
	add  d                                           ; $57f4: $82
	ld   bc, $7180                                   ; $57f5: $01 $80 $71
	add  b                                           ; $57f8: $80
	ld   bc, $f180                                   ; $57f9: $01 $80 $f1
	add  b                                           ; $57fc: $80
	ld   h, c                                        ; $57fd: $61
	add  b                                           ; $57fe: $80
	ld   h, b                                        ; $57ff: $60
	add  b                                           ; $5800: $80
	ld   h, c                                        ; $5801: $61
	add  b                                           ; $5802: $80
	ld   b, e                                        ; $5803: $43
	add  d                                           ; $5804: $82
	ld   [hl+], a                                    ; $5805: $22
	add  b                                           ; $5806: $80
	jr   nz, jr_07c_5789                             ; $5807: $20 $80

	inc  hl                                          ; $5809: $23
	add  b                                           ; $580a: $80
	rra                                              ; $580b: $1f
	rlca                                             ; $580c: $07
	jr   c, jr_07c_584e                              ; $580d: $38 $3f

	or   a                                           ; $580f: $b7
	cp   a                                           ; $5810: $bf
	rst  $10                                         ; $5811: $d7
	rst  JumpTable                                         ; $5812: $df
	dec  h                                           ; $5813: $25
	ld   [hl+], a                                    ; $5814: $22
	add  b                                           ; $5815: $80
	daa                                              ; $5816: $27
	dec  c                                           ; $5817: $0d
	jr   nz, jr_07c_5859                             ; $5818: $20 $3f

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $581a: $cf
	rst  JumpTable                                         ; $581b: $df
	rra                                              ; $581c: $1f
	rst  JumpTable                                         ; $581d: $df
	rst  $10                                         ; $581e: $d7
	rst  JumpTable                                         ; $581f: $df
	ret                                              ; $5820: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5821: $cf
	jp   nz, $e2c3                                   ; $5822: $c2 $c3 $e2

	ld   [hl+], a                                    ; $5825: $22
	add  b                                           ; $5826: $80
	rst  $38                                         ; $5827: $ff
	inc  b                                           ; $5828: $04
	rrca                                             ; $5829: $0f
	rst  $38                                         ; $582a: $ff
	pop  af                                          ; $582b: $f1
	rst  $38                                         ; $582c: $ff
	cp   $83                                         ; $582d: $fe $83
	rst  $38                                         ; $582f: $ff
	inc  bc                                          ; $5830: $03
	ccf                                              ; $5831: $3f
	rst  $38                                         ; $5832: $ff
	ccf                                              ; $5833: $3f
	nop                                              ; $5834: $00
	add  b                                           ; $5835: $80
	add  b                                           ; $5836: $80
	add  b                                           ; $5837: $80
	ldh  [$80], a                                    ; $5838: $e0 $80
	ldh  a, [$09]                                    ; $583a: $f0 $09
	jr   nc, @-$0e                                   ; $583c: $30 $f0

	pop  de                                          ; $583e: $d1
	pop  af                                          ; $583f: $f1
	rst  ToBoot                                         ; $5840: $c7
	rst  $28                                         ; $5841: $ef
	adc  c                                           ; $5842: $89
	rst  JumpTable                                         ; $5843: $df
	ld   l, [hl]                                     ; $5844: $6e
	nop                                              ; $5845: $00
	add  b                                           ; $5846: $80
	rrca                                             ; $5847: $0f
	add  b                                           ; $5848: $80
	nop                                              ; $5849: $00
	add  b                                           ; $584a: $80
	ld   c, $80                                      ; $584b: $0e $80
	nop                                              ; $584d: $00

jr_07c_584e:
	add  h                                           ; $584e: $84
	inc  b                                           ; $584f: $04
	ld   bc, $40b0                                   ; $5850: $01 $b0 $40
	add  b                                           ; $5853: $80
	nop                                              ; $5854: $00
	add  b                                           ; $5855: $80
	ld   b, b                                        ; $5856: $40
	sub  d                                           ; $5857: $92
	nop                                              ; $5858: $00

jr_07c_5859:
	add  b                                           ; $5859: $80
	ldh  [c], a                                      ; $585a: $e2
	add  d                                           ; $585b: $82
	add  b                                           ; $585c: $80
	sbc  b                                           ; $585d: $98
	nop                                              ; $585e: $00
	add  b                                           ; $585f: $80
	ld   a, [hl]                                     ; $5860: $7e
	add  d                                           ; $5861: $82
	nop                                              ; $5862: $00
	add  d                                           ; $5863: $82
	inc  bc                                          ; $5864: $03
	add  d                                           ; $5865: $82
	ld   [de], a                                     ; $5866: $12
	add  b                                           ; $5867: $80
	inc  de                                          ; $5868: $13
	add  b                                           ; $5869: $80
	ld   [de], a                                     ; $586a: $12
	add  b                                           ; $586b: $80
	db   $10                                         ; $586c: $10
	add  b                                           ; $586d: $80
	nop                                              ; $586e: $00
	add  d                                           ; $586f: $82
	db   $e4                                         ; $5870: $e4
	add  b                                           ; $5871: $80
	ldh  a, [rTAC]                                   ; $5872: $f0 $07
	pop  hl                                          ; $5874: $e1
	ldh  [$86], a                                    ; $5875: $e0 $86
	add  b                                           ; $5877: $80
	jr   jr_07c_587a                                 ; $5878: $18 $00

jr_07c_587a:
	jr   nz, jr_07c_587c                             ; $587a: $20 $00

jr_07c_587c:
	add  b                                           ; $587c: $80
	ccf                                              ; $587d: $3f
	nop                                              ; $587e: $00
	dec  sp                                          ; $587f: $3b
	add  c                                           ; $5880: $81
	inc  b                                           ; $5881: $04
	add  b                                           ; $5882: $80
	nop                                              ; $5883: $00
	nop                                              ; $5884: $00
	cp   $85                                         ; $5885: $fe $85
	nop                                              ; $5887: $00
	add  b                                           ; $5888: $80
	cp   $01                                         ; $5889: $fe $01
	ld   d, [hl]                                     ; $588b: $56
	xor  b                                           ; $588c: $a8
	add  b                                           ; $588d: $80
	ret  z                                           ; $588e: $c8

	add  d                                           ; $588f: $82
	xor  b                                           ; $5890: $a8
	add  b                                           ; $5891: $80
	and  b                                           ; $5892: $a0
	add  b                                           ; $5893: $80
	add  b                                           ; $5894: $80
	add  b                                           ; $5895: $80
	add  a                                           ; $5896: $87
	add  b                                           ; $5897: $80
	add  b                                           ; $5898: $80
	add  b                                           ; $5899: $80
	ld   h, $80                                      ; $589a: $26 $80
	ld   d, h                                        ; $589c: $54
	add  b                                           ; $589d: $80
	inc  h                                           ; $589e: $24
	add  b                                           ; $589f: $80
	db   $10                                         ; $58a0: $10
	add  b                                           ; $58a1: $80
	ld   [hl+], a                                    ; $58a2: $22
	add  b                                           ; $58a3: $80
	ld   b, $80                                      ; $58a4: $06 $80
	rst  $38                                         ; $58a6: $ff
	add  b                                           ; $58a7: $80
	nop                                              ; $58a8: $00
	add  b                                           ; $58a9: $80
	ld   [bc], a                                     ; $58aa: $02
	add  b                                           ; $58ab: $80
	dec  b                                           ; $58ac: $05
	add  b                                           ; $58ad: $80
	ld   [bc], a                                     ; $58ae: $02
	add  b                                           ; $58af: $80
	dec  b                                           ; $58b0: $05
	add  b                                           ; $58b1: $80
	ld   [bc], a                                     ; $58b2: $02
	add  b                                           ; $58b3: $80
	nop                                              ; $58b4: $00
	add  b                                           ; $58b5: $80
	rst  $38                                         ; $58b6: $ff
	add  b                                           ; $58b7: $80
	nop                                              ; $58b8: $00
	add  b                                           ; $58b9: $80
	ld   c, a                                        ; $58ba: $4f
	add  c                                           ; $58bb: $81
	ld   e, [hl]                                     ; $58bc: $5e
	ld   [bc], a                                     ; $58bd: $02
	ld   e, a                                        ; $58be: $5f
	dec  e                                           ; $58bf: $1d
	rra                                              ; $58c0: $1f
	add  d                                           ; $58c1: $82
	dec  sp                                          ; $58c2: $3b
	ld   bc, $3733                                   ; $58c3: $01 $33 $37
	add  b                                           ; $58c6: $80
	ld   [hl], a                                     ; $58c7: $77
	inc  b                                           ; $58c8: $04
	sub  l                                           ; $58c9: $95
	sub  e                                           ; $58ca: $93
	ld   bc, $7fff                                   ; $58cb: $01 $ff $7f
	add  c                                           ; $58ce: $81
	rst  $38                                         ; $58cf: $ff
	ld   [$ff9f], sp                                 ; $58d0: $08 $9f $ff
	rst  JumpTable                                         ; $58d3: $df
	rst  $38                                         ; $58d4: $ff
	xor  a                                           ; $58d5: $af
	rst  $38                                         ; $58d6: $ff
	db   $fd                                         ; $58d7: $fd
	rst  $38                                         ; $58d8: $ff
	ld   l, l                                        ; $58d9: $6d
	add  b                                           ; $58da: $80
	nop                                              ; $58db: $00
	adc  h                                           ; $58dc: $8c
	rst  $38                                         ; $58dd: $ff
	add  b                                           ; $58de: $80
	ld   [bc], a                                     ; $58df: $02
	adc  e                                           ; $58e0: $8b
	rst  $38                                         ; $58e1: $ff
	add  hl, bc                                      ; $58e2: $09
	rst  $20                                         ; $58e3: $e7
	ccf                                              ; $58e4: $3f
	ld   sp, $bcbf                                   ; $58e5: $31 $bf $bc
	rst  JumpTable                                         ; $58e8: $df
	adc  $f6                                         ; $58e9: $ce $f6
	ldh  a, [c]                                      ; $58eb: $f2
	db   $fc                                         ; $58ec: $fc
	add  b                                           ; $58ed: $80
	rst  $38                                         ; $58ee: $ff
	nop                                              ; $58ef: $00
	db   $fc                                         ; $58f0: $fc
	add  c                                           ; $58f1: $81
	rst  $38                                         ; $58f2: $ff
	di                                               ; $58f3: $f3
	ld   bc, $0086                                   ; $58f4: $01 $86 $00
	add  [hl]                                        ; $58f7: $86
	rrca                                             ; $58f8: $0f
	add  [hl]                                        ; $58f9: $86
	nop                                              ; $58fa: $00
	inc  b                                           ; $58fb: $04
	ldh  [rIE], a                                    ; $58fc: $e0 $ff
	db   $e3                                         ; $58fe: $e3
	rst  $38                                         ; $58ff: $ff
	db   $fc                                         ; $5900: $fc
	add  c                                           ; $5901: $81
	rst  $38                                         ; $5902: $ff
	add  [hl]                                        ; $5903: $86
	nop                                              ; $5904: $00
	ld   bc, $9e61                                   ; $5905: $01 $61 $9e
	add  b                                           ; $5908: $80
	di                                               ; $5909: $f3
	inc  b                                           ; $590a: $04
	ld   a, h                                        ; $590b: $7c
	db   $fc                                         ; $590c: $fc
	adc  a                                           ; $590d: $8f
	rst  $38                                         ; $590e: $ff
	rrca                                             ; $590f: $0f
	add  l                                           ; $5910: $85
	nop                                              ; $5911: $00
	ld   bc, $00ff                                   ; $5912: $01 $ff $00
	add  b                                           ; $5915: $80
	rst  $38                                         ; $5916: $ff
	add  b                                           ; $5917: $80
	nop                                              ; $5918: $00
	add  c                                           ; $5919: $81
	rst  $38                                         ; $591a: $ff
	add  l                                           ; $591b: $85
	nop                                              ; $591c: $00
	ld   bc, $00ff                                   ; $591d: $01 $ff $00
	add  b                                           ; $5920: $80
	rst  $38                                         ; $5921: $ff
	add  b                                           ; $5922: $80
	nop                                              ; $5923: $00
	add  c                                           ; $5924: $81
	rst  $38                                         ; $5925: $ff
	add  l                                           ; $5926: $85
	nop                                              ; $5927: $00
	ld   bc, $00ff                                   ; $5928: $01 $ff $00
	add  b                                           ; $592b: $80
	rst  $38                                         ; $592c: $ff
	add  b                                           ; $592d: $80
	nop                                              ; $592e: $00
	add  c                                           ; $592f: $81
	rst  $38                                         ; $5930: $ff
	add  l                                           ; $5931: $85
	nop                                              ; $5932: $00
	ld   bc, $10ef                                   ; $5933: $01 $ef $10
	add  b                                           ; $5936: $80
	ldh  a, [$80]                                    ; $5937: $f0 $80
	nop                                              ; $5939: $00
	add  b                                           ; $593a: $80
	ldh  a, [rP1]                                    ; $593b: $f0 $00
	rst  $38                                         ; $593d: $ff
	add  l                                           ; $593e: $85
	nop                                              ; $593f: $00
	nop                                              ; $5940: $00
	rst  $38                                         ; $5941: $ff
	add  l                                           ; $5942: $85
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	rst  $38                                         ; $5945: $ff
	add  l                                           ; $5946: $85
	nop                                              ; $5947: $00
	nop                                              ; $5948: $00
	ld   hl, sp-$7f                                  ; $5949: $f8 $81
	rlca                                             ; $594b: $07
	add  d                                           ; $594c: $82
	ld   b, $00                                      ; $594d: $06 $00
	rst  $38                                         ; $594f: $ff

jr_07c_5950:
	add  l                                           ; $5950: $85
	nop                                              ; $5951: $00
	ld   bc, $00ff                                   ; $5952: $01 $ff $00
	add  b                                           ; $5955: $80
	cp   a                                           ; $5956: $bf
	add  b                                           ; $5957: $80
	ret  nz                                          ; $5958: $c0

	add  b                                           ; $5959: $80
	ld   l, a                                        ; $595a: $6f
	nop                                              ; $595b: $00
	rst  $38                                         ; $595c: $ff
	add  l                                           ; $595d: $85
	nop                                              ; $595e: $00
	ld   bc, $00ff                                   ; $595f: $01 $ff $00
	add  b                                           ; $5962: $80
	rst  $38                                         ; $5963: $ff
	add  b                                           ; $5964: $80
	inc  bc                                          ; $5965: $03
	add  c                                           ; $5966: $81
	rst  $38                                         ; $5967: $ff
	add  l                                           ; $5968: $85
	nop                                              ; $5969: $00
	nop                                              ; $596a: $00
	ret  nz                                          ; $596b: $c0

	add  d                                           ; $596c: $82
	ccf                                              ; $596d: $3f
	nop                                              ; $596e: $00
	ret  nz                                          ; $596f: $c0

	adc  b                                           ; $5970: $88
	nop                                              ; $5971: $00
	ld   bc, $c03f                                   ; $5972: $01 $3f $c0
	add  b                                           ; $5975: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5976: $cf
	ld   bc, $7c9c                                   ; $5977: $01 $9c $7c
	add  c                                           ; $597a: $81
	rra                                              ; $597b: $1f
	add  l                                           ; $597c: $85
	nop                                              ; $597d: $00
	ld   bc, $00ff                                   ; $597e: $01 $ff $00
	add  b                                           ; $5981: $80
	db   $fd                                         ; $5982: $fd
	add  b                                           ; $5983: $80
	inc  bc                                          ; $5984: $03
	add  b                                           ; $5985: $80
	push af                                          ; $5986: $f5
	nop                                              ; $5987: $00
	rst  $38                                         ; $5988: $ff
	add  l                                           ; $5989: $85
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	rst  $38                                         ; $598c: $ff
	add  l                                           ; $598d: $85
	nop                                              ; $598e: $00
	nop                                              ; $598f: $00
	rst  $38                                         ; $5990: $ff
	add  l                                           ; $5991: $85
	nop                                              ; $5992: $00
	nop                                              ; $5993: $00
	cp   $81                                         ; $5994: $fe $81
	ld   bc, $0080                                   ; $5996: $01 $80 $00
	add  b                                           ; $5999: $80
	ld   bc, $f000                                   ; $599a: $01 $00 $f0
	adc  l                                           ; $599d: $8d
	rrca                                             ; $599e: $0f
	adc  [hl]                                        ; $599f: $8e
	rst  $38                                         ; $59a0: $ff
	nop                                              ; $59a1: $00
	db   $fd                                         ; $59a2: $fd
	adc  l                                           ; $59a3: $8d
	rst  $38                                         ; $59a4: $ff
	nop                                              ; $59a5: $00
	db   $fd                                         ; $59a6: $fd
	sub  l                                           ; $59a7: $95
	rst  $38                                         ; $59a8: $ff
	add  b                                           ; $59a9: $80
	db   $fd                                         ; $59aa: $fd
	add  b                                           ; $59ab: $80
	ld   a, [$f580]                                  ; $59ac: $fa $80 $f5
	add  b                                           ; $59af: $80
	add  sp, -$80                                    ; $59b0: $e8 $80
	rst  $38                                         ; $59b2: $ff
	add  b                                           ; $59b3: $80
	ld   a, [$d480]                                  ; $59b4: $fa $80 $d4
	add  b                                           ; $59b7: $80
	xor  b                                           ; $59b8: $a8
	add  b                                           ; $59b9: $80
	ld   b, b                                        ; $59ba: $40
	add  b                                           ; $59bb: $80
	add  b                                           ; $59bc: $80
	add  d                                           ; $59bd: $82
	nop                                              ; $59be: $00
	ld   bc, $404f                                   ; $59bf: $01 $4f $40
	add  b                                           ; $59c2: $80
	add  b                                           ; $59c3: $80
	adc  d                                           ; $59c4: $8a
	nop                                              ; $59c5: $00
	nop                                              ; $59c6: $00
	ldh  a, [$8d]                                    ; $59c7: $f0 $8d
	nop                                              ; $59c9: $00
	adc  [hl]                                        ; $59ca: $8e
	ld   b, $01                                      ; $59cb: $06 $01
	scf                                              ; $59cd: $37
	jr   c, jr_07c_5950                              ; $59ce: $38 $80

	ld   e, h                                        ; $59d0: $5c
	inc  b                                           ; $59d1: $04
	ld   c, a                                        ; $59d2: $4f
	ld   b, [hl]                                     ; $59d3: $46
	ld   d, [hl]                                     ; $59d4: $56
	ld   d, e                                        ; $59d5: $53
	ld   b, e                                        ; $59d6: $43

jr_07c_59d7:
	add  b                                           ; $59d7: $80
	ld   d, c                                        ; $59d8: $51
	add  e                                           ; $59d9: $83
	ld   d, l                                        ; $59da: $55
	nop                                              ; $59db: $00
	ld   [$0081], a                                  ; $59dc: $ea $81 $00
	nop                                              ; $59df: $00
	rst  $38                                         ; $59e0: $ff
	add  c                                           ; $59e1: $81
	nop                                              ; $59e2: $00
	inc  b                                           ; $59e3: $04
	ld   a, [hl]                                     ; $59e4: $7e
	ld   a, a                                        ; $59e5: $7f
	ld   h, c                                        ; $59e6: $61
	ld   a, a                                        ; $59e7: $7f
	rra                                              ; $59e8: $1f
	add  b                                           ; $59e9: $80
	rst  $38                                         ; $59ea: $ff
	ld   [bc], a                                     ; $59eb: $02
	nop                                              ; $59ec: $00
	rst  $38                                         ; $59ed: $ff
	nop                                              ; $59ee: $00
	add  c                                           ; $59ef: $81
	add  b                                           ; $59f0: $80
	inc  b                                           ; $59f1: $04
	nop                                              ; $59f2: $00
	ld   b, b                                        ; $59f3: $40
	nop                                              ; $59f4: $00
	jr   nz, jr_07c_59d7                             ; $59f5: $20 $e0

	add  e                                           ; $59f7: $83
	rst  $38                                         ; $59f8: $ff
	ld   bc, $ff00                                   ; $59f9: $01 $00 $ff
	add  b                                           ; $59fc: $80
	db   $10                                         ; $59fd: $10
	rlca                                             ; $59fe: $07
	jr   nc, @+$11                                   ; $59ff: $30 $0f

	nop                                              ; $5a01: $00
	ccf                                              ; $5a02: $3f
	ld   a, a                                        ; $5a03: $7f
	adc  a                                           ; $5a04: $8f
	rst  $38                                         ; $5a05: $ff
	ldh  a, [$82]                                    ; $5a06: $f0 $82
	rst  $38                                         ; $5a08: $ff
	ld   [bc], a                                     ; $5a09: $02
	nop                                              ; $5a0a: $00
	ld   sp, hl                                      ; $5a0b: $f9
	add  hl, de                                      ; $5a0c: $19
	add  b                                           ; $5a0d: $80
	ld   de, $f501                                   ; $5a0e: $11 $01 $f5
	dec  d                                           ; $5a11: $15
	add  h                                           ; $5a12: $84
	db   $fd                                         ; $5a13: $fd
	nop                                              ; $5a14: $00
	dec  c                                           ; $5a15: $0d
	add  b                                           ; $5a16: $80
	db   $fd                                         ; $5a17: $fd
	nop                                              ; $5a18: $00
	dec  c                                           ; $5a19: $0d
	adc  [hl]                                        ; $5a1a: $8e
	nop                                              ; $5a1b: $00
	nop                                              ; $5a1c: $00
	ld   bc, $008d                                   ; $5a1d: $01 $8d $00
	nop                                              ; $5a20: $00
	pop  af                                          ; $5a21: $f1

jr_07c_5a22:
	adc  l                                           ; $5a22: $8d
	rrca                                             ; $5a23: $0f
	adc  [hl]                                        ; $5a24: $8e
	rst  $38                                         ; $5a25: $ff
	nop                                              ; $5a26: $00
	db   $fd                                         ; $5a27: $fd
	adc  l                                           ; $5a28: $8d
	rst  $38                                         ; $5a29: $ff
	nop                                              ; $5a2a: $00
	db   $fd                                         ; $5a2b: $fd
	add  a                                           ; $5a2c: $87
	rst  $38                                         ; $5a2d: $ff
	add  b                                           ; $5a2e: $80
	cp   $80                                         ; $5a2f: $fe $80
	db   $fd                                         ; $5a31: $fd
	add  b                                           ; $5a32: $80
	ld   a, [rRAMG]                                  ; $5a33: $fa $00 $00
	add  c                                           ; $5a36: $81
	rst  $38                                         ; $5a37: $ff
	nop                                              ; $5a38: $00
	ret  nz                                          ; $5a39: $c0

	adc  b                                           ; $5a3a: $88
	rst  $38                                         ; $5a3b: $ff
	ld   bc, $e0df                                   ; $5a3c: $01 $df $e0
	add  c                                           ; $5a3f: $81
	rst  $38                                         ; $5a40: $ff
	nop                                              ; $5a41: $00
	ccf                                              ; $5a42: $3f
	add  c                                           ; $5a43: $81
	ret  nz                                          ; $5a44: $c0

	add  b                                           ; $5a45: $80
	ldh  [$80], a                                    ; $5a46: $e0 $80
	ret  nz                                          ; $5a48: $c0

	add  b                                           ; $5a49: $80
	add  b                                           ; $5a4a: $80
	add  b                                           ; $5a4b: $80
	nop                                              ; $5a4c: $00
	nop                                              ; $5a4d: $00
	rrca                                             ; $5a4e: $0f
	add  c                                           ; $5a4f: $81
	ldh  a, [rP1]                                    ; $5a50: $f0 $00
	nop                                              ; $5a52: $00
	add  e                                           ; $5a53: $83
	ldh  a, [rP1]                                    ; $5a54: $f0 $00
	ret  nz                                          ; $5a56: $c0

	add  e                                           ; $5a57: $83
	ldh  a, [rP1]                                    ; $5a58: $f0 $00
	ret  nz                                          ; $5a5a: $c0

	adc  l                                           ; $5a5b: $8d
	nop                                              ; $5a5c: $00
	add  d                                           ; $5a5d: $82
	ld   b, $80                                      ; $5a5e: $06 $80
	rlca                                             ; $5a60: $07
	adc  b                                           ; $5a61: $88
	ld   b, $00                                      ; $5a62: $06 $00
	ld   b, b                                        ; $5a64: $40
	add  c                                           ; $5a65: $81
	ld   d, l                                        ; $5a66: $55
	inc  bc                                          ; $5a67: $03
	push bc                                          ; $5a68: $c5
	push de                                          ; $5a69: $d5
	ld   [hl], b                                     ; $5a6a: $70
	ld   [hl], l                                     ; $5a6b: $75
	add  b                                           ; $5a6c: $80
	dec  e                                           ; $5a6d: $1d
	add  b                                           ; $5a6e: $80
	and  l                                           ; $5a6f: $a5
	add  b                                           ; $5a70: $80
	and  c                                           ; $5a71: $a1
	add  b                                           ; $5a72: $80
	xor  c                                           ; $5a73: $a9
	add  l                                           ; $5a74: $85
	nop                                              ; $5a75: $00
	add  b                                           ; $5a76: $80
	ld   de, $1582                                   ; $5a77: $11 $82 $15
	add  d                                           ; $5a7a: $82
	sub  l                                           ; $5a7b: $95
	add  h                                           ; $5a7c: $84
	nop                                              ; $5a7d: $00
	add  b                                           ; $5a7e: $80
	ld   [$9c86], sp                                 ; $5a7f: $08 $86 $9c
	add  d                                           ; $5a82: $82
	nop                                              ; $5a83: $00
	add  b                                           ; $5a84: $80
	ld   [$4c80], sp                                 ; $5a85: $08 $80 $4c
	add  b                                           ; $5a88: $80
	db   $ec                                         ; $5a89: $ec
	add  e                                           ; $5a8a: $83
	db   $ed                                         ; $5a8b: $ed
	nop                                              ; $5a8c: $00
	ldh  [$8a], a                                    ; $5a8d: $e0 $8a
	dec  c                                           ; $5a8f: $0d
	add  c                                           ; $5a90: $81
	dec  l                                           ; $5a91: $2d
	nop                                              ; $5a92: $00
	jr   nz, jr_07c_5a22                             ; $5a93: $20 $8d

	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	ld   bc, $008d                                   ; $5a97: $01 $8d $00
	nop                                              ; $5a9a: $00
	pop  af                                          ; $5a9b: $f1
	add  c                                           ; $5a9c: $81
	rrca                                             ; $5a9d: $0f
	add  b                                           ; $5a9e: $80
	rlca                                             ; $5a9f: $07
	add  b                                           ; $5aa0: $80
	dec  bc                                          ; $5aa1: $0b
	add  b                                           ; $5aa2: $80
	dec  b                                           ; $5aa3: $05
	add  b                                           ; $5aa4: $80
	ld   [bc], a                                     ; $5aa5: $02
	add  b                                           ; $5aa6: $80
	ld   bc, $0080                                   ; $5aa7: $01 $80 $00
	adc  [hl]                                        ; $5aaa: $8e
	rst  $38                                         ; $5aab: $ff

jr_07c_5aac:
	nop                                              ; $5aac: $00
	db   $fd                                         ; $5aad: $fd
	adc  l                                           ; $5aae: $8d
	rst  $38                                         ; $5aaf: $ff
	ld   bc, $fcfe                                   ; $5ab0: $01 $fe $fc
	add  b                                           ; $5ab3: $80
	ld   a, [$f480]                                  ; $5ab4: $fa $80 $f4
	add  b                                           ; $5ab7: $80
	ld   hl, sp-$80                                  ; $5ab8: $f8 $80
	ldh  a, [$80]                                    ; $5aba: $f0 $80
	ld   hl, sp-$80                                  ; $5abc: $f8 $80
	ldh  a, [$80]                                    ; $5abe: $f0 $80
	add  sp, $00                                     ; $5ac0: $e8 $00
	ccf                                              ; $5ac2: $3f
	add  h                                           ; $5ac3: $84
	rst  JumpTable                                         ; $5ac4: $df
	add  [hl]                                        ; $5ac5: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ac6: $cf
	ld   b, $c7                                      ; $5ac7: $06 $c7
	jr   jr_07c_5aac                                 ; $5ac9: $18 $e1

	pop  bc                                          ; $5acb: $c1
	jp   $dfd3                                       ; $5acc: $c3 $d3 $df


	add  b                                           ; $5acf: $80
	sbc  a                                           ; $5ad0: $9f
	ld   [bc], a                                     ; $5ad1: $02
	rst  $28                                         ; $5ad2: $ef
	rst  $38                                         ; $5ad3: $ff
	rst  JumpTable                                         ; $5ad4: $df
	add  c                                           ; $5ad5: $81
	rst  $38                                         ; $5ad6: $ff
	inc  bc                                          ; $5ad7: $03
	cp   a                                           ; $5ad8: $bf
	rst  $38                                         ; $5ad9: $ff
	ld   [hl], b                                     ; $5ada: $70
	ldh  a, [$80]                                    ; $5adb: $f0 $80
	ldh  [$80], a                                    ; $5add: $e0 $80
	ret  nz                                          ; $5adf: $c0

	add  b                                           ; $5ae0: $80
	db   $10                                         ; $5ae1: $10
	add  b                                           ; $5ae2: $80
	ldh  [$80], a                                    ; $5ae3: $e0 $80
	ret  nz                                          ; $5ae5: $c0

	add  b                                           ; $5ae6: $80
	add  b                                           ; $5ae7: $80
	sub  b                                           ; $5ae8: $90
	nop                                              ; $5ae9: $00
	adc  [hl]                                        ; $5aea: $8e
	ld   b, $00                                      ; $5aeb: $06 $00
	adc  c                                           ; $5aed: $89
	add  a                                           ; $5aee: $87
	xor  c                                           ; $5aef: $a9
	ld   bc, $e9c9                                   ; $5af0: $01 $c9 $e9
	add  b                                           ; $5af3: $80
	dec  e                                           ; $5af4: $1d
	ld   [bc], a                                     ; $5af5: $02
	add  c                                           ; $5af6: $81
	ld   hl, $8ea0                                   ; $5af7: $21 $a0 $8e
	sub  l                                           ; $5afa: $95
	adc  [hl]                                        ; $5afb: $8e
	sbc  h                                           ; $5afc: $9c
	adc  l                                           ; $5afd: $8d
	db   $ed                                         ; $5afe: $ed
	nop                                              ; $5aff: $00
	ldh  [$8d], a                                    ; $5b00: $e0 $8d
	xor  l                                           ; $5b02: $ad
	nop                                              ; $5b03: $00
	and  b                                           ; $5b04: $a0
	adc  l                                           ; $5b05: $8d
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	ld   bc, $008d                                   ; $5b08: $01 $8d $00
	nop                                              ; $5b0b: $00
	cp   $8d                                         ; $5b0c: $fe $8d
	nop                                              ; $5b0e: $00
	add  b                                           ; $5b0f: $80
	ld   a, a                                        ; $5b10: $7f
	add  b                                           ; $5b11: $80
	ccf                                              ; $5b12: $3f
	add  b                                           ; $5b13: $80
	ld   e, a                                        ; $5b14: $5f
	add  b                                           ; $5b15: $80
	ccf                                              ; $5b16: $3f
	add  b                                           ; $5b17: $80
	rra                                              ; $5b18: $1f
	add  b                                           ; $5b19: $80
	rrca                                             ; $5b1a: $0f
	add  b                                           ; $5b1b: $80
	rlca                                             ; $5b1c: $07
	add  b                                           ; $5b1d: $80
	rrca                                             ; $5b1e: $0f
	nop                                              ; $5b1f: $00
	db   $fd                                         ; $5b20: $fd
	adc  l                                           ; $5b21: $8d
	rst  $38                                         ; $5b22: $ff
	ld   bc, $d0d2                                   ; $5b23: $01 $d2 $d0
	add  b                                           ; $5b26: $80
	ldh  [$80], a                                    ; $5b27: $e0 $80
	ret  nc                                          ; $5b29: $d0

	add  b                                           ; $5b2a: $80
	ldh  [$03], a                                    ; $5b2b: $e0 $03
	ret  nz                                          ; $5b2d: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2e: $cf
	push hl                                          ; $5b2f: $e5
	rst  $28                                         ; $5b30: $ef
	add  b                                           ; $5b31: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b32: $cf
	add  b                                           ; $5b33: $80
	sbc  a                                           ; $5b34: $9f
	ld   bc, $ff05                                   ; $5b35: $01 $05 $ff
	add  b                                           ; $5b38: $80
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	rst  $38                                         ; $5b3b: $ff
	add  d                                           ; $5b3c: $82
	nop                                              ; $5b3d: $00
	ld   bc, $40c0                                   ; $5b3e: $01 $c0 $40
	add  e                                           ; $5b41: $83
	ret  nz                                          ; $5b42: $c0

	ld   bc, $ff40                                   ; $5b43: $01 $40 $ff
	add  b                                           ; $5b46: $80
	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	rst  $38                                         ; $5b49: $ff
	adc  c                                           ; $5b4a: $89
	nop                                              ; $5b4b: $00
	ld   bc, $f00f                                   ; $5b4c: $01 $0f $f0
	add  b                                           ; $5b4f: $80
	nop                                              ; $5b50: $00
	nop                                              ; $5b51: $00
	ldh  a, [$89]                                    ; $5b52: $f0 $89
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	ldh  a, [$8d]                                    ; $5b56: $f0 $8d
	nop                                              ; $5b58: $00
	adc  [hl]                                        ; $5b59: $8e
	ld   b, $00                                      ; $5b5a: $06 $00
	adc  c                                           ; $5b5c: $89
	add  a                                           ; $5b5d: $87
	add  hl, hl                                      ; $5b5e: $29
	add  b                                           ; $5b5f: $80
	dec  l                                           ; $5b60: $2d
	ld   bc, $f151                                   ; $5b61: $01 $51 $f1
	add  b                                           ; $5b64: $80
	add  hl, bc                                      ; $5b65: $09
	nop                                              ; $5b66: $00
	nop                                              ; $5b67: $00
	adc  [hl]                                        ; $5b68: $8e
	sub  l                                           ; $5b69: $95
	adc  [hl]                                        ; $5b6a: $8e
	sbc  h                                           ; $5b6b: $9c
	adc  c                                           ; $5b6c: $89
	db   $ed                                         ; $5b6d: $ed
	nop                                              ; $5b6e: $00
	sub  d                                           ; $5b6f: $92
	add  c                                           ; $5b70: $81
	rst  $38                                         ; $5b71: $ff
	nop                                              ; $5b72: $00
	adc  l                                           ; $5b73: $8d
	adc  c                                           ; $5b74: $89
	xor  l                                           ; $5b75: $ad
	nop                                              ; $5b76: $00
	ld   l, l                                        ; $5b77: $6d
	add  c                                           ; $5b78: $81
	db   $ed                                         ; $5b79: $ed
	nop                                              ; $5b7a: $00
	jr   nz, @-$71                                   ; $5b7b: $20 $8d

	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	ld   bc, $008d                                   ; $5b7f: $01 $8d $00
	nop                                              ; $5b82: $00
	cp   $8c                                         ; $5b83: $fe $8c
	nop                                              ; $5b85: $00
	ld   [bc], a                                     ; $5b86: $02
	rrca                                             ; $5b87: $0f
	ld   [$8007], sp                                 ; $5b88: $08 $07 $80
	inc  bc                                          ; $5b8b: $03
	add  b                                           ; $5b8c: $80
	ld   bc, $0380                                   ; $5b8d: $01 $80 $03
	add  b                                           ; $5b90: $80
	ld   bc, $0006                                   ; $5b91: $01 $06 $00
	inc  bc                                          ; $5b94: $03
	nop                                              ; $5b95: $00
	ld   a, h                                        ; $5b96: $7c
	ld   [bc], a                                     ; $5b97: $02
	add  d                                           ; $5b98: $82
	ld   [bc], a                                     ; $5b99: $02
	add  c                                           ; $5b9a: $81
	rst  $38                                         ; $5b9b: $ff
	add  b                                           ; $5b9c: $80
	db   $fd                                         ; $5b9d: $fd
	dec  b                                           ; $5b9e: $05
	db   $fc                                         ; $5b9f: $fc
	db   $fd                                         ; $5ba0: $fd

jr_07c_5ba1:
	ret  nz                                          ; $5ba1: $c0

	db   $fc                                         ; $5ba2: $fc
	ld   bc, $80c1                                   ; $5ba3: $01 $c1 $80
	add  hl, hl                                      ; $5ba6: $29
	add  b                                           ; $5ba7: $80
	xor  c                                           ; $5ba8: $a9
	inc  bc                                          ; $5ba9: $03
	dec  h                                           ; $5baa: $25
	rst  JumpTable                                         ; $5bab: $df
	or   e                                           ; $5bac: $b3
	cp   a                                           ; $5bad: $bf
	add  b                                           ; $5bae: $80
	rst  $38                                         ; $5baf: $ff
	inc  bc                                          ; $5bb0: $03
	ccf                                              ; $5bb1: $3f
	rst  $38                                         ; $5bb2: $ff
	add  hl, hl                                      ; $5bb3: $29
	rra                                              ; $5bb4: $1f
	add  b                                           ; $5bb5: $80
	ld   b, b                                        ; $5bb6: $40
	add  b                                           ; $5bb7: $80
	ld   e, [hl]                                     ; $5bb8: $5e
	ld   [bc], a                                     ; $5bb9: $02
	ld   d, [hl]                                     ; $5bba: $56
	ld   e, d                                        ; $5bbb: $5a
	ld   [hl], e                                     ; $5bbc: $73
	add  c                                           ; $5bbd: $81
	ldh  [$03], a                                    ; $5bbe: $e0 $03
	ldh  a, [$e0]                                    ; $5bc0: $f0 $e0
	ld   b, b                                        ; $5bc2: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc3: $cf
	add  b                                           ; $5bc4: $80
	add  b                                           ; $5bc5: $80
	ld   [bc], a                                     ; $5bc6: $02
	ld   [$9717], sp                                 ; $5bc7: $08 $17 $97
	add  c                                           ; $5bca: $81
	ld   [hl], a                                     ; $5bcb: $77
	add  l                                           ; $5bcc: $85
	nop                                              ; $5bcd: $00
	nop                                              ; $5bce: $00
	rst  $38                                         ; $5bcf: $ff
	add  b                                           ; $5bd0: $80
	nop                                              ; $5bd1: $00
	nop                                              ; $5bd2: $00
	rra                                              ; $5bd3: $1f
	add  e                                           ; $5bd4: $83
	ldh  [rP1], a                                    ; $5bd5: $e0 $00
	rrca                                             ; $5bd7: $0f
	add  h                                           ; $5bd8: $84
	nop                                              ; $5bd9: $00
	nop                                              ; $5bda: $00
	ldh  a, [$80]                                    ; $5bdb: $f0 $80
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	db   $10                                         ; $5bdf: $10
	add  e                                           ; $5be0: $83
	ldh  [rP1], a                                    ; $5be1: $e0 $00
	ldh  a, [$8d]                                    ; $5be3: $f0 $8d
	nop                                              ; $5be5: $00
	adc  [hl]                                        ; $5be6: $8e
	ld   b, $80                                      ; $5be7: $06 $80
	add  hl, hl                                      ; $5be9: $29
	add  e                                           ; $5bea: $83
	xor  c                                           ; $5beb: $a9
	add  b                                           ; $5bec: $80
	adc  c                                           ; $5bed: $89
	nop                                              ; $5bee: $00
	add  hl, bc                                      ; $5bef: $09
	add  b                                           ; $5bf0: $80
	dec  bc                                          ; $5bf1: $0b
	add  b                                           ; $5bf2: $80
	dec  c                                           ; $5bf3: $0d
	add  b                                           ; $5bf4: $80
	add  hl, de                                      ; $5bf5: $19
	nop                                              ; $5bf6: $00
	and  b                                           ; $5bf7: $a0
	add  [hl]                                        ; $5bf8: $86
	sub  l                                           ; $5bf9: $95
	add  [hl]                                        ; $5bfa: $86
	sub  h                                           ; $5bfb: $94
	adc  [hl]                                        ; $5bfc: $8e
	sbc  h                                           ; $5bfd: $9c
	add  b                                           ; $5bfe: $80
	add  b                                           ; $5bff: $80
	ld   [bc], a                                     ; $5c00: $02
	sbc  a                                           ; $5c01: $9f
	add  b                                           ; $5c02: $80
	sbc  a                                           ; $5c03: $9f
	add  c                                           ; $5c04: $81
	add  b                                           ; $5c05: $80
	ld   [bc], a                                     ; $5c06: $02
	sbc  a                                           ; $5c07: $9f
	add  b                                           ; $5c08: $80
	sbc  a                                           ; $5c09: $9f
	add  c                                           ; $5c0a: $81
	add  b                                           ; $5c0b: $80
	ld   bc, $929f                                   ; $5c0c: $01 $9f $92
	adc  l                                           ; $5c0f: $8d
	dec  l                                           ; $5c10: $2d
	nop                                              ; $5c11: $00
	jr   nz, jr_07c_5ba1                             ; $5c12: $20 $8d

	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	ld   bc, $0086                                   ; $5c16: $01 $86 $00
	nop                                              ; $5c19: $00
	ld   bc, $0080                                   ; $5c1a: $01 $80 $00
	add  d                                           ; $5c1d: $82
	ld   bc, $f001                                   ; $5c1e: $01 $01 $f0
	nop                                              ; $5c21: $00
	add  h                                           ; $5c22: $84
	ld   a, [bc]                                     ; $5c23: $0a
	add  b                                           ; $5c24: $80
	dec  bc                                          ; $5c25: $0b
	add  h                                           ; $5c26: $84
	ld   a, [bc]                                     ; $5c27: $0a
	ld   bc, $2ada                                   ; $5c28: $01 $da $2a
	add  e                                           ; $5c2b: $83
	xor  d                                           ; $5c2c: $aa
	dec  b                                           ; $5c2d: $05
	xor  e                                           ; $5c2e: $ab
	xor  c                                           ; $5c2f: $a9
	and  a                                           ; $5c30: $a7
	sub  a                                           ; $5c31: $97
	rst  $20                                         ; $5c32: $e7
	ld   a, a                                        ; $5c33: $7f
	add  c                                           ; $5c34: $81
	nop                                              ; $5c35: $00
	add  c                                           ; $5c36: $81
	xor  c                                           ; $5c37: $a9
	inc  bc                                          ; $5c38: $03
	xor  b                                           ; $5c39: $a8
	and  b                                           ; $5c3a: $a0
	cp   [hl]                                        ; $5c3b: $be
	sbc  $83                                         ; $5c3c: $de $83
	ld   a, $00                                      ; $5c3e: $3e $00
	rst  $38                                         ; $5c40: $ff
	add  c                                           ; $5c41: $81
	nop                                              ; $5c42: $00
	ld   [bc], a                                     ; $5c43: $02
	ld   b, $7a                                      ; $5c44: $06 $7a
	ld   a, [$7a80]                                  ; $5c46: $fa $80 $7a
	inc  bc                                          ; $5c49: $03
	ld   a, [hl]                                     ; $5c4a: $7e
	halt                                             ; $5c4b: $76
	ld   a, [hl]                                     ; $5c4c: $7e
	ld   [hl], b                                     ; $5c4d: $70
	add  c                                           ; $5c4e: $81
	ld   a, b                                        ; $5c4f: $78
	nop                                              ; $5c50: $00
	ld   hl, sp-$7f                                  ; $5c51: $f8 $81
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	adc  b                                           ; $5c55: $88
	add  e                                           ; $5c56: $83
	ld   [hl], a                                     ; $5c57: $77
	nop                                              ; $5c58: $00
	rst  $30                                         ; $5c59: $f7
	add  d                                           ; $5c5a: $82
	ld   [hl], a                                     ; $5c5b: $77
	ld   bc, $7c74                                   ; $5c5c: $01 $74 $7c
	add  c                                           ; $5c5f: $81
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	rra                                              ; $5c62: $1f
	add  c                                           ; $5c63: $81
	ldh  [rDIV], a                                   ; $5c64: $e0 $04
	pop  hl                                          ; $5c66: $e1
	ldh  [$ee], a                                    ; $5c67: $e0 $ee
	ldh  [$f0], a                                    ; $5c69: $e0 $f0
	add  b                                           ; $5c6b: $80
	add  b                                           ; $5c6c: $80
	add  c                                           ; $5c6d: $81
	nop                                              ; $5c6e: $00
	add  b                                           ; $5c6f: $80
	inc  bc                                          ; $5c70: $03
	ld   [bc], a                                     ; $5c71: $02
	db   $10                                         ; $5c72: $10
	ldh  [$f0], a                                    ; $5c73: $e0 $f0
	add  b                                           ; $5c75: $80
	ret  nz                                          ; $5c76: $c0

	add  l                                           ; $5c77: $85
	nop                                              ; $5c78: $00
	add  b                                           ; $5c79: $80
	ld   [hl], b                                     ; $5c7a: $70
	add  b                                           ; $5c7b: $80
	ldh  a, [$8e]                                    ; $5c7c: $f0 $8e
	nop                                              ; $5c7e: $00
	adc  [hl]                                        ; $5c7f: $8e
	ld   b, $04                                      ; $5c80: $06 $04
	pop  hl                                          ; $5c82: $e1
	ld   h, c                                        ; $5c83: $61
	ld   bc, $0581                                   ; $5c84: $01 $81 $05
	add  d                                           ; $5c87: $82
	ld   bc, $2182                                   ; $5c88: $01 $82 $21
	add  c                                           ; $5c8b: $81
	and  c                                           ; $5c8c: $a1
	nop                                              ; $5c8d: $00
	and  h                                           ; $5c8e: $a4
	adc  h                                           ; $5c8f: $8c
	sub  h                                           ; $5c90: $94
	add  b                                           ; $5c91: $80
	add  h                                           ; $5c92: $84
	adc  h                                           ; $5c93: $8c
	sbc  h                                           ; $5c94: $9c
	ld   bc, $2718                                   ; $5c95: $01 $18 $27
	add  c                                           ; $5c98: $81
	cp   a                                           ; $5c99: $bf
	add  c                                           ; $5c9a: $81
	add  b                                           ; $5c9b: $80
	ld   bc, $80bf                                   ; $5c9c: $01 $bf $80
	add  c                                           ; $5c9f: $81
	cp   a                                           ; $5ca0: $bf
	nop                                              ; $5ca1: $00
	add  b                                           ; $5ca2: $80
	add  b                                           ; $5ca3: $80
	nop                                              ; $5ca4: $00
	ld   bc, $b23f                                   ; $5ca5: $01 $3f $b2
	add  c                                           ; $5ca8: $81
	xor  l                                           ; $5ca9: $ad
	add  c                                           ; $5caa: $81
	dec  l                                           ; $5cab: $2d
	ld   bc, $2dad                                   ; $5cac: $01 $ad $2d
	add  c                                           ; $5caf: $81
	xor  l                                           ; $5cb0: $ad
	nop                                              ; $5cb1: $00
	dec  l                                           ; $5cb2: $2d
	add  b                                           ; $5cb3: $80
	dec  c                                           ; $5cb4: $0d
	ld   bc, $808d                                   ; $5cb5: $01 $8d $80
	adc  l                                           ; $5cb8: $8d
	nop                                              ; $5cb9: $00
	adc  d                                           ; $5cba: $8a
	ld   bc, $0082                                   ; $5cbb: $01 $82 $00
	nop                                              ; $5cbe: $00
	ld   a, [$0a81]                                  ; $5cbf: $fa $81 $0a
	add  b                                           ; $5cc2: $80
	ld   [rRAMG], sp                                 ; $5cc3: $08 $00 $00
	add  b                                           ; $5cc6: $80
	inc  bc                                          ; $5cc7: $03
	inc  bc                                          ; $5cc8: $03
	rrca                                             ; $5cc9: $0f
	nop                                              ; $5cca: $00
	rrca                                             ; $5ccb: $0f
	nop                                              ; $5ccc: $00
	add  c                                           ; $5ccd: $81
	rrca                                             ; $5cce: $0f
	nop                                              ; $5ccf: $00
	ret  nz                                          ; $5cd0: $c0

	add  e                                           ; $5cd1: $83
	ccf                                              ; $5cd2: $3f
	ld   bc, $9f10                                   ; $5cd3: $01 $10 $9f
	add  b                                           ; $5cd6: $80
	adc  a                                           ; $5cd7: $8f
	ld   [bc], a                                     ; $5cd8: $02
	db   $10                                         ; $5cd9: $10
	sbc  a                                           ; $5cda: $9f
	nop                                              ; $5cdb: $00
	add  c                                           ; $5cdc: $81
	sbc  a                                           ; $5cdd: $9f
	nop                                              ; $5cde: $00
	ld   h, b                                        ; $5cdf: $60
	add  e                                           ; $5ce0: $83
	rst  $38                                         ; $5ce1: $ff
	nop                                              ; $5ce2: $00
	rlca                                             ; $5ce3: $07
	add  c                                           ; $5ce4: $81
	ld   hl, sp+$02                                  ; $5ce5: $f8 $02
	nop                                              ; $5ce7: $00
	rst  $38                                         ; $5ce8: $ff
	rlca                                             ; $5ce9: $07
	add  c                                           ; $5cea: $81
	ld   hl, sp+$00                                  ; $5ceb: $f8 $00
	nop                                              ; $5ced: $00
	add  e                                           ; $5cee: $83
	rst  $38                                         ; $5cef: $ff
	nop                                              ; $5cf0: $00
	ld   hl, sp-$7f                                  ; $5cf1: $f8 $81
	rlca                                             ; $5cf3: $07
	ld   [bc], a                                     ; $5cf4: $02
	nop                                              ; $5cf5: $00
	rst  $38                                         ; $5cf6: $ff
	ret  nz                                          ; $5cf7: $c0

	add  d                                           ; $5cf8: $82
	ccf                                              ; $5cf9: $3f
	add  c                                           ; $5cfa: $81
	ret  nz                                          ; $5cfb: $c0

	add  b                                           ; $5cfc: $80
	jp   Jump_07c_4001                               ; $5cfd: $c3 $01 $40


	rst  ToBoot                                         ; $5d00: $c7
	add  b                                           ; $5d01: $80
	add  a                                           ; $5d02: $87
	ld   [bc], a                                     ; $5d03: $02
	ld   c, b                                        ; $5d04: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d05: $cf
	nop                                              ; $5d06: $00
	add  d                                           ; $5d07: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d08: $cf
	dec  b                                           ; $5d09: $05
	nop                                              ; $5d0a: $00
	ld   h, b                                        ; $5d0b: $60
	inc  de                                          ; $5d0c: $13
	add  b                                           ; $5d0d: $80
	di                                               ; $5d0e: $f3
	nop                                              ; $5d0f: $00
	add  b                                           ; $5d10: $80
	di                                               ; $5d11: $f3
	inc  bc                                          ; $5d12: $03
	ldh  a, [c]                                      ; $5d13: $f2
	ld   [bc], a                                     ; $5d14: $02
	ldh  a, [rP1]                                    ; $5d15: $f0 $00
	add  b                                           ; $5d17: $80
	ldh  [$82], a                                    ; $5d18: $e0 $82
	nop                                              ; $5d1a: $00
	inc  bc                                          ; $5d1b: $03
	ldh  a, [rP1]                                    ; $5d1c: $f0 $00
	ldh  a, [rP1]                                    ; $5d1e: $f0 $00
	add  b                                           ; $5d20: $80
	rst  $38                                         ; $5d21: $ff
	add  b                                           ; $5d22: $80
	rra                                              ; $5d23: $1f
	add  b                                           ; $5d24: $80
	ld   a, a                                        ; $5d25: $7f
	ld   [bc], a                                     ; $5d26: $02
	rst  $38                                         ; $5d27: $ff
	nop                                              ; $5d28: $00
	rst  $38                                         ; $5d29: $ff
	add  l                                           ; $5d2a: $85
	nop                                              ; $5d2b: $00
	ld   [$fcfe], sp                                 ; $5d2c: $08 $fe $fc
	cp   $fa                                         ; $5d2f: $fe $fa
	cp   $f2                                         ; $5d31: $fe $f2
	ld   a, [$f606]                                  ; $5d33: $fa $06 $f6
	adc  [hl]                                        ; $5d36: $8e
	ld   b, $00                                      ; $5d37: $06 $00
	dec  b                                           ; $5d39: $05
	add  e                                           ; $5d3a: $83
	and  c                                           ; $5d3b: $a1
	ld   bc, $a1a5                                   ; $5d3c: $01 $a5 $a1
	add  b                                           ; $5d3f: $80
	and  e                                           ; $5d40: $a3
	add  b                                           ; $5d41: $80
	and  [hl]                                        ; $5d42: $a6
	ld   bc, $8cac                                   ; $5d43: $01 $ac $8c
	add  b                                           ; $5d46: $80
	sbc  c                                           ; $5d47: $99
	inc  bc                                          ; $5d48: $03
	nop                                              ; $5d49: $00
	add  b                                           ; $5d4a: $80
	rst  $38                                         ; $5d4b: $ff
	add  b                                           ; $5d4c: $80
	add  b                                           ; $5d4d: $80
	ld   e, a                                        ; $5d4e: $5f
	ld   [bc], a                                     ; $5d4f: $02
	nop                                              ; $5d50: $00
	ld   e, a                                        ; $5d51: $5f
	nop                                              ; $5d52: $00
	add  c                                           ; $5d53: $81
	ld   e, a                                        ; $5d54: $5f
	rlca                                             ; $5d55: $07
	jr   nz, jr_07c_5dd7                             ; $5d56: $20 $7f

	add  b                                           ; $5d58: $80
	rst  JumpTable                                         ; $5d59: $df
	ld   a, a                                        ; $5d5a: $7f
	nop                                              ; $5d5b: $00
	rst  $38                                         ; $5d5c: $ff
	nop                                              ; $5d5d: $00
	add  b                                           ; $5d5e: $80
	rst  $38                                         ; $5d5f: $ff
	ld   [bc], a                                     ; $5d60: $02
	nop                                              ; $5d61: $00
	rst  $38                                         ; $5d62: $ff
	nop                                              ; $5d63: $00
	add  c                                           ; $5d64: $81
	rst  $38                                         ; $5d65: $ff
	inc  b                                           ; $5d66: $04
	nop                                              ; $5d67: $00
	rst  $38                                         ; $5d68: $ff
	nop                                              ; $5d69: $00
	rst  $38                                         ; $5d6a: $ff
	ret  nz                                          ; $5d6b: $c0

	add  c                                           ; $5d6c: $81
	ccf                                              ; $5d6d: $3f
	add  c                                           ; $5d6e: $81
	nop                                              ; $5d6f: $00
	add  c                                           ; $5d70: $81
	ccf                                              ; $5d71: $3f
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	add  c                                           ; $5d74: $81
	ccf                                              ; $5d75: $3f
	add  b                                           ; $5d76: $80
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	adc  l                                           ; $5d79: $8d
	add  c                                           ; $5d7a: $81
	sbc  l                                           ; $5d7b: $9d
	add  c                                           ; $5d7c: $81
	dec  e                                           ; $5d7d: $1d
	add  c                                           ; $5d7e: $81
	sbc  l                                           ; $5d7f: $9d
	nop                                              ; $5d80: $00
	dec  e                                           ; $5d81: $1d
	add  c                                           ; $5d82: $81
	sbc  l                                           ; $5d83: $9d
	add  b                                           ; $5d84: $80
	dec  e                                           ; $5d85: $1d
	nop                                              ; $5d86: $00
	db   $10                                         ; $5d87: $10
	adc  l                                           ; $5d88: $8d
	nop                                              ; $5d89: $00
	add  b                                           ; $5d8a: $80
	ld   bc, $0080                                   ; $5d8b: $01 $80 $00
	add  b                                           ; $5d8e: $80
	ld   bc, $0080                                   ; $5d8f: $01 $80 $00
	add  d                                           ; $5d92: $82
	ld   bc, $0080                                   ; $5d93: $01 $80 $00
	add  b                                           ; $5d96: $80
	ld   bc, $01e4                                   ; $5d97: $01 $e4 $01
	add  [hl]                                        ; $5d9a: $86
	nop                                              ; $5d9b: $00
	add  [hl]                                        ; $5d9c: $86
	rrca                                             ; $5d9d: $0f
	add  [hl]                                        ; $5d9e: $86
	nop                                              ; $5d9f: $00
	inc  b                                           ; $5da0: $04
	ldh  [rIE], a                                    ; $5da1: $e0 $ff
	db   $e3                                         ; $5da3: $e3
	rst  $38                                         ; $5da4: $ff
	db   $fc                                         ; $5da5: $fc
	add  c                                           ; $5da6: $81
	rst  $38                                         ; $5da7: $ff
	add  [hl]                                        ; $5da8: $86
	nop                                              ; $5da9: $00
	ld   bc, $9e61                                   ; $5daa: $01 $61 $9e
	add  b                                           ; $5dad: $80
	di                                               ; $5dae: $f3
	inc  b                                           ; $5daf: $04
	ld   a, h                                        ; $5db0: $7c
	db   $fc                                         ; $5db1: $fc
	adc  a                                           ; $5db2: $8f
	rst  $38                                         ; $5db3: $ff
	rrca                                             ; $5db4: $0f
	add  l                                           ; $5db5: $85
	nop                                              ; $5db6: $00
	ld   bc, $00ff                                   ; $5db7: $01 $ff $00
	add  b                                           ; $5dba: $80
	rst  $38                                         ; $5dbb: $ff
	add  b                                           ; $5dbc: $80
	nop                                              ; $5dbd: $00
	add  c                                           ; $5dbe: $81
	rst  $38                                         ; $5dbf: $ff
	add  l                                           ; $5dc0: $85
	nop                                              ; $5dc1: $00
	ld   bc, $00ff                                   ; $5dc2: $01 $ff $00
	add  b                                           ; $5dc5: $80
	rst  $38                                         ; $5dc6: $ff
	add  b                                           ; $5dc7: $80
	nop                                              ; $5dc8: $00
	add  c                                           ; $5dc9: $81
	rst  $38                                         ; $5dca: $ff
	add  l                                           ; $5dcb: $85
	nop                                              ; $5dcc: $00
	ld   bc, $00ff                                   ; $5dcd: $01 $ff $00
	add  b                                           ; $5dd0: $80
	rst  $38                                         ; $5dd1: $ff
	add  b                                           ; $5dd2: $80
	nop                                              ; $5dd3: $00
	add  c                                           ; $5dd4: $81
	rst  $38                                         ; $5dd5: $ff
	add  l                                           ; $5dd6: $85

jr_07c_5dd7:
	nop                                              ; $5dd7: $00
	ld   bc, $10ef                                   ; $5dd8: $01 $ef $10
	add  b                                           ; $5ddb: $80
	ldh  a, [$80]                                    ; $5ddc: $f0 $80
	nop                                              ; $5dde: $00
	add  b                                           ; $5ddf: $80
	ldh  a, [rP1]                                    ; $5de0: $f0 $00
	rst  $38                                         ; $5de2: $ff
	add  l                                           ; $5de3: $85
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	rst  $38                                         ; $5de6: $ff
	add  l                                           ; $5de7: $85
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	rst  $38                                         ; $5dea: $ff
	add  l                                           ; $5deb: $85
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	ld   hl, sp-$7f                                  ; $5dee: $f8 $81
	rlca                                             ; $5df0: $07
	add  d                                           ; $5df1: $82
	ld   b, $00                                      ; $5df2: $06 $00
	rst  $38                                         ; $5df4: $ff
	add  l                                           ; $5df5: $85
	nop                                              ; $5df6: $00
	ld   bc, $00ff                                   ; $5df7: $01 $ff $00
	add  b                                           ; $5dfa: $80
	cp   a                                           ; $5dfb: $bf
	add  b                                           ; $5dfc: $80
	ret  nz                                          ; $5dfd: $c0

	add  b                                           ; $5dfe: $80
	ld   l, a                                        ; $5dff: $6f
	nop                                              ; $5e00: $00
	rst  $38                                         ; $5e01: $ff
	add  l                                           ; $5e02: $85
	nop                                              ; $5e03: $00
	ld   bc, $00ff                                   ; $5e04: $01 $ff $00
	add  b                                           ; $5e07: $80
	rst  $38                                         ; $5e08: $ff
	add  b                                           ; $5e09: $80
	nop                                              ; $5e0a: $00
	add  c                                           ; $5e0b: $81
	rst  $38                                         ; $5e0c: $ff
	add  l                                           ; $5e0d: $85
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	ret  nz                                          ; $5e10: $c0

	add  c                                           ; $5e11: $81
	ccf                                              ; $5e12: $3f
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	add  c                                           ; $5e15: $81
	rst  $38                                         ; $5e16: $ff
	add  [hl]                                        ; $5e17: $86
	nop                                              ; $5e18: $00
	ld   bc, $c03f                                   ; $5e19: $01 $3f $c0
	add  b                                           ; $5e1c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1d: $cf
	ld   bc, $e020                                   ; $5e1e: $01 $20 $e0
	add  b                                           ; $5e21: $80
	rst  $20                                         ; $5e22: $e7
	nop                                              ; $5e23: $00
	ccf                                              ; $5e24: $3f
	add  l                                           ; $5e25: $85
	nop                                              ; $5e26: $00
	ld   bc, $00ff                                   ; $5e27: $01 $ff $00
	add  b                                           ; $5e2a: $80
	db   $fd                                         ; $5e2b: $fd
	add  b                                           ; $5e2c: $80
	inc  bc                                          ; $5e2d: $03
	add  b                                           ; $5e2e: $80
	push af                                          ; $5e2f: $f5
	nop                                              ; $5e30: $00
	rst  $38                                         ; $5e31: $ff
	add  l                                           ; $5e32: $85
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	rst  $38                                         ; $5e35: $ff
	add  l                                           ; $5e36: $85
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	rst  $38                                         ; $5e39: $ff
	add  l                                           ; $5e3a: $85
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	cp   $81                                         ; $5e3d: $fe $81
	ld   bc, $0080                                   ; $5e3f: $01 $80 $00
	add  b                                           ; $5e42: $80
	ld   bc, $f000                                   ; $5e43: $01 $00 $f0
	adc  l                                           ; $5e46: $8d
	rrca                                             ; $5e47: $0f
	adc  h                                           ; $5e48: $8c
	rst  $38                                         ; $5e49: $ff
	add  b                                           ; $5e4a: $80
	cp   $00                                         ; $5e4b: $fe $00
	db   $fd                                         ; $5e4d: $fd
	adc  l                                           ; $5e4e: $8d
	rst  $38                                         ; $5e4f: $ff
	nop                                              ; $5e50: $00
	db   $fd                                         ; $5e51: $fd
	xor  [hl]                                        ; $5e52: $ae
	rst  $38                                         ; $5e53: $ff
	adc  [hl]                                        ; $5e54: $8e
	ldh  a, [$8d]                                    ; $5e55: $f0 $8d
	nop                                              ; $5e57: $00
	adc  [hl]                                        ; $5e58: $8e
	ld   b, $05                                      ; $5e59: $06 $05
	jr   c, jr_07c_5e9c                              ; $5e5b: $38 $3f

	ld   e, e                                        ; $5e5d: $5b
	ld   e, a                                        ; $5e5e: $5f
	ld   b, l                                        ; $5e5f: $45
	ld   b, [hl]                                     ; $5e60: $46
	add  b                                           ; $5e61: $80
	ld   d, e                                        ; $5e62: $53
	nop                                              ; $5e63: $00
	ld   b, c                                        ; $5e64: $41
	add  b                                           ; $5e65: $80
	ld   d, c                                        ; $5e66: $51
	add  e                                           ; $5e67: $83
	ld   d, l                                        ; $5e68: $55
	nop                                              ; $5e69: $00
	inc  d                                           ; $5e6a: $14
	add  d                                           ; $5e6b: $82
	rst  $38                                         ; $5e6c: $ff
	add  c                                           ; $5e6d: $81
	nop                                              ; $5e6e: $00
	add  h                                           ; $5e6f: $84
	ld   a, a                                        ; $5e70: $7f
	add  b                                           ; $5e71: $80
	nop                                              ; $5e72: $00
	ld   bc, $fe81                                   ; $5e73: $01 $81 $fe

jr_07c_5e76:
	add  b                                           ; $5e76: $80
	db   $fc                                         ; $5e77: $fc
	add  b                                           ; $5e78: $80
	ld   a, h                                        ; $5e79: $7c
	inc  b                                           ; $5e7a: $04
	ld   a, c                                        ; $5e7b: $79
	add  hl, sp                                      ; $5e7c: $39
	rst  JumpTable                                         ; $5e7d: $df
	rst  $38                                         ; $5e7e: $ff
	ldh  [$81], a                                    ; $5e7f: $e0 $81
	rst  $38                                         ; $5e81: $ff
	add  b                                           ; $5e82: $80
	nop                                              ; $5e83: $00
	inc  b                                           ; $5e84: $04
	jr   nz, jr_07c_5e76                             ; $5e85: $20 $ef

	xor  a                                           ; $5e87: $af
	rst  $28                                         ; $5e88: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e89: $cf
	add  c                                           ; $5e8a: $81
	ret  nz                                          ; $5e8b: $c0

	nop                                              ; $5e8c: $00
	ld   a, a                                        ; $5e8d: $7f
	add  e                                           ; $5e8e: $83
	rst  $38                                         ; $5e8f: $ff
	add  b                                           ; $5e90: $80
	nop                                              ; $5e91: $00
	ld   bc, $e909                                   ; $5e92: $01 $09 $e9
	add  c                                           ; $5e95: $81
	pop  hl                                          ; $5e96: $e1
	add  c                                           ; $5e97: $81
	ld   bc, $ed84                                   ; $5e98: $01 $84 $ed
	add  b                                           ; $5e9b: $80

jr_07c_5e9c:
	dec  c                                           ; $5e9c: $0d
	adc  a                                           ; $5e9d: $8f
	nop                                              ; $5e9e: $00
	adc  l                                           ; $5e9f: $8d
	ld   bc, $f100                                   ; $5ea0: $01 $00 $f1
	adc  e                                           ; $5ea3: $8b
	rrca                                             ; $5ea4: $0f
	add  b                                           ; $5ea5: $80
	ld   c, $80                                      ; $5ea6: $0e $80
	db   $fc                                         ; $5ea8: $fc
	add  b                                           ; $5ea9: $80
	ld   hl, sp-$80                                  ; $5eaa: $f8 $80
	ldh  a, [$80]                                    ; $5eac: $f0 $80
	ldh  [$80], a                                    ; $5eae: $e0 $80
	ret  nz                                          ; $5eb0: $c0

	add  b                                           ; $5eb1: $80
	add  b                                           ; $5eb2: $80
	add  d                                           ; $5eb3: $82
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	db   $fd                                         ; $5eb6: $fd
	adc  l                                           ; $5eb7: $8d
	rst  $38                                         ; $5eb8: $ff
	nop                                              ; $5eb9: $00
	db   $fd                                         ; $5eba: $fd
	adc  l                                           ; $5ebb: $8d
	rst  $38                                         ; $5ebc: $ff
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	add  c                                           ; $5ebf: $81
	rst  $38                                         ; $5ec0: $ff
	add  c                                           ; $5ec1: $81
	ret  nz                                          ; $5ec2: $c0

	add  a                                           ; $5ec3: $87
	rst  JumpTable                                         ; $5ec4: $df
	nop                                              ; $5ec5: $00
	ldh  [$81], a                                    ; $5ec6: $e0 $81
	rst  $38                                         ; $5ec8: $ff
	add  b                                           ; $5ec9: $80
	nop                                              ; $5eca: $00
	ld   bc, $c03f                                   ; $5ecb: $01 $3f $c0
	add  b                                           ; $5ece: $80
	ldh  [$80], a                                    ; $5ecf: $e0 $80
	ret  nz                                          ; $5ed1: $c0

	inc  b                                           ; $5ed2: $04
	add  d                                           ; $5ed3: $82
	add  b                                           ; $5ed4: $80
	ld   b, $00                                      ; $5ed5: $06 $00
	dec  bc                                          ; $5ed7: $0b
	add  c                                           ; $5ed8: $81
	ldh  a, [$81]                                    ; $5ed9: $f0 $81
	nop                                              ; $5edb: $00
	add  b                                           ; $5edc: $80
	or   b                                           ; $5edd: $b0
	rlca                                             ; $5ede: $07
	ld   d, b                                        ; $5edf: $50
	ld   [hl], b                                     ; $5ee0: $70
	and  b                                           ; $5ee1: $a0
	sub  b                                           ; $5ee2: $90
	ld   d, b                                        ; $5ee3: $50
	ld   h, b                                        ; $5ee4: $60
	and  b                                           ; $5ee5: $a0
	add  b                                           ; $5ee6: $80
	adc  l                                           ; $5ee7: $8d
	nop                                              ; $5ee8: $00
	add  d                                           ; $5ee9: $82
	ld   b, $80                                      ; $5eea: $06 $80
	rlca                                             ; $5eec: $07
	adc  b                                           ; $5eed: $88
	ld   b, $00                                      ; $5eee: $06 $00
	ld   b, b                                        ; $5ef0: $40
	add  c                                           ; $5ef1: $81
	ld   d, l                                        ; $5ef2: $55
	inc  bc                                          ; $5ef3: $03
	push bc                                          ; $5ef4: $c5
	push de                                          ; $5ef5: $d5
	ld   [hl], b                                     ; $5ef6: $70
	ld   [hl], l                                     ; $5ef7: $75
	add  b                                           ; $5ef8: $80
	dec  e                                           ; $5ef9: $1d
	add  b                                           ; $5efa: $80
	and  l                                           ; $5efb: $a5
	add  b                                           ; $5efc: $80
	and  c                                           ; $5efd: $a1
	add  b                                           ; $5efe: $80
	xor  c                                           ; $5eff: $a9
	add  e                                           ; $5f00: $83
	nop                                              ; $5f01: $00
	add  d                                           ; $5f02: $82
	ld   [bc], a                                     ; $5f03: $02
	add  h                                           ; $5f04: $84
	ld   [de], a                                     ; $5f05: $12
	add  b                                           ; $5f06: $80
	ld   [hl-], a                                    ; $5f07: $32
	add  b                                           ; $5f08: $80
	nop                                              ; $5f09: $00
	add  e                                           ; $5f0a: $83
	and  [hl]                                        ; $5f0b: $a6
	add  h                                           ; $5f0c: $84
	or   [hl]                                        ; $5f0d: $b6
	ld   [bc], a                                     ; $5f0e: $02
	or   d                                           ; $5f0f: $b2
	or   [hl]                                        ; $5f10: $b6
	and  d                                           ; $5f11: $a2
	add  b                                           ; $5f12: $80
	nop                                              ; $5f13: $00
	adc  d                                           ; $5f14: $8a
	jp   z, $ce01                                    ; $5f15: $ca $01 $ce

	jp   $0d8d                                       ; $5f18: $c3 $8d $0d


	adc  a                                           ; $5f1b: $8f
	nop                                              ; $5f1c: $00
	adc  l                                           ; $5f1d: $8d
	ld   bc, $f201                                   ; $5f1e: $01 $01 $f2
	inc  c                                           ; $5f21: $0c
	add  b                                           ; $5f22: $80
	ld   [$009a], sp                                 ; $5f23: $08 $9a $00
	nop                                              ; $5f26: $00
	db   $fd                                         ; $5f27: $fd
	adc  l                                           ; $5f28: $8d
	rst  $38                                         ; $5f29: $ff
	nop                                              ; $5f2a: $00
	db   $fd                                         ; $5f2b: $fd
	adc  l                                           ; $5f2c: $8d
	rst  $38                                         ; $5f2d: $ff
	nop                                              ; $5f2e: $00
	ccf                                              ; $5f2f: $3f
	add  b                                           ; $5f30: $80
	rst  JumpTable                                         ; $5f31: $df
	add  b                                           ; $5f32: $80
	jp   c, $d580                                    ; $5f33: $da $80 $d5

	add  b                                           ; $5f36: $80
	jp   z, $c580                                    ; $5f37: $ca $80 $c5

	add  b                                           ; $5f3a: $80
	jp   nz, $c081                                   ; $5f3b: $c2 $81 $c0

	inc  c                                           ; $5f3e: $0c
	dec  d                                           ; $5f3f: $15
	pop  hl                                          ; $5f40: $e1
	sbc  $c2                                         ; $5f41: $de $c2
	db   $ed                                         ; $5f43: $ed
	ld   d, l                                        ; $5f44: $55
	ld   a, e                                        ; $5f45: $7b
	adc  e                                           ; $5f46: $8b
	or   c                                           ; $5f47: $b1
	ld   d, c                                        ; $5f48: $51
	ld   h, b                                        ; $5f49: $60
	and  b                                           ; $5f4a: $a0
	add  b                                           ; $5f4b: $80
	add  c                                           ; $5f4c: $81
	nop                                              ; $5f4d: $00
	add  b                                           ; $5f4e: $80
	ld   b, b                                        ; $5f4f: $40
	add  b                                           ; $5f50: $80
	and  b                                           ; $5f51: $a0
	add  b                                           ; $5f52: $80
	ret  nz                                          ; $5f53: $c0

	add  b                                           ; $5f54: $80
	nop                                              ; $5f55: $00
	add  b                                           ; $5f56: $80
	ld   b, b                                        ; $5f57: $40
	sub  h                                           ; $5f58: $94
	nop                                              ; $5f59: $00
	adc  [hl]                                        ; $5f5a: $8e
	ld   b, $00                                      ; $5f5b: $06 $00
	adc  c                                           ; $5f5d: $89
	add  a                                           ; $5f5e: $87
	xor  c                                           ; $5f5f: $a9
	ld   bc, $e9c9                                   ; $5f60: $01 $c9 $e9
	add  b                                           ; $5f63: $80
	dec  e                                           ; $5f64: $1d
	ld   [bc], a                                     ; $5f65: $02
	add  c                                           ; $5f66: $81
	ld   hl, $84a0                                   ; $5f67: $21 $a0 $84
	ld   [hl-], a                                    ; $5f6a: $32
	add  h                                           ; $5f6b: $84
	or   [hl]                                        ; $5f6c: $b6
	add  c                                           ; $5f6d: $81
	or   $00                                         ; $5f6e: $f6 $00
	ldh  [c], a                                      ; $5f70: $e2
	add  c                                           ; $5f71: $81
	or   a                                           ; $5f72: $b7
	add  b                                           ; $5f73: $80
	or   l                                           ; $5f74: $b5
	nop                                              ; $5f75: $00
	sub  l                                           ; $5f76: $95
	add  c                                           ; $5f77: $81
	push de                                          ; $5f78: $d5
	ld   [bc], a                                     ; $5f79: $02
	ld   [hl+], a                                    ; $5f7a: $22
	pop  bc                                          ; $5f7b: $c1
	scf                                              ; $5f7c: $37
	add  c                                           ; $5f7d: $81
	call nc, $e300                                   ; $5f7e: $d4 $00 $e3
	add  h                                           ; $5f81: $84
	ld   l, l                                        ; $5f82: $6d
	add  b                                           ; $5f83: $80
	ld   h, l                                        ; $5f84: $65
	inc  bc                                          ; $5f85: $03
	and  h                                           ; $5f86: $a4
	inc  h                                           ; $5f87: $24
	and  h                                           ; $5f88: $a4
	inc  h                                           ; $5f89: $24
	add  b                                           ; $5f8a: $80
	and  h                                           ; $5f8b: $a4
	ld   bc, $dbd6                                   ; $5f8c: $01 $d6 $db
	add  d                                           ; $5f8f: $82
	dec  c                                           ; $5f90: $0d
	add  d                                           ; $5f91: $82
	dec  l                                           ; $5f92: $2d
	add  l                                           ; $5f93: $85
	xor  l                                           ; $5f94: $ad
	nop                                              ; $5f95: $00
	and  b                                           ; $5f96: $a0
	adc  [hl]                                        ; $5f97: $8e
	nop                                              ; $5f98: $00
	adc  l                                           ; $5f99: $8d
	ld   bc, $fe00                                   ; $5f9a: $01 $00 $fe
	sbc  l                                           ; $5f9d: $9d
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	db   $fd                                         ; $5fa0: $fd
	adc  l                                           ; $5fa1: $8d
	rst  $38                                         ; $5fa2: $ff
	nop                                              ; $5fa3: $00

jr_07c_5fa4:
	db   $fd                                         ; $5fa4: $fd
	add  l                                           ; $5fa5: $85
	rst  $38                                         ; $5fa6: $ff
	ld   [bc], a                                     ; $5fa7: $02
	ldh  [rIE], a                                    ; $5fa8: $e0 $ff
	rst  $30                                         ; $5faa: $f7
	add  c                                           ; $5fab: $81
	db   $ed                                         ; $5fac: $ed
	add  b                                           ; $5fad: $80
	db   $dd                                         ; $5fae: $dd
	ld   bc, $ff05                                   ; $5faf: $01 $05 $ff
	add  c                                           ; $5fb2: $81
	nop                                              ; $5fb3: $00
	add  c                                           ; $5fb4: $81
	rst  $38                                         ; $5fb5: $ff
	ld   [bc], a                                     ; $5fb6: $02
	ccf                                              ; $5fb7: $3f
	rst  $38                                         ; $5fb8: $ff
	ld   a, a                                        ; $5fb9: $7f
	add  e                                           ; $5fba: $83
	rst  $38                                         ; $5fbb: $ff
	ld   bc, $ff40                                   ; $5fbc: $01 $40 $ff
	add  c                                           ; $5fbf: $81
	nop                                              ; $5fc0: $00
	adc  c                                           ; $5fc1: $89
	rst  $38                                         ; $5fc2: $ff
	ld   bc, $f00f                                   ; $5fc3: $01 $0f $f0
	add  c                                           ; $5fc6: $81
	nop                                              ; $5fc7: $00
	adc  d                                           ; $5fc8: $8a
	ldh  a, [$8d]                                    ; $5fc9: $f0 $8d
	nop                                              ; $5fcb: $00
	adc  [hl]                                        ; $5fcc: $8e
	ld   b, $00                                      ; $5fcd: $06 $00
	adc  c                                           ; $5fcf: $89
	add  a                                           ; $5fd0: $87
	add  hl, hl                                      ; $5fd1: $29
	add  b                                           ; $5fd2: $80
	dec  l                                           ; $5fd3: $2d
	ld   bc, $f151                                   ; $5fd4: $01 $51 $f1
	add  b                                           ; $5fd7: $80
	add  hl, bc                                      ; $5fd8: $09
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	add  d                                           ; $5fdb: $82
	push af                                          ; $5fdc: $f5
	add  b                                           ; $5fdd: $80
	or   l                                           ; $5fde: $b5
	add  b                                           ; $5fdf: $80
	xor  l                                           ; $5fe0: $ad
	inc  bc                                          ; $5fe1: $03
	xor  c                                           ; $5fe2: $a9

jr_07c_5fe3:
	xor  b                                           ; $5fe3: $a8
	xor  c                                           ; $5fe4: $a9
	xor  b                                           ; $5fe5: $a8
	add  b                                           ; $5fe6: $80
	xor  c                                           ; $5fe7: $a9
	ld   bc, $9cab                                   ; $5fe8: $01 $ab $9c
	add  c                                           ; $5feb: $81
	call nc, $9484                                   ; $5fec: $d4 $84 $94
	ld   [bc], a                                     ; $5fef: $02
	ld   h, e                                        ; $5ff0: $63
	add  b                                           ; $5ff1: $80
	rst  $30                                         ; $5ff2: $f7
	add  c                                           ; $5ff3: $81
	inc  d                                           ; $5ff4: $14
	ld   [bc], a                                     ; $5ff5: $02
	db   $e3                                         ; $5ff6: $e3
	sub  $56                                         ; $5ff7: $d6 $56
	add  b                                           ; $5ff9: $80
	ld   l, d                                        ; $5ffa: $6a
	ld   bc, $2969                                   ; $5ffb: $01 $69 $29
	add  b                                           ; $5ffe: $80

Jump_07c_5fff:
	inc  [hl]                                        ; $5fff: $34
	inc  bc                                          ; $6000: $03
	jr   c, jr_07c_5fe3                              ; $6001: $38 $e0

	inc  e                                           ; $6003: $1c
	ei                                               ; $6004: $fb
	add  c                                           ; $6005: $81
	ld   a, a                                        ; $6006: $7f
	nop                                              ; $6007: $00
	adc  l                                           ; $6008: $8d
	add  b                                           ; $6009: $80
	xor  l                                           ; $600a: $ad
	add  h                                           ; $600b: $84
	dec  l                                           ; $600c: $2d
	add  c                                           ; $600d: $81
	dec  c                                           ; $600e: $0d
	nop                                              ; $600f: $00
	call $ed81                                       ; $6010: $cd $81 $ed
	nop                                              ; $6013: $00
	jr   nz, jr_07c_5fa4                             ; $6014: $20 $8e

	nop                                              ; $6016: $00
	adc  l                                           ; $6017: $8d
	ld   bc, $fe00                                   ; $6018: $01 $00 $fe
	adc  e                                           ; $601b: $8b
	nop                                              ; $601c: $00
	add  b                                           ; $601d: $80
	rrca                                             ; $601e: $0f
	adc  b                                           ; $601f: $88
	nop                                              ; $6020: $00
	add  b                                           ; $6021: $80
	inc  bc                                          ; $6022: $03
	inc  b                                           ; $6023: $04
	ld   a, a                                        ; $6024: $7f
	ld   a, h                                        ; $6025: $7c
	db   $fc                                         ; $6026: $fc
	add  d                                           ; $6027: $82
	add  b                                           ; $6028: $80
	add  c                                           ; $6029: $81
	rst  $38                                         ; $602a: $ff
	add  b                                           ; $602b: $80
	db   $fd                                         ; $602c: $fd
	dec  b                                           ; $602d: $05
	db   $fc                                         ; $602e: $fc
	db   $fd                                         ; $602f: $fd
	ret  nz                                          ; $6030: $c0

	db   $fc                                         ; $6031: $fc
	ld   bc, $80c1                                   ; $6032: $01 $c1 $80
	add  hl, hl                                      ; $6035: $29
	add  b                                           ; $6036: $80
	xor  c                                           ; $6037: $a9
	ld   [bc], a                                     ; $6038: $02
	daa                                              ; $6039: $27
	db   $dd                                         ; $603a: $dd
	sub  l                                           ; $603b: $95
	add  c                                           ; $603c: $81
	sbc  c                                           ; $603d: $99
	inc  bc                                          ; $603e: $03
	add  hl, de                                      ; $603f: $19
	sbc  c                                           ; $6040: $99
	ld   l, c                                        ; $6041: $69
	rra                                              ; $6042: $1f
	add  b                                           ; $6043: $80
	ld   b, b                                        ; $6044: $40
	add  b                                           ; $6045: $80
	ld   e, [hl]                                     ; $6046: $5e
	ld   [bc], a                                     ; $6047: $02

jr_07c_6048:
	ld   d, [hl]                                     ; $6048: $56
	ld   e, d                                        ; $6049: $5a
	ld   l, h                                        ; $604a: $6c
	add  d                                           ; $604b: $82
	rst  $38                                         ; $604c: $ff
	ld   [bc], a                                     ; $604d: $02
	rst  $28                                         ; $604e: $ef
	ld   b, b                                        ; $604f: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6050: $cf
	add  b                                           ; $6051: $80
	add  b                                           ; $6052: $80
	ld   [bc], a                                     ; $6053: $02
	ld   [$9717], sp                                 ; $6054: $08 $17 $97
	add  c                                           ; $6057: $81
	ld   [hl], a                                     ; $6058: $77
	add  h                                           ; $6059: $84
	rst  $38                                         ; $605a: $ff
	ld   bc, $ff00                                   ; $605b: $01 $00 $ff
	add  b                                           ; $605e: $80
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	rra                                              ; $6061: $1f
	add  e                                           ; $6062: $83
	ldh  [rP1], a                                    ; $6063: $e0 $00
	rst  $38                                         ; $6065: $ff
	add  e                                           ; $6066: $83
	ldh  a, [rSB]                                    ; $6067: $f0 $01
	nop                                              ; $6069: $00
	ldh  a, [$80]                                    ; $606a: $f0 $80
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	db   $10                                         ; $606e: $10
	add  e                                           ; $606f: $83
	ldh  [rP1], a                                    ; $6070: $e0 $00
	ldh  a, [$8d]                                    ; $6072: $f0 $8d
	nop                                              ; $6074: $00
	adc  [hl]                                        ; $6075: $8e
	ld   b, $80                                      ; $6076: $06 $80
	add  hl, hl                                      ; $6078: $29
	add  e                                           ; $6079: $83
	xor  c                                           ; $607a: $a9
	add  b                                           ; $607b: $80
	adc  c                                           ; $607c: $89
	nop                                              ; $607d: $00
	add  hl, bc                                      ; $607e: $09
	add  b                                           ; $607f: $80
	dec  bc                                          ; $6080: $0b
	add  b                                           ; $6081: $80
	dec  c                                           ; $6082: $0d
	inc  b                                           ; $6083: $04
	add  hl, de                                      ; $6084: $19
	add  hl, sp                                      ; $6085: $39
	add  b                                           ; $6086: $80
	inc  hl                                          ; $6087: $23
	ld   [hl+], a                                    ; $6088: $22
	add  c                                           ; $6089: $81
	ld   b, $05                                      ; $608a: $06 $05
	inc  b                                           ; $608c: $04
	inc  c                                           ; $608d: $0c
	ld   [$0007], sp                                 ; $608e: $08 $07 $00
	jr   nc, @-$7c                                   ; $6091: $30 $82

	ld   sp, $c700                                   ; $6093: $31 $00 $c7
	add  l                                           ; $6096: $85
	inc  d                                           ; $6097: $14
	ld   bc, $ff1c                                   ; $6098: $01 $1c $ff
	add  b                                           ; $609b: $80
	nop                                              ; $609c: $00
	add  b                                           ; $609d: $80
	cp   $80                                         ; $609e: $fe $80
	ld   [$8000], a                                  ; $60a0: $ea $00 $80
	add  b                                           ; $60a3: $80
	nop                                              ; $60a4: $00
	ld   [bc], a                                     ; $60a5: $02
	rra                                              ; $60a6: $1f
	nop                                              ; $60a7: $00
	rra                                              ; $60a8: $1f
	add  c                                           ; $60a9: $81
	nop                                              ; $60aa: $00
	ld   [bc], a                                     ; $60ab: $02
	sbc  a                                           ; $60ac: $9f
	nop                                              ; $60ad: $00
	rra                                              ; $60ae: $1f
	add  b                                           ; $60af: $80
	add  b                                           ; $60b0: $80
	ld   [bc], a                                     ; $60b1: $02
	sub  h                                           ; $60b2: $94
	sub  l                                           ; $60b3: $95
	inc  c                                           ; $60b4: $0c
	adc  l                                           ; $60b5: $8d
	dec  l                                           ; $60b6: $2d
	nop                                              ; $60b7: $00
	jr   nz, jr_07c_6048                             ; $60b8: $20 $8e

	nop                                              ; $60ba: $00
	add  l                                           ; $60bb: $85
	ld   bc, $0001                                   ; $60bc: $01 $01 $00
	ld   bc, $0080                                   ; $60bf: $01 $80 $00
	add  d                                           ; $60c2: $82
	ld   bc, $f002                                   ; $60c3: $01 $02 $f0
	nop                                              ; $60c6: $00
	dec  b                                           ; $60c7: $05
	adc  e                                           ; $60c8: $8b
	rrca                                             ; $60c9: $0f
	ld   [bc], a                                     ; $60ca: $02
	cp   d                                           ; $60cb: $ba
	ld   a, [hl]                                     ; $60cc: $7e
	ld   l, d                                        ; $60cd: $6a
	add  c                                           ; $60ce: $81
	cp   $06                                         ; $60cf: $fe $06
	rst  $38                                         ; $60d1: $ff
	cp   $f4                                         ; $60d2: $fe $f4
	ldh  a, [$d6]                                    ; $60d4: $f0 $d6
	add  [hl]                                        ; $60d6: $86
	rst  $38                                         ; $60d7: $ff
	add  c                                           ; $60d8: $81
	nop                                              ; $60d9: $00
	add  c                                           ; $60da: $81
	xor  c                                           ; $60db: $a9
	ld   bc, $80a8                                   ; $60dc: $01 $a8 $80
	add  b                                           ; $60df: $80
	cp   [hl]                                        ; $60e0: $be
	add  e                                           ; $60e1: $83
	ld   a, [hl]                                     ; $60e2: $7e
	nop                                              ; $60e3: $00
	rst  $38                                         ; $60e4: $ff
	add  c                                           ; $60e5: $81
	nop                                              ; $60e6: $00
	ld   [bc], a                                     ; $60e7: $02
	ld   b, $7a                                      ; $60e8: $06 $7a
	ld   a, [$7a80]                                  ; $60ea: $fa $80 $7a
	inc  bc                                          ; $60ed: $03
	ld   a, [hl]                                     ; $60ee: $7e
	halt                                             ; $60ef: $76

Jump_07c_60f0:
	ld   a, [hl]                                     ; $60f0: $7e
	ld   [hl], b                                     ; $60f1: $70
	add  c                                           ; $60f2: $81
	ld   a, b                                        ; $60f3: $78
	nop                                              ; $60f4: $00
	ld   hl, sp-$7f                                  ; $60f5: $f8 $81
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	adc  b                                           ; $60f9: $88
	add  e                                           ; $60fa: $83
	ld   [hl], a                                     ; $60fb: $77
	nop                                              ; $60fc: $00

jr_07c_60fd:
	rst  $30                                         ; $60fd: $f7
	add  d                                           ; $60fe: $82
	ld   [hl], a                                     ; $60ff: $77
	ld   [bc], a                                     ; $6100: $02
	ld   [hl], h                                     ; $6101: $74
	ld   a, h                                        ; $6102: $7c

jr_07c_6103:
	nop                                              ; $6103: $00
	add  b                                           ; $6104: $80
	rlca                                             ; $6105: $07
	nop                                              ; $6106: $00
	rra                                              ; $6107: $1f
	add  c                                           ; $6108: $81
	ldh  [rTAC], a                                   ; $6109: $e0 $07
	pop  hl                                          ; $610b: $e1
	ldh  [$ee], a                                    ; $610c: $e0 $ee
	ldh  [$f6], a                                    ; $610e: $e0 $f6
	add  [hl]                                        ; $6110: $86
	sbc  b                                           ; $6111: $98
	jr   @-$7e                                       ; $6112: $18 $80

	ld   b, b                                        ; $6114: $40
	add  b                                           ; $6115: $80
	inc  bc                                          ; $6116: $03
	ld   [bc], a                                     ; $6117: $02
	db   $10                                         ; $6118: $10
	ldh  [$f0], a                                    ; $6119: $e0 $f0
	add  b                                           ; $611b: $80
	ret  nz                                          ; $611c: $c0

	add  l                                           ; $611d: $85
	nop                                              ; $611e: $00
	add  b                                           ; $611f: $80
	ld   [hl], b                                     ; $6120: $70
	add  b                                           ; $6121: $80
	ldh  a, [$8e]                                    ; $6122: $f0 $8e
	nop                                              ; $6124: $00
	adc  [hl]                                        ; $6125: $8e
	ld   b, $80                                      ; $6126: $06 $80
	pop  hl                                          ; $6128: $e1
	add  b                                           ; $6129: $80
	add  c                                           ; $612a: $81
	nop                                              ; $612b: $00
	ld   bc, $0582                                   ; $612c: $01 $82 $05
	add  d                                           ; $612f: $82
	dec  h                                           ; $6130: $25
	add  d                                           ; $6131: $82
	and  l                                           ; $6132: $a5
	add  b                                           ; $6133: $80
	add  hl, sp                                      ; $6134: $39
	add  l                                           ; $6135: $85
	ld   e, c                                        ; $6136: $59
	ld   bc, wEnterNameNumCharsEntered                                   ; $6137: $01 $51 $c9
	add  c                                           ; $613a: $81
	ret  nz                                          ; $613b: $c0

	ld   bc, $2a80                                   ; $613c: $01 $80 $2a
	adc  c                                           ; $613f: $89
	xor  d                                           ; $6140: $aa
	add  d                                           ; $6141: $82
	nop                                              ; $6142: $00
	inc  bc                                          ; $6143: $03
	sbc  h                                           ; $6144: $9c
	sbc  a                                           ; $6145: $9f
	sbc  h                                           ; $6146: $9c
	sbc  a                                           ; $6147: $9f
	add  b                                           ; $6148: $80
	add  b                                           ; $6149: $80
	nop                                              ; $614a: $00
	sub  b                                           ; $614b: $90
	add  c                                           ; $614c: $81
	sub  l                                           ; $614d: $95
	ld   bc, $9590                                   ; $614e: $01 $90 $95
	add  d                                           ; $6151: $82
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	dec  c                                           ; $6154: $0d
	adc  d                                           ; $6155: $8a
	dec  l                                           ; $6156: $2d
	add  c                                           ; $6157: $81
	dec  c                                           ; $6158: $0d
	adc  [hl]                                        ; $6159: $8e
	nop                                              ; $615a: $00
	adc  d                                           ; $615b: $8a
	ld   bc, $0082                                   ; $615c: $01 $82 $00
	ld   bc, $0ff5                                   ; $615f: $01 $f5 $0f
	add  c                                           ; $6162: $81
	ld   c, $07                                      ; $6163: $0e $07
	inc  c                                           ; $6165: $0c
	dec  bc                                          ; $6166: $0b
	inc  bc                                          ; $6167: $03
	inc  c                                           ; $6168: $0c
	rrca                                             ; $6169: $0f
	inc  c                                           ; $616a: $0c
	rrca                                             ; $616b: $0f
	nop                                              ; $616c: $00
	add  c                                           ; $616d: $81
	rrca                                             ; $616e: $0f
	nop                                              ; $616f: $00
	sub  b                                           ; $6170: $90
	add  e                                           ; $6171: $83
	ld   l, a                                        ; $6172: $6f
	ld   b, $e0                                      ; $6173: $06 $e0
	rst  $28                                         ; $6175: $ef
	cpl                                              ; $6176: $2f
	rst  $28                                         ; $6177: $ef
	ld   b, b                                        ; $6178: $40
	adc  a                                           ; $6179: $8f
	jr   nz, jr_07c_60fd                             ; $617a: $20 $81

	rst  $28                                         ; $617c: $ef
	nop                                              ; $617d: $00
	jr   nc, jr_07c_6103                             ; $617e: $30 $83

	rst  $38                                         ; $6180: $ff
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	add  c                                           ; $6183: $81
	rst  $38                                         ; $6184: $ff
	ld   [bc], a                                     ; $6185: $02
	nop                                              ; $6186: $00
	rst  $38                                         ; $6187: $ff
	nop                                              ; $6188: $00
	add  c                                           ; $6189: $81
	rst  $38                                         ; $618a: $ff
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	add  e                                           ; $618d: $83
	rst  $38                                         ; $618e: $ff
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	add  c                                           ; $6191: $81
	rst  $38                                         ; $6192: $ff
	ld   [bc], a                                     ; $6193: $02
	nop                                              ; $6194: $00
	rst  $38                                         ; $6195: $ff
	nop                                              ; $6196: $00
	add  c                                           ; $6197: $81
	rst  $38                                         ; $6198: $ff
	nop                                              ; $6199: $00
	adc  a                                           ; $619a: $8f
	add  c                                           ; $619b: $81
	ld   [hl], b                                     ; $619c: $70
	add  b                                           ; $619d: $80
	ld   [hl], e                                     ; $619e: $73
	nop                                              ; $619f: $00
	ld   [hl], b                                     ; $61a0: $70
	add  c                                           ; $61a1: $81
	ld   [hl], a                                     ; $61a2: $77
	ld   [bc], a                                     ; $61a3: $02
	nop                                              ; $61a4: $00
	rlca                                             ; $61a5: $07
	nop                                              ; $61a6: $00
	add  b                                           ; $61a7: $80
	adc  a                                           ; $61a8: $8f
	add  b                                           ; $61a9: $80
	adc  h                                           ; $61aa: $8c
	add  b                                           ; $61ab: $80
	nop                                              ; $61ac: $00
	inc  bc                                          ; $61ad: $03
	inc  sp                                          ; $61ae: $33
	ret  nz                                          ; $61af: $c0

	di                                               ; $61b0: $f3
	nop                                              ; $61b1: $00
	add  c                                           ; $61b2: $81
	di                                               ; $61b3: $f3
	ld   [bc], a                                     ; $61b4: $02
	inc  de                                          ; $61b5: $13
	db   $e3                                         ; $61b6: $e3
	inc  bc                                          ; $61b7: $03
	add  b                                           ; $61b8: $80
	add  a                                           ; $61b9: $87
	add  b                                           ; $61ba: $80
	rra                                              ; $61bb: $1f
	add  b                                           ; $61bc: $80
	nop                                              ; $61bd: $00
	inc  c                                           ; $61be: $0c
	ldh  a, [rP1]                                    ; $61bf: $f0 $00
	ldh  a, [$1f]                                    ; $61c1: $f0 $1f
	rst  $38                                         ; $61c3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61c4: $cf
	rst  $38                                         ; $61c5: $ff
	sbc  a                                           ; $61c6: $9f
	rst  $38                                         ; $61c7: $ff
	ccf                                              ; $61c8: $3f
	rst  $38                                         ; $61c9: $ff
	adc  a                                           ; $61ca: $8f
	rst  $38                                         ; $61cb: $ff
	add  h                                           ; $61cc: $84
	nop                                              ; $61cd: $00
	add  d                                           ; $61ce: $82
	cp   $80                                         ; $61cf: $fe $80
	db   $fc                                         ; $61d1: $fc
	add  b                                           ; $61d2: $80
	ld   a, [$f280]                                  ; $61d3: $fa $80 $f2
	adc  [hl]                                        ; $61d6: $8e
	ld   b, $00                                      ; $61d7: $06 $00
	ld   bc, $a584                                   ; $61d9: $01 $84 $a5
	nop                                              ; $61dc: $00
	and  c                                           ; $61dd: $a1
	add  b                                           ; $61de: $80
	and  e                                           ; $61df: $a3
	add  b                                           ; $61e0: $80
	and  [hl]                                        ; $61e1: $a6
	dec  b                                           ; $61e2: $05
	xor  h                                           ; $61e3: $ac
	adc  h                                           ; $61e4: $8c
	sbc  b                                           ; $61e5: $98
	sbc  c                                           ; $61e6: $99
	ld   bc, $8080                                   ; $61e7: $01 $80 $80
	rst  $38                                         ; $61ea: $ff

jr_07c_61eb:
	add  b                                           ; $61eb: $80
	ld   a, a                                        ; $61ec: $7f
	add  b                                           ; $61ed: $80
	nop                                              ; $61ee: $00
	add  b                                           ; $61ef: $80
	ld   a, a                                        ; $61f0: $7f
	add  b                                           ; $61f1: $80
	rst  $38                                         ; $61f2: $ff
	add  b                                           ; $61f3: $80
	nop                                              ; $61f4: $00
	add  b                                           ; $61f5: $80
	rst  $38                                         ; $61f6: $ff
	add  b                                           ; $61f7: $80
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	rrca                                             ; $61fa: $0f
	add  c                                           ; $61fb: $81
	ldh  a, [rSC]                                    ; $61fc: $f0 $02
	inc  bc                                          ; $61fe: $03
	rst  $38                                         ; $61ff: $ff
	inc  b                                           ; $6200: $04
	add  c                                           ; $6201: $81
	ld   hl, sp+$04                                  ; $6202: $f8 $04
	inc  bc                                          ; $6204: $03
	rst  $38                                         ; $6205: $ff
	inc  b                                           ; $6206: $04
	ld   hl, sp-$40                                  ; $6207: $f8 $c0
	add  c                                           ; $6209: $81
	ccf                                              ; $620a: $3f
	add  b                                           ; $620b: $80
	nop                                              ; $620c: $00
	ld   bc, $3e01                                   ; $620d: $01 $01 $3e
	add  b                                           ; $6210: $80
	ccf                                              ; $6211: $3f
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	add  c                                           ; $6214: $81
	ccf                                              ; $6215: $3f
	add  b                                           ; $6216: $80
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	adc  l                                           ; $6219: $8d
	add  c                                           ; $621a: $81
	sbc  l                                           ; $621b: $9d
	add  b                                           ; $621c: $80
	dec  e                                           ; $621d: $1d
	nop                                              ; $621e: $00
	sbc  l                                           ; $621f: $9d
	add  d                                           ; $6220: $82
	dec  e                                           ; $6221: $1d
	add  c                                           ; $6222: $81
	sbc  l                                           ; $6223: $9d
	add  b                                           ; $6224: $80
	dec  e                                           ; $6225: $1d
	nop                                              ; $6226: $00

jr_07c_6227:
	db   $10                                         ; $6227: $10
	adc  l                                           ; $6228: $8d
	nop                                              ; $6229: $00
	add  b                                           ; $622a: $80
	ld   bc, $0080                                   ; $622b: $01 $80 $00
	add  b                                           ; $622e: $80
	ld   bc, $0080                                   ; $622f: $01 $80 $00
	add  d                                           ; $6232: $82
	ld   bc, $0080                                   ; $6233: $01 $80 $00
	add  b                                           ; $6236: $80
	ld   bc, $01fc                                   ; $6237: $01 $fc $01
	nop                                              ; $623a: $00
	rst  $28                                         ; $623b: $ef
	add  e                                           ; $623c: $83
	ld   [de], a                                     ; $623d: $12
	add  h                                           ; $623e: $84
	sub  d                                           ; $623f: $92
	add  b                                           ; $6240: $80
	ld   [de], a                                     ; $6241: $12
	add  b                                           ; $6242: $80
	ld   a, [de]                                     ; $6243: $1a
	add  c                                           ; $6244: $81
	jp   wBaseScriptAddr+1                                       ; $6245: $c3 $8b $cb


	inc  b                                           ; $6248: $04
	ld   [de], a                                     ; $6249: $12
	ld   a, e                                        ; $624a: $7b
	ld   h, a                                        ; $624b: $67
	inc  e                                           ; $624c: $1c
	dec  de                                          ; $624d: $1b
	add  b                                           ; $624e: $80
	rlca                                             ; $624f: $07
	ld   bc, $0b03                                   ; $6250: $01 $03 $0b
	add  b                                           ; $6253: $80
	dec  hl                                          ; $6254: $2b
	add  e                                           ; $6255: $83
	dec  sp                                          ; $6256: $3b
	ld   bc, $f272                                   ; $6257: $01 $72 $f2
	add  b                                           ; $625a: $80
	push af                                          ; $625b: $f5
	add  b                                           ; $625c: $80
	ldh  a, [c]                                      ; $625d: $f2
	add  b                                           ; $625e: $80
	push af                                          ; $625f: $f5
	add  b                                           ; $6260: $80
	ldh  a, [c]                                      ; $6261: $f2
	add  b                                           ; $6262: $80
	push af                                          ; $6263: $f5
	add  b                                           ; $6264: $80
	ldh  a, [c]                                      ; $6265: $f2
	add  b                                           ; $6266: $80
	push af                                          ; $6267: $f5
	inc  bc                                          ; $6268: $03
	jr   nc, jr_07c_61eb                             ; $6269: $30 $80

	nop                                              ; $626b: $00
	ld   b, b                                        ; $626c: $40
	add  b                                           ; $626d: $80
	ret  nz                                          ; $626e: $c0

	rlca                                             ; $626f: $07
	ld   b, b                                        ; $6270: $40
	ld   h, b                                        ; $6271: $60
	ldh  [$f0], a                                    ; $6272: $e0 $f0
	ld   [hl], b                                     ; $6274: $70
	ld   a, b                                        ; $6275: $78
	ld   hl, sp-$04                                  ; $6276: $f8 $fc
	add  b                                           ; $6278: $80
	ld   a, h                                        ; $6279: $7c
	ld   bc, $fd81                                   ; $627a: $01 $81 $fd
	add  b                                           ; $627d: $80
	rst  $38                                         ; $627e: $ff
	nop                                              ; $627f: $00
	cp   $81                                         ; $6280: $fe $81
	rst  $38                                         ; $6282: $ff
	add  b                                           ; $6283: $80
	ld   a, a                                        ; $6284: $7f
	add  b                                           ; $6285: $80
	ccf                                              ; $6286: $3f
	add  b                                           ; $6287: $80
	rra                                              ; $6288: $1f
	add  b                                           ; $6289: $80
	rrca                                             ; $628a: $0f
	nop                                              ; $628b: $00
	cp   $85                                         ; $628c: $fe $85
	rst  $38                                         ; $628e: $ff
	nop                                              ; $628f: $00
	ld   a, a                                        ; $6290: $7f
	add  c                                           ; $6291: $81
	rst  $38                                         ; $6292: $ff
	nop                                              ; $6293: $00
	cp   a                                           ; $6294: $bf
	add  c                                           ; $6295: $81
	rst  $38                                         ; $6296: $ff
	nop                                              ; $6297: $00
	jr   nc, jr_07c_6227                             ; $6298: $30 $8d

	nop                                              ; $629a: $00
	ld   bc, $01f1                                   ; $629b: $01 $f1 $01
	add  [hl]                                        ; $629e: $86
	inc  bc                                          ; $629f: $03
	add  b                                           ; $62a0: $80
	nop                                              ; $62a1: $00
	add  b                                           ; $62a2: $80
	ld   bc, $0080                                   ; $62a3: $01 $80 $00
	add  h                                           ; $62a6: $84
	pop  hl                                          ; $62a7: $e1
	add  b                                           ; $62a8: $80
	ldh  [$80], a                                    ; $62a9: $e0 $80
	pop  bc                                          ; $62ab: $c1
	add  b                                           ; $62ac: $80
	and  b                                           ; $62ad: $a0
	add  b                                           ; $62ae: $80
	ld   b, c                                        ; $62af: $41
	add  b                                           ; $62b0: $80
	and  b                                           ; $62b1: $a0
	add  d                                           ; $62b2: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62b3: $cf
	add  b                                           ; $62b4: $80
	ld   c, l                                        ; $62b5: $4d
	add  b                                           ; $62b6: $80
	adc  d                                           ; $62b7: $8a
	add  b                                           ; $62b8: $80
	ld   b, a                                        ; $62b9: $47
	add  b                                           ; $62ba: $80
	adc  d                                           ; $62bb: $8a
	add  b                                           ; $62bc: $80
	ld   b, h                                        ; $62bd: $44
	add  b                                           ; $62be: $80
	adc  b                                           ; $62bf: $88
	add  b                                           ; $62c0: $80
	pop  hl                                          ; $62c1: $e1
	add  b                                           ; $62c2: $80
	and  d                                           ; $62c3: $a2
	add  b                                           ; $62c4: $80
	ld   b, c                                        ; $62c5: $41
	add  b                                           ; $62c6: $80
	and  d                                           ; $62c7: $a2
	add  b                                           ; $62c8: $80
	ld   bc, $0a80                                   ; $62c9: $01 $80 $0a
	add  b                                           ; $62cc: $80
	inc  d                                           ; $62cd: $14
	add  b                                           ; $62ce: $80
	jr   nz, @-$7e                                   ; $62cf: $20 $80

	inc  d                                           ; $62d1: $14
	add  b                                           ; $62d2: $80
	xor  b                                           ; $62d3: $a8
	add  b                                           ; $62d4: $80
	ld   b, b                                        ; $62d5: $40
	add  b                                           ; $62d6: $80
	add  b                                           ; $62d7: $80
	adc  l                                           ; $62d8: $8d
	nop                                              ; $62d9: $00
	add  b                                           ; $62da: $80
	ld   bc, $0380                                   ; $62db: $01 $80 $03
	add  b                                           ; $62de: $80
	rlca                                             ; $62df: $07
	add  b                                           ; $62e0: $80
	rrca                                             ; $62e1: $0f
	add  b                                           ; $62e2: $80
	rra                                              ; $62e3: $1f
	add  b                                           ; $62e4: $80
	ccf                                              ; $62e5: $3f
	add  b                                           ; $62e6: $80
	ld   a, a                                        ; $62e7: $7f
	adc  c                                           ; $62e8: $89
	rst  $38                                         ; $62e9: $ff
	ld   bc, $8cf3                                   ; $62ea: $01 $f3 $8c
	add  b                                           ; $62ed: $80
	add  h                                           ; $62ee: $84
	dec  b                                           ; $62ef: $05
	sub  b                                           ; $62f0: $90
	ret  nc                                          ; $62f1: $d0

	ret  z                                           ; $62f2: $c8

	add  sp, -$1c                                    ; $62f3: $e8 $e4
	db   $f4                                         ; $62f5: $f4
	add  c                                           ; $62f6: $81
	ldh  a, [$80]                                    ; $62f7: $f0 $80
	ld   hl, sp+$01                                  ; $62f9: $f8 $01
	db   $fc                                         ; $62fb: $fc
	dec  a                                           ; $62fc: $3d
	adc  l                                           ; $62fd: $8d
	rlc  b                                           ; $62fe: $cb $00
	ld   bc, $3b8d                                   ; $6300: $01 $8d $3b
	ld   bc, $f272                                   ; $6303: $01 $72 $f2
	add  b                                           ; $6306: $80
	push af                                          ; $6307: $f5
	add  b                                           ; $6308: $80
	ldh  a, [c]                                      ; $6309: $f2
	add  b                                           ; $630a: $80
	push af                                          ; $630b: $f5
	add  b                                           ; $630c: $80
	ldh  a, [c]                                      ; $630d: $f2
	add  b                                           ; $630e: $80
	push af                                          ; $630f: $f5
	add  b                                           ; $6310: $80
	ldh  a, [c]                                      ; $6311: $f2
	add  b                                           ; $6312: $80
	push af                                          ; $6313: $f5
	ld   bc, $fc30                                   ; $6314: $01 $30 $fc
	add  b                                           ; $6317: $80
	ld   a, h                                        ; $6318: $7c
	add  b                                           ; $6319: $80
	db   $fd                                         ; $631a: $fd
	dec  bc                                          ; $631b: $0b
	dec  a                                           ; $631c: $3d
	ld   a, l                                        ; $631d: $7d
	db   $dd                                         ; $631e: $dd
	db   $fd                                         ; $631f: $fd
	ld   l, l                                        ; $6320: $6d
	ld   a, l                                        ; $6321: $7d
	push af                                          ; $6322: $f5
	db   $fd                                         ; $6323: $fd
	ld   a, c                                        ; $6324: $79
	ld   a, l                                        ; $6325: $7d
	ld   e, $1f                                      ; $6326: $1e $1f
	add  b                                           ; $6328: $80
	rrca                                             ; $6329: $0f
	add  b                                           ; $632a: $80
	rlca                                             ; $632b: $07
	add  b                                           ; $632c: $80
	adc  a                                           ; $632d: $8f
	add  b                                           ; $632e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $632f: $cf
	add  b                                           ; $6330: $80
	ld   sp, hl                                      ; $6331: $f9
	add  b                                           ; $6332: $80
	pop  hl                                          ; $6333: $e1
	ld   [bc], a                                     ; $6334: $02
	add  b                                           ; $6335: $80
	add  c                                           ; $6336: $81
	rra                                              ; $6337: $1f
	add  c                                           ; $6338: $81
	rst  $38                                         ; $6339: $ff
	nop                                              ; $633a: $00
	rst  $28                                         ; $633b: $ef
	add  c                                           ; $633c: $81
	rst  $38                                         ; $633d: $ff
	nop                                              ; $633e: $00
	rst  $30                                         ; $633f: $f7
	add  c                                           ; $6340: $81
	rst  $38                                         ; $6341: $ff
	nop                                              ; $6342: $00
	ei                                               ; $6343: $fb
	add  c                                           ; $6344: $81
	rst  $38                                         ; $6345: $ff
	nop                                              ; $6346: $00
	inc  bc                                          ; $6347: $03
	add  l                                           ; $6348: $85
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	inc  c                                           ; $634b: $0c
	add  c                                           ; $634c: $81
	inc  bc                                          ; $634d: $03
	add  b                                           ; $634e: $80
	ld   bc, $0c80                                   ; $634f: $01 $80 $0c
	nop                                              ; $6352: $00
	rrca                                             ; $6353: $0f
	add  l                                           ; $6354: $85
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	rst  $38                                         ; $6357: $ff
	add  l                                           ; $6358: $85
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	rst  $38                                         ; $635b: $ff
	add  l                                           ; $635c: $85
	nop                                              ; $635d: $00
	ld   bc, $37cb                                   ; $635e: $01 $cb $37
	add  h                                           ; $6361: $84
	or   a                                           ; $6362: $b7
	nop                                              ; $6363: $00
	db   $fc                                         ; $6364: $fc
	add  l                                           ; $6365: $85
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	rst  $38                                         ; $6368: $ff
	add  b                                           ; $6369: $80
	ldh  a, [rTMA]                                   ; $636a: $f0 $06
	ld   hl, sp-$06                                  ; $636c: $f8 $fa

jr_07c_636e:
	cp   $fc                                         ; $636e: $fe $fc
	rst  $38                                         ; $6370: $ff
	nop                                              ; $6371: $00
	rrca                                             ; $6372: $0f
	add  b                                           ; $6373: $80
	ld   bc, $0880                                   ; $6374: $01 $80 $08
	add  b                                           ; $6377: $80
	rlca                                             ; $6378: $07
	add  [hl]                                        ; $6379: $86
	inc  bc                                          ; $637a: $03
	ld   bc, $00f0                                   ; $637b: $01 $f0 $00
	add  b                                           ; $637e: $80
	ret  nz                                          ; $637f: $c0

	add  b                                           ; $6380: $80
	ld   [hl], b                                     ; $6381: $70
	add  b                                           ; $6382: $80
	inc  e                                           ; $6383: $1c
	add  b                                           ; $6384: $80
	rst  ToBoot                                         ; $6385: $c7
	add  b                                           ; $6386: $80
	ld   sp, $0c80                                   ; $6387: $31 $80 $0c
	add  b                                           ; $638a: $80
	inc  bc                                          ; $638b: $03
	nop                                              ; $638c: $00
	or   h                                           ; $638d: $b4
	add  e                                           ; $638e: $83
	or   a                                           ; $638f: $b7
	add  d                                           ; $6390: $82
	scf                                              ; $6391: $37
	add  b                                           ; $6392: $80
	or   a                                           ; $6393: $b7
	add  d                                           ; $6394: $82
	scf                                              ; $6395: $37
	nop                                              ; $6396: $00
	inc  bc                                          ; $6397: $03
	adc  c                                           ; $6398: $89
	rst  $38                                         ; $6399: $ff
	add  b                                           ; $639a: $80
	cp   $80                                         ; $639b: $fe $80
	db   $fd                                         ; $639d: $fd
	nop                                              ; $639e: $00

jr_07c_639f:
	rst  $38                                         ; $639f: $ff
	add  b                                           ; $63a0: $80
	add  b                                           ; $63a1: $80
	add  b                                           ; $63a2: $80
	ret  nz                                          ; $63a3: $c0

	nop                                              ; $63a4: $00
	ldh  [$82], a                                    ; $63a5: $e0 $82
	add  sp, -$80                                    ; $63a7: $e8 $80
	ret  z                                           ; $63a9: $c8

	add  b                                           ; $63aa: $80
	xor  b                                           ; $63ab: $a8
	add  b                                           ; $63ac: $80
	ld   c, b                                        ; $63ad: $48
	nop                                              ; $63ae: $00
	ldh  [$83], a                                    ; $63af: $e0 $83
	nop                                              ; $63b1: $00
	nop                                              ; $63b2: $00
	ld   bc, $0085                                   ; $63b3: $01 $85 $00
	nop                                              ; $63b6: $00
	ld   bc, $0081                                   ; $63b7: $01 $81 $00
	inc  b                                           ; $63ba: $04
	ld   a, b                                        ; $63bb: $78
	nop                                              ; $63bc: $00
	add  h                                           ; $63bd: $84
	nop                                              ; $63be: $00
	ld   [bc], a                                     ; $63bf: $02
	add  l                                           ; $63c0: $85
	nop                                              ; $63c1: $00
	ld   [bc], a                                     ; $63c2: $02
	ld   [bc], a                                     ; $63c3: $02
	nop                                              ; $63c4: $00
	rrca                                             ; $63c5: $0f
	adc  l                                           ; $63c6: $8d
	inc  bc                                          ; $63c7: $03
	nop                                              ; $63c8: $00
	ld   b, h                                        ; $63c9: $44
	adc  l                                           ; $63ca: $8d
	or   a                                           ; $63cb: $b7
	ld   bc, $fa06                                   ; $63cc: $01 $06 $fa
	add  b                                           ; $63cf: $80
	db   $f4                                         ; $63d0: $f4
	add  b                                           ; $63d1: $80
	ld   [$d080], a                                  ; $63d2: $ea $80 $d0
	add  b                                           ; $63d5: $80
	xor  b                                           ; $63d6: $a8
	add  b                                           ; $63d7: $80
	ld   d, b                                        ; $63d8: $50
	add  b                                           ; $63d9: $80
	and  b                                           ; $63da: $a0
	add  b                                           ; $63db: $80
	ld   b, b                                        ; $63dc: $40
	ld   bc, $acb3                                   ; $63dd: $01 $b3 $ac
	adc  b                                           ; $63e0: $88
	inc  c                                           ; $63e1: $0c
	add  b                                           ; $63e2: $80
	ld   c, $80                                      ; $63e3: $0e $80
	rrca                                             ; $63e5: $0f
	ld   bc, $00e0                                   ; $63e6: $01 $e0 $00
	add  b                                           ; $63e9: $80
	add  b                                           ; $63ea: $80
	add  b                                           ; $63eb: $80
	jr   nz, jr_07c_636e                             ; $63ec: $20 $80

	db   $10                                         ; $63ee: $10
	add  b                                           ; $63ef: $80
	inc  d                                           ; $63f0: $14
	add  b                                           ; $63f1: $80
	ld   de, $1080                                   ; $63f2: $11 $80 $10
	add  b                                           ; $63f5: $80
	sub  b                                           ; $63f6: $90
	add  [hl]                                        ; $63f7: $86
	nop                                              ; $63f8: $00
	add  b                                           ; $63f9: $80
	jr   nz, jr_07c_6404                             ; $63fa: $20 $08

	db   $10                                         ; $63fc: $10
	jr   nc, jr_07c_639f                             ; $63fd: $30 $a0

	cp   b                                           ; $63ff: $b8
	cp   d                                           ; $6400: $ba
	cp   [hl]                                        ; $6401: $be
	ld   b, h                                        ; $6402: $44
	nop                                              ; $6403: $00

jr_07c_6404:
	ld   a, b                                        ; $6404: $78
	adc  c                                           ; $6405: $89
	nop                                              ; $6406: $00
	ld   [bc], a                                     ; $6407: $02
	rlca                                             ; $6408: $07
	nop                                              ; $6409: $00
	ld   hl, sp-$7f                                  ; $640a: $f8 $81
	rrca                                             ; $640c: $0f
	adc  d                                           ; $640d: $8a
	inc  bc                                          ; $640e: $03
	ld   bc, $00f0                                   ; $640f: $01 $f0 $00
	add  b                                           ; $6412: $80
	ret  nz                                          ; $6413: $c0

	add  b                                           ; $6414: $80
	db   $fc                                         ; $6415: $fc
	add  b                                           ; $6416: $80
	ccf                                              ; $6417: $3f
	add  b                                           ; $6418: $80
	inc  bc                                          ; $6419: $03
	add  h                                           ; $641a: $84
	nop                                              ; $641b: $00
	ld   bc, $b6b5                                   ; $641c: $01 $b5 $b6
	add  b                                           ; $641f: $80
	or   a                                           ; $6420: $b7
	add  b                                           ; $6421: $80
	or   [hl]                                        ; $6422: $b6
	add  b                                           ; $6423: $80
	or   l                                           ; $6424: $b5
	add  b                                           ; $6425: $80
	or   [hl]                                        ; $6426: $b6
	add  b                                           ; $6427: $80
	dec  [hl]                                        ; $6428: $35
	add  b                                           ; $6429: $80
	or   [hl]                                        ; $642a: $b6
	add  b                                           ; $642b: $80
	or   l                                           ; $642c: $b5
	ld   bc, $807c                                   ; $642d: $01 $7c $80
	add  b                                           ; $6430: $80
	ld   b, b                                        ; $6431: $40
	add  b                                           ; $6432: $80
	add  b                                           ; $6433: $80
	add  b                                           ; $6434: $80
	nop                                              ; $6435: $00
	add  b                                           ; $6436: $80
	add  b                                           ; $6437: $80
	add  h                                           ; $6438: $84
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	db   $10                                         ; $643b: $10
	add  c                                           ; $643c: $81
	rrca                                             ; $643d: $0f
	adc  d                                           ; $643e: $8a
	inc  c                                           ; $643f: $0c
	ld   bc, $f010                                   ; $6440: $01 $10 $f0
	add  b                                           ; $6443: $80
	db   $fc                                         ; $6444: $fc
	add  b                                           ; $6445: $80
	ld   a, a                                        ; $6446: $7f
	add  b                                           ; $6447: $80
	rra                                              ; $6448: $1f
	add  b                                           ; $6449: $80
	inc  de                                          ; $644a: $13
	add  h                                           ; $644b: $84
	db   $10                                         ; $644c: $10
	ld   bc, $bf80                                   ; $644d: $01 $80 $bf
	add  b                                           ; $6450: $80
	sbc  a                                           ; $6451: $9f
	add  b                                           ; $6452: $80
	add  a                                           ; $6453: $87
	add  b                                           ; $6454: $80
	add  e                                           ; $6455: $83
	add  b                                           ; $6456: $80
	add  c                                           ; $6457: $81
	add  h                                           ; $6458: $84
	add  b                                           ; $6459: $80
	nop                                              ; $645a: $00
	ccf                                              ; $645b: $3f
	add  b                                           ; $645c: $80
	nop                                              ; $645d: $00
	add  b                                           ; $645e: $80
	add  b                                           ; $645f: $80
	nop                                              ; $6460: $00
	ret  nz                                          ; $6461: $c0

	add  b                                           ; $6462: $80
	ldh  a, [rP1]                                    ; $6463: $f0 $00
	ret  nz                                          ; $6465: $c0

	add  c                                           ; $6466: $81
	ldh  a, [rDIV]                                   ; $6467: $f0 $04
	ld   [hl], b                                     ; $6469: $70
	ld   a, a                                        ; $646a: $7f
	jr   nc, @+$41                                   ; $646b: $30 $3f

	ldh  a, [$8a]                                    ; $646d: $f0 $8a
	nop                                              ; $646f: $00
	inc  bc                                          ; $6470: $03
	ld   hl, sp+$00                                  ; $6471: $f8 $00
	cp   $09                                         ; $6473: $fe $09
	add  e                                           ; $6475: $83
	nop                                              ; $6476: $00
	ld   [bc], a                                     ; $6477: $02
	ld   [$0700], sp                                 ; $6478: $08 $00 $07
	add  h                                           ; $647b: $84
	nop                                              ; $647c: $00
	ld   bc, $8101                                   ; $647d: $01 $01 $81
	add  e                                           ; $6480: $83
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	add  b                                           ; $6483: $80
	add  l                                           ; $6484: $85
	nop                                              ; $6485: $00
	ld   [bc], a                                     ; $6486: $02
	add  b                                           ; $6487: $80
	ld   b, b                                        ; $6488: $40
	inc  sp                                          ; $6489: $33
	add  l                                           ; $648a: $85
	inc  bc                                          ; $648b: $03
	add  d                                           ; $648c: $82
	rrca                                             ; $648d: $0f
	add  d                                           ; $648e: $82
	inc  bc                                          ; $648f: $03
	nop                                              ; $6490: $00
	ldh  a, [$87]                                    ; $6491: $f0 $87
	nop                                              ; $6493: $00
	add  b                                           ; $6494: $80
	ldh  a, [$80]                                    ; $6495: $f0 $80
	rst  $38                                         ; $6497: $ff
	add  b                                           ; $6498: $80
	rrca                                             ; $6499: $0f
	ld   bc, $b6b5                                   ; $649a: $01 $b5 $b6
	add  b                                           ; $649d: $80
	or   h                                           ; $649e: $b4
	add  b                                           ; $649f: $80
	or   [hl]                                        ; $64a0: $b6
	adc  b                                           ; $64a1: $88
	or   h                                           ; $64a2: $b4
	ld   bc, $0cef                                   ; $64a3: $01 $ef $0c
	add  b                                           ; $64a6: $80
	rrca                                             ; $64a7: $0f
	adc  d                                           ; $64a8: $8a
	inc  c                                           ; $64a9: $0c
	ld   bc, $10f0                                   ; $64aa: $01 $f0 $10
	add  b                                           ; $64ad: $80
	ldh  a, [$80]                                    ; $64ae: $f0 $80
	rra                                              ; $64b0: $1f
	adc  b                                           ; $64b1: $88
	stop                                             ; $64b2: $10 $00
	cp   a                                           ; $64b4: $bf
	add  e                                           ; $64b5: $83
	add  b                                           ; $64b6: $80
	add  b                                           ; $64b7: $80
	nop                                              ; $64b8: $00
	add  [hl]                                        ; $64b9: $86
	add  b                                           ; $64ba: $80
	ld   bc, $3fff                                   ; $64bb: $01 $ff $3f
	add  d                                           ; $64be: $82
	rra                                              ; $64bf: $1f
	add  b                                           ; $64c0: $80
	rla                                              ; $64c1: $17
	add  b                                           ; $64c2: $80
	inc  de                                          ; $64c3: $13
	add  b                                           ; $64c4: $80
	ld   de, $1082                                   ; $64c5: $11 $82 $10
	inc  b                                           ; $64c8: $04
	pop  af                                          ; $64c9: $f1
	rst  $38                                         ; $64ca: $ff
	ld   a, [$fcff]                                  ; $64cb: $fa $ff $fc
	add  c                                           ; $64ce: $81
	rst  $38                                         ; $64cf: $ff
	nop                                              ; $64d0: $00
	cp   $85                                         ; $64d1: $fe $85
	rst  $38                                         ; $64d3: $ff
	ld   b, $f7                                      ; $64d4: $06 $f7
	add  b                                           ; $64d6: $80
	ld   bc, $21e1                                   ; $64d7: $01 $e1 $21
	ret  z                                           ; $64da: $c8

	adc  b                                           ; $64db: $88
	add  b                                           ; $64dc: $80
	ldh  a, [rSB]                                    ; $64dd: $f0 $01
	cp   $ff                                         ; $64df: $fe $ff
	add  b                                           ; $64e1: $80
	ccf                                              ; $64e2: $3f
	add  c                                           ; $64e3: $81
	rra                                              ; $64e4: $1f
	ld   bc, $00de                                   ; $64e5: $01 $de $00
	add  b                                           ; $64e8: $80
	ld   b, b                                        ; $64e9: $40

jr_07c_64ea:
	nop                                              ; $64ea: $00
	ret  nz                                          ; $64eb: $c0

	add  e                                           ; $64ec: $83
	nop                                              ; $64ed: $00
	add  h                                           ; $64ee: $84
	rst  $38                                         ; $64ef: $ff
	nop                                              ; $64f0: $00
	di                                               ; $64f1: $f3
	adc  l                                           ; $64f2: $8d
	inc  bc                                          ; $64f3: $03
	ld   bc, $34c7                                   ; $64f4: $01 $c7 $34
	adc  h                                           ; $64f7: $8c
	or   h                                           ; $64f8: $b4
	ld   bc, InitWideTextBoxDimensions                                   ; $64f9: $01 $ec $0f
	adc  d                                           ; $64fc: $8a
	inc  c                                           ; $64fd: $0c
	add  b                                           ; $64fe: $80
	rrca                                             ; $64ff: $0f
	ld   bc, $ff1f                                   ; $6500: $01 $1f $ff
	adc  b                                           ; $6503: $88
	db   $10                                         ; $6504: $10
	add  b                                           ; $6505: $80
	rra                                              ; $6506: $1f
	add  b                                           ; $6507: $80
	ldh  a, [rSB]                                    ; $6508: $f0 $01
	cp   a                                           ; $650a: $bf
	add  b                                           ; $650b: $80
	add  b                                           ; $650c: $80
	nop                                              ; $650d: $00
	adc  b                                           ; $650e: $88
	add  b                                           ; $650f: $80
	add  b                                           ; $6510: $80
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	ret  nc                                          ; $6513: $d0

	adc  c                                           ; $6514: $89
	db   $10                                         ; $6515: $10
	ld   bc, $1a15                                   ; $6516: $01 $15 $1a
	add  b                                           ; $6519: $80
	dec  d                                           ; $651a: $15
	nop                                              ; $651b: $00
	ld   a, c                                        ; $651c: $79
	add  c                                           ; $651d: $81
	ld   a, a                                        ; $651e: $7f
	add  h                                           ; $651f: $84
	ccf                                              ; $6520: $3f
	inc  bc                                          ; $6521: $03
	rra                                              ; $6522: $1f
	dec  e                                           ; $6523: $1d
	dec  b                                           ; $6524: $05
	pop  af                                          ; $6525: $f1
	add  c                                           ; $6526: $81
	ld   d, c                                        ; $6527: $51
	add  c                                           ; $6528: $81
	ld   c, a                                        ; $6529: $4f
	add  d                                           ; $652a: $82
	rlca                                             ; $652b: $07
	nop                                              ; $652c: $00
	ld   c, $85                                      ; $652d: $0e $85
	stop                                             ; $652f: $10 $00
	di                                               ; $6531: $f3
	add  c                                           ; $6532: $81
	inc  bc                                          ; $6533: $03
	add  d                                           ; $6534: $82
	rrca                                             ; $6535: $0f
	add  [hl]                                        ; $6536: $86
	inc  bc                                          ; $6537: $03
	ld   bc, $00f0                                   ; $6538: $01 $f0 $00
	add  d                                           ; $653b: $82
	rst  $38                                         ; $653c: $ff
	adc  b                                           ; $653d: $88
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	or   a                                           ; $6540: $b7
	add  e                                           ; $6541: $83
	or   h                                           ; $6542: $b4
	add  b                                           ; $6543: $80
	inc  [hl]                                        ; $6544: $34
	add  [hl]                                        ; $6545: $86
	or   h                                           ; $6546: $b4
	nop                                              ; $6547: $00
	rst  $28                                         ; $6548: $ef
	adc  c                                           ; $6549: $89
	inc  c                                           ; $654a: $0c
	add  b                                           ; $654b: $80
	rrca                                             ; $654c: $0f
	add  b                                           ; $654d: $80
	inc  c                                           ; $654e: $0c
	nop                                              ; $654f: $00
	ldh  a, [$85]                                    ; $6550: $f0 $85
	db   $10                                         ; $6552: $10
	add  b                                           ; $6553: $80
	ld   de, $1e80                                   ; $6554: $11 $80 $1e
	add  b                                           ; $6557: $80
	ldh  [$80], a                                    ; $6558: $e0 $80
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	cp   a                                           ; $655c: $bf
	add  d                                           ; $655d: $82
	add  b                                           ; $655e: $80
	inc  b                                           ; $655f: $04
	add  c                                           ; $6560: $81
	add  b                                           ; $6561: $80
	adc  [hl]                                        ; $6562: $8e

jr_07c_6563:
	ret  nz                                          ; $6563: $c0

	ldh  a, [$80]                                    ; $6564: $f0 $80
	rlca                                             ; $6566: $07
	add  b                                           ; $6567: $80
	jr   c, jr_07c_64ea                              ; $6568: $38 $80

	ldh  [rTIMA], a                                  ; $656a: $e0 $05

jr_07c_656c:
	ld   [$150a], a                                  ; $656c: $ea $0a $15
	dec  [hl]                                        ; $656f: $35
	ld   a, [bc]                                     ; $6570: $0a
	jp   z, $3580                                    ; $6571: $ca $80 $35

	add  b                                           ; $6574: $80
	ld   a, [$3580]                                  ; $6575: $fa $80 $35
	add  b                                           ; $6578: $80
	ld   a, [hl-]                                    ; $6579: $3a
	add  b                                           ; $657a: $80
	dec  [hl]                                        ; $657b: $35
	add  b                                           ; $657c: $80
	pop  af                                          ; $657d: $f1
	add  b                                           ; $657e: $80
	or   c                                           ; $657f: $b1
	add  b                                           ; $6580: $80
	pop  af                                          ; $6581: $f1
	add  b                                           ; $6582: $80
	ld   d, c                                        ; $6583: $51
	add  b                                           ; $6584: $80
	pop  af                                          ; $6585: $f1
	add  b                                           ; $6586: $80
	or   c                                           ; $6587: $b1
	add  b                                           ; $6588: $80
	pop  af                                          ; $6589: $f1
	add  b                                           ; $658a: $80
	ld   d, c                                        ; $658b: $51
	add  [hl]                                        ; $658c: $86
	nop                                              ; $658d: $00
	add  b                                           ; $658e: $80
	db   $fc                                         ; $658f: $fc
	add  h                                           ; $6590: $84
	cp   $00                                         ; $6591: $fe $00
	di                                               ; $6593: $f3
	adc  e                                           ; $6594: $8b
	inc  bc                                          ; $6595: $03
	add  b                                           ; $6596: $80
	ld   c, $00                                      ; $6597: $0e $00
	ldh  a, [$87]                                    ; $6599: $f0 $87
	nop                                              ; $659b: $00
	add  b                                           ; $659c: $80
	rrca                                             ; $659d: $0f
	add  b                                           ; $659e: $80
	ldh  a, [$80]                                    ; $659f: $f0 $80
	rrca                                             ; $65a1: $0f
	nop                                              ; $65a2: $00
	or   a                                           ; $65a3: $b7
	add  l                                           ; $65a4: $85
	or   h                                           ; $65a5: $b4
	ld   bc, $b5b6                                   ; $65a6: $01 $b6 $b5
	add  b                                           ; $65a9: $80
	dec  [hl]                                        ; $65aa: $35
	add  b                                           ; $65ab: $80
	call z, $0080                                    ; $65ac: $cc $80 $00
	nop                                              ; $65af: $00
	rst  $38                                         ; $65b0: $ff
	add  d                                           ; $65b1: $82
	nop                                              ; $65b2: $00
	ld   [bc], a                                     ; $65b3: $02
	rrca                                             ; $65b4: $0f
	ld   c, $fe                                      ; $65b5: $0e $fe
	add  b                                           ; $65b7: $80
	ldh  a, [$80]                                    ; $65b8: $f0 $80
	inc  bc                                          ; $65ba: $03
	add  b                                           ; $65bb: $80
	ld   e, $80                                      ; $65bc: $1e $80
	pop  af                                          ; $65be: $f1
	inc  bc                                          ; $65bf: $03
	db   $e3                                         ; $65c0: $e3
	inc  bc                                          ; $65c1: $03
	inc  e                                           ; $65c2: $1c
	db   $fc                                         ; $65c3: $fc
	add  b                                           ; $65c4: $80
	db   $e3                                         ; $65c5: $e3
	add  b                                           ; $65c6: $80
	rra                                              ; $65c7: $1f
	add  b                                           ; $65c8: $80
	ld   [hl], e                                     ; $65c9: $73
	add  b                                           ; $65ca: $80
	jp   $3380                                       ; $65cb: $c3 $80 $33


	add  b                                           ; $65ce: $80
	db   $e3                                         ; $65cf: $e3
	add  b                                           ; $65d0: $80
	adc  a                                           ; $65d1: $8f
	add  b                                           ; $65d2: $80
	ld   a, h                                        ; $65d3: $7c
	add  b                                           ; $65d4: $80
	ldh  [$80], a                                    ; $65d5: $e0 $80
	add  c                                           ; $65d7: $81
	add  b                                           ; $65d8: $80
	ld   h, $84                                      ; $65d9: $26 $84
	ld   l, $80                                      ; $65db: $2e $80
	dec  l                                           ; $65dd: $2d
	adc  b                                           ; $65de: $88
	dec  hl                                          ; $65df: $2b
	add  d                                           ; $65e0: $82
	jr   z, jr_07c_6563                              ; $65e1: $28 $80

	ld   a, [hl-]                                    ; $65e3: $3a
	add  c                                           ; $65e4: $81
	jr   nc, jr_07c_656c                             ; $65e5: $30 $85

	ccf                                              ; $65e7: $3f
	add  b                                           ; $65e8: $80
	ld   l, a                                        ; $65e9: $6f
	add  b                                           ; $65ea: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65eb: $cf
	ld   bc, $f1fe                                   ; $65ec: $01 $fe $f1
	add  b                                           ; $65ef: $80
	inc  bc                                          ; $65f0: $03
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	adc  c                                           ; $65f3: $89
	rst  $38                                         ; $65f4: $ff
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	add  c                                           ; $65f7: $81
	rst  $38                                         ; $65f8: $ff
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	adc  c                                           ; $65fb: $89
	rst  $38                                         ; $65fc: $ff
	nop                                              ; $65fd: $00
	ld   bc, $fe81                                   ; $65fe: $01 $81 $fe
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	add  b                                           ; $6603: $80
	cp   $87                                         ; $6604: $fe $87
	rst  $38                                         ; $6606: $ff
	ld   bc, $42bf                                   ; $6607: $01 $bf $42
	add  a                                           ; $660a: $87
	ld   [bc], a                                     ; $660b: $02
	add  b                                           ; $660c: $80
	add  d                                           ; $660d: $82
	inc  b                                           ; $660e: $04
	jp   nz, $c4c6                                   ; $660f: $c2 $c6 $c4

	jr   nc, jr_07c_6614                             ; $6612: $30 $00

jr_07c_6614:
	add  b                                           ; $6614: $80
	rrca                                             ; $6615: $0f
	add  d                                           ; $6616: $82
	nop                                              ; $6617: $00
	add  b                                           ; $6618: $80
	inc  bc                                          ; $6619: $03
	add  b                                           ; $661a: $80
	rrca                                             ; $661b: $0f
	add  b                                           ; $661c: $80
	inc  c                                           ; $661d: $0c
	add  c                                           ; $661e: $81
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	ldh  a, [$80]                                    ; $6621: $f0 $80
	nop                                              ; $6623: $00
	add  b                                           ; $6624: $80
	inc  bc                                          ; $6625: $03
	add  b                                           ; $6626: $80
	ld   a, $80                                      ; $6627: $3e $80
	ldh  a, [$80]                                    ; $6629: $f0 $80
	ret  nz                                          ; $662b: $c0

	add  d                                           ; $662c: $82
	nop                                              ; $662d: $00
	add  b                                           ; $662e: $80
	rrca                                             ; $662f: $0f
	add  b                                           ; $6630: $80
	ld   [hl], c                                     ; $6631: $71
	add  b                                           ; $6632: $80
	pop  bc                                          ; $6633: $c1

jr_07c_6634:
	add  [hl]                                        ; $6634: $86
	ld   bc, $6180                                   ; $6635: $01 $80 $61
	add  b                                           ; $6638: $80
	add  a                                           ; $6639: $87
	add  b                                           ; $663a: $80
	sub  d                                           ; $663b: $92
	add  b                                           ; $663c: $80
	sbc  b                                           ; $663d: $98
	add  b                                           ; $663e: $80
	sbc  c                                           ; $663f: $99
	add  [hl]                                        ; $6640: $86
	sbc  e                                           ; $6641: $9b
	add  b                                           ; $6642: $80
	add  e                                           ; $6643: $83
	add  b                                           ; $6644: $80
	inc  bc                                          ; $6645: $03
	add  b                                           ; $6646: $80
	ld   b, e                                        ; $6647: $43
	adc  b                                           ; $6648: $88
	jp   $2e82                                       ; $6649: $c3 $82 $2e


	add  b                                           ; $664c: $80
	inc  l                                           ; $664d: $2c
	add  b                                           ; $664e: $80
	ld   hl, $2780                                   ; $664f: $21 $80 $27
	add  b                                           ; $6652: $80
	inc  l                                           ; $6653: $2c
	add  b                                           ; $6654: $80
	add  hl, sp                                      ; $6655: $39
	add  b                                           ; $6656: $80
	ld   [hl+], a                                    ; $6657: $22
	add  b                                           ; $6658: $80
	ld   hl, $2680                                   ; $6659: $21 $80 $26
	add  b                                           ; $665c: $80
	inc  a                                           ; $665d: $3c
	add  b                                           ; $665e: $80
	cp   c                                           ; $665f: $b9
	add  b                                           ; $6660: $80
	ld   h, e                                        ; $6661: $63
	add  b                                           ; $6662: $80
	add  $05                                         ; $6663: $c6 $05
	sbc  b                                           ; $6665: $98
	sbc  e                                           ; $6666: $9b
	inc  sp                                          ; $6667: $33
	scf                                              ; $6668: $37
	rla                                              ; $6669: $17
	rra                                              ; $666a: $1f
	add  b                                           ; $666b: $80
	cpl                                              ; $666c: $2f
	inc  b                                           ; $666d: $04
	ld   c, a                                        ; $666e: $4f
	ld   e, a                                        ; $666f: $5f
	sbc  a                                           ; $6670: $9f
	cp   a                                           ; $6671: $bf
	ccf                                              ; $6672: $3f
	add  b                                           ; $6673: $80
	ld   a, a                                        ; $6674: $7f
	add  e                                           ; $6675: $83
	rst  $38                                         ; $6676: $ff
	ld   b, $f9                                      ; $6677: $06 $f9
	and  $e7                                         ; $6679: $e6 $e7
	rst  $30                                         ; $667b: $f7
	di                                               ; $667c: $f3
	ei                                               ; $667d: $fb
	ld   sp, hl                                      ; $667e: $f9
	add  c                                           ; $667f: $81
	db   $fd                                         ; $6680: $fd
	nop                                              ; $6681: $00
	db   $fc                                         ; $6682: $fc
	add  b                                           ; $6683: $80
	cp   $81                                         ; $6684: $fe $81
	rst  $38                                         ; $6686: $ff
	ld   bc, $000f                                   ; $6687: $01 $0f $00
	adc  h                                           ; $668a: $8c
	add  hl, bc                                      ; $668b: $09
	ld   bc, $7c8c                                   ; $668c: $01 $8c $7c
	add  b                                           ; $668f: $80
	db   $10                                         ; $6690: $10
	add  b                                           ; $6691: $80
	add  a                                           ; $6692: $87
	adc  b                                           ; $6693: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6694: $cf
	add  b                                           ; $6695: $80
	dec  b                                           ; $6696: $05
	adc  h                                           ; $6697: $8c
	push bc                                          ; $6698: $c5
	add  [hl]                                        ; $6699: $86
	sbc  e                                           ; $669a: $9b
	add  b                                           ; $669b: $80
	sbc  d                                           ; $669c: $9a
	add  b                                           ; $669d: $80
	sbc  c                                           ; $669e: $99
	add  b                                           ; $669f: $80
	sbc  e                                           ; $66a0: $9b
	add  b                                           ; $66a1: $80
	sub  a                                           ; $66a2: $97
	add  h                                           ; $66a3: $84
	jp   $9380                                       ; $66a4: $c3 $80 $93


	add  b                                           ; $66a7: $80
	ld   [hl], e                                     ; $66a8: $73
	add  b                                           ; $66a9: $80
	db   $e3                                         ; $66aa: $e3
	add  b                                           ; $66ab: $80
	call z, $3880                                    ; $66ac: $cc $80 $38
	add  b                                           ; $66af: $80
	inc  c                                           ; $66b0: $0c
	add  b                                           ; $66b1: $80
	jr   jr_07c_6634                                 ; $66b2: $18 $80

	pop  af                                          ; $66b4: $f1
	add  b                                           ; $66b5: $80
	add  $07                                         ; $66b6: $c6 $07
	adc  h                                           ; $66b8: $8c
	adc  l                                           ; $66b9: $8d
	add  hl, de                                      ; $66ba: $19
	dec  de                                          ; $66bb: $1b
	ld   [hl], e                                     ; $66bc: $73
	ld   [hl], a                                     ; $66bd: $77
	rst  $20                                         ; $66be: $e7
	rst  $28                                         ; $66bf: $ef
	add  b                                           ; $66c0: $80
	ld   l, a                                        ; $66c1: $6f
	inc  b                                           ; $66c2: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c3: $cf
	rst  JumpTable                                         ; $66c4: $df
	sbc  a                                           ; $66c5: $9f
	cp   a                                           ; $66c6: $bf
	ccf                                              ; $66c7: $3f
	add  a                                           ; $66c8: $87
	rst  $38                                         ; $66c9: $ff
	rst  $38                                         ; $66ca: $ff
	nop                                              ; $66cb: $00
	rst  $38                                         ; $66cc: $ff
	nop                                              ; $66cd: $00
	call c, $b500                                    ; $66ce: $dc $00 $b5
	ld   bc, $0086                                   ; $66d1: $01 $86 $00
	ld   [bc], a                                     ; $66d4: $02
	ld   [bc], a                                     ; $66d5: $02
	rlca                                             ; $66d6: $07
	inc  b                                           ; $66d7: $04
	add  e                                           ; $66d8: $83
	dec  bc                                          ; $66d9: $0b
	nop                                              ; $66da: $00
	ld   a, [bc]                                     ; $66db: $0a
	add  l                                           ; $66dc: $85
	nop                                              ; $66dd: $00
	ld   bc, wIsDoubleSpeed                                   ; $66de: $01 $02 $c2
	add  b                                           ; $66e1: $80
	push bc                                          ; $66e2: $c5
	add  b                                           ; $66e3: $80
	jp   z, $d580                                    ; $66e4: $ca $80 $d5

	nop                                              ; $66e7: $00
	ret  nz                                          ; $66e8: $c0

	add  l                                           ; $66e9: $85
	nop                                              ; $66ea: $00
	ld   [$bfaf], sp                                 ; $66eb: $08 $af $bf
	ld   a, [hl]                                     ; $66ee: $7e
	ld   a, a                                        ; $66ef: $7f
	call z, $f8fe                                    ; $66f0: $cc $fe $f8
	db   $fc                                         ; $66f3: $fc
	daa                                              ; $66f4: $27
	add  l                                           ; $66f5: $85
	nop                                              ; $66f6: $00
	dec  b                                           ; $66f7: $05
	ld   e, b                                        ; $66f8: $58
	cp   a                                           ; $66f9: $bf
	ld   de, $050f                                   ; $66fa: $11 $0f $05
	inc  bc                                          ; $66fd: $03
	add  b                                           ; $66fe: $80
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	rst  $38                                         ; $6701: $ff
	add  l                                           ; $6702: $85
	nop                                              ; $6703: $00
	inc  bc                                          ; $6704: $03
	ld   b, b                                        ; $6705: $40
	cp   a                                           ; $6706: $bf
	rst  $38                                         ; $6707: $ff
	ret  nz                                          ; $6708: $c0

	add  c                                           ; $6709: $81
	rst  JumpTable                                         ; $670a: $df
	ld   bc, $cfd0                                   ; $670b: $01 $d0 $cf
	add  [hl]                                        ; $670e: $86
	nop                                              ; $670f: $00
	add  b                                           ; $6710: $80
	rst  $38                                         ; $6711: $ff
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	add  c                                           ; $6714: $81
	rst  $38                                         ; $6715: $ff
	ld   bc, $ff00                                   ; $6716: $01 $00 $ff
	add  [hl]                                        ; $6719: $86
	nop                                              ; $671a: $00
	add  b                                           ; $671b: $80
	rst  $38                                         ; $671c: $ff
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	add  c                                           ; $671f: $81
	rst  $38                                         ; $6720: $ff
	ld   bc, $ff00                                   ; $6721: $01 $00 $ff
	add  [hl]                                        ; $6724: $86
	nop                                              ; $6725: $00
	add  b                                           ; $6726: $80
	rst  $38                                         ; $6727: $ff
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	add  c                                           ; $672a: $81
	rst  $38                                         ; $672b: $ff
	ld   bc, $ff00                                   ; $672c: $01 $00 $ff
	add  [hl]                                        ; $672f: $86
	nop                                              ; $6730: $00
	add  b                                           ; $6731: $80
	rst  $38                                         ; $6732: $ff
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	add  c                                           ; $6735: $81
	rst  $38                                         ; $6736: $ff
	ld   bc, $ff00                                   ; $6737: $01 $00 $ff
	add  [hl]                                        ; $673a: $86
	nop                                              ; $673b: $00
	add  b                                           ; $673c: $80
	rst  $38                                         ; $673d: $ff
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	add  c                                           ; $6740: $81
	rst  $38                                         ; $6741: $ff
	ld   bc, $ff00                                   ; $6742: $01 $00 $ff
	add  [hl]                                        ; $6745: $86
	nop                                              ; $6746: $00
	add  b                                           ; $6747: $80
	rst  $38                                         ; $6748: $ff
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	add  c                                           ; $674b: $81
	rst  $38                                         ; $674c: $ff
	ld   bc, $ff00                                   ; $674d: $01 $00 $ff
	add  [hl]                                        ; $6750: $86
	nop                                              ; $6751: $00
	add  b                                           ; $6752: $80
	rst  $38                                         ; $6753: $ff
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	add  c                                           ; $6756: $81
	rst  $38                                         ; $6757: $ff
	ld   bc, $ff00                                   ; $6758: $01 $00 $ff
	add  [hl]                                        ; $675b: $86
	nop                                              ; $675c: $00
	add  b                                           ; $675d: $80
	rst  $38                                         ; $675e: $ff
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	add  c                                           ; $6761: $81
	rst  $38                                         ; $6762: $ff
	ld   bc, $ff00                                   ; $6763: $01 $00 $ff
	add  [hl]                                        ; $6766: $86
	nop                                              ; $6767: $00
	add  b                                           ; $6768: $80
	rst  $38                                         ; $6769: $ff

jr_07c_676a:
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	add  c                                           ; $676c: $81
	rst  $38                                         ; $676d: $ff
	ld   bc, $ff00                                   ; $676e: $01 $00 $ff
	add  [hl]                                        ; $6771: $86
	nop                                              ; $6772: $00
	add  b                                           ; $6773: $80
	rst  $38                                         ; $6774: $ff
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	add  b                                           ; $6777: $80
	cp   $02                                         ; $6778: $fe $02
	rst  $38                                         ; $677a: $ff
	inc  bc                                          ; $677b: $03
	db   $fc                                         ; $677c: $fc
	add  l                                           ; $677d: $85
	nop                                              ; $677e: $00
	ld   bc, $7e81                                   ; $677f: $01 $81 $7e
	add  h                                           ; $6782: $84
	cp   $01                                         ; $6783: $fe $01
	ei                                               ; $6785: $fb
	ld   bc, $0080                                   ; $6786: $01 $80 $00
	inc  bc                                          ; $6789: $03
	ld   [bc], a                                     ; $678a: $02
	ld   bc, $030b                                   ; $678b: $01 $0b $03
	add  b                                           ; $678e: $80
	rlca                                             ; $678f: $07
	dec  de                                          ; $6790: $1b
	inc  bc                                          ; $6791: $03
	rrca                                             ; $6792: $0f
	ld   c, $0f                                      ; $6793: $0e $0f
	inc  c                                           ; $6795: $0c
	rrca                                             ; $6796: $0f
	xor  e                                           ; $6797: $ab
	ld   c, e                                        ; $6798: $4b
	rst  $10                                         ; $6799: $d7
	rst  $30                                         ; $679a: $f7
	ld   c, a                                        ; $679b: $4f
	cp   a                                           ; $679c: $bf
	daa                                              ; $679d: $27
	ccf                                              ; $679e: $3f
	cp   a                                           ; $679f: $bf
	rst  $38                                         ; $67a0: $ff
	sbc  [hl]                                        ; $67a1: $9e
	cp   $05                                         ; $67a2: $fe $05
	db   $fd                                         ; $67a4: $fd
	adc  d                                           ; $67a5: $8a
	ld   a, [$f857]                                  ; $67a6: $fa $57 $f8
	add  b                                           ; $67a9: $80
	ldh  a, [$c0]                                    ; $67aa: $f0 $c0
	ldh  [$80], a                                    ; $67ac: $e0 $80
	ret  nz                                          ; $67ae: $c0

	add  b                                           ; $67af: $80
	add  b                                           ; $67b0: $80
	nop                                              ; $67b1: $00

jr_07c_67b2:
	nop                                              ; $67b2: $00
	add  c                                           ; $67b3: $81
	add  b                                           ; $67b4: $80
	sub  b                                           ; $67b5: $90
	nop                                              ; $67b6: $00
	inc  bc                                          ; $67b7: $03
	jr   nz, jr_07c_67ea                             ; $67b8: $20 $30

	inc  e                                           ; $67ba: $1c
	inc  c                                           ; $67bb: $0c
	add  h                                           ; $67bc: $84
	ld   [bc], a                                     ; $67bd: $02
	add  b                                           ; $67be: $80
	inc  b                                           ; $67bf: $04
	add  b                                           ; $67c0: $80
	ld   [rRAMG], sp                                 ; $67c1: $08 $00 $00
	add  b                                           ; $67c4: $80
	db   $10                                         ; $67c5: $10
	adc  l                                           ; $67c6: $8d
	nop                                              ; $67c7: $00
	adc  [hl]                                        ; $67c8: $8e
	add  b                                           ; $67c9: $80
	adc  [hl]                                        ; $67ca: $8e
	ld   [bc], a                                     ; $67cb: $02
	adc  [hl]                                        ; $67cc: $8e
	nop                                              ; $67cd: $00
	add  b                                           ; $67ce: $80
	ld   [rRAMG], sp                                 ; $67cf: $08 $00 $00
	adc  h                                           ; $67d2: $8c
	ld   [$008d], sp                                 ; $67d3: $08 $8d $00
	add  b                                           ; $67d6: $80
	jr   nz, jr_07c_67d9                             ; $67d7: $20 $00

jr_07c_67d9:
	nop                                              ; $67d9: $00
	adc  h                                           ; $67da: $8c
	jr   nz, jr_07c_676a                             ; $67db: $20 $8d

	nop                                              ; $67dd: $00
	add  b                                           ; $67de: $80
	add  b                                           ; $67df: $80
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00

jr_07c_67e2:
	adc  h                                           ; $67e2: $8c
	add  b                                           ; $67e3: $80
	adc  l                                           ; $67e4: $8d
	inc  bc                                          ; $67e5: $03
	ld   bc, $f8fb                                   ; $67e6: $01 $fb $f8
	add  b                                           ; $67e9: $80

jr_07c_67ea:
	ldh  [$80], a                                    ; $67ea: $e0 $80

jr_07c_67ec:
	jp   $cc80                                       ; $67ec: $c3 $80 $cc


	add  b                                           ; $67ef: $80
	ldh  [$0b], a                                    ; $67f0: $e0 $0b
	sbc  h                                           ; $67f2: $9c
	db   $fc                                         ; $67f3: $fc
	db   $ec                                         ; $67f4: $ec
	db   $fc                                         ; $67f5: $fc
	or   $fe                                         ; $67f6: $f6 $fe
	adc  c                                           ; $67f8: $89
	rrca                                             ; $67f9: $0f
	dec  c                                           ; $67fa: $0d
	rrca                                             ; $67fb: $0f
	inc  bc                                          ; $67fc: $03
	rrca                                             ; $67fd: $0f
	add  b                                           ; $67fe: $80
	nop                                              ; $67ff: $00
	add  b                                           ; $6800: $80
	rrca                                             ; $6801: $0f
	rlca                                             ; $6802: $07
	ld   [bc], a                                     ; $6803: $02
	rrca                                             ; $6804: $0f
	ld   [bc], a                                     ; $6805: $02
	rrca                                             ; $6806: $0f
	nop                                              ; $6807: $00
	rrca                                             ; $6808: $0f
	db   $f4                                         ; $6809: $f4
	ld   [hl], h                                     ; $680a: $74
	add  b                                           ; $680b: $80
	ld   l, b                                        ; $680c: $68
	add  b                                           ; $680d: $80
	ld   d, b                                        ; $680e: $50
	ld   bc, $007f                                   ; $680f: $01 $7f $00
	add  b                                           ; $6812: $80
	rst  $38                                         ; $6813: $ff
	ld   b, $49                                      ; $6814: $06 $49
	rst  $38                                         ; $6816: $ff
	ld   c, c                                        ; $6817: $49
	rst  $38                                         ; $6818: $ff
	inc  b                                           ; $6819: $04
	rst  $38                                         ; $681a: $ff
	ei                                               ; $681b: $fb
	add  a                                           ; $681c: $87
	nop                                              ; $681d: $00
	add  b                                           ; $681e: $80
	ldh  a, [$80]                                    ; $681f: $f0 $80
	rst  $38                                         ; $6821: $ff
	ld   [bc], a                                     ; $6822: $02
	inc  b                                           ; $6823: $04
	rst  $38                                         ; $6824: $ff
	ei                                               ; $6825: $fb
	add  [hl]                                        ; $6826: $86
	nop                                              ; $6827: $00
	add  d                                           ; $6828: $82
	ld   bc, $0303                                   ; $6829: $01 $03 $03
	ld   bc, $e1e3                                   ; $682c: $01 $e3 $e1
	add  b                                           ; $682f: $80
	jr   nc, jr_07c_67b2                             ; $6830: $30 $80

	ld   [hl], b                                     ; $6832: $70
	add  c                                           ; $6833: $81
	or   b                                           ; $6834: $b0
	add  b                                           ; $6835: $80
	or   e                                           ; $6836: $b3
	add  l                                           ; $6837: $85
	or   b                                           ; $6838: $b0
	add  l                                           ; $6839: $85
	nop                                              ; $683a: $00
	add  b                                           ; $683b: $80
	rst  $38                                         ; $683c: $ff
	add  h                                           ; $683d: $84
	nop                                              ; $683e: $00
	add  [hl]                                        ; $683f: $86
	add  b                                           ; $6840: $80
	add  b                                           ; $6841: $80
	rst  $38                                         ; $6842: $ff
	add  h                                           ; $6843: $84
	add  b                                           ; $6844: $80
	add  [hl]                                        ; $6845: $86
	ld   [bc], a                                     ; $6846: $02
	ld   [bc], a                                     ; $6847: $02
	cp   $ff                                         ; $6848: $fe $ff
	ld   bc, $0284                                   ; $684a: $01 $84 $02
	add  [hl]                                        ; $684d: $86
	nop                                              ; $684e: $00
	add  b                                           ; $684f: $80
	rst  $38                                         ; $6850: $ff
	add  h                                           ; $6851: $84
	nop                                              ; $6852: $00
	add  [hl]                                        ; $6853: $86
	ld   [$ff80], sp                                 ; $6854: $08 $80 $ff
	add  h                                           ; $6857: $84
	ld   [$0086], sp                                 ; $6858: $08 $86 $00
	add  b                                           ; $685b: $80

jr_07c_685c:
	rst  $38                                         ; $685c: $ff
	add  h                                           ; $685d: $84
	nop                                              ; $685e: $00
	add  [hl]                                        ; $685f: $86
	jr   nz, jr_07c_67e2                             ; $6860: $20 $80

	rst  $38                                         ; $6862: $ff
	add  h                                           ; $6863: $84
	jr   nz, jr_07c_67ec                             ; $6864: $20 $86

	nop                                              ; $6866: $00
	add  b                                           ; $6867: $80
	rst  $38                                         ; $6868: $ff
	add  h                                           ; $6869: $84
	nop                                              ; $686a: $00
	add  l                                           ; $686b: $85
	add  b                                           ; $686c: $80
	ld   bc, $ff7f                                   ; $686d: $01 $7f $ff
	add  h                                           ; $6870: $84
	add  b                                           ; $6871: $80
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	add  l                                           ; $6874: $85
	inc  bc                                          ; $6875: $03
	add  b                                           ; $6876: $80
	ei                                               ; $6877: $fb
	add  h                                           ; $6878: $84
	inc  bc                                          ; $6879: $03
	ld   de, $fa89                                   ; $687a: $11 $89 $fa
	and  $f6                                         ; $687d: $e6 $f6
	rst  JumpTable                                         ; $687f: $df
	rst  $38                                         ; $6880: $ff
	sbc  e                                           ; $6881: $9b
	rst  JumpTable                                         ; $6882: $df
	or   a                                           ; $6883: $b7
	cp   e                                           ; $6884: $bb
	ld   l, b                                        ; $6885: $68
	halt                                             ; $6886: $76
	sub  $ee                                         ; $6887: $d6 $ee
	xor  a                                           ; $6889: $af
	rst  JumpTable                                         ; $688a: $df
	xor  a                                           ; $688b: $af
	ld   c, $80                                      ; $688c: $0e $80
	dec  c                                           ; $688e: $0d
	add  b                                           ; $688f: $80
	dec  bc                                          ; $6890: $0b
	add  b                                           ; $6891: $80
	rlca                                             ; $6892: $07
	add  [hl]                                        ; $6893: $86
	rrca                                             ; $6894: $0f
	nop                                              ; $6895: $00
	ei                                               ; $6896: $fb
	adc  c                                           ; $6897: $89
	rst  $38                                         ; $6898: $ff
	add  b                                           ; $6899: $80
	rst  $28                                         ; $689a: $ef
	add  b                                           ; $689b: $80
	rst  JumpTable                                         ; $689c: $df
	add  b                                           ; $689d: $80
	rst  $38                                         ; $689e: $ff
	add  d                                           ; $689f: $82

jr_07c_68a0:
	cp   $80                                         ; $68a0: $fe $80
	rst  $38                                         ; $68a2: $ff
	ld   [bc], a                                     ; $68a3: $02

jr_07c_68a4:
	cp   $ff                                         ; $68a4: $fe $ff
	cp   $83                                         ; $68a6: $fe $83
	rst  $38                                         ; $68a8: $ff
	ld   [bc], a                                     ; $68a9: $02
	add  h                                           ; $68aa: $84
	rst  $38                                         ; $68ab: $ff
	ld   e, a                                        ; $68ac: $5f
	add  c                                           ; $68ad: $81
	add  hl, de                                      ; $68ae: $19
	add  b                                           ; $68af: $80
	rst  ToBoot                                         ; $68b0: $c7
	ld   bc, $00fe                                   ; $68b1: $01 $fe $00
	add  b                                           ; $68b4: $80
	inc  bc                                          ; $68b5: $03
	add  b                                           ; $68b6: $80
	cp   e                                           ; $68b7: $bb
	ld   [bc], a                                     ; $68b8: $02
	cp   h                                           ; $68b9: $bc
	add  a                                           ; $68ba: $87
	inc  bc                                          ; $68bb: $03
	adc  [hl]                                        ; $68bc: $8e
	or   b                                           ; $68bd: $b0
	adc  l                                           ; $68be: $8d
	nop                                              ; $68bf: $00
	adc  [hl]                                        ; $68c0: $8e
	add  b                                           ; $68c1: $80
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	adc  [hl]                                        ; $68c4: $8e
	ld   [bc], a                                     ; $68c5: $02
	adc  [hl]                                        ; $68c6: $8e
	nop                                              ; $68c7: $00
	adc  [hl]                                        ; $68c8: $8e
	ld   [$008e], sp                                 ; $68c9: $08 $8e $00
	adc  [hl]                                        ; $68cc: $8e
	jr   nz, jr_07c_685c                             ; $68cd: $20 $8d

	nop                                              ; $68cf: $00
	adc  [hl]                                        ; $68d0: $8e
	add  b                                           ; $68d1: $80
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	adc  l                                           ; $68d4: $8d

jr_07c_68d5:
	inc  bc                                          ; $68d5: $03
	dec  b                                           ; $68d6: $05
	ld   [bc], a                                     ; $68d7: $02
	cp   a                                           ; $68d8: $bf
	cp   [hl]                                        ; $68d9: $be
	nop                                              ; $68da: $00
	cp   [hl]                                        ; $68db: $be
	ldh  [c], a                                      ; $68dc: $e2
	add  b                                           ; $68dd: $80
	cp   [hl]                                        ; $68de: $be
	ld   [$a1bd], sp                                 ; $68df: $08 $bd $a1
	or   h                                           ; $68e2: $b4
	or   a                                           ; $68e3: $b7
	ld   sp, hl                                      ; $68e4: $f9
	db   $eb                                         ; $68e5: $eb
	jr   nc, jr_07c_6961                             ; $68e6: $30 $79

	add  sp, -$7f                                    ; $68e8: $e8 $81
	rrca                                             ; $68ea: $0f
	add  b                                           ; $68eb: $80
	ld   c, $80                                      ; $68ec: $0e $80
	inc  c                                           ; $68ee: $0c
	add  b                                           ; $68ef: $80
	ld   [$0084], sp                                 ; $68f0: $08 $84 $00
	ld   bc, $afab                                   ; $68f3: $01 $ab $af
	add  b                                           ; $68f6: $80
	ld   e, a                                        ; $68f7: $5f
	add  b                                           ; $68f8: $80
	xor  a                                           ; $68f9: $af
	add  b                                           ; $68fa: $80
	ld   e, a                                        ; $68fb: $5f
	add  b                                           ; $68fc: $80
	cpl                                              ; $68fd: $2f
	add  b                                           ; $68fe: $80
	rra                                              ; $68ff: $1f
	add  b                                           ; $6900: $80
	rrca                                             ; $6901: $0f
	add  b                                           ; $6902: $80
	rra                                              ; $6903: $1f
	add  [hl]                                        ; $6904: $86
	rst  $38                                         ; $6905: $ff
	add  [hl]                                        ; $6906: $86
	cp   $00                                         ; $6907: $fe $00
	ld   d, e                                        ; $6909: $53
	add  l                                           ; $690a: $85
	xor  a                                           ; $690b: $af
	inc  bc                                          ; $690c: $03
	rst  JumpTable                                         ; $690d: $df
	ccf                                              ; $690e: $3f
	inc  l                                           ; $690f: $2c
	dec  hl                                          ; $6910: $2b
	add  b                                           ; $6911: $80
	push hl                                          ; $6912: $e5
	nop                                              ; $6913: $00
	ldh  [$80], a                                    ; $6914: $e0 $80
	push hl                                          ; $6916: $e5
	add  c                                           ; $6917: $81
	or   b                                           ; $6918: $b0
	add  b                                           ; $6919: $80
	or   e                                           ; $691a: $b3
	add  e                                           ; $691b: $83
	or   b                                           ; $691c: $b0
	nop                                              ; $691d: $00
	jr   nc, jr_07c_68a0                             ; $691e: $30 $80

	or   b                                           ; $6920: $b0
	nop                                              ; $6921: $00
	jr   nc, jr_07c_68a4                             ; $6922: $30 $80

	or   b                                           ; $6924: $b0
	add  c                                           ; $6925: $81
	nop                                              ; $6926: $00
	add  b                                           ; $6927: $80
	rst  $38                                         ; $6928: $ff
	adc  b                                           ; $6929: $88
	nop                                              ; $692a: $00
	add  e                                           ; $692b: $83
	add  b                                           ; $692c: $80
	ld   bc, $7fff                                   ; $692d: $01 $ff $7f
	adc  b                                           ; $6930: $88
	add  b                                           ; $6931: $80
	add  d                                           ; $6932: $82
	ld   [bc], a                                     ; $6933: $02
	add  b                                           ; $6934: $80
	rst  $38                                         ; $6935: $ff
	adc  b                                           ; $6936: $88
	ld   [bc], a                                     ; $6937: $02
	add  d                                           ; $6938: $82
	nop                                              ; $6939: $00
	add  b                                           ; $693a: $80
	rst  $38                                         ; $693b: $ff
	adc  b                                           ; $693c: $88
	nop                                              ; $693d: $00
	add  d                                           ; $693e: $82
	ld   [$ff80], sp                                 ; $693f: $08 $80 $ff
	adc  b                                           ; $6942: $88
	ld   [$0082], sp                                 ; $6943: $08 $82 $00
	add  b                                           ; $6946: $80
	rst  $38                                         ; $6947: $ff
	adc  b                                           ; $6948: $88
	nop                                              ; $6949: $00
	add  c                                           ; $694a: $81
	jr   nz, jr_07c_694f                             ; $694b: $20 $02

	rra                                              ; $694d: $1f
	rst  $38                                         ; $694e: $ff

jr_07c_694f:
	ldh  [$87], a                                    ; $694f: $e0 $87
	jr   nz, jr_07c_68d5                             ; $6951: $20 $82

	nop                                              ; $6953: $00
	add  b                                           ; $6954: $80
	rst  $38                                         ; $6955: $ff
	adc  b                                           ; $6956: $88
	nop                                              ; $6957: $00
	add  d                                           ; $6958: $82
	add  b                                           ; $6959: $80
	add  b                                           ; $695a: $80
	rst  $38                                         ; $695b: $ff
	adc  b                                           ; $695c: $88
	add  b                                           ; $695d: $80
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	add  c                                           ; $6960: $81

jr_07c_6961:
	inc  bc                                          ; $6961: $03
	add  b                                           ; $6962: $80
	ei                                               ; $6963: $fb
	adc  b                                           ; $6964: $88
	inc  bc                                          ; $6965: $03

jr_07c_6966:
	rlca                                             ; $6966: $07
	inc  hl                                          ; $6967: $23
	ld   a, b                                        ; $6968: $78
	ld   [hl-], a                                    ; $6969: $32
	ld   l, d                                        ; $696a: $6a
	inc  a                                           ; $696b: $3c
	ld   a, h                                        ; $696c: $7c
	ccf                                              ; $696d: $3f
	ld   h, e                                        ; $696e: $63
	add  b                                           ; $696f: $80
	inc  bc                                          ; $6970: $03
	add  b                                           ; $6971: $80
	ld   e, a                                        ; $6972: $5f
	add  b                                           ; $6973: $80
	rra                                              ; $6974: $1f
	ld   [bc], a                                     ; $6975: $02
	inc  a                                           ; $6976: $3c
	ld   h, b                                        ; $6977: $60
	cp   a                                           ; $6978: $bf
	add  e                                           ; $6979: $83
	nop                                              ; $697a: $00
	add  b                                           ; $697b: $80
	ld   bc, $0280                                   ; $697c: $01 $80 $02
	add  b                                           ; $697f: $80
	inc  b                                           ; $6980: $04
	add  b                                           ; $6981: $80
	ld   [$0080], sp                                 ; $6982: $08 $80 $00
	ld   bc, $2f2b                                   ; $6985: $01 $2b $2f
	add  b                                           ; $6988: $80
	ld   c, a                                        ; $6989: $4f
	add  b                                           ; $698a: $80
	adc  a                                           ; $698b: $8f
	ld   bc, $0f03                                   ; $698c: $01 $03 $0f
	add  b                                           ; $698f: $80
	rra                                              ; $6990: $1f
	add  b                                           ; $6991: $80
	ccf                                              ; $6992: $3f
	ld   bc, $5f47                                   ; $6993: $01 $47 $5f
	add  b                                           ; $6996: $80
	cp   [hl]                                        ; $6997: $be
	ld   bc, $feea                                   ; $6998: $01 $ea $fe
	add  b                                           ; $699b: $80
	rst  $38                                         ; $699c: $ff
	ld   [bc], a                                     ; $699d: $02
	cp   $ff                                         ; $699e: $fe $ff
	cp   $83                                         ; $69a0: $fe $83
	rst  $38                                         ; $69a2: $ff
	add  b                                           ; $69a3: $80
	ld   a, a                                        ; $69a4: $7f
	add  b                                           ; $69a5: $80
	rst  $38                                         ; $69a6: $ff
	ld   [$e5fb], sp                                 ; $69a7: $08 $fb $e5
	ldh  [$e5], a                                    ; $69aa: $e0 $e5
	ld   h, b                                        ; $69ac: $60
	add  b                                           ; $69ad: $80
	and  a                                           ; $69ae: $a7
	rst  $30                                         ; $69af: $f7
	ld   d, e                                        ; $69b0: $53
	add  c                                           ; $69b1: $81
	ei                                               ; $69b2: $fb
	ld   [bc], a                                     ; $69b3: $02
	ld   sp, hl                                      ; $69b4: $f9
	ei                                               ; $69b5: $fb
	ld   a, [$8a80]                                  ; $69b6: $fa $80 $8a
	inc  c                                           ; $69b9: $0c
	or   b                                           ; $69ba: $b0
	nop                                              ; $69bb: $00
	or   b                                           ; $69bc: $b0
	ld   [hl], h                                     ; $69bd: $74
	ld   e, h                                        ; $69be: $5c
	ld   a, h                                        ; $69bf: $7c
	ld   e, h                                        ; $69c0: $5c
	ld   a, h                                        ; $69c1: $7c
	ld   e, h                                        ; $69c2: $5c
	ld   a, b                                        ; $69c3: $78
	ld   e, b                                        ; $69c4: $58
	ld   [$8000], sp                                 ; $69c5: $08 $00 $80
	sub  b                                           ; $69c8: $90
	adc  a                                           ; $69c9: $8f
	nop                                              ; $69ca: $00
	adc  [hl]                                        ; $69cb: $8e
	add  b                                           ; $69cc: $80
	adc  [hl]                                        ; $69cd: $8e
	ld   [bc], a                                     ; $69ce: $02
	adc  [hl]                                        ; $69cf: $8e
	nop                                              ; $69d0: $00
	adc  [hl]                                        ; $69d1: $8e
	ld   [$008d], sp                                 ; $69d2: $08 $8d $00
	adc  [hl]                                        ; $69d5: $8e
	jr   nz, jr_07c_6966                             ; $69d6: $20 $8e

	nop                                              ; $69d8: $00
	adc  [hl]                                        ; $69d9: $8e
	add  b                                           ; $69da: $80
	ld   [bc], a                                     ; $69db: $02
	nop                                              ; $69dc: $00
	inc  bc                                          ; $69dd: $03
	add  hl, bc                                      ; $69de: $09
	add  b                                           ; $69df: $80
	rrca                                             ; $69e0: $0f
	dec  b                                           ; $69e1: $05
	dec  bc                                          ; $69e2: $0b
	add  hl, bc                                      ; $69e3: $09
	rrca                                             ; $69e4: $0f
	dec  c                                           ; $69e5: $0d
	rrca                                             ; $69e6: $0f
	dec  c                                           ; $69e7: $0d
	add  d                                           ; $69e8: $82
	rrca                                             ; $69e9: $0f
	nop                                              ; $69ea: $00
	ld   [$7e80], sp                                 ; $69eb: $08 $80 $7e
	inc  bc                                          ; $69ee: $03
	ld   h, d                                        ; $69ef: $62
	cp   $82                                         ; $69f0: $fe $82
	sbc  [hl]                                        ; $69f2: $9e
	add  b                                           ; $69f3: $80
	sbc  b                                           ; $69f4: $98
	nop                                              ; $69f5: $00
	sub  d                                           ; $69f6: $92
	add  c                                           ; $69f7: $81
	sbc  [hl]                                        ; $69f8: $9e
	dec  b                                           ; $69f9: $05
	sbc  b                                           ; $69fa: $98
	sub  [hl]                                        ; $69fb: $96

jr_07c_69fc:
	sbc  d                                           ; $69fc: $9a

jr_07c_69fd:
	jr   jr_07c_69fd                                 ; $69fd: $18 $fe

	ld   bc, $0280                                   ; $69ff: $01 $80 $02
	add  b                                           ; $6a02: $80
	dec  b                                           ; $6a03: $05
	add  b                                           ; $6a04: $80
	ld   a, [bc]                                     ; $6a05: $0a
	add  b                                           ; $6a06: $80
	dec  b                                           ; $6a07: $05
	add  b                                           ; $6a08: $80
	dec  bc                                          ; $6a09: $0b
	add  b                                           ; $6a0a: $80
	rlca                                             ; $6a0b: $07
	add  b                                           ; $6a0c: $80
	ld   c, $03                                      ; $6a0d: $0e $03
	ld   l, l                                        ; $6a0f: $6d
	ld   a, l                                        ; $6a10: $7d

jr_07c_6a11:
	jp   z, $80fa                                    ; $6a11: $ca $fa $80

	ld   [hl], c                                     ; $6a14: $71
	add  b                                           ; $6a15: $80
	ldh  [c], a                                      ; $6a16: $e2
	ld   bc, $c5a5                                   ; $6a17: $01 $a5 $c5
	add  b                                           ; $6a1a: $80
	jp   z, $1501                                    ; $6a1b: $ca $01 $15

	ld   d, l                                        ; $6a1e: $55
	add  b                                           ; $6a1f: $80
	xor  e                                           ; $6a20: $ab
	ld   bc, $7f7b                                   ; $6a21: $01 $7b $7f
	add  b                                           ; $6a24: $80
	rst  $38                                         ; $6a25: $ff
	add  b                                           ; $6a26: $80
	ld   a, a                                        ; $6a27: $7f
	add  b                                           ; $6a28: $80
	rst  $38                                         ; $6a29: $ff
	add  b                                           ; $6a2a: $80
	ld   a, a                                        ; $6a2b: $7f
	add  h                                           ; $6a2c: $84
	rst  $38                                         ; $6a2d: $ff
	inc  c                                           ; $6a2e: $0c
	ld   l, e                                        ; $6a2f: $6b
	jp   c, $8a4a                                    ; $6a30: $da $4a $8a

	ld   a, [de]                                     ; $6a33: $1a
	jp   c, $8d4a                                    ; $6a34: $da $4a $8d

	add  hl, hl                                      ; $6a37: $29
	or   $e8                                         ; $6a38: $f6 $e8
	cp   e                                           ; $6a3a: $bb
	dec  h                                           ; $6a3b: $25
	add  c                                           ; $6a3c: $81
	db   $fd                                         ; $6a3d: $fd
	dec  bc                                          ; $6a3e: $0b
	ld   e, l                                        ; $6a3f: $5d
	or   a                                           ; $6a40: $b7
	or   e                                           ; $6a41: $b3
	or   b                                           ; $6a42: $b0
	add  b                                           ; $6a43: $80
	or   b                                           ; $6a44: $b0
	ld   d, $6a                                      ; $6a45: $16 $6a
	ld   d, a                                        ; $6a47: $57
	ld   d, l                                        ; $6a48: $55
	ld   a, [hl+]                                    ; $6a49: $2a
	dec  hl                                          ; $6a4a: $2b
	add  b                                           ; $6a4b: $80
	ld   d, h                                        ; $6a4c: $54
	add  b                                           ; $6a4d: $80
	add  hl, hl                                      ; $6a4e: $29
	nop                                              ; $6a4f: $00
	ld   a, a                                        ; $6a50: $7f
	add  b                                           ; $6a51: $80
	rst  $38                                         ; $6a52: $ff
	add  l                                           ; $6a53: $85
	nop                                              ; $6a54: $00
	add  b                                           ; $6a55: $80
	add  b                                           ; $6a56: $80
	inc  b                                           ; $6a57: $04
	ld   b, b                                        ; $6a58: $40
	ret  nz                                          ; $6a59: $c0

	ld   h, b                                        ; $6a5a: $60
	jr   nz, @-$3e                                   ; $6a5b: $20 $c0

	add  b                                           ; $6a5d: $80
	rst  $38                                         ; $6a5e: $ff
	adc  e                                           ; $6a5f: $8b
	add  b                                           ; $6a60: $80
	nop                                              ; $6a61: $00
	add  d                                           ; $6a62: $82
	add  b                                           ; $6a63: $80

jr_07c_6a64:
	rst  $38                                         ; $6a64: $ff
	adc  e                                           ; $6a65: $8b
	ld   [bc], a                                     ; $6a66: $02
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	add  b                                           ; $6a69: $80
	rst  $38                                         ; $6a6a: $ff
	adc  e                                           ; $6a6b: $8b
	nop                                              ; $6a6c: $00
	ld   [bc], a                                     ; $6a6d: $02
	rrca                                             ; $6a6e: $0f
	rst  $38                                         ; $6a6f: $ff
	ld   hl, sp-$75                                  ; $6a70: $f8 $8b
	ld   [$ff80], sp                                 ; $6a72: $08 $80 $ff
	adc  h                                           ; $6a75: $8c
	nop                                              ; $6a76: $00
	add  b                                           ; $6a77: $80
	rst  $38                                         ; $6a78: $ff
	adc  h                                           ; $6a79: $8c
	jr   nz, jr_07c_69fc                             ; $6a7a: $20 $80

	rst  $38                                         ; $6a7c: $ff
	adc  h                                           ; $6a7d: $8c
	nop                                              ; $6a7e: $00
	add  b                                           ; $6a7f: $80
	rst  $38                                         ; $6a80: $ff
	adc  h                                           ; $6a81: $8c
	add  b                                           ; $6a82: $80
	add  b                                           ; $6a83: $80
	rst  $30                                         ; $6a84: $f7
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	adc  e                                           ; $6a87: $8b
	inc  bc                                          ; $6a88: $03
	ld   [bc], a                                     ; $6a89: $02
	add  hl, hl                                      ; $6a8a: $29
	ld   a, [hl+]                                    ; $6a8b: $2a
	jr   z, jr_07c_6a11                              ; $6a8c: $28 $83

	ld   a, [hl+]                                    ; $6a8e: $2a
	add  b                                           ; $6a8f: $80
	ld   h, $07                                      ; $6a90: $26 $07
	ld   a, [hl+]                                    ; $6a92: $2a
	inc  l                                           ; $6a93: $2c
	inc  d                                           ; $6a94: $14
	ld   a, [de]                                     ; $6a95: $1a
	ld   a, [hl+]                                    ; $6a96: $2a
	ld   [hl], $e5                                   ; $6a97: $36 $e5
	inc  c                                           ; $6a99: $0c
	add  b                                           ; $6a9a: $80
	add  hl, bc                                      ; $6a9b: $09
	add  b                                           ; $6a9c: $80
	ld   bc, $0380                                   ; $6a9d: $01 $80 $03
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	add  b                                           ; $6aa2: $80
	rrca                                             ; $6aa3: $0f
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	add  c                                           ; $6aa6: $81
	rrca                                             ; $6aa7: $0f
	ld   [bc], a                                     ; $6aa8: $02
	nop                                              ; $6aa9: $00
	ret  c                                           ; $6aaa: $d8

	rst  $10                                         ; $6aab: $d7
	add  b                                           ; $6aac: $80
	xor  a                                           ; $6aad: $af
	add  b                                           ; $6aae: $80

jr_07c_6aaf:
	ld   e, a                                        ; $6aaf: $5f
	add  b                                           ; $6ab0: $80
	cp   a                                           ; $6ab1: $bf
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	add  b                                           ; $6ab4: $80
	rst  $38                                         ; $6ab5: $ff
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	add  c                                           ; $6ab8: $81
	rst  $38                                         ; $6ab9: $ff
	inc  bc                                          ; $6aba: $03
	nop                                              ; $6abb: $00
	dec  b                                           ; $6abc: $05
	rst  $38                                         ; $6abd: $ff
	cp   $83                                         ; $6abe: $fe $83
	rst  $38                                         ; $6ac0: $ff
	ld   a, [bc]                                     ; $6ac1: $0a
	ld   b, $ff                                      ; $6ac2: $06 $ff
	jp   nz, $fc3e                                   ; $6ac4: $c2 $3e $fc

	rst  $38                                         ; $6ac7: $ff
	db   $fd                                         ; $6ac8: $fd
	nop                                              ; $6ac9: $00
	jp   nz, $2ec3                                   ; $6aca: $c2 $c3 $2e

	add  e                                           ; $6acd: $83
	rst  $28                                         ; $6ace: $ef
	ld   bc, $ef2f                                   ; $6acf: $01 $2f $ef
	add  b                                           ; $6ad2: $80
	nop                                              ; $6ad3: $00
	dec  b                                           ; $6ad4: $05
	rlca                                             ; $6ad5: $07
	rst  $38                                         ; $6ad6: $ff
	ld   hl, sp+$00                                  ; $6ad7: $f8 $00
	dec  l                                           ; $6ad9: $2d
	ld   d, d                                        ; $6ada: $52
	add  b                                           ; $6adb: $80
	inc  h                                           ; $6adc: $24
	add  b                                           ; $6add: $80
	ld   c, b                                        ; $6ade: $48
	add  b                                           ; $6adf: $80
	db   $10                                         ; $6ae0: $10
	add  b                                           ; $6ae1: $80
	jr   nz, jr_07c_6a64                             ; $6ae2: $20 $80

	ld   b, b                                        ; $6ae4: $40
	add  b                                           ; $6ae5: $80
	nop                                              ; $6ae6: $00
	add  b                                           ; $6ae7: $80
	ld   bc, $8f09                                   ; $6ae8: $01 $09 $8f
	db   $10                                         ; $6aeb: $10
	jr   jr_07c_6af6                                 ; $6aec: $18 $08

	inc  b                                           ; $6aee: $04
	inc  c                                           ; $6aef: $0c
	ld   a, [de]                                     ; $6af0: $1a
	ld   e, $3c                                      ; $6af1: $1e $3c
	ld   a, $80                                      ; $6af3: $3e $80
	ld   a, [hl]                                     ; $6af5: $7e

jr_07c_6af6:
	add  e                                           ; $6af6: $83
	cp   $83                                         ; $6af7: $fe $83
	add  b                                           ; $6af9: $80
	ld   bc, $8000                                   ; $6afa: $01 $00 $80
	add  d                                           ; $6afd: $82
	nop                                              ; $6afe: $00
	ld   bc, $c03f                                   ; $6aff: $01 $3f $c0
	add  b                                           ; $6b02: $80
	rst  $38                                         ; $6b03: $ff
	nop                                              ; $6b04: $00
	db   $fd                                         ; $6b05: $fd
	add  a                                           ; $6b06: $87
	ld   [bc], a                                     ; $6b07: $02
	add  b                                           ; $6b08: $80
	nop                                              ; $6b09: $00
	ld   bc, $00ff                                   ; $6b0a: $01 $ff $00
	add  c                                           ; $6b0d: $81
	rst  $38                                         ; $6b0e: $ff
	adc  c                                           ; $6b0f: $89
	nop                                              ; $6b10: $00
	ld   bc, $00ff                                   ; $6b11: $01 $ff $00
	add  b                                           ; $6b14: $80
	rst  $38                                         ; $6b15: $ff
	nop                                              ; $6b16: $00
	rst  $30                                         ; $6b17: $f7
	add  a                                           ; $6b18: $87
	ld   [$0080], sp                                 ; $6b19: $08 $80 $00
	ld   bc, $00ff                                   ; $6b1c: $01 $ff $00
	add  c                                           ; $6b1f: $81
	rst  $38                                         ; $6b20: $ff
	adc  c                                           ; $6b21: $89
	nop                                              ; $6b22: $00
	ld   bc, $00ff                                   ; $6b23: $01 $ff $00
	add  b                                           ; $6b26: $80
	rst  $38                                         ; $6b27: $ff
	nop                                              ; $6b28: $00
	rst  JumpTable                                         ; $6b29: $df
	add  l                                           ; $6b2a: $85
	jr   nz, jr_07c_6aaf                             ; $6b2b: $20 $82

	nop                                              ; $6b2d: $00
	ld   bc, $00ff                                   ; $6b2e: $01 $ff $00
	add  c                                           ; $6b31: $81
	rst  $38                                         ; $6b32: $ff

jr_07c_6b33:
	add  a                                           ; $6b33: $87
	nop                                              ; $6b34: $00
	add  b                                           ; $6b35: $80
	ld   bc, $fa04                                   ; $6b36: $01 $04 $fa
	ld   b, $fc                                      ; $6b39: $06 $fc
	cp   $7e                                         ; $6b3b: $fe $7e
	add  e                                           ; $6b3d: $83
	add  b                                           ; $6b3e: $80
	add  d                                           ; $6b3f: $82
	nop                                              ; $6b40: $00
	add  b                                           ; $6b41: $80
	ld   b, b                                        ; $6b42: $40
	ld   [bc], a                                     ; $6b43: $02
	and  b                                           ; $6b44: $a0
	cp   a                                           ; $6b45: $bf
	rra                                              ; $6b46: $1f
	add  b                                           ; $6b47: $80
	cp   a                                           ; $6b48: $bf
	adc  d                                           ; $6b49: $8a
	inc  bc                                          ; $6b4a: $03
	add  c                                           ; $6b4b: $81
	rst  $38                                         ; $6b4c: $ff
	inc  b                                           ; $6b4d: $04
	push af                                          ; $6b4e: $f5
	ld   l, $26                                      ; $6b4f: $2e $26
	ld   c, $03                                      ; $6b51: $0e $03
	add  b                                           ; $6b53: $80
	ld   [hl], b                                     ; $6b54: $70
	nop                                              ; $6b55: $00
	db   $10                                         ; $6b56: $10
	add  b                                           ; $6b57: $80
	ld   a, a                                        ; $6b58: $7f
	dec  b                                           ; $6b59: $05
	ld   a, [hl]                                     ; $6b5a: $7e
	ld   h, c                                        ; $6b5b: $61
	nop                                              ; $6b5c: $00
	ld   a, a                                        ; $6b5d: $7f
	nop                                              ; $6b5e: $00
	ld   a, a                                        ; $6b5f: $7f
	ld   l, a                                        ; $6b60: $6f
	ld   bc, $0f83                                   ; $6b61: $01 $83 $0f
	add  e                                           ; $6b64: $83
	ld   c, $00                                      ; $6b65: $0e $00
	inc  c                                           ; $6b67: $0c
	add  e                                           ; $6b68: $83
	ld   c, $03                                      ; $6b69: $0e $03
	add  e                                           ; $6b6b: $83
	nop                                              ; $6b6c: $00
	ld   b, b                                        ; $6b6d: $40
	ccf                                              ; $6b6e: $3f
	add  b                                           ; $6b6f: $80
	ld   [hl], e                                     ; $6b70: $73
	add  b                                           ; $6b71: $80
	ld   d, e                                        ; $6b72: $53
	add  d                                           ; $6b73: $82
	db   $d3                                         ; $6b74: $d3
	add  d                                           ; $6b75: $82
	sub  e                                           ; $6b76: $93
	dec  b                                           ; $6b77: $05
	rst  $38                                         ; $6b78: $ff
	nop                                              ; $6b79: $00
	jr   nz, @-$5f                                   ; $6b7a: $20 $9f

	push de                                          ; $6b7c: $d5
	sub  l                                           ; $6b7d: $95
	adc  b                                           ; $6b7e: $88
	dec  d                                           ; $6b7f: $15
	dec  b                                           ; $6b80: $05
	rst  $38                                         ; $6b81: $ff
	nop                                              ; $6b82: $00
	ld   b, $79                                      ; $6b83: $06 $79
	ld   l, b                                        ; $6b85: $68
	add  sp, -$80                                    ; $6b86: $e8 $80
	ld   l, b                                        ; $6b88: $68
	add  h                                           ; $6b89: $84
	ld   c, b                                        ; $6b8a: $48
	add  b                                           ; $6b8b: $80
	ld   c, d                                        ; $6b8c: $4a
	inc  bc                                          ; $6b8d: $03
	rst  $38                                         ; $6b8e: $ff
	nop                                              ; $6b8f: $00
	rrca                                             ; $6b90: $0f
	ldh  a, [$80]                                    ; $6b91: $f0 $80
	and  [hl]                                        ; $6b93: $a6
	add  b                                           ; $6b94: $80
	or   h                                           ; $6b95: $b4
	add  b                                           ; $6b96: $80
	and  h                                           ; $6b97: $a4
	add  b                                           ; $6b98: $80
	and  l                                           ; $6b99: $a5
	add  d                                           ; $6b9a: $82
	xor  l                                           ; $6b9b: $ad
	inc  bc                                          ; $6b9c: $03
	rst  $38                                         ; $6b9d: $ff
	nop                                              ; $6b9e: $00
	ld   hl, $80de                                   ; $6b9f: $21 $de $80
	ld   d, h                                        ; $6ba2: $54
	add  [hl]                                        ; $6ba3: $86
	ld   h, l                                        ; $6ba4: $65
	add  b                                           ; $6ba5: $80
	dec  h                                           ; $6ba6: $25
	inc  bc                                          ; $6ba7: $03
	rst  $38                                         ; $6ba8: $ff
	nop                                              ; $6ba9: $00
	rlca                                             ; $6baa: $07
	ld   hl, sp-$80                                  ; $6bab: $f8 $80
	xor  b                                           ; $6bad: $a8
	add  b                                           ; $6bae: $80
	jr   z, jr_07c_6b33                              ; $6baf: $28 $82

	jr   nz, jr_07c_6b33                             ; $6bb1: $20 $80

	dec  b                                           ; $6bb3: $05
	add  b                                           ; $6bb4: $80
	ld   b, h                                        ; $6bb5: $44
	ld   bc, $689d                                   ; $6bb6: $01 $9d $68
	add  e                                           ; $6bb9: $83
	add  sp, $01                                     ; $6bba: $e8 $01
	ld   h, b                                        ; $6bbc: $60
	ld   h, d                                        ; $6bbd: $62
	add  c                                           ; $6bbe: $81
	ld   h, b                                        ; $6bbf: $60
	add  hl, bc                                      ; $6bc0: $09
	ld   h, c                                        ; $6bc1: $61
	ld   h, b                                        ; $6bc2: $60
	ldh  [c], a                                      ; $6bc3: $e2
	ldh  [$9a], a                                    ; $6bc4: $e0 $9a
	rlca                                             ; $6bc6: $07
	dec  b                                           ; $6bc7: $05
	rlca                                             ; $6bc8: $07
	scf                                              ; $6bc9: $37
	rlca                                             ; $6bca: $07
	add  b                                           ; $6bcb: $80
	daa                                              ; $6bcc: $27
	inc  bc                                          ; $6bcd: $03
	inc  bc                                          ; $6bce: $03
	ld   b, a                                        ; $6bcf: $47
	rlca                                             ; $6bd0: $07
	rrca                                             ; $6bd1: $0f
	add  d                                           ; $6bd2: $82
	rra                                              ; $6bd3: $1f
	nop                                              ; $6bd4: $00
	sbc  a                                           ; $6bd5: $9f
	add  b                                           ; $6bd6: $80
	ld   a, a                                        ; $6bd7: $7f
	add  l                                           ; $6bd8: $85
	rst  $38                                         ; $6bd9: $ff
	nop                                              ; $6bda: $00
	ccf                                              ; $6bdb: $3f
	add  c                                           ; $6bdc: $81
	rst  $38                                         ; $6bdd: $ff
	ld   [bc], a                                     ; $6bde: $02
	cp   a                                           ; $6bdf: $bf
	rst  $38                                         ; $6be0: $ff
	ld   a, a                                        ; $6be1: $7f
	add  b                                           ; $6be2: $80
	rst  $30                                         ; $6be3: $f7
	ld   [de], a                                     ; $6be4: $12
	rst  $38                                         ; $6be5: $ff
	cp   $ff                                         ; $6be6: $fe $ff
	db   $fd                                         ; $6be8: $fd
	rst  $38                                         ; $6be9: $ff
	di                                               ; $6bea: $f3
	rst  $38                                         ; $6beb: $ff
	rst  $28                                         ; $6bec: $ef
	rst  $38                                         ; $6bed: $ff
	sbc  a                                           ; $6bee: $9f
	rst  $38                                         ; $6bef: $ff
	ld   a, a                                        ; $6bf0: $7f
	rst  $38                                         ; $6bf1: $ff
	inc  bc                                          ; $6bf2: $03
	rst  $28                                         ; $6bf3: $ef
	rrca                                             ; $6bf4: $0f
	rst  $28                                         ; $6bf5: $ef
	db   $fd                                         ; $6bf6: $fd
	rst  $30                                         ; $6bf7: $f7
	add  c                                           ; $6bf8: $81
	or   $01                                         ; $6bf9: $f6 $01
	rst  $30                                         ; $6bfb: $f7
	rst  $38                                         ; $6bfc: $ff
	add  b                                           ; $6bfd: $80
	ei                                               ; $6bfe: $fb
	inc  bc                                          ; $6bff: $03
	cp   $f6                                         ; $6c00: $fe $f6
	rst  $30                                         ; $6c02: $f7
	or   $82                                         ; $6c03: $f6 $82
	rst  $30                                         ; $6c05: $f7
	ld   bc, $0eff                                   ; $6c06: $01 $ff $0e
	add  c                                           ; $6c09: $81
	nop                                              ; $6c0a: $00
	ld   [$ff3f], sp                                 ; $6c0b: $08 $3f $ff
	ret  nz                                          ; $6c0e: $c0

jr_07c_6c0f:
	ld   a, a                                        ; $6c0f: $7f
	ld   b, b                                        ; $6c10: $40
	rst  $38                                         ; $6c11: $ff
	jr   nz, jr_07c_6c0f                             ; $6c12: $20 $fb

	db   $eb                                         ; $6c14: $eb
	add  c                                           ; $6c15: $81
	ei                                               ; $6c16: $fb
	add  c                                           ; $6c17: $81
	dec  bc                                          ; $6c18: $0b
	ld   [de], a                                     ; $6c19: $12
	rrca                                             ; $6c1a: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c1b: $cf
	rst  $38                                         ; $6c1c: $ff
	cpl                                              ; $6c1d: $2f
	rst  $38                                         ; $6c1e: $ff
	dec  l                                           ; $6c1f: $2d
	rst  $38                                         ; $6c20: $ff
	adc  c                                           ; $6c21: $89
	or   e                                           ; $6c22: $b3
	ld   a, $b5                                      ; $6c23: $3e $b5
	or   h                                           ; $6c25: $b4
	push af                                          ; $6c26: $f5
	ret  c                                           ; $6c27: $d8

	ei                                               ; $6c28: $fb
	ld   l, l                                        ; $6c29: $6d
	ld   a, a                                        ; $6c2a: $7f
	inc  a                                           ; $6c2b: $3c
	ccf                                              ; $6c2c: $3f
	add  b                                           ; $6c2d: $80
	db   $fc                                         ; $6c2e: $fc
	add  b                                           ; $6c2f: $80
	rst  $38                                         ; $6c30: $ff
	ld   a, [bc]                                     ; $6c31: $0a
	ld   [hl], a                                     ; $6c32: $77
	db   $dd                                         ; $6c33: $dd
	inc  b                                           ; $6c34: $04
	ei                                               ; $6c35: $fb
	ld   [hl+], a                                    ; $6c36: $22
	db   $dd                                         ; $6c37: $dd
	ld   b, h                                        ; $6c38: $44
	cp   e                                           ; $6c39: $bb
	xor  b                                           ; $6c3a: $a8
	ld   d, a                                        ; $6c3b: $57
	ld   d, l                                        ; $6c3c: $55
	add  c                                           ; $6c3d: $81
	rst  $38                                         ; $6c3e: $ff
	add  b                                           ; $6c3f: $80
	add  b                                           ; $6c40: $80
	nop                                              ; $6c41: $00
	dec  c                                           ; $6c42: $0d
	add  e                                           ; $6c43: $83
	ld   c, $82                                      ; $6c44: $0e $82
	rrca                                             ; $6c46: $0f
	add  b                                           ; $6c47: $80
	dec  c                                           ; $6c48: $0d
	nop                                              ; $6c49: $00
	add  hl, bc                                      ; $6c4a: $09
	add  c                                           ; $6c4b: $81
	dec  c                                           ; $6c4c: $0d
	ld   bc, $d32b                                   ; $6c4d: $01 $2b $d3
	add  b                                           ; $6c50: $80
	jp   nc, $da80                                   ; $6c51: $d2 $80 $da

	add  b                                           ; $6c54: $80
	ld   hl, sp-$80                                  ; $6c55: $f8 $80
	sbc  $80                                         ; $6c57: $de $80
	ld   e, a                                        ; $6c59: $5f
	add  b                                           ; $6c5a: $80
	ld   c, a                                        ; $6c5b: $4f
	add  b                                           ; $6c5c: $80
	rrca                                             ; $6c5d: $0f
	add  d                                           ; $6c5e: $82
	ld   d, l                                        ; $6c5f: $55
	add  b                                           ; $6c60: $80
	ld   b, c                                        ; $6c61: $41
	add  b                                           ; $6c62: $80
	ld   h, h                                        ; $6c63: $64
	add  b                                           ; $6c64: $80
	cp   $80                                         ; $6c65: $fe $80
	ld   hl, sp-$80                                  ; $6c67: $f8 $80
	ret  nz                                          ; $6c69: $c0

	add  b                                           ; $6c6a: $80
	nop                                              ; $6c6b: $00
	add  h                                           ; $6c6c: $84
	ld   b, d                                        ; $6c6d: $42
	add  b                                           ; $6c6e: $80
	inc  de                                          ; $6c6f: $13
	add  b                                           ; $6c70: $80
	rst  $38                                         ; $6c71: $ff
	add  b                                           ; $6c72: $80
	rla                                              ; $6c73: $17
	add  d                                           ; $6c74: $82
	nop                                              ; $6c75: $00
	add  h                                           ; $6c76: $84
	xor  l                                           ; $6c77: $ad
	add  b                                           ; $6c78: $80
	adc  c                                           ; $6c79: $89
	add  b                                           ; $6c7a: $80
	rst  $38                                         ; $6c7b: $ff
	add  b                                           ; $6c7c: $80
	db   $fd                                         ; $6c7d: $fd
	add  b                                           ; $6c7e: $80
	dec  a                                           ; $6c7f: $3d
	add  b                                           ; $6c80: $80
	dec  e                                           ; $6c81: $1d
	add  b                                           ; $6c82: $80
	dec  h                                           ; $6c83: $25
	add  b                                           ; $6c84: $80
	inc  h                                           ; $6c85: $24
	add  b                                           ; $6c86: $80
	nop                                              ; $6c87: $00
	add  b                                           ; $6c88: $80
	inc  b                                           ; $6c89: $04
	add  b                                           ; $6c8a: $80
	cp   a                                           ; $6c8b: $bf
	add  h                                           ; $6c8c: $84
	inc  de                                          ; $6c8d: $13
	add  b                                           ; $6c8e: $80
	ld   b, [hl]                                     ; $6c8f: $46
	add  d                                           ; $6c90: $82
	ld   d, h                                        ; $6c91: $54
	add  b                                           ; $6c92: $80
	rst  $10                                         ; $6c93: $d7
	add  b                                           ; $6c94: $80
	rst  $38                                         ; $6c95: $ff
	add  b                                           ; $6c96: $80
	ld   d, [hl]                                     ; $6c97: $56
	add  d                                           ; $6c98: $82
	ld   b, [hl]                                     ; $6c99: $46
	ld   bc, $e486                                   ; $6c9a: $01 $86 $e4
	add  b                                           ; $6c9d: $80
	db   $ec                                         ; $6c9e: $ec
	inc  b                                           ; $6c9f: $04
	db   $fc                                         ; $6ca0: $fc
	ld   hl, sp+$70                                  ; $6ca1: $f8 $70
	ld   [hl], c                                     ; $6ca3: $71
	ld   [hl], e                                     ; $6ca4: $73
	add  b                                           ; $6ca5: $80
	ld   [hl], c                                     ; $6ca6: $71
	ld   bc, $7773                                   ; $6ca7: $01 $73 $77
	add  b                                           ; $6caa: $80
	ld   h, a                                        ; $6cab: $67
	rlca                                             ; $6cac: $07
	ld   l, a                                        ; $6cad: $6f
	cp   $3f                                         ; $6cae: $fe $3f
	dec  a                                           ; $6cb0: $3d
	ld   a, a                                        ; $6cb1: $7f
	ld   a, e                                        ; $6cb2: $7b
	ld   a, a                                        ; $6cb3: $7f
	rst  $30                                         ; $6cb4: $f7
	add  c                                           ; $6cb5: $81
	rst  $38                                         ; $6cb6: $ff
	nop                                              ; $6cb7: $00
	rst  $28                                         ; $6cb8: $ef
	add  c                                           ; $6cb9: $81
	rst  $38                                         ; $6cba: $ff
	ld   [bc], a                                     ; $6cbb: $02
	rst  JumpTable                                         ; $6cbc: $df
	rst  $38                                         ; $6cbd: $ff
	pop  bc                                          ; $6cbe: $c1
	add  c                                           ; $6cbf: $81
	rst  $38                                         ; $6cc0: $ff
	nop                                              ; $6cc1: $00
	ccf                                              ; $6cc2: $3f
	add  c                                           ; $6cc3: $81
	rst  $38                                         ; $6cc4: $ff
	ld   [bc], a                                     ; $6cc5: $02
	db   $dd                                         ; $6cc6: $dd
	rst  $38                                         ; $6cc7: $ff
	ei                                               ; $6cc8: $fb
	add  c                                           ; $6cc9: $81
	rst  $38                                         ; $6cca: $ff
	ld   [bc], a                                     ; $6ccb: $02
	rst  $10                                         ; $6ccc: $d7
	rst  $38                                         ; $6ccd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cce: $cf
	adc  l                                           ; $6ccf: $8d
	rst  $38                                         ; $6cd0: $ff
	ld   b, $f0                                      ; $6cd1: $06 $f0
	rst  $30                                         ; $6cd3: $f7
	ei                                               ; $6cd4: $fb
	rst  $38                                         ; $6cd5: $ff
	db   $fd                                         ; $6cd6: $fd
	rst  $38                                         ; $6cd7: $ff
	ld   sp, hl                                      ; $6cd8: $f9
	add  c                                           ; $6cd9: $81
	rst  $38                                         ; $6cda: $ff
	ld   [bc], a                                     ; $6cdb: $02
	rst  $30                                         ; $6cdc: $f7
	rst  $38                                         ; $6cdd: $ff
	rst  $30                                         ; $6cde: $f7
	add  c                                           ; $6cdf: $81
	rst  $38                                         ; $6ce0: $ff
	nop                                              ; $6ce1: $00
	rlca                                             ; $6ce2: $07
	adc  c                                           ; $6ce3: $89
	rst  $38                                         ; $6ce4: $ff
	ld   [$ffe7], sp                                 ; $6ce5: $08 $e7 $ff
	add  hl, de                                      ; $6ce8: $19
	rst  $38                                         ; $6ce9: $ff
	ld   [bc], a                                     ; $6cea: $02
	rst  $38                                         ; $6ceb: $ff
	db   $fd                                         ; $6cec: $fd
	rst  $38                                         ; $6ced: $ff
	cp   $89                                         ; $6cee: $fe $89
	rst  $38                                         ; $6cf0: $ff
	db   $10                                         ; $6cf1: $10
	rra                                              ; $6cf2: $1f
	rst  $28                                         ; $6cf3: $ef
	db   $ec                                         ; $6cf4: $ec
	rst  $20                                         ; $6cf5: $e7
	ld   h, a                                        ; $6cf6: $67
	rst  $20                                         ; $6cf7: $e7
	add  a                                           ; $6cf8: $87
	rst  $20                                         ; $6cf9: $e7
	db   $e4                                         ; $6cfa: $e4
	rst  $38                                         ; $6cfb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cfc: $cf
	rst  $38                                         ; $6cfd: $ff
	ldh  a, [rIE]                                    ; $6cfe: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d00: $cf
	rst  $38                                         ; $6d01: $ff
	ldh  a, [$81]                                    ; $6d02: $f0 $81
	rst  $38                                         ; $6d04: $ff
	ld   b, $3f                                      ; $6d05: $06 $3f
	rst  $38                                         ; $6d07: $ff
	rst  JumpTable                                         ; $6d08: $df
	rst  $38                                         ; $6d09: $ff
	ld   l, a                                        ; $6d0a: $6f
	rst  $38                                         ; $6d0b: $ff
	adc  a                                           ; $6d0c: $8f
	add  c                                           ; $6d0d: $81
	rst  $38                                         ; $6d0e: $ff
	ld   [bc], a                                     ; $6d0f: $02
	ccf                                              ; $6d10: $3f
	rst  $38                                         ; $6d11: $ff
	ret  nz                                          ; $6d12: $c0

	add  l                                           ; $6d13: $85
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	rst  $38                                         ; $6d16: $ff
	add  b                                           ; $6d17: $80
	ccf                                              ; $6d18: $3f
	add  b                                           ; $6d19: $80
	rst  $38                                         ; $6d1a: $ff
	inc  bc                                          ; $6d1b: $03
	cp   $f9                                         ; $6d1c: $fe $f9
	rst  $38                                         ; $6d1e: $ff
	rlca                                             ; $6d1f: $07
	add  l                                           ; $6d20: $85
	nop                                              ; $6d21: $00
	inc  bc                                          ; $6d22: $03
	pop  hl                                          ; $6d23: $e1
	ld   a, a                                        ; $6d24: $7f
	rra                                              ; $6d25: $1f
	rst  $38                                         ; $6d26: $ff
	add  b                                           ; $6d27: $80
	db   $dd                                         ; $6d28: $dd
	add  b                                           ; $6d29: $80
	rst  $38                                         ; $6d2a: $ff
	nop                                              ; $6d2b: $00
	ld   a, [hl]                                     ; $6d2c: $7e
	add  l                                           ; $6d2d: $85
	nop                                              ; $6d2e: $00
	ld   bc, $de23                                   ; $6d2f: $01 $23 $de
	add  b                                           ; $6d32: $80
	rst  $38                                         ; $6d33: $ff
	add  b                                           ; $6d34: $80
	rst  $30                                         ; $6d35: $f7
	add  b                                           ; $6d36: $80
	rst  $38                                         ; $6d37: $ff
	nop                                              ; $6d38: $00
	db   $fd                                         ; $6d39: $fd
	add  [hl]                                        ; $6d3a: $86
	nop                                              ; $6d3b: $00
	add  c                                           ; $6d3c: $81
	ldh  a, [$80]                                    ; $6d3d: $f0 $80
	ret  nc                                          ; $6d3f: $d0

	add  b                                           ; $6d40: $80
	ldh  a, [rSB]                                    ; $6d41: $f0 $01
	pop  bc                                          ; $6d43: $c1
	xor  $80                                         ; $6d44: $ee $80
	ei                                               ; $6d46: $fb
	add  b                                           ; $6d47: $80
	rst  $38                                         ; $6d48: $ff
	ld   bc, $faf8                                   ; $6d49: $01 $f8 $fa
	add  b                                           ; $6d4c: $80
	rst  $38                                         ; $6d4d: $ff
	rla                                              ; $6d4e: $17
	cp   $fd                                         ; $6d4f: $fe $fd
	ld   sp, hl                                      ; $6d51: $f9
	ei                                               ; $6d52: $fb
	cp   d                                           ; $6d53: $ba
	cp   a                                           ; $6d54: $bf
	ld   h, b                                        ; $6d55: $60
	rst  ToBoot                                         ; $6d56: $c7
	ret  nz                                          ; $6d57: $c0

	pop  bc                                          ; $6d58: $c1
	add  b                                           ; $6d59: $80
	pop  hl                                          ; $6d5a: $e1
	ldh  [$f9], a                                    ; $6d5b: $e0 $f9
	add  hl, sp                                      ; $6d5d: $39
	db   $ed                                         ; $6d5e: $ed
	dec  l                                           ; $6d5f: $2d
	db   $fd                                         ; $6d60: $fd
	dec  e                                           ; $6d61: $1d
	db   $fd                                         ; $6d62: $fd
	db   $dd                                         ; $6d63: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d64: $cf
	db   $e3                                         ; $6d65: $e3
	rst  $28                                         ; $6d66: $ef
	add  b                                           ; $6d67: $80
	rst  $30                                         ; $6d68: $f7
	add  b                                           ; $6d69: $80
	cp   $80                                         ; $6d6a: $fe $80
	scf                                              ; $6d6c: $37
	add  b                                           ; $6d6d: $80
	ld   b, $80                                      ; $6d6e: $06 $80
	rlca                                             ; $6d70: $07
	add  c                                           ; $6d71: $81
	ld   [bc], a                                     ; $6d72: $02
	ld   bc, $7f80                                   ; $6d73: $01 $80 $7f
	add  c                                           ; $6d76: $81
	ldh  a, [$80]                                    ; $6d77: $f0 $80
	and  b                                           ; $6d79: $a0
	add  b                                           ; $6d7a: $80
	ld   h, b                                        ; $6d7b: $60
	add  d                                           ; $6d7c: $82
	ldh  a, [$80]                                    ; $6d7d: $f0 $80
	ret  nz                                          ; $6d7f: $c0

	add  b                                           ; $6d80: $80
	ldh  a, [rAUD3ENA]                               ; $6d81: $f0 $1a
	ld   l, e                                        ; $6d83: $6b
	db   $fc                                         ; $6d84: $fc
	ld   l, l                                        ; $6d85: $6d
	db   $fc                                         ; $6d86: $fc
	ld   e, a                                        ; $6d87: $5f
	call c, $fcfe                                    ; $6d88: $dc $fe $fc
	xor  h                                           ; $6d8b: $ac
	db   $ec                                         ; $6d8c: $ec
	cp   h                                           ; $6d8d: $bc
	db   $fc                                         ; $6d8e: $fc
	ld   l, l                                        ; $6d8f: $6d
	db   $ec                                         ; $6d90: $ec
	ld   e, $9f                                      ; $6d91: $1e $9f
	inc  b                                           ; $6d93: $04
	rrca                                             ; $6d94: $0f
	adc  a                                           ; $6d95: $8f
	rrca                                             ; $6d96: $0f
	rra                                              ; $6d97: $1f
	rrca                                             ; $6d98: $0f
	cpl                                              ; $6d99: $2f
	rrca                                             ; $6d9a: $0f
	ld   c, a                                        ; $6d9b: $4f
	rrca                                             ; $6d9c: $0f
	adc  a                                           ; $6d9d: $8f
	add  d                                           ; $6d9e: $82
	rrca                                             ; $6d9f: $0f
	ld   [bc], a                                     ; $6da0: $02
	rst  $38                                         ; $6da1: $ff
	add  c                                           ; $6da2: $81
	add  d                                           ; $6da3: $82
	adc  h                                           ; $6da4: $8c
	ld   [bc], a                                     ; $6da5: $02
	nop                                              ; $6da6: $00
	rrca                                             ; $6da7: $0f
	adc  l                                           ; $6da8: $8d
	nop                                              ; $6da9: $00
	ld   bc, $d9d6                                   ; $6daa: $01 $d6 $d9
	add  b                                           ; $6dad: $80
	sbc  c                                           ; $6dae: $99
	inc  bc                                          ; $6daf: $03
	add  hl, de                                      ; $6db0: $19
	ld   sp, hl                                      ; $6db1: $f9
	rst  JumpTable                                         ; $6db2: $df
	ret  nz                                          ; $6db3: $c0

	add  b                                           ; $6db4: $80
	sbc  a                                           ; $6db5: $9f
	ld   d, $bb                                      ; $6db6: $16 $bb
	xor  [hl]                                        ; $6db8: $ae
	xor  b                                           ; $6db9: $a8
	or   a                                           ; $6dba: $b7
	or   c                                           ; $6dbb: $b1
	xor  [hl]                                        ; $6dbc: $ae
	ld   l, b                                        ; $6dbd: $68
	cp   l                                           ; $6dbe: $bd
	cp   [hl]                                        ; $6dbf: $be
	cp   $7d                                         ; $6dc0: $fe $7d
	db   $fd                                         ; $6dc2: $fd
	inc  bc                                          ; $6dc3: $03
	ld   [bc], a                                     ; $6dc4: $02
	db   $fc                                         ; $6dc5: $fc
	ld   a, a                                        ; $6dc6: $7f
	add  hl, sp                                      ; $6dc7: $39
	xor  $88                                         ; $6dc8: $ee $88
	ld   h, a                                        ; $6dca: $67
	ld   bc, $a8ee                                   ; $6dcb: $01 $ee $a8
	add  [hl]                                        ; $6dce: $86
	jp   nz, $f201                                   ; $6dcf: $c2 $01 $f2

	ldh  a, [$80]                                    ; $6dd2: $f0 $80
	cp   [hl]                                        ; $6dd4: $be

jr_07c_6dd5:
	add  b                                           ; $6dd5: $80
	rst  $20                                         ; $6dd6: $e7
	ld   bc, $f2fd                                   ; $6dd7: $01 $fd $f2
	adc  d                                           ; $6dda: $8a
	nop                                              ; $6ddb: $00
	add  b                                           ; $6ddc: $80
	add  b                                           ; $6ddd: $80
	ld   bc, $f0e0                                   ; $6dde: $01 $e0 $f0
	add  b                                           ; $6de1: $80
	rst  $38                                         ; $6de2: $ff
	ld   [bc], a                                     ; $6de3: $02
	cp   a                                           ; $6de4: $bf
	ccf                                              ; $6de5: $3f
	cp   a                                           ; $6de6: $bf
	add  b                                           ; $6de7: $80
	cp   [hl]                                        ; $6de8: $be
	add  b                                           ; $6de9: $80
	rst  $38                                         ; $6dea: $ff
	add  b                                           ; $6deb: $80
	cp   a                                           ; $6dec: $bf
	add  b                                           ; $6ded: $80
	rst  $38                                         ; $6dee: $ff
	add  b                                           ; $6def: $80
	ei                                               ; $6df0: $fb
	ld   bc, $ff5e                                   ; $6df1: $01 $5e $ff
	add  b                                           ; $6df4: $80

jr_07c_6df5:
	db   $fd                                         ; $6df5: $fd
	add  b                                           ; $6df6: $80
	rst  JumpTable                                         ; $6df7: $df
	add  b                                           ; $6df8: $80
	rst  $38                                         ; $6df9: $ff
	add  b                                           ; $6dfa: $80
	rst  JumpTable                                         ; $6dfb: $df
	add  b                                           ; $6dfc: $80
	rst  $38                                         ; $6dfd: $ff
	add  b                                           ; $6dfe: $80
	rst  JumpTable                                         ; $6dff: $df
	add  b                                           ; $6e00: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e01: $cf
	ld   bc, $fe7d                                   ; $6e02: $01 $7d $fe
	add  b                                           ; $6e05: $80
	rst  $38                                         ; $6e06: $ff
	inc  bc                                          ; $6e07: $03
	db   $ed                                         ; $6e08: $ed
	rst  $28                                         ; $6e09: $ef
	db   $fc                                         ; $6e0a: $fc
	cp   $80                                         ; $6e0b: $fe $80
	rst  $28                                         ; $6e0d: $ef
	add  d                                           ; $6e0e: $82
	rst  $38                                         ; $6e0f: $ff
	add  b                                           ; $6e10: $80
	cp   $01                                         ; $6e11: $fe $01
	db   $fd                                         ; $6e13: $fd
	ldh  a, [$80]                                    ; $6e14: $f0 $80
	ldh  [$80], a                                    ; $6e16: $e0 $80
	ldh  a, [$80]                                    ; $6e18: $f0 $80
	ldh  [$80], a                                    ; $6e1a: $e0 $80
	ret  nc                                          ; $6e1c: $d0

	add  b                                           ; $6e1d: $80
	ldh  [$80], a                                    ; $6e1e: $e0 $80
	or   b                                           ; $6e20: $b0
	add  b                                           ; $6e21: $80
	ldh  [rTMA], a                                   ; $6e22: $e0 $06
	call c, $beff                                    ; $6e24: $dc $ff $be
	or   [hl]                                        ; $6e27: $b6
	ldh  a, [c]                                      ; $6e28: $f2
	cp   $6c                                         ; $6e29: $fe $6c
	add  c                                           ; $6e2b: $81
	db   $fc                                         ; $6e2c: $fc
	dec  bc                                          ; $6e2d: $0b
	cp   h                                           ; $6e2e: $bc
	db   $fc                                         ; $6e2f: $fc
	cp   h                                           ; $6e30: $bc
	db   $fc                                         ; $6e31: $fc
	ld   a, h                                        ; $6e32: $7c
	call c, $0718                                    ; $6e33: $dc $18 $07
	dec  l                                           ; $6e36: $2d
	ld   d, a                                        ; $6e37: $57
	ld   bc, $8203                                   ; $6e38: $01 $03 $82
	ld   b, a                                        ; $6e3b: $47
	add  b                                           ; $6e3c: $80
	ld   h, a                                        ; $6e3d: $67
	dec  b                                           ; $6e3e: $05
	dec  a                                           ; $6e3f: $3d
	ld   a, a                                        ; $6e40: $7f
	ld   sp, $030f                                   ; $6e41: $31 $0f $03
	add  b                                           ; $6e44: $80
	add  b                                           ; $6e45: $80
	add  d                                           ; $6e46: $82
	ld   bc, $c000                                   ; $6e47: $01 $00 $c0
	add  e                                           ; $6e4a: $83
	ld   b, d                                        ; $6e4b: $42
	ld   b, $c2                                      ; $6e4c: $06 $c2
	ld   b, d                                        ; $6e4e: $42
	jp   nz, $c242                                   ; $6e4f: $c2 $42 $c2

	rst  $38                                         ; $6e52: $ff
	jr   nc, jr_07c_6dd5                             ; $6e53: $30 $80

	db   $10                                         ; $6e55: $10
	adc  d                                           ; $6e56: $8a
	nop                                              ; $6e57: $00
	ld   bc, $8f7f                                   ; $6e58: $01 $7f $8f
	add  b                                           ; $6e5b: $80
	rst  $28                                         ; $6e5c: $ef
	add  b                                           ; $6e5d: $80
	ld   a, h                                        ; $6e5e: $7c
	dec  bc                                          ; $6e5f: $0b
	rrca                                             ; $6e60: $0f
	adc  a                                           ; $6e61: $8f
	ld   [hl], c                                     ; $6e62: $71
	ld   sp, $6e5e                                   ; $6e63: $31 $5e $6e
	ld   h, e                                        ; $6e66: $63
	ld   l, l                                        ; $6e67: $6d
	call $00cc                                       ; $6e68: $cd $cc $00
	rst  $38                                         ; $6e6b: $ff
	add  b                                           ; $6e6c: $80
	db   $fc                                         ; $6e6d: $fc
	add  d                                           ; $6e6e: $82
	ld   b, b                                        ; $6e6f: $40
	add  b                                           ; $6e70: $80
	ret  nz                                          ; $6e71: $c0

	add  b                                           ; $6e72: $80
	jr   c, jr_07c_6df5                              ; $6e73: $38 $80

	add  [hl]                                        ; $6e75: $86
	ld   [bc], a                                     ; $6e76: $02
	ld   sp, $0dc1                                   ; $6e77: $31 $c1 $0d
	adc  h                                           ; $6e7a: $8c
	ld   [bc], a                                     ; $6e7b: $02
	ld   bc, $8f82                                   ; $6e7c: $01 $82 $8f
	adc  l                                           ; $6e7f: $8d
	nop                                              ; $6e80: $00
	jr   nz, jr_07c_6ed0                             ; $6e81: $20 $4d

	sub  a                                           ; $6e83: $97
	ld   de, $682e                                   ; $6e84: $11 $2e $68
	ld   d, a                                        ; $6e87: $57
	sub  c                                           ; $6e88: $91
	xor  $22                                         ; $6e89: $ee $22
	db   $dd                                         ; $6e8b: $dd
	ld   de, $22ee                                   ; $6e8c: $11 $ee $22
	db   $dd                                         ; $6e8f: $dd
	ld   de, $88ee                                   ; $6e90: $11 $ee $88
	ld   [hl], a                                     ; $6e93: $77
	ld   de, $89ef                                   ; $6e94: $11 $ef $89
	ld   [hl], a                                     ; $6e97: $77
	ld   de, $23ef                                   ; $6e98: $11 $ef $23

jr_07c_6e9b:
	rst  JumpTable                                         ; $6e9b: $df
	inc  de                                          ; $6e9c: $13
	rst  $28                                         ; $6e9d: $ef
	inc  hl                                          ; $6e9e: $23
	rst  JumpTable                                         ; $6e9f: $df
	rlca                                             ; $6ea0: $07
	rst  $38                                         ; $6ea1: $ff
	xor  a                                           ; $6ea2: $af
	add  b                                           ; $6ea3: $80
	cp   $80                                         ; $6ea4: $fe $80
	jp   c, $ba80                                    ; $6ea6: $da $80 $ba

	add  b                                           ; $6ea9: $80
	jp   c, $ba80                                    ; $6eaa: $da $80 $ba

	add  b                                           ; $6ead: $80
	jp   c, $ba80                                    ; $6eae: $da $80 $ba

	ld   bc, $555a                                   ; $6eb1: $01 $5a $55
	add  b                                           ; $6eb4: $80
	ld   [hl], b                                     ; $6eb5: $70
	add  b                                           ; $6eb6: $80
	nop                                              ; $6eb7: $00
	add  b                                           ; $6eb8: $80
	ld   b, b                                        ; $6eb9: $40
	add  b                                           ; $6eba: $80
	ld   [hl], b                                     ; $6ebb: $70
	add  l                                           ; $6ebc: $85
	ld   d, b                                        ; $6ebd: $50
	dec  bc                                          ; $6ebe: $0b
	rst  $10                                         ; $6ebf: $d7
	db   $dd                                         ; $6ec0: $dd
	ld   b, h                                        ; $6ec1: $44
	cp   e                                           ; $6ec2: $bb
	ld   [hl+], a                                    ; $6ec3: $22
	db   $dd                                         ; $6ec4: $dd
	ld   b, h                                        ; $6ec5: $44
	cp   e                                           ; $6ec6: $bb
	ld   a, [bc]                                     ; $6ec7: $0a
	push af                                          ; $6ec8: $f5
	ld   d, l                                        ; $6ec9: $55
	rst  $38                                         ; $6eca: $ff
	add  b                                           ; $6ecb: $80
	ei                                               ; $6ecc: $fb
	add  b                                           ; $6ecd: $80
	rra                                              ; $6ece: $1f
	db   $10                                         ; $6ecf: $10

jr_07c_6ed0:
	ld   [hl], a                                     ; $6ed0: $77
	rst  JumpTable                                         ; $6ed1: $df
	ld   b, a                                        ; $6ed2: $47
	cp   a                                           ; $6ed3: $bf
	rrca                                             ; $6ed4: $0f
	rst  $38                                         ; $6ed5: $ff
	rra                                              ; $6ed6: $1f
	rst  $38                                         ; $6ed7: $ff
	ccf                                              ; $6ed8: $3f
	rst  $38                                         ; $6ed9: $ff
	ld   a, e                                        ; $6eda: $7b
	rst  $38                                         ; $6edb: $ff
	rst  $30                                         ; $6edc: $f7
	rst  $38                                         ; $6edd: $ff
	db   $eb                                         ; $6ede: $eb
	rst  $38                                         ; $6edf: $ff
	rst  $20                                         ; $6ee0: $e7
	add  b                                           ; $6ee1: $80
	cp   d                                           ; $6ee2: $ba
	add  b                                           ; $6ee3: $80
	jp   c, $fa80                                    ; $6ee4: $da $80 $fa

	add  b                                           ; $6ee7: $80
	ld   a, d                                        ; $6ee8: $7a
	add  b                                           ; $6ee9: $80
	cp   d                                           ; $6eea: $ba
	add  b                                           ; $6eeb: $80
	jp   nc, $fa80                                   ; $6eec: $d2 $80 $fa

	ld   bc, $515e                                   ; $6eef: $01 $5e $51
	adc  l                                           ; $6ef2: $8d
	ld   d, b                                        ; $6ef3: $50
	ld   [bc], a                                     ; $6ef4: $02
	ld   e, [hl]                                     ; $6ef5: $5e
	rst  $38                                         ; $6ef6: $ff
	cp   $8b                                         ; $6ef7: $fe $8b
	rst  $38                                         ; $6ef9: $ff
	ld   [bc], a                                     ; $6efa: $02
	rla                                              ; $6efb: $17
	rst  $28                                         ; $6efc: $ef
	rrca                                             ; $6efd: $0f
	add  c                                           ; $6efe: $81
	rst  $28                                         ; $6eff: $ef
	nop                                              ; $6f00: $00
	rst  $20                                         ; $6f01: $e7
	add  d                                           ; $6f02: $82
	rst  $28                                         ; $6f03: $ef
	add  h                                           ; $6f04: $84
	rst  $38                                         ; $6f05: $ff
	add  b                                           ; $6f06: $80
	and  a                                           ; $6f07: $a7
	add  b                                           ; $6f08: $80
	rst  $30                                         ; $6f09: $f7
	add  b                                           ; $6f0a: $80
	ld   hl, sp-$80                                  ; $6f0b: $f8 $80
	cp   $85                                         ; $6f0d: $fe $85
	rst  $38                                         ; $6f0f: $ff
	nop                                              ; $6f10: $00
	ldh  a, [$80]                                    ; $6f11: $f0 $80
	ld   d, b                                        ; $6f13: $50
	add  b                                           ; $6f14: $80
	ret  nc                                          ; $6f15: $d0

	add  b                                           ; $6f16: $80
	ldh  [$80], a                                    ; $6f17: $e0 $80
	jr   nc, jr_07c_6e9b                             ; $6f19: $30 $80

	nop                                              ; $6f1b: $00
	add  b                                           ; $6f1c: $80
	ret  nz                                          ; $6f1d: $c0

	add  b                                           ; $6f1e: $80
	ldh  [$03], a                                    ; $6f1f: $e0 $03
	ldh  a, [$3f]                                    ; $6f21: $f0 $3f
	cp   a                                           ; $6f23: $bf
	ccf                                              ; $6f24: $3f
	add  e                                           ; $6f25: $83
	cp   a                                           ; $6f26: $bf
	add  b                                           ; $6f27: $80
	cp   h                                           ; $6f28: $bc
	add  b                                           ; $6f29: $80
	or   b                                           ; $6f2a: $b0
	inc  bc                                          ; $6f2b: $03
	add  b                                           ; $6f2c: $80
	add  e                                           ; $6f2d: $83
	add  b                                           ; $6f2e: $80
	add  e                                           ; $6f2f: $83
	add  b                                           ; $6f30: $80
	rst  $38                                         ; $6f31: $ff
	add  b                                           ; $6f32: $80
	db   $fc                                         ; $6f33: $fc
	add  b                                           ; $6f34: $80
	ldh  [$80], a                                    ; $6f35: $e0 $80
	nop                                              ; $6f37: $00
	add  b                                           ; $6f38: $80
	ld   [$2905], sp                                 ; $6f39: $08 $05 $29
	jr   z, jr_07c_6f61                              ; $6f3c: $28 $23

	cp   $22                                         ; $6f3e: $fe $22
	cp   $88                                         ; $6f40: $fe $88
	nop                                              ; $6f42: $00
	dec  b                                           ; $6f43: $05
	ld   hl, sp+$00                                  ; $6f44: $f8 $00
	ld   hl, sp+$0f                                  ; $6f46: $f8 $0f
	nop                                              ; $6f48: $00
	rrca                                             ; $6f49: $0f
	adc  b                                           ; $6f4a: $88
	nop                                              ; $6f4b: $00
	dec  b                                           ; $6f4c: $05
	jr   c, jr_07c_6f4f                              ; $6f4d: $38 $00

jr_07c_6f4f:
	ld   a, b                                        ; $6f4f: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f50: $cf
	ld   b, b                                        ; $6f51: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f52: $cf
	add  [hl]                                        ; $6f53: $86
	nop                                              ; $6f54: $00
	add  b                                           ; $6f55: $80
	ld   [$2880], sp                                 ; $6f56: $08 $80 $28
	inc  bc                                          ; $6f59: $03
	jr   nz, @+$01                                   ; $6f5a: $20 $ff

	jr   nz, @+$01                                   ; $6f5c: $20 $ff

	adc  e                                           ; $6f5e: $8b
	nop                                              ; $6f5f: $00
	ld   [bc], a                                     ; $6f60: $02

jr_07c_6f61:
	add  b                                           ; $6f61: $80
	nop                                              ; $6f62: $00
	add  b                                           ; $6f63: $80
	add  b                                           ; $6f64: $80
	ld   [de], a                                     ; $6f65: $12
	inc  bc                                          ; $6f66: $03
	ld   [hl-], a                                    ; $6f67: $32
	sbc  [hl]                                        ; $6f68: $9e
	sub  $96                                         ; $6f69: $d6 $96
	adc  b                                           ; $6f6b: $88
	ld   d, $03                                      ; $6f6c: $16 $03
	db   $e4                                         ; $6f6e: $e4
	nop                                              ; $6f6f: $00
	ld   c, $09                                      ; $6f70: $0e $09
	adc  b                                           ; $6f72: $88
	ld   [$0a80], sp                                 ; $6f73: $08 $80 $0a
	inc  bc                                          ; $6f76: $03
	ld   b, a                                        ; $6f77: $47
	ld   b, b                                        ; $6f78: $40
	ld   b, a                                        ; $6f79: $47
	ret  nz                                          ; $6f7a: $c0

	add  b                                           ; $6f7b: $80
	add  $82                                         ; $6f7c: $c6 $82
	call nz, $c580                                   ; $6f7e: $c4 $80 $c5
	add  d                                           ; $6f81: $82
	call $9f03                                       ; $6f82: $cd $03 $9f
	db   $10                                         ; $6f85: $10
	ld   sp, $80de                                   ; $6f86: $31 $de $80
	ld   d, h                                        ; $6f89: $54
	add  [hl]                                        ; $6f8a: $86
	ld   [hl], l                                     ; $6f8b: $75
	add  b                                           ; $6f8c: $80
	dec  [hl]                                        ; $6f8d: $35
	nop                                              ; $6f8e: $00
	ld   d, l                                        ; $6f8f: $55
	add  b                                           ; $6f90: $80
	ld   d, [hl]                                     ; $6f91: $56
	nop                                              ; $6f92: $00
	ld   e, l                                        ; $6f93: $5d
	add  b                                           ; $6f94: $80
	ld   e, c                                        ; $6f95: $59
	ld   bc, $6c5c                                   ; $6f96: $01 $5c $6c
	add  b                                           ; $6f99: $80
	cp   $80                                         ; $6f9a: $fe $80
	ld   hl, sp-$80                                  ; $6f9c: $f8 $80
	add  sp, -$80                                    ; $6f9e: $e8 $80
	jr   z, @+$04                                    ; $6fa0: $28 $02

	jp   nc, $b20a                                   ; $6fa2: $d2 $0a $b2

	add  c                                           ; $6fa5: $81
	ld   b, d                                        ; $6fa6: $42
	add  b                                           ; $6fa7: $80
	inc  de                                          ; $6fa8: $13
	add  b                                           ; $6fa9: $80
	rst  $38                                         ; $6faa: $ff
	add  b                                           ; $6fab: $80
	rla                                              ; $6fac: $17
	add  d                                           ; $6fad: $82
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	cp   l                                           ; $6fb0: $bd
	add  e                                           ; $6fb1: $83
	call $c980                                       ; $6fb2: $cd $80 $c9
	ld   bc, $ff8f                                   ; $6fb5: $01 $8f $ff
	add  b                                           ; $6fb8: $80
	db   $fd                                         ; $6fb9: $fd
	add  b                                           ; $6fba: $80
	dec  a                                           ; $6fbb: $3d
	add  b                                           ; $6fbc: $80
	dec  e                                           ; $6fbd: $1d
	inc  bc                                          ; $6fbe: $03
	dec  h                                           ; $6fbf: $25
	dec  [hl]                                        ; $6fc0: $35
	inc  [hl]                                        ; $6fc1: $34
	inc  a                                           ; $6fc2: $3c
	add  b                                           ; $6fc3: $80
	jr   jr_07c_6fc7                                 ; $6fc4: $18 $01

	inc  e                                           ; $6fc6: $1c

jr_07c_6fc7:
	inc  l                                           ; $6fc7: $2c
	add  b                                           ; $6fc8: $80
	cp   a                                           ; $6fc9: $bf
	add  h                                           ; $6fca: $84
	dec  sp                                          ; $6fcb: $3b
	nop                                              ; $6fcc: $00
	rst  $10                                         ; $6fcd: $d7
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
	sbc  b                                           ; $6fd8: $98
	nop                                              ; $6fd9: $00
	xor  e                                           ; $6fda: $ab
	ld   bc, $0c02                                   ; $6fdb: $01 $02 $0c
	nop                                              ; $6fde: $00
	inc  c                                           ; $6fdf: $0c
	add  b                                           ; $6fe0: $80
	ld   [bc], a                                     ; $6fe1: $02
	add  b                                           ; $6fe2: $80
	inc  b                                           ; $6fe3: $04
	add  b                                           ; $6fe4: $80
	rrca                                             ; $6fe5: $0f
	add  b                                           ; $6fe6: $80
	nop                                              ; $6fe7: $00
	add  b                                           ; $6fe8: $80
	rrca                                             ; $6fe9: $0f
	add  b                                           ; $6fea: $80
	nop                                              ; $6feb: $00
	dec  b                                           ; $6fec: $05
	rrca                                             ; $6fed: $0f
	ld   e, $57                                      ; $6fee: $1e $57
	jp   nz, $3abe                                   ; $6ff0: $c2 $be $3a

	add  b                                           ; $6ff3: $80
	ld   [$ff80], sp                                 ; $6ff4: $08 $80 $ff
	add  b                                           ; $6ff7: $80
	ld   bc, $ff80                                   ; $6ff8: $01 $80 $ff
	ld   a, [bc]                                     ; $6ffb: $0a
	nop                                              ; $6ffc: $00
	ld   bc, $affe                                   ; $6ffd: $01 $fe $af

Jump_07c_7000:
	ld   e, d                                        ; $7000: $5a
	dec  hl                                          ; $7001: $2b
	db   $e4                                         ; $7002: $e4
	jp   z, Jump_07c_7000                            ; $7003: $ca $00 $70

	add  b                                           ; $7006: $80
	add  b                                           ; $7007: $80
	ldh  a, [$80]                                    ; $7008: $f0 $80
	nop                                              ; $700a: $00
	add  b                                           ; $700b: $80
	ldh  a, [$80]                                    ; $700c: $f0 $80
	nop                                              ; $700e: $00

jr_07c_700f:
	inc  bc                                          ; $700f: $03
	add  b                                           ; $7010: $80
	nop                                              ; $7011: $00
	add  h                                           ; $7012: $84
	inc  b                                           ; $7013: $04
	add  b                                           ; $7014: $80
	nop                                              ; $7015: $00
	add  b                                           ; $7016: $80
	inc  b                                           ; $7017: $04
	add  b                                           ; $7018: $80
	nop                                              ; $7019: $00
	add  b                                           ; $701a: $80
	inc  b                                           ; $701b: $04
	add  b                                           ; $701c: $80
	ld   bc, $0780                                   ; $701d: $01 $80 $07
	add  c                                           ; $7020: $81
	rra                                              ; $7021: $1f
	dec  bc                                          ; $7022: $0b
	nop                                              ; $7023: $00
	db   $10                                         ; $7024: $10
	rrca                                             ; $7025: $0f
	rra                                              ; $7026: $1f
	nop                                              ; $7027: $00
	jr   nc, @+$31                                   ; $7028: $30 $2f

	rst  $38                                         ; $702a: $ff
	ldh  [$f0], a                                    ; $702b: $e0 $f0
	rst  $28                                         ; $702d: $ef
	rst  $38                                         ; $702e: $ff
	add  b                                           ; $702f: $80
	ldh  [$80], a                                    ; $7030: $e0 $80
	rst  $38                                         ; $7032: $ff
	add  b                                           ; $7033: $80
	nop                                              ; $7034: $00
	add  b                                           ; $7035: $80
	rst  $38                                         ; $7036: $ff

jr_07c_7037:
	add  b                                           ; $7037: $80
	nop                                              ; $7038: $00
	add  b                                           ; $7039: $80
	rst  $38                                         ; $703a: $ff
	add  b                                           ; $703b: $80
	nop                                              ; $703c: $00
	add  b                                           ; $703d: $80
	rst  $38                                         ; $703e: $ff
	add  b                                           ; $703f: $80
	nop                                              ; $7040: $00
	add  b                                           ; $7041: $80
	rst  $38                                         ; $7042: $ff
	ld   a, [bc]                                     ; $7043: $0a
	ccf                                              ; $7044: $3f
	jr   nc, jr_07c_7037                             ; $7045: $30 $f0

	rst  $38                                         ; $7047: $ff
	rra                                              ; $7048: $1f
	db   $10                                         ; $7049: $10
	ldh  a, [rIE]                                    ; $704a: $f0 $ff
	rra                                              ; $704c: $1f
	jr   nz, jr_07c_700f                             ; $704d: $20 $c0

	add  b                                           ; $704f: $80
	rst  $38                                         ; $7050: $ff
	add  d                                           ; $7051: $82
	pop  bc                                          ; $7052: $c1
	add  b                                           ; $7053: $80
	ld   bc, $c180                                   ; $7054: $01 $80 $c1
	add  b                                           ; $7057: $80
	ld   bc, $c380                                   ; $7058: $01 $80 $c3
	add  b                                           ; $705b: $80
	rlca                                             ; $705c: $07
	dec  c                                           ; $705d: $0d
	adc  $cf                                         ; $705e: $ce $cf
	cp   $ff                                         ; $7060: $fe $ff
	ldh  a, [rIE]                                    ; $7062: $f0 $ff
	rst  $28                                         ; $7064: $ef
	rst  $38                                         ; $7065: $ff
	sbc  $ff                                         ; $7066: $de $ff
	cp   [hl]                                        ; $7068: $be
	rst  $38                                         ; $7069: $ff
	ld   a, [hl]                                     ; $706a: $7e
	cp   $81                                         ; $706b: $fe $81
	db   $fc                                         ; $706d: $fc
	inc  b                                           ; $706e: $04
	rst  $38                                         ; $706f: $ff
	inc  bc                                          ; $7070: $03
	rst  $38                                         ; $7071: $ff
	ccf                                              ; $7072: $3f
	ret  nz                                          ; $7073: $c0

	add  b                                           ; $7074: $80
	nop                                              ; $7075: $00
	inc  bc                                          ; $7076: $03
	ccf                                              ; $7077: $3f
	ret  nz                                          ; $7078: $c0

	nop                                              ; $7079: $00
	rst  $38                                         ; $707a: $ff
	add  d                                           ; $707b: $82
	nop                                              ; $707c: $00
	ld   bc, $c03f                                   ; $707d: $01 $3f $c0
	add  b                                           ; $7080: $80
	rst  $38                                         ; $7081: $ff
	ld   a, [bc]                                     ; $7082: $0a
	ldh  a, [$1f]                                    ; $7083: $f0 $1f
	ld   c, $3e                                      ; $7085: $0e $3e
	cp   $3f                                         ; $7087: $fe $3f
	ld   e, $ff                                      ; $7089: $1e $ff
	ld   e, $3e                                      ; $708b: $1e $3e
	inc  e                                           ; $708d: $1c
	add  b                                           ; $708e: $80
	ld   a, h                                        ; $708f: $7c
	ld   bc, $c3ff                                   ; $7090: $01 $ff $c3
	add  b                                           ; $7093: $80
	rst  $38                                         ; $7094: $ff
	add  c                                           ; $7095: $81
	nop                                              ; $7096: $00
	inc  bc                                          ; $7097: $03

jr_07c_7098:
	ccf                                              ; $7098: $3f
	ret  nz                                          ; $7099: $c0

	nop                                              ; $709a: $00
	rst  $38                                         ; $709b: $ff
	add  d                                           ; $709c: $82
	nop                                              ; $709d: $00
	ld   bc, $c03f                                   ; $709e: $01 $3f $c0
	add  b                                           ; $70a1: $80
	rst  $38                                         ; $70a2: $ff
	nop                                              ; $70a3: $00
	add  a                                           ; $70a4: $87
	add  c                                           ; $70a5: $81
	ld   hl, sp+$05                                  ; $70a6: $f8 $05
	ld   a, h                                        ; $70a8: $7c
	ld   a, a                                        ; $70a9: $7f
	ld   a, h                                        ; $70aa: $7c
	rst  $38                                         ; $70ab: $ff
	inc  a                                           ; $70ac: $3c
	ld   a, h                                        ; $70ad: $7c
	add  b                                           ; $70ae: $80
	ld   a, [hl]                                     ; $70af: $7e
	dec  bc                                          ; $70b0: $0b
	cp   [hl]                                        ; $70b1: $be
	ccf                                              ; $70b2: $3f
	pop  bc                                          ; $70b3: $c1
	rst  $38                                         ; $70b4: $ff
	db   $fc                                         ; $70b5: $fc
	rlca                                             ; $70b6: $07
	dec  b                                           ; $70b7: $05
	inc  bc                                          ; $70b8: $03
	ld   a, l                                        ; $70b9: $7d
	add  b                                           ; $70ba: $80
	nop                                              ; $70bb: $00
	rst  $38                                         ; $70bc: $ff
	add  d                                           ; $70bd: $82
	nop                                              ; $70be: $00
	ld   bc, $e01f                                   ; $70bf: $01 $1f $e0
	add  b                                           ; $70c2: $80
	rst  $38                                         ; $70c3: $ff
	inc  b                                           ; $70c4: $04
	rlca                                             ; $70c5: $07
	rst  $38                                         ; $70c6: $ff
	ld   sp, hl                                      ; $70c7: $f9
	rst  $38                                         ; $70c8: $ff
	cp   $81                                         ; $70c9: $fe $81
	rst  $38                                         ; $70cb: $ff
	rlca                                             ; $70cc: $07
	ld   a, a                                        ; $70cd: $7f
	rst  $38                                         ; $70ce: $ff
	cp   a                                           ; $70cf: $bf
	ld   a, a                                        ; $70d0: $7f
	cp   a                                           ; $70d1: $bf
	rra                                              ; $70d2: $1f
	pop  hl                                          ; $70d3: $e1
	cp   $84                                         ; $70d4: $fe $84
	rst  $38                                         ; $70d6: $ff
	ld   [$ff7f], sp                                 ; $70d7: $08 $7f $ff
	sbc  a                                           ; $70da: $9f
	rst  $38                                         ; $70db: $ff
	rst  $28                                         ; $70dc: $ef
	rst  $38                                         ; $70dd: $ff
	rst  $30                                         ; $70de: $f7
	rst  $38                                         ; $70df: $ff
	rlca                                             ; $70e0: $07
	add  b                                           ; $70e1: $80
	nop                                              ; $70e2: $00
	add  b                                           ; $70e3: $80
	rrca                                             ; $70e4: $0f
	add  b                                           ; $70e5: $80
	nop                                              ; $70e6: $00
	add  b                                           ; $70e7: $80
	rrca                                             ; $70e8: $0f
	ld   bc, $0f00                                   ; $70e9: $01 $00 $0f
	add  e                                           ; $70ec: $83
	nop                                              ; $70ed: $00
	ld   a, [bc]                                     ; $70ee: $0a
	rrca                                             ; $70ef: $0f
	nop                                              ; $70f0: $00
	inc  bc                                          ; $70f1: $03
	db   $fc                                         ; $70f2: $fc
	rst  $38                                         ; $70f3: $ff
	rlca                                             ; $70f4: $07
	inc  b                                           ; $70f5: $04
	db   $fc                                         ; $70f6: $fc
	rst  $38                                         ; $70f7: $ff
	ccf                                              ; $70f8: $3f
	ret  nz                                          ; $70f9: $c0

jr_07c_70fa:
	add  e                                           ; $70fa: $83
	nop                                              ; $70fb: $00
	inc  bc                                          ; $70fc: $03
	ldh  a, [rSVBK]                                  ; $70fd: $f0 $70
	add  b                                           ; $70ff: $80
	nop                                              ; $7100: $00
	add  b                                           ; $7101: $80
	ldh  a, [$80]                                    ; $7102: $f0 $80
	nop                                              ; $7104: $00
	add  b                                           ; $7105: $80
	ldh  a, [$82]                                    ; $7106: $f0 $82

jr_07c_7108:
	nop                                              ; $7108: $00
	add  b                                           ; $7109: $80
	inc  b                                           ; $710a: $04
	add  b                                           ; $710b: $80
	rrca                                             ; $710c: $0f
	add  b                                           ; $710d: $80
	rra                                              ; $710e: $1f
	add  b                                           ; $710f: $80
	ld   a, a                                        ; $7110: $7f
	add  b                                           ; $7111: $80
	rst  $38                                         ; $7112: $ff
	add  b                                           ; $7113: $80
	nop                                              ; $7114: $00
	add  b                                           ; $7115: $80
	jr   jr_07c_7098                                 ; $7116: $18 $80

	ld   e, b                                        ; $7118: $58
	add  b                                           ; $7119: $80
	ld   e, [hl]                                     ; $711a: $5e
	add  b                                           ; $711b: $80
	ldh  [$84], a                                    ; $711c: $e0 $84
	rst  $38                                         ; $711e: $ff
	add  b                                           ; $711f: $80
	nop                                              ; $7120: $00
	add  d                                           ; $7121: $82
	ld   h, h                                        ; $7122: $64
	add  b                                           ; $7123: $80
	db   $ec                                         ; $7124: $ec
	add  b                                           ; $7125: $80
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	rst  $38                                         ; $7128: $ff
	add  b                                           ; $7129: $80
	ret  nz                                          ; $712a: $c0

	add  b                                           ; $712b: $80
	add  b                                           ; $712c: $80
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	add  c                                           ; $712f: $81
	rst  $38                                         ; $7130: $ff
	add  b                                           ; $7131: $80
	db   $fd                                         ; $7132: $fd
	add  b                                           ; $7133: $80
	or   a                                           ; $7134: $b7
	add  b                                           ; $7135: $80
	cp   e                                           ; $7136: $bb
	ld   [$ef00], sp                                 ; $7137: $08 $00 $ef
	rrca                                             ; $713a: $0f
	ccf                                              ; $713b: $3f
	rra                                              ; $713c: $1f
	ld   a, a                                        ; $713d: $7f
	ccf                                              ; $713e: $3f
	add  b                                           ; $713f: $80
	nop                                              ; $7140: $00
	add  b                                           ; $7141: $80
	inc  de                                          ; $7142: $13
	add  b                                           ; $7143: $80
	scf                                              ; $7144: $37
	add  b                                           ; $7145: $80
	daa                                              ; $7146: $27
	add  b                                           ; $7147: $80
	ld   e, $80                                      ; $7148: $1e $80
	cp   $82                                         ; $714a: $fe $82
	rst  $38                                         ; $714c: $ff
	add  d                                           ; $714d: $82
	inc  bc                                          ; $714e: $03
	add  b                                           ; $714f: $80
	rlca                                             ; $7150: $07
	add  b                                           ; $7151: $80
	add  a                                           ; $7152: $87
	add  d                                           ; $7153: $82
	nop                                              ; $7154: $00
	add  d                                           ; $7155: $82
	rst  $38                                         ; $7156: $ff
	add  b                                           ; $7157: $80
	ld   d, b                                        ; $7158: $50
	add  b                                           ; $7159: $80
	db   $10                                         ; $715a: $10
	add  d                                           ; $715b: $82
	ld   sp, $0082                                   ; $715c: $31 $82 $00
	add  d                                           ; $715f: $82
	rst  $38                                         ; $7160: $ff
	add  b                                           ; $7161: $80
	db   $d3                                         ; $7162: $d3
	add  b                                           ; $7163: $80
	jp   nc, $c280                                   ; $7164: $d2 $80 $c2

	add  b                                           ; $7167: $80
	add  $82                                         ; $7168: $c6 $82
	nop                                              ; $716a: $00
	add  d                                           ; $716b: $82
	rst  $38                                         ; $716c: $ff
	add  b                                           ; $716d: $80
	inc  e                                           ; $716e: $1c
	add  b                                           ; $716f: $80
	inc  c                                           ; $7170: $0c
	add  d                                           ; $7171: $82
	ld   [$0082], sp                                 ; $7172: $08 $82 $00
	add  d                                           ; $7175: $82
	rst  $38                                         ; $7176: $ff
	add  d                                           ; $7177: $82
	jr   nc, jr_07c_70fa                             ; $7178: $30 $80

	db   $10                                         ; $717a: $10
	add  h                                           ; $717b: $84
	nop                                              ; $717c: $00
	add  d                                           ; $717d: $82
	rst  $38                                         ; $717e: $ff
	add  d                                           ; $717f: $82
	jr   nz, jr_07c_7108                             ; $7180: $20 $86

	nop                                              ; $7182: $00
	add  d                                           ; $7183: $82
	rst  $38                                         ; $7184: $ff
	add  b                                           ; $7185: $80
	nop                                              ; $7186: $00
	add  b                                           ; $7187: $80
	add  hl, bc                                      ; $7188: $09
	add  [hl]                                        ; $7189: $86
	nop                                              ; $718a: $00
	add  d                                           ; $718b: $82
	rst  $38                                         ; $718c: $ff
	add  b                                           ; $718d: $80

jr_07c_718e:
	nop                                              ; $718e: $00
	add  b                                           ; $718f: $80
	ld   [$0c82], sp                                 ; $7190: $08 $82 $0c
	add  d                                           ; $7193: $82
	inc  bc                                          ; $7194: $03
	add  d                                           ; $7195: $82
	rst  $38                                         ; $7196: $ff
	add  b                                           ; $7197: $80
	nop                                              ; $7198: $00
	add  d                                           ; $7199: $82
	pop  bc                                          ; $719a: $c1
	add  b                                           ; $719b: $80
	ret                                              ; $719c: $c9


	nop                                              ; $719d: $00
	rst  $38                                         ; $719e: $ff
	add  l                                           ; $719f: $85
	nop                                              ; $71a0: $00
	ld   [bc], a                                     ; $71a1: $02
	ld   a, a                                        ; $71a2: $7f
	add  b                                           ; $71a3: $80
	cp   $80                                         ; $71a4: $fe $80
	ldh  [$80], a                                    ; $71a6: $e0 $80
	ldh  a, [rSB]                                    ; $71a8: $f0 $01
	ld   hl, sp-$07                                  ; $71aa: $f8 $f9
	add  l                                           ; $71ac: $85
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	rst  $38                                         ; $71af: $ff
	add  l                                           ; $71b0: $85
	ldh  [rP1], a                                    ; $71b1: $e0 $00
	inc  e                                           ; $71b3: $1c
	add  b                                           ; $71b4: $80
	rst  $38                                         ; $71b5: $ff
	dec  bc                                          ; $71b6: $0b
	inc  bc                                          ; $71b7: $03
	ld   h, b                                        ; $71b8: $60
	ld   a, l                                        ; $71b9: $7d
	db   $dd                                         ; $71ba: $dd
	call $f5fd                                       ; $71bb: $cd $fd $f5
	and  l                                           ; $71be: $a5
	push hl                                          ; $71bf: $e5

jr_07c_71c0:
	and  l                                           ; $71c0: $a5

Call_07c_71c1:
	pop  hl                                          ; $71c1: $e1
	ld   bc, $e180                                   ; $71c2: $01 $80 $e1
	add  l                                           ; $71c5: $85
	nop                                              ; $71c6: $00
	ld   bc, $00f0                                   ; $71c7: $01 $f0 $00
	add  h                                           ; $71ca: $84
	ldh  a, [rP1]                                    ; $71cb: $f0 $00
	ld   [hl], b                                     ; $71cd: $70
	add  e                                           ; $71ce: $83
	ld   a, a                                        ; $71cf: $7f
	add  b                                           ; $71d0: $80
	ld   a, [hl]                                     ; $71d1: $7e
	add  c                                           ; $71d2: $81
	cp   $82                                         ; $71d3: $fe $82
	db   $fc                                         ; $71d5: $fc
	ld   bc, $06f8                                   ; $71d6: $01 $f8 $06
	adc  l                                           ; $71d9: $8d
	ldh  [rP1], a                                    ; $71da: $e0 $00
	sbc  a                                           ; $71dc: $9f
	add  b                                           ; $71dd: $80
	cp   a                                           ; $71de: $bf
	add  b                                           ; $71df: $80
	and  b                                           ; $71e0: $a0
	add  b                                           ; $71e1: $80
	and  e                                           ; $71e2: $a3
	add  b                                           ; $71e3: $80
	xor  e                                           ; $71e4: $ab
	add  b                                           ; $71e5: $80
	daa                                              ; $71e6: $27
	add  b                                           ; $71e7: $80
	xor  a                                           ; $71e8: $af
	add  b                                           ; $71e9: $80
	xor  d                                           ; $71ea: $aa
	ld   bc, $20a0                                   ; $71eb: $01 $a0 $20
	add  b                                           ; $71ee: $80
	ldh  a, [$82]                                    ; $71ef: $f0 $82
	nop                                              ; $71f1: $00
	add  b                                           ; $71f2: $80
	db   $10                                         ; $71f3: $10
	add  h                                           ; $71f4: $84
	add  b                                           ; $71f5: $80
	add  b                                           ; $71f6: $80
	nop                                              ; $71f7: $00
	add  b                                           ; $71f8: $80
	rst  $38                                         ; $71f9: $ff
	add  b                                           ; $71fa: $80
	ei                                               ; $71fb: $fb
	add  b                                           ; $71fc: $80
	or   $80                                         ; $71fd: $f6 $80
	db   $ed                                         ; $71ff: $ed
	nop                                              ; $7200: $00
	rst  $38                                         ; $7201: $ff
	add  b                                           ; $7202: $80
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	rst  $38                                         ; $7205: $ff
	add  b                                           ; $7206: $80
	db   $fd                                         ; $7207: $fd
	inc  bc                                          ; $7208: $03
	ld   [$e815], a                                  ; $7209: $ea $15 $e8
	jr   z, jr_07c_718e                              ; $720c: $28 $80

	db   $10                                         ; $720e: $10
	add  b                                           ; $720f: $80
	jr   z, @+$03                                    ; $7210: $28 $01

	jr   @-$26                                       ; $7212: $18 $d8

	add  b                                           ; $7214: $80
	ld   hl, sp+$01                                  ; $7215: $f8 $01
	jr   c, @-$06                                    ; $7217: $38 $f8

	add  c                                           ; $7219: $81
	jr   c, jr_07c_721c                              ; $721a: $38 $00

jr_07c_721c:
	ld   a, $81                                      ; $721c: $3e $81
	ld   sp, hl                                      ; $721e: $f9
	add  b                                           ; $721f: $80
	rst  $38                                         ; $7220: $ff
	ld   [bc], a                                     ; $7221: $02
	ld   sp, $c70f                                   ; $7222: $31 $0f $c7
	add  c                                           ; $7225: $81
	ld   sp, hl                                      ; $7226: $f9

jr_07c_7227:
	add  b                                           ; $7227: $80
	rst  $38                                         ; $7228: $ff
	ld   [bc], a                                     ; $7229: $02
	ld   sp, $fe0f                                   ; $722a: $31 $0f $fe
	add  h                                           ; $722d: $84
	nop                                              ; $722e: $00
	add  b                                           ; $722f: $80
	db   $10                                         ; $7230: $10
	adc  l                                           ; $7231: $8d
	nop                                              ; $7232: $00
	add  l                                           ; $7233: $85

jr_07c_7234:
	rst  $38                                         ; $7234: $ff
	ld   bc, $c000                                   ; $7235: $01 $00 $c0
	add  l                                           ; $7238: $85
	jr   c, jr_07c_71c0                              ; $7239: $38 $85

	ld   hl, sp+$01                                  ; $723b: $f8 $01
	nop                                              ; $723d: $00
	or   $81                                         ; $723e: $f6 $81
	ld   sp, hl                                      ; $7240: $f9
	add  b                                           ; $7241: $80
	rst  $38                                         ; $7242: $ff
	ld   [bc], a                                     ; $7243: $02
	ld   bc, $ff0f                                   ; $7244: $01 $0f $ff
	add  c                                           ; $7247: $81
	ld   sp, hl                                      ; $7248: $f9
	add  b                                           ; $7249: $80
	rst  $38                                         ; $724a: $ff
	add  b                                           ; $724b: $80
	rrca                                             ; $724c: $0f
	nop                                              ; $724d: $00
	ret  z                                           ; $724e: $c8

	add  e                                           ; $724f: $83
	ldh  a, [rSC]                                    ; $7250: $f0 $02
	ld   b, b                                        ; $7252: $40
	ld   [hl], b                                     ; $7253: $70
	ldh  [$83], a                                    ; $7254: $e0 $83
	ldh  a, [rSC]                                    ; $7256: $f0 $02
	ld   h, b                                        ; $7258: $60
	ld   [hl], b                                     ; $7259: $70
	pop  af                                          ; $725a: $f1
	add  b                                           ; $725b: $80
	ld   hl, sp-$7e                                  ; $725c: $f8 $82
	db   $fc                                         ; $725e: $fc
	add  e                                           ; $725f: $83
	cp   $80                                         ; $7260: $fe $80
	rst  $38                                         ; $7262: $ff
	add  b                                           ; $7263: $80
	ld   a, a                                        ; $7264: $7f
	nop                                              ; $7265: $00
	rst  $30                                         ; $7266: $f7
	add  b                                           ; $7267: $80
	rrca                                             ; $7268: $0f
	ld   bc, $0008                                   ; $7269: $01 $08 $00
	add  b                                           ; $726c: $80
	rlca                                             ; $726d: $07
	ld   [bc], a                                     ; $726e: $02
	ld   b, $07                                      ; $726f: $06 $07
	dec  b                                           ; $7271: $05
	add  c                                           ; $7272: $81
	inc  b                                           ; $7273: $04
	add  d                                           ; $7274: $82
	nop                                              ; $7275: $00
	add  e                                           ; $7276: $83
	rst  $38                                         ; $7277: $ff
	add  b                                           ; $7278: $80
	nop                                              ; $7279: $00
	add  h                                           ; $727a: $84
	db   $fd                                         ; $727b: $fd
	nop                                              ; $727c: $00
	rst  $38                                         ; $727d: $ff
	add  b                                           ; $727e: $80

Call_07c_727f:
	add  b                                           ; $727f: $80
	add  e                                           ; $7280: $83
	ldh  a, [$80]                                    ; $7281: $f0 $80
	nop                                              ; $7283: $00
	add  l                                           ; $7284: $85
	ldh  a, [rTIMA]                                  ; $7285: $f0 $05
	nop                                              ; $7287: $00
	pop  af                                          ; $7288: $f1
	ld   [hl], b                                     ; $7289: $70
	ld   h, b                                        ; $728a: $60
	jr   nz, jr_07c_72cb                             ; $728b: $20 $3e

	add  b                                           ; $728d: $80
	nop                                              ; $728e: $00
	add  b                                           ; $728f: $80
	rrca                                             ; $7290: $0f
	add  b                                           ; $7291: $80
	rra                                              ; $7292: $1f
	add  b                                           ; $7293: $80
	rrca                                             ; $7294: $0f
	add  c                                           ; $7295: $81
	rst  $38                                         ; $7296: $ff
	inc  c                                           ; $7297: $0c
	cp   b                                           ; $7298: $b8
	ret  nc                                          ; $7299: $d0

	sub  h                                           ; $729a: $94
	ld   e, b                                        ; $729b: $58
	ld   a, [de]                                     ; $729c: $1a
	db   $ec                                         ; $729d: $ec
	dec  l                                           ; $729e: $2d
	add  $46                                         ; $729f: $c6 $46
	inc  bc                                          ; $72a1: $03
	and  e                                           ; $72a2: $a3
	ld   a, a                                        ; $72a3: $7f
	jr   nz, jr_07c_7227                             ; $72a4: $20 $81

	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	add  b                                           ; $72a8: $80
	add  b                                           ; $72a9: $80
	and  b                                           ; $72aa: $a0
	add  b                                           ; $72ab: $80

jr_07c_72ac:
	and  a                                           ; $72ac: $a7
	add  b                                           ; $72ad: $80
	and  l                                           ; $72ae: $a5
	add  b                                           ; $72af: $80
	and  [hl]                                        ; $72b0: $a6
	add  b                                           ; $72b1: $80
	jr   nz, jr_07c_7234                             ; $72b2: $20 $80

	and  [hl]                                        ; $72b4: $a6
	add  b                                           ; $72b5: $80
	and  d                                           ; $72b6: $a2
	ld   bc, $24a4                                   ; $72b7: $01 $a4 $24
	add  d                                           ; $72ba: $82
	nop                                              ; $72bb: $00
	add  d                                           ; $72bc: $82
	add  b                                           ; $72bd: $80
	add  d                                           ; $72be: $82
	nop                                              ; $72bf: $00
	add  d                                           ; $72c0: $82
	add  b                                           ; $72c1: $80
	add  b                                           ; $72c2: $80
	db   $dd                                         ; $72c3: $dd
	add  b                                           ; $72c4: $80
	cp   d                                           ; $72c5: $ba
	add  b                                           ; $72c6: $80
	ld   [hl], h                                     ; $72c7: $74
	add  b                                           ; $72c8: $80
	add  sp, -$80                                    ; $72c9: $e8 $80

jr_07c_72cb:
	ld   d, c                                        ; $72cb: $51
	add  b                                           ; $72cc: $80
	and  d                                           ; $72cd: $a2
	add  b                                           ; $72ce: $80
	inc  b                                           ; $72cf: $04
	ld   bc, $3708                                   ; $72d0: $01 $08 $37
	adc  l                                           ; $72d3: $8d
	jr   c, jr_07c_72d6                              ; $72d4: $38 $00

jr_07c_72d6:
	ld   e, $81                                      ; $72d6: $1e $81
	ld   sp, hl                                      ; $72d8: $f9
	add  b                                           ; $72d9: $80
	rst  $38                                         ; $72da: $ff
	dec  b                                           ; $72db: $05
	ld   de, $e70f                                   ; $72dc: $11 $0f $e7
	ld   sp, hl                                      ; $72df: $f9
	jp   hl                                          ; $72e0: $e9


	ld   sp, hl                                      ; $72e1: $f9
	add  b                                           ; $72e2: $80
	rst  $38                                         ; $72e3: $ff
	ld   [bc], a                                     ; $72e4: $02
	ld   bc, $8e0f                                   ; $72e5: $01 $0f $8e
	add  e                                           ; $72e8: $83
	ldh  a, [rSC]                                    ; $72e9: $f0 $02
	nop                                              ; $72eb: $00
	ld   [hl], b                                     ; $72ec: $70
	ret  nz                                          ; $72ed: $c0

	add  e                                           ; $72ee: $83
	ldh  a, [rSC]                                    ; $72ef: $f0 $02
	ld   b, b                                        ; $72f1: $40
	ld   [hl], b                                     ; $72f2: $70
	rrca                                             ; $72f3: $0f
	add  b                                           ; $72f4: $80
	rst  $38                                         ; $72f5: $ff
	add  b                                           ; $72f6: $80
	nop                                              ; $72f7: $00
	add  b                                           ; $72f8: $80
	rst  $38                                         ; $72f9: $ff
	add  b                                           ; $72fa: $80
	xor  b                                           ; $72fb: $a8
	add  c                                           ; $72fc: $81
	nop                                              ; $72fd: $00

jr_07c_72fe:
	nop                                              ; $72fe: $00

Call_07c_72ff:
	inc  bc                                          ; $72ff: $03
	add  b                                           ; $7300: $80
	ld   d, h                                        ; $7301: $54
	ld   bc, $aba8                                   ; $7302: $01 $a8 $ab
	add  e                                           ; $7305: $83
	nop                                              ; $7306: $00
	ld   b, $0f                                      ; $7307: $06 $0f
	ld   [$0901], sp                                 ; $7309: $08 $01 $09
	dec  [hl]                                        ; $730c: $35
	dec  b                                           ; $730d: $05
	add  l                                           ; $730e: $85
	add  b                                           ; $730f: $80
	push bc                                          ; $7310: $c5
	ld   bc, $4ecd                                   ; $7311: $01 $cd $4e
	add  b                                           ; $7314: $80
	ld   b, $80                                      ; $7315: $06 $80
	ld   c, $00                                      ; $7317: $0e $00
	ld   e, $86                                      ; $7319: $1e $86
	sbc  [hl]                                        ; $731b: $9e
	ld   [bc], a                                     ; $731c: $02
	sbc  $df                                         ; $731d: $de $df
	ret                                              ; $731f: $c9


	add  b                                           ; $7320: $80
	nop                                              ; $7321: $00
	add  b                                           ; $7322: $80
	jr   nz, jr_07c_72ac                             ; $7323: $20 $87

	ld   [hl], b                                     ; $7325: $70
	inc  bc                                          ; $7326: $03
	ld   h, b                                        ; $7327: $60
	ld   [hl], b                                     ; $7328: $70
	adc  h                                           ; $7329: $8c
	nop                                              ; $732a: $00
	add  b                                           ; $732b: $80
	add  b                                           ; $732c: $80
	inc  bc                                          ; $732d: $03
	jp   nz, $f1c0                                   ; $732e: $c2 $c0 $f1

	ldh  a, [$80]                                    ; $7331: $f0 $80
	ld   hl, sp-$80                                  ; $7333: $f8 $80
	db   $fc                                         ; $7335: $fc
	add  d                                           ; $7336: $82
	rst  $38                                         ; $7337: $ff
	ld   [bc], a                                     ; $7338: $02
	cp   b                                           ; $7339: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $733a: $cf
	call z, $cf80                                    ; $733b: $cc $80 $cf
	add  c                                           ; $733e: $81
	adc  $80                                         ; $733f: $ce $80
	ld   c, [hl]                                     ; $7341: $4e
	inc  bc                                          ; $7342: $03
	ld   l, [hl]                                     ; $7343: $6e
	ld   c, $1e                                      ; $7344: $0e $1e
	ld   c, $80                                      ; $7346: $0e $80
	add  a                                           ; $7348: $87
	nop                                              ; $7349: $00
	ret  c                                           ; $734a: $d8

	add  d                                           ; $734b: $82
	db   $e3                                         ; $734c: $e3
	add  b                                           ; $734d: $80
	daa                                              ; $734e: $27
	add  [hl]                                        ; $734f: $86
	ld   h, a                                        ; $7350: $67
	ld   bc, wKanjiIdxInConversation                                   ; $7351: $01 $e7 $c5
	add  c                                           ; $7354: $81
	ld   h, b                                        ; $7355: $60
	adc  d                                           ; $7356: $8a
	ld   [hl], b                                     ; $7357: $70
	nop                                              ; $7358: $00
	ld   h, b                                        ; $7359: $60
	add  l                                           ; $735a: $85
	rst  $38                                         ; $735b: $ff
	add  b                                           ; $735c: $80
	nop                                              ; $735d: $00
	add  b                                           ; $735e: $80
	sub  h                                           ; $735f: $94
	add  d                                           ; $7360: $82
	sbc  h                                           ; $7361: $9c
	add  b                                           ; $7362: $80
	pop  hl                                          ; $7363: $e1
	add  b                                           ; $7364: $80
	ldh  a, [$80]                                    ; $7365: $f0 $80
	db   $fc                                         ; $7367: $fc
	add  b                                           ; $7368: $80
	cp   $82                                         ; $7369: $fe $82
	ld   [hl+], a                                    ; $736b: $22
	add  d                                           ; $736c: $82
	ld   [hl-], a                                    ; $736d: $32
	nop                                              ; $736e: $00
	rst  $38                                         ; $736f: $ff
	add  c                                           ; $7370: $81
	rst  $20                                         ; $7371: $e7
	nop                                              ; $7372: $00
	jr   jr_07c_72fe                                 ; $7373: $18 $89

	ccf                                              ; $7375: $3f
	nop                                              ; $7376: $00
	ret  nz                                          ; $7377: $c0

	add  c                                           ; $7378: $81
	ld   [hl], b                                     ; $7379: $70
	nop                                              ; $737a: $00
	ldh  a, [$89]                                    ; $737b: $f0 $89
	ret  nz                                          ; $737d: $c0

	nop                                              ; $737e: $00
	ld   b, b                                        ; $737f: $40
	add  [hl]                                        ; $7380: $86
	nop                                              ; $7381: $00
	add  b                                           ; $7382: $80
	rrca                                             ; $7383: $0f
	add  d                                           ; $7384: $82
	nop                                              ; $7385: $00
	add  b                                           ; $7386: $80
	ld   bc, $0085                                   ; $7387: $01 $85 $00
	inc  b                                           ; $738a: $04
	ld   d, b                                        ; $738b: $50
	adc  a                                           ; $738c: $8f
	and  a                                           ; $738d: $a7
	nop                                              ; $738e: $00
	ld   a, b                                        ; $738f: $78
	add  b                                           ; $7390: $80
	add  h                                           ; $7391: $84
	add  b                                           ; $7392: $80
	ld   [bc], a                                     ; $7393: $02
	add  [hl]                                        ; $7394: $86
	nop                                              ; $7395: $00
	add  b                                           ; $7396: $80
	rst  $38                                         ; $7397: $ff
	add  b                                           ; $7398: $80
	ld   a, [bc]                                     ; $7399: $0a
	add  b                                           ; $739a: $80
	dec  b                                           ; $739b: $05
	add  b                                           ; $739c: $80
	ld   a, [bc]                                     ; $739d: $0a
	add  l                                           ; $739e: $85
	nop                                              ; $739f: $00
	ld   [$e605], sp                                 ; $73a0: $08 $05 $e6
	pop  hl                                          ; $73a3: $e1
	and  l                                           ; $73a4: $a5
	and  b                                           ; $73a5: $a0
	push hl                                          ; $73a6: $e5
	ldh  [$a7], a                                    ; $73a7: $e0 $a7
	and  l                                           ; $73a9: $a5
	add  b                                           ; $73aa: $80
	inc  c                                           ; $73ab: $0c
	add  [hl]                                        ; $73ac: $86
	nop                                              ; $73ad: $00
	add  b                                           ; $73ae: $80
	inc  bc                                          ; $73af: $03
	add  b                                           ; $73b0: $80
	inc  c                                           ; $73b1: $0c
	add  b                                           ; $73b2: $80
	inc  b                                           ; $73b3: $04
	adc  b                                           ; $73b4: $88
	nop                                              ; $73b5: $00
	add  b                                           ; $73b6: $80
	rst  $38                                         ; $73b7: $ff
	add  c                                           ; $73b8: $81
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	ld   de, $ee80                                   ; $73bb: $11 $80 $ee
	ld   bc, $3e2e                                   ; $73be: $01 $2e $3e
	add  b                                           ; $73c1: $80
	ld   c, $82                                      ; $73c2: $0e $82
	ld   b, $15                                      ; $73c4: $06 $15
	ld   c, $1e                                      ; $73c6: $0e $1e
	adc  $c6                                         ; $73c8: $ce $c6
	xor  [hl]                                        ; $73ca: $ae
	ld   [hl-], a                                    ; $73cb: $32
	ld   h, a                                        ; $73cc: $67
	ld   h, b                                        ; $73cd: $60
	ld   h, l                                        ; $73ce: $65
	ld   [bc], a                                     ; $73cf: $02
	ld   b, $00                                      ; $73d0: $06 $00
	ld   b, $00                                      ; $73d2: $06 $00
	ld   [bc], a                                     ; $73d4: $02
	nop                                              ; $73d5: $00
	ld   [bc], a                                     ; $73d6: $02
	ld   b, $00                                      ; $73d7: $06 $00
	ld   b, $04                                      ; $73d9: $06 $04
	add  hl, de                                      ; $73db: $19
	add  b                                           ; $73dc: $80
	rlca                                             ; $73dd: $07
	add  [hl]                                        ; $73de: $86
	nop                                              ; $73df: $00
	add  b                                           ; $73e0: $80
	inc  bc                                          ; $73e1: $03
	inc  bc                                          ; $73e2: $03
	inc  b                                           ; $73e3: $04
	inc  c                                           ; $73e4: $0c
	ld   bc, $80f1                                   ; $73e5: $01 $f1 $80
	rst  $38                                         ; $73e8: $ff
	add  b                                           ; $73e9: $80
	inc  bc                                          ; $73ea: $03
	add  d                                           ; $73eb: $82
	nop                                              ; $73ec: $00
	add  b                                           ; $73ed: $80
	db   $fc                                         ; $73ee: $fc
	add  b                                           ; $73ef: $80
	inc  bc                                          ; $73f0: $03
	add  b                                           ; $73f1: $80
	ld   a, b                                        ; $73f2: $78
	ld   bc, $7efe                                   ; $73f3: $01 $fe $7e
	add  b                                           ; $73f6: $80
	ld   a, a                                        ; $73f7: $7f
	ld   bc, $af2f                                   ; $73f8: $01 $2f $af
	add  b                                           ; $73fb: $80
	push de                                          ; $73fc: $d5
	add  b                                           ; $73fd: $80
	add  d                                           ; $73fe: $82
	add  b                                           ; $73ff: $80
	rrca                                             ; $7400: $0f
	add  b                                           ; $7401: $80
	ld   bc, $4180                                   ; $7402: $01 $80 $41
	add  b                                           ; $7405: $80
	ld   hl, $ff82                                   ; $7406: $21 $82 $ff
	add  b                                           ; $7409: $80
	ld   a, a                                        ; $740a: $7f
	add  b                                           ; $740b: $80

jr_07c_740c:
	xor  a                                           ; $740c: $af
	add  b                                           ; $740d: $80
	rst  $38                                         ; $740e: $ff
	add  b                                           ; $740f: $80
	ld   a, [hl+]                                    ; $7410: $2a
	add  b                                           ; $7411: $80
	dec  b                                           ; $7412: $05
	ld   bc, $8000                                   ; $7413: $01 $00 $80
	add  l                                           ; $7416: $85
	ld   a, a                                        ; $7417: $7f
	add  b                                           ; $7418: $80
	nop                                              ; $7419: $00
	add  c                                           ; $741a: $81
	cp   $03                                         ; $741b: $fe $03
	ld   e, [hl]                                     ; $741d: $5e
	ld   e, a                                        ; $741e: $5f
	xor  e                                           ; $741f: $ab
	ld   c, h                                        ; $7420: $4c
	add  b                                           ; $7421: $80
	ld   [bc], a                                     ; $7422: $02
	ld   c, $00                                      ; $7423: $0e $00
	dec  b                                           ; $7425: $05
	inc  bc                                          ; $7426: $03
	inc  b                                           ; $7427: $04
	dec  b                                           ; $7428: $05
	ld   b, $03                                      ; $7429: $06 $03
	ld   [bc], a                                     ; $742b: $02
	inc  b                                           ; $742c: $04
	nop                                              ; $742d: $00
	ld   [bc], a                                     ; $742e: $02
	inc  b                                           ; $742f: $04
	dec  b                                           ; $7430: $05
	inc  bc                                          ; $7431: $03
	nop                                              ; $7432: $00
	add  b                                           ; $7433: $80
	inc  b                                           ; $7434: $04
	ld   bc, $0201                                   ; $7435: $01 $01 $02
	add  b                                           ; $7438: $80
	dec  b                                           ; $7439: $05
	inc  bc                                          ; $743a: $03
	inc  bc                                          ; $743b: $03
	nop                                              ; $743c: $00
	ld   b, $05                                      ; $743d: $06 $05
	add  d                                           ; $743f: $82
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	ldh  [rIE], a                                    ; $7442: $e0 $ff
	nop                                              ; $7444: $00
	rst  $38                                         ; $7445: $ff
	nop                                              ; $7446: $00
	rst  $38                                         ; $7447: $ff
	nop                                              ; $7448: $00
	rst  $38                                         ; $7449: $ff
	nop                                              ; $744a: $00
	rst  $38                                         ; $744b: $ff
	nop                                              ; $744c: $00
	adc  b                                           ; $744d: $88
	nop                                              ; $744e: $00
	push bc                                          ; $744f: $c5
	ld   bc, $0f01                                   ; $7450: $01 $01 $0f
	nop                                              ; $7453: $00
	add  b                                           ; $7454: $80
	ld   [bc], a                                     ; $7455: $02
	adc  b                                           ; $7456: $88
	ld   a, [bc]                                     ; $7457: $0a
	add  b                                           ; $7458: $80
	ld   [bc], a                                     ; $7459: $02
	add  hl, bc                                      ; $745a: $09
	rst  $30                                         ; $745b: $f7
	rlca                                             ; $745c: $07
	cp   $ff                                         ; $745d: $fe $ff
	db   $fc                                         ; $745f: $fc
	rst  $38                                         ; $7460: $ff
	db   $fc                                         ; $7461: $fc
	rst  $38                                         ; $7462: $ff
	inc  bc                                          ; $7463: $03
	ld   [bc], a                                     ; $7464: $02
	add  [hl]                                        ; $7465: $86
	rst  $38                                         ; $7466: $ff
	inc  b                                           ; $7467: $04
	xor  d                                           ; $7468: $aa
	rst  $38                                         ; $7469: $ff
	nop                                              ; $746a: $00
	rst  $38                                         ; $746b: $ff
	nop                                              ; $746c: $00
	add  b                                           ; $746d: $80
	rst  $38                                         ; $746e: $ff
	nop                                              ; $746f: $00
	xor  d                                           ; $7470: $aa
	add  h                                           ; $7471: $84
	rst  $38                                         ; $7472: $ff
	add  b                                           ; $7473: $80
	add  b                                           ; $7474: $80
	add  h                                           ; $7475: $84
	rst  $38                                         ; $7476: $ff
	add  b                                           ; $7477: $80
	nop                                              ; $7478: $00
	add  h                                           ; $7479: $84
	rst  $38                                         ; $747a: $ff
	adc  h                                           ; $747b: $8c
	xor  d                                           ; $747c: $aa
	add  b                                           ; $747d: $80
	xor  c                                           ; $747e: $a9
	add  b                                           ; $747f: $80
	xor  b                                           ; $7480: $a8
	add  b                                           ; $7481: $80
	xor  e                                           ; $7482: $ab
	add  b                                           ; $7483: $80
	and  [hl]                                        ; $7484: $a6
	add  b                                           ; $7485: $80
	xor  b                                           ; $7486: $a8
	add  b                                           ; $7487: $80
	sub  b                                           ; $7488: $90
	add  b                                           ; $7489: $80
	jr   nz, jr_07c_740c                             ; $748a: $20 $80

	ret  nz                                          ; $748c: $c0

	add  b                                           ; $748d: $80
	add  b                                           ; $748e: $80
	add  b                                           ; $748f: $80
	add  a                                           ; $7490: $87
	add  b                                           ; $7491: $80
	rrca                                             ; $7492: $0f
	add  b                                           ; $7493: $80
	nop                                              ; $7494: $00
	add  b                                           ; $7495: $80
	rra                                              ; $7496: $1f
	add  b                                           ; $7497: $80
	ccf                                              ; $7498: $3f
	add  b                                           ; $7499: $80
	nop                                              ; $749a: $00
	add  b                                           ; $749b: $80
	ld   a, a                                        ; $749c: $7f
	add  h                                           ; $749d: $84
	rst  $38                                         ; $749e: $ff
	add  b                                           ; $749f: $80
	nop                                              ; $74a0: $00
	add  d                                           ; $74a1: $82
	rst  $38                                         ; $74a2: $ff
	add  b                                           ; $74a3: $80
	nop                                              ; $74a4: $00
	db   $10                                         ; $74a5: $10
	cp   $ff                                         ; $74a6: $fe $ff
	db   $fd                                         ; $74a8: $fd
	rst  $38                                         ; $74a9: $ff
	db   $e3                                         ; $74aa: $e3
	rst  $38                                         ; $74ab: $ff

jr_07c_74ac:
	rst  JumpTable                                         ; $74ac: $df
	rst  $38                                         ; $74ad: $ff
	ld   b, b                                        ; $74ae: $40
	ld   a, a                                        ; $74af: $7f
	add  b                                           ; $74b0: $80
	rst  $38                                         ; $74b1: $ff
	ld   a, a                                        ; $74b2: $7f
	rst  $38                                         ; $74b3: $ff
	nop                                              ; $74b4: $00
	rst  $38                                         ; $74b5: $ff
	nop                                              ; $74b6: $00
	add  c                                           ; $74b7: $81
	rst  $38                                         ; $74b8: $ff
	inc  c                                           ; $74b9: $0c
	ld   sp, hl                                      ; $74ba: $f9
	rst  $38                                         ; $74bb: $ff
	ld   hl, sp-$01                                  ; $74bc: $f8 $ff
	ld   bc, $01ff                                   ; $74be: $01 $ff $01
	rst  $38                                         ; $74c1: $ff
	cp   $ff                                         ; $74c2: $fe $ff
	nop                                              ; $74c4: $00
	rst  $38                                         ; $74c5: $ff
	nop                                              ; $74c6: $00
	add  c                                           ; $74c7: $81
	rst  $38                                         ; $74c8: $ff
	stop                                             ; $74c9: $10 $00
	rst  $38                                         ; $74cb: $ff
	ld   a, a                                        ; $74cc: $7f
	rst  $38                                         ; $74cd: $ff
	ret  nz                                          ; $74ce: $c0

	ld   b, b                                        ; $74cf: $40
	ld   e, a                                        ; $74d0: $5f
	rst  $38                                         ; $74d1: $ff
	rrca                                             ; $74d2: $0f
	rst  $38                                         ; $74d3: $ff
	ldh  a, [hScriptOpcodeParams]                                    ; $74d4: $f0 $a0
	xor  a                                           ; $74d6: $af
	rst  $38                                         ; $74d7: $ff
	rlca                                             ; $74d8: $07
	rst  $38                                         ; $74d9: $ff
	ld   d, h                                        ; $74da: $54
	add  c                                           ; $74db: $81
	rst  $38                                         ; $74dc: $ff
	ld   [bc], a                                     ; $74dd: $02
	inc  b                                           ; $74de: $04
	rlca                                             ; $74df: $07
	db   $fc                                         ; $74e0: $fc
	add  c                                           ; $74e1: $81
	rst  $38                                         ; $74e2: $ff
	ld   b, $04                                      ; $74e3: $06 $04
	rlca                                             ; $74e5: $07
	db   $fc                                         ; $74e6: $fc
	rst  $38                                         ; $74e7: $ff
	db   $fd                                         ; $74e8: $fd
	rst  $38                                         ; $74e9: $ff
	ld   bc, $ff81                                   ; $74ea: $01 $81 $ff
	ld   [bc], a                                     ; $74ed: $02
	nop                                              ; $74ee: $00
	rst  $38                                         ; $74ef: $ff
	nop                                              ; $74f0: $00
	add  c                                           ; $74f1: $81
	rst  $38                                         ; $74f2: $ff
	rlca                                             ; $74f3: $07
	nop                                              ; $74f4: $00
	rst  $38                                         ; $74f5: $ff
	ld   bc, $7cff                                   ; $74f6: $01 $ff $7c
	rst  $38                                         ; $74f9: $ff
	ret  c                                           ; $74fa: $d8

	and  l                                           ; $74fb: $a5
	add  b                                           ; $74fc: $80
	push bc                                          ; $74fd: $c5
	add  b                                           ; $74fe: $80
	add  l                                           ; $74ff: $85
	add  b                                           ; $7500: $80
	push af                                          ; $7501: $f5
	add  b                                           ; $7502: $80
	ld   sp, hl                                      ; $7503: $f9
	add  b                                           ; $7504: $80
	add  c                                           ; $7505: $81
	add  b                                           ; $7506: $80
	cp   $80                                         ; $7507: $fe $80
	rst  $38                                         ; $7509: $ff
	adc  [hl]                                        ; $750a: $8e
	ld   d, [hl]                                     ; $750b: $56
	add  b                                           ; $750c: $80
	ret  nc                                          ; $750d: $d0

	ld   c, $57                                      ; $750e: $0e $57
	rst  $38                                         ; $7510: $ff
	add  a                                           ; $7511: $87
	rst  $38                                         ; $7512: $ff
	add  a                                           ; $7513: $87
	rst  $38                                         ; $7514: $ff
	ld   e, b                                        ; $7515: $58
	ldh  a, [rAUD2ENV]                               ; $7516: $f0 $17
	rst  $38                                         ; $7518: $ff
	rst  ToBoot                                         ; $7519: $c7
	rst  $38                                         ; $751a: $ff
	rst  ToBoot                                         ; $751b: $c7
	rst  $38                                         ; $751c: $ff
	jr   jr_07c_74ac                                 ; $751d: $18 $8d

	nop                                              ; $751f: $00
	ld   bc, $0afa                                   ; $7520: $01 $fa $0a
	adc  h                                           ; $7523: $8c
	nop                                              ; $7524: $00
	add  d                                           ; $7525: $82
	xor  d                                           ; $7526: $aa
	add  b                                           ; $7527: $80
	ld   [bc], a                                     ; $7528: $02
	adc  b                                           ; $7529: $88
	nop                                              ; $752a: $00
	add  h                                           ; $752b: $84
	xor  d                                           ; $752c: $aa
	add  b                                           ; $752d: $80
	ld   a, [bc]                                     ; $752e: $0a
	add  d                                           ; $752f: $82
	nop                                              ; $7530: $00
	add  b                                           ; $7531: $80
	ld   bc, $0380                                   ; $7532: $01 $80 $03
	add  b                                           ; $7535: $80
	xor  d                                           ; $7536: $aa
	add  b                                           ; $7537: $80
	and  h                                           ; $7538: $a4
	add  b                                           ; $7539: $80
	adc  b                                           ; $753a: $88
	add  b                                           ; $753b: $80
	sub  b                                           ; $753c: $90
	add  b                                           ; $753d: $80
	ld   h, b                                        ; $753e: $60
	add  b                                           ; $753f: $80
	ret  nz                                          ; $7540: $c0

	add  b                                           ; $7541: $80
	add  b                                           ; $7542: $80
	add  d                                           ; $7543: $82
	nop                                              ; $7544: $00
	add  d                                           ; $7545: $82
	inc  bc                                          ; $7546: $03
	add  b                                           ; $7547: $80
	rlca                                             ; $7548: $07
	add  b                                           ; $7549: $80
	nop                                              ; $754a: $00
	add  b                                           ; $754b: $80
	rra                                              ; $754c: $1f
	add  b                                           ; $754d: $80
	ccf                                              ; $754e: $3f
	add  b                                           ; $754f: $80
	ld   a, a                                        ; $7550: $7f
	add  b                                           ; $7551: $80
	nop                                              ; $7552: $00
	add  h                                           ; $7553: $84
	rst  $38                                         ; $7554: $ff
	add  b                                           ; $7555: $80
	nop                                              ; $7556: $00
	add  h                                           ; $7557: $84
	rst  $38                                         ; $7558: $ff
	add  b                                           ; $7559: $80
	inc  bc                                          ; $755a: $03
	ld   [$fffc], sp                                 ; $755b: $08 $fc $ff
	ei                                               ; $755e: $fb
	rst  $38                                         ; $755f: $ff
	rst  $30                                         ; $7560: $f7
	rst  $38                                         ; $7561: $ff
	nop                                              ; $7562: $00
	rrca                                             ; $7563: $0f
	ldh  [$81], a                                    ; $7564: $e0 $81
	rst  $38                                         ; $7566: $ff
	inc  b                                           ; $7567: $04
	rst  JumpTable                                         ; $7568: $df
	rst  $38                                         ; $7569: $ff
	ret  nz                                          ; $756a: $c0

	rst  $38                                         ; $756b: $ff
	nop                                              ; $756c: $00
	add  e                                           ; $756d: $83
	rst  $38                                         ; $756e: $ff
	ld   [bc], a                                     ; $756f: $02
	nop                                              ; $7570: $00
	rst  $38                                         ; $7571: $ff
	nop                                              ; $7572: $00
	add  e                                           ; $7573: $83
	rst  $38                                         ; $7574: $ff
	add  [hl]                                        ; $7575: $86
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	inc  sp                                          ; $7578: $33
	sbc  c                                           ; $7579: $99
	rst  JumpTable                                         ; $757a: $df
	add  b                                           ; $757b: $80
	rra                                              ; $757c: $1f
	add  h                                           ; $757d: $84
	rst  JumpTable                                         ; $757e: $df
	add  b                                           ; $757f: $80
	rra                                              ; $7580: $1f
	add  b                                           ; $7581: $80
	rst  JumpTable                                         ; $7582: $df
	add  b                                           ; $7583: $80
	sbc  a                                           ; $7584: $9f
	add  b                                           ; $7585: $80
	ld   e, a                                        ; $7586: $5f
	sub  d                                           ; $7587: $92
	rst  JumpTable                                         ; $7588: $df
	add  d                                           ; $7589: $82
	rra                                              ; $758a: $1f
	nop                                              ; $758b: $00
	ret  c                                           ; $758c: $d8

	add  c                                           ; $758d: $81
	db   $db                                         ; $758e: $db
	nop                                              ; $758f: $00
	db   $10                                         ; $7590: $10
	adc  c                                           ; $7591: $89
	rst  $38                                         ; $7592: $ff
	ld   c, $7f                                      ; $7593: $0e $7f
	rst  $38                                         ; $7595: $ff
	add  a                                           ; $7596: $87
	rst  $38                                         ; $7597: $ff
	ld   hl, sp-$01                                  ; $7598: $f8 $ff
	ld   a, a                                        ; $759a: $7f
	rst  $38                                         ; $759b: $ff
	add  a                                           ; $759c: $87
	rst  $38                                         ; $759d: $ff
	cp   b                                           ; $759e: $b8
	ld   a, a                                        ; $759f: $7f
	ld   d, e                                        ; $75a0: $53
	ld   l, a                                        ; $75a1: $6f
	ld   l, [hl]                                     ; $75a2: $6e
	add  e                                           ; $75a3: $83
	ld   l, l                                        ; $75a4: $6d
	nop                                              ; $75a5: $00
	rst  $38                                         ; $75a6: $ff
	add  l                                           ; $75a7: $85
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	cp   $85                                         ; $75aa: $fe $85
	db   $fd                                         ; $75ac: $fd
	nop                                              ; $75ad: $00
	inc  bc                                          ; $75ae: $03
	add  l                                           ; $75af: $85
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	cp   h                                           ; $75b2: $bc
	add  l                                           ; $75b3: $85
	ld   b, e                                        ; $75b4: $43
	nop                                              ; $75b5: $00
	rst  $38                                         ; $75b6: $ff
	add  l                                           ; $75b7: $85
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	push af                                          ; $75ba: $f5
	add  l                                           ; $75bb: $85
	ld   a, [bc]                                     ; $75bc: $0a
	add  b                                           ; $75bd: $80
	rrca                                             ; $75be: $0f
	nop                                              ; $75bf: $00
	ld   hl, sp-$7d                                  ; $75c0: $f8 $83
	rst  $38                                         ; $75c2: $ff
	ld   [bc], a                                     ; $75c3: $02
	jr   jr_07c_75e5                                 ; $75c4: $18 $1f

	ldh  a, [$83]                                    ; $75c6: $f0 $83
	rst  $38                                         ; $75c8: $ff
	ld   bc, $e0ef                                   ; $75c9: $01 $ef $e0
	add  b                                           ; $75cc: $80
	rst  ToBoot                                         ; $75cd: $c7
	add  b                                           ; $75ce: $80
	adc  a                                           ; $75cf: $8f
	add  b                                           ; $75d0: $80
	rra                                              ; $75d1: $1f
	add  b                                           ; $75d2: $80
	nop                                              ; $75d3: $00
	add  b                                           ; $75d4: $80
	ld   a, a                                        ; $75d5: $7f
	add  e                                           ; $75d6: $83
	rst  $38                                         ; $75d7: $ff
	add  l                                           ; $75d8: $85
	nop                                              ; $75d9: $00
	ld   bc, $46b9                                   ; $75da: $01 $b9 $46
	add  b                                           ; $75dd: $80
	ld   [hl+], a                                    ; $75de: $22
	add  b                                           ; $75df: $80
	sub  b                                           ; $75e0: $90
	add  b                                           ; $75e1: $80
	ret  z                                           ; $75e2: $c8

	nop                                              ; $75e3: $00
	rst  $38                                         ; $75e4: $ff

jr_07c_75e5:
	add  l                                           ; $75e5: $85
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	rst  $38                                         ; $75e8: $ff
	add  e                                           ; $75e9: $83
	nop                                              ; $75ea: $00
	add  b                                           ; $75eb: $80
	add  b                                           ; $75ec: $80
	nop                                              ; $75ed: $00
	rst  $38                                         ; $75ee: $ff
	add  l                                           ; $75ef: $85
	nop                                              ; $75f0: $00
	ld   bc, $00ff                                   ; $75f1: $01 $ff $00
	add  b                                           ; $75f4: $80
	ld   bc, $0381                                   ; $75f5: $01 $81 $03
	ld   bc, $fe02                                   ; $75f8: $01 $02 $fe
	add  l                                           ; $75fb: $85
	nop                                              ; $75fc: $00
	ld   bc, $6d92                                   ; $75fd: $01 $92 $6d
	add  b                                           ; $7600: $80
	ld   b, b                                        ; $7601: $40
	ld   [bc], a                                     ; $7602: $02
	ccf                                              ; $7603: $3f
	nop                                              ; $7604: $00
	ret  nz                                          ; $7605: $c0

	add  a                                           ; $7606: $87
	nop                                              ; $7607: $00
	ld   bc, $df20                                   ; $7608: $01 $20 $df
	add  c                                           ; $760b: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $760c: $cf
	inc  bc                                          ; $760d: $03

jr_07c_760e:
	rrca                                             ; $760e: $0f
	scf                                              ; $760f: $37
	rlca                                             ; $7610: $07
	or   e                                           ; $7611: $b3
	adc  e                                           ; $7612: $8b
	ld   b, e                                        ; $7613: $43
	add  b                                           ; $7614: $80
	ld   [hl], e                                     ; $7615: $73
	adc  [hl]                                        ; $7616: $8e
	ld   a, [bc]                                     ; $7617: $0a
	ld   bc, $fd02                                   ; $7618: $01 $02 $fd
	add  b                                           ; $761b: $80
	ld   a, [$f580]                                  ; $761c: $fa $80 $f5
	add  b                                           ; $761f: $80
	ld   [$d580], a                                  ; $7620: $ea $80 $d5
	add  b                                           ; $7623: $80
	ld   [$d580], a                                  ; $7624: $ea $80 $d5
	add  b                                           ; $7627: $80
	xor  d                                           ; $7628: $aa
	add  b                                           ; $7629: $80
	ld   d, l                                        ; $762a: $55
	add  b                                           ; $762b: $80
	xor  d                                           ; $762c: $aa
	add  b                                           ; $762d: $80
	ld   d, h                                        ; $762e: $54
	add  b                                           ; $762f: $80
	xor  d                                           ; $7630: $aa
	add  b                                           ; $7631: $80
	ld   d, h                                        ; $7632: $54
	add  b                                           ; $7633: $80
	add  b                                           ; $7634: $80
	add  d                                           ; $7635: $82
	nop                                              ; $7636: $00
	ld   bc, $956a                                   ; $7637: $01 $6a $95
	add  b                                           ; $763a: $80
	push de                                          ; $763b: $d5
	add  b                                           ; $763c: $80
	db   $fd                                         ; $763d: $fd
	add  b                                           ; $763e: $80
	adc  a                                           ; $763f: $8f
	add  [hl]                                        ; $7640: $86
	adc  c                                           ; $7641: $89
	ld   b, $e0                                      ; $7642: $06 $e0
	nop                                              ; $7644: $00
	stop                                             ; $7645: $10 $00
	ld   [$0300], sp                                 ; $7647: $08 $00 $03
	add  a                                           ; $764a: $87
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	ld   a, [$fd8d]                                  ; $764d: $fa $8d $fd
	nop                                              ; $7650: $00
	cp   a                                           ; $7651: $bf
	add  c                                           ; $7652: $81
	ld   b, e                                        ; $7653: $43
	add  b                                           ; $7654: $80
	ld   [hl], e                                     ; $7655: $73
	add  b                                           ; $7656: $80
	ld   c, a                                        ; $7657: $4f
	add  [hl]                                        ; $7658: $86
	ld   b, e                                        ; $7659: $43
	add  [hl]                                        ; $765a: $86
	ld   a, [bc]                                     ; $765b: $0a
	add  b                                           ; $765c: $80
	jp   z, $3a80                                    ; $765d: $ca $80 $3a

	add  d                                           ; $7660: $82
	ld   a, [bc]                                     ; $7661: $0a
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	adc  e                                           ; $7664: $8b
	rst  $38                                         ; $7665: $ff
	add  b                                           ; $7666: $80
	cp   $80                                         ; $7667: $fe $80
	rst  $38                                         ; $7669: $ff
	add  b                                           ; $766a: $80
	cp   $80                                         ; $766b: $fe $80
	db   $fd                                         ; $766d: $fd
	add  b                                           ; $766e: $80
	ld   a, [$f580]                                  ; $766f: $fa $80 $f5
	add  b                                           ; $7672: $80
	ld   [$5580], a                                  ; $7673: $ea $80 $55
	add  b                                           ; $7676: $80
	xor  d                                           ; $7677: $aa
	ld   bc, $e41b                                   ; $7678: $01 $1b $e4
	add  b                                           ; $767b: $80
	or   d                                           ; $767c: $b2
	add  b                                           ; $767d: $80
	sbc  c                                           ; $767e: $99
	add  b                                           ; $767f: $80
	sbc  h                                           ; $7680: $9c
	add  b                                           ; $7681: $80
	sub  [hl]                                        ; $7682: $96
	add  b                                           ; $7683: $80
	sub  a                                           ; $7684: $97
	add  d                                           ; $7685: $82
	sub  l                                           ; $7686: $95
	add  b                                           ; $7687: $80
	nop                                              ; $7688: $00
	add  b                                           ; $7689: $80
	ld   b, b                                        ; $768a: $40
	add  b                                           ; $768b: $80
	jr   nz, jr_07c_760e                             ; $768c: $20 $80

	sub  b                                           ; $768e: $90
	add  b                                           ; $768f: $80
	ld   c, h                                        ; $7690: $4c
	add  b                                           ; $7691: $80
	daa                                              ; $7692: $27
	add  hl, bc                                      ; $7693: $09
	sub  e                                           ; $7694: $93
	inc  de                                          ; $7695: $13
	ld   c, c                                        ; $7696: $49
	add  hl, bc                                      ; $7697: $09
	jp   $0400                                       ; $7698: $c3 $00 $04


	ld   b, $02                                      ; $769b: $06 $02
	inc  bc                                          ; $769d: $03
	add  b                                           ; $769e: $80
	ld   bc, $0080                                   ; $769f: $01 $80 $00
	add  b                                           ; $76a2: $80
	add  b                                           ; $76a3: $80
	add  b                                           ; $76a4: $80
	ldh  a, [$81]                                    ; $76a5: $f0 $81
	rst  $38                                         ; $76a7: $ff
	add  h                                           ; $76a8: $84
	nop                                              ; $76a9: $00
	ld   [bc], a                                     ; $76aa: $02
	ret  nz                                          ; $76ab: $c0

	ld   b, b                                        ; $76ac: $40
	ld   a, a                                        ; $76ad: $7f
	add  b                                           ; $76ae: $80
	ld   bc, $0380                                   ; $76af: $01 $80 $03
	add  b                                           ; $76b2: $80
	add  b                                           ; $76b3: $80
	nop                                              ; $76b4: $00
	rst  $38                                         ; $76b5: $ff
	add  b                                           ; $76b6: $80
	inc  bc                                          ; $76b7: $03
	add  b                                           ; $76b8: $80
	rrca                                             ; $76b9: $0f
	add  b                                           ; $76ba: $80
	rra                                              ; $76bb: $1f
	add  b                                           ; $76bc: $80
	ld   a, a                                        ; $76bd: $7f
	add  e                                           ; $76be: $83
	rst  $38                                         ; $76bf: $ff
	add  b                                           ; $76c0: $80
	ld   a, a                                        ; $76c1: $7f
	add  b                                           ; $76c2: $80
	ld   c, a                                        ; $76c3: $4f
	adc  h                                           ; $76c4: $8c
	ld   b, e                                        ; $76c5: $43
	add  b                                           ; $76c6: $80
	adc  d                                           ; $76c7: $8a
	add  b                                           ; $76c8: $80
	ld   a, d                                        ; $76c9: $7a
	adc  d                                           ; $76ca: $8a
	ld   a, [bc]                                     ; $76cb: $0a
	ld   bc, $54ab                                   ; $76cc: $01 $ab $54
	add  b                                           ; $76cf: $80
	xor  b                                           ; $76d0: $a8
	add  b                                           ; $76d1: $80
	ld   d, h                                        ; $76d2: $54
	add  b                                           ; $76d3: $80
	xor  b                                           ; $76d4: $a8
	add  b                                           ; $76d5: $80
	ld   d, b                                        ; $76d6: $50
	add  b                                           ; $76d7: $80
	and  b                                           ; $76d8: $a0
	add  b                                           ; $76d9: $80
	ld   b, b                                        ; $76da: $40
	add  b                                           ; $76db: $80
	and  b                                           ; $76dc: $a0
	ld   bc, $a956                                   ; $76dd: $01 $56 $a9
	add  b                                           ; $76e0: $80
	and  a                                           ; $76e1: $a7
	add  b                                           ; $76e2: $80
	adc  a                                           ; $76e3: $8f
	add  b                                           ; $76e4: $80
	cp   a                                           ; $76e5: $bf
	add  b                                           ; $76e6: $80
	ld   a, [hl]                                     ; $76e7: $7e
	add  b                                           ; $76e8: $80
	db   $fc                                         ; $76e9: $fc
	add  b                                           ; $76ea: $80
	ld   hl, sp-$80                                  ; $76eb: $f8 $80
	pop  af                                          ; $76ed: $f1
	add  b                                           ; $76ee: $80
	adc  c                                           ; $76ef: $89
	add  b                                           ; $76f0: $80
	ld   sp, hl                                      ; $76f1: $f9
	add  b                                           ; $76f2: $80
	adc  a                                           ; $76f3: $8f
	add  [hl]                                        ; $76f4: $86
	adc  c                                           ; $76f5: $89
	add  b                                           ; $76f6: $80
	ld   sp, hl                                      ; $76f7: $f9
	ld   bc, $00fb                                   ; $76f8: $01 $fb $00
	add  b                                           ; $76fb: $80
	ld   [bc], a                                     ; $76fc: $02
	add  b                                           ; $76fd: $80
	nop                                              ; $76fe: $00
	add  b                                           ; $76ff: $80
	ld   [bc], a                                     ; $7700: $02
	add  b                                           ; $7701: $80
	ld   bc, $0280                                   ; $7702: $01 $80 $02
	add  b                                           ; $7705: $80
	ld   bc, $0280                                   ; $7706: $01 $80 $02
	nop                                              ; $7709: $00
	ei                                               ; $770a: $fb
	add  e                                           ; $770b: $83
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	rst  $38                                         ; $770e: $ff
	add  [hl]                                        ; $770f: $86
	nop                                              ; $7710: $00
	inc  bc                                          ; $7711: $03
	rra                                              ; $7712: $1f
	rst  $38                                         ; $7713: $ff
	nop                                              ; $7714: $00
	ld   h, b                                        ; $7715: $60
	add  c                                           ; $7716: $81
	nop                                              ; $7717: $00
	inc  b                                           ; $7718: $04
	ret  nz                                          ; $7719: $c0

	ld   b, b                                        ; $771a: $40
	ld   sp, $0130                                   ; $771b: $31 $30 $01
	add  d                                           ; $771e: $82
	nop                                              ; $771f: $00
	inc  b                                           ; $7720: $04
	rst  $38                                         ; $7721: $ff
	add  b                                           ; $7722: $80
	nop                                              ; $7723: $00
	ld   h, b                                        ; $7724: $60
	nop                                              ; $7725: $00
	add  b                                           ; $7726: $80
	rra                                              ; $7727: $1f
	inc  b                                           ; $7728: $04
	ld   a, a                                        ; $7729: $7f
	nop                                              ; $772a: $00
	ldh  [rP1], a                                    ; $772b: $e0 $00
	add  b                                           ; $772d: $80
	add  d                                           ; $772e: $82
	nop                                              ; $772f: $00
	ld   bc, $42fe                                   ; $7730: $01 $fe $42
	adc  c                                           ; $7733: $89

jr_07c_7734:
	ld   b, e                                        ; $7734: $43
	add  b                                           ; $7735: $80
	ld   a, a                                        ; $7736: $7f
	add  b                                           ; $7737: $80
	ld   b, e                                        ; $7738: $43
	adc  b                                           ; $7739: $88
	ld   a, [bc]                                     ; $773a: $0a
	add  b                                           ; $773b: $80
	ld   a, [FarMemCopy16C]                                  ; $773c: $fa $82 $0a
	ld   bc, $40bf                                   ; $773f: $01 $bf $40
	add  b                                           ; $7742: $80
	add  b                                           ; $7743: $80
	add  b                                           ; $7744: $80
	ld   b, b                                        ; $7745: $40
	add  b                                           ; $7746: $80
	add  b                                           ; $7747: $80
	add  b                                           ; $7748: $80
	ld   b, b                                        ; $7749: $40
	add  b                                           ; $774a: $80
	add  b                                           ; $774b: $80
	add  b                                           ; $774c: $80
	ld   b, b                                        ; $774d: $40
	add  b                                           ; $774e: $80
	add  b                                           ; $774f: $80
	ld   bc, $ff00                                   ; $7750: $01 $00 $ff
	add  b                                           ; $7753: $80
	inc  bc                                          ; $7754: $03
	dec  bc                                          ; $7755: $0b
	cp   $ff                                         ; $7756: $fe $ff
	ld   [bc], a                                     ; $7758: $02
	inc  bc                                          ; $7759: $03
	cp   $ff                                         ; $775a: $fe $ff
	ld   [bc], a                                     ; $775c: $02
	inc  bc                                          ; $775d: $03
	cp   $ff                                         ; $775e: $fe $ff
	ld   [bc], a                                     ; $7760: $02
	inc  bc                                          ; $7761: $03
	add  b                                           ; $7762: $80
	adc  a                                           ; $7763: $8f
	adc  b                                           ; $7764: $88
	adc  c                                           ; $7765: $89
	add  b                                           ; $7766: $80
	rst  $38                                         ; $7767: $ff
	add  b                                           ; $7768: $80
	adc  c                                           ; $7769: $89
	ld   bc, $01fa                                   ; $776a: $01 $fa $01
	add  b                                           ; $776d: $80
	ld   [bc], a                                     ; $776e: $02
	add  b                                           ; $776f: $80
	ld   bc, $0280                                   ; $7770: $01 $80 $02
	add  b                                           ; $7773: $80
	ld   bc, $0280                                   ; $7774: $01 $80 $02
	add  b                                           ; $7777: $80
	ld   bc, $0280                                   ; $7778: $01 $80 $02
	ld   bc, $544f                                   ; $777b: $01 $4f $54
	add  b                                           ; $777e: $80
	or   l                                           ; $777f: $b5
	add  b                                           ; $7780: $80
	ld   d, l                                        ; $7781: $55
	add  b                                           ; $7782: $80
	or   l                                           ; $7783: $b5
	add  b                                           ; $7784: $80
	ld   d, l                                        ; $7785: $55
	add  b                                           ; $7786: $80
	or   l                                           ; $7787: $b5
	add  b                                           ; $7788: $80
	ld   d, l                                        ; $7789: $55
	add  b                                           ; $778a: $80
	or   h                                           ; $778b: $b4
	ld   bc, $4faf                                   ; $778c: $01 $af $4f
	add  b                                           ; $778f: $80
	add  b                                           ; $7790: $80
	add  b                                           ; $7791: $80
	ccf                                              ; $7792: $3f
	add  b                                           ; $7793: $80
	nop                                              ; $7794: $00
	add  b                                           ; $7795: $80
	rst  $38                                         ; $7796: $ff
	add  b                                           ; $7797: $80
	nop                                              ; $7798: $00
	add  b                                           ; $7799: $80
	rst  $38                                         ; $779a: $ff
	add  b                                           ; $779b: $80
	nop                                              ; $779c: $00
	add  [hl]                                        ; $779d: $86
	ld   b, e                                        ; $779e: $43
	add  b                                           ; $779f: $80
	ld   e, a                                        ; $77a0: $5f
	add  b                                           ; $77a1: $80
	ld   a, b                                        ; $77a2: $78
	add  b                                           ; $77a3: $80
	ld   b, b                                        ; $77a4: $40
	add  b                                           ; $77a5: $80
	ld   b, c                                        ; $77a6: $41
	add  d                                           ; $77a7: $82
	ld   a, [bc]                                     ; $77a8: $0a
	add  b                                           ; $77a9: $80
	ld   a, [de]                                     ; $77aa: $1a
	add  b                                           ; $77ab: $80
	ldh  a, [$80]                                    ; $77ac: $f0 $80
	add  c                                           ; $77ae: $81
	add  b                                           ; $77af: $80
	rlca                                             ; $77b0: $07
	add  b                                           ; $77b1: $80
	jr   c, jr_07c_7734                              ; $77b2: $38 $80

	ldh  [c], a                                      ; $77b4: $e2
	nop                                              ; $77b5: $00
	rst  $38                                         ; $77b6: $ff
	add  b                                           ; $77b7: $80
	nop                                              ; $77b8: $00
	add  b                                           ; $77b9: $80
	inc  bc                                          ; $77ba: $03
	ld   [bc], a                                     ; $77bb: $02
	rrca                                             ; $77bc: $0f
	inc  c                                           ; $77bd: $0c
	db   $fc                                         ; $77be: $fc
	add  b                                           ; $77bf: $80
	ldh  [c], a                                      ; $77c0: $e2
	add  c                                           ; $77c1: $81
	ld   a, [bc]                                     ; $77c2: $0a
	add  b                                           ; $77c3: $80
	ld   a, [hl+]                                    ; $77c4: $2a
	ld   b, $aa                                      ; $77c5: $06 $aa
	ld   e, h                                        ; $77c7: $5c
	ld   a, h                                        ; $77c8: $7c
	ld   h, b                                        ; $77c9: $60
	ldh  [c], a                                      ; $77ca: $e2
	ld   [bc], a                                     ; $77cb: $02
	ld   a, [bc]                                     ; $77cc: $0a
	add  h                                           ; $77cd: $84
	xor  d                                           ; $77ce: $aa
	inc  b                                           ; $77cf: $04
	and  d                                           ; $77d0: $a2
	xor  d                                           ; $77d1: $aa
	xor  b                                           ; $77d2: $a8
	xor  d                                           ; $77d3: $aa
	nop                                              ; $77d4: $00
	adc  l                                           ; $77d5: $8d
	xor  d                                           ; $77d6: $aa
	ld   bc, $105a                                   ; $77d7: $01 $5a $10
	add  b                                           ; $77da: $80
	inc  d                                           ; $77db: $14
	add  h                                           ; $77dc: $84
	dec  d                                           ; $77dd: $15
	add  b                                           ; $77de: $80
	sub  l                                           ; $77df: $95
	add  b                                           ; $77e0: $80
	ld   d, l                                        ; $77e1: $55
	add  b                                           ; $77e2: $80
	sub  l                                           ; $77e3: $95
	nop                                              ; $77e4: $00
	rra                                              ; $77e5: $1f
	add  c                                           ; $77e6: $81
	rst  $38                                         ; $77e7: $ff
	add  b                                           ; $77e8: $80
	nop                                              ; $77e9: $00
	add  d                                           ; $77ea: $82
	rst  $38                                         ; $77eb: $ff
	add  b                                           ; $77ec: $80
	nop                                              ; $77ed: $00
	add  d                                           ; $77ee: $82
	rst  $38                                         ; $77ef: $ff
	nop                                              ; $77f0: $00
	db   $fc                                         ; $77f1: $fc
	add  c                                           ; $77f2: $81
	rst  $38                                         ; $77f3: $ff
	ld   [bc], a                                     ; $77f4: $02
	inc  b                                           ; $77f5: $04
	rlca                                             ; $77f6: $07
	db   $fc                                         ; $77f7: $fc
	add  c                                           ; $77f8: $81
	rst  $38                                         ; $77f9: $ff
	ld   [bc], a                                     ; $77fa: $02
	inc  c                                           ; $77fb: $0c
	rrca                                             ; $77fc: $0f
	ld   hl, sp-$7f                                  ; $77fd: $f8 $81
	rst  $38                                         ; $77ff: $ff
	nop                                              ; $7800: $00
	ld   b, h                                        ; $7801: $44
	adc  l                                           ; $7802: $8d
	ld   b, e                                        ; $7803: $43
	adc  [hl]                                        ; $7804: $8e
	ld   a, [bc]                                     ; $7805: $0a
	add  b                                           ; $7806: $80
	rst  $20                                         ; $7807: $e7
	add  b                                           ; $7808: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7809: $cf
	add  b                                           ; $780a: $80
	add  b                                           ; $780b: $80
	add  b                                           ; $780c: $80
	ccf                                              ; $780d: $3f
	add  b                                           ; $780e: $80
	ld   a, a                                        ; $780f: $7f
	add  b                                           ; $7810: $80
	nop                                              ; $7811: $00
	add  e                                           ; $7812: $83
	rst  $38                                         ; $7813: $ff
	adc  d                                           ; $7814: $8a
	nop                                              ; $7815: $00
	add  b                                           ; $7816: $80
	ld   bc, $0f01                                   ; $7817: $01 $01 $0f
	ld   a, c                                        ; $781a: $79
	add  e                                           ; $781b: $83
	adc  c                                           ; $781c: $89
	add  b                                           ; $781d: $80
	adc  [hl]                                        ; $781e: $8e
	add  b                                           ; $781f: $80
	sub  h                                           ; $7820: $94
	add  b                                           ; $7821: $80
	ldh  [rP1], a                                    ; $7822: $e0 $00
	nop                                              ; $7824: $00
	add  b                                           ; $7825: $80
	ld   [bc], a                                     ; $7826: $02
	add  b                                           ; $7827: $80
	ld   a, [hl+]                                    ; $7828: $2a
	ld   b, $7b                                      ; $7829: $06 $7b
	ld   a, b                                        ; $782b: $78
	ld   a, e                                        ; $782c: $7b
	ld   c, b                                        ; $782d: $48
	ld   [hl], b                                     ; $782e: $70
	ld   [$8048], sp                                 ; $782f: $08 $48 $80
	add  hl, hl                                      ; $7832: $29
	add  h                                           ; $7833: $84
	xor  c                                           ; $7834: $a9
	inc  bc                                          ; $7835: $03
	dec  d                                           ; $7836: $15
	push af                                          ; $7837: $f5
	dec  [hl]                                        ; $7838: $35
	push de                                          ; $7839: $d5
	add  d                                           ; $783a: $82
	dec  d                                           ; $783b: $15
	add  [hl]                                        ; $783c: $86
	ld   d, l                                        ; $783d: $55
	nop                                              ; $783e: $00
	ld   bc, $fd81                                   ; $783f: $01 $81 $fd
	add  b                                           ; $7842: $80
	db   $fc                                         ; $7843: $fc
	dec  b                                           ; $7844: $05
	di                                               ; $7845: $f3
	rst  $38                                         ; $7846: $ff
	adc  [hl]                                        ; $7847: $8e
	cp   $70                                         ; $7848: $fe $70
	ldh  a, [$80]                                    ; $784a: $f0 $80
	jp   z, $2a80                                    ; $784c: $ca $80 $2a

	add  b                                           ; $784f: $80
	rrca                                             ; $7850: $0f
	add  b                                           ; $7851: $80
	inc  a                                           ; $7852: $3c
	add  b                                           ; $7853: $80
	ldh  a, [c]                                      ; $7854: $f2
	add  b                                           ; $7855: $80
	adc  d                                           ; $7856: $8a
	add  b                                           ; $7857: $80
	ld   a, [hl+]                                    ; $7858: $2a
	add  h                                           ; $7859: $84
	xor  d                                           ; $785a: $aa
	ld   bc, $8a88                                   ; $785b: $01 $88 $8a
	add  b                                           ; $785e: $80
	ld   a, [hl+]                                    ; $785f: $2a
	add  h                                           ; $7860: $84
	xor  d                                           ; $7861: $aa
	nop                                              ; $7862: $00
	xor  b                                           ; $7863: $a8
	add  e                                           ; $7864: $83
	xor  d                                           ; $7865: $aa
	nop                                              ; $7866: $00
	ld   a, [bc]                                     ; $7867: $0a
	add  c                                           ; $7868: $81
	xor  d                                           ; $7869: $aa
	ld   [bc], a                                     ; $786a: $02
	adc  d                                           ; $786b: $8a
	xor  d                                           ; $786c: $aa
	ld   a, [hl+]                                    ; $786d: $2a
	adc  c                                           ; $786e: $89
	xor  d                                           ; $786f: $aa
	add  b                                           ; $7870: $80
	xor  c                                           ; $7871: $a9
	add  b                                           ; $7872: $80
	xor  e                                           ; $7873: $ab
	add  b                                           ; $7874: $80
	and  a                                           ; $7875: $a7
	add  b                                           ; $7876: $80
	adc  [hl]                                        ; $7877: $8e
	add  b                                           ; $7878: $80
	sbc  h                                           ; $7879: $9c
	add  b                                           ; $787a: $80
	ld   a, b                                        ; $787b: $78
	add  b                                           ; $787c: $80
	pop  af                                          ; $787d: $f1
	nop                                              ; $787e: $00
	add  b                                           ; $787f: $80
	add  c                                           ; $7880: $81
	xor  d                                           ; $7881: $aa
	ld   bc, $a9ab                                   ; $7882: $01 $ab $a9
	add  b                                           ; $7885: $80
	xor  e                                           ; $7886: $ab
	inc  bc                                          ; $7887: $03
	xor  [hl]                                        ; $7888: $ae
	and  [hl]                                        ; $7889: $a6
	xor  h                                           ; $788a: $ac
	adc  h                                           ; $788b: $8c
	add  b                                           ; $788c: $80
	sbc  e                                           ; $788d: $9b
	add  b                                           ; $788e: $80
	ld   [hl], b                                     ; $788f: $70
	add  d                                           ; $7890: $82
	xor  c                                           ; $7891: $a9
	add  d                                           ; $7892: $82
	xor  b                                           ; $7893: $a8
	add  b                                           ; $7894: $80
	and  h                                           ; $7895: $a4
	add  b                                           ; $7896: $80
	xor  h                                           ; $7897: $ac
	add  b                                           ; $7898: $80
	sub  e                                           ; $7899: $93
	add  b                                           ; $789a: $80
	and  b                                           ; $789b: $a0
	add  d                                           ; $789c: $82
	ld   d, l                                        ; $789d: $55
	add  b                                           ; $789e: $80
	inc  d                                           ; $789f: $14
	add  b                                           ; $78a0: $80
	ld   bc, $ff80                                   ; $78a1: $01 $80 $ff
	add  b                                           ; $78a4: $80
	nop                                              ; $78a5: $00
	add  b                                           ; $78a6: $80
	rst  $38                                         ; $78a7: $ff
	add  b                                           ; $78a8: $80
	nop                                              ; $78a9: $00
	ld   [bc], a                                     ; $78aa: $02
	adc  a                                           ; $78ab: $8f
	ldh  a, [$80]                                    ; $78ac: $f0 $80
	add  c                                           ; $78ae: $81
	ldh  a, [rTMA]                                   ; $78af: $f0 $06
	ld   [hl], b                                     ; $78b1: $70
	ldh  a, [$80]                                    ; $78b2: $f0 $80
	ldh  a, [rSVBK]                                  ; $78b4: $f0 $70
	ldh  a, [$c0]                                    ; $78b6: $f0 $c0
	add  c                                           ; $78b8: $81
	or   b                                           ; $78b9: $b0
	nop                                              ; $78ba: $00
	ldh  a, [rIE]                                    ; $78bb: $f0 $ff
	nop                                              ; $78bd: $00
	rst  $38                                         ; $78be: $ff
	nop                                              ; $78bf: $00
	rst  $38                                         ; $78c0: $ff
	nop                                              ; $78c1: $00
	jp   z, $ed00                                    ; $78c2: $ca $00 $ed

	nop                                              ; $78c5: $00
	add  l                                           ; $78c6: $85
	rrca                                             ; $78c7: $0f
	ld   a, [de]                                     ; $78c8: $1a
	dec  bc                                          ; $78c9: $0b
	ld   a, [bc]                                     ; $78ca: $0a
	rrca                                             ; $78cb: $0f
	inc  b                                           ; $78cc: $04
	ld   a, [bc]                                     ; $78cd: $0a
	rlca                                             ; $78ce: $07
	rrca                                             ; $78cf: $0f
	ld   [$e70f], sp                                 ; $78d0: $08 $0f $e7
	sbc  l                                           ; $78d3: $9d
	adc  c                                           ; $78d4: $89
	db   $fc                                         ; $78d5: $fc
	adc  b                                           ; $78d6: $88
	cp   h                                           ; $78d7: $bc
	call nz, $fcff                                   ; $78d8: $c4 $ff $fc
	ei                                               ; $78db: $fb
	ld   hl, sp-$01                                  ; $78dc: $f8 $ff
	jr   c, @+$01                                    ; $78de: $38 $ff

	ld   a, $fe                                      ; $78e0: $3e $fe
	cp   h                                           ; $78e2: $bc
	ld   b, h                                        ; $78e3: $44
	add  b                                           ; $78e4: $80
	and  h                                           ; $78e5: $a4
	add  b                                           ; $78e6: $80
	db   $10                                         ; $78e7: $10
	ld   [de], a                                     ; $78e8: $12
	ld   b, $f6                                      ; $78e9: $06 $f6
	db   $10                                         ; $78eb: $10
	rst  $38                                         ; $78ec: $ff
	rra                                              ; $78ed: $1f
	rst  $38                                         ; $78ee: $ff
	ld   a, [hl]                                     ; $78ef: $7e
	cp   a                                           ; $78f0: $bf
	add  hl, sp                                      ; $78f1: $39
	ccf                                              ; $78f2: $3f
	ld   a, [hl-]                                    ; $78f3: $3a
	ld   a, [bc]                                     ; $78f4: $0a
	dec  b                                           ; $78f5: $05
	rra                                              ; $78f6: $1f
	ld   d, d                                        ; $78f7: $52
	ld   e, a                                        ; $78f8: $5f
	ld   de, $717f                                   ; $78f9: $11 $7f $71
	add  c                                           ; $78fc: $81
	rst  $38                                         ; $78fd: $ff
	jr   nz, jr_07c_797d                             ; $78fe: $20 $7d

	db   $db                                         ; $7900: $db
	ld   a, [de]                                     ; $7901: $1a
	ld   a, a                                        ; $7902: $7f
	xor  h                                           ; $7903: $ac
	or   c                                           ; $7904: $b1
	pop  af                                          ; $7905: $f1
	rst  $38                                         ; $7906: $ff
	ld   l, $ff                                      ; $7907: $2e $ff
	ldh  a, [c]                                      ; $7909: $f2
	rst  $38                                         ; $790a: $ff
	di                                               ; $790b: $f3
	rst  $38                                         ; $790c: $ff
	ei                                               ; $790d: $fb
	ld   sp, hl                                      ; $790e: $f9
	cp   [hl]                                        ; $790f: $be
	ei                                               ; $7910: $fb
	cp   [hl]                                        ; $7911: $be
	ld   a, a                                        ; $7912: $7f
	ld   b, c                                        ; $7913: $41
	ei                                               ; $7914: $fb
	cp   h                                           ; $7915: $bc
	rst  $38                                         ; $7916: $ff
	ld   a, b                                        ; $7917: $78
	rst  $38                                         ; $7918: $ff
	rlca                                             ; $7919: $07
	rst  $38                                         ; $791a: $ff
	pop  af                                          ; $791b: $f1
	rst  $38                                         ; $791c: $ff
	ld   bc, $07f7                                   ; $791d: $01 $f7 $07
	add  b                                           ; $7920: $80
	sbc  l                                           ; $7921: $9d
	rlca                                             ; $7922: $07
	rst  $38                                         ; $7923: $ff
	ei                                               ; $7924: $fb
	rst  $38                                         ; $7925: $ff
	ret                                              ; $7926: $c9


	rst  $38                                         ; $7927: $ff
	adc  l                                           ; $7928: $8d
	rst  $38                                         ; $7929: $ff
	cp   a                                           ; $792a: $bf
	add  c                                           ; $792b: $81
	rst  $38                                         ; $792c: $ff
	dec  bc                                          ; $792d: $0b
	ldh  [rIE], a                                    ; $792e: $e0 $ff
	rst  ToBoot                                         ; $7930: $c7
	ld   a, a                                        ; $7931: $7f
	sub  $8e                                         ; $7932: $d6 $8e
	dec  a                                           ; $7934: $3d
	rst  $38                                         ; $7935: $ff
	jr   nz, @+$01                                   ; $7936: $20 $ff

	dec  d                                           ; $7938: $15
	rst  $30                                         ; $7939: $f7
	add  b                                           ; $793a: $80
	rst  JumpTable                                         ; $793b: $df
	add  b                                           ; $793c: $80
	rst  $38                                         ; $793d: $ff
	ld   [de], a                                     ; $793e: $12
	nop                                              ; $793f: $00
	rst  $38                                         ; $7940: $ff
	sub  b                                           ; $7941: $90
	sub  a                                           ; $7942: $97
	rlca                                             ; $7943: $07
	db   $fc                                         ; $7944: $fc
	nop                                              ; $7945: $00
	rst  $38                                         ; $7946: $ff
	jr   nc, @+$01                                   ; $7947: $30 $ff

	call z, $2d3e                                    ; $7949: $cc $3e $2d
	rst  $38                                         ; $794c: $ff
	ld   [de], a                                     ; $794d: $12
	cp   $e0                                         ; $794e: $fe $e0
	rst  $38                                         ; $7950: $ff
	rra                                              ; $7951: $1f
	add  b                                           ; $7952: $80
	ccf                                              ; $7953: $3f
	ld   [bc], a                                     ; $7954: $02
	ld   hl, sp-$71                                  ; $7955: $f8 $8f
	ld   [hl], a                                     ; $7957: $77
	add  b                                           ; $7958: $80
	ld   hl, sp-$80                                  ; $7959: $f8 $80
	ld   b, a                                        ; $795b: $47
	add  b                                           ; $795c: $80
	inc  l                                           ; $795d: $2c
	add  b                                           ; $795e: $80
	ldh  a, [rSC]                                    ; $795f: $f0 $02
	ldh  [$e6], a                                    ; $7961: $e0 $e6
	ld   b, $80                                      ; $7963: $06 $80
	dec  b                                           ; $7965: $05
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	add  b                                           ; $7968: $80
	ld   bc, $0206                                   ; $7969: $01 $06 $02
	ld   [hl+], a                                    ; $796c: $22
	and  b                                           ; $796d: $a0
	sub  $16                                         ; $796e: $d6 $16
	ld   c, a                                        ; $7970: $4f
	rrca                                             ; $7971: $0f
	add  b                                           ; $7972: $80
	ei                                               ; $7973: $fb
	add  b                                           ; $7974: $80
	rst  $28                                         ; $7975: $ef
	add  b                                           ; $7976: $80
	add  b                                           ; $7977: $80
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	add  b                                           ; $797a: $80
	ld   l, a                                        ; $797b: $6f
	add  b                                           ; $797c: $80

jr_07c_797d:
	inc  hl                                          ; $797d: $23
	add  b                                           ; $797e: $80
	adc  l                                           ; $797f: $8d
	dec  b                                           ; $7980: $05
	inc  bc                                          ; $7981: $03
	db   $e3                                         ; $7982: $e3
	rst  ToBoot                                         ; $7983: $c7
	ld   [hl], a                                     ; $7984: $77
	ld   c, a                                        ; $7985: $4f
	rra                                              ; $7986: $1f
	add  b                                           ; $7987: $80
	ld   bc, $0028                                   ; $7988: $01 $28 $00
	ld   b, h                                        ; $798b: $44
	or   b                                           ; $798c: $b0
	rst  $38                                         ; $798d: $ff
	di                                               ; $798e: $f3
	rst  $38                                         ; $798f: $ff
	ld   b, [hl]                                     ; $7990: $46
	rst  $38                                         ; $7991: $ff
	adc  $ff                                         ; $7992: $ce $ff
	or   e                                           ; $7994: $b3
	rst  $38                                         ; $7995: $ff
	call z, Call_07c_727f                            ; $7996: $cc $7f $72
	sbc  $52                                         ; $7999: $de $52
	rst  $28                                         ; $799b: $ef
	ld   d, d                                        ; $799c: $52
	rst  $38                                         ; $799d: $ff
	call nz, $37ff                                   ; $799e: $c4 $ff $37
	rst  $38                                         ; $79a1: $ff
	dec  c                                           ; $79a2: $0d
	ei                                               ; $79a3: $fb
	ret                                              ; $79a4: $c9


	rst  $38                                         ; $79a5: $ff
	rra                                              ; $79a6: $1f
	rst  $38                                         ; $79a7: $ff
	ld   h, b                                        ; $79a8: $60
	ld   a, a                                        ; $79a9: $7f
	rlca                                             ; $79aa: $07
	rst  $38                                         ; $79ab: $ff
	ld   b, $ff                                      ; $79ac: $06 $ff
	ldh  a, [rIE]                                    ; $79ae: $f0 $ff
	ld   d, $ff                                      ; $79b0: $16 $ff
	rst  $20                                         ; $79b2: $e7
	add  h                                           ; $79b3: $84
	rst  $38                                         ; $79b4: $ff
	add  hl, bc                                      ; $79b5: $09
	rra                                              ; $79b6: $1f
	pop  hl                                          ; $79b7: $e1
	cp   $d7                                         ; $79b8: $fe $d7
	rst  $38                                         ; $79ba: $ff
	reti                                             ; $79bb: $d9


	rst  $38                                         ; $79bc: $ff
	ld   h, b                                        ; $79bd: $60
	rst  $38                                         ; $79be: $ff
	sub  c                                           ; $79bf: $91
	add  c                                           ; $79c0: $81
	rst  $38                                         ; $79c1: $ff
	dec  b                                           ; $79c2: $05
	ei                                               ; $79c3: $fb
	rst  $38                                         ; $79c4: $ff
	ei                                               ; $79c5: $fb
	sbc  a                                           ; $79c6: $9f
	sub  b                                           ; $79c7: $90
	rst  $38                                         ; $79c8: $ff
	add  b                                           ; $79c9: $80
	ld   b, $00                                      ; $79ca: $06 $00
	nop                                              ; $79cc: $00
	add  b                                           ; $79cd: $80
	ld   [$0c80], sp                                 ; $79ce: $08 $80 $0c
	add  b                                           ; $79d1: $80
	dec  bc                                          ; $79d2: $0b
	add  d                                           ; $79d3: $82
	rrca                                             ; $79d4: $0f
	add  b                                           ; $79d5: $80
	dec  c                                           ; $79d6: $0d
	ld   [bc], a                                     ; $79d7: $02
	rrca                                             ; $79d8: $0f
	rst  $30                                         ; $79d9: $f7
	ld   [$0081], sp                                 ; $79da: $08 $81 $00
	add  b                                           ; $79dd: $80
	or   c                                           ; $79de: $b1
	add  b                                           ; $79df: $80
	cp   l                                           ; $79e0: $bd
	add  b                                           ; $79e1: $80
	add  hl, hl                                      ; $79e2: $29
	add  e                                           ; $79e3: $83
	rst  $38                                         ; $79e4: $ff
	ld   bc, $3fc0                                   ; $79e5: $01 $c0 $3f
	add  b                                           ; $79e8: $80
	ld   a, [bc]                                     ; $79e9: $0a
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	add  b                                           ; $79ec: $80
	ret  nz                                          ; $79ed: $c0

	add  b                                           ; $79ee: $80
	ld   d, b                                        ; $79ef: $50
	add  b                                           ; $79f0: $80
	db   $fd                                         ; $79f1: $fd
	add  b                                           ; $79f2: $80
	ldh  [c], a                                      ; $79f3: $e2
	add  c                                           ; $79f4: $81
	rst  $38                                         ; $79f5: $ff
	ld   bc, $ff00                                   ; $79f6: $01 $00 $ff
	add  b                                           ; $79f9: $80
	rst  $28                                         ; $79fa: $ef
	add  c                                           ; $79fb: $81
	nop                                              ; $79fc: $00
	add  b                                           ; $79fd: $80
	inc  bc                                          ; $79fe: $03
	add  b                                           ; $79ff: $80
	inc  e                                           ; $7a00: $1c
	add  b                                           ; $7a01: $80
	ccf                                              ; $7a02: $3f
	add  b                                           ; $7a03: $80
	ret  nz                                          ; $7a04: $c0

	ld   [bc], a                                     ; $7a05: $02
	sbc  a                                           ; $7a06: $9f
	ld   h, c                                        ; $7a07: $61
	cp   $80                                         ; $7a08: $fe $80
	pop  hl                                          ; $7a0a: $e1
	add  c                                           ; $7a0b: $81
	nop                                              ; $7a0c: $00
	add  b                                           ; $7a0d: $80
	push bc                                          ; $7a0e: $c5
	inc  bc                                          ; $7a0f: $03
	ld   d, $12                                      ; $7a10: $16 $12
	db   $e4                                         ; $7a12: $e4
	ldh  [$80], a                                    ; $7a13: $e0 $80
	ld   bc, $ff02                                   ; $7a15: $01 $02 $ff
	db   $fc                                         ; $7a18: $fc
	inc  bc                                          ; $7a19: $03
	add  b                                           ; $7a1a: $80
	rst  $38                                         ; $7a1b: $ff
	add  c                                           ; $7a1c: $81
	nop                                              ; $7a1d: $00
	add  b                                           ; $7a1e: $80
	ret  nz                                          ; $7a1f: $c0

	add  b                                           ; $7a20: $80
	sbc  d                                           ; $7a21: $9a
	add  b                                           ; $7a22: $80
	rrca                                             ; $7a23: $0f
	add  c                                           ; $7a24: $81
	rst  $38                                         ; $7a25: $ff
	ld   bc, $ff00                                   ; $7a26: $01 $00 $ff
	add  b                                           ; $7a29: $80
	jr   c, jr_07c_7a2e                              ; $7a2a: $38 $02

	ld   h, b                                        ; $7a2c: $60
	ld   l, b                                        ; $7a2d: $68

jr_07c_7a2e:
	ld   [$7180], sp                                 ; $7a2e: $08 $80 $71
	add  b                                           ; $7a31: $80
	add  $80                                         ; $7a32: $c6 $80
	db   $ed                                         ; $7a34: $ed
	add  c                                           ; $7a35: $81
	rst  $38                                         ; $7a36: $ff
	inc  b                                           ; $7a37: $04
	ccf                                              ; $7a38: $3f
	ret  nz                                          ; $7a39: $c0

	jr   nz, jr_07c_7a6c                             ; $7a3a: $20 $30

	db   $10                                         ; $7a3c: $10
	add  b                                           ; $7a3d: $80
	ld   bc, $8580                                   ; $7a3e: $01 $80 $85
	add  b                                           ; $7a41: $80
	ld   l, d                                        ; $7a42: $6a
	add  b                                           ; $7a43: $80
	ld   e, e                                        ; $7a44: $5b
	add  b                                           ; $7a45: $80
	cp   a                                           ; $7a46: $bf
	add  b                                           ; $7a47: $80
	rst  $38                                         ; $7a48: $ff
	add  b                                           ; $7a49: $80
	ld   [de], a                                     ; $7a4a: $12
	inc  bc                                          ; $7a4b: $03
	ld   [$bb00], sp                                 ; $7a4c: $08 $00 $bb
	or   e                                           ; $7a4f: $b3
	add  b                                           ; $7a50: $80
	ld   l, d                                        ; $7a51: $6a
	add  b                                           ; $7a52: $80
	rst  JumpTable                                         ; $7a53: $df
	add  b                                           ; $7a54: $80
	db   $fd                                         ; $7a55: $fd
	add  b                                           ; $7a56: $80
	cp   a                                           ; $7a57: $bf
	add  b                                           ; $7a58: $80
	rst  $38                                         ; $7a59: $ff
	add  b                                           ; $7a5a: $80
	rrca                                             ; $7a5b: $0f
	add  b                                           ; $7a5c: $80
	ld   c, e                                        ; $7a5d: $4b
	add  b                                           ; $7a5e: $80
	ld   a, [$7780]                                  ; $7a5f: $fa $80 $77
	add  b                                           ; $7a62: $80
	db   $fd                                         ; $7a63: $fd
	add  h                                           ; $7a64: $84
	rst  $38                                         ; $7a65: $ff
	add  b                                           ; $7a66: $80
	ret  nz                                          ; $7a67: $c0

	add  b                                           ; $7a68: $80
	ld   a, [hl-]                                    ; $7a69: $3a
	add  b                                           ; $7a6a: $80
	rst  $38                                         ; $7a6b: $ff

jr_07c_7a6c:
	add  b                                           ; $7a6c: $80
	ei                                               ; $7a6d: $fb
	add  b                                           ; $7a6e: $80
	rst  $38                                         ; $7a6f: $ff
	add  b                                           ; $7a70: $80
	db   $ed                                         ; $7a71: $ed
	add  d                                           ; $7a72: $82
	rst  $38                                         ; $7a73: $ff
	add  b                                           ; $7a74: $80
	ccf                                              ; $7a75: $3f
	add  b                                           ; $7a76: $80
	ld   l, l                                        ; $7a77: $6d
	add  d                                           ; $7a78: $82
	rst  $38                                         ; $7a79: $ff
	add  b                                           ; $7a7a: $80
	rst  $28                                         ; $7a7b: $ef
	add  e                                           ; $7a7c: $83
	rst  $38                                         ; $7a7d: $ff
	inc  b                                           ; $7a7e: $04
	ldh  [$9f], a                                    ; $7a7f: $e0 $9f
	adc  l                                           ; $7a81: $8d
	xor  l                                           ; $7a82: $ad
	and  b                                           ; $7a83: $a0
	add  b                                           ; $7a84: $80
	ret  nc                                          ; $7a85: $d0

	add  b                                           ; $7a86: $80
	xor  d                                           ; $7a87: $aa
	add  b                                           ; $7a88: $80
	ei                                               ; $7a89: $fb
	add  b                                           ; $7a8a: $80
	ld   a, [hl]                                     ; $7a8b: $7e
	add  b                                           ; $7a8c: $80
	ei                                               ; $7a8d: $fb
	ld   [bc], a                                     ; $7a8e: $02
	rst  $38                                         ; $7a8f: $ff
	nop                                              ; $7a90: $00
	rst  $38                                         ; $7a91: $ff
	add  b                                           ; $7a92: $80
	ld   c, a                                        ; $7a93: $4f
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	add  b                                           ; $7a96: $80
	db   $10                                         ; $7a97: $10
	add  b                                           ; $7a98: $80
	adc  d                                           ; $7a99: $8a
	add  b                                           ; $7a9a: $80
	daa                                              ; $7a9b: $27
	add  b                                           ; $7a9c: $80
	ld   a, [$ff81]                                  ; $7a9d: $fa $81 $ff
	ld   bc, $ff00                                   ; $7aa0: $01 $00 $ff
	add  b                                           ; $7aa3: $80
	add  e                                           ; $7aa4: $83
	ld   b, $00                                      ; $7aa5: $06 $00
	ld   c, h                                        ; $7aa7: $4c
	inc  c                                           ; $7aa8: $0c
	or   $96                                         ; $7aa9: $f6 $96
	ei                                               ; $7aab: $fb
	db   $db                                         ; $7aac: $db
	add  b                                           ; $7aad: $80
	rst  JumpTable                                         ; $7aae: $df
	add  c                                           ; $7aaf: $81
	rst  $38                                         ; $7ab0: $ff
	ld   bc, $e01f                                   ; $7ab1: $01 $1f $e0
	add  b                                           ; $7ab4: $80
	sbc  a                                           ; $7ab5: $9f
	add  c                                           ; $7ab6: $81
	nop                                              ; $7ab7: $00
	inc  bc                                          ; $7ab8: $03
	rst  $38                                         ; $7ab9: $ff
	rst  $28                                         ; $7aba: $ef
	halt                                             ; $7abb: $76
	ld   h, [hl]                                     ; $7abc: $66
	add  b                                           ; $7abd: $80
	rst  $38                                         ; $7abe: $ff
	add  b                                           ; $7abf: $80
	ld   e, e                                        ; $7ac0: $5b
	nop                                              ; $7ac1: $00
	rst  $38                                         ; $7ac2: $ff
	add  [hl]                                        ; $7ac3: $86
	nop                                              ; $7ac4: $00
	ld   [$ffab], sp                                 ; $7ac5: $08 $ab $ff
	ld   a, [bc]                                     ; $7ac8: $0a
	rst  $38                                         ; $7ac9: $ff
	ld   e, [hl]                                     ; $7aca: $5e
	rst  $38                                         ; $7acb: $ff
	daa                                              ; $7acc: $27
	rst  $30                                         ; $7acd: $f7
	ret  nc                                          ; $7ace: $d0

	add  l                                           ; $7acf: $85
	nop                                              ; $7ad0: $00
	ld   [$ffe4], sp                                 ; $7ad1: $08 $e4 $ff
	jp   $fdff                                       ; $7ad4: $c3 $ff $fd


	rst  JumpTable                                         ; $7ad7: $df
	ld   sp, hl                                      ; $7ad8: $f9
	rst  $38                                         ; $7ad9: $ff
	inc  bc                                          ; $7ada: $03
	add  l                                           ; $7adb: $85
	nop                                              ; $7adc: $00
	rlca                                             ; $7add: $07
	xor  a                                           ; $7ade: $af
	rst  $38                                         ; $7adf: $ff
	rrca                                             ; $7ae0: $0f
	rst  $38                                         ; $7ae1: $ff
	sbc  a                                           ; $7ae2: $9f
	rst  $38                                         ; $7ae3: $ff
	ccf                                              ; $7ae4: $3f
	rst  $38                                         ; $7ae5: $ff
	add  a                                           ; $7ae6: $87
	nop                                              ; $7ae7: $00
	ld   b, e                                        ; $7ae8: $43
	ldh  a, [$50]                                    ; $7ae9: $f0 $50
	ldh  a, [rAUD1SWEEP]                             ; $7aeb: $f0 $10
	ldh  a, [$50]                                    ; $7aed: $f0 $50
	ldh  a, [$ef]                                    ; $7aef: $f0 $ef
	rst  $38                                         ; $7af1: $ff
	ei                                               ; $7af2: $fb
	rst  $38                                         ; $7af3: $ff
	cp   e                                           ; $7af4: $bb
	rst  $38                                         ; $7af5: $ff
	cp   [hl]                                        ; $7af6: $be
	rst  $38                                         ; $7af7: $ff
	sub  $ff                                         ; $7af8: $d6 $ff
	ld   [de], a                                     ; $7afa: $12
	rst  $38                                         ; $7afb: $ff
	pop  bc                                          ; $7afc: $c1
	rst  $38                                         ; $7afd: $ff
	jp   nz, $a3df                                   ; $7afe: $c2 $df $a3

	cp   a                                           ; $7b01: $bf
	add  hl, sp                                      ; $7b02: $39
	inc  a                                           ; $7b03: $3c
	call $35ff                                       ; $7b04: $cd $ff $35
	rst  $38                                         ; $7b07: $ff
	dec  hl                                          ; $7b08: $2b
	rst  $28                                         ; $7b09: $ef
	dec  a                                           ; $7b0a: $3d
	rst  $38                                         ; $7b0b: $ff
	ld   e, a                                        ; $7b0c: $5f
	rst  $38                                         ; $7b0d: $ff
	add  [hl]                                        ; $7b0e: $86
	rst  $38                                         ; $7b0f: $ff
	dec  h                                           ; $7b10: $25
	rst  $38                                         ; $7b11: $ff
	dec  a                                           ; $7b12: $3d
	pop  af                                          ; $7b13: $f1
	ld   sp, $d3cf                                   ; $7b14: $31 $cf $d3
	scf                                              ; $7b17: $37
	ld   d, l                                        ; $7b18: $55
	rst  JumpTable                                         ; $7b19: $df
	ld   e, [hl]                                     ; $7b1a: $5e
	db   $d3                                         ; $7b1b: $d3
	db   $db                                         ; $7b1c: $db
	ld   a, a                                        ; $7b1d: $7f
	or   a                                           ; $7b1e: $b7
	db   $fd                                         ; $7b1f: $fd
	ld   c, l                                        ; $7b20: $4d
	ldh  a, [$30]                                    ; $7b21: $f0 $30

jr_07c_7b23:
	ldh  a, [$60]                                    ; $7b23: $f0 $60
	ldh  a, [$e0]                                    ; $7b25: $f0 $e0
	ldh  a, [$30]                                    ; $7b27: $f0 $30
	ldh  a, [rSVBK]                                  ; $7b29: $f0 $70
	ldh  a, [$30]                                    ; $7b2b: $f0 $30
	add  c                                           ; $7b2d: $81
	ldh  a, [$08]                                    ; $7b2e: $f0 $08
	sbc  e                                           ; $7b30: $9b
	rst  $38                                         ; $7b31: $ff
	cp   a                                           ; $7b32: $bf
	db   $fc                                         ; $7b33: $fc
	ldh  a, [$db]                                    ; $7b34: $f0 $db
	jp   $e7f7                                       ; $7b36: $c3 $f7 $e7


	add  b                                           ; $7b39: $80
	xor  a                                           ; $7b3a: $af
	ld   [bc], a                                     ; $7b3b: $02
	rst  $28                                         ; $7b3c: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b3d: $cf
	ld   e, a                                        ; $7b3e: $5f
	add  b                                           ; $7b3f: $80
	rst  JumpTable                                         ; $7b40: $df
	jr   nc, jr_07c_7b23                             ; $7b41: $30 $e0

	rst  $38                                         ; $7b43: $ff
	ld   a, [$d4ff]                                  ; $7b44: $fa $ff $d4
	rst  $38                                         ; $7b47: $ff
	ld   l, [hl]                                     ; $7b48: $6e
	rst  $38                                         ; $7b49: $ff
	rra                                              ; $7b4a: $1f
	rst  $38                                         ; $7b4b: $ff
	adc  a                                           ; $7b4c: $8f
	rst  $38                                         ; $7b4d: $ff
	rst  ToBoot                                         ; $7b4e: $c7
	rst  $38                                         ; $7b4f: $ff
	push af                                          ; $7b50: $f5
	rst  $28                                         ; $7b51: $ef
	adc  h                                           ; $7b52: $8c
	rst  $38                                         ; $7b53: $ff
	ld   e, l                                        ; $7b54: $5d
	cp   a                                           ; $7b55: $bf
	dec  de                                          ; $7b56: $1b
	rst  JumpTable                                         ; $7b57: $df
	and  [hl]                                        ; $7b58: $a6
	rst  $38                                         ; $7b59: $ff
	ld   [hl], l                                     ; $7b5a: $75
	rst  $38                                         ; $7b5b: $ff
	ld   b, d                                        ; $7b5c: $42
	rst  $38                                         ; $7b5d: $ff
	or   h                                           ; $7b5e: $b4
	db   $fd                                         ; $7b5f: $fd
	ld   [hl], $f7                                   ; $7b60: $36 $f7
	ld   [hl], c                                     ; $7b62: $71
	ldh  a, [$e0]                                    ; $7b63: $f0 $e0
	ldh  a, [$e0]                                    ; $7b65: $f0 $e0
	ldh  a, [$d0]                                    ; $7b67: $f0 $d0
	ldh  a, [$60]                                    ; $7b69: $f0 $60
	ldh  a, [$30]                                    ; $7b6b: $f0 $30
	ldh  a, [$d0]                                    ; $7b6d: $f0 $d0
	ldh  a, [$60]                                    ; $7b6f: $f0 $60
	ldh  a, [$3f]                                    ; $7b71: $f0 $3f
	add  b                                           ; $7b73: $80
	call c, $dd03                                    ; $7b74: $dc $03 $dd
	sbc  l                                           ; $7b77: $9d
	sbc  a                                           ; $7b78: $9f
	rst  JumpTable                                         ; $7b79: $df
	add  b                                           ; $7b7a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b7b: $cf
	add  c                                           ; $7b7c: $81
	ld   c, a                                        ; $7b7d: $4f
	dec  b                                           ; $7b7e: $05
	ld   l, a                                        ; $7b7f: $6f
	xor  a                                           ; $7b80: $af
	dec  a                                           ; $7b81: $3d
	ld   a, $43                                      ; $7b82: $3e $43
	adc  b                                           ; $7b84: $88
	add  b                                           ; $7b85: $80
	sbc  h                                           ; $7b86: $9c
	rra                                              ; $7b87: $1f
	inc  d                                           ; $7b88: $14
	sbc  [hl]                                        ; $7b89: $9e
	ldh  a, [c]                                      ; $7b8a: $f2
	cp   $f4                                         ; $7b8b: $fe $f4
	rst  $38                                         ; $7b8d: $ff
	jp   Jump_07c_54ff                               ; $7b8e: $c3 $ff $54


	rst  $38                                         ; $7b91: $ff
	and  b                                           ; $7b92: $a0
	rst  $38                                         ; $7b93: $ff
	ld   [hl+], a                                    ; $7b94: $22
	rra                                              ; $7b95: $1f
	jr   nz, @+$01                                   ; $7b96: $20 $ff

	rst  JumpTable                                         ; $7b98: $df
	ccf                                              ; $7b99: $3f
	rst  $38                                         ; $7b9a: $ff
	ret  nz                                          ; $7b9b: $c0

	inc  e                                           ; $7b9c: $1c
	rra                                              ; $7b9d: $1f
	add  e                                           ; $7b9e: $83
	rst  $38                                         ; $7b9f: $ff
	ld   [bc], a                                     ; $7ba0: $02
	db   $fd                                         ; $7ba1: $fd
	add  b                                           ; $7ba2: $80
	rst  $38                                         ; $7ba3: $ff
	rrca                                             ; $7ba4: $0f
	sub  b                                           ; $7ba5: $90
	nop                                              ; $7ba6: $00
	add  b                                           ; $7ba7: $80
	add  c                                           ; $7ba8: $81
	sub  b                                           ; $7ba9: $90
	ld   [bc], a                                     ; $7baa: $02
	stop                                             ; $7bab: $10 $00
	sub  b                                           ; $7bad: $90
	add  b                                           ; $7bae: $80
	or   b                                           ; $7baf: $b0
	ld   a, $70                                      ; $7bb0: $3e $70
	ldh  a, [$80]                                    ; $7bb2: $f0 $80
	ldh  a, [$39]                                    ; $7bb4: $f0 $39
	ld   sp, hl                                      ; $7bb6: $f9
	db   $dd                                         ; $7bb7: $dd
	rst  $38                                         ; $7bb8: $ff
	call Call_07c_42ff                               ; $7bb9: $cd $ff $42
	rst  $38                                         ; $7bbc: $ff
	ld   l, b                                        ; $7bbd: $68
	rst  $38                                         ; $7bbe: $ff
	ld   hl, sp-$01                                  ; $7bbf: $f8 $ff
	push bc                                          ; $7bc1: $c5
	rst  $38                                         ; $7bc2: $ff
	cp   e                                           ; $7bc3: $bb
	rst  $38                                         ; $7bc4: $ff
	ld   a, l                                        ; $7bc5: $7d
	rst  $38                                         ; $7bc6: $ff
	xor  e                                           ; $7bc7: $ab
	rst  $38                                         ; $7bc8: $ff
	cp   c                                           ; $7bc9: $b9
	rst  $38                                         ; $7bca: $ff
	jp   $0dff                                       ; $7bcb: $c3 $ff $0d


	db   $fd                                         ; $7bce: $fd
	ld   e, h                                        ; $7bcf: $5c
	db   $fd                                         ; $7bd0: $fd
	ld   a, [hl+]                                    ; $7bd1: $2a
	ei                                               ; $7bd2: $fb
	rla                                              ; $7bd3: $17
	rst  ToBoot                                         ; $7bd4: $c7
	ld   b, $ff                                      ; $7bd5: $06 $ff
	ld   l, b                                        ; $7bd7: $68
	pop  af                                          ; $7bd8: $f1
	ld   l, [hl]                                     ; $7bd9: $6e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bda: $cf
	ret                                              ; $7bdb: $c9


	rst  $38                                         ; $7bdc: $ff
	sub  [hl]                                        ; $7bdd: $96
	rst  $38                                         ; $7bde: $ff
	di                                               ; $7bdf: $f3
	rst  $38                                         ; $7be0: $ff
	xor  l                                           ; $7be1: $ad
	rst  $38                                         ; $7be2: $ff
	cp   a                                           ; $7be3: $bf
	rst  $38                                         ; $7be4: $ff
	ccf                                              ; $7be5: $3f
	ldh  a, [$c0]                                    ; $7be6: $f0 $c0
	ldh  a, [$d0]                                    ; $7be8: $f0 $d0
	ldh  a, [rLCDC]                                  ; $7bea: $f0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $7bec: $f0 $a0
	ldh  a, [$c0]                                    ; $7bee: $f0 $c0
	add  c                                           ; $7bf0: $81
	ldh  a, [rSCY]                                   ; $7bf1: $f0 $42
	ret  nz                                          ; $7bf3: $c0

	ldh  a, [$3e]                                    ; $7bf4: $f0 $3e
	sbc  a                                           ; $7bf6: $9f
	sbc  [hl]                                        ; $7bf7: $9e
	ccf                                              ; $7bf8: $3f
	scf                                              ; $7bf9: $37
	ld   a, a                                        ; $7bfa: $7f
	ld   [hl], e                                     ; $7bfb: $73
	ld   a, a                                        ; $7bfc: $7f
	ld   e, e                                        ; $7bfd: $5b
	rst  $38                                         ; $7bfe: $ff
	sub  l                                           ; $7bff: $95
	rst  $38                                         ; $7c00: $ff
	call nz, Call_07c_72ff                           ; $7c01: $c4 $ff $72
	cp   $c9                                         ; $7c04: $fe $c9
	rst  $38                                         ; $7c06: $ff
	or   l                                           ; $7c07: $b5
	rst  $38                                         ; $7c08: $ff
	ld   a, [hl]                                     ; $7c09: $7e
	rst  $38                                         ; $7c0a: $ff
	ld   a, [hl]                                     ; $7c0b: $7e
	rst  $38                                         ; $7c0c: $ff
	inc  a                                           ; $7c0d: $3c
	rst  $38                                         ; $7c0e: $ff
	ld   c, b                                        ; $7c0f: $48
	rst  $38                                         ; $7c10: $ff
	or   l                                           ; $7c11: $b5
	rst  $38                                         ; $7c12: $ff
	ld   hl, $59e1                                   ; $7c13: $21 $e1 $59
	rst  $28                                         ; $7c16: $ef
	inc  de                                          ; $7c17: $13
	rst  $38                                         ; $7c18: $ff
	jp   c, $efff                                    ; $7c19: $da $ff $ef

	rst  $38                                         ; $7c1c: $ff
	ld   l, a                                        ; $7c1d: $6f
	rst  $38                                         ; $7c1e: $ff
	ld   d, h                                        ; $7c1f: $54
	rst  $38                                         ; $7c20: $ff
	ld   b, c                                        ; $7c21: $41
	rst  $38                                         ; $7c22: $ff
	sub  l                                           ; $7c23: $95
	rst  $38                                         ; $7c24: $ff
	rst  $28                                         ; $7c25: $ef
	ldh  a, [$e0]                                    ; $7c26: $f0 $e0
	ldh  a, [$b0]                                    ; $7c28: $f0 $b0
	ldh  a, [$30]                                    ; $7c2a: $f0 $30
	ldh  a, [$b0]                                    ; $7c2c: $f0 $b0
	ldh  a, [$e0]                                    ; $7c2e: $f0 $e0
	ldh  a, [rP1]                                    ; $7c30: $f0 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $7c32: $f0 $a0

jr_07c_7c34:
	ldh  a, [$74]                                    ; $7c34: $f0 $74
	add  c                                           ; $7c36: $81
	rra                                              ; $7c37: $1f
	ld   e, $12                                      ; $7c38: $1e $12
	rra                                              ; $7c3a: $1f
	add  hl, bc                                      ; $7c3b: $09
	ld   a, [bc]                                     ; $7c3c: $0a
	ld   [bc], a                                     ; $7c3d: $02
	dec  d                                           ; $7c3e: $15
	db   $10                                         ; $7c3f: $10
	jr   @+$0a                                       ; $7c40: $18 $08

	jr   jr_07c_7c55                                 ; $7c42: $18 $11

	inc  e                                           ; $7c44: $1c
	ld   e, e                                        ; $7c45: $5b
	db   $eb                                         ; $7c46: $eb
	jr   z, jr_07c_7c34                              ; $7c47: $28 $eb

	ld   [$e2a3], a                                  ; $7c49: $ea $a3 $e2
	rst  ToBoot                                         ; $7c4c: $c7
	ld   b, e                                        ; $7c4d: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c4e: $cf
	add  d                                           ; $7c4f: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c50: $cf
	inc  c                                           ; $7c51: $0c
	dec  b                                           ; $7c52: $05
	ld   b, b                                        ; $7c53: $40
	add  b                                           ; $7c54: $80

jr_07c_7c55:
	ld   l, l                                        ; $7c55: $6d
	rst  $38                                         ; $7c56: $ff
	dec  d                                           ; $7c57: $15
	add  c                                           ; $7c58: $81
	rst  $38                                         ; $7c59: $ff
	inc  c                                           ; $7c5a: $0c
	ld   [hl-], a                                    ; $7c5b: $32
	rst  $38                                         ; $7c5c: $ff
	pop  hl                                          ; $7c5d: $e1
	rst  $30                                         ; $7c5e: $f7
	ld   d, $7f                                      ; $7c5f: $16 $7f
	sbc  b                                           ; $7c61: $98
	xor  a                                           ; $7c62: $af
	add  hl, bc                                      ; $7c63: $09
	rlca                                             ; $7c64: $07
	db   $e3                                         ; $7c65: $e3
	ldh  a, [$e0]                                    ; $7c66: $f0 $e0
	add  c                                           ; $7c68: $81
	ldh  a, [rTIMA]                                  ; $7c69: $f0 $05
	or   b                                           ; $7c6b: $b0
	ldh  a, [$d0]                                    ; $7c6c: $f0 $d0
	ldh  a, [$d0]                                    ; $7c6e: $f0 $d0
	ldh  a, [$80]                                    ; $7c70: $f0 $80
	or   b                                           ; $7c72: $b0
	add  b                                           ; $7c73: $80
	and  b                                           ; $7c74: $a0
	inc  e                                           ; $7c75: $1c
	cp   l                                           ; $7c76: $bd
	rra                                              ; $7c77: $1f
	cp   h                                           ; $7c78: $bc
	cp   a                                           ; $7c79: $bf
	ld   e, [hl]                                     ; $7c7a: $5e
	rst  $38                                         ; $7c7b: $ff
	ei                                               ; $7c7c: $fb

jr_07c_7c7d:
	rst  $38                                         ; $7c7d: $ff
	pop  de                                          ; $7c7e: $d1
	cp   $8b                                         ; $7c7f: $fe $8b
	rst  JumpTable                                         ; $7c81: $df
	ret  z                                           ; $7c82: $c8

	ld   l, e                                        ; $7c83: $6b
	ld   h, e                                        ; $7c84: $63
	rst  $38                                         ; $7c85: $ff
	di                                               ; $7c86: $f3
	db   $fc                                         ; $7c87: $fc
	or   [hl]                                        ; $7c88: $b6
	cp   $27                                         ; $7c89: $fe $27
	rst  $38                                         ; $7c8b: $ff
	ret  nc                                          ; $7c8c: $d0

	di                                               ; $7c8d: $f3
	inc  hl                                          ; $7c8e: $23
	ld   l, l                                        ; $7c8f: $6d
	call $3efe                                       ; $7c90: $cd $fe $3e
	add  c                                           ; $7c93: $81
	rst  $38                                         ; $7c94: $ff
	ld   b, $1f                                      ; $7c95: $06 $1f
	rst  $38                                         ; $7c97: $ff
	ld   sp, hl                                      ; $7c98: $f9
	rst  $38                                         ; $7c99: $ff
	sbc  c                                           ; $7c9a: $99
	rst  $38                                         ; $7c9b: $ff
	ld   a, a                                        ; $7c9c: $7f
	add  c                                           ; $7c9d: $81
	rst  $38                                         ; $7c9e: $ff
	inc  c                                           ; $7c9f: $0c
	ei                                               ; $7ca0: $fb
	rst  $38                                         ; $7ca1: $ff
	db   $e3                                         ; $7ca2: $e3
	cp   $e7                                         ; $7ca3: $fe $e7
	ld   sp, hl                                      ; $7ca5: $f9
	add  a                                           ; $7ca6: $87
	ldh  [$90], a                                    ; $7ca7: $e0 $90
	ldh  a, [hScriptOpcodeParams]                                    ; $7ca9: $f0 $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $7cab: $f0 $a0
	add  b                                           ; $7cad: $80
	ldh  a, [rTAC]                                   ; $7cae: $f0 $07
	ret  nc                                          ; $7cb0: $d0

	ret  nz                                          ; $7cb1: $c0

	ldh  a, [rAUD4LEN]                               ; $7cb2: $f0 $20
	ldh  a, [$e0]                                    ; $7cb4: $f0 $e0
	ldh  a, [$2f]                                    ; $7cb6: $f0 $2f
	add  l                                           ; $7cb8: $85
	rst  $38                                         ; $7cb9: $ff
	ld   [de], a                                     ; $7cba: $12
	ld   b, a                                        ; $7cbb: $47
	rst  $38                                         ; $7cbc: $ff
	or   a                                           ; $7cbd: $b7
	rst  $38                                         ; $7cbe: $ff
	rla                                              ; $7cbf: $17
	rst  $38                                         ; $7cc0: $ff
	rlca                                             ; $7cc1: $07
	db   $fd                                         ; $7cc2: $fd
	dec  l                                           ; $7cc3: $2d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cc4: $cf
	cp   [hl]                                        ; $7cc5: $be
	cp   a                                           ; $7cc6: $bf
	ld   sp, hl                                      ; $7cc7: $f9
	rst  $38                                         ; $7cc8: $ff
	ld   [bc], a                                     ; $7cc9: $02
	cp   $34                                         ; $7cca: $fe $34
	rst  $38                                         ; $7ccc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ccd: $cf
	add  b                                           ; $7cce: $80
	cp   $80                                         ; $7ccf: $fe $80
	rst  $38                                         ; $7cd1: $ff
	ld   bc, $04fb                                   ; $7cd2: $01 $fb $04
	add  c                                           ; $7cd5: $81
	rst  $38                                         ; $7cd6: $ff
	add  b                                           ; $7cd7: $80
	sub  a                                           ; $7cd8: $97
	add  b                                           ; $7cd9: $80
	add  b                                           ; $7cda: $80
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	add  b                                           ; $7cdd: $80
	dec  b                                           ; $7cde: $05
	add  b                                           ; $7cdf: $80
	ld   a, [hl+]                                    ; $7ce0: $2a
	add  b                                           ; $7ce1: $80
	ld   e, $01                                      ; $7ce2: $1e $01
	inc  h                                           ; $7ce4: $24
	db   $db                                         ; $7ce5: $db
	add  c                                           ; $7ce6: $81
	ldh  a, [$80]                                    ; $7ce7: $f0 $80
	sub  b                                           ; $7ce9: $90
	add  e                                           ; $7cea: $83
	nop                                              ; $7ceb: $00
	ld   b, $a0                                      ; $7cec: $06 $a0
	or   b                                           ; $7cee: $b0
	ld   d, b                                        ; $7cef: $50
	ld   b, b                                        ; $7cf0: $40
	ld   [hl], b                                     ; $7cf1: $70
	sbc  b                                           ; $7cf2: $98
	rst  $20                                         ; $7cf3: $e7
	add  b                                           ; $7cf4: $80
	ret  nz                                          ; $7cf5: $c0

	add  b                                           ; $7cf6: $80
	add  b                                           ; $7cf7: $80
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	add  b                                           ; $7cfa: $80
	jr   jr_07c_7c7d                                 ; $7cfb: $18 $80

	db   $eb                                         ; $7cfd: $eb
	add  b                                           ; $7cfe: $80
	cp   [hl]                                        ; $7cff: $be
	add  b                                           ; $7d00: $80
	rst  $28                                         ; $7d01: $ef
	ld   [bc], a                                     ; $7d02: $02
	ld   a, a                                        ; $7d03: $7f
	adc  a                                           ; $7d04: $8f
	ldh  a, [$81]                                    ; $7d05: $f0 $81
	nop                                              ; $7d07: $00
	add  b                                           ; $7d08: $80
	inc  de                                          ; $7d09: $13
	add  b                                           ; $7d0a: $80
	ld   a, l                                        ; $7d0b: $7d
	add  b                                           ; $7d0c: $80
	adc  a                                           ; $7d0d: $8f
	add  b                                           ; $7d0e: $80
	reti                                             ; $7d0f: $d9


	add  d                                           ; $7d10: $82
	rst  $38                                         ; $7d11: $ff
	add  b                                           ; $7d12: $80
	rlca                                             ; $7d13: $07
	add  b                                           ; $7d14: $80
	ld   l, a                                        ; $7d15: $6f
	add  b                                           ; $7d16: $80
	rst  $20                                         ; $7d17: $e7
	add  b                                           ; $7d18: $80
	rst  JumpTable                                         ; $7d19: $df
	add  b                                           ; $7d1a: $80
	rst  $38                                         ; $7d1b: $ff
	add  b                                           ; $7d1c: $80
	db   $fd                                         ; $7d1d: $fd
	add  c                                           ; $7d1e: $81
	rst  $38                                         ; $7d1f: $ff
	nop                                              ; $7d20: $00
	ldh  a, [$80]                                    ; $7d21: $f0 $80
	ret  nc                                          ; $7d23: $d0

	add  h                                           ; $7d24: $84
	ldh  a, [$80]                                    ; $7d25: $f0 $80
	or   b                                           ; $7d27: $b0
	add  e                                           ; $7d28: $83
	ldh  a, [rIE]                                    ; $7d29: $f0 $ff
	nop                                              ; $7d2b: $00
	rst  $38                                         ; $7d2c: $ff
	nop                                              ; $7d2d: $00
	rst  $38                                         ; $7d2e: $ff
	nop                                              ; $7d2f: $00
	rst  $38                                         ; $7d30: $ff
	nop                                              ; $7d31: $00
	rst  $38                                         ; $7d32: $ff
	nop                                              ; $7d33: $00
	rst  $38                                         ; $7d34: $ff
	nop                                              ; $7d35: $00
	ld   hl, sp+$00                                  ; $7d36: $f8 $00
	sbc  $00                                         ; $7d38: $de $00
	add  [hl]                                        ; $7d3a: $86
	nop                                              ; $7d3b: $00
	ld   [$c008], sp                                 ; $7d3c: $08 $08 $c0
	add  a                                           ; $7d3f: $87
	and  a                                           ; $7d40: $a7
	rst  $10                                         ; $7d41: $d7
	rla                                              ; $7d42: $17
	ccf                                              ; $7d43: $3f
	rlca                                             ; $7d44: $07
	db   $10                                         ; $7d45: $10
	add  l                                           ; $7d46: $85
	nop                                              ; $7d47: $00
	add  [hl]                                        ; $7d48: $86
	rst  $38                                         ; $7d49: $ff
	add  [hl]                                        ; $7d4a: $86
	nop                                              ; $7d4b: $00
	ld   bc, $ce4f                                   ; $7d4c: $01 $4f $ce
	add  h                                           ; $7d4f: $84
	cp   $00                                         ; $7d50: $fe $00
	add  c                                           ; $7d52: $81
	add  l                                           ; $7d53: $85
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	ld   [hl], b                                     ; $7d56: $70
	add  l                                           ; $7d57: $85
	ldh  a, [rAUD1ENV]                               ; $7d58: $f0 $12
	rrca                                             ; $7d5a: $0f
	ei                                               ; $7d5b: $fb
	or   d                                           ; $7d5c: $b2
	ld   [hl], d                                     ; $7d5d: $72
	xor  h                                           ; $7d5e: $ac
	db   $fc                                         ; $7d5f: $fc
	dec  e                                           ; $7d60: $1d
	ccf                                              ; $7d61: $3f
	xor  e                                           ; $7d62: $ab
	ld   [hl], d                                     ; $7d63: $72
	reti                                             ; $7d64: $d9


	ld   sp, hl                                      ; $7d65: $f9
	sbc  c                                           ; $7d66: $99
	ld   sp, hl                                      ; $7d67: $f9
	jp   nc, $81f2                                   ; $7d68: $d2 $f2 $81

	ld   a, a                                        ; $7d6b: $7f
	ld   a, l                                        ; $7d6c: $7d
	add  d                                           ; $7d6d: $82
	ld   a, a                                        ; $7d6e: $7f
	dec  bc                                          ; $7d6f: $0b
	rst  $38                                         ; $7d70: $ff
	cp   e                                           ; $7d71: $bb
	rst  $38                                         ; $7d72: $ff
	rst  $30                                         ; $7d73: $f7
	ld   e, a                                        ; $7d74: $5f
	scf                                              ; $7d75: $37
	cpl                                              ; $7d76: $2f
	add  e                                           ; $7d77: $83
	adc  a                                           ; $7d78: $8f
	inc  [hl]                                        ; $7d79: $34
	cp   $30                                         ; $7d7a: $fe $30
	add  l                                           ; $7d7c: $85
	cp   $26                                         ; $7d7d: $fe $26
	db   $f4                                         ; $7d7f: $f4
	cp   $f0                                         ; $7d80: $fe $f0
	cp   $50                                         ; $7d82: $fe $50
	cp   $95                                         ; $7d84: $fe $95
	ldh  a, [$b0]                                    ; $7d86: $f0 $b0
	ldh  a, [hScriptOpcodeParams]                                    ; $7d88: $f0 $a0
	ldh  a, [$80]                                    ; $7d8a: $f0 $80
	ldh  a, [$90]                                    ; $7d8c: $f0 $90
	ldh  a, [$30]                                    ; $7d8e: $f0 $30
	ldh  a, [rSVBK]                                  ; $7d90: $f0 $70
	ldh  a, [rSVBK]                                  ; $7d92: $f0 $70
	ldh  a, [rAUD2ENV]                               ; $7d94: $f0 $17
	inc  b                                           ; $7d96: $04
	inc  d                                           ; $7d97: $14
	inc  e                                           ; $7d98: $1c
	inc  [hl]                                        ; $7d99: $34
	ld   [bc], a                                     ; $7d9a: $02
	ld   h, d                                        ; $7d9b: $62
	ld   bc, $00c1                                   ; $7d9c: $01 $c1 $00
	rst  $38                                         ; $7d9f: $ff
	nop                                              ; $7da0: $00
	ccf                                              ; $7da1: $3f
	add  hl, bc                                      ; $7da2: $09
	adc  c                                           ; $7da3: $89
	cp   a                                           ; $7da4: $bf
	ld   a, a                                        ; $7da5: $7f
	add  c                                           ; $7da6: $81
	nop                                              ; $7da7: $00
	add  b                                           ; $7da8: $80
	ld   bc, $0280                                   ; $7da9: $01 $80 $02
	ld   [bc], a                                     ; $7dac: $02
	inc  bc                                          ; $7dad: $03
	add  e                                           ; $7dae: $83
	add  b                                           ; $7daf: $80
	add  b                                           ; $7db0: $80
	ld   b, b                                        ; $7db1: $40
	add  c                                           ; $7db2: $81
	nop                                              ; $7db3: $00
	ld   bc, $ffaf                                   ; $7db4: $01 $af $ff
	add  b                                           ; $7db7: $80
	ld   a, a                                        ; $7db8: $7f
	inc  c                                           ; $7db9: $0c
	ld   b, a                                        ; $7dba: $47
	ccf                                              ; $7dbb: $3f
	rst  ToBoot                                         ; $7dbc: $c7
	rst  $38                                         ; $7dbd: $ff
	rrca                                             ; $7dbe: $0f
	ccf                                              ; $7dbf: $3f
	adc  a                                           ; $7dc0: $8f
	cp   a                                           ; $7dc1: $bf
	ld   c, a                                        ; $7dc2: $4f
	ld   a, a                                        ; $7dc3: $7f
	rra                                              ; $7dc4: $1f
	ld   a, a                                        ; $7dc5: $7f
	cpl                                              ; $7dc6: $2f
	adc  l                                           ; $7dc7: $8d
	ld   h, b                                        ; $7dc8: $60
	ld   bc, $5d6e                                   ; $7dc9: $01 $6e $5d
	add  b                                           ; $7dcc: $80
	ld   e, h                                        ; $7dcd: $5c
	nop                                              ; $7dce: $00
	ld   e, l                                        ; $7dcf: $5d

jr_07c_7dd0:
	add  h                                           ; $7dd0: $84
	ld   e, h                                        ; $7dd1: $5c
	add  b                                           ; $7dd2: $80
	ld   e, l                                        ; $7dd3: $5d
	add  c                                           ; $7dd4: $81
	ld   e, h                                        ; $7dd5: $5c
	ld   bc, $5568                                   ; $7dd6: $01 $68 $55
	add  b                                           ; $7dd9: $80
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	ld   d, l                                        ; $7ddc: $55
	add  h                                           ; $7ddd: $84
	nop                                              ; $7dde: $00
	add  b                                           ; $7ddf: $80
	ld   d, l                                        ; $7de0: $55
	add  d                                           ; $7de1: $82
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	ld   d, l                                        ; $7de4: $55
	add  b                                           ; $7de5: $80
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	ld   d, l                                        ; $7de8: $55
	add  h                                           ; $7de9: $84
	nop                                              ; $7dea: $00
	add  b                                           ; $7deb: $80
	ld   d, l                                        ; $7dec: $55
	add  c                                           ; $7ded: $81
	nop                                              ; $7dee: $00
	ld   bc, $500a                                   ; $7def: $01 $0a $50
	add  b                                           ; $7df2: $80
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	ld   d, b                                        ; $7df5: $50
	add  h                                           ; $7df6: $84
	db   $10                                         ; $7df7: $10
	add  b                                           ; $7df8: $80
	ld   d, b                                        ; $7df9: $50
	add  c                                           ; $7dfa: $81
	db   $10                                         ; $7dfb: $10
	db   $10                                         ; $7dfc: $10
	xor  e                                           ; $7dfd: $ab
	dec  bc                                          ; $7dfe: $0b
	ld   a, [de]                                     ; $7dff: $1a
	rra                                              ; $7e00: $1f
	nop                                              ; $7e01: $00
	ld   a, a                                        ; $7e02: $7f
	jp   nz, $c7ff                                   ; $7e03: $c2 $ff $c7

	rst  $38                                         ; $7e06: $ff
	cpl                                              ; $7e07: $2f
	ld   a, a                                        ; $7e08: $7f
	cpl                                              ; $7e09: $2f
	cp   a                                           ; $7e0a: $bf
	and  b                                           ; $7e0b: $a0
	db   $dd                                         ; $7e0c: $dd
	dec  l                                           ; $7e0d: $2d
	add  c                                           ; $7e0e: $81
	rst  $38                                         ; $7e0f: $ff
	ld   b, $1f                                      ; $7e10: $06 $1f
	rst  $38                                         ; $7e12: $ff
	rst  $28                                         ; $7e13: $ef
	rst  $38                                         ; $7e14: $ff
	or   $ff                                         ; $7e15: $f6 $ff
	rst  $30                                         ; $7e17: $f7
	add  c                                           ; $7e18: $81
	rst  $38                                         ; $7e19: $ff
	ld   [bc], a                                     ; $7e1a: $02
	ld   l, a                                        ; $7e1b: $6f
	ld   a, a                                        ; $7e1c: $7f
	sbc  [hl]                                        ; $7e1d: $9e
	add  l                                           ; $7e1e: $85
	cp   $00                                         ; $7e1f: $fe $00
	ld   a, [hl]                                     ; $7e21: $7e
	add  l                                           ; $7e22: $85
	cp   $00                                         ; $7e23: $fe $00
	ld   [hl], c                                     ; $7e25: $71
	add  l                                           ; $7e26: $85
	ldh  a, [rSC]                                    ; $7e27: $f0 $02
	ld   [hl], b                                     ; $7e29: $70
	ldh  a, [$e0]                                    ; $7e2a: $f0 $e0
	add  e                                           ; $7e2c: $83
	ldh  a, [rTIMA]                                  ; $7e2d: $f0 $05
	inc  c                                           ; $7e2f: $0c
	db   $e3                                         ; $7e30: $e3
	ld   [hl-], a                                    ; $7e31: $32
	or   e                                           ; $7e32: $b3
	ld   a, h                                        ; $7e33: $7c
	db   $fd                                         ; $7e34: $fd
	add  b                                           ; $7e35: $80
	xor  $0f                                         ; $7e36: $ee $0f
	push de                                          ; $7e38: $d5
	rst  $10                                         ; $7e39: $d7
	cpl                                              ; $7e3a: $2f
	ld   l, l                                        ; $7e3b: $6d
	ld   l, d                                        ; $7e3c: $6a
	xor  d                                           ; $7e3d: $aa
	add  hl, hl                                      ; $7e3e: $29
	and  c                                           ; $7e3f: $a1
	add  hl, bc                                      ; $7e40: $09
	ld   b, $19                                      ; $7e41: $06 $19
	sbc  a                                           ; $7e43: $9f
	and  d                                           ; $7e44: $a2
	ld   [hl+], a                                    ; $7e45: $22
	call nc, $80d5                                   ; $7e46: $d4 $d5 $80
	ld   [hl+], a                                    ; $7e49: $22
	inc  bc                                          ; $7e4a: $03
	sub  b                                           ; $7e4b: $90
	ret  nc                                          ; $7e4c: $d0

	ld   h, b                                        ; $7e4d: $60
	jr   nz, jr_07c_7dd0                             ; $7e4e: $20 $80

	nop                                              ; $7e50: $00
	db   $10                                         ; $7e51: $10
	and  d                                           ; $7e52: $a2
	cp   $52                                         ; $7e53: $fe $52
	cp   $aa                                         ; $7e55: $fe $aa
	cp   [hl]                                        ; $7e57: $be
	ld   l, d                                        ; $7e58: $6a
	ld   a, [hl]                                     ; $7e59: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e5a: $cf
	rst  $38                                         ; $7e5b: $ff
	ld   e, a                                        ; $7e5c: $5f
	rst  $38                                         ; $7e5d: $ff
	rst  JumpTable                                         ; $7e5e: $df
	rst  $38                                         ; $7e5f: $ff
	ld   e, a                                        ; $7e60: $5f
	ld   a, a                                        ; $7e61: $7f
	sbc  a                                           ; $7e62: $9f
	add  l                                           ; $7e63: $85
	ldh  a, [$82]                                    ; $7e64: $f0 $82
	ld   [hl], b                                     ; $7e66: $70
	add  d                                           ; $7e67: $82
	ld   h, b                                        ; $7e68: $60
	nop                                              ; $7e69: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e6a: $cf
	add  b                                           ; $7e6b: $80
	adc  c                                           ; $7e6c: $89
	add  b                                           ; $7e6d: $80
	cp   a                                           ; $7e6e: $bf
	add  b                                           ; $7e6f: $80
	adc  c                                           ; $7e70: $89
	ld   [bc], a                                     ; $7e71: $02
	cp   a                                           ; $7e72: $bf
	ld   a, a                                        ; $7e73: $7f
	nop                                              ; $7e74: $00
	add  b                                           ; $7e75: $80
	ld   a, h                                        ; $7e76: $7c
	add  hl, bc                                      ; $7e77: $09
	ld   b, b                                        ; $7e78: $40
	ld   a, h                                        ; $7e79: $7c
	ld   a, l                                        ; $7e7a: $7d
	ld   a, h                                        ; $7e7b: $7c
	dec  a                                           ; $7e7c: $3d
	rst  $38                                         ; $7e7d: $ff
	or   [hl]                                        ; $7e7e: $b6
	ld   l, l                                        ; $7e7f: $6d
	ld   c, c                                        ; $7e80: $49
	ld   l, l                                        ; $7e81: $6d
	add  c                                           ; $7e82: $81
	inc  h                                           ; $7e83: $24
	ld   [bc], a                                     ; $7e84: $02
	or   [hl]                                        ; $7e85: $b6
	inc  h                                           ; $7e86: $24
	or   [hl]                                        ; $7e87: $b6
	add  b                                           ; $7e88: $80
	nop                                              ; $7e89: $00
	rlca                                             ; $7e8a: $07
	ld   d, l                                        ; $7e8b: $55
	nop                                              ; $7e8c: $00
	ld   d, l                                        ; $7e8d: $55
	rst  $38                                         ; $7e8e: $ff
	db   $db                                         ; $7e8f: $db
	or   [hl]                                        ; $7e90: $b6
	inc  h                                           ; $7e91: $24
	or   [hl]                                        ; $7e92: $b6
	add  c                                           ; $7e93: $81
	sub  d                                           ; $7e94: $92
	ld   [bc], a                                     ; $7e95: $02
	db   $db                                         ; $7e96: $db
	sub  d                                           ; $7e97: $92
	db   $db                                         ; $7e98: $db
	add  b                                           ; $7e99: $80
	nop                                              ; $7e9a: $00
	rlca                                             ; $7e9b: $07
	ld   d, l                                        ; $7e9c: $55
	nop                                              ; $7e9d: $00
	ld   e, d                                        ; $7e9e: $5a
	ldh  a, [$60]                                    ; $7e9f: $f0 $60
	ret  nc                                          ; $7ea1: $d0

	sub  b                                           ; $7ea2: $90
	ret  nc                                          ; $7ea3: $d0

	add  c                                           ; $7ea4: $81
	ld   b, b                                        ; $7ea5: $40
	ld   [bc], a                                     ; $7ea6: $02
	ld   h, b                                        ; $7ea7: $60
	ld   b, b                                        ; $7ea8: $40
	ld   h, b                                        ; $7ea9: $60
	add  b                                           ; $7eaa: $80
	nop                                              ; $7eab: $00
	ld   [bc], a                                     ; $7eac: $02
	ld   d, b                                        ; $7ead: $50
	db   $10                                         ; $7eae: $10
	cpl                                              ; $7eaf: $2f
	add  c                                           ; $7eb0: $81
	ld   e, h                                        ; $7eb1: $5c
	add  c                                           ; $7eb2: $81
	ld   e, l                                        ; $7eb3: $5d
	add  h                                           ; $7eb4: $84
	ld   e, h                                        ; $7eb5: $5c
	rlca                                             ; $7eb6: $07
	db   $dd                                         ; $7eb7: $dd
	ld   [bc], a                                     ; $7eb8: $02
	ret  nz                                          ; $7eb9: $c0

	ld   a, [hl]                                     ; $7eba: $7e
	nop                                              ; $7ebb: $00
	dec  d                                           ; $7ebc: $15
	inc  d                                           ; $7ebd: $14
	ld   d, h                                        ; $7ebe: $54
	add  b                                           ; $7ebf: $80
	ld   b, b                                        ; $7ec0: $40
	add  c                                           ; $7ec1: $81
	nop                                              ; $7ec2: $00
	add  b                                           ; $7ec3: $80
	add  b                                           ; $7ec4: $80
	ld   [bc], a                                     ; $7ec5: $02
	ld   [$015c], sp                                 ; $7ec6: $08 $5c $01
	add  c                                           ; $7ec9: $81
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	ld   d, l                                        ; $7ecc: $55
	adc  c                                           ; $7ecd: $89
	nop                                              ; $7ece: $00
	inc  b                                           ; $7ecf: $04
	ld   d, l                                        ; $7ed0: $55
	nop                                              ; $7ed1: $00
	rrca                                             ; $7ed2: $0f
	nop                                              ; $7ed3: $00
	ld   d, b                                        ; $7ed4: $50
	adc  c                                           ; $7ed5: $89
	nop                                              ; $7ed6: $00
	ld   [bc], a                                     ; $7ed7: $02
	ld   d, b                                        ; $7ed8: $50
	nop                                              ; $7ed9: $00
	xor  $81                                         ; $7eda: $ee $81
	sbc  $00                                         ; $7edc: $de $00
	rst  JumpTable                                         ; $7ede: $df
	add  e                                           ; $7edf: $83
	sbc  $01                                         ; $7ee0: $de $01
	rst  JumpTable                                         ; $7ee2: $df
	ld   e, $80                                      ; $7ee3: $1e $80
	ld   bc, $000a                                   ; $7ee5: $01 $0a $00
	ld   bc, $001e                                   ; $7ee8: $01 $1e $00
	ld   h, c                                        ; $7eeb: $61
	nop                                              ; $7eec: $00
	adc  [hl]                                        ; $7eed: $8e
	nop                                              ; $7eee: $00
	jr   nc, jr_07c_7ef1                             ; $7eef: $30 $00

jr_07c_7ef1:
	ret  nz                                          ; $7ef1: $c0

	add  c                                           ; $7ef2: $81
	nop                                              ; $7ef3: $00
	add  c                                           ; $7ef4: $81
	rst  $38                                         ; $7ef5: $ff
	inc  bc                                          ; $7ef6: $03
	ldh  a, [$0c]                                    ; $7ef7: $f0 $0c
	rlca                                             ; $7ef9: $07
	inc  b                                           ; $7efa: $04
	add  a                                           ; $7efb: $87
	rlca                                             ; $7efc: $07
	add  c                                           ; $7efd: $81
	rst  $38                                         ; $7efe: $ff
	ld   bc, $0f07                                   ; $7eff: $01 $07 $0f
	add  c                                           ; $7f02: $81
	ldh  a, [rSC]                                    ; $7f03: $f0 $02
	sub  b                                           ; $7f05: $90
	ld   [hl], b                                     ; $7f06: $70
	ld   h, b                                        ; $7f07: $60
	add  a                                           ; $7f08: $87
	ld   [hl], b                                     ; $7f09: $70
	ld   bc, $05f5                                   ; $7f0a: $01 $f5 $05
	add  b                                           ; $7f0d: $80
	ld   a, [bc]                                     ; $7f0e: $0a
	add  b                                           ; $7f0f: $80
	dec  c                                           ; $7f10: $0d
	adc  b                                           ; $7f11: $88
	rrca                                             ; $7f12: $0f
	add  b                                           ; $7f13: $80
	ld   d, h                                        ; $7f14: $54
	add  b                                           ; $7f15: $80
	xor  e                                           ; $7f16: $ab
	add  b                                           ; $7f17: $80
	db   $dd                                         ; $7f18: $dd
	adc  b                                           ; $7f19: $88
	rst  $38                                         ; $7f1a: $ff
	inc  bc                                          ; $7f1b: $03
	ld   d, l                                        ; $7f1c: $55
	dec  d                                           ; $7f1d: $15
	xor  d                                           ; $7f1e: $aa
	ld   [$7780], a                                  ; $7f1f: $ea $80 $77
	adc  b                                           ; $7f22: $88
	rst  $38                                         ; $7f23: $ff
	inc  bc                                          ; $7f24: $03
	ld   b, h                                        ; $7f25: $44
	ld   b, b                                        ; $7f26: $40
	cp   d                                           ; $7f27: $ba
	cp   [hl]                                        ; $7f28: $be
	add  b                                           ; $7f29: $80

jr_07c_7f2a:
	ld   e, l                                        ; $7f2a: $5d
	add  b                                           ; $7f2b: $80
	ld   a, [$ff86]                                  ; $7f2c: $fa $86 $ff
	add  b                                           ; $7f2f: $80
	ld   d, h                                        ; $7f30: $54
	add  b                                           ; $7f31: $80
	xor  d                                           ; $7f32: $aa
	add  b                                           ; $7f33: $80
	ld   d, l                                        ; $7f34: $55
	add  b                                           ; $7f35: $80
	ld   [$fd80], a                                  ; $7f36: $ea $80 $fd
	add  h                                           ; $7f39: $84
	rst  $38                                         ; $7f3a: $ff
	add  d                                           ; $7f3b: $82
	nop                                              ; $7f3c: $00
	add  b                                           ; $7f3d: $80
	ld   d, l                                        ; $7f3e: $55
	add  b                                           ; $7f3f: $80
	and  d                                           ; $7f40: $a2
	add  b                                           ; $7f41: $80
	push de                                          ; $7f42: $d5
	add  b                                           ; $7f43: $80
	cp   e                                           ; $7f44: $bb
	add  d                                           ; $7f45: $82
	rst  $38                                         ; $7f46: $ff
	add  d                                           ; $7f47: $82
	nop                                              ; $7f48: $00
	add  b                                           ; $7f49: $80
	ld   d, b                                        ; $7f4a: $50
	add  b                                           ; $7f4b: $80
	add  d                                           ; $7f4c: $82
	add  b                                           ; $7f4d: $80
	ld   d, l                                        ; $7f4e: $55
	add  b                                           ; $7f4f: $80
	cp   e                                           ; $7f50: $bb
	add  d                                           ; $7f51: $82
	rst  $38                                         ; $7f52: $ff
	add  d                                           ; $7f53: $82
	nop                                              ; $7f54: $00
	add  b                                           ; $7f55: $80
	ld   bc, $aa80                                   ; $7f56: $01 $80 $aa
	add  b                                           ; $7f59: $80
	ld   e, l                                        ; $7f5a: $5d
	add  b                                           ; $7f5b: $80
	cp   a                                           ; $7f5c: $bf
	add  d                                           ; $7f5d: $82
	rst  $38                                         ; $7f5e: $ff
	add  d                                           ; $7f5f: $82
	nop                                              ; $7f60: $00
	add  b                                           ; $7f61: $80
	ld   d, l                                        ; $7f62: $55
	add  b                                           ; $7f63: $80
	xor  d                                           ; $7f64: $aa
	add  b                                           ; $7f65: $80
	db   $dd                                         ; $7f66: $dd
	add  h                                           ; $7f67: $84
	rst  $38                                         ; $7f68: $ff
	add  d                                           ; $7f69: $82
	nop                                              ; $7f6a: $00
	add  b                                           ; $7f6b: $80
	ld   d, l                                        ; $7f6c: $55
	add  b                                           ; $7f6d: $80
	xor  d                                           ; $7f6e: $aa
	add  b                                           ; $7f6f: $80
	ld   [hl], l                                     ; $7f70: $75
	add  b                                           ; $7f71: $80
	ei                                               ; $7f72: $fb
	add  d                                           ; $7f73: $82
	rst  $38                                         ; $7f74: $ff
	add  h                                           ; $7f75: $84
	nop                                              ; $7f76: $00
	add  b                                           ; $7f77: $80
	xor  b                                           ; $7f78: $a8
	add  b                                           ; $7f79: $80
	ld   d, l                                        ; $7f7a: $55
	add  b                                           ; $7f7b: $80
	xor  d                                           ; $7f7c: $aa
	add  b                                           ; $7f7d: $80
	ld   [hl], l                                     ; $7f7e: $75
	add  b                                           ; $7f7f: $80
	ei                                               ; $7f80: $fb
	add  [hl]                                        ; $7f81: $86
	nop                                              ; $7f82: $00
	add  b                                           ; $7f83: $80
	ld   d, l                                        ; $7f84: $55
	add  b                                           ; $7f85: $80
	xor  d                                           ; $7f86: $aa
	add  b                                           ; $7f87: $80
	ld   d, l                                        ; $7f88: $55
	add  b                                           ; $7f89: $80
	cp   d                                           ; $7f8a: $ba
	add  h                                           ; $7f8b: $84
	nop                                              ; $7f8c: $00
	add  b                                           ; $7f8d: $80
	and  b                                           ; $7f8e: $a0
	add  b                                           ; $7f8f: $80
	ld   d, h                                        ; $7f90: $54
	add  b                                           ; $7f91: $80
	ld   [$f580], a                                  ; $7f92: $ea $80 $f5
	add  b                                           ; $7f95: $80
	ld   a, [$3f06]                                  ; $7f96: $fa $06 $3f
	db   $fc                                         ; $7f99: $fc
	call z, $333f                                    ; $7f9a: $cc $3f $33
	rrca                                             ; $7f9d: $0f
	inc  c                                           ; $7f9e: $0c
	add  b                                           ; $7f9f: $80
	inc  bc                                          ; $7fa0: $03
	add  l                                           ; $7fa1: $85
	nop                                              ; $7fa2: $00
	inc  b                                           ; $7fa3: $04
	ld   hl, sp-$01                                  ; $7fa4: $f8 $ff
	ld   sp, hl                                      ; $7fa6: $f9
	add  hl, sp                                      ; $7fa7: $39
	jr   c, jr_07c_7f2a                              ; $7fa8: $38 $80

	adc  $09                                         ; $7faa: $ce $09
	di                                               ; $7fac: $f3
	inc  sp                                          ; $7fad: $33
	db   $fc                                         ; $7fae: $fc
	call z, $333f                                    ; $7faf: $cc $3f $33
	rrca                                             ; $7fb2: $0f
	inc  c                                           ; $7fb3: $0c
	inc  bc                                          ; $7fb4: $03
	add  e                                           ; $7fb5: $83
	add  e                                           ; $7fb6: $83
	ld   [hl], b                                     ; $7fb7: $70
	add  hl, bc                                      ; $7fb8: $09
	db   $10                                         ; $7fb9: $10
	sub  b                                           ; $7fba: $90
	add  b                                           ; $7fbb: $80
	ldh  [rAUD4LEN], a                               ; $7fbc: $e0 $20
	ldh  a, [rP1]                                    ; $7fbe: $f0 $00
	ldh  a, [$c0]                                    ; $7fc0: $f0 $c0
	ldh  a, [$8e]                                    ; $7fc2: $f0 $8e
	rrca                                             ; $7fc4: $0f
	adc  [hl]                                        ; $7fc5: $8e
	rst  $38                                         ; $7fc6: $ff
	add  h                                           ; $7fc7: $84
	nop                                              ; $7fc8: $00
	add  b                                           ; $7fc9: $80
	xor  d                                           ; $7fca: $aa
	add  b                                           ; $7fcb: $80
	ld   d, l                                        ; $7fcc: $55
	add  b                                           ; $7fcd: $80
	xor  d                                           ; $7fce: $aa
	add  b                                           ; $7fcf: $80
	db   $dd                                         ; $7fd0: $dd
	add  b                                           ; $7fd1: $80
	rst  $38                                         ; $7fd2: $ff
	add  h                                           ; $7fd3: $84
	nop                                              ; $7fd4: $00
	add  b                                           ; $7fd5: $80
	add  b                                           ; $7fd6: $80
	add  b                                           ; $7fd7: $80
	ld   d, h                                        ; $7fd8: $54
	add  b                                           ; $7fd9: $80
	and  d                                           ; $7fda: $a2
	add  b                                           ; $7fdb: $80
	push de                                          ; $7fdc: $d5
	add  b                                           ; $7fdd: $80
	xor  $8a                                         ; $7fde: $ee $8a
	nop                                              ; $7fe0: $00
	add  b                                           ; $7fe1: $80
	ld   d, b                                        ; $7fe2: $50
	add  b                                           ; $7fe3: $80
	xor  d                                           ; $7fe4: $aa
	ld   b, $7f                                      ; $7fe5: $06 $7f
	ld   a, $2a                                      ; $7fe7: $3e $2a
	ld   a, $2b                                      ; $7fe9: $3e $2b
	ld   a, [hl+]                                    ; $7feb: $2a
	ld   d, h                                        ; $7fec: $54
	rst  $38                                         ; $7fed: $ff
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
	rst  $38                                         ; $7ffb: $ff
	nop                                              ; $7ffc: $00
	rst  JumpTable                                         ; $7ffd: $df
	nop                                              ; $7ffe: $00

Jump_07c_7fff:
	nop                                              ; $7fff: $00
