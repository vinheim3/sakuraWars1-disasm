; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09b", ROMX[$4000], BANK[$9b]

Call_09b_4000:
	inc  de                                          ; $4000: $13
	ld   bc, $008a                                   ; $4001: $01 $8a $00
	inc  d                                           ; $4004: $14
	ld   bc, $0200                                   ; $4005: $01 $00 $02
	ld   bc, $0305                                   ; $4008: $01 $05 $03
	dec  bc                                          ; $400b: $0b
	rlca                                             ; $400c: $07
	rla                                              ; $400d: $17
	ld   c, $22                                      ; $400e: $0e $22
	rra                                              ; $4010: $1f
	ld   c, a                                        ; $4011: $4f
	ccf                                              ; $4012: $3f
	dec  h                                           ; $4013: $25
	ccf                                              ; $4014: $3f
	cp   d                                           ; $4015: $ba
	ld   h, a                                        ; $4016: $67
	inc  h                                           ; $4017: $24
	ld   a, b                                        ; $4018: $78
	rst  ToBoot                                         ; $4019: $c7
	add  e                                           ; $401a: $83
	nop                                              ; $401b: $00
	inc  b                                           ; $401c: $04
	rra                                              ; $401d: $1f
	nop                                              ; $401e: $00
	ld   h, b                                        ; $401f: $60
	rra                                              ; $4020: $1f
	sbc  a                                           ; $4021: $9f
	add  b                                           ; $4022: $80
	ld   a, a                                        ; $4023: $7f
	add  l                                           ; $4024: $85
	rst  $38                                         ; $4025: $ff
	add  b                                           ; $4026: $80
	db   $fc                                         ; $4027: $fc
	ld   a, [bc]                                     ; $4028: $0a
	pop  af                                          ; $4029: $f1
	ld   sp, $c727                                   ; $402a: $31 $27 $c7
	rst  $28                                         ; $402d: $ef
	adc  a                                           ; $402e: $8f
	sbc  a                                           ; $402f: $9f
	ld   e, h                                        ; $4030: $5c
	ld   a, l                                        ; $4031: $7d
	ldh  a, [$0e]                                    ; $4032: $f0 $0e
	add  c                                           ; $4034: $81
	nop                                              ; $4035: $00
	ld   [$007c], sp                                 ; $4036: $08 $7c $00
	add  e                                           ; $4039: $83
	ld   a, h                                        ; $403a: $7c
	ld   b, e                                        ; $403b: $43
	rst  $38                                         ; $403c: $ff
	jp   $fcff                                       ; $403d: $c3 $ff $fc


	add  l                                           ; $4040: $85
	rst  $38                                         ; $4041: $ff
	add  b                                           ; $4042: $80
	ld   a, a                                        ; $4043: $7f
	add  e                                           ; $4044: $83
	rst  $38                                         ; $4045: $ff
	dec  b                                           ; $4046: $05
	ret  nz                                          ; $4047: $c0

	rst  $38                                         ; $4048: $ff
	nop                                              ; $4049: $00
	ld   hl, sp+$00                                  ; $404a: $f8 $00
	db   $38, $83                                    ; $404c: $38 $83
	nop                                              ; $404e: $00
	inc  c                                           ; $404f: $0c
	ret  nz                                          ; $4050: $c0

	nop                                              ; $4051: $00
	ld   a, $c0                                      ; $4052: $3e $c0
	ld   hl, $22fe                                   ; $4054: $21 $fe $22
	rst  $38                                         ; $4057: $ff
	call z, $f7ff                                    ; $4058: $cc $ff $f7
	rst  $38                                         ; $405b: $ff
	ei                                               ; $405c: $fb
	add  c                                           ; $405d: $81
	rst  $38                                         ; $405e: $ff
	nop                                              ; $405f: $00
	db   $fd                                         ; $4060: $fd
	add  c                                           ; $4061: $81
	rst  $38                                         ; $4062: $ff
	ld   [bc], a                                     ; $4063: $02
	cp   $0f                                         ; $4064: $fe $0f
	rst  $38                                         ; $4066: $ff
	add  c                                           ; $4067: $81
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	rrca                                             ; $406a: $0f
	add  a                                           ; $406b: $87
	nop                                              ; $406c: $00
	ld   c, $80                                      ; $406d: $0e $80
	nop                                              ; $406f: $00
	ld   b, b                                        ; $4070: $40
	add  b                                           ; $4071: $80
	or   b                                           ; $4072: $b0
	ret  nz                                          ; $4073: $c0

	ld   [$d4f0], sp                                 ; $4074: $08 $f0 $d4
	ld   hl, sp-$16                                  ; $4077: $f8 $ea
	db   $fc                                         ; $4079: $fc
	push af                                          ; $407a: $f5

jr_09b_407b:
	cp   $fa                                         ; $407b: $fe $fa
	add  c                                           ; $407d: $81
	rst  $38                                         ; $407e: $ff
	inc  b                                           ; $407f: $04
	dec  a                                           ; $4080: $3d
	rst  $38                                         ; $4081: $ff

jr_09b_4082:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4082: $cf
	ccf                                              ; $4083: $3f
	adc  $85                                         ; $4084: $ce $85
	nop                                              ; $4086: $00
	ld   [bc], a                                     ; $4087: $02
	add  b                                           ; $4088: $80
	nop                                              ; $4089: $00
	ld   b, b                                        ; $408a: $40
	add  c                                           ; $408b: $81
	add  b                                           ; $408c: $80
	nop                                              ; $408d: $00
	and  b                                           ; $408e: $a0
	add  c                                           ; $408f: $81
	ret  nz                                          ; $4090: $c0

	nop                                              ; $4091: $00
	ret  nc                                          ; $4092: $d0

	add  c                                           ; $4093: $81
	ldh  [rTAC], a                                   ; $4094: $e0 $07
	add  sp, $70                                     ; $4096: $e8 $70
	ldh  a, [$b0]                                    ; $4098: $f0 $b0
	ldh  a, [$d0]                                    ; $409a: $f0 $d0
	ldh  a, [$e0]                                    ; $409c: $f0 $e0
	add  b                                           ; $409e: $80
	ldh  a, [rSC]                                    ; $409f: $f0 $02
	nop                                              ; $40a1: $00
	ldh  a, [$f4]                                    ; $40a2: $f0 $f4
	add  b                                           ; $40a4: $80
	ld   a, b                                        ; $40a5: $78
	inc  bc                                          ; $40a6: $03
	cp   b                                           ; $40a7: $b8
	jr   c, jr_09b_4082                              ; $40a8: $38 $d8

	sbc  b                                           ; $40aa: $98
	add  c                                           ; $40ab: $81
	add  sp, $05                                     ; $40ac: $e8 $05
	ld   c, b                                        ; $40ae: $48
	ldh  a, [rSVBK]                                  ; $40af: $f0 $70
	ldh  a, [$e4]                                    ; $40b1: $f0 $e4
	ldh  a, [$80]                                    ; $40b3: $f0 $80
	ldh  [rDIV], a                                   ; $40b5: $e0 $04
	add  sp, -$20                                    ; $40b7: $e8 $e0
	ret  nc                                          ; $40b9: $d0

	ret  nz                                          ; $40ba: $c0

	ld   d, b                                        ; $40bb: $50
	add  c                                           ; $40bc: $81
	ld   b, b                                        ; $40bd: $40
	nop                                              ; $40be: $00
	cp   b                                           ; $40bf: $b8
	add  c                                           ; $40c0: $81
	or   b                                           ; $40c1: $b0
	ld   bc, $b8bc                                   ; $40c2: $01 $bc $b8
	add  b                                           ; $40c5: $80
	ret  c                                           ; $40c6: $d8

	inc  bc                                          ; $40c7: $03
	ld   e, [hl]                                     ; $40c8: $5e
	ld   e, h                                        ; $40c9: $5c
	ld   e, a                                        ; $40ca: $5f
	ld   e, [hl]                                     ; $40cb: $5e
	add  b                                           ; $40cc: $80
	sbc  a                                           ; $40cd: $9f
	add  b                                           ; $40ce: $80
	xor  e                                           ; $40cf: $ab
	add  b                                           ; $40d0: $80
	call nc, Call_09b_5a80                           ; $40d1: $d4 $80 $5a
	inc  bc                                          ; $40d4: $03
	ld   c, e                                        ; $40d5: $4b
	ld   b, e                                        ; $40d6: $43
	ld   b, l                                        ; $40d7: $45
	ld   c, c                                        ; $40d8: $49
	add  b                                           ; $40d9: $80
	ld   d, c                                        ; $40da: $51
	ld   bc, $d4d2                                   ; $40db: $01 $d2 $d4
	add  b                                           ; $40de: $80
	and  h                                           ; $40df: $a4
	add  b                                           ; $40e0: $80
	add  h                                           ; $40e1: $84
	inc  b                                           ; $40e2: $04
	ld   [de], a                                     ; $40e3: $12
	and  h                                           ; $40e4: $a4
	cp   l                                           ; $40e5: $bd
	pop  de                                          ; $40e6: $d1
	daa                                              ; $40e7: $27
	add  l                                           ; $40e8: $85
	nop                                              ; $40e9: $00
	dec  b                                           ; $40ea: $05
	add  b                                           ; $40eb: $80
	nop                                              ; $40ec: $00
	ret  nz                                          ; $40ed: $c0

	add  b                                           ; $40ee: $80
	ldh  [$c0], a                                    ; $40ef: $e0 $c0
	add  b                                           ; $40f1: $80
	ld   b, b                                        ; $40f2: $40
	ld   bc, $6070                                   ; $40f3: $01 $70 $60
	add  b                                           ; $40f6: $80
	jr   nz, jr_09b_407b                             ; $40f7: $20 $82

	and  b                                           ; $40f9: $a0
	nop                                              ; $40fa: $00
	sub  b                                           ; $40fb: $90
	add  c                                           ; $40fc: $81
	ret  nz                                          ; $40fd: $c0

	nop                                              ; $40fe: $00
	ldh  [$81], a                                    ; $40ff: $e0 $81
	add  b                                           ; $4101: $80
	nop                                              ; $4102: $00
	or   d                                           ; $4103: $b2
	add  c                                           ; $4104: $81
	ld   h, l                                        ; $4105: $65
	ld   [bc], a                                     ; $4106: $02
	ld   [hl], h                                     ; $4107: $74
	ld   c, l                                        ; $4108: $4d
	ret                                              ; $4109: $c9


	add  b                                           ; $410a: $80
	adc  d                                           ; $410b: $8a
	inc  bc                                          ; $410c: $03
	ld   c, d                                        ; $410d: $4a
	ld   b, d                                        ; $410e: $42
	ld   d, l                                        ; $410f: $55
	ld   [hl], l                                     ; $4110: $75
	add  b                                           ; $4111: $80
	sub  l                                           ; $4112: $95
	ld   hl, $8390                                   ; $4113: $21 $90 $83
	or   a                                           ; $4116: $b7
	or   h                                           ; $4117: $b4
	ld   hl, $2e27                                   ; $4118: $21 $27 $2e
	xor  b                                           ; $411b: $a8
	inc  sp                                          ; $411c: $33
	rla                                              ; $411d: $17
	db   $10                                         ; $411e: $10
	db   $d3                                         ; $411f: $d3
	db   $10                                         ; $4120: $10
	sbc  b                                           ; $4121: $98
	nop                                              ; $4122: $00
	db   $fc                                         ; $4123: $fc
	nop                                              ; $4124: $00
	add  h                                           ; $4125: $84
	nop                                              ; $4126: $00
	sub  [hl]                                        ; $4127: $96
	nop                                              ; $4128: $00
	rrca                                             ; $4129: $0f
	nop                                              ; $412a: $00
	sbc  l                                           ; $412b: $9d
	add  b                                           ; $412c: $80
	and  a                                           ; $412d: $a7
	add  b                                           ; $412e: $80
	ld   b, e                                        ; $412f: $43
	ld   b, b                                        ; $4130: $40
	ret  c                                           ; $4131: $d8

jr_09b_4132:
	ret  nz                                          ; $4132: $c0

	inc  a                                           ; $4133: $3c
	jr   nc, @+$01                                   ; $4134: $30 $ff

	add  b                                           ; $4136: $80
	inc  c                                           ; $4137: $0c
	inc  bc                                          ; $4138: $03
	ld   bc, $0003                                   ; $4139: $01 $03 $00
	ld   bc, $0083                                   ; $413c: $01 $83 $00
	db   $10                                         ; $413f: $10
	add  b                                           ; $4140: $80
	nop                                              ; $4141: $00
	ld   b, b                                        ; $4142: $40

Jump_09b_4143:
	nop                                              ; $4143: $00
	ret  nz                                          ; $4144: $c0

	nop                                              ; $4145: $00
	ld   a, b                                        ; $4146: $78
	nop                                              ; $4147: $00
	cp   a                                           ; $4148: $bf
	nop                                              ; $4149: $00
	db   $e3                                         ; $414a: $e3
	jp   $e1fd                                       ; $414b: $c3 $fd $e1


	cp   $f8                                         ; $414e: $fe $f8
	cp   $80                                         ; $4150: $fe $80
	db   $fc                                         ; $4152: $fc
	ld   bc, $f9fd                                   ; $4153: $01 $fd $f9
	add  b                                           ; $4156: $80
	ei                                               ; $4157: $fb
	nop                                              ; $4158: $00
	ld   a, [$f280]                                  ; $4159: $fa $80 $f2
	daa                                              ; $415c: $27
	di                                               ; $415d: $f3
	ldh  a, [$60]                                    ; $415e: $f0 $60
	ld   l, b                                        ; $4160: $68
	ld   [$5594], sp                                 ; $4161: $08 $94 $55
	dec  d                                           ; $4164: $15
	dec  [hl]                                        ; $4165: $35
	ld   h, $c2                                      ; $4166: $26 $c2
	dec  c                                           ; $4168: $0d
	db   $eb                                         ; $4169: $eb
	ldh  [c], a                                      ; $416a: $e2
	rra                                              ; $416b: $1f
	ccf                                              ; $416c: $3f
	db   $e4                                         ; $416d: $e4
	call Call_09b_7f36                               ; $416e: $cd $36 $7f
	rst  JumpTable                                         ; $4171: $df
	ccf                                              ; $4172: $3f
	ld   l, a                                        ; $4173: $6f
	rrca                                             ; $4174: $0f
	rst  $38                                         ; $4175: $ff
	ccf                                              ; $4176: $3f
	jp   $3dff                                       ; $4177: $c3 $ff $3d


	add  a                                           ; $417a: $87
	cp   [hl]                                        ; $417b: $be
	nop                                              ; $417c: $00
	db   $e3                                         ; $417d: $e3
	jp   $e1fd                                       ; $417e: $c3 $fd $e1


	cp   $f8                                         ; $4181: $fe $f8
	cp   $fc                                         ; $4183: $fe $fc
	add  b                                           ; $4185: $80
	db   $fd                                         ; $4186: $fd
	nop                                              ; $4187: $00
	ld   a, a                                        ; $4188: $7f
	add  e                                           ; $4189: $83
	nop                                              ; $418a: $00
	inc  bc                                          ; $418b: $03
	add  $80                                         ; $418c: $c6 $80
	rst  $38                                         ; $418e: $ff
	add  $80                                         ; $418f: $c6 $80
	and  $80                                         ; $4191: $e6 $80
	ld   a, [$fc80]                                  ; $4193: $fa $80 $fc
	add  b                                           ; $4196: $80
	ret  nz                                          ; $4197: $c0

	add  b                                           ; $4198: $80
	ld   d, $80                                      ; $4199: $16 $80
	sub  [hl]                                        ; $419b: $96
	add  b                                           ; $419c: $80
	ld   d, [hl]                                     ; $419d: $56
	ld   [$d1d0], sp                                 ; $419e: $08 $d0 $d1
	ld   bc, $2f0f                                   ; $41a1: $01 $0f $2f
	xor  a                                           ; $41a4: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a5: $cf
	ld   l, a                                        ; $41a6: $6f
	ret  nc                                          ; $41a7: $d0

	add  l                                           ; $41a8: $85
	nop                                              ; $41a9: $00
	inc  bc                                          ; $41aa: $03
	ret  nz                                          ; $41ab: $c0

	nop                                              ; $41ac: $00
	ldh  a, [$c0]                                    ; $41ad: $f0 $c0
	add  b                                           ; $41af: $80
	jr   nz, jr_09b_4132                             ; $41b0: $20 $80

	ldh  [rP1], a                                    ; $41b2: $e0 $00
	ret  nc                                          ; $41b4: $d0

	add  e                                           ; $41b5: $83
	ret  nz                                          ; $41b6: $c0

	ld   a, [bc]                                     ; $41b7: $0a
	jr   jr_09b_41da                                 ; $41b8: $18 $20

	and  $c8                                         ; $41ba: $e6 $c8
	add  hl, sp                                      ; $41bc: $39
	or   $ce                                         ; $41bd: $f6 $ce
	ei                                               ; $41bf: $fb
	rst  $30                                         ; $41c0: $f7
	db   $fd                                         ; $41c1: $fd
	ld   b, $89                                      ; $41c2: $06 $89
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	add  b                                           ; $41c6: $80
	add  e                                           ; $41c7: $83
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	ld   b, b                                        ; $41ca: $40
	add  c                                           ; $41cb: $81
	add  b                                           ; $41cc: $80
	nop                                              ; $41cd: $00
	and  b                                           ; $41ce: $a0
	add  c                                           ; $41cf: $81
	ret  nz                                          ; $41d0: $c0

	nop                                              ; $41d1: $00
	ret  nc                                          ; $41d2: $d0

	add  e                                           ; $41d3: $83
	ldh  [$15], a                                    ; $41d4: $e0 $15
	rla                                              ; $41d6: $17
	ret  nz                                          ; $41d7: $c0

	add  $f8                                         ; $41d8: $c6 $f8

jr_09b_41da:
	ld   sp, hl                                      ; $41da: $f9
	db   $fc                                         ; $41db: $fc
	db   $fd                                         ; $41dc: $fd
	rst  $38                                         ; $41dd: $ff
	ldh  a, [c]                                      ; $41de: $f2
	di                                               ; $41df: $f3
	ldh  [$e5], a                                    ; $41e0: $e0 $e5
	rst  $20                                         ; $41e2: $e7
	xor  d                                           ; $41e3: $aa
	xor  c                                           ; $41e4: $a9
	ld   h, l                                        ; $41e5: $65
	ld   l, [hl]                                     ; $41e6: $6e
	ld   [$afa0], a                                  ; $41e7: $ea $a0 $af
	ld   l, a                                        ; $41ea: $6f
	ld   h, a                                        ; $41eb: $67
	add  b                                           ; $41ec: $80
	and  $82                                         ; $41ed: $e6 $82
	sub  $01                                         ; $41ef: $d6 $01
	and  [hl]                                        ; $41f1: $a6
	xor  [hl]                                        ; $41f2: $ae
	add  b                                           ; $41f3: $80
	xor  h                                           ; $41f4: $ac
	rla                                              ; $41f5: $17
	add  b                                           ; $41f6: $80
	nop                                              ; $41f7: $00
	or   b                                           ; $41f8: $b0
	rrca                                             ; $41f9: $0f
	ld   c, a                                        ; $41fa: $4f
	ccf                                              ; $41fb: $3f
	ld   a, $fe                                      ; $41fc: $3e $fe
	adc  a                                           ; $41fe: $8f
	adc  $c6                                         ; $41ff: $ce $c6
	and  a                                           ; $4201: $a7
	rst  $20                                         ; $4202: $e7
	ld   d, a                                        ; $4203: $57
	rla                                              ; $4204: $17
	inc  h                                           ; $4205: $24
	ld   [hl], h                                     ; $4206: $74
	ld   d, h                                        ; $4207: $54
	call nz, $1131                                   ; $4208: $c4 $31 $11
	inc  de                                          ; $420b: $13
	ld   b, $0a                                      ; $420c: $06 $0a
	add  e                                           ; $420e: $83
	dec  bc                                          ; $420f: $0b
	inc  bc                                          ; $4210: $03
	ld   a, [bc]                                     ; $4211: $0a
	ld   c, $07                                      ; $4212: $0e $07
	ld   c, $83                                      ; $4214: $0e $83
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	inc  bc                                          ; $4218: $03
	add  l                                           ; $4219: $85
	ld   bc, $0700                                   ; $421a: $01 $00 $07
	add  c                                           ; $421d: $81
	inc  bc                                          ; $421e: $03
	ld   b, $02                                      ; $421f: $06 $02
	inc  bc                                          ; $4221: $03
	rrca                                             ; $4222: $0f
	rlca                                             ; $4223: $07
	dec  b                                           ; $4224: $05
	rlca                                             ; $4225: $07
	rra                                              ; $4226: $1f
	add  e                                           ; $4227: $83
	rrca                                             ; $4228: $0f
	ld   a, [bc]                                     ; $4229: $0a
	db   $eb                                         ; $422a: $eb
	adc  a                                           ; $422b: $8f
	ld   a, a                                        ; $422c: $7f
	dec  b                                           ; $422d: $05
	ld   c, $07                                      ; $422e: $0e $07
	dec  de                                          ; $4230: $1b
	rrca                                             ; $4231: $0f
	cpl                                              ; $4232: $2f
	ccf                                              ; $4233: $3f
	cpl                                              ; $4234: $2f
	add  b                                           ; $4235: $80
	rra                                              ; $4236: $1f
	inc  bc                                          ; $4237: $03
	ccf                                              ; $4238: $3f
	ld   a, a                                        ; $4239: $7f
	ld   e, a                                        ; $423a: $5f
	ld   a, a                                        ; $423b: $7f
	add  e                                           ; $423c: $83
	ccf                                              ; $423d: $3f
	inc  d                                           ; $423e: $14
	rra                                              ; $423f: $1f
	ld   e, a                                        ; $4240: $5f
	rrca                                             ; $4241: $0f
	rra                                              ; $4242: $1f
	ccf                                              ; $4243: $3f
	rrca                                             ; $4244: $0f
	rla                                              ; $4245: $17
	rlca                                             ; $4246: $07
	add  hl, bc                                      ; $4247: $09
	inc  bc                                          ; $4248: $03
	ld   b, $02                                      ; $4249: $06 $02
	ld   b, $05                                      ; $424b: $06 $05
	ld   c, $04                                      ; $424d: $0e $04
	jr   jr_09b_4251                                 ; $424f: $18 $00

jr_09b_4251:
	jr   nz, jr_09b_4283                             ; $4251: $20 $30

	jr   nz, @-$7e                                   ; $4253: $20 $80

	nop                                              ; $4255: $00
	inc  bc                                          ; $4256: $03
	jr   nz, jr_09b_42b9                             ; $4257: $20 $60

	ld   c, b                                        ; $4259: $48
	ld   l, b                                        ; $425a: $68
	add  b                                           ; $425b: $80
	inc  d                                           ; $425c: $14
	add  b                                           ; $425d: $80
	ld   a, [bc]                                     ; $425e: $0a
	dec  c                                           ; $425f: $0d
	rla                                              ; $4260: $17
	scf                                              ; $4261: $37
	ld   c, a                                        ; $4262: $4f
	rra                                              ; $4263: $1f
	rla                                              ; $4264: $17
	scf                                              ; $4265: $37
	inc  bc                                          ; $4266: $03
	dec  de                                          ; $4267: $1b
	ld   bc, $020f                                   ; $4268: $01 $0f $02
	rlca                                             ; $426b: $07
	ld   [bc], a                                     ; $426c: $02
	ld   bc, $0089                                   ; $426d: $01 $89 $00
	add  hl, bc                                      ; $4270: $09
	ld   bc, $0600                                   ; $4271: $01 $00 $06
	nop                                              ; $4274: $00
	db   $fd                                         ; $4275: $fd
	adc  c                                           ; $4276: $89
	ld   [hl], c                                     ; $4277: $71
	ld   bc, $0307                                   ; $4278: $01 $07 $03
	add  [hl]                                        ; $427b: $86
	ld   [bc], a                                     ; $427c: $02
	ld   b, $05                                      ; $427d: $06 $05
	ld   bc, $6296                                   ; $427f: $01 $96 $62
	ld   d, d                                        ; $4282: $52

jr_09b_4283:
	ld   c, d                                        ; $4283: $4a
	ld   c, e                                        ; $4284: $4b
	add  c                                           ; $4285: $81
	ld   c, c                                        ; $4286: $49
	ld   bc, $647f                                   ; $4287: $01 $7f $64
	add  b                                           ; $428a: $80
	and  h                                           ; $428b: $a4
	ld   [$b2bf], sp                                 ; $428c: $08 $bf $b2
	rra                                              ; $428f: $1f
	dec  de                                          ; $4290: $1b
	db   $e4                                         ; $4291: $e4
	inc  b                                           ; $4292: $04
	jr   jr_09b_4295                                 ; $4293: $18 $00

jr_09b_4295:
	rlca                                             ; $4295: $07
	add  l                                           ; $4296: $85
	nop                                              ; $4297: $00
	ld   [$0001], sp                                 ; $4298: $08 $01 $00
	ld   b, $01                                      ; $429b: $06 $01
	sbc  d                                           ; $429d: $9a
	db   $e4                                         ; $429e: $e4
	and  h                                           ; $429f: $a4
	ld   h, h                                        ; $42a0: $64
	ld   h, [hl]                                     ; $42a1: $66
	add  b                                           ; $42a2: $80
	ld   l, d                                        ; $42a3: $6a
	ld   bc, $5968                                   ; $42a4: $01 $68 $59
	add  b                                           ; $42a7: $80
	or   h                                           ; $42a8: $b4
	dec  b                                           ; $42a9: $05
	or   l                                           ; $42aa: $b5
	dec  l                                           ; $42ab: $2d
	jp   c, Jump_09b_695a                            ; $42ac: $da $5a $69

	ld   h, l                                        ; $42af: $65
	add  b                                           ; $42b0: $80
	or   l                                           ; $42b1: $b5
	ld   a, [bc]                                     ; $42b2: $0a
	inc  b                                           ; $42b3: $04
	call nc, Call_09b_6314                           ; $42b4: $d4 $14 $63
	dec  hl                                          ; $42b7: $2b
	dec  c                                           ; $42b8: $0d

jr_09b_42b9:
	dec  d                                           ; $42b9: $15
	ld   d, c                                        ; $42ba: $51
	ld   de, $2efe                                   ; $42bb: $11 $fe $2e
	add  c                                           ; $42be: $81
	rst  $38                                         ; $42bf: $ff
	add  e                                           ; $42c0: $83
	nop                                              ; $42c1: $00
	inc  b                                           ; $42c2: $04
	inc  bc                                          ; $42c3: $03
	nop                                              ; $42c4: $00
	rlca                                             ; $42c5: $07
	inc  bc                                          ; $42c6: $03
	inc  c                                           ; $42c7: $0c
	add  b                                           ; $42c8: $80
	inc  b                                           ; $42c9: $04
	inc  bc                                          ; $42ca: $03
	dec  b                                           ; $42cb: $05
	add  hl, de                                      ; $42cc: $19
	dec  bc                                          ; $42cd: $0b
	inc  bc                                          ; $42ce: $03
	add  b                                           ; $42cf: $80
	rlca                                             ; $42d0: $07
	add  c                                           ; $42d1: $81
	rrca                                             ; $42d2: $0f
	ld   [bc], a                                     ; $42d3: $02
	cpl                                              ; $42d4: $2f
	rla                                              ; $42d5: $17
	ld   d, a                                        ; $42d6: $57
	add  b                                           ; $42d7: $80
	dec  l                                           ; $42d8: $2d
	ld   bc, $ab2b                                   ; $42d9: $01 $2b $ab
	add  b                                           ; $42dc: $80
	ld   e, e                                        ; $42dd: $5b
	ld   b, $37                                      ; $42de: $06 $37
	ret  nc                                          ; $42e0: $d0

	rlca                                             ; $42e1: $07
	ld   a, a                                        ; $42e2: $7f
	rra                                              ; $42e3: $1f
	rst  $38                                         ; $42e4: $ff
	ld   a, a                                        ; $42e5: $7f
	add  b                                           ; $42e6: $80
	rst  $38                                         ; $42e7: $ff
	ld   b, $1f                                      ; $42e8: $06 $1f
	ccf                                              ; $42ea: $3f
	ld   hl, $02c3                                   ; $42eb: $21 $c3 $02
	db   $fc                                         ; $42ee: $fc
	inc  b                                           ; $42ef: $04
	add  b                                           ; $42f0: $80
	rst  $38                                         ; $42f1: $ff
	nop                                              ; $42f2: $00
	push bc                                          ; $42f3: $c5
	add  b                                           ; $42f4: $80
	sbc  c                                           ; $42f5: $99
	ld   bc, $9b9d                                   ; $42f6: $01 $9d $9b
	add  b                                           ; $42f9: $80
	ld   a, [hl-]                                    ; $42fa: $3a
	ld   bc, $3438                                   ; $42fb: $01 $38 $34
	add  d                                           ; $42fe: $82
	halt                                             ; $42ff: $76
	inc  bc                                          ; $4300: $03
	or   $b6                                         ; $4301: $f6 $b6
	ld   c, b                                        ; $4303: $48
	nop                                              ; $4304: $00
	add  b                                           ; $4305: $80
	ld   bc, $0084                                   ; $4306: $01 $84 $00
	ld   a, [de]                                     ; $4309: $1a
	add  b                                           ; $430a: $80
	nop                                              ; $430b: $00
	ld   h, b                                        ; $430c: $60
	jr   nz, jr_09b_4347                             ; $430d: $20 $38

	ld   [$320e], sp                                 ; $430f: $08 $0e $32
	inc  de                                          ; $4312: $13
	sbc  h                                           ; $4313: $9c
	xor  h                                           ; $4314: $ac
	rrca                                             ; $4315: $0f
	scf                                              ; $4316: $37
	rlca                                             ; $4317: $07
	ld   c, l                                        ; $4318: $4d
	ld   bc, $0008                                   ; $4319: $01 $08 $00
	ld   [hl], a                                     ; $431c: $77
	nop                                              ; $431d: $00
	db   $fd                                         ; $431e: $fd
	nop                                              ; $431f: $00
	sbc  [hl]                                        ; $4320: $9e
	add  b                                           ; $4321: $80
	ret  nz                                          ; $4322: $c0

	ld   b, b                                        ; $4323: $40
	add  b                                           ; $4324: $80
	add  e                                           ; $4325: $83
	nop                                              ; $4326: $00
	ld   [$0001], sp                                 ; $4327: $08 $01 $00
	ld   b, $04                                      ; $432a: $06 $04
	inc  e                                           ; $432c: $1c
	ld   [de], a                                     ; $432d: $12
	ld   [hl], d                                     ; $432e: $72
	ld   b, h                                        ; $432f: $44
	call nz, $3480                                   ; $4330: $c4 $80 $34

jr_09b_4333:
	dec  bc                                          ; $4333: $0b
	ldh  a, [$f4]                                    ; $4334: $f0 $f4
	ldh  a, [$f1]                                    ; $4336: $f0 $f1
	ldh  a, [rAUD1HIGH]                              ; $4338: $f0 $14
	db   $10                                         ; $433a: $10
	or   c                                           ; $433b: $b1
	ld   b, $f6                                      ; $433c: $06 $f6
	inc  b                                           ; $433e: $04
	ld   c, e                                        ; $433f: $4b
	db   $fd                                         ; $4340: $fd
	nop                                              ; $4341: $00

jr_09b_4342:
	nop                                              ; $4342: $00
	ccf                                              ; $4343: $3f
	add  b                                           ; $4344: $80
	inc  a                                           ; $4345: $3c
	add  b                                           ; $4346: $80

jr_09b_4347:
	dec  a                                           ; $4347: $3d
	rlca                                             ; $4348: $07
	ld   a, [hl-]                                    ; $4349: $3a
	dec  de                                          ; $434a: $1b
	jr   jr_09b_4367                                 ; $434b: $18 $1a

	db   $10                                         ; $434d: $10
	inc  [hl]                                        ; $434e: $34
	jr   nc, jr_09b_43c9                             ; $434f: $30 $78

	add  c                                           ; $4351: $81
	ld   h, b                                        ; $4352: $60
	rla                                              ; $4353: $17
	ldh  [c], a                                      ; $4354: $e2
	ret  nz                                          ; $4355: $c0

	or   $01                                         ; $4356: $f6 $01
	pop  bc                                          ; $4358: $c1
	ld   bc, $0200                                   ; $4359: $01 $00 $02
	dec  c                                           ; $435c: $0d
	inc  b                                           ; $435d: $04
	ld   [de], a                                     ; $435e: $12
	ld   bc, $030d                                   ; $435f: $01 $0d $03
	ld   [hl], e                                     ; $4362: $73
	ld   c, $52                                      ; $4363: $0e $52
	inc  c                                           ; $4365: $0c
	rra                                              ; $4366: $1f

jr_09b_4367:
	jp   $c0cf                                       ; $4367: $c3 $cf $c0


	di                                               ; $436a: $f3
	ldh  [$80], a                                    ; $436b: $e0 $80
	jr   nz, jr_09b_437d                             ; $436d: $20 $0e

	ret  nz                                          ; $436f: $c0

	nop                                              ; $4370: $00
	jr   c, jr_09b_4333                              ; $4371: $38 $c0

	adc  $e0                                         ; $4373: $ce $e0
	ld   b, $c0                                      ; $4375: $06 $c0
	pop  bc                                          ; $4377: $c1
	ret  nz                                          ; $4378: $c0

	jp   $c6c0                                       ; $4379: $c3 $c0 $c6


	ret  nz                                          ; $437c: $c0

jr_09b_437d:
	call z, $c380                                    ; $437d: $cc $80 $c3
	ld   bc, $dec6                                   ; $4380: $01 $c6 $de
	add  b                                           ; $4383: $80
	call nz, Call_09b_4d03                           ; $4384: $c4 $03 $4d
	dec  a                                           ; $4387: $3d
	jr   c, jr_09b_4342                              ; $4388: $38 $b8

	add  b                                           ; $438a: $80
	ld   h, e                                        ; $438b: $63
	inc  bc                                          ; $438c: $03
	rlca                                             ; $438d: $07
	ld   b, $1e                                      ; $438e: $06 $1e
	dec  e                                           ; $4390: $1d
	add  b                                           ; $4391: $80
	dec  a                                           ; $4392: $3d
	rlca                                             ; $4393: $07
	ld   a, l                                        ; $4394: $7d
	ld   a, e                                        ; $4395: $7b
	ld   sp, hl                                      ; $4396: $f9
	push af                                          ; $4397: $f5
	di                                               ; $4398: $f3
	ld   a, [$4140]                                  ; $4399: $fa $40 $41
	add  b                                           ; $439c: $80
	nop                                              ; $439d: $00
	add  b                                           ; $439e: $80
	rst  ToBoot                                         ; $439f: $c7
	ld   c, $e3                                      ; $43a0: $0e $e3
	inc  hl                                          ; $43a2: $23
	add  hl, sp                                      ; $43a3: $39
	reti                                             ; $43a4: $d9


jr_09b_43a5:
	inc  e                                           ; $43a5: $1c
	inc  l                                           ; $43a6: $2c
	adc  a                                           ; $43a7: $8f
	sub  a                                           ; $43a8: $97
	rlca                                             ; $43a9: $07
	db   $10                                         ; $43aa: $10
	ld   [de], a                                     ; $43ab: $12
	ld   c, $00                                      ; $43ac: $0e $00
	ld   [bc], a                                     ; $43ae: $02
	ld   bc, $0085                                   ; $43af: $01 $85 $00
	add  b                                           ; $43b2: $80
	ld   bc, $0303                                   ; $43b3: $01 $03 $03
	di                                               ; $43b6: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43b7: $cf
	rst  ToBoot                                         ; $43b8: $c7
	add  b                                           ; $43b9: $80
	and  a                                           ; $43ba: $a7
	inc  b                                           ; $43bb: $04
	ld   h, a                                        ; $43bc: $67
	ld   l, e                                        ; $43bd: $6b
	xor  e                                           ; $43be: $ab
	ld   a, [hl+]                                    ; $43bf: $2a
	ld   c, d                                        ; $43c0: $4a
	add  b                                           ; $43c1: $80
	ld   c, l                                        ; $43c2: $4d
	ld   bc, $2d0d                                   ; $43c3: $01 $0d $2d
	add  b                                           ; $43c6: $80
	dec  hl                                          ; $43c7: $2b
	nop                                              ; $43c8: $00

jr_09b_43c9:
	rra                                              ; $43c9: $1f
	add  b                                           ; $43ca: $80
	cp   a                                           ; $43cb: $bf
	add  d                                           ; $43cc: $82
	rst  $38                                         ; $43cd: $ff
	add  b                                           ; $43ce: $80
	cp   $01                                         ; $43cf: $fe $01
	db   $fc                                         ; $43d1: $fc
	db   $fd                                         ; $43d2: $fd
	add  b                                           ; $43d3: $80
	pop  af                                          ; $43d4: $f1
	inc  b                                           ; $43d5: $04
	nop                                              ; $43d6: $00
	adc  [hl]                                        ; $43d7: $8e
	adc  b                                           ; $43d8: $88
	inc  hl                                          ; $43d9: $23
	dec  de                                          ; $43da: $1b
	add  b                                           ; $43db: $80
	ld   a, [de]                                     ; $43dc: $1a
	add  b                                           ; $43dd: $80
	ld   e, d                                        ; $43de: $5a
	ld   bc, $3d7d                                   ; $43df: $01 $7d $3d
	add  b                                           ; $43e2: $80
	xor  l                                           ; $43e3: $ad
	ld   bc, $5ada                                   ; $43e4: $01 $da $5a
	add  b                                           ; $43e7: $80
	sub  $80                                         ; $43e8: $d6 $80
	or   h                                           ; $43ea: $b4
	dec  b                                           ; $43eb: $05
	call nz, $f000                                   ; $43ec: $c4 $00 $f0
	nop                                              ; $43ef: $00
	call nz, $8000                                   ; $43f0: $c4 $00 $80
	inc  b                                           ; $43f3: $04
	add  b                                           ; $43f4: $80
	dec  b                                           ; $43f5: $05
	add  b                                           ; $43f6: $80
	ld   bc, $b604                                   ; $43f7: $01 $04 $b6
	nop                                              ; $43fa: $00
	ldh  a, [c]                                      ; $43fb: $f2
	nop                                              ; $43fc: $00
	ld   c, e                                        ; $43fd: $4b
	add  d                                           ; $43fe: $82
	nop                                              ; $43ff: $00
	add  b                                           ; $4400: $80
	inc  bc                                          ; $4401: $03
	add  b                                           ; $4402: $80
	rrca                                             ; $4403: $0f
	add  d                                           ; $4404: $82
	ccf                                              ; $4405: $3f
	dec  b                                           ; $4406: $05
	cp   a                                           ; $4407: $bf
	ccf                                              ; $4408: $3f
	rra                                              ; $4409: $1f
	sbc  [hl]                                        ; $440a: $9e
	ld   c, $0f                                      ; $440b: $0e $0f
	add  b                                           ; $440d: $80
	inc  bc                                          ; $440e: $03
	add  b                                           ; $440f: $80
	pop  af                                          ; $4410: $f1
	add  b                                           ; $4411: $80
	ldh  [$82], a                                    ; $4412: $e0 $82
	ret  nz                                          ; $4414: $c0

	add  c                                           ; $4415: $81
	add  b                                           ; $4416: $80
	inc  bc                                          ; $4417: $03
	ld   c, l                                        ; $4418: $4d

jr_09b_4419:
	ld   [bc], a                                     ; $4419: $02
	ld   [$80da], a                                  ; $441a: $ea $da $80
	pop  hl                                          ; $441d: $e1
	inc  b                                           ; $441e: $04
	ei                                               ; $441f: $fb
	ld   a, e                                        ; $4420: $7b
	ld   a, c                                        ; $4421: $79
	add  hl, sp                                      ; $4422: $39
	jr   nc, jr_09b_43a5                             ; $4423: $30 $80

	nop                                              ; $4425: $00
	add  hl, bc                                      ; $4426: $09
	ld   [bc], a                                     ; $4427: $02
	ld   [de], a                                     ; $4428: $12
	dec  bc                                          ; $4429: $0b
	rla                                              ; $442a: $17
	ldh  a, [$f1]                                    ; $442b: $f0 $f1
	ldh  [$e3], a                                    ; $442d: $e0 $e3
	ldh  [c], a                                      ; $442f: $e2
	db   $e3                                         ; $4430: $e3
	add  b                                           ; $4431: $80
	pop  bc                                          ; $4432: $c1
	add  b                                           ; $4433: $80
	add  c                                           ; $4434: $81
	inc  bc                                          ; $4435: $03
	inc  bc                                          ; $4436: $03
	add  e                                           ; $4437: $83
	rra                                              ; $4438: $1f
	ld   e, a                                        ; $4439: $5f
	add  b                                           ; $443a: $80
	rrca                                             ; $443b: $0f
	dec  bc                                          ; $443c: $0b
	adc  a                                           ; $443d: $8f
	xor  a                                           ; $443e: $af
	add  $d6                                         ; $443f: $c6 $d6
	ldh  [c], a                                      ; $4441: $e2
	ld   l, d                                        ; $4442: $6a
	ld   [hl], b                                     ; $4443: $70
	ld   [hl], h                                     ; $4444: $74
	ld   a, b                                        ; $4445: $78
	ld   a, e                                        ; $4446: $7b
	ld   d, h                                        ; $4447: $54
	ld   e, h                                        ; $4448: $5c
	add  c                                           ; $4449: $81
	ld   d, e                                        ; $444a: $53
	nop                                              ; $444b: $00
	inc  h                                           ; $444c: $24
	adc  c                                           ; $444d: $89
	nop                                              ; $444e: $00
	ld   [$00ff], sp                                 ; $444f: $08 $ff $00
	ld   h, d                                        ; $4452: $62
	add  hl, de                                      ; $4453: $19
	sbc  d                                           ; $4454: $9a
	ld   a, [bc]                                     ; $4455: $0a
	dec  bc                                          ; $4456: $0b
	dec  c                                           ; $4457: $0d
	dec  l                                           ; $4458: $2d
	add  c                                           ; $4459: $81
	dec  e                                           ; $445a: $1d
	inc  b                                           ; $445b: $04
	ld   e, l                                        ; $445c: $5d
	jr   c, jr_09b_4496                              ; $445d: $38 $37

	jr   z, jr_09b_4419                              ; $445f: $28 $b8

	add  b                                           ; $4461: $80
	ld   [hl], b                                     ; $4462: $70
	add  b                                           ; $4463: $80
	ret  nc                                          ; $4464: $d0

	dec  bc                                          ; $4465: $0b
	add  a                                           ; $4466: $87
	rla                                              ; $4467: $17
	ld   b, e                                        ; $4468: $43
	ld   c, e                                        ; $4469: $4b
	ld   d, e                                        ; $446a: $53
	rla                                              ; $446b: $17
	add  hl, hl                                      ; $446c: $29
	adc  d                                           ; $446d: $8a
	add  d                                           ; $446e: $82
	ld   c, l                                        ; $446f: $4d
	adc  b                                           ; $4470: $88
	ld   hl, sp-$80                                  ; $4471: $f8 $80
	ld   e, b                                        ; $4473: $58
	inc  bc                                          ; $4474: $03
	ld   e, h                                        ; $4475: $5c
	jp   $ef2f                                       ; $4476: $c3 $2f $ef


	add  h                                           ; $4479: $84
	ld   e, a                                        ; $447a: $5f
	add  c                                           ; $447b: $81
	ld   a, a                                        ; $447c: $7f
	add  d                                           ; $447d: $82
	ccf                                              ; $447e: $3f
	dec  b                                           ; $447f: $05
	ei                                               ; $4480: $fb
	ld   sp, hl                                      ; $4481: $f9
	ld   a, a                                        ; $4482: $7f
	ld   a, h                                        ; $4483: $7c
	ld   a, $3f                                      ; $4484: $3e $3f
	add  d                                           ; $4486: $82
	rra                                              ; $4487: $1f
	add  b                                           ; $4488: $80
	adc  a                                           ; $4489: $8f
	add  b                                           ; $448a: $80
	add  a                                           ; $448b: $87
	add  b                                           ; $448c: $80
	jp   $00ff                                       ; $448d: $c3 $ff $00


	rst  $38                                         ; $4490: $ff
	nop                                              ; $4491: $00
	rst  $38                                         ; $4492: $ff
	nop                                              ; $4493: $00
	rst  $38                                         ; $4494: $ff
	nop                                              ; $4495: $00

jr_09b_4496:
	rst  $38                                         ; $4496: $ff
	nop                                              ; $4497: $00
	xor  c                                           ; $4498: $a9
	nop                                              ; $4499: $00
	ld   b, c                                        ; $449a: $41
	jp   hl                                          ; $449b: $e9


	ld   b, e                                        ; $449c: $43
	ld   a, [$fa83]                                  ; $449d: $fa $83 $fa
	add  e                                           ; $44a0: $83
	cp   $87                                         ; $44a1: $fe $87
	db   $fc                                         ; $44a3: $fc
	and  a                                           ; $44a4: $a7
	db   $fc                                         ; $44a5: $fc
	inc  h                                           ; $44a6: $24
	rst  $38                                         ; $44a7: $ff
	ld   b, a                                        ; $44a8: $47
	db   $fc                                         ; $44a9: $fc
	ld   c, a                                        ; $44aa: $4f
	ld   hl, sp-$73                                  ; $44ab: $f8 $8d
	ei                                               ; $44ad: $fb
	adc  a                                           ; $44ae: $8f
	cp   $9e                                         ; $44af: $fe $9e
	db   $f4                                         ; $44b1: $f4
	sbc  [hl]                                        ; $44b2: $9e
	ldh  a, [c]                                      ; $44b3: $f2
	cp   a                                           ; $44b4: $bf
	ldh  a, [$3e]                                    ; $44b5: $f0 $3e
	ld   [hl], b                                     ; $44b7: $70
	ld   a, $78                                      ; $44b8: $3e $78
	dec  hl                                          ; $44ba: $2b
	rst  $38                                         ; $44bb: $ff
	dec  [hl]                                        ; $44bc: $35
	rst  $38                                         ; $44bd: $ff
	dec  sp                                          ; $44be: $3b
	rst  $38                                         ; $44bf: $ff
	ld   h, d                                        ; $44c0: $62
	pop  bc                                          ; $44c1: $c1
	ld   b, b                                        ; $44c2: $40
	ret  nz                                          ; $44c3: $c0

Call_09b_44c4:
	ld   b, b                                        ; $44c4: $40
	ret  nz                                          ; $44c5: $c0

	ld   b, b                                        ; $44c6: $40
	ret  nz                                          ; $44c7: $c0

	ld   b, b                                        ; $44c8: $40
	ret  nz                                          ; $44c9: $c0

	ld   b, b                                        ; $44ca: $40
	ret  nz                                          ; $44cb: $c0

	ret  nz                                          ; $44cc: $c0

	ret  nz                                          ; $44cd: $c0

	ret  nz                                          ; $44ce: $c0

	ret  nz                                          ; $44cf: $c0

	ld   b, b                                        ; $44d0: $40
	ret  nz                                          ; $44d1: $c0

	ret  nz                                          ; $44d2: $c0

	ld   b, b                                        ; $44d3: $40
	ld   b, b                                        ; $44d4: $40
	ldh  [$f4], a                                    ; $44d5: $e0 $f4
	ld   hl, sp-$2e                                  ; $44d7: $f8 $d2
	ld   l, $54                                      ; $44d9: $2e $54
	rst  $38                                         ; $44db: $ff
	xor  $ff                                         ; $44dc: $ee $ff
	sub  $ff                                         ; $44de: $d6 $ff
	ld   a, d                                        ; $44e0: $7a
	add  a                                           ; $44e1: $87
	ld   e, $03                                      ; $44e2: $1e $03
	ld   c, $03                                      ; $44e4: $0e $03
	ld   c, $03                                      ; $44e6: $0e $03
	ld   b, $03                                      ; $44e8: $06 $03
	ld   b, $03                                      ; $44ea: $06 $03
	rlca                                             ; $44ec: $07
	inc  bc                                          ; $44ed: $03
	rlca                                             ; $44ee: $07
	inc  bc                                          ; $44ef: $03
	inc  bc                                          ; $44f0: $03
	ld   b, $07                                      ; $44f1: $06 $07
	inc  c                                           ; $44f3: $0c
	rlca                                             ; $44f4: $07
	nop                                              ; $44f5: $00
	dec  bc                                          ; $44f6: $0b
	rlca                                             ; $44f7: $07
	rrca                                             ; $44f8: $0f
	inc  c                                           ; $44f9: $0c
	ld   [bc], a                                     ; $44fa: $02
	rst  $38                                         ; $44fb: $ff
	ld   bc, $00fb                                   ; $44fc: $01 $fb $00
	db   $fd                                         ; $44ff: $fd
	adc  b                                           ; $4500: $88
	db   $ed                                         ; $4501: $ed
	adc  b                                           ; $4502: $88
	add  sp, -$7c                                    ; $4503: $e8 $84
	db   $f4                                         ; $4505: $f4
	add  h                                           ; $4506: $84
	or   $84                                         ; $4507: $f6 $84
	and  $86                                         ; $4509: $e6 $86
	and  a                                           ; $450b: $a7
	add  d                                           ; $450c: $82
	add  a                                           ; $450d: $87
	add  e                                           ; $450e: $83
	add  a                                           ; $450f: $87
	add  e                                           ; $4510: $83
	xor  e                                           ; $4511: $ab
	add  c                                           ; $4512: $81
	db   $eb                                         ; $4513: $eb
	pop  bc                                          ; $4514: $c1
	rst  $30                                         ; $4515: $f7
	ret  nz                                          ; $4516: $c0

	rst  $30                                         ; $4517: $f7
	ret  nz                                          ; $4518: $c0

	ld   a, a                                        ; $4519: $7f
	db   $ec                                         ; $451a: $ec
	ldh  a, [$d0]                                    ; $451b: $f0 $d0
	ret  c                                           ; $451d: $d8

	ldh  a, [$e0]                                    ; $451e: $f0 $e0
	ldh  a, [hScriptOpcodeParams]                                    ; $4520: $f0 $a0
	ldh  [$e0], a                                    ; $4522: $e0 $e0
	ld   b, b                                        ; $4524: $40
	ldh  [rP1], a                                    ; $4525: $e0 $00
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	nop                                              ; $452a: $00
	nop                                              ; $452b: $00
	ld   bc, $0100                                   ; $452c: $01 $00 $01
	nop                                              ; $452f: $00
	ld   bc, $8000                                   ; $4530: $01 $00 $80
	nop                                              ; $4533: $00
	add  b                                           ; $4534: $80
	nop                                              ; $4535: $00
	ret  nz                                          ; $4536: $c0

	nop                                              ; $4537: $00
	ret  nz                                          ; $4538: $c0

	nop                                              ; $4539: $00
	rrca                                             ; $453a: $0f
	inc  de                                          ; $453b: $13
	rra                                              ; $453c: $1f
	rlca                                             ; $453d: $07
	rlca                                             ; $453e: $07
	inc  bc                                          ; $453f: $03
	inc  bc                                          ; $4540: $03
	inc  bc                                          ; $4541: $03
	inc  bc                                          ; $4542: $03
	ld   [bc], a                                     ; $4543: $02
	ld   bc, $0003                                   ; $4544: $01 $03 $00
	nop                                              ; $4547: $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	add  b                                           ; $454a: $80
	nop                                              ; $454b: $00
	add  b                                           ; $454c: $80
	add  b                                           ; $454d: $80
	ret  nz                                          ; $454e: $c0

	add  b                                           ; $454f: $80
	add  b                                           ; $4550: $80
	add  b                                           ; $4551: $80
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	ld   bc, $6200                                   ; $4558: $01 $00 $62
	rst  $38                                         ; $455b: $ff
	ldh  [c], a                                      ; $455c: $e2
	rst  $38                                         ; $455d: $ff
	ld   h, d                                        ; $455e: $62
	ld   a, a                                        ; $455f: $7f
	pop  af                                          ; $4560: $f1
	cp   a                                           ; $4561: $bf
	or   c                                           ; $4562: $b1
	cp   a                                           ; $4563: $bf
	ld   [hl], c                                     ; $4564: $71
	sbc  a                                           ; $4565: $9f
	ld   a, c                                        ; $4566: $79
	dec  de                                          ; $4567: $1b
	jr   z, jr_09b_4584                              ; $4568: $28 $1a

	inc  a                                           ; $456a: $3c
	inc  c                                           ; $456b: $0c
	inc  a                                           ; $456c: $3c
	inc  c                                           ; $456d: $0c
	inc  l                                           ; $456e: $2c
	dec  e                                           ; $456f: $1d
	inc  l                                           ; $4570: $2c
	dec  e                                           ; $4571: $1d
	ld   e, h                                        ; $4572: $5c
	ccf                                              ; $4573: $3f
	ld   a, h                                        ; $4574: $7c
	ccf                                              ; $4575: $3f
	db   $fc                                         ; $4576: $fc
	ld   a, a                                        ; $4577: $7f
	db   $dd                                         ; $4578: $dd
	rst  $38                                         ; $4579: $ff
	ld   c, a                                        ; $457a: $4f
	ld   hl, sp-$72                                  ; $457b: $f8 $8e
	ld   hl, sp-$72                                  ; $457d: $f8 $8e
	ld   sp, hl                                      ; $457f: $f9
	sbc  a                                           ; $4580: $9f
	rst  $30                                         ; $4581: $f7
	sbc  [hl]                                        ; $4582: $9e
	ldh  a, [c]                                      ; $4583: $f2

jr_09b_4584:
	cp   a                                           ; $4584: $bf
	ldh  a, [$3e]                                    ; $4585: $f0 $3e
	ld   [hl], b                                     ; $4587: $70
	ld   a, $78                                      ; $4588: $3e $78
	inc  c                                           ; $458a: $0c
	nop                                              ; $458b: $00
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	add  sp, -$10                                    ; $458e: $e8 $f0
	ldh  a, [$f8]                                    ; $4590: $f0 $f8
	ldh  [hScriptOpcodeParams], a                                    ; $4592: $e0 $a0
	ld   b, b                                        ; $4594: $40
	ldh  [rP1], a                                    ; $4595: $e0 $00
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	nop                                              ; $4599: $00
	inc  c                                           ; $459a: $0c
	db   $10                                         ; $459b: $10
	jr   jr_09b_459e                                 ; $459c: $18 $00

jr_09b_459e:
	rlca                                             ; $459e: $07
	inc  bc                                          ; $459f: $03
	rlca                                             ; $45a0: $07
	rlca                                             ; $45a1: $07
	inc  bc                                          ; $45a2: $03
	ld   [bc], a                                     ; $45a3: $02
	ld   bc, $0003                                   ; $45a4: $01 $03 $00
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	ldh  [c], a                                      ; $45aa: $e2
	ld   a, a                                        ; $45ab: $7f
	ldh  [c], a                                      ; $45ac: $e2
	ld   a, a                                        ; $45ad: $7f
	ld   h, d                                        ; $45ae: $62
	rst  $38                                         ; $45af: $ff
	pop  af                                          ; $45b0: $f1
	rst  $38                                         ; $45b1: $ff
	or   c                                           ; $45b2: $b1
	cp   a                                           ; $45b3: $bf
	ld   [hl], c                                     ; $45b4: $71
	sbc  a                                           ; $45b5: $9f
	ld   a, c                                        ; $45b6: $79
	dec  de                                          ; $45b7: $1b
	jr   z, jr_09b_45d4                              ; $45b8: $28 $1a

	ld   c, a                                        ; $45ba: $4f
	ld   hl, sp-$72                                  ; $45bb: $f8 $8e
	ld   hl, sp-$72                                  ; $45bd: $f8 $8e
	ld   hl, sp-$62                                  ; $45bf: $f8 $9e
	di                                               ; $45c1: $f3
	sbc  l                                           ; $45c2: $9d
	rst  $30                                         ; $45c3: $f7
	cp   a                                           ; $45c4: $bf
	ldh  a, [$3e]                                    ; $45c5: $f0 $3e
	ld   [hl], b                                     ; $45c7: $70
	ld   a, $78                                      ; $45c8: $3e $78
	inc  c                                           ; $45ca: $0c
	nop                                              ; $45cb: $00
	nop                                              ; $45cc: $00
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	inc  c                                           ; $45d0: $0c
	nop                                              ; $45d1: $00
	ld   hl, sp-$08                                  ; $45d2: $f8 $f8

jr_09b_45d4:
	ld   h, b                                        ; $45d4: $60
	ldh  [rP1], a                                    ; $45d5: $e0 $00
	nop                                              ; $45d7: $00
	nop                                              ; $45d8: $00
	nop                                              ; $45d9: $00
	inc  c                                           ; $45da: $0c
	db   $10                                         ; $45db: $10
	jr   jr_09b_45de                                 ; $45dc: $18 $00

jr_09b_45de:
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	ld   bc, $0700                                   ; $45e0: $01 $00 $07
	rlca                                             ; $45e3: $07
	inc  bc                                          ; $45e4: $03
	inc  bc                                          ; $45e5: $03
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	nop                                              ; $45e9: $00
	ldh  [c], a                                      ; $45ea: $e2
	ld   a, a                                        ; $45eb: $7f
	ldh  [c], a                                      ; $45ec: $e2
	ld   a, a                                        ; $45ed: $7f
	ldh  [c], a                                      ; $45ee: $e2
	ld   a, a                                        ; $45ef: $7f
	pop  af                                          ; $45f0: $f1
	ld   a, a                                        ; $45f1: $7f
	pop  af                                          ; $45f2: $f1
	rst  $38                                         ; $45f3: $ff
	ld   [hl], c                                     ; $45f4: $71
	sbc  a                                           ; $45f5: $9f
	ld   a, c                                        ; $45f6: $79
	dec  de                                          ; $45f7: $1b
	jr   z, jr_09b_4614                              ; $45f8: $28 $1a

	ld   [$1800], sp                                 ; $45fa: $08 $00 $18
	ld   [$081c], sp                                 ; $45fd: $08 $1c $08
	jr   jr_09b_460a                                 ; $4600: $18 $08

	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	ld   a, $24                                      ; $4604: $3e $24
	jr   jr_09b_4608                                 ; $4606: $18 $00

jr_09b_4608:
	inc  c                                           ; $4608: $0c
	nop                                              ; $4609: $00

jr_09b_460a:
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00

jr_09b_4614:
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	ld   [$1800], sp                                 ; $461a: $08 $00 $18
	ld   [$081c], sp                                 ; $461d: $08 $1c $08
	jr   @+$0a                                       ; $4620: $18 $08

	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	inc  [hl]                                        ; $4624: $34
	jr   jr_09b_464b                                 ; $4625: $18 $24

	inc  h                                           ; $4627: $24
	inc  a                                           ; $4628: $3c
	jr   jr_09b_466c                                 ; $4629: $18 $41

	jp   hl                                          ; $462b: $e9


	ld   b, e                                        ; $462c: $43
	ld   a, [$fa83]                                  ; $462d: $fa $83 $fa
	add  e                                           ; $4630: $83
	cp   $87                                         ; $4631: $fe $87
	db   $fc                                         ; $4633: $fc
	and  a                                           ; $4634: $a7
	db   $fc                                         ; $4635: $fc
	daa                                              ; $4636: $27
	db   $fc                                         ; $4637: $fc
	ld   b, a                                        ; $4638: $47
	db   $fd                                         ; $4639: $fd
	ld   c, e                                        ; $463a: $4b
	cp   $8f                                         ; $463b: $fe $8f
	ld   hl, sp-$73                                  ; $463d: $f8 $8d
	ei                                               ; $463f: $fb
	sbc  [hl]                                        ; $4640: $9e
	rst  $38                                         ; $4641: $ff
	sbc  [hl]                                        ; $4642: $9e
	ldh  a, [c]                                      ; $4643: $f2
	cp   a                                           ; $4644: $bf
	ldh  a, [$3e]                                    ; $4645: $f0 $3e
	ld   [hl], b                                     ; $4647: $70
	ld   a, $78                                      ; $4648: $3e $78
	ld   b, b                                        ; $464a: $40

jr_09b_464b:
	ret  nz                                          ; $464b: $c0

	ret  nz                                          ; $464c: $c0

	ret  nz                                          ; $464d: $c0

	ret  nz                                          ; $464e: $c0

	ret  nz                                          ; $464f: $c0

	ld   b, b                                        ; $4650: $40
	ret  nz                                          ; $4651: $c0

	ret  nz                                          ; $4652: $c0

	ld   b, b                                        ; $4653: $40
	ret  nz                                          ; $4654: $c0

	ld   b, b                                        ; $4655: $40
	ret  nz                                          ; $4656: $c0

	ld   h, b                                        ; $4657: $60
	db   $fc                                         ; $4658: $fc
	ld   hl, sp+$06                                  ; $4659: $f8 $06
	inc  bc                                          ; $465b: $03
	rlca                                             ; $465c: $07
	inc  bc                                          ; $465d: $03
	rlca                                             ; $465e: $07
	inc  bc                                          ; $465f: $03
	inc  bc                                          ; $4660: $03
	ld   b, $07                                      ; $4661: $06 $07
	inc  c                                           ; $4663: $0c
	rlca                                             ; $4664: $07
	nop                                              ; $4665: $00
	rrca                                             ; $4666: $0f
	nop                                              ; $4667: $00
	rlca                                             ; $4668: $07
	rrca                                             ; $4669: $0f
	add  [hl]                                        ; $466a: $86
	and  a                                           ; $466b: $a7

jr_09b_466c:
	add  d                                           ; $466c: $82
	add  a                                           ; $466d: $87
	add  e                                           ; $466e: $83
	add  a                                           ; $466f: $87
	add  e                                           ; $4670: $83
	xor  e                                           ; $4671: $ab
	add  c                                           ; $4672: $81
	db   $eb                                         ; $4673: $eb
	pop  bc                                          ; $4674: $c1
	rst  $30                                         ; $4675: $f7
	ret  nz                                          ; $4676: $c0

	rst  $30                                         ; $4677: $f7
	ret  nz                                          ; $4678: $c0

	rst  $38                                         ; $4679: $ff
	cp   $06                                         ; $467a: $fe $06
	add  sp, -$10                                    ; $467c: $e8 $f0
	ret  c                                           ; $467e: $d8

	ret  c                                           ; $467f: $d8

	ldh  [$f0], a                                    ; $4680: $e0 $f0
	ldh  a, [hScriptOpcodeParams]                                    ; $4682: $f0 $a0
	ld   l, b                                        ; $4684: $68
	ldh  a, [rP1]                                    ; $4685: $f0 $00
	nop                                              ; $4687: $00
	nop                                              ; $4688: $00
	nop                                              ; $4689: $00
	rrca                                             ; $468a: $0f
	jr   @+$21                                       ; $468b: $18 $1f

	inc  bc                                          ; $468d: $03
	rlca                                             ; $468e: $07
	rlca                                             ; $468f: $07
	inc  bc                                          ; $4690: $03
	inc  bc                                          ; $4691: $03
	inc  bc                                          ; $4692: $03
	ld   [bc], a                                     ; $4693: $02
	inc  bc                                          ; $4694: $03
	rlca                                             ; $4695: $07
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	ldh  [c], a                                      ; $469a: $e2
	ld   a, a                                        ; $469b: $7f
	ld   h, d                                        ; $469c: $62
	rst  $38                                         ; $469d: $ff
	ld   h, d                                        ; $469e: $62
	ld   a, a                                        ; $469f: $7f
	or   c                                           ; $46a0: $b1
	rst  $38                                         ; $46a1: $ff
	or   c                                           ; $46a2: $b1
	cp   a                                           ; $46a3: $bf
	or   c                                           ; $46a4: $b1
	rst  JumpTable                                         ; $46a5: $df
	ld   a, c                                        ; $46a6: $79
	dec  de                                          ; $46a7: $1b
	jr   z, jr_09b_46c4                              ; $46a8: $28 $1a

	ld   c, e                                        ; $46aa: $4b
	cp   $8e                                         ; $46ab: $fe $8e
	ld   hl, sp-$71                                  ; $46ad: $f8 $8f
	ld   hl, sp-$63                                  ; $46af: $f8 $9d
	ei                                               ; $46b1: $fb
	sbc  [hl]                                        ; $46b2: $9e
	or   $bf                                         ; $46b3: $f6 $bf
	ldh  a, [$3e]                                    ; $46b5: $f0 $3e
	ld   [hl], b                                     ; $46b7: $70
	ld   a, $78                                      ; $46b8: $3e $78
	cp   $06                                         ; $46ba: $fe $06
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	db   $ec                                         ; $46be: $ec
	ldh  a, [$e8]                                    ; $46bf: $f0 $e8
	ld   hl, sp+$70                                  ; $46c1: $f8 $70
	and  b                                           ; $46c3: $a0

jr_09b_46c4:
	ld   l, b                                        ; $46c4: $68
	ldh  a, [rP1]                                    ; $46c5: $f0 $00
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	rrca                                             ; $46ca: $0f
	jr   jr_09b_46e5                                 ; $46cb: $18 $18

	nop                                              ; $46cd: $00
	inc  bc                                          ; $46ce: $03
	inc  bc                                          ; $46cf: $03
	rlca                                             ; $46d0: $07
	rlca                                             ; $46d1: $07
	inc  bc                                          ; $46d2: $03
	ld   [bc], a                                     ; $46d3: $02
	inc  bc                                          ; $46d4: $03
	rlca                                             ; $46d5: $07
	nop                                              ; $46d6: $00
	nop                                              ; $46d7: $00
	nop                                              ; $46d8: $00
	nop                                              ; $46d9: $00
	ldh  [c], a                                      ; $46da: $e2
	ld   a, a                                        ; $46db: $7f
	ld   h, d                                        ; $46dc: $62
	ld   a, a                                        ; $46dd: $7f
	ld   h, d                                        ; $46de: $62
	rst  $38                                         ; $46df: $ff
	or   c                                           ; $46e0: $b1
	rst  $38                                         ; $46e1: $ff
	pop  af                                          ; $46e2: $f1
	rst  $38                                         ; $46e3: $ff
	or   c                                           ; $46e4: $b1

jr_09b_46e5:
	rst  JumpTable                                         ; $46e5: $df
	ld   a, c                                        ; $46e6: $79
	dec  de                                          ; $46e7: $1b
	jr   z, jr_09b_4704                              ; $46e8: $28 $1a

	ld   c, e                                        ; $46ea: $4b
	cp   $8f                                         ; $46eb: $fe $8f
	ld   hl, sp-$72                                  ; $46ed: $f8 $8e
	ld   hl, sp-$62                                  ; $46ef: $f8 $9e
	di                                               ; $46f1: $f3
	sbc  l                                           ; $46f2: $9d
	rst  $30                                         ; $46f3: $f7
	cp   a                                           ; $46f4: $bf
	ldh  a, [$3e]                                    ; $46f5: $f0 $3e
	ld   [hl], b                                     ; $46f7: $70
	ld   a, $78                                      ; $46f8: $3e $78
	cp   $06                                         ; $46fa: $fe $06
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	inc  c                                           ; $4700: $0c
	nop                                              ; $4701: $00
	ld   hl, sp-$08                                  ; $4702: $f8 $f8

jr_09b_4704:
	ld   h, b                                        ; $4704: $60
	ldh  [rP1], a                                    ; $4705: $e0 $00
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	rrca                                             ; $470a: $0f
	jr   @+$1a                                       ; $470b: $18 $18

	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	ld   bc, $0700                                   ; $4710: $01 $00 $07
	rlca                                             ; $4713: $07
	inc  bc                                          ; $4714: $03
	inc  bc                                          ; $4715: $03
	nop                                              ; $4716: $00
	nop                                              ; $4717: $00
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	ld   [$1800], sp                                 ; $471a: $08 $00 $18
	ld   [$081c], sp                                 ; $471d: $08 $1c $08
	jr   @+$0a                                       ; $4720: $18 $08

	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	ld   d, $64                                      ; $4724: $16 $64
	ld   h, h                                        ; $4726: $64
	inc  h                                           ; $4727: $24
	inc  a                                           ; $4728: $3c
	jr   jr_09b_4737                                 ; $4729: $18 $0c

	nop                                              ; $472b: $00
	jr   jr_09b_472e                                 ; $472c: $18 $00

jr_09b_472e:
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	nop                                              ; $4732: $00
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	nop                                              ; $4736: $00

jr_09b_4737:
	nop                                              ; $4737: $00
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	ld   b, c                                        ; $473a: $41
	jp   hl                                          ; $473b: $e9


	ld   b, e                                        ; $473c: $43
	ld   a, [$fa83]                                  ; $473d: $fa $83 $fa
	add  e                                           ; $4740: $83
	cp   $87                                         ; $4741: $fe $87
	db   $fc                                         ; $4743: $fc
	and  h                                           ; $4744: $a4
	rst  $38                                         ; $4745: $ff
	daa                                              ; $4746: $27
	db   $fc                                         ; $4747: $fc
	ld   b, a                                        ; $4748: $47
	db   $fc                                         ; $4749: $fc
	ld   b, b                                        ; $474a: $40
	ret  nz                                          ; $474b: $c0

	ret  nz                                          ; $474c: $c0

	ret  nz                                          ; $474d: $c0

	ret  nz                                          ; $474e: $c0

	ret  nz                                          ; $474f: $c0

	ld   b, b                                        ; $4750: $40
	ret  nz                                          ; $4751: $c0

	ret  nz                                          ; $4752: $c0

	ld   b, b                                        ; $4753: $40
	ld   b, b                                        ; $4754: $40
	ret  nz                                          ; $4755: $c0

	ret  nz                                          ; $4756: $c0

	ldh  [$f4], a                                    ; $4757: $e0 $f4
	jr   c, jr_09b_4761                              ; $4759: $38 $06

	inc  bc                                          ; $475b: $03
	rlca                                             ; $475c: $07
	inc  bc                                          ; $475d: $03
	rlca                                             ; $475e: $07
	inc  bc                                          ; $475f: $03
	inc  bc                                          ; $4760: $03

jr_09b_4761:
	ld   b, $07                                      ; $4761: $06 $07
	inc  c                                           ; $4763: $0c
	rlca                                             ; $4764: $07
	nop                                              ; $4765: $00
	rrca                                             ; $4766: $0f
	ld   bc, $061b                                   ; $4767: $01 $1b $06
	ld   [$d6f6], a                                  ; $476a: $ea $f6 $d6
	ret  c                                           ; $476d: $d8

	ld   hl, sp-$20                                  ; $476e: $f8 $e0
	ldh  a, [hScriptOpcodeParams]                                    ; $4770: $f0 $a0
	ldh  [$e0], a                                    ; $4772: $e0 $e0
	ld   b, b                                        ; $4774: $40
	ldh  [rP1], a                                    ; $4775: $e0 $00
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00
	rra                                              ; $477a: $1f
	dec  c                                           ; $477b: $0d
	rrca                                             ; $477c: $0f
	rla                                              ; $477d: $17
	rlca                                             ; $477e: $07
	inc  bc                                          ; $477f: $03

Call_09b_4780:
	inc  bc                                          ; $4780: $03
	inc  bc                                          ; $4781: $03
	inc  bc                                          ; $4782: $03
	ld   [bc], a                                     ; $4783: $02
	ld   bc, $0003                                   ; $4784: $01 $03 $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00
	ld   c, a                                        ; $478a: $4f
	ld   hl, sp-$72                                  ; $478b: $f8 $8e
	ld   hl, sp-$71                                  ; $478d: $f8 $8f
	ld   sp, hl                                      ; $478f: $f9
	sbc  a                                           ; $4790: $9f
	di                                               ; $4791: $f3
	sbc  a                                           ; $4792: $9f
	or   $bf                                         ; $4793: $f6 $bf
	ldh  a, [$3e]                                    ; $4795: $f0 $3e
	ld   [hl], b                                     ; $4797: $70
	ld   a, $78                                      ; $4798: $3e $78
	ld   a, [de]                                     ; $479a: $1a
	ld   b, $06                                      ; $479b: $06 $06
	nop                                              ; $479d: $00
	add  sp, -$10                                    ; $479e: $e8 $f0
	ldh  a, [$b8]                                    ; $47a0: $f0 $b8
	ldh  a, [$e0]                                    ; $47a2: $f0 $e0
	ld   b, b                                        ; $47a4: $40
	ldh  [rP1], a                                    ; $47a5: $e0 $00
	nop                                              ; $47a7: $00
	nop                                              ; $47a8: $00
	nop                                              ; $47a9: $00
	rra                                              ; $47aa: $1f
	inc  c                                           ; $47ab: $0c
	rrca                                             ; $47ac: $0f
	db   $10                                         ; $47ad: $10
	rlca                                             ; $47ae: $07
	inc  bc                                          ; $47af: $03
	rlca                                             ; $47b0: $07
	rlca                                             ; $47b1: $07
	inc  bc                                          ; $47b2: $03
	ld   [bc], a                                     ; $47b3: $02
	ld   bc, $0003                                   ; $47b4: $01 $03 $00
	nop                                              ; $47b7: $00
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	ldh  [c], a                                      ; $47ba: $e2
	ld   a, a                                        ; $47bb: $7f
	ldh  [c], a                                      ; $47bc: $e2
	ld   a, a                                        ; $47bd: $7f
	ld   h, d                                        ; $47be: $62
	rst  $38                                         ; $47bf: $ff
	pop  af                                          ; $47c0: $f1
	rst  $38                                         ; $47c1: $ff
	pop  af                                          ; $47c2: $f1
	cp   a                                           ; $47c3: $bf
	ld   [hl], c                                     ; $47c4: $71
	sbc  a                                           ; $47c5: $9f
	ld   a, c                                        ; $47c6: $79
	dec  de                                          ; $47c7: $1b
	jr   z, jr_09b_47e4                              ; $47c8: $28 $1a

	ld   a, [de]                                     ; $47ca: $1a
	ld   b, $06                                      ; $47cb: $06 $06
	nop                                              ; $47cd: $00
	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	inc  c                                           ; $47d0: $0c
	nop                                              ; $47d1: $00
	ld   hl, sp-$08                                  ; $47d2: $f8 $f8
	ld   h, b                                        ; $47d4: $60
	ldh  [rP1], a                                    ; $47d5: $e0 $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	rra                                              ; $47da: $1f
	inc  c                                           ; $47db: $0c
	inc  c                                           ; $47dc: $0c
	stop                                             ; $47dd: $10 $00
	nop                                              ; $47df: $00
	ld   bc, $0700                                   ; $47e0: $01 $00 $07
	rlca                                             ; $47e3: $07

jr_09b_47e4:
	inc  bc                                          ; $47e4: $03
	inc  bc                                          ; $47e5: $03
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	ld   [$1800], sp                                 ; $47ea: $08 $00 $18
	ld   [$081c], sp                                 ; $47ed: $08 $1c $08
	jr   jr_09b_47fa                                 ; $47f0: $18 $08

	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	ld   a, $24                                      ; $47f4: $3e $24
	jr   nc, jr_09b_47f8                             ; $47f6: $30 $00

jr_09b_47f8:
	jr   jr_09b_47fa                                 ; $47f8: $18 $00

jr_09b_47fa:
	ld   [$1800], sp                                 ; $47fa: $08 $00 $18
	ld   [$081c], sp                                 ; $47fd: $08 $1c $08
	jr   @+$0a                                       ; $4800: $18 $08

	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	inc  l                                           ; $4804: $2c
	jr   jr_09b_4807                                 ; $4805: $18 $00

jr_09b_4807:
	inc  h                                           ; $4807: $24
	inc  h                                           ; $4808: $24
	jr   jr_09b_484c                                 ; $4809: $18 $41

	jp   hl                                          ; $480b: $e9


	ld   b, e                                        ; $480c: $43
	ld   a, [$fa83]                                  ; $480d: $fa $83 $fa
	add  e                                           ; $4810: $83
	cp   $87                                         ; $4811: $fe $87
	db   $fc                                         ; $4813: $fc
	and  a                                           ; $4814: $a7
	db   $fc                                         ; $4815: $fc
	daa                                              ; $4816: $27
	db   $fc                                         ; $4817: $fc
	ld   b, a                                        ; $4818: $47
	db   $fc                                         ; $4819: $fc
	ld   c, e                                        ; $481a: $4b
	rst  $38                                         ; $481b: $ff
	adc  a                                           ; $481c: $8f
	ld   sp, hl                                      ; $481d: $f9
	adc  l                                           ; $481e: $8d
	ei                                               ; $481f: $fb
	sbc  [hl]                                        ; $4820: $9e
	cp   $9e                                         ; $4821: $fe $9e
	ldh  a, [c]                                      ; $4823: $f2
	cp   a                                           ; $4824: $bf
	ldh  a, [$3e]                                    ; $4825: $f0 $3e
	ld   [hl], b                                     ; $4827: $70
	ld   a, $78                                      ; $4828: $3e $78
	ld   b, b                                        ; $482a: $40
	ret  nz                                          ; $482b: $c0

	ret  nz                                          ; $482c: $c0

	ret  nz                                          ; $482d: $c0

	ret  nz                                          ; $482e: $c0

	ret  nz                                          ; $482f: $c0

	ld   b, b                                        ; $4830: $40
	ret  nz                                          ; $4831: $c0

	ret  nz                                          ; $4832: $c0

	ld   b, b                                        ; $4833: $40
	ret  nz                                          ; $4834: $c0

	ld   b, b                                        ; $4835: $40
	jp   nz, Jump_09b_766e                           ; $4836: $c2 $6e $76

	ld   hl, sp+$06                                  ; $4839: $f8 $06
	inc  bc                                          ; $483b: $03
	rlca                                             ; $483c: $07
	inc  bc                                          ; $483d: $03
	rlca                                             ; $483e: $07
	inc  bc                                          ; $483f: $03
	inc  bc                                          ; $4840: $03
	ld   b, $07                                      ; $4841: $06 $07
	inc  c                                           ; $4843: $0c
	rlca                                             ; $4844: $07
	nop                                              ; $4845: $00
	dec  bc                                          ; $4846: $0b
	inc  e                                           ; $4847: $1c
	ld   a, [de]                                     ; $4848: $1a
	rlca                                             ; $4849: $07
	ld   a, h                                        ; $484a: $7c
	add  b                                           ; $484b: $80

jr_09b_484c:
	ret  nz                                          ; $484c: $c0

	ld   hl, sp-$30                                  ; $484d: $f8 $d0
	ret  c                                           ; $484f: $d8

	ldh  a, [$e0]                                    ; $4850: $f0 $e0
	ldh  [hScriptOpcodeParams], a                                    ; $4852: $e0 $a0
	ld   h, b                                        ; $4854: $60
	ldh  a, [rP1]                                    ; $4855: $f0 $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	nop                                              ; $4859: $00
	rrca                                             ; $485a: $0f
	nop                                              ; $485b: $00
	dec  bc                                          ; $485c: $0b
	rlca                                             ; $485d: $07
	rlca                                             ; $485e: $07
	rlca                                             ; $485f: $07
	inc  bc                                          ; $4860: $03
	inc  bc                                          ; $4861: $03
	inc  bc                                          ; $4862: $03
	ld   [bc], a                                     ; $4863: $02
	inc  bc                                          ; $4864: $03
	rlca                                             ; $4865: $07
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	ldh  [c], a                                      ; $486a: $e2
	rst  $38                                         ; $486b: $ff
	ld   h, d                                        ; $486c: $62
	rst  $38                                         ; $486d: $ff
	ld   h, d                                        ; $486e: $62
	ld   a, a                                        ; $486f: $7f
	pop  af                                          ; $4870: $f1
	cp   a                                           ; $4871: $bf
	or   c                                           ; $4872: $b1
	cp   a                                           ; $4873: $bf
	ld   [hl], c                                     ; $4874: $71
	sbc  a                                           ; $4875: $9f
	ld   a, c                                        ; $4876: $79
	dec  de                                          ; $4877: $1b
	jr   z, jr_09b_4894                              ; $4878: $28 $1a

	ld   c, e                                        ; $487a: $4b
	rst  $38                                         ; $487b: $ff
	adc  a                                           ; $487c: $8f
	ld   hl, sp-$71                                  ; $487d: $f8 $8f
	ld   sp, hl                                      ; $487f: $f9
	sbc  l                                           ; $4880: $9d
	ei                                               ; $4881: $fb
	sbc  a                                           ; $4882: $9f
	or   $bf                                         ; $4883: $f6 $bf
	ldh  a, [$3e]                                    ; $4885: $f0 $3e
	ld   [hl], b                                     ; $4887: $70
	ld   a, $78                                      ; $4888: $3e $78
	ld   a, h                                        ; $488a: $7c
	add  b                                           ; $488b: $80
	nop                                              ; $488c: $00
	nop                                              ; $488d: $00
	add  sp, -$10                                    ; $488e: $e8 $f0
	ldh  a, [$f8]                                    ; $4890: $f0 $f8
	ldh  a, [hScriptOpcodeParams]                                    ; $4892: $f0 $a0

jr_09b_4894:
	ld   h, b                                        ; $4894: $60
	ldh  a, [rP1]                                    ; $4895: $f0 $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	rrca                                             ; $489a: $0f
	nop                                              ; $489b: $00
	ld   bc, $0700                                   ; $489c: $01 $00 $07
	inc  bc                                          ; $489f: $03
	rlca                                             ; $48a0: $07
	rlca                                             ; $48a1: $07
	rlca                                             ; $48a2: $07
	ld   [bc], a                                     ; $48a3: $02
	inc  bc                                          ; $48a4: $03
	rlca                                             ; $48a5: $07
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	nop                                              ; $48a8: $00
	nop                                              ; $48a9: $00
	ldh  [c], a                                      ; $48aa: $e2
	rst  $38                                         ; $48ab: $ff
	ldh  [c], a                                      ; $48ac: $e2
	ld   a, a                                        ; $48ad: $7f
	ld   h, d                                        ; $48ae: $62
	rst  $38                                         ; $48af: $ff
	pop  af                                          ; $48b0: $f1
	rst  $38                                         ; $48b1: $ff
	pop  af                                          ; $48b2: $f1
	cp   a                                           ; $48b3: $bf
	ld   [hl], c                                     ; $48b4: $71
	sbc  a                                           ; $48b5: $9f
	ld   a, c                                        ; $48b6: $79
	dec  de                                          ; $48b7: $1b
	jr   z, jr_09b_48d4                              ; $48b8: $28 $1a

	ld   c, e                                        ; $48ba: $4b
	rst  $38                                         ; $48bb: $ff
	adc  a                                           ; $48bc: $8f
	ld   hl, sp-$72                                  ; $48bd: $f8 $8e
	ld   hl, sp-$62                                  ; $48bf: $f8 $9e
	di                                               ; $48c1: $f3
	sbc  l                                           ; $48c2: $9d
	rst  $30                                         ; $48c3: $f7
	cp   a                                           ; $48c4: $bf
	ldh  a, [$3e]                                    ; $48c5: $f0 $3e
	ld   [hl], b                                     ; $48c7: $70
	ld   a, $78                                      ; $48c8: $3e $78
	ld   a, h                                        ; $48ca: $7c
	add  b                                           ; $48cb: $80
	nop                                              ; $48cc: $00
	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00
	nop                                              ; $48cf: $00
	inc  c                                           ; $48d0: $0c
	nop                                              ; $48d1: $00
	ld   hl, sp-$08                                  ; $48d2: $f8 $f8

jr_09b_48d4:
	ld   h, b                                        ; $48d4: $60
	ldh  [rP1], a                                    ; $48d5: $e0 $00
	nop                                              ; $48d7: $00
	nop                                              ; $48d8: $00
	nop                                              ; $48d9: $00
	rrca                                             ; $48da: $0f
	nop                                              ; $48db: $00
	nop                                              ; $48dc: $00
	nop                                              ; $48dd: $00
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	ld   bc, $0700                                   ; $48e0: $01 $00 $07
	rlca                                             ; $48e3: $07
	inc  bc                                          ; $48e4: $03
	inc  bc                                          ; $48e5: $03
	nop                                              ; $48e6: $00
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00
	nop                                              ; $48e9: $00
	ldh  [c], a                                      ; $48ea: $e2
	rst  $38                                         ; $48eb: $ff
	ldh  [c], a                                      ; $48ec: $e2
	ld   a, a                                        ; $48ed: $7f
	ldh  [c], a                                      ; $48ee: $e2
	ld   a, a                                        ; $48ef: $7f
	pop  af                                          ; $48f0: $f1
	ld   a, a                                        ; $48f1: $7f
	pop  af                                          ; $48f2: $f1
	rst  $38                                         ; $48f3: $ff
	ld   [hl], c                                     ; $48f4: $71
	sbc  a                                           ; $48f5: $9f
	ld   a, c                                        ; $48f6: $79
	dec  de                                          ; $48f7: $1b
	jr   z, jr_09b_4914                              ; $48f8: $28 $1a

	ld   [$1800], sp                                 ; $48fa: $08 $00 $18
	ld   [$081c], sp                                 ; $48fd: $08 $1c $08
	jr   @+$0a                                       ; $4900: $18 $08

	nop                                              ; $4902: $00
	nop                                              ; $4903: $00
	ld   a, [hl-]                                    ; $4904: $3a
	inc  e                                           ; $4905: $1c
	ld   [bc], a                                     ; $4906: $02
	inc  h                                           ; $4907: $24
	inc  l                                           ; $4908: $2c
	jr   jr_09b_4923                                 ; $4909: $18 $18

	nop                                              ; $490b: $00
	nop                                              ; $490c: $00
	nop                                              ; $490d: $00
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	nop                                              ; $4910: $00
	nop                                              ; $4911: $00
	nop                                              ; $4912: $00
	nop                                              ; $4913: $00

jr_09b_4914:
	nop                                              ; $4914: $00
	nop                                              ; $4915: $00
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	nop                                              ; $4918: $00
	nop                                              ; $4919: $00
	dec  hl                                          ; $491a: $2b
	cp   a                                           ; $491b: $bf
	dec  e                                           ; $491c: $1d
	cp   a                                           ; $491d: $bf
	sbc  a                                           ; $491e: $9f
	rst  JumpTable                                         ; $491f: $df
	rst  $28                                         ; $4920: $ef
	cp   $7f                                         ; $4921: $fe $7f

jr_09b_4923:
	ld   a, [hl]                                     ; $4923: $7e
	ccf                                              ; $4924: $3f
	di                                               ; $4925: $f3
	ld   e, $f8                                      ; $4926: $1e $f8
	ld   c, $f8                                      ; $4928: $0e $f8
	or   h                                           ; $492a: $b4
	rst  $38                                         ; $492b: $ff
	or   d                                           ; $492c: $b2
	rst  $38                                         ; $492d: $ff
	or   d                                           ; $492e: $b2
	rst  $38                                         ; $492f: $ff
	pop  af                                          ; $4930: $f1
	rst  JumpTable                                         ; $4931: $df
	pop  af                                          ; $4932: $f1
	rra                                              ; $4933: $1f
	ld   hl, sp+$1f                                  ; $4934: $f8 $1f
	jr   c, jr_09b_4957                              ; $4936: $38 $1f

	jr   z, jr_09b_4959                              ; $4938: $28 $1f

	ld   bc, $00fb                                   ; $493a: $01 $fb $00
	db   $fd                                         ; $493d: $fd
	nop                                              ; $493e: $00
	cp   $00                                         ; $493f: $fe $00
	ei                                               ; $4941: $fb
	nop                                              ; $4942: $00
	call c, $e180                                    ; $4943: $dc $80 $e1
	ld   b, b                                        ; $4946: $40
	ldh  a, [rAUD4LEN]                               ; $4947: $f0 $20
	ei                                               ; $4949: $fb
	add  [hl]                                        ; $494a: $86
	cp   $ee                                         ; $494b: $fe $ee
	cp   $7e                                         ; $494d: $fe $7e
	ld   a, [hl]                                     ; $494f: $7e
	ld   e, $3e                                      ; $4950: $1e $3e
	ld   [bc], a                                     ; $4952: $02
	ld   c, $02                                      ; $4953: $0e $02
	add  d                                           ; $4955: $82
	ld   [bc], a                                     ; $4956: $02

jr_09b_4957:
	cp   $02                                         ; $4957: $fe $02

jr_09b_4959:
	ld   a, $fc                                      ; $4959: $3e $fc
	ld   hl, sp+$3c                                  ; $495b: $f8 $3c
	ldh  a, [$fc]                                    ; $495d: $f0 $fc
	ldh  a, [$3c]                                    ; $495f: $f0 $3c
	ld   hl, sp-$04                                  ; $4961: $f8 $fc
	ldh  a, [$fc]                                    ; $4963: $f0 $fc
	ldh  [$f8], a                                    ; $4965: $e0 $f8
	ldh  [$f8], a                                    ; $4967: $e0 $f8
	ldh  [rAUD2LOW], a                               ; $4969: $e0 $18
	rrca                                             ; $496b: $0f
	dec  e                                           ; $496c: $1d
	rrca                                             ; $496d: $0f
	ld   e, $0f                                      ; $496e: $1e $0f
	rlca                                             ; $4970: $07
	rrca                                             ; $4971: $0f
	rrca                                             ; $4972: $0f
	dec  b                                           ; $4973: $05
	rlca                                             ; $4974: $07
	inc  b                                           ; $4975: $04
	inc  bc                                          ; $4976: $03
	ld   [bc], a                                     ; $4977: $02
	ld   [bc], a                                     ; $4978: $02
	ld   [bc], a                                     ; $4979: $02
	jr   @+$01                                       ; $497a: $18 $ff

	ld   c, $ff                                      ; $497c: $0e $ff
	add  a                                           ; $497e: $87
	rst  $38                                         ; $497f: $ff
	ld   b, c                                        ; $4980: $41
	rst  $38                                         ; $4981: $ff
	jr   nz, @+$01                                   ; $4982: $20 $ff

	ret  c                                           ; $4984: $d8

	rst  $38                                         ; $4985: $ff
	rst  $20                                         ; $4986: $e7
	ld   a, a                                        ; $4987: $7f
	pop  af                                          ; $4988: $f1
	ccf                                              ; $4989: $3f
	ld   [bc], a                                     ; $498a: $02
	cp   $06                                         ; $498b: $fe $06
	cp   $fe                                         ; $498d: $fe $fe
	cp   $fe                                         ; $498f: $fe $fe
	cp   $06                                         ; $4991: $fe $06
	cp   $1e                                         ; $4993: $fe $1e
	cp   $fe                                         ; $4995: $fe $fe
	cp   $fe                                         ; $4997: $fe $fe
	cp   $f9                                         ; $4999: $fe $f9
	rst  ToBoot                                         ; $499b: $c7
	db   $e4                                         ; $499c: $e4
	sbc  b                                           ; $499d: $98
	rst  $38                                         ; $499e: $ff
	pop  bc                                          ; $499f: $c1
	or   $8e                                         ; $49a0: $f6 $8e
	db   $e3                                         ; $49a2: $e3
	add  e                                           ; $49a3: $83
	pop  hl                                          ; $49a4: $e1
	ld   bc, $80e0                                   ; $49a5: $01 $e0 $80
	ldh  a, [$80]                                    ; $49a8: $f0 $80
	ld   sp, hl                                      ; $49aa: $f9
	pop  af                                          ; $49ab: $f1
	halt                                             ; $49ac: $76
	inc  c                                           ; $49ad: $0c
	add  sp, -$0d                                    ; $49ae: $e8 $f3
	cp   b                                           ; $49b0: $b8
	xor  h                                           ; $49b1: $ac
	add  b                                           ; $49b2: $80
	ret  nz                                          ; $49b3: $c0

	ldh  a, [$e0]                                    ; $49b4: $f0 $e0
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	nop                                              ; $49b8: $00
	nop                                              ; $49b9: $00
	ld   a, h                                        ; $49ba: $7c
	rrca                                             ; $49bb: $0f
	sbc  a                                           ; $49bc: $9f
	add  e                                           ; $49bd: $83
	ld   l, a                                        ; $49be: $6f
	ld   h, c                                        ; $49bf: $61
	ld   b, $02                                      ; $49c0: $06 $02
	rlca                                             ; $49c2: $07
	inc  bc                                          ; $49c3: $03
	ld   [bc], a                                     ; $49c4: $02
	inc  bc                                          ; $49c5: $03
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	ld   [bc], a                                     ; $49ca: $02
	cp   $0e                                         ; $49cb: $fe $0e
	cp   $fe                                         ; $49cd: $fe $fe
	cp   $aa                                         ; $49cf: $fe $aa
	cp   d                                           ; $49d1: $ba
	ld   a, [de]                                     ; $49d2: $1a
	sbc  d                                           ; $49d3: $9a
	sub  d                                           ; $49d4: $92
	ld   [de], a                                     ; $49d5: $12
	ld   [de], a                                     ; $49d6: $12
	ld   [de], a                                     ; $49d7: $12
	ld   [de], a                                     ; $49d8: $12
	ld   [de], a                                     ; $49d9: $12
	ldh  a, [$80]                                    ; $49da: $f0 $80
	ld   hl, sp-$40                                  ; $49dc: $f8 $c0
	ld   hl, sp+$00                                  ; $49de: $f8 $00
	db   $fc                                         ; $49e0: $fc
	ret  nz                                          ; $49e1: $c0

	db   $fc                                         ; $49e2: $fc
	ret  nz                                          ; $49e3: $c0

	cp   $c0                                         ; $49e4: $fe $c0
	rst  $38                                         ; $49e6: $ff
	ret  nz                                          ; $49e7: $c0

	ld   a, a                                        ; $49e8: $7f
	ld   b, b                                        ; $49e9: $40
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00
	nop                                              ; $49f0: $00
	nop                                              ; $49f1: $00
	nop                                              ; $49f2: $00
	nop                                              ; $49f3: $00
	ld   bc, $0001                                   ; $49f4: $01 $01 $00
	nop                                              ; $49f7: $00
	nop                                              ; $49f8: $00
	nop                                              ; $49f9: $00
	jr   nz, jr_09b_49fc                             ; $49fa: $20 $00

jr_09b_49fc:
	ld   l, b                                        ; $49fc: $68
	nop                                              ; $49fd: $00
	add  sp, $08                                     ; $49fe: $e8 $08
	ld   d, b                                        ; $4a00: $50
	stop                                             ; $4a01: $10 $00
	nop                                              ; $4a03: $00
	jr   nz, @-$5e                                   ; $4a04: $20 $a0

	ld   bc, wVisitedTitleScreen                                   ; $4a06: $01 $01 $c2
	ld   [bc], a                                     ; $4a09: $02
	ld   [hl+], a                                    ; $4a0a: $22
	ld   [hl+], a                                    ; $4a0b: $22
	ld   [hl+], a                                    ; $4a0c: $22
	ld   [hl+], a                                    ; $4a0d: $22
	ld   [hl+], a                                    ; $4a0e: $22
	ld   [hl+], a                                    ; $4a0f: $22
	ld   b, d                                        ; $4a10: $42
	ld   b, d                                        ; $4a11: $42
	ld   b, d                                        ; $4a12: $42
	ld   b, d                                        ; $4a13: $42
	add  d                                           ; $4a14: $82
	add  d                                           ; $4a15: $82
	ld   [bc], a                                     ; $4a16: $02
	ld   [bc], a                                     ; $4a17: $02
	ld   [bc], a                                     ; $4a18: $02
	ld   [bc], a                                     ; $4a19: $02
	ld   a, a                                        ; $4a1a: $7f
	ld   b, d                                        ; $4a1b: $42
	rst  $38                                         ; $4a1c: $ff
	pop  bc                                          ; $4a1d: $c1
	rst  $38                                         ; $4a1e: $ff
	ret  nz                                          ; $4a1f: $c0

	rst  $38                                         ; $4a20: $ff
	ld   hl, sp-$01                                  ; $4a21: $f8 $ff
	cp   $7f                                         ; $4a23: $fe $7f
	rst  $38                                         ; $4a25: $ff
	rra                                              ; $4a26: $1f
	rst  $38                                         ; $4a27: $ff
	rlca                                             ; $4a28: $07
	rst  $38                                         ; $4a29: $ff
	add  b                                           ; $4a2a: $80
	nop                                              ; $4a2b: $00
	ret  nz                                          ; $4a2c: $c0

	nop                                              ; $4a2d: $00
	ldh  [$80], a                                    ; $4a2e: $e0 $80
	ldh  a, [$60]                                    ; $4a30: $f0 $60
	ld   hl, sp+$18                                  ; $4a32: $f8 $18
	rst  $38                                         ; $4a34: $ff
	rst  ToBoot                                         ; $4a35: $c7
	rst  $38                                         ; $4a36: $ff
	ldh  a, [rIE]                                    ; $4a37: $f0 $ff
	db   $fc                                         ; $4a39: $fc
	inc  b                                           ; $4a3a: $04
	inc  b                                           ; $4a3b: $04
	ld   [$1008], sp                                 ; $4a3c: $08 $08 $10
	db   $10                                         ; $4a3f: $10
	jr   nz, jr_09b_4a62                             ; $4a40: $20 $20

	ret  nz                                          ; $4a42: $c0

	ld   b, b                                        ; $4a43: $40
	ret  nz                                          ; $4a44: $c0

	ret  nz                                          ; $4a45: $c0

	ldh  [$e0], a                                    ; $4a46: $e0 $e0
	ldh  a, [$f0]                                    ; $4a48: $f0 $f0
	ld   [bc], a                                     ; $4a4a: $02
	ld   [bc], a                                     ; $4a4b: $02
	ld   [bc], a                                     ; $4a4c: $02
	ld   [bc], a                                     ; $4a4d: $02
	ld   [bc], a                                     ; $4a4e: $02
	ld   [bc], a                                     ; $4a4f: $02
	ld   [bc], a                                     ; $4a50: $02
	ld   [bc], a                                     ; $4a51: $02
	ld   [bc], a                                     ; $4a52: $02
	ld   [bc], a                                     ; $4a53: $02
	ld   [bc], a                                     ; $4a54: $02
	ld   [bc], a                                     ; $4a55: $02
	ld   [bc], a                                     ; $4a56: $02
	ld   [bc], a                                     ; $4a57: $02
	ld   [bc], a                                     ; $4a58: $02
	ld   [bc], a                                     ; $4a59: $02
	nop                                              ; $4a5a: $00
	rst  $38                                         ; $4a5b: $ff
	nop                                              ; $4a5c: $00
	rst  $38                                         ; $4a5d: $ff
	ret  nz                                          ; $4a5e: $c0

	rst  $38                                         ; $4a5f: $ff
	ldh  [$3f], a                                    ; $4a60: $e0 $3f

jr_09b_4a62:
	ld   hl, sp-$61                                  ; $4a62: $f8 $9f
	rst  $38                                         ; $4a64: $ff
	rlca                                             ; $4a65: $07
	rst  $38                                         ; $4a66: $ff
	nop                                              ; $4a67: $00
	rst  $38                                         ; $4a68: $ff
	nop                                              ; $4a69: $00
	rst  $38                                         ; $4a6a: $ff
	rst  $38                                         ; $4a6b: $ff
	rra                                              ; $4a6c: $1f
	rst  $38                                         ; $4a6d: $ff
	rlca                                             ; $4a6e: $07
	adc  a                                           ; $4a6f: $8f
	rlca                                             ; $4a70: $07
	adc  a                                           ; $4a71: $8f
	rlca                                             ; $4a72: $07
	adc  a                                           ; $4a73: $8f
	rlca                                             ; $4a74: $07
	rst  JumpTable                                         ; $4a75: $df
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	inc  bc                                          ; $4a79: $03
	ldh  a, [$f0]                                    ; $4a7a: $f0 $f0
	ldh  a, [$f0]                                    ; $4a7c: $f0 $f0
	ret  nc                                          ; $4a7e: $d0

	ret  nc                                          ; $4a7f: $d0

	call c, $dedc                                    ; $4a80: $dc $dc $de
	jp   nc, $e3ff                                   ; $4a83: $d2 $ff $e3

	rst  $38                                         ; $4a86: $ff
	ret  z                                           ; $4a87: $c8

	rst  $38                                         ; $4a88: $ff
	ld   [hl], b                                     ; $4a89: $70
	ld   [bc], a                                     ; $4a8a: $02
	ld   [bc], a                                     ; $4a8b: $02
	ld   [bc], a                                     ; $4a8c: $02
	ld   [bc], a                                     ; $4a8d: $02
	ld   [bc], a                                     ; $4a8e: $02
	ld   [bc], a                                     ; $4a8f: $02
	ld   [bc], a                                     ; $4a90: $02
	ld   [bc], a                                     ; $4a91: $02
	ld   [bc], a                                     ; $4a92: $02
	ld   [bc], a                                     ; $4a93: $02
	jp   nz, $fec2                                   ; $4a94: $c2 $c2 $fe

	ld   a, $e6                                      ; $4a97: $3e $e6
	ld   h, $f9                                      ; $4a99: $26 $f9
	rst  ToBoot                                         ; $4a9b: $c7
	db   $e4                                         ; $4a9c: $e4
	sbc  b                                           ; $4a9d: $98
	db   $fc                                         ; $4a9e: $fc
	ret  nz                                          ; $4a9f: $c0

	cp   $81                                         ; $4aa0: $fe $81
	db   $e3                                         ; $4aa2: $e3
	adc  a                                           ; $4aa3: $8f
	ldh  [rP1], a                                    ; $4aa4: $e0 $00
	ldh  [$80], a                                    ; $4aa6: $e0 $80
	ldh  a, [$80]                                    ; $4aa8: $f0 $80
	ld   sp, hl                                      ; $4aaa: $f9
	pop  af                                          ; $4aab: $f1
	inc  d                                           ; $4aac: $14
	ld   c, $e2                                      ; $4aad: $0e $e2
	ld   bc, $f8f0                                   ; $4aaf: $01 $f0 $f8
	ld   e, b                                        ; $4ab2: $58
	add  h                                           ; $4ab3: $84
	nop                                              ; $4ab4: $00
	nop                                              ; $4ab5: $00
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	nop                                              ; $4ab8: $00
	nop                                              ; $4ab9: $00
	ld   a, h                                        ; $4aba: $7c
	rrca                                             ; $4abb: $0f
	sbc  a                                           ; $4abc: $9f
	add  e                                           ; $4abd: $83
	ld   l, a                                        ; $4abe: $6f
	ld   h, b                                        ; $4abf: $60
	ld   bc, $0201                                   ; $4ac0: $01 $01 $02
	ld   [bc], a                                     ; $4ac3: $02
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	nop                                              ; $4ac9: $00
	ld   [bc], a                                     ; $4aca: $02
	cp   $0e                                         ; $4acb: $fe $0e
	cp   $fe                                         ; $4acd: $fe $fe
	cp   $8a                                         ; $4acf: $fe $8a
	sbc  d                                           ; $4ad1: $9a
	ld   e, d                                        ; $4ad2: $5a
	ld   e, d                                        ; $4ad3: $5a
	ld   [de], a                                     ; $4ad4: $12
	ld   [de], a                                     ; $4ad5: $12
	ld   [de], a                                     ; $4ad6: $12
	ld   [de], a                                     ; $4ad7: $12
	ld   [de], a                                     ; $4ad8: $12
	ld   [de], a                                     ; $4ad9: $12
	nop                                              ; $4ada: $00
	nop                                              ; $4adb: $00
	nop                                              ; $4adc: $00
	nop                                              ; $4add: $00
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	inc  bc                                          ; $4ae4: $03
	ld   bc, $0000                                   ; $4ae5: $01 $00 $00
	nop                                              ; $4ae8: $00
	nop                                              ; $4ae9: $00
	ld   sp, hl                                      ; $4aea: $f9
	rst  ToBoot                                         ; $4aeb: $c7
	db   $e4                                         ; $4aec: $e4
	sbc  b                                           ; $4aed: $98
	rst  $38                                         ; $4aee: $ff
	pop  bc                                          ; $4aef: $c1
	or   $8e                                         ; $4af0: $f6 $8e
	db   $e3                                         ; $4af2: $e3
	add  e                                           ; $4af3: $83
	pop  hl                                          ; $4af4: $e1
	ld   bc, $80e0                                   ; $4af5: $01 $e0 $80
	ldh  a, [$80]                                    ; $4af8: $f0 $80
	pop  af                                          ; $4afa: $f1
	pop  hl                                          ; $4afb: $e1
	ld   l, [hl]                                     ; $4afc: $6e
	inc  e                                           ; $4afd: $1c
	xor  $f3                                         ; $4afe: $ee $f3
	cp   b                                           ; $4b00: $b8
	xor  h                                           ; $4b01: $ac
	add  b                                           ; $4b02: $80
	ret  nz                                          ; $4b03: $c0

	ldh  a, [$e0]                                    ; $4b04: $f0 $e0
	nop                                              ; $4b06: $00
	nop                                              ; $4b07: $00
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	jr   nz, jr_09b_4b0c                             ; $4b0a: $20 $00

jr_09b_4b0c:
	ld   l, b                                        ; $4b0c: $68
	nop                                              ; $4b0d: $00
	add  sp, $08                                     ; $4b0e: $e8 $08
	ld   d, b                                        ; $4b10: $50
	stop                                             ; $4b11: $10 $00
	nop                                              ; $4b13: $00
	ld   h, b                                        ; $4b14: $60
	and  b                                           ; $4b15: $a0
	ld   bc, wVisitedTitleScreen                                   ; $4b16: $01 $01 $c2
	ld   [bc], a                                     ; $4b19: $02
	jr   jr_09b_4b2b                                 ; $4b1a: $18 $0f

	dec  e                                           ; $4b1c: $1d
	rrca                                             ; $4b1d: $0f
	ld   e, $0f                                      ; $4b1e: $1e $0f
	rlca                                             ; $4b20: $07
	rrca                                             ; $4b21: $0f
	rrca                                             ; $4b22: $0f
	dec  b                                           ; $4b23: $05
	rlca                                             ; $4b24: $07
	inc  b                                           ; $4b25: $04
	inc  bc                                          ; $4b26: $03
	ld   [bc], a                                     ; $4b27: $02
	ld   b, $02                                      ; $4b28: $06 $02
	ld   sp, hl                                      ; $4b2a: $f9

jr_09b_4b2b:
	rst  ToBoot                                         ; $4b2b: $c7
	db   $e4                                         ; $4b2c: $e4
	sbc  b                                           ; $4b2d: $98
	db   $fd                                         ; $4b2e: $fd
	jp   $8ff7                                       ; $4b2f: $c3 $f7 $8f


	ldh  [c], a                                      ; $4b32: $e2
	add  d                                           ; $4b33: $82
	pop  hl                                          ; $4b34: $e1
	ld   bc, $80e0                                   ; $4b35: $01 $e0 $80
	ldh  a, [$80]                                    ; $4b38: $f0 $80
	pop  af                                          ; $4b3a: $f1
	db   $fd                                         ; $4b3b: $fd
	jr   jr_09b_4b3e                                 ; $4b3c: $18 $00

jr_09b_4b3e:
	add  sp, -$10                                    ; $4b3e: $e8 $f0
	call c, $80f8                                    ; $4b40: $dc $f8 $80
	ret  nz                                          ; $4b43: $c0

	ret  nc                                          ; $4b44: $d0

	ldh  [rP1], a                                    ; $4b45: $e0 $00
	nop                                              ; $4b47: $00
	nop                                              ; $4b48: $00
	nop                                              ; $4b49: $00
	ld   [bc], a                                     ; $4b4a: $02
	cp   $0e                                         ; $4b4b: $fe $0e
	cp   $fe                                         ; $4b4d: $fe $fe
	cp   $aa                                         ; $4b4f: $fe $aa
	ld   a, [$9a1a]                                  ; $4b51: $fa $1a $9a
	sub  d                                           ; $4b54: $92
	ld   [de], a                                     ; $4b55: $12
	ld   [de], a                                     ; $4b56: $12
	ld   [de], a                                     ; $4b57: $12
	ld   [de], a                                     ; $4b58: $12
	ld   [de], a                                     ; $4b59: $12
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	ld   bc, $0101                                   ; $4b64: $01 $01 $01
	nop                                              ; $4b67: $00
	nop                                              ; $4b68: $00
	nop                                              ; $4b69: $00
	db   $fc                                         ; $4b6a: $fc
	ld   hl, sp+$3c                                  ; $4b6b: $f8 $3c
	ldh  a, [$fc]                                    ; $4b6d: $f0 $fc
	ldh  a, [$3c]                                    ; $4b6f: $f0 $3c
	ld   hl, sp-$04                                  ; $4b71: $f8 $fc
	ldh  a, [$fc]                                    ; $4b73: $f0 $fc
	ldh  [$f8], a                                    ; $4b75: $e0 $f8
	ldh  [$fa], a                                    ; $4b77: $e0 $fa
	pop  hl                                          ; $4b79: $e1
	jr   @+$11                                       ; $4b7a: $18 $0f

	dec  e                                           ; $4b7c: $1d
	rrca                                             ; $4b7d: $0f
	ld   e, $0f                                      ; $4b7e: $1e $0f
	rlca                                             ; $4b80: $07
	rrca                                             ; $4b81: $0f
	rrca                                             ; $4b82: $0f
	dec  b                                           ; $4b83: $05
	rlca                                             ; $4b84: $07
	inc  b                                           ; $4b85: $04
	inc  bc                                          ; $4b86: $03
	ld   [bc], a                                     ; $4b87: $02
	rst  $30                                         ; $4b88: $f7
	ld   a, [$ff18]                                  ; $4b89: $fa $18 $ff
	ld   c, $ff                                      ; $4b8c: $0e $ff
	add  a                                           ; $4b8e: $87
	rst  $38                                         ; $4b8f: $ff
	ld   b, c                                        ; $4b90: $41
	rst  $38                                         ; $4b91: $ff
	jr   nz, @+$01                                   ; $4b92: $20 $ff

	ret  c                                           ; $4b94: $d8

	rst  $38                                         ; $4b95: $ff
	rst  $20                                         ; $4b96: $e7
	ld   a, a                                        ; $4b97: $7f
	ld   [hl], c                                     ; $4b98: $71
	cp   a                                           ; $4b99: $bf
	db   $fd                                         ; $4b9a: $fd
	add  $e0                                         ; $4b9b: $c6 $e0
	sbc  b                                           ; $4b9d: $98
	ld   sp, hl                                      ; $4b9e: $f9
	pop  bc                                          ; $4b9f: $c1
	ldh  a, [c]                                      ; $4ba0: $f2
	add  e                                           ; $4ba1: $83
	and  $86                                         ; $4ba2: $e6 $86
	ldh  [rSC], a                                    ; $4ba4: $e0 $02
	ldh  [$80], a                                    ; $4ba6: $e0 $80
	ldh  a, [$80]                                    ; $4ba8: $f0 $80
	dec  bc                                          ; $4baa: $0b
	dec  b                                           ; $4bab: $05
	halt                                             ; $4bac: $76
	ldh  a, [$9a]                                    ; $4bad: $f0 $9a
	sbc  b                                           ; $4baf: $98
	ld   c, h                                        ; $4bb0: $4c
	ld   c, b                                        ; $4bb1: $48
	ld   b, b                                        ; $4bb2: $40
	ret  nz                                          ; $4bb3: $c0

	ret  nz                                          ; $4bb4: $c0

	ret  nz                                          ; $4bb5: $c0

	nop                                              ; $4bb6: $00
	nop                                              ; $4bb7: $00
	ldh  [$c0], a                                    ; $4bb8: $e0 $c0
	ld   a, h                                        ; $4bba: $7c
	rrca                                             ; $4bbb: $0f
	sbc  a                                           ; $4bbc: $9f
	add  e                                           ; $4bbd: $83
	ld   h, [hl]                                     ; $4bbe: $66
	ld   h, e                                        ; $4bbf: $63
	dec  b                                           ; $4bc0: $05
	dec  b                                           ; $4bc1: $05
	ld   bc, $0303                                   ; $4bc2: $01 $03 $03
	inc  bc                                          ; $4bc5: $03
	nop                                              ; $4bc6: $00
	nop                                              ; $4bc7: $00
	nop                                              ; $4bc8: $00
	ld   bc, $fe02                                   ; $4bc9: $01 $02 $fe
	ld   c, $fe                                      ; $4bcc: $0e $fe
	cp   $fe                                         ; $4bce: $fe $fe
	ld   a, [hl+]                                    ; $4bd0: $2a
	ld   a, [hl-]                                    ; $4bd1: $3a
	ld   a, [de]                                     ; $4bd2: $1a
	ld   a, [de]                                     ; $4bd3: $1a
	ld   [de], a                                     ; $4bd4: $12
	ld   [de], a                                     ; $4bd5: $12
	ld   [de], a                                     ; $4bd6: $12
	ld   [de], a                                     ; $4bd7: $12
	sub  d                                           ; $4bd8: $92
	sub  d                                           ; $4bd9: $92
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	ld   bc, $0100                                   ; $4be4: $01 $00 $01
	ld   [bc], a                                     ; $4be7: $02
	ld   [bc], a                                     ; $4be8: $02
	ld   [bc], a                                     ; $4be9: $02
	jr   nz, jr_09b_4bec                             ; $4bea: $20 $00

jr_09b_4bec:
	ld   l, b                                        ; $4bec: $68
	nop                                              ; $4bed: $00
	add  sp, $08                                     ; $4bee: $e8 $08
	ld   d, b                                        ; $4bf0: $50
	stop                                             ; $4bf1: $10 $00
	nop                                              ; $4bf3: $00
	ldh  [$c0], a                                    ; $4bf4: $e0 $c0
	ld   b, c                                        ; $4bf6: $41
	ld   hl, $4202                                   ; $4bf7: $21 $02 $42
	add  c                                           ; $4bfa: $81
	ld   bc, $00c0                                   ; $4bfb: $01 $c0 $00
	ldh  [$80], a                                    ; $4bfe: $e0 $80
	ldh  a, [$60]                                    ; $4c00: $f0 $60
	ld   hl, sp+$18                                  ; $4c02: $f8 $18
	rst  $38                                         ; $4c04: $ff
	rst  ToBoot                                         ; $4c05: $c7
	rst  $38                                         ; $4c06: $ff
	ldh  a, [rIE]                                    ; $4c07: $f0 $ff
	db   $fc                                         ; $4c09: $fc
	add  h                                           ; $4c0a: $84
	inc  b                                           ; $4c0b: $04
	ld   [$1008], sp                                 ; $4c0c: $08 $08 $10
	db   $10                                         ; $4c0f: $10
	jr   nz, jr_09b_4c32                             ; $4c10: $20 $20

	ret  nz                                          ; $4c12: $c0

	ld   b, b                                        ; $4c13: $40
	ret  nz                                          ; $4c14: $c0

	ret  nz                                          ; $4c15: $c0

	ldh  [$e0], a                                    ; $4c16: $e0 $e0
	ldh  a, [$f0]                                    ; $4c18: $f0 $f0
	ld   sp, hl                                      ; $4c1a: $f9
	rst  ToBoot                                         ; $4c1b: $c7
	db   $e4                                         ; $4c1c: $e4
	sbc  b                                           ; $4c1d: $98
	db   $fd                                         ; $4c1e: $fd
	jp   $8ef6                                       ; $4c1f: $c3 $f6 $8e


	db   $e3                                         ; $4c22: $e3
	add  e                                           ; $4c23: $83
	pop  hl                                          ; $4c24: $e1
	ld   bc, $80e0                                   ; $4c25: $01 $e0 $80
	ldh  a, [$80]                                    ; $4c28: $f0 $80
	pop  af                                          ; $4c2a: $f1
	db   $fd                                         ; $4c2b: $fd
	jr   jr_09b_4c2e                                 ; $4c2c: $18 $00

jr_09b_4c2e:
	add  sp, -$10                                    ; $4c2e: $e8 $f0
	cp   h                                           ; $4c30: $bc
	cp   b                                           ; $4c31: $b8

jr_09b_4c32:
	add  b                                           ; $4c32: $80
	ret  nz                                          ; $4c33: $c0

	ret  nc                                          ; $4c34: $d0

	ldh  [rP1], a                                    ; $4c35: $e0 $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	ld   a, a                                        ; $4c3a: $7f
	ld   b, d                                        ; $4c3b: $42
	ld   a, a                                        ; $4c3c: $7f
	ld   b, c                                        ; $4c3d: $41
	ld   a, a                                        ; $4c3e: $7f
	ld   b, b                                        ; $4c3f: $40
	ld   e, a                                        ; $4c40: $5f
	ld   b, b                                        ; $4c41: $40
	ld   b, a                                        ; $4c42: $47
	ld   b, b                                        ; $4c43: $40
	ld   b, c                                        ; $4c44: $41
	ld   b, b                                        ; $4c45: $40
	ld   b, b                                        ; $4c46: $40
	ld   b, b                                        ; $4c47: $40
	ld   b, b                                        ; $4c48: $40
	ld   b, b                                        ; $4c49: $40
	add  b                                           ; $4c4a: $80
	nop                                              ; $4c4b: $00
	ret  nz                                          ; $4c4c: $c0

	nop                                              ; $4c4d: $00
	ldh  [$80], a                                    ; $4c4e: $e0 $80
	ldh  a, [$60]                                    ; $4c50: $f0 $60
	ld   hl, sp+$18                                  ; $4c52: $f8 $18
	rst  $38                                         ; $4c54: $ff
	rlca                                             ; $4c55: $07
	ld   a, a                                        ; $4c56: $7f
	nop                                              ; $4c57: $00
	ld   a, $00                                      ; $4c58: $3e $00
	inc  b                                           ; $4c5a: $04
	inc  b                                           ; $4c5b: $04
	ld   [$1008], sp                                 ; $4c5c: $08 $08 $10
	db   $10                                         ; $4c5f: $10
	jr   nz, jr_09b_4c82                             ; $4c60: $20 $20

	ret  nz                                          ; $4c62: $c0

	ld   b, b                                        ; $4c63: $40
	add  b                                           ; $4c64: $80
	add  b                                           ; $4c65: $80
	add  b                                           ; $4c66: $80
	add  b                                           ; $4c67: $80
	add  b                                           ; $4c68: $80
	add  b                                           ; $4c69: $80
	ret  nz                                          ; $4c6a: $c0

	add  b                                           ; $4c6b: $80
	ret  nz                                          ; $4c6c: $c0

	add  b                                           ; $4c6d: $80
	call nz, $8400                                   ; $4c6e: $c4 $00 $84
	nop                                              ; $4c71: $00
	add  [hl]                                        ; $4c72: $86
	nop                                              ; $4c73: $00
	ld   b, $00                                      ; $4c74: $06 $00
	inc  bc                                          ; $4c76: $03
	nop                                              ; $4c77: $00
	inc  bc                                          ; $4c78: $03
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00

jr_09b_4c82:
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	add  b                                           ; $4c88: $80
	nop                                              ; $4c89: $00
	add  b                                           ; $4c8a: $80
	add  b                                           ; $4c8b: $80
	ret  nz                                          ; $4c8c: $c0

	ret  nz                                          ; $4c8d: $c0

	ldh  a, [$b0]                                    ; $4c8e: $f0 $b0
	rst  $38                                         ; $4c90: $ff
	adc  a                                           ; $4c91: $8f
	rst  $38                                         ; $4c92: $ff
	add  b                                           ; $4c93: $80
	ld   a, h                                        ; $4c94: $7c
	nop                                              ; $4c95: $00
	jr   nc, jr_09b_4c98                             ; $4c96: $30 $00

jr_09b_4c98:
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	ld   [bc], a                                     ; $4c9a: $02
	ld   [bc], a                                     ; $4c9b: $02
	ld   [bc], a                                     ; $4c9c: $02
	ld   [bc], a                                     ; $4c9d: $02
	ld   [bc], a                                     ; $4c9e: $02
	ld   [bc], a                                     ; $4c9f: $02
	ldh  [c], a                                      ; $4ca0: $e2
	ldh  [c], a                                      ; $4ca1: $e2

jr_09b_4ca2:
	ld   a, [$061a]                                  ; $4ca2: $fa $1a $06
	ld   b, $02                                      ; $4ca5: $06 $02
	ld   [bc], a                                     ; $4ca7: $02
	ld   [bc], a                                     ; $4ca8: $02
	ld   [bc], a                                     ; $4ca9: $02
	add  c                                           ; $4caa: $81
	ld   bc, $00c0                                   ; $4cab: $01 $c0 $00
	ldh  [$80], a                                    ; $4cae: $e0 $80
	ldh  a, [$60]                                    ; $4cb0: $f0 $60
	ld   hl, sp+$18                                  ; $4cb2: $f8 $18
	rst  $38                                         ; $4cb4: $ff
	rlca                                             ; $4cb5: $07
	ld   a, a                                        ; $4cb6: $7f
	nop                                              ; $4cb7: $00
	ld   a, $00                                      ; $4cb8: $3e $00
	add  h                                           ; $4cba: $84
	inc  b                                           ; $4cbb: $04
	ld   [$1008], sp                                 ; $4cbc: $08 $08 $10
	db   $10                                         ; $4cbf: $10
	jr   nz, jr_09b_4ce2                             ; $4cc0: $20 $20

	ret  nz                                          ; $4cc2: $c0

	ld   b, b                                        ; $4cc3: $40
	add  b                                           ; $4cc4: $80
	add  b                                           ; $4cc5: $80
	add  b                                           ; $4cc6: $80
	add  b                                           ; $4cc7: $80
	add  b                                           ; $4cc8: $80
	add  b                                           ; $4cc9: $80
	ld   a, a                                        ; $4cca: $7f
	ld   b, d                                        ; $4ccb: $42
	ld   a, a                                        ; $4ccc: $7f
	ld   b, c                                        ; $4ccd: $41
	ld   a, a                                        ; $4cce: $7f
	ld   b, b                                        ; $4ccf: $40
	rst  $38                                         ; $4cd0: $ff
	ret  nz                                          ; $4cd1: $c0

	ccf                                              ; $4cd2: $3f
	jr   nc, jr_09b_4ca2                             ; $4cd3: $30 $cd

	ret  z                                           ; $4cd5: $c8

	db   $f4                                         ; $4cd6: $f4
	db   $f4                                         ; $4cd7: $f4
	ld   a, [$80fa]                                  ; $4cd8: $fa $fa $80
	nop                                              ; $4cdb: $00
	ret  nz                                          ; $4cdc: $c0

	nop                                              ; $4cdd: $00
	ldh  [$80], a                                    ; $4cde: $e0 $80
	ldh  a, [$60]                                    ; $4ce0: $f0 $60

jr_09b_4ce2:
	ld   hl, sp+$18                                  ; $4ce2: $f8 $18
	rst  $38                                         ; $4ce4: $ff
	rlca                                             ; $4ce5: $07
	ld   a, a                                        ; $4ce6: $7f
	nop                                              ; $4ce7: $00
	ld   a, $00                                      ; $4ce8: $3e $00
	inc  b                                           ; $4cea: $04
	inc  b                                           ; $4ceb: $04
	ld   [$1008], sp                                 ; $4cec: $08 $08 $10
	db   $10                                         ; $4cef: $10
	jr   nz, jr_09b_4d12                             ; $4cf0: $20 $20

	ret  nz                                          ; $4cf2: $c0

	ld   b, b                                        ; $4cf3: $40
	add  b                                           ; $4cf4: $80
	add  b                                           ; $4cf5: $80
	add  b                                           ; $4cf6: $80
	add  b                                           ; $4cf7: $80
	ret  nz                                          ; $4cf8: $c0

	ret  nz                                          ; $4cf9: $c0

	db   $fd                                         ; $4cfa: $fd
	push af                                          ; $4cfb: $f5
	cp   $fa                                         ; $4cfc: $fe $fa
	rst  $38                                         ; $4cfe: $ff
	ld   sp, hl                                      ; $4cff: $f9
	rst  $38                                         ; $4d00: $ff
	db   $fc                                         ; $4d01: $fc
	rst  $38                                         ; $4d02: $ff

Call_09b_4d03:
	db   $fc                                         ; $4d03: $fc
	rst  $38                                         ; $4d04: $ff
	cp   $ff                                         ; $4d05: $fe $ff
	cp   $7f                                         ; $4d07: $fe $7f
	cp   $00                                         ; $4d09: $fe $00
	nop                                              ; $4d0b: $00
	add  b                                           ; $4d0c: $80
	add  b                                           ; $4d0d: $80
	ld   b, b                                        ; $4d0e: $40
	ld   b, b                                        ; $4d0f: $40
	and  b                                           ; $4d10: $a0
	and  b                                           ; $4d11: $a0

jr_09b_4d12:
	ret  nc                                          ; $4d12: $d0

	ld   d, b                                        ; $4d13: $50
	add  sp, $28                                     ; $4d14: $e8 $28
	db   $f4                                         ; $4d16: $f4
	inc  d                                           ; $4d17: $14
	ld   a, [$c00a]                                  ; $4d18: $fa $0a $c0
	ret  nz                                          ; $4d1b: $c0

	ldh  [$e0], a                                    ; $4d1c: $e0 $e0
	ldh  a, [$d0]                                    ; $4d1e: $f0 $d0
	ld   hl, sp-$38                                  ; $4d20: $f8 $c8
	db   $fc                                         ; $4d22: $fc
	call nz, $c7ff                                   ; $4d23: $c4 $ff $c7
	db   $fd                                         ; $4d26: $fd
	rst  ToBoot                                         ; $4d27: $c7
	cp   $c3                                         ; $4d28: $fe $c3
	ld   [bc], a                                     ; $4d2a: $02
	ld   [bc], a                                     ; $4d2b: $02
	ld   [bc], a                                     ; $4d2c: $02
	ld   [bc], a                                     ; $4d2d: $02
	ld   [bc], a                                     ; $4d2e: $02
	ld   [bc], a                                     ; $4d2f: $02
	ld   [bc], a                                     ; $4d30: $02
	ld   [bc], a                                     ; $4d31: $02
	ld   [bc], a                                     ; $4d32: $02
	ld   [bc], a                                     ; $4d33: $02
	ld   [bc], a                                     ; $4d34: $02
	ld   [bc], a                                     ; $4d35: $02
	jp   nz, $b2c2                                   ; $4d36: $c2 $c2 $b2

	ldh  a, [c]                                      ; $4d39: $f2
	add  h                                           ; $4d3a: $84
	inc  b                                           ; $4d3b: $04
	ld   [$1008], sp                                 ; $4d3c: $08 $08 $10
	db   $10                                         ; $4d3f: $10
	jr   nz, jr_09b_4d62                             ; $4d40: $20 $20

	ret  nz                                          ; $4d42: $c0

	ld   b, b                                        ; $4d43: $40
	add  b                                           ; $4d44: $80
	add  b                                           ; $4d45: $80
	add  b                                           ; $4d46: $80
	add  b                                           ; $4d47: $80
	ret  nz                                          ; $4d48: $c0

	ret  nz                                          ; $4d49: $c0

	ld   a, h                                        ; $4d4a: $7c
	rrca                                             ; $4d4b: $0f
	sbc  a                                           ; $4d4c: $9f
	add  e                                           ; $4d4d: $83
	ld   l, a                                        ; $4d4e: $6f
	ld   h, c                                        ; $4d4f: $61
	rlca                                             ; $4d50: $07
	inc  bc                                          ; $4d51: $03
	dec  b                                           ; $4d52: $05
	ld   bc, $0302                                   ; $4d53: $01 $02 $03
	nop                                              ; $4d56: $00
	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00

jr_09b_4d62:
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	nop                                              ; $4d66: $00
	nop                                              ; $4d67: $00
	nop                                              ; $4d68: $00
	nop                                              ; $4d69: $00
	nop                                              ; $4d6a: $00
	nop                                              ; $4d6b: $00
	nop                                              ; $4d6c: $00
	nop                                              ; $4d6d: $00
	nop                                              ; $4d6e: $00
	nop                                              ; $4d6f: $00
	nop                                              ; $4d70: $00
	nop                                              ; $4d71: $00
	nop                                              ; $4d72: $00
	nop                                              ; $4d73: $00
	nop                                              ; $4d74: $00
	nop                                              ; $4d75: $00
	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	nop                                              ; $4d7a: $00
	nop                                              ; $4d7b: $00
	nop                                              ; $4d7c: $00
	nop                                              ; $4d7d: $00
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	nop                                              ; $4d82: $00
	nop                                              ; $4d83: $00
	nop                                              ; $4d84: $00
	nop                                              ; $4d85: $00
	nop                                              ; $4d86: $00
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	nop                                              ; $4d8a: $00
	nop                                              ; $4d8b: $00
	nop                                              ; $4d8c: $00
	nop                                              ; $4d8d: $00
	nop                                              ; $4d8e: $00
	nop                                              ; $4d8f: $00
	nop                                              ; $4d90: $00
	nop                                              ; $4d91: $00
	nop                                              ; $4d92: $00
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	nop                                              ; $4d95: $00
	nop                                              ; $4d96: $00
	nop                                              ; $4d97: $00
	nop                                              ; $4d98: $00
	nop                                              ; $4d99: $00
	ld   a, [hl+]                                    ; $4d9a: $2a
	ld   bc, $0086                                   ; $4d9b: $01 $86 $00
	dec  b                                           ; $4d9e: $05
	ld   bc, $0200                                   ; $4d9f: $01 $00 $02
	ld   bc, $0005                                   ; $4da2: $01 $05 $00
	add  b                                           ; $4da5: $80
	ld   bc, $0d05                                   ; $4da6: $01 $05 $0d
	dec  b                                           ; $4da9: $05
	dec  de                                          ; $4daa: $1b

jr_09b_4dab:
	dec  bc                                          ; $4dab: $0b
	dec  sp                                          ; $4dac: $3b
	dec  de                                          ; $4dad: $1b
	add  b                                           ; $4dae: $80
	ld   d, $0a                                      ; $4daf: $16 $0a
	ld   h, [hl]                                     ; $4db1: $66
	ld   [hl], $05                                   ; $4db2: $36 $05
	dec  [hl]                                        ; $4db4: $35
	push hl                                          ; $4db5: $e5
	ld   l, l                                        ; $4db6: $6d
	ld   c, c                                        ; $4db7: $49
	ld   l, e                                        ; $4db8: $6b
	and  d                                           ; $4db9: $a2
	xor  d                                           ; $4dba: $aa
	sub  b                                           ; $4dbb: $90
	add  c                                           ; $4dbc: $81
	sub  d                                           ; $4dbd: $92
	add  b                                           ; $4dbe: $80
	ld   [hl-], a                                    ; $4dbf: $32
	nop                                              ; $4dc0: $00
	or   d                                           ; $4dc1: $b2
	add  c                                           ; $4dc2: $81
	ld   [hl-], a                                    ; $4dc3: $32
	add  b                                           ; $4dc4: $80
	ld   [bc], a                                     ; $4dc5: $02
	ld   [bc], a                                     ; $4dc6: $02
	ld   l, d                                        ; $4dc7: $6a
	ld   [bc], a                                     ; $4dc8: $02
	inc  d                                           ; $4dc9: $14
	sub  l                                           ; $4dca: $95
	nop                                              ; $4dcb: $00
	adc  [hl]                                        ; $4dcc: $8e
	ld   bc, $0000                                   ; $4dcd: $01 $00 $00
	add  l                                           ; $4dd0: $85
	ld   bc, $0506                                   ; $4dd1: $01 $06 $05
	ld   bc, $0719                                   ; $4dd4: $01 $19 $07
	daa                                              ; $4dd7: $27
	rra                                              ; $4dd8: $1f
	rst  JumpTable                                         ; $4dd9: $df
	add  b                                           ; $4dda: $80
	ccf                                              ; $4ddb: $3f
	add  d                                           ; $4ddc: $82
	rst  $38                                         ; $4ddd: $ff
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	add  b                                           ; $4de0: $80
	ld   hl, sp+$00                                  ; $4de1: $f8 $00
	rst  $38                                         ; $4de3: $ff
	sub  a                                           ; $4de4: $97
	nop                                              ; $4de5: $00
	inc  c                                           ; $4de6: $0c
	ret  nz                                          ; $4de7: $c0

	nop                                              ; $4de8: $00
	jr   nz, jr_09b_4dab                             ; $4de9: $20 $c0

	ret  nc                                          ; $4deb: $d0

	ret  nz                                          ; $4dec: $c0

	ld   c, b                                        ; $4ded: $48
	or   b                                           ; $4dee: $b0
	cp   h                                           ; $4def: $bc
	cp   b                                           ; $4df0: $b8
	jr   nz, jr_09b_4e63                             ; $4df1: $20 $70

	ld   b, d                                        ; $4df3: $42
	add  c                                           ; $4df4: $81
	db   $ec                                         ; $4df5: $ec
	dec  b                                           ; $4df6: $05
	adc  l                                           ; $4df7: $8d
	ret  c                                           ; $4df8: $d8

	jp   nz, $79da                                   ; $4df9: $c2 $da $79

jr_09b_4dfc:
	ld   sp, hl                                      ; $4dfc: $f9
	add  b                                           ; $4dfd: $80
	cp   $80                                         ; $4dfe: $fe $80
	rst  $38                                         ; $4e00: $ff
	add  b                                           ; $4e01: $80
	inc  bc                                          ; $4e02: $03
	add  d                                           ; $4e03: $82
	ld   a, a                                        ; $4e04: $7f
	ld   b, $7e                                      ; $4e05: $06 $7e
	ld   a, a                                        ; $4e07: $7f
	dec  a                                           ; $4e08: $3d
	ld   a, a                                        ; $4e09: $7f
	ld   b, e                                        ; $4e0a: $43
	ld   a, a                                        ; $4e0b: $7f
	add  b                                           ; $4e0c: $80
	sbc  l                                           ; $4e0d: $9d
	nop                                              ; $4e0e: $00
	ld   de, $834f                                   ; $4e0f: $11 $4f $83
	ld   [hl], c                                     ; $4e12: $71
	ld   b, [hl]                                     ; $4e13: $46
	and  b                                           ; $4e14: $a0
	xor  l                                           ; $4e15: $ad
	ld   b, c                                        ; $4e16: $41
	dec  de                                          ; $4e17: $1b
	ld   [bc], a                                     ; $4e18: $02
	rla                                              ; $4e19: $17
	inc  h                                           ; $4e1a: $24
	ld   c, $00                                      ; $4e1b: $0e $00
	dec  c                                           ; $4e1d: $0d
	add  hl, bc                                      ; $4e1e: $09
	dec  bc                                          ; $4e1f: $0b
	inc  d                                           ; $4e20: $14
	rlca                                             ; $4e21: $07
	add  b                                           ; $4e22: $80
	ld   b, $80                                      ; $4e23: $06 $80
	ld   bc, $5e03                                   ; $4e25: $01 $03 $5e
	nop                                              ; $4e28: $00
	ld   bc, $8300                                   ; $4e29: $01 $00 $83
	add  b                                           ; $4e2c: $80
	dec  bc                                          ; $4e2d: $0b
	nop                                              ; $4e2e: $00
	add  hl, de                                      ; $4e2f: $19
	nop                                              ; $4e30: $00
	jr   nz, jr_09b_4e33                             ; $4e31: $20 $00

jr_09b_4e33:
	dec  c                                           ; $4e33: $0d
	nop                                              ; $4e34: $00
	scf                                              ; $4e35: $37
	nop                                              ; $4e36: $00
	ld   h, d                                        ; $4e37: $62
	ld   b, b                                        ; $4e38: $40
	ld   e, b                                        ; $4e39: $58
	add  b                                           ; $4e3a: $80
	ld   b, b                                        ; $4e3b: $40
	add  c                                           ; $4e3c: $81
	nop                                              ; $4e3d: $00
	inc  b                                           ; $4e3e: $04
	xor  c                                           ; $4e3f: $a9
	nop                                              ; $4e40: $00
	cp   h                                           ; $4e41: $bc
	nop                                              ; $4e42: $00
	ret  nz                                          ; $4e43: $c0

	add  b                                           ; $4e44: $80
	sbc  h                                           ; $4e45: $9c
	ld   de, $dc5c                                   ; $4e46: $11 $5c $dc
	inc  l                                           ; $4e49: $2c
	ld   l, $16                                      ; $4e4a: $2e $16
	sub  $16                                         ; $4e4c: $d6 $16
	scf                                              ; $4e4e: $37
	dec  bc                                          ; $4e4f: $0b
	sbc  d                                           ; $4e50: $9a
	inc  b                                           ; $4e51: $04
	dec  c                                           ; $4e52: $0d
	ld   [bc], a                                     ; $4e53: $02
	add  [hl]                                        ; $4e54: $86
	ld   bc, $007d                                   ; $4e55: $01 $7d $00
	db   $fd                                         ; $4e58: $fd
	add  l                                           ; $4e59: $85
	db   $fc                                         ; $4e5a: $fc
	nop                                              ; $4e5b: $00
	xor  [hl]                                        ; $4e5c: $ae
	add  c                                           ; $4e5d: $81
	nop                                              ; $4e5e: $00
	ld   [bc], a                                     ; $4e5f: $02
	jr   nc, jr_09b_4e62                             ; $4e60: $30 $00

jr_09b_4e62:
	ld   b, b                                        ; $4e62: $40

jr_09b_4e63:
	add  c                                           ; $4e63: $81
	nop                                              ; $4e64: $00
	dec  bc                                          ; $4e65: $0b
	jr   nc, jr_09b_4e88                             ; $4e66: $30 $20

	inc  a                                           ; $4e68: $3c
	db   $10                                         ; $4e69: $10
	ld   d, $00                                      ; $4e6a: $16 $00
	inc  bc                                          ; $4e6c: $03
	add  b                                           ; $4e6d: $80
	add  c                                           ; $4e6e: $81
	ret  nz                                          ; $4e6f: $c0

	ld   b, b                                        ; $4e70: $40
	ld   h, b                                        ; $4e71: $60
	add  b                                           ; $4e72: $80
	jr   nz, jr_09b_4e79                             ; $4e73: $20 $04

	and  b                                           ; $4e75: $a0
	jr   nc, jr_09b_4ec8                             ; $4e76: $30 $50

	db   $10                                         ; $4e78: $10

jr_09b_4e79:
	jr   z, jr_09b_4dfc                              ; $4e79: $28 $81

	nop                                              ; $4e7b: $00
	ld   a, [bc]                                     ; $4e7c: $0a
	ld   [$7707], sp                                 ; $4e7d: $08 $07 $77
	rlca                                             ; $4e80: $07

Jump_09b_4e81:
	rst  $30                                         ; $4e81: $f7
	rlca                                             ; $4e82: $07
	rst  $30                                         ; $4e83: $f7
	ld   b, $e6                                      ; $4e84: $06 $e6
	ld   b, $86                                      ; $4e86: $06 $86

jr_09b_4e88:
	add  d                                           ; $4e88: $82
	inc  b                                           ; $4e89: $04
	add  b                                           ; $4e8a: $80
	nop                                              ; $4e8b: $00
	ld   bc, $1a02                                   ; $4e8c: $01 $02 $1a
	add  b                                           ; $4e8f: $80
	dec  bc                                          ; $4e90: $0b
	nop                                              ; $4e91: $00
	rrca                                             ; $4e92: $0f
	add  d                                           ; $4e93: $82
	ld   c, $06                                      ; $4e94: $0e $06
	ld   l, $0e                                      ; $4e96: $2e $0e
	ld   l, l                                        ; $4e98: $6d
	inc  c                                           ; $4e99: $0c
	call z, Call_09b_610c                            ; $4e9a: $cc $0c $61
	add  b                                           ; $4e9d: $80
	cp   $09                                         ; $4e9e: $fe $09
	rst  $38                                         ; $4ea0: $ff
	ld   hl, sp-$01                                  ; $4ea1: $f8 $ff
	rst  $30                                         ; $4ea3: $f7
	rst  $38                                         ; $4ea4: $ff
	rst  $28                                         ; $4ea5: $ef
	rst  $38                                         ; $4ea6: $ff
	rst  JumpTable                                         ; $4ea7: $df
	rst  $38                                         ; $4ea8: $ff
	ccf                                              ; $4ea9: $3f
	add  c                                           ; $4eaa: $81
	rst  $38                                         ; $4eab: $ff
	add  d                                           ; $4eac: $82
	ld   a, a                                        ; $4ead: $7f
	nop                                              ; $4eae: $00
	ccf                                              ; $4eaf: $3f
	add  c                                           ; $4eb0: $81
	cp   a                                           ; $4eb1: $bf
	ld   bc, $de5e                                   ; $4eb2: $01 $5e $de
	add  b                                           ; $4eb5: $80
	ld   e, [hl]                                     ; $4eb6: $5e
	add  b                                           ; $4eb7: $80
	ld   e, h                                        ; $4eb8: $5c
	ld   bc, $181a                                   ; $4eb9: $01 $1a $18
	add  b                                           ; $4ebc: $80
	ld   c, b                                        ; $4ebd: $48
	ld   bc, $6869                                   ; $4ebe: $01 $69 $68
	add  b                                           ; $4ec1: $80
	jr   z, jr_09b_4ec6                              ; $4ec2: $28 $02

	ld   h, h                                        ; $4ec4: $64
	ld   h, b                                        ; $4ec5: $60

jr_09b_4ec6:
	ld   l, b                                        ; $4ec6: $68
	add  c                                           ; $4ec7: $81

jr_09b_4ec8:
	ld   h, b                                        ; $4ec8: $60
	ld   bc, $4050                                   ; $4ec9: $01 $50 $40
	add  b                                           ; $4ecc: $80
	nop                                              ; $4ecd: $00
	ld   [$2070], sp                                 ; $4ece: $08 $70 $20
	jr   c, @+$12                                    ; $4ed1: $38 $10

	ld   d, b                                        ; $4ed3: $50
	nop                                              ; $4ed4: $00
	ld   h, a                                        ; $4ed5: $67
	ld   b, b                                        ; $4ed6: $40
	ld   l, b                                        ; $4ed7: $68
	add  b                                           ; $4ed8: $80
	ld   h, b                                        ; $4ed9: $60
	dec  b                                           ; $4eda: $05
	nop                                              ; $4edb: $00
	ld   b, l                                        ; $4edc: $45
	ld   hl, $011d                                   ; $4edd: $21 $1d $01
	dec  sp                                          ; $4ee0: $3b
	add  c                                           ; $4ee1: $81
	ld   hl, sp+$00                                  ; $4ee2: $f8 $00
	cp   b                                           ; $4ee4: $b8
	add  c                                           ; $4ee5: $81
	ld   hl, sp+$01                                  ; $4ee6: $f8 $01
	ld   e, b                                        ; $4ee8: $58
	ret  c                                           ; $4ee9: $d8

	add  b                                           ; $4eea: $80
	cp   b                                           ; $4eeb: $b8
	add  b                                           ; $4eec: $80
	ld   a, b                                        ; $4eed: $78
	add  b                                           ; $4eee: $80
	ld   hl, sp+$0a                                  ; $4eef: $f8 $0a
	db   $e4                                         ; $4ef1: $e4
	ldh  [$90], a                                    ; $4ef2: $e0 $90
	add  b                                           ; $4ef4: $80
	ld   [hl], b                                     ; $4ef5: $70
	nop                                              ; $4ef6: $00
	ldh  a, [rP1]                                    ; $4ef7: $f0 $00
	ldh  [rP1], a                                    ; $4ef9: $e0 $00
	add  b                                           ; $4efb: $80
	add  e                                           ; $4efc: $83
	nop                                              ; $4efd: $00
	nop                                              ; $4efe: $00
	ld   [$009d], sp                                 ; $4eff: $08 $9d $00
	ld   [bc], a                                     ; $4f02: $02
	inc  bc                                          ; $4f03: $03
	nop                                              ; $4f04: $00
	inc  b                                           ; $4f05: $04
	add  c                                           ; $4f06: $81
	nop                                              ; $4f07: $00
	add  b                                           ; $4f08: $80
	ld   bc, $0380                                   ; $4f09: $01 $80 $03
	ld   bc, $070f                                   ; $4f0c: $01 $0f $07
	add  b                                           ; $4f0f: $80
	inc  bc                                          ; $4f10: $03
	add  b                                           ; $4f11: $80
	ld   bc, $0380                                   ; $4f12: $01 $80 $03
	ld   bc, $0111                                   ; $4f15: $01 $11 $01
	add  b                                           ; $4f18: $80
	nop                                              ; $4f19: $00
	add  b                                           ; $4f1a: $80
	ld   [$0e80], sp                                 ; $4f1b: $08 $80 $0e
	add  b                                           ; $4f1e: $80
	rlca                                             ; $4f1f: $07
	ld   bc, $0727                                   ; $4f20: $01 $27 $07
	add  b                                           ; $4f23: $80
	inc  bc                                          ; $4f24: $03
	nop                                              ; $4f25: $00
	ccf                                              ; $4f26: $3f
	add  c                                           ; $4f27: $81
	nop                                              ; $4f28: $00
	ld   [$00c0], sp                                 ; $4f29: $08 $c0 $00
	ldh  a, [$c0]                                    ; $4f2c: $f0 $c0
	db   $fc                                         ; $4f2e: $fc
	ldh  a, [$fe]                                    ; $4f2f: $f0 $fe
	db   $fc                                         ; $4f31: $fc
	rst  $38                                         ; $4f32: $ff
	add  c                                           ; $4f33: $81
	cp   $00                                         ; $4f34: $fe $00
	db   $fd                                         ; $4f36: $fd
	add  c                                           ; $4f37: $81
	db   $fc                                         ; $4f38: $fc
	ld   bc, $f8fa                                   ; $4f39: $01 $fa $f8
	add  b                                           ; $4f3c: $80
	ret  c                                           ; $4f3d: $d8

	dec  b                                           ; $4f3e: $05
	call nc, $e8d0                                   ; $4f3f: $d4 $d0 $e8
	ldh  [$f8], a                                    ; $4f42: $e0 $f8
	ldh  a, [$80]                                    ; $4f44: $f0 $80
	ldh  [$08], a                                    ; $4f46: $e0 $08
	cp   $01                                         ; $4f48: $fe $01
	ld   [$1404], sp                                 ; $4f4a: $08 $04 $14
	inc  c                                           ; $4f4d: $0c
	inc  l                                           ; $4f4e: $2c
	inc  e                                           ; $4f4f: $1c
	ld   e, h                                        ; $4f50: $5c
	add  c                                           ; $4f51: $81
	inc  a                                           ; $4f52: $3c
	nop                                              ; $4f53: $00
	cp   h                                           ; $4f54: $bc
	add  c                                           ; $4f55: $81
	ld   a, b                                        ; $4f56: $78
	nop                                              ; $4f57: $00

Jump_09b_4f58:
	add  a                                           ; $4f58: $87
	adc  l                                           ; $4f59: $8d
	nop                                              ; $4f5a: $00
	nop                                              ; $4f5b: $00
	db   $e4                                         ; $4f5c: $e4
	add  a                                           ; $4f5d: $87
	jr   jr_09b_4f60                                 ; $4f5e: $18 $00

jr_09b_4f60:
	sbc  [hl]                                        ; $4f60: $9e

Call_09b_4f61:
	add  c                                           ; $4f61: $81
	sbc  h                                           ; $4f62: $9c
	ld   bc, $9c98                                   ; $4f63: $01 $98 $9c
	add  b                                           ; $4f66: $80
	cp   h                                           ; $4f67: $bc
	ld   [$bc3c], sp                                 ; $4f68: $08 $3c $bc
	sbc  h                                           ; $4f6b: $9c
	cp   h                                           ; $4f6c: $bc
	add  h                                           ; $4f6d: $84
	cp   h                                           ; $4f6e: $bc
	or   h                                           ; $4f6f: $b4
	cp   h                                           ; $4f70: $bc
	ld   l, d                                        ; $4f71: $6a
	add  e                                           ; $4f72: $83
	nop                                              ; $4f73: $00
	ld   de, $0040                                   ; $4f74: $11 $40 $00
	ld   h, c                                        ; $4f77: $61
	nop                                              ; $4f78: $00
	add  b                                           ; $4f79: $80
	nop                                              ; $4f7a: $00
	ld   [bc], a                                     ; $4f7b: $02
	nop                                              ; $4f7c: $00
	ld   b, h                                        ; $4f7d: $44
	ld   [bc], a                                     ; $4f7e: $02
	ld   d, d                                        ; $4f7f: $52
	ld   [bc], a                                     ; $4f80: $02
	ld   [hl+], a                                    ; $4f81: $22
	inc  bc                                          ; $4f82: $03
	ld   b, e                                        ; $4f83: $43
	inc  bc                                          ; $4f84: $03
	ld   c, a                                        ; $4f85: $4f
	rlca                                             ; $4f86: $07
	add  b                                           ; $4f87: $80
	rrca                                             ; $4f88: $0f
	ld   [de], a                                     ; $4f89: $12
	dec  c                                           ; $4f8a: $0d
	rrca                                             ; $4f8b: $0f
	ld   a, $1f                                      ; $4f8c: $3e $1f
	ld   e, a                                        ; $4f8e: $5f
	rra                                              ; $4f8f: $1f
	ld   l, a                                        ; $4f90: $6f
	rrca                                             ; $4f91: $0f
	rla                                              ; $4f92: $17
	rlca                                             ; $4f93: $07
	ld   b, a                                        ; $4f94: $47
	rlca                                             ; $4f95: $07
	scf                                              ; $4f96: $37
	nop                                              ; $4f97: $00
	add  b                                           ; $4f98: $80
	ldh  a, [$f4]                                    ; $4f99: $f0 $f4
	ld   hl, sp-$48                                  ; $4f9b: $f8 $b8
	add  c                                           ; $4f9d: $81
	ld   hl, sp+$04                                  ; $4f9e: $f8 $04
	ret  c                                           ; $4fa0: $d8

	ld   hl, sp+$68                                  ; $4fa1: $f8 $68
	ld   a, b                                        ; $4fa3: $78
	inc  a                                           ; $4fa4: $3c
	add  b                                           ; $4fa5: $80
	jr   nc, jr_09b_4faa                             ; $4fa6: $30 $02

	or   b                                           ; $4fa8: $b0
	sub  b                                           ; $4fa9: $90

jr_09b_4faa:
	ret  nc                                          ; $4faa: $d0

	add  c                                           ; $4fab: $81
	ret  nz                                          ; $4fac: $c0

	inc  b                                           ; $4fad: $04
	ldh  [rAUD4LEN], a                               ; $4fae: $e0 $20
	ldh  [$e4], a                                    ; $4fb0: $e0 $e4
	ret  nz                                          ; $4fb2: $c0

	add  b                                           ; $4fb3: $80
	add  b                                           ; $4fb4: $80
	add  b                                           ; $4fb5: $80
	nop                                              ; $4fb6: $00
	dec  bc                                          ; $4fb7: $0b
	ld   a, h                                        ; $4fb8: $7c
	nop                                              ; $4fb9: $00
	ret  nz                                          ; $4fba: $c0

	add  b                                           ; $4fbb: $80
	nop                                              ; $4fbc: $00
	add  b                                           ; $4fbd: $80
	ldh  [$c0], a                                    ; $4fbe: $e0 $c0
	ld   b, b                                        ; $4fc0: $40
	ret  nz                                          ; $4fc1: $c0

	ldh  a, [$e0]                                    ; $4fc2: $f0 $e0
	add  b                                           ; $4fc4: $80
	ld   h, b                                        ; $4fc5: $60
	ld   bc, $7078                                   ; $4fc6: $01 $78 $70
	add  b                                           ; $4fc9: $80
	or   b                                           ; $4fca: $b0
	ld   bc, $b8bc                                   ; $4fcb: $01 $bc $b8
	add  b                                           ; $4fce: $80
	ret  c                                           ; $4fcf: $d8

	inc  bc                                          ; $4fd0: $03
	sbc  $dc                                         ; $4fd1: $de $dc
	rst  JumpTable                                         ; $4fd3: $df
	sbc  $80                                         ; $4fd4: $de $80
	cp   h                                           ; $4fd6: $bc
	ld   b, $bb                                      ; $4fd7: $06 $bb
	cp   b                                           ; $4fd9: $b8
	ld   [hl], h                                     ; $4fda: $74
	ld   [hl], b                                     ; $4fdb: $70
	ld   sp, hl                                      ; $4fdc: $f9
	nop                                              ; $4fdd: $00
	ld   [bc], a                                     ; $4fde: $02
	add  c                                           ; $4fdf: $81
	ld   bc, $0001                                   ; $4fe0: $01 $01 $00
	ld   bc, $0080                                   ; $4fe3: $01 $80 $00
	nop                                              ; $4fe6: $00
	inc  b                                           ; $4fe7: $04
	add  b                                           ; $4fe8: $80
	ld   bc, $0000                                   ; $4fe9: $01 $00 $00
	add  b                                           ; $4fec: $80
	ld   bc, $0d00                                   ; $4fed: $01 $00 $0d
	add  l                                           ; $4ff0: $85
	dec  b                                           ; $4ff1: $05
	ld   bc, $0212                                   ; $4ff2: $01 $12 $02
	add  d                                           ; $4ff5: $82
	ld   a, [bc]                                     ; $4ff6: $0a
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	add  e                                           ; $4ff9: $83
	ld   a, [bc]                                     ; $4ffa: $0a
	nop                                              ; $4ffb: $00
	ld   a, [hl+]                                    ; $4ffc: $2a
	add  b                                           ; $4ffd: $80
	ld   d, $89                                      ; $4ffe: $16 $89
	dec  d                                           ; $5000: $15
	nop                                              ; $5001: $00
	inc  d                                           ; $5002: $14
	add  h                                           ; $5003: $84
	dec  d                                           ; $5004: $15
	add  b                                           ; $5005: $80
	inc  de                                          ; $5006: $13
	dec  b                                           ; $5007: $05
	dec  bc                                          ; $5008: $0b
	dec  sp                                          ; $5009: $3b
	inc  bc                                          ; $500a: $03
	ld   c, $00                                      ; $500b: $0e $00
	inc  bc                                          ; $500d: $03
	adc  e                                           ; $500e: $8b
	nop                                              ; $500f: $00
	ld   c, $c0                                      ; $5010: $0e $c0
	nop                                              ; $5012: $00
	jr   nz, @-$3e                                   ; $5013: $20 $c0

	ld   hl, sp-$20                                  ; $5015: $f8 $e0
	inc  b                                           ; $5017: $04
	ret  z                                           ; $5018: $c8

	adc  d                                           ; $5019: $8a
	or   h                                           ; $501a: $b4
	inc  [hl]                                        ; $501b: $34
	ld   b, h                                        ; $501c: $44
	ld   h, h                                        ; $501d: $64
	inc  [hl]                                        ; $501e: $34
	ld   [hl], b                                     ; $501f: $70
	add  c                                           ; $5020: $81
	ld   [hl], h                                     ; $5021: $74
	add  d                                           ; $5022: $82
	ld   [hl], b                                     ; $5023: $70
	ld   [bc], a                                     ; $5024: $02
	ld   [hl], e                                     ; $5025: $73
	ld   [hl], d                                     ; $5026: $72
	ld   d, c                                        ; $5027: $51
	add  b                                           ; $5028: $80
	ld   [hl], c                                     ; $5029: $71
	nop                                              ; $502a: $00
	ld   [hl], l                                     ; $502b: $75
	add  d                                           ; $502c: $82
	ld   [hl], h                                     ; $502d: $74
	nop                                              ; $502e: $00
	ld   [hl], l                                     ; $502f: $75
	add  a                                           ; $5030: $87
	ld   [hl], h                                     ; $5031: $74
	nop                                              ; $5032: $00
	inc  [hl]                                        ; $5033: $34
	add  [hl]                                        ; $5034: $86
	ld   [hl], h                                     ; $5035: $74
	add  c                                           ; $5036: $81
	ld   [hl], b                                     ; $5037: $70
	ld   bc, $7071                                   ; $5038: $01 $71 $70
	add  c                                           ; $503b: $81
	ld   [hl], d                                     ; $503c: $72
	add  a                                           ; $503d: $87
	ld   a, d                                        ; $503e: $7a
	ld   [bc], a                                     ; $503f: $02
	ld   a, c                                        ; $5040: $79
	ld   a, b                                        ; $5041: $78
	ld   a, d                                        ; $5042: $7a
	add  e                                           ; $5043: $83
	ld   a, b                                        ; $5044: $78
	ld   [bc], a                                     ; $5045: $02
	ld   a, h                                        ; $5046: $7c
	nop                                              ; $5047: $00
	ld   hl, sp-$79                                  ; $5048: $f8 $87
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	add  b                                           ; $504c: $80
	add  c                                           ; $504d: $81
	nop                                              ; $504e: $00
	ld   de, $80c0                                   ; $504f: $11 $c0 $80
	ld   h, b                                        ; $5052: $60
	ld   b, b                                        ; $5053: $40
	jr   nc, @+$22                                   ; $5054: $30 $20

	sbc  b                                           ; $5056: $98
	db   $10                                         ; $5057: $10
	ld   d, h                                        ; $5058: $54
	db   $10                                         ; $5059: $10
	ld   a, [hl+]                                    ; $505a: $2a
	ld   [$0415], sp                                 ; $505b: $08 $15 $04
	ld   a, [bc]                                     ; $505e: $0a
	ld   [bc], a                                     ; $505f: $02
	dec  b                                           ; $5060: $05
	ld   bc, $0080                                   ; $5061: $01 $80 $00
	ld   l, $02                                      ; $5064: $2e $02
	nop                                              ; $5066: $00
	ld   bc, $2000                                   ; $5067: $01 $00 $20
	nop                                              ; $506a: $00
	jr   nc, jr_09b_508d                             ; $506b: $30 $20

jr_09b_506d:
	jr   z, jr_09b_508f                              ; $506d: $28 $20

jr_09b_506f:
	inc  d                                           ; $506f: $14
	db   $10                                         ; $5070: $10
	jr   z, jr_09b_507b                              ; $5071: $28 $08

	ld   d, $04                                      ; $5073: $16 $04
	ld   bc, $1600                                   ; $5075: $01 $00 $16
	ld   c, $29                                      ; $5078: $0e $29
	dec  e                                           ; $507a: $1d

jr_09b_507b:
	ld   e, [hl]                                     ; $507b: $5e
	ld   a, [hl-]                                    ; $507c: $3a
	cp   h                                           ; $507d: $bc
	ld   [hl], l                                     ; $507e: $75
	ld   a, c                                        ; $507f: $79
	ld   l, e                                        ; $5080: $6b
	ld   h, e                                        ; $5081: $63
	ld   h, a                                        ; $5082: $67
	ld   h, [hl]                                     ; $5083: $66
	ld   h, a                                        ; $5084: $67
	ld   h, h                                        ; $5085: $64
	ld   l, [hl]                                     ; $5086: $6e
	xor  $3e                                         ; $5087: $ee $3e
	ld   l, h                                        ; $5089: $6c
	dec  e                                           ; $508a: $1d
	dec  h                                           ; $508b: $25
	rrca                                             ; $508c: $0f

jr_09b_508d:
	db   $10                                         ; $508d: $10
	rlca                                             ; $508e: $07

jr_09b_508f:
	dec  bc                                          ; $508f: $0b
	inc  bc                                          ; $5090: $03
	inc  b                                           ; $5091: $04
	nop                                              ; $5092: $00
	inc  bc                                          ; $5093: $03
	sub  c                                           ; $5094: $91
	nop                                              ; $5095: $00
	inc  b                                           ; $5096: $04
	xor  a                                           ; $5097: $af
	ld   bc, $0181                                   ; $5098: $01 $81 $01
	ld   h, e                                        ; $509b: $63
	add  e                                           ; $509c: $83
	ld   [hl+], a                                    ; $509d: $22
	add  b                                           ; $509e: $80
	ld   [bc], a                                     ; $509f: $02
	ld   bc, $23b3                                   ; $50a0: $01 $b3 $23
	add  b                                           ; $50a3: $80
	dec  bc                                          ; $50a4: $0b
	ld   [bc], a                                     ; $50a5: $02
	add  b                                           ; $50a6: $80
	sub  a                                           ; $50a7: $97
	rla                                              ; $50a8: $17
	add  b                                           ; $50a9: $80
	and  a                                           ; $50aa: $a7
	nop                                              ; $50ab: $00
	rst  $20                                         ; $50ac: $e7
	add  b                                           ; $50ad: $80
	rst  $28                                         ; $50ae: $ef
	nop                                              ; $50af: $00
	rst  $20                                         ; $50b0: $e7
	add  b                                           ; $50b1: $80
	rst  ToBoot                                         ; $50b2: $c7
	add  c                                           ; $50b3: $81
	rst  $38                                         ; $50b4: $ff
	ld   b, $fc                                      ; $50b5: $06 $fc
	rst  $38                                         ; $50b7: $ff
	add  a                                           ; $50b8: $87
	nop                                              ; $50b9: $00
	jp   nz, $0500                                   ; $50ba: $c2 $00 $05

	add  c                                           ; $50bd: $81
	nop                                              ; $50be: $00
	ld   bc, $0121                                   ; $50bf: $01 $21 $01
	add  b                                           ; $50c2: $80
	nop                                              ; $50c3: $00
	add  hl, bc                                      ; $50c4: $09
	sub  c                                           ; $50c5: $91
	ld   bc, $505c                                   ; $50c6: $01 $5c $50
	ld   h, b                                        ; $50c9: $60
	push hl                                          ; $50ca: $e5
	or   l                                           ; $50cb: $b5
	db   $fc                                         ; $50cc: $fc

jr_09b_50cd:
	call z, $80fc                                    ; $50cd: $cc $fc $80
	db   $fd                                         ; $50d0: $fd
	nop                                              ; $50d1: $00

jr_09b_50d2:
	db   $fc                                         ; $50d2: $fc
	add  b                                           ; $50d3: $80
	ld   hl, sp-$7d                                  ; $50d4: $f8 $83
	rst  $38                                         ; $50d6: $ff
	ld   [$003c], sp                                 ; $50d7: $08 $3c $00
	stop                                             ; $50da: $10 $00
	ld   a, [hl-]                                    ; $50dc: $3a
	nop                                              ; $50dd: $00
	dec  b                                           ; $50de: $05
	nop                                              ; $50df: $00
	add  b                                           ; $50e0: $80
	add  e                                           ; $50e1: $83
	nop                                              ; $50e2: $00
	dec  b                                           ; $50e3: $05
	ld   a, h                                        ; $50e4: $7c
	db   $10                                         ; $50e5: $10
	ld   bc, $1a00                                   ; $50e6: $01 $00 $1a
	jr   c, jr_09b_506d                              ; $50e9: $38 $82

	cp   b                                           ; $50eb: $b8
	nop                                              ; $50ec: $00
	jr   c, jr_09b_506f                              ; $50ed: $38 $80

	jr   @-$7b                                       ; $50ef: $18 $83

	ld   hl, sp+$05                                  ; $50f1: $f8 $05
	db   $e3                                         ; $50f3: $e3
	ld   d, c                                        ; $50f4: $51
	ld   de, $7391                                   ; $50f5: $11 $91 $73
	ld   [hl-], a                                    ; $50f8: $32
	add  d                                           ; $50f9: $82
	ld   [hl+], a                                    ; $50fa: $22
	add  b                                           ; $50fb: $80
	ld   [bc], a                                     ; $50fc: $02
	ld   bc, $23b3                                   ; $50fd: $01 $b3 $23
	add  b                                           ; $5100: $80
	dec  hl                                          ; $5101: $2b
	ld   [bc], a                                     ; $5102: $02
	ld   hl, sp-$01                                  ; $5103: $f8 $ff
	rlca                                             ; $5105: $07
	add  b                                           ; $5106: $80
	add  a                                           ; $5107: $87
	inc  bc                                          ; $5108: $03
	and  a                                           ; $5109: $a7
	xor  a                                           ; $510a: $af
	rst  $28                                         ; $510b: $ef
	rst  $20                                         ; $510c: $e7
	add  b                                           ; $510d: $80
	rst  ToBoot                                         ; $510e: $c7
	add  c                                           ; $510f: $81
	rst  $38                                         ; $5110: $ff
	ld   b, $fc                                      ; $5111: $06 $fc
	rst  $38                                         ; $5113: $ff
	cp   l                                           ; $5114: $bd
	ld   a, [hl-]                                    ; $5115: $3a
	db   $eb                                         ; $5116: $eb
	add  hl, hl                                      ; $5117: $29
	dec  b                                           ; $5118: $05
	add  c                                           ; $5119: $81
	nop                                              ; $511a: $00
	ld   bc, $0121                                   ; $511b: $01 $21 $01
	add  b                                           ; $511e: $80
	nop                                              ; $511f: $00
	add  hl, bc                                      ; $5120: $09
	sub  c                                           ; $5121: $91
	ld   bc, $515d                                   ; $5122: $01 $5d $51
	ld   l, a                                        ; $5125: $6f
	rst  $28                                         ; $5126: $ef
	or   b                                           ; $5127: $b0
	ldh  a, [$c0]                                    ; $5128: $f0 $c0
	db   $fc                                         ; $512a: $fc
	add  b                                           ; $512b: $80
	db   $fd                                         ; $512c: $fd
	nop                                              ; $512d: $00
	db   $fc                                         ; $512e: $fc
	add  b                                           ; $512f: $80
	ld   hl, sp-$7d                                  ; $5130: $f8 $83
	rst  $38                                         ; $5132: $ff
	ld   [$83bf], sp                                 ; $5133: $08 $bf $83
	db   $d3                                         ; $5136: $d3
	jp   $a19b                                       ; $5137: $c3 $9b $a1


	dec  b                                           ; $513a: $05
	nop                                              ; $513b: $00
	add  b                                           ; $513c: $80
	add  e                                           ; $513d: $83
	nop                                              ; $513e: $00
	rlca                                             ; $513f: $07
	ld   a, h                                        ; $5140: $7c
	db   $10                                         ; $5141: $10
	pop  af                                          ; $5142: $f1
	ldh  a, [$0a]                                    ; $5143: $f0 $0a
	ld   [$a888], sp                                 ; $5145: $08 $88 $a8
	add  b                                           ; $5148: $80
	cp   b                                           ; $5149: $b8
	nop                                              ; $514a: $00
	jr   c, jr_09b_50cd                              ; $514b: $38 $80

	jr   jr_09b_50d2                                 ; $514d: $18 $83

	ld   hl, sp+$05                                  ; $514f: $f8 $05
	db   $e3                                         ; $5151: $e3
	ld   d, c                                        ; $5152: $51
	ld   de, $7391                                   ; $5153: $11 $91 $73
	ld   [hl-], a                                    ; $5156: $32
	add  d                                           ; $5157: $82
	ld   [hl+], a                                    ; $5158: $22
	add  b                                           ; $5159: $80
	ld   [bc], a                                     ; $515a: $02
	ld   bc, $23b3                                   ; $515b: $01 $b3 $23
	add  b                                           ; $515e: $80
	dec  hl                                          ; $515f: $2b
	inc  bc                                          ; $5160: $03
	ret  c                                           ; $5161: $d8

	rst  $38                                         ; $5162: $ff
	ld   l, a                                        ; $5163: $6f
	rst  $38                                         ; $5164: $ff
	add  c                                           ; $5165: $81
	or   a                                           ; $5166: $b7
	add  b                                           ; $5167: $80
	add  a                                           ; $5168: $87
	add  e                                           ; $5169: $83
	rst  $38                                         ; $516a: $ff
	ld   b, $fc                                      ; $516b: $06 $fc
	rst  $38                                         ; $516d: $ff
	cp   l                                           ; $516e: $bd
	ld   a, [hl-]                                    ; $516f: $3a
	db   $eb                                         ; $5170: $eb
	add  hl, hl                                      ; $5171: $29
	dec  b                                           ; $5172: $05
	add  c                                           ; $5173: $81
	nop                                              ; $5174: $00
	ld   bc, $0121                                   ; $5175: $01 $21 $01
	add  b                                           ; $5178: $80
	nop                                              ; $5179: $00
	ld   [$0191], sp                                 ; $517a: $08 $91 $01
	ld   e, l                                        ; $517d: $5d
	ld   d, c                                        ; $517e: $51
	ld   l, [hl]                                     ; $517f: $6e
	rst  $28                                         ; $5180: $ef
	or   c                                           ; $5181: $b1
	rst  $38                                         ; $5182: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5183: $cf
	add  b                                           ; $5184: $80
	rst  $30                                         ; $5185: $f7
	add  b                                           ; $5186: $80
	ldh  a, [$85]                                    ; $5187: $f0 $85
	rst  $38                                         ; $5189: $ff
	ld   [$80bc], sp                                 ; $518a: $08 $bc $80
	ret  nc                                          ; $518d: $d0

	ret  nz                                          ; $518e: $c0

	sbc  d                                           ; $518f: $9a
	and  b                                           ; $5190: $a0
	dec  b                                           ; $5191: $05
	nop                                              ; $5192: $00
	add  b                                           ; $5193: $80
	add  e                                           ; $5194: $83
	nop                                              ; $5195: $00
	dec  b                                           ; $5196: $05
	ld   a, h                                        ; $5197: $7c
	db   $10                                         ; $5198: $10
	pop  af                                          ; $5199: $f1
	ldh  a, [$7a]                                    ; $519a: $f0 $7a
	ld   hl, sp-$80                                  ; $519c: $f8 $80
	ret  c                                           ; $519e: $d8

	ld   [bc], a                                     ; $519f: $02
	cp   b                                           ; $51a0: $b8
	jr   c, jr_09b_51bb                              ; $51a1: $38 $18

	add  l                                           ; $51a3: $85
	ld   hl, sp+$05                                  ; $51a4: $f8 $05
	ld   h, d                                        ; $51a6: $62
	db   $fd                                         ; $51a7: $fd
	ld   a, l                                        ; $51a8: $7d
	ld   a, a                                        ; $51a9: $7f
	ld   a, $7c                                      ; $51aa: $3e $7c
	add  c                                           ; $51ac: $81
	inc  a                                           ; $51ad: $3c
	rlca                                             ; $51ae: $07
	ld   e, $16                                      ; $51af: $1e $16
	rrca                                             ; $51b1: $0f
	add  e                                           ; $51b2: $83
	rlca                                             ; $51b3: $07
	ld   de, $6e03                                   ; $51b4: $11 $03 $6e
	add  b                                           ; $51b7: $80
	ld   bc, $008b                                   ; $51b8: $01 $8b $00

jr_09b_51bb:
	add  e                                           ; $51bb: $83
	rst  $38                                         ; $51bc: $ff
	nop                                              ; $51bd: $00
	rra                                              ; $51be: $1f
	add  c                                           ; $51bf: $81
	rst  JumpTable                                         ; $51c0: $df
	ld   a, [bc]                                     ; $51c1: $0a
	rst  $38                                         ; $51c2: $ff
	cp   [hl]                                        ; $51c3: $be
	rst  $38                                         ; $51c4: $ff
	ld   a, h                                        ; $51c5: $7c
	cp   $fd                                         ; $51c6: $fe $fd
	ld   sp, hl                                      ; $51c8: $f9
	rst  $38                                         ; $51c9: $ff
	rst  $20                                         ; $51ca: $e7
	rst  $38                                         ; $51cb: $ff
	rra                                              ; $51cc: $1f
	add  b                                           ; $51cd: $80
	ccf                                              ; $51ce: $3f
	add  b                                           ; $51cf: $80
	ld   a, $18                                      ; $51d0: $3e $18
	dec  a                                           ; $51d2: $3d
	inc  a                                           ; $51d3: $3c
	dec  sp                                          ; $51d4: $3b
	jr   c, jr_09b_520e                              ; $51d5: $38 $37

	jr   nc, jr_09b_5247                             ; $51d7: $30 $6e

	ld   h, b                                        ; $51d9: $60
	adc  d                                           ; $51da: $8a
	db   $fd                                         ; $51db: $fd
	ld   a, l                                        ; $51dc: $7d
	ld   a, a                                        ; $51dd: $7f
	ld   a, $7f                                      ; $51de: $3e $7f
	dec  a                                           ; $51e0: $3d
	ccf                                              ; $51e1: $3f
	dec  a                                           ; $51e2: $3d
	rra                                              ; $51e3: $1f
	rla                                              ; $51e4: $17
	rrca                                             ; $51e5: $0f
	add  e                                           ; $51e6: $83
	rlca                                             ; $51e7: $07
	ld   de, $6e03                                   ; $51e8: $11 $03 $6e
	add  b                                           ; $51eb: $80
	ld   bc, $008b                                   ; $51ec: $01 $8b $00
	add  h                                           ; $51ef: $84
	rst  $38                                         ; $51f0: $ff
	dec  c                                           ; $51f1: $0d
	ccf                                              ; $51f2: $3f
	rst  JumpTable                                         ; $51f3: $df
	rra                                              ; $51f4: $1f
	rst  $38                                         ; $51f5: $ff
	ld   a, $ff                                      ; $51f6: $3e $ff
	inc  a                                           ; $51f8: $3c
	cp   $fd                                         ; $51f9: $fe $fd
	ld   sp, hl                                      ; $51fb: $f9
	rst  $38                                         ; $51fc: $ff
	rst  $20                                         ; $51fd: $e7
	rst  $38                                         ; $51fe: $ff
	rra                                              ; $51ff: $1f
	add  b                                           ; $5200: $80
	ccf                                              ; $5201: $3f
	add  b                                           ; $5202: $80
	ld   a, $08                                      ; $5203: $3e $08
	dec  a                                           ; $5205: $3d
	inc  a                                           ; $5206: $3c
	dec  sp                                          ; $5207: $3b
	jr   c, jr_09b_5241                              ; $5208: $38 $37

	jr   nc, jr_09b_527a                             ; $520a: $30 $6e

	ld   h, b                                        ; $520c: $60
	db   $f4                                         ; $520d: $f4

jr_09b_520e:
	rst  $38                                         ; $520e: $ff
	nop                                              ; $520f: $00
	rst  $38                                         ; $5210: $ff
	nop                                              ; $5211: $00
	rst  $38                                         ; $5212: $ff
	nop                                              ; $5213: $00
	rst  $38                                         ; $5214: $ff
	nop                                              ; $5215: $00
	rst  $38                                         ; $5216: $ff
	nop                                              ; $5217: $00
	sbc  b                                           ; $5218: $98
	nop                                              ; $5219: $00
	ld   sp, $1101                                   ; $521a: $31 $01 $11
	inc  bc                                          ; $521d: $03
	ld   bc, $0305                                   ; $521e: $01 $05 $03
	dec  bc                                          ; $5221: $0b
	rlca                                             ; $5222: $07
	dec  e                                           ; $5223: $1d
	rrca                                             ; $5224: $0f
	dec  sp                                          ; $5225: $3b
	rra                                              ; $5226: $1f
	dec  e                                           ; $5227: $1d
	inc  e                                           ; $5228: $1c
	ld   a, b                                        ; $5229: $78
	add  hl, sp                                      ; $522a: $39
	ld   [hl-], a                                    ; $522b: $32
	inc  sp                                          ; $522c: $33
	and  a                                           ; $522d: $a7
	daa                                              ; $522e: $27
	add  b                                           ; $522f: $80
	rlca                                             ; $5230: $07
	add  d                                           ; $5231: $82
	rrca                                             ; $5232: $0f
	add  b                                           ; $5233: $80
	ld   e, $01                                      ; $5234: $1e $01
	ld   e, [hl]                                     ; $5236: $5e
	ld   e, $82                                      ; $5237: $1e $82
	inc  e                                           ; $5239: $1c
	ld   [bc], a                                     ; $523a: $02
	call c, Call_09b_591c                            ; $523b: $dc $1c $59
	add  c                                           ; $523e: $81
	add  hl, de                                      ; $523f: $19
	add  b                                           ; $5240: $80

jr_09b_5241:
	add  hl, bc                                      ; $5241: $09
	ld   b, $21                                      ; $5242: $06 $21
	ld   bc, $0010                                   ; $5244: $01 $10 $00

jr_09b_5247:
	ld   c, $00                                      ; $5247: $0e $00
	ld   bc, $008f                                   ; $5249: $01 $8f $00
	inc  b                                           ; $524c: $04
	db   $dd                                         ; $524d: $dd
	ld   [bc], a                                     ; $524e: $02
	add  c                                           ; $524f: $81
	ld   bc, $8350                                   ; $5250: $01 $50 $83
	ld   bc, $1900                                   ; $5253: $01 $00 $19
	add  e                                           ; $5256: $83
	ld   bc, $3102                                   ; $5257: $01 $02 $31
	ld   bc, $8100                                   ; $525a: $01 $00 $81
	ld   bc, $d800                                   ; $525d: $01 $00 $d8
	add  b                                           ; $5260: $80
	nop                                              ; $5261: $00
	add  b                                           ; $5262: $80
	or   b                                           ; $5263: $b0
	rlca                                             ; $5264: $07
	ld   h, [hl]                                     ; $5265: $66
	ld   h, l                                        ; $5266: $65
	rst  $28                                         ; $5267: $ef
	ld   [$26de], a                                  ; $5268: $ea $de $26
	nop                                              ; $526b: $00
	ld   [bc], a                                     ; $526c: $02
	add  c                                           ; $526d: $81
	ld   bc, $0502                                   ; $526e: $01 $02 $05
	inc  bc                                          ; $5271: $03
	dec  bc                                          ; $5272: $0b
	add  c                                           ; $5273: $81
	rlca                                             ; $5274: $07
	nop                                              ; $5275: $00
	rla                                              ; $5276: $17
	add  c                                           ; $5277: $81
	rrca                                             ; $5278: $0f
	nop                                              ; $5279: $00

jr_09b_527a:
	db   $10                                         ; $527a: $10
	adc  l                                           ; $527b: $8d
	nop                                              ; $527c: $00
	db   $10                                         ; $527d: $10
	ld   bc, $0200                                   ; $527e: $01 $00 $02
	ld   bc, $0305                                   ; $5281: $01 $05 $03
	dec  bc                                          ; $5284: $0b
	rlca                                             ; $5285: $07
	rla                                              ; $5286: $17
	rrca                                             ; $5287: $0f
	cpl                                              ; $5288: $2f
	rra                                              ; $5289: $1f
	ld   e, a                                        ; $528a: $5f
	ccf                                              ; $528b: $3f
	cp   a                                           ; $528c: $bf
	ld   a, a                                        ; $528d: $7f
	add  b                                           ; $528e: $80
	sub  a                                           ; $528f: $97
	nop                                              ; $5290: $00
	ld   b, $03                                      ; $5291: $06 $03
	nop                                              ; $5293: $00
	inc  e                                           ; $5294: $1c
	inc  bc                                          ; $5295: $03
	ld   h, e                                        ; $5296: $63
	rra                                              ; $5297: $1f
	ld   h, b                                        ; $5298: $60
	sub  e                                           ; $5299: $93
	nop                                              ; $529a: $00
	ld   [bc], a                                     ; $529b: $02
	rra                                              ; $529c: $1f
	nop                                              ; $529d: $00
	ldh  [$80], a                                    ; $529e: $e0 $80
	dec  de                                          ; $52a0: $1b
	add  b                                           ; $52a1: $80
	rst  $30                                         ; $52a2: $f7
	add  b                                           ; $52a3: $80
	rst  $28                                         ; $52a4: $ef
	ld   bc, $20df                                   ; $52a5: $01 $df $20
	sub  e                                           ; $52a8: $93
	nop                                              ; $52a9: $00
	inc  b                                           ; $52aa: $04
	ldh  a, [rP1]                                    ; $52ab: $f0 $00
	inc  c                                           ; $52ad: $0c
	ldh  a, [$f3]                                    ; $52ae: $f0 $f3
	add  b                                           ; $52b0: $80
	db   $fc                                         ; $52b1: $fc
	add  b                                           ; $52b2: $80
	cp   $00                                         ; $52b3: $fe $00
	rst  $38                                         ; $52b5: $ff
	sub  h                                           ; $52b6: $94
	nop                                              ; $52b7: $00
	ld   [bc], a                                     ; $52b8: $02
	inc  bc                                          ; $52b9: $03
	nop                                              ; $52ba: $00
	inc  b                                           ; $52bb: $04
	add  c                                           ; $52bc: $81
	inc  bc                                          ; $52bd: $03
	nop                                              ; $52be: $00
	dec  bc                                          ; $52bf: $0b
	add  b                                           ; $52c0: $80
	ld   b, $03                                      ; $52c1: $06 $03
	dec  b                                           ; $52c3: $05
	ld   de, $090d                                   ; $52c4: $11 $0d $09
	add  b                                           ; $52c7: $80
	dec  bc                                          ; $52c8: $0b
	add  b                                           ; $52c9: $80
	rlca                                             ; $52ca: $07
	add  d                                           ; $52cb: $82
	ld   c, $03                                      ; $52cc: $0e $03
	rrca                                             ; $52ce: $0f
	rra                                              ; $52cf: $1f
	rlca                                             ; $52d0: $07
	rrca                                             ; $52d1: $0f
	add  b                                           ; $52d2: $80
	inc  bc                                          ; $52d3: $03
	add  b                                           ; $52d4: $80
	ld   bc, $0001                                   ; $52d5: $01 $01 $00
	ld   [$0380], sp                                 ; $52d8: $08 $80 $03
	add  c                                           ; $52db: $81
	rlca                                             ; $52dc: $07
	nop                                              ; $52dd: $00
	rla                                              ; $52de: $17
	add  c                                           ; $52df: $81
	rrca                                             ; $52e0: $0f
	nop                                              ; $52e1: $00
	ld   l, $83                                      ; $52e2: $2e $83
	dec  de                                          ; $52e4: $1b
	inc  c                                           ; $52e5: $0c
	dec  sp                                          ; $52e6: $3b
	dec  bc                                          ; $52e7: $0b
	ld   a, [bc]                                     ; $52e8: $0a
	dec  bc                                          ; $52e9: $0b
	cpl                                              ; $52ea: $2f
	dec  e                                           ; $52eb: $1d
	rst  JumpTable                                         ; $52ec: $df
	ld   a, $3f                                      ; $52ed: $3e $3f
	ld   a, a                                        ; $52ef: $7f
	cp   $1e                                         ; $52f0: $fe $1e
	ld   h, a                                        ; $52f2: $67
	adc  l                                           ; $52f3: $8d
	nop                                              ; $52f4: $00
	ld   b, $de                                      ; $52f5: $06 $de
	ld   bc, $0080                                   ; $52f7: $01 $80 $00
	ld   d, c                                        ; $52fa: $51
	ld   bc, $8100                                   ; $52fb: $01 $00 $81
	ld   bc, $1900                                   ; $52fe: $01 $00 $19
	add  e                                           ; $5301: $83
	ld   bc, $3103                                   ; $5302: $01 $03 $31
	ld   bc, $0100                                   ; $5305: $01 $00 $01
	add  b                                           ; $5308: $80
	nop                                              ; $5309: $00
	nop                                              ; $530a: $00
	ret  c                                           ; $530b: $d8

	add  b                                           ; $530c: $80
	nop                                              ; $530d: $00
	add  b                                           ; $530e: $80
	or   b                                           ; $530f: $b0
	dec  c                                           ; $5310: $0d
	ld   h, [hl]                                     ; $5311: $66
	ld   h, l                                        ; $5312: $65
	rst  $28                                         ; $5313: $ef
	ld   [$dcde], a                                  ; $5314: $ea $de $dc
	cp   l                                           ; $5317: $bd
	ld   sp, $22bb                                   ; $5318: $31 $bb $22
	ld   [hl], a                                     ; $531b: $77
	rst  $20                                         ; $531c: $e7
	rst  $28                                         ; $531d: $ef
	ld   l, a                                        ; $531e: $6f
	add  b                                           ; $531f: $80
	rst  $28                                         ; $5320: $ef
	ld   bc, $feff                                   ; $5321: $01 $ff $fe
	add  c                                           ; $5324: $81
	rst  $38                                         ; $5325: $ff
	add  d                                           ; $5326: $82
	nop                                              ; $5327: $00
	ld   a, [bc]                                     ; $5328: $0a
	add  b                                           ; $5329: $80
	nop                                              ; $532a: $00
	ld   b, b                                        ; $532b: $40
	add  b                                           ; $532c: $80
	ldh  [$c0], a                                    ; $532d: $e0 $c0
	ld   d, b                                        ; $532f: $50
	ret  nz                                          ; $5330: $c0

	add  sp, -$20                                    ; $5331: $e8 $e0
	add  sp, -$7f                                    ; $5333: $e8 $81
	ldh  [rP1], a                                    ; $5335: $e0 $00
	ret  nc                                          ; $5337: $d0

	add  c                                           ; $5338: $81
	ret  nz                                          ; $5339: $c0

	inc  b                                           ; $533a: $04
	and  b                                           ; $533b: $a0
	add  b                                           ; $533c: $80
	nop                                              ; $533d: $00
	add  b                                           ; $533e: $80
	ret  nz                                          ; $533f: $c0

	add  c                                           ; $5340: $81
	nop                                              ; $5341: $00
	ld   [bc], a                                     ; $5342: $02
	add  a                                           ; $5343: $87
	nop                                              ; $5344: $00
	inc  b                                           ; $5345: $04
	add  c                                           ; $5346: $81
	ld   bc, $0500                                   ; $5347: $01 $00 $05
	add  c                                           ; $534a: $81
	inc  bc                                          ; $534b: $03
	ld   [$050f], sp                                 ; $534c: $08 $0f $05
	rlca                                             ; $534f: $07
	ld   b, $1e                                      ; $5350: $06 $1e
	ld   c, $e0                                      ; $5352: $0e $e0
	ld   bc, $8dfe                                   ; $5354: $01 $fe $8d
	nop                                              ; $5357: $00
	nop                                              ; $5358: $00
	ld   [bc], a                                     ; $5359: $02
	add  c                                           ; $535a: $81
	nop                                              ; $535b: $00
	nop                                              ; $535c: $00
	inc  bc                                          ; $535d: $03
	add  c                                           ; $535e: $81
	nop                                              ; $535f: $00
	ld   c, $01                                      ; $5360: $0e $01
	nop                                              ; $5362: $00
	add  b                                           ; $5363: $80
	nop                                              ; $5364: $00
	ld   b, b                                        ; $5365: $40
	add  b                                           ; $5366: $80
	and  b                                           ; $5367: $a0
	ret  nz                                          ; $5368: $c0

	ret  nc                                          ; $5369: $d0

	ldh  [$e8], a                                    ; $536a: $e0 $e8
	ldh  a, [$f4]                                    ; $536c: $f0 $f4
	ld   hl, sp-$06                                  ; $536e: $f8 $fa
	add  c                                           ; $5370: $81
	db   $fc                                         ; $5371: $fc
	nop                                              ; $5372: $00
	db   $fd                                         ; $5373: $fd
	add  d                                           ; $5374: $82
	cp   $03                                         ; $5375: $fe $03
	rst  $38                                         ; $5377: $ff
	inc  de                                          ; $5378: $13
	ld   bc, $801d                                   ; $5379: $01 $1d $80
	inc  bc                                          ; $537c: $03
	add  c                                           ; $537d: $81
	rlca                                             ; $537e: $07
	nop                                              ; $537f: $00
	ld   c, $81                                      ; $5380: $0e $81
	inc  bc                                          ; $5382: $03
	ld   [bc], a                                     ; $5383: $02
	nop                                              ; $5384: $00
	ld   [bc], a                                     ; $5385: $02
	inc  b                                           ; $5386: $04
	add  e                                           ; $5387: $83
	ld   bc, $0300                                   ; $5388: $01 $00 $03
	add  c                                           ; $538b: $81
	nop                                              ; $538c: $00
	inc  c                                           ; $538d: $0c
	ld   bc, $8000                                   ; $538e: $01 $00 $80
	nop                                              ; $5391: $00
	ret  nz                                          ; $5392: $c0

	nop                                              ; $5393: $00
	ld   h, b                                        ; $5394: $60
	nop                                              ; $5395: $00
	rst  $28                                         ; $5396: $ef
	nop                                              ; $5397: $00
	ld   d, b                                        ; $5398: $50
	nop                                              ; $5399: $00
	ld   h, b                                        ; $539a: $60
	add  c                                           ; $539b: $81
	nop                                              ; $539c: $00
	dec  b                                           ; $539d: $05
	jr   jr_09b_53a0                                 ; $539e: $18 $00

jr_09b_53a0:
	ld   c, $06                                      ; $53a0: $0e $06
	ld   d, [hl]                                     ; $53a2: $56
	ld   b, $80                                      ; $53a3: $06 $80
	rrca                                             ; $53a5: $0f
	nop                                              ; $53a6: $00
	cp   a                                           ; $53a7: $bf
	adc  l                                           ; $53a8: $8d
	nop                                              ; $53a9: $00
	add  c                                           ; $53aa: $81
	rst  $38                                         ; $53ab: $ff
	ld   c, $f3                                      ; $53ac: $0e $f3
	rst  $38                                         ; $53ae: $ff
	ld   c, a                                        ; $53af: $4f
	ld   [hl], e                                     ; $53b0: $73
	ccf                                              ; $53b1: $3f
	or   e                                           ; $53b2: $b3
	inc  a                                           ; $53b3: $3c
	nop                                              ; $53b4: $00
	inc  bc                                          ; $53b5: $03
	ld   c, l                                        ; $53b6: $4d
	rrca                                             ; $53b7: $0f
	ld   h, $07                                      ; $53b8: $26 $07
	inc  de                                          ; $53ba: $13
	inc  bc                                          ; $53bb: $03
	add  b                                           ; $53bc: $80
	nop                                              ; $53bd: $00
	add  b                                           ; $53be: $80
	ld   [bc], a                                     ; $53bf: $02
	add  b                                           ; $53c0: $80
	inc  bc                                          ; $53c1: $03
	inc  b                                           ; $53c2: $04
	inc  de                                          ; $53c3: $13
	inc  bc                                          ; $53c4: $03
	ld   hl, $8001                                   ; $53c5: $21 $01 $80
	add  b                                           ; $53c8: $80
	ld   [bc], a                                     ; $53c9: $02
	jr   jr_09b_53cf                                 ; $53ca: $18 $03

	ld   b, e                                        ; $53cc: $43
	inc  bc                                          ; $53cd: $03
	inc  de                                          ; $53ce: $13

jr_09b_53cf:
	inc  bc                                          ; $53cf: $03
	dec  [hl]                                        ; $53d0: $35
	rlca                                             ; $53d1: $07
	daa                                              ; $53d2: $27
	rlca                                             ; $53d3: $07
	daa                                              ; $53d4: $27
	rlca                                             ; $53d5: $07
	ld   b, d                                        ; $53d6: $42
	inc  bc                                          ; $53d7: $03
	db   $e3                                         ; $53d8: $e3
	inc  bc                                          ; $53d9: $03
	xor  e                                           ; $53da: $ab
	dec  bc                                          ; $53db: $0b
	ld   l, l                                        ; $53dc: $6d
	dec  c                                           ; $53dd: $0d
	adc  l                                           ; $53de: $8d
	dec  c                                           ; $53df: $0d
	ld   c, l                                        ; $53e0: $4d
	dec  c                                           ; $53e1: $0d
	adc  [hl]                                        ; $53e2: $8e
	ld   c, $80                                      ; $53e3: $0e $80
	ld   e, $80                                      ; $53e5: $1e $80
	ld   a, $14                                      ; $53e7: $3e $14
	ld   [hl], a                                     ; $53e9: $77
	ld   a, a                                        ; $53ea: $7f
	ld   a, e                                        ; $53eb: $7b
	ld   a, a                                        ; $53ec: $7f
	dec  a                                           ; $53ed: $3d
	ccf                                              ; $53ee: $3f
	ld   a, $3f                                      ; $53ef: $3e $3f

jr_09b_53f1:
	rra                                              ; $53f1: $1f
	inc  e                                           ; $53f2: $1c
	rra                                              ; $53f3: $1f
	jr   @+$0e                                       ; $53f4: $18 $0c

	jr   nz, jr_09b_5420                             ; $53f6: $20 $28

	nop                                              ; $53f8: $00
	stop                                             ; $53f9: $10 $00
	stop                                             ; $53fb: $10 $00
	ldh  a, [$8d]                                    ; $53fd: $f0 $8d
	nop                                              ; $53ff: $00
	inc  b                                           ; $5400: $04
	ldh  a, [$e0]                                    ; $5401: $f0 $e0
	ldh  a, [$c0]                                    ; $5403: $f0 $c0
	ldh  [$81], a                                    ; $5405: $e0 $81
	add  b                                           ; $5407: $80
	ld   [bc], a                                     ; $5408: $02
	and  b                                           ; $5409: $a0
	ret  nz                                          ; $540a: $c0

	ret  nc                                          ; $540b: $d0

	add  e                                           ; $540c: $83
	ldh  [rAUD3ENA], a                               ; $540d: $e0 $1a
	jr   nz, jr_09b_53f1                             ; $540f: $20 $e0

	ret  nz                                          ; $5411: $c0

	ldh  [rAUD1SWEEP], a                             ; $5412: $e0 $10
	nop                                              ; $5414: $00
	jr   nz, jr_09b_5417                             ; $5415: $20 $00

jr_09b_5417:
	and  b                                           ; $5417: $a0
	add  b                                           ; $5418: $80
	ldh  a, [$e0]                                    ; $5419: $f0 $e0
	add  sp, -$10                                    ; $541b: $e8 $f0
	ld   h, [hl]                                     ; $541d: $66
	ld   a, b                                        ; $541e: $78
	add  hl, sp                                      ; $541f: $39

jr_09b_5420:
	cp   [hl]                                        ; $5420: $be
	sub  [hl]                                        ; $5421: $96
	rst  JumpTable                                         ; $5422: $df
	set  5, a                                        ; $5423: $cb $ef
	rst  $20                                         ; $5425: $e7
	rst  $30                                         ; $5426: $f7
	pop  af                                          ; $5427: $f1
	ei                                               ; $5428: $fb
	ld   sp, hl                                      ; $5429: $f9
	add  b                                           ; $542a: $80
	db   $fd                                         ; $542b: $fd
	add  b                                           ; $542c: $80
	cp   $01                                         ; $542d: $fe $01
	rst  $38                                         ; $542f: $ff
	ld   a, a                                        ; $5430: $7f
	add  b                                           ; $5431: $80
	rst  $38                                         ; $5432: $ff
	add  b                                           ; $5433: $80
	ld   hl, sp+$01                                  ; $5434: $f8 $01
	pop  af                                          ; $5436: $f1
	or   c                                           ; $5437: $b1
	add  b                                           ; $5438: $80
	pop  hl                                          ; $5439: $e1
	ld   [$81c1], sp                                 ; $543a: $08 $c1 $81
	add  b                                           ; $543d: $80
	ld   de, $2800                                   ; $543e: $11 $00 $28
	nop                                              ; $5441: $00
	and  c                                           ; $5442: $a1
	add  b                                           ; $5443: $80
	add  b                                           ; $5444: $80
	ret  nz                                          ; $5445: $c0

	nop                                              ; $5446: $00
	inc  b                                           ; $5447: $04
	add  e                                           ; $5448: $83
	nop                                              ; $5449: $00
	nop                                              ; $544a: $00
	sub  d                                           ; $544b: $92
	add  e                                           ; $544c: $83
	nop                                              ; $544d: $00
	nop                                              ; $544e: $00
	ld   [hl], c                                     ; $544f: $71
	adc  a                                           ; $5450: $8f
	nop                                              ; $5451: $00
	ld   c, $c0                                      ; $5452: $0e $c0
	nop                                              ; $5454: $00
	jr   nz, jr_09b_5417                             ; $5455: $20 $c0

	ret  nc                                          ; $5457: $d0

	ldh  [$e8], a                                    ; $5458: $e0 $e8
	ldh  a, [$f4]                                    ; $545a: $f0 $f4
	ld   hl, sp-$06                                  ; $545c: $f8 $fa
	ldh  a, [$fc]                                    ; $545e: $f0 $fc
	ld   h, b                                        ; $5460: $60
	ld   [hl], d                                     ; $5461: $72
	add  b                                           ; $5462: $80
	add  b                                           ; $5463: $80
	add  b                                           ; $5464: $80
	nop                                              ; $5465: $00
	add  b                                           ; $5466: $80
	add  b                                           ; $5467: $80
	add  c                                           ; $5468: $81
	ret  nz                                          ; $5469: $c0

	inc  b                                           ; $546a: $04
	ldh  [$80], a                                    ; $546b: $e0 $80
	ret  nz                                          ; $546d: $c0

	nop                                              ; $546e: $00
	add  b                                           ; $546f: $80
	add  l                                           ; $5470: $85
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00

jr_09b_5473:
	add  b                                           ; $5473: $80
	add  e                                           ; $5474: $83
	nop                                              ; $5475: $00
	nop                                              ; $5476: $00
	ld   b, b                                        ; $5477: $40
	add  c                                           ; $5478: $81
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	jr   nz, @-$7d                                   ; $547b: $20 $81

jr_09b_547d:
	nop                                              ; $547d: $00
	nop                                              ; $547e: $00
	db   $10                                         ; $547f: $10
	add  c                                           ; $5480: $81
	nop                                              ; $5481: $00
	dec  bc                                          ; $5482: $0b
	ld   [$2400], sp                                 ; $5483: $08 $00 $24
	nop                                              ; $5486: $00
	stop                                             ; $5487: $10 $00
	ld   [hl+], a                                    ; $5489: $22
	nop                                              ; $548a: $00
	adc  b                                           ; $548b: $88
	add  b                                           ; $548c: $80
	sub  l                                           ; $548d: $95
	add  b                                           ; $548e: $80
	add  b                                           ; $548f: $80
	ret  nz                                          ; $5490: $c0

	nop                                              ; $5491: $00
	jp   z, $c081                                    ; $5492: $ca $81 $c0

	nop                                              ; $5495: $00
	ld   h, l                                        ; $5496: $65
	add  c                                           ; $5497: $81
	ldh  [$80], a                                    ; $5498: $e0 $80
	ldh  a, [rSB]                                    ; $549a: $f0 $01
	ld   a, [$80f8]                                  ; $549c: $fa $f8 $80
	cp   b                                           ; $549f: $b8
	ld   bc, $bcbd                                   ; $54a0: $01 $bd $bc
	add  h                                           ; $54a3: $84
	cp   [hl]                                        ; $54a4: $be
	ld   bc, $dc9c                                   ; $54a5: $01 $9c $dc
	add  b                                           ; $54a8: $80
	ret  c                                           ; $54a9: $d8

	nop                                              ; $54aa: $00
	ccf                                              ; $54ab: $3f
	add  e                                           ; $54ac: $83
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	add  b                                           ; $54af: $80
	add  c                                           ; $54b0: $81
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	ld   b, b                                        ; $54b3: $40
	add  c                                           ; $54b4: $81
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	and  b                                           ; $54b7: $a0
	add  c                                           ; $54b8: $81
	nop                                              ; $54b9: $00
	ld   [bc], a                                     ; $54ba: $02
	ld   b, b                                        ; $54bb: $40
	nop                                              ; $54bc: $00
	db   $10                                         ; $54bd: $10
	add  e                                           ; $54be: $83
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	xor  b                                           ; $54c1: $a8
	add  e                                           ; $54c2: $83
	nop                                              ; $54c3: $00
	inc  b                                           ; $54c4: $04
	stop                                             ; $54c5: $10 $00
	inc  b                                           ; $54c7: $04
	nop                                              ; $54c8: $00
	ld   b, b                                        ; $54c9: $40
	add  c                                           ; $54ca: $81
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	ld   [$0087], sp                                 ; $54cd: $08 $87 $00
	ld   d, $08                                      ; $54d0: $16 $08
	nop                                              ; $54d2: $00
	ld   b, b                                        ; $54d3: $40
	nop                                              ; $54d4: $00
	inc  b                                           ; $54d5: $04
	nop                                              ; $54d6: $00
	stop                                             ; $54d7: $10 $00
	ld   [$b000], sp                                 ; $54d9: $08 $00 $b0
	nop                                              ; $54dc: $00
	jr   nz, jr_09b_54df                             ; $54dd: $20 $00

jr_09b_54df:
	ld   a, a                                        ; $54df: $7f
	add  b                                           ; $54e0: $80
	call c, $c5c0                                    ; $54e1: $dc $c0 $c5
	ret  nz                                          ; $54e4: $c0

	ldh  a, [c]                                      ; $54e5: $f2
	ldh  [$fc], a                                    ; $54e6: $e0 $fc
	add  e                                           ; $54e8: $83
	ldh  a, [rP1]                                    ; $54e9: $f0 $00
	add  sp, -$7c                                    ; $54eb: $e8 $84
	ld   h, b                                        ; $54ed: $60

jr_09b_54ee:
	nop                                              ; $54ee: $00
	jr   nz, jr_09b_5473                             ; $54ef: $20 $82

	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	ld   h, b                                        ; $54f3: $60
	add  c                                           ; $54f4: $81
	nop                                              ; $54f5: $00
	ld   [bc], a                                     ; $54f6: $02
	ret  nz                                          ; $54f7: $c0

	nop                                              ; $54f8: $00
	push de                                          ; $54f9: $d5
	add  e                                           ; $54fa: $83
	jr   c, jr_09b_547d                              ; $54fb: $38 $80

	jr   jr_09b_5507                                 ; $54fd: $18 $08

	ld   d, e                                        ; $54ff: $53
	db   $10                                         ; $5500: $10
	jp   nz, $c000                                   ; $5501: $c2 $00 $c0

	nop                                              ; $5504: $00
	ld   b, b                                        ; $5505: $40
	nop                                              ; $5506: $00

jr_09b_5507:
	add  b                                           ; $5507: $80
	add  b                                           ; $5508: $80
	nop                                              ; $5509: $00
	add  b                                           ; $550a: $80
	ld   h, b                                        ; $550b: $60
	ld   c, $88                                      ; $550c: $0e $88
	adc  h                                           ; $550e: $8c
	adc  b                                           ; $550f: $88
	xor  b                                           ; $5510: $a8
	sbc  b                                           ; $5511: $98
	jr   c, @+$4a                                    ; $5512: $38 $48

	ld   [hl], b                                     ; $5514: $70
	nop                                              ; $5515: $00
	ld   b, b                                        ; $5516: $40
	nop                                              ; $5517: $00
	ld   e, b                                        ; $5518: $58
	rlca                                             ; $5519: $07
	rla                                              ; $551a: $17
	rlca                                             ; $551b: $07
	add  b                                           ; $551c: $80
	inc  bc                                          ; $551d: $03
	ld   [bc], a                                     ; $551e: $02
	ld   h, e                                        ; $551f: $63
	inc  bc                                          ; $5520: $03
	adc  c                                           ; $5521: $89
	add  c                                           ; $5522: $81
	ld   bc, $350a                                   ; $5523: $01 $0a $35
	ld   bc, $00c2                                   ; $5526: $01 $c2 $00
	ld   d, b                                        ; $5529: $50
	nop                                              ; $552a: $00
	ld   [bc], a                                     ; $552b: $02
	nop                                              ; $552c: $00
	ld   bc, $0300                                   ; $552d: $01 $00 $03
	add  e                                           ; $5530: $83
	ld   bc, $0082                                   ; $5531: $01 $82 $00
	ld   [de], a                                     ; $5534: $12
	db   $e3                                         ; $5535: $e3
	nop                                              ; $5536: $00
	inc  de                                          ; $5537: $13
	nop                                              ; $5538: $00
	inc  c                                           ; $5539: $0c
	nop                                              ; $553a: $00
	rlca                                             ; $553b: $07
	ld   h, b                                        ; $553c: $60
	ld   h, [hl]                                     ; $553d: $66
	ld   b, h                                        ; $553e: $44
	ld   d, [hl]                                     ; $553f: $56
	ld   b, $73                                      ; $5540: $06 $73
	ld   [de], a                                     ; $5542: $12
	or   $0c                                         ; $5543: $f6 $0c
	halt                                             ; $5545: $76
	ld   [$8b0c], sp                                 ; $5546: $08 $0c $8b
	nop                                              ; $5549: $00
	ld   bc, $6699                                   ; $554a: $01 $99 $66
	add  b                                           ; $554d: $80
	and  [hl]                                        ; $554e: $a6
	add  b                                           ; $554f: $80
	or   [hl]                                        ; $5550: $b6
	add  h                                           ; $5551: $84
	ret  nc                                          ; $5552: $d0

	add  b                                           ; $5553: $80
	ld   b, b                                        ; $5554: $40
	ld   bc, $4050                                   ; $5555: $01 $50 $40
	add  b                                           ; $5558: $80
	nop                                              ; $5559: $00
	ld   [bc], a                                     ; $555a: $02

jr_09b_555b:
	jr   nz, jr_09b_555d                             ; $555b: $20 $00

jr_09b_555d:
	jp   nz, $0281                                   ; $555d: $c2 $81 $02

	ld   [bc], a                                     ; $5560: $02
	add  d                                           ; $5561: $82
	ld   [bc], a                                     ; $5562: $02
	add  d                                           ; $5563: $82
	add  b                                           ; $5564: $80
	ld   [bc], a                                     ; $5565: $02
	inc  bc                                          ; $5566: $03
	ld   b, $15                                      ; $5567: $06 $15
	rlca                                             ; $5569: $07
	ld   e, h                                        ; $556a: $5c
	add  e                                           ; $556b: $83
	jr   c, jr_09b_54ee                              ; $556c: $38 $80

	jr   @+$06                                       ; $556e: $18 $04

	ld   d, e                                        ; $5570: $53
	db   $10                                         ; $5571: $10
	jp   nz, $c000                                   ; $5572: $c2 $00 $c0

	add  c                                           ; $5575: $81
	nop                                              ; $5576: $00
	inc  c                                           ; $5577: $0c
	jr   nz, jr_09b_557a                             ; $5578: $20 $00

jr_09b_557a:
	ret  nc                                          ; $557a: $d0

	nop                                              ; $557b: $00
	jr   nc, jr_09b_557e                             ; $557c: $30 $00

jr_09b_557e:
	db   $10                                         ; $557e: $10
	adc  b                                           ; $557f: $88
	inc  d                                           ; $5580: $14
	ld   b, b                                        ; $5581: $40
	ld   [hl], b                                     ; $5582: $70
	nop                                              ; $5583: $00
	ld   b, b                                        ; $5584: $40
	add  c                                           ; $5585: $81
	nop                                              ; $5586: $00
	inc  bc                                          ; $5587: $03
	ld   e, b                                        ; $5588: $58
	rlca                                             ; $5589: $07
	rla                                              ; $558a: $17
	rlca                                             ; $558b: $07
	add  b                                           ; $558c: $80
	inc  bc                                          ; $558d: $03
	ld   c, $63                                      ; $558e: $0e $63
	inc  bc                                          ; $5590: $03
	adc  c                                           ; $5591: $89
	ld   bc, $0109                                   ; $5592: $01 $09 $01
	dec  a                                           ; $5595: $3d
	ld   bc, $00c2                                   ; $5596: $01 $c2 $00
	ld   d, b                                        ; $5599: $50
	nop                                              ; $559a: $00
	inc  bc                                          ; $559b: $03
	nop                                              ; $559c: $00
	inc  bc                                          ; $559d: $03
	add  d                                           ; $559e: $82
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	ld   bc, $0084                                   ; $55a1: $01 $84 $00
	db   $10                                         ; $55a4: $10
	db   $e3                                         ; $55a5: $e3
	nop                                              ; $55a6: $00
	db   $e3                                         ; $55a7: $e3
	nop                                              ; $55a8: $00
	ret  nz                                          ; $55a9: $c0

	nop                                              ; $55aa: $00
	jr   c, jr_09b_55ad                              ; $55ab: $38 $00

jr_09b_55ad:
	ld   b, a                                        ; $55ad: $47
	nop                                              ; $55ae: $00
	ldh  a, [$03]                                    ; $55af: $f0 $03
	ld   [hl], d                                     ; $55b1: $72
	inc  c                                           ; $55b2: $0c
	ld   [hl], $00                                   ; $55b3: $36 $00
	inc  b                                           ; $55b5: $04
	adc  l                                           ; $55b6: $8d
	nop                                              ; $55b7: $00
	ld   bc, $6699                                   ; $55b8: $01 $99 $66
	add  b                                           ; $55bb: $80
	and  [hl]                                        ; $55bc: $a6
	add  b                                           ; $55bd: $80
	or   [hl]                                        ; $55be: $b6
	add  h                                           ; $55bf: $84
	ret  nc                                          ; $55c0: $d0

	add  b                                           ; $55c1: $80
	ld   b, b                                        ; $55c2: $40
	ld   bc, $4050                                   ; $55c3: $01 $50 $40

jr_09b_55c6:
	add  b                                           ; $55c6: $80
	nop                                              ; $55c7: $00
	ld   [bc], a                                     ; $55c8: $02
	jr   nz, jr_09b_55cb                             ; $55c9: $20 $00

jr_09b_55cb:
	jp   nz, $0281                                   ; $55cb: $c2 $81 $02

	nop                                              ; $55ce: $00
	add  d                                           ; $55cf: $82
	add  c                                           ; $55d0: $81
	ld   [bc], a                                     ; $55d1: $02
	inc  b                                           ; $55d2: $04
	add  d                                           ; $55d3: $82

jr_09b_55d4:
	ld   b, $15                                      ; $55d4: $06 $15
	rlca                                             ; $55d6: $07
	ld   e, h                                        ; $55d7: $5c
	add  e                                           ; $55d8: $83

jr_09b_55d9:
	jr   c, jr_09b_555b                              ; $55d9: $38 $80

	jr   @+$06                                       ; $55db: $18 $04

	ld   d, e                                        ; $55dd: $53
	db   $10                                         ; $55de: $10
	jp   nz, $c000                                   ; $55df: $c2 $00 $c0

	add  c                                           ; $55e2: $81
	nop                                              ; $55e3: $00
	inc  c                                           ; $55e4: $0c
	jr   nc, jr_09b_55e7                             ; $55e5: $30 $00

jr_09b_55e7:
	add  b                                           ; $55e7: $80
	nop                                              ; $55e8: $00

jr_09b_55e9:
	ld   c, b                                        ; $55e9: $48
	nop                                              ; $55ea: $00
	jr   c, jr_09b_55ed                              ; $55eb: $38 $00

jr_09b_55ed:
	sbc  h                                           ; $55ed: $9c
	ld   b, b                                        ; $55ee: $40
	ld   h, b                                        ; $55ef: $60
	nop                                              ; $55f0: $00
	ld   b, b                                        ; $55f1: $40
	add  c                                           ; $55f2: $81
	nop                                              ; $55f3: $00
	inc  bc                                          ; $55f4: $03
	ld   e, b                                        ; $55f5: $58
	rlca                                             ; $55f6: $07
	rla                                              ; $55f7: $17
	rlca                                             ; $55f8: $07
	add  b                                           ; $55f9: $80
	inc  bc                                          ; $55fa: $03
	ld   [bc], a                                     ; $55fb: $02
	ld   h, e                                        ; $55fc: $63
	inc  bc                                          ; $55fd: $03
	adc  c                                           ; $55fe: $89
	add  c                                           ; $55ff: $81
	ld   bc, $3508                                   ; $5600: $01 $08 $35
	ld   bc, $00c2                                   ; $5603: $01 $c2 $00
	ld   d, b                                        ; $5606: $50
	nop                                              ; $5607: $00
	inc  bc                                          ; $5608: $03
	nop                                              ; $5609: $00
	inc  bc                                          ; $560a: $03
	add  e                                           ; $560b: $83
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	ld   bc, $0083                                   ; $560e: $01 $83 $00
	ld   [bc], a                                     ; $5611: $02
	db   $e3                                         ; $5612: $e3
	nop                                              ; $5613: $00
	db   $e3                                         ; $5614: $e3
	add  c                                           ; $5615: $81
	nop                                              ; $5616: $00
	ld   a, [bc]                                     ; $5617: $0a
	add  b                                           ; $5618: $80
	nop                                              ; $5619: $00
	ld   [hl], b                                     ; $561a: $70
	nop                                              ; $561b: $00
	rrca                                             ; $561c: $0f
	nop                                              ; $561d: $00
	ret  nz                                          ; $561e: $c0

	ld   c, $33                                      ; $561f: $0e $33
	nop                                              ; $5621: $00
	ld   [bc], a                                     ; $5622: $02
	adc  l                                           ; $5623: $8d
	nop                                              ; $5624: $00
	ld   bc, $6699                                   ; $5625: $01 $99 $66
	add  b                                           ; $5628: $80
	and  [hl]                                        ; $5629: $a6
	add  b                                           ; $562a: $80
	or   [hl]                                        ; $562b: $b6
	add  h                                           ; $562c: $84
	ret  nc                                          ; $562d: $d0

	add  b                                           ; $562e: $80
	ld   b, b                                        ; $562f: $40
	ld   bc, $4050                                   ; $5630: $01 $50 $40
	add  b                                           ; $5633: $80
	nop                                              ; $5634: $00
	ld   [bc], a                                     ; $5635: $02

jr_09b_5636:
	jr   nz, jr_09b_5638                             ; $5636: $20 $00

jr_09b_5638:
	jp   nz, $0283                                   ; $5638: $c2 $83 $02

	ld   b, $82                                      ; $563b: $06 $82
	ld   [bc], a                                     ; $563d: $02
	add  d                                           ; $563e: $82
	ld   b, $15                                      ; $563f: $06 $15
	rlca                                             ; $5641: $07
	sbc  c                                           ; $5642: $99
	add  b                                           ; $5643: $80
	jr   nz, jr_09b_55c6                             ; $5644: $20 $80

	ld   h, b                                        ; $5646: $60
	ld   bc, $f070                                   ; $5647: $01 $70 $f0
	add  b                                           ; $564a: $80
	ld   h, b                                        ; $564b: $60
	dec  b                                           ; $564c: $05
	nop                                              ; $564d: $00
	add  b                                           ; $564e: $80
	nop                                              ; $564f: $00
	adc  b                                           ; $5650: $88
	db   $10                                         ; $5651: $10
	jr   jr_09b_55d4                                 ; $5652: $18 $80

jr_09b_5654:
	nop                                              ; $5654: $00
	add  b                                           ; $5655: $80
	jr   nz, jr_09b_55d9                             ; $5656: $20 $81

	nop                                              ; $5658: $00
	inc  b                                           ; $5659: $04
	pop  bc                                          ; $565a: $c1
	ld   [bc], a                                     ; $565b: $02
	ld   a, h                                        ; $565c: $7c
	nop                                              ; $565d: $00
	and  b                                           ; $565e: $a0
	add  b                                           ; $565f: $80
	ld   c, $03                                      ; $5660: $0e $03
	inc  c                                           ; $5662: $0c
	rla                                              ; $5663: $17
	inc  b                                           ; $5664: $04
	add  b                                           ; $5665: $80
	add  b                                           ; $5666: $80
	jr   nz, jr_09b_55e9                             ; $5667: $20 $80

	ld   h, b                                        ; $5669: $60
	ld   bc, $f070                                   ; $566a: $01 $70 $f0
	add  b                                           ; $566d: $80
	ld   h, b                                        ; $566e: $60
	dec  b                                           ; $566f: $05
	nop                                              ; $5670: $00
	ldh  [$60], a                                    ; $5671: $e0 $60
	cp   b                                           ; $5673: $b8
	ldh  a, [$c8]                                    ; $5674: $f0 $c8
	add  b                                           ; $5676: $80
	ld   [hl], b                                     ; $5677: $70
	add  b                                           ; $5678: $80
	nop                                              ; $5679: $00
	add  b                                           ; $567a: $80
	jr   nz, jr_09b_5682                             ; $567b: $20 $05

	nop                                              ; $567d: $00
	pop  bc                                          ; $567e: $c1
	ld   [bc], a                                     ; $567f: $02
	ld   a, h                                        ; $5680: $7c
	nop                                              ; $5681: $00

jr_09b_5682:
	and  b                                           ; $5682: $a0
	add  b                                           ; $5683: $80
	ld   c, $02                                      ; $5684: $0e $02
	inc  c                                           ; $5686: $0c
	rla                                              ; $5687: $17
	inc  b                                           ; $5688: $04
	rst  $38                                         ; $5689: $ff
	nop                                              ; $568a: $00
	rst  $38                                         ; $568b: $ff
	nop                                              ; $568c: $00
	rst  $38                                         ; $568d: $ff
	nop                                              ; $568e: $00
	rst  $38                                         ; $568f: $ff
	nop                                              ; $5690: $00
	rst  $38                                         ; $5691: $ff
	nop                                              ; $5692: $00
	sbc  c                                           ; $5693: $99
	nop                                              ; $5694: $00
	and  $00                                         ; $5695: $e6 $00
	add  b                                           ; $5697: $80
	nop                                              ; $5698: $00
	inc  b                                           ; $5699: $04
	inc  a                                           ; $569a: $3c
	nop                                              ; $569b: $00
	rst  JumpTable                                         ; $569c: $df
	nop                                              ; $569d: $00
	ld   h, e                                        ; $569e: $63
	add  b                                           ; $569f: $80
	nop                                              ; $56a0: $00
	ld   [bc], a                                     ; $56a1: $02
	ld   a, $be                                      ; $56a2: $3e $be
	ld   a, a                                        ; $56a4: $7f
	add  b                                           ; $56a5: $80
	ld   [hl], a                                     ; $56a6: $77
	ld   e, $4f                                      ; $56a7: $1e $4f
	ld   b, a                                        ; $56a9: $47
	ld   [$4e00], sp                                 ; $56aa: $08 $00 $4e
	nop                                              ; $56ad: $00
	sub  b                                           ; $56ae: $90
	nop                                              ; $56af: $00
	ret  nz                                          ; $56b0: $c0

	nop                                              ; $56b1: $00
	ld   b, d                                        ; $56b2: $42
	nop                                              ; $56b3: $00
	jr   nc, jr_09b_5636                             ; $56b4: $30 $80

	adc  h                                           ; $56b6: $8c
	ret  nz                                          ; $56b7: $c0

	pop  de                                          ; $56b8: $d1
	ret  nz                                          ; $56b9: $c0

	ld   c, $00                                      ; $56ba: $0e $00
	ld   e, [hl]                                     ; $56bc: $5e
	nop                                              ; $56bd: $00
	ld   l, $00                                      ; $56be: $2e $00
	ldh  a, [rP1]                                    ; $56c0: $f0 $00
	ccf                                              ; $56c2: $3f
	nop                                              ; $56c3: $00
	cp   a                                           ; $56c4: $bf
	nop                                              ; $56c5: $00
	ret  nz                                          ; $56c6: $c0

	add  b                                           ; $56c7: $80
	nop                                              ; $56c8: $00
	add  b                                           ; $56c9: $80
	ccf                                              ; $56ca: $3f
	add  l                                           ; $56cb: $85
	nop                                              ; $56cc: $00
	inc  b                                           ; $56cd: $04
	ret  nz                                          ; $56ce: $c0

	nop                                              ; $56cf: $00
	ldh  [rP1], a                                    ; $56d0: $e0 $00
	jr   nc, jr_09b_5654                             ; $56d2: $30 $80

	nop                                              ; $56d4: $00
	ld   bc, $9780                                   ; $56d5: $01 $80 $97
	add  c                                           ; $56d8: $81
	nop                                              ; $56d9: $00
	jr   jr_09b_56e2                                 ; $56da: $18 $06

	nop                                              ; $56dc: $00
	ld   bc, $0100                                   ; $56dd: $01 $00 $01
	nop                                              ; $56e0: $00
	rlca                                             ; $56e1: $07

jr_09b_56e2:
	nop                                              ; $56e2: $00
	rra                                              ; $56e3: $1f
	nop                                              ; $56e4: $00
	ld   a, e                                        ; $56e5: $7b
	nop                                              ; $56e6: $00
	sbc  h                                           ; $56e7: $9c
	nop                                              ; $56e8: $00
	ld   bc, $0300                                   ; $56e9: $01 $00 $03
	nop                                              ; $56ec: $00
	db   $ec                                         ; $56ed: $ec
	ld   bc, $01f1                                   ; $56ee: $01 $f1 $01
	ld   h, c                                        ; $56f1: $61
	nop                                              ; $56f2: $00
	add  b                                           ; $56f3: $80
	add  b                                           ; $56f4: $80
	jr   nc, jr_09b_56fc                             ; $56f5: $30 $05

	ld   h, c                                        ; $56f7: $61
	ld   hl, $4f8f                                   ; $56f8: $21 $8f $4f
	ccf                                              ; $56fb: $3f

jr_09b_56fc:
	cp   a                                           ; $56fc: $bf
	add  b                                           ; $56fd: $80
	ld   a, a                                        ; $56fe: $7f
	add  b                                           ; $56ff: $80
	rst  $38                                         ; $5700: $ff
	ld   bc, $9e9f                                   ; $5701: $01 $9f $9e
	add  b                                           ; $5704: $80
	ld   a, [hl]                                     ; $5705: $7e
	dec  c                                           ; $5706: $0d
	cp   $fc                                         ; $5707: $fe $fc
	cp   h                                           ; $5709: $bc
	or   c                                           ; $570a: $b1
	ldh  [c], a                                      ; $570b: $e2
	and  b                                           ; $570c: $a0
	db   $ed                                         ; $570d: $ed
	ld   l, l                                        ; $570e: $6d
	cp   a                                           ; $570f: $bf
	sbc  d                                           ; $5710: $9a
	ld   e, [hl]                                     ; $5711: $5e
	ld   e, h                                        ; $5712: $5c
	ld   e, l                                        ; $5713: $5d
	ld   b, c                                        ; $5714: $41
	add  c                                           ; $5715: $81
	db   $eb                                         ; $5716: $eb
	inc  c                                           ; $5717: $0c
	db   $e3                                         ; $5718: $e3
	rst  $20                                         ; $5719: $e7
	jr   @+$01                                       ; $571a: $18 $ff

	di                                               ; $571c: $f3

jr_09b_571d:
	rst  $30                                         ; $571d: $f7
	ld   a, l                                        ; $571e: $7d
	ld   a, e                                        ; $571f: $7b
	ld   a, $b9                                      ; $5720: $3e $b9
	cp   e                                           ; $5722: $bb
	cp   h                                           ; $5723: $bc
	cp   l                                           ; $5724: $bd
	add  b                                           ; $5725: $80
	cp   [hl]                                        ; $5726: $be
	add  c                                           ; $5727: $81
	cp   a                                           ; $5728: $bf
	nop                                              ; $5729: $00
	ld   l, a                                        ; $572a: $6f
	add  d                                           ; $572b: $82
	ret  nz                                          ; $572c: $c0

	add  c                                           ; $572d: $81
	ldh  [$0e], a                                    ; $572e: $e0 $0e
	inc  l                                           ; $5730: $2c
	ldh  [$c2], a                                    ; $5731: $e0 $c2
	ld   h, b                                        ; $5733: $60
	pop  hl                                          ; $5734: $e1
	jr   nz, jr_09b_5797                             ; $5735: $20 $60

	nop                                              ; $5737: $00
	ld   hl, sp+$00                                  ; $5738: $f8 $00
	ld   b, [hl]                                     ; $573a: $46
	nop                                              ; $573b: $00
	add  b                                           ; $573c: $80
	nop                                              ; $573d: $00
	rlca                                             ; $573e: $07
	add  b                                           ; $573f: $80
	ld   b, $00                                      ; $5740: $06 $00
	inc  b                                           ; $5742: $04
	add  b                                           ; $5743: $80
	add  h                                           ; $5744: $84
	nop                                              ; $5745: $00
	call $0580                                       ; $5746: $cd $80 $05
	add  hl, bc                                      ; $5749: $09
	ld   b, c                                        ; $574a: $41
	ld   c, d                                        ; $574b: $4a
	nop                                              ; $574c: $00
	ld   c, h                                        ; $574d: $4c
	inc  bc                                          ; $574e: $03
	sbc  e                                           ; $574f: $9b
	rlca                                             ; $5750: $07
	add  a                                           ; $5751: $87
	rrca                                             ; $5752: $0f
	ccf                                              ; $5753: $3f
	add  c                                           ; $5754: $81
	rra                                              ; $5755: $1f
	inc  b                                           ; $5756: $04
	rst  JumpTable                                         ; $5757: $df
	rra                                              ; $5758: $1f
	rrca                                             ; $5759: $0f
	cpl                                              ; $575a: $2f
	ld   e, a                                        ; $575b: $5f
	add  b                                           ; $575c: $80
	ret  nz                                          ; $575d: $c0

	add  b                                           ; $575e: $80
	ld   hl, sp-$80                                  ; $575f: $f8 $80
	pop  af                                          ; $5761: $f1
	ld   c, $f3                                      ; $5762: $0e $f3
	ldh  a, [c]                                      ; $5764: $f2
	and  $e4                                         ; $5765: $e6 $e4
	call z, $fcc1                                    ; $5767: $cc $c1 $fc
	adc  $f8                                         ; $576a: $ce $f8
	rst  ToBoot                                         ; $576c: $c7
	ld   a, h                                        ; $576d: $7c
	ld   e, h                                        ; $576e: $5c
	call c, $b5b4                                    ; $576f: $dc $b4 $b5
	add  b                                           ; $5772: $80
	ld   [hl], l                                     ; $5773: $75
	ld   [$2b61], sp                                 ; $5774: $08 $61 $2b
	adc  d                                           ; $5777: $8a
	ld   c, d                                        ; $5778: $4a
	ld   c, b                                        ; $5779: $48
	ret  c                                           ; $577a: $d8

	sbc  b                                           ; $577b: $98
	cp   b                                           ; $577c: $b8
	dec  sp                                          ; $577d: $3b
	add  b                                           ; $577e: $80
	rst  $20                                         ; $577f: $e7
	inc  b                                           ; $5780: $04
	rlca                                             ; $5781: $07
	rra                                              ; $5782: $1f
	add  b                                           ; $5783: $80
	ldh  [$87], a                                    ; $5784: $e0 $87
	add  h                                           ; $5786: $84
	inc  bc                                          ; $5787: $03
	inc  b                                           ; $5788: $04
	ld   bc, $c100                                   ; $5789: $01 $00 $c1
	cp   a                                           ; $578c: $bf
	or   a                                           ; $578d: $b7
	add  d                                           ; $578e: $82
	scf                                              ; $578f: $37
	dec  b                                           ; $5790: $05
	or   a                                           ; $5791: $b7
	cp   e                                           ; $5792: $bb
	dec  sp                                          ; $5793: $3b
	dec  de                                          ; $5794: $1b
	ld   e, d                                        ; $5795: $5a
	ld   e, h                                        ; $5796: $5c

jr_09b_5797:
	add  b                                           ; $5797: $80
	ld   e, l                                        ; $5798: $5d
	rlca                                             ; $5799: $07
	db   $dd                                         ; $579a: $dd
	jr   nc, jr_09b_571d                             ; $579b: $30 $80

	adc  b                                           ; $579d: $88
	add  b                                           ; $579e: $80
	add  h                                           ; $579f: $84
	ret  nz                                          ; $57a0: $c0

	jp   nz, $c880                                   ; $57a1: $c2 $80 $c8

	ld   bc, $cdcc                                   ; $57a4: $01 $cc $cd
	add  b                                           ; $57a7: $80
	add  [hl]                                        ; $57a8: $86
	add  b                                           ; $57a9: $80
	rlca                                             ; $57aa: $07
	inc  d                                           ; $57ab: $14
	inc  sp                                          ; $57ac: $33
	di                                               ; $57ad: $f3
	nop                                              ; $57ae: $00
	ret  nz                                          ; $57af: $c0

	nop                                              ; $57b0: $00
	add  b                                           ; $57b1: $80
	nop                                              ; $57b2: $00
	ld   b, b                                        ; $57b3: $40
	nop                                              ; $57b4: $00
	and  b                                           ; $57b5: $a0
	nop                                              ; $57b6: $00
	ret  nc                                          ; $57b7: $d0

	nop                                              ; $57b8: $00
	ldh  [rP1], a                                    ; $57b9: $e0 $00
	jr   jr_09b_57bd                                 ; $57bb: $18 $00

jr_09b_57bd:
	cp   c                                           ; $57bd: $b9
	ld   bc, $8161                                   ; $57be: $01 $61 $81
	add  d                                           ; $57c1: $82
	ld   bc, $2380                                   ; $57c2: $01 $80 $23
	add  b                                           ; $57c5: $80
	ld   h, a                                        ; $57c6: $67
	add  b                                           ; $57c7: $80
	ld   l, a                                        ; $57c8: $6f
	nop                                              ; $57c9: $00
	rst  $28                                         ; $57ca: $ef
	add  b                                           ; $57cb: $80
	di                                               ; $57cc: $f3
	add  b                                           ; $57cd: $80
	ld   c, e                                        ; $57ce: $4b
	add  b                                           ; $57cf: $80
	scf                                              ; $57d0: $37
	add  b                                           ; $57d1: $80
	add  c                                           ; $57d2: $81
	inc  de                                          ; $57d3: $13
	ld   [$900e], sp                                 ; $57d4: $08 $0e $90
	sub  l                                           ; $57d7: $95
	call nc, $c8d6                                   ; $57d8: $d4 $d6 $c8
	ret                                              ; $57db: $c9


	rlca                                             ; $57dc: $07
	add  b                                           ; $57dd: $80
	scf                                              ; $57de: $37
	or   $97                                         ; $57df: $f6 $97
	sub  l                                           ; $57e1: $95
	sub  a                                           ; $57e2: $97
	db   $d3                                         ; $57e3: $d3
	rla                                              ; $57e4: $17
	rst  $30                                         ; $57e5: $f7
	rlca                                             ; $57e6: $07
	rra                                              ; $57e7: $1f
	add  b                                           ; $57e8: $80
	ld   [bc], a                                     ; $57e9: $02
	inc  e                                           ; $57ea: $1c
	ld   bc, $c3c0                                   ; $57eb: $01 $c0 $c3
	ld   a, l                                        ; $57ee: $7d
	ldh  a, [$78]                                    ; $57ef: $f0 $78
	ldh  [$f1], a                                    ; $57f1: $e0 $f1
	call c, $b9fe                                    ; $57f3: $dc $fe $b9
	db   $fd                                         ; $57f6: $fd
	ld   [hl], c                                     ; $57f7: $71
	ld   sp, hl                                      ; $57f8: $f9
	di                                               ; $57f9: $f3
	ldh  [c], a                                      ; $57fa: $e2
	or   $f4                                         ; $57fb: $f6 $f4
	db   $ec                                         ; $57fd: $ec
	add  [hl]                                        ; $57fe: $86
	ld   [hl-], a                                    ; $57ff: $32
	cp   [hl]                                        ; $5800: $be
	ld   [$f00c], sp                                 ; $5801: $08 $0c $f0
	ret                                              ; $5804: $c9


	push bc                                          ; $5805: $c5
	add  c                                           ; $5806: $81
	add  e                                           ; $5807: $83
	add  h                                           ; $5808: $84
	nop                                              ; $5809: $00
	nop                                              ; $580a: $00
	ld   bc, $0081                                   ; $580b: $01 $81 $00
	inc  b                                           ; $580e: $04
	inc  bc                                          ; $580f: $03
	nop                                              ; $5810: $00
	ld   bc, $0703                                   ; $5811: $01 $03 $07
	add  b                                           ; $5814: $80
	ld   b, $01                                      ; $5815: $06 $01
	dec  b                                           ; $5817: $05
	ld   [bc], a                                     ; $5818: $02
	add  c                                           ; $5819: $81
	nop                                              ; $581a: $00
	inc  d                                           ; $581b: $14
	pop  hl                                          ; $581c: $e1
	sub  $46                                         ; $581d: $d6 $46
	ld   h, h                                        ; $581f: $64
	ld   h, l                                        ; $5820: $65
	ld   l, d                                        ; $5821: $6a
	ld   [$e0e8], a                                  ; $5822: $ea $e8 $e0
	nop                                              ; $5825: $00
	add  b                                           ; $5826: $80
	ld   [hl], h                                     ; $5827: $74
	jr   nc, jr_09b_5862                             ; $5828: $30 $38

	jr   jr_09b_5846                                 ; $582a: $18 $1a

	ld   b, $9f                                      ; $582c: $06 $9f
	rra                                              ; $582e: $1f
	rst  JumpTable                                         ; $582f: $df
	sbc  a                                           ; $5830: $9f
	add  c                                           ; $5831: $81
	ld   a, a                                        ; $5832: $7f
	ld   c, $df                                      ; $5833: $0e $df
	ccf                                              ; $5835: $3f
	ld   l, a                                        ; $5836: $6f
	rra                                              ; $5837: $1f
	rla                                              ; $5838: $17
	sbc  a                                           ; $5839: $9f
	cp   e                                           ; $583a: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $583b: $cf
	ei                                               ; $583c: $fb
	add  b                                           ; $583d: $80
	adc  h                                           ; $583e: $8c
	add  b                                           ; $583f: $80
	or   b                                           ; $5840: $b0
	ret  nz                                          ; $5841: $c0

	add  $80                                         ; $5842: $c6 $80
	ret  nz                                          ; $5844: $c0

	rlca                                             ; $5845: $07

jr_09b_5846:
	ldh  [$d0], a                                    ; $5846: $e0 $d0
	ret  nz                                          ; $5848: $c0

	pop  bc                                          ; $5849: $c1
	ret  nz                                          ; $584a: $c0

	call nc, $08c0                                   ; $584b: $d4 $c0 $08
	add  b                                           ; $584e: $80
	ld   a, b                                        ; $584f: $78
	add  b                                           ; $5850: $80
	cp   h                                           ; $5851: $bc
	add  b                                           ; $5852: $80
	rst  JumpTable                                         ; $5853: $df
	add  hl, bc                                      ; $5854: $09
	add  sp, -$17                                    ; $5855: $e8 $e9
	db   $f4                                         ; $5857: $f4
	or   $e8                                         ; $5858: $f6 $e8
	db   $ec                                         ; $585a: $ec
	ld   h, b                                        ; $585b: $60
	ld   l, e                                        ; $585c: $6b
	nop                                              ; $585d: $00
	inc  c                                           ; $585e: $0c
	add  b                                           ; $585f: $80
	adc  b                                           ; $5860: $88
	add  b                                           ; $5861: $80

jr_09b_5862:
	ld   c, a                                        ; $5862: $4f
	inc  bc                                          ; $5863: $03
	add  e                                           ; $5864: $83
	rst  $38                                         ; $5865: $ff
	nop                                              ; $5866: $00
	add  e                                           ; $5867: $83
	add  c                                           ; $5868: $81
	nop                                              ; $5869: $00
	ld   a, [bc]                                     ; $586a: $0a
	sub  b                                           ; $586b: $90
	nop                                              ; $586c: $00
	ld   h, b                                        ; $586d: $60
	nop                                              ; $586e: $00
	inc  c                                           ; $586f: $0c
	ei                                               ; $5870: $fb
	rst  $38                                         ; $5871: $ff
	scf                                              ; $5872: $37
	ccf                                              ; $5873: $3f
	adc  a                                           ; $5874: $8f
	add  [hl]                                        ; $5875: $86
	add  b                                           ; $5876: $80
	ld   [hl], a                                     ; $5877: $77
	nop                                              ; $5878: $00
	halt                                             ; $5879: $76
	add  b                                           ; $587a: $80
	ld   h, h                                        ; $587b: $64
	inc  c                                           ; $587c: $0c
	call nz, Call_09b_7204                           ; $587d: $c4 $04 $72
	ld   [bc], a                                     ; $5880: $02
	inc  bc                                          ; $5881: $03
	call z, $a888                                    ; $5882: $cc $88 $a8
	jr   z, jr_09b_58ef                              ; $5885: $28 $68

	ld   h, b                                        ; $5887: $60
	ld   b, b                                        ; $5888: $40
	ld   c, b                                        ; $5889: $48
	add  b                                           ; $588a: $80
	ret  z                                           ; $588b: $c8

	add  e                                           ; $588c: $83
	and  b                                           ; $588d: $a0
	nop                                              ; $588e: $00
	ld   e, b                                        ; $588f: $58
	adc  l                                           ; $5890: $8d
	nop                                              ; $5891: $00
	ld   bc, $1d1e                                   ; $5892: $01 $1e $1d
	add  b                                           ; $5895: $80
	dec  c                                           ; $5896: $0d
	nop                                              ; $5897: $00
	inc  b                                           ; $5898: $04
	add  c                                           ; $5899: $81
	ld   b, $83                                      ; $589a: $06 $83
	ld   [bc], a                                     ; $589c: $02
	add  c                                           ; $589d: $81
	nop                                              ; $589e: $00
	dec  b                                           ; $589f: $05
	dec  e                                           ; $58a0: $1d
	ld   l, a                                        ; $58a1: $6f
	ld   a, [hl]                                     ; $58a2: $7e
	rst  $30                                         ; $58a3: $f7
	rst  $38                                         ; $58a4: $ff
	ei                                               ; $58a5: $fb
	add  b                                           ; $58a6: $80
	ld   a, e                                        ; $58a7: $7b
	dec  c                                           ; $58a8: $0d
	ccf                                              ; $58a9: $3f
	ld   a, l                                        ; $58aa: $7d
	ld   e, l                                        ; $58ab: $5d
	cp   l                                           ; $58ac: $bd
	cp   a                                           ; $58ad: $bf
	sbc  $ce                                         ; $58ae: $de $ce
	xor  $40                                         ; $58b0: $ee $40
	and  b                                           ; $58b2: $a0
	jr   nz, @-$5a                                   ; $58b3: $20 $a4

	db   $e4                                         ; $58b5: $e4
	ld   h, [hl]                                     ; $58b6: $66
	add  d                                           ; $58b7: $82
	halt                                             ; $58b8: $76
	inc  bc                                          ; $58b9: $03
	ld   [hl], $76                                   ; $58ba: $36 $76
	ld   a, [hl]                                     ; $58bc: $7e
	ld   a, d                                        ; $58bd: $7a
	add  b                                           ; $58be: $80
	ld   l, d                                        ; $58bf: $6a
	ld   [bc], a                                     ; $58c0: $02
	ld   hl, $8210                                   ; $58c1: $21 $10 $82
	add  c                                           ; $58c4: $81
	inc  c                                           ; $58c5: $0c
	add  b                                           ; $58c6: $80
	inc  e                                           ; $58c7: $1c
	ld   [$f8fe], sp                                 ; $58c8: $08 $fe $f8
	db   $fc                                         ; $58cb: $fc
	ldh  [$f8], a                                    ; $58cc: $e0 $f8
	nop                                              ; $58ce: $00
	db   $e3                                         ; $58cf: $e3
	nop                                              ; $58d0: $00
	inc  d                                           ; $58d1: $14
	add  b                                           ; $58d2: $80
	ld   a, [bc]                                     ; $58d3: $0a
	add  hl, bc                                      ; $58d4: $09
	dec  bc                                          ; $58d5: $0b
	rrca                                             ; $58d6: $0f
	dec  c                                           ; $58d7: $0d
	dec  b                                           ; $58d8: $05
	inc  b                                           ; $58d9: $04
	ld   [hl+], a                                    ; $58da: $22
	ld   [bc], a                                     ; $58db: $02
	ld   b, d                                        ; $58dc: $42
	ld   a, [hl-]                                    ; $58dd: $3a
	cp   c                                           ; $58de: $b9
	add  c                                           ; $58df: $81
	dec  a                                           ; $58e0: $3d
	nop                                              ; $58e1: $00
	ccf                                              ; $58e2: $3f
	add  b                                           ; $58e3: $80
	or   h                                           ; $58e4: $b4
	rlca                                             ; $58e5: $07
	jr   c, jr_09b_5922                              ; $58e6: $38 $3a

	jr   c, jr_09b_591b                              ; $58e8: $38 $31

	dec  a                                           ; $58ea: $3d
	dec  hl                                          ; $58eb: $2b
	call c, $81cd                                    ; $58ec: $dc $cd $81

jr_09b_58ef:
	inc  c                                           ; $58ef: $0c
	ld   [bc], a                                     ; $58f0: $02
	inc  b                                           ; $58f1: $04
	ld   b, $fe                                      ; $58f2: $06 $fe
	add  a                                           ; $58f4: $87
	nop                                              ; $58f5: $00
	ld   b, $80                                      ; $58f6: $06 $80
	nop                                              ; $58f8: $00
	ld   b, b                                        ; $58f9: $40
	nop                                              ; $58fa: $00
	jr   nc, jr_09b_594d                             ; $58fb: $30 $50

	and  b                                           ; $58fd: $a0
	adc  e                                           ; $58fe: $8b
	nop                                              ; $58ff: $00
	ld   [bc], a                                     ; $5900: $02
	ld   bc, $0600                                   ; $5901: $01 $00 $06
	add  b                                           ; $5904: $80
	inc  b                                           ; $5905: $04
	ld   bc, $0800                                   ; $5906: $01 $00 $08
	add  b                                           ; $5909: $80
	ld   a, [bc]                                     ; $590a: $0a
	ld   a, [de]                                     ; $590b: $1a
	ld   b, $16                                      ; $590c: $06 $16
	dec  c                                           ; $590e: $0d
	cpl                                              ; $590f: $2f
	dec  bc                                          ; $5910: $0b
	res  3, d                                        ; $5911: $cb $9a
	sbc  h                                           ; $5913: $9c
	halt                                             ; $5914: $76
	db   $fd                                         ; $5915: $fd

jr_09b_5916:
	rst  $28                                         ; $5916: $ef
	rst  $20                                         ; $5917: $e7
	rst  $30                                         ; $5918: $f7
	scf                                              ; $5919: $37
	ld   [hl], a                                     ; $591a: $77

jr_09b_591b:
	ld   b, a                                        ; $591b: $47

Call_09b_591c:
	ld   [hl], a                                     ; $591c: $77
	ld   h, a                                        ; $591d: $67
	ld   [hl], a                                     ; $591e: $77
	ld   d, d                                        ; $591f: $52
	ld   l, e                                        ; $5920: $6b
	dec  hl                                          ; $5921: $2b

jr_09b_5922:
	jp   c, $3ad8                                    ; $5922: $da $d8 $3a

	ld   d, $6c                                      ; $5925: $16 $6c
	add  b                                           ; $5927: $80
	ld   [hl], h                                     ; $5928: $74
	inc  h                                           ; $5929: $24
	ld   d, [hl]                                     ; $592a: $56
	or   [hl]                                        ; $592b: $b6
	inc  sp                                          ; $592c: $33
	or   a                                           ; $592d: $b7
	dec  a                                           ; $592e: $3d
	sbc  e                                           ; $592f: $9b
	sub  [hl]                                        ; $5930: $96
	ld   e, l                                        ; $5931: $5d
	ld   e, a                                        ; $5932: $5f
	sbc  $ca                                         ; $5933: $de $ca
	sbc  $dc                                         ; $5935: $de $dc
	nop                                              ; $5937: $00
	inc  bc                                          ; $5938: $03
	nop                                              ; $5939: $00
	ld   [bc], a                                     ; $593a: $02
	nop                                              ; $593b: $00
	ld   bc, $5e4e                                   ; $593c: $01 $4e $5e
	ld   b, d                                        ; $593f: $42
	ld   d, d                                        ; $5940: $52
	ld   c, b                                        ; $5941: $48
	ld   l, b                                        ; $5942: $68
	adc  [hl]                                        ; $5943: $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5944: $cf
	nop                                              ; $5945: $00
	ld   h, h                                        ; $5946: $64
	add  hl, sp                                      ; $5947: $39
	cp   c                                           ; $5948: $b9
	add  hl, sp                                      ; $5949: $39
	ld   h, a                                        ; $594a: $67
	inc  bc                                          ; $594b: $03
	dec  sp                                          ; $594c: $3b

jr_09b_594d:
	inc  bc                                          ; $594d: $03
	dec  bc                                          ; $594e: $0b
	add  c                                           ; $594f: $81
	inc  bc                                          ; $5950: $03
	rlca                                             ; $5951: $07
	inc  hl                                          ; $5952: $23
	inc  bc                                          ; $5953: $03
	swap e                                           ; $5954: $cb $33
	ld   [hl], c                                     ; $5956: $71
	ld   b, d                                        ; $5957: $42
	and  d                                           ; $5958: $a2
	xor  d                                           ; $5959: $aa
	add  b                                           ; $595a: $80
	xor  e                                           ; $595b: $ab
	add  b                                           ; $595c: $80
	db   $eb                                         ; $595d: $eb
	inc  bc                                          ; $595e: $03
	set  2, e                                        ; $595f: $cb $d3
	di                                               ; $5961: $f3
	and  $80                                         ; $5962: $e6 $80
	or   $25                                         ; $5964: $f6 $25
	ld   h, [hl]                                     ; $5966: $66
	ld   l, h                                        ; $5967: $6c
	dec  bc                                          ; $5968: $0b
	ld   c, b                                        ; $5969: $48
	ld   c, h                                        ; $596a: $4c
	db   $10                                         ; $596b: $10
	ld   d, e                                        ; $596c: $53
	nop                                              ; $596d: $00
	inc  h                                           ; $596e: $24
	jr   @+$7b                                       ; $596f: $18 $79

	ld   [$0078], sp                                 ; $5971: $08 $78 $00
	adc  l                                           ; $5974: $8d
	nop                                              ; $5975: $00
	dec  a                                           ; $5976: $3d
	nop                                              ; $5977: $00
	dec  [hl]                                        ; $5978: $35
	add  hl, bc                                      ; $5979: $09
	ld   a, c                                        ; $597a: $79
	ld   b, [hl]                                     ; $597b: $46
	rst  ToBoot                                         ; $597c: $c7
	jr   nz, @+$24                                   ; $597d: $20 $22

	call nz, $04d7                                   ; $597f: $c4 $d7 $04
	rst  $30                                         ; $5982: $f7
	nop                                              ; $5983: $00
	cp   h                                           ; $5984: $bc
	nop                                              ; $5985: $00
	add  sp, $00                                     ; $5986: $e8 $00
	cp   a                                           ; $5988: $bf
	db   $ed                                         ; $5989: $ed
	push af                                          ; $598a: $f5
	dec  de                                          ; $598b: $1b
	add  b                                           ; $598c: $80
	ld   a, [de]                                     ; $598d: $1a
	dec  b                                           ; $598e: $05
	xor  b                                           ; $598f: $a8
	inc  [hl]                                        ; $5990: $34
	sub  c                                           ; $5991: $91
	jr   z, @+$2b                                    ; $5992: $28 $29

	jr   z, jr_09b_5916                              ; $5994: $28 $80

	inc  hl                                          ; $5996: $23
	nop                                              ; $5997: $00
	cpl                                              ; $5998: $2f
	add  b                                           ; $5999: $80
	ld   c, h                                        ; $599a: $4c
	add  b                                           ; $599b: $80
	cp   d                                           ; $599c: $ba
	dec  c                                           ; $599d: $0d
	add  c                                           ; $599e: $81
	ld   e, c                                        ; $599f: $59
	jr   jr_09b_59b3                                 ; $59a0: $18 $11

	dec  d                                           ; $59a2: $15
	dec  b                                           ; $59a3: $05
	dec  c                                           ; $59a4: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a5: $cf
	dec  de                                          ; $59a6: $1b
	rra                                              ; $59a7: $1f
	rlca                                             ; $59a8: $07
	rst  JumpTable                                         ; $59a9: $df
	rra                                              ; $59aa: $1f
	ret  nz                                          ; $59ab: $c0

	add  b                                           ; $59ac: $80
	sbc  $80                                         ; $59ad: $de $80
	cp   [hl]                                        ; $59af: $be
	rlca                                             ; $59b0: $07
	ld   a, $fe                                      ; $59b1: $3e $fe

jr_09b_59b3:
	sbc  $fe                                         ; $59b3: $de $fe
	db   $e4                                         ; $59b5: $e4
	db   $fc                                         ; $59b6: $fc
	ld   hl, sp-$04                                  ; $59b7: $f8 $fc
	add  b                                           ; $59b9: $80
	adc  l                                           ; $59ba: $8d
	ld   bc, $c6c4                                   ; $59bb: $01 $c4 $c6
	add  c                                           ; $59be: $81
	nop                                              ; $59bf: $00
	rlca                                             ; $59c0: $07
	cp   $01                                         ; $59c1: $fe $01
	ld   a, l                                        ; $59c3: $7d
	ld   bc, $017d                                   ; $59c4: $01 $7d $01
	rst  $38                                         ; $59c7: $ff
	cp   $82                                         ; $59c8: $fe $82
	rst  $38                                         ; $59ca: $ff
	ld   bc, $fd01                                   ; $59cb: $01 $01 $fd
	add  b                                           ; $59ce: $80
	db   $fc                                         ; $59cf: $fc
	add  b                                           ; $59d0: $80
	ld   sp, hl                                      ; $59d1: $f9
	rlca                                             ; $59d2: $07
	rst  $30                                         ; $59d3: $f7
	di                                               ; $59d4: $f3
	rst  $28                                         ; $59d5: $ef
	rst  $20                                         ; $59d6: $e7
	rra                                              ; $59d7: $1f
	rrca                                             ; $59d8: $0f
	rst  $38                                         ; $59d9: $ff
	rra                                              ; $59da: $1f
	add  b                                           ; $59db: $80
	rst  $38                                         ; $59dc: $ff
	ld   [bc], a                                     ; $59dd: $02
	ld   h, b                                        ; $59de: $60
	ld   l, h                                        ; $59df: $6c
	xor  $81                                         ; $59e0: $ee $81
	add  sp, $08                                     ; $59e2: $e8 $08
	ld   hl, sp-$10                                  ; $59e4: $f8 $f0
	ld   [$e3e0], a                                  ; $59e6: $ea $e0 $e3
	ldh  [$ec], a                                    ; $59e9: $e0 $ec
	ldh  [$fe], a                                    ; $59eb: $e0 $fe
	add  b                                           ; $59ed: $80
	ld   hl, sp+$07                                  ; $59ee: $f8 $07
	nop                                              ; $59f0: $00
	inc  b                                           ; $59f1: $04
	nop                                              ; $59f2: $00
	db   $fd                                         ; $59f3: $fd
	nop                                              ; $59f4: $00
	ld   [bc], a                                     ; $59f5: $02
	nop                                              ; $59f6: $00
	ld   c, a                                        ; $59f7: $4f
	add  c                                           ; $59f8: $81
	ld   bc, $1700                                   ; $59f9: $01 $00 $17
	add  c                                           ; $59fc: $81
	inc  bc                                          ; $59fd: $03
	db   $10                                         ; $59fe: $10
	db   $db                                         ; $59ff: $db
	nop                                              ; $5a00: $00
	db   $fd                                         ; $5a01: $fd
	nop                                              ; $5a02: $00
	ld   b, b                                        ; $5a03: $40
	nop                                              ; $5a04: $00
	cp   [hl]                                        ; $5a05: $be
	nop                                              ; $5a06: $00
	ldh  [rP1], a                                    ; $5a07: $e0 $00
	call $948c                                       ; $5a09: $cd $8c $94
	add  h                                           ; $5a0c: $84
	add  d                                           ; $5a0d: $82
	add  b                                           ; $5a0e: $80
	inc  [hl]                                        ; $5a0f: $34
	add  b                                           ; $5a10: $80
	ld   b, b                                        ; $5a11: $40
	ld   a, [bc]                                     ; $5a12: $0a
	ld   d, b                                        ; $5a13: $50
	pop  de                                          ; $5a14: $d1
	ld   b, b                                        ; $5a15: $40
	rlca                                             ; $5a16: $07
	ld   [$184a], sp                                 ; $5a17: $08 $4a $18
	ld   e, h                                        ; $5a1a: $5c
	nop                                              ; $5a1b: $00
	add  hl, de                                      ; $5a1c: $19
	ld   bc, $0780                                   ; $5a1d: $01 $80 $07
	ld   b, $00                                      ; $5a20: $06 $00
	rra                                              ; $5a22: $1f
	cpl                                              ; $5a23: $2f
	rrca                                             ; $5a24: $0f
	rst  $28                                         ; $5a25: $ef
	rrca                                             ; $5a26: $0f
	cp   a                                           ; $5a27: $bf
	add  c                                           ; $5a28: $81
	ccf                                              ; $5a29: $3f
	ld   bc, $5f1f                                   ; $5a2a: $01 $1f $5f
	add  d                                           ; $5a2d: $82
	rst  JumpTable                                         ; $5a2e: $df
	ld   [bc], a                                     ; $5a2f: $02
	inc  a                                           ; $5a30: $3c
	db   $e4                                         ; $5a31: $e4
	and  $80                                         ; $5a32: $e6 $80
	add  $84                                         ; $5a34: $c6 $84
	adc  $80                                         ; $5a36: $ce $80
	sbc  $80                                         ; $5a38: $de $80
	sbc  [hl]                                        ; $5a3a: $9e
	ld   bc, $3f3e                                   ; $5a3b: $01 $3e $3f
	add  b                                           ; $5a3e: $80
	rrca                                             ; $5a3f: $0f
	add  h                                           ; $5a40: $84
	rst  $38                                         ; $5a41: $ff
	add  b                                           ; $5a42: $80
	cp   $80                                         ; $5a43: $fe $80
	db   $fc                                         ; $5a45: $fc
	add  b                                           ; $5a46: $80
	ld   [hl], b                                     ; $5a47: $70
	inc  a                                           ; $5a48: $3c
	ld   bc, $f805                                   ; $5a49: $01 $05 $f8
	push hl                                          ; $5a4c: $e5
	ldh  [$c1], a                                    ; $5a4d: $e0 $c1
	ret  c                                           ; $5a4f: $d8

	jp   c, Jump_09b_4f58                            ; $5a50: $da $58 $4f

	call z, $e2f3                                    ; $5a53: $cc $f3 $e2
	db   $fc                                         ; $5a56: $fc
	ldh  a, [$fe]                                    ; $5a57: $f0 $fe
	db   $fc                                         ; $5a59: $fc
	ld   e, d                                        ; $5a5a: $5a
	inc  bc                                          ; $5a5b: $03
	db   $e3                                         ; $5a5c: $e3
	inc  bc                                          ; $5a5d: $03
	adc  a                                           ; $5a5e: $8f
	rlca                                             ; $5a5f: $07
	ld   b, e                                        ; $5a60: $43
	inc  bc                                          ; $5a61: $03
	ld   h, e                                        ; $5a62: $63
	inc  bc                                          ; $5a63: $03
	ld   b, l                                        ; $5a64: $45
	ld   bc, $0131                                   ; $5a65: $01 $31 $01
	ld   [bc], a                                     ; $5a68: $02
	nop                                              ; $5a69: $00
	pop  de                                          ; $5a6a: $d1
	add  b                                           ; $5a6b: $80
	adc  h                                           ; $5a6c: $8c
	add  b                                           ; $5a6d: $80
	ldh  [$c0], a                                    ; $5a6e: $e0 $c0
	add  $c0                                         ; $5a70: $c6 $c0
	call nz, $88c0                                   ; $5a72: $c4 $c0 $88
	add  [hl]                                        ; $5a75: $86
	sub  h                                           ; $5a76: $94
	adc  h                                           ; $5a77: $8c
	ld   b, b                                        ; $5a78: $40
	db   $10                                         ; $5a79: $10
	adc  a                                           ; $5a7a: $8f
	rrca                                             ; $5a7b: $0f
	rlca                                             ; $5a7c: $07
	ld   bc, $0007                                   ; $5a7d: $01 $07 $00

Call_09b_5a80:
	add  hl, bc                                      ; $5a80: $09
	nop                                              ; $5a81: $00
	ld   e, b                                        ; $5a82: $58
	nop                                              ; $5a83: $00
	jr   nc, jr_09b_5a86                             ; $5a84: $30 $00

jr_09b_5a86:
	add  b                                           ; $5a86: $80
	inc  a                                           ; $5a87: $3c
	ld   [bc], a                                     ; $5a88: $02
	ccf                                              ; $5a89: $3f
	ld   [bc], a                                     ; $5a8a: $02
	sbc  l                                           ; $5a8b: $9d
	add  b                                           ; $5a8c: $80
	rst  JumpTable                                         ; $5a8d: $df
	add  b                                           ; $5a8e: $80
	sbc  $02                                         ; $5a8f: $de $02
	sbc  l                                           ; $5a91: $9d
	cp   l                                           ; $5a92: $bd
	ccf                                              ; $5a93: $3f
	add  l                                           ; $5a94: $85
	ld   a, a                                        ; $5a95: $7f
	inc  bc                                          ; $5a96: $03
	ld   [hl], e                                     ; $5a97: $73
	ldh  a, [c]                                      ; $5a98: $f2
	ld   a, [hl]                                     ; $5a99: $7e
	ld   a, a                                        ; $5a9a: $7f
	adc  d                                           ; $5a9b: $8a
	rst  $38                                         ; $5a9c: $ff
	add  b                                           ; $5a9d: $80
	ld   hl, sp-$80                                  ; $5a9e: $f8 $80
	inc  bc                                          ; $5aa0: $03
	add  e                                           ; $5aa1: $83
	rst  $38                                         ; $5aa2: $ff
	add  b                                           ; $5aa3: $80
	rra                                              ; $5aa4: $1f
	add  hl, bc                                      ; $5aa5: $09
	add  a                                           ; $5aa6: $87
	ld   h, a                                        ; $5aa7: $67
	nop                                              ; $5aa8: $00
	jr   @+$3b                                       ; $5aa9: $18 $39

	dec  a                                           ; $5aab: $3d
	ld   b, $f8                                      ; $5aac: $06 $f8
	push af                                          ; $5aae: $f5
	ldh  a, [$80]                                    ; $5aaf: $f0 $80
	db   $f4                                         ; $5ab1: $f4
	inc  c                                           ; $5ab2: $0c
	rst  $20                                         ; $5ab3: $e7
	db   $e3                                         ; $5ab4: $e3
	jp   $99c0                                       ; $5ab5: $c3 $c0 $99


	sbc  b                                           ; $5ab8: $98
	jr   c, jr_09b_5af5                              ; $5ab9: $38 $3a

	rst  $38                                         ; $5abb: $ff
	db   $fd                                         ; $5abc: $fd
	ld   l, [hl]                                     ; $5abd: $6e
	nop                                              ; $5abe: $00
	db   $10                                         ; $5abf: $10
	add  e                                           ; $5ac0: $83
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	ld   b, b                                        ; $5ac3: $40
	add  b                                           ; $5ac4: $80
	add  b                                           ; $5ac5: $80
	ld   [bc], a                                     ; $5ac6: $02
	nop                                              ; $5ac7: $00
	add  b                                           ; $5ac8: $80
	nop                                              ; $5ac9: $00
	add  b                                           ; $5aca: $80
	ld   bc, $6001                                   ; $5acb: $01 $01 $60
	jr   nz, @-$76                                   ; $5ace: $20 $88

	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	add  b                                           ; $5ad2: $80
	add  c                                           ; $5ad3: $81
	nop                                              ; $5ad4: $00
	ld   [de], a                                     ; $5ad5: $12
	jp   $1900                                       ; $5ad6: $c3 $00 $19


	ld   bc, $001a                                   ; $5ad9: $01 $1a $00
	ld   bc, $8000                                   ; $5adc: $01 $00 $80
	ld   b, b                                        ; $5adf: $40
	ld   [hl], e                                     ; $5ae0: $73
	ld   [hl], b                                     ; $5ae1: $70
	inc  a                                           ; $5ae2: $3c
	jr   c, jr_09b_5afd                              ; $5ae3: $38 $18

	inc  e                                           ; $5ae5: $1c
	inc  bc                                          ; $5ae6: $03
	ld   a, b                                        ; $5ae7: $78
	ld   hl, sp-$7f                                  ; $5ae8: $f8 $81
	rst  $38                                         ; $5aea: $ff
	add  d                                           ; $5aeb: $82
	ld   a, a                                        ; $5aec: $7f
	add  b                                           ; $5aed: $80
	rst  $38                                         ; $5aee: $ff
	add  b                                           ; $5aef: $80
	cp   $80                                         ; $5af0: $fe $80
	inc  a                                           ; $5af2: $3c
	nop                                              ; $5af3: $00
	rst  $38                                         ; $5af4: $ff

jr_09b_5af5:
	add  d                                           ; $5af5: $82
	nop                                              ; $5af6: $00
	add  d                                           ; $5af7: $82
	ldh  a, [$80]                                    ; $5af8: $f0 $80
	cp   $80                                         ; $5afa: $fe $80
	db   $fc                                         ; $5afc: $fc

jr_09b_5afd:
	add  b                                           ; $5afd: $80
	db   $fd                                         ; $5afe: $fd
	add  b                                           ; $5aff: $80
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	nop                                              ; $5b02: $00
	rst  $38                                         ; $5b03: $ff
	nop                                              ; $5b04: $00
	rst  $38                                         ; $5b05: $ff
	nop                                              ; $5b06: $00
	rst  $38                                         ; $5b07: $ff
	nop                                              ; $5b08: $00
	rst  $38                                         ; $5b09: $ff
	nop                                              ; $5b0a: $00
	rst  $38                                         ; $5b0b: $ff
	nop                                              ; $5b0c: $00
	rst  $20                                         ; $5b0d: $e7
	nop                                              ; $5b0e: $00
	ld   d, $01                                      ; $5b0f: $16 $01
	inc  bc                                          ; $5b11: $03
	or   $08                                         ; $5b12: $f6 $08
	ld   h, l                                        ; $5b14: $65
	ld   h, h                                        ; $5b15: $64
	add  c                                           ; $5b16: $81
	ld   [bc], a                                     ; $5b17: $02
	inc  c                                           ; $5b18: $0c
	ld   d, d                                        ; $5b19: $52
	ld   [hl], b                                     ; $5b1a: $70
	nop                                              ; $5b1b: $00
	call nz, $3004                                   ; $5b1c: $c4 $04 $30
	add  hl, de                                      ; $5b1f: $19
	ld   l, c                                        ; $5b20: $69
	ld   sp, $0251                                   ; $5b21: $31 $51 $02
	ld   a, [hl+]                                    ; $5b24: $2a
	ld   [$0280], sp                                 ; $5b25: $08 $80 $02
	dec  e                                           ; $5b28: $1d
	jr   jr_09b_5b2b                                 ; $5b29: $18 $00

jr_09b_5b2b:
	inc  b                                           ; $5b2b: $04
	nop                                              ; $5b2c: $00
	inc  c                                           ; $5b2d: $0c
	nop                                              ; $5b2e: $00
	inc  e                                           ; $5b2f: $1c
	ld   c, $03                                      ; $5b30: $0e $03
	nop                                              ; $5b32: $00
	ld   de, $1400                                   ; $5b33: $11 $00 $14
	inc  b                                           ; $5b36: $04
	xor  b                                           ; $5b37: $a8
	ld   a, [bc]                                     ; $5b38: $0a
	xor  e                                           ; $5b39: $ab
	add  hl, bc                                      ; $5b3a: $09
	ld   a, [bc]                                     ; $5b3b: $0a
	ld   [$00c4], sp                                 ; $5b3c: $08 $c4 $00
	jr   jr_09b_5b41                                 ; $5b3f: $18 $00

jr_09b_5b41:
	ld   b, b                                        ; $5b41: $40
	nop                                              ; $5b42: $00
	ld   b, e                                        ; $5b43: $43
	ld   bc, $4161                                   ; $5b44: $01 $61 $41
	add  b                                           ; $5b47: $80
	nop                                              ; $5b48: $00
	rla                                              ; $5b49: $17
	inc  de                                          ; $5b4a: $13
	nop                                              ; $5b4b: $00
	cp   [hl]                                        ; $5b4c: $be
	or   b                                           ; $5b4d: $b0
	dec  b                                           ; $5b4e: $05
	inc  b                                           ; $5b4f: $04
	ld   bc, wBaseInitialStickyCounter                                   ; $5b50: $01 $13 $c2
	inc  d                                           ; $5b53: $14
	ei                                               ; $5b54: $fb
	nop                                              ; $5b55: $00
	or   b                                           ; $5b56: $b0
	add  b                                           ; $5b57: $80
	jr   z, jr_09b_5b7a                              ; $5b58: $28 $20

	ld   h, $20                                      ; $5b5a: $26 $20
	ld   d, h                                        ; $5b5c: $54
	call nc, Call_09b_44c4                           ; $5b5d: $d4 $c4 $44
	inc  h                                           ; $5b60: $24
	and  h                                           ; $5b61: $a4
	add  b                                           ; $5b62: $80
	adc  b                                           ; $5b63: $88
	inc  de                                          ; $5b64: $13
	add  d                                           ; $5b65: $82
	ld   [de], a                                     ; $5b66: $12
	ld   d, d                                        ; $5b67: $52
	ld   c, d                                        ; $5b68: $4a
	ld   [$8000], sp                                 ; $5b69: $08 $00 $80
	ld   [de], a                                     ; $5b6c: $12
	ld   a, [hl-]                                    ; $5b6d: $3a
	ld   [hl+], a                                    ; $5b6e: $22
	ld   [de], a                                     ; $5b6f: $12
	ld   [bc], a                                     ; $5b70: $02
	ldh  [c], a                                      ; $5b71: $e2
	nop                                              ; $5b72: $00
	ld   b, $00                                      ; $5b73: $06 $00
	add  b                                           ; $5b75: $80
	nop                                              ; $5b76: $00
	ldh  [rP1], a                                    ; $5b77: $e0 $00
	add  b                                           ; $5b79: $80

jr_09b_5b7a:
	ret  nz                                          ; $5b7a: $c0

	rla                                              ; $5b7b: $17
	and  b                                           ; $5b7c: $a0
	add  b                                           ; $5b7d: $80
	adc  h                                           ; $5b7e: $8c
	add  b                                           ; $5b7f: $80
	ld   a, b                                        ; $5b80: $78
	ld   [$1848], sp                                 ; $5b81: $08 $48 $18
	ld   [hl], b                                     ; $5b84: $70
	ld   h, b                                        ; $5b85: $60
	ld   [bc], a                                     ; $5b86: $02
	inc  b                                           ; $5b87: $04
	dec  b                                           ; $5b88: $05
	ld   c, b                                        ; $5b89: $48
	dec  c                                           ; $5b8a: $0d
	ld   d, l                                        ; $5b8b: $55
	ld   d, h                                        ; $5b8c: $54

Call_09b_5b8d:
	ld   b, h                                        ; $5b8d: $44
	ld   d, b                                        ; $5b8e: $50
	ld   b, b                                        ; $5b8f: $40
	add  b                                           ; $5b90: $80
	inc  b                                           ; $5b91: $04
	ld   h, c                                        ; $5b92: $61
	inc  b                                           ; $5b93: $04
	add  b                                           ; $5b94: $80
	nop                                              ; $5b95: $00
	nop                                              ; $5b96: $00
	ld   c, $81                                      ; $5b97: $0e $81
	nop                                              ; $5b99: $00
	inc  bc                                          ; $5b9a: $03
	ld   b, b                                        ; $5b9b: $40
	nop                                              ; $5b9c: $00
	ldh  [rLCDC], a                                  ; $5b9d: $e0 $40
	add  b                                           ; $5b9f: $80
	add  b                                           ; $5ba0: $80
	inc  c                                           ; $5ba1: $0c
	jr   nz, jr_09b_5ba4                             ; $5ba2: $20 $00

jr_09b_5ba4:
	ld   b, b                                        ; $5ba4: $40
	nop                                              ; $5ba5: $00
	add  b                                           ; $5ba6: $80
	nop                                              ; $5ba7: $00
	add  b                                           ; $5ba8: $80
	nop                                              ; $5ba9: $00
	ld   b, b                                        ; $5baa: $40
	nop                                              ; $5bab: $00
	and  b                                           ; $5bac: $a0
	nop                                              ; $5bad: $00
	ld   h, b                                        ; $5bae: $60
	add  a                                           ; $5baf: $87
	nop                                              ; $5bb0: $00
	ld   a, [bc]                                     ; $5bb1: $0a
	ld   l, h                                        ; $5bb2: $6c
	jr   nc, jr_09b_5bc7                             ; $5bb3: $30 $12

	jr   nc, jr_09b_5bb7                             ; $5bb5: $30 $00

jr_09b_5bb7:
	inc  b                                           ; $5bb7: $04
	ld   h, a                                        ; $5bb8: $67
	ld   a, [bc]                                     ; $5bb9: $0a
	add  hl, bc                                      ; $5bba: $09
	nop                                              ; $5bbb: $00
	ld   e, $93                                      ; $5bbc: $1e $93
	nop                                              ; $5bbe: $00
	ld   [bc], a                                     ; $5bbf: $02
	ld   bc, $0300                                   ; $5bc0: $01 $00 $03
	add  c                                           ; $5bc3: $81
	ld   bc, $0700                                   ; $5bc4: $01 $00 $07

jr_09b_5bc7:
	add  e                                           ; $5bc7: $83
	inc  bc                                          ; $5bc8: $03
	nop                                              ; $5bc9: $00
	dec  bc                                          ; $5bca: $0b
	add  c                                           ; $5bcb: $81
	rlca                                             ; $5bcc: $07
	nop                                              ; $5bcd: $00
	dec  b                                           ; $5bce: $05
	add  c                                           ; $5bcf: $81
	rlca                                             ; $5bd0: $07
	nop                                              ; $5bd1: $00
	ld   b, $89                                      ; $5bd2: $06 $89
	rlca                                             ; $5bd4: $07
	nop                                              ; $5bd5: $00
	rrca                                             ; $5bd6: $0f
	adc  c                                           ; $5bd7: $89
	inc  bc                                          ; $5bd8: $03
	nop                                              ; $5bd9: $00
	rlca                                             ; $5bda: $07
	adc  c                                           ; $5bdb: $89
	ld   bc, $0300                                   ; $5bdc: $01 $00 $03
	add  l                                           ; $5bdf: $85
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	add  c                                           ; $5be2: $81
	add  l                                           ; $5be3: $85
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	ret  nz                                          ; $5be6: $c0

	add  e                                           ; $5be7: $83
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	ld   h, c                                        ; $5bea: $61
	add  c                                           ; $5beb: $81
	nop                                              ; $5bec: $00
	inc  d                                           ; $5bed: $14
	inc  bc                                          ; $5bee: $03
	ld   bc, $0131                                   ; $5bef: $01 $31 $01
	rlca                                             ; $5bf2: $07
	inc  bc                                          ; $5bf3: $03
	ld   l, $06                                      ; $5bf4: $2e $06
	inc  c                                           ; $5bf6: $0c
	dec  c                                           ; $5bf7: $0d
	ld   e, c                                        ; $5bf8: $59
	dec  de                                          ; $5bf9: $1b
	inc  sp                                          ; $5bfa: $33
	ld   sp, $0041                                   ; $5bfb: $31 $41 $00
	jr   nz, jr_09b_5c00                             ; $5bfe: $20 $00

jr_09b_5c00:
	stop                                             ; $5c00: $10 $00

jr_09b_5c02:
	ld   [$0081], sp                                 ; $5c02: $08 $81 $00
	inc  bc                                          ; $5c05: $03
	ld   a, [bc]                                     ; $5c06: $0a
	ld   [bc], a                                     ; $5c07: $02
	ld   de, $8001                                   ; $5c08: $11 $01 $80
	nop                                              ; $5c0b: $00
	ld   b, $0c                                      ; $5c0c: $06 $0c
	nop                                              ; $5c0e: $00
	inc  b                                           ; $5c0f: $04
	ld   [bc], a                                     ; $5c10: $02
	add  hl, hl                                      ; $5c11: $29
	nop                                              ; $5c12: $00
	ld   h, b                                        ; $5c13: $60
	add  b                                           ; $5c14: $80
	nop                                              ; $5c15: $00
	inc  bc                                          ; $5c16: $03
	inc  b                                           ; $5c17: $04
	and  $06                                         ; $5c18: $e6 $06
	rla                                              ; $5c1a: $17
	add  c                                           ; $5c1b: $81
	rlca                                             ; $5c1c: $07
	ld   bc, $3060                                   ; $5c1d: $01 $60 $30
	add  b                                           ; $5c20: $80
	nop                                              ; $5c21: $00
	dec  c                                           ; $5c22: $0d
	ld   b, b                                        ; $5c23: $40
	nop                                              ; $5c24: $00
	ldh  a, [rP1]                                    ; $5c25: $f0 $00
	ld   [hl], b                                     ; $5c27: $70
	nop                                              ; $5c28: $00
	or   h                                           ; $5c29: $b4
	nop                                              ; $5c2a: $00
	ldh  a, [rP1]                                    ; $5c2b: $f0 $00
	ldh  a, [rP1]                                    ; $5c2d: $f0 $00
	ldh  a, [c]                                      ; $5c2f: $f2
	add  b                                           ; $5c30: $80
	add  d                                           ; $5c31: $82
	sub  b                                           ; $5c32: $90
	add  b                                           ; $5c33: $80
	jr   nz, jr_09b_5c37                             ; $5c34: $20 $01

	add  hl, hl                                      ; $5c36: $29

jr_09b_5c37:
	jr   z, @-$7a                                    ; $5c37: $28 $84

	ld   l, b                                        ; $5c39: $68
	nop                                              ; $5c3a: $00
	rst  $38                                         ; $5c3b: $ff
	add  e                                           ; $5c3c: $83
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	ld   bc, $0083                                   ; $5c3f: $01 $83 $00
	ld   c, $02                                      ; $5c42: $0e $02
	nop                                              ; $5c44: $00
	rrca                                             ; $5c45: $0f
	inc  bc                                          ; $5c46: $03
	rra                                              ; $5c47: $1f
	rrca                                             ; $5c48: $0f
	dec  sp                                          ; $5c49: $3b
	dec  de                                          ; $5c4a: $1b
	dec  b                                           ; $5c4b: $05
	rla                                              ; $5c4c: $17
	ld   d, c                                        ; $5c4d: $51
	daa                                              ; $5c4e: $27
	rrca                                             ; $5c4f: $0f
	cpl                                              ; $5c50: $2f
	jp   nz, Jump_09b_4e81                           ; $5c51: $c2 $81 $4e

	ld   [bc], a                                     ; $5c54: $02
	ld   b, $0e                                      ; $5c55: $06 $0e
	rst  $38                                         ; $5c57: $ff
	add  l                                           ; $5c58: $85
	nop                                              ; $5c59: $00
	add  b                                           ; $5c5a: $80
	ld   bc, $7f80                                   ; $5c5b: $01 $80 $7f
	add  c                                           ; $5c5e: $81
	rst  $38                                         ; $5c5f: $ff
	rlca                                             ; $5c60: $07
	inc  e                                           ; $5c61: $1c
	rra                                              ; $5c62: $1f
	jr   jr_09b_5c02                                 ; $5c63: $18 $9d

	db   $10                                         ; $5c65: $10
	sub  e                                           ; $5c66: $93
	db   $10                                         ; $5c67: $10
	sbc  [hl]                                        ; $5c68: $9e
	add  c                                           ; $5c69: $81
	nop                                              ; $5c6a: $00
	ld   b, $1f                                      ; $5c6b: $06 $1f
	nop                                              ; $5c6d: $00
	and  h                                           ; $5c6e: $a4
	nop                                              ; $5c6f: $00
	sub  c                                           ; $5c70: $91
	nop                                              ; $5c71: $00
	and  [hl]                                        ; $5c72: $a6
	adc  c                                           ; $5c73: $89
	ld   hl, sp+$00                                  ; $5c74: $f8 $00
	db   $fd                                         ; $5c76: $fd
	add  c                                           ; $5c77: $81
	db   $fc                                         ; $5c78: $fc
	db   $10                                         ; $5c79: $10
	rst  $38                                         ; $5c7a: $ff
	db   $fc                                         ; $5c7b: $fc
	cp   $f8                                         ; $5c7c: $fe $f8
	db   $fc                                         ; $5c7e: $fc
	ldh  a, [$f9]                                    ; $5c7f: $f0 $f9
	ldh  [$f3], a                                    ; $5c81: $e0 $f3
	ret  nz                                          ; $5c83: $c0

	and  $80                                         ; $5c84: $e6 $80
	ret  z                                           ; $5c86: $c8

	nop                                              ; $5c87: $00
	sbc  b                                           ; $5c88: $98
	nop                                              ; $5c89: $00
	inc  d                                           ; $5c8a: $14
	add  l                                           ; $5c8b: $85
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	add  b                                           ; $5c8e: $80
	add  c                                           ; $5c8f: $81
	nop                                              ; $5c90: $00
	ld   [bc], a                                     ; $5c91: $02
	ld   b, b                                        ; $5c92: $40
	nop                                              ; $5c93: $00
	ld   h, b                                        ; $5c94: $60
	add  c                                           ; $5c95: $81
	ld   b, b                                        ; $5c96: $40
	ld   [bc], a                                     ; $5c97: $02
	ld   d, b                                        ; $5c98: $50
	ld   h, b                                        ; $5c99: $60
	ld   c, b                                        ; $5c9a: $48
	add  c                                           ; $5c9b: $81
	ld   [hl], b                                     ; $5c9c: $70
	dec  b                                           ; $5c9d: $05
	ld   h, b                                        ; $5c9e: $60
	ld   [hl], b                                     ; $5c9f: $70
	ld   d, h                                        ; $5ca0: $54
	ld   e, b                                        ; $5ca1: $58
	ld   d, b                                        ; $5ca2: $50
	ld   e, b                                        ; $5ca3: $58
	add  b                                           ; $5ca4: $80
	ld   c, b                                        ; $5ca5: $48
	ld   bc, $686a                                   ; $5ca6: $01 $6a $68
	add  b                                           ; $5ca9: $80
	ld   h, b                                        ; $5caa: $60
	nop                                              ; $5cab: $00
	ld   [hl], c                                     ; $5cac: $71
	add  c                                           ; $5cad: $81
	ld   [hl], b                                     ; $5cae: $70
	add  c                                           ; $5caf: $81
	jr   nz, jr_09b_5cb4                             ; $5cb0: $20 $02

	and  b                                           ; $5cb2: $a0
	and  c                                           ; $5cb3: $a1

jr_09b_5cb4:
	and  b                                           ; $5cb4: $a0
	add  [hl]                                        ; $5cb5: $86
	add  b                                           ; $5cb6: $80
	ld   [bc], a                                     ; $5cb7: $02
	add  d                                           ; $5cb8: $82
	add  b                                           ; $5cb9: $80
	ret  nz                                          ; $5cba: $c0

	add  c                                           ; $5cbb: $81
	nop                                              ; $5cbc: $00
	nop                                              ; $5cbd: $00
	add  b                                           ; $5cbe: $80
	add  c                                           ; $5cbf: $81
	nop                                              ; $5cc0: $00
	inc  b                                           ; $5cc1: $04
	ld   b, h                                        ; $5cc2: $44
	nop                                              ; $5cc3: $00
	ld   [$9000], sp                                 ; $5cc4: $08 $00 $90
	add  b                                           ; $5cc7: $80
	ld   b, b                                        ; $5cc8: $40
	ld   b, $c0                                      ; $5cc9: $06 $c0
	ret  nc                                          ; $5ccb: $d0

	ret  nz                                          ; $5ccc: $c0

	call c, $dad0                                    ; $5ccd: $dc $d0 $da
	ret  c                                           ; $5cd0: $d8

	add  b                                           ; $5cd1: $80
	call c, $dd00                                    ; $5cd2: $dc $00 $dd
	add  e                                           ; $5cd5: $83
	call nc, $d001                                   ; $5cd6: $d4 $01 $d0
	ret  c                                           ; $5cd9: $d8

	add  b                                           ; $5cda: $80
	db   $db                                         ; $5cdb: $db
	ld   bc, $d2d3                                   ; $5cdc: $01 $d3 $d2
	add  d                                           ; $5cdf: $82
	jp   nz, $3e00                                   ; $5ce0: $c2 $00 $3e

	sub  e                                           ; $5ce3: $93
	nop                                              ; $5ce4: $00
	ld   b, $80                                      ; $5ce5: $06 $80
	nop                                              ; $5ce7: $00
	ret  nz                                          ; $5ce8: $c0

	add  b                                           ; $5ce9: $80
	ldh  [$c0], a                                    ; $5cea: $e0 $c0
	ld   b, b                                        ; $5cec: $40
	add  c                                           ; $5ced: $81
	ret  nz                                          ; $5cee: $c0

	ld   bc, $c39c                                   ; $5cef: $01 $9c $c3
	add  h                                           ; $5cf2: $84
	db   $d3                                         ; $5cf3: $d3
	add  b                                           ; $5cf4: $80
	pop  bc                                          ; $5cf5: $c1
	add  b                                           ; $5cf6: $80
	ret  nz                                          ; $5cf7: $c0

	ld   bc, $8ccc                                   ; $5cf8: $01 $cc $8c
	add  b                                           ; $5cfb: $80
	adc  [hl]                                        ; $5cfc: $8e
	ld   [$8faf], sp                                 ; $5cfd: $08 $af $8f
	sub  a                                           ; $5d00: $97
	add  a                                           ; $5d01: $87
	rlc  e                                           ; $5d02: $cb $03
	inc  b                                           ; $5d04: $04
	nop                                              ; $5d05: $00
	ld   [bc], a                                     ; $5d06: $02
	add  c                                           ; $5d07: $81
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	add  b                                           ; $5d0a: $80
	add  c                                           ; $5d0b: $81
	nop                                              ; $5d0c: $00

jr_09b_5d0d:
	nop                                              ; $5d0d: $00
	and  c                                           ; $5d0e: $a1
	add  c                                           ; $5d0f: $81
	ret  nz                                          ; $5d10: $c0

	dec  b                                           ; $5d11: $05
	ld   e, b                                        ; $5d12: $58
	ret  nz                                          ; $5d13: $c0

	cp   h                                           ; $5d14: $bc
	cp   b                                           ; $5d15: $b8
	ld   [hl], $3c                                   ; $5d16: $36 $3c
	add  b                                           ; $5d18: $80
	ld   a, h                                        ; $5d19: $7c
	dec  b                                           ; $5d1a: $05
	ld   h, b                                        ; $5d1b: $60
	ld   a, h                                        ; $5d1c: $7c
	ld   l, h                                        ; $5d1d: $6c
	ld   a, h                                        ; $5d1e: $7c
	add  hl, sp                                      ; $5d1f: $39
	inc  a                                           ; $5d20: $3c
	add  b                                           ; $5d21: $80
	sbc  e                                           ; $5d22: $9b
	ld   bc, $8b8a                                   ; $5d23: $01 $8a $8b
	add  b                                           ; $5d26: $80
	add  e                                           ; $5d27: $83
	add  b                                           ; $5d28: $80
	inc  bc                                          ; $5d29: $03
	ld   bc, $6766                                   ; $5d2a: $01 $66 $67
	add  d                                           ; $5d2d: $82
	rst  $30                                         ; $5d2e: $f7
	add  b                                           ; $5d2f: $80
	dec  sp                                          ; $5d30: $3b
	inc  b                                           ; $5d31: $04
	sbc  b                                           ; $5d32: $98
	jr   @+$62                                       ; $5d33: $18 $60

	nop                                              ; $5d35: $00
	db   $10                                         ; $5d36: $10
	add  b                                           ; $5d37: $80
	ld   bc, $0680                                   ; $5d38: $01 $80 $06
	add  b                                           ; $5d3b: $80
	ld   bc, $0705                                   ; $5d3c: $01 $05 $07
	rrca                                             ; $5d3f: $0f
	nop                                              ; $5d40: $00
	inc  b                                           ; $5d41: $04
	nop                                              ; $5d42: $00
	dec  b                                           ; $5d43: $05
	add  e                                           ; $5d44: $83
	ld   bc, $0901                                   ; $5d45: $01 $01 $09
	ld   bc, $0384                                   ; $5d48: $01 $84 $03
	ld   b, $0f                                      ; $5d4b: $06 $0f
	nop                                              ; $5d4d: $00
	add  b                                           ; $5d4e: $80
	nop                                              ; $5d4f: $00
	ret  nz                                          ; $5d50: $c0

	add  b                                           ; $5d51: $80
	nop                                              ; $5d52: $00
	add  e                                           ; $5d53: $83
	add  b                                           ; $5d54: $80
	ld   [bc], a                                     ; $5d55: $02

jr_09b_5d56:
	nop                                              ; $5d56: $00
	add  b                                           ; $5d57: $80
	ld   b, b                                        ; $5d58: $40
	add  c                                           ; $5d59: $81
	nop                                              ; $5d5a: $00
	ld   c, $40                                      ; $5d5b: $0e $40
	nop                                              ; $5d5d: $00
	jr   nz, jr_09b_5d60                             ; $5d5e: $20 $00

jr_09b_5d60:
	db   $10                                         ; $5d60: $10
	ld   h, b                                        ; $5d61: $60
	ld   l, [hl]                                     ; $5d62: $6e
	ret  nz                                          ; $5d63: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d64: $cf
	xor  [hl]                                        ; $5d65: $ae
	xor  l                                           ; $5d66: $ad
	ld   l, a                                        ; $5d67: $6f
	ld   a, h                                        ; $5d68: $7c
	rst  JumpTable                                         ; $5d69: $df
	ld   a, $87                                      ; $5d6a: $3e $87
	nop                                              ; $5d6c: $00
	dec  c                                           ; $5d6d: $0d
	add  b                                           ; $5d6e: $80
	nop                                              ; $5d6f: $00
	ldh  [$80], a                                    ; $5d70: $e0 $80
	ld   d, b                                        ; $5d72: $50
	ret  nz                                          ; $5d73: $c0

	jr   z, jr_09b_5d56                              ; $5d74: $28 $e0

	inc  b                                           ; $5d76: $04
	ld   h, b                                        ; $5d77: $60
	ld   [de], a                                     ; $5d78: $12
	jr   nc, jr_09b_5d0d                             ; $5d79: $30 $92

	sub  b                                           ; $5d7b: $90
	add  b                                           ; $5d7c: $80
	ret  z                                           ; $5d7d: $c8

	add  b                                           ; $5d7e: $80
	add  sp, $06                                     ; $5d7f: $e8 $06
	ld   h, h                                        ; $5d81: $64
	ld   h, b                                        ; $5d82: $60
	ld   [$0f00], sp                                 ; $5d83: $08 $00 $0f
	or   $f7                                         ; $5d86: $f6 $f7
	add  l                                           ; $5d88: $85
	db   $ec                                         ; $5d89: $ec
	nop                                              ; $5d8a: $00
	xor  $82                                         ; $5d8b: $ee $82
	add  sp, $01                                     ; $5d8d: $e8 $01
	ret  c                                           ; $5d8f: $d8

	call c, $d082                                    ; $5d90: $dc $82 $d0
	ld   bc, $b8b0                                   ; $5d93: $01 $b0 $b8
	add  d                                           ; $5d96: $82
	and  b                                           ; $5d97: $a0
	ld   bc, $7060                                   ; $5d98: $01 $60 $70
	add  c                                           ; $5d9b: $81
	ld   b, b                                        ; $5d9c: $40
	nop                                              ; $5d9d: $00
	ld   d, e                                        ; $5d9e: $53
	add  c                                           ; $5d9f: $81
	ld   a, a                                        ; $5da0: $7f
	nop                                              ; $5da1: $00
	ld   a, e                                        ; $5da2: $7b
	add  c                                           ; $5da3: $81
	ld   a, a                                        ; $5da4: $7f
	nop                                              ; $5da5: $00
	rst  $30                                         ; $5da6: $f7
	add  e                                           ; $5da7: $83
	ccf                                              ; $5da8: $3f
	nop                                              ; $5da9: $00

jr_09b_5daa:
	ld   a, a                                        ; $5daa: $7f
	add  c                                           ; $5dab: $81
	ld   e, $0f                                      ; $5dac: $1e $0f
	rra                                              ; $5dae: $1f
	inc  e                                           ; $5daf: $1c
	inc  a                                           ; $5db0: $3c
	inc  c                                           ; $5db1: $0c
	ld   c, $08                                      ; $5db2: $0e $08
	dec  l                                           ; $5db4: $2d
	nop                                              ; $5db5: $00
	dec  bc                                          ; $5db6: $0b
	nop                                              ; $5db7: $00
	ld   d, [hl]                                     ; $5db8: $56
	nop                                              ; $5db9: $00
	ld   a, [hl+]                                    ; $5dba: $2a
	nop                                              ; $5dbb: $00
	and  [hl]                                        ; $5dbc: $a6
	ret  nz                                          ; $5dbd: $c0

	add  b                                           ; $5dbe: $80
	call nz, $e401                                   ; $5dbf: $c4 $01 $e4
	add  b                                           ; $5dc2: $80
	add  b                                           ; $5dc3: $80
	add  d                                           ; $5dc4: $82
	ld   [bc], a                                     ; $5dc5: $02
	sub  d                                           ; $5dc6: $92
	add  b                                           ; $5dc7: $80
	ret                                              ; $5dc8: $c9


	add  b                                           ; $5dc9: $80
	ld   bc, $0001                                   ; $5dca: $01 $01 $00
	cp   h                                           ; $5dcd: $bc
	add  c                                           ; $5dce: $81
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	ld   l, h                                        ; $5dd1: $6c
	add  c                                           ; $5dd2: $81
	nop                                              ; $5dd3: $00
	ld   [bc], a                                     ; $5dd4: $02
	ret  nz                                          ; $5dd5: $c0

	nop                                              ; $5dd6: $00
	add  h                                           ; $5dd7: $84
	add  c                                           ; $5dd8: $81
	nop                                              ; $5dd9: $00
	ld   a, [bc]                                     ; $5dda: $0a
	ld   bc, $0100                                   ; $5ddb: $01 $00 $01
	nop                                              ; $5dde: $00
	inc  a                                           ; $5ddf: $3c
	nop                                              ; $5de0: $00
	jr   nz, jr_09b_5de3                             ; $5de1: $20 $00

jr_09b_5de3:
	stop                                             ; $5de3: $10 $00
	ld   [$0081], sp                                 ; $5de5: $08 $81 $00
	dec  b                                           ; $5de8: $05
	ld   a, [bc]                                     ; $5de9: $0a
	nop                                              ; $5dea: $00
	inc  de                                          ; $5deb: $13
	nop                                              ; $5dec: $00
	ld   bc, $8000                                   ; $5ded: $01 $00 $80
	inc  c                                           ; $5df0: $0c
	inc  b                                           ; $5df1: $04
	ld   [$220a], sp                                 ; $5df2: $08 $0a $22
	inc  bc                                          ; $5df5: $03
	ld   h, e                                        ; $5df6: $63
	add  b                                           ; $5df7: $80
	inc  hl                                          ; $5df8: $23
	ld   [bc], a                                     ; $5df9: $02
	daa                                              ; $5dfa: $27
	rst  ToBoot                                         ; $5dfb: $c7
	ld   b, a                                        ; $5dfc: $47
	add  d                                           ; $5dfd: $82
	ld   d, a                                        ; $5dfe: $57
	nop                                              ; $5dff: $00
	add  [hl]                                        ; $5e00: $86
	add  e                                           ; $5e01: $83
	nop                                              ; $5e02: $00
	ld   [bc], a                                     ; $5e03: $02
	ld   [bc], a                                     ; $5e04: $02
	nop                                              ; $5e05: $00
	ret  nz                                          ; $5e06: $c0

	add  c                                           ; $5e07: $81
	ld   b, b                                        ; $5e08: $40
	add  d                                           ; $5e09: $82
	ret  nz                                          ; $5e0a: $c0

	inc  b                                           ; $5e0b: $04
	add  h                                           ; $5e0c: $84
	add  b                                           ; $5e0d: $80
	adc  b                                           ; $5e0e: $88
	add  b                                           ; $5e0f: $80
	db   $10                                         ; $5e10: $10
	add  b                                           ; $5e11: $80
	ld   b, b                                        ; $5e12: $40
	db   $10                                         ; $5e13: $10
	ret  nz                                          ; $5e14: $c0

	ret  nc                                          ; $5e15: $d0

	ret  nz                                          ; $5e16: $c0

	call c, $cac0                                    ; $5e17: $dc $c0 $ca
	ret  nz                                          ; $5e1a: $c0

	call nz, $6ac0                                   ; $5e1b: $c4 $c0 $6a
	nop                                              ; $5e1e: $00
	inc  [hl]                                        ; $5e1f: $34
	nop                                              ; $5e20: $00
	add  d                                           ; $5e21: $82
	nop                                              ; $5e22: $00
	rla                                              ; $5e23: $17
	ld   d, $80                                      ; $5e24: $16 $80
	ld   l, h                                        ; $5e26: $6c
	add  b                                           ; $5e27: $80
	jr   jr_09b_5daa                                 ; $5e28: $18 $80

	halt                                             ; $5e2a: $76
	inc  b                                           ; $5e2b: $04
	adc  l                                           ; $5e2c: $8d
	inc  c                                           ; $5e2d: $0c
	ld   h, d                                        ; $5e2e: $62
	nop                                              ; $5e2f: $00
	ld   [hl-], a                                    ; $5e30: $32
	add  e                                           ; $5e31: $83
	nop                                              ; $5e32: $00
	ld   [bc], a                                     ; $5e33: $02
	ld   bc, $1800                                   ; $5e34: $01 $00 $18
	add  c                                           ; $5e37: $81
	nop                                              ; $5e38: $00
	rlca                                             ; $5e39: $07
	inc  b                                           ; $5e3a: $04
	nop                                              ; $5e3b: $00
	inc  c                                           ; $5e3c: $0c
	ret  nz                                          ; $5e3d: $c0

	add  d                                           ; $5e3e: $82
	adc  b                                           ; $5e3f: $88
	adc  d                                           ; $5e40: $8a
	add  h                                           ; $5e41: $84
	add  b                                           ; $5e42: $80
	inc  h                                           ; $5e43: $24
	dec  bc                                          ; $5e44: $0b
	inc  l                                           ; $5e45: $2c
	dec  h                                           ; $5e46: $25
	ld   h, c                                        ; $5e47: $61
	ld   h, d                                        ; $5e48: $62
	ld   b, b                                        ; $5e49: $40
	ld   d, b                                        ; $5e4a: $50
	ld   d, $95                                      ; $5e4b: $16 $95
	sbc  h                                           ; $5e4d: $9c
	add  d                                           ; $5e4e: $82
	sub  h                                           ; $5e4f: $94
	adc  b                                           ; $5e50: $88
	add  c                                           ; $5e51: $81
	add  b                                           ; $5e52: $80
	nop                                              ; $5e53: $00
	ret  nz                                          ; $5e54: $c0

	add  e                                           ; $5e55: $83
	ret  nc                                          ; $5e56: $d0

	nop                                              ; $5e57: $00
	ldh  [$80], a                                    ; $5e58: $e0 $80
	add  sp, $02                                     ; $5e5a: $e8 $02
	call $0c28                                       ; $5e5c: $cd $28 $0c
	add  b                                           ; $5e5f: $80
	ld   b, c                                        ; $5e60: $41
	add  b                                           ; $5e61: $80
	ld   c, c                                        ; $5e62: $49
	dec  bc                                          ; $5e63: $0b
	add  hl, bc                                      ; $5e64: $09
	ld   c, b                                        ; $5e65: $48
	ld   [$2c0c], sp                                 ; $5e66: $08 $0c $2c
	sbc  h                                           ; $5e69: $9c
	inc  b                                           ; $5e6a: $04
	adc  l                                           ; $5e6b: $8d
	ld   bc, $0087                                   ; $5e6c: $01 $87 $00
	inc  bc                                          ; $5e6f: $03
	adc  e                                           ; $5e70: $8b
	nop                                              ; $5e71: $00
	dec  d                                           ; $5e72: $15
	cp   e                                           ; $5e73: $bb
	rlca                                             ; $5e74: $07
	ld   b, e                                        ; $5e75: $43
	dec  bc                                          ; $5e76: $0b
	inc  bc                                          ; $5e77: $03
	ld   b, e                                        ; $5e78: $43
	ld   d, e                                        ; $5e79: $53
	ld   b, e                                        ; $5e7a: $43
	ld   h, e                                        ; $5e7b: $63
	add  e                                           ; $5e7c: $83
	cp   e                                           ; $5e7d: $bb
	dec  de                                          ; $5e7e: $1b
	ei                                               ; $5e7f: $fb
	inc  bc                                          ; $5e80: $03
	db   $db                                         ; $5e81: $db
	jp   $e3eb                                       ; $5e82: $c3 $eb $e3


	di                                               ; $5e85: $f3
	dec  bc                                          ; $5e86: $0b
	db   $d3                                         ; $5e87: $d3
	inc  hl                                          ; $5e88: $23
	add  b                                           ; $5e89: $80
	inc  bc                                          ; $5e8a: $03
	add  b                                           ; $5e8b: $80
	rlca                                             ; $5e8c: $07
	ld   bc, $0701                                   ; $5e8d: $01 $01 $07
	add  d                                           ; $5e90: $82
	dec  b                                           ; $5e91: $05
	inc  de                                          ; $5e92: $13
	dec  a                                           ; $5e93: $3d
	ret  nz                                          ; $5e94: $c0

	add  [hl]                                        ; $5e95: $86
	adc  b                                           ; $5e96: $88
	add  [hl]                                        ; $5e97: $86
	add  b                                           ; $5e98: $80
	ld   a, [hl+]                                    ; $5e99: $2a
	jr   nz, @+$24                                   ; $5e9a: $20 $22

	inc  h                                           ; $5e9c: $24
	ld   l, b                                        ; $5e9d: $68
	ld   h, b                                        ; $5e9e: $60
	ld   b, d                                        ; $5e9f: $42
	ld   d, b                                        ; $5ea0: $50
	ld   d, $95                                      ; $5ea1: $16 $95
	sbc  h                                           ; $5ea3: $9c
	add  d                                           ; $5ea4: $82
	sub  h                                           ; $5ea5: $94
	adc  b                                           ; $5ea6: $88
	add  c                                           ; $5ea7: $81
	add  b                                           ; $5ea8: $80
	nop                                              ; $5ea9: $00
	ret  nz                                          ; $5eaa: $c0

	add  e                                           ; $5eab: $83
	ret  nc                                          ; $5eac: $d0

	nop                                              ; $5ead: $00
	ldh  [$80], a                                    ; $5eae: $e0 $80
	add  sp, $04                                     ; $5eb0: $e8 $04
	call z, $0c28                                    ; $5eb2: $cc $28 $0c
	ld   b, b                                        ; $5eb5: $40
	ld   b, c                                        ; $5eb6: $41
	add  b                                           ; $5eb7: $80
	ld   c, b                                        ; $5eb8: $48
	dec  bc                                          ; $5eb9: $0b
	add  hl, bc                                      ; $5eba: $09
	ld   c, b                                        ; $5ebb: $48
	ld   [$2c0c], sp                                 ; $5ebc: $08 $0c $2c
	sbc  h                                           ; $5ebf: $9c

Jump_09b_5ec0:
	inc  b                                           ; $5ec0: $04
	adc  l                                           ; $5ec1: $8d
	ld   bc, $0087                                   ; $5ec2: $01 $87 $00
	inc  bc                                          ; $5ec5: $03
	adc  e                                           ; $5ec6: $8b
	nop                                              ; $5ec7: $00
	add  hl, bc                                      ; $5ec8: $09
	dec  bc                                          ; $5ec9: $0b
	rlca                                             ; $5eca: $07

jr_09b_5ecb:
	db   $eb                                         ; $5ecb: $eb
	inc  bc                                          ; $5ecc: $03
	ld   e, e                                        ; $5ecd: $5b
	inc  bc                                          ; $5ece: $03
	ld   b, e                                        ; $5ecf: $43
	ld   d, e                                        ; $5ed0: $53
	ld   c, e                                        ; $5ed1: $4b
	inc  bc                                          ; $5ed2: $03
	add  b                                           ; $5ed3: $80
	dec  de                                          ; $5ed4: $1b
	add  hl, bc                                      ; $5ed5: $09
	ei                                               ; $5ed6: $fb
	inc  bc                                          ; $5ed7: $03
	db   $db                                         ; $5ed8: $db
	jp   $e3eb                                       ; $5ed9: $c3 $eb $e3


	di                                               ; $5edc: $f3
	dec  bc                                          ; $5edd: $0b
	db   $d3                                         ; $5ede: $d3
	inc  hl                                          ; $5edf: $23
	add  b                                           ; $5ee0: $80
	inc  bc                                          ; $5ee1: $03
	add  b                                           ; $5ee2: $80
	rlca                                             ; $5ee3: $07
	ld   bc, $0701                                   ; $5ee4: $01 $01 $07
	add  d                                           ; $5ee7: $82
	dec  b                                           ; $5ee8: $05
	dec  b                                           ; $5ee9: $05
	dec  a                                           ; $5eea: $3d
	ret  nz                                          ; $5eeb: $c0

	add  [hl]                                        ; $5eec: $86
	adc  b                                           ; $5eed: $88
	add  c                                           ; $5eee: $81

jr_09b_5eef:
	add  b                                           ; $5eef: $80
	add  b                                           ; $5ef0: $80
	jr   nz, jr_09b_5efe                             ; $5ef1: $20 $0b

	cpl                                              ; $5ef3: $2f
	inc  l                                           ; $5ef4: $2c
	ld   l, h                                        ; $5ef5: $6c
	ld   h, b                                        ; $5ef6: $60
	ld   c, [hl]                                     ; $5ef7: $4e
	ld   d, b                                        ; $5ef8: $50
	ld   d, $95                                      ; $5ef9: $16 $95
	sbc  h                                           ; $5efb: $9c
	add  d                                           ; $5efc: $82
	sub  h                                           ; $5efd: $94

jr_09b_5efe:
	adc  b                                           ; $5efe: $88
	add  c                                           ; $5eff: $81
	add  b                                           ; $5f00: $80
	nop                                              ; $5f01: $00
	ret  nz                                          ; $5f02: $c0

	add  e                                           ; $5f03: $83
	ret  nc                                          ; $5f04: $d0

	nop                                              ; $5f05: $00
	ldh  [$80], a                                    ; $5f06: $e0 $80
	add  sp, $02                                     ; $5f08: $e8 $02
	call z, $0c28                                    ; $5f0a: $cc $28 $0c
	add  b                                           ; $5f0d: $80
	ld   b, b                                        ; $5f0e: $40
	add  b                                           ; $5f0f: $80
	ld   c, b                                        ; $5f10: $48
	dec  bc                                          ; $5f11: $0b
	ld   [$0849], sp                                 ; $5f12: $08 $49 $08
	dec  c                                           ; $5f15: $0d
	inc  l                                           ; $5f16: $2c
	sbc  h                                           ; $5f17: $9c
	inc  b                                           ; $5f18: $04
	adc  l                                           ; $5f19: $8d
	ld   bc, $0087                                   ; $5f1a: $01 $87 $00
	inc  bc                                          ; $5f1d: $03
	adc  e                                           ; $5f1e: $8b
	nop                                              ; $5f1f: $00
	ld   [bc], a                                     ; $5f20: $02
	dec  bc                                          ; $5f21: $0b
	rlca                                             ; $5f22: $07
	dec  bc                                          ; $5f23: $0b
	add  e                                           ; $5f24: $83
	inc  bc                                          ; $5f25: $03
	nop                                              ; $5f26: $00
	ei                                               ; $5f27: $fb
	add  b                                           ; $5f28: $80
	dec  sp                                          ; $5f29: $3b
	ld   a, [bc]                                     ; $5f2a: $0a
	inc  bc                                          ; $5f2b: $03
	db   $e3                                         ; $5f2c: $e3
	inc  bc                                          ; $5f2d: $03
	db   $db                                         ; $5f2e: $db
	jp   $e3eb                                       ; $5f2f: $c3 $eb $e3


	di                                               ; $5f32: $f3
	dec  bc                                          ; $5f33: $0b
	db   $d3                                         ; $5f34: $d3
	inc  hl                                          ; $5f35: $23
	add  b                                           ; $5f36: $80
	inc  bc                                          ; $5f37: $03
	add  b                                           ; $5f38: $80
	rlca                                             ; $5f39: $07
	ld   bc, $0701                                   ; $5f3a: $01 $01 $07
	add  d                                           ; $5f3d: $82
	dec  b                                           ; $5f3e: $05
	rlca                                             ; $5f3f: $07
	inc  bc                                          ; $5f40: $03
	nop                                              ; $5f41: $00
	ld   bc, $fc00                                   ; $5f42: $01 $00 $fc
	sub  h                                           ; $5f45: $94
	ld   l, b                                        ; $5f46: $68
	nop                                              ; $5f47: $00
	add  b                                           ; $5f48: $80
	jr   nc, jr_09b_5ecb                             ; $5f49: $30 $80

	db   $10                                         ; $5f4b: $10
	adc  h                                           ; $5f4c: $8c
	nop                                              ; $5f4d: $00
	add  b                                           ; $5f4e: $80
	cp   a                                           ; $5f4f: $bf
	nop                                              ; $5f50: $00
	rst  $38                                         ; $5f51: $ff
	add  b                                           ; $5f52: $80
	ld   a, a                                        ; $5f53: $7f
	ld   c, $0e                                      ; $5f54: $0e $0e
	ldh  a, [rP1]                                    ; $5f56: $f0 $00
	ld   bc, $fc00                                   ; $5f58: $01 $00 $fc
	or   b                                           ; $5f5b: $b0
	ld   [$6c40], sp                                 ; $5f5c: $08 $40 $6c
	ld   l, b                                        ; $5f5f: $68
	jr   c, jr_09b_5f6a                              ; $5f60: $38 $08

	jr   nc, jr_09b_5f64                             ; $5f62: $30 $00

jr_09b_5f64:
	add  b                                           ; $5f64: $80
	jr   nc, jr_09b_5eef                             ; $5f65: $30 $88

	nop                                              ; $5f67: $00
	add  b                                           ; $5f68: $80
	cp   a                                           ; $5f69: $bf

jr_09b_5f6a:
	nop                                              ; $5f6a: $00
	rst  $38                                         ; $5f6b: $ff
	add  b                                           ; $5f6c: $80
	ld   a, a                                        ; $5f6d: $7f
	ld   bc, $f10e                                   ; $5f6e: $01 $0e $f1
	rst  $38                                         ; $5f71: $ff
	nop                                              ; $5f72: $00
	rst  $38                                         ; $5f73: $ff
	nop                                              ; $5f74: $00
	rst  $38                                         ; $5f75: $ff
	nop                                              ; $5f76: $00
	rst  $38                                         ; $5f77: $ff
	nop                                              ; $5f78: $00
	rst  $38                                         ; $5f79: $ff
	nop                                              ; $5f7a: $00
	ld   hl, sp+$00                                  ; $5f7b: $f8 $00
	or   e                                           ; $5f7d: $b3
	ld   bc, $ff00                                   ; $5f7e: $01 $00 $ff
	adc  l                                           ; $5f81: $8d
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	rst  $38                                         ; $5f84: $ff
	add  d                                           ; $5f85: $82
	nop                                              ; $5f86: $00
	add  b                                           ; $5f87: $80
	add  b                                           ; $5f88: $80
	add  a                                           ; $5f89: $87
	nop                                              ; $5f8a: $00
	ld   [bc], a                                     ; $5f8b: $02
	db   $fc                                         ; $5f8c: $fc
	rst  $38                                         ; $5f8d: $ff
	inc  bc                                          ; $5f8e: $03
	add  e                                           ; $5f8f: $83
	rst  $38                                         ; $5f90: $ff
	ld   [$ffaf], sp                                 ; $5f91: $08 $af $ff
	add  a                                           ; $5f94: $87
	rst  $38                                         ; $5f95: $ff
	add  e                                           ; $5f96: $83
	rst  $38                                         ; $5f97: $ff
	add  e                                           ; $5f98: $83
	rst  $38                                         ; $5f99: $ff
	sub  a                                           ; $5f9a: $97
	adc  l                                           ; $5f9b: $8d
	cp   a                                           ; $5f9c: $bf
	add  b                                           ; $5f9d: $80
	rla                                              ; $5f9e: $17
	add  b                                           ; $5f9f: $80
	rrca                                             ; $5fa0: $0f
	add  b                                           ; $5fa1: $80
	rla                                              ; $5fa2: $17
	add  b                                           ; $5fa3: $80
	rrca                                             ; $5fa4: $0f
	add  b                                           ; $5fa5: $80
	rla                                              ; $5fa6: $17
	add  b                                           ; $5fa7: $80
	rrca                                             ; $5fa8: $0f
	add  b                                           ; $5fa9: $80
	rla                                              ; $5faa: $17
	add  b                                           ; $5fab: $80
	rrca                                             ; $5fac: $0f
	nop                                              ; $5fad: $00
	rst  $38                                         ; $5fae: $ff
	add  d                                           ; $5faf: $82
	nop                                              ; $5fb0: $00
	add  b                                           ; $5fb1: $80
	add  b                                           ; $5fb2: $80
	add  a                                           ; $5fb3: $87
	nop                                              ; $5fb4: $00
	db   $10                                         ; $5fb5: $10
	ld   l, h                                        ; $5fb6: $6c
	rst  $38                                         ; $5fb7: $ff
	xor  a                                           ; $5fb8: $af
	rst  $38                                         ; $5fb9: $ff
	ld   e, e                                        ; $5fba: $5b
	rst  $38                                         ; $5fbb: $ff
	xor  e                                           ; $5fbc: $ab
	rst  $38                                         ; $5fbd: $ff
	ld   d, a                                        ; $5fbe: $57
	rst  $38                                         ; $5fbf: $ff
	dec  hl                                          ; $5fc0: $2b
	rst  $38                                         ; $5fc1: $ff
	rla                                              ; $5fc2: $17
	rst  $38                                         ; $5fc3: $ff
	dec  de                                          ; $5fc4: $1b
	rst  $38                                         ; $5fc5: $ff
	inc  bc                                          ; $5fc6: $03
	adc  l                                           ; $5fc7: $8d
	cp   a                                           ; $5fc8: $bf
	ld   bc, $fa3a                                   ; $5fc9: $01 $3a $fa
	add  b                                           ; $5fcc: $80
	push af                                          ; $5fcd: $f5
	nop                                              ; $5fce: $00
	ret  nz                                          ; $5fcf: $c0

	add  e                                           ; $5fd0: $83
	nop                                              ; $5fd1: $00
	add  h                                           ; $5fd2: $84
	inc  bc                                          ; $5fd3: $03
	add  b                                           ; $5fd4: $80
	rst  $38                                         ; $5fd5: $ff
	add  b                                           ; $5fd6: $80
	ld   a, a                                        ; $5fd7: $7f
	add  d                                           ; $5fd8: $82
	ccf                                              ; $5fd9: $3f
	add  b                                           ; $5fda: $80
	sbc  a                                           ; $5fdb: $9f
	ld   bc, $9f1f                                   ; $5fdc: $01 $1f $9f
	add  d                                           ; $5fdf: $82
	adc  a                                           ; $5fe0: $8f
	ld   bc, $e868                                   ; $5fe1: $01 $68 $e8
	add  b                                           ; $5fe4: $80
	call nc, $0082                                   ; $5fe5: $d4 $82 $00
	add  d                                           ; $5fe8: $82
	db   $fc                                         ; $5fe9: $fc
	add  d                                           ; $5fea: $82
	nop                                              ; $5feb: $00
	adc  [hl]                                        ; $5fec: $8e
	cp   a                                           ; $5fed: $bf
	sbc  [hl]                                        ; $5fee: $9e
	rst  $38                                         ; $5fef: $ff
	add  b                                           ; $5ff0: $80
	rst  ToBoot                                         ; $5ff1: $c7
	add  b                                           ; $5ff2: $80
	db   $e3                                         ; $5ff3: $e3
	add  b                                           ; $5ff4: $80
	ld   hl, sp-$80                                  ; $5ff5: $f8 $80
	cp   $8c                                         ; $5ff7: $fe $8c
	rst  $38                                         ; $5ff9: $ff
	add  b                                           ; $5ffa: $80
	ccf                                              ; $5ffb: $3f
	add  b                                           ; $5ffc: $80
	rra                                              ; $5ffd: $1f
	add  b                                           ; $5ffe: $80
	rst  ToBoot                                         ; $5fff: $c7
	add  b                                           ; $6000: $80
	pop  af                                          ; $6001: $f1
	add  b                                           ; $6002: $80
	ld   hl, sp-$72                                  ; $6003: $f8 $8e
	rst  $38                                         ; $6005: $ff
	nop                                              ; $6006: $00
	ld   l, e                                        ; $6007: $6b
	adc  l                                           ; $6008: $8d
	ld   a, e                                        ; $6009: $7b
	nop                                              ; $600a: $00
	push bc                                          ; $600b: $c5
	adc  l                                           ; $600c: $8d
	rst  JumpTable                                         ; $600d: $df
	nop                                              ; $600e: $00
	sbc  [hl]                                        ; $600f: $9e
	adc  l                                           ; $6010: $8d
	sbc  h                                           ; $6011: $9c
	nop                                              ; $6012: $00
	rst  $30                                         ; $6013: $f7
	add  c                                           ; $6014: $81
	rst  $38                                         ; $6015: $ff
	inc  b                                           ; $6016: $04
	rst  $30                                         ; $6017: $f7
	rst  $38                                         ; $6018: $ff
	di                                               ; $6019: $f3
	rst  $38                                         ; $601a: $ff
	rst  $30                                         ; $601b: $f7
	add  l                                           ; $601c: $85
	rst  $38                                         ; $601d: $ff
	nop                                              ; $601e: $00
	or   e                                           ; $601f: $b3
	add  c                                           ; $6020: $81
	cp   a                                           ; $6021: $bf
	nop                                              ; $6022: $00
	or   e                                           ; $6023: $b3
	adc  c                                           ; $6024: $89
	cp   a                                           ; $6025: $bf
	nop                                              ; $6026: $00
	ld   b, a                                        ; $6027: $47
	add  c                                           ; $6028: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6029: $cf
	ld   [bc], a                                     ; $602a: $02
	call $cdcf                                       ; $602b: $cd $cf $cd
	add  a                                           ; $602e: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $602f: $cf
	ld   a, [bc]                                     ; $6030: $0a
	ld   [hl], e                                     ; $6031: $73
	rst  $30                                         ; $6032: $f7
	or   a                                           ; $6033: $b7
	rst  $30                                         ; $6034: $f7
	or   a                                           ; $6035: $b7
	rst  $30                                         ; $6036: $f7
	or   a                                           ; $6037: $b7
	rst  $30                                         ; $6038: $f7
	or   a                                           ; $6039: $b7
	rst  $30                                         ; $603a: $f7
	or   a                                           ; $603b: $b7
	add  e                                           ; $603c: $83
	rst  $30                                         ; $603d: $f7
	add  b                                           ; $603e: $80
	ld   hl, sp+$0e                                  ; $603f: $f8 $0e
	cp   b                                           ; $6041: $b8
	ld   hl, sp-$48                                  ; $6042: $f8 $b8
	ld   hl, sp+$38                                  ; $6044: $f8 $38
	ld   hl, sp+$38                                  ; $6046: $f8 $38
	ld   hl, sp+$28                                  ; $6048: $f8 $28
	ld   hl, sp+$28                                  ; $604a: $f8 $28
	ld   hl, sp+$68                                  ; $604c: $f8 $68
	ld   hl, sp+$2f                                  ; $604e: $f8 $2f
	adc  l                                           ; $6050: $8d
	nop                                              ; $6051: $00
	nop                                              ; $6052: $00
	ld   b, b                                        ; $6053: $40
	adc  l                                           ; $6054: $8d
	cp   a                                           ; $6055: $bf
	add  b                                           ; $6056: $80
	rla                                              ; $6057: $17
	add  b                                           ; $6058: $80
	rrca                                             ; $6059: $0f
	add  b                                           ; $605a: $80
	rla                                              ; $605b: $17
	add  b                                           ; $605c: $80
	rrca                                             ; $605d: $0f
	add  b                                           ; $605e: $80
	rla                                              ; $605f: $17
	add  b                                           ; $6060: $80
	rrca                                             ; $6061: $0f
	add  b                                           ; $6062: $80
	rla                                              ; $6063: $17
	add  b                                           ; $6064: $80
	rrca                                             ; $6065: $0f
	adc  [hl]                                        ; $6066: $8e
	rst  $38                                         ; $6067: $ff
	add  b                                           ; $6068: $80
	ld   a, a                                        ; $6069: $7f
	add  b                                           ; $606a: $80
	ld   a, [hl]                                     ; $606b: $7e
	add  b                                           ; $606c: $80
	ld   a, l                                        ; $606d: $7d
	add  b                                           ; $606e: $80
	ld   a, c                                        ; $606f: $79
	add  b                                           ; $6070: $80
	ld   [hl], b                                     ; $6071: $70
	add  h                                           ; $6072: $84
	ld   b, b                                        ; $6073: $40
	add  b                                           ; $6074: $80
	cp   $80                                         ; $6075: $fe $80
	sbc  [hl]                                        ; $6077: $9e
	add  b                                           ; $6078: $80
	ld   c, $88                                      ; $6079: $0e $88
	ld   b, $80                                      ; $607b: $06 $80
	nop                                              ; $607d: $00
	add  b                                           ; $607e: $80
	ld   bc, $0080                                   ; $607f: $01 $80 $00
	add  [hl]                                        ; $6082: $86
	ld   bc, $0080                                   ; $6083: $01 $80 $00
	adc  [hl]                                        ; $6086: $8e
	rst  $38                                         ; $6087: $ff
	nop                                              ; $6088: $00
	ld   l, e                                        ; $6089: $6b
	adc  l                                           ; $608a: $8d
	ld   a, e                                        ; $608b: $7b
	ld   bc, $d5c5                                   ; $608c: $01 $c5 $d5
	add  h                                           ; $608f: $84
	jp   c, $d581                                    ; $6090: $da $81 $d5

	add  e                                           ; $6093: $83
	rst  JumpTable                                         ; $6094: $df
	nop                                              ; $6095: $00
	sbc  [hl]                                        ; $6096: $9e
	adc  l                                           ; $6097: $8d
	sbc  h                                           ; $6098: $9c
	ld   [bc], a                                     ; $6099: $02
	ei                                               ; $609a: $fb
	rst  $38                                         ; $609b: $ff
	rst  $28                                         ; $609c: $ef
	add  c                                           ; $609d: $81
	rst  $38                                         ; $609e: $ff
	inc  bc                                          ; $609f: $03
	cp   a                                           ; $60a0: $bf
	rst  $38                                         ; $60a1: $ff
	and  e                                           ; $60a2: $a3
	rst  $38                                         ; $60a3: $ff
	add  b                                           ; $60a4: $80
	nop                                              ; $60a5: $00
	add  b                                           ; $60a6: $80
	rst  $38                                         ; $60a7: $ff
	ld   [bc], a                                     ; $60a8: $02
	and  a                                           ; $60a9: $a7
	rst  $38                                         ; $60aa: $ff
	db   $eb                                         ; $60ab: $eb
	add  l                                           ; $60ac: $85
	cp   a                                           ; $60ad: $bf
	ld   bc, $bfb3                                   ; $60ae: $01 $b3 $bf
	add  b                                           ; $60b1: $80
	nop                                              ; $60b2: $00
	add  b                                           ; $60b3: $80
	cp   a                                           ; $60b4: $bf
	ld   [bc], a                                     ; $60b5: $02
	or   a                                           ; $60b6: $b7
	cp   a                                           ; $60b7: $bf
	ld   b, e                                        ; $60b8: $43
	add  l                                           ; $60b9: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60ba: $cf
	ld   bc, $cf4b                                   ; $60bb: $01 $4b $cf
	add  b                                           ; $60be: $80
	nop                                              ; $60bf: $00
	add  b                                           ; $60c0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c1: $cf
	ld   b, $4b                                      ; $60c2: $06 $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c4: $cf
	ld   sp, $f5f7                                   ; $60c5: $31 $f7 $f5
	rst  $30                                         ; $60c8: $f7
	push af                                          ; $60c9: $f5
	add  c                                           ; $60ca: $81
	rst  $30                                         ; $60cb: $f7
	ld   bc, $f7b5                                   ; $60cc: $01 $b5 $f7
	add  b                                           ; $60cf: $80
	nop                                              ; $60d0: $00
	add  b                                           ; $60d1: $80
	rst  $30                                         ; $60d2: $f7
	inc  b                                           ; $60d3: $04
	dec  [hl]                                        ; $60d4: $35
	rst  $30                                         ; $60d5: $f7

jr_09b_60d6:
	ld   a, [$e8f8]                                  ; $60d6: $fa $f8 $e8
	add  e                                           ; $60d9: $83
	ld   hl, sp+$01                                  ; $60da: $f8 $01
	jr   z, jr_09b_60d6                              ; $60dc: $28 $f8

	add  b                                           ; $60de: $80
	nop                                              ; $60df: $00
	add  b                                           ; $60e0: $80
	ld   hl, sp+$03                                  ; $60e1: $f8 $03
	jr   z, @-$06                                    ; $60e3: $28 $f8

	rst  ToBoot                                         ; $60e5: $c7
	rla                                              ; $60e6: $17
	add  b                                           ; $60e7: $80
	rrca                                             ; $60e8: $0f
	add  b                                           ; $60e9: $80
	rla                                              ; $60ea: $17
	add  b                                           ; $60eb: $80
	rrca                                             ; $60ec: $0f
	add  b                                           ; $60ed: $80
	rla                                              ; $60ee: $17
	add  b                                           ; $60ef: $80
	rrca                                             ; $60f0: $0f
	add  b                                           ; $60f1: $80
	rla                                              ; $60f2: $17
	inc  bc                                          ; $60f3: $03
	scf                                              ; $60f4: $37
	rst  $30                                         ; $60f5: $f7
	rst  ToBoot                                         ; $60f6: $c7
	add  a                                           ; $60f7: $87
	add  b                                           ; $60f8: $80
	add  [hl]                                        ; $60f9: $86
	add  b                                           ; $60fa: $80
	add  e                                           ; $60fb: $83
	dec  b                                           ; $60fc: $05
	jp   Jump_09b_4143                               ; $60fd: $c3 $43 $41


jr_09b_6100:
	pop  bc                                          ; $6100: $c1
	add  c                                           ; $6101: $81
	ld   bc, $f880                                   ; $6102: $01 $80 $f8
	add  b                                           ; $6105: $80
	cp   $06                                         ; $6106: $fe $06
	and  e                                           ; $6108: $a3
	rst  $38                                         ; $6109: $ff
	rrca                                             ; $610a: $0f
	rst  $38                                         ; $610b: $ff

Call_09b_610c:
	cpl                                              ; $610c: $2f
	rst  $38                                         ; $610d: $ff
	ld   a, a                                        ; $610e: $7f
	add  c                                           ; $610f: $81
	rst  $38                                         ; $6110: $ff
	add  d                                           ; $6111: $82
	db   $fc                                         ; $6112: $fc
	ld   bc, $f408                                   ; $6113: $01 $08 $f4
	adc  [hl]                                        ; $6116: $8e
	cp   a                                           ; $6117: $bf
	add  d                                           ; $6118: $82
	ld   a, a                                        ; $6119: $7f
	add  b                                           ; $611a: $80
	ld   d, l                                        ; $611b: $55
	add  b                                           ; $611c: $80
	ld   a, a                                        ; $611d: $7f
	add  b                                           ; $611e: $80
	ld   d, l                                        ; $611f: $55
	add  b                                           ; $6120: $80
	ld   a, a                                        ; $6121: $7f
	add  b                                           ; $6122: $80
	ld   d, l                                        ; $6123: $55
	add  b                                           ; $6124: $80
	ld   a, a                                        ; $6125: $7f
	add  d                                           ; $6126: $82
	cp   $80                                         ; $6127: $fe $80
	ld   d, [hl]                                     ; $6129: $56
	add  b                                           ; $612a: $80
	cp   $80                                         ; $612b: $fe $80
	ld   d, [hl]                                     ; $612d: $56
	add  b                                           ; $612e: $80
	cp   $80                                         ; $612f: $fe $80
	ld   d, [hl]                                     ; $6131: $56
	add  b                                           ; $6132: $80
	cp   $10                                         ; $6133: $fe $10
	db   $eb                                         ; $6135: $eb
	rst  $38                                         ; $6136: $ff
	ld   h, e                                        ; $6137: $63
	rst  $38                                         ; $6138: $ff
	and  e                                           ; $6139: $a3
	rst  $38                                         ; $613a: $ff
	jp   Jump_09b_63ff                               ; $613b: $c3 $ff $63


	rst  $38                                         ; $613e: $ff
	or   e                                           ; $613f: $b3
	rst  $38                                         ; $6140: $ff
	ld   e, e                                        ; $6141: $5b
	rst  $38                                         ; $6142: $ff
	cp   a                                           ; $6143: $bf
	rst  $38                                         ; $6144: $ff
	inc  hl                                          ; $6145: $23
	adc  l                                           ; $6146: $8d
	rst  $38                                         ; $6147: $ff
	nop                                              ; $6148: $00
	ld   l, e                                        ; $6149: $6b
	adc  l                                           ; $614a: $8d
	ld   a, e                                        ; $614b: $7b
	nop                                              ; $614c: $00
	push bc                                          ; $614d: $c5
	adc  l                                           ; $614e: $8d
	rst  JumpTable                                         ; $614f: $df
	nop                                              ; $6150: $00
	sbc  [hl]                                        ; $6151: $9e
	adc  l                                           ; $6152: $8d
	sbc  h                                           ; $6153: $9c
	nop                                              ; $6154: $00
	xor  e                                           ; $6155: $ab
	adc  e                                           ; $6156: $8b
	rst  $38                                         ; $6157: $ff
	ld   [bc], a                                     ; $6158: $02
	inc  e                                           ; $6159: $1c
	ld   b, b                                        ; $615a: $40
	or   a                                           ; $615b: $b7
	adc  e                                           ; $615c: $8b
	cp   a                                           ; $615d: $bf
	ld   [bc], a                                     ; $615e: $02
	add  hl, bc                                      ; $615f: $09
	ld   bc, $8b4b                                   ; $6160: $01 $4b $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6163: $cf
	ld   [$0185], sp                                 ; $6164: $08 $85 $01
	or   l                                           ; $6167: $b5
	rst  $30                                         ; $6168: $f7
	ld   [hl], a                                     ; $6169: $77
	rst  $30                                         ; $616a: $f7
	ld   [hl], a                                     ; $616b: $77
	rst  $30                                         ; $616c: $f7
	ld   [hl], a                                     ; $616d: $77
	add  l                                           ; $616e: $85
	rst  $30                                         ; $616f: $f7
	ld   [bc], a                                     ; $6170: $02

jr_09b_6171:
	add  d                                           ; $6171: $82
	ld   b, b                                        ; $6172: $40
	jr   z, jr_09b_6100                              ; $6173: $28 $8b

	ld   hl, sp+$01                                  ; $6175: $f8 $01
	add  b                                           ; $6177: $80
	ld   d, b                                        ; $6178: $50
	add  b                                           ; $6179: $80
	add  b                                           ; $617a: $80
	add  b                                           ; $617b: $80
	ld   h, b                                        ; $617c: $60
	add  b                                           ; $617d: $80
	sbc  b                                           ; $617e: $98
	add  b                                           ; $617f: $80
	rst  $20                                         ; $6180: $e7
	inc  bc                                          ; $6181: $03
	ldh  a, [c]                                      ; $6182: $f2
	di                                               ; $6183: $f3
	db   $fd                                         ; $6184: $fd
	db   $fc                                         ; $6185: $fc
	add  b                                           ; $6186: $80
	ld   a, a                                        ; $6187: $7f
	add  b                                           ; $6188: $80
	rra                                              ; $6189: $1f
	add  [hl]                                        ; $618a: $86
	cp   a                                           ; $618b: $bf
	nop                                              ; $618c: $00
	ccf                                              ; $618d: $3f
	add  c                                           ; $618e: $81
	cp   a                                           ; $618f: $bf
	ld   bc, $bf3f                                   ; $6190: $01 $3f $bf
	add  b                                           ; $6193: $80
	rst  $38                                         ; $6194: $ff
	add  b                                           ; $6195: $80
	rla                                              ; $6196: $17
	add  b                                           ; $6197: $80
	rrca                                             ; $6198: $0f
	add  b                                           ; $6199: $80
	rla                                              ; $619a: $17
	add  b                                           ; $619b: $80
	rrca                                             ; $619c: $0f
	add  b                                           ; $619d: $80
	rla                                              ; $619e: $17
	add  b                                           ; $619f: $80
	rrca                                             ; $61a0: $0f
	add  b                                           ; $61a1: $80
	rla                                              ; $61a2: $17
	add  b                                           ; $61a3: $80
	rrca                                             ; $61a4: $0f
	nop                                              ; $61a5: $00
	rst  $38                                         ; $61a6: $ff
	add  d                                           ; $61a7: $82
	nop                                              ; $61a8: $00
	add  b                                           ; $61a9: $80
	add  b                                           ; $61aa: $80
	add  a                                           ; $61ab: $87
	nop                                              ; $61ac: $00
	ld   bc, $7f80                                   ; $61ad: $01 $80 $7f
	adc  h                                           ; $61b0: $8c
	nop                                              ; $61b1: $00
	add  b                                           ; $61b2: $80
	cp   $8c                                         ; $61b3: $fe $8c
	nop                                              ; $61b5: $00
	add  h                                           ; $61b6: $84
	inc  bc                                          ; $61b7: $03
	add  b                                           ; $61b8: $80
	and  b                                           ; $61b9: $a0
	add  b                                           ; $61ba: $80
	ld   d, e                                        ; $61bb: $53
	add  b                                           ; $61bc: $80
	ld   hl, sp-$80                                  ; $61bd: $f8 $80
	db   $fd                                         ; $61bf: $fd
	add  e                                           ; $61c0: $83
	rst  $38                                         ; $61c1: $ff
	adc  e                                           ; $61c2: $8b
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	sub  h                                           ; $61c5: $94
	add  e                                           ; $61c6: $83
	ld   a, e                                        ; $61c7: $7b
	rla                                              ; $61c8: $17
	ld   a, b                                        ; $61c9: $78
	ld   a, e                                        ; $61ca: $7b
	ld   a, b                                        ; $61cb: $78
	ld   a, e                                        ; $61cc: $7b
	ld   a, [hl]                                     ; $61cd: $7e
	ld   a, a                                        ; $61ce: $7f
	ld   [hl], b                                     ; $61cf: $70
	ld   a, a                                        ; $61d0: $7f
	ld   [hl], c                                     ; $61d1: $71
	ld   a, a                                        ; $61d2: $7f
	call nz, $dedf                                   ; $61d3: $c4 $df $de
	rst  JumpTable                                         ; $61d6: $df
	rra                                              ; $61d7: $1f
	rst  $38                                         ; $61d8: $ff
	ld   a, [de]                                     ; $61d9: $1a
	rst  $38                                         ; $61da: $ff
	ret  z                                           ; $61db: $c8

	rst  $38                                         ; $61dc: $ff
	ld   b, $fe                                      ; $61dd: $06 $fe
	ld   sp, $80f1                                   ; $61df: $31 $f1 $80
	adc  a                                           ; $61e2: $8f
	add  hl, bc                                      ; $61e3: $09
	inc  d                                           ; $61e4: $14
	sbc  h                                           ; $61e5: $9c
	ld   e, h                                        ; $61e6: $5c
	call c, $fc1c                                    ; $61e7: $dc $1c $fc
	inc  e                                           ; $61ea: $1c
	db   $fc                                         ; $61eb: $fc
	call z, $80c4                                    ; $61ec: $cc $c4 $80
	jr   c, jr_09b_6171                              ; $61ef: $38 $80

	db   $f4                                         ; $61f1: $f4
	add  b                                           ; $61f2: $80
	ld   hl, sp-$80                                  ; $61f3: $f8 $80
	xor  d                                           ; $61f5: $aa
	add  b                                           ; $61f6: $80
	ld   d, l                                        ; $61f7: $55
	add  b                                           ; $61f8: $80
	ld   d, b                                        ; $61f9: $50
	add  b                                           ; $61fa: $80
	reti                                             ; $61fb: $d9


	add  b                                           ; $61fc: $80
	jp   c, $8880                                    ; $61fd: $da $80 $88

	add  b                                           ; $6200: $80
	ld   d, b                                        ; $6201: $50
	add  b                                           ; $6202: $80
	adc  b                                           ; $6203: $88
	add  b                                           ; $6204: $80
	xor  d                                           ; $6205: $aa
	add  [hl]                                        ; $6206: $86
	ld   l, [hl]                                     ; $6207: $6e
	add  b                                           ; $6208: $80
	ld   a, [hl+]                                    ; $6209: $2a
	add  b                                           ; $620a: $80
	ld   b, h                                        ; $620b: $44
	add  b                                           ; $620c: $80
	ld   a, [hl+]                                    ; $620d: $2a
	add  b                                           ; $620e: $80
	xor  d                                           ; $620f: $aa
	add  b                                           ; $6210: $80
	rst  JumpTable                                         ; $6211: $df
	add  b                                           ; $6212: $80
	xor  $82                                         ; $6213: $ee $82
	adc  $80                                         ; $6215: $ce $80
	adc  d                                           ; $6217: $8a
	add  b                                           ; $6218: $80
	ld   b, h                                        ; $6219: $44
	add  b                                           ; $621a: $80
	ld   a, [bc]                                     ; $621b: $0a
	add  b                                           ; $621c: $80
	xor  d                                           ; $621d: $aa
	add  b                                           ; $621e: $80
	rst  $30                                         ; $621f: $f7
	add  b                                           ; $6220: $80
	call nz, $e682                                   ; $6221: $c4 $82 $e6
	add  b                                           ; $6224: $80
	and  d                                           ; $6225: $a2
	add  b                                           ; $6226: $80
	ld   b, l                                        ; $6227: $45
	add  b                                           ; $6228: $80
	and  d                                           ; $6229: $a2
	add  b                                           ; $622a: $80
	xor  b                                           ; $622b: $a8
	add  b                                           ; $622c: $80
	ret  c                                           ; $622d: $d8

	add  b                                           ; $622e: $80
	ld   d, b                                        ; $622f: $50
	add  d                                           ; $6230: $82
	ret  c                                           ; $6231: $d8

	add  b                                           ; $6232: $80
	adc  b                                           ; $6233: $88
	add  b                                           ; $6234: $80
	ld   b, b                                        ; $6235: $40
	add  b                                           ; $6236: $80
	add  b                                           ; $6237: $80
	nop                                              ; $6238: $00
	rst  $38                                         ; $6239: $ff
	cp   l                                           ; $623a: $bd
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	rst  $38                                         ; $623d: $ff
	adc  e                                           ; $623e: $8b
	nop                                              ; $623f: $00
	add  b                                           ; $6240: $80
	dec  b                                           ; $6241: $05
	adc  h                                           ; $6242: $8c
	nop                                              ; $6243: $00
	ld   [bc], a                                     ; $6244: $02
	ld   a, l                                        ; $6245: $7d
	ld   a, a                                        ; $6246: $7f
	ld   [bc], a                                     ; $6247: $02
	adc  e                                           ; $6248: $8b
	nop                                              ; $6249: $00
	ld   [bc], a                                     ; $624a: $02
	ld   d, h                                        ; $624b: $54
	rst  $38                                         ; $624c: $ff
	ld   d, h                                        ; $624d: $54
	adc  l                                           ; $624e: $8d
	nop                                              ; $624f: $00
	ld   bc, $7c83                                   ; $6250: $01 $83 $7c
	add  b                                           ; $6253: $80
	ld   h, e                                        ; $6254: $63
	add  b                                           ; $6255: $80
	rra                                              ; $6256: $1f
	adc  b                                           ; $6257: $88
	rst  $38                                         ; $6258: $ff
	add  b                                           ; $6259: $80
	ld   a, a                                        ; $625a: $7f
	adc  h                                           ; $625b: $8c
	rst  $38                                         ; $625c: $ff
	add  b                                           ; $625d: $80
	db   $f4                                         ; $625e: $f4
	add  b                                           ; $625f: $80
	add  sp, -$80                                    ; $6260: $e8 $80
	ldh  a, [$80]                                    ; $6262: $f0 $80
	add  sp, -$80                                    ; $6264: $e8 $80
	ret  nc                                          ; $6266: $d0

	add  b                                           ; $6267: $80
	ldh  [$80], a                                    ; $6268: $e0 $80
	ret  nc                                          ; $626a: $d0

	add  b                                           ; $626b: $80
	and  b                                           ; $626c: $a0
	sbc  h                                           ; $626d: $9c
	nop                                              ; $626e: $00
	add  b                                           ; $626f: $80
	xor  d                                           ; $6270: $aa
	adc  h                                           ; $6271: $8c
	nop                                              ; $6272: $00
	add  b                                           ; $6273: $80
	ld   a, [bc]                                     ; $6274: $0a
	nop                                              ; $6275: $00
	rst  $38                                         ; $6276: $ff
	sbc  l                                           ; $6277: $9d
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	db   $fd                                         ; $627a: $fd
	add  d                                           ; $627b: $82
	rst  $38                                         ; $627c: $ff
	nop                                              ; $627d: $00
	cp   $82                                         ; $627e: $fe $82
	db   $fd                                         ; $6280: $fd
	ld   [$fefc], sp                                 ; $6281: $08 $fc $fe
	ld   d, h                                        ; $6284: $54
	rst  $38                                         ; $6285: $ff
	nop                                              ; $6286: $00
	rst  $38                                         ; $6287: $ff
	xor  d                                           ; $6288: $aa
	rst  $38                                         ; $6289: $ff
	inc  bc                                          ; $628a: $03
	add  b                                           ; $628b: $80
	rst  $38                                         ; $628c: $ff
	ld   bc, $fffd                                   ; $628d: $01 $fd $ff
	add  c                                           ; $6290: $81
	cp   $06                                         ; $6291: $fe $06
	nop                                              ; $6293: $00
	ld   bc, $ffab                                   ; $6294: $01 $ab $ff
	nop                                              ; $6297: $00
	rst  $38                                         ; $6298: $ff
	ld   d, l                                        ; $6299: $55
	adc  l                                           ; $629a: $8d
	nop                                              ; $629b: $00
	inc  b                                           ; $629c: $04
	and  c                                           ; $629d: $a1
	cp   $8d                                         ; $629e: $fe $8d
	db   $fd                                         ; $62a0: $fd
	ret  nc                                          ; $62a1: $d0

	add  c                                           ; $62a2: $81
	nop                                              ; $62a3: $00
	add  b                                           ; $62a4: $80
	jr   nz, jr_09b_62a7                             ; $62a5: $20 $00

jr_09b_62a7:
	ret  nz                                          ; $62a7: $c0

	add  e                                           ; $62a8: $83
	ldh  [rSB], a                                    ; $62a9: $e0 $01
	ld   a, [hl+]                                    ; $62ab: $2a
	ld   a, [bc]                                     ; $62ac: $0a
	add  b                                           ; $62ad: $80
	dec  b                                           ; $62ae: $05
	adc  d                                           ; $62af: $8a
	nop                                              ; $62b0: $00
	add  b                                           ; $62b1: $80
	rst  $38                                         ; $62b2: $ff
	add  b                                           ; $62b3: $80
	ld   a, a                                        ; $62b4: $7f
	adc  d                                           ; $62b5: $8a
	nop                                              ; $62b6: $00
	inc  b                                           ; $62b7: $04
	xor  d                                           ; $62b8: $aa
	rst  $38                                         ; $62b9: $ff
	xor  b                                           ; $62ba: $a8
	rst  $38                                         ; $62bb: $ff
	ld   [bc], a                                     ; $62bc: $02
	adc  c                                           ; $62bd: $89
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	rst  $38                                         ; $62c0: $ff
	adc  [hl]                                        ; $62c1: $8e
	nop                                              ; $62c2: $00
	adc  e                                           ; $62c3: $8b
	rst  $38                                         ; $62c4: $ff
	add  b                                           ; $62c5: $80
	db   $fd                                         ; $62c6: $fd
	add  b                                           ; $62c7: $80
	rst  $38                                         ; $62c8: $ff
	add  b                                           ; $62c9: $80
	cp   $80                                         ; $62ca: $fe $80
	db   $fc                                         ; $62cc: $fc
	add  b                                           ; $62cd: $80
	ldh  a, [$80]                                    ; $62ce: $f0 $80
	di                                               ; $62d0: $f3
	add  b                                           ; $62d1: $80
	rst  ToBoot                                         ; $62d2: $c7
	add  b                                           ; $62d3: $80
	cp   a                                           ; $62d4: $bf
	add  b                                           ; $62d5: $80
	rst  $38                                         ; $62d6: $ff
	add  d                                           ; $62d7: $82
	nop                                              ; $62d8: $00
	add  b                                           ; $62d9: $80
	rlca                                             ; $62da: $07
	add  b                                           ; $62db: $80
	ccf                                              ; $62dc: $3f
	add  [hl]                                        ; $62dd: $86
	rst  $38                                         ; $62de: $ff
	add  b                                           ; $62df: $80
	dec  b                                           ; $62e0: $05
	add  b                                           ; $62e1: $80
	ccf                                              ; $62e2: $3f
	adc  d                                           ; $62e3: $8a
	rst  $38                                         ; $62e4: $ff
	add  b                                           ; $62e5: $80
	ld   d, h                                        ; $62e6: $54
	add  b                                           ; $62e7: $80
	db   $fc                                         ; $62e8: $fc
	add  b                                           ; $62e9: $80
	ld   sp, hl                                      ; $62ea: $f9
	add  b                                           ; $62eb: $80
	di                                               ; $62ec: $f3
	add  b                                           ; $62ed: $80
	rst  $20                                         ; $62ee: $e7
	add  b                                           ; $62ef: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f0: $cf
	add  b                                           ; $62f1: $80
	add  b                                           ; $62f2: $80
	add  b                                           ; $62f3: $80
	ccf                                              ; $62f4: $3f
	add  b                                           ; $62f5: $80
	ld   d, l                                        ; $62f6: $55
	adc  b                                           ; $62f7: $88
	rst  $38                                         ; $62f8: $ff
	add  b                                           ; $62f9: $80
	nop                                              ; $62fa: $00
	add  b                                           ; $62fb: $80
	rst  $38                                         ; $62fc: $ff
	add  b                                           ; $62fd: $80
	ld   d, l                                        ; $62fe: $55
	add  [hl]                                        ; $62ff: $86
	rst  $38                                         ; $6300: $ff
	inc  bc                                          ; $6301: $03
	ld   hl, sp-$01                                  ; $6302: $f8 $ff
	rlca                                             ; $6304: $07
	rrca                                             ; $6305: $0f
	add  b                                           ; $6306: $80
	rst  JumpTable                                         ; $6307: $df
	ld   bc, $555a                                   ; $6308: $01 $5a $55
	add  [hl]                                        ; $630b: $86
	rst  $38                                         ; $630c: $ff
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	add  h                                           ; $630f: $84
	rst  $38                                         ; $6310: $ff
	adc  e                                           ; $6311: $8b
	nop                                              ; $6312: $00
	add  b                                           ; $6313: $80

Call_09b_6314:
	xor  d                                           ; $6314: $aa
	adc  h                                           ; $6315: $8c
	nop                                              ; $6316: $00
	add  b                                           ; $6317: $80
	xor  d                                           ; $6318: $aa
	add  b                                           ; $6319: $80
	ld   d, b                                        ; $631a: $50
	add  d                                           ; $631b: $82
	ld   hl, sp-$7e                                  ; $631c: $f8 $82
	db   $fc                                         ; $631e: $fc
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	add  e                                           ; $6321: $83
	rst  $38                                         ; $6322: $ff
	nop                                              ; $6323: $00
	ccf                                              ; $6324: $3f
	add  e                                           ; $6325: $83
	ldh  [rSB], a                                    ; $6326: $e0 $01
	ld   a, [hl+]                                    ; $6328: $2a
	ld   a, [bc]                                     ; $6329: $0a
	add  b                                           ; $632a: $80
	rst  $38                                         ; $632b: $ff
	inc  b                                           ; $632c: $04
	rlca                                             ; $632d: $07
	rst  $38                                         ; $632e: $ff
	ld   sp, hl                                      ; $632f: $f9
	rst  $38                                         ; $6330: $ff
	cp   $80                                         ; $6331: $fe $80
	rst  $38                                         ; $6333: $ff
	add  e                                           ; $6334: $83
	nop                                              ; $6335: $00
	add  b                                           ; $6336: $80
	ld   a, [bc]                                     ; $6337: $0a
	add  b                                           ; $6338: $80
	sbc  a                                           ; $6339: $9f
	add  b                                           ; $633a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $633b: $cf
	add  b                                           ; $633c: $80
	rst  $20                                         ; $633d: $e7
	add  b                                           ; $633e: $80
	di                                               ; $633f: $f3
	add  h                                           ; $6340: $84
	nop                                              ; $6341: $00
	add  b                                           ; $6342: $80
	xor  d                                           ; $6343: $aa
	add  [hl]                                        ; $6344: $86
	rst  $38                                         ; $6345: $ff
	add  h                                           ; $6346: $84
	nop                                              ; $6347: $00
	add  b                                           ; $6348: $80
	xor  d                                           ; $6349: $aa
	adc  h                                           ; $634a: $8c
	rst  $38                                         ; $634b: $ff
	add  b                                           ; $634c: $80
	cp   $80                                         ; $634d: $fe $80
	ld   hl, sp-$80                                  ; $634f: $f8 $80
	db   $e3                                         ; $6351: $e3
	add  b                                           ; $6352: $80
	adc  a                                           ; $6353: $8f
	add  b                                           ; $6354: $80
	rra                                              ; $6355: $1f
	add  b                                           ; $6356: $80
	ei                                               ; $6357: $fb
	add  b                                           ; $6358: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6359: $cf
	add  b                                           ; $635a: $80
	rra                                              ; $635b: $1f
	add  b                                           ; $635c: $80
	ld   a, a                                        ; $635d: $7f
	add  [hl]                                        ; $635e: $86
	rst  $38                                         ; $635f: $ff
	adc  h                                           ; $6360: $8c
	nop                                              ; $6361: $00
	add  b                                           ; $6362: $80
	xor  d                                           ; $6363: $aa
	adc  h                                           ; $6364: $8c
	nop                                              ; $6365: $00
	add  b                                           ; $6366: $80
	xor  d                                           ; $6367: $aa
	add  b                                           ; $6368: $80
	cp   $80                                         ; $6369: $fe $80
	db   $fc                                         ; $636b: $fc
	add  b                                           ; $636c: $80
	ld   sp, hl                                      ; $636d: $f9
	add  b                                           ; $636e: $80
	di                                               ; $636f: $f3
	add  b                                           ; $6370: $80
	db   $e3                                         ; $6371: $e3
	add  b                                           ; $6372: $80
	rst  ToBoot                                         ; $6373: $c7
	add  b                                           ; $6374: $80
	adc  a                                           ; $6375: $8f
	add  b                                           ; $6376: $80
	rra                                              ; $6377: $1f
	add  b                                           ; $6378: $80
	ld   a, a                                        ; $6379: $7f
	sub  [hl]                                        ; $637a: $96
	rst  $38                                         ; $637b: $ff
	add  h                                           ; $637c: $84
	cp   $01                                         ; $637d: $fe $01
	ret  nz                                          ; $637f: $c0

	rst  JumpTable                                         ; $6380: $df
	add  b                                           ; $6381: $80
	cp   a                                           ; $6382: $bf
	ld   bc, $bf9f                                   ; $6383: $01 $9f $bf
	add  b                                           ; $6386: $80
	ld   a, a                                        ; $6387: $7f
	ld   [$7f1f], sp                                 ; $6388: $08 $1f $7f
	rrca                                             ; $638b: $0f
	ld   a, a                                        ; $638c: $7f
	ld   b, l                                        ; $638d: $45
	ld   a, a                                        ; $638e: $7f
	ld   h, b                                        ; $638f: $60
	ld   a, a                                        ; $6390: $7f
	ld   a, [bc]                                     ; $6391: $0a
	adc  c                                           ; $6392: $89
	rst  $38                                         ; $6393: $ff
	inc  b                                           ; $6394: $04
	ld   d, l                                        ; $6395: $55
	rst  $38                                         ; $6396: $ff
	nop                                              ; $6397: $00
	rst  $38                                         ; $6398: $ff
	xor  d                                           ; $6399: $aa
	adc  c                                           ; $639a: $89
	rst  $38                                         ; $639b: $ff
	inc  b                                           ; $639c: $04
	ld   d, l                                        ; $639d: $55
	rst  $38                                         ; $639e: $ff
	nop                                              ; $639f: $00
	rst  $38                                         ; $63a0: $ff
	xor  d                                           ; $63a1: $aa
	adc  c                                           ; $63a2: $89
	rst  $38                                         ; $63a3: $ff
	inc  b                                           ; $63a4: $04
	ld   d, l                                        ; $63a5: $55
	rst  $38                                         ; $63a6: $ff
	nop                                              ; $63a7: $00
	rst  $38                                         ; $63a8: $ff
	xor  d                                           ; $63a9: $aa
	adc  c                                           ; $63aa: $89
	rst  $38                                         ; $63ab: $ff
	dec  b                                           ; $63ac: $05
	ld   d, l                                        ; $63ad: $55
	rst  $38                                         ; $63ae: $ff
	nop                                              ; $63af: $00
	rst  $38                                         ; $63b0: $ff
	xor  c                                           ; $63b1: $a9
	inc  bc                                          ; $63b2: $03
	add  b                                           ; $63b3: $80
	ld   bc, $0088                                   ; $63b4: $01 $88 $00
	add  b                                           ; $63b7: $80
	and  b                                           ; $63b8: $a0
	dec  b                                           ; $63b9: $05
	ld   a, c                                        ; $63ba: $79
	ld   sp, hl                                      ; $63bb: $f9
	cp   h                                           ; $63bc: $bc
	db   $fc                                         ; $63bd: $fc
	adc  $ee                                         ; $63be: $ce $ee
	add  b                                           ; $63c0: $80
	rst  $30                                         ; $63c1: $f7
	ld   [$f3e3], sp                                 ; $63c2: $08 $e3 $f3
	jp   hl                                          ; $63c5: $e9


	ld   sp, hl                                      ; $63c6: $f9
	ld   c, l                                        ; $63c7: $4d
	db   $fd                                         ; $63c8: $fd
	dec  c                                           ; $63c9: $0d
	db   $fd                                         ; $63ca: $fd
	ld   e, a                                        ; $63cb: $5f
	add  c                                           ; $63cc: $81
	rst  $38                                         ; $63cd: $ff
	add  b                                           ; $63ce: $80
	ld   a, a                                        ; $63cf: $7f
	add  b                                           ; $63d0: $80
	ccf                                              ; $63d1: $3f
	add  b                                           ; $63d2: $80
	sbc  a                                           ; $63d3: $9f
	add  b                                           ; $63d4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63d5: $cf
	add  b                                           ; $63d6: $80
	rst  $20                                         ; $63d7: $e7
	add  b                                           ; $63d8: $80
	di                                               ; $63d9: $f3
	adc  [hl]                                        ; $63da: $8e
	rst  $38                                         ; $63db: $ff
	ld   de, $2201                                   ; $63dc: $11 $01 $22
	nop                                              ; $63df: $00
	rrca                                             ; $63e0: $0f
	ld   c, $0f                                      ; $63e1: $0e $0f
	add  hl, bc                                      ; $63e3: $09
	rrca                                             ; $63e4: $0f
	inc  b                                           ; $63e5: $04
	rrca                                             ; $63e6: $0f
	inc  bc                                          ; $63e7: $03
	rrca                                             ; $63e8: $0f
	inc  c                                           ; $63e9: $0c
	rrca                                             ; $63ea: $0f
	nop                                              ; $63eb: $00
	rrca                                             ; $63ec: $0f
	inc  bc                                          ; $63ed: $03
	rrca                                             ; $63ee: $0f
	ld   [hl], $f0                                   ; $63ef: $36 $f0
	inc  l                                           ; $63f1: $2c
	ld   hl, sp-$6e                                  ; $63f2: $f8 $92
	db   $fc                                         ; $63f4: $fc
	ld   c, e                                        ; $63f5: $4b
	rst  $38                                         ; $63f6: $ff
	daa                                              ; $63f7: $27
	rst  $38                                         ; $63f8: $ff
	sbc  a                                           ; $63f9: $9f
	rst  $38                                         ; $63fa: $ff
	ld   a, a                                        ; $63fb: $7f
	rst  $38                                         ; $63fc: $ff
	db   $fd                                         ; $63fd: $fd
	rst  $38                                         ; $63fe: $ff

Jump_09b_63ff:
	db   $fc                                         ; $63ff: $fc
	nop                                              ; $6400: $00
	ld   bc, $0081                                   ; $6401: $01 $81 $00
	nop                                              ; $6404: $00
	and  b                                           ; $6405: $a0
	add  c                                           ; $6406: $81
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	ldh  a, [$81]                                    ; $6409: $f0 $81
	add  b                                           ; $640b: $80
	dec  bc                                          ; $640c: $0b
	ld   hl, sp-$40                                  ; $640d: $f8 $c0
	or   a                                           ; $640f: $b7
	rrca                                             ; $6410: $0f
	rst  $38                                         ; $6411: $ff
	rlca                                             ; $6412: $07
	rst  $38                                         ; $6413: $ff
	add  c                                           ; $6414: $81
	rst  $28                                         ; $6415: $ef
	ret  nz                                          ; $6416: $c0

	or   $f0                                         ; $6417: $f6 $f0
	add  h                                           ; $6419: $84
	cp   $03                                         ; $641a: $fe $03
	dec  [hl]                                        ; $641c: $35
	or   l                                           ; $641d: $b5
	db   $eb                                         ; $641e: $eb
	ld   l, e                                        ; $641f: $6b
	add  b                                           ; $6420: $80
	ld   l, d                                        ; $6421: $6a
	add  b                                           ; $6422: $80
	ld   d, [hl]                                     ; $6423: $56
	add  b                                           ; $6424: $80
	sub  $00                                         ; $6425: $d6 $00
	call nc, $d580                                   ; $6427: $d4 $80 $d5
	nop                                              ; $642a: $00
	call nc, $d580                                   ; $642b: $d4 $80 $d5
	ld   [bc], a                                     ; $642e: $02
	add  b                                           ; $642f: $80
	cp   a                                           ; $6430: $bf
	ccf                                              ; $6431: $3f
	add  b                                           ; $6432: $80
	ld   a, a                                        ; $6433: $7f
	add  [hl]                                        ; $6434: $86
	rst  $38                                         ; $6435: $ff
	nop                                              ; $6436: $00
	nop                                              ; $6437: $00
	add  b                                           ; $6438: $80
	ld   d, b                                        ; $6439: $50
	ld   bc, $e01f                                   ; $643a: $01 $1f $e0
	add  b                                           ; $643d: $80
	cp   $81                                         ; $643e: $fe $81
	rst  $38                                         ; $6440: $ff
	add  c                                           ; $6441: $81
	cp   $00                                         ; $6442: $fe $00
	rst  $38                                         ; $6444: $ff
	add  c                                           ; $6445: $81
	db   $fd                                         ; $6446: $fd
	inc  b                                           ; $6447: $04
	rst  $38                                         ; $6448: $ff
	dec  bc                                          ; $6449: $0b
	cp   d                                           ; $644a: $ba
	ld   [hl-], a                                    ; $644b: $32
	push hl                                          ; $644c: $e5
	add  c                                           ; $644d: $81
	ld   h, l                                        ; $644e: $65
	add  b                                           ; $644f: $80
	jp   z, $c980                                    ; $6450: $ca $80 $c9

	add  b                                           ; $6453: $80
	sub  l                                           ; $6454: $95
	add  b                                           ; $6455: $80
	sub  d                                           ; $6456: $92
	add  b                                           ; $6457: $80
	sub  b                                           ; $6458: $90
	add  hl, bc                                      ; $6459: $09
	db   $e3                                         ; $645a: $e3
	db   $ec                                         ; $645b: $ec
	adc  l                                           ; $645c: $8d
	sbc  h                                           ; $645d: $9c
	jr   jr_09b_6498                                 ; $645e: $18 $38

	or   e                                           ; $6460: $b3
	or   c                                           ; $6461: $b1
	ld   sp, $8071                                   ; $6462: $31 $71 $80
	ld   h, c                                        ; $6465: $61
	nop                                              ; $6466: $00
	ld   a, h                                        ; $6467: $7c
	add  c                                           ; $6468: $81
	ld   hl, sp+$01                                  ; $6469: $f8 $01
	add  a                                           ; $646b: $87
	ld   a, a                                        ; $646c: $7f
	adc  d                                           ; $646d: $8a
	rst  $38                                         ; $646e: $ff
	add  b                                           ; $646f: $80
	rrca                                             ; $6470: $0f
	dec  b                                           ; $6471: $05
	db   $fc                                         ; $6472: $fc
	db   $fd                                         ; $6473: $fd
	ld   hl, sp-$06                                  ; $6474: $f8 $fa
	ldh  a, [$f4]                                    ; $6476: $f0 $f4
	add  b                                           ; $6478: $80
	ldh  a, [rSB]                                    ; $6479: $f0 $01
	ldh  [$e8], a                                    ; $647b: $e0 $e8
	add  c                                           ; $647d: $81
	ret  nz                                          ; $647e: $c0

	nop                                              ; $647f: $00
	ret  nc                                          ; $6480: $d0

	add  b                                           ; $6481: $80
	add  b                                           ; $6482: $80
	ld   [$0fef], sp                                 ; $6483: $08 $ef $0f
	ld   bc, $0300                                   ; $6486: $01 $00 $03
	ld   bc, $0307                                   ; $6489: $01 $07 $03
	rrca                                             ; $648c: $0f
	add  c                                           ; $648d: $81
	rlca                                             ; $648e: $07
	nop                                              ; $648f: $00
	rra                                              ; $6490: $1f
	add  c                                           ; $6491: $81
	rrca                                             ; $6492: $0f
	ld   bc, $38d8                                   ; $6493: $01 $d8 $38
	add  b                                           ; $6496: $80
	rst  ToBoot                                         ; $6497: $c7

jr_09b_6498:
	adc  b                                           ; $6498: $88
	rst  $38                                         ; $6499: $ff
	add  b                                           ; $649a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $649b: $cf
	add  b                                           ; $649c: $80
	rlca                                             ; $649d: $07

jr_09b_649e:
	add  b                                           ; $649e: $80
	nop                                              ; $649f: $00
	add  b                                           ; $64a0: $80
	ret  nz                                          ; $64a1: $c0

	add  b                                           ; $64a2: $80
	ldh  [$80], a                                    ; $64a3: $e0 $80
	add  b                                           ; $64a5: $80
	add  b                                           ; $64a6: $80
	ldh  [$80], a                                    ; $64a7: $e0 $80
	ld   hl, sp-$80                                  ; $64a9: $f8 $80
	db   $fc                                         ; $64ab: $fc
	ld   [bc], a                                     ; $64ac: $02
	sbc  a                                           ; $64ad: $9f
	and  b                                           ; $64ae: $a0
	ccf                                              ; $64af: $3f
	add  d                                           ; $64b0: $82
	rra                                              ; $64b1: $1f
	add  b                                           ; $64b2: $80
	rrca                                             ; $64b3: $0f
	add  b                                           ; $64b4: $80
	inc  bc                                          ; $64b5: $03
	add  b                                           ; $64b6: $80
	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80
	ld   bc, $0702                                   ; $64b9: $01 $02 $07
	ld   hl, sp+$00                                  ; $64bc: $f8 $00
	add  b                                           ; $64be: $80
	ret  nz                                          ; $64bf: $c0

	add  b                                           ; $64c0: $80
	ldh  [$80], a                                    ; $64c1: $e0 $80
	ld   hl, sp-$80                                  ; $64c3: $f8 $80
	cp   $00                                         ; $64c5: $fe $00
	rst  $38                                         ; $64c7: $ff
	add  b                                           ; $64c8: $80
	rlca                                             ; $64c9: $07
	add  b                                           ; $64ca: $80
	ld   sp, hl                                      ; $64cb: $f9
	ld   a, [hl+]                                    ; $64cc: $2a
	cp   $07                                         ; $64cd: $fe $07
	rrca                                             ; $64cf: $0f
	nop                                              ; $64d0: $00
	rrca                                             ; $64d1: $0f
	nop                                              ; $64d2: $00
	rrca                                             ; $64d3: $0f
	nop                                              ; $64d4: $00
	rrca                                             ; $64d5: $0f
	nop                                              ; $64d6: $00
	rrca                                             ; $64d7: $0f
	dec  b                                           ; $64d8: $05
	rrca                                             ; $64d9: $0f
	inc  bc                                          ; $64da: $03
	rrca                                             ; $64db: $0f
	inc  b                                           ; $64dc: $04
	rrca                                             ; $64dd: $0f
	ld   [$c3ff], sp                                 ; $64de: $08 $ff $c3
	rst  $38                                         ; $64e1: $ff
	adc  h                                           ; $64e2: $8c
	rst  $38                                         ; $64e3: $ff

jr_09b_64e4:
	ld   a, [hl-]                                    ; $64e4: $3a
	rst  $38                                         ; $64e5: $ff
	ld   h, c                                        ; $64e6: $61
	rst  $38                                         ; $64e7: $ff
	sub  $ff                                         ; $64e8: $d6 $ff
	add  hl, bc                                      ; $64ea: $09
	rst  $38                                         ; $64eb: $ff
	scf                                              ; $64ec: $37
	rst  $38                                         ; $64ed: $ff
	sbc  b                                           ; $64ee: $98
	ret  nz                                          ; $64ef: $c0

	ld   a, h                                        ; $64f0: $7c
	ldh  [rAUD4POLY], a                              ; $64f1: $e0 $22
	ldh  [$8f], a                                    ; $64f3: $e0 $8f
	ldh  a, [rPCM12]                                 ; $64f5: $f0 $76
	ld   hl, sp-$80                                  ; $64f7: $f8 $80
	rst  $38                                         ; $64f9: $ff
	ld   b, $e7                                      ; $64fa: $06 $e7
	rst  $38                                         ; $64fc: $ff
	rst  JumpTable                                         ; $64fd: $df
	rst  $38                                         ; $64fe: $ff
	ld   a, $00                                      ; $64ff: $3e $00
	ld   bc, $0081                                   ; $6501: $01 $81 $00
	inc  d                                           ; $6504: $14
	ldh  [rP1], a                                    ; $6505: $e0 $00
	inc  e                                           ; $6507: $1c
	nop                                              ; $6508: $00
	ei                                               ; $6509: $fb
	db   $fc                                         ; $650a: $fc
	or   $ff                                         ; $650b: $f6 $ff
	jp   hl                                          ; $650d: $e9


	rst  $38                                         ; $650e: $ff
	call $bd00                                       ; $650f: $cd $00 $bd
	nop                                              ; $6512: $00
	ld   c, $00                                      ; $6513: $0e $00
	rst  $10                                         ; $6515: $d7
	nop                                              ; $6516: $00
	ld   a, d                                        ; $6517: $7a
	nop                                              ; $6518: $00
	ret  z                                           ; $6519: $c8

	add  b                                           ; $651a: $80
	jr   nc, jr_09b_649e                             ; $651b: $30 $81

	rst  $38                                         ; $651d: $ff
	ld   b, $5b                                      ; $651e: $06 $5b
	ld   bc, $03ad                                   ; $6520: $01 $ad $03
	ei                                               ; $6523: $fb
	rlca                                             ; $6524: $07
	rst  $30                                         ; $6525: $f7
	add  b                                           ; $6526: $80
	rrca                                             ; $6527: $0f
	add  b                                           ; $6528: $80
	ccf                                              ; $6529: $3f
	add  e                                           ; $652a: $83
	rst  $38                                         ; $652b: $ff
	nop                                              ; $652c: $00
	db   $fc                                         ; $652d: $fc
	add  b                                           ; $652e: $80
	ldh  a, [rSB]                                    ; $652f: $f0 $01
	ld   hl, sp-$04                                  ; $6531: $f8 $fc
	add  a                                           ; $6533: $87
	ldh  a, [rTIMA]                                  ; $6534: $f0 $05
	db   $f4                                         ; $6536: $f4
	ld   hl, sp-$2f                                  ; $6537: $f8 $d1
	ld   a, [hl+]                                    ; $6539: $2a
	inc  h                                           ; $653a: $24
	dec  h                                           ; $653b: $25
	add  b                                           ; $653c: $80
	ld   hl, $2501                                   ; $653d: $21 $01 $25
	inc  h                                           ; $6540: $24
	add  b                                           ; $6541: $80
	ld   [hl-], a                                    ; $6542: $32
	add  b                                           ; $6543: $80
	sub  l                                           ; $6544: $95
	add  b                                           ; $6545: $80
	sbc  d                                           ; $6546: $9a
	add  b                                           ; $6547: $80
	call nz, $0000                                  ; $6548: $c4 $00 $00
	add  d                                           ; $654b: $82
	ld   hl, sp-$7e                                  ; $654c: $f8 $82
	db   $fc                                         ; $654e: $fc

jr_09b_654f:
	rlca                                             ; $654f: $07
	ld   b, $5e                                      ; $6550: $06 $5e
	nop                                              ; $6552: $00
	rst  $28                                         ; $6553: $ef
	rlca                                             ; $6554: $07
	rst  $38                                         ; $6555: $ff
	rrca                                             ; $6556: $0f
	ld   b, b                                        ; $6557: $40
	adc  h                                           ; $6558: $8c
	nop                                              ; $6559: $00
	ld   bc, $7fe0                                   ; $655a: $01 $e0 $7f
	add  c                                           ; $655d: $81
	and  b                                           ; $655e: $a0
	add  d                                           ; $655f: $82
	jr   nz, jr_09b_64e4                             ; $6560: $20 $82

	jr   nc, jr_09b_64e4                             ; $6562: $30 $80

	jr   c, jr_09b_6569                              ; $6564: $38 $03

	inc  a                                           ; $6566: $3c
	inc  e                                           ; $6567: $1c
	pop  bc                                          ; $6568: $c1

jr_09b_6569:
	ld   e, $80                                      ; $6569: $1e $80
	inc  e                                           ; $656b: $1c
	add  d                                           ; $656c: $82
	rra                                              ; $656d: $1f
	ld   bc, $3f7f                                   ; $656e: $01 $7f $3f
	add  b                                           ; $6571: $80
	ld   a, $80                                      ; $6572: $3e $80
	inc  a                                           ; $6574: $3c
	add  b                                           ; $6575: $80
	ccf                                              ; $6576: $3f
	nop                                              ; $6577: $00
	add  a                                           ; $6578: $87
	add  e                                           ; $6579: $83
	rlca                                             ; $657a: $07
	add  b                                           ; $657b: $80
	add  a                                           ; $657c: $87
	add  b                                           ; $657d: $80
	add  $80                                         ; $657e: $c6 $80
	ld   [bc], a                                     ; $6580: $02
	add  b                                           ; $6581: $80
	jr   nc, jr_09b_658c                             ; $6582: $30 $08

	ret  nz                                          ; $6584: $c0

	pop  bc                                          ; $6585: $c1
	pop  af                                          ; $6586: $f1
	ldh  a, [$ce]                                    ; $6587: $f0 $ce
	ret  nz                                          ; $6589: $c0

	or   c                                           ; $658a: $b1
	add  b                                           ; $658b: $80

jr_09b_658c:
	ld   b, b                                        ; $658c: $40
	add  c                                           ; $658d: $81
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	add  b                                           ; $6590: $80
	add  e                                           ; $6591: $83
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	rst  $38                                         ; $6594: $ff
	add  b                                           ; $6595: $80
	rrca                                             ; $6596: $0f
	dec  c                                           ; $6597: $0d
	rra                                              ; $6598: $1f
	sbc  a                                           ; $6599: $9f
	rra                                              ; $659a: $1f
	ld   a, a                                        ; $659b: $7f
	rrca                                             ; $659c: $0f
	rra                                              ; $659d: $1f
	rlca                                             ; $659e: $07
	rrca                                             ; $659f: $0f
	nop                                              ; $65a0: $00
	inc  b                                           ; $65a1: $04
	ld   bc, $0003                                   ; $65a2: $01 $03 $00
	cp   $80                                         ; $65a5: $fe $80
	rst  $38                                         ; $65a7: $ff
	ld   [$fffe], sp                                 ; $65a8: $08 $fe $ff
	ld   sp, hl                                      ; $65ab: $f9
	cp   $e6                                         ; $65ac: $fe $e6
	rst  $28                                         ; $65ae: $ef
	rrca                                             ; $65af: $0f
	rla                                              ; $65b0: $17
	rst  $10                                         ; $65b1: $d7
	add  b                                           ; $65b2: $80
	rlc  a                                           ; $65b3: $cb $07
	call Call_09b_5b8d                               ; $65b5: $cd $8d $5b
	ret  c                                           ; $65b8: $d8

	jp   hl                                          ; $65b9: $e9


	add  sp, -$15                                    ; $65ba: $e8 $eb
	jp   hl                                          ; $65bc: $e9


	add  b                                           ; $65bd: $80
	rst  $20                                         ; $65be: $e7
	add  b                                           ; $65bf: $80
	db   $e3                                         ; $65c0: $e3
	add  b                                           ; $65c1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c2: $cf
	add  b                                           ; $65c3: $80
	ld   a, a                                        ; $65c4: $7f
	add  b                                           ; $65c5: $80
	ld   c, a                                        ; $65c6: $4f
	inc  bc                                          ; $65c7: $03
	rst  ToBoot                                         ; $65c8: $c7
	nop                                              ; $65c9: $00
	db   $fc                                         ; $65ca: $fc
	jr   c, jr_09b_654f                              ; $65cb: $38 $82

	ld   hl, sp+$01                                  ; $65cd: $f8 $01
	ei                                               ; $65cf: $fb
	ld   hl, sp-$80                                  ; $65d0: $f8 $80
	db   $fc                                         ; $65d2: $fc
	add  d                                           ; $65d3: $82
	cp   $00                                         ; $65d4: $fe $00
	rst  $38                                         ; $65d6: $ff
	add  l                                           ; $65d7: $85
	nop                                              ; $65d8: $00
	ld   [$ff77], sp                                 ; $65d9: $08 $77 $ff
	rla                                              ; $65dc: $17
	rst  $38                                         ; $65dd: $ff
	add  hl, de                                      ; $65de: $19
	rst  $38                                         ; $65df: $ff
	ld   h, d                                        ; $65e0: $62
	rst  $38                                         ; $65e1: $ff
	dec  de                                          ; $65e2: $1b
	add  l                                           ; $65e3: $85
	nop                                              ; $65e4: $00
	add  b                                           ; $65e5: $80
	ldh  a, [rTMA]                                   ; $65e6: $f0 $06
	ld   h, b                                        ; $65e8: $60
	ldh  a, [rAUD1SWEEP]                             ; $65e9: $f0 $10
	ldh  a, [rSVBK]                                  ; $65eb: $f0 $70
	ldh  a, [$d1]                                    ; $65ed: $f0 $d1
	add  d                                           ; $65ef: $82
	ld   [de], a                                     ; $65f0: $12
	dec  b                                           ; $65f1: $05
	ld   a, [de]                                     ; $65f2: $1a
	sbc  d                                           ; $65f3: $9a
	ld   a, [de]                                     ; $65f4: $1a
	ld   e, $1a                                      ; $65f5: $1e $1a
	ld   a, d                                        ; $65f7: $7a
	add  b                                           ; $65f8: $80
	ld   a, [hl-]                                    ; $65f9: $3a
	nop                                              ; $65fa: $00
	cp   d                                           ; $65fb: $ba
	add  b                                           ; $65fc: $80
	or   d                                           ; $65fd: $b2
	ld   [bc], a                                     ; $65fe: $02
	ld   a, b                                        ; $65ff: $78
	or   b                                           ; $6600: $b0
	or   h                                           ; $6601: $b4
	add  d                                           ; $6602: $82
	cp   h                                           ; $6603: $bc
	nop                                              ; $6604: $00
	db   $fc                                         ; $6605: $fc
	add  b                                           ; $6606: $80
	cp   $80                                         ; $6607: $fe $80
	or   $80                                         ; $6609: $f6 $80
	sub  $80                                         ; $660b: $d6 $80
	jp   nc, $0310                                   ; $660d: $d2 $10 $03

	nop                                              ; $6610: $00
	call nc, $e8d0                                   ; $6611: $d4 $d0 $e8
	ldh  [$91], a                                    ; $6614: $e0 $91
	add  c                                           ; $6616: $81
	ld   l, a                                        ; $6617: $6f
	ld   c, $bf                                      ; $6618: $0e $bf
	dec  a                                           ; $661a: $3d
	cp   $f2                                         ; $661b: $fe $f2
	pop  af                                          ; $661d: $f1
	ret  nz                                          ; $661e: $c0

	ld   e, $81                                      ; $661f: $1e $81
	db   $10                                         ; $6621: $10
	inc  c                                           ; $6622: $0c
	ld   [hl], b                                     ; $6623: $70
	jr   nc, @-$7b                                   ; $6624: $30 $83

	ld   [hl], b                                     ; $6626: $70
	adc  a                                           ; $6627: $8f

jr_09b_6628:
	ldh  a, [$8c]                                    ; $6628: $f0 $8c
	add  b                                           ; $662a: $80
	ld   [hl], b                                     ; $662b: $70
	nop                                              ; $662c: $00
	add  b                                           ; $662d: $80
	nop                                              ; $662e: $00
	rst  $38                                         ; $662f: $ff
	add  b                                           ; $6630: $80
	nop                                              ; $6631: $00
	add  d                                           ; $6632: $82
	ld   [$9080], sp                                 ; $6633: $08 $80 $90
	rrca                                             ; $6636: $0f
	jr   nc, @+$3a                                   ; $6637: $30 $38

	ld   [$2d0d], sp                                 ; $6639: $08 $0d $2d
	dec  a                                           ; $663c: $3d
	ld   e, l                                        ; $663d: $5d
	ld   c, b                                        ; $663e: $48
	dec  bc                                          ; $663f: $0b
	ld   b, e                                        ; $6640: $43
	scf                                              ; $6641: $37
	inc  [hl]                                        ; $6642: $34
	inc  sp                                          ; $6643: $33
	ldh  a, [$75]                                    ; $6644: $f0 $75
	ld   [hl], h                                     ; $6646: $74
	add  b                                           ; $6647: $80
	ld   [hl], l                                     ; $6648: $75
	add  c                                           ; $6649: $81
	ld   a, l                                        ; $664a: $7d
	add  b                                           ; $664b: $80
	db   $fd                                         ; $664c: $fd
	ld   [$ff0c], sp                                 ; $664d: $08 $0c $ff
	inc  c                                           ; $6650: $0c
	rst  $38                                         ; $6651: $ff
	ld   [bc], a                                     ; $6652: $02
	rst  $38                                         ; $6653: $ff
	ld   bc, $00ff                                   ; $6654: $01 $ff $00
	add  l                                           ; $6657: $85
	rst  $38                                         ; $6658: $ff
	ld   [$f00f], sp                                 ; $6659: $08 $0f $f0
	nop                                              ; $665c: $00
	ldh  a, [rP1]                                    ; $665d: $f0 $00
	ldh  a, [$80]                                    ; $665f: $f0 $80
	ldh  a, [rSVBK]                                  ; $6661: $f0 $70
	add  l                                           ; $6663: $85
	ldh  a, [rSB]                                    ; $6664: $f0 $01
	jr   nc, jr_09b_6628                             ; $6666: $30 $c0

	add  b                                           ; $6668: $80
	ldh  [$0d], a                                    ; $6669: $e0 $0d
	ldh  a, [$b0]                                    ; $666b: $f0 $b0
	cp   b                                           ; $666d: $b8
	ret  c                                           ; $666e: $d8

	call c, $fecc                                    ; $666f: $dc $cc $fe
	or   [hl]                                        ; $6672: $b6
	rst  $38                                         ; $6673: $ff
	ld   a, e                                        ; $6674: $7b
	rst  $38                                         ; $6675: $ff
	db   $fd                                         ; $6676: $fd
	ldh  a, [c]                                      ; $6677: $f2
	dec  bc                                          ; $6678: $0b
	add  b                                           ; $6679: $80
	inc  bc                                          ; $667a: $03
	ld   bc, $0501                                   ; $667b: $01 $01 $05
	add  b                                           ; $667e: $80
	ld   bc, $0202                                   ; $667f: $01 $02 $02
	nop                                              ; $6682: $00
	ld   bc, $0081                                   ; $6683: $01 $81 $00
	ld   [bc], a                                     ; $6686: $02
	add  c                                           ; $6687: $81
	add  b                                           ; $6688: $80
	adc  c                                           ; $6689: $89
	add  c                                           ; $668a: $81
	ld   [hl], b                                     ; $668b: $70
	ld   bc, $787c                                   ; $668c: $01 $7c $78
	add  b                                           ; $668f: $80
	ld   a, d                                        ; $6690: $7a
	add  b                                           ; $6691: $80
	ei                                               ; $6692: $fb
	add  b                                           ; $6693: $80
	ld   a, e                                        ; $6694: $7b
	add  b                                           ; $6695: $80
	dec  sp                                          ; $6696: $3b
	ld   [bc], a                                     ; $6697: $02
	db   $db                                         ; $6698: $db
	jr   jr_09b_66cb                                 ; $6699: $18 $30

	add  l                                           ; $669b: $85
	db   $10                                         ; $669c: $10
	add  b                                           ; $669d: $80
	ret  nz                                          ; $669e: $c0

	add  c                                           ; $669f: $81
	ldh  [$80], a                                    ; $66a0: $e0 $80

jr_09b_66a2:
	ret  nz                                          ; $66a2: $c0

	ld   [bc], a                                     ; $66a3: $02
	ld   bc, $0f0e                                   ; $66a4: $01 $0e $0f
	add  b                                           ; $66a7: $80
	xor  a                                           ; $66a8: $af
	add  b                                           ; $66a9: $80
	ld   c, a                                        ; $66aa: $4f
	ld   bc, $2faf                                   ; $66ab: $01 $af $2f
	add  b                                           ; $66ae: $80
	rrca                                             ; $66af: $0f
	nop                                              ; $66b0: $00
	ld   c, a                                        ; $66b1: $4f
	add  b                                           ; $66b2: $80
	rlca                                             ; $66b3: $07
	add  b                                           ; $66b4: $80
	ld   b, $01                                      ; $66b5: $06 $01
	inc  b                                           ; $66b7: $04
	dec  [hl]                                        ; $66b8: $35
	add  b                                           ; $66b9: $80
	cp   $81                                         ; $66ba: $fe $81
	or   $81                                         ; $66bc: $f6 $81
	ldh  a, [c]                                      ; $66be: $f2
	nop                                              ; $66bf: $00
	ld   l, d                                        ; $66c0: $6a
	add  c                                           ; $66c1: $81
	ld   l, b                                        ; $66c2: $68
	add  b                                           ; $66c3: $80
	ld   c, b                                        ; $66c4: $48
	dec  bc                                          ; $66c5: $0b
	ld   d, b                                        ; $66c6: $50
	ld   b, a                                        ; $66c7: $47
	rst  $38                                         ; $66c8: $ff
	inc  l                                           ; $66c9: $2c
	rst  $38                                         ; $66ca: $ff

jr_09b_66cb:
	inc  sp                                          ; $66cb: $33
	rst  $38                                         ; $66cc: $ff
	inc  e                                           ; $66cd: $1c
	rra                                              ; $66ce: $1f
	db   $ec                                         ; $66cf: $ec
	nop                                              ; $66d0: $00
	rra                                              ; $66d1: $1f
	add  c                                           ; $66d2: $81
	nop                                              ; $66d3: $00
	dec  bc                                          ; $66d4: $0b
	ld   [bc], a                                     ; $66d5: $02
	nop                                              ; $66d6: $00
	ld   [hl], d                                     ; $66d7: $72
	ldh  a, [rSVBK]                                  ; $66d8: $f0 $70
	ldh  a, [$80]                                    ; $66da: $f0 $80
	ldh  a, [rP1]                                    ; $66dc: $f0 $00

Call_09b_66de:
	ldh  a, [$80]                                    ; $66de: $f0 $80
	ldh  a, [$80]                                    ; $66e0: $f0 $80
	ld   [hl], b                                     ; $66e2: $70
	nop                                              ; $66e3: $00
	or   b                                           ; $66e4: $b0
	add  c                                           ; $66e5: $81
	jr   nc, jr_09b_66ea                             ; $66e6: $30 $02

	cp   l                                           ; $66e8: $bd
	or   d                                           ; $66e9: $b2

jr_09b_66ea:
	ldh  a, [c]                                      ; $66ea: $f2
	add  c                                           ; $66eb: $81
	ld   [hl], d                                     ; $66ec: $72
	add  d                                           ; $66ed: $82
	ld   h, h                                        ; $66ee: $64
	add  b                                           ; $66ef: $80
	call nz, $c180                                   ; $66f0: $c4 $80 $c1
	add  b                                           ; $66f3: $80
	add  c                                           ; $66f4: $81
	add  b                                           ; $66f5: $80
	db   $d3                                         ; $66f6: $d3
	add  b                                           ; $66f7: $80
	pop  de                                          ; $66f8: $d1
	add  b                                           ; $66f9: $80
	ret  c                                           ; $66fa: $d8

	nop                                              ; $66fb: $00
	db   $db                                         ; $66fc: $db
	add  c                                           ; $66fd: $81
	ret  c                                           ; $66fe: $d8

	add  b                                           ; $66ff: $80
	ret  z                                           ; $6700: $c8

	add  b                                           ; $6701: $80
	ld   [$0b0b], sp                                 ; $6702: $08 $0b $0b
	ld   [$0007], sp                                 ; $6705: $08 $07 $00
	cp   b                                           ; $6708: $b8
	add  b                                           ; $6709: $80
	ldh  [$c0], a                                    ; $670a: $e0 $c0
	ld   sp, $de20                                   ; $670c: $31 $20 $de
	ld   de, $0380                                   ; $670f: $11 $80 $03
	ld   a, [bc]                                     ; $6712: $0a
	pop  bc                                          ; $6713: $c1
	inc  e                                           ; $6714: $1c
	inc  de                                          ; $6715: $13
	rst  $38                                         ; $6716: $ff
	ld   c, $00                                      ; $6717: $0e $00
	rrca                                             ; $6719: $0f
	nop                                              ; $671a: $00
	ld   a, $00                                      ; $671b: $3e $00
	ret  nz                                          ; $671d: $c0

	add  b                                           ; $671e: $80
	jr   nc, jr_09b_66a2                             ; $671f: $30 $81

	ldh  a, [$0a]                                    ; $6721: $f0 $0a
	add  b                                           ; $6723: $80
	ldh  a, [rP1]                                    ; $6724: $f0 $00
	ldh  a, [$7e]                                    ; $6726: $f0 $7e
	pop  bc                                          ; $6728: $c1
	db   $fd                                         ; $6729: $fd
	ld   bc, $00c2                                   ; $672a: $01 $c2 $00
	ld   bc, $0087                                   ; $672d: $01 $87 $00
	nop                                              ; $6730: $00
	rst  $38                                         ; $6731: $ff
	add  b                                           ; $6732: $80
	ld   hl, sp-$80                                  ; $6733: $f8 $80
	ei                                               ; $6735: $fb
	add  b                                           ; $6736: $80
	db   $fd                                         ; $6737: $fd
	add  hl, bc                                      ; $6738: $09
	ld   a, l                                        ; $6739: $7d
	db   $fd                                         ; $673a: $fd
	ld   a, $7e                                      ; $673b: $3e $7e
	rra                                              ; $673d: $1f
	ccf                                              ; $673e: $3f
	rrca                                             ; $673f: $0f
	rra                                              ; $6740: $1f
	rlca                                             ; $6741: $07
	rst  $30                                         ; $6742: $f7
	add  b                                           ; $6743: $80
	rst  $38                                         ; $6744: $ff
	ld   e, $7f                                      ; $6745: $1e $7f
	ld   b, b                                        ; $6747: $40
	cp   a                                           ; $6748: $bf
	add  b                                           ; $6749: $80
	rst  JumpTable                                         ; $674a: $df
	pop  de                                          ; $674b: $d1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $674c: $cf
	ret  nz                                          ; $674d: $c0

	ld   h, c                                        ; $674e: $61
	ld   l, [hl]                                     ; $674f: $6e
	ld   h, b                                        ; $6750: $60
	ld   h, c                                        ; $6751: $61
	ld   h, b                                        ; $6752: $60
	sub  b                                           ; $6753: $90
	ldh  a, [rP1]                                    ; $6754: $f0 $00
	ldh  a, [rAUD1SWEEP]                             ; $6756: $f0 $10
	ldh  a, [rP1]                                    ; $6758: $f0 $00
	ldh  a, [$e0]                                    ; $675a: $f0 $e0
	ldh  a, [rP1]                                    ; $675c: $f0 $00

jr_09b_675e:
	ldh  a, [rP1]                                    ; $675e: $f0 $00
	jr   nc, jr_09b_675e                             ; $6760: $30 $fc

	nop                                              ; $6762: $00
	dec  a                                           ; $6763: $3d
	cp   $80                                         ; $6764: $fe $80
	rst  $38                                         ; $6766: $ff
	add  b                                           ; $6767: $80
	ld   a, a                                        ; $6768: $7f
	ld   h, $bf                                      ; $6769: $26 $bf
	ccf                                              ; $676b: $3f
	ld   e, a                                        ; $676c: $5f
	rra                                              ; $676d: $1f
	cpl                                              ; $676e: $2f
	rrca                                             ; $676f: $0f
	stop                                             ; $6770: $10 $00
	add  hl, bc                                      ; $6772: $09
	ld   [bc], a                                     ; $6773: $02
	push bc                                          ; $6774: $c5
	ret  nz                                          ; $6775: $c0

	ldh  [$60], a                                    ; $6776: $e0 $60
	pop  af                                          ; $6778: $f1
	or   b                                           ; $6779: $b0
	db   $fc                                         ; $677a: $fc
	call c, $efff                                    ; $677b: $dc $ff $ef
	rst  $38                                         ; $677e: $ff
	rst  $30                                         ; $677f: $f7
	rlca                                             ; $6780: $07
	inc  bc                                          ; $6781: $03
	rst  $38                                         ; $6782: $ff
	nop                                              ; $6783: $00
	dec  de                                          ; $6784: $1b
	rlca                                             ; $6785: $07
	sub  b                                           ; $6786: $90
	add  b                                           ; $6787: $80
	bit  0, e                                        ; $6788: $cb $43
	db   $e3                                         ; $678a: $e3
	inc  hl                                          ; $678b: $23
	ld   [hl], h                                     ; $678c: $74
	db   $10                                         ; $678d: $10
	ret  c                                           ; $678e: $d8

	jp   hl                                          ; $678f: $e9


	db   $ed                                         ; $6790: $ed
	add  b                                           ; $6791: $80
	push af                                          ; $6792: $f5
	ld   b, $f3                                      ; $6793: $06 $f3
	ei                                               ; $6795: $fb
	ld   bc, $0007                                   ; $6796: $01 $07 $00
	pop  af                                          ; $6799: $f1
	ldh  a, [$83]                                    ; $679a: $f0 $83
	nop                                              ; $679c: $00
	add  e                                           ; $679d: $83
	add  b                                           ; $679e: $80
	inc  b                                           ; $679f: $04
	ld   [hl], e                                     ; $67a0: $73
	ld   bc, $0003                                   ; $67a1: $01 $03 $00
	ld   bc, $0083                                   ; $67a4: $01 $83 $00
	add  b                                           ; $67a7: $80
	add  b                                           ; $67a8: $80
	add  b                                           ; $67a9: $80
	ret  nz                                          ; $67aa: $c0

	add  b                                           ; $67ab: $80
	ldh  [$80], a                                    ; $67ac: $e0 $80
	sbc  a                                           ; $67ae: $9f
	add  c                                           ; $67af: $81
	rst  $38                                         ; $67b0: $ff
	dec  bc                                          ; $67b1: $0b
	ld   a, a                                        ; $67b2: $7f
	rst  $38                                         ; $67b3: $ff
	ccf                                              ; $67b4: $3f
	ld   a, a                                        ; $67b5: $7f
	rra                                              ; $67b6: $1f
	ccf                                              ; $67b7: $3f
	rrca                                             ; $67b8: $0f
	rra                                              ; $67b9: $1f
	rlca                                             ; $67ba: $07
	rrca                                             ; $67bb: $0f
	nop                                              ; $67bc: $00
	ld   hl, sp-$80                                  ; $67bd: $f8 $80
	rrca                                             ; $67bf: $0f
	add  b                                           ; $67c0: $80
	rst  $38                                         ; $67c1: $ff
	add  b                                           ; $67c2: $80
	cp   $06                                         ; $67c3: $fe $06
	db   $fc                                         ; $67c5: $fc
	rst  $38                                         ; $67c6: $ff
	ei                                               ; $67c7: $fb
	cp   $e6                                         ; $67c8: $fe $e6
	db   $e3                                         ; $67ca: $e3
	inc  bc                                          ; $67cb: $03
	add  b                                           ; $67cc: $80
	ld   hl, sp+$29                                  ; $67cd: $f8 $29
	rra                                              ; $67cf: $1f
	ld   [hl], b                                     ; $67d0: $70
	jr   nz, jr_09b_6843                             ; $67d1: $20 $70

	nop                                              ; $67d3: $00
	ldh  a, [rLCDC]                                  ; $67d4: $f0 $40
	ldh  a, [$80]                                    ; $67d6: $f0 $80
	ldh  a, [$30]                                    ; $67d8: $f0 $30
	ldh  a, [rP1]                                    ; $67da: $f0 $00
	ldh  a, [rLCDC]                                  ; $67dc: $f0 $40
	ldh  a, [$80]                                    ; $67de: $f0 $80

jr_09b_67e0:
	ld   [hl], b                                     ; $67e0: $70
	ld   a, b                                        ; $67e1: $78
	jr   c, jr_09b_67e0                              ; $67e2: $38 $fc

	call c, $eefe                                    ; $67e4: $dc $fe $ee
	ld   a, a                                        ; $67e7: $7f
	ld   [hl], a                                     ; $67e8: $77
	sbc  a                                           ; $67e9: $9f
	sbc  e                                           ; $67ea: $9b
	adc  a                                           ; $67eb: $8f
	adc  l                                           ; $67ec: $8d
	rst  ToBoot                                         ; $67ed: $c7
	add  $fc                                         ; $67ee: $c6 $fc
	nop                                              ; $67f0: $00
	ld   [bc], a                                     ; $67f1: $02
	nop                                              ; $67f2: $00
	ld   b, $00                                      ; $67f3: $06 $00
	rrca                                             ; $67f5: $0f
	nop                                              ; $67f6: $00
	db   $10                                         ; $67f7: $10
	ld   [$8880], sp                                 ; $67f8: $08 $80 $88
	inc  hl                                          ; $67fb: $23
	call c, $fec4                                    ; $67fc: $dc $c4 $fe
	ldh  a, [c]                                      ; $67ff: $f2
	jr   c, @+$01                                    ; $6800: $38 $ff

	inc  c                                           ; $6802: $0c
	rst  $38                                         ; $6803: $ff
	jp   $e0ff                                       ; $6804: $c3 $ff $e0


	ld   a, a                                        ; $6807: $7f
	add  sp, $3f                                     ; $6808: $e8 $3f
	ld   l, e                                        ; $680a: $6b
	rra                                              ; $680b: $1f
	dec  hl                                          ; $680c: $2b
	rrca                                             ; $680d: $0f
	ld   a, [bc]                                     ; $680e: $0a
	rrca                                             ; $680f: $0f
	ld   [hl], c                                     ; $6810: $71
	ldh  a, [rP1]                                    ; $6811: $f0 $00
	ldh  a, [$80]                                    ; $6813: $f0 $80
	ldh  a, [$e0]                                    ; $6815: $f0 $e0
	ldh  a, [$90]                                    ; $6817: $f0 $90
	ldh  a, [rP1]                                    ; $6819: $f0 $00
	ldh  a, [rLCDC]                                  ; $681b: $f0 $40
	ldh  a, [$d0]                                    ; $681d: $f0 $d0
	ldh  a, [rIE]                                    ; $681f: $f0 $ff
	nop                                              ; $6821: $00
	rst  $38                                         ; $6822: $ff
	nop                                              ; $6823: $00
	rst  $38                                         ; $6824: $ff
	nop                                              ; $6825: $00
	rst  $38                                         ; $6826: $ff
	nop                                              ; $6827: $00
	rst  $38                                         ; $6828: $ff
	nop                                              ; $6829: $00
	rst  $38                                         ; $682a: $ff
	nop                                              ; $682b: $00
	ld   hl, sp+$00                                  ; $682c: $f8 $00
	jr   nz, jr_09b_6831                             ; $682e: $20 $01

	nop                                              ; $6830: $00

jr_09b_6831:
	inc  b                                           ; $6831: $04
	add  c                                           ; $6832: $81
	inc  bc                                          ; $6833: $03
	nop                                              ; $6834: $00
	rrca                                             ; $6835: $0f
	add  c                                           ; $6836: $81
	rlca                                             ; $6837: $07
	inc  b                                           ; $6838: $04
	rra                                              ; $6839: $1f
	rrca                                             ; $683a: $0f
	ld   a, [hl-]                                    ; $683b: $3a
	ld   a, [de]                                     ; $683c: $1a
	db   $10                                         ; $683d: $10
	add  b                                           ; $683e: $80
	ld   de, $1303                                   ; $683f: $11 $03 $13
	inc  hl                                          ; $6842: $23

jr_09b_6843:
	ld   [bc], a                                     ; $6843: $02
	inc  bc                                          ; $6844: $03
	add  b                                           ; $6845: $80
	ld   bc, $0308                                   ; $6846: $01 $08 $03
	db   $10                                         ; $6849: $10
	ld   b, $15                                      ; $684a: $06 $15
	dec  c                                           ; $684c: $0d
	add  hl, bc                                      ; $684d: $09
	dec  c                                           ; $684e: $0d
	ld   [hl], $1e                                   ; $684f: $36 $1e
	add  b                                           ; $6851: $80
	ld   a, [de]                                     ; $6852: $1a
	nop                                              ; $6853: $00

jr_09b_6854:
	ccf                                              ; $6854: $3f
	add  c                                           ; $6855: $81
	rst  $38                                         ; $6856: $ff
	add  b                                           ; $6857: $80
	ld   hl, sp+$0e                                  ; $6858: $f8 $0e
	rst  ToBoot                                         ; $685a: $c7
	ret  nz                                          ; $685b: $c0

	dec  sp                                          ; $685c: $3b
	inc  bc                                          ; $685d: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685e: $cf
	rrca                                             ; $685f: $0f
	ccf                                              ; $6860: $3f
	jr   nc, jr_09b_68e2                             ; $6861: $30 $7f

	rrca                                             ; $6863: $0f
	rst  $38                                         ; $6864: $ff
	ld   a, e                                        ; $6865: $7b
	jp   hl                                          ; $6866: $e9


	ret                                              ; $6867: $c9


	adc  b                                           ; $6868: $88
	add  b                                           ; $6869: $80
	inc  c                                           ; $686a: $0c
	ld   bc, $d52c                                   ; $686b: $01 $2c $d5
	add  c                                           ; $686e: $81
	ld   b, h                                        ; $686f: $44
	ld   a, [bc]                                     ; $6870: $0a
	ld   c, e                                        ; $6871: $4b
	ld   b, d                                        ; $6872: $42
	or   d                                           ; $6873: $b2
	ld   [hl+], a                                    ; $6874: $22
	ld   l, e                                        ; $6875: $6b
	db   $e3                                         ; $6876: $e3
	di                                               ; $6877: $f3
	ldh  a, [c]                                      ; $6878: $f2
	ld   [bc], a                                     ; $6879: $02
	inc  bc                                          ; $687a: $03
	ld   bc, $f180                                   ; $687b: $01 $80 $f1
	add  d                                           ; $687e: $82
	db   $fd                                         ; $687f: $fd
	inc  de                                          ; $6880: $13
	dec  b                                           ; $6881: $05
	db   $fc                                         ; $6882: $fc
	ld   hl, sp-$02                                  ; $6883: $f8 $fe
	ld   h, [hl]                                     ; $6885: $66
	ld   b, [hl]                                     ; $6886: $46
	ld   [de], a                                     ; $6887: $12
	ld   [hl+], a                                    ; $6888: $22
	xor  [hl]                                        ; $6889: $ae
	or   e                                           ; $688a: $b3
	db   $d3                                         ; $688b: $d3
	add  hl, de                                      ; $688c: $19
	add  hl, sp                                      ; $688d: $39
	sbc  h                                           ; $688e: $9c
	inc  e                                           ; $688f: $1c
	ld   c, b                                        ; $6890: $48
	ld   [$0323], sp                                 ; $6891: $08 $23 $03
	rra                                              ; $6894: $1f
	add  b                                           ; $6895: $80
	push af                                          ; $6896: $f5
	add  b                                           ; $6897: $80
	cp   d                                           ; $6898: $ba
	add  b                                           ; $6899: $80
	ld   e, b                                        ; $689a: $58
	add  b                                           ; $689b: $80
	dec  e                                           ; $689c: $1d
	add  b                                           ; $689d: $80
	xor  l                                           ; $689e: $ad
	ld   bc, $bbbf                                   ; $689f: $01 $bf $bb
	add  e                                           ; $68a2: $83
	ei                                               ; $68a3: $fb
	add  d                                           ; $68a4: $82
	db   $fd                                         ; $68a5: $fd
	add  d                                           ; $68a6: $82
	ld   a, l                                        ; $68a7: $7d
	add  d                                           ; $68a8: $82
	ld   a, [hl]                                     ; $68a9: $7e
	add  b                                           ; $68aa: $80
	ld   a, $0a                                      ; $68ab: $3e $0a
	cp   a                                           ; $68ad: $bf
	add  b                                           ; $68ae: $80
	ldh  [$c0], a                                    ; $68af: $e0 $c0
	ld   [hl], b                                     ; $68b1: $70
	ldh  [rAUD4LEN], a                               ; $68b2: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $68b4: $e0 $a0
	ldh  [$f8], a                                    ; $68b6: $e0 $f8
	add  l                                           ; $68b8: $85
	ldh  a, [rP1]                                    ; $68b9: $f0 $00
	db   $fc                                         ; $68bb: $fc
	add  c                                           ; $68bc: $81
	ld   hl, sp-$80                                  ; $68bd: $f8 $80
	add  sp, $01                                     ; $68bf: $e8 $01
	xor  $ec                                         ; $68c1: $ee $ec
	add  b                                           ; $68c3: $80
	db   $f4                                         ; $68c4: $f4
	nop                                              ; $68c5: $00
	rst  $30                                         ; $68c6: $f7
	add  c                                           ; $68c7: $81
	or   $82                                         ; $68c8: $f6 $82
	ei                                               ; $68ca: $fb
	nop                                              ; $68cb: $00
	ld   a, e                                        ; $68cc: $7b
	add  c                                           ; $68cd: $81
	ld   a, d                                        ; $68ce: $7a
	ld   [bc], a                                     ; $68cf: $02
	ld   a, h                                        ; $68d0: $7c
	ld   a, b                                        ; $68d1: $78
	jr   c, jr_09b_6854                              ; $68d2: $38 $80

	ld   sp, $1180                                   ; $68d4: $31 $80 $11
	ld   bc, $8605                                   ; $68d7: $01 $05 $86
	add  d                                           ; $68da: $82
	sub  [hl]                                        ; $68db: $96
	ld   bc, $ba9e                                   ; $68dc: $01 $9e $ba
	add  c                                           ; $68df: $81
	sbc  d                                           ; $68e0: $9a
	add  b                                           ; $68e1: $80

jr_09b_68e2:
	adc  d                                           ; $68e2: $8a
	add  d                                           ; $68e3: $82
	adc  b                                           ; $68e4: $88
	nop                                              ; $68e5: $00
	ld   a, a                                        ; $68e6: $7f
	add  e                                           ; $68e7: $83
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	ret  nz                                          ; $68ea: $c0

	add  e                                           ; $68eb: $83
	add  b                                           ; $68ec: $80
	nop                                              ; $68ed: $00
	ldh  [$87], a                                    ; $68ee: $e0 $87
	ret  nz                                          ; $68f0: $c0

	add  [hl]                                        ; $68f1: $86
	ld   b, b                                        ; $68f2: $40
	add  b                                           ; $68f3: $80
	nop                                              ; $68f4: $00
	ld   bc, $0020                                   ; $68f5: $01 $20 $00
	add  [hl]                                        ; $68f8: $86
	add  b                                           ; $68f9: $80
	add  b                                           ; $68fa: $80
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	ld   b, b                                        ; $68fd: $40
	add  c                                           ; $68fe: $81
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	ret  nz                                          ; $6901: $c0

	add  e                                           ; $6902: $83
	add  b                                           ; $6903: $80
	add  b                                           ; $6904: $80
	nop                                              ; $6905: $00
	ld   [$0020], sp                                 ; $6906: $08 $20 $00
	db   $10                                         ; $6909: $10
	jr   nz, jr_09b_6978                             ; $690a: $20 $6c

	ld   d, b                                        ; $690c: $50
	inc  de                                          ; $690d: $13
	inc  e                                           ; $690e: $1c
	db   $e3                                         ; $690f: $e3
	sub  e                                           ; $6910: $93
	nop                                              ; $6911: $00
	inc  b                                           ; $6912: $04
	inc  c                                           ; $6913: $0c
	nop                                              ; $6914: $00
	ld   [de], a                                     ; $6915: $12
	inc  c                                           ; $6916: $0c
	inc  l                                           ; $6917: $2c
	add  c                                           ; $6918: $81
	inc  e                                           ; $6919: $1c
	nop                                              ; $691a: $00
	call c, $3c82                                    ; $691b: $dc $82 $3c
	add  b                                           ; $691e: $80
	ld   a, h                                        ; $691f: $7c
	add  e                                           ; $6920: $83
	db   $fc                                         ; $6921: $fc
	nop                                              ; $6922: $00
	cp   $83                                         ; $6923: $fe $83
	ld   hl, sp+$00                                  ; $6925: $f8 $00
	ld   a, [$fc81]                                  ; $6927: $fa $81 $fc
	nop                                              ; $692a: $00
	db   $fd                                         ; $692b: $fd
	add  [hl]                                        ; $692c: $86
	cp   $01                                         ; $692d: $fe $01
	ld   a, [hl]                                     ; $692f: $7e
	ld   a, a                                        ; $6930: $7f
	add  e                                           ; $6931: $83
	ld   a, h                                        ; $6932: $7c
	nop                                              ; $6933: $00
	ld   a, [hl]                                     ; $6934: $7e
	adc  d                                           ; $6935: $8a
	ld   a, b                                        ; $6936: $78
	inc  bc                                          ; $6937: $03
	ld   [hl], b                                     ; $6938: $70
	ld   a, [hl]                                     ; $6939: $7e
	ld   l, h                                        ; $693a: $6c
	ld   a, a                                        ; $693b: $7f
	add  b                                           ; $693c: $80
	ld   e, [hl]                                     ; $693d: $5e
	add  hl, bc                                      ; $693e: $09
	sbc  [hl]                                        ; $693f: $9e
	add  [hl]                                        ; $6940: $86
	ld   b, $01                                      ; $6941: $06 $01
	ret  nz                                          ; $6943: $c0

	jp   nz, $c4c0                                   ; $6944: $c2 $c0 $c4

	ldh  [rKEY1], a                                  ; $6947: $e0 $4d
	add  c                                           ; $6949: $81
	ld   a, [hl+]                                    ; $694a: $2a
	add  b                                           ; $694b: $80
	dec  hl                                          ; $694c: $2b
	add  b                                           ; $694d: $80
	add  hl, hl                                      ; $694e: $29
	ld   [bc], a                                     ; $694f: $02
	jr   z, jr_09b_697b                              ; $6950: $28 $29

	ld   d, l                                        ; $6952: $55
	add  c                                           ; $6953: $81
	inc  b                                           ; $6954: $04
	inc  b                                           ; $6955: $04
	ld   a, [hl-]                                    ; $6956: $3a
	ld   [bc], a                                     ; $6957: $02
	inc  d                                           ; $6958: $14
	nop                                              ; $6959: $00

Jump_09b_695a:
	ld   [bc], a                                     ; $695a: $02
	adc  c                                           ; $695b: $89
	nop                                              ; $695c: $00
	dec  b                                           ; $695d: $05
	ld   bc, $4000                                   ; $695e: $01 $00 $40
	add  b                                           ; $6961: $80
	add  d                                           ; $6962: $82
	add  b                                           ; $6963: $80
	add  b                                           ; $6964: $80
	add  h                                           ; $6965: $84
	nop                                              ; $6966: $00
	db   $e4                                         ; $6967: $e4
	add  b                                           ; $6968: $80
	ret  nz                                          ; $6969: $c0

	rlca                                             ; $696a: $07
	ld   b, [hl]                                     ; $696b: $46
	ld   d, b                                        ; $696c: $50
	ld   b, b                                        ; $696d: $40
	ld   c, b                                        ; $696e: $48
	ld   b, b                                        ; $696f: $40
	ld   b, [hl]                                     ; $6970: $46
	add  d                                           ; $6971: $82
	rlca                                             ; $6972: $07
	add  l                                           ; $6973: $85
	ld   b, h                                        ; $6974: $44
	add  b                                           ; $6975: $80
	ld   h, d                                        ; $6976: $62
	nop                                              ; $6977: $00

jr_09b_6978:
	and  d                                           ; $6978: $a2
	add  c                                           ; $6979: $81
	ld   [hl+], a                                    ; $697a: $22

jr_09b_697b:
	ld   [bc], a                                     ; $697b: $02
	ld   hl, $7e20                                   ; $697c: $21 $20 $7e
	adc  l                                           ; $697f: $8d
	rst  $38                                         ; $6980: $ff
	ld   [de], a                                     ; $6981: $12
	cp   $ff                                         ; $6982: $fe $ff
	dec  a                                           ; $6984: $3d
	ccf                                              ; $6985: $3f
	dec  bc                                          ; $6986: $0b
	inc  e                                           ; $6987: $1c
	inc  d                                           ; $6988: $14
	nop                                              ; $6989: $00
	ld   [$0b00], sp                                 ; $698a: $08 $00 $0b
	nop                                              ; $698d: $00
	inc  e                                           ; $698e: $1c
	nop                                              ; $698f: $00
	ld   h, b                                        ; $6990: $60
	nop                                              ; $6991: $00
	or   b                                           ; $6992: $b0
	ld   a, [hl+]                                    ; $6993: $2a
	ld   a, [bc]                                     ; $6994: $0a
	add  b                                           ; $6995: $80
	ld   [$0900], sp                                 ; $6996: $08 $00 $09
	add  c                                           ; $6999: $81
	add  hl, hl                                      ; $699a: $29
	nop                                              ; $699b: $00
	dec  hl                                          ; $699c: $2b
	add  d                                           ; $699d: $82
	ld   l, e                                        ; $699e: $6b
	nop                                              ; $699f: $00
	rst  $28                                         ; $69a0: $ef
	add  b                                           ; $69a1: $80
	res  0, b                                        ; $69a2: $cb $80
	adc  e                                           ; $69a4: $8b
	add  b                                           ; $69a5: $80
	dec  hl                                          ; $69a6: $2b
	add  b                                           ; $69a7: $80
	ld   l, e                                        ; $69a8: $6b
	ld   [bc], a                                     ; $69a9: $02
	set  5, e                                        ; $69aa: $cb $eb
	dec  hl                                          ; $69ac: $2b
	add  b                                           ; $69ad: $80
	ld   d, [hl]                                     ; $69ae: $56
	add  b                                           ; $69af: $80
	ld   d, h                                        ; $69b0: $54
	ld   [bc], a                                     ; $69b1: $02
	inc  de                                          ; $69b2: $13
	db   $10                                         ; $69b3: $10
	ld   hl, sp-$7f                                  ; $69b4: $f8 $81
	inc  bc                                          ; $69b6: $03
	inc  de                                          ; $69b7: $13
	add  h                                           ; $69b8: $84
	nop                                              ; $69b9: $00
	call nz, $8f80                                   ; $69ba: $c4 $80 $8f
	add  a                                           ; $69bd: $87
	rst  $20                                         ; $69be: $e7
	rst  ToBoot                                         ; $69bf: $c7
	ld   a, [$e4e2]                                  ; $69c0: $fa $e2 $e4
	ldh  [$7a], a                                    ; $69c3: $e0 $7a
	ldh  a, [$fe]                                    ; $69c5: $f0 $fe
	ld   hl, sp-$44                                  ; $69c7: $f8 $bc
	db   $fc                                         ; $69c9: $fc
	sbc  $fe                                         ; $69ca: $de $fe
	add  b                                           ; $69cc: $80
	rst  $38                                         ; $69cd: $ff
	nop                                              ; $69ce: $00
	rst  $28                                         ; $69cf: $ef
	add  c                                           ; $69d0: $81
	rst  $38                                         ; $69d1: $ff
	ld   [bc], a                                     ; $69d2: $02
	rst  $30                                         ; $69d3: $f7
	rst  $38                                         ; $69d4: $ff
	rlca                                             ; $69d5: $07
	add  a                                           ; $69d6: $87
	nop                                              ; $69d7: $00
	ld   d, $01                                      ; $69d8: $16 $01
	nop                                              ; $69da: $00
	ld   b, $01                                      ; $69db: $06 $01
	ld   a, [de]                                     ; $69dd: $1a
	rlca                                             ; $69de: $07
	dec  hl                                          ; $69df: $2b
	rra                                              ; $69e0: $1f
	rrca                                             ; $69e1: $0f
	rra                                              ; $69e2: $1f
	ld   [hl], a                                     ; $69e3: $77
	ccf                                              ; $69e4: $3f
	cpl                                              ; $69e5: $2f
	scf                                              ; $69e6: $37
	db   $fc                                         ; $69e7: $fc
	ld   l, l                                        ; $69e8: $6d
	ld   c, b                                        ; $69e9: $48
	ld   l, l                                        ; $69ea: $6d
	rst  $38                                         ; $69eb: $ff
	db   $db                                         ; $69ec: $db
	sub  e                                           ; $69ed: $93
	db   $db                                         ; $69ee: $db
	or   a                                           ; $69ef: $b7
	add  e                                           ; $69f0: $83
	nop                                              ; $69f1: $00
	ld   b, $0f                                      ; $69f2: $06 $0f
	nop                                              ; $69f4: $00
	ld   [hl], a                                     ; $69f5: $77
	rrca                                             ; $69f6: $0f
	or   a                                           ; $69f7: $b7
	ld   a, a                                        ; $69f8: $7f
	cp   a                                           ; $69f9: $bf
	adc  l                                           ; $69fa: $8d
	rst  $38                                         ; $69fb: $ff
	inc  b                                           ; $69fc: $04
	or   b                                           ; $69fd: $b0
	cp   a                                           ; $69fe: $bf
	cpl                                              ; $69ff: $2f
	ld   a, [hl]                                     ; $6a00: $7e
	and  c                                           ; $6a01: $a1
	add  e                                           ; $6a02: $83
	nop                                              ; $6a03: $00
	ld   a, [bc]                                     ; $6a04: $0a
	ret  nz                                          ; $6a05: $c0

	nop                                              ; $6a06: $00
	or   b                                           ; $6a07: $b0
	ret  nz                                          ; $6a08: $c0

	xor  b                                           ; $6a09: $a8
	ldh  a, [$ec]                                    ; $6a0a: $f0 $ec
	ld   hl, sp-$02                                  ; $6a0c: $f8 $fe
	db   $fc                                         ; $6a0e: $fc
	rst  $38                                         ; $6a0f: $ff
	add  c                                           ; $6a10: $81
	cp   $08                                         ; $6a11: $fe $08
	di                                               ; $6a13: $f3
	rst  $38                                         ; $6a14: $ff
	rst  $28                                         ; $6a15: $ef
	ei                                               ; $6a16: $fb
	reti                                             ; $6a17: $d9


	rst  $30                                         ; $6a18: $f7
	scf                                              ; $6a19: $37
	rst  $28                                         ; $6a1a: $ef
	xor  $80                                         ; $6a1b: $ee $80
	sbc  a                                           ; $6a1d: $9f
	ld   bc, $c03f                                   ; $6a1e: $01 $3f $c0
	add  a                                           ; $6a21: $87
	nop                                              ; $6a22: $00
	inc  b                                           ; $6a23: $04
	ld   bc, $0200                                   ; $6a24: $01 $00 $02
	nop                                              ; $6a27: $00
	inc  b                                           ; $6a28: $04
	add  c                                           ; $6a29: $81
	ld   [bc], a                                     ; $6a2a: $02
	ld   [bc], a                                     ; $6a2b: $02
	ld   b, $00                                      ; $6a2c: $06 $00
	ld   [bc], a                                     ; $6a2e: $02
	add  e                                           ; $6a2f: $83
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	ld   bc, $0083                                   ; $6a32: $01 $83 $00
	ld   [de], a                                     ; $6a35: $12
	ret                                              ; $6a36: $c9


	or   a                                           ; $6a37: $b7
	and  a                                           ; $6a38: $a7
	or   [hl]                                        ; $6a39: $b6
	or   h                                           ; $6a3a: $b4
	or   [hl]                                        ; $6a3b: $b6
	sbc  [hl]                                        ; $6a3c: $9e
	ld   l, $2b                                      ; $6a3d: $2e $2b
	xor  l                                           ; $6a3f: $ad
	xor  h                                           ; $6a40: $ac
	inc  l                                           ; $6a41: $2c
	and  h                                           ; $6a42: $a4
	dec  b                                           ; $6a43: $05
	dec  c                                           ; $6a44: $0d
	inc  l                                           ; $6a45: $2c
	ld   h, a                                        ; $6a46: $67
	nop                                              ; $6a47: $00
	inc  a                                           ; $6a48: $3c
	adc  e                                           ; $6a49: $8b
	nop                                              ; $6a4a: $00
	ld   [$709e], sp                                 ; $6a4b: $08 $9e $70
	ld   e, [hl]                                     ; $6a4e: $5e
	ldh  [rSVBK], a                                  ; $6a4f: $e0 $70
	ret  nz                                          ; $6a51: $c0

	add  b                                           ; $6a52: $80
	ret  nz                                          ; $6a53: $c0

	ld   h, b                                        ; $6a54: $60
	add  c                                           ; $6a55: $81
	add  b                                           ; $6a56: $80
	nop                                              ; $6a57: $00
	ret  nz                                          ; $6a58: $c0

	add  c                                           ; $6a59: $81
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	add  b                                           ; $6a5c: $80
	adc  l                                           ; $6a5d: $8d
	nop                                              ; $6a5e: $00
	inc  b                                           ; $6a5f: $04
	rst  $38                                         ; $6a60: $ff
	ccf                                              ; $6a61: $3f
	cp   a                                           ; $6a62: $bf
	ccf                                              ; $6a63: $3f
	ld   a, a                                        ; $6a64: $7f
	add  c                                           ; $6a65: $81
	rra                                              ; $6a66: $1f
	nop                                              ; $6a67: $00

jr_09b_6a68:
	ccf                                              ; $6a68: $3f
	add  c                                           ; $6a69: $81
	rrca                                             ; $6a6a: $0f
	nop                                              ; $6a6b: $00
	rra                                              ; $6a6c: $1f
	add  c                                           ; $6a6d: $81
	rlca                                             ; $6a6e: $07
	nop                                              ; $6a6f: $00
	rrca                                             ; $6a70: $0f
	add  c                                           ; $6a71: $81
	inc  bc                                          ; $6a72: $03
	nop                                              ; $6a73: $00
	rlca                                             ; $6a74: $07
	add  c                                           ; $6a75: $81
	ld   bc, $0300                                   ; $6a76: $01 $00 $03
	add  c                                           ; $6a79: $81
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	ld   bc, $0081                                   ; $6a7c: $01 $81 $00
	ld   [bc], a                                     ; $6a7f: $02
	dec  sp                                          ; $6a80: $3b
	nop                                              ; $6a81: $00
	add  b                                           ; $6a82: $80
	add  e                                           ; $6a83: $83
	nop                                              ; $6a84: $00
	ld   [bc], a                                     ; $6a85: $02
	ld   h, $00                                      ; $6a86: $26 $00
	ret  nz                                          ; $6a88: $c0

	add  c                                           ; $6a89: $81
	nop                                              ; $6a8a: $00
	dec  bc                                          ; $6a8b: $0b
	inc  bc                                          ; $6a8c: $03
	nop                                              ; $6a8d: $00
	ld   h, b                                        ; $6a8e: $60
	nop                                              ; $6a8f: $00
	ld   b, $00                                      ; $6a90: $06 $00
	add  hl, hl                                      ; $6a92: $29
	nop                                              ; $6a93: $00
	ld   [de], a                                     ; $6a94: $12
	nop                                              ; $6a95: $00
	db   $fc                                         ; $6a96: $fc
	nop                                              ; $6a97: $00
	add  b                                           ; $6a98: $80
	inc  bc                                          ; $6a99: $03
	add  e                                           ; $6a9a: $83
	rst  $38                                         ; $6a9b: $ff
	add  l                                           ; $6a9c: $85
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	inc  bc                                          ; $6a9f: $03
	add  c                                           ; $6aa0: $81
	nop                                              ; $6aa1: $00
	ld   bc, $0004                                   ; $6aa2: $01 $04 $00
	add  h                                           ; $6aa5: $84
	inc  bc                                          ; $6aa6: $03
	ld   c, $84                                      ; $6aa7: $0e $84
	nop                                              ; $6aa9: $00
	call nz, $0f00                                   ; $6aaa: $c4 $00 $0f
	rlca                                             ; $6aad: $07
	ld   h, a                                        ; $6aae: $67
	rlca                                             ; $6aaf: $07
	ld   a, [hl-]                                    ; $6ab0: $3a
	ld   [bc], a                                     ; $6ab1: $02
	inc  b                                           ; $6ab2: $04
	nop                                              ; $6ab3: $00
	ld   de, $fafc                                   ; $6ab4: $11 $fc $fa
	add  c                                           ; $6ab7: $81
	ld   hl, sp-$80                                  ; $6ab8: $f8 $80
	jr   c, @+$03                                    ; $6aba: $38 $01

	call nz, $80c0                                   ; $6abc: $c4 $c0 $80
	ldh  a, [$80]                                    ; $6abf: $f0 $80
	ld   [hl], b                                     ; $6ac1: $70
	add  b                                           ; $6ac2: $80
	or   b                                           ; $6ac3: $b0
	ld   bc, $b8bc                                   ; $6ac4: $01 $bc $b8
	add  b                                           ; $6ac7: $80
	sbc  b                                           ; $6ac8: $98
	ld   bc, $d0d4                                   ; $6ac9: $01 $d4 $d0
	add  b                                           ; $6acc: $80
	ret  nz                                          ; $6acd: $c0

jr_09b_6ace:
	inc  bc                                          ; $6ace: $03
	ret  z                                           ; $6acf: $c8

	ret  nz                                          ; $6ad0: $c0

	sub  b                                           ; $6ad1: $90
	add  b                                           ; $6ad2: $80
	add  d                                           ; $6ad3: $82
	nop                                              ; $6ad4: $00
	ld   [$0057], sp                                 ; $6ad5: $08 $57 $00
	add  hl, de                                      ; $6ad8: $19
	ld   bc, $0242                                   ; $6ad9: $01 $42 $02
	sub  [hl]                                        ; $6adc: $96
	ld   b, $29                                      ; $6add: $06 $29
	add  c                                           ; $6adf: $81
	jr   nz, @+$04                                   ; $6ae0: $20 $02

	ld   a, [hl-]                                    ; $6ae2: $3a
	jr   nc, jr_09b_6b1b                             ; $6ae3: $30 $36

	add  c                                           ; $6ae5: $81
	jr   nc, jr_09b_6a68                             ; $6ae6: $30 $80

	jr   nz, jr_09b_6af2                             ; $6ae8: $20 $08

	rrca                                             ; $6aea: $0f
	nop                                              ; $6aeb: $00
	jr   nz, jr_09b_6aee                             ; $6aec: $20 $00

jr_09b_6aee:
	jr   jr_09b_6af0                                 ; $6aee: $18 $00

jr_09b_6af0:
	ld   l, b                                        ; $6af0: $68
	nop                                              ; $6af1: $00

jr_09b_6af2:
	rlca                                             ; $6af2: $07
	add  c                                           ; $6af3: $81
	nop                                              ; $6af4: $00
	inc  b                                           ; $6af5: $04
	ldh  [rP1], a                                    ; $6af6: $e0 $00
	ld   b, b                                        ; $6af8: $40
	nop                                              ; $6af9: $00
	add  b                                           ; $6afa: $80
	add  c                                           ; $6afb: $81
	nop                                              ; $6afc: $00
	add  b                                           ; $6afd: $80
	inc  b                                           ; $6afe: $04
	nop                                              ; $6aff: $00
	ld   b, $83                                      ; $6b00: $06 $83
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	ld   [bc], a                                     ; $6b04: $02
	add  c                                           ; $6b05: $81
	inc  b                                           ; $6b06: $04
	ld   bc, $4043                                   ; $6b07: $01 $43 $40
	add  b                                           ; $6b0a: $80
	ldh  [$82], a                                    ; $6b0b: $e0 $82
	ldh  a, [rSC]                                    ; $6b0d: $f0 $02
	ldh  [c], a                                      ; $6b0f: $e2
	ld   h, d                                        ; $6b10: $62
	ld   h, e                                        ; $6b11: $63
	add  c                                           ; $6b12: $81
	ld   h, b                                        ; $6b13: $60
	add  b                                           ; $6b14: $80
	ld   b, h                                        ; $6b15: $44
	ld   bc, $4046                                   ; $6b16: $01 $46 $40
	add  h                                           ; $6b19: $84
	nop                                              ; $6b1a: $00

jr_09b_6b1b:
	add  b                                           ; $6b1b: $80
	ld   b, b                                        ; $6b1c: $40
	add  b                                           ; $6b1d: $80
	ld   h, b                                        ; $6b1e: $60
	inc  b                                           ; $6b1f: $04
	ld   a, b                                        ; $6b20: $78
	ld   [hl], b                                     ; $6b21: $70
	ld   a, [hl]                                     ; $6b22: $7e
	ld   h, b                                        ; $6b23: $60
	ld   [hl], e                                     ; $6b24: $73
	add  b                                           ; $6b25: $80
	ld   b, b                                        ; $6b26: $40
	dec  c                                           ; $6b27: $0d
	add  b                                           ; $6b28: $80
	sbc  b                                           ; $6b29: $98
	nop                                              ; $6b2a: $00
	rst  ToBoot                                         ; $6b2b: $c7
	nop                                              ; $6b2c: $00
	ld   [bc], a                                     ; $6b2d: $02
	nop                                              ; $6b2e: $00
	inc  h                                           ; $6b2f: $24
	nop                                              ; $6b30: $00
	sbc  b                                           ; $6b31: $98
	ld   a, e                                        ; $6b32: $7b
	jp   hl                                          ; $6b33: $e9


	ret                                              ; $6b34: $c9


	adc  b                                           ; $6b35: $88
	add  b                                           ; $6b36: $80
	inc  c                                           ; $6b37: $0c
	ld   bc, $c42c                                   ; $6b38: $01 $2c $c4
	add  c                                           ; $6b3b: $81
	ld   d, l                                        ; $6b3c: $55
	inc  h                                           ; $6b3d: $24
	ld   d, e                                        ; $6b3e: $53
	ld   e, d                                        ; $6b3f: $5a
	ld   a, [hl-]                                    ; $6b40: $3a
	xor  d                                           ; $6b41: $aa
	and  b                                           ; $6b42: $a0
	and  h                                           ; $6b43: $a4
	sbc  b                                           ; $6b44: $98
	jp   nc, $01c0                                   ; $6b45: $d2 $c0 $01

	inc  b                                           ; $6b48: $04
	ld   [hl], b                                     ; $6b49: $70
	db   $fc                                         ; $6b4a: $fc
	add  b                                           ; $6b4b: $80
	jr   z, jr_09b_6ace                              ; $6b4c: $28 $80

	sbc  b                                           ; $6b4e: $98
	jr   jr_09b_6ba9                                 ; $6b4f: $18 $58

	nop                                              ; $6b51: $00
	add  c                                           ; $6b52: $81
	ld   h, [hl]                                     ; $6b53: $66
	ld   b, [hl]                                     ; $6b54: $46
	ld   [de], a                                     ; $6b55: $12
	ld   [hl+], a                                    ; $6b56: $22
	xor  [hl]                                        ; $6b57: $ae
	or   e                                           ; $6b58: $b3
	db   $d3                                         ; $6b59: $d3
	add  hl, de                                      ; $6b5a: $19
	add  hl, sp                                      ; $6b5b: $39
	inc  e                                           ; $6b5c: $1c
	sbc  h                                           ; $6b5d: $9c
	adc  b                                           ; $6b5e: $88
	ret  z                                           ; $6b5f: $c8

	jp   $e0e3                                       ; $6b60: $c3 $e3 $e0


	add  b                                           ; $6b63: $80
	sbc  b                                           ; $6b64: $98
	dec  b                                           ; $6b65: $05
	ld   h, b                                        ; $6b66: $60
	ld   l, l                                        ; $6b67: $6d
	ld   h, c                                        ; $6b68: $61
	ld   [hl], a                                     ; $6b69: $77
	jp   $8527                                       ; $6b6a: $c3 $27 $85


	nop                                              ; $6b6d: $00
	ld   bc, $fb04                                   ; $6b6e: $01 $04 $fb
	add  d                                           ; $6b71: $82
	db   $fd                                         ; $6b72: $fd
	add  d                                           ; $6b73: $82
	ld   a, l                                        ; $6b74: $7d
	add  d                                           ; $6b75: $82
	ld   a, [hl]                                     ; $6b76: $7e
	add  h                                           ; $6b77: $84
	ld   a, $06                                      ; $6b78: $3e $06
	cp   a                                           ; $6b7a: $bf
	ccf                                              ; $6b7b: $3f
	rra                                              ; $6b7c: $1f
	ld   e, a                                        ; $6b7d: $5f
	sbc  a                                           ; $6b7e: $9f
	rra                                              ; $6b7f: $1f
	sbc  a                                           ; $6b80: $9f
	add  b                                           ; $6b81: $80
	rra                                              ; $6b82: $1f
	add  b                                           ; $6b83: $80
	ld   e, $05                                      ; $6b84: $1e $05
	ld   a, [de]                                     ; $6b86: $1a
	cp   d                                           ; $6b87: $ba
	ld   a, e                                        ; $6b88: $7b
	jp   hl                                          ; $6b89: $e9


	ret                                              ; $6b8a: $c9


	adc  b                                           ; $6b8b: $88
	add  b                                           ; $6b8c: $80
	inc  c                                           ; $6b8d: $0c
	ld   bc, $c42c                                   ; $6b8e: $01 $2c $c4
	add  c                                           ; $6b91: $81
	ld   d, l                                        ; $6b92: $55
	inc  l                                           ; $6b93: $2c
	ld   d, e                                        ; $6b94: $53
	ld   e, d                                        ; $6b95: $5a
	ld   a, [hl-]                                    ; $6b96: $3a
	xor  d                                           ; $6b97: $aa
	and  b                                           ; $6b98: $a0
	and  h                                           ; $6b99: $a4
	sbc  b                                           ; $6b9a: $98
	jp   nc, $01c0                                   ; $6b9b: $d2 $c0 $01

	inc  b                                           ; $6b9e: $04
	ld   [hl], b                                     ; $6b9f: $70
	sbc  h                                           ; $6ba0: $9c
	add  b                                           ; $6ba1: $80
	ld   l, b                                        ; $6ba2: $68
	add  b                                           ; $6ba3: $80
	cp   b                                           ; $6ba4: $b8
	jr   jr_09b_6bff                                 ; $6ba5: $18 $58

	nop                                              ; $6ba7: $00
	add  c                                           ; $6ba8: $81

jr_09b_6ba9:
	ld   h, [hl]                                     ; $6ba9: $66
	ld   b, [hl]                                     ; $6baa: $46
	ld   [de], a                                     ; $6bab: $12
	ld   [hl+], a                                    ; $6bac: $22
	xor  [hl]                                        ; $6bad: $ae
	or   e                                           ; $6bae: $b3
	db   $d3                                         ; $6baf: $d3
	add  hl, de                                      ; $6bb0: $19
	add  hl, sp                                      ; $6bb1: $39
	inc  e                                           ; $6bb2: $1c
	sbc  h                                           ; $6bb3: $9c
	adc  b                                           ; $6bb4: $88
	ret  z                                           ; $6bb5: $c8

	jp   $e0e3                                       ; $6bb6: $c3 $e3 $e0


	sbc  b                                           ; $6bb9: $98
	sbc  h                                           ; $6bba: $9c
	ld   a, h                                        ; $6bbb: $7c
	ld   a, c                                        ; $6bbc: $79
	ld   h, c                                        ; $6bbd: $61

jr_09b_6bbe:
	ld   l, e                                        ; $6bbe: $6b
	jp   $8537                                       ; $6bbf: $c3 $37 $85


	nop                                              ; $6bc2: $00
	ld   bc, $fb04                                   ; $6bc3: $01 $04 $fb
	add  d                                           ; $6bc6: $82
	db   $fd                                         ; $6bc7: $fd
	add  d                                           ; $6bc8: $82
	ld   a, l                                        ; $6bc9: $7d
	add  d                                           ; $6bca: $82
	ld   a, [hl]                                     ; $6bcb: $7e
	add  h                                           ; $6bcc: $84
	ld   a, $06                                      ; $6bcd: $3e $06
	cp   a                                           ; $6bcf: $bf
	ccf                                              ; $6bd0: $3f
	rra                                              ; $6bd1: $1f
	ld   e, a                                        ; $6bd2: $5f
	sbc  a                                           ; $6bd3: $9f
	rra                                              ; $6bd4: $1f
	sbc  a                                           ; $6bd5: $9f
	add  b                                           ; $6bd6: $80
	rra                                              ; $6bd7: $1f
	add  b                                           ; $6bd8: $80
	ld   e, $05                                      ; $6bd9: $1e $05
	ld   a, [de]                                     ; $6bdb: $1a
	cp   d                                           ; $6bdc: $ba
	ld   a, e                                        ; $6bdd: $7b
	jp   hl                                          ; $6bde: $e9


	ret                                              ; $6bdf: $c9


	adc  b                                           ; $6be0: $88
	add  b                                           ; $6be1: $80
	inc  c                                           ; $6be2: $0c
	ld   bc, $c42c                                   ; $6be3: $01 $2c $c4
	add  c                                           ; $6be6: $81
	ld   d, l                                        ; $6be7: $55
	inc  h                                           ; $6be8: $24
	ld   d, e                                        ; $6be9: $53
	ld   e, d                                        ; $6bea: $5a
	ld   a, [hl-]                                    ; $6beb: $3a
	xor  d                                           ; $6bec: $aa
	and  b                                           ; $6bed: $a0
	and  h                                           ; $6bee: $a4
	sbc  b                                           ; $6bef: $98
	jp   nc, $01c0                                   ; $6bf0: $d2 $c0 $01

	inc  b                                           ; $6bf3: $04
	ld   [hl], b                                     ; $6bf4: $70
	sub  b                                           ; $6bf5: $90
	sbc  h                                           ; $6bf6: $9c
	ld   [$a0d0], sp                                 ; $6bf7: $08 $d0 $a0
	ld   [$0070], sp                                 ; $6bfa: $08 $70 $00
	add  c                                           ; $6bfd: $81
	ld   h, [hl]                                     ; $6bfe: $66

jr_09b_6bff:
	ld   b, [hl]                                     ; $6bff: $46
	ld   [de], a                                     ; $6c00: $12
	ld   [hl+], a                                    ; $6c01: $22
	xor  [hl]                                        ; $6c02: $ae
	or   e                                           ; $6c03: $b3
	db   $d3                                         ; $6c04: $d3
	add  hl, de                                      ; $6c05: $19
	add  hl, sp                                      ; $6c06: $39
	inc  e                                           ; $6c07: $1c
	sbc  h                                           ; $6c08: $9c
	adc  b                                           ; $6c09: $88
	ret  z                                           ; $6c0a: $c8

	jp   $e0e3                                       ; $6c0b: $c3 $e3 $e0


	add  b                                           ; $6c0e: $80
	sbc  b                                           ; $6c0f: $98
	ld   b, $7f                                      ; $6c10: $06 $7f
	ld   l, l                                        ; $6c12: $6d
	ld   a, [hl]                                     ; $6c13: $7e
	call Call_09b_4f61                               ; $6c14: $cd $61 $4f
	ld   [hl], b                                     ; $6c17: $70
	add  h                                           ; $6c18: $84
	nop                                              ; $6c19: $00
	ld   bc, $fb04                                   ; $6c1a: $01 $04 $fb
	add  d                                           ; $6c1d: $82
	db   $fd                                         ; $6c1e: $fd
	add  d                                           ; $6c1f: $82
	ld   a, l                                        ; $6c20: $7d
	add  d                                           ; $6c21: $82
	ld   a, [hl]                                     ; $6c22: $7e
	add  h                                           ; $6c23: $84
	ld   a, $80                                      ; $6c24: $3e $80
	ccf                                              ; $6c26: $3f
	inc  b                                           ; $6c27: $04
	sbc  a                                           ; $6c28: $9f
	ld   e, a                                        ; $6c29: $5f
	sbc  a                                           ; $6c2a: $9f
	rra                                              ; $6c2b: $1f
	sbc  a                                           ; $6c2c: $9f
	add  b                                           ; $6c2d: $80
	rra                                              ; $6c2e: $1f
	add  b                                           ; $6c2f: $80
	ld   e, $01                                      ; $6c30: $1e $01
	ld   a, [de]                                     ; $6c32: $1a
	ld   a, [hl-]                                    ; $6c33: $3a
	add  l                                           ; $6c34: $85
	nop                                              ; $6c35: $00
	dec  b                                           ; $6c36: $05
	stop                                             ; $6c37: $10 $00
	sub  b                                           ; $6c39: $90
	nop                                              ; $6c3a: $00
	and  b                                           ; $6c3b: $a0
	jr   nz, jr_09b_6bbe                             ; $6c3c: $20 $80

	nop                                              ; $6c3e: $00
	add  b                                           ; $6c3f: $80
	ld   bc, $c305                                   ; $6c40: $01 $05 $c3
	inc  bc                                          ; $6c43: $03
	scf                                              ; $6c44: $37
	inc  d                                           ; $6c45: $14
	inc  e                                           ; $6c46: $1c
	nop                                              ; $6c47: $00
	add  b                                           ; $6c48: $80
	ld   [$0306], sp                                 ; $6c49: $08 $06 $03
	nop                                              ; $6c4c: $00
	inc  e                                           ; $6c4d: $1c
	nop                                              ; $6c4e: $00
	ld   h, b                                        ; $6c4f: $60
	nop                                              ; $6c50: $00
	add  b                                           ; $6c51: $80
	add  l                                           ; $6c52: $85
	nop                                              ; $6c53: $00
	rlca                                             ; $6c54: $07
	ld   [hl], b                                     ; $6c55: $70
	ld   h, b                                        ; $6c56: $60
	add  b                                           ; $6c57: $80
	db   $10                                         ; $6c58: $10
	ret  nz                                          ; $6c59: $c0

	ld   h, b                                        ; $6c5a: $60
	jr   nz, jr_09b_6c5d                             ; $6c5b: $20 $00

jr_09b_6c5d:
	add  b                                           ; $6c5d: $80
	ld   bc, $c305                                   ; $6c5e: $01 $05 $c3
	inc  bc                                          ; $6c61: $03
	scf                                              ; $6c62: $37
	inc  d                                           ; $6c63: $14
	inc  e                                           ; $6c64: $1c
	nop                                              ; $6c65: $00
	add  b                                           ; $6c66: $80
	ld   [$0306], sp                                 ; $6c67: $08 $06 $03
	nop                                              ; $6c6a: $00
	inc  e                                           ; $6c6b: $1c
	nop                                              ; $6c6c: $00
	ld   h, b                                        ; $6c6d: $60
	nop                                              ; $6c6e: $00
	add  b                                           ; $6c6f: $80
	rst  $38                                         ; $6c70: $ff
	nop                                              ; $6c71: $00
	rst  $38                                         ; $6c72: $ff
	nop                                              ; $6c73: $00
	rst  $38                                         ; $6c74: $ff
	nop                                              ; $6c75: $00
	rst  $38                                         ; $6c76: $ff
	nop                                              ; $6c77: $00
	rst  $38                                         ; $6c78: $ff
	nop                                              ; $6c79: $00
	ld   hl, sp+$00                                  ; $6c7a: $f8 $00
	ei                                               ; $6c7c: $fb
	nop                                              ; $6c7d: $00
	adc  h                                           ; $6c7e: $8c
	nop                                              ; $6c7f: $00
	ld   [de], a                                     ; $6c80: $12
	ccf                                              ; $6c81: $3f
	nop                                              ; $6c82: $00
	ld   a, a                                        ; $6c83: $7f
	ccf                                              ; $6c84: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c85: $cf
	ld   a, a                                        ; $6c86: $7f
	ld   l, a                                        ; $6c87: $6f
	ld   a, a                                        ; $6c88: $7f
	cp   a                                           ; $6c89: $bf
	rst  $38                                         ; $6c8a: $ff
	rst  $28                                         ; $6c8b: $ef
	rst  $38                                         ; $6c8c: $ff
	ld   l, a                                        ; $6c8d: $6f
	rst  $38                                         ; $6c8e: $ff
	rst  JumpTable                                         ; $6c8f: $df
	rst  $38                                         ; $6c90: $ff
	ld   a, a                                        ; $6c91: $7f
	rst  $38                                         ; $6c92: $ff
	cp   a                                           ; $6c93: $bf
	add  l                                           ; $6c94: $85
	nop                                              ; $6c95: $00
	rrca                                             ; $6c96: $0f
	ld   bc, $0700                                   ; $6c97: $01 $00 $07
	ld   bc, $073f                                   ; $6c9a: $01 $3f $07
	db   $fc                                         ; $6c9d: $fc
	ccf                                              ; $6c9e: $3f
	ldh  a, [rIE]                                    ; $6c9f: $f0 $ff
	rst  $30                                         ; $6ca1: $f7
	rst  $38                                         ; $6ca2: $ff
	di                                               ; $6ca3: $f3
	rst  $38                                         ; $6ca4: $ff
	db   $f4                                         ; $6ca5: $f4
	db   $fc                                         ; $6ca6: $fc
	add  b                                           ; $6ca7: $80
	ei                                               ; $6ca8: $fb
	add  b                                           ; $6ca9: $80
	rst  $30                                         ; $6caa: $f7
	add  e                                           ; $6cab: $83
	rst  $38                                         ; $6cac: $ff
	add  l                                           ; $6cad: $85

jr_09b_6cae:
	nop                                              ; $6cae: $00
	rlca                                             ; $6caf: $07
	add  b                                           ; $6cb0: $80
	nop                                              ; $6cb1: $00
	call z, $be80                                    ; $6cb2: $cc $80 $be
	adc  h                                           ; $6cb5: $8c
	rst  JumpTable                                         ; $6cb6: $df
	sbc  $80                                         ; $6cb7: $de $80
	rst  $38                                         ; $6cb9: $ff
	add  b                                           ; $6cba: $80
	adc  $80                                         ; $6cbb: $ce $80
	scf                                              ; $6cbd: $37
	add  d                                           ; $6cbe: $82
	di                                               ; $6cbf: $f3
	add  b                                           ; $6cc0: $80
	rst  $30                                         ; $6cc1: $f7
	add  d                                           ; $6cc2: $82
	rst  $38                                         ; $6cc3: $ff
	jr   nz, jr_09b_6d45                             ; $6cc4: $20 $7f

	nop                                              ; $6cc6: $00
	ld   b, b                                        ; $6cc7: $40
	nop                                              ; $6cc8: $00
	ld   hl, sp-$40                                  ; $6cc9: $f8 $c0
	cp   $f8                                         ; $6ccb: $fe $f8
	di                                               ; $6ccd: $f3
	cp   $f1                                         ; $6cce: $fe $f1
	rst  $38                                         ; $6cd0: $ff
	pop  af                                          ; $6cd1: $f1
	rst  $38                                         ; $6cd2: $ff
	rst  $30                                         ; $6cd3: $f7
	rst  $38                                         ; $6cd4: $ff
	ei                                               ; $6cd5: $fb
	rst  $38                                         ; $6cd6: $ff
	db   $f4                                         ; $6cd7: $f4
	db   $fc                                         ; $6cd8: $fc
	ldh  a, [c]                                      ; $6cd9: $f2
	cp   $bb                                         ; $6cda: $fe $bb
	cp   a                                           ; $6cdc: $bf
	ret                                              ; $6cdd: $c9


	call $e6e0                                       ; $6cde: $cd $e0 $e6
	ld   [hl], b                                     ; $6ce1: $70
	ld   [hl], e                                     ; $6ce2: $73
	ld   [hl], b                                     ; $6ce3: $70
	ld   a, c                                        ; $6ce4: $79
	rst  $30                                         ; $6ce5: $f7
	add  e                                           ; $6ce6: $83
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	add  b                                           ; $6ce9: $80
	adc  e                                           ; $6cea: $8b
	nop                                              ; $6ceb: $00
	dec  bc                                          ; $6cec: $0b
	ret  nz                                          ; $6ced: $c0

	add  b                                           ; $6cee: $80
	ld   [hl], b                                     ; $6cef: $70
	ld   b, b                                        ; $6cf0: $40
	inc  e                                           ; $6cf1: $1c
	db   $10                                         ; $6cf2: $10
	add  e                                           ; $6cf3: $83
	add  b                                           ; $6cf4: $80
	and  e                                           ; $6cf5: $a3
	add  b                                           ; $6cf6: $80
	db   $fc                                         ; $6cf7: $fc
	ret  nz                                          ; $6cf8: $c0

	add  b                                           ; $6cf9: $80
	ld   b, b                                        ; $6cfa: $40
	ld   bc, $6070                                   ; $6cfb: $01 $70 $60
	add  b                                           ; $6cfe: $80
	jr   nz, @+$03                                   ; $6cff: $20 $01

	jr   c, jr_09b_6d33                              ; $6d01: $38 $30

	add  b                                           ; $6d03: $80
	db   $10                                         ; $6d04: $10
	ld   bc, $989c                                   ; $6d05: $01 $9c $98
	add  b                                           ; $6d08: $80
	adc  b                                           ; $6d09: $88
	inc  b                                           ; $6d0a: $04
	xor  b                                           ; $6d0b: $a8
	adc  b                                           ; $6d0c: $88
	add  [hl]                                        ; $6d0d: $86
	add  h                                           ; $6d0e: $84
	sub  h                                           ; $6d0f: $94
	add  c                                           ; $6d10: $81
	add  h                                           ; $6d11: $84
	nop                                              ; $6d12: $00
	adc  b                                           ; $6d13: $88
	add  c                                           ; $6d14: $81
	add  b                                           ; $6d15: $80
	nop                                              ; $6d16: $00
	ld   b, h                                        ; $6d17: $44
	add  c                                           ; $6d18: $81
	nop                                              ; $6d19: $00
	ld   [bc], a                                     ; $6d1a: $02
	ld   [bc], a                                     ; $6d1b: $02
	nop                                              ; $6d1c: $00
	ld   a, d                                        ; $6d1d: $7a
	add  c                                           ; $6d1e: $81
	ldh  [rP1], a                                    ; $6d1f: $e0 $00
	ldh  [c], a                                      ; $6d21: $e2
	add  b                                           ; $6d22: $80
	ldh  [rP1], a                                    ; $6d23: $e0 $00
	ret  nz                                          ; $6d25: $c0

	add  c                                           ; $6d26: $81

jr_09b_6d27:
	ret  nc                                          ; $6d27: $d0

	ld   bc, $a890                                   ; $6d28: $01 $90 $a8
	add  c                                           ; $6d2b: $81
	jr   nz, jr_09b_6cae                             ; $6d2c: $20 $80

	ld   h, b                                        ; $6d2e: $60
	add  b                                           ; $6d2f: $80
	jr   nz, jr_09b_6d36                             ; $6d30: $20 $04

	ld   b, b                                        ; $6d32: $40

jr_09b_6d33:
	nop                                              ; $6d33: $00
	jr   nz, jr_09b_6d36                             ; $6d34: $20 $00

jr_09b_6d36:
	db   $10                                         ; $6d36: $10
	add  c                                           ; $6d37: $81
	nop                                              ; $6d38: $00
	ld   c, $60                                      ; $6d39: $0e $60
	nop                                              ; $6d3b: $00
	jr   jr_09b_6d3e                                 ; $6d3c: $18 $00

jr_09b_6d3e:
	inc  [hl]                                        ; $6d3e: $34
	jr   nc, @+$10                                   ; $6d3f: $30 $0e

	inc  c                                           ; $6d41: $0c
	dec  bc                                          ; $6d42: $0b
	ld   c, $01                                      ; $6d43: $0e $01

jr_09b_6d45:
	rlca                                             ; $6d45: $07
	nop                                              ; $6d46: $00
	inc  bc                                          ; $6d47: $03
	nop                                              ; $6d48: $00
	add  b                                           ; $6d49: $80
	ld   sp, $b902                                   ; $6d4a: $31 $02 $b9
	cp   b                                           ; $6d4d: $b8
	call c, $0080                                    ; $6d4e: $dc $80 $00
	ld   a, [bc]                                     ; $6d51: $0a
	ld   [hl-], a                                    ; $6d52: $32
	nop                                              ; $6d53: $00
	ld   [$1500], sp                                 ; $6d54: $08 $00 $15
	nop                                              ; $6d57: $00
	add  [hl]                                        ; $6d58: $86
	nop                                              ; $6d59: $00
	dec  bc                                          ; $6d5a: $0b
	nop                                              ; $6d5b: $00
	pop  bc                                          ; $6d5c: $c1
	add  c                                           ; $6d5d: $81
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	ld   b, b                                        ; $6d60: $40
	add  e                                           ; $6d61: $83
	nop                                              ; $6d62: $00
	dec  c                                           ; $6d63: $0d
	add  b                                           ; $6d64: $80
	nop                                              ; $6d65: $00
	ldh  [$80], a                                    ; $6d66: $e0 $80
	inc  a                                           ; $6d68: $3c
	and  b                                           ; $6d69: $a0
	inc  de                                          ; $6d6a: $13
	call nc, $ebcc                                   ; $6d6b: $d4 $cc $eb
	and  a                                           ; $6d6e: $a7
	push af                                          ; $6d6f: $f5
	ld   d, a                                        ; $6d70: $57
	ld   a, [hl]                                     ; $6d71: $7e
	add  b                                           ; $6d72: $80
	ld   a, a                                        ; $6d73: $7f
	nop                                              ; $6d74: $00
	dec  hl                                          ; $6d75: $2b
	add  c                                           ; $6d76: $81
	ccf                                              ; $6d77: $3f
	ld   b, $b5                                      ; $6d78: $06 $b5
	ccf                                              ; $6d7a: $3f
	sbc  a                                           ; $6d7b: $9f
	rra                                              ; $6d7c: $1f
	sbc  a                                           ; $6d7d: $9f
	rra                                              ; $6d7e: $1f
	ld   a, c                                        ; $6d7f: $79
	adc  e                                           ; $6d80: $8b
	nop                                              ; $6d81: $00
	inc  c                                           ; $6d82: $0c
	ldh  [rP1], a                                    ; $6d83: $e0 $00
	jr   c, jr_09b_6d27                              ; $6d85: $38 $a0

	sbc  h                                           ; $6d87: $9c
	ret  c                                           ; $6d88: $d8

	adc  $6c                                         ; $6d89: $ce $6c
	rst  $28                                         ; $6d8b: $ef
	xor  [hl]                                        ; $6d8c: $ae
	and  a                                           ; $6d8d: $a7
	or   a                                           ; $6d8e: $b7
	di                                               ; $6d8f: $f3
	add  c                                           ; $6d90: $81
	db   $db                                         ; $6d91: $db
	ld   [bc], a                                     ; $6d92: $02
	ld   sp, hl                                      ; $6d93: $f9
	db   $ed                                         ; $6d94: $ed
	di                                               ; $6d95: $f3
	add  l                                           ; $6d96: $85
	nop                                              ; $6d97: $00
	ld   b, $80                                      ; $6d98: $06 $80
	nop                                              ; $6d9a: $00
	ld   b, b                                        ; $6d9b: $40
	nop                                              ; $6d9c: $00
	jr   nz, jr_09b_6ddf                             ; $6d9d: $20 $40

	ld   d, b                                        ; $6d9f: $50
	add  c                                           ; $6da0: $81
	ld   b, b                                        ; $6da1: $40
	nop                                              ; $6da2: $00
	ld   e, b                                        ; $6da3: $58
	add  b                                           ; $6da4: $80
	ld   d, b                                        ; $6da5: $50
	ld   bc, $f0d0                                   ; $6da6: $01 $d0 $f0
	add  c                                           ; $6da9: $81
	or   b                                           ; $6daa: $b0
	inc  bc                                          ; $6dab: $03
	xor  b                                           ; $6dac: $a8
	and  b                                           ; $6dad: $a0
	ldh  [$60], a                                    ; $6dae: $e0 $60
	add  b                                           ; $6db0: $80
	ldh  [rP1], a                                    ; $6db1: $e0 $00
	ldh  a, [$83]                                    ; $6db3: $f0 $83

jr_09b_6db5:
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	ld   bc, $0081                                   ; $6db7: $01 $81 $00
	dec  c                                           ; $6dba: $0d
	inc  bc                                          ; $6dbb: $03
	ld   bc, $0306                                   ; $6dbc: $01 $06 $03
	dec  e                                           ; $6dbf: $1d
	rlca                                             ; $6dc0: $07
	inc  a                                           ; $6dc1: $3c
	rra                                              ; $6dc2: $1f
	rst  $38                                         ; $6dc3: $ff
	ccf                                              ; $6dc4: $3f
	or   $f7                                         ; $6dc5: $f6 $f7
	ld   c, $0f                                      ; $6dc7: $0e $0f
	add  b                                           ; $6dc9: $80
	rra                                              ; $6dca: $1f
	inc  bc                                          ; $6dcb: $03
	cp   l                                           ; $6dcc: $bd
	dec  a                                           ; $6dcd: $3d
	ei                                               ; $6dce: $fb
	ld   a, e                                        ; $6dcf: $7b
	add  b                                           ; $6dd0: $80
	or   $0a                                         ; $6dd1: $f6 $0a
	rst  $38                                         ; $6dd3: $ff
	nop                                              ; $6dd4: $00
	ld   bc, $3f00                                   ; $6dd5: $01 $00 $3f
	ld   bc, $0333                                   ; $6dd8: $01 $33 $03
	inc  c                                           ; $6ddb: $0c
	nop                                              ; $6ddc: $00
	inc  bc                                          ; $6ddd: $03
	add  c                                           ; $6dde: $81

jr_09b_6ddf:
	nop                                              ; $6ddf: $00
	inc  de                                          ; $6de0: $13
	ld   bc, $0300                                   ; $6de1: $01 $00 $03
	ld   bc, $0307                                   ; $6de4: $01 $07 $03
	rrca                                             ; $6de7: $0f
	rlca                                             ; $6de8: $07
	ld   e, $0e                                      ; $6de9: $1e $0e
	add  hl, sp                                      ; $6deb: $39
	jr   jr_09b_6db5                                 ; $6dec: $18 $c7

	nop                                              ; $6dee: $00
	ld   hl, sp+$00                                  ; $6def: $f8 $00
	inc  bc                                          ; $6df1: $03
	nop                                              ; $6df2: $00
	dec  de                                          ; $6df3: $1b
	and  $80                                         ; $6df4: $e6 $80
	call $8980                                       ; $6df6: $cd $80 $89
	add  b                                           ; $6df9: $80
	dec  de                                          ; $6dfa: $1b
	add  b                                           ; $6dfb: $80
	inc  de                                          ; $6dfc: $13
	add  b                                           ; $6dfd: $80
	daa                                              ; $6dfe: $27
	inc  bc                                          ; $6dff: $03
	and  a                                           ; $6e00: $a7
	daa                                              ; $6e01: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e02: $cf
	ld   c, a                                        ; $6e03: $4f
	add  b                                           ; $6e04: $80
	ld   c, [hl]                                     ; $6e05: $4e
	ld   [bc], a                                     ; $6e06: $02
	ld   l, $0e                                      ; $6e07: $2e $0e
	ld   a, h                                        ; $6e09: $7c
	add  c                                           ; $6e0a: $81
	inc  e                                           ; $6e0b: $1c
	add  b                                           ; $6e0c: $80
	jr   jr_09b_6e10                                 ; $6e0d: $18 $01

	ld   sp, hl                                      ; $6e0f: $f9

jr_09b_6e10:
	add  hl, sp                                      ; $6e10: $39
	add  b                                           ; $6e11: $80
	ld   sp, $3508                                   ; $6e12: $31 $08 $35
	ld   sp, $0079                                   ; $6e15: $31 $79 $00
	ld   b, $00                                      ; $6e18: $06 $00
	ld   bc, $0400                                   ; $6e1a: $01 $00 $04
	add  l                                           ; $6e1d: $85
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	ld   bc, $008f                                   ; $6e20: $01 $8f $00
	inc  bc                                          ; $6e23: $03
	ld   e, d                                        ; $6e24: $5a
	ld   hl, $2129                                   ; $6e25: $21 $29 $21
	add  b                                           ; $6e28: $80
	jr   nz, @+$12                                   ; $6e29: $20 $10

	stop                                             ; $6e2b: $10 $00
	ld   bc, $2000                                   ; $6e2d: $01 $00 $20
	nop                                              ; $6e30: $00
	ld   b, e                                        ; $6e31: $43
	nop                                              ; $6e32: $00
	ld   [bc], a                                     ; $6e33: $02
	ld   bc, $0305                                   ; $6e34: $01 $05 $03
	dec  bc                                          ; $6e37: $0b
	ld   b, $16                                      ; $6e38: $06 $16
	ld   c, $2f                                      ; $6e3a: $0e $2f
	add  c                                           ; $6e3c: $81
	inc  e                                           ; $6e3d: $1c
	nop                                              ; $6e3e: $00
	ld   e, [hl]                                     ; $6e3f: $5e
	add  c                                           ; $6e40: $81
	jr   c, jr_09b_6e4f                              ; $6e41: $38 $0c

	cp   b                                           ; $6e43: $b8
	ld   h, b                                        ; $6e44: $60
	ld   [hl], e                                     ; $6e45: $73
	rra                                              ; $6e46: $1f
	ld   e, a                                        ; $6e47: $5f
	rra                                              ; $6e48: $1f
	adc  a                                           ; $6e49: $8f
	rrca                                             ; $6e4a: $0f
	rlca                                             ; $6e4b: $07
	rrca                                             ; $6e4c: $0f
	ld   d, a                                        ; $6e4d: $57
	rla                                              ; $6e4e: $17

jr_09b_6e4f:
	or   a                                           ; $6e4f: $b7
	add  b                                           ; $6e50: $80
	inc  sp                                          ; $6e51: $33
	dec  bc                                          ; $6e52: $0b
	or   c                                           ; $6e53: $b1
	and  c                                           ; $6e54: $a1
	and  d                                           ; $6e55: $a2
	ldh  [c], a                                      ; $6e56: $e2
	ld   h, e                                        ; $6e57: $63
	ld   b, e                                        ; $6e58: $43
	ld   d, c                                        ; $6e59: $51
	ld   de, $b636                                   ; $6e5a: $11 $36 $b6
	cpl                                              ; $6e5d: $2f
	xor  a                                           ; $6e5e: $af
	add  b                                           ; $6e5f: $80
	ld   l, a                                        ; $6e60: $6f
	add  b                                           ; $6e61: $80
	ld   [hl], a                                     ; $6e62: $77
	add  b                                           ; $6e63: $80
	halt                                             ; $6e64: $76
	ld   bc, $9867                                   ; $6e65: $01 $67 $98
	add  e                                           ; $6e68: $83
	nop                                              ; $6e69: $00
	inc  c                                           ; $6e6a: $0c
	ld   bc, $0300                                   ; $6e6b: $01 $00 $03
	ld   bc, $030f                                   ; $6e6e: $01 $0f $03
	ld   [hl], c                                     ; $6e71: $71
	dec  c                                           ; $6e72: $0d
	db   $fc                                         ; $6e73: $fc
	halt                                             ; $6e74: $76
	cp   $fb                                         ; $6e75: $fe $fb
	rst  $38                                         ; $6e77: $ff
	add  c                                           ; $6e78: $81
	db   $fd                                         ; $6e79: $fd
	inc  b                                           ; $6e7a: $04
	add  e                                           ; $6e7b: $83
	cp   $62                                         ; $6e7c: $fe $62
	cp   $df                                         ; $6e7e: $fe $df
	add  b                                           ; $6e80: $80
	rst  $38                                         ; $6e81: $ff
	inc  bc                                          ; $6e82: $03
	ccf                                              ; $6e83: $3f
	rra                                              ; $6e84: $1f
	rst  JumpTable                                         ; $6e85: $df
	ccf                                              ; $6e86: $3f
	adc  e                                           ; $6e87: $8b
	nop                                              ; $6e88: $00
	ld   a, [bc]                                     ; $6e89: $0a
	inc  bc                                          ; $6e8a: $03
	nop                                              ; $6e8b: $00
	rrca                                             ; $6e8c: $0f
	inc  bc                                          ; $6e8d: $03
	rra                                              ; $6e8e: $1f
	rrca                                             ; $6e8f: $0f
	ccf                                              ; $6e90: $3f
	rra                                              ; $6e91: $1f
	rst  JumpTable                                         ; $6e92: $df
	rra                                              ; $6e93: $1f
	nop                                              ; $6e94: $00
	add  b                                           ; $6e95: $80
	db   $e3                                         ; $6e96: $e3
	ld   bc, $fc1c                                   ; $6e97: $01 $1c $fc
	add  b                                           ; $6e9a: $80
	rst  $20                                         ; $6e9b: $e7
	ld   bc, $e6f9                                   ; $6e9c: $01 $f9 $e6
	add  l                                           ; $6e9f: $85
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	ld   bc, $0081                                   ; $6ea2: $01 $81 $00
	nop                                              ; $6ea5: $00
	inc  bc                                          ; $6ea6: $03
	add  c                                           ; $6ea7: $81
	ld   bc, $0700                                   ; $6ea8: $01 $00 $07
	add  c                                           ; $6eab: $81
	inc  bc                                          ; $6eac: $03
	nop                                              ; $6ead: $00
	rrca                                             ; $6eae: $0f
	adc  c                                           ; $6eaf: $89
	rlca                                             ; $6eb0: $07
	ld   d, $55                                      ; $6eb1: $16 $55
	nop                                              ; $6eb3: $00
	ld   [$0100], sp                                 ; $6eb4: $08 $00 $01
	nop                                              ; $6eb7: $00
	jr   nc, jr_09b_6eba                             ; $6eb8: $30 $00

jr_09b_6eba:
	ld   bc, $2000                                   ; $6eba: $01 $00 $20
	nop                                              ; $6ebd: $00
	ld   b, e                                        ; $6ebe: $43
	nop                                              ; $6ebf: $00
	inc  bc                                          ; $6ec0: $03
	ld   bc, $0107                                   ; $6ec1: $01 $07 $01
	inc  c                                           ; $6ec4: $0c
	ld   [bc], a                                     ; $6ec5: $02
	ld   a, [de]                                     ; $6ec6: $1a
	ld   b, $35                                      ; $6ec7: $06 $35
	add  c                                           ; $6ec9: $81
	inc  c                                           ; $6eca: $0c
	nop                                              ; $6ecb: $00
	ld   l, d                                        ; $6ecc: $6a
	add  c                                           ; $6ecd: $81
	jr   jr_09b_6ed7                                 ; $6ece: $18 $07

	ret  nz                                          ; $6ed0: $c0

	ld   h, b                                        ; $6ed1: $60
	ld   [de], a                                     ; $6ed2: $12
	ld   c, $4e                                      ; $6ed3: $0e $4e
	ld   c, $9e                                      ; $6ed5: $0e $9e

jr_09b_6ed7:
	ld   c, $80                                      ; $6ed7: $0e $80
	ld   b, $11                                      ; $6ed9: $06 $11
	ld   e, a                                        ; $6edb: $5f
	rlca                                             ; $6edc: $07
	and  a                                           ; $6edd: $a7
	inc  bc                                          ; $6ede: $03
	add  e                                           ; $6edf: $83
	add  c                                           ; $6ee0: $81
	sub  c                                           ; $6ee1: $91
	add  d                                           ; $6ee2: $82
	ld   b, d                                        ; $6ee3: $42
	inc  bc                                          ; $6ee4: $03
	inc  sp                                          ; $6ee5: $33
	ld   de, $3677                                   ; $6ee6: $11 $77 $36
	xor  a                                           ; $6ee9: $af
	ld   l, $ee                                      ; $6eea: $2e $ee
	ld   l, [hl]                                     ; $6eec: $6e
	add  b                                           ; $6eed: $80
	halt                                             ; $6eee: $76
	ld   bc, $7677                                   ; $6eef: $01 $77 $76
	add  b                                           ; $6ef2: $80
	ld   h, a                                        ; $6ef3: $67
	nop                                              ; $6ef4: $00
	push bc                                          ; $6ef5: $c5
	add  c                                           ; $6ef6: $81
	jr   nz, jr_09b_6f01                             ; $6ef7: $20 $08

	ld   [hl+], a                                    ; $6ef9: $22
	jr   nz, jr_09b_6f5c                             ; $6efa: $20 $60

	ld   b, b                                        ; $6efc: $40
	ld   d, b                                        ; $6efd: $50
	ld   b, b                                        ; $6efe: $40
	ret  nz                                          ; $6eff: $c0

	add  b                                           ; $6f00: $80

jr_09b_6f01:
	cp   b                                           ; $6f01: $b8
	add  c                                           ; $6f02: $81
	nop                                              ; $6f03: $00
	ld   [$0040], sp                                 ; $6f04: $08 $40 $00
	ld   b, b                                        ; $6f07: $40
	nop                                              ; $6f08: $00
	ld   h, b                                        ; $6f09: $60
	nop                                              ; $6f0a: $00
	jr   nz, jr_09b_6f0d                             ; $6f0b: $20 $00

jr_09b_6f0d:
	db   $10                                         ; $6f0d: $10
	add  c                                           ; $6f0e: $81
	nop                                              ; $6f0f: $00
	inc  b                                           ; $6f10: $04
	ld   h, b                                        ; $6f11: $60
	nop                                              ; $6f12: $00
	jr   jr_09b_6f15                                 ; $6f13: $18 $00

jr_09b_6f15:
	ld   hl, sp-$01                                  ; $6f15: $f8 $ff
	nop                                              ; $6f17: $00
	rst  $38                                         ; $6f18: $ff
	nop                                              ; $6f19: $00
	sbc  h                                           ; $6f1a: $9c
	nop                                              ; $6f1b: $00
	add  b                                           ; $6f1c: $80
	sbc  a                                           ; $6f1d: $9f
	add  b                                           ; $6f1e: $80
	ccf                                              ; $6f1f: $3f
	inc  bc                                          ; $6f20: $03
	ld   a, a                                        ; $6f21: $7f
	ld   a, l                                        ; $6f22: $7d
	call nc, $80d2                                   ; $6f23: $d4 $d2 $80
	and  b                                           ; $6f26: $a0
	inc  c                                           ; $6f27: $0c
	jp   hl                                          ; $6f28: $e9


	ld   h, l                                        ; $6f29: $65
	ld   d, c                                        ; $6f2a: $51
	pop  bc                                          ; $6f2b: $c1
	ret  nz                                          ; $6f2c: $c0

	jp   c, $fbfd                                    ; $6f2d: $da $fd $fb

	cp   e                                           ; $6f30: $bb
	or   d                                           ; $6f31: $b2
	ld   [hl], d                                     ; $6f32: $72
	ld   h, [hl]                                     ; $6f33: $66
	and  $80                                         ; $6f34: $e6 $80
	call nz, $cd07                                   ; $6f36: $c4 $07 $cd
	adc  h                                           ; $6f39: $8c
	db   $ec                                         ; $6f3a: $ec
	inc  c                                           ; $6f3b: $0c
	ld   a, [bc]                                     ; $6f3c: $0a
	ld   [$bf1c], sp                                 ; $6f3d: $08 $1c $bf
	add  b                                           ; $6f40: $80
	rla                                              ; $6f41: $17
	add  b                                           ; $6f42: $80
	ld   b, e                                        ; $6f43: $43
	add  b                                           ; $6f44: $80
	xor  c                                           ; $6f45: $a9
	add  b                                           ; $6f46: $80
	nop                                              ; $6f47: $00
	ld   [bc], a                                     ; $6f48: $02
	cp   $00                                         ; $6f49: $fe $00
	ld   bc, $0081                                   ; $6f4b: $01 $81 $00
	nop                                              ; $6f4e: $00
	inc  bc                                          ; $6f4f: $03
	add  h                                           ; $6f50: $84
	ld   [bc], a                                     ; $6f51: $02
	nop                                              ; $6f52: $00
	inc  bc                                          ; $6f53: $03
	add  d                                           ; $6f54: $82
	nop                                              ; $6f55: $00
	add  d                                           ; $6f56: $82
	add  b                                           ; $6f57: $80
	add  b                                           ; $6f58: $80
	nop                                              ; $6f59: $00
	add  h                                           ; $6f5a: $84
	add  b                                           ; $6f5b: $80

jr_09b_6f5c:
	add  d                                           ; $6f5c: $82
	nop                                              ; $6f5d: $00
	add  b                                           ; $6f5e: $80
	ld   bc, $0329                                   ; $6f5f: $01 $29 $03
	ld   [bc], a                                     ; $6f62: $02
	pop  bc                                          ; $6f63: $c1
	ld   b, b                                        ; $6f64: $40
	ld   h, b                                        ; $6f65: $60
	and  b                                           ; $6f66: $a0
	or   b                                           ; $6f67: $b0
	ld   d, b                                        ; $6f68: $50
	call c, $6f0c                                    ; $6f69: $dc $0c $6f
	inc  bc                                          ; $6f6c: $03
	rra                                              ; $6f6d: $1f
	nop                                              ; $6f6e: $00
	rrca                                             ; $6f6f: $0f
	nop                                              ; $6f70: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f71: $cf
	nop                                              ; $6f72: $00
	call nz, $0c04                                   ; $6f73: $c4 $04 $0c
	ld   a, [bc]                                     ; $6f76: $0a
	ld   a, [de]                                     ; $6f77: $1a
	ld   d, $37                                      ; $6f78: $16 $37
	inc  l                                           ; $6f7a: $2c
	xor  $d0                                         ; $6f7b: $ee $d0
	db   $dd                                         ; $6f7d: $dd
	nop                                              ; $6f7e: $00
	pop  af                                          ; $6f7f: $f1
	nop                                              ; $6f80: $00
	ld   hl, sp+$00                                  ; $6f81: $f8 $00
	dec  de                                          ; $6f83: $1b
	ld   e, h                                        ; $6f84: $5c
	ld   a, [hl]                                     ; $6f85: $7e
	inc  a                                           ; $6f86: $3c
	ld   h, l                                        ; $6f87: $65
	ld   h, [hl]                                     ; $6f88: $66
	jp   nz, $80c3                                   ; $6f89: $c2 $c3 $80

	add  c                                           ; $6f8c: $81
	add  b                                           ; $6f8d: $80
	ldh  [$80], a                                    ; $6f8e: $e0 $80
	ldh  a, [$80]                                    ; $6f90: $f0 $80
	db   $fc                                         ; $6f92: $fc
	inc  c                                           ; $6f93: $0c
	ld   bc, $6c0e                                   ; $6f94: $01 $0e $6c
	inc  b                                           ; $6f97: $04
	rst  $30                                         ; $6f98: $f7
	and  c                                           ; $6f99: $a1
	ld   sp, hl                                      ; $6f9a: $f9
	ld   d, d                                        ; $6f9b: $52
	ld   a, [hl]                                     ; $6f9c: $7e
	xor  c                                           ; $6f9d: $a9
	cp   a                                           ; $6f9e: $bf
	call nc, $80de                                   ; $6f9f: $d4 $de $80
	jp   hl                                          ; $6fa2: $e9


	add  hl, bc                                      ; $6fa3: $09
	ldh  [c], a                                      ; $6fa4: $e2
	inc  d                                           ; $6fa5: $14
	pop  bc                                          ; $6fa6: $c1
	inc  c                                           ; $6fa7: $0c
	jr   nc, jr_09b_6fb6                             ; $6fa8: $30 $0c

	nop                                              ; $6faa: $00
	ldh  [$60], a                                    ; $6fab: $e0 $60
	ld   a, a                                        ; $6fad: $7f
	add  b                                           ; $6fae: $80
	add  e                                           ; $6faf: $83
	ld   b, $64                                      ; $6fb0: $06 $64
	ld   h, [hl]                                     ; $6fb2: $66
	sub  l                                           ; $6fb3: $95
	sub  h                                           ; $6fb4: $94
	ld   a, b                                        ; $6fb5: $78

jr_09b_6fb6:
	ld   [hl], l                                     ; $6fb6: $75
	pop  af                                          ; $6fb7: $f1
	add  b                                           ; $6fb8: $80
	ld   bc, $0380                                   ; $6fb9: $01 $80 $03
	dec  bc                                          ; $6fbc: $0b
	rrca                                             ; $6fbd: $0f
	ld   c, $fe                                      ; $6fbe: $0e $fe
	ld   hl, sp-$05                                  ; $6fc0: $f8 $fb
	inc  b                                           ; $6fc2: $04
	ld   b, $6e                                      ; $6fc3: $06 $6e
	ld   e, a                                        ; $6fc5: $5f
	add  a                                           ; $6fc6: $87
	ret                                              ; $6fc7: $c9


	ld   a, [hl]                                     ; $6fc8: $7e
	add  b                                           ; $6fc9: $80
	ld   a, a                                        ; $6fca: $7f
	ld   bc, $3fbf                                   ; $6fcb: $01 $bf $3f
	add  b                                           ; $6fce: $80
	rra                                              ; $6fcf: $1f
	ld   [bc], a                                     ; $6fd0: $02
	ld   e, a                                        ; $6fd1: $5f
	rra                                              ; $6fd2: $1f
	sbc  a                                           ; $6fd3: $9f
	add  e                                           ; $6fd4: $83
	rra                                              ; $6fd5: $1f
	nop                                              ; $6fd6: $00
	dec  a                                           ; $6fd7: $3d
	add  b                                           ; $6fd8: $80
	ld   [hl], b                                     ; $6fd9: $70
	dec  b                                           ; $6fda: $05
	ld   a, b                                        ; $6fdb: $78
	ld   a, e                                        ; $6fdc: $7b
	ld   a, b                                        ; $6fdd: $78
	ld   hl, sp-$04                                  ; $6fde: $f8 $fc
	db   $fd                                         ; $6fe0: $fd
	add  b                                           ; $6fe1: $80
	db   $fc                                         ; $6fe2: $fc
	add  c                                           ; $6fe3: $81
	cp   $0b                                         ; $6fe4: $fe $0b
	ld   a, [$81fb]                                  ; $6fe6: $fa $fb $81
	ld   a, [de]                                     ; $6fe9: $1a
	ld   a, d                                        ; $6fea: $7a
	ld   [bc], a                                     ; $6feb: $02
	ld   [de], a                                     ; $6fec: $12
	ld   a, [bc]                                     ; $6fed: $0a
	dec  bc                                          ; $6fee: $0b
	dec  c                                           ; $6fef: $0d
	add  l                                           ; $6ff0: $85
	dec  b                                           ; $6ff1: $05
	add  b                                           ; $6ff2: $80
	ld   b, l                                        ; $6ff3: $45
	ld   bc, $05c5                                   ; $6ff4: $01 $c5 $05
	add  b                                           ; $6ff7: $80
	dec  h                                           ; $6ff8: $25
	inc  b                                           ; $6ff9: $04
	add  l                                           ; $6ffa: $85
	add  e                                           ; $6ffb: $83
	rlca                                             ; $6ffc: $07
	ld   bc, $8123                                   ; $6ffd: $01 $23 $81
	ld   b, b                                        ; $7000: $40
	ld   bc, $4041                                   ; $7001: $01 $41 $40
	add  b                                           ; $7004: $80
	ld   b, d                                        ; $7005: $42
	nop                                              ; $7006: $00
	dec  bc                                          ; $7007: $0b
	add  c                                           ; $7008: $81
	add  hl, bc                                      ; $7009: $09
	dec  c                                           ; $700a: $0d
	ld   de, $b810                                   ; $700b: $11 $10 $b8
	adc  d                                           ; $700e: $8a
	adc  [hl]                                        ; $700f: $8e
	add  [hl]                                        ; $7010: $86
	sub  $c3                                         ; $7011: $d6 $c3
	rst  ToBoot                                         ; $7013: $c7
	ld   b, c                                        ; $7014: $41
	ld   c, e                                        ; $7015: $4b
	ld   b, b                                        ; $7016: $40
	db   $e3                                         ; $7017: $e3
	ld   [hl+], a                                    ; $7018: $22
	add  b                                           ; $7019: $80
	inc  hl                                          ; $701a: $23
	inc  bc                                          ; $701b: $03
	ld   c, d                                        ; $701c: $4a
	call nz, $664f                                   ; $701d: $c4 $4f $66
	add  b                                           ; $7020: $80
	ld   h, a                                        ; $7021: $67
	nop                                              ; $7022: $00
	daa                                              ; $7023: $27
	add  d                                           ; $7024: $82
	inc  sp                                          ; $7025: $33
	rlca                                             ; $7026: $07
	cp   c                                           ; $7027: $b9
	sbc  c                                           ; $7028: $99
	add  hl, de                                      ; $7029: $19
	sbc  c                                           ; $702a: $99
	add  hl, de                                      ; $702b: $19
	ld   a, b                                        ; $702c: $78
	ldh  [c], a                                      ; $702d: $e2
	db   $e3                                         ; $702e: $e3
	add  d                                           ; $702f: $82
	rst  ToBoot                                         ; $7030: $c7
	add  b                                           ; $7031: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7032: $cf
	add  b                                           ; $7033: $80
	adc  a                                           ; $7034: $8f
	add  d                                           ; $7035: $82
	sbc  a                                           ; $7036: $9f
	ld   de, $54c7                                   ; $7037: $11 $c7 $54
	inc  c                                           ; $703a: $0c
	ret  nc                                          ; $703b: $d0

	add  b                                           ; $703c: $80
	add  sp, -$40                                    ; $703d: $e8 $c0
	db   $f4                                         ; $703f: $f4
	ldh  [$ea], a                                    ; $7040: $e0 $ea
	ldh  [$c4], a                                    ; $7042: $e0 $c4
	ret  nz                                          ; $7044: $c0

	pop  bc                                          ; $7045: $c1
	ret  nz                                          ; $7046: $c0

	jp   nz, Jump_09b_5ec0                           ; $7047: $c2 $c0 $5e

	add  e                                           ; $704a: $83
	rra                                              ; $704b: $1f
	add  b                                           ; $704c: $80
	db   $10                                         ; $704d: $10
	add  hl, bc                                      ; $704e: $09
	rrca                                             ; $704f: $0f
	nop                                              ; $7050: $00
	scf                                              ; $7051: $37
	nop                                              ; $7052: $00
	ld   a, e                                        ; $7053: $7b
	nop                                              ; $7054: $00
	ld   e, c                                        ; $7055: $59
	nop                                              ; $7056: $00
	and  e                                           ; $7057: $a3
	ld   sp, hl                                      ; $7058: $f9
	add  b                                           ; $7059: $80
	ld   hl, sp-$80                                  ; $705a: $f8 $80
	nop                                              ; $705c: $00
	ld   c, $fe                                      ; $705d: $0e $fe
	nop                                              ; $705f: $00
	ld   a, l                                        ; $7060: $7d
	nop                                              ; $7061: $00
	and  e                                           ; $7062: $a3
	nop                                              ; $7063: $00
	ld   c, c                                        ; $7064: $49
	ld   [$18ba], sp                                 ; $7065: $08 $ba $18
	inc  de                                          ; $7068: $13
	dec  b                                           ; $7069: $05
	dec  d                                           ; $706a: $15
	sbc  c                                           ; $706b: $99
	add  hl, sp                                      ; $706c: $39
	add  b                                           ; $706d: $80
	dec  c                                           ; $706e: $0d
	add  hl, bc                                      ; $706f: $09
	ld   c, l                                        ; $7070: $4d
	cp   l                                           ; $7071: $bd
	dec  b                                           ; $7072: $05
	ld   c, l                                        ; $7073: $4d
	ld   de, $3875                                   ; $7074: $11 $75 $38
	ld   a, [$547c]                                  ; $7077: $fa $7c $54
	add  c                                           ; $707a: $81
	ld   [$0c80], sp                                 ; $707b: $08 $80 $0c
	ld   bc, $0c2d                                   ; $707e: $01 $2d $0c
	add  b                                           ; $7081: $80
	inc  e                                           ; $7082: $1c
	add  c                                           ; $7083: $81
	ld   e, $00                                      ; $7084: $1e $00
	sbc  [hl]                                        ; $7086: $9e
	add  b                                           ; $7087: $80
	ld   e, $02                                      ; $7088: $1e $02
	or   e                                           ; $708a: $b3
	sub  c                                           ; $708b: $91
	sub  e                                           ; $708c: $93
	add  c                                           ; $708d: $81
	sub  b                                           ; $708e: $90
	nop                                              ; $708f: $00
	pop  af                                          ; $7090: $f1
	add  c                                           ; $7091: $81
	ld   b, b                                        ; $7092: $40
	add  b                                           ; $7093: $80
	ld   c, b                                        ; $7094: $48
	nop                                              ; $7095: $00
	ld   hl, sp-$7f                                  ; $7096: $f8 $81
	jr   nz, jr_09b_709e                             ; $7098: $20 $04

	ld   hl, sp-$73                                  ; $709a: $f8 $8d
	xor  l                                           ; $709c: $ad
	adc  h                                           ; $709d: $8c

jr_09b_709e:
	call nc, $c680                                   ; $709e: $d4 $80 $c6
	ld   bc, $6b47                                   ; $70a1: $01 $47 $6b
	add  c                                           ; $70a4: $81
	ld   h, e                                        ; $70a5: $63
	inc  d                                           ; $70a6: $14
	push af                                          ; $70a7: $f5
	ld   sp, $3032                                   ; $70a8: $31 $32 $30
	or   e                                           ; $70ab: $b3
	ld   bc, $0072                                   ; $70ac: $01 $72 $00
	ld   a, $00                                      ; $70af: $3e $00
	xor  $8e                                         ; $70b1: $ee $8e
	or   $c6                                         ; $70b3: $f6 $c6
	ld   sp, hl                                      ; $70b5: $f9
	ldh  [$fc], a                                    ; $70b6: $e0 $fc
	ldh  a, [rIE]                                    ; $70b8: $f0 $ff
	ld   hl, sp-$03                                  ; $70ba: $f8 $fd
	rst  $38                                         ; $70bc: $ff
	nop                                              ; $70bd: $00
	rst  $38                                         ; $70be: $ff
	nop                                              ; $70bf: $00
	rst  $38                                         ; $70c0: $ff
	nop                                              ; $70c1: $00
	rst  $38                                         ; $70c2: $ff
	nop                                              ; $70c3: $00
	reti                                             ; $70c4: $d9


	nop                                              ; $70c5: $00
	ccf                                              ; $70c6: $3f
	ld   bc, $0407                                   ; $70c7: $01 $07 $04
	inc  c                                           ; $70ca: $0c
	ld   a, [bc]                                     ; $70cb: $0a
	inc  bc                                          ; $70cc: $03
	ld   a, [bc]                                     ; $70cd: $0a
	inc  c                                           ; $70ce: $0c
	ld   [$8000], sp                                 ; $70cf: $08 $00 $80
	ld   bc, $0780                                   ; $70d2: $01 $80 $07
	add  d                                           ; $70d5: $82
	rrca                                             ; $70d6: $0f
	inc  bc                                          ; $70d7: $03
	ld   d, b                                        ; $70d8: $50
	ld   h, b                                        ; $70d9: $60
	push bc                                          ; $70da: $c5
	dec  b                                           ; $70db: $05
	add  b                                           ; $70dc: $80
	ld   l, $80                                      ; $70dd: $2e $80
	push af                                          ; $70df: $f5
	add  b                                           ; $70e0: $80
	add  sp, -$80                                    ; $70e1: $e8 $80
	ldh  a, [$80]                                    ; $70e3: $f0 $80
	and  d                                           ; $70e5: $a2

Call_09b_70e6:
	add  b                                           ; $70e6: $80
	ld   d, b                                        ; $70e7: $50
	add  b                                           ; $70e8: $80
	xor  b                                           ; $70e9: $a8
	ld   bc, $4241                                   ; $70ea: $01 $41 $42
	add  b                                           ; $70ed: $80
	add  b                                           ; $70ee: $80
	ld   bc, $0418                                   ; $70ef: $01 $18 $04
	add  c                                           ; $70f2: $81
	ld   hl, $0200                                   ; $70f3: $21 $00 $02
	add  b                                           ; $70f6: $80
	and  b                                           ; $70f7: $a0
	dec  bc                                          ; $70f8: $0b
	ld   [hl-], a                                    ; $70f9: $32
	ld   [de], a                                     ; $70fa: $12
	inc  e                                           ; $70fb: $1c
	nop                                              ; $70fc: $00
	pop  bc                                          ; $70fd: $c1
	pop  af                                          ; $70fe: $f1
	ldh  a, [rAUD4LEN]                               ; $70ff: $f0 $20
	ld   [hl+], a                                    ; $7101: $22
	ld   b, d                                        ; $7102: $42
	ld   [bc], a                                     ; $7103: $02
	add  d                                           ; $7104: $82
	add  b                                           ; $7105: $80
	nop                                              ; $7106: $00
	ld   bc, $0201                                   ; $7107: $01 $01 $02
	add  b                                           ; $710a: $80
	inc  b                                           ; $710b: $04
	add  hl, de                                      ; $710c: $19
	cp   h                                           ; $710d: $bc
	and  e                                           ; $710e: $a3
	ld   b, d                                        ; $710f: $42
	ld   d, d                                        ; $7110: $52
	add  h                                           ; $7111: $84
	adc  [hl]                                        ; $7112: $8e
	inc  bc                                          ; $7113: $03
	ld   b, $0a                                      ; $7114: $06 $0a
	ld   c, $f8                                      ; $7116: $0e $f8
	or   b                                           ; $7118: $b0
	ret  nc                                          ; $7119: $d0

	ld   d, b                                        ; $711a: $50
	add  [hl]                                        ; $711b: $86
	adc  $14                                         ; $711c: $ce $14
	sub  d                                           ; $711e: $92
	rlca                                             ; $711f: $07
	nop                                              ; $7120: $00
	db   $fc                                         ; $7121: $fc
	cp   $e0                                         ; $7122: $fe $e0
	inc  b                                           ; $7124: $04
	inc  h                                           ; $7125: $24
	inc  b                                           ; $7126: $04
	add  b                                           ; $7127: $80
	nop                                              ; $7128: $00
	add  b                                           ; $7129: $80
	jr   nc, jr_09b_712c                             ; $712a: $30 $00

jr_09b_712c:
	ccf                                              ; $712c: $3f
	add  c                                           ; $712d: $81
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	adc  h                                           ; $7130: $8c
	add  c                                           ; $7131: $81
	inc  c                                           ; $7132: $0c
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	add  b                                           ; $7135: $80
	add  b                                           ; $7136: $80
	rlca                                             ; $7137: $07
	ldh  [$80], a                                    ; $7138: $e0 $80
	db   $10                                         ; $713a: $10
	add  hl, bc                                      ; $713b: $09
	ld   b, $90                                      ; $713c: $06 $90
	ld   [hl], b                                     ; $713e: $70
	rra                                              ; $713f: $1f
	add  e                                           ; $7140: $83
	nop                                              ; $7141: $00
	add  b                                           ; $7142: $80
	ld   e, $80                                      ; $7143: $1e $80
	rra                                              ; $7145: $1f
	add  b                                           ; $7146: $80
	rrca                                             ; $7147: $0f
	dec  b                                           ; $7148: $05
	sbc  l                                           ; $7149: $9d
	and  e                                           ; $714a: $a3
	adc  $10                                         ; $714b: $ce $10
	rst  $28                                         ; $714d: $ef
	rrca                                             ; $714e: $0f
	add  b                                           ; $714f: $80
	rlca                                             ; $7150: $07
	add  b                                           ; $7151: $80
	inc  bc                                          ; $7152: $03
	add  b                                           ; $7153: $80
	ld   bc, $0086                                   ; $7154: $01 $86 $00
	add  b                                           ; $7157: $80
	ld   hl, sp-$7e                                  ; $7158: $f8 $82
	ldh  a, [$80]                                    ; $715a: $f0 $80
	ldh  [$80], a                                    ; $715c: $e0 $80
	ld   b, b                                        ; $715e: $40
	sub  h                                           ; $715f: $94
	nop                                              ; $7160: $00
	ld   [bc], a                                     ; $7161: $02
	or   b                                           ; $7162: $b0
	ldh  a, [rAUD4LEN]                               ; $7163: $f0 $20
	add  c                                           ; $7165: $81
	ld   h, b                                        ; $7166: $60
	add  b                                           ; $7167: $80
	nop                                              ; $7168: $00
	add  b                                           ; $7169: $80
	ld   bc, $0082                                   ; $716a: $01 $82 $00
	ld   [bc], a                                     ; $716d: $02
	inc  bc                                          ; $716e: $03
	ld   [bc], a                                     ; $716f: $02
	ld   bc, $0081                                   ; $7170: $01 $81 $00
	add  b                                           ; $7173: $80
	ld   bc, $0311                                   ; $7174: $01 $11 $03
	inc  b                                           ; $7177: $04
	or   $fe                                         ; $7178: $f6 $fe
	ld   d, a                                        ; $717a: $57
	ld   h, h                                        ; $717b: $64
	add  b                                           ; $717c: $80
	jp   nz, $109e                                   ; $717d: $c2 $9e $10

	pop  af                                          ; $7180: $f1
	ld   bc, $7549                                   ; $7181: $01 $49 $75
	jp   nz, $8081                                   ; $7184: $c2 $81 $80

	nop                                              ; $7187: $00
	add  b                                           ; $7188: $80
	rrca                                             ; $7189: $0f
	add  b                                           ; $718a: $80
	adc  a                                           ; $718b: $8f
	rlca                                             ; $718c: $07
	rst  $30                                         ; $718d: $f7
	rla                                              ; $718e: $17
	rrca                                             ; $718f: $0f
	rra                                              ; $7190: $1f
	sbc  d                                           ; $7191: $9a
	or   d                                           ; $7192: $b2
	rst  ToBoot                                         ; $7193: $c7
	rra                                              ; $7194: $1f
	add  b                                           ; $7195: $80
	daa                                              ; $7196: $27
	add  b                                           ; $7197: $80
	scf                                              ; $7198: $37
	add  b                                           ; $7199: $80
	rst  $28                                         ; $719a: $ef
	add  b                                           ; $719b: $80
	cp   $80                                         ; $719c: $fe $80
	ldh  a, [$80]                                    ; $719e: $f0 $80
	rra                                              ; $71a0: $1f
	db   $10                                         ; $71a1: $10
	ld   l, a                                        ; $71a2: $6f
	ld   [hl], b                                     ; $71a3: $70
	sbc  h                                           ; $71a4: $9c
	add  e                                           ; $71a5: $83
	ret  z                                           ; $71a6: $c8

	ld   hl, sp+$4e                                  ; $71a7: $f8 $4e
	ld   h, d                                        ; $71a9: $62
	and  b                                           ; $71aa: $a0
	and  d                                           ; $71ab: $a2
	add  [hl]                                        ; $71ac: $86
	and  h                                           ; $71ad: $a4
	ld   c, h                                        ; $71ae: $4c
	ld   c, b                                        ; $71af: $48
	ret  z                                           ; $71b0: $c8

	db   $10                                         ; $71b1: $10
	rra                                              ; $71b2: $1f
	adc  l                                           ; $71b3: $8d
	rrca                                             ; $71b4: $0f
	ld   bc, $e010                                   ; $71b5: $01 $10 $e0
	add  b                                           ; $71b8: $80
	ret  nc                                          ; $71b9: $d0

	add  b                                           ; $71ba: $80
	xor  b                                           ; $71bb: $a8
	add  b                                           ; $71bc: $80
	db   $f4                                         ; $71bd: $f4
	add  b                                           ; $71be: $80
	ld   a, [$d580]                                  ; $71bf: $fa $80 $d5
	add  b                                           ; $71c2: $80
	ei                                               ; $71c3: $fb
	add  b                                           ; $71c4: $80
	rst  $38                                         ; $71c5: $ff
	ld   b, $1e                                      ; $71c6: $06 $1e
	ld   de, $0800                                   ; $71c8: $11 $00 $08
	ld   [bc], a                                     ; $71cb: $02
	ld   b, $03                                      ; $71cc: $06 $03
	add  c                                           ; $71ce: $81
	nop                                              ; $71cf: $00
	add  b                                           ; $71d0: $80
	ld   b, b                                        ; $71d1: $40
	add  b                                           ; $71d2: $80
	xor  b                                           ; $71d3: $a8
	add  b                                           ; $71d4: $80
	ld   e, l                                        ; $71d5: $5d
	dec  bc                                          ; $71d6: $0b
	add  b                                           ; $71d7: $80
	add  c                                           ; $71d8: $81
	pop  de                                          ; $71d9: $d1
	jr   nc, jr_09b_71f8                             ; $71da: $30 $1c

	inc  b                                           ; $71dc: $04
	ld   b, $f9                                      ; $71dd: $06 $f9
	dec  b                                           ; $71df: $05
	inc  bc                                          ; $71e0: $03
	inc  b                                           ; $71e1: $04
	dec  b                                           ; $71e2: $05
	add  b                                           ; $71e3: $80
	xor  d                                           ; $71e4: $aa
	add  b                                           ; $71e5: $80
	ld   d, l                                        ; $71e6: $55
	dec  c                                           ; $71e7: $0d
	pop  af                                          ; $71e8: $f1
	ld   sp, $c37c                                   ; $71e9: $31 $7c $c3
	ld   d, b                                        ; $71ec: $50
	jr   nc, @-$26                                   ; $71ed: $30 $d8

	rst  ToBoot                                         ; $71ef: $c7
	sbc  $3e                                         ; $71f0: $de $3e
	ld   l, l                                        ; $71f2: $6d
	db   $fd                                         ; $71f3: $fd
	adc  a                                           ; $71f4: $8f
	rst  $38                                         ; $71f5: $ff
	add  b                                           ; $71f6: $80
	ld   a, a                                        ; $71f7: $7f

jr_09b_71f8:
	dec  c                                           ; $71f8: $0d
	rst  JumpTable                                         ; $71f9: $df
	ldh  [$9c], a                                    ; $71fa: $e0 $9c
	ld   h, d                                        ; $71fc: $62
	dec  [hl]                                        ; $71fd: $35
	inc  c                                           ; $71fe: $0c
	add  a                                           ; $71ff: $87
	add  b                                           ; $7200: $80
	ret  nz                                          ; $7201: $c0

	jr   nz, @+$31                                   ; $7202: $20 $2f

Call_09b_7204:
	ccf                                              ; $7204: $3f
	adc  a                                           ; $7205: $8f
	add  b                                           ; $7206: $80
	add  b                                           ; $7207: $80
	ld   d, l                                        ; $7208: $55
	ld   bc, $01fe                                   ; $7209: $01 $fe $01
	add  b                                           ; $720c: $80
	nop                                              ; $720d: $00
	ld   [bc], a                                     ; $720e: $02
	add  hl, sp                                      ; $720f: $39
	add  $ff                                         ; $7210: $c6 $ff
	add  c                                           ; $7212: $81
	nop                                              ; $7213: $00
	add  b                                           ; $7214: $80
	ld   [hl], b                                     ; $7215: $70
	ld   bc, $07f8                                   ; $7216: $01 $f8 $07
	add  b                                           ; $7219: $80
	ld   d, [hl]                                     ; $721a: $56
	ld   [$c0bf], sp                                 ; $721b: $08 $bf $c0
	add  b                                           ; $721e: $80
	nop                                              ; $721f: $00
	rst  $38                                         ; $7220: $ff
	nop                                              ; $7221: $00
	inc  b                                           ; $7222: $04
	db   $fc                                         ; $7223: $fc
	rlca                                             ; $7224: $07
	add  d                                           ; $7225: $82
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	ld   hl, sp-$80                                  ; $7228: $f8 $80
	rst  $38                                         ; $722a: $ff
	ld   bc, $00f8                                   ; $722b: $01 $f8 $00
	add  c                                           ; $722e: $81
	add  b                                           ; $722f: $80
	add  b                                           ; $7230: $80
	ld   b, b                                        ; $7231: $40
	ld   b, $7f                                      ; $7232: $06 $7f
	ret  nz                                          ; $7234: $c0

	ld   b, b                                        ; $7235: $40
	ld   b, h                                        ; $7236: $44
	ccf                                              ; $7237: $3f
	inc  b                                           ; $7238: $04
	nop                                              ; $7239: $00
	add  b                                           ; $723a: $80
	rst  $38                                         ; $723b: $ff
	add  h                                           ; $723c: $84
	nop                                              ; $723d: $00
	ld   bc, $639c                                   ; $723e: $01 $9c $63
	add  c                                           ; $7241: $81
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	rst  $38                                         ; $7244: $ff
	add  b                                           ; $7245: $80
	nop                                              ; $7246: $00
	add  b                                           ; $7247: $80
	rst  $38                                         ; $7248: $ff
	add  h                                           ; $7249: $84
	nop                                              ; $724a: $00
	ld   bc, $f807                                   ; $724b: $01 $07 $f8
	add  b                                           ; $724e: $80
	daa                                              ; $724f: $27
	ld   bc, $c03f                                   ; $7250: $01 $3f $c0
	add  b                                           ; $7253: $80
	nop                                              ; $7254: $00
	add  b                                           ; $7255: $80
	rst  $38                                         ; $7256: $ff
	add  b                                           ; $7257: $80
	inc  bc                                          ; $7258: $03
	add  b                                           ; $7259: $80
	nop                                              ; $725a: $00
	ld   b, $70                                      ; $725b: $06 $70
	ld   a, a                                        ; $725d: $7f
	ldh  a, [rP1]                                    ; $725e: $f0 $00
	db   $fc                                         ; $7260: $fc
	rst  $38                                         ; $7261: $ff
	db   $fc                                         ; $7262: $fc
	add  c                                           ; $7263: $81
	nop                                              ; $7264: $00
	add  b                                           ; $7265: $80
	rst  $38                                         ; $7266: $ff
	add  hl, bc                                      ; $7267: $09
	ld   b, d                                        ; $7268: $42
	jp   $3d83                                       ; $7269: $c3 $83 $3d


	ld   b, c                                        ; $726c: $41
	add  c                                           ; $726d: $81
	inc  sp                                          ; $726e: $33
	ccf                                              ; $726f: $3f
	ld   h, e                                        ; $7270: $63
	sbc  a                                           ; $7271: $9f
	add  b                                           ; $7272: $80
	rra                                              ; $7273: $1f
	ld   bc, $000f                                   ; $7274: $01 $0f $00
	add  b                                           ; $7277: $80
	rst  $38                                         ; $7278: $ff
	dec  b                                           ; $7279: $05
	nop                                              ; $727a: $00
	rst  $38                                         ; $727b: $ff
	db   $fd                                         ; $727c: $fd
	cp   $fc                                         ; $727d: $fe $fc
	rst  $38                                         ; $727f: $ff
	add  b                                           ; $7280: $80
	rst  $28                                         ; $7281: $ef
	add  b                                           ; $7282: $80
	db   $fd                                         ; $7283: $fd
	add  b                                           ; $7284: $80
	rst  $38                                         ; $7285: $ff
	add  hl, bc                                      ; $7286: $09
	add  a                                           ; $7287: $87
	ld   a, a                                        ; $7288: $7f
	push af                                          ; $7289: $f5
	db   $fd                                         ; $728a: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $728b: $cf
	ret  nz                                          ; $728c: $c0

	ld   h, b                                        ; $728d: $60
	ld   a, a                                        ; $728e: $7f
	db   $f4                                         ; $728f: $f4
	inc  d                                           ; $7290: $14
	add  b                                           ; $7291: $80
	ld   [$b580], a                                  ; $7292: $ea $80 $b5
	add  b                                           ; $7295: $80
	ld   a, [$6d80]                                  ; $7296: $fa $80 $6d
	add  b                                           ; $7299: $80
	cp   $09                                         ; $729a: $fe $09
	and  b                                           ; $729c: $a0
	ld   h, b                                        ; $729d: $60
	pop  bc                                          ; $729e: $c1
	ld   bc, $d8b7                                   ; $729f: $01 $b7 $d8
	db   $ec                                         ; $72a2: $ec
	rst  $38                                         ; $72a3: $ff
	inc  a                                           ; $72a4: $3c
	ld   b, b                                        ; $72a5: $40
	add  b                                           ; $72a6: $80
	xor  d                                           ; $72a7: $aa
	add  b                                           ; $72a8: $80
	ld   d, l                                        ; $72a9: $55
	add  b                                           ; $72aa: $80
	xor  d                                           ; $72ab: $aa
	db   $10                                         ; $72ac: $10
	cp   a                                           ; $72ad: $bf
	nop                                              ; $72ae: $00
	and  b                                           ; $72af: $a0
	ld   b, b                                        ; $72b0: $40
	ld   b, [hl]                                     ; $72b1: $46
	ret  nz                                          ; $72b2: $c0

	jp   hl                                          ; $72b3: $e9


	add  [hl]                                        ; $72b4: $86
	sub  a                                           ; $72b5: $97
	adc  h                                           ; $72b6: $8c
	rst  $28                                         ; $72b7: $ef
	jr   jr_09b_7318                                 ; $72b8: $18 $5e

	ld   sp, $633d                                   ; $72ba: $31 $3d $63
	sub  h                                           ; $72bd: $94
	add  l                                           ; $72be: $85
	nop                                              ; $72bf: $00
	ld   [bc], a                                     ; $72c0: $02
	add  b                                           ; $72c1: $80
	nop                                              ; $72c2: $00
	ld   b, b                                        ; $72c3: $40
	add  c                                           ; $72c4: $81
	add  b                                           ; $72c5: $80
	ld   [bc], a                                     ; $72c6: $02
	ret  nz                                          ; $72c7: $c0

	nop                                              ; $72c8: $00
	add  b                                           ; $72c9: $80
	add  l                                           ; $72ca: $85
	nop                                              ; $72cb: $00
	ld   [$fb79], sp                                 ; $72cc: $08 $79 $fb
	add  [hl]                                        ; $72cf: $86
	rst  $38                                         ; $72d0: $ff
	ei                                               ; $72d1: $fb
	nop                                              ; $72d2: $00
	ld   a, l                                        ; $72d3: $7d
	rst  $38                                         ; $72d4: $ff
	add  d                                           ; $72d5: $82
	add  l                                           ; $72d6: $85
	nop                                              ; $72d7: $00
	add  b                                           ; $72d8: $80
	ldh  [$03], a                                    ; $72d9: $e0 $03
	db   $10                                         ; $72db: $10
	ldh  a, [$e0]                                    ; $72dc: $f0 $e0
	nop                                              ; $72de: $00
	add  b                                           ; $72df: $80
	ldh  a, [rSC]                                    ; $72e0: $f0 $02
	db   $fc                                         ; $72e2: $fc
	ld   hl, sp-$04                                  ; $72e3: $f8 $fc
	add  c                                           ; $72e5: $81
	ldh  a, [rDIV]                                   ; $72e6: $f0 $04
	ld   hl, sp-$20                                  ; $72e8: $f8 $e0
	ldh  a, [$c0]                                    ; $72ea: $f0 $c0
	ldh  [$81], a                                    ; $72ec: $e0 $81
	add  b                                           ; $72ee: $80
	inc  bc                                          ; $72ef: $03
	ret  nz                                          ; $72f0: $c0

	nop                                              ; $72f1: $00
	cp   [hl]                                        ; $72f2: $be
	ld   a, [hl]                                     ; $72f3: $7e
	add  b                                           ; $72f4: $80
	rst  $38                                         ; $72f5: $ff
	add  b                                           ; $72f6: $80
	ld   a, [hl]                                     ; $72f7: $7e
	dec  b                                           ; $72f8: $05
	pop  bc                                          ; $72f9: $c1
	rst  $38                                         ; $72fa: $ff
	ld   a, [hl]                                     ; $72fb: $7e
	nop                                              ; $72fc: $00
	cp   a                                           ; $72fd: $bf
	rst  $38                                         ; $72fe: $ff
	add  b                                           ; $72ff: $80
	ld   a, [hl]                                     ; $7300: $7e
	add  b                                           ; $7301: $80
	rst  $38                                         ; $7302: $ff
	ld   bc, $fb39                                   ; $7303: $01 $39 $fb
	add  b                                           ; $7306: $80
	rst  $38                                         ; $7307: $ff
	add  b                                           ; $7308: $80
	ei                                               ; $7309: $fb
	dec  b                                           ; $730a: $05
	add  [hl]                                        ; $730b: $86
	rst  $38                                         ; $730c: $ff
	ei                                               ; $730d: $fb
	nop                                              ; $730e: $00
	ld   a, l                                        ; $730f: $7d
	rst  $38                                         ; $7310: $ff
	add  b                                           ; $7311: $80
	ei                                               ; $7312: $fb
	add  b                                           ; $7313: $80
	rst  $38                                         ; $7314: $ff
	ld   bc, $e062                                   ; $7315: $01 $62 $e0

jr_09b_7318:
	add  b                                           ; $7318: $80
	ldh  a, [$80]                                    ; $7319: $f0 $80
	ldh  [$03], a                                    ; $731b: $e0 $03
	db   $10                                         ; $731d: $10
	ldh  a, [$e0]                                    ; $731e: $f0 $e0
	nop                                              ; $7320: $00
	add  b                                           ; $7321: $80
	ldh  a, [$80]                                    ; $7322: $f0 $80
	ldh  [$80], a                                    ; $7324: $e0 $80
	ldh  a, [$03]                                    ; $7326: $f0 $03
	nop                                              ; $7328: $00
	rst  $38                                         ; $7329: $ff
	xor  d                                           ; $732a: $aa
	ld   d, l                                        ; $732b: $55
	add  b                                           ; $732c: $80
	xor  d                                           ; $732d: $aa
	add  b                                           ; $732e: $80
	ld   d, l                                        ; $732f: $55
	dec  b                                           ; $7330: $05
	adc  d                                           ; $7331: $8a
	ld   a, d                                        ; $7332: $7a
	ldh  a, [rIE]                                    ; $7333: $f0 $ff
	ld   d, l                                        ; $7335: $55
	xor  d                                           ; $7336: $aa
	add  b                                           ; $7337: $80
	ld   d, l                                        ; $7338: $55
	dec  b                                           ; $7339: $05
	nop                                              ; $733a: $00
	rst  $38                                         ; $733b: $ff
	xor  c                                           ; $733c: $a9
	ld   d, a                                        ; $733d: $57
	xor  e                                           ; $733e: $ab
	xor  d                                           ; $733f: $aa
	add  b                                           ; $7340: $80
	ld   d, l                                        ; $7341: $55
	add  b                                           ; $7342: $80
	xor  d                                           ; $7343: $aa
	rlca                                             ; $7344: $07
	nop                                              ; $7345: $00
	rst  $38                                         ; $7346: $ff
	ld   d, c                                        ; $7347: $51
	xor  a                                           ; $7348: $af
	ld   d, h                                        ; $7349: $54
	ld   d, l                                        ; $734a: $55
	nop                                              ; $734b: $00
	rst  $38                                         ; $734c: $ff
	add  b                                           ; $734d: $80
	ldh  [$03], a                                    ; $734e: $e0 $03
	ld   c, a                                        ; $7350: $4f
	cp   a                                           ; $7351: $bf
	ld   e, d                                        ; $7352: $5a
	ld   d, l                                        ; $7353: $55
	add  b                                           ; $7354: $80
	xor  d                                           ; $7355: $aa
	ld   bc, $ff00                                   ; $7356: $01 $00 $ff
	add  b                                           ; $7359: $80
	ret  nz                                          ; $735a: $c0

	inc  bc                                          ; $735b: $03
	and  e                                           ; $735c: $a3
	ld   e, a                                        ; $735d: $5f
	inc  bc                                          ; $735e: $03
	ldh  a, [$82]                                    ; $735f: $f0 $82
	nop                                              ; $7361: $00
	dec  b                                           ; $7362: $05
	ld   [hl], b                                     ; $7363: $70
	ldh  a, [$d0]                                    ; $7364: $f0 $d0
	and  b                                           ; $7366: $a0
	nop                                              ; $7367: $00
	ldh  a, [$80]                                    ; $7368: $f0 $80
	nop                                              ; $736a: $00
	add  b                                           ; $736b: $80
	add  b                                           ; $736c: $80
	ld   bc, $555a                                   ; $736d: $01 $5a $55
	add  b                                           ; $7370: $80
	xor  d                                           ; $7371: $aa
	add  b                                           ; $7372: $80
	ld   d, l                                        ; $7373: $55
	add  b                                           ; $7374: $80
	xor  d                                           ; $7375: $aa
	add  b                                           ; $7376: $80
	ld   d, l                                        ; $7377: $55
	add  b                                           ; $7378: $80
	xor  d                                           ; $7379: $aa
	add  b                                           ; $737a: $80
	ld   d, l                                        ; $737b: $55
	add  b                                           ; $737c: $80
	xor  d                                           ; $737d: $aa
	add  b                                           ; $737e: $80
	ld   d, h                                        ; $737f: $54
	add  b                                           ; $7380: $80
	xor  b                                           ; $7381: $a8
	add  b                                           ; $7382: $80
	ld   d, l                                        ; $7383: $55
	add  b                                           ; $7384: $80
	xor  d                                           ; $7385: $aa
	add  b                                           ; $7386: $80
	ld   d, b                                        ; $7387: $50
	add  b                                           ; $7388: $80
	xor  d                                           ; $7389: $aa
	add  b                                           ; $738a: $80
	ld   d, h                                        ; $738b: $54
	add  b                                           ; $738c: $80
	and  b                                           ; $738d: $a0
	add  b                                           ; $738e: $80
	db   $10                                         ; $738f: $10
	adc  h                                           ; $7390: $8c
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	rrca                                             ; $7393: $0f
	add  c                                           ; $7394: $81
	nop                                              ; $7395: $00
	add  b                                           ; $7396: $80
	db   $10                                         ; $7397: $10
	add  b                                           ; $7398: $80
	nop                                              ; $7399: $00
	add  b                                           ; $739a: $80
	db   $10                                         ; $739b: $10
	add  b                                           ; $739c: $80
	nop                                              ; $739d: $00
	add  b                                           ; $739e: $80
	db   $10                                         ; $739f: $10
	add  b                                           ; $73a0: $80
	jr   nz, @+$08                                   ; $73a1: $20 $06

	rra                                              ; $73a3: $1f
	add  $d7                                         ; $73a4: $c6 $d7
	db   $ec                                         ; $73a6: $ec
	rst  $28                                         ; $73a7: $ef
	ld   hl, sp-$06                                  ; $73a8: $f8 $fa
	add  b                                           ; $73aa: $80
	pop  af                                          ; $73ab: $f1
	add  b                                           ; $73ac: $80
	ld   a, a                                        ; $73ad: $7f
	ld   bc, $7f7c                                   ; $73ae: $01 $7c $7f
	add  b                                           ; $73b1: $80
	ld   a, b                                        ; $73b2: $78
	ld   bc, $e4f8                                   ; $73b3: $01 $f8 $e4
	add  b                                           ; $73b6: $80
	nop                                              ; $73b7: $00
	add  b                                           ; $73b8: $80
	ld   b, b                                        ; $73b9: $40
	dec  b                                           ; $73ba: $05
	ret  nz                                          ; $73bb: $c0

	ldh  [$80], a                                    ; $73bc: $e0 $80
	ret  nz                                          ; $73be: $c0

	nop                                              ; $73bf: $00
	add  b                                           ; $73c0: $80
	add  e                                           ; $73c1: $83
	nop                                              ; $73c2: $00
	ld   bc, $fb79                                   ; $73c3: $01 $79 $fb
	add  b                                           ; $73c6: $80
	rst  $38                                         ; $73c7: $ff
	add  b                                           ; $73c8: $80
	ei                                               ; $73c9: $fb
	add  b                                           ; $73ca: $80
	rst  $38                                         ; $73cb: $ff
	add  b                                           ; $73cc: $80
	ei                                               ; $73cd: $fb
	rlca                                             ; $73ce: $07
	add  [hl]                                        ; $73cf: $86
	rst  $38                                         ; $73d0: $ff
	ei                                               ; $73d1: $fb
	nop                                              ; $73d2: $00
	ld   a, l                                        ; $73d3: $7d
	rst  $38                                         ; $73d4: $ff
	ld   h, d                                        ; $73d5: $62
	ldh  [$80], a                                    ; $73d6: $e0 $80
	ldh  a, [$80]                                    ; $73d8: $f0 $80
	ldh  [$80], a                                    ; $73da: $e0 $80
	ldh  a, [$80]                                    ; $73dc: $f0 $80
	ldh  [$03], a                                    ; $73de: $e0 $03
	db   $10                                         ; $73e0: $10
	ldh  a, [$e0]                                    ; $73e1: $f0 $e0
	nop                                              ; $73e3: $00
	add  b                                           ; $73e4: $80
	ldh  a, [rTAC]                                   ; $73e5: $f0 $07
	sbc  a                                           ; $73e7: $9f
	ccf                                              ; $73e8: $3f
	ld   h, b                                        ; $73e9: $60
	ld   a, a                                        ; $73ea: $7f
	cp   a                                           ; $73eb: $bf
	add  b                                           ; $73ec: $80
	rst  JumpTable                                         ; $73ed: $df
	ld   a, a                                        ; $73ee: $7f
	add  b                                           ; $73ef: $80
	cp   a                                           ; $73f0: $bf
	add  b                                           ; $73f1: $80
	rst  $38                                         ; $73f2: $ff
	add  b                                           ; $73f3: $80
	cp   a                                           ; $73f4: $bf
	add  b                                           ; $73f5: $80
	rst  $38                                         ; $73f6: $ff
	rlca                                             ; $73f7: $07
	ld   e, $7e                                      ; $73f8: $1e $7e
	pop  bc                                          ; $73fa: $c1
	rst  $38                                         ; $73fb: $ff
	ld   a, [hl]                                     ; $73fc: $7e
	nop                                              ; $73fd: $00
	cp   a                                           ; $73fe: $bf
	rst  $38                                         ; $73ff: $ff
	add  b                                           ; $7400: $80
	ld   a, [hl]                                     ; $7401: $7e
	add  b                                           ; $7402: $80
	rst  $38                                         ; $7403: $ff
	add  b                                           ; $7404: $80
	ld   a, [hl]                                     ; $7405: $7e
	add  b                                           ; $7406: $80
	rst  $38                                         ; $7407: $ff
	rlca                                             ; $7408: $07
	add  hl, sp                                      ; $7409: $39
	ei                                               ; $740a: $fb
	add  [hl]                                        ; $740b: $86
	rst  $38                                         ; $740c: $ff
	ei                                               ; $740d: $fb
	nop                                              ; $740e: $00
	ld   a, l                                        ; $740f: $7d
	rst  $38                                         ; $7410: $ff
	add  b                                           ; $7411: $80
	ei                                               ; $7412: $fb
	add  b                                           ; $7413: $80
	rst  $38                                         ; $7414: $ff
	add  b                                           ; $7415: $80
	ei                                               ; $7416: $fb
	add  b                                           ; $7417: $80
	rst  $38                                         ; $7418: $ff
	dec  b                                           ; $7419: $05
	ld   h, d                                        ; $741a: $62
	ldh  [rAUD1SWEEP], a                             ; $741b: $e0 $10
	ldh  a, [$e0]                                    ; $741d: $f0 $e0
	nop                                              ; $741f: $00
	add  b                                           ; $7420: $80
	ldh  a, [$80]                                    ; $7421: $f0 $80
	ldh  [$80], a                                    ; $7423: $e0 $80
	ldh  a, [$80]                                    ; $7425: $f0 $80
	ldh  [$80], a                                    ; $7427: $e0 $80
	ldh  a, [$80]                                    ; $7429: $f0 $80
	xor  d                                           ; $742b: $aa
	add  b                                           ; $742c: $80
	ld   d, l                                        ; $742d: $55
	ld   [bc], a                                     ; $742e: $02
	xor  e                                           ; $742f: $ab
	xor  d                                           ; $7430: $aa
	cp   $85                                         ; $7431: $fe $85
	nop                                              ; $7433: $00
	add  b                                           ; $7434: $80
	ld   bc, $5501                                   ; $7435: $01 $01 $55
	xor  d                                           ; $7438: $aa
	add  b                                           ; $7439: $80
	ld   d, l                                        ; $743a: $55
	nop                                              ; $743b: $00
	rst  $38                                         ; $743c: $ff
	add  a                                           ; $743d: $87
	nop                                              ; $743e: $00
	add  b                                           ; $743f: $80
	rst  $38                                         ; $7440: $ff
	ld   bc, $aa55                                   ; $7441: $01 $55 $aa
	add  b                                           ; $7444: $80
	ld   d, l                                        ; $7445: $55
	nop                                              ; $7446: $00
	rst  $38                                         ; $7447: $ff
	add  a                                           ; $7448: $87
	nop                                              ; $7449: $00
	add  b                                           ; $744a: $80
	add  b                                           ; $744b: $80
	ld   bc, $b04f                                   ; $744c: $01 $4f $b0
	add  b                                           ; $744f: $80
	ld   d, b                                        ; $7450: $50
	nop                                              ; $7451: $00
	ldh  a, [$89]                                    ; $7452: $f0 $89
	nop                                              ; $7454: $00
	ld   bc, $000f                                   ; $7455: $01 $0f $00
	add  b                                           ; $7458: $80
	cp   $0c                                         ; $7459: $fe $0c
	rst  $38                                         ; $745b: $ff
	nop                                              ; $745c: $00
	db   $e4                                         ; $745d: $e4
	inc  a                                           ; $745e: $3c
	daa                                              ; $745f: $27
	nop                                              ; $7460: $00
	adc  h                                           ; $7461: $8c
	ld   a, h                                        ; $7462: $7c
	rst  ToBoot                                         ; $7463: $c7
	jr   z, @+$1f                                    ; $7464: $28 $1d

	inc  bc                                          ; $7466: $03
	ld   bc, $0081                                   ; $7467: $01 $81 $00
	inc  c                                           ; $746a: $0c
	jr   nz, @-$1e                                   ; $746b: $20 $e0

	jr   c, jr_09b_7476                              ; $746d: $38 $07

	ld   sp, hl                                      ; $746f: $f9
	rlca                                             ; $7470: $07
	ld   bc, $e000                                   ; $7471: $01 $00 $e0
	jr   nz, jr_09b_74b5                             ; $7474: $20 $3f

jr_09b_7476:
	inc  bc                                          ; $7476: $03
	db   $fc                                         ; $7477: $fc
	add  e                                           ; $7478: $83
	nop                                              ; $7479: $00
	ld   a, [bc]                                     ; $747a: $0a
	add  sp, -$08                                    ; $747b: $e8 $f8
	ld   l, $c2                                      ; $747d: $2e $c2
	db   $eb                                         ; $747f: $eb
	jr   jr_09b_7490                                 ; $7480: $18 $0e

	ld   bc, $c040                                   ; $7482: $01 $40 $c0
	adc  a                                           ; $7485: $8f
	add  a                                           ; $7486: $87
	nop                                              ; $7487: $00
	dec  bc                                          ; $7488: $0b
	ld   [hl], b                                     ; $7489: $70
	ldh  a, [$30]                                    ; $748a: $f0 $30
	ret  nz                                          ; $748c: $c0

	ld   [hl], b                                     ; $748d: $70
	nop                                              ; $748e: $00
	ld   l, a                                        ; $748f: $6f

jr_09b_7490:
	ldh  [$8c], a                                    ; $7490: $e0 $8c
	db   $fc                                         ; $7492: $fc
	cp   $0f                                         ; $7493: $fe $0f
	add  c                                           ; $7495: $81
	ld   bc, $0085                                   ; $7496: $01 $85 $00
	dec  de                                          ; $7499: $1b
	ccf                                              ; $749a: $3f
	jr   nc, jr_09b_74aa                             ; $749b: $30 $0d

	inc  bc                                          ; $749d: $03
	add  c                                           ; $749e: $81
	add  b                                           ; $749f: $80
	ret  nz                                          ; $74a0: $c0

	jr   nz, jr_09b_74fb                             ; $74a1: $20 $58

	ret  z                                           ; $74a3: $c8

	inc  c                                           ; $74a4: $0c
	ld   b, h                                        ; $74a5: $44
	dec  h                                           ; $74a6: $25
	dec  de                                          ; $74a7: $1b
	ld   a, c                                        ; $74a8: $79
	ld   [hl], b                                     ; $74a9: $70

jr_09b_74aa:
	ei                                               ; $74aa: $fb
	inc  c                                           ; $74ab: $0c
	add  a                                           ; $74ac: $87
	add  b                                           ; $74ad: $80
	ldh  a, [rAUD1SWEEP]                             ; $74ae: $f0 $10
	jr   @+$06                                       ; $74b0: $18 $04

	nop                                              ; $74b2: $00
	ld   [bc], a                                     ; $74b3: $02
	nop                                              ; $74b4: $00

jr_09b_74b5:
	ld   bc, $8080                                   ; $74b5: $01 $80 $80
	ld   [$4785], sp                                 ; $74b8: $08 $85 $47
	call Call_09b_4000                               ; $74bb: $cd $00 $40
	ret  nz                                          ; $74be: $c0

	ld   h, b                                        ; $74bf: $60
	jr   nz, jr_09b_74f2                             ; $74c0: $20 $30

	add  e                                           ; $74c2: $83
	nop                                              ; $74c3: $00
	add  b                                           ; $74c4: $80
	add  b                                           ; $74c5: $80
	add  b                                           ; $74c6: $80
	nop                                              ; $74c7: $00
	rlca                                             ; $74c8: $07
	ldh  [$1f], a                                    ; $74c9: $e0 $1f
	rst  JumpTable                                         ; $74cb: $df
	ldh  [$c4], a                                    ; $74cc: $e0 $c4
	rlca                                             ; $74ce: $07
	inc  c                                           ; $74cf: $0c
	ldh  a, [$80]                                    ; $74d0: $f0 $80
	nop                                              ; $74d2: $00
	add  b                                           ; $74d3: $80
	jr   z, @-$7e                                    ; $74d4: $28 $80

	ld   d, h                                        ; $74d6: $54
	add  b                                           ; $74d7: $80
	xor  d                                           ; $74d8: $aa
	dec  b                                           ; $74d9: $05
	rst  $38                                         ; $74da: $ff
	nop                                              ; $74db: $00
	dec  de                                          ; $74dc: $1b
	inc  h                                           ; $74dd: $24
	ld   b, b                                        ; $74de: $40
	add  b                                           ; $74df: $80
	add  [hl]                                        ; $74e0: $86
	nop                                              ; $74e1: $00
	add  b                                           ; $74e2: $80
	xor  d                                           ; $74e3: $aa
	dec  b                                           ; $74e4: $05
	db   $eb                                         ; $74e5: $eb
	inc  l                                           ; $74e6: $2c
	jp   nz, $0006                                   ; $74e7: $c2 $06 $00

	inc  bc                                          ; $74ea: $03
	add  h                                           ; $74eb: $84
	nop                                              ; $74ec: $00
	add  b                                           ; $74ed: $80
	inc  d                                           ; $74ee: $14
	add  b                                           ; $74ef: $80
	adc  d                                           ; $74f0: $8a
	dec  b                                           ; $74f1: $05

jr_09b_74f2:
	rst  $38                                         ; $74f2: $ff
	nop                                              ; $74f3: $00
	jr   nz, jr_09b_7526                             ; $74f4: $20 $30

	nop                                              ; $74f6: $00
	ldh  [$84], a                                    ; $74f7: $e0 $84
	nop                                              ; $74f9: $00
	add  b                                           ; $74fa: $80

jr_09b_74fb:
	ld   d, b                                        ; $74fb: $50
	add  b                                           ; $74fc: $80
	and  b                                           ; $74fd: $a0
	nop                                              ; $74fe: $00
	ldh  a, [rIE]                                    ; $74ff: $f0 $ff
	nop                                              ; $7501: $00
	rst  $38                                         ; $7502: $ff
	nop                                              ; $7503: $00
	rst  $38                                         ; $7504: $ff
	nop                                              ; $7505: $00
	rst  $38                                         ; $7506: $ff
	nop                                              ; $7507: $00
	rst  $38                                         ; $7508: $ff
	nop                                              ; $7509: $00
	rst  $38                                         ; $750a: $ff
	nop                                              ; $750b: $00
	rst  $30                                         ; $750c: $f7
	nop                                              ; $750d: $00
	ld   a, [bc]                                     ; $750e: $0a
	ld   bc, $0084                                   ; $750f: $01 $84 $00

jr_09b_7512:
	nop                                              ; $7512: $00
	ld   bc, $0083                                   ; $7513: $01 $83 $00
	nop                                              ; $7516: $00
	ld   [bc], a                                     ; $7517: $02
	add  c                                           ; $7518: $81
	ld   bc, $0404                                   ; $7519: $01 $04 $04
	inc  bc                                          ; $751c: $03
	ld   [bc], a                                     ; $751d: $02
	inc  bc                                          ; $751e: $03
	dec  bc                                          ; $751f: $0b
	add  c                                           ; $7520: $81
	rlca                                             ; $7521: $07
	ld   [$0706], sp                                 ; $7522: $08 $06 $07
	inc  d                                           ; $7525: $14

jr_09b_7526:
	rrca                                             ; $7526: $0f
	dec  c                                           ; $7527: $0d
	rrca                                             ; $7528: $0f
	rst  $28                                         ; $7529: $ef
	rrca                                             ; $752a: $0f
	ldh  a, [$83]                                    ; $752b: $f0 $83
	nop                                              ; $752d: $00
	inc  b                                           ; $752e: $04
	ldh  [rP1], a                                    ; $752f: $e0 $00
	inc  e                                           ; $7531: $1c
	ldh  [$e3], a                                    ; $7532: $e0 $e3
	add  b                                           ; $7534: $80
	db   $fc                                         ; $7535: $fc
	add  c                                           ; $7536: $81
	rst  $38                                         ; $7537: $ff
	ld   a, [bc]                                     ; $7538: $0a
	ccf                                              ; $7539: $3f
	rst  $38                                         ; $753a: $ff
	ld   c, a                                        ; $753b: $4f
	rst  $38                                         ; $753c: $ff
	sub  a                                           ; $753d: $97
	db   $fc                                         ; $753e: $fc
	add  h                                           ; $753f: $84
	rst  $38                                         ; $7540: $ff
	rra                                              ; $7541: $1f
	rst  $38                                         ; $7542: $ff
	ld   a, a                                        ; $7543: $7f
	add  b                                           ; $7544: $80
	ldh  a, [$03]                                    ; $7545: $f0 $03
	adc  $cf                                         ; $7547: $ce $cf
	cp   c                                           ; $7549: $b9
	ld   b, a                                        ; $754a: $47
	adc  c                                           ; $754b: $89
	nop                                              ; $754c: $00
	ld   b, $c0                                      ; $754d: $06 $c0
	nop                                              ; $754f: $00
	jr   nz, jr_09b_7512                             ; $7550: $20 $c0

	ret  nc                                          ; $7552: $d0

	ldh  [$e8], a                                    ; $7553: $e0 $e8
	add  b                                           ; $7555: $80
	ret  nc                                          ; $7556: $d0

	ld   bc, $e4e0                                   ; $7557: $01 $e0 $e4
	add  b                                           ; $755a: $80
	jr   nc, @+$09                                   ; $755b: $30 $07

	ret  z                                           ; $755d: $c8

	jp   z, $f1f0                                    ; $755e: $ca $f0 $f1

	ld   a, [hl-]                                    ; $7561: $3a
	ld   a, [$f9c6]                                  ; $7562: $fa $c6 $f9
	adc  e                                           ; $7565: $8b
	nop                                              ; $7566: $00
	ld   [de], a                                     ; $7567: $12
	ld   bc, $0200                                   ; $7568: $01 $00 $02
	ld   bc, $0304                                   ; $756b: $01 $04 $03
	add  hl, bc                                      ; $756e: $09
	rlca                                             ; $756f: $07
	db   $10                                         ; $7570: $10
	rrca                                             ; $7571: $0f
	dec  bc                                          ; $7572: $0b
	ld   c, $ee                                      ; $7573: $0e $ee
	add  hl, de                                      ; $7575: $19
	ld   e, c                                        ; $7576: $59
	rst  $10                                         ; $7577: $d7
	rla                                              ; $7578: $17
	ret  nz                                          ; $7579: $c0

	cp   a                                           ; $757a: $bf
	add  e                                           ; $757b: $83
	nop                                              ; $757c: $00
	ld   a, [de]                                     ; $757d: $1a
	inc  bc                                          ; $757e: $03
	nop                                              ; $757f: $00
	inc  c                                           ; $7580: $0c
	inc  bc                                          ; $7581: $03
	inc  sp                                          ; $7582: $33
	rrca                                             ; $7583: $0f
	ret  nz                                          ; $7584: $c0

	ccf                                              ; $7585: $3f
	ld   [$27ff], sp                                 ; $7586: $08 $ff $27
	rst  $38                                         ; $7589: $ff
	sbc  a                                           ; $758a: $9f
	rst  $38                                         ; $758b: $ff
	ld   a, a                                        ; $758c: $7f
	rst  $38                                         ; $758d: $ff
	ldh  [rIE], a                                    ; $758e: $e0 $ff
	db   $e3                                         ; $7590: $e3
	ccf                                              ; $7591: $3f
	ld   a, [hl-]                                    ; $7592: $3a
	rst  JumpTable                                         ; $7593: $df
	pop  de                                          ; $7594: $d1
	sbc  a                                           ; $7595: $9f
	sub  a                                           ; $7596: $97
	ccf                                              ; $7597: $3f
	ret  nz                                          ; $7598: $c0

	add  l                                           ; $7599: $85
	nop                                              ; $759a: $00
	ld   [bc], a                                     ; $759b: $02
	add  b                                           ; $759c: $80
	nop                                              ; $759d: $00
	ld   b, b                                        ; $759e: $40
	add  c                                           ; $759f: $81
	add  b                                           ; $75a0: $80
	inc  b                                           ; $75a1: $04
	jr   nz, @-$3e                                   ; $75a2: $20 $c0

	ld   b, b                                        ; $75a4: $40
	ret  nz                                          ; $75a5: $c0

	ret  nc                                          ; $75a6: $d0

	add  e                                           ; $75a7: $83
	ldh  [rSC], a                                    ; $75a8: $e0 $02
	ld   l, b                                        ; $75aa: $68
	ldh  a, [rSVBK]                                  ; $75ab: $f0 $70
	add  c                                           ; $75ad: $81
	ldh  a, [rSB]                                    ; $75ae: $f0 $01
	rst  $30                                         ; $75b0: $f7
	ld   hl, sp-$80                                  ; $75b1: $f8 $80
	nop                                              ; $75b3: $00
	inc  b                                           ; $75b4: $04
	ccf                                              ; $75b5: $3f
	rlca                                             ; $75b6: $07
	ld   a, h                                        ; $75b7: $7c
	ccf                                              ; $75b8: $3f
	add  e                                           ; $75b9: $83
	add  b                                           ; $75ba: $80
	ld   e, a                                        ; $75bb: $5f
	ld   bc, $ef6f                                   ; $75bc: $01 $6f $ef
	add  b                                           ; $75bf: $80
	cpl                                              ; $75c0: $2f
	jr   z, jr_09b_75f7                              ; $75c1: $28 $34

	ld   [hl], a                                     ; $75c3: $77
	inc  de                                          ; $75c4: $13
	inc  a                                           ; $75c5: $3c
	rrca                                             ; $75c6: $0f
	dec  sp                                          ; $75c7: $3b
	rra                                              ; $75c8: $1f
	ld   [hl], a                                     ; $75c9: $77
	ld   a, $ee                                      ; $75ca: $3e $ee
	ld   a, l                                        ; $75cc: $7d
	ld   e, h                                        ; $75cd: $5c
	ld   a, a                                        ; $75ce: $7f
	jr   c, jr_09b_7650                              ; $75cf: $38 $7f

	ld   [hl], l                                     ; $75d1: $75
	ld   a, a                                        ; $75d2: $7f
	db   $eb                                         ; $75d3: $eb
	ld   a, $5e                                      ; $75d4: $3e $5e
	ret  nz                                          ; $75d6: $c0

	add  $f8                                         ; $75d7: $c6 $f8
	ld   sp, hl                                      ; $75d9: $f9
	db   $fc                                         ; $75da: $fc
	db   $fd                                         ; $75db: $fd
	rst  $38                                         ; $75dc: $ff
	ldh  a, [c]                                      ; $75dd: $f2
	di                                               ; $75de: $f3
	ldh  [$e5], a                                    ; $75df: $e0 $e5
	rst  $20                                         ; $75e1: $e7
	xor  d                                           ; $75e2: $aa
	xor  c                                           ; $75e3: $a9
	ld   h, l                                        ; $75e4: $65
	ld   l, [hl]                                     ; $75e5: $6e
	ld   [$afa0], a                                  ; $75e6: $ea $a0 $af
	ld   l, a                                        ; $75e9: $6f
	ld   h, a                                        ; $75ea: $67
	add  b                                           ; $75eb: $80
	and  $82                                         ; $75ec: $e6 $82
	sub  $01                                         ; $75ee: $d6 $01
	and  [hl]                                        ; $75f0: $a6
	xor  [hl]                                        ; $75f1: $ae
	add  b                                           ; $75f2: $80
	xor  h                                           ; $75f3: $ac
	rla                                              ; $75f4: $17
	add  b                                           ; $75f5: $80
	nop                                              ; $75f6: $00

jr_09b_75f7:
	or   b                                           ; $75f7: $b0
	rrca                                             ; $75f8: $0f
	ld   c, a                                        ; $75f9: $4f
	ccf                                              ; $75fa: $3f
	ld   a, $fe                                      ; $75fb: $3e $fe
	adc  a                                           ; $75fd: $8f
	adc  $c6                                         ; $75fe: $ce $c6
	and  a                                           ; $7600: $a7
	rst  $20                                         ; $7601: $e7
	ld   d, a                                        ; $7602: $57
	rla                                              ; $7603: $17
	inc  h                                           ; $7604: $24
	ld   [hl], h                                     ; $7605: $74
	ld   d, h                                        ; $7606: $54
	call nz, $1131                                   ; $7607: $c4 $31 $11
	inc  de                                          ; $760a: $13
	ld   b, $0a                                      ; $760b: $06 $0a
	add  e                                           ; $760d: $83
	dec  bc                                          ; $760e: $0b
	dec  bc                                          ; $760f: $0b
	ld   a, [bc]                                     ; $7610: $0a
	ld   c, $07                                      ; $7611: $0e $07
	rst  $38                                         ; $7613: $ff
	nop                                              ; $7614: $00
	adc  $f0                                         ; $7615: $ce $f0
	ld   b, c                                        ; $7617: $41
	cp   $92                                         ; $7618: $fe $92
	db   $fc                                         ; $761a: $fc
	ldh  [$80], a                                    ; $761b: $e0 $80
	ld   a, d                                        ; $761d: $7a
	dec  bc                                          ; $761e: $0b
	sub  [hl]                                        ; $761f: $96
	rla                                              ; $7620: $17
	db   $e4                                         ; $7621: $e4
	sub  h                                           ; $7622: $94
	ld   hl, sp+$34                                  ; $7623: $f8 $34
	db   $fc                                         ; $7625: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7626: $cf
	cp   $f2                                         ; $7627: $fe $f2
	ld   a, [hl]                                     ; $7629: $7e
	ld   a, h                                        ; $762a: $7c
	add  c                                           ; $762b: $81
	ld   a, [hl]                                     ; $762c: $7e
	nop                                              ; $762d: $00
	ld   a, a                                        ; $762e: $7f
	add  c                                           ; $762f: $81
	db   $fc                                         ; $7630: $fc
	ld   [$f87e], sp                                 ; $7631: $08 $7e $f8
	srl  [hl]                                        ; $7634: $cb $3e
	ld   c, [hl]                                     ; $7636: $4e
	dec  e                                           ; $7637: $1d
	dec  a                                           ; $7638: $3d
	inc  c                                           ; $7639: $0c
	rrca                                             ; $763a: $0f
	add  c                                           ; $763b: $81
	ld   [$1c02], sp                                 ; $763c: $08 $02 $1c
	nop                                              ; $763f: $00
	ld   [$008d], sp                                 ; $7640: $08 $8d $00
	nop                                              ; $7643: $00
	ld   bc, $0081                                   ; $7644: $01 $81 $00
	ld   [bc], a                                     ; $7647: $02
	pop  af                                          ; $7648: $f1
	rst  $28                                         ; $7649: $ef
	rst  $20                                         ; $764a: $e7
	add  c                                           ; $764b: $81
	rst  $30                                         ; $764c: $f7
	rlca                                             ; $764d: $07
	ei                                               ; $764e: $fb
	ld   l, e                                        ; $764f: $6b

jr_09b_7650:
	ld   l, d                                        ; $7650: $6a
	ld   c, d                                        ; $7651: $4a
	db   $ed                                         ; $7652: $ed
	dec  c                                           ; $7653: $0d
	ld   c, l                                        ; $7654: $4d
	dec  c                                           ; $7655: $0d
	add  b                                           ; $7656: $80
	dec  bc                                          ; $7657: $0b
	ld   bc, $1b3b                                   ; $7658: $01 $3b $1b
	add  d                                           ; $765b: $82
	ld   a, [de]                                     ; $765c: $1a
	ld   bc, $3d7d                                   ; $765d: $01 $7d $3d
	add  b                                           ; $7660: $80
	dec  l                                           ; $7661: $2d
	ld   bc, $5ada                                   ; $7662: $01 $da $5a
	add  b                                           ; $7665: $80
	sub  $80                                         ; $7666: $d6 $80
	or   h                                           ; $7668: $b4
	ld   [bc], a                                     ; $7669: $02
	ldh  a, [$f3]                                    ; $766a: $f0 $f3
	db   $e3                                         ; $766c: $e3
	add  b                                           ; $766d: $80

Jump_09b_766e:
	db   $ed                                         ; $766e: $ed
	inc  bc                                          ; $766f: $03
	xor  $ce                                         ; $7670: $ee $ce
	rst  JumpTable                                         ; $7672: $df
	ld   e, a                                        ; $7673: $5f
	add  b                                           ; $7674: $80
	ld   b, a                                        ; $7675: $47
	ld   b, $42                                      ; $7676: $06 $42
	or   a                                           ; $7678: $b7
	or   b                                           ; $7679: $b0
	or   d                                           ; $767a: $b2
	or   b                                           ; $767b: $b0
	cp   h                                           ; $767c: $bc
	cp   b                                           ; $767d: $b8
	add  b                                           ; $767e: $80
	ret  c                                           ; $767f: $d8

	inc  bc                                          ; $7680: $03
	ld   e, [hl]                                     ; $7681: $5e
	ld   e, h                                        ; $7682: $5c
	ld   e, a                                        ; $7683: $5f
	ld   e, [hl]                                     ; $7684: $5e
	add  b                                           ; $7685: $80
	sbc  a                                           ; $7686: $9f
	add  b                                           ; $7687: $80
	xor  e                                           ; $7688: $ab
	add  b                                           ; $7689: $80
	call nc, Call_09b_5a80                           ; $768a: $d4 $80 $5a
	ld   a, [bc]                                     ; $768d: $0a
	rst  ToBoot                                         ; $768e: $c7
	ldh  a, [$50]                                    ; $768f: $f0 $50
	ldh  a, [$b8]                                    ; $7691: $f0 $b8
	ldh  [$c0], a                                    ; $7693: $e0 $c0
	ld   h, b                                        ; $7695: $60
	ld   [hl], b                                     ; $7696: $70
	nop                                              ; $7697: $00
	ldh  [$8b], a                                    ; $7698: $e0 $8b
	nop                                              ; $769a: $00
	dec  b                                           ; $769b: $05
	add  b                                           ; $769c: $80
	nop                                              ; $769d: $00
	ret  nz                                          ; $769e: $c0

	add  b                                           ; $769f: $80
	ldh  [$c0], a                                    ; $76a0: $e0 $c0
	add  b                                           ; $76a2: $80
	ld   b, b                                        ; $76a3: $40
	nop                                              ; $76a4: $00
	ldh  [c], a                                      ; $76a5: $e2
	add  c                                           ; $76a6: $81
	ld   bc, $0701                                   ; $76a7: $01 $01 $07
	inc  bc                                          ; $76aa: $03
	add  [hl]                                        ; $76ab: $86
	ld   [bc], a                                     ; $76ac: $02
	ld   [bc], a                                     ; $76ad: $02
	dec  b                                           ; $76ae: $05
	ld   bc, $8d03                                   ; $76af: $01 $03 $8d
	nop                                              ; $76b2: $00
	inc  bc                                          ; $76b3: $03
	sub  l                                           ; $76b4: $95
	ld   h, d                                        ; $76b5: $62
	ld   d, d                                        ; $76b6: $52
	ld   c, d                                        ; $76b7: $4a
	add  d                                           ; $76b8: $82
	ld   c, e                                        ; $76b9: $4b
	ld   bc, $657d                                   ; $76ba: $01 $7d $65
	add  b                                           ; $76bd: $80

jr_09b_76be:
	and  l                                           ; $76be: $a5
	ld   [$b2be], sp                                 ; $76bf: $08 $be $b2
	rra                                              ; $76c2: $1f
	dec  de                                          ; $76c3: $1b
	db   $e4                                         ; $76c4: $e4
	nop                                              ; $76c5: $00
	rra                                              ; $76c6: $1f

jr_09b_76c7:
	nop                                              ; $76c7: $00
	inc  b                                           ; $76c8: $04
	add  c                                           ; $76c9: $81
	nop                                              ; $76ca: $00
	inc  c                                           ; $76cb: $0c
	inc  bc                                          ; $76cc: $03
	nop                                              ; $76cd: $00
	inc  e                                           ; $76ce: $1c
	inc  bc                                          ; $76cf: $03
	ld   h, e                                        ; $76d0: $63
	rra                                              ; $76d1: $1f
	sbc  a                                           ; $76d2: $9f
	ld   a, a                                        ; $76d3: $7f
	sbc  h                                           ; $76d4: $9c
	inc  h                                           ; $76d5: $24
	and  h                                           ; $76d6: $a4
	inc  h                                           ; $76d7: $24
	ld   h, $80                                      ; $76d8: $26 $80
	ld   a, [hl+]                                    ; $76da: $2a
	ld   bc, $7928                                   ; $76db: $01 $28 $79
	add  b                                           ; $76de: $80
	sub  h                                           ; $76df: $94
	dec  d                                           ; $76e0: $15
	sub  l                                           ; $76e1: $95
	dec  a                                           ; $76e2: $3d
	jp   z, Jump_09b_695a                            ; $76e3: $ca $5a $69

	ld   h, l                                        ; $76e6: $65
	or   h                                           ; $76e7: $b4

jr_09b_76e8:
	or   l                                           ; $76e8: $b5
	inc  b                                           ; $76e9: $04
	db   $f4                                         ; $76ea: $f4
	inc  b                                           ; $76eb: $04
	ld   a, [de]                                     ; $76ec: $1a
	ld   [$10f0], sp                                 ; $76ed: $08 $f0 $10
	ret  nc                                          ; $76f0: $d0

	db   $10                                         ; $76f1: $10
	jr   z, jr_09b_76f4                              ; $76f2: $28 $00

jr_09b_76f4:
	stop                                             ; $76f4: $10 $00
	halt                                             ; $76f6: $76
	add  c                                           ; $76f7: $81
	ld   h, l                                        ; $76f8: $65
	ld   [bc], a                                     ; $76f9: $02
	ld   [hl], h                                     ; $76fa: $74
	ld   c, l                                        ; $76fb: $4d
	ret                                              ; $76fc: $c9


	add  b                                           ; $76fd: $80
	adc  d                                           ; $76fe: $8a
	inc  bc                                          ; $76ff: $03
	ld   c, d                                        ; $7700: $4a
	ld   b, e                                        ; $7701: $43
	ld   d, l                                        ; $7702: $55
	ld   [hl], h                                     ; $7703: $74
	add  b                                           ; $7704: $80
	or   l                                           ; $7705: $b5
	inc  d                                           ; $7706: $14
	or   d                                           ; $7707: $b2
	and  e                                           ; $7708: $a3
	and  l                                           ; $7709: $a5
	and  h                                           ; $770a: $a4
	jr   nz, @-$4f                                   ; $770b: $20 $af

	jr   nz, jr_09b_76c7                             ; $770d: $20 $b8

	jr   nc, jr_09b_76e8                             ; $770f: $30 $d7

	db   $10                                         ; $7711: $10
	rla                                              ; $7712: $17
	db   $10                                         ; $7713: $10
	jr   nz, jr_09b_7716                             ; $7714: $20 $00

jr_09b_7716:
	sub  b                                           ; $7716: $90
	nop                                              ; $7717: $00
	inc  a                                           ; $7718: $3c
	ld   b, e                                        ; $7719: $43
	ld   b, l                                        ; $771a: $45
	ld   c, c                                        ; $771b: $49
	add  b                                           ; $771c: $80
	ld   d, c                                        ; $771d: $51
	ld   bc, $d4d2                                   ; $771e: $01 $d2 $d4
	add  d                                           ; $7721: $82
	and  h                                           ; $7722: $a4
	ld   bc, $5056                                   ; $7723: $01 $56 $50
	add  b                                           ; $7726: $80
	xor  c                                           ; $7727: $a9
	inc  b                                           ; $7728: $04
	adc  l                                           ; $7729: $8d
	adc  c                                           ; $772a: $89
	ld   h, d                                        ; $772b: $62
	ld   [bc], a                                     ; $772c: $02
	sbc  a                                           ; $772d: $9f
	add  e                                           ; $772e: $83
	nop                                              ; $772f: $00
	rlca                                             ; $7730: $07
	ldh  [rP1], a                                    ; $7731: $e0 $00
	jr   @-$1e                                       ; $7733: $18 $e0

	and  $f8                                         ; $7735: $e6 $f8
	sub  [hl]                                        ; $7737: $96
	ld   h, b                                        ; $7738: $60
	add  b                                           ; $7739: $80
	jr   nz, jr_09b_76be                             ; $773a: $20 $82

	and  b                                           ; $773c: $a0
	nop                                              ; $773d: $00
	sub  b                                           ; $773e: $90
	add  c                                           ; $773f: $81
	ret  nz                                          ; $7740: $c0

	nop                                              ; $7741: $00
	ldh  [$81], a                                    ; $7742: $e0 $81
	add  b                                           ; $7744: $80
	ld   [bc], a                                     ; $7745: $02
	ld   b, b                                        ; $7746: $40
	nop                                              ; $7747: $00
	add  b                                           ; $7748: $80
	adc  l                                           ; $7749: $8d
	nop                                              ; $774a: $00
	ld   [bc], a                                     ; $774b: $02
	add  b                                           ; $774c: $80
	nop                                              ; $774d: $00
	ret  nz                                          ; $774e: $c0

	add  c                                           ; $774f: $81
	add  b                                           ; $7750: $80
	nop                                              ; $7751: $00
	ldh  [$83], a                                    ; $7752: $e0 $83
	ret  nz                                          ; $7754: $c0

	nop                                              ; $7755: $00
	ldh  a, [$81]                                    ; $7756: $f0 $81
	ldh  [rP1], a                                    ; $7758: $e0 $00
	ld   hl, sp-$7f                                  ; $775a: $f8 $81
	ldh  a, [rSB]                                    ; $775c: $f0 $01
	db   $fc                                         ; $775e: $fc
	ld   hl, sp-$80                                  ; $775f: $f8 $80
	ld   a, b                                        ; $7761: $78
	ld   [bc], a                                     ; $7762: $02
	ld   a, [hl]                                     ; $7763: $7e
	ld   a, h                                        ; $7764: $7c
	ccf                                              ; $7765: $3f
	add  c                                           ; $7766: $81
	ld   a, $00                                      ; $7767: $3e $00
	rst  $38                                         ; $7769: $ff
	sub  e                                           ; $776a: $93
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	ld   bc, $0081                                   ; $776d: $01 $81 $00
	inc  bc                                          ; $7770: $03
	ld   [bc], a                                     ; $7771: $02
	nop                                              ; $7772: $00
	inc  b                                           ; $7773: $04
	nop                                              ; $7774: $00
	add  b                                           ; $7775: $80
	ld   bc, $0606                                   ; $7776: $01 $06 $06
	nop                                              ; $7779: $00
	inc  bc                                          ; $777a: $03
	ld   bc, $0307                                   ; $777b: $01 $07 $03
	rrca                                             ; $777e: $0f
	add  c                                           ; $777f: $81
	rlca                                             ; $7780: $07
	ld   [bc], a                                     ; $7781: $02
	rra                                              ; $7782: $1f
	rrca                                             ; $7783: $0f
	ccf                                              ; $7784: $3f
	add  c                                           ; $7785: $81
	rra                                              ; $7786: $1f
	ld   [bc], a                                     ; $7787: $02
	ld   a, a                                        ; $7788: $7f
	ccf                                              ; $7789: $3f
	rst  $38                                         ; $778a: $ff
	add  e                                           ; $778b: $83
	ld   a, a                                        ; $778c: $7f
	add  [hl]                                        ; $778d: $86
	rst  $38                                         ; $778e: $ff
	add  hl, de                                      ; $778f: $19
	rst  $20                                         ; $7790: $e7
	nop                                              ; $7791: $00
	add  b                                           ; $7792: $80
	nop                                              ; $7793: $00
	inc  c                                           ; $7794: $0c
	nop                                              ; $7795: $00
	ld   [bc], a                                     ; $7796: $02
	nop                                              ; $7797: $00
	db   $dd                                         ; $7798: $dd
	nop                                              ; $7799: $00
	ld   bc, $6f00                                   ; $779a: $01 $00 $6f
	nop                                              ; $779d: $00
	or   e                                           ; $779e: $b3
	nop                                              ; $779f: $00
	db   $dd                                         ; $77a0: $dd
	nop                                              ; $77a1: $00
	or   b                                           ; $77a2: $b0
	ld   bc, $01f1                                   ; $77a3: $01 $f1 $01
	dec  e                                           ; $77a6: $1d
	inc  bc                                          ; $77a7: $03
	ei                                               ; $77a8: $fb
	inc  bc                                          ; $77a9: $03
	add  b                                           ; $77aa: $80
	jp   $fb01                                       ; $77ab: $c3 $01 $fb


	db   $eb                                         ; $77ae: $eb
	add  b                                           ; $77af: $80
	ei                                               ; $77b0: $fb
	nop                                              ; $77b1: $00
	xor  $81                                         ; $77b2: $ee $81
	nop                                              ; $77b4: $00
	jr   jr_09b_77e7                                 ; $77b5: $18 $30

	nop                                              ; $77b7: $00
	ld   b, a                                        ; $77b8: $47
	nop                                              ; $77b9: $00
	ret  nz                                          ; $77ba: $c0

	nop                                              ; $77bb: $00
	rrca                                             ; $77bc: $0f
	nop                                              ; $77bd: $00
	ldh  [rP1], a                                    ; $77be: $e0 $00
	rlca                                             ; $77c0: $07
	nop                                              ; $77c1: $00
	rla                                              ; $77c2: $17
	nop                                              ; $77c3: $00
	add  l                                           ; $77c4: $85
	nop                                              ; $77c5: $00
	rrca                                             ; $77c6: $0f
	add  b                                           ; $77c7: $80

jr_09b_77c8:
	sbc  b                                           ; $77c8: $98
	nop                                              ; $77c9: $00
	daa                                              ; $77ca: $27
	ret  nz                                          ; $77cb: $c0

	set  0, e                                        ; $77cc: $cb $c3
	rst  JumpTable                                         ; $77ce: $df
	add  b                                           ; $77cf: $80
	rst  $20                                         ; $77d0: $e7
	ld   bc, $8f77                                   ; $77d1: $01 $77 $8f
	rst  $38                                         ; $77d4: $ff
	nop                                              ; $77d5: $00
	call c, Boot                                     ; $77d6: $dc $00 $01
	rra                                              ; $77d9: $1f
	rrca                                             ; $77da: $0f
	add  b                                           ; $77db: $80
	ld   l, h                                        ; $77dc: $6c
	add  c                                           ; $77dd: $81
	rst  $28                                         ; $77de: $ef
	add  b                                           ; $77df: $80
	rst  $30                                         ; $77e0: $f7
	add  b                                           ; $77e1: $80
	rst  ToBoot                                         ; $77e2: $c7
	ld   [$d717], sp                                 ; $77e3: $08 $17 $d7
	inc  h                                           ; $77e6: $24

jr_09b_77e7:
	db   $e4                                         ; $77e7: $e4
	ret  nc                                          ; $77e8: $d0

	pop  de                                          ; $77e9: $d1
	add  h                                           ; $77ea: $84
	ld   b, $78                                      ; $77eb: $06 $78
	add  b                                           ; $77ed: $80
	jr   @+$0c                                       ; $77ee: $18 $0a

	ld   sp, hl                                      ; $77f0: $f9
	ld   hl, sp-$01                                  ; $77f1: $f8 $ff
	ldh  a, [$f6]                                    ; $77f3: $f0 $f6
	ld   bc, $030d                                   ; $77f5: $01 $0d $03
	inc  de                                          ; $77f8: $13
	ld   c, $11                                      ; $77f9: $0e $11
	add  b                                           ; $77fb: $80
	xor  l                                           ; $77fc: $ad
	dec  b                                           ; $77fd: $05
	ld   e, d                                        ; $77fe: $5a
	ld   e, e                                        ; $77ff: $5b
	or   h                                           ; $7800: $b4
	or   [hl]                                        ; $7801: $b6
	add  sp, -$14                                    ; $7802: $e8 $ec
	add  b                                           ; $7804: $80
	db   $d3                                         ; $7805: $d3
	ld   bc, $beb6                                   ; $7806: $01 $b6 $be
	add  b                                           ; $7809: $80
	ld   h, h                                        ; $780a: $64
	inc  bc                                          ; $780b: $03
	db   $ed                                         ; $780c: $ed
	sbc  l                                           ; $780d: $9d
	jr   c, jr_09b_77c8                              ; $780e: $38 $b8

	add  b                                           ; $7810: $80
	ld   h, e                                        ; $7811: $63
	inc  bc                                          ; $7812: $03
	rlca                                             ; $7813: $07
	ld   b, $1e                                      ; $7814: $06 $1e
	dec  e                                           ; $7816: $1d
	add  b                                           ; $7817: $80
	dec  a                                           ; $7818: $3d
	dec  b                                           ; $7819: $05
	ld   a, l                                        ; $781a: $7d
	ld   a, e                                        ; $781b: $7b
	ld   sp, hl                                      ; $781c: $f9
	push af                                          ; $781d: $f5
	di                                               ; $781e: $f3
	call nz, Call_09b_4780                           ; $781f: $c4 $80 $47
	add  b                                           ; $7822: $80
	reti                                             ; $7823: $d9


	ld   [bc], a                                     ; $7824: $02
	rst  JumpTable                                         ; $7825: $df
	ld   sp, hl                                      ; $7826: $f9
	jp   hl                                          ; $7827: $e9


	add  b                                           ; $7828: $80
	inc  l                                           ; $7829: $2c
	rlca                                             ; $782a: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $782b: $cf
	rrca                                             ; $782c: $0f
	ccf                                              ; $782d: $3f
	rst  ToBoot                                         ; $782e: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $782f: $cf
	pop  hl                                          ; $7830: $e1
	add  hl, de                                      ; $7831: $19
	ei                                               ; $7832: $fb
	add  b                                           ; $7833: $80
	ld   a, [$fb81]                                  ; $7834: $fa $81 $fb
	add  b                                           ; $7837: $80
	pop  af                                          ; $7838: $f1
	add  hl, bc                                      ; $7839: $09
	or   $76                                         ; $783a: $f6 $76
	ld   [hl], a                                     ; $783c: $77
	or   h                                           ; $783d: $b4
	xor  h                                           ; $783e: $ac
	rst  $28                                         ; $783f: $ef
	rst  ToBoot                                         ; $7840: $c7
	add  hl, sp                                      ; $7841: $39
	ld   b, b                                        ; $7842: $40
	ld   b, c                                        ; $7843: $41
	add  b                                           ; $7844: $80
	nop                                              ; $7845: $00
	add  b                                           ; $7846: $80
	rst  ToBoot                                         ; $7847: $c7
	add  hl, bc                                      ; $7848: $09
	db   $e3                                         ; $7849: $e3
	inc  hl                                          ; $784a: $23
	add  hl, sp                                      ; $784b: $39
	reti                                             ; $784c: $d9


	inc  e                                           ; $784d: $1c
	inc  l                                           ; $784e: $2c
	adc  a                                           ; $784f: $8f
	sub  a                                           ; $7850: $97
	rlca                                             ; $7851: $07
	ldh  a, [$80]                                    ; $7852: $f0 $80
	add  hl, hl                                      ; $7854: $29
	rla                                              ; $7855: $17
	halt                                             ; $7856: $76
	or   $3b                                         ; $7857: $f6 $3b
	ld   a, e                                        ; $7859: $7b
	sbc  l                                           ; $785a: $9d
	cp   l                                           ; $785b: $bd
	adc  $cc                                         ; $785c: $ce $cc
	call Call_09b_66de                               ; $785e: $cd $de $66
	ld   h, a                                        ; $7861: $67
	rst  $20                                         ; $7862: $e7
	inc  b                                           ; $7863: $04
	nop                                              ; $7864: $00
	rra                                              ; $7865: $1f
	ret  nz                                          ; $7866: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7867: $cf
	jr   nc, jr_09b_789d                             ; $7868: $30 $33

	ret  nz                                          ; $786a: $c0

	pop  bc                                          ; $786b: $c1
	db   $fc                                         ; $786c: $fc
	ld   a, l                                        ; $786d: $7d
	add  b                                           ; $786e: $80
	ld   b, c                                        ; $786f: $41
	add  hl, bc                                      ; $7870: $09
	ld   a, c                                        ; $7871: $79
	add  hl, sp                                      ; $7872: $39
	ld   h, $2e                                      ; $7873: $26 $2e
	ld   [bc], a                                     ; $7875: $02
	ldh  a, [c]                                      ; $7876: $f2
	nop                                              ; $7877: $00
	ret  z                                           ; $7878: $c8

	rlca                                             ; $7879: $07
	rst  $30                                         ; $787a: $f7
	add  b                                           ; $787b: $80
	ld   c, $08                                      ; $787c: $0e $08
	jp   hl                                          ; $787e: $e9


	add  hl, bc                                      ; $787f: $09
	rlca                                             ; $7880: $07
	ld   h, a                                        ; $7881: $67
	ld   hl, $a8a7                                   ; $7882: $21 $a7 $a8
	ld   d, c                                        ; $7885: $51
	rst  $38                                         ; $7886: $ff
	add  b                                           ; $7887: $80
	rst  JumpTable                                         ; $7888: $df
	add  b                                           ; $7889: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $788a: $cf
	add  b                                           ; $788b: $80
	rst  $28                                         ; $788c: $ef
	add  b                                           ; $788d: $80
	rst  $20                                         ; $788e: $e7
	add  b                                           ; $788f: $80
	and  $82                                         ; $7890: $e6 $82
	ldh  a, [c]                                      ; $7892: $f2
	nop                                              ; $7893: $00
	ld   hl, sp-$7f                                  ; $7894: $f8 $81
	ei                                               ; $7896: $fb
	nop                                              ; $7897: $00
	rst  $38                                         ; $7898: $ff
	add  d                                           ; $7899: $82
	db   $fd                                         ; $789a: $fd
	add  b                                           ; $789b: $80
	db   $fc                                         ; $789c: $fc

jr_09b_789d:
	ld   bc, $f9fd                                   ; $789d: $01 $fd $f9
	add  c                                           ; $78a0: $81
	ei                                               ; $78a1: $fb
	inc  b                                           ; $78a2: $04
	dec  de                                          ; $78a3: $1b
	add  h                                           ; $78a4: $84
	db   $fd                                         ; $78a5: $fd
	sbc  c                                           ; $78a6: $99
	ld   sp, hl                                      ; $78a7: $f9
	add  b                                           ; $78a8: $80
	push af                                          ; $78a9: $f5
	ld   bc, $cfcd                                   ; $78aa: $01 $cd $cf
	add  b                                           ; $78ad: $80
	ld   a, [de]                                     ; $78ae: $1a
	rlca                                             ; $78af: $07
	jp   c, $9afa                                    ; $78b0: $da $fa $9a

	sbc  [hl]                                        ; $78b3: $9e
	sub  [hl]                                        ; $78b4: $96
	or   b                                           ; $78b5: $b0
	ld   b, $67                                      ; $78b6: $06 $67
	add  b                                           ; $78b8: $80
	ld   l, e                                        ; $78b9: $6b
	add  b                                           ; $78ba: $80
	ld   l, l                                        ; $78bb: $6d
	ld   bc, $7e6c                                   ; $78bc: $01 $6c $7e
	add  b                                           ; $78bf: $80
	inc  [hl]                                        ; $78c0: $34
	ld   b, $14                                      ; $78c1: $06 $14
	rla                                              ; $78c3: $17
	ld   d, $1e                                      ; $78c4: $16 $1e
	ld   a, [bc]                                     ; $78c6: $0a
	call nc, $8057                                   ; $78c7: $d4 $57 $80
	or   a                                           ; $78ca: $b7
	add  b                                           ; $78cb: $80
	rst  $30                                         ; $78cc: $f7
	nop                                              ; $78cd: $00
	rst  $38                                         ; $78ce: $ff
	add  b                                           ; $78cf: $80
	ld   l, a                                        ; $78d0: $6f
	add  b                                           ; $78d1: $80
	adc  a                                           ; $78d2: $8f
	ld   bc, $f7ef                                   ; $78d3: $01 $ef $f7
	add  c                                           ; $78d6: $81
	ld   h, a                                        ; $78d7: $67
	ld   bc, $fe8e                                   ; $78d8: $01 $8e $fe
	add  [hl]                                        ; $78db: $86
	rst  $38                                         ; $78dc: $ff
	add  d                                           ; $78dd: $82
	db   $dd                                         ; $78de: $dd
	add  b                                           ; $78df: $80
	ret                                              ; $78e0: $c9


	add  b                                           ; $78e1: $80
	ldh  a, [c]                                      ; $78e2: $f2
	add  b                                           ; $78e3: $80
	ldh  a, [$82]                                    ; $78e4: $f0 $82
	or   b                                           ; $78e6: $b0
	add  b                                           ; $78e7: $80
	and  c                                           ; $78e8: $a1
	add  d                                           ; $78e9: $82
	add  c                                           ; $78ea: $81
	add  b                                           ; $78eb: $80
	add  b                                           ; $78ec: $80
	nop                                              ; $78ed: $00
	ldh  a, [$81]                                    ; $78ee: $f0 $81
	rst  $30                                         ; $78f0: $f7
	inc  bc                                          ; $78f1: $03
	cp   $f8                                         ; $78f2: $fe $f8
	db   $fd                                         ; $78f4: $fd
	db   $fc                                         ; $78f5: $fc
	add  [hl]                                        ; $78f6: $86
	cp   $00                                         ; $78f7: $fe $00
	rst  ToBoot                                         ; $78f9: $c7
	add  d                                           ; $78fa: $82
	scf                                              ; $78fb: $37
	ld   [bc], a                                     ; $78fc: $02
	dec  [hl]                                        ; $78fd: $35
	or   l                                           ; $78fe: $b5
	inc  [hl]                                        ; $78ff: $34
	add  b                                           ; $7900: $80
	ld   [hl], h                                     ; $7901: $74
	dec  b                                           ; $7902: $05
	ld   [hl], b                                     ; $7903: $70
	ld   [bc], a                                     ; $7904: $02
	ld   l, l                                        ; $7905: $6d
	ld   [$2c4b], sp                                 ; $7906: $08 $4b $2c
	add  b                                           ; $7909: $80
	cp   d                                           ; $790a: $ba
	add  b                                           ; $790b: $80
	cp   e                                           ; $790c: $bb
	nop                                              ; $790d: $00
	ld   a, e                                        ; $790e: $7b
	add  b                                           ; $790f: $80
	ld   h, e                                        ; $7910: $63
	add  c                                           ; $7911: $81
	inc  bc                                          ; $7912: $03
	dec  b                                           ; $7913: $05
	dec  bc                                          ; $7914: $0b
	db   $10                                         ; $7915: $10
	ld   l, a                                        ; $7916: $6f
	rrca                                             ; $7917: $0f
	rst  $38                                         ; $7918: $ff
	rlca                                             ; $7919: $07
	add  d                                           ; $791a: $82
	ld   [hl], e                                     ; $791b: $73
	nop                                              ; $791c: $00
	dec  sp                                          ; $791d: $3b
	add  b                                           ; $791e: $80
	inc  hl                                          ; $791f: $23
	ld   a, [bc]                                     ; $7920: $0a
	inc  bc                                          ; $7921: $03
	rst  $20                                         ; $7922: $e7
	rlca                                             ; $7923: $07
	ld   c, a                                        ; $7924: $4f
	rrca                                             ; $7925: $0f
	cpl                                              ; $7926: $2f
	rrca                                             ; $7927: $0f
	ld   l, a                                        ; $7928: $6f
	rrca                                             ; $7929: $0f
	jp   hl                                          ; $792a: $e9


	ret                                              ; $792b: $c9


	add  h                                           ; $792c: $84
	pop  hl                                          ; $792d: $e1
	add  b                                           ; $792e: $80
	db   $e3                                         ; $792f: $e3
	add  h                                           ; $7930: $84
	di                                               ; $7931: $f3
	nop                                              ; $7932: $00
	rst  $38                                         ; $7933: $ff
	add  a                                           ; $7934: $87
	nop                                              ; $7935: $00
	ld   b, $80                                      ; $7936: $06 $80
	nop                                              ; $7938: $00
	ld   h, b                                        ; $7939: $60
	jr   nz, jr_09b_7974                             ; $793a: $20 $38

	ld   c, b                                        ; $793c: $48
	or   b                                           ; $793d: $b0
	add  a                                           ; $793e: $87
	nop                                              ; $793f: $00
	ld   b, $01                                      ; $7940: $06 $01
	nop                                              ; $7942: $00
	ld   b, $04                                      ; $7943: $06 $04
	inc  e                                           ; $7945: $1c
	ld   [de], a                                     ; $7946: $12
	dec  c                                           ; $7947: $0d
	rst  $38                                         ; $7948: $ff
	nop                                              ; $7949: $00
	rst  $38                                         ; $794a: $ff
	nop                                              ; $794b: $00
	rst  $38                                         ; $794c: $ff
	nop                                              ; $794d: $00
	rst  $38                                         ; $794e: $ff
	nop                                              ; $794f: $00
	ld   sp, hl                                      ; $7950: $f9
	nop                                              ; $7951: $00
	ldh  a, [$c0]                                    ; $7952: $f0 $c0
	ldh  a, [$c0]                                    ; $7954: $f0 $c0
	di                                               ; $7956: $f3
	adc  a                                           ; $7957: $8f
	ret  z                                           ; $7958: $c8

	jr   nc, @+$01                                   ; $7959: $30 $ff

	add  e                                           ; $795b: $83
	db   $ed                                         ; $795c: $ed
	dec  e                                           ; $795d: $1d
	rst  ToBoot                                         ; $795e: $c7
	rlca                                             ; $795f: $07
	jp   $c003                                       ; $7960: $c3 $03 $c0


	nop                                              ; $7963: $00
	ldh  [rP1], a                                    ; $7964: $e0 $00
	ldh  [rP1], a                                    ; $7966: $e0 $00
	ldh  a, [$80]                                    ; $7968: $f0 $80
	ldh  a, [rP1]                                    ; $796a: $f0 $00
	ld   hl, sp-$80                                  ; $796c: $f8 $80
	ld   hl, sp-$80                                  ; $796e: $f8 $80
	db   $fc                                         ; $7970: $fc
	add  b                                           ; $7971: $80
	rlca                                             ; $7972: $07
	inc  b                                           ; $7973: $04

jr_09b_7974:
	dec  b                                           ; $7974: $05
	inc  b                                           ; $7975: $04
	ldh  a, [c]                                      ; $7976: $f2
	ldh  [c], a                                      ; $7977: $e2
	db   $ed                                         ; $7978: $ed
	add  hl, de                                      ; $7979: $19
	ret  nc                                          ; $797a: $d0

	and  $70                                         ; $797b: $e6 $70
	ld   e, b                                        ; $797d: $58
	nop                                              ; $797e: $00
	add  b                                           ; $797f: $80
	ldh  [$c0], a                                    ; $7980: $e0 $c0
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	ld   bc, $0000                                   ; $798a: $01 $00 $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7992: $cf
	rst  $38                                         ; $7993: $ff
	db   $e3                                         ; $7994: $e3
	ld   a, a                                        ; $7995: $7f
	ld   hl, sp+$1f                                  ; $7996: $f8 $1f
	ld   a, $07                                      ; $7998: $3e $07
	rst  JumpTable                                         ; $799a: $df
	jp   $050d                                       ; $799b: $c3 $0d $05


	ld   c, $07                                      ; $799e: $0e $07
	dec  b                                           ; $79a0: $05
	ld   b, $00                                      ; $79a1: $06 $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	ld   b, b                                        ; $79a6: $40
	nop                                              ; $79a7: $00
	ret  nc                                          ; $79a8: $d0

	nop                                              ; $79a9: $00
	ret  nc                                          ; $79aa: $d0

	db   $10                                         ; $79ab: $10
	and  b                                           ; $79ac: $a0
	jr   nz, jr_09b_79af                             ; $79ad: $20 $00

jr_09b_79af:
	nop                                              ; $79af: $00
	ld   bc, $ff01                                   ; $79b0: $01 $01 $ff
	rst  $38                                         ; $79b3: $ff
	db   $fc                                         ; $79b4: $fc
	rst  $38                                         ; $79b5: $ff
	inc  bc                                          ; $79b6: $03
	rst  $38                                         ; $79b7: $ff
	inc  e                                           ; $79b8: $1c
	db   $fc                                         ; $79b9: $fc
	ld   hl, sp-$08                                  ; $79ba: $f8 $f8
	ret  nc                                          ; $79bc: $d0

	ld   [hl], b                                     ; $79bd: $70
	ldh  a, [$30]                                    ; $79be: $f0 $30
	ldh  [rAUD4LEN], a                               ; $79c0: $e0 $20
	ldh  [rAUD4LEN], a                               ; $79c2: $e0 $20
	ldh  [rAUD4LEN], a                               ; $79c4: $e0 $20
	ret  nz                                          ; $79c6: $c0

	ld   b, b                                        ; $79c7: $40
	ret  nz                                          ; $79c8: $c0

	ld   b, b                                        ; $79c9: $40
	ret  nz                                          ; $79ca: $c0

	ld   b, b                                        ; $79cb: $40
	add  b                                           ; $79cc: $80
	add  b                                           ; $79cd: $80
	add  b                                           ; $79ce: $80
	add  b                                           ; $79cf: $80
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	ldh  a, [$c0]                                    ; $79d2: $f0 $c0
	ldh  a, [$c0]                                    ; $79d4: $f0 $c0
	di                                               ; $79d6: $f3
	adc  a                                           ; $79d7: $8f
	ret  z                                           ; $79d8: $c8

	jr   nc, @-$06                                   ; $79d9: $30 $f8

	add  b                                           ; $79db: $80
	rst  $38                                         ; $79dc: $ff
	inc  bc                                          ; $79dd: $03
	call $c31f                                       ; $79de: $cd $1f $c3
	inc  bc                                          ; $79e1: $03
	rlca                                             ; $79e2: $07
	inc  b                                           ; $79e3: $04
	dec  b                                           ; $79e4: $05
	inc  b                                           ; $79e5: $04
	ldh  a, [c]                                      ; $79e6: $f2
	ldh  [c], a                                      ; $79e7: $e2
	ld   l, l                                        ; $79e8: $6d
	add  hl, de                                      ; $79e9: $19
	nop                                              ; $79ea: $00
	ld   b, $c0                                      ; $79eb: $06 $c0
	ldh  [rSVBK], a                                  ; $79ed: $e0 $70
	sbc  b                                           ; $79ef: $98
	ldh  [$c0], a                                    ; $79f0: $e0 $c0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f2: $cf
	rst  $38                                         ; $79f3: $ff
	db   $e3                                         ; $79f4: $e3
	ld   a, a                                        ; $79f5: $7f
	ld   hl, sp+$1f                                  ; $79f6: $f8 $1f
	ld   a, $07                                      ; $79f8: $3e $07
	rst  JumpTable                                         ; $79fa: $df
	jp   $070f                                       ; $79fb: $c3 $0f $07


	ld   c, $07                                      ; $79fe: $0e $07
	dec  b                                           ; $7a00: $05
	ld   b, $ff                                      ; $7a01: $06 $ff
	rst  $38                                         ; $7a03: $ff
	db   $fc                                         ; $7a04: $fc
	rst  $38                                         ; $7a05: $ff
	inc  bc                                          ; $7a06: $03
	rst  $38                                         ; $7a07: $ff
	inc  e                                           ; $7a08: $1c
	db   $fc                                         ; $7a09: $fc
	ld   hl, sp-$08                                  ; $7a0a: $f8 $f8
	ret  nc                                          ; $7a0c: $d0

	ldh  a, [$b0]                                    ; $7a0d: $f0 $b0
	ld   [hl], b                                     ; $7a0f: $70
	ldh  [rAUD4LEN], a                               ; $7a10: $e0 $20
	ldh  a, [$c0]                                    ; $7a12: $f0 $c0
	ldh  a, [$c0]                                    ; $7a14: $f0 $c0
	di                                               ; $7a16: $f3
	adc  a                                           ; $7a17: $8f
	ret  z                                           ; $7a18: $c8

	jr   nc, @-$06                                   ; $7a19: $30 $f8

	add  b                                           ; $7a1b: $80
	ld   hl, sp+$00                                  ; $7a1c: $f8 $00
	jp   z, $c71c                                    ; $7a1e: $ca $1c $c7

	inc  bc                                          ; $7a21: $03
	rlca                                             ; $7a22: $07
	inc  b                                           ; $7a23: $04
	dec  b                                           ; $7a24: $05
	inc  b                                           ; $7a25: $04
	ldh  a, [c]                                      ; $7a26: $f2
	ldh  [c], a                                      ; $7a27: $e2
	ld   l, l                                        ; $7a28: $6d
	add  hl, de                                      ; $7a29: $19
	nop                                              ; $7a2a: $00
	ld   b, $00                                      ; $7a2b: $06 $00
	nop                                              ; $7a2d: $00
	jr   nc, jr_09b_7a48                             ; $7a2e: $30 $18

	ldh  a, [$e0]                                    ; $7a30: $f0 $e0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a32: $cf
	rst  $38                                         ; $7a33: $ff
	db   $e3                                         ; $7a34: $e3
	ld   a, a                                        ; $7a35: $7f
	ld   hl, sp+$1f                                  ; $7a36: $f8 $1f
	ld   a, $07                                      ; $7a38: $3e $07
	rst  JumpTable                                         ; $7a3a: $df
	jp   $0000                                      ; $7a3b: $c3 $00 $00


	inc  b                                           ; $7a3e: $04

jr_09b_7a3f:
	inc  b                                           ; $7a3f: $04
	rlca                                             ; $7a40: $07
	inc  bc                                          ; $7a41: $03
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	db   $fc                                         ; $7a44: $fc
	rst  $38                                         ; $7a45: $ff
	inc  bc                                          ; $7a46: $03
	rst  $38                                         ; $7a47: $ff

jr_09b_7a48:
	inc  e                                           ; $7a48: $1c
	db   $fc                                         ; $7a49: $fc
	ld   hl, sp-$08                                  ; $7a4a: $f8 $f8
	ret  nc                                          ; $7a4c: $d0

	jr   nc, jr_09b_7a3f                             ; $7a4d: $30 $f0

	or   b                                           ; $7a4f: $b0
	ldh  [rAUD4LEN], a                               ; $7a50: $e0 $20
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	inc  h                                           ; $7a60: $24
	inc  [hl]                                        ; $7a61: $34
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	jr   jr_09b_7a66                                 ; $7a64: $18 $00

jr_09b_7a66:
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	inc  a                                           ; $7a80: $3c
	inc  d                                           ; $7a81: $14
	db   $10                                         ; $7a82: $10
	inc  h                                           ; $7a83: $24
	jr   jr_09b_7a9e                                 ; $7a84: $18 $18

	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	ldh  a, [$c0]                                    ; $7a92: $f0 $c0

jr_09b_7a94:
	ldh  a, [$c0]                                    ; $7a94: $f0 $c0
	di                                               ; $7a96: $f3
	adc  a                                           ; $7a97: $8f
	ret  z                                           ; $7a98: $c8

	jr   nc, jr_09b_7a94                             ; $7a99: $30 $f9

	add  b                                           ; $7a9b: $80
	db   $fd                                         ; $7a9c: $fd
	inc  bc                                          ; $7a9d: $03

jr_09b_7a9e:
	add  $1f                                         ; $7a9e: $c6 $1f
	ret  nz                                          ; $7aa0: $c0

	nop                                              ; $7aa1: $00
	rlca                                             ; $7aa2: $07
	inc  b                                           ; $7aa3: $04
	dec  b                                           ; $7aa4: $05
	inc  b                                           ; $7aa5: $04
	ldh  a, [c]                                      ; $7aa6: $f2
	ldh  [c], a                                      ; $7aa7: $e2
	add  hl, hl                                      ; $7aa8: $29
	dec  e                                           ; $7aa9: $1d
	call nz, $e002                                   ; $7aaa: $c4 $02 $e0
	ldh  a, [$b0]                                    ; $7aad: $f0 $b0
	ld   [rRAMG], sp                                 ; $7aaf: $08 $00 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab2: $cf
	rst  $38                                         ; $7ab3: $ff
	db   $e3                                         ; $7ab4: $e3
	ld   a, a                                        ; $7ab5: $7f
	ld   hl, sp+$1f                                  ; $7ab6: $f8 $1f
	ld   a, $07                                      ; $7ab8: $3e $07
	rst  JumpTable                                         ; $7aba: $df
	pop  bc                                          ; $7abb: $c1
	inc  bc                                          ; $7abc: $03
	inc  bc                                          ; $7abd: $03
	inc  b                                           ; $7abe: $04
	inc  b                                           ; $7abf: $04
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	ld   h, h                                        ; $7ad0: $64
	inc  [hl]                                        ; $7ad1: $34
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	ret  c                                           ; $7ae0: $d8

	ld   h, h                                        ; $7ae1: $64
	ld   [$5840], sp                                 ; $7ae2: $08 $40 $58
	nop                                              ; $7ae5: $00
	jr   nz, jr_09b_7b18                             ; $7ae6: $20 $30

	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	rlca                                             ; $7af2: $07
	inc  b                                           ; $7af3: $04
	dec  b                                           ; $7af4: $05
	inc  b                                           ; $7af5: $04
	ldh  [c], a                                      ; $7af6: $e2
	jp   nz, $39dd                                   ; $7af7: $c2 $dd $39

	call c, Call_09b_70e6                            ; $7afa: $dc $e6 $70
	ld   e, b                                        ; $7afd: $58
	nop                                              ; $7afe: $00
	add  b                                           ; $7aff: $80
	ldh  [$c0], a                                    ; $7b00: $e0 $c0
	rlca                                             ; $7b02: $07
	inc  b                                           ; $7b03: $04
	dec  b                                           ; $7b04: $05
	inc  b                                           ; $7b05: $04
	ldh  [c], a                                      ; $7b06: $e2
	jp   nz, $39dd                                   ; $7b07: $c2 $dd $39

	inc  e                                           ; $7b0a: $1c
	ld   b, $c0                                      ; $7b0b: $06 $c0
	ldh  [rSVBK], a                                  ; $7b0d: $e0 $70
	sbc  b                                           ; $7b0f: $98
	ldh  [$c0], a                                    ; $7b10: $e0 $c0
	rst  $38                                         ; $7b12: $ff
	rst  $38                                         ; $7b13: $ff
	db   $fc                                         ; $7b14: $fc
	rst  $38                                         ; $7b15: $ff
	inc  bc                                          ; $7b16: $03
	rst  $38                                         ; $7b17: $ff

jr_09b_7b18:
	inc  e                                           ; $7b18: $1c
	db   $fc                                         ; $7b19: $fc
	ld   hl, sp-$08                                  ; $7b1a: $f8 $f8
	ld   d, b                                        ; $7b1c: $50
	ldh  a, [$b0]                                    ; $7b1d: $f0 $b0
	ld   [hl], b                                     ; $7b1f: $70
	ldh  [rAUD4LEN], a                               ; $7b20: $e0 $20
	rlca                                             ; $7b22: $07
	inc  b                                           ; $7b23: $04
	dec  b                                           ; $7b24: $05
	inc  b                                           ; $7b25: $04
	ldh  [c], a                                      ; $7b26: $e2
	jp   nz, $39dd                                   ; $7b27: $c2 $dd $39

	inc  e                                           ; $7b2a: $1c
	ld   b, $00                                      ; $7b2b: $06 $00
	nop                                              ; $7b2d: $00
	jr   nc, jr_09b_7b48                             ; $7b2e: $30 $18

	ldh  a, [$e0]                                    ; $7b30: $f0 $e0
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	inc  l                                           ; $7b40: $2c
	inc  [hl]                                        ; $7b41: $34
	ldh  a, [$c0]                                    ; $7b42: $f0 $c0
	ldh  a, [$c0]                                    ; $7b44: $f0 $c0

jr_09b_7b46:
	di                                               ; $7b46: $f3
	adc  a                                           ; $7b47: $8f

jr_09b_7b48:
	ret  z                                           ; $7b48: $c8

	jr   nc, jr_09b_7b46                             ; $7b49: $30 $fb

	add  a                                           ; $7b4b: $87
	rst  $28                                         ; $7b4c: $ef
	rra                                              ; $7b4d: $1f
	push bc                                          ; $7b4e: $c5
	dec  b                                           ; $7b4f: $05
	jp   $0703                                       ; $7b50: $c3 $03 $07


	inc  b                                           ; $7b53: $04
	dec  c                                           ; $7b54: $0d
	inc  b                                           ; $7b55: $04
	ldh  [c], a                                      ; $7b56: $e2
	ld   a, [$0131]                                  ; $7b57: $fa $31 $01
	ret  nc                                          ; $7b5a: $d0

	ldh  [$b8], a                                    ; $7b5b: $e0 $b8
	ldh  a, [rP1]                                    ; $7b5d: $f0 $00
	add  b                                           ; $7b5f: $80
	and  b                                           ; $7b60: $a0

jr_09b_7b61:
	ret  nz                                          ; $7b61: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b62: $cf
	rst  $38                                         ; $7b63: $ff
	db   $e3                                         ; $7b64: $e3
	ld   a, a                                        ; $7b65: $7f
	ld   hl, sp+$1f                                  ; $7b66: $f8 $1f
	ld   a, $07                                      ; $7b68: $3e $07
	rst  JumpTable                                         ; $7b6a: $df
	jp   $070f                                       ; $7b6b: $c3 $0f $07


	ld   a, [bc]                                     ; $7b6e: $0a
	inc  bc                                          ; $7b6f: $03
	dec  b                                           ; $7b70: $05
	ld   b, $ff                                      ; $7b71: $06 $ff

jr_09b_7b73:
	rst  $38                                         ; $7b73: $ff
	db   $fc                                         ; $7b74: $fc
	rst  $38                                         ; $7b75: $ff
	inc  bc                                          ; $7b76: $03
	rst  $38                                         ; $7b77: $ff
	inc  e                                           ; $7b78: $1c
	db   $fc                                         ; $7b79: $fc
	ld   hl, sp-$08                                  ; $7b7a: $f8 $f8
	ld   d, b                                        ; $7b7c: $50
	ldh  a, [$f0]                                    ; $7b7d: $f0 $f0
	jr   nc, jr_09b_7b61                             ; $7b7f: $30 $e0

	jr   nz, jr_09b_7b73                             ; $7b81: $20 $f0

jr_09b_7b83:
	ret  nz                                          ; $7b83: $c0

	ldh  a, [$c0]                                    ; $7b84: $f0 $c0
	di                                               ; $7b86: $f3
	adc  a                                           ; $7b87: $8f
	ret  z                                           ; $7b88: $c8

	jr   nc, jr_09b_7b83                             ; $7b89: $30 $f8

	add  b                                           ; $7b8b: $80
	ei                                               ; $7b8c: $fb
	rlca                                             ; $7b8d: $07
	call $c31f                                       ; $7b8e: $cd $1f $c3
	inc  bc                                          ; $7b91: $03
	rlca                                             ; $7b92: $07
	inc  b                                           ; $7b93: $04
	dec  c                                           ; $7b94: $0d
	inc  b                                           ; $7b95: $04
	ldh  [c], a                                      ; $7b96: $e2
	ld   a, [$0101]                                  ; $7b97: $fa $01 $01
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	ret  nz                                          ; $7b9c: $c0

	ldh  [rSVBK], a                                  ; $7b9d: $e0 $70
	sbc  b                                           ; $7b9f: $98
	ldh  [$c0], a                                    ; $7ba0: $e0 $c0
	ldh  a, [$c0]                                    ; $7ba2: $f0 $c0
	ldh  a, [$c0]                                    ; $7ba4: $f0 $c0
	di                                               ; $7ba6: $f3
	adc  a                                           ; $7ba7: $8f
	ret  z                                           ; $7ba8: $c8

	jr   nc, @-$06                                   ; $7ba9: $30 $f8

	add  b                                           ; $7bab: $80
	ld   hl, sp+$00                                  ; $7bac: $f8 $00
	jp   z, $c31c                                    ; $7bae: $ca $1c $c3

jr_09b_7bb1:
	rlca                                             ; $7bb1: $07
	rlca                                             ; $7bb2: $07
	inc  b                                           ; $7bb3: $04
	dec  c                                           ; $7bb4: $0d

jr_09b_7bb5:
	inc  b                                           ; $7bb5: $04
	ldh  [c], a                                      ; $7bb6: $e2
	ld   a, [$0101]                                  ; $7bb7: $fa $01 $01
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	db   $10                                         ; $7bbe: $10
	jr   c, jr_09b_7bb1                              ; $7bbf: $38 $f0

	ldh  [rAUD4LEN], a                               ; $7bc1: $e0 $20
	nop                                              ; $7bc3: $00
	jr   jr_09b_7bc6                                 ; $7bc4: $18 $00

jr_09b_7bc6:
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	jr   c, @+$16                                    ; $7be0: $38 $14

	jr   nz, jr_09b_7c08                             ; $7be2: $20 $24

	jr   @+$1a                                       ; $7be4: $18 $18

	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	ldh  a, [$c0]                                    ; $7bf2: $f0 $c0
	push af                                          ; $7bf4: $f5
	jp   $8cfa                                       ; $7bf5: $c3 $fa $8c


	ret  nz                                          ; $7bf8: $c0

	ld   sp, $83f3                                   ; $7bf9: $31 $f3 $83
	db   $e4                                         ; $7bfc: $e4
	ld   b, $cc                                      ; $7bfd: $06 $cc
	dec  c                                           ; $7bff: $0d
	pop  bc                                          ; $7c00: $c1
	dec  b                                           ; $7c01: $05
	ret  nz                                          ; $7c02: $c0

	nop                                              ; $7c03: $00
	pop  hl                                          ; $7c04: $e1
	ld   bc, $00e0                                   ; $7c05: $01 $e0 $00

jr_09b_7c08:
	ldh  a, [$80]                                    ; $7c08: $f0 $80
	ldh  a, [rP1]                                    ; $7c0a: $f0 $00
	ld   hl, sp-$80                                  ; $7c0c: $f8 $80
	ld   hl, sp-$80                                  ; $7c0e: $f8 $80
	db   $fc                                         ; $7c10: $fc
	add  b                                           ; $7c11: $80
	rlca                                             ; $7c12: $07
	inc  b                                           ; $7c13: $04
	db   $ed                                         ; $7c14: $ed
	db   $f4                                         ; $7c15: $f4
	ld   d, $0a                                      ; $7c16: $16 $0a
	db   $ed                                         ; $7c18: $ed
	pop  hl                                          ; $7c19: $e1
	inc  [hl]                                        ; $7c1a: $34
	jr   nc, jr_09b_7bb5                             ; $7c1b: $30 $98

	sub  b                                           ; $7c1d: $90
	add  b                                           ; $7c1e: $80
	add  b                                           ; $7c1f: $80
	add  b                                           ; $7c20: $80
	add  b                                           ; $7c21: $80
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	ret  nz                                          ; $7c24: $c0

	add  b                                           ; $7c25: $80
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	ld   bc, $0000                                   ; $7c2a: $01 $00 $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c32: $cf
	rst  $38                                         ; $7c33: $ff
	db   $e3                                         ; $7c34: $e3
	ld   a, a                                        ; $7c35: $7f
	ld   hl, sp+$1f                                  ; $7c36: $f8 $1f
	ld   a, $07                                      ; $7c38: $3e $07
	call $0ac7                                       ; $7c3a: $cd $c7 $0a
	ld   a, [bc]                                     ; $7c3d: $0a
	ld   [bc], a                                     ; $7c3e: $02
	ld   b, $06                                      ; $7c3f: $06 $06
	ld   b, $00                                      ; $7c41: $06 $00
	nop                                              ; $7c43: $00
	ld   bc, $4003                                   ; $7c44: $01 $03 $40
	nop                                              ; $7c47: $00
	ret  nc                                          ; $7c48: $d0

	nop                                              ; $7c49: $00
	ret  nc                                          ; $7c4a: $d0

jr_09b_7c4b:
	db   $10                                         ; $7c4b: $10
	and  b                                           ; $7c4c: $a0
	jr   nz, jr_09b_7c4f                             ; $7c4d: $20 $00

jr_09b_7c4f:
	nop                                              ; $7c4f: $00
	ld   bc, $f001                                   ; $7c50: $01 $01 $f0
	ret  nz                                          ; $7c53: $c0

	push af                                          ; $7c54: $f5
	jp   $8cfa                                       ; $7c55: $c3 $fa $8c


	ret  nz                                          ; $7c58: $c0

	jr   nc, jr_09b_7c4b                             ; $7c59: $30 $f0

	add  b                                           ; $7c5b: $80
	pop  hl                                          ; $7c5c: $e1
	inc  bc                                          ; $7c5d: $03
	add  $07                                         ; $7c5e: $c6 $07
	call $c00d                                       ; $7c60: $cd $0d $c0
	dec  b                                           ; $7c63: $05
	pop  hl                                          ; $7c64: $e1
	ld   bc, $00e0                                   ; $7c65: $01 $e0 $00
	ldh  a, [$80]                                    ; $7c68: $f0 $80
	ldh  a, [rP1]                                    ; $7c6a: $f0 $00
	ld   hl, sp-$80                                  ; $7c6c: $f8 $80
	ld   hl, sp-$80                                  ; $7c6e: $f8 $80
	db   $fc                                         ; $7c70: $fc
	add  b                                           ; $7c71: $80
	rlca                                             ; $7c72: $07
	inc  b                                           ; $7c73: $04
	db   $ed                                         ; $7c74: $ed
	db   $f4                                         ; $7c75: $f4
	ld   d, $0a                                      ; $7c76: $16 $0a
	dec  c                                           ; $7c78: $0d
	ld   bc, $0004                                   ; $7c79: $01 $04 $00
	ret  z                                           ; $7c7c: $c8

	ret  nz                                          ; $7c7d: $c0

	ldh  a, [$f0]                                    ; $7c7e: $f0 $f0
	add  b                                           ; $7c80: $80
	add  b                                           ; $7c81: $80
	nop                                              ; $7c82: $00
	add  b                                           ; $7c83: $80
	ret  nz                                          ; $7c84: $c0

	add  b                                           ; $7c85: $80
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	ld   bc, $0000                                   ; $7c8a: $01 $00 $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c92: $cf
	rst  $38                                         ; $7c93: $ff
	db   $e3                                         ; $7c94: $e3
	ld   a, a                                        ; $7c95: $7f
	ld   hl, sp+$1f                                  ; $7c96: $f8 $1f
	ld   a, $07                                      ; $7c98: $3e $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c9a: $cf
	pop  bc                                          ; $7c9b: $c1
	rlca                                             ; $7c9c: $07
	rlca                                             ; $7c9d: $07
	ld   a, [bc]                                     ; $7c9e: $0a
	ld   c, $06                                      ; $7c9f: $0e $06
	ld   b, $00                                      ; $7ca1: $06 $00
	ld   b, $01                                      ; $7ca3: $06 $01
	inc  bc                                          ; $7ca5: $03
	ld   b, b                                        ; $7ca6: $40
	nop                                              ; $7ca7: $00
	ret  nc                                          ; $7ca8: $d0

	nop                                              ; $7ca9: $00
	ret  nc                                          ; $7caa: $d0

jr_09b_7cab:
	db   $10                                         ; $7cab: $10
	and  b                                           ; $7cac: $a0
	jr   nz, jr_09b_7caf                             ; $7cad: $20 $00

jr_09b_7caf:
	nop                                              ; $7caf: $00
	ld   bc, $f001                                   ; $7cb0: $01 $01 $f0
	ret  nz                                          ; $7cb3: $c0

	push af                                          ; $7cb4: $f5
	jp   $8cfa                                       ; $7cb5: $c3 $fa $8c


	ret  nz                                          ; $7cb8: $c0

	jr   nc, jr_09b_7cab                             ; $7cb9: $30 $f0

	add  b                                           ; $7cbb: $80
	ldh  [rP1], a                                    ; $7cbc: $e0 $00
	ret  nz                                          ; $7cbe: $c0

	nop                                              ; $7cbf: $00
	call z, $c30c                                    ; $7cc0: $cc $0c $c3
	rlca                                             ; $7cc3: $07
	ldh  [rP1], a                                    ; $7cc4: $e0 $00
	ldh  [rP1], a                                    ; $7cc6: $e0 $00
	ldh  a, [$80]                                    ; $7cc8: $f0 $80
	ldh  a, [rP1]                                    ; $7cca: $f0 $00
	ld   hl, sp-$80                                  ; $7ccc: $f8 $80
	ld   hl, sp-$80                                  ; $7cce: $f8 $80
	db   $fc                                         ; $7cd0: $fc
	add  b                                           ; $7cd1: $80
	rlca                                             ; $7cd2: $07
	inc  b                                           ; $7cd3: $04
	db   $ed                                         ; $7cd4: $ed
	db   $f4                                         ; $7cd5: $f4
	ld   d, $0a                                      ; $7cd6: $16 $0a
	dec  c                                           ; $7cd8: $0d
	ld   bc, $0004                                   ; $7cd9: $01 $04 $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	jr   jr_09b_7cee                                 ; $7ce0: $18 $0c

	ldh  a, [$f8]                                    ; $7ce2: $f0 $f8
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	ld   bc, $0000                                   ; $7cea: $01 $00 $00
	nop                                              ; $7ced: $00

jr_09b_7cee:
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cf2: $cf
	rst  $38                                         ; $7cf3: $ff
	db   $e3                                         ; $7cf4: $e3
	ld   a, a                                        ; $7cf5: $7f
	ld   hl, sp+$1f                                  ; $7cf6: $f8 $1f
	ld   a, $07                                      ; $7cf8: $3e $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cfa: $cf
	pop  bc                                          ; $7cfb: $c1
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	inc  b                                           ; $7d00: $04
	inc  b                                           ; $7d01: $04
	rlca                                             ; $7d02: $07
	inc  bc                                          ; $7d03: $03
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	ld   b, b                                        ; $7d06: $40
	nop                                              ; $7d07: $00
	ret  nc                                          ; $7d08: $d0

	nop                                              ; $7d09: $00
	ret  nc                                          ; $7d0a: $d0

	db   $10                                         ; $7d0b: $10
	and  b                                           ; $7d0c: $a0
	jr   nz, jr_09b_7d0f                             ; $7d0d: $20 $00

jr_09b_7d0f:
	nop                                              ; $7d0f: $00
	ld   bc, $ff01                                   ; $7d10: $01 $01 $ff
	rst  $38                                         ; $7d13: $ff
	db   $fc                                         ; $7d14: $fc
	rst  $38                                         ; $7d15: $ff
	inc  bc                                          ; $7d16: $03
	rst  $38                                         ; $7d17: $ff
	inc  e                                           ; $7d18: $1c
	db   $fc                                         ; $7d19: $fc
	ld   hl, sp-$08                                  ; $7d1a: $f8 $f8
	ret  nc                                          ; $7d1c: $d0

	ld   [hl], b                                     ; $7d1d: $70
	ldh  a, [$30]                                    ; $7d1e: $f0 $30
	ldh  [hScriptOpcodeParams], a                                    ; $7d20: $e0 $a0
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	inc  a                                           ; $7d30: $3c
	jr   jr_09b_7d5b                                 ; $7d31: $18 $28

	ld   b, h                                        ; $7d33: $44
	ld   b, b                                        ; $7d34: $40
	ld   c, b                                        ; $7d35: $48
	jr   nc, jr_09b_7d58                             ; $7d36: $30 $20

	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00

jr_09b_7d43:
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	ld   e, h                                        ; $7d50: $5c
	jr   c, jr_09b_7d43                              ; $7d51: $38 $f0

	ret  nz                                          ; $7d53: $c0

	ldh  a, [$c0]                                    ; $7d54: $f0 $c0

jr_09b_7d56:
	di                                               ; $7d56: $f3
	adc  a                                           ; $7d57: $8f

jr_09b_7d58:
	ret  z                                           ; $7d58: $c8

	jr   nc, jr_09b_7d56                             ; $7d59: $30 $fb

jr_09b_7d5b:
	add  a                                           ; $7d5b: $87
	db   $ed                                         ; $7d5c: $ed
	dec  e                                           ; $7d5d: $1d
	rst  ToBoot                                         ; $7d5e: $c7
	rlca                                             ; $7d5f: $07
	jp   $0703                                       ; $7d60: $c3 $03 $07


	inc  b                                           ; $7d63: $04
	dec  c                                           ; $7d64: $0d

jr_09b_7d65:
	inc  b                                           ; $7d65: $04
	ldh  [c], a                                      ; $7d66: $e2
	ld   a, [$0131]                                  ; $7d67: $fa $31 $01
	ret  nc                                          ; $7d6a: $d0

	ldh  [$78], a                                    ; $7d6b: $e0 $78
	ld   [hl], b                                     ; $7d6d: $70
	nop                                              ; $7d6e: $00
	add  b                                           ; $7d6f: $80
	and  b                                           ; $7d70: $a0
	ret  nz                                          ; $7d71: $c0

	rlca                                             ; $7d72: $07
	inc  b                                           ; $7d73: $04
	dec  c                                           ; $7d74: $0d
	inc  b                                           ; $7d75: $04
	ldh  [c], a                                      ; $7d76: $e2
	ld   a, [$0101]                                  ; $7d77: $fa $01 $01
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	ldh  a, [$e0]                                    ; $7d7c: $f0 $e0
	ld   e, b                                        ; $7d7e: $58
	sub  b                                           ; $7d7f: $90
	ldh  [$80], a                                    ; $7d80: $e0 $80
	inc  h                                           ; $7d82: $24
	jr   nz, jr_09b_7d9d                             ; $7d83: $20 $18

	jr   jr_09b_7d87                                 ; $7d85: $18 $00

jr_09b_7d87:
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	pop  de                                          ; $7d92: $d1
	nop                                              ; $7d93: $00
	adc  h                                           ; $7d94: $8c
	ld   bc, $0098                                   ; $7d95: $01 $98 $00
	ld   [bc], a                                     ; $7d98: $02
	ld   bc, $0200                                   ; $7d99: $01 $00 $02
	add  l                                           ; $7d9c: $85

jr_09b_7d9d:
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	ld   [bc], a                                     ; $7d9f: $02
	add  l                                           ; $7da0: $85
	nop                                              ; $7da1: $00

jr_09b_7da2:
	nop                                              ; $7da2: $00
	ld   bc, $0081                                   ; $7da3: $01 $81 $00
	ld   b, $01                                      ; $7da6: $06 $01
	nop                                              ; $7da8: $00
	ld   [bc], a                                     ; $7da9: $02
	nop                                              ; $7daa: $00
	ld   bc, $0100                                   ; $7dab: $01 $00 $01
	add  c                                           ; $7dae: $81
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	ld   [bc], a                                     ; $7db1: $02
	add  e                                           ; $7db2: $83
	inc  b                                           ; $7db3: $04
	nop                                              ; $7db4: $00
	dec  b                                           ; $7db5: $05
	add  b                                           ; $7db6: $80
	ld   b, $82                                      ; $7db7: $06 $82
	ld   [bc], a                                     ; $7db9: $02
	add  b                                           ; $7dba: $80
	ld   bc, $0083                                   ; $7dbb: $01 $83 $00
	nop                                              ; $7dbe: $00
	ld   bc, $0081                                   ; $7dbf: $01 $81 $00
	nop                                              ; $7dc2: $00
	ld   bc, $008d                                   ; $7dc3: $01 $8d $00
	ld   b, $34                                      ; $7dc6: $06 $34
	inc  b                                           ; $7dc8: $04
	ld   [hl], h                                     ; $7dc9: $74
	ld   h, b                                        ; $7dca: $60
	ld   l, h                                        ; $7dcb: $6c
	db   $10                                         ; $7dcc: $10
	ld   e, b                                        ; $7dcd: $58
	sub  e                                           ; $7dce: $93
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	ret  nz                                          ; $7dd1: $c0

	add  b                                           ; $7dd2: $80
	add  b                                           ; $7dd3: $80
	add  c                                           ; $7dd4: $81
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	ret  nz                                          ; $7dd7: $c0

	add  b                                           ; $7dd8: $80
	inc  c                                           ; $7dd9: $0c
	add  b                                           ; $7dda: $80
	rlca                                             ; $7ddb: $07
	add  b                                           ; $7ddc: $80
	ld   h, e                                        ; $7ddd: $63
	add  b                                           ; $7dde: $80
	ld   [hl], c                                     ; $7ddf: $71
	add  b                                           ; $7de0: $80
	ld   d, c                                        ; $7de1: $51
	add  b                                           ; $7de2: $80
	jr   jr_09b_7d65                                 ; $7de3: $18 $80

	jr   c, @-$6d                                    ; $7de5: $38 $91

	nop                                              ; $7de7: $00
	ld   [bc], a                                     ; $7de8: $02
	inc  b                                           ; $7de9: $04
	nop                                              ; $7dea: $00
	inc  b                                           ; $7deb: $04
	add  a                                           ; $7dec: $87
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	ld   bc, $0083                                   ; $7def: $01 $83 $00
	nop                                              ; $7df2: $00
	ld   bc, $0091                                   ; $7df3: $01 $91 $00
	ld   b, $33                                      ; $7df6: $06 $33
	daa                                              ; $7df8: $27
	ld   d, a                                        ; $7df9: $57
	inc  h                                           ; $7dfa: $24
	ld   l, l                                        ; $7dfb: $6d
	inc  d                                           ; $7dfc: $14
	ld   e, $81                                      ; $7dfd: $1e $81
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	ld   c, $81                                      ; $7e01: $0e $81
	nop                                              ; $7e03: $00
	inc  b                                           ; $7e04: $04
	ld   [$0200], sp                                 ; $7e05: $08 $00 $02
	nop                                              ; $7e08: $00
	inc  b                                           ; $7e09: $04
	and  e                                           ; $7e0a: $a3
	nop                                              ; $7e0b: $00
	inc  c                                           ; $7e0c: $0c
	ld   [$0800], sp                                 ; $7e0d: $08 $00 $08
	nop                                              ; $7e10: $00
	inc  e                                           ; $7e11: $1c
	db   $10                                         ; $7e12: $10
	jr   nc, jr_09b_7e15                             ; $7e13: $30 $00

jr_09b_7e15:
	inc  a                                           ; $7e15: $3c
	nop                                              ; $7e16: $00
	jr   jr_09b_7e19                                 ; $7e17: $18 $00

jr_09b_7e19:
	jr   jr_09b_7da2                                 ; $7e19: $18 $87

	nop                                              ; $7e1b: $00
	add  b                                           ; $7e1c: $80
	ld   bc, $0606                                   ; $7e1d: $01 $06 $06
	rlca                                             ; $7e20: $07
	dec  c                                           ; $7e21: $0d
	dec  bc                                          ; $7e22: $0b
	rla                                              ; $7e23: $17
	rra                                              ; $7e24: $1f
	rrca                                             ; $7e25: $0f
	sbc  c                                           ; $7e26: $99
	nop                                              ; $7e27: $00
	add  b                                           ; $7e28: $80
	ld   bc, $020b                                   ; $7e29: $01 $0b $02
	inc  bc                                          ; $7e2c: $03
	dec  b                                           ; $7e2d: $05
	rlca                                             ; $7e2e: $07
	dec  de                                          ; $7e2f: $1b
	rra                                              ; $7e30: $1f
	scf                                              ; $7e31: $37
	cpl                                              ; $7e32: $2f
	rst  JumpTable                                         ; $7e33: $df
	rst  $38                                         ; $7e34: $ff
	cp   a                                           ; $7e35: $bf
	ld   a, a                                        ; $7e36: $7f
	add  l                                           ; $7e37: $85
	rst  $38                                         ; $7e38: $ff
	adc  c                                           ; $7e39: $89
	nop                                              ; $7e3a: $00
	add  b                                           ; $7e3b: $80
	ld   bc, $020e                                   ; $7e3c: $01 $0e $02
	inc  bc                                          ; $7e3f: $03
	dec  b                                           ; $7e40: $05
	rlca                                             ; $7e41: $07
	dec  bc                                          ; $7e42: $0b
	rrca                                             ; $7e43: $0f
	rla                                              ; $7e44: $17
	ld   e, $2e                                      ; $7e45: $1e $2e
	inc  a                                           ; $7e47: $3c
	ld   e, h                                        ; $7e48: $5c
	ld   a, c                                        ; $7e49: $79
	cp   c                                           ; $7e4a: $b9
	rst  $30                                         ; $7e4b: $f7
	ld   [hl], a                                     ; $7e4c: $77
	add  b                                           ; $7e4d: $80
	rst  $28                                         ; $7e4e: $ef
	ld   bc, $dcdf                                   ; $7e4f: $01 $df $dc
	add  c                                           ; $7e52: $81
	inc  bc                                          ; $7e53: $03
	ld   [$0f0d], sp                                 ; $7e54: $08 $0d $0f
	ld   [hl-], a                                    ; $7e57: $32
	ccf                                              ; $7e58: $3f
	ld   c, a                                        ; $7e59: $4f
	ld   a, a                                        ; $7e5a: $7f
	cp   a                                           ; $7e5b: $bf
	db   $fc                                         ; $7e5c: $fc
	ld   a, h                                        ; $7e5d: $7c
	add  b                                           ; $7e5e: $80
	ldh  a, [$80]                                    ; $7e5f: $f0 $80
	ret  nz                                          ; $7e61: $c0

	add  b                                           ; $7e62: $80
	add  c                                           ; $7e63: $81
	add  b                                           ; $7e64: $80
	rlca                                             ; $7e65: $07
	add  b                                           ; $7e66: $80
	rra                                              ; $7e67: $1f
	add  b                                           ; $7e68: $80
	ld   a, a                                        ; $7e69: $7f
	add  e                                           ; $7e6a: $83
	rst  $38                                         ; $7e6b: $ff
	add  c                                           ; $7e6c: $81
	cp   $01                                         ; $7e6d: $fe $01
	nop                                              ; $7e6f: $00
	ld   bc, $0090                                   ; $7e70: $01 $90 $00
	add  b                                           ; $7e73: $80
	inc  c                                           ; $7e74: $0c
	add  b                                           ; $7e75: $80
	rlca                                             ; $7e76: $07
	add  b                                           ; $7e77: $80
	ld   bc, $0082                                   ; $7e78: $01 $82 $00
	add  b                                           ; $7e7b: $80
	ld   a, b                                        ; $7e7c: $78
	add  d                                           ; $7e7d: $82
	ld   hl, sp-$80                                  ; $7e7e: $f8 $80
	add  hl, sp                                      ; $7e80: $39
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	add  b                                           ; $7e83: $80
	add  b                                           ; $7e84: $80
	add  b                                           ; $7e85: $80
	ld   b, b                                        ; $7e86: $40
	add  d                                           ; $7e87: $82
	nop                                              ; $7e88: $00
	add  d                                           ; $7e89: $82
	ldh  [$8a], a                                    ; $7e8a: $e0 $8a
	ldh  a, [rP1]                                    ; $7e8c: $f0 $00
	rst  $38                                         ; $7e8e: $ff
	add  b                                           ; $7e8f: $80
	ld   a, a                                        ; $7e90: $7f
	rrca                                             ; $7e91: $0f
	rra                                              ; $7e92: $1f
	rst  JumpTable                                         ; $7e93: $df
	rlca                                             ; $7e94: $07
	ccf                                              ; $7e95: $3f
	ret  nz                                          ; $7e96: $c0

	rst  JumpTable                                         ; $7e97: $df
	ret  nz                                          ; $7e98: $c0

	rst  $10                                         ; $7e99: $d7
	ret  nz                                          ; $7e9a: $c0

	ret  z                                           ; $7e9b: $c8

	add  b                                           ; $7e9c: $80
	add  h                                           ; $7e9d: $84
	add  b                                           ; $7e9e: $80
	add  d                                           ; $7e9f: $82
	add  b                                           ; $7ea0: $80
	add  c                                           ; $7ea1: $81
	add  b                                           ; $7ea2: $80
	add  b                                           ; $7ea3: $80
	adc  c                                           ; $7ea4: $89
	nop                                              ; $7ea5: $00
	add  b                                           ; $7ea6: $80
	inc  bc                                          ; $7ea7: $03
	add  b                                           ; $7ea8: $80
	ld   bc, $8106                                   ; $7ea9: $01 $06 $81
	ld   bc, $00e0                                   ; $7eac: $01 $e0 $00
	ld   b, b                                        ; $7eaf: $40
	nop                                              ; $7eb0: $00
	ld   sp, $0083                                   ; $7eb1: $31 $83 $00
	ld   [$0090], sp                                 ; $7eb4: $08 $90 $00
	ld   l, c                                        ; $7eb7: $69
	ld   b, $ee                                      ; $7eb8: $06 $ee
	ld   c, $ee                                      ; $7eba: $0e $ee
	ld   c, $ee                                      ; $7ebc: $0e $ee
	sub  c                                           ; $7ebe: $91
	nop                                              ; $7ebf: $00
	add  b                                           ; $7ec0: $80
	ld   [$1082], sp                                 ; $7ec1: $08 $82 $10
	ld   [bc], a                                     ; $7ec4: $02
	jr   nz, jr_09b_7eef                             ; $7ec5: $20 $28

	ld   [$1880], sp                                 ; $7ec7: $08 $80 $18
	add  h                                           ; $7eca: $84
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	ld   h, b                                        ; $7ecd: $60
	add  b                                           ; $7ece: $80
	ld   l, b                                        ; $7ecf: $68
	ld   [bc], a                                     ; $7ed0: $02
	ld   c, a                                        ; $7ed1: $4f
	xor  a                                           ; $7ed2: $af
	and  b                                           ; $7ed3: $a0
	add  b                                           ; $7ed4: $80
	xor  a                                           ; $7ed5: $af
	inc  b                                           ; $7ed6: $04
	cpl                                              ; $7ed7: $2f
	xor  a                                           ; $7ed8: $af
	xor  b                                           ; $7ed9: $a8
	rst  $28                                         ; $7eda: $ef
	rst  $20                                         ; $7edb: $e7
	add  b                                           ; $7edc: $80
	inc  a                                           ; $7edd: $3c
	ld   [bc], a                                     ; $7ede: $02
	db   $10                                         ; $7edf: $10
	ret  nc                                          ; $7ee0: $d0

	ret  nz                                          ; $7ee1: $c0

	add  b                                           ; $7ee2: $80
	ldh  [$8d], a                                    ; $7ee3: $e0 $8d
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	inc  b                                           ; $7ee7: $04
	add  b                                           ; $7ee8: $80
	ld   [hl], l                                     ; $7ee9: $75
	inc  c                                           ; $7eea: $0c
	push af                                          ; $7eeb: $f5
	srl  b                                           ; $7eec: $cb $38
	add  e                                           ; $7eee: $83

jr_09b_7eef:
	sbc  h                                           ; $7eef: $9c
	inc  a                                           ; $7ef0: $3c
	dec  l                                           ; $7ef1: $2d
	dec  e                                           ; $7ef2: $1d
	dec  d                                           ; $7ef3: $15
	inc  c                                           ; $7ef4: $0c
	ld   a, [bc]                                     ; $7ef5: $0a
	ld   b, $04                                      ; $7ef6: $06 $04
	add  b                                           ; $7ef8: $80
	ld   [bc], a                                     ; $7ef9: $02
	add  b                                           ; $7efa: $80
	ld   bc, $008c                                   ; $7efb: $01 $8c $00
	ld   b, $50                                      ; $7efe: $06 $50
	ret  nc                                          ; $7f00: $d0

	ld   l, e                                        ; $7f01: $6b
	ldh  [$03], a                                    ; $7f02: $e0 $03
	ld   l, b                                        ; $7f04: $68
	ld   h, h                                        ; $7f05: $64
	add  c                                           ; $7f06: $81
	ld   [hl], h                                     ; $7f07: $74
	inc  bc                                          ; $7f08: $03
	db   $f4                                         ; $7f09: $f4
	and  h                                           ; $7f0a: $a4
	cp   h                                           ; $7f0b: $bc
	sbc  h                                           ; $7f0c: $9c
	add  b                                           ; $7f0d: $80
	ldh  [rSC], a                                    ; $7f0e: $e0 $02
	add  b                                           ; $7f10: $80
	sbc  h                                           ; $7f11: $9c
	inc  e                                           ; $7f12: $1c
	add  b                                           ; $7f13: $80
	ld   a, h                                        ; $7f14: $7c
	add  b                                           ; $7f15: $80
	ld   a, b                                        ; $7f16: $78
	add  l                                           ; $7f17: $85
	jr   c, jr_09b_7f1b                              ; $7f18: $38 $01

	ld   b, a                                        ; $7f1a: $47

jr_09b_7f1b:
	ld   a, a                                        ; $7f1b: $7f
	add  b                                           ; $7f1c: $80
	nop                                              ; $7f1d: $00
	add  b                                           ; $7f1e: $80
	ret  nz                                          ; $7f1f: $c0

	add  b                                           ; $7f20: $80
	jr   nz, jr_09b_7f25                             ; $7f21: $20 $02

	db   $10                                         ; $7f23: $10
	ret  nc                                          ; $7f24: $d0

jr_09b_7f25:
	ret  z                                           ; $7f25: $c8

	add  c                                           ; $7f26: $81
	add  sp, $00                                     ; $7f27: $e8 $00
	db   $e4                                         ; $7f29: $e4
	add  e                                           ; $7f2a: $83
	db   $f4                                         ; $7f2b: $f4
	nop                                              ; $7f2c: $00
	ldh  a, [c]                                      ; $7f2d: $f2
	add  l                                           ; $7f2e: $85
	ld   a, [$ba13]                                  ; $7f2f: $fa $13 $ba
	ld   a, [$ba7a]                                  ; $7f32: $fa $7a $ba
	ld   h, a                                        ; $7f35: $67

Call_09b_7f36:
	ldh  [$80], a                                    ; $7f36: $e0 $80
	add  c                                           ; $7f38: $81
	nop                                              ; $7f39: $00
	ld   b, $00                                      ; $7f3a: $06 $00
	ld   [$1000], sp                                 ; $7f3c: $08 $00 $10
	nop                                              ; $7f3f: $00
	jr   nz, jr_09b_7f42                             ; $7f40: $20 $00

jr_09b_7f42:
	ld   b, b                                        ; $7f42: $40
	nop                                              ; $7f43: $00
	add  b                                           ; $7f44: $80
	adc  [hl]                                        ; $7f45: $8e
	nop                                              ; $7f46: $00
	ld   bc, $fc03                                   ; $7f47: $01 $03 $fc
	add  b                                           ; $7f4a: $80
	ld   hl, sp-$80                                  ; $7f4b: $f8 $80
	ldh  a, [$80]                                    ; $7f4d: $f0 $80
	ldh  [$0b], a                                    ; $7f4f: $e0 $0b
	add  b                                           ; $7f51: $80
	add  c                                           ; $7f52: $81
	nop                                              ; $7f53: $00
	ld   b, $00                                      ; $7f54: $06 $00
	ld   [rROMB1], sp                                 ; $7f56: $08 $00 $30
	nop                                              ; $7f59: $00
	ld   b, b                                        ; $7f5a: $40
	nop                                              ; $7f5b: $00
	add  b                                           ; $7f5c: $80
	adc  d                                           ; $7f5d: $8a
	nop                                              ; $7f5e: $00
	rlca                                             ; $7f5f: $07
	rst  $38                                         ; $7f60: $ff
	inc  c                                           ; $7f61: $0c
	inc  b                                           ; $7f62: $04
	inc  d                                           ; $7f63: $14
	nop                                              ; $7f64: $00
	ld   [hl+], a                                    ; $7f65: $22
	ld   [bc], a                                     ; $7f66: $02
	jp   nz, $0282                                   ; $7f67: $c2 $82 $02

	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	add  l                                           ; $7f6c: $85
	ld   bc, $008b                                   ; $7f6d: $01 $8b $00
	add  b                                           ; $7f70: $80
	ldh  [$84], a                                    ; $7f71: $e0 $84
	ret  nz                                          ; $7f73: $c0

	add  d                                           ; $7f74: $82
	add  b                                           ; $7f75: $80
	sub  d                                           ; $7f76: $92
	nop                                              ; $7f77: $00
	add  b                                           ; $7f78: $80
	db   $fd                                         ; $7f79: $fd
	add  b                                           ; $7f7a: $80
	ld   a, [hl]                                     ; $7f7b: $7e
	add  b                                           ; $7f7c: $80
	ld   e, $80                                      ; $7f7d: $1e $80
	rlca                                             ; $7f7f: $07
	add  b                                           ; $7f80: $80
	ld   bc, $0093                                   ; $7f81: $01 $93 $00
	ld   b, $81                                      ; $7f84: $06 $81
	ld   [bc], a                                     ; $7f86: $02
	add  c                                           ; $7f87: $81
	nop                                              ; $7f88: $00
	ld   [bc], a                                     ; $7f89: $02
	nop                                              ; $7f8a: $00
	ld   bc, $0081                                   ; $7f8b: $01 $81 $00
	nop                                              ; $7f8e: $00
	ld   bc, $0093                                   ; $7f8f: $01 $93 $00
	adc  d                                           ; $7f92: $8a
	ld   bc, $0383                                   ; $7f93: $01 $83 $03
	add  c                                           ; $7f96: $81
	add  e                                           ; $7f97: $83
	nop                                              ; $7f98: $00
	add  a                                           ; $7f99: $87
	add  e                                           ; $7f9a: $83
	rst  ToBoot                                         ; $7f9b: $c7
	add  c                                           ; $7f9c: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f9d: $cf
	add  c                                           ; $7f9e: $81
	rrca                                             ; $7f9f: $0f
	nop                                              ; $7fa0: $00
	cp   $81                                         ; $7fa1: $fe $81
	nop                                              ; $7fa3: $00
	ld   b, $82                                      ; $7fa4: $06 $82
	ld   bc, $0305                                   ; $7fa6: $01 $05 $03
	dec  de                                          ; $7fa9: $1b
	rlca                                             ; $7faa: $07
	ld   h, a                                        ; $7fab: $67
	add  b                                           ; $7fac: $80
	rra                                              ; $7fad: $1f
	add  b                                           ; $7fae: $80
	ld   a, a                                        ; $7faf: $7f
	add  h                                           ; $7fb0: $84
	ccf                                              ; $7fb1: $3f
	add  h                                           ; $7fb2: $84
	rra                                              ; $7fb3: $1f
	add  h                                           ; $7fb4: $84
	rrca                                             ; $7fb5: $0f
	add  b                                           ; $7fb6: $80
	rlca                                             ; $7fb7: $07
	ld   bc, $0703                                   ; $7fb8: $01 $03 $07
	add  c                                           ; $7fbb: $81
	ld   bc, $0300                                   ; $7fbc: $01 $00 $03
	add  c                                           ; $7fbf: $81
	nop                                              ; $7fc0: $00
	inc  b                                           ; $7fc1: $04
	ld   bc, $0800                                   ; $7fc2: $01 $00 $08
	nop                                              ; $7fc5: $00
	rrca                                             ; $7fc6: $0f
	sbc  l                                           ; $7fc7: $9d
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	add  b                                           ; $7fca: $80
	add  c                                           ; $7fcb: $81
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	ld   b, b                                        ; $7fce: $40
	add  e                                           ; $7fcf: $83
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	jr   nz, @-$7b                                   ; $7fd2: $20 $83

	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	ldh  [$80], a                                    ; $7fd6: $e0 $80
	db   $fc                                         ; $7fd8: $fc
	add  d                                           ; $7fd9: $82
	ldh  a, [$82]                                    ; $7fda: $f0 $82
	ldh  [rSB], a                                    ; $7fdc: $e0 $01
	ret  nz                                          ; $7fde: $c0

	ld   b, b                                        ; $7fdf: $40
	add  c                                           ; $7fe0: $81
	ret  nz                                          ; $7fe1: $c0

	ld   bc, $c080                                   ; $7fe2: $01 $80 $c0
	adc  h                                           ; $7fe5: $8c
	add  b                                           ; $7fe6: $80
	add  b                                           ; $7fe7: $80
	ldh  [$80], a                                    ; $7fe8: $e0 $80
	ret  nz                                          ; $7fea: $c0

	ld   bc, $c040                                   ; $7feb: $01 $40 $c0
	add  e                                           ; $7fee: $83
	add  b                                           ; $7fef: $80
	rst  $38                                         ; $7ff0: $ff
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
	rst  $38                                         ; $7ffc: $ff
	nop                                              ; $7ffd: $00
	db   $cc                                         ; $7ffe: $cc
	nop                                              ; $7fff: $00
