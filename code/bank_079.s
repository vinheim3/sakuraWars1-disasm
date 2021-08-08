; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

	dec  h                                           ; $4000: $25
	ld   [bc], a                                     ; $4001: $02
	add  [hl]                                        ; $4002: $86
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	ld   bc, $0e83                                   ; $4005: $01 $83 $0e
	add  b                                           ; $4008: $80
	rlca                                             ; $4009: $07
	nop                                              ; $400a: $00
	rrca                                             ; $400b: $0f
	add  l                                           ; $400c: $85
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	rst  $38                                         ; $400f: $ff
	add  e                                           ; $4010: $83
	nop                                              ; $4011: $00
	add  b                                           ; $4012: $80
	add  b                                           ; $4013: $80
	nop                                              ; $4014: $00
	rst  $38                                         ; $4015: $ff
	add  l                                           ; $4016: $85
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	ldh  [$85], a                                    ; $4019: $e0 $85
	rra                                              ; $401b: $1f
	nop                                              ; $401c: $00
	rst  $38                                         ; $401d: $ff
	add  [hl]                                        ; $401e: $86
	nop                                              ; $401f: $00
	rlca                                             ; $4020: $07
	rst  $38                                         ; $4021: $ff
	ld   a, [$f0ff]                                  ; $4022: $fa $ff $f0
	rst  $38                                         ; $4025: $ff
	ldh  a, [rIE]                                    ; $4026: $f0 $ff
	ld   a, [$0085]                                  ; $4028: $fa $85 $00
	add  hl, bc                                      ; $402b: $09
	xor  d                                           ; $402c: $aa
	rst  $38                                         ; $402d: $ff
	nop                                              ; $402e: $00
	rst  $38                                         ; $402f: $ff
	nop                                              ; $4030: $00
	rst  $38                                         ; $4031: $ff
	nop                                              ; $4032: $00
	rst  $38                                         ; $4033: $ff
	ld   l, d                                        ; $4034: $6a
	db   $30, $84                                    ; $4035: $30 $84
	nop                                              ; $4037: $00
	add  b                                           ; $4038: $80
	ret  nz                                          ; $4039: $c0

	add  h                                           ; $403a: $84
	ldh  a, [rSB]                                    ; $403b: $f0 $01
	rst  $28                                         ; $403d: $ef
	ldh  [$80], a                                    ; $403e: $e0 $80
	ld   hl, sp-$80                                  ; $4040: $f8 $80
	cp   $89                                         ; $4042: $fe $89
	rst  $38                                         ; $4044: $ff
	add  l                                           ; $4045: $85
	nop                                              ; $4046: $00
	ld   [$ffab], sp                                 ; $4047: $08 $ab $ff
	ld   bc, $01ff                                   ; $404a: $01 $ff $01
	rst  $38                                         ; $404d: $ff
	dec  bc                                          ; $404e: $0b
	rst  $38                                         ; $404f: $ff
	and  b                                           ; $4050: $a0
	add  l                                           ; $4051: $85
	nop                                              ; $4052: $00
	add  h                                           ; $4053: $84
	rst  $38                                         ; $4054: $ff
	ld   [bc], a                                     ; $4055: $02
	cp   $ff                                         ; $4056: $fe $ff
	ld   bc, $0085                                   ; $4058: $01 $85 $00
	nop                                              ; $405b: $00
	ld   sp, hl                                      ; $405c: $f9
	add  b                                           ; $405d: $80
	ld   a, [hl]                                     ; $405e: $7e
	add  b                                           ; $405f: $80
	ld   a, $03                                      ; $4060: $3e $03
	ld   e, [hl]                                     ; $4062: $5e
	ld   e, $5e                                      ; $4063: $1e $5e
	rst  $20                                         ; $4065: $e7
	add  l                                           ; $4066: $85
	nop                                              ; $4067: $00
	ld   bc, $7fff                                   ; $4068: $01 $ff $7f
	add  b                                           ; $406b: $80
	ld   a, [hl]                                     ; $406c: $7e
	add  b                                           ; $406d: $80
	ld   a, l                                        ; $406e: $7d
	add  b                                           ; $406f: $80
	ld   a, [hl]                                     ; $4070: $7e
	nop                                              ; $4071: $00
	add  b                                           ; $4072: $80
	add  l                                           ; $4073: $85
	nop                                              ; $4074: $00
	add  b                                           ; $4075: $80
	call nc, $a880                                   ; $4076: $d4 $80 $a8
	add  b                                           ; $4079: $80
	ld   d, h                                        ; $407a: $54
	add  b                                           ; $407b: $80
	xor  b                                           ; $407c: $a8
	add  [hl]                                        ; $407d: $86
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	cp   a                                           ; $4080: $bf
	add  c                                           ; $4081: $81
	ret                                              ; $4082: $c9


jr_079_4083:
	ld   bc, $c949                                   ; $4083: $01 $49 $c9
	add  b                                           ; $4086: $80
	ld   c, c                                        ; $4087: $49
	nop                                              ; $4088: $00
	or   $85                                         ; $4089: $f6 $85
	nop                                              ; $408b: $00
	ld   [$9b75], sp                                 ; $408c: $08 $75 $9b
	ld   [hl-], a                                    ; $408f: $32
	or   e                                           ; $4090: $b3
	pop  bc                                          ; $4091: $c1
	pop  af                                          ; $4092: $f1
	add  c                                           ; $4093: $81
	pop  hl                                          ; $4094: $e1
	ccf                                              ; $4095: $3f
	add  l                                           ; $4096: $85
	nop                                              ; $4097: $00
	nop                                              ; $4098: $00
	rst  $38                                         ; $4099: $ff
	add  b                                           ; $409a: $80
	inc  h                                           ; $409b: $24
	ld   [bc], a                                     ; $409c: $02
	and  h                                           ; $409d: $a4
	add  b                                           ; $409e: $80
	and  h                                           ; $409f: $a4
	add  b                                           ; $40a0: $80
	add  h                                           ; $40a1: $84
	nop                                              ; $40a2: $00
	ld   a, a                                        ; $40a3: $7f
	add  l                                           ; $40a4: $85
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	cp   l                                           ; $40a7: $bd
	add  b                                           ; $40a8: $80
	jp   z, $ce01                                    ; $40a9: $ca $01 $ce

	add  [hl]                                        ; $40ac: $86
	add  b                                           ; $40ad: $80
	adc  $01                                         ; $40ae: $ce $01
	ld   c, [hl]                                     ; $40b0: $4e
	or   h                                           ; $40b1: $b4
	adc  l                                           ; $40b2: $8d
	nop                                              ; $40b3: $00
	ld   bc, $7080                                   ; $40b4: $01 $80 $70
	add  b                                           ; $40b7: $80
	ld   c, $80                                      ; $40b8: $0e $80
	add  c                                           ; $40ba: $81
	add  b                                           ; $40bb: $80
	add  b                                           ; $40bc: $80
	add  d                                           ; $40bd: $82
	add  d                                           ; $40be: $82
	add  d                                           ; $40bf: $82

Call_079_40c0:
	jp   nz, $1f82                                   ; $40c0: $c2 $82 $1f

	add  b                                           ; $40c3: $80
	sbc  a                                           ; $40c4: $9f
	adc  b                                           ; $40c5: $88
	rra                                              ; $40c6: $1f
	dec  d                                           ; $40c7: $15
	push af                                          ; $40c8: $f5
	rst  $38                                         ; $40c9: $ff
	ldh  [rIE], a                                    ; $40ca: $e0 $ff
	ldh  [rIE], a                                    ; $40cc: $e0 $ff
	and  b                                           ; $40ce: $a0
	rst  $38                                         ; $40cf: $ff
	add  b                                           ; $40d0: $80
	rst  $38                                         ; $40d1: $ff
	ret  nz                                          ; $40d2: $c0

	cp   $c1                                         ; $40d3: $fe $c1
	rst  $38                                         ; $40d5: $ff
	add  b                                           ; $40d6: $80
	rst  $38                                         ; $40d7: $ff
	db   $fd                                         ; $40d8: $fd
	db   $ec                                         ; $40d9: $ec
	ld   l, h                                        ; $40da: $6c
	db   $ec                                         ; $40db: $ec
	adc  [hl]                                        ; $40dc: $8e
	adc  $82                                         ; $40dd: $ce $82
	add  $00                                         ; $40df: $c6 $00
	add  h                                           ; $40e1: $84
	add  e                                           ; $40e2: $83
	nop                                              ; $40e3: $00
	add  b                                           ; $40e4: $80
	res  0, b                                        ; $40e5: $cb $80
	reti                                             ; $40e7: $d9


	ld   [bc], a                                     ; $40e8: $02
	cp   c                                           ; $40e9: $b9
	ld   sp, hl                                      ; $40ea: $f9
	reti                                             ; $40eb: $d9


	add  c                                           ; $40ec: $81
	ld   sp, hl                                      ; $40ed: $f9
	nop                                              ; $40ee: $00
	ld   h, b                                        ; $40ef: $60
	add  e                                           ; $40f0: $83
	nop                                              ; $40f1: $00
	dec  b                                           ; $40f2: $05
	ld   [$ce8e], sp                                 ; $40f3: $08 $8e $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40f6: $cf
	call z, $824f                                    ; $40f7: $cc $4f $82
	ld   c, h                                        ; $40fa: $4c
	nop                                              ; $40fb: $00
	inc  b                                           ; $40fc: $04
	add  e                                           ; $40fd: $83
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	jr   nz, jr_079_4083                             ; $4100: $20 $81

	ld   [hl-], a                                    ; $4102: $32
	ld   [bc], a                                     ; $4103: $02
	ld   [hl], d                                     ; $4104: $72
	ei                                               ; $4105: $fb
	db   $db                                         ; $4106: $db
	add  c                                           ; $4107: $81
	rlc  b                                           ; $4108: $cb $00
	adc  e                                           ; $410a: $8b
	add  e                                           ; $410b: $83
	nop                                              ; $410c: $00
	ld   bc, $3f23                                   ; $410d: $01 $23 $3f
	add  b                                           ; $4110: $80
	ld   e, $0c                                      ; $4111: $1e $0c
	jr   jr_079_4131                                 ; $4113: $18 $1c

	rlca                                             ; $4115: $07
	nop                                              ; $4116: $00
	daa                                              ; $4117: $27
	ld   c, a                                        ; $4118: $4f
	ld   [$1030], sp                                 ; $4119: $08 $30 $10
	jr   nz, @+$42                                   ; $411c: $20 $40

	nop                                              ; $411e: $00
	add  hl, de                                      ; $411f: $19
	add  c                                           ; $4120: $81
	ld   a, $0d                                      ; $4121: $3e $0d
	ld   c, $1e                                      ; $4123: $0e $1e
	or   $02                                         ; $4125: $f6 $02
	add  d                                           ; $4127: $82
	ld   sp, hl                                      ; $4128: $f9
	ld   e, b                                        ; $4129: $58
	ld   a, $0c                                      ; $412a: $3e $0c
	ld   a, [de]                                     ; $412c: $1a
	add  hl, de                                      ; $412d: $19
	jr   @-$0a                                       ; $412e: $18 $f4

	ld   a, l                                        ; $4130: $7d

jr_079_4131:
	add  b                                           ; $4131: $80
	ld   a, [hl]                                     ; $4132: $7e
	add  b                                           ; $4133: $80
	ld   a, l                                        ; $4134: $7d
	add  b                                           ; $4135: $80
	ld   a, d                                        ; $4136: $7a
	add  b                                           ; $4137: $80
	ld   a, l                                        ; $4138: $7d
	add  b                                           ; $4139: $80
	ld   a, d                                        ; $413a: $7a
	add  b                                           ; $413b: $80
	ld   a, l                                        ; $413c: $7d
	add  b                                           ; $413d: $80
	ld   a, d                                        ; $413e: $7a

jr_079_413f:
	ld   bc, $50d0                                   ; $413f: $01 $d0 $50
	add  b                                           ; $4142: $80
	xor  b                                           ; $4143: $a8
	add  b                                           ; $4144: $80
	ld   d, b                                        ; $4145: $50
	add  b                                           ; $4146: $80
	and  b                                           ; $4147: $a0
	add  b                                           ; $4148: $80
	ld   d, b                                        ; $4149: $50
	add  b                                           ; $414a: $80
	and  b                                           ; $414b: $a0
	add  b                                           ; $414c: $80
	ld   b, b                                        ; $414d: $40
	add  b                                           ; $414e: $80
	add  b                                           ; $414f: $80
	nop                                              ; $4150: $00
	ld   a, a                                        ; $4151: $7f
	adc  c                                           ; $4152: $89
	nop                                              ; $4153: $00
	add  d                                           ; $4154: $82
	ld   [$8000], sp                                 ; $4155: $08 $00 $80
	add  c                                           ; $4158: $81
	nop                                              ; $4159: $00
	add  b                                           ; $415a: $80
	add  b                                           ; $415b: $80
	add  b                                           ; $415c: $80
	jp   z, $cb82                                    ; $415d: $ca $82 $cb

	nop                                              ; $4160: $00
	adc  e                                           ; $4161: $8b
	add  c                                           ; $4162: $81
	rlc  b                                           ; $4163: $cb $00
	ld   b, b                                        ; $4165: $40
	add  c                                           ; $4166: $81
	nop                                              ; $4167: $00
	add  b                                           ; $4168: $80
	ld   [$2c80], sp                                 ; $4169: $08 $80 $2c
	nop                                              ; $416c: $00
	inc  h                                           ; $416d: $24
	add  l                                           ; $416e: $85
	inc  l                                           ; $416f: $2c
	nop                                              ; $4170: $00
	ld   [$0083], sp                                 ; $4171: $08 $83 $00
	add  b                                           ; $4174: $80
	ld   [$1880], sp                                 ; $4175: $08 $80 $18
	add  d                                           ; $4178: $82
	add  hl, de                                      ; $4179: $19
	add  b                                           ; $417a: $80
	ld   e, c                                        ; $417b: $59
	nop                                              ; $417c: $00
	ld   e, a                                        ; $417d: $5f
	add  l                                           ; $417e: $85
	rst  JumpTable                                         ; $417f: $df
	inc  b                                           ; $4180: $04
	ld   e, a                                        ; $4181: $5f
	rst  JumpTable                                         ; $4182: $df
	inc  bc                                          ; $4183: $03
	rst  $38                                         ; $4184: $ff
	inc  bc                                          ; $4185: $03
	add  c                                           ; $4186: $81
	rst  $38                                         ; $4187: $ff
	nop                                              ; $4188: $00
	add  d                                           ; $4189: $82
	add  c                                           ; $418a: $81
	jp   nz, $8200                                   ; $418b: $c2 $00 $82

	add  c                                           ; $418e: $81
	jp   nz, $8202                                   ; $418f: $c2 $02 $82

	jp   nz, $8382                                   ; $4192: $c2 $82 $83

	jp   nz, $1f8e                                   ; $4195: $c2 $8e $1f

	ld   de, $ffd5                                   ; $4198: $11 $d5 $ff
	add  b                                           ; $419b: $80
	rst  $38                                         ; $419c: $ff
	nop                                              ; $419d: $00
	rst  $38                                         ; $419e: $ff
	nop                                              ; $419f: $00
	rst  $38                                         ; $41a0: $ff
	nop                                              ; $41a1: $00
	rst  $38                                         ; $41a2: $ff
	nop                                              ; $41a3: $00
	rst  $38                                         ; $41a4: $ff
	nop                                              ; $41a5: $00
	rst  $38                                         ; $41a6: $ff
	nop                                              ; $41a7: $00
	rst  $38                                         ; $41a8: $ff
	ld   d, a                                        ; $41a9: $57
	ld   [bc], a                                     ; $41aa: $02
	adc  b                                           ; $41ab: $88
	ld   a, [bc]                                     ; $41ac: $0a
	add  d                                           ; $41ad: $82
	ld   c, $80                                      ; $41ae: $0e $80
	ld   b, d                                        ; $41b0: $42
	add  d                                           ; $41b1: $82
	ld   b, a                                        ; $41b2: $47
	nop                                              ; $41b3: $00
	ld   b, [hl]                                     ; $41b4: $46
	add  e                                           ; $41b5: $83
	ld   b, a                                        ; $41b6: $47
	add  b                                           ; $41b7: $80
	ld   c, a                                        ; $41b8: $4f
	inc  bc                                          ; $41b9: $03
	ld   c, l                                        ; $41ba: $4d
	ld   c, a                                        ; $41bb: $4f
	inc  sp                                          ; $41bc: $33
	jr   nc, jr_079_413f                             ; $41bd: $30 $80

	ld   sp, $1100                                   ; $41bf: $31 $00 $11
	add  c                                           ; $41c2: $81
	ld   sp, $3980                                   ; $41c3: $31 $80 $39
	nop                                              ; $41c6: $00
	add  hl, hl                                      ; $41c7: $29
	add  e                                           ; $41c8: $83
	add  hl, sp                                      ; $41c9: $39
	ld   bc, $80b0                                   ; $41ca: $01 $b0 $80
	add  h                                           ; $41cd: $84
	adc  b                                           ; $41ce: $88
	add  h                                           ; $41cf: $84
	adc  d                                           ; $41d0: $8a
	ld   [$8e0e], sp                                 ; $41d1: $08 $0e $8e
	cp   a                                           ; $41d4: $bf
	nop                                              ; $41d5: $00
	jr   nz, jr_079_41ff                             ; $41d6: $20 $27

	inc  [hl]                                        ; $41d8: $34
	dec  sp                                          ; $41d9: $3b
	scf                                              ; $41da: $37
	add  a                                           ; $41db: $87
	ccf                                              ; $41dc: $3f
	ld   b, $e9                                      ; $41dd: $06 $e9
	jr   c, @+$1a                                    ; $41df: $38 $18

	ld   a, [$ee12]                                  ; $41e1: $fa $12 $ee
	or   $87                                         ; $41e4: $f6 $87
	cp   $01                                         ; $41e6: $fe $01
	ldh  a, [c]                                      ; $41e8: $f2
	ld   [hl], l                                     ; $41e9: $75
	add  b                                           ; $41ea: $80
	ld   a, d                                        ; $41eb: $7a
	add  b                                           ; $41ec: $80
	ld   [hl], l                                     ; $41ed: $75
	add  b                                           ; $41ee: $80
	ld   a, d                                        ; $41ef: $7a
	add  b                                           ; $41f0: $80
	ld   [hl], l                                     ; $41f1: $75
	add  b                                           ; $41f2: $80
	ld   a, d                                        ; $41f3: $7a
	add  b                                           ; $41f4: $80
	ld   [hl], l                                     ; $41f5: $75
	add  b                                           ; $41f6: $80
	ld   a, d                                        ; $41f7: $7a
	ld   bc, $40c0                                   ; $41f8: $01 $c0 $40
	add  b                                           ; $41fb: $80
	add  b                                           ; $41fc: $80
	add  b                                           ; $41fd: $80
	ld   b, b                                        ; $41fe: $40

jr_079_41ff:
	add  b                                           ; $41ff: $80
	add  b                                           ; $4200: $80
	add  b                                           ; $4201: $80
	ld   b, b                                        ; $4202: $40
	add  b                                           ; $4203: $80
	add  b                                           ; $4204: $80
	add  b                                           ; $4205: $80
	nop                                              ; $4206: $00

jr_079_4207:
	add  b                                           ; $4207: $80
	add  b                                           ; $4208: $80
	nop                                              ; $4209: $00
	ld   [hl], a                                     ; $420a: $77
	add  a                                           ; $420b: $87

jr_079_420c:
	ld   [rRAMG], sp                                 ; $420c: $08 $00 $00
	add  e                                           ; $420f: $83
	ld   [$0204], sp                                 ; $4210: $08 $04 $02
	set  0, e                                        ; $4213: $cb $c3
	bit  1, e                                        ; $4215: $cb $4b
	add  c                                           ; $4217: $81
	res  0, b                                        ; $4218: $cb $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $421a: $cf
	add  d                                           ; $421b: $82
	rst  JumpTable                                         ; $421c: $df
	inc  bc                                          ; $421d: $03
	sbc  $df                                         ; $421e: $de $df
	call z, $802c                                    ; $4220: $cc $2c $80
	ld   l, $80                                      ; $4223: $2e $80
	ld   l, [hl]                                     ; $4225: $6e
	dec  b                                           ; $4226: $05
	ld   l, d                                        ; $4227: $6a
	ld   l, [hl]                                     ; $4228: $6e
	ld   h, $6e                                      ; $4229: $26 $6e
	ld   c, [hl]                                     ; $422b: $4e
	ld   l, [hl]                                     ; $422c: $6e
	add  b                                           ; $422d: $80
	ld   h, a                                        ; $422e: $67
	inc  b                                           ; $422f: $04
	push bc                                          ; $4230: $c5
	rst  ToBoot                                         ; $4231: $c7
	rra                                              ; $4232: $1f
	ld   e, c                                        ; $4233: $59
	add  hl, de                                      ; $4234: $19
	add  c                                           ; $4235: $81
	ld   e, c                                        ; $4236: $59
	nop                                              ; $4237: $00
	ld   c, c                                        ; $4238: $49
	add  e                                           ; $4239: $83
	ld   e, c                                        ; $423a: $59
	dec  b                                           ; $423b: $05
	ld   e, b                                        ; $423c: $58
	ld   a, c                                        ; $423d: $79
	add  hl, sp                                      ; $423e: $39
	ld   a, c                                        ; $423f: $79
	ld   c, [hl]                                     ; $4240: $4e
	ld   a, a                                        ; $4241: $7f
	add  b                                           ; $4242: $80
	cp   a                                           ; $4243: $bf
	add  b                                           ; $4244: $80
	rst  $38                                         ; $4245: $ff
	ld   b, $00                                      ; $4246: $06 $00
	rst  $38                                         ; $4248: $ff
	nop                                              ; $4249: $00
	rst  $38                                         ; $424a: $ff
	nop                                              ; $424b: $00
	rst  $38                                         ; $424c: $ff
	add  b                                           ; $424d: $80
	add  c                                           ; $424e: $81
	ld   a, a                                        ; $424f: $7f
	add  [hl]                                        ; $4250: $86
	jp   nz, $0286                                   ; $4251: $c2 $86 $02

	nop                                              ; $4254: $00
	rrca                                             ; $4255: $0f
	add  a                                           ; $4256: $87
	nop                                              ; $4257: $00
	add  b                                           ; $4258: $80
	ld   h, b                                        ; $4259: $60
	add  b                                           ; $425a: $80
	db   $10                                         ; $425b: $10
	add  b                                           ; $425c: $80
	ret  nz                                          ; $425d: $c0

	db   $10                                         ; $425e: $10
	ld   e, d                                        ; $425f: $5a
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
	rst  $38                                         ; $426e: $ff
	ld   e, c                                        ; $426f: $59
	add  a                                           ; $4270: $87
	ld   c, $00                                      ; $4271: $0e $00
	ld   a, [bc]                                     ; $4273: $0a
	add  e                                           ; $4274: $83
	inc  c                                           ; $4275: $0c
	nop                                              ; $4276: $00
	ld   c, b                                        ; $4277: $48
	add  e                                           ; $4278: $83
	ld   c, a                                        ; $4279: $4f
	nop                                              ; $427a: $00
	ld   a, [bc]                                     ; $427b: $0a
	add  e                                           ; $427c: $83
	ld   c, [hl]                                     ; $427d: $4e
	inc  b                                           ; $427e: $04
	ld   c, a                                        ; $427f: $4f

Jump_079_4280:
	ld   c, [hl]                                     ; $4280: $4e
	ld   d, a                                        ; $4281: $57
	ld   e, [hl]                                     ; $4282: $5e
	ld   b, a                                        ; $4283: $47
	add  c                                           ; $4284: $81
	jr   c, jr_079_4207                              ; $4285: $38 $80

	jr   jr_079_428a                                 ; $4287: $18 $01

	db   $10                                         ; $4289: $10

jr_079_428a:
	jr   jr_079_420c                                 ; $428a: $18 $80

	inc  e                                           ; $428c: $1c
	add  b                                           ; $428d: $80
	inc  c                                           ; $428e: $0c
	inc  b                                           ; $428f: $04
	inc  a                                           ; $4290: $3c
	inc  c                                           ; $4291: $0c
	jr   c, jr_079_42a0                              ; $4292: $38 $0c

	ld   [hl], d                                     ; $4294: $72
	add  c                                           ; $4295: $81
	adc  $00                                         ; $4296: $ce $00
	add  $81                                         ; $4298: $c6 $81
	adc  $02                                         ; $429a: $ce $02
	adc  [hl]                                        ; $429c: $8e
	adc  $ec                                         ; $429d: $ce $ec
	add  e                                           ; $429f: $83

jr_079_42a0:
	ld   l, h                                        ; $42a0: $6c
	nop                                              ; $42a1: $00
	ld   c, b                                        ; $42a2: $48
	adc  l                                           ; $42a3: $8d
	ccf                                              ; $42a4: $3f
	nop                                              ; $42a5: $00
	add  hl, sp                                      ; $42a6: $39
	adc  l                                           ; $42a7: $8d
	cp   $01                                         ; $42a8: $fe $01
	ldh  a, [c]                                      ; $42aa: $f2
	ld   [hl], l                                     ; $42ab: $75
	add  b                                           ; $42ac: $80
	ld   l, d                                        ; $42ad: $6a
	add  b                                           ; $42ae: $80
	ld   [hl], h                                     ; $42af: $74
	add  b                                           ; $42b0: $80
	ld   l, d                                        ; $42b1: $6a
	add  b                                           ; $42b2: $80
	ld   [hl], l                                     ; $42b3: $75
	add  b                                           ; $42b4: $80
	ld   l, d                                        ; $42b5: $6a
	add  b                                           ; $42b6: $80
	ld   [hl], l                                     ; $42b7: $75
	add  b                                           ; $42b8: $80
	ld   l, d                                        ; $42b9: $6a
	nop                                              ; $42ba: $00
	add  b                                           ; $42bb: $80
	adc  l                                           ; $42bc: $8d
	nop                                              ; $42bd: $00
	nop                                              ; $42be: $00
	ld   a, a                                        ; $42bf: $7f
	add  c                                           ; $42c0: $81
	ld   [$0988], sp                                 ; $42c1: $08 $88 $09
	add  b                                           ; $42c4: $80
	dec  bc                                          ; $42c5: $0b
	ld   bc, $df9f                                   ; $42c6: $01 $9f $df
	add  b                                           ; $42c9: $80
	db   $db                                         ; $42ca: $db
	dec  b                                           ; $42cb: $05
	set  3, e                                        ; $42cc: $cb $db
	sub  e                                           ; $42ce: $93
	db   $db                                         ; $42cf: $db
	jp   c, $80db                                    ; $42d0: $da $db $80

	cp   e                                           ; $42d3: $bb
	add  d                                           ; $42d4: $82
	or   a                                           ; $42d5: $b7
	ld   [bc], a                                     ; $42d6: $02
	db   $10                                         ; $42d7: $10
	rst  ToBoot                                         ; $42d8: $c7
	ld   b, a                                        ; $42d9: $47
	add  c                                           ; $42da: $81
	rst  ToBoot                                         ; $42db: $c7
	nop                                              ; $42dc: $00
	add  [hl]                                        ; $42dd: $86
	add  c                                           ; $42de: $81
	add  a                                           ; $42df: $87
	add  d                                           ; $42e0: $82
	add  e                                           ; $42e1: $83
	inc  bc                                          ; $42e2: $03
	rst  ToBoot                                         ; $42e3: $c7
	inc  bc                                          ; $42e4: $03
	ld   c, e                                        ; $42e5: $4b
	ld   a, c                                        ; $42e6: $79
	add  b                                           ; $42e7: $80
	add  hl, sp                                      ; $42e8: $39
	nop                                              ; $42e9: $00
	add  hl, de                                      ; $42ea: $19
	add  c                                           ; $42eb: $81
	add  hl, sp                                      ; $42ec: $39
	inc  bc                                          ; $42ed: $03
	cp   c                                           ; $42ee: $b9
	cp   b                                           ; $42ef: $b8
	or   h                                           ; $42f0: $b4
	cp   h                                           ; $42f1: $bc
	add  b                                           ; $42f2: $80
	sbc  h                                           ; $42f3: $9c
	ld   [bc], a                                     ; $42f4: $02
	adc  h                                           ; $42f5: $8c
	sbc  h                                           ; $42f6: $9c
	ret  nz                                          ; $42f7: $c0

	add  a                                           ; $42f8: $87
	ret  z                                           ; $42f9: $c8

	add  b                                           ; $42fa: $80
	ld   [$0380], sp                                 ; $42fb: $08 $80 $03
	add  b                                           ; $42fe: $80
	nop                                              ; $42ff: $00
	add  d                                           ; $4300: $82
	ld   [bc], a                                     ; $4301: $02
	add  d                                           ; $4302: $82
	ldh  [c], a                                      ; $4303: $e2
	ld   [$e2c2], sp                                 ; $4304: $08 $c2 $e2
	and  d                                           ; $4307: $a2
	ldh  [c], a                                      ; $4308: $e2
	jp   nz, $a2e2                                   ; $4309: $c2 $e2 $a2

	ldh  [c], a                                      ; $430c: $e2
	ld   e, h                                        ; $430d: $5c
	add  l                                           ; $430e: $85
	call c, $df80                                    ; $430f: $dc $80 $df
	add  h                                           ; $4312: $84
	call c, $d510                                    ; $4313: $dc $10 $d5
	rst  $38                                         ; $4316: $ff
	nop                                              ; $4317: $00
	rst  $38                                         ; $4318: $ff
	ld   bc, $01ff                                   ; $4319: $01 $ff $01
	rst  $38                                         ; $431c: $ff
	ld   bc, $03ff                                   ; $431d: $01 $ff $03
	rst  $38                                         ; $4320: $ff
	inc  bc                                          ; $4321: $03
	rst  $38                                         ; $4322: $ff
	ld   bc, $5dff                                   ; $4323: $01 $ff $5d
	add  l                                           ; $4326: $85
	inc  c                                           ; $4327: $0c
	ld   bc, $0804                                   ; $4328: $01 $04 $08
	add  b                                           ; $432b: $80
	add  hl, bc                                      ; $432c: $09
	nop                                              ; $432d: $00
	ld   [$0981], sp                                 ; $432e: $08 $81 $09
	nop                                              ; $4331: $00
	sbc  d                                           ; $4332: $9a
	add  e                                           ; $4333: $83
	call c, Call_079_5802                            ; $4334: $dc $02 $58
	ret  c                                           ; $4337: $d8

	add  sp, -$7f                                    ; $4338: $e8 $81
	cp   b                                           ; $433a: $b8
	dec  b                                           ; $433b: $05
	sbc  a                                           ; $433c: $9f
	or   b                                           ; $433d: $b0
	rst  $38                                         ; $433e: $ff
	ld   [hl], b                                     ; $433f: $70
	dec  c                                           ; $4340: $0d
	ld   c, $80                                      ; $4341: $0e $80
	ld   b, $00                                      ; $4343: $06 $00
	dec  b                                           ; $4345: $05
	add  c                                           ; $4346: $81
	rlca                                             ; $4347: $07
	add  b                                           ; $4348: $80
	inc  bc                                          ; $4349: $03
	ld   b, $02                                      ; $434a: $06 $02
	inc  bc                                          ; $434c: $03
	ccf                                              ; $434d: $3f
	ld   bc, $003e                                   ; $434e: $01 $3e $00
	ccf                                              ; $4351: $3f
	add  b                                           ; $4352: $80
	ld   l, h                                        ; $4353: $6c
	add  b                                           ; $4354: $80
	inc  l                                           ; $4355: $2c
	inc  c                                           ; $4356: $0c
	inc  h                                           ; $4357: $24
	ld   h, $36                                      ; $4358: $26 $36
	sub  [hl]                                        ; $435a: $96
	or   [hl]                                        ; $435b: $b6
	sub  h                                           ; $435c: $94
	sub  [hl]                                        ; $435d: $96
	ld   e, [hl]                                     ; $435e: $5e
	jp   c, $ce94                                    ; $435f: $da $94 $ce

	ret                                              ; $4362: $c9


	ld   bc, $af80                                   ; $4363: $01 $80 $af
	add  b                                           ; $4366: $80
	ld   d, a                                        ; $4367: $57
	add  b                                           ; $4368: $80
	cp   a                                           ; $4369: $bf
	add  b                                           ; $436a: $80
	ld   d, a                                        ; $436b: $57
	add  b                                           ; $436c: $80
	xor  a                                           ; $436d: $af
	add  b                                           ; $436e: $80
	ld   [hl], a                                     ; $436f: $77
	add  b                                           ; $4370: $80
	xor  a                                           ; $4371: $af

jr_079_4372:
	add  b                                           ; $4372: $80
	ld   c, b                                        ; $4373: $48
	adc  h                                           ; $4374: $8c
	ret  z                                           ; $4375: $c8

	ld   bc, $750a                                   ; $4376: $01 $0a $75
	add  b                                           ; $4379: $80
	ld   l, d                                        ; $437a: $6a
	add  b                                           ; $437b: $80
	ld   [hl], h                                     ; $437c: $74
	add  b                                           ; $437d: $80
	ld   l, d                                        ; $437e: $6a
	add  b                                           ; $437f: $80
	ld   [hl], h                                     ; $4380: $74
	add  b                                           ; $4381: $80
	ld   l, b                                        ; $4382: $68
	add  b                                           ; $4383: $80
	ld   d, h                                        ; $4384: $54
	add  b                                           ; $4385: $80

jr_079_4386:
	ld   l, b                                        ; $4386: $68
	ld   bc, $80ff                                   ; $4387: $01 $ff $80
	add  b                                           ; $438a: $80
	ldh  a, [$80]                                    ; $438b: $f0 $80
	db   $fc                                         ; $438d: $fc
	add  d                                           ; $438e: $82
	nop                                              ; $438f: $00
	add  b                                           ; $4390: $80
	inc  e                                           ; $4391: $1c
	add  c                                           ; $4392: $81
	ld   e, h                                        ; $4393: $5c
	inc  bc                                          ; $4394: $03
	call c, $0b03                                    ; $4395: $dc $03 $0b
	ld   a, [bc]                                     ; $4398: $0a
	add  c                                           ; $4399: $81
	dec  bc                                          ; $439a: $0b
	add  b                                           ; $439b: $80
	dec  de                                          ; $439c: $1b
	inc  bc                                          ; $439d: $03
	dec  bc                                          ; $439e: $0b
	dec  de                                          ; $439f: $1b
	db   $10                                         ; $43a0: $10
	dec  de                                          ; $43a1: $1b
	add  d                                           ; $43a2: $82
	ld   d, $00                                      ; $43a3: $16 $00
	add  $81                                         ; $43a5: $c6 $81
	rst  $30                                         ; $43a7: $f7
	ld   bc, $e666                                   ; $43a8: $01 $66 $e6
	add  b                                           ; $43ab: $80
	xor  $02                                         ; $43ac: $ee $02
	ld   a, [hl+]                                    ; $43ae: $2a
	ld   l, [hl]                                     ; $43af: $6e
	ld   l, h                                        ; $43b0: $6c
	add  c                                           ; $43b1: $81
	ld   c, h                                        ; $43b2: $4c
	ld   bc, $dc5c                                   ; $43b3: $01 $5c $dc
	add  [hl]                                        ; $43b6: $86
	ld   bc, $0086                                   ; $43b7: $01 $86 $00
	nop                                              ; $43ba: $00
	ld   d, e                                        ; $43bb: $53
	add  c                                           ; $43bc: $81
	sbc  h                                           ; $43bd: $9c
	inc  bc                                          ; $43be: $03
	jp   nz, Jump_079_4ece                           ; $43bf: $c2 $ce $4e

	adc  $80                                         ; $43c2: $ce $80
	add  $01                                         ; $43c4: $c6 $01
	ldh  [$e6], a                                    ; $43c6: $e0 $e6
	add  b                                           ; $43c8: $80
	rst  $20                                         ; $43c9: $e7
	inc  bc                                          ; $43ca: $03
	and  e                                           ; $43cb: $a3
	db   $e3                                         ; $43cc: $e3
	push bc                                          ; $43cd: $c5
	rlca                                             ; $43ce: $07

jr_079_43cf:
	add  b                                           ; $43cf: $80
	inc  bc                                          ; $43d0: $03
	add  b                                           ; $43d1: $80
	rst  $38                                         ; $43d2: $ff

jr_079_43d3:
	adc  b                                           ; $43d3: $88
	nop                                              ; $43d4: $00
	add  b                                           ; $43d5: $80
	ldh  [c], a                                      ; $43d6: $e2

jr_079_43d7:
	ld   [bc], a                                     ; $43d7: $02
	jp   nz, $82e2                                   ; $43d8: $c2 $e2 $82

	add  c                                           ; $43db: $81
	ldh  [c], a                                      ; $43dc: $e2
	nop                                              ; $43dd: $00
	and  d                                           ; $43de: $a2
	add  l                                           ; $43df: $85
	ldh  [c], a                                      ; $43e0: $e2
	nop                                              ; $43e1: $00
	rrca                                             ; $43e2: $0f
	add  b                                           ; $43e3: $80
	ldh  a, [$80]                                    ; $43e4: $f0 $80
	stop                                             ; $43e6: $10 $00
	nop                                              ; $43e8: $00
	add  b                                           ; $43e9: $80
	ret  nz                                          ; $43ea: $c0

	add  b                                           ; $43eb: $80
	jr   nc, jr_079_4372                             ; $43ec: $30 $84

	nop                                              ; $43ee: $00
	ld   [$ff5b], sp                                 ; $43ef: $08 $5b $ff
	inc  bc                                          ; $43f2: $03
	rst  $38                                         ; $43f3: $ff
	rla                                              ; $43f4: $17
	rst  $38                                         ; $43f5: $ff
	rra                                              ; $43f6: $1f
	rst  $38                                         ; $43f7: $ff
	ld   e, a                                        ; $43f8: $5f
	add  d                                           ; $43f9: $82
	rst  $38                                         ; $43fa: $ff
	add  b                                           ; $43fb: $80
	cp   $01                                         ; $43fc: $fe $01
	nop                                              ; $43fe: $00
	db   $10                                         ; $43ff: $10
	add  c                                           ; $4400: $81
	add  hl, de                                      ; $4401: $19
	nop                                              ; $4402: $00
	jr   jr_079_4386                                 ; $4403: $18 $81

jr_079_4405:
	inc  de                                          ; $4405: $13
	inc  bc                                          ; $4406: $03
	nop                                              ; $4407: $00
	rlca                                             ; $4408: $07
	dec  b                                           ; $4409: $05
	rlca                                             ; $440a: $07
	add  b                                           ; $440b: $80
	add  $05                                         ; $440c: $c6 $05
	daa                                              ; $440e: $27
	jr   nz, jr_079_4470                             ; $440f: $20 $5f

	ld   h, b                                        ; $4411: $60
	and  b                                           ; $4412: $a0
	ldh  [$80], a                                    ; $4413: $e0 $80
	ret  nz                                          ; $4415: $c0

	inc  bc                                          ; $4416: $03
	ld   b, e                                        ; $4417: $43
	add  e                                           ; $4418: $83
	add  b                                           ; $4419: $80
	add  e                                           ; $441a: $83
	add  d                                           ; $441b: $82
	inc  bc                                          ; $441c: $03
	ld   [bc], a                                     ; $441d: $02
	cp   [hl]                                        ; $441e: $be
	ld   [bc], a                                     ; $441f: $02
	ccf                                              ; $4420: $3f
	add  e                                           ; $4421: $83
	nop                                              ; $4422: $00
	ld   [bc], a                                     ; $4423: $02
	ccf                                              ; $4424: $3f
	rst  $38                                         ; $4425: $ff
	ld   bc, $ff83                                   ; $4426: $01 $83 $ff
	add  b                                           ; $4429: $80
	ld   [hl], e                                     ; $442a: $73
	db   $10                                         ; $442b: $10
	inc  hl                                          ; $442c: $23
	xor  $df                                         ; $442d: $ee $df
	ld   [hl], a                                     ; $442f: $77
	ld   sp, $8b37                                   ; $4430: $31 $37 $8b
	sbc  e                                           ; $4433: $9b
	sbc  d                                           ; $4434: $9a
	sbc  e                                           ; $4435: $9b
	add  h                                           ; $4436: $84
	adc  a                                           ; $4437: $8f
	add  b                                           ; $4438: $80
	add  [hl]                                        ; $4439: $86
	rst  $38                                         ; $443a: $ff
	add  c                                           ; $443b: $81
	nop                                              ; $443c: $00
	adc  c                                           ; $443d: $89
	ccf                                              ; $443e: $3f
	inc  b                                           ; $443f: $04
	ld   a, a                                        ; $4440: $7f
	ld   e, a                                        ; $4441: $5f
	sbc  a                                           ; $4442: $9f
	add  b                                           ; $4443: $80
	ld   b, $8b                                      ; $4444: $06 $8b
	cp   $03                                         ; $4446: $fe $03
	ld   hl, sp+$00                                  ; $4448: $f8 $00
	dec  hl                                          ; $444a: $2b
	ld   d, h                                        ; $444b: $54
	add  b                                           ; $444c: $80
	jr   z, jr_079_43cf                              ; $444d: $28 $80

	ld   d, b                                        ; $444f: $50
	add  b                                           ; $4450: $80
	jr   nz, jr_079_43d3                             ; $4451: $20 $80

	ld   d, b                                        ; $4453: $50
	add  b                                           ; $4454: $80
	jr   nz, jr_079_43d7                             ; $4455: $20 $80

	ld   b, b                                        ; $4457: $40
	add  b                                           ; $4458: $80
	nop                                              ; $4459: $00
	ld   bc, $0986                                   ; $445a: $01 $86 $09
	add  b                                           ; $445d: $80
	nop                                              ; $445e: $00
	add  b                                           ; $445f: $80
	inc  c                                           ; $4460: $0c
	ld   bc, $03f3                                   ; $4461: $01 $f3 $03
	add  b                                           ; $4464: $80
	nop                                              ; $4465: $00
	add  b                                           ; $4466: $80
	add  sp, -$7e                                    ; $4467: $e8 $82
	ld   [$8201], sp                                 ; $4469: $08 $01 $82
	ld   d, $80                                      ; $446c: $16 $80
	inc  e                                           ; $446e: $1c
	rlca                                             ; $446f: $07

jr_079_4470:
	inc  d                                           ; $4470: $14
	dec  e                                           ; $4471: $1d
	inc  e                                           ; $4472: $1c
	add  hl, de                                      ; $4473: $19
	db   $10                                         ; $4474: $10
	jr   jr_079_4477                                 ; $4475: $18 $00

jr_079_4477:
	db   $10                                         ; $4477: $10
	add  c                                           ; $4478: $81
	nop                                              ; $4479: $00
	ld   [$9101], sp                                 ; $447a: $08 $01 $91
	sbc  b                                           ; $447d: $98
	xor  a                                           ; $447e: $af
	cp   b                                           ; $447f: $b8
	or   b                                           ; $4480: $b0
	jr   nc, jr_079_4493                             ; $4481: $30 $10

	jr   nc, jr_079_4405                             ; $4483: $30 $80

	ld   h, b                                        ; $4485: $60
	inc  bc                                          ; $4486: $03
	xor  b                                           ; $4487: $a8
	call nz, $8704                                   ; $4488: $c4 $04 $87
	add  b                                           ; $448b: $80
	add  h                                           ; $448c: $84
	ld   [bc], a                                     ; $448d: $02
	ret  nc                                          ; $448e: $d0

	nop                                              ; $448f: $00
	rst  ToBoot                                         ; $4490: $c7
	add  [hl]                                        ; $4491: $86
	nop                                              ; $4492: $00

jr_079_4493:
	ld   [bc], a                                     ; $4493: $02
	ld   bc, $ff39                                   ; $4494: $01 $39 $ff
	add  b                                           ; $4497: $80
	nop                                              ; $4498: $00
	inc  bc                                          ; $4499: $03
	ld   sp, $9171                                   ; $449a: $31 $71 $91
	ld   sp, $3880                                   ; $449d: $31 $80 $38
	nop                                              ; $44a0: $00
	inc  c                                           ; $44a1: $0c
	add  c                                           ; $44a2: $81
	inc  e                                           ; $44a3: $1c
	ld   b, $86                                      ; $44a4: $06 $86
	ld   c, $0b                                      ; $44a6: $0e $0b
	rlca                                             ; $44a8: $07
	dec  b                                           ; $44a9: $05
	rlca                                             ; $44aa: $07
	add  [hl]                                        ; $44ab: $86
	add  a                                           ; $44ac: $87
	nop                                              ; $44ad: $00
	add  b                                           ; $44ae: $80
	inc  bc                                          ; $44af: $03
	add  d                                           ; $44b0: $82
	rrca                                             ; $44b1: $0f
	inc  bc                                          ; $44b2: $03
	inc  de                                          ; $44b3: $13
	db   $e3                                         ; $44b4: $e3
	ldh  [$e3], a                                    ; $44b5: $e0 $e3
	add  b                                           ; $44b7: $80
	adc  a                                           ; $44b8: $8f
	ld   bc, $8f8d                                   ; $44b9: $01 $8d $8f
	add  b                                           ; $44bc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44bd: $cf
	inc  bc                                          ; $44be: $03
	call z, $eecf                                    ; $44bf: $cc $cf $ee
	db   $ec                                         ; $44c2: $ec
	add  b                                           ; $44c3: $80
	call z, $1e01                                    ; $44c4: $cc $01 $1e
	cp   $80                                         ; $44c7: $fe $80
	ld   sp, hl                                      ; $44c9: $f9
	add  b                                           ; $44ca: $80
	ldh  a, [$80]                                    ; $44cb: $f0 $80
	pop  hl                                          ; $44cd: $e1
	ld   [bc], a                                     ; $44ce: $02
	pop  af                                          ; $44cf: $f1
	sub  c                                           ; $44d0: $91
	ld   de, $9180                                   ; $44d1: $11 $80 $91
	inc  bc                                          ; $44d4: $03
	sub  e                                           ; $44d5: $93
	jp   $06c7                                       ; $44d6: $c3 $c7 $06


	add  b                                           ; $44d9: $80
	add  b                                           ; $44da: $80
	ld   b, $c0                                      ; $44db: $06 $c0
	add  b                                           ; $44dd: $80
	ld   b, b                                        ; $44de: $40
	add  b                                           ; $44df: $80
	rst  $38                                         ; $44e0: $ff
	ret  nz                                          ; $44e1: $c0

	rst  $38                                         ; $44e2: $ff
	add  b                                           ; $44e3: $80
	ret  nz                                          ; $44e4: $c0

	dec  b                                           ; $44e5: $05
	push af                                          ; $44e6: $f5
	rst  $38                                         ; $44e7: $ff
	push af                                          ; $44e8: $f5
	rst  $38                                         ; $44e9: $ff
	ld   e, h                                        ; $44ea: $5c
	inc  e                                           ; $44eb: $1c
	add  b                                           ; $44ec: $80
	add  b                                           ; $44ed: $80
	add  b                                           ; $44ee: $80
	adc  h                                           ; $44ef: $8c
	inc  bc                                          ; $44f0: $03
	nop                                              ; $44f1: $00
	rst  $38                                         ; $44f2: $ff
	nop                                              ; $44f3: $00
	rst  $38                                         ; $44f4: $ff
	add  c                                           ; $44f5: $81
	nop                                              ; $44f6: $00
	inc  c                                           ; $44f7: $0c
	rst  $38                                         ; $44f8: $ff
	ld   bc, $03ff                                   ; $44f9: $01 $ff $03
	ld   b, $0d                                      ; $44fc: $06 $0d
	rrca                                             ; $44fe: $0f
	dec  b                                           ; $44ff: $05
	inc  bc                                          ; $4500: $03
	dec  c                                           ; $4501: $0d
	cp   $0e                                         ; $4502: $fe $0e
	cp   $80                                         ; $4504: $fe $80
	ld   c, $04                                      ; $4506: $0e $04
	ld   a, $fe                                      ; $4508: $3e $fe
	rst  JumpTable                                         ; $450a: $df
	rst  $38                                         ; $450b: $ff
	sub  c                                           ; $450c: $91
	add  e                                           ; $450d: $83
	ld   [hl], e                                     ; $450e: $73
	ld   bc, $3fc6                                   ; $450f: $01 $c6 $3f
	add  h                                           ; $4512: $84
	ld   a, a                                        ; $4513: $7f
	add  c                                           ; $4514: $81
	rst  $38                                         ; $4515: $ff
	nop                                              ; $4516: $00
	rlca                                             ; $4517: $07
	add  b                                           ; $4518: $80
	ld   [bc], a                                     ; $4519: $02
	add  b                                           ; $451a: $80
	nop                                              ; $451b: $00
	nop                                              ; $451c: $00
	ret  nz                                          ; $451d: $c0

	add  d                                           ; $451e: $82
	db   $fc                                         ; $451f: $fc
	ld   bc, $b8f8                                   ; $4520: $01 $f8 $b8
	add  b                                           ; $4523: $80
	ld   hl, sp+$0a                                  ; $4524: $f8 $0a
	ldh  a, [rSVBK]                                  ; $4526: $f0 $70
	db   $10                                         ; $4528: $10
	jr   nc, jr_079_4563                             ; $4529: $30 $38

	db   $10                                         ; $452b: $10
	ld   [$9f90], sp                                 ; $452c: $08 $90 $9f
	sbc  b                                           ; $452f: $98
	sbc  a                                           ; $4530: $9f
	add  b                                           ; $4531: $80
	jr   jr_079_4538                                 ; $4532: $18 $04

	sbc  [hl]                                        ; $4534: $9e
	sbc  a                                           ; $4535: $9f
	ld   e, $1f                                      ; $4536: $1e $1f

jr_079_4538:
	ld   [$0084], sp                                 ; $4538: $08 $84 $00
	ld   [bc], a                                     ; $453b: $02
	rst  $38                                         ; $453c: $ff
	nop                                              ; $453d: $00
	rst  $38                                         ; $453e: $ff
	add  b                                           ; $453f: $80
	nop                                              ; $4540: $00
	inc  b                                           ; $4541: $04
	and  b                                           ; $4542: $a0
	rst  $38                                         ; $4543: $ff
	and  b                                           ; $4544: $a0
	rst  $38                                         ; $4545: $ff
	ld   a, a                                        ; $4546: $7f
	add  b                                           ; $4547: $80
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	ld   bc, $0080                                   ; $454a: $01 $80 $00
	inc  bc                                          ; $454d: $03
	ld   a, [hl]                                     ; $454e: $7e
	rst  $38                                         ; $454f: $ff
	nop                                              ; $4550: $00
	rst  $38                                         ; $4551: $ff
	add  b                                           ; $4552: $80
	nop                                              ; $4553: $00
	dec  b                                           ; $4554: $05
	ld   b, $fe                                      ; $4555: $06 $fe
	jp   c, $a3fe                                    ; $4557: $da $fe $a3

	add  b                                           ; $455a: $80
	add  b                                           ; $455b: $80
	ret  nz                                          ; $455c: $c0

	ld   [bc], a                                     ; $455d: $02
	add  b                                           ; $455e: $80
	ld   b, b                                        ; $455f: $40
	cp   a                                           ; $4560: $bf
	add  c                                           ; $4561: $81
	ret  nz                                          ; $4562: $c0

jr_079_4563:
	add  b                                           ; $4563: $80
	db   $fc                                         ; $4564: $fc
	add  b                                           ; $4565: $80
	jp   $c180                                       ; $4566: $c3 $80 $c1


	ld   bc, $81c0                                   ; $4569: $01 $c0 $81
	add  b                                           ; $456c: $80
	ld   h, c                                        ; $456d: $61
	ld   b, $1e                                      ; $456e: $06 $1e
	rra                                              ; $4570: $1f
	rlca                                             ; $4571: $07
	nop                                              ; $4572: $00
	add  h                                           ; $4573: $84
	add  b                                           ; $4574: $80
	db   $e3                                         ; $4575: $e3
	add  b                                           ; $4576: $80
	ld   hl, sp-$80                                  ; $4577: $f8 $80
	and  $01                                         ; $4579: $e6 $01
	pop  hl                                          ; $457b: $e1
	push de                                          ; $457c: $d5
	add  e                                           ; $457d: $83
	inc  b                                           ; $457e: $04
	ld   [bc], a                                     ; $457f: $02
	inc  h                                           ; $4580: $24
	inc  b                                           ; $4581: $04
	inc  c                                           ; $4582: $0c
	add  b                                           ; $4583: $80
	inc  b                                           ; $4584: $04
	inc  bc                                          ; $4585: $03
	db   $fc                                         ; $4586: $fc
	db   $fd                                         ; $4587: $fd
	rst  $38                                         ; $4588: $ff
	ld   [bc], a                                     ; $4589: $02
	add  b                                           ; $458a: $80
	rst  $38                                         ; $458b: $ff
	inc  b                                           ; $458c: $04
	cp   $06                                         ; $458d: $fe $06
	cp   $f8                                         ; $458f: $fe $f8
	cp   $80                                         ; $4591: $fe $80
	ld   a, $82                                      ; $4593: $3e $82
	nop                                              ; $4595: $00
	inc  b                                           ; $4596: $04
	ld   a, a                                        ; $4597: $7f
	nop                                              ; $4598: $00
	ldh  [$80], a                                    ; $4599: $e0 $80
	add  sp, -$80                                    ; $459b: $e8 $80
	add  e                                           ; $459d: $83
	add  c                                           ; $459e: $81
	add  c                                           ; $459f: $81
	ld   bc, $81f7                                   ; $45a0: $01 $f7 $81
	add  d                                           ; $45a3: $82
	add  b                                           ; $45a4: $80
	dec  b                                           ; $45a5: $05
	ld   a, a                                        ; $45a6: $7f
	rst  $38                                         ; $45a7: $ff
	sbc  a                                           ; $45a8: $9f
	rst  $38                                         ; $45a9: $ff
	ld   e, $0e                                      ; $45aa: $1e $0e
	adc  h                                           ; $45ac: $8c
	nop                                              ; $45ad: $00
	ld   bc, $0cfc                                   ; $45ae: $01 $fc $0c
	add  [hl]                                        ; $45b1: $86
	inc  b                                           ; $45b2: $04
	add  b                                           ; $45b3: $80
	ld   b, $82                                      ; $45b4: $06 $82
	ld   [bc], a                                     ; $45b6: $02
	ld   b, $d5                                      ; $45b7: $06 $d5
	rst  JumpTable                                         ; $45b9: $df
	ld   sp, $f93f                                   ; $45ba: $31 $3f $f9
	rst  $38                                         ; $45bd: $ff
	inc  bc                                          ; $45be: $03
	add  a                                           ; $45bf: $87
	ld   bc, $bf01                                   ; $45c0: $01 $01 $bf
	rst  $38                                         ; $45c3: $ff
	add  d                                           ; $45c4: $82
	rst  JumpTable                                         ; $45c5: $df
	add  h                                           ; $45c6: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c7: $cf
	add  b                                           ; $45c8: $80
	push bc                                          ; $45c9: $c5
	add  b                                           ; $45ca: $80
	ret  nz                                          ; $45cb: $c0

	nop                                              ; $45cc: $00
	cp   a                                           ; $45cd: $bf
	adc  c                                           ; $45ce: $89
	rst  $38                                         ; $45cf: $ff
	add  b                                           ; $45d0: $80
	ld   d, l                                        ; $45d1: $55
	add  b                                           ; $45d2: $80
	nop                                              ; $45d3: $00
	ld   [bc], a                                     ; $45d4: $02
	ld   e, l                                        ; $45d5: $5d
	rst  $38                                         ; $45d6: $ff
	ld   a, a                                        ; $45d7: $7f
	add  c                                           ; $45d8: $81
	rst  $38                                         ; $45d9: $ff
	nop                                              ; $45da: $00
	sbc  $83                                         ; $45db: $de $83
	cp   $80                                         ; $45dd: $fe $80
	ld   c, [hl]                                     ; $45df: $4e
	add  b                                           ; $45e0: $80
	ld   c, $00                                      ; $45e1: $0e $00
	db   $fd                                         ; $45e3: $fd
	add  e                                           ; $45e4: $83
	rst  $38                                         ; $45e5: $ff
	adc  b                                           ; $45e6: $88
	nop                                              ; $45e7: $00
	add  b                                           ; $45e8: $80
	ldh  a, [$82]                                    ; $45e9: $f0 $82
	ldh  [$88], a                                    ; $45eb: $e0 $88
	nop                                              ; $45ed: $00
	ld   bc, $1f17                                   ; $45ee: $01 $17 $1f
	add  b                                           ; $45f1: $80
	dec  de                                          ; $45f2: $1b
	add  [hl]                                        ; $45f3: $86
	add  hl, de                                      ; $45f4: $19
	add  d                                           ; $45f5: $82
	jr   jr_079_45fa                                 ; $45f6: $18 $02

	or   $ff                                         ; $45f8: $f6 $ff

jr_079_45fa:
	cp   $87                                         ; $45fa: $fe $87
	rst  $38                                         ; $45fc: $ff
	add  b                                           ; $45fd: $80
	xor  d                                           ; $45fe: $aa
	add  b                                           ; $45ff: $80
	nop                                              ; $4600: $00
	ld   [bc], a                                     ; $4601: $02
	jp   z, $cefe                                    ; $4602: $ca $fe $ce

	add  l                                           ; $4605: $85
	cp   $01                                         ; $4606: $fe $01
	ld   hl, sp-$04                                  ; $4608: $f8 $fc
	add  b                                           ; $460a: $80
	xor  b                                           ; $460b: $a8
	add  b                                           ; $460c: $80
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	add  b                                           ; $460f: $80
	adc  l                                           ; $4610: $8d
	ret  nz                                          ; $4611: $c0

	ld   bc, $f8b8                                   ; $4612: $01 $b8 $f8
	add  b                                           ; $4615: $80
	ld   a, [hl]                                     ; $4616: $7e
	add  b                                           ; $4617: $80
	ccf                                              ; $4618: $3f
	add  h                                           ; $4619: $84
	nop                                              ; $461a: $00
	add  d                                           ; $461b: $82
	ld   a, [hl-]                                    ; $461c: $3a
	add  d                                           ; $461d: $82
	nop                                              ; $461e: $00
	add  b                                           ; $461f: $80
	rst  $38                                         ; $4620: $ff
	adc  b                                           ; $4621: $88
	nop                                              ; $4622: $00
	inc  bc                                          ; $4623: $03
	ld   h, b                                        ; $4624: $60
	ld   h, a                                        ; $4625: $67
	ld   a, a                                        ; $4626: $7f
	ld   a, b                                        ; $4627: $78
	add  b                                           ; $4628: $80
	rst  $38                                         ; $4629: $ff
	add  [hl]                                        ; $462a: $86
	nop                                              ; $462b: $00
	add  b                                           ; $462c: $80
	ld   bc, $0403                                   ; $462d: $01 $03 $04
	db   $fc                                         ; $4630: $fc
	cp   $06                                         ; $4631: $fe $06
	add  b                                           ; $4633: $80
	rst  $38                                         ; $4634: $ff
	add  [hl]                                        ; $4635: $86
	nop                                              ; $4636: $00
	add  b                                           ; $4637: $80
	add  b                                           ; $4638: $80
	db   $d3                                         ; $4639: $d3
	ld   bc, $0087                                   ; $463a: $01 $87 $00
	add  [hl]                                        ; $463d: $86
	rrca                                             ; $463e: $0f
	add  [hl]                                        ; $463f: $86
	nop                                              ; $4640: $00
	adc  a                                           ; $4641: $8f
	rst  $38                                         ; $4642: $ff
	dec  b                                           ; $4643: $05
	ld   a, a                                        ; $4644: $7f
	rst  $38                                         ; $4645: $ff
	adc  a                                           ; $4646: $8f
	rst  $38                                         ; $4647: $ff
	ldh  a, [rIE]                                    ; $4648: $f0 $ff
	add  [hl]                                        ; $464a: $86
	nop                                              ; $464b: $00
	dec  b                                           ; $464c: $05
	ccf                                              ; $464d: $3f
	call c, $f6ec                                    ; $464e: $dc $ec $f6
	ld   a, [$81fc]                                  ; $4651: $fa $fc $81
	rst  $38                                         ; $4654: $ff
	add  l                                           ; $4655: $85
	nop                                              ; $4656: $00
	inc  bc                                          ; $4657: $03
	rst  $38                                         ; $4658: $ff
	nop                                              ; $4659: $00
	ld   c, $0f                                      ; $465a: $0e $0f
	add  b                                           ; $465c: $80
	sbc  a                                           ; $465d: $9f
	add  b                                           ; $465e: $80
	ccf                                              ; $465f: $3f
	nop                                              ; $4660: $00
	cp   $85                                         ; $4661: $fe $85
	nop                                              ; $4663: $00
	dec  b                                           ; $4664: $05
	ldh  a, [$2f]                                    ; $4665: $f0 $2f
	dec  h                                           ; $4667: $25
	push bc                                          ; $4668: $c5
	ret  nz                                          ; $4669: $c0

	ldh  [$80], a                                    ; $466a: $e0 $80
	rst  $28                                         ; $466c: $ef
	nop                                              ; $466d: $00
	rra                                              ; $466e: $1f
	add  [hl]                                        ; $466f: $86
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	rst  $38                                         ; $4672: $ff
	add  b                                           ; $4673: $80
	ld   d, l                                        ; $4674: $55
	add  b                                           ; $4675: $80
	nop                                              ; $4676: $00
	add  c                                           ; $4677: $81
	rst  $38                                         ; $4678: $ff
	add  l                                           ; $4679: $85
	nop                                              ; $467a: $00
	ld   b, $fc                                      ; $467b: $06 $fc
	dec  sp                                          ; $467d: $3b
	scf                                              ; $467e: $37
	rst  $28                                         ; $467f: $ef
	rst  JumpTable                                         ; $4680: $df
	cp   a                                           ; $4681: $bf
	ld   a, a                                        ; $4682: $7f
	add  b                                           ; $4683: $80
	rst  $38                                         ; $4684: $ff
	add  l                                           ; $4685: $85
	nop                                              ; $4686: $00
	inc  bc                                          ; $4687: $03
	ld   [$55f7], sp                                 ; $4688: $08 $f7 $55
	ld   d, a                                        ; $468b: $57
	add  b                                           ; $468c: $80
	ld   b, $02                                      ; $468d: $06 $02
	db   $e4                                         ; $468f: $e4
	rst  $20                                         ; $4690: $e7
	cp   $85                                         ; $4691: $fe $85
	nop                                              ; $4693: $00
	ld   [$cb30], sp                                 ; $4694: $08 $30 $cb
	ld   d, c                                        ; $4697: $51
	ld   d, a                                        ; $4698: $57
	ld   b, $03                                      ; $4699: $06 $03
	ld   sp, hl                                      ; $469b: $f9
	db   $fd                                         ; $469c: $fd
	db   $fc                                         ; $469d: $fc
	add  l                                           ; $469e: $85
	nop                                              ; $469f: $00
	ld   bc, $03fc                                   ; $46a0: $01 $fc $03
	add  b                                           ; $46a3: $80
	adc  d                                           ; $46a4: $8a
	add  b                                           ; $46a5: $80
	add  b                                           ; $46a6: $80

jr_079_46a7:
	add  b                                           ; $46a7: $80
	sbc  a                                           ; $46a8: $9f
	nop                                              ; $46a9: $00
	rst  $38                                         ; $46aa: $ff
	add  l                                           ; $46ab: $85
	nop                                              ; $46ac: $00
	inc  bc                                          ; $46ad: $03
	db   $10                                         ; $46ae: $10
	rst  $28                                         ; $46af: $ef
	xor  d                                           ; $46b0: $aa
	ld   [$6080], a                                  ; $46b1: $ea $80 $60
	ld   [bc], a                                     ; $46b4: $02
	daa                                              ; $46b5: $27
	rst  $20                                         ; $46b6: $e7
	ld   a, a                                        ; $46b7: $7f
	add  [hl]                                        ; $46b8: $86
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	rst  $38                                         ; $46bb: $ff
	add  b                                           ; $46bc: $80
	xor  d                                           ; $46bd: $aa
	add  b                                           ; $46be: $80
	nop                                              ; $46bf: $00
	add  b                                           ; $46c0: $80
	rst  $38                                         ; $46c1: $ff
	add  b                                           ; $46c2: $80
	ld   bc, $c180                                   ; $46c3: $01 $80 $c1
	adc  b                                           ; $46c6: $88
	rst  $38                                         ; $46c7: $ff
	add  b                                           ; $46c8: $80
	ld   hl, sp+$00                                  ; $46c9: $f8 $00
	ret  nz                                          ; $46cb: $c0

	adc  c                                           ; $46cc: $89
	rst  $38                                         ; $46cd: $ff
	inc  b                                           ; $46ce: $04
	ccf                                              ; $46cf: $3f
	inc  bc                                          ; $46d0: $03
	ei                                               ; $46d1: $fb
	ld   bc, $8506                                   ; $46d2: $01 $06 $85
	nop                                              ; $46d5: $00
	ld   [$7f83], sp                                 ; $46d6: $08 $83 $7f
	ccf                                              ; $46d9: $3f
	inc  a                                           ; $46da: $3c
	jr   nc, jr_079_4710                             ; $46db: $30 $33

	add  e                                           ; $46dd: $83
	adc  [hl]                                        ; $46de: $8e
	pop  af                                          ; $46df: $f1
	adc  [hl]                                        ; $46e0: $8e
	rrca                                             ; $46e1: $0f
	add  c                                           ; $46e2: $81
	rst  $38                                         ; $46e3: $ff
	inc  c                                           ; $46e4: $0c
	cp   $ff                                         ; $46e5: $fe $ff
	ld   sp, hl                                      ; $46e7: $f9
	rst  $38                                         ; $46e8: $ff
	rst  $30                                         ; $46e9: $f7
	rst  $38                                         ; $46ea: $ff
	rst  $28                                         ; $46eb: $ef
	rst  $38                                         ; $46ec: $ff
	sbc  a                                           ; $46ed: $9f
	rst  $38                                         ; $46ee: $ff
	ld   a, a                                        ; $46ef: $7f
	rst  $38                                         ; $46f0: $ff
	nop                                              ; $46f1: $00
	sub  c                                           ; $46f2: $91
	rst  $38                                         ; $46f3: $ff
	add  h                                           ; $46f4: $84
	cp   $84                                         ; $46f5: $fe $84
	ldh  [$80], a                                    ; $46f7: $e0 $80
	ld   b, b                                        ; $46f9: $40
	add  b                                           ; $46fa: $80
	rlca                                             ; $46fb: $07
	nop                                              ; $46fc: $00
	ld   c, $83                                      ; $46fd: $0e $83
	rrca                                             ; $46ff: $0f
	nop                                              ; $4700: $00
	ld   bc, $0084                                   ; $4701: $01 $84 $00
	dec  b                                           ; $4704: $05
	jr   nz, jr_079_46a7                             ; $4705: $20 $a0

	add  c                                           ; $4707: $81
	ld   de, $e1f1                                   ; $4708: $11 $f1 $e1
	add  b                                           ; $470b: $80
	pop  af                                          ; $470c: $f1
	add  b                                           ; $470d: $80
	ldh  a, [c]                                      ; $470e: $f2
	add  b                                           ; $470f: $80

jr_079_4710:
	ld   bc, $0084                                   ; $4710: $01 $84 $00
	ld   bc, $707f                                   ; $4713: $01 $7f $70
	add  b                                           ; $4716: $80
	adc  a                                           ; $4717: $8f
	add  b                                           ; $4718: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4719: $cf
	add  b                                           ; $471a: $80
	ld   l, a                                        ; $471b: $6f
	add  b                                           ; $471c: $80
	adc  a                                           ; $471d: $8f
	inc  bc                                          ; $471e: $03
	ld   l, a                                        ; $471f: $6f
	ld   h, a                                        ; $4720: $67
	rla                                              ; $4721: $17
	db   $10                                         ; $4722: $10
	add  b                                           ; $4723: $80
	nop                                              ; $4724: $00
	ld   bc, $00ff                                   ; $4725: $01 $ff $00
	add  c                                           ; $4728: $81
	rst  $38                                         ; $4729: $ff
	add  b                                           ; $472a: $80
	cp   $80                                         ; $472b: $fe $80
	db   $fc                                         ; $472d: $fc
	add  b                                           ; $472e: $80
	cp   $80                                         ; $472f: $fe $80
	rst  $38                                         ; $4731: $ff
	inc  bc                                          ; $4732: $03
	ld   b, $07                                      ; $4733: $06 $07
	jp   nz, $80c3                                   ; $4735: $c2 $c3 $80

	add  c                                           ; $4738: $81
	add  h                                           ; $4739: $84
	nop                                              ; $473a: $00
	add  b                                           ; $473b: $80
	rst  $38                                         ; $473c: $ff
	add  b                                           ; $473d: $80
	ld   a, a                                        ; $473e: $7f
	rrca                                             ; $473f: $0f
	ld   b, $05                                      ; $4740: $06 $05
	ld   a, l                                        ; $4742: $7d
	rst  $38                                         ; $4743: $ff
	add  d                                           ; $4744: $82
	add  e                                           ; $4745: $83
	inc  a                                           ; $4746: $3c
	db   $fc                                         ; $4747: $fc

jr_079_4748:
	sbc  $fe                                         ; $4748: $de $fe
	and  b                                           ; $474a: $a0
	ret  nz                                          ; $474b: $c0

	rra                                              ; $474c: $1f
	rst  $38                                         ; $474d: $ff
	jr   jr_079_4748                                 ; $474e: $18 $f8

	add  b                                           ; $4750: $80
	add  b                                           ; $4751: $80
	ld   bc, $9f9e                                   ; $4752: $01 $9e $9f
	add  b                                           ; $4755: $80
	ld   bc, $3f80                                   ; $4756: $01 $80 $3f
	dec  bc                                          ; $4759: $0b
	ld   a, h                                        ; $475a: $7c
	ld   a, a                                        ; $475b: $7f
	ld   bc, $f803                                   ; $475c: $01 $03 $f8
	rst  $38                                         ; $475f: $ff
	ld   [$600f], sp                                 ; $4760: $08 $0f $60
	ldh  [rSCX], a                                   ; $4763: $e0 $43
	jp   $8180                                       ; $4765: $c3 $80 $81


	add  h                                           ; $4768: $84
	nop                                              ; $4769: $00
	add  d                                           ; $476a: $82
	cp   $81                                         ; $476b: $fe $81
	nop                                              ; $476d: $00
	ld   bc, $00ff                                   ; $476e: $01 $ff $00
	add  c                                           ; $4771: $81
	rst  $38                                         ; $4772: $ff
	add  b                                           ; $4773: $80
	ld   a, a                                        ; $4774: $7f
	add  b                                           ; $4775: $80
	ld   a, $80                                      ; $4776: $3e $80
	ld   a, h                                        ; $4778: $7c
	add  b                                           ; $4779: $80
	rst  $38                                         ; $477a: $ff
	add  c                                           ; $477b: $81
	nop                                              ; $477c: $00
	inc  bc                                          ; $477d: $03
	rst  $38                                         ; $477e: $ff
	ld   a, [hl]                                     ; $477f: $7e
	add  c                                           ; $4780: $81
	nop                                              ; $4781: $00
	add  b                                           ; $4782: $80
	inc  e                                           ; $4783: $1c
	add  d                                           ; $4784: $82
	ld   [hl], $80                                   ; $4785: $36 $80
	ld   a, $80                                      ; $4787: $3e $80
	inc  e                                           ; $4789: $1c
	add  b                                           ; $478a: $80
	nop                                              ; $478b: $00
	ld   bc, $00ff                                   ; $478c: $01 $ff $00
	add  e                                           ; $478f: $83
	rst  $38                                         ; $4790: $ff
	add  b                                           ; $4791: $80
	ld   a, a                                        ; $4792: $7f
	add  b                                           ; $4793: $80
	ccf                                              ; $4794: $3f
	add  b                                           ; $4795: $80
	rst  $38                                         ; $4796: $ff
	inc  b                                           ; $4797: $04
	rlca                                             ; $4798: $07
	scf                                              ; $4799: $37
	cpl                                              ; $479a: $2f
	sbc  a                                           ; $479b: $9f
	ccf                                              ; $479c: $3f
	adc  c                                           ; $479d: $89
	cp   a                                           ; $479e: $bf
	inc  b                                           ; $479f: $04
	cp   $0f                                         ; $47a0: $fe $0f
	add  hl, bc                                      ; $47a2: $09
	rrca                                             ; $47a3: $0f
	rlca                                             ; $47a4: $07
	adc  c                                           ; $47a5: $89
	rrca                                             ; $47a6: $0f
	adc  [hl]                                        ; $47a7: $8e
	rst  $38                                         ; $47a8: $ff
	ld   bc, $c13e                                   ; $47a9: $01 $3e $c1
	add  b                                           ; $47ac: $80
	ld   bc, $1980                                   ; $47ad: $01 $80 $19
	nop                                              ; $47b0: $00
	ld   e, c                                        ; $47b1: $59
	add  c                                           ; $47b2: $81
	ld   a, c                                        ; $47b3: $79
	nop                                              ; $47b4: $00

jr_079_47b5:
	ld   c, c                                        ; $47b5: $49
	add  c                                           ; $47b6: $81
	ld   a, c                                        ; $47b7: $79
	ld   bc, $1909                                   ; $47b8: $01 $09 $19

jr_079_47bb:
	add  d                                           ; $47bb: $82
	ld   hl, sp-$80                                  ; $47bc: $f8 $80
	ret  nz                                          ; $47be: $c0

	nop                                              ; $47bf: $00
	add  b                                           ; $47c0: $80
	add  b                                           ; $47c1: $80
	add  e                                           ; $47c2: $83
	nop                                              ; $47c3: $00
	add  b                                           ; $47c4: $80
	add  c                                           ; $47c5: $81
	nop                                              ; $47c6: $00
	add  d                                           ; $47c7: $82
	dec  b                                           ; $47c8: $05
	add  e                                           ; $47c9: $83
	nop                                              ; $47ca: $00
	inc  bc                                          ; $47cb: $03
	ld   b, b                                        ; $47cc: $40
	ret  nz                                          ; $47cd: $c0

	add  b                                           ; $47ce: $80
	nop                                              ; $47cf: $00
	add  b                                           ; $47d0: $80
	ld   b, b                                        ; $47d1: $40
	dec  b                                           ; $47d2: $05
	jr   nz, jr_079_47b5                             ; $47d3: $20 $e0

	ret  nz                                          ; $47d5: $c0

	ldh  [$ec], a                                    ; $47d6: $e0 $ec
	inc  c                                           ; $47d8: $0c
	add  b                                           ; $47d9: $80
	ld   c, $80                                      ; $47da: $0e $80
	ld   a, [bc]                                     ; $47dc: $0a
	adc  b                                           ; $47dd: $88
	add  hl, bc                                      ; $47de: $09
	adc  [hl]                                        ; $47df: $8e
	rlca                                             ; $47e0: $07
	add  h                                           ; $47e1: $84
	rst  $38                                         ; $47e2: $ff
	inc  b                                           ; $47e3: $04
	rst  JumpTable                                         ; $47e4: $df
	rst  $38                                         ; $47e5: $ff
	db   $e3                                         ; $47e6: $e3
	rst  $38                                         ; $47e7: $ff
	db   $fc                                         ; $47e8: $fc
	add  e                                           ; $47e9: $83
	rst  $38                                         ; $47ea: $ff
	ld   [bc], a                                     ; $47eb: $02
	call nc, $f5e5                                   ; $47ec: $d4 $e5 $f5
	add  b                                           ; $47ef: $80
	or   h                                           ; $47f0: $b4
	add  b                                           ; $47f1: $80
	sub  h                                           ; $47f2: $94
	inc  b                                           ; $47f3: $04
	add  h                                           ; $47f4: $84
	add  b                                           ; $47f5: $80
	rst  $38                                         ; $47f6: $ff
	ldh  a, [c]                                      ; $47f7: $f2
	adc  l                                           ; $47f8: $8d
	add  d                                           ; $47f9: $82
	adc  c                                           ; $47fa: $89
	dec  b                                           ; $47fb: $05
	ld   d, d                                        ; $47fc: $52
	ld   a, e                                        ; $47fd: $7b
	ld   a, d                                        ; $47fe: $7a
	ld   d, d                                        ; $47ff: $52
	ld   d, [hl]                                     ; $4800: $56
	call nc, $9480                                   ; $4801: $d4 $80 $94
	dec  b                                           ; $4804: $05
	inc  h                                           ; $4805: $24
	and  h                                           ; $4806: $a4
	add  b                                           ; $4807: $80
	db   $fc                                         ; $4808: $fc
	ld   d, b                                        ; $4809: $50
	xor  h                                           ; $480a: $ac
	add  b                                           ; $480b: $80
	ld   c, b                                        ; $480c: $48
	add  b                                           ; $480d: $80
	or   l                                           ; $480e: $b5
	dec  bc                                          ; $480f: $0b
	sub  c                                           ; $4810: $91
	sub  [hl]                                        ; $4811: $96
	sub  $d2                                         ; $4812: $d6 $d2
	ld   d, d                                        ; $4814: $52
	jp   nc, Jump_079_7f40                           ; $4815: $d2 $40 $7f

	ld   [hl], a                                     ; $4818: $77
	ld   c, c                                        ; $4819: $49
	ld   l, b                                        ; $481a: $68
	ld   l, c                                        ; $481b: $69
	add  b                                           ; $481c: $80
	dec  h                                           ; $481d: $25
	nop                                              ; $481e: $00
	ld   d, h                                        ; $481f: $54
	add  b                                           ; $4820: $80
	cp   e                                           ; $4821: $bb
	add  b                                           ; $4822: $80
	sub  l                                           ; $4823: $95
	add  c                                           ; $4824: $81
	push de                                          ; $4825: $d5
	dec  b                                           ; $4826: $05
	ld   b, l                                        ; $4827: $45
	push bc                                          ; $4828: $c5
	add  c                                           ; $4829: $81
	ld   a, a                                        ; $482a: $7f
	dec  de                                          ; $482b: $1b
	ld   h, l                                        ; $482c: $65
	add  b                                           ; $482d: $80
	dec  h                                           ; $482e: $25
	ld   [bc], a                                     ; $482f: $02
	pop  hl                                          ; $4830: $e1
	ldh  a, [$e0]                                    ; $4831: $f0 $e0
	adc  e                                           ; $4833: $8b
	ldh  a, [rSB]                                    ; $4834: $f0 $01
	rst  $38                                         ; $4836: $ff
	nop                                              ; $4837: $00
	add  b                                           ; $4838: $80
	jr   c, jr_079_47bb                              ; $4839: $38 $80

	jr   nz, @-$7e                                   ; $483b: $20 $80

	nop                                              ; $483d: $00
	add  b                                           ; $483e: $80
	ld   [$0080], sp                                 ; $483f: $08 $80 $00
	inc  bc                                          ; $4842: $03
	inc  d                                           ; $4843: $14

Call_079_4844:
	inc  e                                           ; $4844: $1c
	ld   [$8a00], sp                                 ; $4845: $08 $00 $8a
	rst  $38                                         ; $4848: $ff
	add  b                                           ; $4849: $80
	ld   a, a                                        ; $484a: $7f
	add  b                                           ; $484b: $80
	rst  $38                                         ; $484c: $ff
	adc  [hl]                                        ; $484d: $8e
	cp   a                                           ; $484e: $bf
	nop                                              ; $484f: $00
	ldh  a, [$8d]                                    ; $4850: $f0 $8d
	rrca                                             ; $4852: $0f
	ld   [$07fb], sp                                 ; $4853: $08 $fb $07
	inc  bc                                          ; $4856: $03
	inc  c                                           ; $4857: $0c
	adc  l                                           ; $4858: $8d
	sub  c                                           ; $4859: $91
	sub  e                                           ; $485a: $93
	and  e                                           ; $485b: $a3
	daa                                              ; $485c: $27
	add  b                                           ; $485d: $80
	ld   b, a                                        ; $485e: $47
	ld   [bc], a                                     ; $485f: $02
	add  a                                           ; $4860: $87
	adc  a                                           ; $4861: $8f
	rrca                                             ; $4862: $0f
	add  b                                           ; $4863: $80
	rla                                              ; $4864: $17
	add  [hl]                                        ; $4865: $86
	cp   $86                                         ; $4866: $fe $86
	db   $fc                                         ; $4868: $fc
	nop                                              ; $4869: $00
	ld   [bc], a                                     ; $486a: $02
	add  c                                           ; $486b: $81
	rlca                                             ; $486c: $07
	add  d                                           ; $486d: $82
	rrca                                             ; $486e: $0f
	inc  bc                                          ; $486f: $03
	db   $10                                         ; $4870: $10
	dec  d                                           ; $4871: $15
	nop                                              ; $4872: $00
	dec  d                                           ; $4873: $15
	add  d                                           ; $4874: $82
	rla                                              ; $4875: $17
	ld   bc, $6015                                   ; $4876: $01 $15 $60
	add  d                                           ; $4879: $82
	ldh  a, [rTIMA]                                  ; $487a: $f0 $05
	ld   [hl], b                                     ; $487c: $70
	ldh  a, [$b0]                                    ; $487d: $f0 $b0
	ld   d, b                                        ; $487f: $50

Call_079_4880:
	xor  b                                           ; $4880: $a8
	ld   hl, sp-$7e                                  ; $4881: $f8 $82
	ld   e, b                                        ; $4883: $58
	nop                                              ; $4884: $00
	ld   e, c                                        ; $4885: $59
	adc  l                                           ; $4886: $8d
	add  hl, bc                                      ; $4887: $09
	adc  e                                           ; $4888: $8b
	rlca                                             ; $4889: $07
	add  c                                           ; $488a: $81
	daa                                              ; $488b: $27
	nop                                              ; $488c: $00
	ldh  [$8d], a                                    ; $488d: $e0 $8d
	rst  $38                                         ; $488f: $ff
	nop                                              ; $4890: $00
	jp   z, $8a83                                    ; $4891: $ca $83 $8a

	dec  b                                           ; $4894: $05
	add  d                                           ; $4895: $82
	ei                                               ; $4896: $fb
	jp   hl                                          ; $4897: $e9


	sbc  a                                           ; $4898: $9f
	xor  d                                           ; $4899: $aa
	and  l                                           ; $489a: $a5
	add  b                                           ; $489b: $80
	xor  c                                           ; $489c: $a9
	rrca                                             ; $489d: $0f
	xor  b                                           ; $489e: $a8
	xor  e                                           ; $489f: $ab
	ret  z                                           ; $48a0: $c8

	ld   c, b                                        ; $48a1: $48
	ld   c, h                                        ; $48a2: $4c
	ld   b, b                                        ; $48a3: $40
	ld   e, h                                        ; $48a4: $5c
	ld   d, b                                        ; $48a5: $50
	ld   [de], a                                     ; $48a6: $12
	ldh  a, [c]                                      ; $48a7: $f2
	ld   b, d                                        ; $48a8: $42
	and  d                                           ; $48a9: $a2
	ld   [hl+], a                                    ; $48aa: $22
	and  d                                           ; $48ab: $a2
	jp   nz, $8042                                   ; $48ac: $c2 $42 $80

	add  d                                           ; $48af: $82
	ld   [$25a6], sp                                 ; $48b0: $08 $a6 $25
	ld   h, h                                        ; $48b3: $64
	inc  h                                           ; $48b4: $24
	ld   d, d                                        ; $48b5: $52
	ld   [de], a                                     ; $48b6: $12
	sub  b                                           ; $48b7: $90
	sbc  a                                           ; $48b8: $9f
	add  [hl]                                        ; $48b9: $86
	add  c                                           ; $48ba: $81
	adc  c                                           ; $48bb: $89
	add  b                                           ; $48bc: $80
	add  h                                           ; $48bd: $84
	add  b                                           ; $48be: $80
	add  [hl]                                        ; $48bf: $86
	nop                                              ; $48c0: $00
	inc  h                                           ; $48c1: $24
	add  c                                           ; $48c2: $81
	and  l                                           ; $48c3: $a5
	dec  b                                           ; $48c4: $05
	dec  d                                           ; $48c5: $15
	push af                                          ; $48c6: $f5
	and  c                                           ; $48c7: $a1
	ld   e, a                                        ; $48c8: $5f
	ld   c, a                                        ; $48c9: $4f
	ld   d, c                                        ; $48ca: $51
	add  b                                           ; $48cb: $80
	ld   c, c                                        ; $48cc: $49
	add  d                                           ; $48cd: $82
	xor  c                                           ; $48ce: $a9
	inc  b                                           ; $48cf: $04
	add  c                                           ; $48d0: $81
	nop                                              ; $48d1: $00
	ldh  a, [$80]                                    ; $48d2: $f0 $80
	ldh  a, [$80]                                    ; $48d4: $f0 $80
	db   $10                                         ; $48d6: $10
	inc  b                                           ; $48d7: $04
	nop                                              ; $48d8: $00
	and  b                                           ; $48d9: $a0
	ld   h, b                                        ; $48da: $60
	ld   [hl], b                                     ; $48db: $70
	ld   b, b                                        ; $48dc: $40
	add  d                                           ; $48dd: $82
	ld   [hl], b                                     ; $48de: $70
	inc  bc                                          ; $48df: $03
	adc  [hl]                                        ; $48e0: $8e
	adc  c                                           ; $48e1: $89
	set  0, e                                        ; $48e2: $cb $c3
	add  b                                           ; $48e4: $80
	rst  $20                                         ; $48e5: $e7
	add  d                                           ; $48e6: $82
	rst  $38                                         ; $48e7: $ff
	add  b                                           ; $48e8: $80
	ld   [hl], c                                     ; $48e9: $71
	add  b                                           ; $48ea: $80
	inc  c                                           ; $48eb: $0c
	ld   [bc], a                                     ; $48ec: $02
	ld   a, b                                        ; $48ed: $78
	ld   a, c                                        ; $48ee: $79
	cp   $87                                         ; $48ef: $fe $87
	rst  $38                                         ; $48f1: $ff
	add  d                                           ; $48f2: $82
	ldh  a, [$80]                                    ; $48f3: $f0 $80
	jr   nc, @-$7a                                   ; $48f5: $30 $84

	cp   a                                           ; $48f7: $bf
	add  c                                           ; $48f8: $81
	add  c                                           ; $48f9: $81
	nop                                              ; $48fa: $00
	sub  l                                           ; $48fb: $95
	add  c                                           ; $48fc: $81
	dec  d                                           ; $48fd: $15
	add  b                                           ; $48fe: $80
	sub  l                                           ; $48ff: $95
	ld   b, $01                                      ; $4900: $06 $01
	or   $fa                                         ; $4902: $f6 $fa
	ld   b, $0c                                      ; $4904: $06 $0c
	ret  nz                                          ; $4906: $c0

	call nz, $e480                                   ; $4907: $c4 $80 $e4
	inc  c                                           ; $490a: $0c
	ldh  [$e4], a                                    ; $490b: $e0 $e4
	add  sp, -$16                                    ; $490d: $e8 $ea
	ldh  [$e8], a                                    ; $490f: $e0 $e8
	push bc                                          ; $4911: $c5
	ret  nc                                          ; $4912: $d0

	ld   a, c                                        ; $4913: $79
	rst  $38                                         ; $4914: $ff
	rst  $28                                         ; $4915: $ef
	rst  $38                                         ; $4916: $ff
	ld   a, a                                        ; $4917: $7f
	adc  c                                           ; $4918: $89
	rst  $38                                         ; $4919: $ff
	ld   bc, $fef1                                   ; $491a: $01 $f1 $fe
	adc  h                                           ; $491d: $8c
	rst  $38                                         ; $491e: $ff
	ld   bc, $0200                                   ; $491f: $01 $00 $02
	add  l                                           ; $4922: $85
	ldh  a, [c]                                      ; $4923: $f2
	add  b                                           ; $4924: $80
	ldh  a, [$80]                                    ; $4925: $f0 $80
	pop  af                                          ; $4927: $f1
	inc  bc                                          ; $4928: $03
	ldh  a, [c]                                      ; $4929: $f2
	ldh  [c], a                                      ; $492a: $e2
	db   $e4                                         ; $492b: $e4
	inc  b                                           ; $492c: $04
	add  l                                           ; $492d: $85
	nop                                              ; $492e: $00
	add  b                                           ; $492f: $80
	ld   bc, $e280                                   ; $4930: $01 $80 $e2
	add  b                                           ; $4933: $80
	inc  e                                           ; $4934: $1c
	add  b                                           ; $4935: $80
	nop                                              ; $4936: $00
	add  b                                           ; $4937: $80
	add  hl, bc                                      ; $4938: $09
	add  b                                           ; $4939: $80
	nop                                              ; $493a: $00
	add  b                                           ; $493b: $80
	ccf                                              ; $493c: $3f
	add  b                                           ; $493d: $80
	ret  nz                                          ; $493e: $c0

	add  [hl]                                        ; $493f: $86
	nop                                              ; $4940: $00
	nop                                              ; $4941: $00
	rlca                                             ; $4942: $07
	add  d                                           ; $4943: $82
	daa                                              ; $4944: $27
	add  b                                           ; $4945: $80
	add  a                                           ; $4946: $87
	add  b                                           ; $4947: $80
	ld   h, a                                        ; $4948: $67
	ld   bc, $1017                                   ; $4949: $01 $17 $10
	add  b                                           ; $494c: $80
	ld   [$0780], sp                                 ; $494d: $08 $80 $07
	nop                                              ; $4950: $00
	nop                                              ; $4951: $00
	add  [hl]                                        ; $4952: $86
	rst  $38                                         ; $4953: $ff
	add  b                                           ; $4954: $80
	rrca                                             ; $4955: $0f
	dec  b                                           ; $4956: $05
	rlca                                             ; $4957: $07
	rst  $30                                         ; $4958: $f7
	di                                               ; $4959: $f3
	dec  bc                                          ; $495a: $0b
	ld   [$8004], sp                                 ; $495b: $08 $04 $80
	rst  $38                                         ; $495e: $ff
	ld   de, $95ee                                   ; $495f: $11 $ee $95
	sub  d                                           ; $4962: $92
	cp   $c8                                         ; $4963: $fe $c8
	cp   h                                           ; $4965: $bc

jr_079_4966:
	db   $10                                         ; $4966: $10
	ld   [$b0f0], sp                                 ; $4967: $08 $f0 $b0
	rst  JumpTable                                         ; $496a: $df
	ldh  [$e7], a                                    ; $496b: $e0 $e7
	ld   hl, sp+$1f                                  ; $496d: $f8 $1f
	nop                                              ; $496f: $00
	ld   a, h                                        ; $4970: $7c
	nop                                              ; $4971: $00
	add  [hl]                                        ; $4972: $86
	ld   [bc], a                                     ; $4973: $02
	rlca                                             ; $4974: $07
	ld   a, h                                        ; $4975: $7c
	nop                                              ; $4976: $00
	ld   a, h                                        ; $4977: $7c
	nop                                              ; $4978: $00
	ld   a, a                                        ; $4979: $7f
	inc  bc                                          ; $497a: $03
	ld   a, h                                        ; $497b: $7c
	ld   bc, $8180                                   ; $497c: $01 $80 $81
	add  h                                           ; $497f: $84
	add  b                                           ; $4980: $80
	dec  b                                           ; $4981: $05
	ld   a, l                                        ; $4982: $7d
	nop                                              ; $4983: $00
	ld   a, l                                        ; $4984: $7d
	nop                                              ; $4985: $00
	sbc  $5f                                         ; $4986: $de $5f
	add  b                                           ; $4988: $80
	daa                                              ; $4989: $27
	inc  c                                           ; $498a: $0c
	sub  e                                           ; $498b: $93
	sbc  a                                           ; $498c: $9f
	ld   l, a                                        ; $498d: $6f
	ld   a, c                                        ; $498e: $79
	jr   c, jr_079_49b3                              ; $498f: $38 $22

	inc  de                                          ; $4991: $13
	dec  c                                           ; $4992: $0d
	push af                                          ; $4993: $f5
	ld   hl, $29e1                                   ; $4994: $21 $e1 $29
	ld   bc, $ff8b                                   ; $4997: $01 $8b $ff
	add  b                                           ; $499a: $80
	nop                                              ; $499b: $00
	ld   [bc], a                                     ; $499c: $02
	ld   [hl], b                                     ; $499d: $70
	ld   [hl], c                                     ; $499e: $71
	ld   h, c                                        ; $499f: $61
	add  b                                           ; $49a0: $80
	ld   h, e                                        ; $49a1: $63
	nop                                              ; $49a2: $00
	ld   h, b                                        ; $49a3: $60
	add  [hl]                                        ; $49a4: $86
	ld   a, h                                        ; $49a5: $7c
	add  b                                           ; $49a6: $80
	nop                                              ; $49a7: $00
	nop                                              ; $49a8: $00
	db   $10                                         ; $49a9: $10
	add  b                                           ; $49aa: $80
	sub  b                                           ; $49ab: $90
	inc  bc                                          ; $49ac: $03
	ret  nc                                          ; $49ad: $d0

	ret  nz                                          ; $49ae: $c0

	nop                                              ; $49af: $00
	db   $10                                         ; $49b0: $10
	add  a                                           ; $49b1: $87
	ld   d, h                                        ; $49b2: $54

jr_079_49b3:
	nop                                              ; $49b3: $00
	ld   b, l                                        ; $49b4: $45
	add  b                                           ; $49b5: $80
	db   $fd                                         ; $49b6: $fd
	add  b                                           ; $49b7: $80
	or   l                                           ; $49b8: $b5
	add  b                                           ; $49b9: $80
	ld   bc, $fd80                                   ; $49ba: $01 $80 $fd
	add  b                                           ; $49bd: $80
	or   l                                           ; $49be: $b5
	add  b                                           ; $49bf: $80
	ld   bc, $fd03                                   ; $49c0: $01 $03 $fd
	db   $fc                                         ; $49c3: $fc
	or   h                                           ; $49c4: $b4
	ld   b, h                                        ; $49c5: $44
	adc  h                                           ; $49c6: $8c
	rrca                                             ; $49c7: $0f
	add  b                                           ; $49c8: $80
	ld   [$ff81], sp                                 ; $49c9: $08 $81 $ff
	ld   [bc], a                                     ; $49cc: $02
	rst  $28                                         ; $49cd: $ef
	rst  $38                                         ; $49ce: $ff
	rst  JumpTable                                         ; $49cf: $df
	add  b                                           ; $49d0: $80
	rst  $38                                         ; $49d1: $ff
	rlca                                             ; $49d2: $07
	cp   $ff                                         ; $49d3: $fe $ff
	ldh  [$3e], a                                    ; $49d5: $e0 $3e
	nop                                              ; $49d7: $00
	ld   h, a                                        ; $49d8: $67
	ldh  [$67], a                                    ; $49d9: $e0 $67
	add  c                                           ; $49db: $81
	rst  $38                                         ; $49dc: $ff
	add  b                                           ; $49dd: $80
	ld   hl, sp+$02                                  ; $49de: $f8 $02
	ret  nz                                          ; $49e0: $c0

	rst  ToBoot                                         ; $49e1: $c7
	rlca                                             ; $49e2: $07
	add  b                                           ; $49e3: $80
	jr   c, jr_079_4966                              ; $49e4: $38 $80

	rst  ToBoot                                         ; $49e6: $c7
	add  b                                           ; $49e7: $80
	ccf                                              ; $49e8: $3f
	inc  bc                                          ; $49e9: $03
	ld   hl, sp+$78                                  ; $49ea: $f8 $78
	adc  b                                           ; $49ec: $88
	ld   [$3080], sp                                 ; $49ed: $08 $80 $30
	add  b                                           ; $49f0: $80
	add  b                                           ; $49f1: $80
	add  b                                           ; $49f2: $80
	db   $10                                         ; $49f3: $10
	add  d                                           ; $49f4: $82
	ret  nc                                          ; $49f5: $d0

	inc  bc                                          ; $49f6: $03
	ld   de, $0610                                   ; $49f7: $11 $10 $06
	rrca                                             ; $49fa: $0f
	add  l                                           ; $49fb: $85
	ld   [$0180], sp                                 ; $49fc: $08 $80 $01
	add  b                                           ; $49ff: $80
	ld   a, a                                        ; $4a00: $7f
	inc  b                                           ; $4a01: $04
	dec  d                                           ; $4a02: $15
	rst  $38                                         ; $4a03: $ff
	ld   l, d                                        ; $4a04: $6a
	ld   a, a                                        ; $4a05: $7f
	rst  $38                                         ; $4a06: $ff
	add  l                                           ; $4a07: $85
	nop                                              ; $4a08: $00
	add  b                                           ; $4a09: $80
	ldh  a, [rTMA]                                   ; $4a0a: $f0 $06
	xor  a                                           ; $4a0c: $af
	rst  $38                                         ; $4a0d: $ff
	ld   d, e                                        ; $4a0e: $53
	rst  $38                                         ; $4a0f: $ff

jr_079_4a10:
	db   $fc                                         ; $4a10: $fc
	rst  $38                                         ; $4a11: $ff
	db   $fd                                         ; $4a12: $fd
	adc  c                                           ; $4a13: $89
	ld   [bc], a                                     ; $4a14: $02
	add  b                                           ; $4a15: $80
	jp   nz, $e280                                   ; $4a16: $c2 $80 $e2

	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	add  b                                           ; $4a1b: $80
	ld   [bc], a                                     ; $4a1c: $02
	add  b                                           ; $4a1d: $80
	ld   bc, $0080                                   ; $4a1e: $01 $80 $00
	add  a                                           ; $4a21: $87
	ld   bc, $3a0a                                   ; $4a22: $01 $0a $3a
	inc  [hl]                                        ; $4a25: $34
	or   l                                           ; $4a26: $b5
	inc  h                                           ; $4a27: $24
	add  e                                           ; $4a28: $83
	ld   d, $57                                      ; $4a29: $16 $57
	ld   d, b                                        ; $4a2b: $50
	ld   [hl], b                                     ; $4a2c: $70
	ld   h, b                                        ; $4a2d: $60
	ld   h, c                                        ; $4a2e: $61
	add  d                                           ; $4a2f: $82
	ld   e, l                                        ; $4a30: $5d
	ld   de, $5655                                   ; $4a31: $11 $55 $56
	ld   [hl+], a                                    ; $4a34: $22
	ld   [bc], a                                     ; $4a35: $02
	ld   c, d                                        ; $4a36: $4a
	jp   nz, $2ed6                                   ; $4a37: $c2 $d6 $2e

	ld   [hl+], a                                    ; $4a3a: $22
	ld   a, [bc]                                     ; $4a3b: $0a
	ld   [bc], a                                     ; $4a3c: $02
	inc  h                                           ; $4a3d: $24
	jr   nc, jr_079_4a10                             ; $4a3e: $30 $d0

	ldh  a, [$e7]                                    ; $4a40: $f0 $e7
	ldh  [$ca], a                                    ; $4a42: $e0 $ca
	add  a                                           ; $4a44: $87
	add  b                                           ; $4a45: $80
	rlca                                             ; $4a46: $07
	ld   a, l                                        ; $4a47: $7d
	nop                                              ; $4a48: $00
	ld   a, h                                        ; $4a49: $7c
	ld   b, h                                        ; $4a4a: $44
	rst  ToBoot                                         ; $4a4b: $c7
	nop                                              ; $4a4c: $00
	jr   z, jr_079_4a78                              ; $4a4d: $28 $29

	add  b                                           ; $4a4f: $80
	ld   e, c                                        ; $4a50: $59
	add  l                                           ; $4a51: $85
	ld   d, l                                        ; $4a52: $55
	add  d                                           ; $4a53: $82
	push af                                          ; $4a54: $f5
	ld   bc, $fe55                                   ; $4a55: $01 $55 $fe
	add  b                                           ; $4a58: $80
	ld   b, b                                        ; $4a59: $40
	ld   bc, $a929                                   ; $4a5a: $01 $29 $a9
	add  b                                           ; $4a5d: $80
	sub  [hl]                                        ; $4a5e: $96
	add  b                                           ; $4a5f: $80
	res  0, b                                        ; $4a60: $cb $80
	db   $e4                                         ; $4a62: $e4
	add  b                                           ; $4a63: $80
	ldh  a, [$80]                                    ; $4a64: $f0 $80
	ld   hl, sp+$01                                  ; $4a66: $f8 $01
	db   $fc                                         ; $4a68: $fc
	ld   a, h                                        ; $4a69: $7c
	add  b                                           ; $4a6a: $80
	nop                                              ; $4a6b: $00
	add  b                                           ; $4a6c: $80
	cp   h                                           ; $4a6d: $bc
	inc  bc                                          ; $4a6e: $03
	nop                                              ; $4a6f: $00
	inc  bc                                          ; $4a70: $03
	rst  $38                                         ; $4a71: $ff
	db   $fc                                         ; $4a72: $fc
	adc  b                                           ; $4a73: $88
	nop                                              ; $4a74: $00
	add  b                                           ; $4a75: $80
	ld   h, c                                        ; $4a76: $61
	inc  bc                                          ; $4a77: $03

jr_079_4a78:
	ld   [hl], $b6                                   ; $4a78: $36 $b6
	add  a                                           ; $4a7a: $87
	rlca                                             ; $4a7b: $07
	add  a                                           ; $4a7c: $87
	nop                                              ; $4a7d: $00
	add  b                                           ; $4a7e: $80
	ldh  a, [$80]                                    ; $4a7f: $f0 $80
	rlca                                             ; $4a81: $07
	inc  bc                                          ; $4a82: $03
	ccf                                              ; $4a83: $3f
	rst  $38                                         ; $4a84: $ff

jr_079_4a85:
	ret  nz                                          ; $4a85: $c0

	nop                                              ; $4a86: $00
	add  b                                           ; $4a87: $80
	ld   bc, $0408                                   ; $4a88: $01 $08 $04
	rlca                                             ; $4a8b: $07
	inc  de                                          ; $4a8c: $13
	inc  e                                           ; $4a8d: $1c
	di                                               ; $4a8e: $f3
	ld   [$030a], sp                                 ; $4a8f: $08 $0a $03
	ld   bc, $0c80                                   ; $4a92: $01 $80 $0c
	inc  b                                           ; $4a95: $04
	nop                                              ; $4a96: $00
	ld   bc, $0f00                                   ; $4a97: $01 $00 $0f
	ld   bc, $0f81                                   ; $4a9a: $01 $81 $0f
	inc  d                                           ; $4a9d: $14
	ld   c, $36                                      ; $4a9e: $0e $36
	ld   b, b                                        ; $4aa0: $40
	cp   b                                           ; $4aa1: $b8
	jr   nz, jr_079_4a85                             ; $4aa2: $20 $e1

	ld   h, c                                        ; $4aa4: $61
	ld   de, $8101                                   ; $4aa5: $11 $01 $81
	ld   bc, $8380                                   ; $4aa8: $01 $80 $83
	add  b                                           ; $4aab: $80
	adc  a                                           ; $4aac: $8f
	ldh  a, [$7c]                                    ; $4aad: $f0 $7c
	adc  b                                           ; $4aaf: $88
	rst  $20                                         ; $4ab0: $e7
	rst  $38                                         ; $4ab1: $ff
	rra                                              ; $4ab2: $1f
	add  b                                           ; $4ab3: $80
	db   $fc                                         ; $4ab4: $fc
	ld   [bc], a                                     ; $4ab5: $02
	ldh  [$e3], a                                    ; $4ab6: $e0 $e3
	inc  bc                                          ; $4ab8: $03
	add  b                                           ; $4ab9: $80
	rra                                              ; $4aba: $1f
	ld   bc, $807f                                   ; $4abb: $01 $7f $80
	add  c                                           ; $4abe: $81
	nop                                              ; $4abf: $00
	ld   bc, $1ded                                   ; $4ac0: $01 $ed $1d
	add  b                                           ; $4ac3: $80
	ccf                                              ; $4ac4: $3f
	dec  c                                           ; $4ac5: $0d
	inc  sp                                          ; $4ac6: $33
	ccf                                              ; $4ac7: $3f
	ld   e, h                                        ; $4ac8: $5c
	rst  JumpTable                                         ; $4ac9: $df
	add  c                                           ; $4aca: $81
	pop  af                                          ; $4acb: $f1
	di                                               ; $4acc: $f3
	rst  $38                                         ; $4acd: $ff
	inc  hl                                          ; $4ace: $23
	ccf                                              ; $4acf: $3f
	db   $dd                                         ; $4ad0: $dd
	add  d                                           ; $4ad1: $82
	ccf                                              ; $4ad2: $3f
	ld   a, a                                        ; $4ad3: $7f
	add  b                                           ; $4ad4: $80
	xor  a                                           ; $4ad5: $af
	add  b                                           ; $4ad6: $80
	rst  $38                                         ; $4ad7: $ff
	inc  bc                                          ; $4ad8: $03
	inc  a                                           ; $4ad9: $3c
	rst  $38                                         ; $4ada: $ff
	jp   $80ff                                       ; $4adb: $c3 $ff $80


	dec  bc                                          ; $4ade: $0b
	dec  bc                                          ; $4adf: $0b
	inc  e                                           ; $4ae0: $1c
	rra                                              ; $4ae1: $1f
	ld   [$e70e], a                                  ; $4ae2: $ea $0e $e7
	rst  $38                                         ; $4ae5: $ff
	db   $fc                                         ; $4ae6: $fc
	rst  $38                                         ; $4ae7: $ff
	jp   $3eff                                       ; $4ae8: $c3 $ff $3e


	cp   $80                                         ; $4aeb: $fe $80
	di                                               ; $4aed: $f3
	inc  bc                                          ; $4aee: $03
	sbc  b                                           ; $4aef: $98
	sbc  a                                           ; $4af0: $9f
	inc  b                                           ; $4af1: $04
	db   $fc                                         ; $4af2: $fc
	add  b                                           ; $4af3: $80
	nop                                              ; $4af4: $00
	dec  bc                                          ; $4af5: $0b
	sbc  a                                           ; $4af6: $9f
	ldh  [rAUD4LEN], a                               ; $4af7: $e0 $20
	cp   h                                           ; $4af9: $bc
	ld   e, h                                        ; $4afa: $5c
	ld   a, a                                        ; $4afb: $7f
	cp   a                                           ; $4afc: $bf
	rst  $38                                         ; $4afd: $ff
	ld   a, a                                        ; $4afe: $7f
	rst  $38                                         ; $4aff: $ff
	add  b                                           ; $4b00: $80
	add  c                                           ; $4b01: $81
	add  b                                           ; $4b02: $80
	ld   bc, $0302                                   ; $4b03: $01 $02 $03
	ld   [bc], a                                     ; $4b06: $02
	rst  $38                                         ; $4b07: $ff
	add  d                                           ; $4b08: $82
	ld   bc, $c180                                   ; $4b09: $01 $80 $c1
	add  b                                           ; $4b0c: $80
	ld   sp, hl                                      ; $4b0d: $f9
	dec  bc                                          ; $4b0e: $0b
	db   $fc                                         ; $4b0f: $fc
	ld   b, $04                                      ; $4b10: $06 $04
	jr   jr_079_4b24                                 ; $4b12: $18 $10

	ld   [hl], c                                     ; $4b14: $71
	ld   l, b                                        ; $4b15: $68
	sub  c                                           ; $4b16: $91
	ld   a, b                                        ; $4b17: $78
	halt                                             ; $4b18: $76
	ld   [hl], b                                     ; $4b19: $70
	ld   h, b                                        ; $4b1a: $60
	add  b                                           ; $4b1b: $80
	ld   l, a                                        ; $4b1c: $6f
	nop                                              ; $4b1d: $00
	ld   h, b                                        ; $4b1e: $60
	add  b                                           ; $4b1f: $80
	ld   b, b                                        ; $4b20: $40
	ld   [rROMB1], sp                                 ; $4b21: $08 $00 $30

jr_079_4b24:
	inc  [hl]                                        ; $4b24: $34
	inc  sp                                          ; $4b25: $33
	dec  [hl]                                        ; $4b26: $35
	ld   bc, $000c                                   ; $4b27: $01 $0c $00
	rrca                                             ; $4b2a: $0f
	add  b                                           ; $4b2b: $80
	nop                                              ; $4b2c: $00
	add  b                                           ; $4b2d: $80
	rst  $38                                         ; $4b2e: $ff
	add  c                                           ; $4b2f: $81
	nop                                              ; $4b30: $00
	ld   a, [bc]                                     ; $4b31: $0a
	rra                                              ; $4b32: $1f
	nop                                              ; $4b33: $00
	ld   l, $20                                      ; $4b34: $2e $20
	ld   c, $9f                                      ; $4b36: $0e $9f
	ld   a, a                                        ; $4b38: $7f
	nop                                              ; $4b39: $00
	add  hl, hl                                      ; $4b3a: $29
	xor  $38                                         ; $4b3b: $ee $38
	add  b                                           ; $4b3d: $80
	rst  $38                                         ; $4b3e: $ff
	add  e                                           ; $4b3f: $83
	nop                                              ; $4b40: $00
	ld   b, $80                                      ; $4b41: $06 $80
	rra                                              ; $4b43: $1f
	sbc  a                                           ; $4b44: $9f
	ld   [hl], $f6                                   ; $4b45: $36 $f6
	cpl                                              ; $4b47: $2f
	rst  $28                                         ; $4b48: $ef
	add  b                                           ; $4b49: $80
	dec  bc                                          ; $4b4a: $0b
	add  b                                           ; $4b4b: $80
	di                                               ; $4b4c: $f3
	add  b                                           ; $4b4d: $80
	inc  bc                                          ; $4b4e: $03
	add  d                                           ; $4b4f: $82
	nop                                              ; $4b50: $00
	add  b                                           ; $4b51: $80
	ld   a, a                                        ; $4b52: $7f
	inc  bc                                          ; $4b53: $03

jr_079_4b54:
	ccf                                              ; $4b54: $3f
	cp   a                                           ; $4b55: $bf
	db   $fc                                         ; $4b56: $fc
	cp   h                                           ; $4b57: $bc
	add  c                                           ; $4b58: $81
	db   $fc                                         ; $4b59: $fc
	add  b                                           ; $4b5a: $80
	ld   a, h                                        ; $4b5b: $7c
	ld   bc, $7c5c                                   ; $4b5c: $01 $5c $7c
	add  d                                           ; $4b5f: $82
	inc  a                                           ; $4b60: $3c
	ld   [bc], a                                     ; $4b61: $02
	inc  l                                           ; $4b62: $2c
	inc  a                                           ; $4b63: $3c
	inc  c                                           ; $4b64: $0c
	adc  a                                           ; $4b65: $8f
	nop                                              ; $4b66: $00
	ld   [$0302], sp                                 ; $4b67: $08 $02 $03
	add  hl, bc                                      ; $4b6a: $09
	ld   c, $12                                      ; $4b6b: $0e $12
	inc  e                                           ; $4b6d: $1c
	jr   nz, jr_079_4ba8                             ; $4b6e: $20 $38

	nop                                              ; $4b70: $00
	add  c                                           ; $4b71: $81
	jr   nc, jr_079_4b7a                             ; $4b72: $30 $06

	rrca                                             ; $4b74: $0f
	cpl                                              ; $4b75: $2f
	add  b                                           ; $4b76: $80
	ldh  a, [$30]                                    ; $4b77: $f0 $30
	ret  nz                                          ; $4b79: $c0

jr_079_4b7a:
	add  b                                           ; $4b7a: $80
	add  [hl]                                        ; $4b7b: $86
	nop                                              ; $4b7c: $00
	inc  bc                                          ; $4b7d: $03
	ld   bc, $e7e4                                   ; $4b7e: $01 $e4 $e7
	db   $fd                                         ; $4b81: $fd
	add  b                                           ; $4b82: $80
	ld   [$0304], sp                                 ; $4b83: $08 $04 $03
	nop                                              ; $4b86: $00
	rrca                                             ; $4b87: $0f
	nop                                              ; $4b88: $00
	inc  c                                           ; $4b89: $0c
	add  [hl]                                        ; $4b8a: $86
	nop                                              ; $4b8b: $00
	inc  bc                                          ; $4b8c: $03
	jr   nc, @-$0e                                   ; $4b8d: $30 $f0

	nop                                              ; $4b8f: $00
	ret  nz                                          ; $4b90: $c0

	adc  d                                           ; $4b91: $8a
	nop                                              ; $4b92: $00
	add  c                                           ; $4b93: $81
	ld   bc, $0080                                   ; $4b94: $01 $80 $00
	ld   [bc], a                                     ; $4b97: $02
	inc  bc                                          ; $4b98: $03
	nop                                              ; $4b99: $00
	ld   bc, $0081                                   ; $4b9a: $01 $81 $00
	ld   [bc], a                                     ; $4b9d: $02
	ld   bc, $0504                                   ; $4b9e: $01 $04 $05
	add  b                                           ; $4ba1: $80
	dec  c                                           ; $4ba2: $0d
	inc  bc                                          ; $4ba3: $03
	ld   a, h                                        ; $4ba4: $7c
	rst  $38                                         ; $4ba5: $ff
	add  b                                           ; $4ba6: $80
	nop                                              ; $4ba7: $00

jr_079_4ba8:
	add  b                                           ; $4ba8: $80
	ld   a, [hl]                                     ; $4ba9: $7e
	add  b                                           ; $4baa: $80
	add  e                                           ; $4bab: $83
	jr   jr_079_4baf                                 ; $4bac: $18 $01

	db   $fd                                         ; $4bae: $fd

jr_079_4baf:
	inc  bc                                          ; $4baf: $03
	rst  $38                                         ; $4bb0: $ff
	nop                                              ; $4bb1: $00
	rst  $38                                         ; $4bb2: $ff
	nop                                              ; $4bb3: $00
	cp   $d9                                         ; $4bb4: $fe $d9
	ret  nc                                          ; $4bb6: $d0

	or   b                                           ; $4bb7: $b0
	ld   h, b                                        ; $4bb8: $60
	or   b                                           ; $4bb9: $b0
	ret  nz                                          ; $4bba: $c0

	ld   [hl], b                                     ; $4bbb: $70
	sub  b                                           ; $4bbc: $90
	ldh  a, [rAUD4LEN]                               ; $4bbd: $f0 $20
	ld   a, b                                        ; $4bbf: $78
	ret  c                                           ; $4bc0: $d8

	ld   l, b                                        ; $4bc1: $68
	cp   b                                           ; $4bc2: $b8
	ld   c, b                                        ; $4bc3: $48
	ld   [hl], b                                     ; $4bc4: $70
	ret  nc                                          ; $4bc5: $d0

	add  c                                           ; $4bc6: $81
	nop                                              ; $4bc7: $00
	inc  b                                           ; $4bc8: $04
	ld   [bc], a                                     ; $4bc9: $02
	inc  bc                                          ; $4bca: $03
	dec  b                                           ; $4bcb: $05
	inc  e                                           ; $4bcc: $1c
	jr   jr_079_4b54                                 ; $4bcd: $18 $85

	nop                                              ; $4bcf: $00
	add  b                                           ; $4bd0: $80
	inc  c                                           ; $4bd1: $0c
	dec  b                                           ; $4bd2: $05
	jr   nz, jr_079_4c05                             ; $4bd3: $20 $30

	pop  de                                          ; $4bd5: $d1
	pop  bc                                          ; $4bd6: $c1
	ld   [bc], a                                     ; $4bd7: $02
	inc  bc                                          ; $4bd8: $03
	add  b                                           ; $4bd9: $80
	dec  b                                           ; $4bda: $05
	ld   h, $00                                      ; $4bdb: $26 $00
	ld   bc, $1810                                   ; $4bdd: $01 $10 $18
	ld   l, b                                        ; $4be0: $68
	ld   [hl], d                                     ; $4be1: $72
	ld   b, [hl]                                     ; $4be2: $46
	ld   e, h                                        ; $4be3: $5c
	ld   a, [bc]                                     ; $4be4: $0a
	ld   c, $06                                      ; $4be5: $0e $06
	adc  [hl]                                        ; $4be7: $8e
	push bc                                          ; $4be8: $c5
	rst  ToBoot                                         ; $4be9: $c7
	ld   b, e                                        ; $4bea: $43
	rst  ToBoot                                         ; $4beb: $c7
	ld   h, b                                        ; $4bec: $60
	db   $e3                                         ; $4bed: $e3
	ld   sp, $78f1                                   ; $4bee: $31 $f1 $78
	ld   a, c                                        ; $4bf1: $79
	and  [hl]                                        ; $4bf2: $a6
	jr   jr_079_4bfc                                 ; $4bf3: $18 $07

	ld   a, [hl]                                     ; $4bf5: $7e
	ld   a, b                                        ; $4bf6: $78
	rra                                              ; $4bf7: $1f
	sbc  a                                           ; $4bf8: $9f
	nop                                              ; $4bf9: $00
	ret  nz                                          ; $4bfa: $c0

	add  b                                           ; $4bfb: $80

jr_079_4bfc:
	add  sp, -$40                                    ; $4bfc: $e8 $c0
	ld   [hl], e                                     ; $4bfe: $73
	db   $ec                                         ; $4bff: $ec
	xor  b                                           ; $4c00: $a8
	rst  $38                                         ; $4c01: $ff
	jr   nz, @-$7e                                   ; $4c02: $20 $80

	ret  nz                                          ; $4c04: $c0

jr_079_4c05:
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	add  b                                           ; $4c07: $80
	rst  $38                                         ; $4c08: $ff
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00
	add  b                                           ; $4c0b: $80
	rst  $38                                         ; $4c0c: $ff
	add  c                                           ; $4c0d: $81
	nop                                              ; $4c0e: $00
	ld   bc, $00e0                                   ; $4c0f: $01 $e0 $00
	add  b                                           ; $4c12: $80
	ldh  [rTMA], a                                   ; $4c13: $e0 $06
	pop  hl                                          ; $4c15: $e1
	db   $fd                                         ; $4c16: $fd
	cp   $03                                         ; $4c17: $fe $03
	ld   sp, hl                                      ; $4c19: $f9
	rst  $38                                         ; $4c1a: $ff
	rlca                                             ; $4c1b: $07
	add  b                                           ; $4c1c: $80
	ldh  [rP1], a                                    ; $4c1d: $e0 $00
	nop                                              ; $4c1f: $00
	add  b                                           ; $4c20: $80
	inc  bc                                          ; $4c21: $03
	add  hl, bc                                      ; $4c22: $09
	rst  $38                                         ; $4c23: $ff

Jump_079_4c24:
	nop                                              ; $4c24: $00
	db   $fc                                         ; $4c25: $fc
	rst  $38                                         ; $4c26: $ff
	db   $e3                                         ; $4c27: $e3
	rra                                              ; $4c28: $1f
	nop                                              ; $4c29: $00
	ret  nz                                          ; $4c2a: $c0

	rst  JumpTable                                         ; $4c2b: $df
	rra                                              ; $4c2c: $1f
	add  b                                           ; $4c2d: $80
	nop                                              ; $4c2e: $00
	add  b                                           ; $4c2f: $80
	ld   a, a                                        ; $4c30: $7f
	add  b                                           ; $4c31: $80
	rst  $38                                         ; $4c32: $ff
	inc  b                                           ; $4c33: $04
	ret  nz                                          ; $4c34: $c0

	ccf                                              ; $4c35: $3f
	dec  e                                           ; $4c36: $1d
	ldh  a, [c]                                      ; $4c37: $f2
	nop                                              ; $4c38: $00
	add  e                                           ; $4c39: $83
	inc  e                                           ; $4c3a: $1c
	ld   bc, $0c04                                   ; $4c3b: $01 $04 $0c
	add  b                                           ; $4c3e: $80
	call z, $f480                                    ; $4c3f: $cc $80 $f4
	inc  b                                           ; $4c42: $04
	inc  b                                           ; $4c43: $04
	ld   hl, sp+$18                                  ; $4c44: $f8 $18
	ldh  [rP1], a                                    ; $4c46: $e0 $00
	add  [hl]                                        ; $4c48: $86
	rst  $38                                         ; $4c49: $ff
	ld   [$ff3f], sp                                 ; $4c4a: $08 $3f $ff
	rlca                                             ; $4c4d: $07
	rst  $38                                         ; $4c4e: $ff
	nop                                              ; $4c4f: $00
	rst  $38                                         ; $4c50: $ff
	nop                                              ; $4c51: $00
	rst  $10                                         ; $4c52: $d7
	rra                                              ; $4c53: $1f
	add  b                                           ; $4c54: $80
	dec  de                                          ; $4c55: $1b
	rlca                                             ; $4c56: $07
	dec  b                                           ; $4c57: $05
	dec  c                                           ; $4c58: $0d
	inc  bc                                          ; $4c59: $03
	rlca                                             ; $4c5a: $07
	ld   bc, $0103                                   ; $4c5b: $01 $03 $01
	nop                                              ; $4c5e: $00
	add  b                                           ; $4c5f: $80
	add  hl, bc                                      ; $4c60: $09
	add  b                                           ; $4c61: $80
	ld   [$9206], sp                                 ; $4c62: $08 $06 $92
	sbc  $64                                         ; $4c65: $de $64
	cp   b                                           ; $4c67: $b8
	ret  nz                                          ; $4c68: $c0

	ld   [hl], b                                     ; $4c69: $70
	nop                                              ; $4c6a: $00
	add  c                                           ; $4c6b: $81
	ld   h, b                                        ; $4c6c: $60
	ld   bc, $4202                                   ; $4c6d: $01 $02 $42
	add  d                                           ; $4c70: $82
	nop                                              ; $4c71: $00
	ld   d, [hl]                                     ; $4c72: $56
	ld   [bc], a                                     ; $4c73: $02
	add  [hl]                                        ; $4c74: $86
	nop                                              ; $4c75: $00
	add  [hl]                                        ; $4c76: $86
	rrca                                             ; $4c77: $0f
	add  [hl]                                        ; $4c78: $86
	nop                                              ; $4c79: $00
	ld   [$9fe0], sp                                 ; $4c7a: $08 $e0 $9f
	add  a                                           ; $4c7d: $87
	rst  $20                                         ; $4c7e: $e7
	pop  hl                                          ; $4c7f: $e1
	ld   sp, hl                                      ; $4c80: $f9
	ld   hl, sp-$02                                  ; $4c81: $f8 $fe
	ld   bc, $0085                                   ; $4c83: $01 $85 $00
	ld   bc, $38c7                                   ; $4c86: $01 $c7 $38
	add  b                                           ; $4c89: $80
	adc  $80                                         ; $4c8a: $ce $80
	di                                               ; $4c8c: $f3
	add  b                                           ; $4c8d: $80
	ld   a, h                                        ; $4c8e: $7c
	nop                                              ; $4c8f: $00
	rst  $38                                         ; $4c90: $ff
	add  l                                           ; $4c91: $85
	nop                                              ; $4c92: $00
	ld   bc, $05fa                                   ; $4c93: $01 $fa $05
	add  b                                           ; $4c96: $80
	ld   a, [hl+]                                    ; $4c97: $2a
	add  b                                           ; $4c98: $80
	add  b                                           ; $4c99: $80
	add  b                                           ; $4c9a: $80
	ccf                                              ; $4c9b: $3f
	nop                                              ; $4c9c: $00
	rst  $38                                         ; $4c9d: $ff
	add  l                                           ; $4c9e: $85
	nop                                              ; $4c9f: $00
	ld   bc, $7f80                                   ; $4ca0: $01 $80 $7f
	add  b                                           ; $4ca3: $80
	rst  $38                                         ; $4ca4: $ff
	add  b                                           ; $4ca5: $80
	nop                                              ; $4ca6: $00
	add  c                                           ; $4ca7: $81
	rst  $38                                         ; $4ca8: $ff
	add  [hl]                                        ; $4ca9: $86
	nop                                              ; $4caa: $00
	add  c                                           ; $4cab: $81
	rst  $38                                         ; $4cac: $ff
	add  b                                           ; $4cad: $80
	nop                                              ; $4cae: $00
	add  b                                           ; $4caf: $80
	rst  $38                                         ; $4cb0: $ff
	ld   bc, $00f0                                   ; $4cb1: $01 $f0 $00
	add  b                                           ; $4cb4: $80
	rrca                                             ; $4cb5: $0f
	add  b                                           ; $4cb6: $80
	nop                                              ; $4cb7: $00
	add  b                                           ; $4cb8: $80
	rrca                                             ; $4cb9: $0f
	inc  b                                           ; $4cba: $04
	nop                                              ; $4cbb: $00
	rrca                                             ; $4cbc: $0f
	nop                                              ; $4cbd: $00
	rrca                                             ; $4cbe: $0f
	nop                                              ; $4cbf: $00
	add  c                                           ; $4cc0: $81
	rrca                                             ; $4cc1: $0f
	add  hl, de                                      ; $4cc2: $19
	ld   a, $ff                                      ; $4cc3: $3e $ff
	ldh  a, [rIE]                                    ; $4cc5: $f0 $ff
	add  hl, bc                                      ; $4cc7: $09
	ccf                                              ; $4cc8: $3f
	rst  $20                                         ; $4cc9: $e7
	rst  $38                                         ; $4cca: $ff
	rra                                              ; $4ccb: $1f
	rst  $38                                         ; $4ccc: $ff
	ld   a, a                                        ; $4ccd: $7f
	db   $fc                                         ; $4cce: $fc
	rst  $38                                         ; $4ccf: $ff
	di                                               ; $4cd0: $f3
	rst  $30                                         ; $4cd1: $f7
	rst  $20                                         ; $4cd2: $e7
	ld   l, a                                        ; $4cd3: $6f
	di                                               ; $4cd4: $f3
	rst  $20                                         ; $4cd5: $e7
	ldh  [c], a                                      ; $4cd6: $e2
	cp   $e7                                         ; $4cd7: $fe $e7
	rst  $38                                         ; $4cd9: $ff
	sbc  a                                           ; $4cda: $9f
	cp   $7e                                         ; $4cdb: $fe $7e
	add  b                                           ; $4cdd: $80
	rst  $38                                         ; $4cde: $ff
	add  b                                           ; $4cdf: $80
	ld   sp, hl                                      ; $4ce0: $f9
	add  b                                           ; $4ce1: $80
	ldh  a, [rP1]                                    ; $4ce2: $f0 $00
	rst  $38                                         ; $4ce4: $ff
	add  l                                           ; $4ce5: $85
	nop                                              ; $4ce6: $00
	ld   bc, $f00f                                   ; $4ce7: $01 $0f $f0
	add  b                                           ; $4cea: $80
	ret  nz                                          ; $4ceb: $c0

	inc  b                                           ; $4cec: $04
	ld   a, [bc]                                     ; $4ced: $0a
	dec  d                                           ; $4cee: $15
	ld   b, e                                        ; $4cef: $43
	ccf                                              ; $4cf0: $3f
	sbc  h                                           ; $4cf1: $9c
	add  l                                           ; $4cf2: $85
	nop                                              ; $4cf3: $00
	ld   bc, $0ff0                                   ; $4cf4: $01 $f0 $0f
	add  b                                           ; $4cf7: $80
	inc  bc                                          ; $4cf8: $03
	inc  b                                           ; $4cf9: $04
	xor  b                                           ; $4cfa: $a8
	ld   d, b                                        ; $4cfb: $50
	inc  b                                           ; $4cfc: $04
	ld   a, [$80f9]                                  ; $4cfd: $fa $f9 $80
	ret  nz                                          ; $4d00: $c0

	add  b                                           ; $4d01: $80
	nop                                              ; $4d02: $00
	add  c                                           ; $4d03: $81
	rst  $38                                         ; $4d04: $ff
	add  b                                           ; $4d05: $80
	nop                                              ; $4d06: $00
	add  d                                           ; $4d07: $82
	rst  $38                                         ; $4d08: $ff
	add  b                                           ; $4d09: $80
	nop                                              ; $4d0a: $00
	dec  bc                                          ; $4d0b: $0b
	db   $fc                                         ; $4d0c: $fc
	inc  bc                                          ; $4d0d: $03
	ld   b, $07                                      ; $4d0e: $06 $07
	inc  c                                           ; $4d10: $0c
	rst  $38                                         ; $4d11: $ff
	ld   sp, hl                                      ; $4d12: $f9
	rst  $38                                         ; $4d13: $ff
	inc  bc                                          ; $4d14: $03
	ld   c, $f6                                      ; $4d15: $0e $f6
	db   $fc                                         ; $4d17: $fc
	add  b                                           ; $4d18: $80
	db   $fd                                         ; $4d19: $fd
	ld   bc, $030f                                   ; $4d1a: $01 $0f $03
	add  b                                           ; $4d1d: $80
	ld   hl, sp-$74                                  ; $4d1e: $f8 $8c
	rst  $38                                         ; $4d20: $ff
	add  b                                           ; $4d21: $80
	ld   a, a                                        ; $4d22: $7f
	sbc  h                                           ; $4d23: $9c
	rst  $38                                         ; $4d24: $ff
	nop                                              ; $4d25: $00
	ldh  a, [$8d]                                    ; $4d26: $f0 $8d
	rrca                                             ; $4d28: $0f
	adc  [hl]                                        ; $4d29: $8e
	rst  $38                                         ; $4d2a: $ff
	inc  b                                           ; $4d2b: $04
	ldh  [$9f], a                                    ; $4d2c: $e0 $9f
	add  a                                           ; $4d2e: $87
	rst  $20                                         ; $4d2f: $e7
	ldh  [$80], a                                    ; $4d30: $e0 $80
	ld   hl, sp+$00                                  ; $4d32: $f8 $00
	cp   $86                                         ; $4d34: $fe $86
	rst  $38                                         ; $4d36: $ff
	ld   bc, $00fe                                   ; $4d37: $01 $fe $00
	add  b                                           ; $4d3a: $80
	ld   a, a                                        ; $4d3b: $7f
	add  b                                           ; $4d3c: $80
	rst  $38                                         ; $4d3d: $ff
	add  c                                           ; $4d3e: $81
	nop                                              ; $4d3f: $00
	add  e                                           ; $4d40: $83
	rst  $38                                         ; $4d41: $ff
	add  b                                           ; $4d42: $80
	cp   $01                                         ; $4d43: $fe $01
	rst  $38                                         ; $4d45: $ff
	nop                                              ; $4d46: $00
	add  d                                           ; $4d47: $82
	rst  $38                                         ; $4d48: $ff
	add  c                                           ; $4d49: $81
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	rst  $38                                         ; $4d4c: $ff
	add  b                                           ; $4d4d: $80
	ld   a, [$d580]                                  ; $4d4e: $fa $80 $d5
	add  b                                           ; $4d51: $80
	xor  d                                           ; $4d52: $aa
	ld   bc, $00ff                                   ; $4d53: $01 $ff $00
	add  d                                           ; $4d56: $82
	rst  $38                                         ; $4d57: $ff
	add  b                                           ; $4d58: $80
	nop                                              ; $4d59: $00
	ld   bc, $ff1f                                   ; $4d5a: $01 $1f $ff
	add  b                                           ; $4d5d: $80
	cp   a                                           ; $4d5e: $bf
	add  b                                           ; $4d5f: $80
	ld   e, a                                        ; $4d60: $5f
	add  b                                           ; $4d61: $80
	cp   a                                           ; $4d62: $bf
	ld   bc, $00e0                                   ; $4d63: $01 $e0 $00
	add  d                                           ; $4d66: $82
	rst  $38                                         ; $4d67: $ff
	add  b                                           ; $4d68: $80
	nop                                              ; $4d69: $00
	add  [hl]                                        ; $4d6a: $86
	rst  $38                                         ; $4d6b: $ff
	add  b                                           ; $4d6c: $80
	ldh  a, [c]                                      ; $4d6d: $f2
	adc  h                                           ; $4d6e: $8c
	rst  $38                                         ; $4d6f: $ff
	add  b                                           ; $4d70: $80
	rra                                              ; $4d71: $1f
	adc  h                                           ; $4d72: $8c
	rst  $38                                         ; $4d73: $ff
	rlca                                             ; $4d74: $07
	ldh  a, [$7f]                                    ; $4d75: $f0 $7f
	daa                                              ; $4d77: $27
	rst  $38                                         ; $4d78: $ff
	sub  a                                           ; $4d79: $97
	rst  $38                                         ; $4d7a: $ff
	daa                                              ; $4d7b: $27
	rla                                              ; $4d7c: $17
	add  b                                           ; $4d7d: $80
	ld   hl, sp-$80                                  ; $4d7e: $f8 $80
	rst  $38                                         ; $4d80: $ff
	add  b                                           ; $4d81: $80
	ld   a, [$f580]                                  ; $4d82: $fa $80 $f5
	rlca                                             ; $4d85: $07
	db   $10                                         ; $4d86: $10
	cp   $ec                                         ; $4d87: $fe $ec
	rst  $38                                         ; $4d89: $ff
	pop  hl                                          ; $4d8a: $e1
	rst  $38                                         ; $4d8b: $ff
	db   $f4                                         ; $4d8c: $f4
	add  sp, -$80                                    ; $4d8d: $e8 $80
	rra                                              ; $4d8f: $1f
	add  b                                           ; $4d90: $80
	rst  $38                                         ; $4d91: $ff
	add  b                                           ; $4d92: $80
	xor  a                                           ; $4d93: $af
	add  b                                           ; $4d94: $80
	ld   e, a                                        ; $4d95: $5f
	ld   bc, $f202                                   ; $4d96: $01 $02 $f2
	adc  h                                           ; $4d99: $8c
	rst  $38                                         ; $4d9a: $ff
	add  b                                           ; $4d9b: $80
	ld   a, a                                        ; $4d9c: $7f
	adc  h                                           ; $4d9d: $8c
	rst  $38                                         ; $4d9e: $ff
	add  b                                           ; $4d9f: $80
	cp   $8c                                         ; $4da0: $fe $8c
	rst  $38                                         ; $4da2: $ff
	add  b                                           ; $4da3: $80
	nop                                              ; $4da4: $00
	add  d                                           ; $4da5: $82
	rst  $38                                         ; $4da6: $ff
	add  b                                           ; $4da7: $80
	nop                                              ; $4da8: $00
	nop                                              ; $4da9: $00
	ld   hl, sp-$7f                                  ; $4daa: $f8 $81
	rst  $38                                         ; $4dac: $ff
	add  b                                           ; $4dad: $80
	db   $fd                                         ; $4dae: $fd
	add  b                                           ; $4daf: $80
	ld   a, [$0701]                                  ; $4db0: $fa $01 $07
	nop                                              ; $4db3: $00
	add  d                                           ; $4db4: $82
	rst  $38                                         ; $4db5: $ff
	add  c                                           ; $4db6: $81
	nop                                              ; $4db7: $00
	add  c                                           ; $4db8: $81
	rst  $38                                         ; $4db9: $ff
	add  b                                           ; $4dba: $80
	ld   d, a                                        ; $4dbb: $57
	add  b                                           ; $4dbc: $80
	xor  d                                           ; $4dbd: $aa
	add  d                                           ; $4dbe: $82
	rrca                                             ; $4dbf: $0f
	ld   bc, $0f00                                   ; $4dc0: $01 $00 $0f
	add  c                                           ; $4dc3: $81
	nop                                              ; $4dc4: $00
	add  b                                           ; $4dc5: $80
	dec  b                                           ; $4dc6: $05
	add  c                                           ; $4dc7: $81
	rrca                                             ; $4dc8: $0f
	ld   [bc], a                                     ; $4dc9: $02
	dec  c                                           ; $4dca: $0d
	nop                                              ; $4dcb: $00
	ldh  a, [c]                                      ; $4dcc: $f2
	add  c                                           ; $4dcd: $81
	rst  $38                                         ; $4dce: $ff
	dec  c                                           ; $4dcf: $0d
	ld   a, a                                        ; $4dd0: $7f
	rst  $38                                         ; $4dd1: $ff
	nop                                              ; $4dd2: $00
	ld   a, [hl]                                     ; $4dd3: $7e
	ld   bc, $0500                                   ; $4dd4: $01 $00 $05
	ld   [hl], e                                     ; $4dd7: $73
	ld   [hl], h                                     ; $4dd8: $74
	ld   h, c                                        ; $4dd9: $61
	ld   a, a                                        ; $4dda: $7f
	nop                                              ; $4ddb: $00
	dec  e                                           ; $4ddc: $1d
	rst  $38                                         ; $4ddd: $ff
	add  b                                           ; $4dde: $80
	db   $eb                                         ; $4ddf: $eb
	add  b                                           ; $4de0: $80
	ld   d, l                                        ; $4de1: $55
	add  b                                           ; $4de2: $80
	xor  e                                           ; $4de3: $ab

jr_079_4de4:
	add  hl, bc                                      ; $4de4: $09
	ld   bc, $01fd                                   ; $4de5: $01 $fd $01
	inc  bc                                          ; $4de8: $03
	xor  b                                           ; $4de9: $a8
	nop                                              ; $4dea: $00
	jr   z, @-$54                                    ; $4deb: $28 $aa

	jr   nz, jr_079_4de4                             ; $4ded: $20 $f5

	add  b                                           ; $4def: $80
	xor  d                                           ; $4df0: $aa
	add  b                                           ; $4df1: $80
	ld   d, l                                        ; $4df2: $55
	add  b                                           ; $4df3: $80
	xor  d                                           ; $4df4: $aa
	add  b                                           ; $4df5: $80
	ld   d, h                                        ; $4df6: $54
	ld   bc, $e808                                   ; $4df7: $01 $08 $e8
	add  b                                           ; $4dfa: $80
	db   $10                                         ; $4dfb: $10
	inc  bc                                          ; $4dfc: $03
	ret  nz                                          ; $4dfd: $c0

	ldh  [$95], a                                    ; $4dfe: $e0 $95
	ld   d, l                                        ; $4e00: $55
	add  b                                           ; $4e01: $80
	xor  b                                           ; $4e02: $a8
	add  b                                           ; $4e03: $80
	ld   b, b                                        ; $4e04: $40
	add  b                                           ; $4e05: $80
	add  b                                           ; $4e06: $80
	add  [hl]                                        ; $4e07: $86
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	rrca                                             ; $4e0a: $0f
	add  d                                           ; $4e0b: $82
	nop                                              ; $4e0c: $00
	ld   bc, $0005                                   ; $4e0d: $01 $05 $00
	add  a                                           ; $4e10: $87
	dec  c                                           ; $4e11: $0d
	nop                                              ; $4e12: $00
	ld   hl, sp-$80                                  ; $4e13: $f8 $80
	nop                                              ; $4e15: $00
	inc  bc                                          ; $4e16: $03
	ld   c, h                                        ; $4e17: $4c
	ld   b, b                                        ; $4e18: $40
	ld   c, h                                        ; $4e19: $4c

jr_079_4e1a:
	inc  c                                           ; $4e1a: $0c
	add  c                                           ; $4e1b: $81
	ld   c, h                                        ; $4e1c: $4c
	add  h                                           ; $4e1d: $84
	ld   e, h                                        ; $4e1e: $5c
	add  c                                           ; $4e1f: $81
	nop                                              ; $4e20: $00
	ld   [bc], a                                     ; $4e21: $02
	inc  l                                           ; $4e22: $2c
	nop                                              ; $4e23: $00
	inc  l                                           ; $4e24: $2c
	add  b                                           ; $4e25: $80
	xor  h                                           ; $4e26: $ac
	add  d                                           ; $4e27: $82
	xor  [hl]                                        ; $4e28: $ae
	add  d                                           ; $4e29: $82
	xor  $81                                         ; $4e2a: $ee $81
	nop                                              ; $4e2c: $00
	ld   bc, $0066                                   ; $4e2d: $01 $66 $00
	add  e                                           ; $4e30: $83
	ld   h, [hl]                                     ; $4e31: $66
	add  h                                           ; $4e32: $84
	halt                                             ; $4e33: $76
	nop                                              ; $4e34: $00
	rra                                              ; $4e35: $1f
	add  d                                           ; $4e36: $82
	nop                                              ; $4e37: $00
	inc  bc                                          ; $4e38: $03
	ld   b, b                                        ; $4e39: $40
	nop                                              ; $4e3a: $00
	ld   b, b                                        ; $4e3b: $40
	ret  nz                                          ; $4e3c: $c0

	add  l                                           ; $4e3d: $85
	ldh  [rP1], a                                    ; $4e3e: $e0 $00
	rst  ToBoot                                         ; $4e40: $c7
	add  b                                           ; $4e41: $80
	nop                                              ; $4e42: $00

jr_079_4e43:
	add  c                                           ; $4e43: $81
	inc  bc                                          ; $4e44: $03
	nop                                              ; $4e45: $00
	nop                                              ; $4e46: $00
	add  b                                           ; $4e47: $80
	inc  bc                                          ; $4e48: $03
	add  l                                           ; $4e49: $85
	rlca                                             ; $4e4a: $07
	nop                                              ; $4e4b: $00
	db   $fc                                         ; $4e4c: $fc

jr_079_4e4d:
	add  b                                           ; $4e4d: $80
	nop                                              ; $4e4e: $00
	ld   bc, $3004                                   ; $4e4f: $01 $04 $30
	add  a                                           ; $4e52: $87
	inc  [hl]                                        ; $4e53: $34
	add  b                                           ; $4e54: $80
	ld   [hl], h                                     ; $4e55: $74
	add  c                                           ; $4e56: $81
	nop                                              ; $4e57: $00
	ld   bc, $00ec                                   ; $4e58: $01 $ec $00
	add  b                                           ; $4e5b: $80
	db   $ec                                         ; $4e5c: $ec
	add  c                                           ; $4e5d: $81

jr_079_4e5e:
	xor  $00                                         ; $4e5e: $ee $00
	db   $ec                                         ; $4e60: $ec
	add  c                                           ; $4e61: $81
	xor  $80                                         ; $4e62: $ee $80
	and  $81                                         ; $4e64: $e6 $81
	nop                                              ; $4e66: $00
	inc  bc                                          ; $4e67: $03
	add  l                                           ; $4e68: $85
	inc  h                                           ; $4e69: $24
	and  l                                           ; $4e6a: $a5
	and  e                                           ; $4e6b: $a3
	add  e                                           ; $4e6c: $83
	and  a                                           ; $4e6d: $a7
	add  b                                           ; $4e6e: $80
	or   a                                           ; $4e6f: $b7
	add  b                                           ; $4e70: $80
	rst  $30                                         ; $4e71: $f7
	nop                                              ; $4e72: $00
	rrca                                             ; $4e73: $0f
	add  b                                           ; $4e74: $80
	nop                                              ; $4e75: $00
	inc  bc                                          ; $4e76: $03
	and  b                                           ; $4e77: $a0
	jr   nz, jr_079_4e1a                             ; $4e78: $20 $a0

	add  b                                           ; $4e7a: $80
	add  c                                           ; $4e7b: $81
	and  b                                           ; $4e7c: $a0
	nop                                              ; $4e7d: $00
	ldh  [$83], a                                    ; $4e7e: $e0 $83
	ldh  a, [rSB]                                    ; $4e80: $f0 $01
	or   l                                           ; $4e82: $b5
	ld   d, l                                        ; $4e83: $55
	add  b                                           ; $4e84: $80
	ld   a, [bc]                                     ; $4e85: $0a
	add  b                                           ; $4e86: $80
	ld   bc, $0088                                   ; $4e87: $01 $88 $00
	inc  bc                                          ; $4e8a: $03
	inc  c                                           ; $4e8b: $0c
	dec  c                                           ; $4e8c: $0d
	ld   [$8009], sp                                 ; $4e8d: $08 $09 $80
	nop                                              ; $4e90: $00
	dec  b                                           ; $4e91: $05
	ld   bc, $0600                                   ; $4e92: $01 $00 $06
	nop                                              ; $4e95: $00
	dec  bc                                          ; $4e96: $0b
	inc  bc                                          ; $4e97: $03
	add  b                                           ; $4e98: $80
	rlca                                             ; $4e99: $07
	add  b                                           ; $4e9a: $80
	rrca                                             ; $4e9b: $0f
	dec  b                                           ; $4e9c: $05
	ei                                               ; $4e9d: $fb
	db   $10                                         ; $4e9e: $10
	ld   b, $20                                      ; $4e9f: $06 $20
	inc  bc                                          ; $4ea1: $03
	ret  nz                                          ; $4ea2: $c0

	add  b                                           ; $4ea3: $80
	add  b                                           ; $4ea4: $80
	add  b                                           ; $4ea5: $80
	sub  h                                           ; $4ea6: $94
	ld   [bc], a                                     ; $4ea7: $02
	ld   c, d                                        ; $4ea8: $4a
	ret  nz                                          ; $4ea9: $c0

	or   h                                           ; $4eaa: $b4
	add  b                                           ; $4eab: $80
	adc  h                                           ; $4eac: $8c
	ld   a, [bc]                                     ; $4ead: $0a
	cp   $32                                         ; $4eae: $fe $32
	ld   a, $f5                                      ; $4eb0: $3e $f5
	ld   e, e                                        ; $4eb2: $5b
	ld   l, e                                        ; $4eb3: $6b
	ld   [hl], c                                     ; $4eb4: $71
	ld   a, l                                        ; $4eb5: $7d
	inc  h                                           ; $4eb6: $24
	cp   h                                           ; $4eb7: $bc
	add  h                                           ; $4eb8: $84
	add  d                                           ; $4eb9: $82
	sbc  [hl]                                        ; $4eba: $9e
	rlca                                             ; $4ebb: $07
	sbc  $5e                                         ; $4ebc: $de $5e
	sbc  b                                           ; $4ebe: $98
	ret  nz                                          ; $4ebf: $c0

	nop                                              ; $4ec0: $00
	jr   nz, jr_079_4e43                             ; $4ec1: $20 $80

	sub  b                                           ; $4ec3: $90
	add  b                                           ; $4ec4: $80
	ret  nc                                          ; $4ec5: $d0

	ld   [bc], a                                     ; $4ec6: $02
	ret  nz                                          ; $4ec7: $c0

	ld   c, b                                        ; $4ec8: $48
	ld   h, b                                        ; $4ec9: $60
	add  c                                           ; $4eca: $81
	jr   nz, jr_079_4e4d                             ; $4ecb: $20 $80

	and  b                                           ; $4ecd: $a0

Jump_079_4ece:
	nop                                              ; $4ece: $00
	jr   c, jr_079_4e5e                              ; $4ecf: $38 $8d

	nop                                              ; $4ed1: $00
	nop                                              ; $4ed2: $00
	ld   a, [bc]                                     ; $4ed3: $0a
	add  l                                           ; $4ed4: $85
	dec  c                                           ; $4ed5: $0d
	add  [hl]                                        ; $4ed6: $86
	rrca                                             ; $4ed7: $0f
	ld   bc, $5ca4                                   ; $4ed8: $01 $a4 $5c
	add  d                                           ; $4edb: $82
	ld   e, l                                        ; $4edc: $5d
	add  d                                           ; $4edd: $82
	ld   a, l                                        ; $4ede: $7d
	add  c                                           ; $4edf: $81
	ld   a, e                                        ; $4ee0: $7b
	add  c                                           ; $4ee1: $81
	ei                                               ; $4ee2: $fb
	nop                                              ; $4ee3: $00
	ld   h, a                                        ; $4ee4: $67
	add  e                                           ; $4ee5: $83
	rst  $20                                         ; $4ee6: $e7
	add  a                                           ; $4ee7: $87
	rst  ToBoot                                         ; $4ee8: $c7
	ld   bc, $72c3                                   ; $4ee9: $01 $c3 $72
	add  l                                           ; $4eec: $85
	halt                                             ; $4eed: $76
	add  h                                           ; $4eee: $84
	cp   e                                           ; $4eef: $bb
	add  b                                           ; $4ef0: $80
	rst  $38                                         ; $4ef1: $ff
	nop                                              ; $4ef2: $00
	rst  JumpTable                                         ; $4ef3: $df
	adc  l                                           ; $4ef4: $8d
	ldh  [rP1], a                                    ; $4ef5: $e0 $00
	call nz, $078d                                   ; $4ef7: $c4 $8d $07
	nop                                              ; $4efa: $00
	adc  b                                           ; $4efb: $88
	add  b                                           ; $4efc: $80
	ld   [hl], h                                     ; $4efd: $74
	ld   [bc], a                                     ; $4efe: $02
	ld   [hl], l                                     ; $4eff: $75
	ld   [hl], h                                     ; $4f00: $74
	ld   [hl], l                                     ; $4f01: $75
	add  b                                           ; $4f02: $80
	push af                                          ; $4f03: $f5
	add  d                                           ; $4f04: $82
	db   $fd                                         ; $4f05: $fd
	add  b                                           ; $4f06: $80
	ld   a, l                                        ; $4f07: $7d
	add  b                                           ; $4f08: $80
	ld   l, e                                        ; $4f09: $6b
	add  d                                           ; $4f0a: $82
	and  $87                                         ; $4f0b: $e6 $87
	rst  $20                                         ; $4f0d: $e7
	nop                                              ; $4f0e: $00
	rst  ToBoot                                         ; $4f0f: $c7
	add  b                                           ; $4f10: $80
	jp   $d700                                       ; $4f11: $c3 $00 $d7


	add  c                                           ; $4f14: $81
	rst  $30                                         ; $4f15: $f7
	add  d                                           ; $4f16: $82

jr_079_4f17:
	ei                                               ; $4f17: $fb
	add  b                                           ; $4f18: $80
	ldh  a, [rSB]                                    ; $4f19: $f0 $01
	ld   [hl], b                                     ; $4f1b: $70
	ld   [hl], e                                     ; $4f1c: $73
	add  d                                           ; $4f1d: $82
	ld   [hl], b                                     ; $4f1e: $70
	nop                                              ; $4f1f: $00
	cp   h                                           ; $4f20: $bc
	add  e                                           ; $4f21: $83
	or   b                                           ; $4f22: $b0
	ld   a, [bc]                                     ; $4f23: $0a
	xor  e                                           ; $4f24: $ab
	cp   e                                           ; $4f25: $bb
	ld   c, d                                        ; $4f26: $4a
	ld   a, [hl]                                     ; $4f27: $7e
	add  h                                           ; $4f28: $84
	ld   a, d                                        ; $4f29: $7a
	ld   [hl], b                                     ; $4f2a: $70
	cp   d                                           ; $4f2b: $ba
	xor  l                                           ; $4f2c: $ad
	cp   l                                           ; $4f2d: $bd
	ldh  a, [$83]                                    ; $4f2e: $f0 $83
	nop                                              ; $4f30: $00
	add  b                                           ; $4f31: $80
	add  b                                           ; $4f32: $80
	add  b                                           ; $4f33: $80
	ldh  [$80], a                                    ; $4f34: $e0 $80
	or   b                                           ; $4f36: $b0
	add  d                                           ; $4f37: $82
	ld   c, b                                        ; $4f38: $48
	nop                                              ; $4f39: $00
	inc  b                                           ; $4f3a: $04
	add  c                                           ; $4f3b: $81
	dec  bc                                          ; $4f3c: $0b
	add  b                                           ; $4f3d: $80
	add  hl, bc                                      ; $4f3e: $09
	add  b                                           ; $4f3f: $80
	dec  bc                                          ; $4f40: $0b
	add  b                                           ; $4f41: $80
	add  hl, bc                                      ; $4f42: $09
	add  b                                           ; $4f43: $80
	dec  bc                                          ; $4f44: $0b
	add  b                                           ; $4f45: $80
	add  hl, bc                                      ; $4f46: $09
	add  b                                           ; $4f47: $80
	dec  bc                                          ; $4f48: $0b
	nop                                              ; $4f49: $00
	ld   [hl-], a                                    ; $4f4a: $32
	add  c                                           ; $4f4b: $81
	db   $fc                                         ; $4f4c: $fc
	nop                                              ; $4f4d: $00
	call c, $fc85                                    ; $4f4e: $dc $85 $fc
	add  d                                           ; $4f51: $82
	cp   $01                                         ; $4f52: $fe $01
	inc  h                                           ; $4f54: $24
	ld   e, l                                        ; $4f55: $5d
	add  b                                           ; $4f56: $80
	ld   e, h                                        ; $4f57: $5c
	add  b                                           ; $4f58: $80
	ld   e, l                                        ; $4f59: $5d
	add  b                                           ; $4f5a: $80
	ld   e, h                                        ; $4f5b: $5c
	nop                                              ; $4f5c: $00
	ld   d, h                                        ; $4f5d: $54
	add  d                                           ; $4f5e: $82
	ld   d, l                                        ; $4f5f: $55
	add  c                                           ; $4f60: $81
	ld   e, l                                        ; $4f61: $5d
	ld   bc, $60c9                                   ; $4f62: $01 $c9 $60
	add  b                                           ; $4f65: $80
	add  sp, $02                                     ; $4f66: $e8 $02
	ret  z                                           ; $4f68: $c8

	add  b                                           ; $4f69: $80
	nop                                              ; $4f6a: $00
	add  l                                           ; $4f6b: $85
	add  b                                           ; $4f6c: $80
	inc  bc                                          ; $4f6d: $03
	adc  b                                           ; $4f6e: $88
	add  b                                           ; $4f6f: $80
	rlca                                             ; $4f70: $07

jr_079_4f71:
	nop                                              ; $4f71: $00
	adc  h                                           ; $4f72: $8c
	rst  $38                                         ; $4f73: $ff
	nop                                              ; $4f74: $00
	rst  $30                                         ; $4f75: $f7
	add  l                                           ; $4f76: $85
	rrca                                             ; $4f77: $0f
	add  [hl]                                        ; $4f78: $86
	ld   c, $01                                      ; $4f79: $0e $01
	add  e                                           ; $4f7b: $83
	ld   a, e                                        ; $4f7c: $7b
	add  h                                           ; $4f7d: $84
	ld   [hl], a                                     ; $4f7e: $77
	add  b                                           ; $4f7f: $80
	rst  $30                                         ; $4f80: $f7
	add  b                                           ; $4f81: $80
	rst  $28                                         ; $4f82: $ef
	inc  b                                           ; $4f83: $04
	xor  $ef                                         ; $4f84: $ee $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f86: $cf
	sbc  $d7                                         ; $4f87: $de $d7
	add  b                                           ; $4f89: $80
	xor  e                                           ; $4f8a: $ab
	add  b                                           ; $4f8b: $80
	add  e                                           ; $4f8c: $83
	add  b                                           ; $4f8d: $80
	xor  c                                           ; $4f8e: $a9
	add  b                                           ; $4f8f: $80
	add  c                                           ; $4f90: $81
	add  b                                           ; $4f91: $80
	add  hl, hl                                      ; $4f92: $29
	nop                                              ; $4f93: $00
	jr   z, jr_079_4f17                              ; $4f94: $28 $81

	rst  $28                                         ; $4f96: $ef
	ld   [bc], a                                     ; $4f97: $02
	jr   z, jr_079_4f71                              ; $4f98: $28 $d7

	rst  $38                                         ; $4f9a: $ff
	add  d                                           ; $4f9b: $82
	db   $fd                                         ; $4f9c: $fd
	add  b                                           ; $4f9d: $80
	db   $ed                                         ; $4f9e: $ed
	add  d                                           ; $4f9f: $82
	xor  $80                                         ; $4fa0: $ee $80
	or   $02                                         ; $4fa2: $f6 $02
	ld   [hl], d                                     ; $4fa4: $72
	halt                                             ; $4fa5: $76
	db   $db                                         ; $4fa6: $db
	adc  e                                           ; $4fa7: $8b
	ldh  [rSC], a                                    ; $4fa8: $e0 $02
	ld   h, b                                        ; $4faa: $60
	ldh  [rLY], a                                    ; $4fab: $e0 $44
	add  e                                           ; $4fad: $83
	rlca                                             ; $4fae: $07
	adc  b                                           ; $4faf: $88
	ld   b, $00                                      ; $4fb0: $06 $00
	sub  a                                           ; $4fb2: $97
	add  c                                           ; $4fb3: $81
	ld   l, e                                        ; $4fb4: $6b
	add  b                                           ; $4fb5: $80
	ld   e, a                                        ; $4fb6: $5f
	add  b                                           ; $4fb7: $80
	rst  JumpTable                                         ; $4fb8: $df
	add  b                                           ; $4fb9: $80
	rst  $10                                         ; $4fba: $d7
	ld   b, $97                                      ; $4fbb: $06 $97
	rst  $10                                         ; $4fbd: $d7
	rst  $20                                         ; $4fbe: $e7
	xor  a                                           ; $4fbf: $af
	and  a                                           ; $4fc0: $a7
	xor  [hl]                                        ; $4fc1: $ae
	ldh  [c], a                                      ; $4fc2: $e2
	add  b                                           ; $4fc3: $80
	rst  $10                                         ; $4fc4: $d7
	add  b                                           ; $4fc5: $80
	jp   $d780                                       ; $4fc6: $c3 $80 $d7


	add  b                                           ; $4fc9: $80
	add  c                                           ; $4fca: $81
	ld   bc, $7794                                   ; $4fcb: $01 $94 $77
	add  b                                           ; $4fce: $80
	rst  $30                                         ; $4fcf: $f7
	inc  bc                                          ; $4fd0: $03
	inc  d                                           ; $4fd1: $14
	rst  $30                                         ; $4fd2: $f7

jr_079_4fd3:
	inc  d                                           ; $4fd3: $14
	ld   b, a                                        ; $4fd4: $47
	add  c                                           ; $4fd5: $81
	or   e                                           ; $4fd6: $b3
	add  b                                           ; $4fd7: $80
	or   b                                           ; $4fd8: $b0
	add  b                                           ; $4fd9: $80
	ret  nc                                          ; $4fda: $d0

	add  b                                           ; $4fdb: $80
	db   $d3                                         ; $4fdc: $d3
	ld   b, $63                                      ; $4fdd: $06 $63

jr_079_4fdf:
	db   $e3                                         ; $4fdf: $e3
	or   b                                           ; $4fe0: $b0
	jr   nc, jr_079_4fd3                             ; $4fe1: $30 $f0

	jr   nc, jr_079_5026                             ; $4fe3: $30 $41

	add  c                                           ; $4fe5: $81
	ld   c, l                                        ; $4fe6: $4d
	nop                                              ; $4fe7: $00
	ld   a, [$3a81]                                  ; $4fe8: $fa $81 $3a
	nop                                              ; $4feb: $00
	adc  d                                           ; $4fec: $8a
	add  c                                           ; $4fed: $81
	ld   c, d                                        ; $4fee: $4a
	nop                                              ; $4fef: $00
	ld   a, [$3a81]                                  ; $4ff0: $fa $81 $3a
	ld   bc, $24d4                                   ; $4ff3: $01 $d4 $24
	add  b                                           ; $4ff6: $80
	and  h                                           ; $4ff7: $a4
	add  b                                           ; $4ff8: $80
	sub  h                                           ; $4ff9: $94
	add  b                                           ; $4ffa: $80
	sub  d                                           ; $4ffb: $92
	add  b                                           ; $4ffc: $80
	jp   nz, Jump_079_4280                           ; $4ffd: $c2 $80 $42

	add  b                                           ; $5000: $80
	ld   c, c                                        ; $5001: $49
	add  b                                           ; $5002: $80
	ld   l, c                                        ; $5003: $69
	ld   bc, $0906                                   ; $5004: $01 $06 $09
	add  b                                           ; $5007: $80
	dec  bc                                          ; $5008: $0b
	adc  c                                           ; $5009: $89
	dec  c                                           ; $500a: $0d
	ld   bc, $110c                                   ; $500b: $01 $0c $11
	add  d                                           ; $500e: $82
	cp   $83                                         ; $500f: $fe $83
	db   $fc                                         ; $5011: $fc
	ld   [bc], a                                     ; $5012: $02
	xor  $cc                                         ; $5013: $ee $cc
	pop  de                                          ; $5015: $d1
	add  b                                           ; $5016: $80
	ret  nc                                          ; $5017: $d0

	ld   bc, $c410                                   ; $5018: $01 $10 $c4
	add  b                                           ; $501b: $80
	ld   e, h                                        ; $501c: $5c
	add  e                                           ; $501d: $83
	ld   c, h                                        ; $501e: $4c
	add  h                                           ; $501f: $84
	ld   c, [hl]                                     ; $5020: $4e
	ld   [bc], a                                     ; $5021: $02
	adc  $4e                                         ; $5022: $ce $4e
	ld   [hl], b                                     ; $5024: $70
	add  e                                           ; $5025: $83

jr_079_5026:
	add  b                                           ; $5026: $80
	nop                                              ; $5027: $00
	add  h                                           ; $5028: $84
	add  l                                           ; $5029: $85
	nop                                              ; $502a: $00
	ld   [bc], a                                     ; $502b: $02
	ld   b, e                                        ; $502c: $43
	inc  bc                                          ; $502d: $03
	inc  a                                           ; $502e: $3c
	adc  e                                           ; $502f: $8b
	nop                                              ; $5030: $00
	add  b                                           ; $5031: $80
	rst  $38                                         ; $5032: $ff

jr_079_5033:
	ld   bc, $0609                                   ; $5033: $01 $09 $06
	add  b                                           ; $5036: $80
	dec  b                                           ; $5037: $05
	nop                                              ; $5038: $00
	ld   bc, $0580                                   ; $5039: $01 $80 $05
	ld   bc, $0001                                   ; $503c: $01 $01 $00
	add  b                                           ; $503f: $80
	ld   [bc], a                                     ; $5040: $02
	ld   [bc], a                                     ; $5041: $02
	ld   bc, $0405                                   ; $5042: $01 $05 $04
	add  b                                           ; $5045: $80
	rst  $30                                         ; $5046: $f7
	ld   [bc], a                                     ; $5047: $02
	ccf                                              ; $5048: $3f
	call c, $808c                                    ; $5049: $dc $8c $80
	cp   h                                           ; $504c: $bc
	dec  b                                           ; $504d: $05
	cp   b                                           ; $504e: $b8
	jr   jr_079_50c1                                 ; $504f: $18 $70

	jr   nc, jr_079_5033                             ; $5051: $30 $e0

	sbc  a                                           ; $5053: $9f
	add  b                                           ; $5054: $80
	rst  JumpTable                                         ; $5055: $df
	inc  bc                                          ; $5056: $03
	nop                                              ; $5057: $00
	add  b                                           ; $5058: $80
	cp   a                                           ; $5059: $bf
	ld   hl, sp-$79                                  ; $505a: $f8 $87
	jr   z, jr_079_4fdf                              ; $505c: $28 $81

	rst  $28                                         ; $505e: $ef
	add  b                                           ; $505f: $80
	nop                                              ; $5060: $00
	rlca                                             ; $5061: $07
	rst  $38                                         ; $5062: $ff
	dec  c                                           ; $5063: $0d
	dec  sp                                          ; $5064: $3b
	jr   nc, jr_079_5082                             ; $5065: $30 $1b

	ld   a, [de]                                     ; $5067: $1a
	dec  e                                           ; $5068: $1d
	add  hl, de                                      ; $5069: $19
	add  b                                           ; $506a: $80
	dec  c                                           ; $506b: $0d
	nop                                              ; $506c: $00
	inc  b                                           ; $506d: $04
	add  c                                           ; $506e: $81
	ld   hl, sp+$05                                  ; $506f: $f8 $05
	nop                                              ; $5071: $00
	inc  bc                                          ; $5072: $03
	ei                                               ; $5073: $fb
	and  a                                           ; $5074: $a7
	ld   b, b                                        ; $5075: $40
	nop                                              ; $5076: $00
	add  h                                           ; $5077: $84
	ld   b, b                                        ; $5078: $40
	add  c                                           ; $5079: $81
	nop                                              ; $507a: $00
	add  b                                           ; $507b: $80
	ld   b, b                                        ; $507c: $40
	add  b                                           ; $507d: $80
	rst  JumpTable                                         ; $507e: $df
	nop                                              ; $507f: $00
	and  $82                                         ; $5080: $e6 $82

jr_079_5082:
	dec  b                                           ; $5082: $05
	nop                                              ; $5083: $00
	inc  bc                                          ; $5084: $03
	add  c                                           ; $5085: $81
	ld   [bc], a                                     ; $5086: $02
	add  c                                           ; $5087: $81
	nop                                              ; $5088: $00
	add  b                                           ; $5089: $80
	ld   [bc], a                                     ; $508a: $02
	add  b                                           ; $508b: $80
	ei                                               ; $508c: $fb
	ld   b, $f7                                      ; $508d: $06 $f7
	ld   l, $6e                                      ; $508f: $2e $6e
	ld   l, h                                        ; $5091: $6c
	inc  l                                           ; $5092: $2c
	ld   e, h                                        ; $5093: $5c
	ld   c, h                                        ; $5094: $4c
	add  b                                           ; $5095: $80
	sbc  b                                           ; $5096: $98
	rlca                                             ; $5097: $07
	jr   nc, jr_079_50b9                             ; $5098: $30 $1f

	ld   a, a                                        ; $509a: $7f
	ld   c, a                                        ; $509b: $4f
	nop                                              ; $509c: $00
	ret  nz                                          ; $509d: $c0

	rst  JumpTable                                         ; $509e: $df
	db   $fc                                         ; $509f: $fc
	add  a                                           ; $50a0: $87
	inc  d                                           ; $50a1: $14
	add  c                                           ; $50a2: $81
	rst  $30                                         ; $50a3: $f7
	add  b                                           ; $50a4: $80
	nop                                              ; $50a5: $00
	ld   bc, $0fff                                   ; $50a6: $01 $ff $0f
	add  b                                           ; $50a9: $80
	inc  de                                          ; $50aa: $13
	nop                                              ; $50ab: $00
	inc  bc                                          ; $50ac: $03
	add  d                                           ; $50ad: $82
	nop                                              ; $50ae: $00
	add  b                                           ; $50af: $80
	inc  bc                                          ; $50b0: $03
	add  b                                           ; $50b1: $80
	di                                               ; $50b2: $f3
	nop                                              ; $50b3: $00
	ldh  a, [$80]                                    ; $50b4: $f0 $80
	nop                                              ; $50b6: $00
	ld   b, $f0                                      ; $50b7: $06 $f0

jr_079_50b9:
	and  a                                           ; $50b9: $a7
	db   $db                                         ; $50ba: $db
	jp   $95d3                                       ; $50bb: $c3 $d3 $95


	rla                                              ; $50be: $17
	add  b                                           ; $50bf: $80
	rlca                                             ; $50c0: $07

jr_079_50c1:
	ld   [$cf4f], sp                                 ; $50c1: $08 $4f $cf
	ret                                              ; $50c4: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c5: $cf
	add  e                                           ; $50c6: $83
	sbc  e                                           ; $50c7: $9b
	db   $fd                                         ; $50c8: $fd
	inc  bc                                          ; $50c9: $03
	rst  $20                                         ; $50ca: $e7
	add  c                                           ; $50cb: $81
	ld   h, l                                        ; $50cc: $65
	add  b                                           ; $50cd: $80
	ld   h, a                                        ; $50ce: $67
	ld   c, $43                                      ; $50cf: $0e $43
	ld   h, a                                        ; $50d1: $67
	ld   a, [hl]                                     ; $50d2: $7e
	ld   a, a                                        ; $50d3: $7f
	ld   [hl], d                                     ; $50d4: $72
	ld   l, a                                        ; $50d5: $6f
	ld   l, b                                        ; $50d6: $68
	ld   h, b                                        ; $50d7: $60
	or   b                                           ; $50d8: $b0
	ret  nz                                          ; $50d9: $c0

	ld   b, h                                        ; $50da: $44
	ld   [$080a], sp                                 ; $50db: $08 $0a $08
	ld   c, $83                                      ; $50de: $0e $83
	rrca                                             ; $50e0: $0f
	add  h                                           ; $50e1: $84
	dec  bc                                          ; $50e2: $0b
	ld   [bc], a                                     ; $50e3: $02
	dec  l                                           ; $50e4: $2d
	ld   [bc], a                                     ; $50e5: $02
	rst  JumpTable                                         ; $50e6: $df
	add  d                                           ; $50e7: $82
	ld   a, $80                                      ; $50e8: $3e $80
	ld   a, [hl]                                     ; $50ea: $7e
	add  b                                           ; $50eb: $80
	ld   a, $80                                      ; $50ec: $3e $80
	ld   a, [hl]                                     ; $50ee: $7e
	add  b                                           ; $50ef: $80
	ld   a, $01                                      ; $50f0: $3e $01
	ld   a, [hl]                                     ; $50f2: $7e
	ld   b, a                                        ; $50f3: $47
	add  b                                           ; $50f4: $80
	ld   l, $80                                      ; $50f5: $2e $80
	ld   c, [hl]                                     ; $50f7: $4e
	add  b                                           ; $50f8: $80
	ld   e, [hl]                                     ; $50f9: $5e
	ld   [bc], a                                     ; $50fa: $02
	ld   c, [hl]                                     ; $50fb: $4e
	ld   c, a                                        ; $50fc: $4f
	ld   l, a                                        ; $50fd: $6f
	add  b                                           ; $50fe: $80
	ld   a, a                                        ; $50ff: $7f
	inc  b                                           ; $5100: $04
	ld   c, a                                        ; $5101: $4f
	ld   a, a                                        ; $5102: $7f
	ld   b, a                                        ; $5103: $47
	ld   a, a                                        ; $5104: $7f
	sbc  a                                           ; $5105: $9f
	add  b                                           ; $5106: $80
	inc  bc                                          ; $5107: $03
	add  b                                           ; $5108: $80
	nop                                              ; $5109: $00
	adc  c                                           ; $510a: $89
	ld   bc, $3e01                                   ; $510b: $01 $01 $3e
	rst  $38                                         ; $510e: $ff
	add  b                                           ; $510f: $80
	nop                                              ; $5110: $00
	adc  d                                           ; $5111: $8a
	ld   d, l                                        ; $5112: $55
	ld   [bc], a                                     ; $5113: $02
	inc  bc                                          ; $5114: $03
	di                                               ; $5115: $f3
	ldh  a, [$80]                                    ; $5116: $f0 $80
	nop                                              ; $5118: $00
	add  b                                           ; $5119: $80
	ld   d, b                                        ; $511a: $50
	inc  b                                           ; $511b: $04
	ld   d, d                                        ; $511c: $52
	ld   d, b                                        ; $511d: $50
	ld   b, [hl]                                     ; $511e: $46
	ld   b, d                                        ; $511f: $42
	ld   b, [hl]                                     ; $5120: $46
	add  c                                           ; $5121: $81
	ld   b, a                                        ; $5122: $47
	inc  bc                                          ; $5123: $03
	ld   c, a                                        ; $5124: $4f
	ret  z                                           ; $5125: $c8

	cp   a                                           ; $5126: $bf
	ccf                                              ; $5127: $3f
	add  b                                           ; $5128: $80
	nop                                              ; $5129: $00
	add  b                                           ; $512a: $80
	dec  d                                           ; $512b: $15
	add  c                                           ; $512c: $81
	ld   d, l                                        ; $512d: $55
	nop                                              ; $512e: $00

Jump_079_512f:
	dec  d                                           ; $512f: $15
	add  c                                           ; $5130: $81
	ld   d, l                                        ; $5131: $55
	add  b                                           ; $5132: $80
	ld   [hl], l                                     ; $5133: $75
	nop                                              ; $5134: $00
	push hl                                          ; $5135: $e5
	add  c                                           ; $5136: $81
	nop                                              ; $5137: $00
	add  b                                           ; $5138: $80
	dec  b                                           ; $5139: $05
	add  b                                           ; $513a: $80
	ld   a, [bc]                                     ; $513b: $0a
	add  b                                           ; $513c: $80
	dec  b                                           ; $513d: $05
	add  b                                           ; $513e: $80
	ld   a, [bc]                                     ; $513f: $0a
	add  b                                           ; $5140: $80
	dec  b                                           ; $5141: $05
	add  b                                           ; $5142: $80
	ld   a, [bc]                                     ; $5143: $0a
	ld   [bc], a                                     ; $5144: $02
	di                                               ; $5145: $f3
	ei                                               ; $5146: $fb
	ld   hl, sp-$80                                  ; $5147: $f8 $80
	nop                                              ; $5149: $00
	add  b                                           ; $514a: $80
	ld   d, b                                        ; $514b: $50
	nop                                              ; $514c: $00
	ld   d, h                                        ; $514d: $54
	add  b                                           ; $514e: $80
	ld   d, l                                        ; $514f: $55
	nop                                              ; $5150: $00
	ld   d, c                                        ; $5151: $51
	add  e                                           ; $5152: $83
	ld   d, l                                        ; $5153: $55
	ld   [bc], a                                     ; $5154: $02
	ret  nc                                          ; $5155: $d0

	sbc  a                                           ; $5156: $9f
	rra                                              ; $5157: $1f
	add  b                                           ; $5158: $80
	nop                                              ; $5159: $00
	ld   bc, $0545                                   ; $515a: $01 $45 $05
	add  e                                           ; $515d: $83
	ld   b, l                                        ; $515e: $45
	add  c                                           ; $515f: $81
	push bc                                          ; $5160: $c5
	inc  bc                                          ; $5161: $03
	push hl                                          ; $5162: $e5
	inc  h                                           ; $5163: $24
	ld   sp, hl                                      ; $5164: $f9
	ld   hl, sp-$80                                  ; $5165: $f8 $80
	inc  b                                           ; $5167: $04
	ld   [bc], a                                     ; $5168: $02
	ld   b, h                                        ; $5169: $44
	ld   b, b                                        ; $516a: $40
	ld   b, h                                        ; $516b: $44
	add  b                                           ; $516c: $80
	ld   b, l                                        ; $516d: $45
	nop                                              ; $516e: $00
	ld   b, a                                        ; $516f: $47
	add  c                                           ; $5170: $81
	ld   c, a                                        ; $5171: $4f
	add  b                                           ; $5172: $80
	ld   c, l                                        ; $5173: $4d
	ld   [bc], a                                     ; $5174: $02
	adc  b                                           ; $5175: $88

jr_079_5176:
	rst  JumpTable                                         ; $5176: $df
	rra                                              ; $5177: $1f
	add  b                                           ; $5178: $80
	nop                                              ; $5179: $00
	ld   bc, $1595                                   ; $517a: $01 $95 $15
	add  c                                           ; $517d: $81
	sub  l                                           ; $517e: $95
	add  h                                           ; $517f: $84
	push de                                          ; $5180: $d5
	ld   bc, $5540                                   ; $5181: $01 $40 $55
	add  b                                           ; $5184: $80
	xor  d                                           ; $5185: $aa
	add  b                                           ; $5186: $80
	ld   d, l                                        ; $5187: $55
	add  b                                           ; $5188: $80
	xor  d                                           ; $5189: $aa
	add  b                                           ; $518a: $80
	ld   d, l                                        ; $518b: $55
	add  b                                           ; $518c: $80
	xor  d                                           ; $518d: $aa
	add  b                                           ; $518e: $80
	ld   d, l                                        ; $518f: $55
	add  b                                           ; $5190: $80
	xor  d                                           ; $5191: $aa
	add  b                                           ; $5192: $80
	di                                               ; $5193: $f3
	add  b                                           ; $5194: $80
	inc  bc                                          ; $5195: $03
	ld   bc, $5152                                   ; $5196: $01 $52 $51
	add  c                                           ; $5199: $81
	ld   d, b                                        ; $519a: $50
	add  d                                           ; $519b: $82
	ld   d, e                                        ; $519c: $53
	add  c                                           ; $519d: $81

jr_079_519e:
	ld   d, b                                        ; $519e: $50
	add  hl, bc                                      ; $519f: $09
	ld   a, h                                        ; $51a0: $7c
	nop                                              ; $51a1: $00
	db   $fc                                         ; $51a2: $fc
	add  b                                           ; $51a3: $80
	inc  sp                                          ; $51a4: $33
	jr   nc, jr_079_5176                             ; $51a5: $30 $cf

	rst  $38                                         ; $51a7: $ff
	jp   $813f                                       ; $51a8: $c3 $3f $81


	inc  sp                                          ; $51ab: $33
	add  c                                           ; $51ac: $81
	call z, $cf05                                    ; $51ad: $cc $05 $cf
	nop                                              ; $51b0: $00
	inc  a                                           ; $51b1: $3c
	jr   nz, jr_079_519e                             ; $51b2: $20 $ea

	ld   a, [bc]                                     ; $51b4: $0a
	add  c                                           ; $51b5: $81
	ld   a, [hl-]                                    ; $51b6: $3a
	add  c                                           ; $51b7: $81
	ld   a, [$3a00]                                  ; $51b8: $fa $00 $3a
	add  c                                           ; $51bb: $81
	jp   z, $cb00                                    ; $51bc: $ca $00 $cb

	add  e                                           ; $51bf: $83
	dec  bc                                          ; $51c0: $0b
	adc  b                                           ; $51c1: $88
	add  hl, bc                                      ; $51c2: $09
	ld   de, $38f7                                   ; $51c3: $11 $f7 $38
	daa                                              ; $51c6: $27
	ld   b, b                                        ; $51c7: $40
	and  a                                           ; $51c8: $a7
	rra                                              ; $51c9: $1f
	ld   e, $e1                                      ; $51ca: $1e $e1
	rst  $28                                         ; $51cc: $ef

jr_079_51cd:
	rrca                                             ; $51cd: $0f
	inc  a                                           ; $51ce: $3c
	rst  $38                                         ; $51cf: $ff
	ldh  a, [rIE]                                    ; $51d0: $f0 $ff
	inc  bc                                          ; $51d2: $03
	ccf                                              ; $51d3: $3f
	jr   nc, @+$41                                   ; $51d4: $30 $3f

	add  b                                           ; $51d6: $80
	ld   a, a                                        ; $51d7: $7f
	add  b                                           ; $51d8: $80
	rst  $38                                         ; $51d9: $ff
	dec  b                                           ; $51da: $05
	ccf                                              ; $51db: $3f
	rst  $38                                         ; $51dc: $ff
	ccf                                              ; $51dd: $3f
	rst  $38                                         ; $51de: $ff
	ccf                                              ; $51df: $3f
	jp   $cf80                                       ; $51e0: $c3 $80 $cf


	ld   [bc], a                                     ; $51e3: $02
	cp   [hl]                                        ; $51e4: $be
	rst  $38                                         ; $51e5: $ff
	ld   a, l                                        ; $51e6: $7d
	add  d                                           ; $51e7: $82
	ld   bc, $0080                                   ; $51e8: $01 $80 $00
	add  d                                           ; $51eb: $82
	inc  bc                                          ; $51ec: $03
	add  b                                           ; $51ed: $80
	nop                                              ; $51ee: $00
	ld   [bc], a                                     ; $51ef: $02
	ccf                                              ; $51f0: $3f
	rst  $38                                         ; $51f1: $ff
	nop                                              ; $51f2: $00
	add  d                                           ; $51f3: $82
	ld   d, l                                        ; $51f4: $55
	add  b                                           ; $51f5: $80
	nop                                              ; $51f6: $00
	add  d                                           ; $51f7: $82
	rst  $38                                         ; $51f8: $ff
	add  b                                           ; $51f9: $80
	nop                                              ; $51fa: $00
	add  b                                           ; $51fb: $80
	rst  $38                                         ; $51fc: $ff
	add  b                                           ; $51fd: $80
	nop                                              ; $51fe: $00
	ld   bc, $4f07                                   ; $51ff: $01 $07 $4f
	add  b                                           ; $5202: $80

Jump_079_5203:
	ld   c, e                                        ; $5203: $4b
	nop                                              ; $5204: $00
	ld   b, e                                        ; $5205: $43
	add  b                                           ; $5206: $80
	dec  bc                                          ; $5207: $0b
	add  d                                           ; $5208: $82
	res  0, b                                        ; $5209: $cb $80
	dec  bc                                          ; $520b: $0b
	inc  bc                                          ; $520c: $03
	set  0, e                                        ; $520d: $cb $c3
	inc  bc                                          ; $520f: $03
	ld   h, b                                        ; $5210: $60
	add  d                                           ; $5211: $82
	ld   [hl], l                                     ; $5212: $75
	ld   bc, $2060                                   ; $5213: $01 $60 $20
	add  b                                           ; $5216: $80
	ccf                                              ; $5217: $3f
	add  b                                           ; $5218: $80
	cpl                                              ; $5219: $2f
	add  b                                           ; $521a: $80
	jr   nz, jr_079_521e                             ; $521b: $20 $01

	cpl                                              ; $521d: $2f

jr_079_521e:
	rrca                                             ; $521e: $0f
	add  c                                           ; $521f: $81
	nop                                              ; $5220: $00
	add  b                                           ; $5221: $80
	add  b                                           ; $5222: $80
	add  b                                           ; $5223: $80
	ld   e, a                                        ; $5224: $5f
	add  b                                           ; $5225: $80
	xor  a                                           ; $5226: $af
	add  b                                           ; $5227: $80
	ld   d, l                                        ; $5228: $55
	add  b                                           ; $5229: $80
	xor  d                                           ; $522a: $aa
	add  b                                           ; $522b: $80
	ld   d, l                                        ; $522c: $55
	add  b                                           ; $522d: $80
	xor  d                                           ; $522e: $aa
	nop                                              ; $522f: $00
	rrca                                             ; $5230: $0f
	add  d                                           ; $5231: $82
	ld   e, a                                        ; $5232: $5f
	add  b                                           ; $5233: $80
	rrca                                             ; $5234: $0f
	add  c                                           ; $5235: $81
	rst  $28                                         ; $5236: $ef
	nop                                              ; $5237: $00
	db   $ed                                         ; $5238: $ed
	add  b                                           ; $5239: $80
	dec  c                                           ; $523a: $0d
	add  b                                           ; $523b: $80
	db   $ed                                         ; $523c: $ed
	ld   bc, $c00d                                   ; $523d: $01 $0d $c0
	add  c                                           ; $5240: $81
	push hl                                          ; $5241: $e5
	nop                                              ; $5242: $00
	ld   b, l                                        ; $5243: $45
	add  b                                           ; $5244: $80
	ld   h, b                                        ; $5245: $60
	nop                                              ; $5246: $00
	ld   h, a                                        ; $5247: $67
	add  c                                           ; $5248: $81
	daa                                              ; $5249: $27
	add  b                                           ; $524a: $80
	jr   nz, jr_079_51cd                             ; $524b: $20 $80

	daa                                              ; $524d: $27
	dec  b                                           ; $524e: $05
	jr   nz, jr_079_5256                             ; $524f: $20 $05

	ld   c, l                                        ; $5251: $4d
	ld   b, l                                        ; $5252: $45
	ld   c, l                                        ; $5253: $4d
	ld   c, c                                        ; $5254: $49
	add  b                                           ; $5255: $80

jr_079_5256:
	add  hl, bc                                      ; $5256: $09
	add  d                                           ; $5257: $82
	ret                                              ; $5258: $c9


	add  b                                           ; $5259: $80
	add  hl, bc                                      ; $525a: $09
	add  b                                           ; $525b: $80
	ret                                              ; $525c: $c9


	ld   bc, $e009                                   ; $525d: $01 $09 $e0
	add  d                                           ; $5260: $82
	push af                                          ; $5261: $f5
	add  b                                           ; $5262: $80
	ldh  [$81], a                                    ; $5263: $e0 $81
	rst  $28                                         ; $5265: $ef
	nop                                              ; $5266: $00
	xor  a                                           ; $5267: $af
	add  b                                           ; $5268: $80
	and  b                                           ; $5269: $a0
	ld   [bc], a                                     ; $526a: $02
	xor  a                                           ; $526b: $af
	adc  a                                           ; $526c: $8f
	add  b                                           ; $526d: $80
	add  d                                           ; $526e: $82
	nop                                              ; $526f: $00
	add  h                                           ; $5270: $84
	rst  $38                                         ; $5271: $ff
	add  b                                           ; $5272: $80
	cp   a                                           ; $5273: $bf
	add  b                                           ; $5274: $80
	ld   d, l                                        ; $5275: $55
	add  b                                           ; $5276: $80
	xor  d                                           ; $5277: $aa
	add  d                                           ; $5278: $82
	ld   d, e                                        ; $5279: $53
	ld   bc, $0003                                   ; $527a: $01 $03 $00
	add  c                                           ; $527d: $81

jr_079_527e:
	ldh  a, [rP1]                                    ; $527e: $f0 $00
	di                                               ; $5280: $f3
	add  b                                           ; $5281: $80
	inc  bc                                          ; $5282: $03
	add  b                                           ; $5283: $80
	ldh  a, [$80]                                    ; $5284: $f0 $80
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	rst  $38                                         ; $5288: $ff
	add  d                                           ; $5289: $82
	inc  sp                                          ; $528a: $33
	add  d                                           ; $528b: $82
	call z, $3381                                    ; $528c: $cc $81 $33
	ld   bc, $00cc                                   ; $528f: $01 $cc $00
	add  b                                           ; $5292: $80
	db   $ec                                         ; $5293: $ec
	nop                                              ; $5294: $00
	ld   a, [$3a81]                                  ; $5295: $fa $81 $3a
	ld   bc, $c030                                   ; $5298: $01 $30 $c0
	add  c                                           ; $529b: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529c: $cf
	nop                                              ; $529d: $00
	ccf                                              ; $529e: $3f
	add  b                                           ; $529f: $80
	jr   nc, jr_079_52a3                             ; $52a0: $30 $01

	rst  ToBoot                                         ; $52a2: $c7

jr_079_52a3:
	rlca                                             ; $52a3: $07
	add  b                                           ; $52a4: $80
	ld   [hl], b                                     ; $52a5: $70
	or   e                                           ; $52a6: $b3
	ld   bc, $0086                                   ; $52a7: $01 $86 $00
	nop                                              ; $52aa: $00
	rrca                                             ; $52ab: $0f
	add  l                                           ; $52ac: $85
	nop                                              ; $52ad: $00
	nop                                              ; $52ae: $00
	rrca                                             ; $52af: $0f
	add  l                                           ; $52b0: $85
	nop                                              ; $52b1: $00
	nop                                              ; $52b2: $00
	rst  $38                                         ; $52b3: $ff
	add  l                                           ; $52b4: $85
	nop                                              ; $52b5: $00
	nop                                              ; $52b6: $00
	ldh  a, [$8d]                                    ; $52b7: $f0 $8d
	nop                                              ; $52b9: $00
	nop                                              ; $52ba: $00
	rrca                                             ; $52bb: $0f
	add  l                                           ; $52bc: $85
	nop                                              ; $52bd: $00
	ld   [$04f8], sp                                 ; $52be: $08 $f8 $04
	inc  c                                           ; $52c1: $0c
	ld   [$3129], sp                                 ; $52c2: $08 $29 $31
	ld   h, d                                        ; $52c5: $62
	ld   b, d                                        ; $52c6: $42
	ret  nz                                          ; $52c7: $c0

	add  l                                           ; $52c8: $85
	nop                                              ; $52c9: $00
	inc  bc                                          ; $52ca: $03
	ld   bc, $6202                                   ; $52cb: $01 $02 $62
	ld   h, c                                        ; $52ce: $61
	add  b                                           ; $52cf: $80
	nop                                              ; $52d0: $00
	add  b                                           ; $52d1: $80
	inc  b                                           ; $52d2: $04
	add  [hl]                                        ; $52d3: $86
	nop                                              ; $52d4: $00
	ld   bc, $00ff                                   ; $52d5: $01 $ff $00
	add  b                                           ; $52d8: $80
	add  b                                           ; $52d9: $80
	nop                                              ; $52da: $00
	ret  nz                                          ; $52db: $c0

	add  b                                           ; $52dc: $80
	ld   b, b                                        ; $52dd: $40
	ld   bc, $e020                                   ; $52de: $01 $20 $e0
	adc  d                                           ; $52e1: $8a
	nop                                              ; $52e2: $00
	db   $10                                         ; $52e3: $10
	ld   bc, $0406                                   ; $52e4: $01 $06 $04
	ld   [bc], a                                     ; $52e7: $02
	ld   bc, $0203                                   ; $52e8: $01 $03 $02
	ld   a, [bc]                                     ; $52eb: $0a
	inc  c                                           ; $52ec: $0c
	jr   jr_079_52ff                                 ; $52ed: $18 $10

	ld   d, c                                        ; $52ef: $51
	ld   h, c                                        ; $52f0: $61
	add  $86                                         ; $52f1: $c6 $86
	adc  b                                           ; $52f3: $88
	ld   [$3080], sp                                 ; $52f4: $08 $80 $30
	add  b                                           ; $52f7: $80
	add  h                                           ; $52f8: $84
	add  b                                           ; $52f9: $80
	db   $10                                         ; $52fa: $10

jr_079_52fb:
	add  b                                           ; $52fb: $80
	jr   nz, jr_079_527e                             ; $52fc: $20 $80

	add  b                                           ; $52fe: $80

jr_079_52ff:
	sub  [hl]                                        ; $52ff: $96
	nop                                              ; $5300: $00
	rlca                                             ; $5301: $07
	rlca                                             ; $5302: $07
	ld   [$040c], sp                                 ; $5303: $08 $0c $04
	dec  b                                           ; $5306: $05
	inc  bc                                          ; $5307: $03
	ld   de, $8010                                   ; $5308: $11 $10 $80
	nop                                              ; $530b: $00
	add  b                                           ; $530c: $80
	ld   [bc], a                                     ; $530d: $02
	add  b                                           ; $530e: $80
	ld   bc, $0080                                   ; $530f: $01 $80 $00
	nop                                              ; $5312: $00
	rst  $38                                         ; $5313: $ff
	add  e                                           ; $5314: $83
	nop                                              ; $5315: $00
	add  b                                           ; $5316: $80
	add  b                                           ; $5317: $80
	ld   [$40c0], sp                                 ; $5318: $08 $c0 $40
	ld   [hl], b                                     ; $531b: $70
	db   $10                                         ; $531c: $10
	jr   @+$0a                                       ; $531d: $18 $08

	ld   c, b                                        ; $531f: $48
	ld   b, h                                        ; $5320: $44
	db   $fc                                         ; $5321: $fc
	add  e                                           ; $5322: $83
	nop                                              ; $5323: $00
	add  b                                           ; $5324: $80
	ld   bc, $0313                                   ; $5325: $01 $13 $03
	ld   [bc], a                                     ; $5328: $02
	ld   a, [bc]                                     ; $5329: $0a
	inc  c                                           ; $532a: $0c
	jr   jr_079_533d                                 ; $532b: $18 $10

	ld   [de], a                                     ; $532d: $12
	inc  hl                                          ; $532e: $23
	ld   sp, $3908                                   ; $532f: $31 $08 $39
	ld   hl, $4363                                   ; $5332: $21 $63 $43
	ld   c, b                                        ; $5335: $48
	adc  h                                           ; $5336: $8c
	inc  c                                           ; $5337: $0c
	jr   jr_079_53aa                                 ; $5338: $18 $70

	ld   h, b                                        ; $533a: $60
	add  b                                           ; $533b: $80
	ret  nz                                          ; $533c: $c0

jr_079_533d:
	add  b                                           ; $533d: $80
	add  b                                           ; $533e: $80
	add  b                                           ; $533f: $80
	ld   b, b                                        ; $5340: $40
	add  b                                           ; $5341: $80
	add  b                                           ; $5342: $80
	inc  bc                                          ; $5343: $03
	nop                                              ; $5344: $00
	ld   bc, $0100                                   ; $5345: $01 $00 $01
	add  h                                           ; $5348: $84
	nop                                              ; $5349: $00
	add  b                                           ; $534a: $80
	add  b                                           ; $534b: $80
	ld   a, [bc]                                     ; $534c: $0a
	nop                                              ; $534d: $00
	jr   nz, @+$2a                                   ; $534e: $20 $28

	ld   hl, sp-$0c                                  ; $5350: $f8 $f4
	db   $fc                                         ; $5352: $fc
	ld   a, [$f6fe]                                  ; $5353: $fa $fe $f6
	ld   a, e                                        ; $5356: $7b
	ld   [hl], b                                     ; $5357: $70
	add  b                                           ; $5358: $80
	scf                                              ; $5359: $37
	ld   bc, $0e0f                                   ; $535a: $01 $0f $0e
	add  b                                           ; $535d: $80
	rrca                                             ; $535e: $0f
	add  l                                           ; $535f: $85
	nop                                              ; $5360: $00
	add  b                                           ; $5361: $80
	ret  nz                                          ; $5362: $c0

	ld   [bc], a                                     ; $5363: $02
	nop                                              ; $5364: $00
	ld   b, b                                        ; $5365: $40
	ret  nz                                          ; $5366: $c0

	add  b                                           ; $5367: $80
	ldh  [rSB], a                                    ; $5368: $e0 $01
	and  b                                           ; $536a: $a0
	jr   nz, jr_079_52fb                             ; $536b: $20 $8e

	nop                                              ; $536d: $00
	ld   [bc], a                                     ; $536e: $02
	ld   bc, $1011                                   ; $536f: $01 $11 $10
	add  b                                           ; $5372: $80
	inc  b                                           ; $5373: $04
	add  b                                           ; $5374: $80
	ld   [bc], a                                     ; $5375: $02
	add  b                                           ; $5376: $80
	ld   bc, $0084                                   ; $5377: $01 $84 $00
	ld   bc, $00ff                                   ; $537a: $01 $ff $00
	add  b                                           ; $537d: $80
	add  b                                           ; $537e: $80
	inc  c                                           ; $537f: $0c
	and  b                                           ; $5380: $a0
	ld   h, b                                        ; $5381: $60
	jr   nc, jr_079_5394                             ; $5382: $30 $10

	sbc  b                                           ; $5384: $98

jr_079_5385:
	adc  b                                           ; $5385: $88
	ld   c, d                                        ; $5386: $4a
	ld   b, [hl]                                     ; $5387: $46
	inc  sp                                          ; $5388: $33
	ld   sp, $0809                                   ; $5389: $31 $09 $08
	rst  $38                                         ; $538c: $ff
	adc  h                                           ; $538d: $8c
	nop                                              ; $538e: $00
	add  b                                           ; $538f: $80
	add  b                                           ; $5390: $80
	adc  c                                           ; $5391: $89
	nop                                              ; $5392: $00
	add  b                                           ; $5393: $80

jr_079_5394:
	ld   bc, $0202                                   ; $5394: $01 $02 $02
	inc  bc                                          ; $5397: $03
	ld   bc, $0080                                   ; $5398: $01 $80 $00
	dec  d                                           ; $539b: $15
	ld   bc, $0604                                   ; $539c: $01 $04 $06
	inc  c                                           ; $539f: $0c
	ld   [$332b], sp                                 ; $53a0: $08 $2b $33
	ld   l, l                                        ; $53a3: $6d
	ld   c, a                                        ; $53a4: $4f
	jr   jr_079_5385                                 ; $53a5: $18 $de

	and  h                                           ; $53a7: $a4
	cp   b                                           ; $53a8: $b8
	ld   a, [de]                                     ; $53a9: $1a

jr_079_53aa:
	add  [hl]                                        ; $53aa: $86
	sub  b                                           ; $53ab: $90
	inc  e                                           ; $53ac: $1c
	jr   z, jr_079_53df                              ; $53ad: $28 $30

	or   b                                           ; $53af: $b0
	ldh  [rLCDC], a                                  ; $53b0: $e0 $40
	add  b                                           ; $53b2: $80
	add  b                                           ; $53b3: $80
	add  e                                           ; $53b4: $83
	nop                                              ; $53b5: $00
	ld   a, [bc]                                     ; $53b6: $0a
	ld   [bc], a                                     ; $53b7: $02
	inc  bc                                          ; $53b8: $03
	add  hl, bc                                      ; $53b9: $09
	dec  bc                                          ; $53ba: $0b
	ld   a, [bc]                                     ; $53bb: $0a
	dec  c                                           ; $53bc: $0d
	inc  b                                           ; $53bd: $04
	ld   b, $02                                      ; $53be: $06 $02
	dec  b                                           ; $53c0: $05
	ld   bc, $0084                                   ; $53c1: $01 $84 $00
	nop                                              ; $53c4: $00
	add  b                                           ; $53c5: $80
	add  b                                           ; $53c6: $80
	ret  nc                                          ; $53c7: $d0

	ld   c, $80                                      ; $53c8: $0e $80
	ldh  [$a8], a                                    ; $53ca: $e0 $a8
	add  sp, $31                                     ; $53cc: $e8 $31
	sbc  a                                           ; $53ce: $9f
	add  [hl]                                        ; $53cf: $86
	rst  $28                                         ; $53d0: $ef
	ld   l, l                                        ; $53d1: $6d
	ld   a, a                                        ; $53d2: $7f
	ld   d, h                                        ; $53d3: $54
	ccf                                              ; $53d4: $3f
	ld   a, [de]                                     ; $53d5: $1a
	rlca                                             ; $53d6: $07
	inc  bc                                          ; $53d7: $03
	add  b                                           ; $53d8: $80
	ld   bc, $0085                                   ; $53d9: $01 $85 $00
	add  b                                           ; $53dc: $80
	ret  nz                                          ; $53dd: $c0

	add  b                                           ; $53de: $80

jr_079_53df:
	nop                                              ; $53df: $00
	inc  bc                                          ; $53e0: $03
	ld   b, b                                        ; $53e1: $40
	ret  z                                           ; $53e2: $c8

	nop                                              ; $53e3: $00
	adc  h                                           ; $53e4: $8c
	add  d                                           ; $53e5: $82
	inc  b                                           ; $53e6: $04
	ld   b, $00                                      ; $53e7: $06 $00
	inc  b                                           ; $53e9: $04
	nop                                              ; $53ea: $00
	ld   bc, $0300                                   ; $53eb: $01 $00 $03
	ld   [bc], a                                     ; $53ee: $02
	add  b                                           ; $53ef: $80
	ld   bc, $0083                                   ; $53f0: $01 $83 $00
	add  b                                           ; $53f3: $80
	jr   nz, jr_079_53fe                             ; $53f4: $20 $08

	add  b                                           ; $53f6: $80
	ldh  a, [$38]                                    ; $53f7: $f0 $38
	ld   hl, sp-$4c                                  ; $53f9: $f8 $b4
	db   $ec                                         ; $53fb: $ec
	ld   l, d                                        ; $53fc: $6a
	db   $d3                                         ; $53fd: $d3

jr_079_53fe:
	ld   d, c                                        ; $53fe: $51
	adc  e                                           ; $53ff: $8b
	nop                                              ; $5400: $00
	add  b                                           ; $5401: $80
	add  b                                           ; $5402: $80
	add  b                                           ; $5403: $80
	inc  b                                           ; $5404: $04
	add  b                                           ; $5405: $80
	inc  bc                                          ; $5406: $03
	add  b                                           ; $5407: $80
	ld   bc, $0088                                   ; $5408: $01 $88 $00
	dec  bc                                          ; $540b: $0b
	rra                                              ; $540c: $1f
	jr   nz, @+$32                                   ; $540d: $20 $30

	db   $10                                         ; $540f: $10
	sub  h                                           ; $5410: $94
	adc  h                                           ; $5411: $8c
	ld   h, [hl]                                     ; $5412: $66
	ld   h, d                                        ; $5413: $62
	inc  sp                                          ; $5414: $33
	ld   sp, $0809                                   ; $5415: $31 $09 $08
	add  b                                           ; $5418: $80
	ld   b, $80                                      ; $5419: $06 $80
	inc  bc                                          ; $541b: $03
	nop                                              ; $541c: $00
	rst  $38                                         ; $541d: $ff
	add  a                                           ; $541e: $87
	nop                                              ; $541f: $00
	ld   [bc], a                                     ; $5420: $02
	ret  nz                                          ; $5421: $c0

	ld   b, b                                        ; $5422: $40
	ld   h, b                                        ; $5423: $60
	add  b                                           ; $5424: $80
	jr   nz, jr_079_5428                             ; $5425: $20 $01

	db   $10                                         ; $5427: $10

jr_079_5428:
	ldh  a, [$85]                                    ; $5428: $f0 $85
	nop                                              ; $542a: $00
	add  b                                           ; $542b: $80
	ld   bc, $0380                                   ; $542c: $01 $80 $03
	add  b                                           ; $542f: $80
	rlca                                             ; $5430: $07
	add  b                                           ; $5431: $80
	rrca                                             ; $5432: $0f
	dec  d                                           ; $5433: $15
	inc  bc                                          ; $5434: $03
	inc  b                                           ; $5435: $04
	db   $10                                         ; $5436: $10
	jr   jr_079_545b                                 ; $5437: $18 $22

	inc  sp                                          ; $5439: $33
	ld   e, e                                        ; $543a: $5b
	ld   a, [hl]                                     ; $543b: $7e
	or   b                                           ; $543c: $b0
	db   $fc                                         ; $543d: $fc
	jr   nz, @-$06                                   ; $543e: $20 $f8

	ld   d, b                                        ; $5440: $50
	ldh  [$60], a                                    ; $5441: $e0 $60
	ld   b, b                                        ; $5443: $40
	push de                                          ; $5444: $d5
	ld   [hl], l                                     ; $5445: $75
	inc  b                                           ; $5446: $04
	db   $e4                                         ; $5447: $e4
	ld   a, [de]                                     ; $5448: $1a
	sbc  d                                           ; $5449: $9a
	add  b                                           ; $544a: $80
	ld   l, d                                        ; $544b: $6a
	add  b                                           ; $544c: $80
	xor  c                                           ; $544d: $a9
	add  b                                           ; $544e: $80
	ld   d, h                                        ; $544f: $54
	add  b                                           ; $5450: $80
	sbc  d                                           ; $5451: $9a
	add  b                                           ; $5452: $80
	ld   d, d                                        ; $5453: $52
	add  b                                           ; $5454: $80
	nop                                              ; $5455: $00
	add  b                                           ; $5456: $80
	add  b                                           ; $5457: $80
	add  b                                           ; $5458: $80
	jr   nz, @-$7e                                   ; $5459: $20 $80

jr_079_545b:
	add  b                                           ; $545b: $80
	add  b                                           ; $545c: $80
	nop                                              ; $545d: $00
	add  b                                           ; $545e: $80
	and  b                                           ; $545f: $a0
	add  b                                           ; $5460: $80
	ld   b, b                                        ; $5461: $40
	add  b                                           ; $5462: $80
	adc  b                                           ; $5463: $88
	adc  [hl]                                        ; $5464: $8e
	nop                                              ; $5465: $00
	inc  bc                                          ; $5466: $03
	inc  d                                           ; $5467: $14
	ld   e, $02                                      ; $5468: $1e $02
	ld   [$008b], sp                                 ; $546a: $08 $8b $00
	inc  b                                           ; $546d: $04
	ld   h, b                                        ; $546e: $60
	and  d                                           ; $546f: $a2
	cp   $3c                                         ; $5470: $fe $3c
	ld   hl, $2380                                   ; $5472: $21 $80 $23
	ld   [$2f29], sp                                 ; $5475: $08 $29 $2f
	inc  h                                           ; $5478: $24
	rra                                              ; $5479: $1f
	dec  e                                           ; $547a: $1d
	rrca                                             ; $547b: $0f
	ld   a, [bc]                                     ; $547c: $0a
	rlca                                             ; $547d: $07
	inc  bc                                          ; $547e: $03
	add  e                                           ; $547f: $83
	nop                                              ; $5480: $00
	add  b                                           ; $5481: $80
	ret  nz                                          ; $5482: $c0

	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	add  b                                           ; $5485: $80
	ret  nz                                          ; $5486: $c0

	db   $10                                         ; $5487: $10
	ldh  [$60], a                                    ; $5488: $e0 $60
	ldh  [$e4], a                                    ; $548a: $e0 $e4
	adc  h                                           ; $548c: $8c
	ld   b, b                                        ; $548d: $40
	ld   l, [hl]                                     ; $548e: $6e
	ld   h, $0f                                      ; $548f: $26 $0f

jr_079_5491:
	dec  b                                           ; $5491: $05
	dec  de                                          ; $5492: $1b
	jr   jr_079_54a2                                 ; $5493: $18 $0d

	inc  b                                           ; $5495: $04
	inc  bc                                          ; $5496: $03
	ld   [bc], a                                     ; $5497: $02
	ld   bc, $0082                                   ; $5498: $01 $82 $00
	add  c                                           ; $549b: $81
	ret  nz                                          ; $549c: $c0

	dec  c                                           ; $549d: $0d
	ldh  [rAUD4LEN], a                               ; $549e: $e0 $20
	ldh  a, [$b4]                                    ; $54a0: $f0 $b4

jr_079_54a2:
	call c, $fe78                                    ; $54a2: $dc $78 $fe
	sbc  [hl]                                        ; $54a5: $9e
	rst  $38                                         ; $54a6: $ff
	ld   a, $7f                                      ; $54a7: $3e $7f
	inc  e                                           ; $54a9: $1c
	ld   a, $1c                                      ; $54aa: $3e $1c
	add  a                                           ; $54ac: $87
	nop                                              ; $54ad: $00
	add  b                                           ; $54ae: $80
	add  b                                           ; $54af: $80
	add  b                                           ; $54b0: $80
	ld   h, b                                        ; $54b1: $60
	inc  bc                                          ; $54b2: $03
	db   $10                                         ; $54b3: $10
	ldh  a, [$e1]                                    ; $54b4: $f0 $e1
	ld   bc, $008c                                   ; $54b6: $01 $8c $00
	ld   [bc], a                                     ; $54b9: $02
	add  e                                           ; $54ba: $83
	add  h                                           ; $54bb: $84
	ld   h, $80                                      ; $54bc: $26 $80
	ld   h, d                                        ; $54be: $62
	rlca                                             ; $54bf: $07
	ld   sp, $0c14                                   ; $54c0: $31 $14 $0c
	ld   c, $06                                      ; $54c3: $0e $06
	ld   [bc], a                                     ; $54c5: $02
	inc  bc                                          ; $54c6: $03
	ld   bc, $0081                                   ; $54c7: $01 $81 $00
	nop                                              ; $54ca: $00
	rst  $38                                         ; $54cb: $ff
	add  c                                           ; $54cc: $81
	nop                                              ; $54cd: $00
	add  b                                           ; $54ce: $80
	add  b                                           ; $54cf: $80
	ld   b, $c0                                      ; $54d0: $06 $c0
	ld   b, b                                        ; $54d2: $40
	ld   h, b                                        ; $54d3: $60
	jr   nz, jr_079_54fe                             ; $54d4: $20 $28

	jr   @+$4e                                       ; $54d6: $18 $4c

	add  b                                           ; $54d8: $80
	call nz, Call_079_6206                           ; $54d9: $c4 $06 $62
	db   $d3                                         ; $54dc: $d3
	dec  c                                           ; $54dd: $0d
	ld   [de], a                                     ; $54de: $12
	inc  de                                          ; $54df: $13
	dec  b                                           ; $54e0: $05
	rlca                                             ; $54e1: $07
	add  b                                           ; $54e2: $80
	rrca                                             ; $54e3: $0f
	add  b                                           ; $54e4: $80
	daa                                              ; $54e5: $27
	ld   bc, $191a                                   ; $54e6: $01 $1a $19
	add  b                                           ; $54e9: $80
	ld   e, $13                                      ; $54ea: $1e $13
	dec  c                                           ; $54ec: $0d
	rrca                                             ; $54ed: $0f
	ret  nz                                          ; $54ee: $c0

	db   $fd                                         ; $54ef: $fd
	sbc  h                                           ; $54f0: $9c
	db   $fc                                         ; $54f1: $fc
	sbc  a                                           ; $54f2: $9f
	rst  $38                                         ; $54f3: $ff
	sbc  l                                           ; $54f4: $9d
	db   $fd                                         ; $54f5: $fd
	sbc  [hl]                                        ; $54f6: $9e
	cp   $9d                                         ; $54f7: $fe $9d
	db   $fd                                         ; $54f9: $fd
	sbc  a                                           ; $54fa: $9f
	rst  $38                                         ; $54fb: $ff
	ld   e, l                                        ; $54fc: $5d
	ld   a, l                                        ; $54fd: $7d

jr_079_54fe:
	ld   c, l                                        ; $54fe: $4d
	xor  l                                           ; $54ff: $ad
	add  b                                           ; $5500: $80
	and  h                                           ; $5501: $a4
	add  b                                           ; $5502: $80
	ld   e, l                                        ; $5503: $5d
	add  b                                           ; $5504: $80
	ld   d, d                                        ; $5505: $52
	add  b                                           ; $5506: $80
	xor  h                                           ; $5507: $ac
	add  b                                           ; $5508: $80
	ld   d, d                                        ; $5509: $52
	add  b                                           ; $550a: $80
	xor  d                                           ; $550b: $aa
	add  b                                           ; $550c: $80
	ld   d, l                                        ; $550d: $55
	add  b                                           ; $550e: $80
	jr   nz, jr_079_5491                             ; $550f: $20 $80

	db   $10                                         ; $5511: $10
	add  b                                           ; $5512: $80
	ld   b, h                                        ; $5513: $44
	add  b                                           ; $5514: $80
	db   $10                                         ; $5515: $10
	add  b                                           ; $5516: $80
	add  h                                           ; $5517: $84
	add  b                                           ; $5518: $80
	ld   d, b                                        ; $5519: $50
	add  b                                           ; $551a: $80

jr_079_551b:
	add  b                                           ; $551b: $80
	add  b                                           ; $551c: $80
	ld   a, [hl+]                                    ; $551d: $2a
	sbc  [hl]                                        ; $551e: $9e
	nop                                              ; $551f: $00
	ld   [bc], a                                     ; $5520: $02
	ld   [bc], a                                     ; $5521: $02
	inc  bc                                          ; $5522: $03
	ld   bc, $008b                                   ; $5523: $01 $8b $00
	rlca                                             ; $5526: $07
	ld   a, [hl+]                                    ; $5527: $2a
	ld   a, $44                                      ; $5528: $3e $44
	ld   a, d                                        ; $552a: $7a
	ld   a, [hl-]                                    ; $552b: $3a
	ld   [de], a                                     ; $552c: $12
	dec  b                                           ; $552d: $05
	rlca                                             ; $552e: $07
	add  b                                           ; $552f: $80
	ld   bc, $0000                                   ; $5530: $01 $00 $00
	add  b                                           ; $5533: $80
	ld   bc, $0088                                   ; $5534: $01 $88 $00
	inc  c                                           ; $5537: $0c
	ldh  [hScriptOpcodeParams], a                                    ; $5538: $e0 $a0
	ld   hl, sp-$18                                  ; $553a: $f8 $e8
	ld   [hl], b                                     ; $553c: $70
	and  b                                           ; $553d: $a0
	pop  de                                          ; $553e: $d1
	reti                                             ; $553f: $d9


	adc  e                                           ; $5540: $8b
	add  hl, bc                                      ; $5541: $09
	dec  bc                                          ; $5542: $0b
	dec  b                                           ; $5543: $05
	rlca                                             ; $5544: $07
	add  c                                           ; $5545: $81
	inc  bc                                          ; $5546: $03
	add  e                                           ; $5547: $83
	nop                                              ; $5548: $00
	ld   bc, $c040                                   ; $5549: $01 $40 $c0
	add  c                                           ; $554c: $81
	add  b                                           ; $554d: $80
	rrca                                             ; $554e: $0f
	ldh  a, [$b0]                                    ; $554f: $f0 $b0
	db   $fc                                         ; $5551: $fc
	cp   [hl]                                        ; $5552: $be
	ei                                               ; $5553: $fb
	db   $fd                                         ; $5554: $fd
	ld   [hl], a                                     ; $5555: $77
	ld   h, e                                        ; $5556: $63
	ld   e, e                                        ; $5557: $5b
	ld   l, e                                        ; $5558: $6b
	scf                                              ; $5559: $37
	ld   bc, $0b1e                                   ; $555a: $01 $1e $0b
	rlca                                             ; $555d: $07
	inc  b                                           ; $555e: $04
	add  h                                           ; $555f: $84
	nop                                              ; $5560: $00
	rlca                                             ; $5561: $07
	add  b                                           ; $5562: $80
	and  b                                           ; $5563: $a0
	ld   h, b                                        ; $5564: $60
	ret  nc                                          ; $5565: $d0

	or   b                                           ; $5566: $b0
	nop                                              ; $5567: $00
	ldh  [$c0], a                                    ; $5568: $e0 $c0
	add  b                                           ; $556a: $80
	add  b                                           ; $556b: $80
	adc  l                                           ; $556c: $8d
	nop                                              ; $556d: $00
	ld   [bc], a                                     ; $556e: $02
	add  hl, hl                                      ; $556f: $29
	add  hl, sp                                      ; $5570: $39
	inc  d                                           ; $5571: $14
	add  b                                           ; $5572: $80
	inc  c                                           ; $5573: $0c
	inc  bc                                          ; $5574: $03
	ld   b, $00                                      ; $5575: $06 $00
	inc  bc                                          ; $5577: $03
	ld   bc, $0085                                   ; $5578: $01 $85 $00
	db   $10                                         ; $557b: $10
	ld   a, a                                        ; $557c: $7f
	add  b                                           ; $557d: $80
	ret  nz                                          ; $557e: $c0

	ld   b, b                                        ; $557f: $40
	ld   d, b                                        ; $5580: $50
	jr   nc, jr_079_551b                             ; $5581: $30 $98

	adc  b                                           ; $5583: $88
	inc  c                                           ; $5584: $0c
	call nz, $7395                                   ; $5585: $c4 $95 $73
	add  hl, hl                                      ; $5588: $29
	jr   jr_079_559b                                 ; $5589: $18 $10

	inc  c                                           ; $558b: $0c
	di                                               ; $558c: $f3
	adc  c                                           ; $558d: $89
	nop                                              ; $558e: $00
	add  c                                           ; $558f: $81
	add  b                                           ; $5590: $80
	inc  b                                           ; $5591: $04
	ld   b, b                                        ; $5592: $40
	add  $07                                         ; $5593: $c6 $07
	nop                                              ; $5595: $00
	ld   bc, $008a                                   ; $5596: $01 $8a $00
	ld   a, [bc]                                     ; $5599: $0a
	ld   a, a                                        ; $559a: $7f

jr_079_559b:
	ldh  [$08], a                                    ; $559b: $e0 $08

jr_079_559d:
	ld   hl, sp-$3c                                  ; $559d: $f8 $c4
	call c, Call_079_662c                            ; $559f: $dc $2c $66
	db   $10                                         ; $55a2: $10
	inc  sp                                          ; $55a3: $33
	add  hl, de                                      ; $55a4: $19
	add  b                                           ; $55a5: $80
	ld   [$0404], sp                                 ; $55a6: $08 $04 $04
	ld   [bc], a                                     ; $55a9: $02
	nop                                              ; $55aa: $00
	sub  h                                           ; $55ab: $94
	ld   l, d                                        ; $55ac: $6a
	add  b                                           ; $55ad: $80
	or   l                                           ; $55ae: $b5
	add  b                                           ; $55af: $80
	db   $ed                                         ; $55b0: $ed
	add  b                                           ; $55b1: $80
	ld   e, d                                        ; $55b2: $5a
	add  hl, bc                                      ; $55b3: $09
	ld   a, [hl+]                                    ; $55b4: $2a
	xor  d                                           ; $55b5: $aa
	or   l                                           ; $55b6: $b5
	push af                                          ; $55b7: $f5
	ld   e, e                                        ; $55b8: $5b
	ei                                               ; $55b9: $fb
	add  [hl]                                        ; $55ba: $86
	cp   $88                                         ; $55bb: $fe $88
	sub  b                                           ; $55bd: $90
	add  b                                           ; $55be: $80
	ld   b, h                                        ; $55bf: $44
	add  b                                           ; $55c0: $80
	ld   d, c                                        ; $55c1: $51
	add  b                                           ; $55c2: $80
	xor  d                                           ; $55c3: $aa
	add  b                                           ; $55c4: $80
	sub  b                                           ; $55c5: $90
	add  b                                           ; $55c6: $80
	ld   l, d                                        ; $55c7: $6a
	add  b                                           ; $55c8: $80
	sub  l                                           ; $55c9: $95
	add  b                                           ; $55ca: $80
	or   h                                           ; $55cb: $b4
	add  b                                           ; $55cc: $80
	add  b                                           ; $55cd: $80
	add  b                                           ; $55ce: $80
	ld   b, b                                        ; $55cf: $40
	add  b                                           ; $55d0: $80
	db   $10                                         ; $55d1: $10
	add  b                                           ; $55d2: $80
	nop                                              ; $55d3: $00
	add  b                                           ; $55d4: $80
	add  b                                           ; $55d5: $80
	add  b                                           ; $55d6: $80
	ld   d, b                                        ; $55d7: $50
	add  b                                           ; $55d8: $80
	inc  b                                           ; $55d9: $04
	add  b                                           ; $55da: $80
	ld   d, b                                        ; $55db: $50
	and  h                                           ; $55dc: $a4
	nop                                              ; $55dd: $00
	add  b                                           ; $55de: $80
	db   $10                                         ; $55df: $10
	add  b                                           ; $55e0: $80
	ld   b, b                                        ; $55e1: $40
	add  b                                           ; $55e2: $80
	inc  b                                           ; $55e3: $04
	add  b                                           ; $55e4: $80
	db   $10                                         ; $55e5: $10
	add  b                                           ; $55e6: $80
	and  b                                           ; $55e7: $a0
	dec  b                                           ; $55e8: $05
	ld   [$020e], sp                                 ; $55e9: $08 $0e $02
	ld   c, $08                                      ; $55ec: $0e $08
	inc  bc                                          ; $55ee: $03
	add  b                                           ; $55ef: $80
	ld   bc, $0001                                   ; $55f0: $01 $01 $00
	ld   bc, $0084                                   ; $55f3: $01 $84 $00
	ld   a, [bc]                                     ; $55f6: $0a
	add  b                                           ; $55f7: $80
	ret  nz                                          ; $55f8: $c0

	nop                                              ; $55f9: $00
	ld   h, b                                        ; $55fa: $60
	and  b                                           ; $55fb: $a0
	call z, $1c44                                    ; $55fc: $cc $44 $1c
	ld   d, h                                        ; $55ff: $54
	ld   h, h                                        ; $5600: $64
	inc  h                                           ; $5601: $24
	add  b                                           ; $5602: $80
	ld   b, h                                        ; $5603: $44
	dec  b                                           ; $5604: $05
	inc  b                                           ; $5605: $04
	nop                                              ; $5606: $00
	inc  b                                           ; $5607: $04
	ld   [bc], a                                     ; $5608: $02
	inc  bc                                          ; $5609: $03

jr_079_560a:
	ld   bc, $0085                                   ; $560a: $01 $85 $00
	add  b                                           ; $560d: $80
	ld   b, d                                        ; $560e: $42
	ld   b, $a0                                      ; $560f: $06 $a0
	ldh  [rLCDC], a                                  ; $5611: $e0 $40
	nop                                              ; $5613: $00
	ld   hl, $1e3f                                   ; $5614: $21 $3f $1e
	add  c                                           ; $5617: $81
	jr   nz, jr_079_561b                             ; $5618: $20 $01

	nop                                              ; $561a: $00

jr_079_561b:
	jr   nz, jr_079_559d                             ; $561b: $20 $80

	inc  b                                           ; $561d: $04
	add  b                                           ; $561e: $80
	ld   b, b                                        ; $561f: $40
	add  b                                           ; $5620: $80
	ld   a, [hl+]                                    ; $5621: $2a
	add  b                                           ; $5622: $80
	add  b                                           ; $5623: $80
	add  d                                           ; $5624: $82
	nop                                              ; $5625: $00
	inc  bc                                          ; $5626: $03
	ld   b, b                                        ; $5627: $40
	ret  nz                                          ; $5628: $c0

	nop                                              ; $5629: $00
	ret  nz                                          ; $562a: $c0

	add  b                                           ; $562b: $80
	ld   b, b                                        ; $562c: $40
	add  b                                           ; $562d: $80
	ld   h, h                                        ; $562e: $64
	add  b                                           ; $562f: $80
	ld   b, b                                        ; $5630: $40
	add  b                                           ; $5631: $80
	ld   c, c                                        ; $5632: $49
	nop                                              ; $5633: $00
	ld   b, b                                        ; $5634: $40
	adc  l                                           ; $5635: $8d
	nop                                              ; $5636: $00
	ld   [bc], a                                     ; $5637: $02
	dec  b                                           ; $5638: $05
	rlca                                             ; $5639: $07
	ld   [bc], a                                     ; $563a: $02
	add  b                                           ; $563b: $80
	ld   bc, $0085                                   ; $563c: $01 $85 $00
	add  b                                           ; $563f: $80
	ld   [bc], a                                     ; $5640: $02
	add  b                                           ; $5641: $80
	ld   [$2f10], sp                                 ; $5642: $08 $10 $2f
	jr   nc, @+$1a                                   ; $5645: $30 $18

	adc  b                                           ; $5647: $88
	xor  d                                           ; $5648: $aa
	and  $81                                         ; $5649: $e6 $81
	ld   [hl], e                                     ; $564b: $73
	dec  [hl]                                        ; $564c: $35
	inc  e                                           ; $564d: $1c
	add  hl, sp                                      ; $564e: $39
	cpl                                              ; $564f: $2f
	sbc  d                                           ; $5650: $9a
	sub  a                                           ; $5651: $97
	dec  l                                           ; $5652: $2d
	cpl                                              ; $5653: $2f
	cp   $86                                         ; $5654: $fe $86
	nop                                              ; $5656: $00
	rlca                                             ; $5657: $07
	add  b                                           ; $5658: $80
	jr   nz, @+$62                                   ; $5659: $20 $60

	db   $10                                         ; $565b: $10
	jr   nc, jr_079_56c6                             ; $565c: $30 $68

	ld   hl, sp+$70                                  ; $565e: $f8 $70
	adc  l                                           ; $5660: $8d
	nop                                              ; $5661: $00
	ld   b, $73                                      ; $5662: $06 $73
	adc  h                                           ; $5664: $8c
	add  [hl]                                        ; $5665: $86
	ld   b, [hl]                                     ; $5666: $46
	ld   sp, $1811                                   ; $5667: $31 $11 $18
	add  b                                           ; $566a: $80
	ld   [$0401], sp                                 ; $566b: $08 $01 $04
	inc  bc                                          ; $566e: $03
	add  b                                           ; $566f: $80
	ld   bc, $0081                                   ; $5670: $01 $81 $00
	ld   bc, $ca35                                   ; $5673: $01 $35 $ca
	add  b                                           ; $5676: $80
	ld   l, c                                        ; $5677: $69
	dec  c                                           ; $5678: $0d

jr_079_5679:
	dec  d                                           ; $5679: $15
	sub  l                                           ; $567a: $95
	xor  d                                           ; $567b: $aa
	ld   [$75c5], a                                  ; $567c: $ea $c5 $75
	push de                                          ; $567f: $d5
	cp   l                                           ; $5680: $bd
	ld   c, d                                        ; $5681: $4a
	sbc  $38                                         ; $5682: $de $38
	ld   [hl], a                                     ; $5684: $77
	ld   b, d                                        ; $5685: $42
	add  c                                           ; $5686: $81
	add  b                                           ; $5687: $80
	jr   z, jr_079_560a                              ; $5688: $28 $80

	ld   b, d                                        ; $568a: $42
	add  b                                           ; $568b: $80
	ld   [$5280], sp                                 ; $568c: $08 $80 $52
	add  b                                           ; $568f: $80
	jr   nz, @-$7e                                   ; $5690: $20 $80

	jp   z, $b480                                    ; $5692: $ca $80 $b4

	add  b                                           ; $5695: $80
	nop                                              ; $5696: $00
	add  b                                           ; $5697: $80
	ld   b, b                                        ; $5698: $40
	add  b                                           ; $5699: $80
	db   $10                                         ; $569a: $10
	add  b                                           ; $569b: $80
	and  b                                           ; $569c: $a0
	add  b                                           ; $569d: $80
	add  hl, bc                                      ; $569e: $09
	add  b                                           ; $569f: $80
	and  h                                           ; $56a0: $a4
	add  b                                           ; $56a1: $80
	ld   d, h                                        ; $56a2: $54
	add  b                                           ; $56a3: $80
	xor  d                                           ; $56a4: $aa
	add  b                                           ; $56a5: $80
	ld   bc, $0080                                   ; $56a6: $01 $80 $00
	add  b                                           ; $56a9: $80
	ld   bc, $0280                                   ; $56aa: $01 $80 $02
	add  b                                           ; $56ad: $80
	inc  b                                           ; $56ae: $04
	add  b                                           ; $56af: $80
	ld   de, $4480                                   ; $56b0: $11 $80 $44
	add  b                                           ; $56b3: $80
	adc  c                                           ; $56b4: $89
	add  b                                           ; $56b5: $80
	ld   [$410d], sp                                 ; $56b6: $08 $0d $41
	ld   b, e                                        ; $56b9: $43
	jr   z, jr_079_56eb                              ; $56ba: $28 $2f

	ld   d, l                                        ; $56bc: $55
	ld   e, a                                        ; $56bd: $5f
	and  a                                           ; $56be: $a7
	cp   a                                           ; $56bf: $bf
	ld   h, a                                        ; $56c0: $67
	ld   a, a                                        ; $56c1: $7f
	sub  e                                           ; $56c2: $93
	sbc  [hl]                                        ; $56c3: $9e
	ld   h, e                                        ; $56c4: $63
	ld   h, c                                        ; $56c5: $61

jr_079_56c6:
	add  e                                           ; $56c6: $83
	nop                                              ; $56c7: $00
	add  c                                           ; $56c8: $81
	add  b                                           ; $56c9: $80
	ld   [$c000], sp                                 ; $56ca: $08 $00 $c0
	nop                                              ; $56cd: $00
	ret  c                                           ; $56ce: $d8

	ld   d, d                                        ; $56cf: $52
	cp   $b1                                         ; $56d0: $fe $b1
	rst  $38                                         ; $56d2: $ff
	ld   a, d                                        ; $56d3: $7a
	add  a                                           ; $56d4: $87
	nop                                              ; $56d5: $00
	add  b                                           ; $56d6: $80
	ld   bc, $0480                                   ; $56d7: $01 $80 $04
	add  b                                           ; $56da: $80
	db   $10                                         ; $56db: $10
	add  b                                           ; $56dc: $80
	inc  b                                           ; $56dd: $04
	add  b                                           ; $56de: $80
	ld   de, $0080                                   ; $56df: $11 $80 $00
	add  b                                           ; $56e2: $80
	add  d                                           ; $56e3: $82
	add  b                                           ; $56e4: $80
	inc  d                                           ; $56e5: $14
	add  b                                           ; $56e6: $80
	nop                                              ; $56e7: $00
	add  b                                           ; $56e8: $80
	ld   a, [hl+]                                    ; $56e9: $2a
	add  b                                           ; $56ea: $80

jr_079_56eb:
	ld   b, b                                        ; $56eb: $40
	add  b                                           ; $56ec: $80
	ld   [de], a                                     ; $56ed: $12
	add  b                                           ; $56ee: $80
	ld   c, b                                        ; $56ef: $48
	add  b                                           ; $56f0: $80
	ld   [bc], a                                     ; $56f1: $02
	add  b                                           ; $56f2: $80
	ld   d, h                                        ; $56f3: $54
	add  b                                           ; $56f4: $80
	add  c                                           ; $56f5: $81
	add  b                                           ; $56f6: $80
	jr   z, jr_079_5679                              ; $56f7: $28 $80

	add  d                                           ; $56f9: $82
	add  b                                           ; $56fa: $80
	ld   d, l                                        ; $56fb: $55
	add  b                                           ; $56fc: $80
	add  b                                           ; $56fd: $80
	add  b                                           ; $56fe: $80
	inc  h                                           ; $56ff: $24
	add  b                                           ; $5700: $80
	sub  c                                           ; $5701: $91
	add  b                                           ; $5702: $80
	nop                                              ; $5703: $00
	add  b                                           ; $5704: $80
	ld   c, d                                        ; $5705: $4a
	add  b                                           ; $5706: $80
	jr   nz, @-$7e                                   ; $5707: $20 $80

	sub  l                                           ; $5709: $95
	add  b                                           ; $570a: $80
	jr   nz, @-$7e                                   ; $570b: $20 $80

	ld   b, b                                        ; $570d: $40
	add  b                                           ; $570e: $80
	ld   a, [bc]                                     ; $570f: $0a
	add  b                                           ; $5710: $80
	jr   nz, @-$7e                                   ; $5711: $20 $80

	ld   bc, $9480                                   ; $5713: $01 $80 $94
	add  b                                           ; $5716: $80
	ld   b, c                                        ; $5717: $41
	add  b                                           ; $5718: $80
	inc  d                                           ; $5719: $14
	add  b                                           ; $571a: $80
	ld   hl, $a280                                   ; $571b: $21 $80 $a2
	add  b                                           ; $571e: $80
	ld   a, [bc]                                     ; $571f: $0a
	add  b                                           ; $5720: $80
	ld   d, l                                        ; $5721: $55
	add  b                                           ; $5722: $80
	cpl                                              ; $5723: $2f
	add  b                                           ; $5724: $80
	ld   e, d                                        ; $5725: $5a
	add  b                                           ; $5726: $80
	ld   l, a                                        ; $5727: $6f
	add  b                                           ; $5728: $80
	cp   e                                           ; $5729: $bb
	add  b                                           ; $572a: $80
	cpl                                              ; $572b: $2f
	add  b                                           ; $572c: $80
	rst  $38                                         ; $572d: $ff

jr_079_572e:
	ld   de, $bfbe                                   ; $572e: $11 $be $bf
	db   $fc                                         ; $5731: $fc
	rst  $38                                         ; $5732: $ff
	ld   hl, sp-$01                                  ; $5733: $f8 $ff
	pop  af                                          ; $5735: $f1
	rst  $38                                         ; $5736: $ff
	pop  af                                          ; $5737: $f1
	rst  $38                                         ; $5738: $ff
	pop  af                                          ; $5739: $f1
	rst  $38                                         ; $573a: $ff
	db   $e3                                         ; $573b: $e3
	rst  $38                                         ; $573c: $ff
	add  h                                           ; $573d: $84
	db   $fc                                         ; $573e: $fc
	xor  [hl]                                        ; $573f: $ae
	cp   $80                                         ; $5740: $fe $80
	db   $f4                                         ; $5742: $f4
	db   $10                                         ; $5743: $10
	sbc  b                                           ; $5744: $98
	ld   hl, sp-$6c                                  ; $5745: $f8 $94
	db   $f4                                         ; $5747: $f4
	xor  b                                           ; $5748: $a8
	add  sp, $32                                     ; $5749: $e8 $32
	ldh  a, [c]                                      ; $574b: $f2
	jr   nz, jr_079_572e                             ; $574c: $20 $e0

	adc  [hl]                                        ; $574e: $8e
	ld   de, $0810                                   ; $574f: $11 $10 $08
	ld   [bc], a                                     ; $5752: $02
	ld   b, $03                                      ; $5753: $06 $03
	add  b                                           ; $5755: $80
	ld   bc, $0085                                   ; $5756: $01 $85 $00
	inc  b                                           ; $5759: $04
	rst  $38                                         ; $575a: $ff
	add  b                                           ; $575b: $80
	nop                                              ; $575c: $00
	ret  nz                                          ; $575d: $c0

	ld   d, b                                        ; $575e: $50
	add  b                                           ; $575f: $80
	jr   nc, jr_079_576c                             ; $5760: $30 $0a

	jr   jr_079_57a6                                 ; $5762: $18 $42

	adc  $77                                         ; $5764: $ce $77
	inc  sp                                          ; $5766: $33
	add  hl, hl                                      ; $5767: $29
	add  hl, de                                      ; $5768: $19
	ld   c, $06                                      ; $5769: $0e $06
	dec  l                                           ; $576b: $2d

jr_079_576c:
	push de                                          ; $576c: $d5
	add  b                                           ; $576d: $80
	ld   a, [$ff80]                                  ; $576e: $fa $80 $ff
	add  b                                           ; $5771: $80
	cp   $80                                         ; $5772: $fe $80
	db   $fd                                         ; $5774: $fd
	add  b                                           ; $5775: $80
	rst  $38                                         ; $5776: $ff
	dec  b                                           ; $5777: $05
	ld   a, a                                        ; $5778: $7f
	rst  $38                                         ; $5779: $ff
	rra                                              ; $577a: $1f
	rst  $38                                         ; $577b: $ff
	ld   b, d                                        ; $577c: $42
	ld   [hl+], a                                    ; $577d: $22
	add  b                                           ; $577e: $80
	dec  d                                           ; $577f: $15
	add  b                                           ; $5780: $80
	ld   c, d                                        ; $5781: $4a
	add  b                                           ; $5782: $80
	xor  e                                           ; $5783: $ab
	add  b                                           ; $5784: $80
	ld   d, l                                        ; $5785: $55
	add  b                                           ; $5786: $80
	xor  a                                           ; $5787: $af
	add  b                                           ; $5788: $80
	ld   [$5f80], a                                  ; $5789: $ea $80 $5f
	add  b                                           ; $578c: $80
	sbc  c                                           ; $578d: $99
	add  b                                           ; $578e: $80
	ld   h, h                                        ; $578f: $64
	add  b                                           ; $5790: $80
	jp   c, $b080                                    ; $5791: $da $80 $b0

	add  b                                           ; $5794: $80
	ld   d, l                                        ; $5795: $55
	add  b                                           ; $5796: $80
	ld   [$f580], a                                  ; $5797: $ea $80 $f5
	add  b                                           ; $579a: $80
	ld   a, [$6009]                                  ; $579b: $fa $09 $60
	rst  $38                                         ; $579e: $ff
	ld   l, $ff                                      ; $579f: $2e $ff
	ld   c, h                                        ; $57a1: $4c
	ccf                                              ; $57a2: $3f
	dec  l                                           ; $57a3: $2d
	rra                                              ; $57a4: $1f
	ld   b, e                                        ; $57a5: $43

jr_079_57a6:
	ld   c, a                                        ; $57a6: $4f
	add  b                                           ; $57a7: $80
	and  e                                           ; $57a8: $a3
	ld   bc, $090a                                   ; $57a9: $01 $0a $09
	add  b                                           ; $57ac: $80
	ld   [hl], l                                     ; $57ad: $75
	inc  c                                           ; $57ae: $0c
	ld   b, d                                        ; $57af: $42
	jp   nz, $e8a8                                   ; $57b0: $c2 $a8 $e8

	jp   nz, $f4f2                                   ; $57b3: $c2 $f2 $f4

	db   $fc                                         ; $57b6: $fc
	di                                               ; $57b7: $f3
	ei                                               ; $57b8: $fb
	ld   hl, sp-$01                                  ; $57b9: $f8 $ff
	or   a                                           ; $57bb: $b7
	add  b                                           ; $57bc: $80
	rst  JumpTable                                         ; $57bd: $df
	ld   [bc], a                                     ; $57be: $02
	ld   a, a                                        ; $57bf: $7f
	xor  d                                           ; $57c0: $aa
	sub  l                                           ; $57c1: $95
	add  b                                           ; $57c2: $80
	ld   a, [bc]                                     ; $57c3: $0a
	add  b                                           ; $57c4: $80
	or   c                                           ; $57c5: $b1
	add  b                                           ; $57c6: $80
	and  a                                           ; $57c7: $a7
	add  b                                           ; $57c8: $80
	ld   e, b                                        ; $57c9: $58

jr_079_57ca:
	add  b                                           ; $57ca: $80
	xor  a                                           ; $57cb: $af
	add  b                                           ; $57cc: $80
	xor  d                                           ; $57cd: $aa
	inc  bc                                          ; $57ce: $03
	rla                                              ; $57cf: $17
	rst  $30                                         ; $57d0: $f7
	or   h                                           ; $57d1: $b4
	ld   d, h                                        ; $57d2: $54
	add  b                                           ; $57d3: $80
	xor  d                                           ; $57d4: $aa
	add  d                                           ; $57d5: $82
	ld   d, l                                        ; $57d6: $55
	add  b                                           ; $57d7: $80
	cp   e                                           ; $57d8: $bb
	add  b                                           ; $57d9: $80
	db   $dd                                         ; $57da: $dd
	add  b                                           ; $57db: $80
	halt                                             ; $57dc: $76
	add  b                                           ; $57dd: $80
	db   $ed                                         ; $57de: $ed
	add  b                                           ; $57df: $80
	adc  l                                           ; $57e0: $8d
	add  b                                           ; $57e1: $80
	ldh  [c], a                                      ; $57e2: $e2
	add  b                                           ; $57e3: $80
	dec  e                                           ; $57e4: $1d
	add  b                                           ; $57e5: $80
	ld   [hl], c                                     ; $57e6: $71
	add  b                                           ; $57e7: $80
	sbc  [hl]                                        ; $57e8: $9e
	add  b                                           ; $57e9: $80
	push hl                                          ; $57ea: $e5
	add  b                                           ; $57eb: $80
	cp   [hl]                                        ; $57ec: $be
	add  b                                           ; $57ed: $80
	push af                                          ; $57ee: $f5
	add  b                                           ; $57ef: $80
	ld   c, d                                        ; $57f0: $4a
	add  b                                           ; $57f1: $80
	and  h                                           ; $57f2: $a4
	add  b                                           ; $57f3: $80
	dec  d                                           ; $57f4: $15
	add  b                                           ; $57f5: $80
	ld   l, c                                        ; $57f6: $69
	add  b                                           ; $57f7: $80
	sub  [hl]                                        ; $57f8: $96
	add  b                                           ; $57f9: $80
	db   $d3                                         ; $57fa: $d3
	add  b                                           ; $57fb: $80
	cp   l                                           ; $57fc: $bd
	add  b                                           ; $57fd: $80
	ld   l, e                                        ; $57fe: $6b
	add  b                                           ; $57ff: $80
	rst  $38                                         ; $5800: $ff
	add  b                                           ; $5801: $80

Call_079_5802:
	ccf                                              ; $5802: $3f
	add  b                                           ; $5803: $80
	xor  a                                           ; $5804: $af
	add  b                                           ; $5805: $80
	ld   e, a                                        ; $5806: $5f
	add  hl, de                                      ; $5807: $19
	cp   $ff                                         ; $5808: $fe $ff
	ld   a, h                                        ; $580a: $7c
	ld   a, a                                        ; $580b: $7f
	ld   hl, sp-$01                                  ; $580c: $f8 $ff
	pop  af                                          ; $580e: $f1
	rst  $38                                         ; $580f: $ff
	inc  e                                           ; $5810: $1c
	rla                                              ; $5811: $17
	ld   l, $2f                                      ; $5812: $2e $2f
	ld   e, h                                        ; $5814: $5c
	ld   e, [hl]                                     ; $5815: $5e
	cp   e                                           ; $5816: $bb
	cp   a                                           ; $5817: $bf
	ld   [hl], a                                     ; $5818: $77
	ld   a, a                                        ; $5819: $7f
	rst  $20                                         ; $581a: $e7
	rst  $38                                         ; $581b: $ff
	add  [hl]                                        ; $581c: $86
	cp   $08                                         ; $581d: $fe $08
	ld   hl, sp-$48                                  ; $581f: $f8 $b8
	ret  c                                           ; $5821: $d8

	add  b                                           ; $5822: $80
	cp   b                                           ; $5823: $b8
	add  b                                           ; $5824: $80
	ldh  a, [$80]                                    ; $5825: $f0 $80
	ret  nz                                          ; $5827: $c0

	add  b                                           ; $5828: $80
	add  b                                           ; $5829: $80
	add  l                                           ; $582a: $85
	nop                                              ; $582b: $00
	ld   [bc], a                                     ; $582c: $02
	inc  bc                                          ; $582d: $03
	ld   [bc], a                                     ; $582e: $02
	ld   bc, $008a                                   ; $582f: $01 $8a $00
	db   $10                                         ; $5832: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5833: $cf
	jr   nc, jr_079_57ca                             ; $5834: $30 $94

	sbc  h                                           ; $5836: $9c
	ldh  [c], a                                      ; $5837: $e2
	ld   l, [hl]                                     ; $5838: $6e
	ld   d, [hl]                                     ; $5839: $56
	inc  sp                                          ; $583a: $33
	inc  c                                           ; $583b: $0c
	dec  e                                           ; $583c: $1d
	ld   c, $06                                      ; $583d: $0e $06
	dec  b                                           ; $583f: $05
	inc  bc                                          ; $5840: $03
	nop                                              ; $5841: $00
	ld   bc, $8500                                   ; $5842: $01 $00 $85
	rst  $38                                         ; $5845: $ff
	ld   c, c                                        ; $5846: $49
	ccf                                              ; $5847: $3f
	rst  $38                                         ; $5848: $ff
	rst  JumpTable                                         ; $5849: $df
	rst  $38                                         ; $584a: $ff
	daa                                              ; $584b: $27
	rst  $38                                         ; $584c: $ff
	ld   e, e                                        ; $584d: $5b
	rst  $38                                         ; $584e: $ff
	ld   [hl], d                                     ; $584f: $72
	xor  $f2                                         ; $5850: $ee $f2
	rst  $38                                         ; $5852: $ff
	db   $fd                                         ; $5853: $fd
	rst  $38                                         ; $5854: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5855: $cf
	rst  $38                                         ; $5856: $ff
	rst  JumpTable                                         ; $5857: $df
	rst  $38                                         ; $5858: $ff
	ldh  [c], a                                      ; $5859: $e2
	rst  $38                                         ; $585a: $ff
	ei                                               ; $585b: $fb
	rst  $38                                         ; $585c: $ff
	ld   hl, sp-$01                                  ; $585d: $f8 $ff
	sub  h                                           ; $585f: $94
	sub  l                                           ; $5860: $95
	ld   d, l                                        ; $5861: $55
	push de                                          ; $5862: $d5
	ld   a, d                                        ; $5863: $7a
	ei                                               ; $5864: $fb
	rrca                                             ; $5865: $0f
	jp   hl                                          ; $5866: $e9


	call c, $f5a7                                    ; $5867: $dc $a7 $f5
	sbc  [hl]                                        ; $586a: $9e
	ld   d, c                                        ; $586b: $51
	ld   a, a                                        ; $586c: $7f
	cp   h                                           ; $586d: $bc
	sbc  d                                           ; $586e: $9a
	cp   a                                           ; $586f: $bf
	ld   a, a                                        ; $5870: $7f
	add  a                                           ; $5871: $87
	cp   a                                           ; $5872: $bf
	and  [hl]                                        ; $5873: $a6
	ld   h, a                                        ; $5874: $67
	ld   a, d                                        ; $5875: $7a
	db   $dd                                         ; $5876: $dd
	ld   [hl], $ef                                   ; $5877: $36 $ef
	ld   e, a                                        ; $5879: $5f
	cp   e                                           ; $587a: $bb
	sub  a                                           ; $587b: $97
	dec  a                                           ; $587c: $3d
	ld   [hl], e                                     ; $587d: $73
	ld   e, [hl]                                     ; $587e: $5e
	pop  af                                          ; $587f: $f1
	ld   a, [$ff93]                                  ; $5880: $fa $93 $ff
	cp   h                                           ; $5883: $bc
	cp   $ba                                         ; $5884: $fe $ba
	rst  $38                                         ; $5886: $ff
	xor  e                                           ; $5887: $ab
	rst  $38                                         ; $5888: $ff
	ld   a, h                                        ; $5889: $7c
	rst  $38                                         ; $588a: $ff
	xor  e                                           ; $588b: $ab
	rst  $38                                         ; $588c: $ff
	ld   b, a                                        ; $588d: $47
	rst  $38                                         ; $588e: $ff
	ccf                                              ; $588f: $3f
	cp   a                                           ; $5890: $bf
	add  b                                           ; $5891: $80
	rst  $38                                         ; $5892: $ff
	add  b                                           ; $5893: $80
	rst  $28                                         ; $5894: $ef
	adc  b                                           ; $5895: $88
	rst  $38                                         ; $5896: $ff
	add  b                                           ; $5897: $80
	rst  JumpTable                                         ; $5898: $df
	add  b                                           ; $5899: $80
	ld   a, a                                        ; $589a: $7f
	add  [hl]                                        ; $589b: $86
	rst  $38                                         ; $589c: $ff
	dec  b                                           ; $589d: $05
	cp   $ff                                         ; $589e: $fe $ff
	db   $fc                                         ; $58a0: $fc
	rst  $38                                         ; $58a1: $ff
	db   $dd                                         ; $58a2: $dd
	rst  JumpTable                                         ; $58a3: $df
	add  d                                           ; $58a4: $82
	rst  $38                                         ; $58a5: $ff
	rra                                              ; $58a6: $1f
	ld   a, [$d1ff]                                  ; $58a7: $fa $ff $d1
	rst  $38                                         ; $58aa: $ff
	adc  e                                           ; $58ab: $8b
	rst  $38                                         ; $58ac: $ff
	rst  JumpTable                                         ; $58ad: $df
	rst  $38                                         ; $58ae: $ff
	ld   a, a                                        ; $58af: $7f
	rst  $38                                         ; $58b0: $ff
	jp   nc, Jump_079_512f                           ; $58b1: $d2 $2f $51

	ld   e, a                                        ; $58b4: $5f
	and  e                                           ; $58b5: $a3
	cp   a                                           ; $58b6: $bf
	adc  a                                           ; $58b7: $8f
	cp   $1a                                         ; $58b8: $fe $1a
	db   $fc                                         ; $58ba: $fc
	ld   [hl], b                                     ; $58bb: $70
	ld   hl, sp-$30                                  ; $58bc: $f8 $d0
	ldh  [$80], a                                    ; $58be: $e0 $80
	ret  nz                                          ; $58c0: $c0

	or   b                                           ; $58c1: $b0
	ldh  a, [$80]                                    ; $58c2: $f0 $80
	ret  nz                                          ; $58c4: $c0

	nop                                              ; $58c5: $00
	add  b                                           ; $58c6: $80
	sbc  b                                           ; $58c7: $98
	nop                                              ; $58c8: $00
	nop                                              ; $58c9: $00
	rst  $38                                         ; $58ca: $ff
	call $e700                                       ; $58cb: $cd $00 $e7
	ld   bc, $00b6                                   ; $58ce: $01 $b6 $00
	ld   [$dcbf], sp                                 ; $58d1: $08 $bf $dc
	ld   c, h                                        ; $58d4: $4c
	ld   [hl], $12                                   ; $58d5: $36 $12
	inc  c                                           ; $58d7: $0c
	dec  b                                           ; $58d8: $05
	inc  bc                                          ; $58d9: $03
	ld   bc, $0085                                   ; $58da: $01 $85 $00
	inc  bc                                          ; $58dd: $03
	rst  $38                                         ; $58de: $ff
	nop                                              ; $58df: $00
	jr   jr_079_5901                                 ; $58e0: $18 $1f

	add  b                                           ; $58e2: $80
	cp   [hl]                                        ; $58e3: $be
	add  b                                           ; $58e4: $80
	ld   a, $00                                      ; $58e5: $3e $00
	ld   hl, sp-$7b                                  ; $58e7: $f8 $85
	nop                                              ; $58e9: $00
	dec  b                                           ; $58ea: $05
	ldh  a, [$2f]                                    ; $58eb: $f0 $2f
	push hl                                          ; $58ed: $e5
	dec  b                                           ; $58ee: $05
	jr   nz, jr_079_58f1                             ; $58ef: $20 $00

jr_079_58f1:
	add  b                                           ; $58f1: $80
	rrca                                             ; $58f2: $0f
	nop                                              ; $58f3: $00
	rra                                              ; $58f4: $1f
	add  [hl]                                        ; $58f5: $86
	nop                                              ; $58f6: $00
	nop                                              ; $58f7: $00
	rst  $38                                         ; $58f8: $ff
	add  b                                           ; $58f9: $80
	ld   d, l                                        ; $58fa: $55
	add  b                                           ; $58fb: $80
	nop                                              ; $58fc: $00
	add  c                                           ; $58fd: $81
	rst  $38                                         ; $58fe: $ff
	add  [hl]                                        ; $58ff: $86
	nop                                              ; $5900: $00

jr_079_5901:
	nop                                              ; $5901: $00
	rst  $38                                         ; $5902: $ff
	add  b                                           ; $5903: $80
	ld   d, l                                        ; $5904: $55
	add  b                                           ; $5905: $80
	nop                                              ; $5906: $00
	add  c                                           ; $5907: $81
	rst  $38                                         ; $5908: $ff
	add  l                                           ; $5909: $85
	nop                                              ; $590a: $00
	ld   bc, $f708                                   ; $590b: $01 $08 $f7
	add  b                                           ; $590e: $80
	ld   d, c                                        ; $590f: $51
	ld   bc, $0c04                                   ; $5910: $01 $04 $0c
	add  b                                           ; $5913: $80
	add  sp, $00                                     ; $5914: $e8 $00
	rst  $30                                         ; $5916: $f7
	add  l                                           ; $5917: $85
	nop                                              ; $5918: $00
	ld   bc, $cb3b                                   ; $5919: $01 $3b $cb
	add  b                                           ; $591c: $80
	ld   e, a                                        ; $591d: $5f
	ld   bc, $030b                                   ; $591e: $01 $0b $03
	add  b                                           ; $5921: $80
	db   $fd                                         ; $5922: $fd

jr_079_5923:
	nop                                              ; $5923: $00
	ld   hl, sp-$7b                                  ; $5924: $f8 $85
	nop                                              ; $5926: $00
	inc  bc                                          ; $5927: $03
	ld   a, h                                        ; $5928: $7c
	add  e                                           ; $5929: $83
	ld   c, d                                        ; $592a: $4a
	jp   z, $c080                                    ; $592b: $ca $80 $c0

	add  b                                           ; $592e: $80
	rst  JumpTable                                         ; $592f: $df
	nop                                              ; $5930: $00
	ld   a, a                                        ; $5931: $7f
	add  l                                           ; $5932: $85
	nop                                              ; $5933: $00
	ld   bc, $ef10                                   ; $5934: $01 $10 $ef
	add  b                                           ; $5937: $80
	adc  d                                           ; $5938: $8a
	ld   bc, $3020                                   ; $5939: $01 $20 $30
	add  b                                           ; $593c: $80
	rla                                              ; $593d: $17
	nop                                              ; $593e: $00
	rst  $28                                         ; $593f: $ef
	add  [hl]                                        ; $5940: $86
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	rst  $38                                         ; $5943: $ff
	add  b                                           ; $5944: $80
	xor  d                                           ; $5945: $aa
	add  b                                           ; $5946: $80
	nop                                              ; $5947: $00
	add  c                                           ; $5948: $81
	rst  $38                                         ; $5949: $ff
	add  [hl]                                        ; $594a: $86
	nop                                              ; $594b: $00
	nop                                              ; $594c: $00
	rst  $38                                         ; $594d: $ff
	add  b                                           ; $594e: $80
	xor  d                                           ; $594f: $aa
	add  b                                           ; $5950: $80
	nop                                              ; $5951: $00
	add  c                                           ; $5952: $81
	rst  $38                                         ; $5953: $ff
	add  [hl]                                        ; $5954: $86
	nop                                              ; $5955: $00
	nop                                              ; $5956: $00
	rst  $38                                         ; $5957: $ff
	add  b                                           ; $5958: $80
	xor  d                                           ; $5959: $aa
	add  b                                           ; $595a: $80
	nop                                              ; $595b: $00
	add  c                                           ; $595c: $81
	rst  $38                                         ; $595d: $ff
	add  l                                           ; $595e: $85
	nop                                              ; $595f: $00
	ld   [$7f83], sp                                 ; $5960: $08 $83 $7f
	ccf                                              ; $5963: $3f
	inc  a                                           ; $5964: $3c
	jr   nc, jr_079_599a                             ; $5965: $30 $33

	add  e                                           ; $5967: $83
	adc  [hl]                                        ; $5968: $8e
	pop  af                                          ; $5969: $f1
	xor  l                                           ; $596a: $ad
	nop                                              ; $596b: $00
	add  d                                           ; $596c: $82
	inc  bc                                          ; $596d: $03
	nop                                              ; $596e: $00
	rlca                                             ; $596f: $07
	add  e                                           ; $5970: $83
	ld   b, $00                                      ; $5971: $06 $00
	ld   a, $83                                      ; $5973: $3e $83
	jr   nz, jr_079_5982                             ; $5975: $20 $0b

	and  b                                           ; $5977: $a0
	ld   b, b                                        ; $5978: $40
	jr   c, @+$41                                    ; $5979: $38 $3f

	ld   [hl], a                                     ; $597b: $77
	ld   a, a                                        ; $597c: $7f
	rst  $30                                         ; $597d: $f7
	rst  $38                                         ; $597e: $ff
	rst  $30                                         ; $597f: $f7
	rst  $38                                         ; $5980: $ff
	rrca                                             ; $5981: $0f

jr_079_5982:
	nop                                              ; $5982: $00
	add  b                                           ; $5983: $80
	ld   a, a                                        ; $5984: $7f
	add  b                                           ; $5985: $80
	nop                                              ; $5986: $00
	dec  b                                           ; $5987: $05
	jr   nz, jr_079_598a                             ; $5988: $20 $00

jr_079_598a:
	daa                                              ; $598a: $27
	add  [hl]                                        ; $598b: $86
	ld   h, [hl]                                     ; $598c: $66
	ld   d, $81                                      ; $598d: $16 $81
	ld   b, $04                                      ; $598f: $06 $04
	dec  b                                           ; $5991: $05
	di                                               ; $5992: $f3
	nop                                              ; $5993: $00
	rst  $20                                         ; $5994: $e7
	and  $80                                         ; $5995: $e6 $80
	ld   bc, $0080                                   ; $5997: $01 $80 $00

jr_079_599a:
	ld   [bc], a                                     ; $599a: $02
	add  b                                           ; $599b: $80
	rst  $38                                         ; $599c: $ff
	add  b                                           ; $599d: $80
	add  b                                           ; $599e: $80
	ld   h, b                                        ; $599f: $60
	add  b                                           ; $59a0: $80
	jr   nc, jr_079_5923                             ; $59a1: $30 $80

	sub  b                                           ; $59a3: $90
	dec  b                                           ; $59a4: $05
	ld   [hl], b                                     ; $59a5: $70
	ldh  a, [rAUD1SWEEP]                             ; $59a6: $f0 $10
	ld   [hl], b                                     ; $59a8: $70
	adc  b                                           ; $59a9: $88
	sub  a                                           ; $59aa: $97
	add  b                                           ; $59ab: $80
	nop                                              ; $59ac: $00
	nop                                              ; $59ad: $00
	rst  $38                                         ; $59ae: $ff
	add  d                                           ; $59af: $82
	nop                                              ; $59b0: $00
	ld   c, $01                                      ; $59b1: $0e $01
	nop                                              ; $59b3: $00
	ld   [bc], a                                     ; $59b4: $02
	nop                                              ; $59b5: $00
	ld   [bc], a                                     ; $59b6: $02
	nop                                              ; $59b7: $00
	ld   bc, $1800                                   ; $59b8: $01 $00 $18
	rst  $20                                         ; $59bb: $e7
	db   $d3                                         ; $59bc: $d3
	jp   $81b1                                       ; $59bd: $c3 $b1 $81


	ld   h, b                                        ; $59c0: $60
	add  c                                           ; $59c1: $81
	nop                                              ; $59c2: $00
	rlca                                             ; $59c3: $07
	ld   b, b                                        ; $59c4: $40
	nop                                              ; $59c5: $00
	add  c                                           ; $59c6: $81
	rst  $38                                         ; $59c7: $ff
	add  c                                           ; $59c8: $81
	rst  $38                                         ; $59c9: $ff
	ld   [bc], a                                     ; $59ca: $02
	dec  b                                           ; $59cb: $05
	add  b                                           ; $59cc: $80
	ld   a, a                                        ; $59cd: $7f
	inc  bc                                          ; $59ce: $03
	rlca                                             ; $59cf: $07
	inc  bc                                          ; $59d0: $03
	ld   a, $3d                                      ; $59d1: $3e $3d
	add  b                                           ; $59d3: $80
	sbc  [hl]                                        ; $59d4: $9e
	add  b                                           ; $59d5: $80
	ret  nz                                          ; $59d6: $c0

	add  b                                           ; $59d7: $80
	rra                                              ; $59d8: $1f
	add  b                                           ; $59d9: $80
	ld   hl, sp+$01                                  ; $59da: $f8 $01
	ld   b, b                                        ; $59dc: $40
	ret  nz                                          ; $59dd: $c0

	add  b                                           ; $59de: $80
	sbc  $01                                         ; $59df: $de $01
	nop                                              ; $59e1: $00
	add  b                                           ; $59e2: $80
	add  b                                           ; $59e3: $80
	ld   a, $80                                      ; $59e4: $3e $80
	ld   a, l                                        ; $59e6: $7d
	add  b                                           ; $59e7: $80
	inc  bc                                          ; $59e8: $03
	add  b                                           ; $59e9: $80
	ld   hl, sp-$80                                  ; $59ea: $f8 $80
	rrca                                             ; $59ec: $0f
	add  b                                           ; $59ed: $80
	rst  $20                                         ; $59ee: $e7
	inc  b                                           ; $59ef: $04

jr_079_59f0:
	set  0, e                                        ; $59f0: $cb $c3
	adc  l                                           ; $59f2: $8d
	add  c                                           ; $59f3: $81
	ld   b, $81                                      ; $59f4: $06 $81
	nop                                              ; $59f6: $00
	dec  b                                           ; $59f7: $05
	ld   [bc], a                                     ; $59f8: $02
	nop                                              ; $59f9: $00
	add  c                                           ; $59fa: $81
	rst  $38                                         ; $59fb: $ff
	add  c                                           ; $59fc: $81
	rst  $38                                         ; $59fd: $ff
	add  c                                           ; $59fe: $81
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	rst  $38                                         ; $5a01: $ff
	add  d                                           ; $5a02: $82
	nop                                              ; $5a03: $00
	ld   [$0080], sp                                 ; $5a04: $08 $80 $00
	ld   b, c                                        ; $5a07: $41
	nop                                              ; $5a08: $00
	ld   b, d                                        ; $5a09: $42
	nop                                              ; $5a0a: $00
	add  e                                           ; $5a0b: $83
	nop                                              ; $5a0c: $00
	rst  $38                                         ; $5a0d: $ff
	add  b                                           ; $5a0e: $80
	nop                                              ; $5a0f: $00
	dec  c                                           ; $5a10: $0d
	rst  $38                                         ; $5a11: $ff
	ld   a, a                                        ; $5a12: $7f
	ld   bc, $1c81                                   ; $5a13: $01 $81 $1c
	inc  d                                           ; $5a16: $14
	ld   [hl], $2a                                   ; $5a17: $36 $2a
	ld   [hl+], a                                    ; $5a19: $22
	ld   a, [hl+]                                    ; $5a1a: $2a
	ld   [hl+], a                                    ; $5a1b: $22
	ld   [hl], $14                                   ; $5a1c: $36 $14
	inc  e                                           ; $5a1e: $1c
	add  b                                           ; $5a1f: $80
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	rst  $38                                         ; $5a22: $ff
	add  d                                           ; $5a23: $82
	nop                                              ; $5a24: $00
	add  b                                           ; $5a25: $80
	ret  nz                                          ; $5a26: $c0

	ld   a, [bc]                                     ; $5a27: $0a
	ldh  [$60], a                                    ; $5a28: $e0 $60
	ld   [hl], b                                     ; $5a2a: $70
	jr   nc, jr_079_5a2d                             ; $5a2b: $30 $00

jr_079_5a2d:
	ret  nz                                          ; $5a2d: $c0

	ld   a, [$6436]                                  ; $5a2e: $fa $36 $64
	ret  c                                           ; $5a31: $d8

	ld   [hl], b                                     ; $5a32: $70
	adc  d                                           ; $5a33: $8a
	ld   b, b                                        ; $5a34: $40
	xor  c                                           ; $5a35: $a9
	nop                                              ; $5a36: $00
	add  d                                           ; $5a37: $82

jr_079_5a38:
	ld   bc, $0700                                   ; $5a38: $01 $00 $07
	add  c                                           ; $5a3b: $81
	jr   jr_079_5a4a                                 ; $5a3c: $18 $0c

	jr   nz, jr_079_5a40                             ; $5a3e: $20 $00

jr_079_5a40:
	ld   a, b                                        ; $5a40: $78
	ccf                                              ; $5a41: $3f
	rlca                                             ; $5a42: $07
	nop                                              ; $5a43: $00
	or   b                                           ; $5a44: $b0
	ccf                                              ; $5a45: $3f
	ld   l, e                                        ; $5a46: $6b
	ld   a, e                                        ; $5a47: $7b
	ld   e, d                                        ; $5a48: $5a
	ld   a, d                                        ; $5a49: $7a

jr_079_5a4a:
	ccf                                              ; $5a4a: $3f
	add  e                                           ; $5a4b: $83
	nop                                              ; $5a4c: $00
	dec  bc                                          ; $5a4d: $0b
	ld   b, b                                        ; $5a4e: $40
	ret  nz                                          ; $5a4f: $c0

	add  b                                           ; $5a50: $80
	nop                                              ; $5a51: $00
	ld   b, b                                        ; $5a52: $40
	ret  nz                                          ; $5a53: $c0

	jr   nz, jr_079_5ab6                             ; $5a54: $20 $60

	ldh  [$c0], a                                    ; $5a56: $e0 $c0
	xor  $0e                                         ; $5a58: $ee $0e
	add  b                                           ; $5a5a: $80
	rrca                                             ; $5a5b: $0f
	add  b                                           ; $5a5c: $80
	dec  bc                                          ; $5a5d: $0b
	adc  b                                           ; $5a5e: $88
	add  hl, bc                                      ; $5a5f: $09
	nop                                              ; $5a60: $00
	rlca                                             ; $5a61: $07
	add  b                                           ; $5a62: $80
	ld   h, b                                        ; $5a63: $60
	add  b                                           ; $5a64: $80
	sub  b                                           ; $5a65: $90
	add  b                                           ; $5a66: $80
	ldh  [$80], a                                    ; $5a67: $e0 $80
	ld   [hl], b                                     ; $5a69: $70
	add  b                                           ; $5a6a: $80
	jr   nc, jr_079_59f0                             ; $5a6b: $30 $83

	jr   nz, jr_079_5a6f                             ; $5a6d: $20 $00

jr_079_5a6f:
	ret  c                                           ; $5a6f: $d8

	adc  l                                           ; $5a70: $8d
	nop                                              ; $5a71: $00
	ld   [bc], a                                     ; $5a72: $02
	ld   [$7bd9], sp                                 ; $5a73: $08 $d9 $7b
	add  c                                           ; $5a76: $81
	ei                                               ; $5a77: $fb
	add  b                                           ; $5a78: $80
	db   $db                                         ; $5a79: $db
	nop                                              ; $5a7a: $00
	sbc  e                                           ; $5a7b: $9b
	add  e                                           ; $5a7c: $83
	db   $db                                         ; $5a7d: $db
	inc  b                                           ; $5a7e: $04
	ld   e, e                                        ; $5a7f: $5b
	db   $db                                         ; $5a80: $db
	and  e                                           ; $5a81: $a3
	ld   [hl], e                                     ; $5a82: $73
	ld   [hl], d                                     ; $5a83: $72
	add  c                                           ; $5a84: $81
	ld   [hl], e                                     ; $5a85: $73
	add  [hl]                                        ; $5a86: $86
	di                                               ; $5a87: $f3
	ld   [bc], a                                     ; $5a88: $02
	ldh  a, [c]                                      ; $5a89: $f2
	di                                               ; $5a8a: $f3
	sub  [hl]                                        ; $5a8b: $96
	add  c                                           ; $5a8c: $81
	rst  $30                                         ; $5a8d: $f7
	add  h                                           ; $5a8e: $84
	or   e                                           ; $5a8f: $b3
	add  b                                           ; $5a90: $80
	ld   [hl-], a                                    ; $5a91: $32
	add  b                                           ; $5a92: $80
	or   d                                           ; $5a93: $b2
	add  b                                           ; $5a94: $80
	cp   d                                           ; $5a95: $ba
	add  hl, bc                                      ; $5a96: $09
	and  [hl]                                        ; $5a97: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a98: $cf
	db   $ed                                         ; $5a99: $ed
	push hl                                          ; $5a9a: $e5
	add  $c7                                         ; $5a9b: $c6 $c7
	push hl                                          ; $5a9d: $e5
	db   $ed                                         ; $5a9e: $ed
	adc  $8f                                         ; $5a9f: $ce $8f
	add  b                                           ; $5aa1: $80
	xor  l                                           ; $5aa2: $ad
	add  b                                           ; $5aa3: $80
	adc  a                                           ; $5aa4: $8f
	add  b                                           ; $5aa5: $80
	xor  l                                           ; $5aa6: $ad
	nop                                              ; $5aa7: $00
	add  hl, bc                                      ; $5aa8: $09
	adc  c                                           ; $5aa9: $89
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
	ld   bc, $0080                                   ; $5aac: $01 $80 $00
	ld   [bc], a                                     ; $5aaf: $02
	ld   bc, $00ff                                   ; $5ab0: $01 $ff $00
	add  b                                           ; $5ab3: $80
	inc  a                                           ; $5ab4: $3c
	add  b                                           ; $5ab5: $80

jr_079_5ab6:
	jr   nz, jr_079_5a38                             ; $5ab6: $20 $80

	jr   z, jr_079_5aba                              ; $5ab8: $28 $00

jr_079_5aba:
	nop                                              ; $5aba: $00
	add  b                                           ; $5abb: $80
	ld   [$0005], sp                                 ; $5abc: $08 $05 $00
	ld   h, $3e                                      ; $5abf: $26 $3e
	jr   jr_079_5ac3                                 ; $5ac1: $18 $00

jr_079_5ac3:
	ccf                                              ; $5ac3: $3f
	adc  c                                           ; $5ac4: $89
	ret  nz                                          ; $5ac5: $c0

	inc  b                                           ; $5ac6: $04
	ldh  [$60], a                                    ; $5ac7: $e0 $60
	ld   b, b                                        ; $5ac9: $40
	ret  nz                                          ; $5aca: $c0

	nop                                              ; $5acb: $00
	adc  [hl]                                        ; $5acc: $8e
	ld   b, b                                        ; $5acd: $40
	sbc  l                                           ; $5ace: $9d
	nop                                              ; $5acf: $00
	ld   bc, $0203                                   ; $5ad0: $01 $03 $02
	add  l                                           ; $5ad3: $85
	ld   b, $00                                      ; $5ad4: $06 $00
	inc  b                                           ; $5ad6: $04
	add  h                                           ; $5ad7: $84
	dec  b                                           ; $5ad8: $05
	inc  b                                           ; $5ad9: $04
	cp   e                                           ; $5ada: $bb
	ld   a, d                                        ; $5adb: $7a
	cp   d                                           ; $5adc: $ba
	ld   a, [$81d7]                                  ; $5add: $fa $d7 $81
	rst  $38                                         ; $5ae0: $ff
	ld   [bc], a                                     ; $5ae1: $02
	ld   a, [hl+]                                    ; $5ae2: $2a
	ld   a, a                                        ; $5ae3: $7f
	dec  hl                                          ; $5ae4: $2b
	add  c                                           ; $5ae5: $81
	ld   a, [hl]                                     ; $5ae6: $7e
	add  b                                           ; $5ae7: $80
	ld   d, a                                        ; $5ae8: $57
	ld   bc, $4075                                   ; $5ae9: $01 $75 $40
	add  b                                           ; $5aec: $80
	ret  nc                                          ; $5aed: $d0

	add  b                                           ; $5aee: $80
	ldh  a, [rTIMA]                                  ; $5aef: $f0 $05
	ld   [hl], b                                     ; $5af1: $70
	ldh  a, [$98]                                    ; $5af2: $f0 $98
	ld   hl, sp+$78                                  ; $5af4: $f8 $78
	xor  b                                           ; $5af6: $a8
	add  b                                           ; $5af7: $80
	ld   [$5880], sp                                 ; $5af8: $08 $80 $58
	nop                                              ; $5afb: $00
	ld   e, c                                        ; $5afc: $59
	adc  l                                           ; $5afd: $8d
	add  hl, bc                                      ; $5afe: $09
	nop                                              ; $5aff: $00
	rlca                                             ; $5b00: $07
	adc  l                                           ; $5b01: $8d
	jr   nz, jr_079_5b04                             ; $5b02: $20 $00

jr_079_5b04:
	ret  c                                           ; $5b04: $d8

	adc  l                                           ; $5b05: $8d
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	ld   c, d                                        ; $5b08: $4a
	add  c                                           ; $5b09: $81
	db   $db                                         ; $5b0a: $db
	add  b                                           ; $5b0b: $80
	ei                                               ; $5b0c: $fb
	nop                                              ; $5b0d: $00
	ld   a, e                                        ; $5b0e: $7b
	add  c                                           ; $5b0f: $81
	ei                                               ; $5b10: $fb
	add  d                                           ; $5b11: $82
	db   $db                                         ; $5b12: $db
	dec  b                                           ; $5b13: $05
	ld   e, e                                        ; $5b14: $5b
	db   $db                                         ; $5b15: $db
	inc  sp                                          ; $5b16: $33
	db   $e3                                         ; $5b17: $e3
	di                                               ; $5b18: $f3
	rst  $30                                         ; $5b19: $f7
	add  b                                           ; $5b1a: $80
	ld   h, a                                        ; $5b1b: $67
	ld   bc, $7677                                   ; $5b1c: $01 $77 $76
	add  b                                           ; $5b1f: $80
	ld   h, [hl]                                     ; $5b20: $66
	add  b                                           ; $5b21: $80
	halt                                             ; $5b22: $76
	ld   bc, $6766                                   ; $5b23: $01 $66 $67
	add  b                                           ; $5b26: $80
	ld   [hl], a                                     ; $5b27: $77
	nop                                              ; $5b28: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b29: $cf
	add  a                                           ; $5b2a: $87
	sbc  e                                           ; $5b2b: $9b
	nop                                              ; $5b2c: $00
	sbc  h                                           ; $5b2d: $9c
	add  e                                           ; $5b2e: $83
	sbc  a                                           ; $5b2f: $9f
	ld   bc, $8f95                                   ; $5b30: $01 $95 $8f
	add  b                                           ; $5b33: $80
	xor  l                                           ; $5b34: $ad
	add  b                                           ; $5b35: $80
	adc  a                                           ; $5b36: $8f
	add  b                                           ; $5b37: $80
	xor  l                                           ; $5b38: $ad
	ld   bc, $cf8f                                   ; $5b39: $01 $8f $cf
	add  b                                           ; $5b3c: $80
	db   $ed                                         ; $5b3d: $ed
	inc  b                                           ; $5b3e: $04
	xor  $ef                                         ; $5b3f: $ee $ef
	push hl                                          ; $5b41: $e5
	db   $ed                                         ; $5b42: $ed
	ld   b, c                                        ; $5b43: $41
	adc  d                                           ; $5b44: $8a
	nop                                              ; $5b45: $00
	add  b                                           ; $5b46: $80
	ld   [$0b08], sp                                 ; $5b47: $08 $08 $0b
	db   $f4                                         ; $5b4a: $f4
	adc  c                                           ; $5b4b: $89
	add  hl, bc                                      ; $5b4c: $09
	ld   b, e                                        ; $5b4d: $43
	ld   [bc], a                                     ; $5b4e: $02
	ld   h, $10                                      ; $5b4f: $26 $10
	ld   [$0080], sp                                 ; $5b51: $08 $80 $00
	rlca                                             ; $5b54: $07
	add  b                                           ; $5b55: $80
	ld   c, $4d                                      ; $5b56: $0e $4d
	jr   nc, jr_079_5b6e                             ; $5b58: $30 $14

	ld   h, c                                        ; $5b5a: $61
	ld   b, $80                                      ; $5b5b: $06 $80
	add  a                                           ; $5b5d: $87
	nop                                              ; $5b5e: $00
	add  c                                           ; $5b5f: $81
	rrca                                             ; $5b60: $0f
	ld   [bc], a                                     ; $5b61: $02
	adc  a                                           ; $5b62: $8f
	rrca                                             ; $5b63: $0f
	adc  a                                           ; $5b64: $8f
	add  b                                           ; $5b65: $80
	ld   b, b                                        ; $5b66: $40
	add  d                                           ; $5b67: $82
	ld   b, c                                        ; $5b68: $41
	ld   bc, $6b7f                                   ; $5b69: $01 $7f $6b
	add  b                                           ; $5b6c: $80
	ld   a, e                                        ; $5b6d: $7b

jr_079_5b6e:
	inc  bc                                          ; $5b6e: $03
	ei                                               ; $5b6f: $fb
	ld   a, e                                        ; $5b70: $7b
	ei                                               ; $5b71: $fb
	ld   l, a                                        ; $5b72: $6f
	add  b                                           ; $5b73: $80
	rst  $38                                         ; $5b74: $ff
	sbc  l                                           ; $5b75: $9d
	nop                                              ; $5b76: $00
	ld   [bc], a                                     ; $5b77: $02
	rlca                                             ; $5b78: $07
	ld   b, $07                                      ; $5b79: $06 $07
	adc  e                                           ; $5b7b: $8b
	ld   b, $02                                      ; $5b7c: $06 $02
	rst  $38                                         ; $5b7e: $ff
	nop                                              ; $5b7f: $00
	db   $e4                                         ; $5b80: $e4
	add  h                                           ; $5b81: $84
	ld   d, $00                                      ; $5b82: $16 $00
	inc  d                                           ; $5b84: $14
	add  b                                           ; $5b85: $80
	ld   de, $1280                                   ; $5b86: $11 $80 $12
	ld   [bc], a                                     ; $5b89: $02
	dec  d                                           ; $5b8a: $15
	dec  b                                           ; $5b8b: $05
	ldh  [$85], a                                    ; $5b8c: $e0 $85

jr_079_5b8e:
	nop                                              ; $5b8e: $00
	add  b                                           ; $5b8f: $80
	ld   bc, $e280                                   ; $5b90: $01 $80 $e2
	add  b                                           ; $5b93: $80
	dec  e                                           ; $5b94: $1d
	add  b                                           ; $5b95: $80
	jp   $0980                                       ; $5b96: $c3 $80 $09


	add  b                                           ; $5b99: $80
	nop                                              ; $5b9a: $00
	add  b                                           ; $5b9b: $80
	ccf                                              ; $5b9c: $3f
	add  b                                           ; $5b9d: $80
	ret  nz                                          ; $5b9e: $c0

	add  b                                           ; $5b9f: $80
	ccf                                              ; $5ba0: $3f
	add  h                                           ; $5ba1: $84
	rst  $38                                         ; $5ba2: $ff
	nop                                              ; $5ba3: $00
	rlca                                             ; $5ba4: $07
	add  c                                           ; $5ba5: $81
	jr   nz, jr_079_5ba9                             ; $5ba6: $20 $01

	and  b                                           ; $5ba8: $a0

jr_079_5ba9:
	add  b                                           ; $5ba9: $80
	add  b                                           ; $5baa: $80
	ld   h, b                                        ; $5bab: $60
	add  b                                           ; $5bac: $80
	sub  b                                           ; $5bad: $90
	ld   bc, $e8ef                                   ; $5bae: $01 $ef $e8
	add  b                                           ; $5bb1: $80
	rst  $30                                         ; $5bb2: $f7
	add  b                                           ; $5bb3: $80
	ld   hl, sp+$00                                  ; $5bb4: $f8 $00
	rst  $38                                         ; $5bb6: $ff
	add  l                                           ; $5bb7: $85
	nop                                              ; $5bb8: $00
	ld   [$00f0], sp                                 ; $5bb9: $08 $f0 $00
	ld   hl, sp-$10                                  ; $5bbc: $f8 $f0
	inc  c                                           ; $5bbe: $0c
	ld   [$f4f7], sp                                 ; $5bbf: $08 $f7 $f4
	or   c                                           ; $5bc2: $b1
	add  e                                           ; $5bc3: $83
	rst  JumpTable                                         ; $5bc4: $df
	add  b                                           ; $5bc5: $80

jr_079_5bc6:
	sbc  a                                           ; $5bc6: $9f
	ld   [bc], a                                     ; $5bc7: $02
	ld   e, $9f                                      ; $5bc8: $1e $9f
	ccf                                              ; $5bca: $3f
	add  c                                           ; $5bcb: $81
	cp   a                                           ; $5bcc: $bf
	ld   [bc], a                                     ; $5bcd: $02
	cp   l                                           ; $5bce: $bd
	cp   a                                           ; $5bcf: $bf
	or   b                                           ; $5bd0: $b0
	add  c                                           ; $5bd1: $81
	ld   h, a                                        ; $5bd2: $67
	nop                                              ; $5bd3: $00
	db   $e3                                         ; $5bd4: $e3
	adc  c                                           ; $5bd5: $89
	rst  $20                                         ; $5bd6: $e7
	nop                                              ; $5bd7: $00
	adc  l                                           ; $5bd8: $8d
	add  b                                           ; $5bd9: $80
	adc  $81                                         ; $5bda: $ce $81
	sbc  $82                                         ; $5bdc: $de $82
	sbc  [hl]                                        ; $5bde: $9e
	nop                                              ; $5bdf: $00
	cp   h                                           ; $5be0: $bc
	add  c                                           ; $5be1: $81
	cp   [hl]                                        ; $5be2: $be
	add  b                                           ; $5be3: $80
	cp   $03                                         ; $5be4: $fe $03
	xor  $ff                                         ; $5be6: $ee $ff
	ld   sp, hl                                      ; $5be8: $f9
	db   $fd                                         ; $5be9: $fd
	add  b                                           ; $5bea: $80
	ld   a, a                                        ; $5beb: $7f
	inc  bc                                          ; $5bec: $03
	ld   l, l                                        ; $5bed: $6d
	ld   a, l                                        ; $5bee: $7d
	ld   a, [hl]                                     ; $5bef: $7e
	ld   a, a                                        ; $5bf0: $7f
	add  b                                           ; $5bf1: $80
	ld   a, l                                        ; $5bf2: $7d
	add  d                                           ; $5bf3: $82
	ld   a, a                                        ; $5bf4: $7f
	nop                                              ; $5bf5: $00
	inc  d                                           ; $5bf6: $14
	add  b                                           ; $5bf7: $80
	ld   c, $89                                      ; $5bf8: $0e $89
	ld   [$f708], sp                                 ; $5bfa: $08 $08 $f7
	nop                                              ; $5bfd: $00
	ld   [hl], b                                     ; $5bfe: $70
	inc  hl                                          ; $5bff: $23
	inc  sp                                          ; $5c00: $33
	ld   h, a                                        ; $5c01: $67
	ld   h, b                                        ; $5c02: $60
	ld   l, b                                        ; $5c03: $68
	ld   [hl], e                                     ; $5c04: $73
	add  b                                           ; $5c05: $80
	ld   a, h                                        ; $5c06: $7c
	add  e                                           ; $5c07: $83
	nop                                              ; $5c08: $00
	ld   [$007c], sp                                 ; $5c09: $08 $7c $00
	jr   nc, jr_079_5b8e                             ; $5c0c: $30 $80

	and  b                                           ; $5c0e: $a0
	ret  nz                                          ; $5c0f: $c0

	stop                                             ; $5c10: $10 $00
	ret  nc                                          ; $5c12: $d0

	add  b                                           ; $5c13: $80
	inc  d                                           ; $5c14: $14
	add  l                                           ; $5c15: $85
	ld   d, h                                        ; $5c16: $54
	nop                                              ; $5c17: $00
	ld   b, l                                        ; $5c18: $45
	add  b                                           ; $5c19: $80
	db   $fd                                         ; $5c1a: $fd
	add  b                                           ; $5c1b: $80
	or   h                                           ; $5c1c: $b4
	add  b                                           ; $5c1d: $80
	nop                                              ; $5c1e: $00
	add  b                                           ; $5c1f: $80
	db   $fc                                         ; $5c20: $fc
	add  b                                           ; $5c21: $80
	or   h                                           ; $5c22: $b4
	add  b                                           ; $5c23: $80
	nop                                              ; $5c24: $00
	inc  bc                                          ; $5c25: $03
	db   $fc                                         ; $5c26: $fc
	db   $fd                                         ; $5c27: $fd
	or   h                                           ; $5c28: $b4
	ld   c, e                                        ; $5c29: $4b
	adc  e                                           ; $5c2a: $8b
	nop                                              ; $5c2b: $00
	ld   [bc], a                                     ; $5c2c: $02
	rrca                                             ; $5c2d: $0f
	ld   [$8507], sp                                 ; $5c2e: $08 $07 $85
	nop                                              ; $5c31: $00
	add  b                                           ; $5c32: $80
	ld   bc, $1e06                                   ; $5c33: $01 $06 $1e
	ld   de, $9fef                                   ; $5c36: $11 $ef $9f
	ld   a, b                                        ; $5c39: $78
	ld   hl, sp-$07                                  ; $5c3a: $f8 $f9
	add  c                                           ; $5c3c: $81
	ld   b, $05                                      ; $5c3d: $06 $05
	rlca                                             ; $5c3f: $07
	ld   [bc], a                                     ; $5c40: $02
	ld   a, $24                                      ; $5c41: $3e $24
	ret  c                                           ; $5c43: $d8

	jr   c, jr_079_5bc6                              ; $5c44: $38 $80

	call nz, $3c80                                   ; $5c46: $c4 $80 $3c
	add  b                                           ; $5c49: $80
	ld   hl, sp+$01                                  ; $5c4a: $f8 $01
	adc  e                                           ; $5c4c: $8b
	dec  bc                                          ; $5c4d: $0b
	add  b                                           ; $5c4e: $80
	scf                                              ; $5c4f: $37
	ld   bc, $8707                                   ; $5c50: $01 $07 $87
	add  b                                           ; $5c53: $80
	rla                                              ; $5c54: $17
	add  b                                           ; $5c55: $80
	rst  $10                                         ; $5c56: $d7
	add  b                                           ; $5c57: $80
	sub  $80                                         ; $5c58: $d6 $80
	ld   de, $0902                                   ; $5c5a: $11 $02 $09
	ld   c, $ec                                      ; $5c5d: $0e $ec
	add  e                                           ; $5c5f: $83
	db   $eb                                         ; $5c60: $eb
	add  b                                           ; $5c61: $80
	add  sp, $05                                     ; $5c62: $e8 $05
	add  h                                           ; $5c64: $84
	add  a                                           ; $5c65: $87
	ld   b, b                                        ; $5c66: $40
	ld   a, h                                        ; $5c67: $7c
	ld   b, b                                        ; $5c68: $40
	add  b                                           ; $5c69: $80
	add  c                                           ; $5c6a: $81
	nop                                              ; $5c6b: $00
	add  e                                           ; $5c6c: $83
	rst  $38                                         ; $5c6d: $ff
	add  b                                           ; $5c6e: $80
	rrca                                             ; $5c6f: $0f
	dec  b                                           ; $5c70: $05
	db   $10                                         ; $5c71: $10
	ldh  a, [rAUD1LEN]                               ; $5c72: $f0 $11
	rrca                                             ; $5c74: $0f
	ld   [bc], a                                     ; $5c75: $02
	inc  bc                                          ; $5c76: $03
	add  b                                           ; $5c77: $80
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	dec  b                                           ; $5c7a: $05
	add  a                                           ; $5c7b: $87
	ld   a, [$3a80]                                  ; $5c7c: $fa $80 $3a
	dec  b                                           ; $5c7f: $05
	ld   e, d                                        ; $5c80: $5a
	jp   c, Jump_079_6a2a                            ; $5c81: $da $2a $6a

	ld   a, [hl-]                                    ; $5c84: $3a
	ld   a, [$fd80]                                  ; $5c85: $fa $80 $fd
	add  b                                           ; $5c88: $80
	db   $fc                                         ; $5c89: $fc
	adc  b                                           ; $5c8a: $88
	db   $fd                                         ; $5c8b: $fd
	inc  bc                                          ; $5c8c: $03
	ld   [de], a                                     ; $5c8d: $12
	ccf                                              ; $5c8e: $3f
	sbc  a                                           ; $5c8f: $9f
	cp   a                                           ; $5c90: $bf
	add  b                                           ; $5c91: $80
	ccf                                              ; $5c92: $3f
	inc  bc                                          ; $5c93: $03
	ld   l, a                                        ; $5c94: $6f
	ccf                                              ; $5c95: $3f
	dec  a                                           ; $5c96: $3d
	ccf                                              ; $5c97: $3f
	add  b                                           ; $5c98: $80
	ld   a, a                                        ; $5c99: $7f
	nop                                              ; $5c9a: $00
	ld   a, e                                        ; $5c9b: $7b
	add  c                                           ; $5c9c: $81
	ld   a, a                                        ; $5c9d: $7f
	nop                                              ; $5c9e: $00
	ld   b, $85                                      ; $5c9f: $06 $85
	ldh  [c], a                                      ; $5ca1: $e2
	ld   [bc], a                                     ; $5ca2: $02
	add  d                                           ; $5ca3: $82
	ldh  [c], a                                      ; $5ca4: $e2
	ld   h, [hl]                                     ; $5ca5: $66
	add  b                                           ; $5ca6: $80
	and  $00                                         ; $5ca7: $e6 $00
	add  $80                                         ; $5ca9: $c6 $80
	and  $00                                         ; $5cab: $e6 $00
	ld   l, [hl]                                     ; $5cad: $6e
	add  c                                           ; $5cae: $81
	rst  $38                                         ; $5caf: $ff
	add  e                                           ; $5cb0: $83
	rst  JumpTable                                         ; $5cb1: $df
	add  d                                           ; $5cb2: $82
	sbc  $02                                         ; $5cb3: $de $02
	rst  JumpTable                                         ; $5cb5: $df
	sbc  $df                                         ; $5cb6: $de $df
	add  b                                           ; $5cb8: $80
	ld   a, $00                                      ; $5cb9: $3e $00
	dec  a                                           ; $5cbb: $3d
	add  c                                           ; $5cbc: $81
	cpl                                              ; $5cbd: $2f
	ld   [bc], a                                     ; $5cbe: $02
	dec  h                                           ; $5cbf: $25
	cpl                                              ; $5cc0: $2f
	ld   l, $81                                      ; $5cc1: $2e $81
	scf                                              ; $5cc3: $37
	add  b                                           ; $5cc4: $80
	ld   [hl], a                                     ; $5cc5: $77
	inc  bc                                          ; $5cc6: $03
	ld   h, e                                        ; $5cc7: $63
	ld   a, e                                        ; $5cc8: $7b
	or   [hl]                                        ; $5cc9: $b6
	ld   b, b                                        ; $5cca: $40
	add  b                                           ; $5ccb: $80
	add  hl, hl                                      ; $5ccc: $29
	add  b                                           ; $5ccd: $80
	ld   d, $80                                      ; $5cce: $16 $80
	dec  bc                                          ; $5cd0: $0b
	add  b                                           ; $5cd1: $80
	inc  b                                           ; $5cd2: $04
	add  d                                           ; $5cd3: $82
	nop                                              ; $5cd4: $00
	add  b                                           ; $5cd5: $80
	ld   bc, $0080                                   ; $5cd6: $01 $80 $00
	add  b                                           ; $5cd9: $80
	cp   h                                           ; $5cda: $bc
	add  b                                           ; $5cdb: $80
	nop                                              ; $5cdc: $00
	add  b                                           ; $5cdd: $80
	rst  $38                                         ; $5cde: $ff
	add  c                                           ; $5cdf: $81
	nop                                              ; $5ce0: $00
	add  b                                           ; $5ce1: $80
	rst  $38                                         ; $5ce2: $ff
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	add  b                                           ; $5ce5: $80
	cp   $80                                         ; $5ce6: $fe $80
	nop                                              ; $5ce8: $00
	dec  b                                           ; $5ce9: $05
	ld   bc, $6661                                   ; $5cea: $01 $61 $66
	ld   [hl], $b7                                   ; $5ced: $36 $b7
	add  a                                           ; $5cef: $87
	add  c                                           ; $5cf0: $81
	nop                                              ; $5cf1: $00
	add  b                                           ; $5cf2: $80
	rst  $38                                         ; $5cf3: $ff
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	add  b                                           ; $5cf6: $80
	ld   a, h                                        ; $5cf7: $7c
	add  b                                           ; $5cf8: $80
	nop                                              ; $5cf9: $00
	add  b                                           ; $5cfa: $80
	ldh  a, [$80]                                    ; $5cfb: $f0 $80
	rlca                                             ; $5cfd: $07
	add  b                                           ; $5cfe: $80
	rst  $38                                         ; $5cff: $ff
	add  b                                           ; $5d00: $80
	nop                                              ; $5d01: $00
	ld   b, $01                                      ; $5d02: $06 $01
	ld   sp, hl                                      ; $5d04: $f9
	db   $fc                                         ; $5d05: $fc
	rlca                                             ; $5d06: $07
	inc  de                                          ; $5d07: $13
	inc  e                                           ; $5d08: $1c
	di                                               ; $5d09: $f3
	add  c                                           ; $5d0a: $81
	rrca                                             ; $5d0b: $0f
	add  b                                           ; $5d0c: $80
	ld   [$0380], sp                                 ; $5d0d: $08 $80 $03
	add  b                                           ; $5d10: $80
	ld   c, $80                                      ; $5d11: $0e $80
	ld   [$0082], sp                                 ; $5d13: $08 $82 $00
	ld   bc, $c737                                   ; $5d16: $01 $37 $c7
	add  b                                           ; $5d19: $80
	ccf                                              ; $5d1a: $3f
	add  b                                           ; $5d1b: $80
	rst  $38                                         ; $5d1c: $ff
	add  b                                           ; $5d1d: $80
	adc  a                                           ; $5d1e: $8f
	add  d                                           ; $5d1f: $82
	rrca                                             ; $5d20: $0f
	dec  b                                           ; $5d21: $05
	inc  c                                           ; $5d22: $0c
	rrca                                             ; $5d23: $0f
	sub  b                                           ; $5d24: $90
	sbc  h                                           ; $5d25: $9c
	rst  $28                                         ; $5d26: $ef
	ldh  [$80], a                                    ; $5d27: $e0 $80
	nop                                              ; $5d29: $00
	add  b                                           ; $5d2a: $80
	inc  c                                           ; $5d2b: $0c
	ld   b, $00                                      ; $5d2c: $06 $00
	inc  bc                                          ; $5d2e: $03
	inc  c                                           ; $5d2f: $0c
	db   $10                                         ; $5d30: $10
	jr   nz, jr_079_5d73                             ; $5d31: $20 $40

	add  b                                           ; $5d33: $80
	add  c                                           ; $5d34: $81
	nop                                              ; $5d35: $00
	db   $10                                         ; $5d36: $10
	add  sp, $18                                     ; $5d37: $e8 $18
	jr   nz, jr_079_5d6b                             ; $5d39: $20 $30

	db   $10                                         ; $5d3b: $10
	jr   nc, jr_079_5dac                             ; $5d3c: $30 $6e

	sbc  $4f                                         ; $5d3e: $de $4f
	ld   sp, $1f12                                   ; $5d40: $31 $12 $1f
	inc  hl                                          ; $5d43: $23
	ccf                                              ; $5d44: $3f
	db   $dd                                         ; $5d45: $dd
	add  d                                           ; $5d46: $82
	ld   b, b                                        ; $5d47: $40
	add  l                                           ; $5d48: $85
	nop                                              ; $5d49: $00
	add  b                                           ; $5d4a: $80
	rst  $38                                         ; $5d4b: $ff
	ld   b, $f4                                      ; $5d4c: $06 $f4
	dec  bc                                          ; $5d4e: $0b
	inc  e                                           ; $5d4f: $1c
	rra                                              ; $5d50: $1f
	ld   [$180e], a                                  ; $5d51: $ea $0e $18
	add  c                                           ; $5d54: $81
	nop                                              ; $5d55: $00
	add  b                                           ; $5d56: $80
	inc  bc                                          ; $5d57: $03
	rlca                                             ; $5d58: $07
	rra                                              ; $5d59: $1f
	ld   e, $fd                                      ; $5d5a: $1e $fd
	di                                               ; $5d5c: $f3
	ld   l, c                                        ; $5d5d: $69
	sbc  [hl]                                        ; $5d5e: $9e
	ld   [$80f0], sp                                 ; $5d5f: $08 $f0 $80
	nop                                              ; $5d62: $00
	add  hl, bc                                      ; $5d63: $09
	ld   a, l                                        ; $5d64: $7d
	ld   h, d                                        ; $5d65: $62
	ret  nz                                          ; $5d66: $c0

	cp   h                                           ; $5d67: $bc
	ret  nz                                          ; $5d68: $c0

	ld   h, e                                        ; $5d69: $63
	add  b                                           ; $5d6a: $80

jr_079_5d6b:
	ret  nz                                          ; $5d6b: $c0

	nop                                              ; $5d6c: $00
	add  b                                           ; $5d6d: $80
	add  d                                           ; $5d6e: $82
	ld   bc, $0281                                   ; $5d6f: $01 $81 $02
	nop                                              ; $5d72: $00

jr_079_5d73:
	db   $fd                                         ; $5d73: $fd
	add  b                                           ; $5d74: $80
	dec  a                                           ; $5d75: $3d
	ld   [de], a                                     ; $5d76: $12
	dec  b                                           ; $5d77: $05
	push bc                                          ; $5d78: $c5
	ld   bc, $0039                                   ; $5d79: $01 $39 $00
	inc  b                                           ; $5d7c: $04
	ld   b, $04                                      ; $5d7d: $06 $04
	jr   jr_079_5d91                                 ; $5d7f: $18 $10

	ld   [hl], c                                     ; $5d81: $71
	ld   l, b                                        ; $5d82: $68
	bit  7, [hl]                                     ; $5d83: $cb $7e
	ld   [hl], c                                     ; $5d85: $71
	ld   [hl], d                                     ; $5d86: $72
	ld   [de], a                                     ; $5d87: $12
	ld   e, e                                        ; $5d88: $5b
	db   $10                                         ; $5d89: $10
	add  c                                           ; $5d8a: $81
	nop                                              ; $5d8b: $00
	add  b                                           ; $5d8c: $80
	jr   nc, jr_079_5d99                             ; $5d8d: $30 $0a

	inc  [hl]                                        ; $5d8f: $34
	inc  sp                                          ; $5d90: $33

jr_079_5d91:
	dec  b                                           ; $5d91: $05
	ld   bc, $e51c                                   ; $5d92: $01 $1c $e5
	push bc                                          ; $5d95: $c5
	call nz, $a594                                   ; $5d96: $c4 $94 $a5

jr_079_5d99:
	jp   z, $0081                                    ; $5d99: $ca $81 $00

	rlca                                             ; $5d9c: $07
	rra                                              ; $5d9d: $1f
	nop                                              ; $5d9e: $00
	ld   l, $20                                      ; $5d9f: $2e $20
	ld   c, $9f                                      ; $5da1: $0e $9f
	ld   [de], a                                     ; $5da3: $12
	ld   a, a                                        ; $5da4: $7f
	add  b                                           ; $5da5: $80
	ld   [hl], a                                     ; $5da6: $77
	ld   [bc], a                                     ; $5da7: $02
	ld   h, d                                        ; $5da8: $62
	ld   h, a                                        ; $5da9: $67
	add  sp, -$7d                                    ; $5daa: $e8 $83

jr_079_5dac:
	nop                                              ; $5dac: $00
	ld   a, [bc]                                     ; $5dad: $0a
	add  b                                           ; $5dae: $80
	rra                                              ; $5daf: $1f
	sbc  a                                           ; $5db0: $9f
	ld   [hl], $b2                                   ; $5db1: $36 $b2
	ld   l, a                                        ; $5db3: $6f
	ld   [hl], c                                     ; $5db4: $71
	ld   l, e                                        ; $5db5: $6b
	ld   c, e                                        ; $5db6: $4b
	ld   e, e                                        ; $5db7: $5b
	pop  hl                                          ; $5db8: $e1
	add  b                                           ; $5db9: $80
	inc  bc                                          ; $5dba: $03
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	add  d                                           ; $5dbd: $82
	ld   a, a                                        ; $5dbe: $7f
	add  b                                           ; $5dbf: $80
	ccf                                              ; $5dc0: $3f
	add  d                                           ; $5dc1: $82
	ld   bc, $0080                                   ; $5dc2: $01 $80 $00
	add  h                                           ; $5dc5: $84
	ld   bc, $0080                                   ; $5dc6: $01 $80 $00
	add  b                                           ; $5dc9: $80
	ld   bc, $8603                                   ; $5dca: $01 $03 $86
	cp   $86                                         ; $5dcd: $fe $86
	cp   $80                                         ; $5dcf: $fe $80
	nop                                              ; $5dd1: $00
	add  b                                           ; $5dd2: $80
	cp   $03                                         ; $5dd3: $fe $03
	add  [hl]                                        ; $5dd5: $86
	cp   $86                                         ; $5dd6: $fe $86
	cp   $80                                         ; $5dd8: $fe $80
	nop                                              ; $5dda: $00
	add  b                                           ; $5ddb: $80
	cp   $80                                         ; $5ddc: $fe $80
	ld   a, b                                        ; $5dde: $78
	add  hl, bc                                      ; $5ddf: $09
	halt                                             ; $5de0: $76
	ld   [hl], a                                     ; $5de1: $77
	add  hl, bc                                      ; $5de2: $09
	ld   c, $13                                      ; $5de3: $0e $13
	dec  e                                           ; $5de5: $1d
	inc  hl                                          ; $5de6: $23
	dec  sp                                          ; $5de7: $3b
	inc  b                                           ; $5de8: $04
	inc  [hl]                                        ; $5de9: $34
	add  b                                           ; $5dea: $80
	inc  sp                                          ; $5deb: $33
	inc  de                                          ; $5dec: $13
	rrca                                             ; $5ded: $0f
	cpl                                              ; $5dee: $2f
	add  e                                           ; $5def: $83
	di                                               ; $5df0: $f3
	dec  a                                           ; $5df1: $3d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df2: $cf
	cp   h                                           ; $5df3: $bc
	ccf                                              ; $5df4: $3f
	db   $fc                                         ; $5df5: $fc
	rst  $38                                         ; $5df6: $ff
	db   $fc                                         ; $5df7: $fc
	rst  $38                                         ; $5df8: $ff
	inc  bc                                          ; $5df9: $03
	ld   [bc], a                                     ; $5dfa: $02
	ld   hl, sp-$07                                  ; $5dfb: $f8 $f9

jr_079_5dfd:
	db   $e4                                         ; $5dfd: $e4
	rst  $20                                         ; $5dfe: $e7

jr_079_5dff:
	push af                                          ; $5dff: $f5
	rlca                                             ; $5e00: $07
	add  b                                           ; $5e01: $80
	rrca                                             ; $5e02: $0f
	inc  bc                                          ; $5e03: $03
	inc  c                                           ; $5e04: $0c
	rrca                                             ; $5e05: $0f
	nop                                              ; $5e06: $00
	inc  c                                           ; $5e07: $0c
	add  [hl]                                        ; $5e08: $86
	nop                                              ; $5e09: $00
	inc  bc                                          ; $5e0a: $03
	jr   nc, jr_079_5dfd                             ; $5e0b: $30 $f0

	nop                                              ; $5e0d: $00
	ret  nz                                          ; $5e0e: $c0

	adc  d                                           ; $5e0f: $8a
	nop                                              ; $5e10: $00
	add  c                                           ; $5e11: $81
	ld   bc, $0080                                   ; $5e12: $01 $80 $00
	ld   [bc], a                                     ; $5e15: $02
	inc  bc                                          ; $5e16: $03
	nop                                              ; $5e17: $00
	ld   bc, $0081                                   ; $5e18: $01 $81 $00
	ld   bc, $0401                                   ; $5e1b: $01 $01 $04
	add  c                                           ; $5e1e: $81
	dec  b                                           ; $5e1f: $05
	inc  bc                                          ; $5e20: $03
	ld   a, h                                        ; $5e21: $7c
	rst  $38                                         ; $5e22: $ff
	add  b                                           ; $5e23: $80
	nop                                              ; $5e24: $00
	add  b                                           ; $5e25: $80
	ld   a, [hl]                                     ; $5e26: $7e
	add  b                                           ; $5e27: $80
	add  e                                           ; $5e28: $83
	jr   jr_079_5e2c                                 ; $5e29: $18 $01

	db   $fd                                         ; $5e2b: $fd

jr_079_5e2c:
	inc  bc                                          ; $5e2c: $03
	rst  $38                                         ; $5e2d: $ff
	nop                                              ; $5e2e: $00
	rst  $38                                         ; $5e2f: $ff
	nop                                              ; $5e30: $00
	cp   $d9                                         ; $5e31: $fe $d9
	ret  nc                                          ; $5e33: $d0

	or   b                                           ; $5e34: $b0
	ld   h, b                                        ; $5e35: $60
	or   b                                           ; $5e36: $b0
	ret  nz                                          ; $5e37: $c0

	ld   [hl], b                                     ; $5e38: $70
	sub  b                                           ; $5e39: $90
	ldh  a, [rAUD4LEN]                               ; $5e3a: $f0 $20
	ld   a, b                                        ; $5e3c: $78
	ret  c                                           ; $5e3d: $d8

	ld   l, b                                        ; $5e3e: $68
	cp   b                                           ; $5e3f: $b8
	ld   c, b                                        ; $5e40: $48
	ld   [hl], b                                     ; $5e41: $70
	ret  nc                                          ; $5e42: $d0

	add  c                                           ; $5e43: $81
	nop                                              ; $5e44: $00
	add  b                                           ; $5e45: $80
	inc  bc                                          ; $5e46: $03
	add  b                                           ; $5e47: $80
	inc  e                                           ; $5e48: $1c
	add  [hl]                                        ; $5e49: $86
	nop                                              ; $5e4a: $00
	add  b                                           ; $5e4b: $80
	inc  c                                           ; $5e4c: $0c
	add  b                                           ; $5e4d: $80
	jr   nc, jr_079_5e52                             ; $5e4e: $30 $02

	ret  nz                                          ; $5e50: $c0

	pop  bc                                          ; $5e51: $c1

jr_079_5e52:
	ld   bc, $0380                                   ; $5e52: $01 $80 $03
	daa                                              ; $5e55: $27
	dec  b                                           ; $5e56: $05
	inc  b                                           ; $5e57: $04
	ld   bc, $1810                                   ; $5e58: $01 $10 $18
	jr   z, @+$34                                    ; $5e5b: $28 $32

	ld   b, [hl]                                     ; $5e5d: $46
	ld   e, h                                        ; $5e5e: $5c
	ld   a, [bc]                                     ; $5e5f: $0a
	ld   c, $06                                      ; $5e60: $0e $06
	adc  [hl]                                        ; $5e62: $8e
	push bc                                          ; $5e63: $c5
	rst  ToBoot                                         ; $5e64: $c7
	ld   b, e                                        ; $5e65: $43
	rst  ToBoot                                         ; $5e66: $c7
	ld   h, b                                        ; $5e67: $60
	db   $e3                                         ; $5e68: $e3
	ld   sp, $78f1                                   ; $5e69: $31 $f1 $78
	ld   a, c                                        ; $5e6c: $79
	and  [hl]                                        ; $5e6d: $a6
	jr   @+$21                                       ; $5e6e: $18 $1f

	ld   a, [hl]                                     ; $5e70: $7e
	ld   h, a                                        ; $5e71: $67
	rra                                              ; $5e72: $1f
	sbc  b                                           ; $5e73: $98
	nop                                              ; $5e74: $00
	ld   b, b                                        ; $5e75: $40
	nop                                              ; $5e76: $00
	xor  b                                           ; $5e77: $a8
	add  b                                           ; $5e78: $80
	ld   d, a                                        ; $5e79: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e7a: $cf
	xor  a                                           ; $5e7b: $af
	rst  $38                                         ; $5e7c: $ff
	jr   nz, jr_079_5dff                             ; $5e7d: $20 $80

	ret  nz                                          ; $5e7f: $c0

	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	add  b                                           ; $5e82: $80
	rst  $38                                         ; $5e83: $ff
	ld   [bc], a                                     ; $5e84: $02
	add  b                                           ; $5e85: $80
	rst  $38                                         ; $5e86: $ff
	ld   a, a                                        ; $5e87: $7f
	add  c                                           ; $5e88: $81
	nop                                              ; $5e89: $00
	dec  c                                           ; $5e8a: $0d
	call z, $22ee                                    ; $5e8b: $cc $ee $22
	ldh  [$e1], a                                    ; $5e8e: $e0 $e1
	db   $fd                                         ; $5e90: $fd
	rst  $38                                         ; $5e91: $ff
	inc  bc                                          ; $5e92: $03
	db   $fc                                         ; $5e93: $fc
	rst  $38                                         ; $5e94: $ff
	inc  hl                                          ; $5e95: $23
	ldh  [$c0], a                                    ; $5e96: $e0 $c0
	nop                                              ; $5e98: $00
	add  b                                           ; $5e99: $80
	inc  bc                                          ; $5e9a: $03
	add  b                                           ; $5e9b: $80
	rst  $38                                         ; $5e9c: $ff
	rlca                                             ; $5e9d: $07
	ld   a, a                                        ; $5e9e: $7f
	rst  $38                                         ; $5e9f: $ff
	sbc  a                                           ; $5ea0: $9f
	rra                                              ; $5ea1: $1f
	nop                                              ; $5ea2: $00
	ret  nz                                          ; $5ea3: $c0

	rst  JumpTable                                         ; $5ea4: $df
	rra                                              ; $5ea5: $1f
	add  b                                           ; $5ea6: $80
	nop                                              ; $5ea7: $00
	add  b                                           ; $5ea8: $80
	ld   a, a                                        ; $5ea9: $7f
	add  d                                           ; $5eaa: $82
	rst  $38                                         ; $5eab: $ff
	ld   [bc], a                                     ; $5eac: $02
	ldh  [c], a                                      ; $5ead: $e2
	ldh  a, [c]                                      ; $5eae: $f2
	ld   de, $0181                                   ; $5eaf: $11 $81 $01
	add  b                                           ; $5eb2: $80
	nop                                              ; $5eb3: $00
	add  b                                           ; $5eb4: $80
	ld   b, c                                        ; $5eb5: $41
	add  b                                           ; $5eb6: $80
	pop  hl                                          ; $5eb7: $e1
	add  b                                           ; $5eb8: $80
	pop  af                                          ; $5eb9: $f1
	rlca                                             ; $5eba: $07
	ret  nz                                          ; $5ebb: $c0

	ld   hl, sp-$28                                  ; $5ebc: $f8 $d8
	ldh  [rTMA], a                                   ; $5ebe: $e0 $06
	cp   $06                                         ; $5ec0: $fe $06
	cp   $80                                         ; $5ec2: $fe $80
	nop                                              ; $5ec4: $00
	add  b                                           ; $5ec5: $80
	cp   $03                                         ; $5ec6: $fe $03
	add  [hl]                                        ; $5ec8: $86
	cp   $86                                         ; $5ec9: $fe $86
	cp   $82                                         ; $5ecb: $fe $82
	nop                                              ; $5ecd: $00
	dec  bc                                          ; $5ece: $0b
	ld   [de], a                                     ; $5ecf: $12
	rra                                              ; $5ed0: $1f
	inc  e                                           ; $5ed1: $1c
	rra                                              ; $5ed2: $1f
	ld   b, $0f                                      ; $5ed3: $06 $0f
	inc  bc                                          ; $5ed5: $03
	rlca                                             ; $5ed6: $07
	ld   bc, $0103                                   ; $5ed7: $01 $03 $01
	ld   [$0c82], sp                                 ; $5eda: $08 $82 $0c
	dec  c                                           ; $5edd: $0d
	jp   c, $25de                                    ; $5ede: $da $de $25

	cp   c                                           ; $5ee1: $b9
	rst  ToBoot                                         ; $5ee2: $c7
	ld   [hl], a                                     ; $5ee3: $77
	rrca                                             ; $5ee4: $0f
	ld   l, a                                        ; $5ee5: $6f
	ld   h, l                                        ; $5ee6: $65
	ld   l, a                                        ; $5ee7: $6f
	db   $10                                         ; $5ee8: $10
	ld   e, a                                        ; $5ee9: $5f
	ld   a, [de]                                     ; $5eea: $1a
	rra                                              ; $5eeb: $1f
	add  b                                           ; $5eec: $80
	nop                                              ; $5eed: $00
	ld   [hl], c                                     ; $5eee: $71
	ld   [bc], a                                     ; $5eef: $02
	add  [hl]                                        ; $5ef0: $86
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	rrca                                             ; $5ef3: $0f
	add  l                                           ; $5ef4: $85
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	rrca                                             ; $5ef7: $0f
	add  l                                           ; $5ef8: $85
	nop                                              ; $5ef9: $00
	ld   bc, $0ff0                                   ; $5efa: $01 $f0 $0f
	add  h                                           ; $5efd: $84
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	rst  $38                                         ; $5f00: $ff
	add  [hl]                                        ; $5f01: $86
	nop                                              ; $5f02: $00
	add  c                                           ; $5f03: $81
	rst  $38                                         ; $5f04: $ff
	add  b                                           ; $5f05: $80
	rrca                                             ; $5f06: $0f
	add  b                                           ; $5f07: $80
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	rst  $38                                         ; $5f0a: $ff
	add  l                                           ; $5f0b: $85
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	rrca                                             ; $5f0e: $0f
	add  e                                           ; $5f0f: $83
	ldh  a, [$80]                                    ; $5f10: $f0 $80
	ld   [hl], b                                     ; $5f12: $70
	nop                                              ; $5f13: $00
	rst  $38                                         ; $5f14: $ff
	add  l                                           ; $5f15: $85
	nop                                              ; $5f16: $00
	ld   bc, $38c7                                   ; $5f17: $01 $c7 $38
	add  h                                           ; $5f1a: $84
	ccf                                              ; $5f1b: $3f
	nop                                              ; $5f1c: $00
	rst  $38                                         ; $5f1d: $ff
	add  l                                           ; $5f1e: $85
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	rst  $38                                         ; $5f21: $ff
	add  c                                           ; $5f22: $81
	nop                                              ; $5f23: $00
	add  b                                           ; $5f24: $80
	ldh  a, [$81]                                    ; $5f25: $f0 $81
	rst  $38                                         ; $5f27: $ff
	add  l                                           ; $5f28: $85
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	rst  $38                                         ; $5f2b: $ff
	add  l                                           ; $5f2c: $85
	nop                                              ; $5f2d: $00
	dec  b                                           ; $5f2e: $05
	dec  b                                           ; $5f2f: $05
	adc  d                                           ; $5f30: $8a
	and  l                                           ; $5f31: $a5
	ld   d, l                                        ; $5f32: $55
	ld   a, [hl+]                                    ; $5f33: $2a
	xor  d                                           ; $5f34: $aa
	add  b                                           ; $5f35: $80
	ld   d, l                                        ; $5f36: $55
	add  b                                           ; $5f37: $80
	adc  b                                           ; $5f38: $88
	add  b                                           ; $5f39: $80
	ld   [hl+], a                                    ; $5f3a: $22
	add  b                                           ; $5f3b: $80
	adc  b                                           ; $5f3c: $88
	add  b                                           ; $5f3d: $80
	nop                                              ; $5f3e: $00
	add  b                                           ; $5f3f: $80
	and  b                                           ; $5f40: $a0
	add  b                                           ; $5f41: $80
	ld   d, b                                        ; $5f42: $50
	add  b                                           ; $5f43: $80
	and  b                                           ; $5f44: $a0
	add  b                                           ; $5f45: $80
	ld   d, b                                        ; $5f46: $50
	add  b                                           ; $5f47: $80
	and  b                                           ; $5f48: $a0
	add  b                                           ; $5f49: $80
	db   $10                                         ; $5f4a: $10
	add  b                                           ; $5f4b: $80
	ld   b, b                                        ; $5f4c: $40
	add  b                                           ; $5f4d: $80
	db   $10                                         ; $5f4e: $10
	add  [hl]                                        ; $5f4f: $86
	nop                                              ; $5f50: $00
	ld   bc, $3fc0                                   ; $5f51: $01 $c0 $3f
	add  b                                           ; $5f54: $80
	rlca                                             ; $5f55: $07
	add  d                                           ; $5f56: $82
	nop                                              ; $5f57: $00
	nop                                              ; $5f58: $00
	rst  $38                                         ; $5f59: $ff
	add  [hl]                                        ; $5f5a: $86
	nop                                              ; $5f5b: $00
	add  e                                           ; $5f5c: $83
	rst  $38                                         ; $5f5d: $ff
	add  b                                           ; $5f5e: $80
	rra                                              ; $5f5f: $1f
	nop                                              ; $5f60: $00
	rst  $38                                         ; $5f61: $ff
	add  [hl]                                        ; $5f62: $86
	nop                                              ; $5f63: $00
	add  d                                           ; $5f64: $82
	ldh  [$80], a                                    ; $5f65: $e0 $80
	ld   hl, sp-$80                                  ; $5f67: $f8 $80
	rst  $38                                         ; $5f69: $ff
	adc  c                                           ; $5f6a: $89
	nop                                              ; $5f6b: $00
	inc  b                                           ; $5f6c: $04
	ld   bc, $0300                                   ; $5f6d: $01 $00 $03
	nop                                              ; $5f70: $00
	ld   [bc], a                                     ; $5f71: $02
	add  l                                           ; $5f72: $85
	nop                                              ; $5f73: $00
	ld   [$0043], sp                                 ; $5f74: $08 $43 $00
	jp   $8000                                       ; $5f77: $c3 $00 $80


	nop                                              ; $5f7a: $00
	ld   bc, $0100                                   ; $5f7b: $01 $00 $01
	add  l                                           ; $5f7e: $85
	nop                                              ; $5f7f: $00
	ld   [$0020], sp                                 ; $5f80: $08 $20 $00
	ld   b, e                                        ; $5f83: $43
	nop                                              ; $5f84: $00
	add  a                                           ; $5f85: $87
	nop                                              ; $5f86: $00
	jr   nz, jr_079_5f89                             ; $5f87: $20 $00

jr_079_5f89:
	call nz, $0086                                   ; $5f89: $c4 $86 $00
	add  l                                           ; $5f8c: $85
	inc  bc                                          ; $5f8d: $03
	nop                                              ; $5f8e: $00
	inc  c                                           ; $5f8f: $0c
	add  e                                           ; $5f90: $83
	nop                                              ; $5f91: $00
	adc  b                                           ; $5f92: $88
	rrca                                             ; $5f93: $0f
	nop                                              ; $5f94: $00
	ldh  a, [$83]                                    ; $5f95: $f0 $83
	nop                                              ; $5f97: $00
	adc  b                                           ; $5f98: $88
	ld   [$009e], sp                                 ; $5f99: $08 $9e $00
	add  d                                           ; $5f9c: $82
	ccf                                              ; $5f9d: $3f
	add  b                                           ; $5f9e: $80
	inc  bc                                          ; $5f9f: $03
	adc  b                                           ; $5fa0: $88
	nop                                              ; $5fa1: $00
	add  h                                           ; $5fa2: $84
	rst  $38                                         ; $5fa3: $ff
	add  b                                           ; $5fa4: $80
	ccf                                              ; $5fa5: $3f
	add  b                                           ; $5fa6: $80
	ld   bc, $0084                                   ; $5fa7: $01 $84 $00
	add  b                                           ; $5faa: $80
	ldh  [$80], a                                    ; $5fab: $e0 $80
	cp   $84                                         ; $5fad: $fe $84
	rst  $38                                         ; $5faf: $ff
	add  b                                           ; $5fb0: $80
	rra                                              ; $5fb1: $1f
	add  b                                           ; $5fb2: $80
	ld   bc, $0084                                   ; $5fb3: $01 $84 $00
	add  b                                           ; $5fb6: $80
	ret  nz                                          ; $5fb7: $c0

	add  b                                           ; $5fb8: $80
	db   $fc                                         ; $5fb9: $fc
	add  h                                           ; $5fba: $84
	rst  $38                                         ; $5fbb: $ff
	add  b                                           ; $5fbc: $80
	rrca                                             ; $5fbd: $0f
	add  [hl]                                        ; $5fbe: $86
	nop                                              ; $5fbf: $00
	add  d                                           ; $5fc0: $82
	add  b                                           ; $5fc1: $80
	add  d                                           ; $5fc2: $82
	add  e                                           ; $5fc3: $83
	adc  d                                           ; $5fc4: $8a
	nop                                              ; $5fc5: $00
	add  b                                           ; $5fc6: $80
	add  b                                           ; $5fc7: $80
	add  b                                           ; $5fc8: $80
	ld   hl, sp-$80                                  ; $5fc9: $f8 $80
	inc  bc                                          ; $5fcb: $03
	adc  h                                           ; $5fcc: $8c
	nop                                              ; $5fcd: $00
	add  d                                           ; $5fce: $82
	rst  $38                                         ; $5fcf: $ff
	add  b                                           ; $5fd0: $80
	rra                                              ; $5fd1: $1f
	add  b                                           ; $5fd2: $80
	inc  bc                                          ; $5fd3: $03
	add  [hl]                                        ; $5fd4: $86
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	rst  $38                                         ; $5fd7: $ff
	add  b                                           ; $5fd8: $80
	ret  nz                                          ; $5fd9: $c0

jr_079_5fda:
	add  b                                           ; $5fda: $80
	ldh  a, [$80]                                    ; $5fdb: $f0 $80
	cp   $00                                         ; $5fdd: $fe $00
	rst  $38                                         ; $5fdf: $ff
	add  b                                           ; $5fe0: $80
	ld   a, a                                        ; $5fe1: $7f
	add  b                                           ; $5fe2: $80
	rrca                                             ; $5fe3: $0f
	add  b                                           ; $5fe4: $80
	inc  bc                                          ; $5fe5: $03
	add  b                                           ; $5fe6: $80
	nop                                              ; $5fe7: $00
	ld   b, $fc                                      ; $5fe8: $06 $fc
	nop                                              ; $5fea: $00
	dec  e                                           ; $5feb: $1d
	nop                                              ; $5fec: $00
	ld   [de], a                                     ; $5fed: $12
	nop                                              ; $5fee: $00
	inc  c                                           ; $5fef: $0c
	add  b                                           ; $5ff0: $80
	add  b                                           ; $5ff1: $80
	add  b                                           ; $5ff2: $80
	ldh  a, [$80]                                    ; $5ff3: $f0 $80
	db   $fc                                         ; $5ff5: $fc
	nop                                              ; $5ff6: $00
	rst  $38                                         ; $5ff7: $ff
	add  b                                           ; $5ff8: $80
	ld   a, a                                        ; $5ff9: $7f
	nop                                              ; $5ffa: $00
	or   a                                           ; $5ffb: $b7
	add  c                                           ; $5ffc: $81
	nop                                              ; $5ffd: $00
	ld   a, [bc]                                     ; $5ffe: $0a
	ld   a, $00                                      ; $5fff: $3e $00
	ld   e, h                                        ; $6001: $5c
	nop                                              ; $6002: $00
	jr   nz, jr_079_6005                             ; $6003: $20 $00

jr_079_6005:
	rrca                                             ; $6005: $0f
	nop                                              ; $6006: $00
	inc  b                                           ; $6007: $04
	add  b                                           ; $6008: $80
	add  c                                           ; $6009: $81
	add  b                                           ; $600a: $80
	ldh  [$81], a                                    ; $600b: $e0 $81
	inc  bc                                          ; $600d: $03
	ld   [$0343], sp                                 ; $600e: $08 $43 $03
	ld   b, e                                        ; $6011: $43
	inc  bc                                          ; $6012: $03
	and  e                                           ; $6013: $a3
	inc  bc                                          ; $6014: $03
	sbc  e                                           ; $6015: $9b
	inc  bc                                          ; $6016: $03
	ld   a, e                                        ; $6017: $7b
	add  c                                           ; $6018: $81
	inc  bc                                          ; $6019: $03
	nop                                              ; $601a: $00
	ld   b, e                                        ; $601b: $43
	adc  c                                           ; $601c: $89
	rrca                                             ; $601d: $0f
	inc  b                                           ; $601e: $04
	ld   bc, $0e0f                                   ; $601f: $01 $0f $0e
	rrca                                             ; $6022: $0f
	rst  $30                                         ; $6023: $f7
	adc  c                                           ; $6024: $89
	ld   [$3701], sp                                 ; $6025: $08 $01 $37
	ccf                                              ; $6028: $3f
	add  b                                           ; $6029: $80

jr_079_602a:
	jr   c, jr_079_602c                              ; $602a: $38 $00

jr_079_602c:
	ld   [$0089], sp                                 ; $602c: $08 $89 $00
	add  b                                           ; $602f: $80
	add  b                                           ; $6030: $80
	add  d                                           ; $6031: $82
	nop                                              ; $6032: $00
	adc  h                                           ; $6033: $8c
	add  b                                           ; $6034: $80
	adc  d                                           ; $6035: $8a
	nop                                              ; $6036: $00
	add  b                                           ; $6037: $80
	ld   a, [de]                                     ; $6038: $1a
	add  b                                           ; $6039: $80
	dec  d                                           ; $603a: $15
	adc  h                                           ; $603b: $8c
	nop                                              ; $603c: $00
	add  b                                           ; $603d: $80
	ret  c                                           ; $603e: $d8

	sbc  d                                           ; $603f: $9a
	nop                                              ; $6040: $00
	add  b                                           ; $6041: $80
	ld   bc, $0f80                                   ; $6042: $01 $80 $0f
	add  b                                           ; $6045: $80
	add  e                                           ; $6046: $83
	add  b                                           ; $6047: $80
	inc  bc                                          ; $6048: $03
	add  [hl]                                        ; $6049: $86
	nop                                              ; $604a: $00
	add  d                                           ; $604b: $82
	sub  b                                           ; $604c: $90
	add  d                                           ; $604d: $82
	rst  $38                                         ; $604e: $ff
	add  b                                           ; $604f: $80
	ld   a, a                                        ; $6050: $7f
	add  b                                           ; $6051: $80
	rlca                                             ; $6052: $07
	adc  b                                           ; $6053: $88
	nop                                              ; $6054: $00
	add  h                                           ; $6055: $84
	ldh  a, [$80]                                    ; $6056: $f0 $80
	jr   nc, jr_079_5fda                             ; $6058: $30 $80

	inc  bc                                          ; $605a: $03
	add  b                                           ; $605b: $80
	ld   b, $80                                      ; $605c: $06 $80
	ld   c, $84                                      ; $605e: $0e $84
	nop                                              ; $6060: $00
	add  b                                           ; $6061: $80
	ld   [hl], b                                     ; $6062: $70
	add  d                                           ; $6063: $82
	ld   a, a                                        ; $6064: $7f
	add  b                                           ; $6065: $80
	rra                                              ; $6066: $1f
	add  b                                           ; $6067: $80

jr_079_6068:
	ld   bc, $0088                                   ; $6068: $01 $88 $00
	add  b                                           ; $606b: $80
	ldh  [$80], a                                    ; $606c: $e0 $80
	ld   hl, sp-$80                                  ; $606e: $f8 $80
	ld   sp, hl                                      ; $6070: $f9
	add  b                                           ; $6071: $80
	rrca                                             ; $6072: $0f
	add  b                                           ; $6073: $80
	ld   bc, $0088                                   ; $6074: $01 $88 $00
	add  b                                           ; $6077: $80
	ret  nz                                          ; $6078: $c0

	nop                                              ; $6079: $00
	rst  $38                                         ; $607a: $ff
	add  b                                           ; $607b: $80
	ld   hl, sp+$00                                  ; $607c: $f8 $00
	rst  $38                                         ; $607e: $ff
	add  b                                           ; $607f: $80
	ccf                                              ; $6080: $3f
	add  b                                           ; $6081: $80
	rlca                                             ; $6082: $07
	add  b                                           ; $6083: $80
	ld   bc, $0084                                   ; $6084: $01 $84 $00
	nop                                              ; $6087: $00
	rst  $38                                         ; $6088: $ff
	add  d                                           ; $6089: $82
	inc  bc                                          ; $608a: $03

jr_079_608b:
	add  b                                           ; $608b: $80
	jp   $fb80                                       ; $608c: $c3 $80 $fb


	nop                                              ; $608f: $00
	rst  $38                                         ; $6090: $ff
	add  b                                           ; $6091: $80
	ccf                                              ; $6092: $3f
	add  b                                           ; $6093: $80
	rlca                                             ; $6094: $07
	add  b                                           ; $6095: $80
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	ldh  a, [$8b]                                    ; $6098: $f0 $8b
	rrca                                             ; $609a: $0f
	add  b                                           ; $609b: $80
	ld   a, [bc]                                     ; $609c: $0a
	nop                                              ; $609d: $00
	ret  z                                           ; $609e: $c8

	add  c                                           ; $609f: $81
	ccf                                              ; $60a0: $3f
	add  b                                           ; $60a1: $80
	jr   c, @-$7c                                    ; $60a2: $38 $82

	ccf                                              ; $60a4: $3f
	add  b                                           ; $60a5: $80
	jr   c, jr_079_602a                              ; $60a6: $38 $82

	ccf                                              ; $60a8: $3f
	nop                                              ; $60a9: $00
	push af                                          ; $60aa: $f5
	add  c                                           ; $60ab: $81
	db   $fd                                         ; $60ac: $fd
	add  b                                           ; $60ad: $80
	ld   bc, $fd82                                   ; $60ae: $01 $82 $fd
	add  b                                           ; $60b1: $80
	ld   bc, $fd82                                   ; $60b2: $01 $82 $fd

jr_079_60b5:
	ld   bc, $f878                                   ; $60b5: $01 $78 $f8
	add  b                                           ; $60b8: $80
	add  b                                           ; $60b9: $80
	add  b                                           ; $60ba: $80
	cp   $80                                         ; $60bb: $fe $80
	add  b                                           ; $60bd: $80
	add  d                                           ; $60be: $82
	cp   $80                                         ; $60bf: $fe $80
	add  b                                           ; $60c1: $80
	add  b                                           ; $60c2: $80
	cp   $01                                         ; $60c3: $fe $01
	adc  [hl]                                        ; $60c5: $8e
	ld   c, $80                                      ; $60c6: $0e $80
	rst  $38                                         ; $60c8: $ff
	add  b                                           ; $60c9: $80
	xor  $80                                         ; $60ca: $ee $80
	push af                                          ; $60cc: $f5
	add  b                                           ; $60cd: $80
	ei                                               ; $60ce: $fb
	add  b                                           ; $60cf: $80
	push af                                          ; $60d0: $f5
	add  b                                           ; $60d1: $80
	xor  $80                                         ; $60d2: $ee $80
	rst  $38                                         ; $60d4: $ff
	add  b                                           ; $60d5: $80
	cp   b                                           ; $60d6: $b8
	add  b                                           ; $60d7: $80
	ld   a, b                                        ; $60d8: $78
	add  b                                           ; $60d9: $80
	cp   b                                           ; $60da: $b8
	add  b                                           ; $60db: $80
	ret  nc                                          ; $60dc: $d0

	add  b                                           ; $60dd: $80
	add  sp, -$80                                    ; $60de: $e8 $80
	ret  nc                                          ; $60e0: $d0

	add  b                                           ; $60e1: $80
	cp   b                                           ; $60e2: $b8
	add  b                                           ; $60e3: $80
	ld   a, b                                        ; $60e4: $78
	add  b                                           ; $60e5: $80
	jr   nc, jr_079_6068                             ; $60e6: $30 $80

	dec  sp                                          ; $60e8: $3b
	add  b                                           ; $60e9: $80
	dec  [hl]                                        ; $60ea: $35
	add  b                                           ; $60eb: $80
	ld   l, $80                                      ; $60ec: $2e $80
	rra                                              ; $60ee: $1f
	add  b                                           ; $60ef: $80
	ld   l, $80                                      ; $60f0: $2e $80
	dec  [hl]                                        ; $60f2: $35
	add  b                                           ; $60f3: $80
	dec  sp                                          ; $60f4: $3b
	add  b                                           ; $60f5: $80
	rrca                                             ; $60f6: $0f
	add  d                                           ; $60f7: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60f8: $cf
	add  b                                           ; $60f9: $80
	adc  a                                           ; $60fa: $8f
	add  b                                           ; $60fb: $80
	ld   c, a                                        ; $60fc: $4f
	add  b                                           ; $60fd: $80
	adc  a                                           ; $60fe: $8f
	add  d                                           ; $60ff: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6100: $cf
	add  d                                           ; $6101: $82
	sub  b                                           ; $6102: $90
	add  h                                           ; $6103: $84
	jr   nc, @+$03                                   ; $6104: $30 $01

	jr   z, jr_079_6140                              ; $6106: $28 $38

	add  b                                           ; $6108: $80

jr_079_6109:
	jr   nc, jr_079_608b                             ; $6109: $30 $80

	cp   a                                           ; $610b: $bf
	nop                                              ; $610c: $00
	db   $10                                         ; $610d: $10
	add  c                                           ; $610e: $81
	nop                                              ; $610f: $00
	add  [hl]                                        ; $6110: $86
	db   $10                                         ; $6111: $10
	ld   bc, $3828                                   ; $6112: $01 $28 $38
	add  b                                           ; $6115: $80
	or   b                                           ; $6116: $b0
	dec  b                                           ; $6117: $05
	ld   [hl], b                                     ; $6118: $70
	ld   h, b                                        ; $6119: $60
	ld   h, h                                        ; $611a: $64
	ld   h, l                                        ; $611b: $65
	ld   l, c                                        ; $611c: $69
	ld   l, l                                        ; $611d: $6d
	add  a                                           ; $611e: $87
	ld   [hl], l                                     ; $611f: $75
	ld   [bc], a                                     ; $6120: $02
	ld   [hl], d                                     ; $6121: $72
	ld   [bc], a                                     ; $6122: $02
	nop                                              ; $6123: $00
	add  b                                           ; $6124: $80
	ret  nz                                          ; $6125: $c0

	ld   bc, $1fdf                                   ; $6126: $01 $df $1f
	add  d                                           ; $6129: $82
	nop                                              ; $612a: $00
	add  b                                           ; $612b: $80
	ld   bc, $5f80                                   ; $612c: $01 $80 $5f
	inc  bc                                          ; $612f: $03
	rst  $38                                         ; $6130: $ff
	cp   a                                           ; $6131: $bf
	sbc  b                                           ; $6132: $98
	jr   jr_079_60b5                                 ; $6133: $18 $80

	ld   bc, $0080                                   ; $6135: $01 $80 $00
	add  b                                           ; $6138: $80
	ret  nz                                          ; $6139: $c0

	add  b                                           ; $613a: $80
	nop                                              ; $613b: $00
	add  b                                           ; $613c: $80
	ret  nz                                          ; $613d: $c0

	add  d                                           ; $613e: $82
	pop  bc                                          ; $613f: $c1

jr_079_6140:
	add  b                                           ; $6140: $80
	inc  bc                                          ; $6141: $03
	ld   e, $ff                                      ; $6142: $1e $ff
	ret  nz                                          ; $6144: $c0

	inc  c                                           ; $6145: $0c
	nop                                              ; $6146: $00
	inc  e                                           ; $6147: $1c
	nop                                              ; $6148: $00
	ld   bc, $1c00                                   ; $6149: $01 $00 $1c
	nop                                              ; $614c: $00
	call $d2c0                                       ; $614d: $cd $c0 $d2
	ret  nz                                          ; $6150: $c0

	cp   d                                           ; $6151: $ba
	ldh  [$98], a                                    ; $6152: $e0 $98
	nop                                              ; $6154: $00
	jr   z, jr_079_6157                              ; $6155: $28 $00

jr_079_6157:
	xor  [hl]                                        ; $6157: $ae
	nop                                              ; $6158: $00
	jp   nz, $8200                                   ; $6159: $c2 $00 $82

	nop                                              ; $615c: $00
	or   $00                                         ; $615d: $f6 $00
	inc  [hl]                                        ; $615f: $34
	nop                                              ; $6160: $00
	db   $eb                                         ; $6161: $eb
	add  l                                           ; $6162: $85
	nop                                              ; $6163: $00
	add  b                                           ; $6164: $80
	ret  nz                                          ; $6165: $c0

	add  b                                           ; $6166: $80
	ld   hl, sp-$80                                  ; $6167: $f8 $80
	ld   e, $80                                      ; $6169: $1e $80
	nop                                              ; $616b: $00
	ld   bc, $06f9                                   ; $616c: $01 $f9 $06
	add  b                                           ; $616f: $80
	ld   a, [bc]                                     ; $6170: $0a
	add  b                                           ; $6171: $80
	dec  b                                           ; $6172: $05
	add  b                                           ; $6173: $80
	ld   b, $80                                      ; $6174: $06 $80
	dec  bc                                          ; $6176: $0b
	add  b                                           ; $6177: $80
	inc  bc                                          ; $6178: $03

jr_079_6179:
	add  b                                           ; $6179: $80
	inc  c                                           ; $617a: $0c
	add  b                                           ; $617b: $80
	add  hl, bc                                      ; $617c: $09
	ld   bc, $38cf                                   ; $617d: $01 $cf $38
	add  d                                           ; $6180: $82
	ccf                                              ; $6181: $3f
	add  b                                           ; $6182: $80
	jr   c, @-$7c                                    ; $6183: $38 $82

	ccf                                              ; $6185: $3f
	add  b                                           ; $6186: $80
	jr   c, jr_079_6109                              ; $6187: $38 $80

	ccf                                              ; $6189: $3f
	ld   bc, $0109                                   ; $618a: $01 $09 $01
	add  d                                           ; $618d: $82
	db   $fd                                         ; $618e: $fd
	add  b                                           ; $618f: $80
	ld   bc, $fd82                                   ; $6190: $01 $82 $fd
	add  b                                           ; $6193: $80
	ld   bc, $fd80                                   ; $6194: $01 $80 $fd
	ld   bc, $fe7e                                   ; $6197: $01 $7e $fe
	add  b                                           ; $619a: $80
	add  b                                           ; $619b: $80
	add  d                                           ; $619c: $82
	cp   $80                                         ; $619d: $fe $80
	add  b                                           ; $619f: $80
	add  d                                           ; $61a0: $82
	cp   $80                                         ; $61a1: $fe $80
	add  b                                           ; $61a3: $80
	ld   bc, $ee6e                                   ; $61a4: $01 $6e $ee
	add  b                                           ; $61a7: $80
	push af                                          ; $61a8: $f5
	add  b                                           ; $61a9: $80
	ei                                               ; $61aa: $fb
	add  b                                           ; $61ab: $80
	push af                                          ; $61ac: $f5
	add  b                                           ; $61ad: $80
	xor  $80                                         ; $61ae: $ee $80
	rst  $38                                         ; $61b0: $ff
	add  b                                           ; $61b1: $80
	xor  $03                                         ; $61b2: $ee $03
	rst  $38                                         ; $61b4: $ff
	ld   [$b8ad], a                                  ; $61b5: $ea $ad $b8
	add  b                                           ; $61b8: $80
	ret  nc                                          ; $61b9: $d0

	add  b                                           ; $61ba: $80
	add  sp, -$80                                    ; $61bb: $e8 $80
	ret  nc                                          ; $61bd: $d0

	add  b                                           ; $61be: $80
	cp   b                                           ; $61bf: $b8
	add  b                                           ; $61c0: $80
	ld   a, b                                        ; $61c1: $78
	add  b                                           ; $61c2: $80
	cp   b                                           ; $61c3: $b8
	inc  bc                                          ; $61c4: $03
	ld   hl, sp+$28                                  ; $61c5: $f8 $28
	push hl                                          ; $61c7: $e5
	dec  [hl]                                        ; $61c8: $35
	add  b                                           ; $61c9: $80
	ld   l, $80                                      ; $61ca: $2e $80
	rra                                              ; $61cc: $1f
	add  b                                           ; $61cd: $80
	ld   l, $80                                      ; $61ce: $2e $80
	dec  [hl]                                        ; $61d0: $35
	add  b                                           ; $61d1: $80
	dec  sp                                          ; $61d2: $3b
	add  b                                           ; $61d3: $80
	dec  [hl]                                        ; $61d4: $35
	add  b                                           ; $61d5: $80
	ld   l, $80                                      ; $61d6: $2e $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d8: $cf
	add  b                                           ; $61d9: $80
	adc  a                                           ; $61da: $8f
	add  b                                           ; $61db: $80
	ld   c, a                                        ; $61dc: $4f
	add  b                                           ; $61dd: $80
	adc  a                                           ; $61de: $8f
	nop                                              ; $61df: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e0: $cf
	add  b                                           ; $61e1: $80
	adc  $80                                         ; $61e2: $ce $80
	call z, $c804                                    ; $61e4: $cc $04 $c8
	adc  b                                           ; $61e7: $88
	add  b                                           ; $61e8: $80
	xor  a                                           ; $61e9: $af
	or   b                                           ; $61ea: $b0
	add  b                                           ; $61eb: $80
	cp   a                                           ; $61ec: $bf
	add  b                                           ; $61ed: $80
	or   b                                           ; $61ee: $b0
	ld   bc, $3fbf                                   ; $61ef: $01 $bf $3f
	add  b                                           ; $61f2: $80
	jr   nc, @-$7e                                   ; $61f3: $30 $80

	ccf                                              ; $61f5: $3f
	add  b                                           ; $61f6: $80
	jr   nc, jr_079_6179                             ; $61f7: $30 $80

	ccf                                              ; $61f9: $3f
	ld   bc, $3fbf                                   ; $61fa: $01 $bf $3f
	add  b                                           ; $61fd: $80
	or   b                                           ; $61fe: $b0
	add  b                                           ; $61ff: $80
	ccf                                              ; $6200: $3f
	add  b                                           ; $6201: $80
	or   b                                           ; $6202: $b0
	add  b                                           ; $6203: $80
	ccf                                              ; $6204: $3f
	add  b                                           ; $6205: $80

Call_079_6206:
	or   b                                           ; $6206: $b0
	add  b                                           ; $6207: $80
	ccf                                              ; $6208: $3f
	add  b                                           ; $6209: $80
	or   b                                           ; $620a: $b0
	nop                                              ; $620b: $00
	ld   b, b                                        ; $620c: $40
	add  e                                           ; $620d: $83
	ld   [hl], b                                     ; $620e: $70
	nop                                              ; $620f: $00
	ld   h, [hl]                                     ; $6210: $66
	add  c                                           ; $6211: $81
	halt                                             ; $6212: $76
	add  b                                           ; $6213: $80
	ld   [hl], h                                     ; $6214: $74
	nop                                              ; $6215: $00
	ld   b, h                                        ; $6216: $44
	add  c                                           ; $6217: $81
	ld   d, h                                        ; $6218: $54
	nop                                              ; $6219: $00
	rra                                              ; $621a: $1f
	adc  l                                           ; $621b: $8d
	ccf                                              ; $621c: $3f
	add  b                                           ; $621d: $80
	pop  bc                                          ; $621e: $c1
	add  b                                           ; $621f: $80
	rst  ToBoot                                         ; $6220: $c7
	nop                                              ; $6221: $00
	add  $83                                         ; $6222: $c6 $83
	rst  ToBoot                                         ; $6224: $c7
	daa                                              ; $6225: $27
	add  $c7                                         ; $6226: $c6 $c7
	add  a                                           ; $6228: $87
	rst  ToBoot                                         ; $6229: $c7
	ld   b, a                                        ; $622a: $47
	rst  ToBoot                                         ; $622b: $c7
	dec  h                                           ; $622c: $25
	ret  nz                                          ; $622d: $c0

	call z, $c4c0                                    ; $622e: $cc $c0 $c4
	ret  nz                                          ; $6231: $c0

	ld   l, $d3                                      ; $6232: $2e $d3
	sbc  $df                                         ; $6234: $de $df
	jp   nc, $ded3                                   ; $6236: $d2 $d3 $de

	rst  JumpTable                                         ; $6239: $df
	jp   nc, $f9d3                                   ; $623a: $d2 $d3 $f9

	nop                                              ; $623d: $00
	ld   [bc], a                                     ; $623e: $02
	nop                                              ; $623f: $00
	ret  nz                                          ; $6240: $c0

	dec  de                                          ; $6241: $1b
	and  e                                           ; $6242: $a3
	db   $db                                         ; $6243: $db
	inc  bc                                          ; $6244: $03
	db   $db                                         ; $6245: $db
	inc  bc                                          ; $6246: $03
	db   $db                                         ; $6247: $db
	inc  bc                                          ; $6248: $03
	db   $db                                         ; $6249: $db
	inc  bc                                          ; $624a: $03
	db   $db                                         ; $624b: $db
	adc  b                                           ; $624c: $88
	nop                                              ; $624d: $00
	add  b                                           ; $624e: $80
	ld   b, b                                        ; $624f: $40
	add  d                                           ; $6250: $82
	ld   b, h                                        ; $6251: $44
	inc  bc                                          ; $6252: $03

jr_079_6253:
	inc  b                                           ; $6253: $04
	ld   b, h                                        ; $6254: $44
	ld   a, e                                        ; $6255: $7b
	ld   a, a                                        ; $6256: $7f
	add  b                                           ; $6257: $80
	ld   c, a                                        ; $6258: $4f
	add  b                                           ; $6259: $80
	ld   a, a                                        ; $625a: $7f
	ld   bc, $0eb5                                   ; $625b: $01 $b5 $0e
	add  b                                           ; $625e: $80
	ld   bc, $0680                                   ; $625f: $01 $80 $06
	add  b                                           ; $6262: $80
	ld   [bc], a                                     ; $6263: $02

jr_079_6264:
	add  b                                           ; $6264: $80
	inc  bc                                          ; $6265: $03
	add  b                                           ; $6266: $80
	ld   a, [bc]                                     ; $6267: $0a

jr_079_6268:
	add  b                                           ; $6268: $80
	inc  b                                           ; $6269: $04
	add  b                                           ; $626a: $80
	ld   [bc], a                                     ; $626b: $02
	ld   bc, $3fc8                                   ; $626c: $01 $c8 $3f
	add  b                                           ; $626f: $80
	jr   c, @-$7c                                    ; $6270: $38 $82

	ccf                                              ; $6272: $3f
	add  b                                           ; $6273: $80
	jr   c, @-$7c                                    ; $6274: $38 $82

	ccf                                              ; $6276: $3f
	add  b                                           ; $6277: $80
	jr   c, jr_079_627b                              ; $6278: $38 $01

	push af                                          ; $627a: $f5

jr_079_627b:
	db   $fd                                         ; $627b: $fd
	add  b                                           ; $627c: $80
	ld   bc, $fd82                                   ; $627d: $01 $82 $fd
	add  b                                           ; $6280: $80
	ld   bc, $fd82                                   ; $6281: $01 $82 $fd
	add  b                                           ; $6284: $80
	ld   bc, $7e00                                   ; $6285: $01 $00 $7e
	add  c                                           ; $6288: $81
	cp   $80                                         ; $6289: $fe $80
	add  b                                           ; $628b: $80
	add  b                                           ; $628c: $80
	cp   $80                                         ; $628d: $fe $80
	add  b                                           ; $628f: $80
	add  b                                           ; $6290: $80
	cp   $80                                         ; $6291: $fe $80
	add  b                                           ; $6293: $80

jr_079_6294:
	add  b                                           ; $6294: $80
	cp   $00                                         ; $6295: $fe $00
	ld   a, a                                        ; $6297: $7f
	add  b                                           ; $6298: $80
	db   $e4                                         ; $6299: $e4
	add  b                                           ; $629a: $80
	ld   [$f180], a                                  ; $629b: $ea $80 $f1
	add  b                                           ; $629e: $80
	ldh  [rTAC], a                                   ; $629f: $e0 $07
	pop  af                                          ; $62a1: $f1
	rst  $30                                         ; $62a2: $f7
	xor  $ef                                         ; $62a3: $ee $ef
	push hl                                          ; $62a5: $e5
	db   $fd                                         ; $62a6: $fd
	ld   a, [$80e0]                                  ; $62a7: $fa $e0 $80
	ld   [de], a                                     ; $62aa: $12
	add  b                                           ; $62ab: $80
	ld   a, [hl+]                                    ; $62ac: $2a
	add  b                                           ; $62ad: $80
	ld   b, d                                        ; $62ae: $42
	add  b                                           ; $62af: $80
	add  d                                           ; $62b0: $82
	add  b                                           ; $62b1: $80
	ld   b, d                                        ; $62b2: $42
	add  b                                           ; $62b3: $80
	ld   a, [hl+]                                    ; $62b4: $2a
	add  b                                           ; $62b5: $80
	ld   [de], a                                     ; $62b6: $12
	ld   bc, $2f2a                                   ; $62b7: $01 $2a $2f
	add  b                                           ; $62ba: $80
	ldh  [$80], a                                    ; $62bb: $e0 $80
	pop  de                                          ; $62bd: $d1
	add  b                                           ; $62be: $80
	jp   z, $c480                                    ; $62bf: $ca $80 $c4

	add  b                                           ; $62c2: $80
	jp   z, $d101                                    ; $62c3: $ca $01 $d1

	ret  nc                                          ; $62c6: $d0

	add  b                                           ; $62c7: $80
	pop  hl                                          ; $62c8: $e1
	ld   bc, $d1d0                                   ; $62c9: $01 $d0 $d1
	add  b                                           ; $62cc: $80
	or   b                                           ; $62cd: $b0
	add  b                                           ; $62ce: $80
	ld   [hl], b                                     ; $62cf: $70
	add  e                                           ; $62d0: $83
	jr   nc, jr_079_6253                             ; $62d1: $30 $80

	ld   [hl], b                                     ; $62d3: $70
	dec  b                                           ; $62d4: $05
	db   $ec                                         ; $62d5: $ec
	db   $fc                                         ; $62d6: $fc
	sbc  $ae                                         ; $62d7: $de $ae
	rrca                                             ; $62d9: $0f
	jr   nc, @-$7e                                   ; $62da: $30 $80

	ccf                                              ; $62dc: $3f
	add  b                                           ; $62dd: $80
	jr   nc, @-$7e                                   ; $62de: $30 $80

	ccf                                              ; $62e0: $3f
	add  b                                           ; $62e1: $80
	jr   nc, jr_079_6264                             ; $62e2: $30 $80

	ccf                                              ; $62e4: $3f
	add  b                                           ; $62e5: $80

jr_079_62e6:
	jr   nc, jr_079_6268                             ; $62e6: $30 $80

	ccf                                              ; $62e8: $3f
	ld   bc, $3fbf                                   ; $62e9: $01 $bf $3f
	add  b                                           ; $62ec: $80
	or   b                                           ; $62ed: $b0
	add  b                                           ; $62ee: $80
	ccf                                              ; $62ef: $3f
	add  b                                           ; $62f0: $80
	or   b                                           ; $62f1: $b0
	add  b                                           ; $62f2: $80
	ccf                                              ; $62f3: $3f
	add  b                                           ; $62f4: $80
	or   b                                           ; $62f5: $b0
	add  b                                           ; $62f6: $80
	ccf                                              ; $62f7: $3f
	add  b                                           ; $62f8: $80
	or   b                                           ; $62f9: $b0
	nop                                              ; $62fa: $00
	ld   h, [hl]                                     ; $62fb: $66
	add  h                                           ; $62fc: $84
	ld   d, [hl]                                     ; $62fd: $56
	add  h                                           ; $62fe: $84
	ld   b, [hl]                                     ; $62ff: $46
	add  c                                           ; $6300: $81
	ld   d, [hl]                                     ; $6301: $56
	dec  bc                                          ; $6302: $0b
	ld   e, $3f                                      ; $6303: $1e $3f
	dec  a                                           ; $6305: $3d
	ccf                                              ; $6306: $3f
	dec  sp                                          ; $6307: $3b
	ccf                                              ; $6308: $3f
	scf                                              ; $6309: $37
	ccf                                              ; $630a: $3f
	cpl                                              ; $630b: $2f
	ccf                                              ; $630c: $3f
	rra                                              ; $630d: $1f
	ccf                                              ; $630e: $3f
	add  d                                           ; $630f: $82
	rst  $38                                         ; $6310: $ff
	nop                                              ; $6311: $00
	jr   c, jr_079_6294                              ; $6312: $38 $80

	rst  ToBoot                                         ; $6314: $c7
	add  h                                           ; $6315: $84
	add  $85                                         ; $6316: $c6 $85
	rst  ToBoot                                         ; $6318: $c7
	dec  b                                           ; $6319: $05
	ld   c, $1f                                      ; $631a: $0e $1f
	ld   [de], a                                     ; $631c: $12
	inc  de                                          ; $631d: $13
	ld   e, $1f                                      ; $631e: $1e $1f
	add  b                                           ; $6320: $80
	inc  de                                          ; $6321: $13
	add  b                                           ; $6322: $80
	ld   e, $80                                      ; $6323: $1e $80
	inc  de                                          ; $6325: $13
	add  b                                           ; $6326: $80
	ld   e, $80                                      ; $6327: $1e $80
	inc  de                                          ; $6329: $13
	dec  b                                           ; $632a: $05
	ld   e, d                                        ; $632b: $5a
	jp   c, $d802                                    ; $632c: $da $02 $d8

	db   $fc                                         ; $632f: $fc
	xor  h                                           ; $6330: $ac
	add  b                                           ; $6331: $80
	ld   [hl], h                                     ; $6332: $74
	add  b                                           ; $6333: $80
	xor  h                                           ; $6334: $ac
	add  b                                           ; $6335: $80
	ld   [hl], h                                     ; $6336: $74
	add  b                                           ; $6337: $80
	xor  h                                           ; $6338: $ac
	add  b                                           ; $6339: $80
	ld   [hl], h                                     ; $633a: $74
	ld   bc, $4fd0                                   ; $633b: $01 $d0 $4f
	add  b                                           ; $633e: $80
	ld   a, a                                        ; $633f: $7f
	add  b                                           ; $6340: $80
	ld   c, e                                        ; $6341: $4b
	add  b                                           ; $6342: $80
	ld   a, e                                        ; $6343: $7b
	add  b                                           ; $6344: $80
	ld   c, e                                        ; $6345: $4b
	add  b                                           ; $6346: $80
	ld   a, e                                        ; $6347: $7b
	add  b                                           ; $6348: $80
	ld   c, e                                        ; $6349: $4b
	add  b                                           ; $634a: $80
	ld   a, e                                        ; $634b: $7b
	ld   bc, $08b3                                   ; $634c: $01 $b3 $08
	add  b                                           ; $634f: $80
	ld   a, [bc]                                     ; $6350: $0a
	add  b                                           ; $6351: $80
	ld   bc, $0480                                   ; $6352: $01 $80 $04
	add  b                                           ; $6355: $80
	ld   [bc], a                                     ; $6356: $02
	add  b                                           ; $6357: $80
	nop                                              ; $6358: $00
	add  b                                           ; $6359: $80
	add  hl, bc                                      ; $635a: $09
	add  b                                           ; $635b: $80
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	ret  z                                           ; $635e: $c8

	add  c                                           ; $635f: $81
	ccf                                              ; $6360: $3f
	add  b                                           ; $6361: $80
	jr   c, jr_079_62e6                              ; $6362: $38 $82

	ccf                                              ; $6364: $3f
	add  b                                           ; $6365: $80
	jr   c, @-$7c                                    ; $6366: $38 $82

	ccf                                              ; $6368: $3f
	nop                                              ; $6369: $00
	push af                                          ; $636a: $f5
	add  c                                           ; $636b: $81
	db   $fd                                         ; $636c: $fd
	add  b                                           ; $636d: $80
	ld   bc, $fd82                                   ; $636e: $01 $82 $fd
	add  b                                           ; $6371: $80
	ld   bc, $fd82                                   ; $6372: $01 $82 $fd
	ld   bc, $fe7e                                   ; $6375: $01 $7e $fe
	add  b                                           ; $6378: $80
	add  b                                           ; $6379: $80
	add  d                                           ; $637a: $82

jr_079_637b:
	cp   $80                                         ; $637b: $fe $80
	add  b                                           ; $637d: $80
	add  d                                           ; $637e: $82
	cp   $80                                         ; $637f: $fe $80
	add  b                                           ; $6381: $80
	nop                                              ; $6382: $00
	ld   h, b                                        ; $6383: $60
	add  b                                           ; $6384: $80
	pop  af                                          ; $6385: $f1
	add  b                                           ; $6386: $80
	db   $e3                                         ; $6387: $e3
	add  b                                           ; $6388: $80
	ldh  a, [$80]                                    ; $6389: $f0 $80
	db   $e3                                         ; $638b: $e3
	add  b                                           ; $638c: $80
	pop  hl                                          ; $638d: $e1
	ld   bc, $ede2                                   ; $638e: $01 $e2 $ed
	add  c                                           ; $6391: $81
	rst  $28                                         ; $6392: $ef
	inc  c                                           ; $6393: $0c
	ld   a, d                                        ; $6394: $7a
	jp   nz, wIsDoubleSpeed                                   ; $6395: $c2 $02 $c2

	ld   b, d                                        ; $6398: $42
	jp   nz, $ca42                                   ; $6399: $c2 $42 $ca

	ld   a, [bc]                                     ; $639c: $0a
	ldh  a, [c]                                      ; $639d: $f2
	or   d                                           ; $639e: $b2
	ld   [$812a], a                                  ; $639f: $ea $2a $81
	jp   nz, $c400                                   ; $63a2: $c2 $00 $c4

	add  b                                           ; $63a5: $80
	ret  z                                           ; $63a6: $c8

	ld   bc, $c2c6                                   ; $63a7: $01 $c6 $c2
	add  b                                           ; $63aa: $80
	res  0, b                                        ; $63ab: $cb $80
	ret  nc                                          ; $63ad: $d0

	ld   bc, $e0e6                                   ; $63ae: $01 $e6 $e0
	add  b                                           ; $63b1: $80
	ret  nc                                          ; $63b2: $d0

	add  b                                           ; $63b3: $80
	jp   z, $c403                                    ; $63b4: $ca $03 $c4

	add  hl, sp                                      ; $63b7: $39
	inc  d                                           ; $63b8: $14
	ld   d, $80                                      ; $63b9: $16 $80
	halt                                             ; $63bb: $76
	dec  b                                           ; $63bc: $05
	xor  [hl]                                        ; $63bd: $ae
	xor  a                                           ; $63be: $af
	adc  d                                           ; $63bf: $8a
	adc  e                                           ; $63c0: $8b

jr_079_63c1:
	nop                                              ; $63c1: $00
	cp   $83                                         ; $63c2: $fe $83
	db   $fc                                         ; $63c4: $fc
	ld   bc, $30a3                                   ; $63c5: $01 $a3 $30
	add  b                                           ; $63c8: $80
	ccf                                              ; $63c9: $3f
	add  b                                           ; $63ca: $80
	jr   nc, jr_079_63ce                             ; $63cb: $30 $01

	ld   e, a                                        ; $63cd: $5f

jr_079_63ce:
	rst  $38                                         ; $63ce: $ff
	add  b                                           ; $63cf: $80
	ldh  a, [$80]                                    ; $63d0: $f0 $80
	rst  $38                                         ; $63d2: $ff
	add  b                                           ; $63d3: $80
	ldh  a, [$80]                                    ; $63d4: $f0 $80
	rst  $38                                         ; $63d6: $ff
	ld   bc, $3f1f                                   ; $63d7: $01 $1f $3f
	add  b                                           ; $63da: $80
	or   b                                           ; $63db: $b0
	add  b                                           ; $63dc: $80
	ccf                                              ; $63dd: $3f
	add  b                                           ; $63de: $80
	or   b                                           ; $63df: $b0
	add  b                                           ; $63e0: $80
	ccf                                              ; $63e1: $3f
	add  b                                           ; $63e2: $80
	or   b                                           ; $63e3: $b0
	add  b                                           ; $63e4: $80
	ccf                                              ; $63e5: $3f
	ld   [bc], a                                     ; $63e6: $02
	or   b                                           ; $63e7: $b0
	cp   a                                           ; $63e8: $bf
	ld   l, c                                        ; $63e9: $69
	add  h                                           ; $63ea: $84
	ld   d, [hl]                                     ; $63eb: $56
	add  h                                           ; $63ec: $84
	ld   b, [hl]                                     ; $63ed: $46
	add  c                                           ; $63ee: $81
	ld   d, [hl]                                     ; $63ef: $56
	nop                                              ; $63f0: $00
	ldh  [$8d], a                                    ; $63f1: $e0 $8d
	rst  $38                                         ; $63f3: $ff
	nop                                              ; $63f4: $00
	jr   c, jr_079_637b                              ; $63f5: $38 $84

	add  $87                                         ; $63f7: $c6 $87
	rst  ToBoot                                         ; $63f9: $c7
	ld   bc, $1e0f                                   ; $63fa: $01 $0f $1e
	add  b                                           ; $63fd: $80
	inc  de                                          ; $63fe: $13
	add  b                                           ; $63ff: $80
	ld   e, $80                                      ; $6400: $1e $80
	ld   [de], a                                     ; $6402: $12
	add  b                                           ; $6403: $80
	rra                                              ; $6404: $1f
	rlca                                             ; $6405: $07
	ld   [de], a                                     ; $6406: $12
	ld   e, $12                                      ; $6407: $1e $12
	rra                                              ; $6409: $1f
	ld   de, $77c1                                   ; $640a: $11 $c1 $77
	xor  h                                           ; $640d: $ac
	add  b                                           ; $640e: $80
	ld   [hl], h                                     ; $640f: $74
	add  b                                           ; $6410: $80
	xor  h                                           ; $6411: $ac
	add  b                                           ; $6412: $80
	ld   [hl], h                                     ; $6413: $74
	ld   bc, $fcd8                                   ; $6414: $01 $d8 $fc
	add  b                                           ; $6417: $80
	inc  bc                                          ; $6418: $03
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	add  c                                           ; $641b: $81
	rst  $38                                         ; $641c: $ff
	ld   bc, $4b0f                                   ; $641d: $01 $0f $4b
	add  b                                           ; $6420: $80
	ld   a, e                                        ; $6421: $7b
	add  c                                           ; $6422: $81
	ld   c, e                                        ; $6423: $4b
	inc  b                                           ; $6424: $04
	ld   a, e                                        ; $6425: $7b
	ld   c, e                                        ; $6426: $4b
	ld   a, e                                        ; $6427: $7b
	ld   b, e                                        ; $6428: $43
	rlca                                             ; $6429: $07
	add  b                                           ; $642a: $80
	rst  $38                                         ; $642b: $ff
	add  b                                           ; $642c: $80
	ei                                               ; $642d: $fb
	nop                                              ; $642e: $00
	rst  $38                                         ; $642f: $ff
	adc  l                                           ; $6430: $8d
	nop                                              ; $6431: $00
	ld   bc, $38cf                                   ; $6432: $01 $cf $38
	add  d                                           ; $6435: $82
	ccf                                              ; $6436: $3f
	add  b                                           ; $6437: $80
	jr   c, @-$7e                                    ; $6438: $38 $80

	ccf                                              ; $643a: $3f
	ld   [bc], a                                     ; $643b: $02
	jr   c, jr_079_647d                              ; $643c: $38 $3f

	jr   c, jr_079_63c1                              ; $643e: $38 $81

	ccf                                              ; $6440: $3f
	ld   bc, $0109                                   ; $6441: $01 $09 $01
	add  d                                           ; $6444: $82
	db   $fd                                         ; $6445: $fd
	add  b                                           ; $6446: $80
	ld   bc, $fc04                                   ; $6447: $01 $04 $fc
	rst  $38                                         ; $644a: $ff
	nop                                              ; $644b: $00
	rst  $38                                         ; $644c: $ff
	inc  bc                                          ; $644d: $03
	add  c                                           ; $644e: $81
	rst  $38                                         ; $644f: $ff
	nop                                              ; $6450: $00
	ld   a, [hl]                                     ; $6451: $7e
	add  c                                           ; $6452: $81
	cp   $80                                         ; $6453: $fe $80
	add  b                                           ; $6455: $80
	add  b                                           ; $6456: $80
	cp   $02                                         ; $6457: $fe $02
	add  b                                           ; $6459: $80

jr_079_645a:
	cp   $00                                         ; $645a: $fe $00
	add  e                                           ; $645c: $83
	cp   $80                                         ; $645d: $fe $80
	rst  $28                                         ; $645f: $ef
	add  b                                           ; $6460: $80
	db   $e3                                         ; $6461: $e3
	nop                                              ; $6462: $00
	db   $e4                                         ; $6463: $e4
	add  e                                           ; $6464: $83
	rst  $20                                         ; $6465: $e7
	add  hl, bc                                      ; $6466: $09
	ldh  [$e3], a                                    ; $6467: $e0 $e3
	ldh  [rIE], a                                    ; $6469: $e0 $ff
	ldh  a, [rIE]                                    ; $646b: $f0 $ff
	add  sp, -$40                                    ; $646d: $e8 $c0
	ld   b, $3e                                      ; $646f: $06 $3e
	add  d                                           ; $6471: $82
	cp   $01                                         ; $6472: $fe $01
	rst  $38                                         ; $6474: $ff
	add  b                                           ; $6475: $80
	add  c                                           ; $6476: $81
	nop                                              ; $6477: $00
	ld   [bc], a                                     ; $6478: $02
	adc  a                                           ; $6479: $8f
	rrca                                             ; $647a: $0f
	rst  $38                                         ; $647b: $ff
	add  b                                           ; $647c: $80

jr_079_647d:
	inc  a                                           ; $647d: $3c
	add  b                                           ; $647e: $80
	db   $fc                                         ; $647f: $fc
	add  b                                           ; $6480: $80
	db   $fd                                         ; $6481: $fd
	ld   bc, $03fc                                   ; $6482: $01 $fc $03
	add  c                                           ; $6485: $81
	nop                                              ; $6486: $00
	add  b                                           ; $6487: $80
	rrca                                             ; $6488: $0f
	add  c                                           ; $6489: $81
	rst  $38                                         ; $648a: $ff
	ld   a, [bc]                                     ; $648b: $0a
	rla                                              ; $648c: $17
	db   $10                                         ; $648d: $10
	ld   l, b                                        ; $648e: $68
	ld   a, b                                        ; $648f: $78
	ld   a, c                                        ; $6490: $79
	ld   a, a                                        ; $6491: $7f
	ld   b, $11                                      ; $6492: $06 $11
	ld   bc, $07ff                                   ; $6494: $01 $ff $07
	add  e                                           ; $6497: $83
	rst  $38                                         ; $6498: $ff
	ld   [bc], a                                     ; $6499: $02
	and  b                                           ; $649a: $a0
	ccf                                              ; $649b: $3f
	jr   nc, @-$7d                                   ; $649c: $30 $81

	ccf                                              ; $649e: $3f
	inc  bc                                          ; $649f: $03
	jr   c, jr_079_645a                              ; $64a0: $38 $b8

	sub  a                                           ; $64a2: $97
	add  a                                           ; $64a3: $87
	add  h                                           ; $64a4: $84
	rst  $38                                         ; $64a5: $ff
	inc  bc                                          ; $64a6: $03
	rra                                              ; $64a7: $1f
	rst  $38                                         ; $64a8: $ff
	rra                                              ; $64a9: $1f
	rst  $38                                         ; $64aa: $ff
	add  b                                           ; $64ab: $80
	ldh  a, [$80]                                    ; $64ac: $f0 $80
	rrca                                             ; $64ae: $0f
	add  h                                           ; $64af: $84
	rst  $38                                         ; $64b0: $ff
	add  b                                           ; $64b1: $80
	ldh  a, [rP1]                                    ; $64b2: $f0 $00
	halt                                             ; $64b4: $76
	add  c                                           ; $64b5: $81
	ld   d, [hl]                                     ; $64b6: $56
	ld   bc, $3e1e                                   ; $64b7: $01 $1e $3e
	add  h                                           ; $64ba: $84
	cp   $80                                         ; $64bb: $fe $80
	add  $80                                         ; $64bd: $c6 $80
	ld   [hl], $01                                   ; $64bf: $36 $01
	jp   z, $8035                                    ; $64c1: $ca $35 $80

	sub  $80                                         ; $64c4: $d6 $80
	sbc  b                                           ; $64c6: $98
	add  b                                           ; $64c7: $80
	ldh  [$80], a                                    ; $64c8: $e0 $80
	add  b                                           ; $64ca: $80
	add  h                                           ; $64cb: $84
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	ld   hl, sp-$7d                                  ; $64ce: $f8 $83
	rst  ToBoot                                         ; $64d0: $c7
	add  c                                           ; $64d1: $81
	add  $81                                         ; $64d2: $c6 $81
	rst  ToBoot                                         ; $64d4: $c7
	nop                                              ; $64d5: $00
	add  $81                                         ; $64d6: $c6 $81
	rst  ToBoot                                         ; $64d8: $c7
	nop                                              ; $64d9: $00
	ccf                                              ; $64da: $3f
	add  c                                           ; $64db: $81
	rst  $38                                         ; $64dc: $ff
	add  b                                           ; $64dd: $80
	ret  nz                                          ; $64de: $c0

	nop                                              ; $64df: $00
	rra                                              ; $64e0: $1f
	add  b                                           ; $64e1: $80
	ccf                                              ; $64e2: $3f
	nop                                              ; $64e3: $00
	rst  $38                                         ; $64e4: $ff
	add  b                                           ; $64e5: $80
	ldh  [rTIMA], a                                  ; $64e6: $e0 $05
	ld   e, $ff                                      ; $64e8: $1e $ff
	ei                                               ; $64ea: $fb
	rst  $38                                         ; $64eb: $ff
	ei                                               ; $64ec: $fb
	cp   $80                                         ; $64ed: $fe $80
	add  c                                           ; $64ef: $81
	inc  de                                          ; $64f0: $13
	ld   b, c                                        ; $64f1: $41
	ld   a, a                                        ; $64f2: $7f
	cp   $fc                                         ; $64f3: $fe $fc
	add  a                                           ; $64f5: $87
	cp   e                                           ; $64f6: $bb
	rlca                                             ; $64f7: $07
	ld   a, a                                        ; $64f8: $7f
	ld   a, h                                        ; $64f9: $7c
	db   $fc                                         ; $64fa: $fc
	xor  l                                           ; $64fb: $ad
	ld   a, l                                        ; $64fc: $7d
	dec  hl                                          ; $64fd: $2b
	rlca                                             ; $64fe: $07
	rst  $30                                         ; $64ff: $f7
	rst  $38                                         ; $6500: $ff
	di                                               ; $6501: $f3
	rst  $38                                         ; $6502: $ff
	daa                                              ; $6503: $27
	ccf                                              ; $6504: $3f
	add  b                                           ; $6505: $80
	rst  $38                                         ; $6506: $ff
	inc  bc                                          ; $6507: $03
	rst  ToBoot                                         ; $6508: $c7
	rst  JumpTable                                         ; $6509: $df
	inc  sp                                          ; $650a: $33
	ccf                                              ; $650b: $3f
	add  b                                           ; $650c: $80
	rst  $38                                         ; $650d: $ff
	ld   b, d                                        ; $650e: $42
	ld   [bc], a                                     ; $650f: $02
	ld   bc, $000f                                   ; $6510: $01 $0f $00
	add  b                                           ; $6513: $80
	ld   [bc], a                                     ; $6514: $02
	add  b                                           ; $6515: $80
	inc  b                                           ; $6516: $04
	add  b                                           ; $6517: $80
	nop                                              ; $6518: $00
	add  b                                           ; $6519: $80
	ld   bc, $0380                                   ; $651a: $01 $80 $03
	add  b                                           ; $651d: $80
	rlca                                             ; $651e: $07
	add  b                                           ; $651f: $80
	rrca                                             ; $6520: $0f
	ld   bc, $04f4                                   ; $6521: $01 $f4 $04
	add  b                                           ; $6524: $80
	ld   [$2c80], sp                                 ; $6525: $08 $80 $2c
	add  b                                           ; $6528: $80
	ld   a, a                                        ; $6529: $7f
	add  [hl]                                        ; $652a: $86
	rst  $38                                         ; $652b: $ff
	inc  bc                                          ; $652c: $03
	sbc  h                                           ; $652d: $9c
	sbc  a                                           ; $652e: $9f
	call nz, $80c7                                   ; $652f: $c4 $c7 $80
	di                                               ; $6532: $f3
	add  b                                           ; $6533: $80
	ld   hl, sp-$80                                  ; $6534: $f8 $80
	db   $fc                                         ; $6536: $fc
	add  h                                           ; $6537: $84
	rst  $38                                         ; $6538: $ff
	add  b                                           ; $6539: $80
	ld   sp, hl                                      ; $653a: $f9
	add  b                                           ; $653b: $80
	rst  $28                                         ; $653c: $ef
	add  d                                           ; $653d: $82
	rst  $38                                         ; $653e: $ff
	add  b                                           ; $653f: $80
	cp   $84                                         ; $6540: $fe $84
	rst  $38                                         ; $6542: $ff
	add  b                                           ; $6543: $80
	ld   c, a                                        ; $6544: $4f
	add  b                                           ; $6545: $80
	rst  $28                                         ; $6546: $ef
	add  d                                           ; $6547: $82
	rst  $38                                         ; $6548: $ff
	add  b                                           ; $6549: $80
	cp   a                                           ; $654a: $bf
	add  h                                           ; $654b: $84
	rst  $38                                         ; $654c: $ff
	add  b                                           ; $654d: $80
	sbc  a                                           ; $654e: $9f
	adc  h                                           ; $654f: $8c
	rst  $38                                         ; $6550: $ff
	nop                                              ; $6551: $00
	cp   a                                           ; $6552: $bf
	add  l                                           ; $6553: $85
	or   b                                           ; $6554: $b0
	ld   bc, $b090                                   ; $6555: $01 $90 $b0
	add  b                                           ; $6558: $80
	sub  b                                           ; $6559: $90

jr_079_655a:
	ld   bc, $90c0                                   ; $655a: $01 $c0 $90
	add  b                                           ; $655d: $80
	or   b                                           ; $655e: $b0
	ld   bc, $7f00                                   ; $655f: $01 $00 $7f
	add  h                                           ; $6562: $84
	rst  $38                                         ; $6563: $ff
	add  b                                           ; $6564: $80
	db   $dd                                         ; $6565: $dd
	add  h                                           ; $6566: $84
	rst  $38                                         ; $6567: $ff
	add  b                                           ; $6568: $80
	ld   a, [$fe80]                                  ; $6569: $fa $80 $fe
	add  d                                           ; $656c: $82
	rst  $38                                         ; $656d: $ff
	add  b                                           ; $656e: $80
	ld   a, a                                        ; $656f: $7f
	add  b                                           ; $6570: $80
	rst  $38                                         ; $6571: $ff
	add  b                                           ; $6572: $80
	cp   a                                           ; $6573: $bf
	add  b                                           ; $6574: $80
	rst  $38                                         ; $6575: $ff
	add  d                                           ; $6576: $82
	ld   b, a                                        ; $6577: $47
	add  b                                           ; $6578: $80
	rlca                                             ; $6579: $07
	add  b                                           ; $657a: $80
	rst  ToBoot                                         ; $657b: $c7
	add  b                                           ; $657c: $80
	add  a                                           ; $657d: $87
	add  b                                           ; $657e: $80
	rst  ToBoot                                         ; $657f: $c7
	add  b                                           ; $6580: $80
	add  a                                           ; $6581: $87
	add  b                                           ; $6582: $80
	rst  ToBoot                                         ; $6583: $c7
	add  e                                           ; $6584: $83
	nop                                              ; $6585: $00
	add  e                                           ; $6586: $83
	rst  $38                                         ; $6587: $ff
	add  b                                           ; $6588: $80
	ld   a, [$f580]                                  ; $6589: $fa $80 $f5
	add  b                                           ; $658c: $80
	ld   [$ff00], a                                  ; $658d: $ea $00 $ff
	add  d                                           ; $6590: $82
	nop                                              ; $6591: $00
	add  c                                           ; $6592: $81
	rst  $38                                         ; $6593: $ff
	add  b                                           ; $6594: $80
	ld   [hl], a                                     ; $6595: $77
	add  b                                           ; $6596: $80
	xor  d                                           ; $6597: $aa
	add  b                                           ; $6598: $80
	ld   d, l                                        ; $6599: $55
	add  b                                           ; $659a: $80
	xor  d                                           ; $659b: $aa
	ld   bc, $00ff                                   ; $659c: $01 $ff $00
	add  c                                           ; $659f: $81
	ld   bc, $ff02                                   ; $65a0: $01 $02 $ff
	cp   $ff                                         ; $65a3: $fe $ff
	add  b                                           ; $65a5: $80
	ld   a, a                                        ; $65a6: $7f
	add  b                                           ; $65a7: $80
	rst  $28                                         ; $65a8: $ef
	add  b                                           ; $65a9: $80
	ld   e, a                                        ; $65aa: $5f
	add  b                                           ; $65ab: $80
	xor  e                                           ; $65ac: $ab
	nop                                              ; $65ad: $00
	ld   b, b                                        ; $65ae: $40
	add  c                                           ; $65af: $81
	cp   a                                           ; $65b0: $bf
	add  b                                           ; $65b1: $80
	rst  JumpTable                                         ; $65b2: $df
	add  b                                           ; $65b3: $80
	rst  $28                                         ; $65b4: $ef
	add  b                                           ; $65b5: $80
	rst  $30                                         ; $65b6: $f7
	inc  bc                                          ; $65b7: $03
	jr   nz, jr_079_655a                             ; $65b8: $20 $a0

	sbc  e                                           ; $65ba: $9b
	db   $db                                         ; $65bb: $db
	add  b                                           ; $65bc: $80
	ret  nz                                          ; $65bd: $c0

	ld   bc, $fd3d                                   ; $65be: $01 $3d $fd
	add  b                                           ; $65c1: $80
	ld   a, $84                                      ; $65c2: $3e $84
	rst  $38                                         ; $65c4: $ff
	add  b                                           ; $65c5: $80
	nop                                              ; $65c6: $00
	add  b                                           ; $65c7: $80
	rst  $38                                         ; $65c8: $ff
	add  d                                           ; $65c9: $82
	nop                                              ; $65ca: $00
	rlca                                             ; $65cb: $07
	add  c                                           ; $65cc: $81
	add  b                                           ; $65cd: $80
	ld   b, c                                        ; $65ce: $41
	ld   a, l                                        ; $65cf: $7d
	sbc  l                                           ; $65d0: $9d
	cp   l                                           ; $65d1: $bd
	xor  l                                           ; $65d2: $ad
	cp   l                                           ; $65d3: $bd
	add  b                                           ; $65d4: $80
	dec  e                                           ; $65d5: $1d
	add  b                                           ; $65d6: $80
	db   $ed                                         ; $65d7: $ed
	add  b                                           ; $65d8: $80
	dec  c                                           ; $65d9: $0d
	nop                                              ; $65da: $00
	ldh  a, [c]                                      ; $65db: $f2
	adc  [hl]                                        ; $65dc: $8e
	rrca                                             ; $65dd: $0f
	adc  l                                           ; $65de: $8d
	rst  $38                                         ; $65df: $ff
	ld   de, $f30c                                   ; $65e0: $11 $0c $f3
	inc  sp                                          ; $65e3: $33
	inc  de                                          ; $65e4: $13
	inc  sp                                          ; $65e5: $33
	sub  e                                           ; $65e6: $93
	inc  de                                          ; $65e7: $13
	ld   h, e                                        ; $65e8: $63
	inc  de                                          ; $65e9: $13
	sbc  e                                           ; $65ea: $9b
	inc  bc                                          ; $65eb: $03
	rst  $30                                         ; $65ec: $f7
	sbc  e                                           ; $65ed: $9b
	di                                               ; $65ee: $f3
	daa                                              ; $65ef: $27
	dec  sp                                          ; $65f0: $3b
	rst  $30                                         ; $65f1: $f7
	ldh  a, [$80]                                    ; $65f2: $f0 $80
	ld   a, [hl]                                     ; $65f4: $7e
	add  b                                           ; $65f5: $80
	sbc  a                                           ; $65f6: $9f
	add  b                                           ; $65f7: $80
	xor  $80                                         ; $65f8: $ee $80
	pop  af                                          ; $65fa: $f1
	add  b                                           ; $65fb: $80
	ldh  a, [$80]                                    ; $65fc: $f0 $80
	ld   [hl], b                                     ; $65fe: $70
	ld   [bc], a                                     ; $65ff: $02
	rla                                              ; $6600: $17
	dec  d                                           ; $6601: $15
	cp   c                                           ; $6602: $b9
	add  c                                           ; $6603: $81
	cp   e                                           ; $6604: $bb
	ld   de, $bb23                                   ; $6605: $11 $23 $bb
	and  e                                           ; $6608: $a3
	inc  hl                                          ; $6609: $23
	dec  hl                                          ; $660a: $2b
	xor  e                                           ; $660b: $ab
	adc  e                                           ; $660c: $8b
	ld   l, e                                        ; $660d: $6b
	dec  hl                                          ; $660e: $2b
	ld   l, e                                        ; $660f: $6b
	add  hl, hl                                      ; $6610: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6611: $cf
	ld   h, l                                        ; $6612: $65
	cp   h                                           ; $6613: $bc
	or   e                                           ; $6614: $b3
	or   a                                           ; $6615: $b7
	or   h                                           ; $6616: $b4
	or   a                                           ; $6617: $b7
	add  b                                           ; $6618: $80
	or   h                                           ; $6619: $b4
	add  b                                           ; $661a: $80
	or   [hl]                                        ; $661b: $b6
	rlca                                             ; $661c: $07
	ld   [hl], $76                                   ; $661d: $36 $76
	ld   b, [hl]                                     ; $661f: $46
	halt                                             ; $6620: $76
	ld   a, [hl]                                     ; $6621: $7e
	ld   [hl], d                                     ; $6622: $72
	and  e                                           ; $6623: $a3
	call c, $9e80                                    ; $6624: $dc $80 $9e
	add  b                                           ; $6627: $80
	ld   e, [hl]                                     ; $6628: $5e
	ld   bc, $dedc                                   ; $6629: $01 $dc $de

Call_079_662c:
	add  d                                           ; $662c: $82
	db   $db                                         ; $662d: $db
	ld   bc, $dbda                                   ; $662e: $01 $da $db
	add  b                                           ; $6631: $80
	reti                                             ; $6632: $d9


	ld   bc, $9d6d                                   ; $6633: $01 $6d $9d
	add  b                                           ; $6636: $80
	adc  l                                           ; $6637: $8d
	add  b                                           ; $6638: $80
	ld   e, l                                        ; $6639: $5d
	add  b                                           ; $663a: $80
	ld   e, e                                        ; $663b: $5b
	add  b                                           ; $663c: $80
	dec  sp                                          ; $663d: $3b
	inc  bc                                          ; $663e: $03
	and  a                                           ; $663f: $a7
	or   a                                           ; $6640: $b7
	inc  de                                          ; $6641: $13
	di                                               ; $6642: $f3
	add  b                                           ; $6643: $80
	dec  bc                                          ; $6644: $0b
	ld   bc, $e0ff                                   ; $6645: $01 $ff $e0
	add  [hl]                                        ; $6648: $86
	and  b                                           ; $6649: $a0
	add  b                                           ; $664a: $80
	or   b                                           ; $664b: $b0
	nop                                              ; $664c: $00
	and  b                                           ; $664d: $a0
	add  c                                           ; $664e: $81
	or   b                                           ; $664f: $b0
	nop                                              ; $6650: $00
	ret  z                                           ; $6651: $c8

	adc  l                                           ; $6652: $8d
	rst  ToBoot                                         ; $6653: $c7
	ld   bc, $f50a                                   ; $6654: $01 $0a $f5
	add  b                                           ; $6657: $80
	ld   [$d580], a                                  ; $6658: $ea $80 $d5
	add  b                                           ; $665b: $80
	ld   [$f080], a                                  ; $665c: $ea $80 $f0
	add  b                                           ; $665f: $80
	ldh  [$80], a                                    ; $6660: $e0 $80
	ret  nc                                          ; $6662: $d0

	add  b                                           ; $6663: $80
	ret  nz                                          ; $6664: $c0

	add  b                                           ; $6665: $80
	ld   d, l                                        ; $6666: $55
	add  b                                           ; $6667: $80
	xor  d                                           ; $6668: $aa
	add  b                                           ; $6669: $80
	ld   de, $0088                                   ; $666a: $11 $88 $00
	nop                                              ; $666d: $00
	db   $10                                         ; $666e: $10
	add  c                                           ; $666f: $81
	ld   [hl], b                                     ; $6670: $70
	add  h                                           ; $6671: $84
	ld   h, b                                        ; $6672: $60
	add  c                                           ; $6673: $81
	ld   [hl], b                                     ; $6674: $70
	nop                                              ; $6675: $00
	ldh  a, [$80]                                    ; $6676: $f0 $80
	ld   h, b                                        ; $6678: $60
	ld   bc, $ff1f                                   ; $6679: $01 $1f $ff
	add  b                                           ; $667c: $80
	xor  $80                                         ; $667d: $ee $80
	ld   d, l                                        ; $667f: $55
	add  b                                           ; $6680: $80
	xor  d                                           ; $6681: $aa
	add  a                                           ; $6682: $87
	nop                                              ; $6683: $00
	add  c                                           ; $6684: $81
	inc  c                                           ; $6685: $0c
	add  d                                           ; $6686: $82
	adc  h                                           ; $6687: $8c
	add  d                                           ; $6688: $82
	ld   c, h                                        ; $6689: $4c
	ld   bc, $2f2c                                   ; $668a: $01 $2c $2f
	add  b                                           ; $668d: $80
	inc  l                                           ; $668e: $2c
	inc  bc                                          ; $668f: $03
	ldh  a, [$fe]                                    ; $6690: $f0 $fe
	xor  $ef                                         ; $6692: $ee $ef
	add  b                                           ; $6694: $80
	ld   d, l                                        ; $6695: $55
	add  b                                           ; $6696: $80
	xor  d                                           ; $6697: $aa
	add  [hl]                                        ; $6698: $86
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	ld   a, [bc]                                     ; $669b: $0a
	add  c                                           ; $669c: $81
	jp   c, $d901                                    ; $669d: $da $01 $d9

	ld   sp, hl                                      ; $66a0: $f9
	add  b                                           ; $66a1: $80
	sbc  c                                           ; $66a2: $99
	add  h                                           ; $66a3: $84
	cp   b                                           ; $66a4: $b8
	add  b                                           ; $66a5: $80
	inc  a                                           ; $66a6: $3c
	nop                                              ; $66a7: $00
	pop  af                                          ; $66a8: $f1
	add  c                                           ; $66a9: $81
	ld   h, l                                        ; $66aa: $65
	add  d                                           ; $66ab: $82
	ld   h, h                                        ; $66ac: $64
	ld   bc, $fce4                                   ; $66ad: $01 $e4 $fc
	add  b                                           ; $66b0: $80
	call nz, $5d80                                   ; $66b1: $c4 $80 $5d
	add  b                                           ; $66b4: $80
	db   $dd                                         ; $66b5: $dd
	dec  b                                           ; $66b6: $05
	ld   [hl], a                                     ; $66b7: $77
	rrca                                             ; $66b8: $0f
	add  b                                           ; $66b9: $80
	adc  h                                           ; $66ba: $8c
	jr   @-$66                                       ; $66bb: $18 $98

	add  b                                           ; $66bd: $80
	ret  c                                           ; $66be: $d8

	nop                                              ; $66bf: $00
	add  b                                           ; $66c0: $80
	add  l                                           ; $66c1: $85
	ret  c                                           ; $66c2: $d8

	add  hl, bc                                      ; $66c3: $09
	sub  b                                           ; $66c4: $90
	jp   $c383                                       ; $66c5: $c3 $83 $c3


	ld   h, a                                        ; $66c8: $67
	and  $42                                         ; $66c9: $e6 $42
	ld   h, [hl]                                     ; $66cb: $66
	ld   h, h                                        ; $66cc: $64
	ld   h, [hl]                                     ; $66cd: $66
	add  b                                           ; $66ce: $80
	ld   h, h                                        ; $66cf: $64
	add  d                                           ; $66d0: $82
	ld   h, [hl]                                     ; $66d1: $66
	ld   bc, $f8ac                                   ; $66d2: $01 $ac $f8
	add  b                                           ; $66d5: $80
	jr   c, jr_079_66d8                              ; $66d6: $38 $00

jr_079_66d8:
	inc  [hl]                                        ; $66d8: $34
	add  c                                           ; $66d9: $81
	inc  e                                           ; $66da: $1c
	nop                                              ; $66db: $00
	ld   [$1c81], sp                                 ; $66dc: $08 $81 $1c
	add  e                                           ; $66df: $83
	inc  c                                           ; $66e0: $0c
	add  b                                           ; $66e1: $80
	nop                                              ; $66e2: $00
	add  c                                           ; $66e3: $81
	db   $10                                         ; $66e4: $10
	add  b                                           ; $66e5: $80
	jr   nc, jr_079_66e8                             ; $66e6: $30 $00

jr_079_66e8:
	db   $10                                         ; $66e8: $10
	add  c                                           ; $66e9: $81
	jr   nc, @-$7e                                   ; $66ea: $30 $80

	ld   [hl], b                                     ; $66ec: $70
	ld   [bc], a                                     ; $66ed: $02
	jr   nz, jr_079_6760                             ; $66ee: $20 $70

	ld   h, c                                        ; $66f0: $61
	add  e                                           ; $66f1: $83
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	ld   bc, $0083                                   ; $66f4: $01 $83 $00

jr_079_66f7:
	add  b                                           ; $66f7: $80
	inc  bc                                          ; $66f8: $03
	inc  bc                                          ; $66f9: $03
	nop                                              ; $66fa: $00
	rlca                                             ; $66fb: $07
	nop                                              ; $66fc: $00
	ld   hl, sp-$7e                                  ; $66fd: $f8 $82
	nop                                              ; $66ff: $00
	ld   a, [bc]                                     ; $6700: $0a
	add  b                                           ; $6701: $80
	ld   bc, $0341                                   ; $6702: $01 $41 $03
	ld   [hl+], a                                    ; $6705: $22
	ld   b, $14                                      ; $6706: $06 $14
	inc  c                                           ; $6708: $0c
	nop                                              ; $6709: $00
	add  c                                           ; $670a: $81
	ld   b, c                                        ; $670b: $41
	add  d                                           ; $670c: $82
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	ret  nz                                          ; $670f: $c0

	add  b                                           ; $6710: $80
	add  b                                           ; $6711: $80
	add  d                                           ; $6712: $82
	nop                                              ; $6713: $00
	inc  b                                           ; $6714: $04
	jr   nz, jr_079_66f7                             ; $6715: $20 $e0

	ret  nc                                          ; $6717: $d0

	ldh  a, [$e1]                                    ; $6718: $f0 $e1
	adc  l                                           ; $671a: $8d
	nop                                              ; $671b: $00
	dec  bc                                          ; $671c: $0b
	halt                                             ; $671d: $76
	ret  z                                           ; $671e: $c8

	sub  b                                           ; $671f: $90
	ret  c                                           ; $6720: $d8

	ret  z                                           ; $6721: $c8

	ret  c                                           ; $6722: $d8

	ret  nc                                          ; $6723: $d0

	ld   hl, sp-$58                                  ; $6724: $f8 $a8
	ld   hl, sp-$48                                  ; $6726: $f8 $b8
	ret  c                                           ; $6728: $d8

	add  d                                           ; $6729: $82
	adc  b                                           ; $672a: $88
	nop                                              ; $672b: $00
	ccf                                              ; $672c: $3f
	adc  l                                           ; $672d: $8d
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	ret  nz                                          ; $6730: $c0

	add  l                                           ; $6731: $85
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	ld   bc, $0085                                   ; $6734: $01 $85 $00
	nop                                              ; $6737: $00
	ld   bc, $0085                                   ; $6738: $01 $85 $00
	ld   [bc], a                                     ; $673b: $02
	rst  JumpTable                                         ; $673c: $df
	jr   nz, jr_079_673f                             ; $673d: $20 $00

jr_079_673f:
	add  b                                           ; $673f: $80
	ld   [$1003], sp                                 ; $6740: $08 $03 $10
	sbc  b                                           ; $6743: $98
	xor  b                                           ; $6744: $a8
	rst  JumpTable                                         ; $6745: $df
	add  l                                           ; $6746: $85
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	ret  nz                                          ; $6749: $c0

	add  l                                           ; $674a: $85
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	ret  nz                                          ; $674d: $c0

	add  l                                           ; $674e: $85
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	rst  $38                                         ; $6751: $ff
	add  a                                           ; $6752: $87
	nop                                              ; $6753: $00
	add  d                                           ; $6754: $82
	db   $10                                         ; $6755: $10
	adc  b                                           ; $6756: $88
	ld   de, $008e                                   ; $6757: $11 $8e $00
	add  h                                           ; $675a: $84

jr_079_675b:
	ld   de, $5184                                   ; $675b: $11 $84 $51
	add  d                                           ; $675e: $82
	ld   e, c                                        ; $675f: $59

jr_079_6760:
	add  d                                           ; $6760: $82
	nop                                              ; $6761: $00
	adc  d                                           ; $6762: $8a
	ld   [$5986], sp                                 ; $6763: $08 $86 $59
	add  b                                           ; $6766: $80
	reti                                             ; $6767: $d9


	add  b                                           ; $6768: $80
	ret                                              ; $6769: $c9


	add  b                                           ; $676a: $80
	reti                                             ; $676b: $d9


	add  b                                           ; $676c: $80
	ret                                              ; $676d: $c9


	add  h                                           ; $676e: $84
	ld   a, [bc]                                     ; $676f: $0a
	add  b                                           ; $6770: $80
	ld   a, [hl+]                                    ; $6771: $2a
	add  b                                           ; $6772: $80
	ld   a, [bc]                                     ; $6773: $0a
	add  b                                           ; $6774: $80
	ld   a, [hl+]                                    ; $6775: $2a
	add  b                                           ; $6776: $80
	ld   a, [bc]                                     ; $6777: $0a
	add  b                                           ; $6778: $80
	ld   a, [hl+]                                    ; $6779: $2a
	add  b                                           ; $677a: $80
	reti                                             ; $677b: $d9


	add  b                                           ; $677c: $80
	ret                                              ; $677d: $c9


	add  b                                           ; $677e: $80
	db   $db                                         ; $677f: $db
	add  b                                           ; $6780: $80
	res  0, b                                        ; $6781: $cb $80
	ld   e, e                                        ; $6783: $5b
	add  b                                           ; $6784: $80
	res  0, b                                        ; $6785: $cb $80
	ld   e, e                                        ; $6787: $5b
	add  b                                           ; $6788: $80
	res  0, b                                        ; $6789: $cb $80
	ld   a, [bc]                                     ; $678b: $0a
	add  b                                           ; $678c: $80
	dec  hl                                          ; $678d: $2b
	add  b                                           ; $678e: $80
	dec  bc                                          ; $678f: $0b
	add  b                                           ; $6790: $80
	add  hl, hl                                      ; $6791: $29
	add  b                                           ; $6792: $80
	dec  bc                                          ; $6793: $0b
	add  b                                           ; $6794: $80
	add  hl, sp                                      ; $6795: $39
	add  b                                           ; $6796: $80
	dec  de                                          ; $6797: $1b
	add  b                                           ; $6798: $80
	add  hl, sp                                      ; $6799: $39
	add  b                                           ; $679a: $80
	db   $db                                         ; $679b: $db
	add  b                                           ; $679c: $80
	res  0, b                                        ; $679d: $cb $80
	db   $db                                         ; $679f: $db
	add  b                                           ; $67a0: $80
	res  0, b                                        ; $67a1: $cb $80
	ld   e, e                                        ; $67a3: $5b
	add  b                                           ; $67a4: $80
	ld   c, e                                        ; $67a5: $4b
	add  b                                           ; $67a6: $80
	ld   e, e                                        ; $67a7: $5b
	add  b                                           ; $67a8: $80
	ld   c, e                                        ; $67a9: $4b
	add  b                                           ; $67aa: $80
	dec  de                                          ; $67ab: $1b
	add  b                                           ; $67ac: $80
	add  hl, sp                                      ; $67ad: $39
	add  b                                           ; $67ae: $80
	dec  de                                          ; $67af: $1b
	add  b                                           ; $67b0: $80
	add  hl, sp                                      ; $67b1: $39
	add  b                                           ; $67b2: $80
	dec  de                                          ; $67b3: $1b
	add  b                                           ; $67b4: $80
	add  hl, sp                                      ; $67b5: $39
	add  b                                           ; $67b6: $80
	dec  de                                          ; $67b7: $1b
	add  b                                           ; $67b8: $80
	add  hl, sp                                      ; $67b9: $39
	add  b                                           ; $67ba: $80
	add  hl, de                                      ; $67bb: $19
	add  b                                           ; $67bc: $80
	ld   c, e                                        ; $67bd: $4b
	add  b                                           ; $67be: $80
	ld   de, $4380                                   ; $67bf: $11 $80 $43
	add  b                                           ; $67c2: $80
	ld   de, $4380                                   ; $67c3: $11 $80 $43
	add  b                                           ; $67c6: $80
	ld   de, $4380                                   ; $67c7: $11 $80 $43
	add  b                                           ; $67ca: $80
	dec  de                                          ; $67cb: $1b
	add  b                                           ; $67cc: $80
	add  hl, sp                                      ; $67cd: $39
	add  b                                           ; $67ce: $80
	dec  de                                          ; $67cf: $1b
	add  b                                           ; $67d0: $80

jr_079_67d1:
	add  hl, sp                                      ; $67d1: $39
	add  b                                           ; $67d2: $80
	dec  de                                          ; $67d3: $1b
	add  b                                           ; $67d4: $80
	add  hl, sp                                      ; $67d5: $39
	add  b                                           ; $67d6: $80
	ld   a, [de]                                     ; $67d7: $1a
	add  b                                           ; $67d8: $80
	jr   nz, jr_079_675b                             ; $67d9: $20 $80

	nop                                              ; $67db: $00
	add  d                                           ; $67dc: $82
	ld   bc, $0680                                   ; $67dd: $01 $80 $06
	add  b                                           ; $67e0: $80
	rrca                                             ; $67e1: $0f
	add  b                                           ; $67e2: $80
	scf                                              ; $67e3: $37
	add  e                                           ; $67e4: $83
	rst  $38                                         ; $67e5: $ff
	add  l                                           ; $67e6: $85
	nop                                              ; $67e7: $00
	ld   [bc], a                                     ; $67e8: $02
	jp   nz, $2c3e                                   ; $67e9: $c2 $3e $2c

	add  e                                           ; $67ec: $83
	cpl                                              ; $67ed: $2f
	nop                                              ; $67ee: $00
	rst  $38                                         ; $67ef: $ff
	add  a                                           ; $67f0: $87
	nop                                              ; $67f1: $00
	ld   [bc], a                                     ; $67f2: $02
	ld   h, c                                        ; $67f3: $61
	pop  hl                                          ; $67f4: $e1
	add  b                                           ; $67f5: $80
	add  b                                           ; $67f6: $80
	ret  nz                                          ; $67f7: $c0

	add  b                                           ; $67f8: $80
	rst  $38                                         ; $67f9: $ff
	add  l                                           ; $67fa: $85
	nop                                              ; $67fb: $00
	dec  b                                           ; $67fc: $05
	db   $10                                         ; $67fd: $10
	rra                                              ; $67fe: $1f
	adc  a                                           ; $67ff: $8f
	rst  $38                                         ; $6800: $ff
	ld   a, a                                        ; $6801: $7f
	rst  $38                                         ; $6802: $ff
	add  b                                           ; $6803: $80
	ei                                               ; $6804: $fb
	nop                                              ; $6805: $00
	rst  $38                                         ; $6806: $ff
	add  l                                           ; $6807: $85
	nop                                              ; $6808: $00
	ld   bc, $8078                                   ; $6809: $01 $78 $80
	add  b                                           ; $680c: $80
	ret  nz                                          ; $680d: $c0

	add  b                                           ; $680e: $80
	add  b                                           ; $680f: $80
	add  b                                           ; $6810: $80
	nop                                              ; $6811: $00
	ld   bc, $2d2a                                   ; $6812: $01 $2a $2d
	add  [hl]                                        ; $6815: $86
	add  hl, bc                                      ; $6816: $09
	add  b                                           ; $6817: $80
	ld   bc, $0082                                   ; $6818: $01 $82 $00
	add  b                                           ; $681b: $80
	rst  $38                                         ; $681c: $ff
	add  b                                           ; $681d: $80
	ld   a, a                                        ; $681e: $7f
	add  b                                           ; $681f: $80
	ld   e, e                                        ; $6820: $5b
	add  b                                           ; $6821: $80
	ld   e, a                                        ; $6822: $5f
	add  b                                           ; $6823: $80
	ld   e, e                                        ; $6824: $5b
	add  b                                           ; $6825: $80
	ld   d, e                                        ; $6826: $53
	add  d                                           ; $6827: $82
	inc  de                                          ; $6828: $13
	add  d                                           ; $6829: $82
	ld   a, [$f280]                                  ; $682a: $fa $80 $f2
	add  b                                           ; $682d: $80
	ld   [hl], d                                     ; $682e: $72
	add  d                                           ; $682f: $82
	ld   d, b                                        ; $6830: $50
	add  b                                           ; $6831: $80
	db   $10                                         ; $6832: $10
	add  b                                           ; $6833: $80
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	rlca                                             ; $6836: $07
	adc  l                                           ; $6837: $8d
	nop                                              ; $6838: $00
	ld   bc, $1116                                   ; $6839: $01 $16 $11
	add  [hl]                                        ; $683c: $86
	nop                                              ; $683d: $00
	add  b                                           ; $683e: $80
	db   $10                                         ; $683f: $10
	add  d                                           ; $6840: $82
	ld   de, $0086                                   ; $6841: $11 $86 $00
	add  h                                           ; $6844: $84
	db   $10                                         ; $6845: $10
	add  b                                           ; $6846: $80
	ld   [de], a                                     ; $6847: $12
	add  b                                           ; $6848: $80
	jr   nz, jr_079_67d1                             ; $6849: $20 $86

	inc  h                                           ; $684b: $24
	add  h                                           ; $684c: $84
	ld   h, $8a                                      ; $684d: $26 $8a
	ld   d, c                                        ; $684f: $51
	add  d                                           ; $6850: $82
	ld   [hl], c                                     ; $6851: $71
	add  d                                           ; $6852: $82
	ld   [de], a                                     ; $6853: $12
	add  [hl]                                        ; $6854: $86
	sub  d                                           ; $6855: $92
	add  b                                           ; $6856: $80
	sub  [hl]                                        ; $6857: $96
	add  b                                           ; $6858: $80
	sub  d                                           ; $6859: $92
	ld   bc, $0007                                   ; $685a: $01 $07 $00
	add  h                                           ; $685d: $84
	db   $10                                         ; $685e: $10
	add  [hl]                                        ; $685f: $86
	ld   d, b                                        ; $6860: $50
	nop                                              ; $6861: $00
	ld   l, e                                        ; $6862: $6b
	adc  l                                           ; $6863: $8d
	ld   l, h                                        ; $6864: $6c
	add  b                                           ; $6865: $80
	ld   h, [hl]                                     ; $6866: $66
	add  b                                           ; $6867: $80
	ld   h, $80                                      ; $6868: $26 $80
	ld   h, [hl]                                     ; $686a: $66
	add  b                                           ; $686b: $80
	ld   h, $80                                      ; $686c: $26 $80
	ld   h, [hl]                                     ; $686e: $66
	add  b                                           ; $686f: $80
	ld   h, $82                                      ; $6870: $26 $82
	ld   h, [hl]                                     ; $6872: $66
	add  b                                           ; $6873: $80
	ld   [hl], l                                     ; $6874: $75
	add  b                                           ; $6875: $80
	pop  af                                          ; $6876: $f1
	add  b                                           ; $6877: $80
	ld   [hl], l                                     ; $6878: $75
	add  b                                           ; $6879: $80
	pop  af                                          ; $687a: $f1
	add  b                                           ; $687b: $80
	ld   [hl], l                                     ; $687c: $75
	add  b                                           ; $687d: $80
	pop  af                                          ; $687e: $f1
	add  b                                           ; $687f: $80
	ld   [hl], l                                     ; $6880: $75
	add  b                                           ; $6881: $80
	pop  af                                          ; $6882: $f1
	add  b                                           ; $6883: $80
	sub  [hl]                                        ; $6884: $96
	add  b                                           ; $6885: $80
	sub  d                                           ; $6886: $92
	add  b                                           ; $6887: $80
	or   [hl]                                        ; $6888: $b6
	add  b                                           ; $6889: $80
	sub  [hl]                                        ; $688a: $96
	add  b                                           ; $688b: $80
	or   [hl]                                        ; $688c: $b6
	add  b                                           ; $688d: $80
	sub  [hl]                                        ; $688e: $96
	add  b                                           ; $688f: $80
	or   [hl]                                        ; $6890: $b6
	add  b                                           ; $6891: $80
	sub  [hl]                                        ; $6892: $96
	add  d                                           ; $6893: $82
	ld   d, a                                        ; $6894: $57
	add  b                                           ; $6895: $80
	ld   d, b                                        ; $6896: $50
	add  c                                           ; $6897: $81
	ld   b, b                                        ; $6898: $40
	ld   [$1e5e], sp                                 ; $6899: $08 $5e $1e
	ld   hl, $7637                                   ; $689c: $21 $37 $76
	ld   b, e                                        ; $689f: $43
	or   e                                           ; $68a0: $b3
	or   [hl]                                        ; $68a1: $b6
	ld   h, $80                                      ; $68a2: $26 $80
	ld   h, [hl]                                     ; $68a4: $66
	add  b                                           ; $68a5: $80
	ld   h, $88                                      ; $68a6: $26 $88
	ld   h, [hl]                                     ; $68a8: $66
	add  b                                           ; $68a9: $80
	ld   [hl], l                                     ; $68aa: $75
	add  b                                           ; $68ab: $80
	pop  de                                          ; $68ac: $d1
	add  b                                           ; $68ad: $80
	ld   d, l                                        ; $68ae: $55
	add  b                                           ; $68af: $80
	reti                                             ; $68b0: $d9


	add  b                                           ; $68b1: $80
	ld   e, l                                        ; $68b2: $5d
	add  b                                           ; $68b3: $80
	reti                                             ; $68b4: $d9


	add  b                                           ; $68b5: $80
	ld   e, l                                        ; $68b6: $5d
	add  b                                           ; $68b7: $80

jr_079_68b8:
	reti                                             ; $68b8: $d9


	add  b                                           ; $68b9: $80
	or   a                                           ; $68ba: $b7
	add  b                                           ; $68bb: $80
	sub  [hl]                                        ; $68bc: $96
	add  b                                           ; $68bd: $80
	or   [hl]                                        ; $68be: $b6
	add  b                                           ; $68bf: $80
	sub  [hl]                                        ; $68c0: $96
	add  b                                           ; $68c1: $80
	or   a                                           ; $68c2: $b7
	add  b                                           ; $68c3: $80
	sub  a                                           ; $68c4: $97
	add  b                                           ; $68c5: $80
	or   a                                           ; $68c6: $b7
	add  b                                           ; $68c7: $80
	sub  e                                           ; $68c8: $93
	nop                                              ; $68c9: $00
	rst  $38                                         ; $68ca: $ff
	add  c                                           ; $68cb: $81
	nop                                              ; $68cc: $00
	add  h                                           ; $68cd: $84
	add  b                                           ; $68ce: $80
	add  b                                           ; $68cf: $80
	adc  a                                           ; $68d0: $8f
	inc  b                                           ; $68d1: $04
	sub  b                                           ; $68d2: $90
	or   b                                           ; $68d3: $b0
	and  b                                           ; $68d4: $a0
	ret  nz                                          ; $68d5: $c0

	ld   b, b                                        ; $68d6: $40
	add  a                                           ; $68d7: $87
	nop                                              ; $68d8: $00
	add  b                                           ; $68d9: $80
	ld   hl, sp+$02                                  ; $68da: $f8 $02
	inc  b                                           ; $68dc: $04
	ld   b, $02                                      ; $68dd: $06 $02
	add  b                                           ; $68df: $80
	ld   bc, $0087                                   ; $68e0: $01 $87 $00
	add  b                                           ; $68e3: $80

jr_079_68e4:
	rra                                              ; $68e4: $1f
	inc  b                                           ; $68e5: $04
	jr   nz, jr_079_6948                             ; $68e6: $20 $60

	ld   b, b                                        ; $68e8: $40
	add  b                                           ; $68e9: $80
	add  e                                           ; $68ea: $83
	add  a                                           ; $68eb: $87
	nop                                              ; $68ec: $00
	add  b                                           ; $68ed: $80
	ldh  a, [$0b]                                    ; $68ee: $f0 $0b
	ld   a, [bc]                                     ; $68f0: $0a
	ld   c, $07                                      ; $68f1: $0e $07
	inc  bc                                          ; $68f3: $03
	ld   [hl+], a                                    ; $68f4: $22
	ld   b, $1e                                      ; $68f5: $06 $1e
	ld   b, $de                                      ; $68f7: $06 $de
	ld   b, $c7                                      ; $68f9: $06 $c7
	rlca                                             ; $68fb: $07
	add  e                                           ; $68fc: $83
	inc  bc                                          ; $68fd: $03
	inc  bc                                          ; $68fe: $03
	ld   bc, $0600                                   ; $68ff: $01 $00 $06
	inc  hl                                          ; $6902: $23
	add  e                                           ; $6903: $83
	ld   bc, $0388                                   ; $6904: $01 $88 $03
	ld   bc, $0705                                   ; $6907: $01 $05 $07
	add  b                                           ; $690a: $80
	dec  de                                          ; $690b: $1b
	add  b                                           ; $690c: $80
	inc  bc                                          ; $690d: $03
	add  [hl]                                        ; $690e: $86
	rlca                                             ; $690f: $07
	add  b                                           ; $6910: $80
	rra                                              ; $6911: $1f
	inc  bc                                          ; $6912: $03
	di                                               ; $6913: $f3
	inc  c                                           ; $6914: $0c
	add  l                                           ; $6915: $85
	add  c                                           ; $6916: $81
	add  b                                           ; $6917: $80
	ld   a, b                                        ; $6918: $78
	add  b                                           ; $6919: $80
	add  hl, bc                                      ; $691a: $09
	add  b                                           ; $691b: $80
	ld   a, [bc]                                     ; $691c: $0a
	ld   bc, $0601                                   ; $691d: $01 $01 $06
	add  b                                           ; $6920: $80
	nop                                              ; $6921: $00
	ld   [de], a                                     ; $6922: $12
	inc  bc                                          ; $6923: $03
	rlca                                             ; $6924: $07
	xor  b                                           ; $6925: $a8
	ld   e, h                                        ; $6926: $5c
	and  b                                           ; $6927: $a0
	ld   sp, hl                                      ; $6928: $f9
	add  hl, bc                                      ; $6929: $09
	or   b                                           ; $692a: $b0
	adc  d                                           ; $692b: $8a
	ld   e, d                                        ; $692c: $5a
	add  h                                           ; $692d: $84
	db   $e4                                         ; $692e: $e4
	inc  d                                           ; $692f: $14
	db   $fc                                         ; $6930: $fc
	inc  b                                           ; $6931: $04
	ld   c, d                                        ; $6932: $4a
	xor  h                                           ; $6933: $ac
	and  a                                           ; $6934: $a7
	jr   c, jr_079_68b8                              ; $6935: $38 $81

	dec  [hl]                                        ; $6937: $35
	add  b                                           ; $6938: $80
	push de                                          ; $6939: $d5
	rlca                                             ; $693a: $07
	dec  d                                           ; $693b: $15
	dec  [hl]                                        ; $693c: $35
	db   $ed                                         ; $693d: $ed
	db   $fd                                         ; $693e: $fd
	sub  a                                           ; $693f: $97
	db   $ec                                         ; $6940: $ec
	ld   [$8044], sp                                 ; $6941: $08 $44 $80
	ld   d, a                                        ; $6944: $57
	nop                                              ; $6945: $00
	ld   a, b                                        ; $6946: $78
	add  e                                           ; $6947: $83

jr_079_6948:
	nop                                              ; $6948: $00
	add  b                                           ; $6949: $80
	ld   h, d                                        ; $694a: $62
	nop                                              ; $694b: $00
	add  b                                           ; $694c: $80
	add  e                                           ; $694d: $83
	nop                                              ; $694e: $00
	add  b                                           ; $694f: $80
	push af                                          ; $6950: $f5
	nop                                              ; $6951: $00
	ld   [bc], a                                     ; $6952: $02
	add  e                                           ; $6953: $83
	inc  bc                                          ; $6954: $03
	add  b                                           ; $6955: $80
	ld   a, a                                        ; $6956: $7f
	nop                                              ; $6957: $00
	ld   bc, $0680                                   ; $6958: $01 $80 $06
	add  b                                           ; $695b: $80
	ld   [$1003], sp                                 ; $695c: $08 $03 $10

jr_079_695f:
	adc  $fe                                         ; $695f: $ce $fe
	jr   nz, jr_079_68e4                             ; $6961: $20 $81

	nop                                              ; $6963: $00
	add  b                                           ; $6964: $80
	ld   bc, $ff80                                   ; $6965: $01 $80 $ff
	add  h                                           ; $6968: $84
	nop                                              ; $6969: $00
	add  b                                           ; $696a: $80
	inc  e                                           ; $696b: $1c
	ld   bc, $5754                                   ; $696c: $01 $54 $57
	add  b                                           ; $696f: $80
	xor  a                                           ; $6970: $af
	add  b                                           ; $6971: $80
	ld   d, a                                        ; $6972: $57
	add  b                                           ; $6973: $80
	rst  $38                                         ; $6974: $ff
	nop                                              ; $6975: $00
	inc  bc                                          ; $6976: $03
	add  c                                           ; $6977: $81
	ld   bc, $0380                                   ; $6978: $01 $80 $03
	rrca                                             ; $697b: $0f
	dec  b                                           ; $697c: $05
	rlca                                             ; $697d: $07
	db   $f4                                         ; $697e: $f4
	add  hl, bc                                      ; $697f: $09
	ld   [bc], a                                     ; $6980: $02
	ld   bc, $0709                                   ; $6981: $01 $09 $07
	inc  c                                           ; $6984: $0c
	nop                                              ; $6985: $00
	inc  bc                                          ; $6986: $03
	ld   bc, $0205                                   ; $6987: $01 $05 $02
	rlca                                             ; $698a: $07
	ld   [bc], a                                     ; $698b: $02
	add  b                                           ; $698c: $80
	inc  e                                           ; $698d: $1c
	rla                                              ; $698e: $17
	call nz, $92c6                                   ; $698f: $c4 $c6 $92
	jr   jr_079_695f                                 ; $6992: $18 $cb

	ld   b, [hl]                                     ; $6994: $46
	add  [hl]                                        ; $6995: $86
	ld   bc, $a427                                   ; $6996: $01 $27 $a4
	add  b                                           ; $6999: $80
	add  c                                           ; $699a: $81
	ld   [$1c18], sp                                 ; $699b: $08 $18 $1c
	db   $10                                         ; $699e: $10
	cp   d                                           ; $699f: $ba
	xor  c                                           ; $69a0: $a9
	ld   a, [bc]                                     ; $69a1: $0a
	rlca                                             ; $69a2: $07
	inc  bc                                          ; $69a3: $03
	ld   hl, $4360                                   ; $69a4: $21 $60 $43
	add  b                                           ; $69a7: $80
	dec  d                                           ; $69a8: $15
	ld   bc, $0b08                                   ; $69a9: $01 $08 $0b
	add  b                                           ; $69ac: $80
	nop                                              ; $69ad: $00
	dec  c                                           ; $69ae: $0d
	cp   c                                           ; $69af: $b9
	rst  ToBoot                                         ; $69b0: $c7
	add  c                                           ; $69b1: $81
	nop                                              ; $69b2: $00
	ld   [bc], a                                     ; $69b3: $02
	inc  bc                                          ; $69b4: $03
	ld   a, l                                        ; $69b5: $7d
	rst  $38                                         ; $69b6: $ff
	sbc  c                                           ; $69b7: $99
	cp   [hl]                                        ; $69b8: $be
	sbc  b                                           ; $69b9: $98
	inc  a                                           ; $69ba: $3c
	nop                                              ; $69bb: $00
	rst  $38                                         ; $69bc: $ff
	add  b                                           ; $69bd: $80
	and  $0d                                         ; $69be: $e6 $0d
	add  hl, de                                      ; $69c0: $19
	rst  $38                                         ; $69c1: $ff
	ld   de, $6028                                   ; $69c2: $11 $28 $60
	ld   l, b                                        ; $69c5: $68
	inc  l                                           ; $69c6: $2c
	rst  $38                                         ; $69c7: $ff
	db   $f4                                         ; $69c8: $f4
	ld   l, a                                        ; $69c9: $6f
	daa                                              ; $69ca: $27
	ld   h, a                                        ; $69cb: $67
	jr   nz, @+$01                                   ; $69cc: $20 $ff

	add  b                                           ; $69ce: $80
	ld   [hl], d                                     ; $69cf: $72
	inc  bc                                          ; $69d0: $03
	adc  l                                           ; $69d1: $8d
	rst  $38                                         ; $69d2: $ff
	dec  c                                           ; $69d3: $0d
	add  b                                           ; $69d4: $80
	add  b                                           ; $69d5: $80
	adc  d                                           ; $69d6: $8a
	inc  bc                                          ; $69d7: $03
	add  b                                           ; $69d8: $80
	rst  $38                                         ; $69d9: $ff
	adc  $b1                                         ; $69da: $ce $b1
	add  b                                           ; $69dc: $80
	dec  [hl]                                        ; $69dd: $35
	ld   bc, $ff00                                   ; $69de: $01 $00 $ff

jr_079_69e1:
	add  b                                           ; $69e1: $80
	rlca                                             ; $69e2: $07
	add  b                                           ; $69e3: $80
	rst  $38                                         ; $69e4: $ff
	rlca                                             ; $69e5: $07
	scf                                              ; $69e6: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e7: $cf
	rst  ToBoot                                         ; $69e8: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e9: $cf
	ld   l, $fe                                      ; $69ea: $2e $fe
	and  [hl]                                        ; $69ec: $a6
	ld   a, [hl]                                     ; $69ed: $7e
	add  b                                           ; $69ee: $80
	ld   e, h                                        ; $69ef: $5c
	rlca                                             ; $69f0: $07
	nop                                              ; $69f1: $00
	rst  $38                                         ; $69f2: $ff
	nop                                              ; $69f3: $00
	rlca                                             ; $69f4: $07
	ld   hl, sp-$01                                  ; $69f5: $f8 $ff
	rlca                                             ; $69f7: $07
	nop                                              ; $69f8: $00
	add  b                                           ; $69f9: $80
	rst  $38                                         ; $69fa: $ff
	add  b                                           ; $69fb: $80
	nop                                              ; $69fc: $00
	add  b                                           ; $69fd: $80
	jr   z, jr_079_6a02                              ; $69fe: $28 $02

	ld   h, b                                        ; $6a00: $60
	ld   [hl], a                                     ; $6a01: $77

jr_079_6a02:
	rla                                              ; $6a02: $17
	add  b                                           ; $6a03: $80
	rst  $30                                         ; $6a04: $f7
	add  b                                           ; $6a05: $80
	scf                                              ; $6a06: $37
	add  b                                           ; $6a07: $80
	and  a                                           ; $6a08: $a7
	ld   [bc], a                                     ; $6a09: $02
	nop                                              ; $6a0a: $00
	cp   $ff                                         ; $6a0b: $fe $ff
	add  b                                           ; $6a0d: $80
	rlca                                             ; $6a0e: $07
	add  b                                           ; $6a0f: $80
	ld   b, a                                        ; $6a10: $47
	nop                                              ; $6a11: $00
	ld   bc, $fd80                                   ; $6a12: $01 $80 $fd
	add  b                                           ; $6a15: $80
	sbc  [hl]                                        ; $6a16: $9e
	add  d                                           ; $6a17: $82
	cp   $80                                         ; $6a18: $fe $80
	nop                                              ; $6a1a: $00
	add  h                                           ; $6a1b: $84
	rst  $38                                         ; $6a1c: $ff
	add  b                                           ; $6a1d: $80
	ld   a, a                                        ; $6a1e: $7f
	add  d                                           ; $6a1f: $82
	xor  a                                           ; $6a20: $af
	ld   bc, $56a0                                   ; $6a21: $01 $a0 $56
	add  c                                           ; $6a24: $81
	ld   b, $02                                      ; $6a25: $06 $02
	inc  b                                           ; $6a27: $04
	rlca                                             ; $6a28: $07
	inc  bc                                          ; $6a29: $03

Jump_079_6a2a:
	add  b                                           ; $6a2a: $80
	ld   c, $00                                      ; $6a2b: $0e $00
	inc  c                                           ; $6a2d: $0c
	add  d                                           ; $6a2e: $82
	rrca                                             ; $6a2f: $0f
	inc  c                                           ; $6a30: $0c
	inc  c                                           ; $6a31: $0c
	nop                                              ; $6a32: $00
	ldh  a, [c]                                      ; $6a33: $f2
	inc  sp                                          ; $6a34: $33
	dec  sp                                          ; $6a35: $3b
	rst  $28                                         ; $6a36: $ef
	rst  $38                                         ; $6a37: $ff
	sbc  a                                           ; $6a38: $9f
	rst  $38                                         ; $6a39: $ff
	ld   a, a                                        ; $6a3a: $7f
	dec  b                                           ; $6a3b: $05
	nop                                              ; $6a3c: $00
	ld   a, e                                        ; $6a3d: $7b
	add  c                                           ; $6a3e: $81
	rst  $38                                         ; $6a3f: $ff
	ld   [bc], a                                     ; $6a40: $02
	add  h                                           ; $6a41: $84
	nop                                              ; $6a42: $00
	adc  a                                           ; $6a43: $8f
	add  c                                           ; $6a44: $81
	pop  de                                          ; $6a45: $d1
	add  b                                           ; $6a46: $80
	db   $d3                                         ; $6a47: $d3
	inc  b                                           ; $6a48: $04
	rst  JumpTable                                         ; $6a49: $df
	pop  hl                                          ; $6a4a: $e1
	ld   h, b                                        ; $6a4b: $60
	nop                                              ; $6a4c: $00
	sbc  a                                           ; $6a4d: $9f
	add  c                                           ; $6a4e: $81
	rst  $38                                         ; $6a4f: $ff
	rlca                                             ; $6a50: $07
	ld   h, b                                        ; $6a51: $60
	nop                                              ; $6a52: $00
	ld   a, h                                        ; $6a53: $7c
	cp   e                                           ; $6a54: $bb
	rst  $38                                         ; $6a55: $ff
	add  e                                           ; $6a56: $83
	cp   e                                           ; $6a57: $bb
	rst  ToBoot                                         ; $6a58: $c7
	add  b                                           ; $6a59: $80
	rst  $38                                         ; $6a5a: $ff
	ld   [bc], a                                     ; $6a5b: $02
	rst  ToBoot                                         ; $6a5c: $c7
	nop                                              ; $6a5d: $00
	jr   c, jr_079_69e1                              ; $6a5e: $38 $81

	rst  $38                                         ; $6a60: $ff
	inc  c                                           ; $6a61: $0c
	rst  ToBoot                                         ; $6a62: $c7
	nop                                              ; $6a63: $00
	rra                                              ; $6a64: $1f
	pop  hl                                          ; $6a65: $e1
	sbc  a                                           ; $6a66: $9f
	sbc  [hl]                                        ; $6a67: $9e
	rst  $38                                         ; $6a68: $ff
	ccf                                              ; $6a69: $3f
	rst  $38                                         ; $6a6a: $ff
	call z, $000c                                    ; $6a6b: $cc $0c $00
	rst  JumpTable                                         ; $6a6e: $df
	add  c                                           ; $6a6f: $81
	rst  $38                                         ; $6a70: $ff
	ld   [bc], a                                     ; $6a71: $02
	jr   nz, jr_079_6a74                             ; $6a72: $20 $00

jr_079_6a74:
	adc  l                                           ; $6a74: $8d
	add  b                                           ; $6a75: $80
	rst  $38                                         ; $6a76: $ff
	ld   bc, $ff7f                                   ; $6a77: $01 $7f $ff
	add  b                                           ; $6a7a: $80
	ccf                                              ; $6a7b: $3f
	add  hl, bc                                      ; $6a7c: $09
	rst  $38                                         ; $6a7d: $ff
	ldh  a, [c]                                      ; $6a7e: $f2
	nop                                              ; $6a7f: $00
	adc  l                                           ; $6a80: $8d
	rst  $38                                         ; $6a81: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a82: $cf
	rst  $38                                         ; $6a83: $ff
	ld   b, d                                        ; $6a84: $42

Jump_079_6a85:
jr_079_6a85:
	nop                                              ; $6a85: $00
	ld   hl, sp-$7b                                  ; $6a86: $f8 $85
	rst  $38                                         ; $6a88: $ff
	ld   [bc], a                                     ; $6a89: $02
	rlca                                             ; $6a8a: $07
	nop                                              ; $6a8b: $00
	ld   hl, sp-$7f                                  ; $6a8c: $f8 $81
	rst  $38                                         ; $6a8e: $ff
	ld   [bc], a                                     ; $6a8f: $02
	rlca                                             ; $6a90: $07
	nop                                              ; $6a91: $00
	ld   a, b                                        ; $6a92: $78
	add  e                                           ; $6a93: $83
	rst  $38                                         ; $6a94: $ff
	inc  b                                           ; $6a95: $04
	ld   a, a                                        ; $6a96: $7f
	cp   $06                                         ; $6a97: $fe $06
	nop                                              ; $6a99: $00
	ld   hl, sp-$7f                                  ; $6a9a: $f8 $81
	rst  $38                                         ; $6a9c: $ff
	nop                                              ; $6a9d: $00
	rlca                                             ; $6a9e: $07
	add  b                                           ; $6a9f: $80
	nop                                              ; $6aa0: $00
	add  d                                           ; $6aa1: $82
	ld   h, a                                        ; $6aa2: $67
	add  b                                           ; $6aa3: $80
	ld   b, b                                        ; $6aa4: $40
	nop                                              ; $6aa5: $00
	ret  nz                                          ; $6aa6: $c0

	add  b                                           ; $6aa7: $80
	call z, $c101                                    ; $6aa8: $cc $01 $c1
	add  c                                           ; $6aab: $81
	add  b                                           ; $6aac: $80
	sub  a                                           ; $6aad: $97
	ld   [bc], a                                     ; $6aae: $02
	sbc  a                                           ; $6aaf: $9f
	rra                                              ; $6ab0: $1f
	nop                                              ; $6ab1: $00
	add  d                                           ; $6ab2: $82
	cp   $02                                         ; $6ab3: $fe $02
	nop                                              ; $6ab5: $00
	ld   h, $27                                      ; $6ab6: $26 $27
	add  b                                           ; $6ab8: $80
	add  a                                           ; $6ab9: $87
	ld   bc, $2726                                   ; $6aba: $01 $26 $27
	add  b                                           ; $6abd: $80
	and  a                                           ; $6abe: $a7
	add  b                                           ; $6abf: $80
	ld   h, a                                        ; $6ac0: $67
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	add  d                                           ; $6ac3: $82
	xor  a                                           ; $6ac4: $af
	add  b                                           ; $6ac5: $80
	rlca                                             ; $6ac6: $07
	add  a                                           ; $6ac7: $87
	rst  $38                                         ; $6ac8: $ff
	nop                                              ; $6ac9: $00
	ld   c, $81                                      ; $6aca: $0e $81
	ld   bc, $008a                                   ; $6acc: $01 $8a $00
	ld   bc, $9060                                   ; $6acf: $01 $60 $90
	adc  d                                           ; $6ad2: $8a
	nop                                              ; $6ad3: $00
	add  b                                           ; $6ad4: $80
	rst  $38                                         ; $6ad5: $ff
	adc  h                                           ; $6ad6: $8c
	nop                                              ; $6ad7: $00
	add  b                                           ; $6ad8: $80
	rst  $38                                         ; $6ad9: $ff
	adc  h                                           ; $6ada: $8c
	nop                                              ; $6adb: $00
	add  b                                           ; $6adc: $80
	ret  nz                                          ; $6add: $c0

	add  b                                           ; $6ade: $80
	ld   a, [de]                                     ; $6adf: $1a
	add  b                                           ; $6ae0: $80
	ld   e, $86                                      ; $6ae1: $1e $86
	ccf                                              ; $6ae3: $3f
	add  d                                           ; $6ae4: $82
	ld   a, a                                        ; $6ae5: $7f
	add  b                                           ; $6ae6: $80
	reti                                             ; $6ae7: $d9


	add  b                                           ; $6ae8: $80
	ret                                              ; $6ae9: $c9


	add  b                                           ; $6aea: $80
	db   $db                                         ; $6aeb: $db
	add  b                                           ; $6aec: $80
	res  0, b                                        ; $6aed: $cb $80
	ld   e, e                                        ; $6aef: $5b
	add  b                                           ; $6af0: $80
	rlc  l                                           ; $6af1: $cb $05
	ld   e, c                                        ; $6af3: $59
	ld   e, e                                        ; $6af4: $5b
	ret  z                                           ; $6af5: $c8

	adc  $0f                                         ; $6af6: $ce $0f
	dec  bc                                          ; $6af8: $0b
	add  b                                           ; $6af9: $80
	dec  hl                                          ; $6afa: $2b
	add  b                                           ; $6afb: $80
	dec  bc                                          ; $6afc: $0b
	dec  b                                           ; $6afd: $05
	jr   z, jr_079_6b29                              ; $6afe: $28 $29

	ld   [$3a0b], sp                                 ; $6b00: $08 $0b $3a
	jr   c, jr_079_6a85                              ; $6b03: $38 $80

	db   $10                                         ; $6b05: $10
	rra                                              ; $6b06: $1f
	inc  sp                                          ; $6b07: $33
	scf                                              ; $6b08: $37
	add  sp, -$04                                    ; $6b09: $e8 $fc
	ld   b, b                                        ; $6b0b: $40
	ld   sp, hl                                      ; $6b0c: $f9
	add  hl, bc                                      ; $6b0d: $09
	or   b                                           ; $6b0e: $b0
	adc  d                                           ; $6b0f: $8a
	ld   e, d                                        ; $6b10: $5a
	add  h                                           ; $6b11: $84
	db   $e4                                         ; $6b12: $e4
	inc  d                                           ; $6b13: $14
	db   $fc                                         ; $6b14: $fc
	inc  b                                           ; $6b15: $04
	ld   c, d                                        ; $6b16: $4a
	xor  h                                           ; $6b17: $ac
	and  a                                           ; $6b18: $a7
	dec  d                                           ; $6b19: $15
	add  hl, de                                      ; $6b1a: $19
	ld   [hl+], a                                    ; $6b1b: $22
	ld   hl, $0709                                   ; $6b1c: $21 $09 $07
	inc  l                                           ; $6b1f: $2c
	jr   nz, jr_079_6b35                             ; $6b20: $20 $13

	ld   de, $3235                                   ; $6b22: $11 $35 $32
	rla                                              ; $6b25: $17
	ld   [de], a                                     ; $6b26: $12
	add  b                                           ; $6b27: $80
	inc  a                                           ; $6b28: $3c

jr_079_6b29:
	nop                                              ; $6b29: $00
	rst  $38                                         ; $6b2a: $ff
	adc  l                                           ; $6b2b: $8d
	nop                                              ; $6b2c: $00
	call c, $8601                                    ; $6b2d: $dc $01 $86
	nop                                              ; $6b30: $00
	add  [hl]                                        ; $6b31: $86
	rrca                                             ; $6b32: $0f
	add  [hl]                                        ; $6b33: $86
	nop                                              ; $6b34: $00

jr_079_6b35:
	nop                                              ; $6b35: $00
	rst  $38                                         ; $6b36: $ff
	add  l                                           ; $6b37: $85
	cp   $00                                         ; $6b38: $fe $00
	ld   bc, $0085                                   ; $6b3a: $01 $85 $00
	ld   [$c8f7], sp                                 ; $6b3d: $08 $f7 $c8
	ret  nz                                          ; $6b40: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $6b41: $f0 $a0
	ld   a, [hl]                                     ; $6b43: $7e
	ld   a, $f7                                      ; $6b44: $3e $f7
	jr   @-$79                                       ; $6b46: $18 $85

	nop                                              ; $6b48: $00
	ld   [bc], a                                     ; $6b49: $02
	ld   a, a                                        ; $6b4a: $7f
	ldh  a, [rSVBK]                                  ; $6b4b: $f0 $70
	add  b                                           ; $6b4d: $80
	inc  a                                           ; $6b4e: $3c
	add  b                                           ; $6b4f: $80
	rrca                                             ; $6b50: $0f
	ld   bc, $7c83                                   ; $6b51: $01 $83 $7c
	add  l                                           ; $6b54: $85
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	rst  $38                                         ; $6b57: $ff
	add  d                                           ; $6b58: $82
	nop                                              ; $6b59: $00
	add  b                                           ; $6b5a: $80
	add  b                                           ; $6b5b: $80
	ld   bc, $1fe0                                   ; $6b5c: $01 $e0 $1f
	add  l                                           ; $6b5f: $85
	nop                                              ; $6b60: $00
	ld   bc, $00ff                                   ; $6b61: $01 $ff $00
	add  b                                           ; $6b64: $80
	ld   a, a                                        ; $6b65: $7f
	add  b                                           ; $6b66: $80
	rst  $38                                         ; $6b67: $ff
	add  b                                           ; $6b68: $80
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	rst  $38                                         ; $6b6b: $ff
	add  l                                           ; $6b6c: $85
	nop                                              ; $6b6d: $00
	ld   bc, $00ff                                   ; $6b6e: $01 $ff $00
	add  d                                           ; $6b71: $82
	rst  $38                                         ; $6b72: $ff
	add  b                                           ; $6b73: $80
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	rst  $38                                         ; $6b76: $ff
	add  l                                           ; $6b77: $85

jr_079_6b78:
	nop                                              ; $6b78: $00
	ld   bc, $00ff                                   ; $6b79: $01 $ff $00
	add  d                                           ; $6b7c: $82
	rst  $38                                         ; $6b7d: $ff
	add  b                                           ; $6b7e: $80
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	rst  $38                                         ; $6b81: $ff
	add  l                                           ; $6b82: $85
	nop                                              ; $6b83: $00
	ld   bc, $00ff                                   ; $6b84: $01 $ff $00
	add  d                                           ; $6b87: $82
	rst  $38                                         ; $6b88: $ff
	add  b                                           ; $6b89: $80
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	rst  $38                                         ; $6b8c: $ff
	add  l                                           ; $6b8d: $85
	nop                                              ; $6b8e: $00
	ld   [bc], a                                     ; $6b8f: $02
	xor  e                                           ; $6b90: $ab
	ld   d, h                                        ; $6b91: $54
	ret  nz                                          ; $6b92: $c0

	add  b                                           ; $6b93: $80
	ret                                              ; $6b94: $c9


	nop                                              ; $6b95: $00
	db   $db                                         ; $6b96: $db
	add  b                                           ; $6b97: $80
	dec  de                                          ; $6b98: $1b
	nop                                              ; $6b99: $00
	db   $e4                                         ; $6b9a: $e4
	add  l                                           ; $6b9b: $85
	nop                                              ; $6b9c: $00
	ld   [bc], a                                     ; $6b9d: $02
	cp   d                                           ; $6b9e: $ba
	ld   b, l                                        ; $6b9f: $45
	nop                                              ; $6ba0: $00
	add  b                                           ; $6ba1: $80
	or   d                                           ; $6ba2: $b2
	add  c                                           ; $6ba3: $81
	cp   e                                           ; $6ba4: $bb
	nop                                              ; $6ba5: $00
	ld   b, h                                        ; $6ba6: $44
	add  l                                           ; $6ba7: $85
	nop                                              ; $6ba8: $00
	ld   bc, $40bf                                   ; $6ba9: $01 $bf $40
	add  d                                           ; $6bac: $82
	ld   a, a                                        ; $6bad: $7f
	add  b                                           ; $6bae: $80
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	rst  $38                                         ; $6bb1: $ff
	add  l                                           ; $6bb2: $85
	nop                                              ; $6bb3: $00
	ld   bc, $00ff                                   ; $6bb4: $01 $ff $00
	add  b                                           ; $6bb7: $80
	cp   $80                                         ; $6bb8: $fe $80
	db   $fc                                         ; $6bba: $fc
	add  b                                           ; $6bbb: $80
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	rst  $38                                         ; $6bbe: $ff
	add  l                                           ; $6bbf: $85
	nop                                              ; $6bc0: $00
	ld   bc, $00ff                                   ; $6bc1: $01 $ff $00
	add  b                                           ; $6bc4: $80
	rst  $38                                         ; $6bc5: $ff
	add  b                                           ; $6bc6: $80
	ld   a, a                                        ; $6bc7: $7f
	add  b                                           ; $6bc8: $80
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	rst  $38                                         ; $6bcb: $ff
	add  l                                           ; $6bcc: $85
	nop                                              ; $6bcd: $00
	ld   bc, $00ff                                   ; $6bce: $01 $ff $00
	add  b                                           ; $6bd1: $80
	cp   $80                                         ; $6bd2: $fe $80
	rst  $38                                         ; $6bd4: $ff
	add  b                                           ; $6bd5: $80
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	rst  $38                                         ; $6bd8: $ff
	add  l                                           ; $6bd9: $85
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	rst  $38                                         ; $6bdc: $ff
	add  h                                           ; $6bdd: $84
	nop                                              ; $6bde: $00
	ld   bc, $f101                                   ; $6bdf: $01 $01 $f1
	adc  l                                           ; $6be2: $8d
	rrca                                             ; $6be3: $0f
	nop                                              ; $6be4: $00
	rst  $38                                         ; $6be5: $ff
	adc  [hl]                                        ; $6be6: $8e
	cp   $80                                         ; $6be7: $fe $80
	rlca                                             ; $6be9: $07
	dec  bc                                          ; $6bea: $0b
	ld   [$7a78], sp                                 ; $6beb: $08 $78 $7a
	inc  a                                           ; $6bee: $3c
	cp   a                                           ; $6bef: $bf
	ret  nz                                          ; $6bf0: $c0

	db   $fd                                         ; $6bf1: $fd
	or   h                                           ; $6bf2: $b4
	dec  de                                          ; $6bf3: $1b
	sbc  e                                           ; $6bf4: $9b
	or   b                                           ; $6bf5: $b0
	jr   nc, jr_079_6b78                             ; $6bf6: $30 $80

	jr   jr_079_6c03                                 ; $6bf8: $18 $09

	ld   h, b                                        ; $6bfa: $60
	ld   h, h                                        ; $6bfb: $64
	call nz, $b941                                   ; $6bfc: $c4 $41 $b9
	dec  b                                           ; $6bff: $05
	ld   a, a                                        ; $6c00: $7f
	inc  bc                                          ; $6c01: $03
	ld   h, a                                        ; $6c02: $67

Call_079_6c03:
jr_079_6c03:
	daa                                              ; $6c03: $27
	add  b                                           ; $6c04: $80
	ld   b, c                                        ; $6c05: $41
	add  b                                           ; $6c06: $80
	rst  $28                                         ; $6c07: $ef
	ld   bc, $c8c9                                   ; $6c08: $01 $c9 $c8
	add  b                                           ; $6c0b: $80
	db   $fc                                         ; $6c0c: $fc
	add  b                                           ; $6c0d: $80
	ccf                                              ; $6c0e: $3f
	add  b                                           ; $6c0f: $80
	rra                                              ; $6c10: $1f
	add  b                                           ; $6c11: $80
	sbc  a                                           ; $6c12: $9f
	add  [hl]                                        ; $6c13: $86
	rst  $38                                         ; $6c14: $ff
	add  d                                           ; $6c15: $82
	nop                                              ; $6c16: $00
	adc  d                                           ; $6c17: $8a
	ld   a, a                                        ; $6c18: $7f
	add  d                                           ; $6c19: $82
	nop                                              ; $6c1a: $00
	adc  d                                           ; $6c1b: $8a
	rst  $38                                         ; $6c1c: $ff
	add  d                                           ; $6c1d: $82
	nop                                              ; $6c1e: $00
	add  d                                           ; $6c1f: $82
	cp   $85                                         ; $6c20: $fe $85
	rst  $38                                         ; $6c22: $ff
	nop                                              ; $6c23: $00
	add  b                                           ; $6c24: $80
	add  e                                           ; $6c25: $83
	ld   a, a                                        ; $6c26: $7f
	add  b                                           ; $6c27: $80
	nop                                              ; $6c28: $00
	add  d                                           ; $6c29: $82
	ld   a, a                                        ; $6c2a: $7f
	dec  bc                                          ; $6c2b: $0b
	ld   [hl-], a                                    ; $6c2c: $32
	ld   a, a                                        ; $6c2d: $7f
	ld   h, d                                        ; $6c2e: $62
	ld   [hl], d                                     ; $6c2f: $72
	cp   l                                           ; $6c30: $bd
	db   $ed                                         ; $6c31: $ed
	db   $fd                                         ; $6c32: $fd
	push af                                          ; $6c33: $f5
	db   $fd                                         ; $6c34: $fd
	ld   a, [$0002]                                  ; $6c35: $fa $02 $00
	add  b                                           ; $6c38: $80
	cp   $80                                         ; $6c39: $fe $80
	rst  $38                                         ; $6c3b: $ff
	ld   bc, $ff6a                                   ; $6c3c: $01 $6a $ff
	add  b                                           ; $6c3f: $80
	ld   l, e                                        ; $6c40: $6b
	rlca                                             ; $6c41: $07
	sub  l                                           ; $6c42: $95
	or   [hl]                                        ; $6c43: $b6
	or   a                                           ; $6c44: $b7
	or   l                                           ; $6c45: $b5
	or   a                                           ; $6c46: $b7
	xor  e                                           ; $6c47: $ab
	xor  b                                           ; $6c48: $a8
	nop                                              ; $6c49: $00
	add  b                                           ; $6c4a: $80
	rrca                                             ; $6c4b: $0f
	add  b                                           ; $6c4c: $80
	cp   a                                           ; $6c4d: $bf
	ld   bc, $ff63                                   ; $6c4e: $01 $63 $ff
	add  b                                           ; $6c51: $80
	rst  $20                                         ; $6c52: $e7
	nop                                              ; $6c53: $00
	ld   h, d                                        ; $6c54: $62
	add  e                                           ; $6c55: $83
	cp   $80                                         ; $6c56: $fe $80
	nop                                              ; $6c58: $00
	add  d                                           ; $6c59: $82
	rst  $38                                         ; $6c5a: $ff
	ld   bc, $ff43                                   ; $6c5b: $01 $43 $ff
	add  b                                           ; $6c5e: $80
	ld   e, a                                        ; $6c5f: $5f
	nop                                              ; $6c60: $00
	cp   h                                           ; $6c61: $bc
	add  d                                           ; $6c62: $82
	nop                                              ; $6c63: $00
	add  b                                           ; $6c64: $80
	ld   a, h                                        ; $6c65: $7c
	add  b                                           ; $6c66: $80
	ld   a, l                                        ; $6c67: $7d
	add  b                                           ; $6c68: $80
	ei                                               ; $6c69: $fb
	add  b                                           ; $6c6a: $80
	ld   a, [$f680]                                  ; $6c6b: $fa $80 $f6
	add  b                                           ; $6c6e: $80
	ldh  [c], a                                      ; $6c6f: $e2
	add  d                                           ; $6c70: $82
	nop                                              ; $6c71: $00
	add  b                                           ; $6c72: $80
	rlca                                             ; $6c73: $07
	add  b                                           ; $6c74: $80
	rla                                              ; $6c75: $17
	add  b                                           ; $6c76: $80
	dec  de                                          ; $6c77: $1b
	add  b                                           ; $6c78: $80
	xor  e                                           ; $6c79: $ab
	add  b                                           ; $6c7a: $80
	xor  l                                           ; $6c7b: $ad
	add  b                                           ; $6c7c: $80
	add  hl, bc                                      ; $6c7d: $09
	add  d                                           ; $6c7e: $82
	nop                                              ; $6c7f: $00
	adc  d                                           ; $6c80: $8a
	rst  $38                                         ; $6c81: $ff
	add  b                                           ; $6c82: $80
	rlca                                             ; $6c83: $07
	add  b                                           ; $6c84: $80
	rra                                              ; $6c85: $1f
	adc  c                                           ; $6c86: $89
	ld   a, a                                        ; $6c87: $7f
	nop                                              ; $6c88: $00
	adc  a                                           ; $6c89: $8f
	adc  l                                           ; $6c8a: $8d
	rrca                                             ; $6c8b: $0f
	nop                                              ; $6c8c: $00
	rst  $38                                         ; $6c8d: $ff
	adc  [hl]                                        ; $6c8e: $8e
	cp   $80                                         ; $6c8f: $fe $80
	ldh  [$09], a                                    ; $6c91: $e0 $09
	ld   a, a                                        ; $6c93: $7f
	ld   l, a                                        ; $6c94: $6f
	sub  e                                           ; $6c95: $93
	add  e                                           ; $6c96: $83
	ret                                              ; $6c97: $c9


	reti                                             ; $6c98: $d9


	sbc  c                                           ; $6c99: $99
	xor  c                                           ; $6c9a: $a9
	cp   h                                           ; $6c9b: $bc
	sbc  e                                           ; $6c9c: $9b
	add  b                                           ; $6c9d: $80
	adc  a                                           ; $6c9e: $8f
	inc  de                                          ; $6c9f: $13
	ld   b, $00                                      ; $6ca0: $06 $00
	push bc                                          ; $6ca2: $c5
	rst  ToBoot                                         ; $6ca3: $c7
	dec  a                                           ; $6ca4: $3d
	dec  [hl]                                        ; $6ca5: $35
	jp   hl                                          ; $6ca6: $e9


	ldh  [$7f], a                                    ; $6ca7: $e0 $7f
	ld   h, e                                        ; $6ca9: $63
	dec  sp                                          ; $6caa: $3b
	inc  de                                          ; $6cab: $13
	ld   e, e                                        ; $6cac: $5b
	sub  e                                           ; $6cad: $93
	cp   e                                           ; $6cae: $bb
	xor  c                                           ; $6caf: $a9
	cpl                                              ; $6cb0: $2f
	jp   $bfff                                       ; $6cb1: $c3 $ff $bf


	add  c                                           ; $6cb4: $81
	rst  $38                                         ; $6cb5: $ff
	nop                                              ; $6cb6: $00
	ld   a, a                                        ; $6cb7: $7f
	add  a                                           ; $6cb8: $87
	rst  $38                                         ; $6cb9: $ff
	nop                                              ; $6cba: $00
	ccf                                              ; $6cbb: $3f
	adc  [hl]                                        ; $6cbc: $8e
	ld   a, a                                        ; $6cbd: $7f
	adc  d                                           ; $6cbe: $8a
	rst  $38                                         ; $6cbf: $ff
	inc  bc                                          ; $6cc0: $03
	ld   hl, sp-$05                                  ; $6cc1: $f8 $fb
	ld   hl, sp-$05                                  ; $6cc3: $f8 $fb
	adc  d                                           ; $6cc5: $8a
	rst  $38                                         ; $6cc6: $ff
	inc  bc                                          ; $6cc7: $03
	rlca                                             ; $6cc8: $07
	rst  $20                                         ; $6cc9: $e7
	rla                                              ; $6cca: $17
	sbc  d                                           ; $6ccb: $9a
	add  e                                           ; $6ccc: $83
	ld   [hl], d                                     ; $6ccd: $72
	ld   bc, $7252                                   ; $6cce: $01 $52 $72
	add  b                                           ; $6cd1: $80
	ld   [hl], a                                     ; $6cd2: $77
	add  h                                           ; $6cd3: $84
	ld   [hl], d                                     ; $6cd4: $72
	inc  b                                           ; $6cd5: $04
	pop  hl                                          ; $6cd6: $e1
	ld   l, e                                        ; $6cd7: $6b
	ld   h, c                                        ; $6cd8: $61
	ld   l, e                                        ; $6cd9: $6b
	dec  hl                                          ; $6cda: $2b
	add  c                                           ; $6cdb: $81
	ld   l, e                                        ; $6cdc: $6b
	inc  bc                                          ; $6cdd: $03
	ld   l, h                                        ; $6cde: $6c
	ld   l, a                                        ; $6cdf: $6f
	ld   hl, sp-$05                                  ; $6ce0: $f8 $fb
	add  d                                           ; $6ce2: $82
	ld   l, e                                        ; $6ce3: $6b
	ld   [bc], a                                     ; $6ce4: $02
	add  [hl]                                        ; $6ce5: $86
	rst  $20                                         ; $6ce6: $e7
	jp   nz, $e383                                   ; $6ce7: $c2 $83 $e3

	add  b                                           ; $6cea: $80
	ei                                               ; $6ceb: $fb
	add  b                                           ; $6cec: $80
	rst  $20                                         ; $6ced: $e7
	add  d                                           ; $6cee: $82
	db   $e3                                         ; $6cef: $e3
	ld   [bc], a                                     ; $6cf0: $02
	ld   e, h                                        ; $6cf1: $5c
	ld   e, a                                        ; $6cf2: $5f
	rrca                                             ; $6cf3: $0f
	add  l                                           ; $6cf4: $85
	ld   c, a                                        ; $6cf5: $4f
	add  b                                           ; $6cf6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf7: $cf
	add  d                                           ; $6cf8: $82
	ld   c, a                                        ; $6cf9: $4f
	db   $10                                         ; $6cfa: $10
	db   $ec                                         ; $6cfb: $ec
	ldh  [$c4], a                                    ; $6cfc: $e0 $c4
	ret  nz                                          ; $6cfe: $c0

	ldh  a, [$c0]                                    ; $6cff: $f0 $c0
	cp   $c0                                         ; $6d01: $fe $c0
	add  $c0                                         ; $6d03: $c6 $c0
	add  $c0                                         ; $6d05: $c6 $c0
	add  $c0                                         ; $6d07: $c6 $c0
	add  $c0                                         ; $6d09: $c6 $c0
	ld   a, [$0180]                                  ; $6d0b: $fa $80 $01
	adc  h                                           ; $6d0e: $8c
	nop                                              ; $6d0f: $00
	adc  b                                           ; $6d10: $88
	rst  $38                                         ; $6d11: $ff
	add  b                                           ; $6d12: $80
	db   $fc                                         ; $6d13: $fc
	add  b                                           ; $6d14: $80
	ldh  a, [$80]                                    ; $6d15: $f0 $80
	add  c                                           ; $6d17: $81
	adc  c                                           ; $6d18: $89
	ld   a, a                                        ; $6d19: $7f
	inc  b                                           ; $6d1a: $04
	cp   a                                           ; $6d1b: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d1c: $cf
	rra                                              ; $6d1d: $1f
	di                                               ; $6d1e: $f3
	inc  de                                          ; $6d1f: $13
	adc  l                                           ; $6d20: $8d
	rrca                                             ; $6d21: $0f
	nop                                              ; $6d22: $00
	rst  $38                                         ; $6d23: $ff
	adc  l                                           ; $6d24: $8d
	cp   $15                                         ; $6d25: $fe $15
	pop  bc                                          ; $6d27: $c1
	cp   e                                           ; $6d28: $bb
	add  l                                           ; $6d29: $85
	cp   $b0                                         ; $6d2a: $fe $b0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d2c: $cf
	ld   [hl], a                                     ; $6d2d: $77
	sbc  b                                           ; $6d2e: $98
	jr   c, jr_079_6d7d                              ; $6d2f: $38 $4c

	and  a                                           ; $6d31: $a7
	jr   z, jr_079_6d5d                              ; $6d32: $28 $29

	ld   a, c                                        ; $6d34: $79
	push bc                                          ; $6d35: $c5
	inc  de                                          ; $6d36: $13
	xor  h                                           ; $6d37: $ac
	cp   c                                           ; $6d38: $b9
	rst  ToBoot                                         ; $6d39: $c7
	ld   hl, $fd1f                                   ; $6d3a: $21 $1f $fd
	add  b                                           ; $6d3d: $80
	push hl                                          ; $6d3e: $e5
	ld   [$65fd], sp                                 ; $6d3f: $08 $fd $65
	ld   [hl], a                                     ; $6d42: $77
	dec  b                                           ; $6d43: $05
	rla                                              ; $6d44: $17
	sbc  l                                           ; $6d45: $9d
	ld   a, l                                        ; $6d46: $7d
	sbc  a                                           ; $6d47: $9f
	ld   b, c                                        ; $6d48: $41
	adc  l                                           ; $6d49: $8d
	rst  $38                                         ; $6d4a: $ff
	nop                                              ; $6d4b: $00
	ccf                                              ; $6d4c: $3f
	adc  l                                           ; $6d4d: $8d
	ld   a, a                                        ; $6d4e: $7f
	nop                                              ; $6d4f: $00
	ld   a, l                                        ; $6d50: $7d
	add  l                                           ; $6d51: $85
	ld   sp, hl                                      ; $6d52: $f9
	add  b                                           ; $6d53: $80
	ld   hl, sp-$7f                                  ; $6d54: $f8 $81
	ei                                               ; $6d56: $fb
	add  b                                           ; $6d57: $80
	ld   hl, sp+$01                                  ; $6d58: $f8 $01
	rst  $38                                         ; $6d5a: $ff
	rst  JumpTable                                         ; $6d5b: $df
	add  l                                           ; $6d5c: $85

jr_079_6d5d:
	rst  $10                                         ; $6d5d: $d7
	add  b                                           ; $6d5e: $80
	rla                                              ; $6d5f: $17
	add  c                                           ; $6d60: $81
	rst  $30                                         ; $6d61: $f7
	add  b                                           ; $6d62: $80
	rlca                                             ; $6d63: $07
	inc  b                                           ; $6d64: $04
	rst  $38                                         ; $6d65: $ff
	or   e                                           ; $6d66: $b3
	ld   [hl], e                                     ; $6d67: $73
	ld   d, e                                        ; $6d68: $53
	ld   [hl], e                                     ; $6d69: $73
	add  b                                           ; $6d6a: $80
	ld   a, e                                        ; $6d6b: $7b
	add  c                                           ; $6d6c: $81
	ld   a, c                                        ; $6d6d: $79
	inc  b                                           ; $6d6e: $04
	ld   l, c                                        ; $6d6f: $69
	ld   l, b                                        ; $6d70: $68
	ld   h, a                                        ; $6d71: $67
	ld   l, e                                        ; $6d72: $6b
	ld   h, h                                        ; $6d73: $64
	add  b                                           ; $6d74: $80
	ld   h, d                                        ; $6d75: $62
	nop                                              ; $6d76: $00
	sbc  l                                           ; $6d77: $9d
	add  c                                           ; $6d78: $81
	ld   l, l                                        ; $6d79: $6d
	add  b                                           ; $6d7a: $80
	dec  l                                           ; $6d7b: $2d
	add  b                                           ; $6d7c: $80

jr_079_6d7d:
	dec  h                                           ; $6d7d: $25
	add  b                                           ; $6d7e: $80
	inc  a                                           ; $6d7f: $3c
	add  b                                           ; $6d80: $80
	inc  hl                                          ; $6d81: $23
	add  b                                           ; $6d82: $80
	sub  b                                           ; $6d83: $90
	ld   bc, $d292                                   ; $6d84: $01 $92 $d2
	add  d                                           ; $6d87: $82
	db   $e3                                         ; $6d88: $e3
	add  b                                           ; $6d89: $80
	di                                               ; $6d8a: $f3
	ld   b, $b3                                      ; $6d8b: $06 $b3
	di                                               ; $6d8d: $f3
	rst  $28                                         ; $6d8e: $ef
	rst  $38                                         ; $6d8f: $ff
	ld   bc, $11f1                                   ; $6d90: $01 $f1 $11
	add  c                                           ; $6d93: $81
	pop  af                                          ; $6d94: $f1
	nop                                              ; $6d95: $00
	ld   l, h                                        ; $6d96: $6c
	add  a                                           ; $6d97: $87
	ld   l, a                                        ; $6d98: $6f
	nop                                              ; $6d99: $00
	cpl                                              ; $6d9a: $2f
	add  b                                           ; $6d9b: $80
	xor  a                                           ; $6d9c: $af
	add  c                                           ; $6d9d: $81
	cpl                                              ; $6d9e: $2f
	add  b                                           ; $6d9f: $80
	ret  nz                                          ; $6da0: $c0

	ld   c, $c6                                      ; $6da1: $0e $c6
	ret  nz                                          ; $6da3: $c0

	add  $c0                                         ; $6da4: $c6 $c0
	add  $c0                                         ; $6da6: $c6 $c0
	add  $c0                                         ; $6da8: $c6 $c0
	add  $c0                                         ; $6daa: $c6 $c0
	add  $c0                                         ; $6dac: $c6 $c0
	add  $c0                                         ; $6dae: $c6 $c0
	ld   a, [$008e]                                  ; $6db0: $fa $8e $00
	add  b                                           ; $6db3: $80
	cp   $84                                         ; $6db4: $fe $84
	rst  $38                                         ; $6db6: $ff
	dec  c                                           ; $6db7: $0d
	add  b                                           ; $6db8: $80
	adc  a                                           ; $6db9: $8f
	ccf                                              ; $6dba: $3f
	ld   sp, $fedf                                   ; $6dbb: $31 $df $fe
	adc  a                                           ; $6dbe: $8f
	and  e                                           ; $6dbf: $a3
	dec  a                                           ; $6dc0: $3d
	scf                                              ; $6dc1: $37
	rra                                              ; $6dc2: $1f
	dec  de                                          ; $6dc3: $1b
	ld   l, [hl]                                     ; $6dc4: $6e
	ld   l, h                                        ; $6dc5: $6c
	add  b                                           ; $6dc6: $80
	halt                                             ; $6dc7: $76

jr_079_6dc8:
	add  b                                           ; $6dc8: $80
	ld   a, e                                        ; $6dc9: $7b
	dec  b                                           ; $6dca: $05
	dec  sp                                          ; $6dcb: $3b
	cp   e                                           ; $6dcc: $bb
	cp   l                                           ; $6dcd: $bd
	db   $fd                                         ; $6dce: $fd
	call c, $85ec                                    ; $6dcf: $dc $ec $85
	rrca                                             ; $6dd2: $0f
	inc  b                                           ; $6dd3: $04
	inc  c                                           ; $6dd4: $0c
	rrca                                             ; $6dd5: $0f
	dec  bc                                          ; $6dd6: $0b
	rrca                                             ; $6dd7: $0f
	rlca                                             ; $6dd8: $07
	add  c                                           ; $6dd9: $81
	rrca                                             ; $6dda: $0f
	ld   b, $f8                                      ; $6ddb: $06 $f8
	cp   $ee                                         ; $6ddd: $fe $ee
	cp   $de                                         ; $6ddf: $fe $de
	cp   $3e                                         ; $6de1: $fe $3e
	add  a                                           ; $6de3: $87
	cp   $20                                         ; $6de4: $fe $20
	db   $d3                                         ; $6de6: $d3
	db   $fd                                         ; $6de7: $fd
	jr   z, jr_079_6deb                              ; $6de8: $28 $01

	ld   h, [hl]                                     ; $6dea: $66

jr_079_6deb:
	rst  JumpTable                                         ; $6deb: $df
	ld   d, a                                        ; $6dec: $57
	ld   d, l                                        ; $6ded: $55
	ld   e, l                                        ; $6dee: $5d
	ld   [hl], d                                     ; $6def: $72
	ld   l, d                                        ; $6df0: $6a
	ld   d, l                                        ; $6df1: $55
	xor  [hl]                                        ; $6df2: $ae
	inc  d                                           ; $6df3: $14
	xor  e                                           ; $6df4: $ab
	ld   d, [hl]                                     ; $6df5: $56
	dec  hl                                          ; $6df6: $2b
	rst  $20                                         ; $6df7: $e7
	ld   l, e                                        ; $6df8: $6b
	ld   c, c                                        ; $6df9: $49
	di                                               ; $6dfa: $f3
	ld   a, a                                        ; $6dfb: $7f
	ld   sp, $2565                                   ; $6dfc: $31 $65 $25
	db   $ed                                         ; $6dff: $ed
	jp   hl                                          ; $6e00: $e9


	ld   e, a                                        ; $6e01: $5f
	sbc  e                                           ; $6e02: $9b
	scf                                              ; $6e03: $37
	or   a                                           ; $6e04: $b7
	dec  b                                           ; $6e05: $05
	ld   a, e                                        ; $6e06: $7b
	adc  l                                           ; $6e07: $8d
	rst  $38                                         ; $6e08: $ff
	nop                                              ; $6e09: $00
	ccf                                              ; $6e0a: $3f
	adc  d                                           ; $6e0b: $8a
	ld   a, a                                        ; $6e0c: $7f
	add  b                                           ; $6e0d: $80
	ld   h, b                                        ; $6e0e: $60
	add  b                                           ; $6e0f: $80
	nop                                              ; $6e10: $00
	add  d                                           ; $6e11: $82
	rst  $38                                         ; $6e12: $ff
	ld   bc, $ccc0                                   ; $6e13: $01 $c0 $cc
	add  h                                           ; $6e16: $84
	jp   nc, Jump_079_5203                           ; $6e17: $d2 $03 $52

	ld   l, [hl]                                     ; $6e1a: $6e
	ld   c, $3e                                      ; $6e1b: $0e $3e
	add  h                                           ; $6e1d: $84
	rst  $38                                         ; $6e1e: $ff
	ld   bc, $cdc1                                   ; $6e1f: $01 $c1 $cd
	add  l                                           ; $6e22: $85
	pop  de                                          ; $6e23: $d1
	ld   bc, $62b0                                   ; $6e24: $01 $b0 $62
	add  d                                           ; $6e27: $82
	ld   h, c                                        ; $6e28: $61
	add  d                                           ; $6e29: $82
	ld   h, b                                        ; $6e2a: $60
	ld   [bc], a                                     ; $6e2b: $02
	ld   l, a                                        ; $6e2c: $6f
	ld   h, b                                        ; $6e2d: $60
	ld   l, a                                        ; $6e2e: $6f
	add  c                                           ; $6e2f: $81
	ld   h, b                                        ; $6e30: $60
	ld   bc, $c070                                   ; $6e31: $01 $70 $c0
	add  b                                           ; $6e34: $80
	call nz, $e680                                   ; $6e35: $c4 $80 $e6
	ld   a, [bc]                                     ; $6e38: $0a
	ldh  [$e2], a                                    ; $6e39: $e0 $e2
	inc  sp                                          ; $6e3b: $33
	rst  $38                                         ; $6e3c: $ff
	ld   l, [hl]                                     ; $6e3d: $6e
	ccf                                              ; $6e3e: $3f
	add  e                                           ; $6e3f: $83
	sbc  a                                           ; $6e40: $9f
	add  l                                           ; $6e41: $85
	add  a                                           ; $6e42: $87
	jr   jr_079_6dc8                                 ; $6e43: $18 $83

	reti                                             ; $6e45: $d9


	add  b                                           ; $6e46: $80
	ld   c, b                                        ; $6e47: $48
	nop                                              ; $6e48: $00
	inc  e                                           ; $6e49: $1c
	add  c                                           ; $6e4a: $81
	inc  a                                           ; $6e4b: $3c
	dec  b                                           ; $6e4c: $05
	xor  h                                           ; $6e4d: $ac
	sbc  [hl]                                        ; $6e4e: $9e
	ld   e, [hl]                                     ; $6e4f: $5e
	rst  JumpTable                                         ; $6e50: $df
	ccf                                              ; $6e51: $3f
	xor  a                                           ; $6e52: $af
	add  d                                           ; $6e53: $82
	adc  a                                           ; $6e54: $8f
	add  e                                           ; $6e55: $83
	sbc  a                                           ; $6e56: $9f
	nop                                              ; $6e57: $00
	rst  JumpTable                                         ; $6e58: $df
	add  b                                           ; $6e59: $80
	rst  $38                                         ; $6e5a: $ff
	ld   [de], a                                     ; $6e5b: $12
	rst  JumpTable                                         ; $6e5c: $df
	rst  $38                                         ; $6e5d: $ff
	and  b                                           ; $6e5e: $a0
	ret  nz                                          ; $6e5f: $c0

	add  $c0                                         ; $6e60: $c6 $c0
	add  $c0                                         ; $6e62: $c6 $c0
	add  $c0                                         ; $6e64: $c6 $c0
	add  $c0                                         ; $6e66: $c6 $c0
	add  $c0                                         ; $6e68: $c6 $c0
	jp   nz, $c2c0                                   ; $6e6a: $c2 $c0 $c2

	ret  nz                                          ; $6e6d: $c0

	ld   a, [$008d]                                  ; $6e6e: $fa $8d $00
	inc  b                                           ; $6e71: $04
	ld   [hl], b                                     ; $6e72: $70
	nop                                              ; $6e73: $00
	ld   [$8000], sp                                 ; $6e74: $08 $00 $80
	add  c                                           ; $6e77: $81
	nop                                              ; $6e78: $00
	ld   [bc], a                                     ; $6e79: $02
	ret  z                                           ; $6e7a: $c8

	nop                                              ; $6e7b: $00
	jr   nc, @-$7e                                   ; $6e7c: $30 $80

	ret  nz                                          ; $6e7e: $c0

	add  b                                           ; $6e7f: $80
	pop  af                                          ; $6e80: $f1
	ld   bc, $c0e0                                   ; $6e81: $01 $e0 $c0
	add  b                                           ; $6e84: $80
	db   $fc                                         ; $6e85: $fc
	inc  bc                                          ; $6e86: $03
	ld   l, h                                        ; $6e87: $6c
	ld   e, h                                        ; $6e88: $5c
	inc  [hl]                                        ; $6e89: $34
	inc  h                                           ; $6e8a: $24
	add  d                                           ; $6e8b: $82
	ld   b, $80                                      ; $6e8c: $06 $80
	ld   h, d                                        ; $6e8e: $62
	add  c                                           ; $6e8f: $81
	ld   [hl], d                                     ; $6e90: $72
	nop                                              ; $6e91: $00
	adc  l                                           ; $6e92: $8d
	adc  l                                           ; $6e93: $8d
	rrca                                             ; $6e94: $0f
	nop                                              ; $6e95: $00
	ld   [$fe8d], sp                                 ; $6e96: $08 $8d $fe
	ld   [$30b5], sp                                 ; $6e99: $08 $b5 $30
	inc  a                                           ; $6e9c: $3c
	ld   e, $cd                                      ; $6e9d: $1e $cd
	db   $fc                                         ; $6e9f: $fc
	adc  a                                           ; $6ea0: $8f
	jr   @-$06                                       ; $6ea1: $18 $f8

	add  b                                           ; $6ea3: $80
	dec  de                                          ; $6ea4: $1b
	ld   [de], a                                     ; $6ea5: $12
	ld   e, a                                        ; $6ea6: $5f
	sbc  [hl]                                        ; $6ea7: $9e
	ld   a, [hl]                                     ; $6ea8: $7e
	and  b                                           ; $6ea9: $a0
	ldh  [$fe], a                                    ; $6eaa: $e0 $fe
	ld   b, c                                        ; $6eac: $41
	ld   e, l                                        ; $6ead: $5d
	inc  hl                                          ; $6eae: $23
	cp   a                                           ; $6eaf: $bf
	db   $d3                                         ; $6eb0: $d3
	dec  bc                                          ; $6eb1: $0b
	rra                                              ; $6eb2: $1f
	rlca                                             ; $6eb3: $07
	db   $fd                                         ; $6eb4: $fd
	inc  hl                                          ; $6eb5: $23
	add  b                                           ; $6eb6: $80
	ldh  [rP1], a                                    ; $6eb7: $e0 $00
	add  b                                           ; $6eb9: $80
	rlca                                             ; $6eba: $07
	nop                                              ; $6ebb: $00
	ret  nz                                          ; $6ebc: $c0

	add  b                                           ; $6ebd: $80
	cp   $81                                         ; $6ebe: $fe $81
	db   $fc                                         ; $6ec0: $fc
	ld   a, [bc]                                     ; $6ec1: $0a
	rst  $38                                         ; $6ec2: $ff
	ld   hl, sp-$05                                  ; $6ec3: $f8 $fb
	ld   hl, sp-$05                                  ; $6ec5: $f8 $fb
	ld   hl, sp-$06                                  ; $6ec7: $f8 $fa
	ld   hl, sp-$07                                  ; $6ec9: $f8 $f9
	ld   hl, sp+$38                                  ; $6ecb: $f8 $38
	add  e                                           ; $6ecd: $83
	nop                                              ; $6ece: $00
	add  b                                           ; $6ecf: $80
	ld   bc, $0704                                   ; $6ed0: $01 $04 $07
	add  a                                           ; $6ed3: $87
	adc  a                                           ; $6ed4: $8f
	rrca                                             ; $6ed5: $0f
	rra                                              ; $6ed6: $1f
	add  b                                           ; $6ed7: $80
	sbc  a                                           ; $6ed8: $9f
	rlca                                             ; $6ed9: $07
	ld   e, a                                        ; $6eda: $5f
	ld   b, b                                        ; $6edb: $40
	ld   h, b                                        ; $6edc: $60
	add  b                                           ; $6edd: $80
	ld   sp, hl                                      ; $6ede: $f9
	jp   hl                                          ; $6edf: $e9


	push af                                          ; $6ee0: $f5
	db   $ed                                         ; $6ee1: $ed
	add  b                                           ; $6ee2: $80
	db   $fc                                         ; $6ee3: $fc
	add  c                                           ; $6ee4: $81
	ld   a, [$d204]                                  ; $6ee5: $fa $04 $d2
	pop  af                                          ; $6ee8: $f1
	or   $e0                                         ; $6ee9: $f6 $e0

jr_079_6eeb:
	daa                                              ; $6eeb: $27
	add  b                                           ; $6eec: $80
	db   $dd                                         ; $6eed: $dd
	add  b                                           ; $6eee: $80
	pop  bc                                          ; $6eef: $c1
	add  d                                           ; $6ef0: $82
	rst  $38                                         ; $6ef1: $ff
	add  c                                           ; $6ef2: $81
	nop                                              ; $6ef3: $00
	inc  b                                           ; $6ef4: $04
	rlca                                             ; $6ef5: $07
	nop                                              ; $6ef6: $00
	rst  ToBoot                                         ; $6ef7: $c7
	nop                                              ; $6ef8: $00
	xor  a                                           ; $6ef9: $af
	add  l                                           ; $6efa: $85
	ld   h, b                                        ; $6efb: $60
	nop                                              ; $6efc: $00
	rrca                                             ; $6efd: $0f
	add  c                                           ; $6efe: $81
	nop                                              ; $6eff: $00
	add  b                                           ; $6f00: $80
	ld   a, a                                        ; $6f01: $7f
	add  b                                           ; $6f02: $80
	nop                                              ; $6f03: $00
	ld   [bc], a                                     ; $6f04: $02
	cp   h                                           ; $6f05: $bc
	add  e                                           ; $6f06: $83
	add  d                                           ; $6f07: $82
	add  e                                           ; $6f08: $83
	add  c                                           ; $6f09: $81
	nop                                              ; $6f0a: $00
	inc  a                                           ; $6f0b: $3c
	add  c                                           ; $6f0c: $81
	nop                                              ; $6f0d: $00
	add  b                                           ; $6f0e: $80
	rst  $38                                         ; $6f0f: $ff
	add  b                                           ; $6f10: $80
	nop                                              ; $6f11: $00
	ld   [$ff79], sp                                 ; $6f12: $08 $79 $ff
	adc  e                                           ; $6f15: $8b
	rst  $38                                         ; $6f16: $ff
	ld   sp, $c5df                                   ; $6f17: $31 $df $c5
	rst  ToBoot                                         ; $6f1a: $c7
	ld   e, $80                                      ; $6f1b: $1e $80
	ld   bc, $0000                                   ; $6f1d: $01 $00 $00
	add  b                                           ; $6f20: $80
	rst  $38                                         ; $6f21: $ff
	add  b                                           ; $6f22: $80
	nop                                              ; $6f23: $00
	inc  bc                                          ; $6f24: $03
	inc  hl                                          ; $6f25: $23
	rst  $38                                         ; $6f26: $ff
	ld   c, [hl]                                     ; $6f27: $4e
	ld   a, [$ea80]                                  ; $6f28: $fa $80 $ea
	rlca                                             ; $6f2b: $07
	ld   l, d                                        ; $6f2c: $6a
	ld   [bc], a                                     ; $6f2d: $02
	nop                                              ; $6f2e: $00
	add  b                                           ; $6f2f: $80
	sbc  h                                           ; $6f30: $9c
	inc  e                                           ; $6f31: $1c
	sbc  $fe                                         ; $6f32: $de $fe
	add  b                                           ; $6f34: $80
	ld   a, $01                                      ; $6f35: $3e $01
	jr   c, @-$1e                                    ; $6f37: $38 $e0

	add  b                                           ; $6f39: $80
	ldh  a, [rP1]                                    ; $6f3a: $f0 $00
	ld   hl, sp-$7e                                  ; $6f3c: $f8 $82
	rst  $38                                         ; $6f3e: $ff
	dec  b                                           ; $6f3f: $05
	nop                                              ; $6f40: $00
	rlca                                             ; $6f41: $07
	nop                                              ; $6f42: $00
	sub  $00                                         ; $6f43: $d6 $00
	pop  de                                          ; $6f45: $d1
	add  b                                           ; $6f46: $80
	nop                                              ; $6f47: $00
	add  b                                           ; $6f48: $80
	rlca                                             ; $6f49: $07
	dec  b                                           ; $6f4a: $05
	rrca                                             ; $6f4b: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f4c: $cf
	adc  $cf                                         ; $6f4d: $ce $cf
	jp   c, $801a                                    ; $6f4f: $da $1a $80

	ld   [de], a                                     ; $6f52: $12
	ld   [bc], a                                     ; $6f53: $02

jr_079_6f54:
	sub  $36                                         ; $6f54: $d6 $36
	and  $80                                         ; $6f56: $e6 $80
	or   $05                                         ; $6f58: $f6 $05
	dec  e                                           ; $6f5a: $1d
	ld   b, $2e                                      ; $6f5b: $06 $2e
	ld   c, $1e                                      ; $6f5d: $0e $1e
	sbc  [hl]                                        ; $6f5f: $9e
	add  d                                           ; $6f60: $82
	ld   e, $04                                      ; $6f61: $1e $04
	ld   [$ee4c], sp                                 ; $6f63: $08 $4c $ee
	adc  [hl]                                        ; $6f66: $8e
	sbc  b                                           ; $6f67: $98
	add  b                                           ; $6f68: $80
	jr   nz, jr_079_6eeb                             ; $6f69: $20 $80

	ld   a, b                                        ; $6f6b: $78
	add  b                                           ; $6f6c: $80
	ld   a, d                                        ; $6f6d: $7a
	add  d                                           ; $6f6e: $82
	ld   a, c                                        ; $6f6f: $79

jr_079_6f70:
	add  b                                           ; $6f70: $80
	inc  a                                           ; $6f71: $3c
	add  b                                           ; $6f72: $80
	inc  e                                           ; $6f73: $1c
	add  b                                           ; $6f74: $80
	ld   h, b                                        ; $6f75: $60
	ld   bc, $c738                                   ; $6f76: $01 $38 $c7
	adc  l                                           ; $6f79: $8d
	rrca                                             ; $6f7a: $0f
	nop                                              ; $6f7b: $00
	ld   [$fe83], sp                                 ; $6f7c: $08 $83 $fe
	nop                                              ; $6f7f: $00
	ld   sp, hl                                      ; $6f80: $f9
	add  a                                           ; $6f81: $87
	rst  $38                                         ; $6f82: $ff
	add  b                                           ; $6f83: $80
	nop                                              ; $6f84: $00
	add  b                                           ; $6f85: $80
	inc  bc                                          ; $6f86: $03
	add  b                                           ; $6f87: $80
	ccf                                              ; $6f88: $3f
	add  h                                           ; $6f89: $84
	rst  $38                                         ; $6f8a: $ff
	add  b                                           ; $6f8b: $80
	ld   hl, sp-$80                                  ; $6f8c: $f8 $80
	ret  nz                                          ; $6f8e: $c0

	add  b                                           ; $6f8f: $80
	ccf                                              ; $6f90: $3f
	add  d                                           ; $6f91: $82
	rst  $38                                         ; $6f92: $ff
	add  b                                           ; $6f93: $80
	db   $fc                                         ; $6f94: $fc
	add  b                                           ; $6f95: $80
	ldh  [rTMA], a                                   ; $6f96: $e0 $06
	rlca                                             ; $6f98: $07
	nop                                              ; $6f99: $00
	ccf                                              ; $6f9a: $3f
	nop                                              ; $6f9b: $00
	ld   a, b                                        ; $6f9c: $78
	nop                                              ; $6f9d: $00
	add  b                                           ; $6f9e: $80
	add  b                                           ; $6f9f: $80
	ld   hl, sp+$02                                  ; $6fa0: $f8 $02
	ldh  a, [$b0]                                    ; $6fa2: $f0 $b0
	add  b                                           ; $6fa4: $80
	add  b                                           ; $6fa5: $80
	nop                                              ; $6fa6: $00
	inc  c                                           ; $6fa7: $0c
	add  b                                           ; $6fa8: $80
	nop                                              ; $6fa9: $00
	add  b                                           ; $6faa: $80
	nop                                              ; $6fab: $00
	inc  e                                           ; $6fac: $1c
	nop                                              ; $6fad: $00
	db   $e3                                         ; $6fae: $e3
	nop                                              ; $6faf: $00
	ld   hl, sp-$29                                  ; $6fb0: $f8 $d7
	pop  de                                          ; $6fb2: $d1
	ld   sp, $8030                                   ; $6fb3: $31 $30 $80
	inc  c                                           ; $6fb6: $0c
	add  d                                           ; $6fb7: $82
	inc  bc                                          ; $6fb8: $03
	add  c                                           ; $6fb9: $81
	nop                                              ; $6fba: $00
	ld   [bc], a                                     ; $6fbb: $02
	ldh  [rP1], a                                    ; $6fbc: $e0 $00

jr_079_6fbe:
	rra                                              ; $6fbe: $1f
	add  b                                           ; $6fbf: $80
	ldh  [rSC], a                                    ; $6fc0: $e0 $02
	ret  nz                                          ; $6fc2: $c0

	nop                                              ; $6fc3: $00
	ld   b, b                                        ; $6fc4: $40
	add  b                                           ; $6fc5: $80
	ld   [hl], b                                     ; $6fc6: $70
	ld   a, [bc]                                     ; $6fc7: $0a
	ld   a, b                                        ; $6fc8: $78
	jr   c, jr_079_7009                              ; $6fc9: $38 $3e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fcb: $cf
	add  c                                           ; $6fcc: $81
	ld   c, a                                        ; $6fcd: $4f
	rra                                              ; $6fce: $1f
	jr   nc, jr_079_6fbe                             ; $6fcf: $30 $ed

	ld   [hl-], a                                    ; $6fd1: $32
	jr   nc, jr_079_6f54                             ; $6fd2: $30 $80

	inc  c                                           ; $6fd4: $0c
	add  c                                           ; $6fd5: $81
	ld   [bc], a                                     ; $6fd6: $02
	inc  b                                           ; $6fd7: $04
	ld   [de], a                                     ; $6fd8: $12
	ld   b, c                                        ; $6fd9: $41
	ld   l, c                                        ; $6fda: $69
	ret  nz                                          ; $6fdb: $c0

	call nz, $0580                                   ; $6fdc: $c4 $80 $05
	ld   [bc], a                                     ; $6fdf: $02
	inc  c                                           ; $6fe0: $0c
	adc  a                                           ; $6fe1: $8f
	rst  $38                                         ; $6fe2: $ff
	add  c                                           ; $6fe3: $81
	add  b                                           ; $6fe4: $80
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	add  [hl]                                        ; $6fe7: $86
	ld   a, [hl]                                     ; $6fe8: $7e
	add  b                                           ; $6fe9: $80
	ld   a, h                                        ; $6fea: $7c
	add  b                                           ; $6feb: $80
	rst  $38                                         ; $6fec: $ff
	add  b                                           ; $6fed: $80
	jr   nc, jr_079_6f70                             ; $6fee: $30 $80

	or   h                                           ; $6ff0: $b4
	add  [hl]                                        ; $6ff1: $86
	or   l                                           ; $6ff2: $b5
	inc  bc                                          ; $6ff3: $03
	nop                                              ; $6ff4: $00
	ldh  a, [rIF]                                    ; $6ff5: $f0 $0f
	rst  $38                                         ; $6ff7: $ff
	add  d                                           ; $6ff8: $82
	inc  bc                                          ; $6ff9: $03
	adc  b                                           ; $6ffa: $88
	di                                               ; $6ffb: $f3
	nop                                              ; $6ffc: $00
	ld   l, $80                                      ; $6ffd: $2e $80
	ld   e, $02                                      ; $6fff: $1e $02
	ld   a, [de]                                     ; $7001: $1a
	ld   a, d                                        ; $7002: $7a
	ld   a, [hl-]                                    ; $7003: $3a
	add  b                                           ; $7004: $80
	dec  sp                                          ; $7005: $3b
	nop                                              ; $7006: $00
	add  hl, sp                                      ; $7007: $39
	add  c                                           ; $7008: $81

jr_079_7009:
	dec  sp                                          ; $7009: $3b
	nop                                              ; $700a: $00
	ld   a, [$7b81]                                  ; $700b: $fa $81 $7b
	inc  bc                                          ; $700e: $03
	rlca                                             ; $700f: $07
	db   $f4                                         ; $7010: $f4
	inc  d                                           ; $7011: $14
	db   $10                                         ; $7012: $10
	add  b                                           ; $7013: $80
	ld   [de], a                                     ; $7014: $12
	add  b                                           ; $7015: $80
	sub  c                                           ; $7016: $91
	add  b                                           ; $7017: $80
	sub  d                                           ; $7018: $92
	add  b                                           ; $7019: $80
	sub  b                                           ; $701a: $90
	add  b                                           ; $701b: $80
	sub  h                                           ; $701c: $94
	add  b                                           ; $701d: $80
	sub  d                                           ; $701e: $92
	ld   [bc], a                                     ; $701f: $02
	jr   jr_079_709a                                 ; $7020: $18 $78

	ld   h, b                                        ; $7022: $60
	add  b                                           ; $7023: $80
	rra                                              ; $7024: $1f
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	add  b                                           ; $7027: $80
	add  b                                           ; $7028: $80
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	add  b                                           ; $702b: $80
	db   $10                                         ; $702c: $10
	add  b                                           ; $702d: $80
	sub  b                                           ; $702e: $90
	add  c                                           ; $702f: $81
	db   $10                                         ; $7030: $10
	inc  b                                           ; $7031: $04
	cpl                                              ; $7032: $2f
	nop                                              ; $7033: $00
	ret  nz                                          ; $7034: $c0

	nop                                              ; $7035: $00
	rst  $38                                         ; $7036: $ff
	add  l                                           ; $7037: $85
	nop                                              ; $7038: $00
	inc  b                                           ; $7039: $04
	inc  c                                           ; $703a: $0c
	ld   c, $1a                                      ; $703b: $0e $1a
	rra                                              ; $703d: $1f
	rlca                                             ; $703e: $07
	add  d                                           ; $703f: $82
	dec  e                                           ; $7040: $1d
	add  b                                           ; $7041: $80
	ld   c, $80                                      ; $7042: $0e $80
	ld   b, $80                                      ; $7044: $06 $80
	ld   [bc], a                                     ; $7046: $02
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	add  b                                           ; $7049: $80
	jr   c, jr_079_704e                              ; $704a: $38 $02

	ld   h, b                                        ; $704c: $60
	ld   l, h                                        ; $704d: $6c

jr_079_704e:
	di                                               ; $704e: $f3
	add  e                                           ; $704f: $83
	rrca                                             ; $7050: $0f
	add  b                                           ; $7051: $80
	inc  c                                           ; $7052: $0c
	add  [hl]                                        ; $7053: $86
	nop                                              ; $7054: $00
	ld   bc, $fe0e                                   ; $7055: $01 $0e $fe
	add  b                                           ; $7058: $80
	ldh  a, [$80]                                    ; $7059: $f0 $80
	add  b                                           ; $705b: $80
	jr   jr_079_7061                                 ; $705c: $18 $03

	nop                                              ; $705e: $00
	dec  e                                           ; $705f: $1d
	nop                                              ; $7060: $00

jr_079_7061:
	ld   l, [hl]                                     ; $7061: $6e
	nop                                              ; $7062: $00
	ld   [hl], e                                     ; $7063: $73
	nop                                              ; $7064: $00
	dec  e                                           ; $7065: $1d
	nop                                              ; $7066: $00
	dec  e                                           ; $7067: $1d
	nop                                              ; $7068: $00
	rrca                                             ; $7069: $0f
	nop                                              ; $706a: $00
	ld   a, h                                        ; $706b: $7c
	nop                                              ; $706c: $00
	ld   [hl], c                                     ; $706d: $71
	nop                                              ; $706e: $00
	rrca                                             ; $706f: $0f
	nop                                              ; $7070: $00
	ld   a, [hl]                                     ; $7071: $7e
	nop                                              ; $7072: $00
	or   b                                           ; $7073: $b0
	nop                                              ; $7074: $00
	pop  bc                                          ; $7075: $c1
	add  b                                           ; $7076: $80
	nop                                              ; $7077: $00
	dec  b                                           ; $7078: $05
	ld   [bc], a                                     ; $7079: $02
	nop                                              ; $707a: $00
	inc  c                                           ; $707b: $0c
	ld   c, $7e                                      ; $707c: $0e $7e
	ld   a, a                                        ; $707e: $7f
	add  b                                           ; $707f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7080: $cf
	rlca                                             ; $7081: $07
	rlca                                             ; $7082: $07
	rla                                              ; $7083: $17
	add  hl, sp                                      ; $7084: $39
	inc  b                                           ; $7085: $04
	rst  $38                                         ; $7086: $ff
	xor  c                                           ; $7087: $a9
	rst  $38                                         ; $7088: $ff
	ld   a, e                                        ; $7089: $7b
	add  e                                           ; $708a: $83
	nop                                              ; $708b: $00
	add  b                                           ; $708c: $80
	ldh  [$80], a                                    ; $708d: $e0 $80
	cp   $80                                         ; $708f: $fe $80
	rst  $38                                         ; $7091: $ff
	ld   b, $08                                      ; $7092: $06 $08
	ld   hl, sp+$10                                  ; $7094: $f8 $10
	nop                                              ; $7096: $00
	rst  $20                                         ; $7097: $e7
	nop                                              ; $7098: $00
	inc  b                                           ; $7099: $04

jr_079_709a:
	add  b                                           ; $709a: $80
	nop                                              ; $709b: $00
	add  c                                           ; $709c: $81
	ld   bc, $fd02                                   ; $709d: $01 $02 $fd
	ld   sp, hl                                      ; $70a0: $f9
	ld   b, $83                                      ; $70a1: $06 $83
	nop                                              ; $70a3: $00
	inc  e                                           ; $70a4: $1c
	ldh  [$30], a                                    ; $70a5: $e0 $30
	cpl                                              ; $70a7: $2f

jr_079_70a8:
	nop                                              ; $70a8: $00
	ld   [hl], $ff                                   ; $70a9: $36 $ff
	and  l                                           ; $70ab: $a5
	rst  $38                                         ; $70ac: $ff
	ld   c, d                                        ; $70ad: $4a
	rst  $38                                         ; $70ae: $ff
	cp   l                                           ; $70af: $bd
	ld   a, a                                        ; $70b0: $7f
	ld   d, a                                        ; $70b1: $57
	ld   a, a                                        ; $70b2: $7f
	ld   a, d                                        ; $70b3: $7a
	ccf                                              ; $70b4: $3f
	ld   [hl], l                                     ; $70b5: $75
	ld   a, l                                        ; $70b6: $7d
	rst  $38                                         ; $70b7: $ff
	ld   a, a                                        ; $70b8: $7f
	ld   h, c                                        ; $70b9: $61
	ld   hl, sp+$52                                  ; $70ba: $f8 $52
	db   $fc                                         ; $70bc: $fc
	xor  [hl]                                        ; $70bd: $ae
	db   $fc                                         ; $70be: $fc
	ld   d, b                                        ; $70bf: $50
	ld   a, [$80ac]                                  ; $70c0: $fa $ac $80

jr_079_70c3:
	db   $fc                                         ; $70c3: $fc
	jr   nz, jr_079_70c3                             ; $70c4: $20 $fd

	db   $e4                                         ; $70c6: $e4
	ld   a, e                                        ; $70c7: $7b
	db   $e3                                         ; $70c8: $e3
	rst  $20                                         ; $70c9: $e7
	call z, $89cf                                    ; $70ca: $cc $cf $89
	cp   a                                           ; $70cd: $bf
	or   d                                           ; $70ce: $b2
	cp   a                                           ; $70cf: $bf
	cp   l                                           ; $70d0: $bd
	rst  JumpTable                                         ; $70d1: $df
	sbc  $e7                                         ; $70d2: $de $e7
	add  a                                           ; $70d4: $87
	ld   hl, sp+$28                                  ; $70d5: $f8 $28
	cp   $52                                         ; $70d7: $fe $52
	rst  $38                                         ; $70d9: $ff
	and  l                                           ; $70da: $a5
	rst  $38                                         ; $70db: $ff
	ld   a, [bc]                                     ; $70dc: $0a
	rst  $38                                         ; $70dd: $ff
	push de                                          ; $70de: $d5
	rst  $38                                         ; $70df: $ff
	ld   l, d                                        ; $70e0: $6a
	rst  $38                                         ; $70e1: $ff
	cp   h                                           ; $70e2: $bc
	rst  $38                                         ; $70e3: $ff
	ret  z                                           ; $70e4: $c8

	ld   hl, sp-$7f                                  ; $70e5: $f8 $81
	inc  bc                                          ; $70e7: $03
	rrca                                             ; $70e8: $0f
	add  d                                           ; $70e9: $82
	and  d                                           ; $70ea: $a2
	ldh  [c], a                                      ; $70eb: $e2
	ld   h, d                                        ; $70ec: $62
	ldh  [c], a                                      ; $70ed: $e2
	and  c                                           ; $70ee: $a1
	pop  hl                                          ; $70ef: $e1
	ldh  [c], a                                      ; $70f0: $e2
	di                                               ; $70f1: $f3
	sub  e                                           ; $70f2: $93
	sbc  a                                           ; $70f3: $9f
	ld   [de], a                                     ; $70f4: $12
	rra                                              ; $70f5: $1f
	cp   l                                           ; $70f6: $bd
	ld   e, e                                        ; $70f7: $5b
	res  0, l                                        ; $70f8: $cb $85
	db   $db                                         ; $70fa: $db
	nop                                              ; $70fb: $00
	add  hl, de                                      ; $70fc: $19
	add  c                                           ; $70fd: $81
	ld   sp, hl                                      ; $70fe: $f9
	inc  b                                           ; $70ff: $04
	rla                                              ; $7100: $17
	ldh  a, [$72]                                    ; $7101: $f0 $72
	sub  e                                           ; $7103: $93
	sub  c                                           ; $7104: $91
	add  b                                           ; $7105: $80
	sub  e                                           ; $7106: $93
	ld   bc, $0292                                   ; $7107: $01 $92 $02
	add  b                                           ; $710a: $80
	ld   bc, $0080                                   ; $710b: $01 $80 $00
	add  b                                           ; $710e: $80
	inc  c                                           ; $710f: $0c
	add  b                                           ; $7110: $80
	ld   e, $03                                      ; $7111: $1e $03
	rra                                              ; $7113: $1f
	sbc  a                                           ; $7114: $9f
	sub  b                                           ; $7115: $90
	db   $10                                         ; $7116: $10
	add  c                                           ; $7117: $81
	ret  nc                                          ; $7118: $d0

	nop                                              ; $7119: $00
	ld   d, b                                        ; $711a: $50
	add  c                                           ; $711b: $81
	ret  nc                                          ; $711c: $d0

	add  c                                           ; $711d: $81
	ld   d, b                                        ; $711e: $50
	add  c                                           ; $711f: $81
	db   $10                                         ; $7120: $10
	ld   [bc], a                                     ; $7121: $02
	jr   nc, jr_079_715d                             ; $7122: $30 $39

	add  hl, de                                      ; $7124: $19
	add  b                                           ; $7125: $80
	jr   nc, jr_079_70a8                             ; $7126: $30 $80

	ld   b, b                                        ; $7128: $40
	add  e                                           ; $7129: $83
	nop                                              ; $712a: $00
	inc  b                                           ; $712b: $04
	inc  c                                           ; $712c: $0c
	nop                                              ; $712d: $00
	inc  bc                                          ; $712e: $03
	nop                                              ; $712f: $00
	ld   c, a                                        ; $7130: $4f
	add  b                                           ; $7131: $80
	ld   e, h                                        ; $7132: $5c
	ld   bc, $b0f0                                   ; $7133: $01 $f0 $b0
	add  b                                           ; $7136: $80
	ld   h, l                                        ; $7137: $65
	add  b                                           ; $7138: $80
	push bc                                          ; $7139: $c5
	ld   b, $80                                      ; $713a: $06 $80
	sub  b                                           ; $713c: $90
	add  b                                           ; $713d: $80
	adc  a                                           ; $713e: $8f
	nop                                              ; $713f: $00
	and  c                                           ; $7140: $a1
	nop                                              ; $7141: $00
	pop  bc                                          ; $7142: $c1
	ld   bc, $0087                                   ; $7143: $01 $87 $00
	add  [hl]                                        ; $7146: $86
	rrca                                             ; $7147: $0f
	add  [hl]                                        ; $7148: $86
	nop                                              ; $7149: $00
	add  [hl]                                        ; $714a: $86
	rst  $38                                         ; $714b: $ff
	add  [hl]                                        ; $714c: $86
	nop                                              ; $714d: $00
	add  [hl]                                        ; $714e: $86
	rst  $38                                         ; $714f: $ff
	add  [hl]                                        ; $7150: $86
	nop                                              ; $7151: $00
	add  [hl]                                        ; $7152: $86
	rst  $38                                         ; $7153: $ff
	add  l                                           ; $7154: $85
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	inc  bc                                          ; $7157: $03
	add  e                                           ; $7158: $83
	rst  $38                                         ; $7159: $ff
	ld   [bc], a                                     ; $715a: $02
	ei                                               ; $715b: $fb
	rst  $38                                         ; $715c: $ff

jr_079_715d:
	ld   hl, sp-$7b                                  ; $715d: $f8 $85
	nop                                              ; $715f: $00
	add  [hl]                                        ; $7160: $86
	rst  $38                                         ; $7161: $ff
	add  [hl]                                        ; $7162: $86
	nop                                              ; $7163: $00
	add  [hl]                                        ; $7164: $86
	rst  $38                                         ; $7165: $ff
	add  [hl]                                        ; $7166: $86
	nop                                              ; $7167: $00
	add  d                                           ; $7168: $82
	rst  $38                                         ; $7169: $ff
	add  b                                           ; $716a: $80
	db   $fd                                         ; $716b: $fd
	add  b                                           ; $716c: $80
	rst  $38                                         ; $716d: $ff
	add  [hl]                                        ; $716e: $86

jr_079_716f:
	nop                                              ; $716f: $00
	add  h                                           ; $7170: $84
	rst  $38                                         ; $7171: $ff
	add  b                                           ; $7172: $80
	rst  $10                                         ; $7173: $d7
	add  [hl]                                        ; $7174: $86
	nop                                              ; $7175: $00
	add  b                                           ; $7176: $80
	rst  $38                                         ; $7177: $ff
	add  b                                           ; $7178: $80
	cp   $80                                         ; $7179: $fe $80
	rst  $38                                         ; $717b: $ff
	add  b                                           ; $717c: $80
	ld   a, l                                        ; $717d: $7d
	add  [hl]                                        ; $717e: $86
	nop                                              ; $717f: $00
	inc  bc                                          ; $7180: $03
	rst  $38                                         ; $7181: $ff
	ldh  a, [$f1]                                    ; $7182: $f0 $f1
	cp   $80                                         ; $7184: $fe $80
	rst  $28                                         ; $7186: $ef
	add  b                                           ; $7187: $80
	ld   d, h                                        ; $7188: $54
	add  [hl]                                        ; $7189: $86
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	rst  $38                                         ; $718c: $ff
	add  c                                           ; $718d: $81
	nop                                              ; $718e: $00
	ld   [bc], a                                     ; $718f: $02
	cp   b                                           ; $7190: $b8
	ld   b, b                                        ; $7191: $40
	rlca                                             ; $7192: $07
	add  a                                           ; $7193: $87
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	rst  $38                                         ; $7196: $ff
	add  e                                           ; $7197: $83
	nop                                              ; $7198: $00
	ld   [bc], a                                     ; $7199: $02
	add  b                                           ; $719a: $80
	nop                                              ; $719b: $00
	ld   a, a                                        ; $719c: $7f
	add  l                                           ; $719d: $85
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	rst  $38                                         ; $71a0: $ff
	add  l                                           ; $71a1: $85
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	rst  $38                                         ; $71a4: $ff
	add  l                                           ; $71a5: $85
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	rst  $38                                         ; $71a8: $ff
	add  l                                           ; $71a9: $85
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	rst  $38                                         ; $71ac: $ff
	add  l                                           ; $71ad: $85
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	rst  $38                                         ; $71b0: $ff
	add  l                                           ; $71b1: $85
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	rst  $38                                         ; $71b4: $ff
	adc  [hl]                                        ; $71b5: $8e
	rrca                                             ; $71b6: $0f
	xor  l                                           ; $71b7: $ad
	rst  $38                                         ; $71b8: $ff
	nop                                              ; $71b9: $00
	ld   hl, sp-$7f                                  ; $71ba: $f8 $81
	rst  $38                                         ; $71bc: $ff
	nop                                              ; $71bd: $00
	rst  $30                                         ; $71be: $f7
	add  l                                           ; $71bf: $85
	rst  $38                                         ; $71c0: $ff
	nop                                              ; $71c1: $00
	rst  $28                                         ; $71c2: $ef
	add  c                                           ; $71c3: $81
	rst  $38                                         ; $71c4: $ff
	nop                                              ; $71c5: $00
	rra                                              ; $71c6: $1f
	add  a                                           ; $71c7: $87
	rst  $38                                         ; $71c8: $ff
	add  b                                           ; $71c9: $80
	cp   $80                                         ; $71ca: $fe $80
	or   $80                                         ; $71cc: $f6 $80
	db   $dd                                         ; $71ce: $dd
	add  d                                           ; $71cf: $82
	rst  $38                                         ; $71d0: $ff
	add  b                                           ; $71d1: $80
	db   $fc                                         ; $71d2: $fc
	add  b                                           ; $71d3: $80
	push de                                          ; $71d4: $d5
	add  b                                           ; $71d5: $80
	ld   a, [hl+]                                    ; $71d6: $2a
	ld   bc, $4140                                   ; $71d7: $01 $40 $41
	add  b                                           ; $71da: $80
	ld   [$0180], sp                                 ; $71db: $08 $80 $01
	ld   bc, $f3f2                                   ; $71de: $01 $f2 $f3
	add  b                                           ; $71e1: $80
	ld   e, [hl]                                     ; $71e2: $5e
	add  b                                           ; $71e3: $80
	rst  $10                                         ; $71e4: $d7
	add  b                                           ; $71e5: $80
	xor  h                                           ; $71e6: $ac
	add  b                                           ; $71e7: $80
	ld   c, d                                        ; $71e8: $4a
	inc  bc                                          ; $71e9: $03
	ld   d, d                                        ; $71ea: $52
	ld   [bc], a                                     ; $71eb: $02
	add  b                                           ; $71ec: $80
	jr   z, jr_079_716f                              ; $71ed: $28 $80

	nop                                              ; $71ef: $00
	ld   bc, $7981                                   ; $71f0: $01 $81 $79
	add  b                                           ; $71f3: $80
	sub  $01                                         ; $71f4: $d6 $01
	ld   c, e                                        ; $71f6: $4b
	ld   c, b                                        ; $71f7: $48
	add  b                                           ; $71f8: $80
	sub  d                                           ; $71f9: $92
	ld   bc, $0300                                   ; $71fa: $01 $00 $03
	add  b                                           ; $71fd: $80
	ld   [$0180], sp                                 ; $71fe: $08 $80 $01
	inc  bc                                          ; $7201: $03
	nop                                              ; $7202: $00
	ld   bc, $b2b3                                   ; $7203: $01 $b3 $b2
	add  b                                           ; $7206: $80
	add  hl, hl                                      ; $7207: $29
	add  b                                           ; $7208: $80
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	ldh  a, [$80]                                    ; $720b: $f0 $80
	nop                                              ; $720d: $00
	ld   b, $c0                                      ; $720e: $06 $c0
	or   b                                           ; $7210: $b0
	add  b                                           ; $7211: $80
	stop                                             ; $7212: $10 $00
	stop                                             ; $7214: $10 $00
	add  b                                           ; $7216: $80
	xor  c                                           ; $7217: $a9
	add  b                                           ; $7218: $80
	ld   d, b                                        ; $7219: $50
	add  h                                           ; $721a: $84
	nop                                              ; $721b: $00
	dec  b                                           ; $721c: $05
	ld   b, $00                                      ; $721d: $06 $00
	dec  b                                           ; $721f: $05
	inc  b                                           ; $7220: $04
	nop                                              ; $7221: $00
	rlca                                             ; $7222: $07
	add  b                                           ; $7223: $80
	nop                                              ; $7224: $00
	add  b                                           ; $7225: $80
	ldh  [$80], a                                    ; $7226: $e0 $80
	rra                                              ; $7228: $1f
	add  h                                           ; $7229: $84
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	ldh  [$80], a                                    ; $722c: $e0 $80
	nop                                              ; $722e: $00
	inc  bc                                          ; $722f: $03
	add  b                                           ; $7230: $80
	ld   h, a                                        ; $7231: $67
	nop                                              ; $7232: $00
	rlca                                             ; $7233: $07
	add  c                                           ; $7234: $81
	nop                                              ; $7235: $00
	add  b                                           ; $7236: $80
	ld   hl, sp-$80                                  ; $7237: $f8 $80
	rlca                                             ; $7239: $07
	add  h                                           ; $723a: $84
	nop                                              ; $723b: $00
	rlca                                             ; $723c: $07
	rst  $38                                         ; $723d: $ff
	nop                                              ; $723e: $00
	ret  nz                                          ; $723f: $c0

	nop                                              ; $7240: $00
	ld   a, $00                                      ; $7241: $3e $00
	ld   bc, $8000                                   ; $7243: $01 $00 $80
	ret  nz                                          ; $7246: $c0

	add  b                                           ; $7247: $80
	inc  a                                           ; $7248: $3c
	add  b                                           ; $7249: $80
	inc  bc                                          ; $724a: $03
	add  b                                           ; $724b: $80
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	rst  $38                                         ; $724e: $ff
	add  e                                           ; $724f: $83
	nop                                              ; $7250: $00
	ld   [bc], a                                     ; $7251: $02
	ldh  a, [rP1]                                    ; $7252: $f0 $00
	rrca                                             ; $7254: $0f
	add  c                                           ; $7255: $81
	nop                                              ; $7256: $00
	add  b                                           ; $7257: $80
	ldh  [$80], a                                    ; $7258: $e0 $80
	rra                                              ; $725a: $1f
	nop                                              ; $725b: $00
	rst  $38                                         ; $725c: $ff
	add  l                                           ; $725d: $85
	nop                                              ; $725e: $00
	inc  b                                           ; $725f: $04
	add  b                                           ; $7260: $80
	nop                                              ; $7261: $00
	ld   a, b                                        ; $7262: $78

jr_079_7263:
	nop                                              ; $7263: $00
	rlca                                             ; $7264: $07
	add  d                                           ; $7265: $82
	nop                                              ; $7266: $00
	adc  [hl]                                        ; $7267: $8e
	rrca                                             ; $7268: $0f
	xor  l                                           ; $7269: $ad
	rst  $38                                         ; $726a: $ff
	nop                                              ; $726b: $00
	ldh  [$81], a                                    ; $726c: $e0 $81
	rst  $38                                         ; $726e: $ff
	nop                                              ; $726f: $00
	rst  JumpTable                                         ; $7270: $df
	add  l                                           ; $7271: $85
	rst  $38                                         ; $7272: $ff
	ld   bc, $fdbd                                   ; $7273: $01 $bd $fd
	add  b                                           ; $7276: $80
	or   $01                                         ; $7277: $f6 $01
	ld   a, d                                        ; $7279: $7a
	ld   a, [$b580]                                  ; $727a: $fa $80 $b5
	add  b                                           ; $727d: $80
	jp   c, $b480                                    ; $727e: $da $80 $b4

	add  b                                           ; $7281: $80
	ld   l, d                                        ; $7282: $6a
	add  b                                           ; $7283: $80
	call nc, Call_079_4880                           ; $7284: $d4 $80 $48
	add  b                                           ; $7287: $80
	sub  b                                           ; $7288: $90
	ld   [bc], a                                     ; $7289: $02
	add  h                                           ; $728a: $84
	add  l                                           ; $728b: $85
	ld   [bc], a                                     ; $728c: $02
	add  b                                           ; $728d: $80
	nop                                              ; $728e: $00
	inc  b                                           ; $728f: $04
	ld   [bc], a                                     ; $7290: $02
	nop                                              ; $7291: $00
	ld   bc, $0106                                   ; $7292: $01 $06 $01
	add  d                                           ; $7295: $82
	ld   [bc], a                                     ; $7296: $02
	inc  bc                                          ; $7297: $03
	ld   bc, $af09                                   ; $7298: $01 $09 $af
	ld   d, b                                        ; $729b: $50
	add  b                                           ; $729c: $80
	db   $10                                         ; $729d: $10
	add  b                                           ; $729e: $80
	ret  z                                           ; $729f: $c8

	dec  c                                           ; $72a0: $0d
	ret  nc                                          ; $72a1: $d0

	ret  nz                                          ; $72a2: $c0

	ld   b, b                                        ; $72a3: $40
	jr   nz, jr_079_7306                             ; $72a4: $20 $60

	db   $10                                         ; $72a6: $10
	ld   d, b                                        ; $72a7: $50
	ld   b, b                                        ; $72a8: $40
	nop                                              ; $72a9: $00
	ld   b, b                                        ; $72aa: $40
	xor  e                                           ; $72ab: $ab
	inc  b                                           ; $72ac: $04
	ld   [$8018], sp                                 ; $72ad: $08 $18 $80
	ld   [bc], a                                     ; $72b0: $02
	add  b                                           ; $72b1: $80
	inc  l                                           ; $72b2: $2c
	rrca                                             ; $72b3: $0f
	ld   de, $2531                                   ; $72b4: $11 $31 $25
	dec  d                                           ; $72b7: $15
	dec  b                                           ; $72b8: $05
	dec  c                                           ; $72b9: $0d
	ld   [hl-], a                                    ; $72ba: $32
	add  hl, bc                                      ; $72bb: $09
	inc  a                                           ; $72bc: $3c
	nop                                              ; $72bd: $00
	ret  nz                                          ; $72be: $c0

	nop                                              ; $72bf: $00
	ret  nz                                          ; $72c0: $c0

	ldh  [rAUD4LEN], a                               ; $72c1: $e0 $20
	nop                                              ; $72c3: $00
	add  b                                           ; $72c4: $80
	add  b                                           ; $72c5: $80
	ld   bc, $4000                                   ; $72c6: $01 $00 $40
	add  b                                           ; $72c9: $80
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	add  b                                           ; $72cc: $80
	add  h                                           ; $72cd: $84
	nop                                              ; $72ce: $00
	inc  b                                           ; $72cf: $04
	ld   [bc], a                                     ; $72d0: $02
	inc  d                                           ; $72d1: $14
	ld   [$3011], sp                                 ; $72d2: $08 $11 $30
	add  b                                           ; $72d5: $80
	dec  b                                           ; $72d6: $05
	add  b                                           ; $72d7: $80
	ld   e, b                                        ; $72d8: $58
	ld   b, $23                                      ; $72d9: $06 $23
	ld   h, e                                        ; $72db: $63
	rst  $38                                         ; $72dc: $ff
	add  b                                           ; $72dd: $80
	jr   nz, jr_079_72e0                             ; $72de: $20 $00

jr_079_72e0:
	jr   nz, jr_079_7263                             ; $72e0: $20 $81

	nop                                              ; $72e2: $00
	inc  b                                           ; $72e3: $04
	add  b                                           ; $72e4: $80
	nop                                              ; $72e5: $00
	add  b                                           ; $72e6: $80
	ret  nz                                          ; $72e7: $c0

	ld   b, b                                        ; $72e8: $40
	add  c                                           ; $72e9: $81
	nop                                              ; $72ea: $00
	ld   [bc], a                                     ; $72eb: $02
	adc  h                                           ; $72ec: $8c
	nop                                              ; $72ed: $00
	inc  bc                                          ; $72ee: $03
	add  b                                           ; $72ef: $80
	ld   [$0f00], sp                                 ; $72f0: $08 $00 $0f
	add  b                                           ; $72f3: $80
	ld   bc, $0081                                   ; $72f4: $01 $81 $00
	rlca                                             ; $72f7: $07
	inc  b                                           ; $72f8: $04
	jr   z, jr_079_730b                              ; $72f9: $28 $10

	inc  hl                                          ; $72fb: $23
	ld   h, b                                        ; $72fc: $60
	ld   a, a                                        ; $72fd: $7f
	nop                                              ; $72fe: $00
	ret  nz                                          ; $72ff: $c0

	add  c                                           ; $7300: $81
	nop                                              ; $7301: $00
	inc  b                                           ; $7302: $04
	ret  nz                                          ; $7303: $c0

	nop                                              ; $7304: $00
	ld   b, b                                        ; $7305: $40

jr_079_7306:
	nop                                              ; $7306: $00
	ld   b, b                                        ; $7307: $40
	adc  c                                           ; $7308: $89
	nop                                              ; $7309: $00
	dec  bc                                          ; $730a: $0b

jr_079_730b:
	jr   nc, jr_079_730d                             ; $730b: $30 $00

jr_079_730d:
	cpl                                              ; $730d: $2f
	jr   nz, jr_079_7310                             ; $730e: $20 $00

jr_079_7310:
	inc  a                                           ; $7310: $3c
	rlca                                             ; $7311: $07
	inc  b                                           ; $7312: $04
	ld   bc, $f900                                   ; $7313: $01 $00 $f9
	ld   hl, sp-$80                                  ; $7316: $f8 $80
	rlca                                             ; $7318: $07
	adc  e                                           ; $7319: $8b
	nop                                              ; $731a: $00
	adc  [hl]                                        ; $731b: $8e
	rrca                                             ; $731c: $0f
	xor  c                                           ; $731d: $a9
	rst  $38                                         ; $731e: $ff
	nop                                              ; $731f: $00
	cp   $81                                         ; $7320: $fe $81
	rst  $38                                         ; $7322: $ff
	ld   bc, $fb85                                   ; $7323: $01 $85 $fb
	add  b                                           ; $7326: $80
	rst  $38                                         ; $7327: $ff
	ld   bc, $fa7a                                   ; $7328: $01 $7a $fa
	add  b                                           ; $732b: $80
	rst  $38                                         ; $732c: $ff
	add  b                                           ; $732d: $80
	or   $80                                         ; $732e: $f6 $80
	cp   e                                           ; $7330: $bb
	add  b                                           ; $7331: $80
	xor  $80                                         ; $7332: $ee $80
	db   $fd                                         ; $7334: $fd
	add  b                                           ; $7335: $80
	xor  b                                           ; $7336: $a8
	add  b                                           ; $7337: $80
	ld   d, b                                        ; $7338: $50
	add  b                                           ; $7339: $80
	and  b                                           ; $733a: $a0
	add  b                                           ; $733b: $80
	ld   c, b                                        ; $733c: $48
	add  b                                           ; $733d: $80
	sub  b                                           ; $733e: $90
	add  b                                           ; $733f: $80
	jr   nz, @-$7e                                   ; $7340: $20 $80

	add  b                                           ; $7342: $80
	add  b                                           ; $7343: $80
	ld   [$0b00], sp                                 ; $7344: $08 $00 $0b
	add  b                                           ; $7347: $80
	rlca                                             ; $7348: $07
	dec  c                                           ; $7349: $0d
	ld   b, a                                        ; $734a: $47
	ld   c, h                                        ; $734b: $4c
	inc  bc                                          ; $734c: $03
	ld   hl, $1a25                                   ; $734d: $21 $25 $1a
	ld   [bc], a                                     ; $7350: $02
	ld   b, $16                                      ; $7351: $06 $16
	inc  d                                           ; $7353: $14
	inc  b                                           ; $7354: $04
	ld   b, l                                        ; $7355: $45
	ld   h, l                                        ; $7356: $65
	ld   e, a                                        ; $7357: $5f
	add  c                                           ; $7358: $81
	and  b                                           ; $7359: $a0
	add  b                                           ; $735a: $80
	nop                                              ; $735b: $00
	ld   a, [de]                                     ; $735c: $1a
	ld   b, b                                        ; $735d: $40
	add  b                                           ; $735e: $80
	ret  nz                                          ; $735f: $c0

	ld   b, b                                        ; $7360: $40
	ret  nz                                          ; $7361: $c0

	add  b                                           ; $7362: $80
	ld   b, c                                        ; $7363: $41
	ld   bc, $80c0                                   ; $7364: $01 $c0 $80
	xor  a                                           ; $7367: $af
	ld   d, b                                        ; $7368: $50
	ld   [bc], a                                     ; $7369: $02
	ld   b, d                                        ; $736a: $42

jr_079_736b:
	inc  b                                           ; $736b: $04
	ld   b, $a6                                      ; $736c: $06 $a6
	or   l                                           ; $736e: $b5
	dec  d                                           ; $736f: $15
	add  l                                           ; $7370: $85
	jr   c, jr_079_736b                              ; $7371: $38 $f8

	ld   a, [bc]                                     ; $7373: $0a
	inc  e                                           ; $7374: $1c
	jp   nz, $fc16                                   ; $7375: $c2 $16 $fc

	adc  c                                           ; $7378: $89
	nop                                              ; $7379: $00
	add  b                                           ; $737a: $80
	ld   bc, $0013                                   ; $737b: $01 $13 $00

jr_079_737e:
	ld   bc, $2a34                                   ; $737e: $01 $34 $2a
	ld   a, [bc]                                     ; $7381: $0a
	ld   a, [de]                                     ; $7382: $1a
	ld   h, l                                        ; $7383: $65
	ld   [de], a                                     ; $7384: $12
	and  [hl]                                        ; $7385: $a6
	and  b                                           ; $7386: $a0
	inc  b                                           ; $7387: $04
	add  h                                           ; $7388: $84
	ld   [$4c0c], sp                                 ; $7389: $08 $0c $4c
	ld   l, d                                        ; $738c: $6a
	ld   a, [hl+]                                    ; $738d: $2a
	ld   a, [bc]                                     ; $738e: $0a
	ld   a, h                                        ; $738f: $7c
	add  b                                           ; $7390: $80
	adc  b                                           ; $7391: $88
	nop                                              ; $7392: $00
	add  b                                           ; $7393: $80
	ld   bc, $0003                                   ; $7394: $01 $03 $00
	ld   bc, $0b75                                   ; $7397: $01 $75 $0b
	add  b                                           ; $739a: $80
	or   b                                           ; $739b: $b0
	add  hl, bc                                      ; $739c: $09
	ld   b, [hl]                                     ; $739d: $46
	add  $94                                         ; $739e: $c6 $94
	ld   d, l                                        ; $73a0: $55
	inc  d                                           ; $73a1: $14
	inc  [hl]                                        ; $73a2: $34
	jp   z, Jump_079_4c24                            ; $73a3: $ca $24 $4c

	ld   b, b                                        ; $73a6: $40
	add  b                                           ; $73a7: $80
	ld   [$fc00], sp                                 ; $73a8: $08 $00 $fc
	add  b                                           ; $73ab: $80
	add  b                                           ; $73ac: $80
	add  b                                           ; $73ad: $80
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	ld   bc, $0080                                   ; $73b0: $01 $80 $00
	add  b                                           ; $73b3: $80
	ld   [bc], a                                     ; $73b4: $02
	inc  bc                                          ; $73b5: $03
	ld   bc, $0203                                   ; $73b6: $01 $03 $02
	ld   bc, $0081                                   ; $73b9: $01 $81 $00
	ld   [$a010], sp                                 ; $73bc: $08 $10 $a0
	ld   b, b                                        ; $73bf: $40
	adc  h                                           ; $73c0: $8c
	add  b                                           ; $73c1: $80
	inc  l                                           ; $73c2: $2c
	ld   l, $c2                                      ; $73c3: $2e $c2
	ret  nz                                          ; $73c5: $c0

	add  b                                           ; $73c6: $80
	jr   jr_079_73cd                                 ; $73c7: $18 $04

	ld   d, b                                        ; $73c9: $50
	ld   d, h                                        ; $73ca: $54
	ld   d, b                                        ; $73cb: $50
	ret  nc                                          ; $73cc: $d0

jr_079_73cd:
	ld   a, b                                        ; $73cd: $78
	adc  [hl]                                        ; $73ce: $8e
	nop                                              ; $73cf: $00
	adc  [hl]                                        ; $73d0: $8e

jr_079_73d1:
	rrca                                             ; $73d1: $0f
	sbc  l                                           ; $73d2: $9d
	rst  $38                                         ; $73d3: $ff
	ld   bc, $fffe                                   ; $73d4: $01 $fe $ff
	add  b                                           ; $73d7: $80
	rst  $30                                         ; $73d8: $f7
	nop                                              ; $73d9: $00
	db   $fd                                         ; $73da: $fd
	add  e                                           ; $73db: $83
	rst  $38                                         ; $73dc: $ff
	ld   bc, $fffb                                   ; $73dd: $01 $fb $ff
	add  b                                           ; $73e0: $80
	rst  $28                                         ; $73e1: $ef
	add  b                                           ; $73e2: $80
	sbc  $07                                         ; $73e3: $de $07
	ld   b, $fe                                      ; $73e5: $06 $fe
	ld   [$35aa], a                                  ; $73e7: $ea $aa $35
	ld   [hl], l                                     ; $73ea: $75
	ld   [$80aa], a                                  ; $73eb: $ea $aa $80
	sub  b                                           ; $73ee: $90
	inc  bc                                          ; $73ef: $03
	add  sp, -$58                                    ; $73f0: $e8 $a8
	ret  nz                                          ; $73f2: $c0

	ld   b, b                                        ; $73f3: $40
	add  b                                           ; $73f4: $80
	ld   a, [bc]                                     ; $73f5: $0a
	ld   bc, $40c0                                   ; $73f6: $01 $c0 $40
	add  b                                           ; $73f9: $80
	jr   nz, jr_079_737e                             ; $73fa: $20 $82

	ld   b, b                                        ; $73fc: $40
	add  b                                           ; $73fd: $80
	add  b                                           ; $73fe: $80
	add  h                                           ; $73ff: $84
	nop                                              ; $7400: $00
	db   $10                                         ; $7401: $10
	ccf                                              ; $7402: $3f
	jr   z, jr_079_740e                              ; $7403: $28 $09

	add  hl, de                                      ; $7405: $19
	ld   sp, $7a2a                                   ; $7406: $31 $2a $7a

jr_079_7409:
	ld   e, [hl]                                     ; $7409: $5e
	ld   b, $51                                      ; $740a: $06 $51
	adc  h                                           ; $740c: $8c

jr_079_740d:
	dec  a                                           ; $740d: $3d

jr_079_740e:
	and  d                                           ; $740e: $a2
	ld   a, [hl-]                                    ; $740f: $3a
	jr   c, @+$30                                    ; $7410: $38 $2e

	ret  nc                                          ; $7412: $d0

	add  c                                           ; $7413: $81
	nop                                              ; $7414: $00
	inc  bc                                          ; $7415: $03
	add  d                                           ; $7416: $82
	inc  bc                                          ; $7417: $03
	nop                                              ; $7418: $00
	ld   bc, $0080                                   ; $7419: $01 $80 $00
	add  b                                           ; $741c: $80
	ld   bc, $0301                                   ; $741d: $01 $01 $03
	nop                                              ; $7420: $00
	add  b                                           ; $7421: $80
	ld   [bc], a                                     ; $7422: $02
	inc  bc                                          ; $7423: $03
	db   $dd                                         ; $7424: $dd
	and  b                                           ; $7425: $a0
	adc  d                                           ; $7426: $8a
	ld   [$a480], sp                                 ; $7427: $08 $80 $a4
	add  b                                           ; $742a: $80
	ld   b, $04                                      ; $742b: $06 $04
	jr   jr_079_7409                                 ; $742d: $18 $da

	adc  [hl]                                        ; $742f: $8e
	ld   d, b                                        ; $7430: $50
	db   $10                                         ; $7431: $10
	add  b                                           ; $7432: $80
	jr   nc, jr_079_7437                             ; $7433: $30 $02

	adc  b                                           ; $7435: $88
	ld   a, c                                        ; $7436: $79

jr_079_7437:
	ld   bc, $0280                                   ; $7437: $01 $80 $02
	nop                                              ; $743a: $00
	ld   bc, $0080                                   ; $743b: $01 $80 $00
	add  b                                           ; $743e: $80
	ld   bc, $0010                                   ; $743f: $01 $10 $00
	dec  b                                           ; $7442: $05
	rlca                                             ; $7443: $07
	nop                                              ; $7444: $00
	ld   [bc], a                                     ; $7445: $02
	nop                                              ; $7446: $00
	ld   bc, $f08c                                   ; $7447: $01 $8c $f0
	inc  d                                           ; $744a: $14
	jr   c, jr_079_73d1                              ; $744b: $38 $84

	inc  l                                           ; $744d: $2c
	ld   b, h                                        ; $744e: $44
	ld   b, b                                        ; $744f: $40
	inc  d                                           ; $7450: $14
	db   $10                                         ; $7451: $10
	add  b                                           ; $7452: $80
	ld   c, b                                        ; $7453: $48
	add  b                                           ; $7454: $80
	inc  c                                           ; $7455: $0c
	inc  bc                                          ; $7456: $03
	jr   nc, jr_079_740d                             ; $7457: $30 $b4

	ld   a, l                                        ; $7459: $7d
	nop                                              ; $745a: $00
	add  b                                           ; $745b: $80
	ld   [bc], a                                     ; $745c: $02
	inc  bc                                          ; $745d: $03
	nop                                              ; $745e: $00
	ld   [bc], a                                     ; $745f: $02
	nop                                              ; $7460: $00
	inc  bc                                          ; $7461: $03
	add  b                                           ; $7462: $80
	inc  b                                           ; $7463: $04
	nop                                              ; $7464: $00
	inc  bc                                          ; $7465: $03
	add  b                                           ; $7466: $80
	nop                                              ; $7467: $00
	add  b                                           ; $7468: $80
	ld   [bc], a                                     ; $7469: $02
	ld   b, $00                                      ; $746a: $06 $00
	rst  $28                                         ; $746c: $ef
	jr   @-$66                                       ; $746d: $18 $98

	call nc, $1454                                   ; $746f: $d4 $54 $14
	add  b                                           ; $7472: $80
	ldh  [$09], a                                    ; $7473: $e0 $09
	jr   z, jr_079_74e7                              ; $7475: $28 $70

	ld   [$8858], sp                                 ; $7477: $08 $58 $88
	add  b                                           ; $747a: $80
	jr   z, jr_079_749d                              ; $747b: $28 $20

	di                                               ; $747d: $f3
	nop                                              ; $747e: $00
	add  b                                           ; $747f: $80
	dec  b                                           ; $7480: $05
	ld   bc, $0400                                   ; $7481: $01 $00 $04
	add  b                                           ; $7484: $80
	nop                                              ; $7485: $00
	dec  bc                                          ; $7486: $0b
	ld   a, [bc]                                     ; $7487: $0a
	dec  bc                                          ; $7488: $0b
	ld   bc, $0308                                   ; $7489: $01 $08 $03
	rrca                                             ; $748c: $0f
	db   $10                                         ; $748d: $10
	ld   de, $9052                                   ; $748e: $11 $52 $90
	jr   nc, jr_079_7493                             ; $7491: $30 $00

jr_079_7493:
	add  b                                           ; $7493: $80
	jr   nz, jr_079_7496                             ; $7494: $20 $00

jr_079_7496:
	ld   b, b                                        ; $7496: $40
	add  b                                           ; $7497: $80
	ld   h, b                                        ; $7498: $60
	add  c                                           ; $7499: $81
	ld   d, b                                        ; $749a: $50
	add  b                                           ; $749b: $80
	add  b                                           ; $749c: $80

jr_079_749d:
	dec  c                                           ; $749d: $0d
	and  b                                           ; $749e: $a0
	ret  nz                                          ; $749f: $c0

	add  b                                           ; $74a0: $80
	nop                                              ; $74a1: $00

jr_079_74a2:
	ld   [bc], a                                     ; $74a2: $02
	inc  bc                                          ; $74a3: $03
	ld   [$3c12], sp                                 ; $74a4: $08 $12 $3c
	jr   c, jr_079_74cd                              ; $74a7: $38 $24

	dec  a                                           ; $74a9: $3d
	ld   a, [hl-]                                    ; $74aa: $3a
	inc  hl                                          ; $74ab: $23
	add  b                                           ; $74ac: $80
	inc  l                                           ; $74ad: $2c
	ld   [bc], a                                     ; $74ae: $02
	ld   sp, $3f11                                   ; $74af: $31 $11 $3f

jr_079_74b2:
	adc  [hl]                                        ; $74b2: $8e
	rrca                                             ; $74b3: $0f
	sub  c                                           ; $74b4: $91
	rst  $38                                         ; $74b5: $ff
	add  b                                           ; $74b6: $80
	cp   $80                                         ; $74b7: $fe $80
	ei                                               ; $74b9: $fb
	add  b                                           ; $74ba: $80
	cp   $80                                         ; $74bb: $fe $80
	rst  $38                                         ; $74bd: $ff
	add  b                                           ; $74be: $80
	cp   $80                                         ; $74bf: $fe $80
	rst  $28                                         ; $74c1: $ef
	inc  bc                                          ; $74c2: $03
	ld   hl, sp-$01                                  ; $74c3: $f8 $ff
	ld   d, l                                        ; $74c5: $55
	ld   e, h                                        ; $74c6: $5c
	add  b                                           ; $74c7: $80
	xor  [hl]                                        ; $74c8: $ae
	add  b                                           ; $74c9: $80
	ld   e, h                                        ; $74ca: $5c
	add  b                                           ; $74cb: $80
	db   $ec                                         ; $74cc: $ec

jr_079_74cd:
	ld   bc, $5043                                   ; $74cd: $01 $43 $50
	add  b                                           ; $74d0: $80
	cp   b                                           ; $74d1: $b8
	add  b                                           ; $74d2: $80
	ld   e, b                                        ; $74d3: $58
	ld   bc, $d032                                   ; $74d4: $01 $32 $d0
	add  b                                           ; $74d7: $80
	nop                                              ; $74d8: $00

jr_079_74d9:
	add  b                                           ; $74d9: $80
	ld   b, b                                        ; $74da: $40
	adc  [hl]                                        ; $74db: $8e
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	ld   bc, $0081                                   ; $74de: $01 $81 $00
	add  b                                           ; $74e1: $80
	ld   [bc], a                                     ; $74e2: $02
	ld   bc, $0200                                   ; $74e3: $01 $00 $02
	add  b                                           ; $74e6: $80

jr_079_74e7:
	ld   bc, $df0a                                   ; $74e7: $01 $0a $df
	ld   [hl-], a                                    ; $74ea: $32
	ld   b, b                                        ; $74eb: $40
	adc  $14                                         ; $74ec: $ce $14
	ld   d, h                                        ; $74ee: $54
	adc  b                                           ; $74ef: $88
	ld   c, b                                        ; $74f0: $48
	sbc  b                                           ; $74f1: $98
	add  b                                           ; $74f2: $80
	db   $10                                         ; $74f3: $10
	add  b                                           ; $74f4: $80
	ret  nc                                          ; $74f5: $d0

	ld   b, $10                                      ; $74f6: $06 $10
	jr   nz, jr_079_74a2                             ; $74f8: $20 $a8

	ld   [hl], a                                     ; $74fa: $77
	nop                                              ; $74fb: $00
	dec  b                                           ; $74fc: $05
	ld   bc, $0080                                   ; $74fd: $01 $80 $00
	rlca                                             ; $7500: $07
	dec  b                                           ; $7501: $05
	ld   bc, $0602                                   ; $7502: $01 $02 $06
	nop                                              ; $7505: $00
	ld   [bc], a                                     ; $7506: $02
	inc  c                                           ; $7507: $0c
	ld   [bc], a                                     ; $7508: $02
	add  b                                           ; $7509: $80

jr_079_750a:
	inc  b                                           ; $750a: $04
	ld   bc, $28d7                                   ; $750b: $01 $d7 $28
	add  b                                           ; $750e: $80
	ld   e, b                                        ; $750f: $58
	add  b                                           ; $7510: $80
	db   $10                                         ; $7511: $10
	inc  de                                          ; $7512: $13
	ld   d, b                                        ; $7513: $50
	ld   [hl], b                                     ; $7514: $70
	jr   nz, jr_079_7527                             ; $7515: $20 $10

	ld   h, b                                        ; $7517: $60

jr_079_7518:
	ldh  [rAUD4LEN], a                               ; $7518: $e0 $20
	ld   b, b                                        ; $751a: $40
	ret  nz                                          ; $751b: $c0

	nop                                              ; $751c: $00
	jp   $0602                                       ; $751d: $c3 $02 $06


	nop                                              ; $7520: $00
	inc  b                                           ; $7521: $04
	dec  b                                           ; $7522: $05
	add  hl, bc                                      ; $7523: $09
	nop                                              ; $7524: $00
	ld   a, [bc]                                     ; $7525: $0a
	ld   [bc], a                                     ; $7526: $02

jr_079_7527:
	add  b                                           ; $7527: $80
	nop                                              ; $7528: $00
	ld   b, $0a                                      ; $7529: $06 $0a
	ld   [bc], a                                     ; $752b: $02
	inc  b                                           ; $752c: $04
	inc  c                                           ; $752d: $0c
	ld   h, a                                        ; $752e: $67
	and  b                                           ; $752f: $a0
	jr   nz, jr_079_74b2                             ; $7530: $20 $80

	ld   h, b                                        ; $7532: $60
	ld   [bc], a                                     ; $7533: $02
	db   $10                                         ; $7534: $10
	ld   b, b                                        ; $7535: $40
	ld   d, b                                        ; $7536: $50
	add  b                                           ; $7537: $80
	or   b                                           ; $7538: $b0
	add  b                                           ; $7539: $80
	jr   nz, jr_079_7551                             ; $753a: $20 $15

	and  b                                           ; $753c: $a0
	ldh  [rLCDC], a                                  ; $753d: $e0 $40
	jr   nz, jr_079_750a                             ; $753f: $20 $c9

	ld   c, $00                                      ; $7541: $0e $00
	inc  b                                           ; $7543: $04
	nop                                              ; $7544: $00
	inc  bc                                          ; $7545: $03
	ld   b, $05                                      ; $7546: $06 $05
	inc  c                                           ; $7548: $0c
	nop                                              ; $7549: $00
	ld   [$120a], sp                                 ; $754a: $08 $0a $12
	nop                                              ; $754d: $00
	dec  d                                           ; $754e: $15
	dec  b                                           ; $754f: $05
	ld   l, a                                        ; $7550: $6f

jr_079_7551:
	sub  b                                           ; $7551: $90
	add  b                                           ; $7552: $80
	jr   jr_079_7557                                 ; $7553: $18 $02

	ld   h, b                                        ; $7555: $60
	ld   l, b                                        ; $7556: $68

jr_079_7557:
	jr   c, jr_079_74d9                              ; $7557: $38 $80

	ld   b, b                                        ; $7559: $40
	add  b                                           ; $755a: $80
	ret  nz                                          ; $755b: $c0

	ld   [bc], a                                     ; $755c: $02
	jr   nz, @-$7e                                   ; $755d: $20 $80

	and  b                                           ; $755f: $a0
	add  b                                           ; $7560: $80
	ld   h, b                                        ; $7561: $60
	dec  d                                           ; $7562: $15
	adc  $01                                         ; $7563: $ce $01
	ld   [bc], a                                     ; $7565: $02
	ld   a, [bc]                                     ; $7566: $0a
	ld   [$2a00], sp                                 ; $7567: $08 $00 $2a
	ld   a, [hl-]                                    ; $756a: $3a
	nop                                              ; $756b: $00
	stop                                             ; $756c: $10 $00
	inc  c                                           ; $756e: $0c
	add  hl, de                                      ; $756f: $19
	dec  d                                           ; $7570: $15
	jr   nc, jr_079_7576                             ; $7571: $30 $03

	sbc  h                                           ; $7573: $9c
	ld   h, b                                        ; $7574: $60
	nop                                              ; $7575: $00

jr_079_7576:
	jr   nz, jr_079_7518                             ; $7576: $20 $a0

	add  b                                           ; $7578: $80
	add  b                                           ; $7579: $80
	ld   b, b                                        ; $757a: $40
	add  b                                           ; $757b: $80
	ld   h, b                                        ; $757c: $60
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	add  b                                           ; $757f: $80
	jr   nz, jr_079_7582                             ; $7580: $20 $00

jr_079_7582:
	ret  nz                                          ; $7582: $c0

	add  b                                           ; $7583: $80
	nop                                              ; $7584: $00
	inc  b                                           ; $7585: $04
	dec  hl                                          ; $7586: $2b
	inc  [hl]                                        ; $7587: $34
	dec  b                                           ; $7588: $05
	dec  d                                           ; $7589: $15
	dec  de                                          ; $758a: $1b
	add  b                                           ; $758b: $80
	dec  bc                                          ; $758c: $0b
	add  hl, bc                                      ; $758d: $09
	inc  de                                          ; $758e: $13
	ld   [bc], a                                     ; $758f: $02
	add  hl, bc                                      ; $7590: $09
	dec  b                                           ; $7591: $05
	dec  c                                           ; $7592: $0d
	jr   nz, jr_079_7599                             ; $7593: $20 $04

	ld   d, b                                        ; $7595: $50
	sub  h                                           ; $7596: $94
	db   $e4                                         ; $7597: $e4
	adc  [hl]                                        ; $7598: $8e

jr_079_7599:
	rrca                                             ; $7599: $0f
	add  l                                           ; $759a: $85
	rst  $38                                         ; $759b: $ff
	add  b                                           ; $759c: $80
	cp   $82                                         ; $759d: $fe $82
	rst  $38                                         ; $759f: $ff
	add  b                                           ; $75a0: $80
	ei                                               ; $75a1: $fb
	add  b                                           ; $75a2: $80
	ld   a, [$f580]                                  ; $75a3: $fa $80 $f5
	add  b                                           ; $75a6: $80

jr_079_75a7:
	ld   [$d480], a                                  ; $75a7: $ea $80 $d4
	add  b                                           ; $75aa: $80
	add  sp, -$80                                    ; $75ab: $e8 $80
	or   h                                           ; $75ad: $b4
	add  b                                           ; $75ae: $80
	ld   c, b                                        ; $75af: $48
	add  b                                           ; $75b0: $80
	and  b                                           ; $75b1: $a0
	ld   [bc], a                                     ; $75b2: $02
	dec  c                                           ; $75b3: $0d
	db   $10                                         ; $75b4: $10
	ld   h, $85                                      ; $75b5: $26 $85
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	ld   c, h                                        ; $75b9: $4c
	add  e                                           ; $75ba: $83
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	adc  b                                           ; $75bd: $88
	adc  e                                           ; $75be: $8b
	nop                                              ; $75bf: $00
	inc  b                                           ; $75c0: $04
	ret  nc                                          ; $75c1: $d0

	jr   nc, jr_079_75a7                             ; $75c2: $30 $e3

	nop                                              ; $75c4: $00
	ld   bc, $0380                                   ; $75c5: $01 $80 $03
	ld   bc, $0601                                   ; $75c8: $01 $01 $06
	add  c                                           ; $75cb: $81
	ld   [bc], a                                     ; $75cc: $02
	rlca                                             ; $75cd: $07
	ld   bc, $0509                                   ; $75ce: $01 $09 $05
	rlca                                             ; $75d1: $07
	ld   de, $d713                                   ; $75d2: $11 $13 $d7
	jr   z, jr_079_7557                              ; $75d5: $28 $80

	ret  nz                                          ; $75d7: $c0

	inc  bc                                          ; $75d8: $03
	ld   d, b                                        ; $75d9: $50
	jr   nz, jr_079_763c                             ; $75da: $20 $60

	nop                                              ; $75dc: $00
	add  b                                           ; $75dd: $80
	ld   b, b                                        ; $75de: $40
	ld   [bc], a                                     ; $75df: $02
	nop                                              ; $75e0: $00
	ld   b, b                                        ; $75e1: $40
	ret  nz                                          ; $75e2: $c0

	add  c                                           ; $75e3: $81
	and  b                                           ; $75e4: $a0
	db   $10                                         ; $75e5: $10
	rst  JumpTable                                         ; $75e6: $df
	ld   d, $06                                      ; $75e7: $16 $06
	db   $10                                         ; $75e9: $10
	add  hl, bc                                      ; $75ea: $09
	dec  c                                           ; $75eb: $0d
	dec  b                                           ; $75ec: $05
	ld   bc, $1e0e                                   ; $75ed: $01 $0e $1e
	cpl                                              ; $75f0: $2f
	ld   sp, $0b03                                   ; $75f1: $31 $03 $0b
	ld   [hl+], a                                    ; $75f4: $22
	ld   a, [hl+]                                    ; $75f5: $2a
	ld   d, c                                        ; $75f6: $51
	add  c                                           ; $75f7: $81
	add  b                                           ; $75f8: $80
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	add  c                                           ; $75fb: $81
	ld   b, b                                        ; $75fc: $40
	add  b                                           ; $75fd: $80
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	add  b                                           ; $7600: $80
	add  e                                           ; $7601: $83
	nop                                              ; $7602: $00
	ld   [de], a                                     ; $7603: $12
	rlca                                             ; $7604: $07
	dec  b                                           ; $7605: $05
	jr   jr_079_760c                                 ; $7606: $18 $04

	add  hl, bc                                      ; $7608: $09
	ld   [$2d21], sp                                 ; $7609: $08 $21 $2d

jr_079_760c:
	dec  c                                           ; $760c: $0d
	ld   hl, $1a12                                   ; $760d: $21 $12 $1a
	ld   a, [bc]                                     ; $7610: $0a
	ld   [bc], a                                     ; $7611: $02
	inc  e                                           ; $7612: $1c
	inc  a                                           ; $7613: $3c
	rra                                              ; $7614: $1f
	ret  nz                                          ; $7615: $c0

	ld   b, b                                        ; $7616: $40
	add  b                                           ; $7617: $80
	add  b                                           ; $7618: $80
	add  h                                           ; $7619: $84
	nop                                              ; $761a: $00
	add  c                                           ; $761b: $81
	add  b                                           ; $761c: $80
	add  b                                           ; $761d: $80
	nop                                              ; $761e: $00
	db   $10                                         ; $761f: $10
	rrca                                             ; $7620: $0f
	nop                                              ; $7621: $00
	dec  d                                           ; $7622: $15
	dec  b                                           ; $7623: $05
	ld   [$0818], sp                                 ; $7624: $08 $18 $08
	dec  b                                           ; $7627: $05
	scf                                              ; $7628: $37
	add  hl, bc                                      ; $7629: $09
	inc  de                                          ; $762a: $13
	db   $10                                         ; $762b: $10
	ld   b, d                                        ; $762c: $42
	ld   e, d                                        ; $762d: $5a
	ld   a, [de]                                     ; $762e: $1a
	ld   b, d                                        ; $762f: $42
	rst  $38                                         ; $7630: $ff
	add  b                                           ; $7631: $80
	ld   b, b                                        ; $7632: $40
	inc  bc                                          ; $7633: $03
	ret  nz                                          ; $7634: $c0

	add  b                                           ; $7635: $80

jr_079_7636:
	ld   b, b                                        ; $7636: $40
	add  b                                           ; $7637: $80
	add  b                                           ; $7638: $80
	ret  nz                                          ; $7639: $c0

	add  l                                           ; $763a: $85
	nop                                              ; $763b: $00

jr_079_763c:
	dec  b                                           ; $763c: $05
	rra                                              ; $763d: $1f
	jr   z, jr_079_768a                              ; $763e: $28 $4a

	ld   [bc], a                                     ; $7640: $02
	ld   d, l                                        ; $7641: $55
	dec  d                                           ; $7642: $15
	add  b                                           ; $7643: $80
	ld   bc, $550a                                   ; $7644: $01 $0a $55
	rla                                              ; $7647: $17
	ld   [hl+], a                                    ; $7648: $22
	ld   h, c                                        ; $7649: $61
	ld   [hl+], a                                    ; $764a: $22
	rla                                              ; $764b: $17
	rst  JumpTable                                         ; $764c: $df
	inc  h                                           ; $764d: $24
	ldh  a, [$80]                                    ; $764e: $f0 $80
	nop                                              ; $7650: $00
	add  b                                           ; $7651: $80
	add  b                                           ; $7652: $80
	ld   [bc], a                                     ; $7653: $02
	add  c                                           ; $7654: $81
	ld   bc, $8200                                   ; $7655: $01 $00 $82
	ld   bc, $0307                                   ; $7658: $01 $07 $03
	nop                                              ; $765b: $00
	inc  bc                                          ; $765c: $03
	nop                                              ; $765d: $00
	cp   $89                                         ; $765e: $fe $89
	ld   e, l                                        ; $7660: $5d
	push de                                          ; $7661: $d5
	add  b                                           ; $7662: $80
	ld   b, $0a                                      ; $7663: $06 $0a
	add  hl, de                                      ; $7665: $19
	sbc  d                                           ; $7666: $9a
	and  d                                           ; $7667: $a2

jr_079_7668:
	dec  h                                           ; $7668: $25
	ld   b, l                                        ; $7669: $45
	jp   nz, $2fac                                   ; $766a: $c2 $ac $2f

	and  c                                           ; $766d: $a1
	ld   h, d                                        ; $766e: $62
	inc  a                                           ; $766f: $3c
	add  l                                           ; $7670: $85
	rrca                                             ; $7671: $0f
	add  b                                           ; $7672: $80
	ld   c, $80                                      ; $7673: $0e $80
	dec  c                                           ; $7675: $0d
	add  b                                           ; $7676: $80
	ld   a, [bc]                                     ; $7677: $0a
	add  b                                           ; $7678: $80
	dec  c                                           ; $7679: $0d
	nop                                              ; $767a: $00
	rrca                                             ; $767b: $0f
	add  e                                           ; $767c: $83
	rst  $38                                         ; $767d: $ff
	add  b                                           ; $767e: $80
	ld   a, [hl]                                     ; $767f: $7e
	add  b                                           ; $7680: $80
	db   $fd                                         ; $7681: $fd
	add  b                                           ; $7682: $80
	ld   a, [$e880]                                  ; $7683: $fa $80 $e8
	add  b                                           ; $7686: $80
	ldh  a, [c]                                      ; $7687: $f2
	add  b                                           ; $7688: $80
	ret  nz                                          ; $7689: $c0

jr_079_768a:
	add  b                                           ; $768a: $80
	call nz, $b080                                   ; $768b: $c4 $80 $b0
	add  b                                           ; $768e: $80
	db   $10                                         ; $768f: $10
	add  b                                           ; $7690: $80
	add  b                                           ; $7691: $80
	ld   bc, $4041                                   ; $7692: $01 $41 $40
	add  b                                           ; $7695: $80
	add  b                                           ; $7696: $80
	add  b                                           ; $7697: $80
	nop                                              ; $7698: $00
	ld   [bc], a                                     ; $7699: $02
	halt                                             ; $769a: $76
	nop                                              ; $769b: $00
	sbc  b                                           ; $769c: $98
	add  c                                           ; $769d: $81
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	ld   bc, $0081                                   ; $76a0: $01 $81 $00
	ld   bc, $0131                                   ; $76a3: $01 $31 $01
	add  d                                           ; $76a6: $82
	ld   [bc], a                                     ; $76a7: $02
	dec  b                                           ; $76a8: $05
	reti                                             ; $76a9: $d9


	add  b                                           ; $76aa: $80
	sbc  b                                           ; $76ab: $98
	jr   jr_079_7636                                 ; $76ac: $18 $88

	add  b                                           ; $76ae: $80
	add  b                                           ; $76af: $80
	and  b                                           ; $76b0: $a0
	add  hl, bc                                      ; $76b1: $09
	add  b                                           ; $76b2: $80
	ldh  [rSVBK], a                                  ; $76b3: $e0 $70
	nop                                              ; $76b5: $00
	jr   nz, jr_079_7668                             ; $76b6: $20 $b0

	sub  b                                           ; $76b8: $90
	nop                                              ; $76b9: $00
	ldh  [rAUD2ENV], a                               ; $76ba: $e0 $17
	add  b                                           ; $76bc: $80
	rlca                                             ; $76bd: $07
	ld   bc, $0800                                   ; $76be: $01 $00 $08
	add  b                                           ; $76c1: $80
	dec  h                                           ; $76c2: $25
	ld   [$1838], sp                                 ; $76c3: $08 $38 $18
	ld   [de], a                                     ; $76c6: $12
	dec  de                                          ; $76c7: $1b
	dec  bc                                          ; $76c8: $0b
	ld   [bc], a                                     ; $76c9: $02
	inc  e                                           ; $76ca: $1c
	inc  a                                           ; $76cb: $3c
	rst  JumpTable                                         ; $76cc: $df
	add  c                                           ; $76cd: $81
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	ld   b, b                                        ; $76d0: $40
	add  [hl]                                        ; $76d1: $86
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	add  b                                           ; $76d4: $80
	add  b                                           ; $76d5: $80
	nop                                              ; $76d6: $00
	db   $10                                         ; $76d7: $10
	dec  bc                                          ; $76d8: $0b
	ld   a, [hl-]                                    ; $76d9: $3a
	ld   [bc], a                                     ; $76da: $02
	ld   d, d                                        ; $76db: $52
	ld   [hl+], a                                    ; $76dc: $22
	ld   b, d                                        ; $76dd: $42
	ld   sp, $e729                                   ; $76de: $31 $29 $e7
	ld   a, [hl+]                                    ; $76e1: $2a
	ld   [$5ac2], a                                  ; $76e2: $ea $c2 $5a

jr_079_76e5:
	ld   e, b                                        ; $76e5: $58
	ld   b, a                                        ; $76e6: $47
	ld   b, l                                        ; $76e7: $45
	db   $fc                                         ; $76e8: $fc
	adc  e                                           ; $76e9: $8b
	nop                                              ; $76ea: $00
	ld   [de], a                                     ; $76eb: $12
	ld   bc, $4100                                   ; $76ec: $01 $00 $41
	ld   h, d                                        ; $76ef: $62
	ld   b, $16                                      ; $76f0: $06 $16
	ld   b, h                                        ; $76f2: $44
	ld   d, h                                        ; $76f3: $54
	inc  [hl]                                        ; $76f4: $34
	ld   [hl], h                                     ; $76f5: $74

jr_079_76f6:
	inc  b                                           ; $76f6: $04
	and  h                                           ; $76f7: $a4
	ld   b, h                                        ; $76f8: $44
	add  h                                           ; $76f9: $84
	ld   [$3c6c], a                                  ; $76fa: $ea $6c $3c
	ret  c                                           ; $76fd: $d8

	ld   h, b                                        ; $76fe: $60
	adc  h                                           ; $76ff: $8c
	nop                                              ; $7700: $00
	ld   [de], a                                     ; $7701: $12
	ld   bc, $355a                                   ; $7702: $01 $5a $35
	dec  d                                           ; $7705: $15
	dec  b                                           ; $7706: $05
	jr   c, @+$7a                                    ; $7707: $38 $78

	cp   [hl]                                        ; $7709: $be
	call nz, $2c0c                                   ; $770a: $c4 $0c $2c
	adc  b                                           ; $770d: $88
	xor  b                                           ; $770e: $a8
	ld   l, b                                        ; $770f: $68
	add  sp, $08                                     ; $7710: $e8 $08
	ld   c, b                                        ; $7712: $48
	add  h                                           ; $7713: $84
	nop                                              ; $7714: $00
	add  b                                           ; $7715: $80
	ld   bc, $0001                                   ; $7716: $01 $01 $00
	ld   bc, $0083                                   ; $7719: $01 $83 $00
	ld   [bc], a                                     ; $771c: $02
	ld   bc, $0302                                   ; $771d: $01 $02 $03
	add  b                                           ; $7720: $80
	nop                                              ; $7721: $00
	ld   [bc], a                                     ; $7722: $02
	cp   l                                           ; $7723: $bd
	ld   b, b                                        ; $7724: $40
	ld   [$6880], sp                                 ; $7725: $08 $80 $68
	inc  b                                           ; $7728: $04
	ld   [$d490], sp                                 ; $7729: $08 $90 $d4
	ld   d, h                                        ; $772c: $54
	inc  d                                           ; $772d: $14
	add  b                                           ; $772e: $80
	ldh  [rDIV], a                                   ; $772f: $e0 $04
	ld   hl, sp+$10                                  ; $7731: $f8 $10
	jr   nc, jr_079_76e5                             ; $7733: $30 $b0

	sub  b                                           ; $7735: $90
	add  c                                           ; $7736: $81
	nop                                              ; $7737: $00
	ld   [bc], a                                     ; $7738: $02
	ld   bc, $0200                                   ; $7739: $01 $00 $02
	add  b                                           ; $773c: $80
	ld   b, $16                                      ; $773d: $06 $16
	inc  b                                           ; $773f: $04
	ld   [bc], a                                     ; $7740: $02
	rlca                                             ; $7741: $07
	ld   bc, $0d04                                   ; $7742: $01 $04 $0d
	rrca                                             ; $7745: $0f
	ld   [hl+], a                                    ; $7746: $22
	ld   d, l                                        ; $7747: $55
	ld   [bc], a                                     ; $7748: $02
	ld   d, b                                        ; $7749: $50
	and  b                                           ; $774a: $a0
	add  b                                           ; $774b: $80
	nop                                              ; $774c: $00
	add  b                                           ; $774d: $80
	ld   [hl], b                                     ; $774e: $70
	inc  [hl]                                        ; $774f: $34
	or   b                                           ; $7750: $b0
	xor  b                                           ; $7751: $a8
	inc  c                                           ; $7752: $0c
	xor  h                                           ; $7753: $ac
	call nc, $ca54                                   ; $7754: $d4 $54 $ca
	ld   bc, $0087                                   ; $7757: $01 $87 $00
	add  [hl]                                        ; $775a: $86
	rrca                                             ; $775b: $0f
	add  l                                           ; $775c: $85
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	rlca                                             ; $775f: $07
	add  l                                           ; $7760: $85
	cp   $00                                         ; $7761: $fe $00
	ld   sp, hl                                      ; $7763: $f9
	add  l                                           ; $7764: $85
	nop                                              ; $7765: $00
	ld   [$003f], sp                                 ; $7766: $08 $3f $00
	jr   nc, jr_079_776b                             ; $7769: $30 $00

jr_079_776b:
	adc  [hl]                                        ; $776b: $8e
	ld   d, b                                        ; $776c: $50
	reti                                             ; $776d: $d9


	db   $10                                         ; $776e: $10
	jr   jr_079_76f6                                 ; $776f: $18 $85

	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	rst  $38                                         ; $7773: $ff
	add  b                                           ; $7774: $80
	ldh  a, [$80]                                    ; $7775: $f0 $80
	inc  a                                           ; $7777: $3c
	inc  bc                                          ; $7778: $03
	rrca                                             ; $7779: $0f
	adc  a                                           ; $777a: $8f
	inc  bc                                          ; $777b: $03
	ld   a, h                                        ; $777c: $7c
	add  l                                           ; $777d: $85
	nop                                              ; $777e: $00
	ld   bc, $0ff0                                   ; $777f: $01 $f0 $0f
	add  b                                           ; $7782: $80
	inc  bc                                          ; $7783: $03
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	add  b                                           ; $7786: $80
	add  b                                           ; $7787: $80
	ld   bc, $1fe0                                   ; $7788: $01 $e0 $1f
	add  l                                           ; $778b: $85
	nop                                              ; $778c: $00
	ld   [$00ff], sp                                 ; $778d: $08 $ff $00
	dec  [hl]                                        ; $7790: $35
	cp   a                                           ; $7791: $bf
	and  b                                           ; $7792: $a0
	cp   a                                           ; $7793: $bf
	sub  l                                           ; $7794: $95
	nop                                              ; $7795: $00
	rst  $38                                         ; $7796: $ff
	add  l                                           ; $7797: $85
	nop                                              ; $7798: $00
	ld   [$00ff], sp                                 ; $7799: $08 $ff $00
	ld   d, l                                        ; $779c: $55
	rst  $38                                         ; $779d: $ff
	nop                                              ; $779e: $00
	rst  $38                                         ; $779f: $ff
	ld   d, l                                        ; $77a0: $55
	nop                                              ; $77a1: $00
	rst  $38                                         ; $77a2: $ff
	add  l                                           ; $77a3: $85
	nop                                              ; $77a4: $00
	ld   [$00ff], sp                                 ; $77a5: $08 $ff $00
	ld   d, h                                        ; $77a8: $54
	rst  $38                                         ; $77a9: $ff
	dec  bc                                          ; $77aa: $0b
	rst  $38                                         ; $77ab: $ff
	ld   e, a                                        ; $77ac: $5f
	nop                                              ; $77ad: $00
	rst  $38                                         ; $77ae: $ff
	add  l                                           ; $77af: $85
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	rst  $38                                         ; $77b2: $ff
	add  b                                           ; $77b3: $80
	nop                                              ; $77b4: $00
	add  d                                           ; $77b5: $82
	rst  $38                                         ; $77b6: $ff
	ld   bc, $ff00                                   ; $77b7: $01 $00 $ff
	add  l                                           ; $77ba: $85
	nop                                              ; $77bb: $00
	inc  b                                           ; $77bc: $04
	xor  e                                           ; $77bd: $ab
	ld   d, h                                        ; $77be: $54
	add  hl, bc                                      ; $77bf: $09
	ret  nz                                          ; $77c0: $c0

	jp   nc, $c080                                   ; $77c1: $d2 $80 $c0

	ld   bc, $e400                                   ; $77c4: $01 $00 $e4
	add  l                                           ; $77c7: $85
	nop                                              ; $77c8: $00
	inc  b                                           ; $77c9: $04
	cp   d                                           ; $77ca: $ba
	ld   b, l                                        ; $77cb: $45
	or   d                                           ; $77cc: $b2
	nop                                              ; $77cd: $00
	add  hl, bc                                      ; $77ce: $09
	add  c                                           ; $77cf: $81
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	ld   b, h                                        ; $77d2: $44
	add  l                                           ; $77d3: $85
	nop                                              ; $77d4: $00
	ld   [bc], a                                     ; $77d5: $02
	cp   a                                           ; $77d6: $bf
	ld   b, b                                        ; $77d7: $40
	nop                                              ; $77d8: $00
	add  d                                           ; $77d9: $82
	ld   a, a                                        ; $77da: $7f
	ld   bc, $ff00                                   ; $77db: $01 $00 $ff
	add  l                                           ; $77de: $85
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	rst  $38                                         ; $77e1: $ff
	add  b                                           ; $77e2: $80
	nop                                              ; $77e3: $00
	add  b                                           ; $77e4: $80
	cp   $80                                         ; $77e5: $fe $80
	db   $fc                                         ; $77e7: $fc
	ld   bc, $ff00                                   ; $77e8: $01 $00 $ff
	add  l                                           ; $77eb: $85
	nop                                              ; $77ec: $00
	ld   [$00ff], sp                                 ; $77ed: $08 $ff $00
	dec  d                                           ; $77f0: $15
	rst  $38                                         ; $77f1: $ff
	add  sp, $7f                                     ; $77f2: $e8 $7f
	ld   a, l                                        ; $77f4: $7d
	nop                                              ; $77f5: $00
	rst  $38                                         ; $77f6: $ff
	add  l                                           ; $77f7: $85
	nop                                              ; $77f8: $00
	ld   [$00ff], sp                                 ; $77f9: $08 $ff $00
	ld   d, h                                        ; $77fc: $54
	cp   $02                                         ; $77fd: $fe $02
	db   $fc                                         ; $77ff: $fc
	ld   d, h                                        ; $7800: $54
	nop                                              ; $7801: $00
	rst  $38                                         ; $7802: $ff
	add  l                                           ; $7803: $85
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	rst  $38                                         ; $7806: $ff
	add  b                                           ; $7807: $80
	inc  a                                           ; $7808: $3c
	add  b                                           ; $7809: $80
	ldh  a, [$80]                                    ; $780a: $f0 $80
	ret  nz                                          ; $780c: $c0

	ld   bc, $fe01                                   ; $780d: $01 $01 $fe
	adc  l                                           ; $7810: $8d
	rrca                                             ; $7811: $0f
	nop                                              ; $7812: $00
	ld   [$fe8d], sp                                 ; $7813: $08 $8d $fe
	inc  e                                           ; $7816: $1c
	xor  c                                           ; $7817: $a9
	xor  b                                           ; $7818: $a8
	ld   sp, hl                                      ; $7819: $f9
	or   $02                                         ; $781a: $f6 $02
	ld   [hl], b                                     ; $781c: $70
	or   e                                           ; $781d: $b3
	halt                                             ; $781e: $76
	add  hl, bc                                      ; $781f: $09
	ld   c, e                                        ; $7820: $4b
	ld   [bc], a                                     ; $7821: $02
	db   $e4                                         ; $7822: $e4
	ld   l, h                                        ; $7823: $6c
	rst  ToBoot                                         ; $7824: $c7
	dec  c                                           ; $7825: $0d
	and  l                                           ; $7826: $a5
	xor  b                                           ; $7827: $a8
	ret  nc                                          ; $7828: $d0

	sbc  b                                           ; $7829: $98
	inc  a                                           ; $782a: $3c
	ld   hl, sp-$7b                                  ; $782b: $f8 $85
	ei                                               ; $782d: $fb
	dec  a                                           ; $782e: $3d
	ld   d, c                                        ; $782f: $51
	ld   c, c                                        ; $7830: $49
	sub  e                                           ; $7831: $93
	or   l                                           ; $7832: $b5
	cp   a                                           ; $7833: $bf
	add  b                                           ; $7834: $80
	ld   de, $3701                                   ; $7835: $11 $01 $37
	ret                                              ; $7838: $c9


	add  b                                           ; $7839: $80
	db   $fc                                         ; $783a: $fc
	add  b                                           ; $783b: $80
	ccf                                              ; $783c: $3f
	nop                                              ; $783d: $00
	rra                                              ; $783e: $1f
	add  b                                           ; $783f: $80
	sbc  a                                           ; $7840: $9f
	nop                                              ; $7841: $00
	rst  JumpTable                                         ; $7842: $df
	add  c                                           ; $7843: $81
	rst  $38                                         ; $7844: $ff
	nop                                              ; $7845: $00
	rst  JumpTable                                         ; $7846: $df
	add  c                                           ; $7847: $81
	rst  $38                                         ; $7848: $ff
	nop                                              ; $7849: $00
	rra                                              ; $784a: $1f
	add  d                                           ; $784b: $82
	nop                                              ; $784c: $00
	adc  d                                           ; $784d: $8a
	ld   a, a                                        ; $784e: $7f
	add  c                                           ; $784f: $81
	nop                                              ; $7850: $00
	ld   [$ff01], sp                                 ; $7851: $08 $01 $ff
	ld   sp, hl                                      ; $7854: $f9
	rst  $38                                         ; $7855: $ff
	rst  $30                                         ; $7856: $f7
	rst  $38                                         ; $7857: $ff
	rst  $28                                         ; $7858: $ef
	rst  $38                                         ; $7859: $ff
	rst  JumpTable                                         ; $785a: $df
	add  c                                           ; $785b: $81
	rst  $38                                         ; $785c: $ff
	nop                                              ; $785d: $00
	ret  nz                                          ; $785e: $c0

	add  c                                           ; $785f: $81
	nop                                              ; $7860: $00
	add  b                                           ; $7861: $80
	cp   $88                                         ; $7862: $fe $88
	rst  $38                                         ; $7864: $ff
	ld   [bc], a                                     ; $7865: $02
	ld   a, b                                        ; $7866: $78
	ld   a, a                                        ; $7867: $7f
	ld   b, a                                        ; $7868: $47
	add  c                                           ; $7869: $81
	ld   a, a                                        ; $786a: $7f
	ld   [bc], a                                     ; $786b: $02
	add  b                                           ; $786c: $80
	cp   a                                           ; $786d: $bf
	ld   a, a                                        ; $786e: $7f
	add  e                                           ; $786f: $83
	or   d                                           ; $7870: $b2
	ld   a, [bc]                                     ; $7871: $0a
	and  d                                           ; $7872: $a2
	or   d                                           ; $7873: $b2
	or   b                                           ; $7874: $b0
	add  b                                           ; $7875: $80
	ret  c                                           ; $7876: $d8

	ret  nz                                          ; $7877: $c0

	rst  $28                                         ; $7878: $ef
	ldh  [rAUD3ENA], a                               ; $7879: $e0 $1a
	db   $fc                                         ; $787b: $fc
	jp   Jump_079_6a85                               ; $787c: $c3 $85 $6a


	ld   a, [bc]                                     ; $787f: $0a
	inc  bc                                          ; $7880: $03
	nop                                              ; $7881: $00
	inc  bc                                          ; $7882: $03
	nop                                              ; $7883: $00
	ld   e, $00                                      ; $7884: $1e $00
	xor  d                                           ; $7886: $aa
	rlca                                             ; $7887: $07
	jr   jr_079_789d                                 ; $7888: $18 $13

	di                                               ; $788a: $f3
	add  h                                           ; $788b: $84
	inc  sp                                          ; $788c: $33
	ld   [bc], a                                     ; $788d: $02
	ld   a, $42                                      ; $788e: $3e $42
	ld   a, [hl]                                     ; $7890: $7e
	add  b                                           ; $7891: $80
	cp   $03                                         ; $7892: $fe $03
	dec  b                                           ; $7894: $05
	ld   sp, hl                                      ; $7895: $f9
	rst  $38                                         ; $7896: $ff
	add  hl, bc                                      ; $7897: $09
	add  h                                           ; $7898: $84
	ld   c, c                                        ; $7899: $49
	nop                                              ; $789a: $00
	or   $81                                         ; $789b: $f6 $81

jr_079_789d:
	nop                                              ; $789d: $00
	add  b                                           ; $789e: $80
	db   $fc                                         ; $789f: $fc
	add  b                                           ; $78a0: $80
	db   $fd                                         ; $78a1: $fd
	add  b                                           ; $78a2: $80
	ei                                               ; $78a3: $fb
	add  b                                           ; $78a4: $80
	ld   a, [$f680]                                  ; $78a5: $fa $80 $f6
	add  b                                           ; $78a8: $80
	ldh  [c], a                                      ; $78a9: $e2
	add  d                                           ; $78aa: $82
	nop                                              ; $78ab: $00
	add  b                                           ; $78ac: $80
	rlca                                             ; $78ad: $07
	add  b                                           ; $78ae: $80
	rla                                              ; $78af: $17
	add  b                                           ; $78b0: $80
	dec  de                                          ; $78b1: $1b
	add  b                                           ; $78b2: $80
	xor  e                                           ; $78b3: $ab
	add  b                                           ; $78b4: $80
	xor  l                                           ; $78b5: $ad
	add  b                                           ; $78b6: $80
	add  hl, bc                                      ; $78b7: $09
	add  d                                           ; $78b8: $82
	nop                                              ; $78b9: $00
	ld   [bc], a                                     ; $78ba: $02
	ldh  a, [rIE]                                    ; $78bb: $f0 $ff
	di                                               ; $78bd: $f3
	add  c                                           ; $78be: $81
	rst  $38                                         ; $78bf: $ff
	nop                                              ; $78c0: $00
	db   $fd                                         ; $78c1: $fd
	add  e                                           ; $78c2: $83
	rst  $38                                         ; $78c3: $ff
	nop                                              ; $78c4: $00
	ld   bc, $0780                                   ; $78c5: $01 $80 $07
	add  b                                           ; $78c8: $80
	rra                                              ; $78c9: $1f
	add  l                                           ; $78ca: $85
	ld   a, a                                        ; $78cb: $7f
	nop                                              ; $78cc: $00
	ld   a, [hl]                                     ; $78cd: $7e
	add  c                                           ; $78ce: $81

jr_079_78cf:
	ld   a, a                                        ; $78cf: $7f
	nop                                              ; $78d0: $00
	add  c                                           ; $78d1: $81
	adc  l                                           ; $78d2: $8d
	rrca                                             ; $78d3: $0f
	nop                                              ; $78d4: $00
	ld   [$fe8d], sp                                 ; $78d5: $08 $8d $fe
	nop                                              ; $78d8: $00
	ld   sp, hl                                      ; $78d9: $f9
	add  b                                           ; $78da: $80
	rra                                              ; $78db: $1f
	rra                                              ; $78dc: $1f
	add  b                                           ; $78dd: $80
	ret  c                                           ; $78de: $d8

	inc  [hl]                                        ; $78df: $34
	ld   l, h                                        ; $78e0: $6c
	ld   [hl], $06                                   ; $78e1: $36 $06
	ld   d, [hl]                                     ; $78e3: $56
	ld   b, [hl]                                     ; $78e4: $46
	ld   h, e                                        ; $78e5: $63
	ld   c, e                                        ; $78e6: $4b
	ld   a, a                                        ; $78e7: $7f
	add  a                                           ; $78e8: $87
	ld   c, $f7                                      ; $78e9: $0e $f7
	inc  sp                                          ; $78eb: $33
	dec  sp                                          ; $78ec: $3b
	pop  bc                                          ; $78ed: $c1
	push bc                                          ; $78ee: $c5
	add  hl, de                                      ; $78ef: $19
	dec  e                                           ; $78f0: $1d
	add  e                                           ; $78f1: $83
	add  a                                           ; $78f2: $87
	rst  JumpTable                                         ; $78f3: $df
	db   $d3                                         ; $78f4: $d3
	sbc  e                                           ; $78f5: $9b
	sub  e                                           ; $78f6: $93
	cp   e                                           ; $78f7: $bb
	xor  c                                           ; $78f8: $a9
	cpl                                              ; $78f9: $2f
	inc  hl                                          ; $78fa: $23
	rst  $38                                         ; $78fb: $ff
	rst  $28                                         ; $78fc: $ef
	add  a                                           ; $78fd: $87
	rst  $38                                         ; $78fe: $ff
	nop                                              ; $78ff: $00
	rst  $30                                         ; $7900: $f7
	add  c                                           ; $7901: $81
	rst  $38                                         ; $7902: $ff
	nop                                              ; $7903: $00
	rlca                                             ; $7904: $07
	add  e                                           ; $7905: $83
	ld   a, a                                        ; $7906: $7f
	nop                                              ; $7907: $00
	ld   a, [hl]                                     ; $7908: $7e
	add  c                                           ; $7909: $81
	ld   a, a                                        ; $790a: $7f
	nop                                              ; $790b: $00
	ld   a, l                                        ; $790c: $7d
	add  c                                           ; $790d: $81
	ld   a, a                                        ; $790e: $7f
	inc  b                                           ; $790f: $04
	ld   a, e                                        ; $7910: $7b
	ld   a, a                                        ; $7911: $7f
	rlca                                             ; $7912: $07
	rst  $38                                         ; $7913: $ff
	ld   a, a                                        ; $7914: $7f
	add  a                                           ; $7915: $87
	rst  $38                                         ; $7916: $ff
	ld   bc, $fff8                                   ; $7917: $01 $f8 $ff
	add  b                                           ; $791a: $80
	db   $fc                                         ; $791b: $fc
	nop                                              ; $791c: $00
	ld   hl, sp-$77                                  ; $791d: $f8 $89
	rst  $38                                         ; $791f: $ff
	ld   bc, $f707                                   ; $7920: $01 $07 $f7
	add  b                                           ; $7923: $80
	rla                                              ; $7924: $17
	nop                                              ; $7925: $00
	sbc  l                                           ; $7926: $9d
	add  e                                           ; $7927: $83
	or   d                                           ; $7928: $b2
	nop                                              ; $7929: $00
	sub  d                                           ; $792a: $92
	add  a                                           ; $792b: $87
	or   d                                           ; $792c: $b2
	inc  b                                           ; $792d: $04
	jr   z, jr_079_799a                              ; $792e: $28 $6a

	ld   l, b                                        ; $7930: $68
	ld   l, d                                        ; $7931: $6a
	ld   a, [hl+]                                    ; $7932: $2a
	adc  c                                           ; $7933: $89
	ld   l, d                                        ; $7934: $6a
	ld   [bc], a                                     ; $7935: $02
	inc  bc                                          ; $7936: $03
	inc  sp                                          ; $7937: $33
	inc  de                                          ; $7938: $13
	add  e                                           ; $7939: $83
	inc  sp                                          ; $793a: $33
	add  b                                           ; $793b: $80
	ld   sp, $2100                                   ; $793c: $31 $00 $21
	add  e                                           ; $793f: $83
	ld   sp, $4000                                   ; $7940: $31 $00 $40
	add  e                                           ; $7943: $83
	ld   c, c                                        ; $7944: $49
	nop                                              ; $7945: $00
	ld   b, c                                        ; $7946: $41
	add  l                                           ; $7947: $85
	ld   c, c                                        ; $7948: $49
	ld   [bc], a                                     ; $7949: $02
	ld   c, b                                        ; $794a: $48
	ld   c, c                                        ; $794b: $49
	jr   nc, jr_079_78cf                             ; $794c: $30 $81

	ret  nz                                          ; $794e: $c0

	inc  b                                           ; $794f: $04
	ret  z                                           ; $7950: $c8

	ret  nz                                          ; $7951: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7952: $cf
	ret  nz                                          ; $7953: $c0

	rst  ToBoot                                         ; $7954: $c7
	add  c                                           ; $7955: $81
	ret  nz                                          ; $7956: $c0

	nop                                              ; $7957: $00
	ret  z                                           ; $7958: $c8

	add  c                                           ; $7959: $81
	call nz, $0301                                   ; $795a: $c4 $01 $03
	db   $fc                                         ; $795d: $fc
	add  b                                           ; $795e: $80
	cp   $03                                         ; $795f: $fe $03
	ld   a, [$e4fe]                                  ; $7961: $fa $fe $e4
	inc  e                                           ; $7964: $1c
	add  d                                           ; $7965: $82
	db   $fc                                         ; $7966: $fc
	add  d                                           ; $7967: $82
	ld   hl, sp+$00                                  ; $7968: $f8 $00
	cp   $85                                         ; $796a: $fe $85
	rst  $38                                         ; $796c: $ff
	nop                                              ; $796d: $00
	db   $fd                                         ; $796e: $fd
	add  b                                           ; $796f: $80
	rst  $38                                         ; $7970: $ff

jr_079_7971:
	nop                                              ; $7971: $00
	db   $fc                                         ; $7972: $fc
	add  b                                           ; $7973: $80
	ldh  a, [rSC]                                    ; $7974: $f0 $02
	add  b                                           ; $7976: $80
	add  c                                           ; $7977: $81
	ld   [bc], a                                     ; $7978: $02
	add  e                                           ; $7979: $83
	ld   a, a                                        ; $797a: $7f
	nop                                              ; $797b: $00
	ld   a, e                                        ; $797c: $7b
	add  h                                           ; $797d: $84
	ld   a, a                                        ; $797e: $7f
	ld   [bc], a                                     ; $797f: $02
	rrca                                             ; $7980: $0f
	dec  bc                                          ; $7981: $0b
	di                                               ; $7982: $f3
	adc  [hl]                                        ; $7983: $8e
	rrca                                             ; $7984: $0f
	nop                                              ; $7985: $00
	ld   [$fe8d], sp                                 ; $7986: $08 $8d $fe
	dec  d                                           ; $7989: $15
	ld   sp, hl                                      ; $798a: $f9
	ld   a, e                                        ; $798b: $7b
	dec  b                                           ; $798c: $05
	ld   a, [hl]                                     ; $798d: $7e
	jr   nc, @+$51                                   ; $798e: $30 $4f

	ld   [hl], a                                     ; $7990: $77
	sbc  b                                           ; $7991: $98
	jr   c, jr_079_79e0                              ; $7992: $38 $4c

	and  a                                           ; $7994: $a7
	jr   z, jr_079_79c0                              ; $7995: $28 $29

	ld   a, c                                        ; $7997: $79
	push bc                                          ; $7998: $c5
	inc  de                                          ; $7999: $13

jr_079_799a:
	xor  h                                           ; $799a: $ac
	cp   c                                           ; $799b: $b9
	rst  ToBoot                                         ; $799c: $c7
	ld   hl, $fd1f                                   ; $799d: $21 $1f $fd
	add  b                                           ; $79a0: $80
	push hl                                          ; $79a1: $e5
	ld   [$65fd], sp                                 ; $79a2: $08 $fd $65
	ld   [hl], a                                     ; $79a5: $77
	dec  b                                           ; $79a6: $05
	rla                                              ; $79a7: $17
	sbc  l                                           ; $79a8: $9d
	ld   a, l                                        ; $79a9: $7d
	sbc  a                                           ; $79aa: $9f
	ld   a, c                                        ; $79ab: $79
	adc  l                                           ; $79ac: $8d
	rst  $38                                         ; $79ad: $ff
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	add  c                                           ; $79b0: $81
	ld   a, a                                        ; $79b1: $7f
	nop                                              ; $79b2: $00
	ld   [hl], a                                     ; $79b3: $77
	add  e                                           ; $79b4: $83
	ld   a, a                                        ; $79b5: $7f
	nop                                              ; $79b6: $00
	ld   l, a                                        ; $79b7: $6f
	add  c                                           ; $79b8: $81
	ld   a, a                                        ; $79b9: $7f
	ld   [bc], a                                     ; $79ba: $02
	ld   e, a                                        ; $79bb: $5f
	ld   a, a                                        ; $79bc: $7f
	cp   d                                           ; $79bd: $ba
	add  l                                           ; $79be: $85
	db   $fd                                         ; $79bf: $fd

jr_079_79c0:
	add  b                                           ; $79c0: $80
	db   $fc                                         ; $79c1: $fc
	add  c                                           ; $79c2: $81
	rst  $38                                         ; $79c3: $ff
	nop                                              ; $79c4: $00
	ld   hl, sp-$80                                  ; $79c5: $f8 $80
	rst  $38                                         ; $79c7: $ff
	nop                                              ; $79c8: $00
	daa                                              ; $79c9: $27
	add  l                                           ; $79ca: $85
	rst  $10                                         ; $79cb: $d7
	add  b                                           ; $79cc: $80
	rla                                              ; $79cd: $17

jr_079_79ce:
	add  c                                           ; $79ce: $81
	rst  $30                                         ; $79cf: $f7
	nop                                              ; $79d0: $00
	rlca                                             ; $79d1: $07
	add  b                                           ; $79d2: $80
	rst  $38                                         ; $79d3: $ff
	nop                                              ; $79d4: $00
	ld   c, l                                        ; $79d5: $4d
	adc  l                                           ; $79d6: $8d
	or   d                                           ; $79d7: $b2
	add  d                                           ; $79d8: $82
	ld   l, d                                        ; $79d9: $6a
	adc  d                                           ; $79da: $8a
	ld   h, e                                        ; $79db: $63
	add  [hl]                                        ; $79dc: $86
	ld   sp, $3986                                   ; $79dd: $31 $86 $39

jr_079_79e0:
	adc  b                                           ; $79e0: $88
	ld   c, c                                        ; $79e1: $49
	add  d                                           ; $79e2: $82
	ld   b, c                                        ; $79e3: $41
	add  b                                           ; $79e4: $80
	ld   c, c                                        ; $79e5: $49
	nop                                              ; $79e6: $00
	jr   c, jr_079_7971                              ; $79e7: $38 $88

	call nz, $c082                                   ; $79e9: $c4 $82 $c0
	ld   [bc], a                                     ; $79ec: $02
	call nz, $f8fb                                   ; $79ed: $c4 $fb $f8
	add  h                                           ; $79f0: $84
	ldh  a, [$84]                                    ; $79f1: $f0 $84
	ldh  [$80], a                                    ; $79f3: $e0 $80
	ret  nz                                          ; $79f5: $c0

	nop                                              ; $79f6: $00

jr_079_79f7:
	db   $fc                                         ; $79f7: $fc
	add  b                                           ; $79f8: $80
	cp   $01                                         ; $79f9: $fe $01
	rst  $38                                         ; $79fb: $ff

jr_079_79fc:
	ei                                               ; $79fc: $fb

jr_079_79fd:
	add  c                                           ; $79fd: $81

jr_079_79fe:
	rst  $38                                         ; $79fe: $ff
	ld   a, [bc]                                     ; $79ff: $0a
	add  a                                           ; $7a00: $87
	add  b                                           ; $7a01: $80
	nop                                              ; $7a02: $00
	jr   c, jr_079_79fd                              ; $7a03: $38 $f8

	sbc  $be                                         ; $7a05: $de $be
	adc  a                                           ; $7a07: $8f
	ld   l, $3d                                      ; $7a08: $2e $3d
	inc  a                                           ; $7a0a: $3c
	add  b                                           ; $7a0b: $80
	rra                                              ; $7a0c: $1f
	add  b                                           ; $7a0d: $80
	ld   l, [hl]                                     ; $7a0e: $6e
	ld   bc, $7e76                                   ; $7a0f: $01 $76 $7e
	add  b                                           ; $7a12: $80
	ld   a, e                                        ; $7a13: $7b
	ld   bc, $3f3b                                   ; $7a14: $01 $3b $3f
	add  b                                           ; $7a17: $80
	dec  a                                           ; $7a18: $3d
	ld   bc, $6f9c                                   ; $7a19: $01 $9c $6f
	adc  l                                           ; $7a1c: $8d
	rrca                                             ; $7a1d: $0f
	nop                                              ; $7a1e: $00
	ld   [$fe8d], sp                                 ; $7a1f: $08 $8d $fe
	jr   nz, jr_079_79f7                             ; $7a22: $20 $d3

	db   $fd                                         ; $7a24: $fd
	jr   z, jr_079_7a28                              ; $7a25: $28 $01

	ld   h, [hl]                                     ; $7a27: $66

jr_079_7a28:
	rst  JumpTable                                         ; $7a28: $df
	ld   d, a                                        ; $7a29: $57
	ld   d, l                                        ; $7a2a: $55
	ld   e, l                                        ; $7a2b: $5d
	ld   [hl], d                                     ; $7a2c: $72
	ld   l, d                                        ; $7a2d: $6a
	ld   d, l                                        ; $7a2e: $55
	xor  [hl]                                        ; $7a2f: $ae
	inc  d                                           ; $7a30: $14
	xor  e                                           ; $7a31: $ab
	ld   d, [hl]                                     ; $7a32: $56
	dec  hl                                          ; $7a33: $2b
	rst  $20                                         ; $7a34: $e7
	ld   l, e                                        ; $7a35: $6b
	ld   c, c                                        ; $7a36: $49
	di                                               ; $7a37: $f3
	ld   a, a                                        ; $7a38: $7f
	ld   sp, $2565                                   ; $7a39: $31 $65 $25
	db   $ed                                         ; $7a3c: $ed
	jp   hl                                          ; $7a3d: $e9


	ld   e, a                                        ; $7a3e: $5f
	sbc  e                                           ; $7a3f: $9b
	scf                                              ; $7a40: $37
	or   a                                           ; $7a41: $b7
	dec  b                                           ; $7a42: $05
	ld   b, e                                        ; $7a43: $43
	adc  l                                           ; $7a44: $8d
	rst  $38                                         ; $7a45: $ff
	nop                                              ; $7a46: $00
	jr   c, jr_079_79ce                              ; $7a47: $38 $85

	ld   a, a                                        ; $7a49: $7f
	nop                                              ; $7a4a: $00
	ccf                                              ; $7a4b: $3f
	add  c                                           ; $7a4c: $81
	ld   a, a                                        ; $7a4d: $7f
	inc  b                                           ; $7a4e: $04
	ld   l, l                                        ; $7a4f: $6d
	ld   h, b                                        ; $7a50: $60
	jr   c, jr_079_7a53                              ; $7a51: $38 $00

jr_079_7a53:
	jp   z, $ff81                                    ; $7a53: $ca $81 $ff

	ld   bc, $dec0                                   ; $7a56: $01 $c0 $de
	add  h                                           ; $7a59: $84
	jp   nc, $9204                                   ; $7a5a: $d2 $04 $92

	ld   [de], a                                     ; $7a5d: $12
	ld   l, $0e                                      ; $7a5e: $2e $0e
	ld   b, c                                        ; $7a60: $41
	add  e                                           ; $7a61: $83
	rst  $38                                         ; $7a62: $ff
	ld   bc, $ddc1                                   ; $7a63: $01 $c1 $dd
	add  [hl]                                        ; $7a66: $86
	pop  de                                          ; $7a67: $d1
	ld   bc, $a241                                   ; $7a68: $01 $41 $a2
	add  b                                           ; $7a6b: $80
	sub  d                                           ; $7a6c: $92
	adc  d                                           ; $7a6d: $8a
	sub  e                                           ; $7a6e: $93
	add  h                                           ; $7a6f: $84
	ld   h, e                                        ; $7a70: $63
	add  b                                           ; $7a71: $80
	ld   h, c                                        ; $7a72: $61
	add  [hl]                                        ; $7a73: $86
	ld   sp, $3982                                   ; $7a74: $31 $82 $39
	add  b                                           ; $7a77: $80
	jr   c, jr_079_79fe                              ; $7a78: $38 $84

	jr   jr_079_79fc                                 ; $7a7a: $18 $80

	ld   a, [de]                                     ; $7a7c: $1a
	add  b                                           ; $7a7d: $80
	adc  d                                           ; $7a7e: $8a
	adc  [hl]                                        ; $7a7f: $8e
	ld   c, c                                        ; $7a80: $49
	nop                                              ; $7a81: $00
	jr   c, @-$7e                                    ; $7a82: $38 $80

	call nz, $c084                                   ; $7a84: $c4 $84 $c0
	nop                                              ; $7a87: $00
	call nz, $c080                                   ; $7a88: $c4 $80 $c0
	ld   [bc], a                                     ; $7a8b: $02
	jp   nz, $c1c0                                   ; $7a8c: $c2 $c0 $c1

	add  e                                           ; $7a8f: $83
	ret  nz                                          ; $7a90: $c0

	add  d                                           ; $7a91: $82
	add  b                                           ; $7a92: $80
	add  [hl]                                        ; $7a93: $86
	nop                                              ; $7a94: $00
	inc  b                                           ; $7a95: $04
	ld   [hl], b                                     ; $7a96: $70
	nop                                              ; $7a97: $00
	ld   [$8000], sp                                 ; $7a98: $08 $00 $80
	add  c                                           ; $7a9b: $81
	nop                                              ; $7a9c: $00
	ld   [$00c8], sp                                 ; $7a9d: $08 $c8 $00
	ldh  a, [$c0]                                    ; $7aa0: $f0 $c0
	ldh  a, [$f1]                                    ; $7aa2: $f0 $f1
	pop  hl                                          ; $7aa4: $e1
	ldh  [$0c], a                                    ; $7aa5: $e0 $0c
	add  b                                           ; $7aa7: $80
	call c, Call_079_6c03                            ; $7aa8: $dc $03 $6c
	ld   h, h                                        ; $7aab: $64
	inc  h                                           ; $7aac: $24
	ld   h, $81                                      ; $7aad: $26 $81
	ld   b, $02                                      ; $7aaf: $06 $02
	ld   [bc], a                                     ; $7ab1: $02
	ld   h, d                                        ; $7ab2: $62
	ld   [hl], d                                     ; $7ab3: $72
	add  c                                           ; $7ab4: $81
	ldh  a, [c]                                      ; $7ab5: $f2
	nop                                              ; $7ab6: $00
	rra                                              ; $7ab7: $1f
	adc  l                                           ; $7ab8: $8d
	rrca                                             ; $7ab9: $0f
	nop                                              ; $7aba: $00
	ld   [$fe8d], sp                                 ; $7abb: $08 $8d $fe
	ld   [$30b5], sp                                 ; $7abe: $08 $b5 $30
	inc  a                                           ; $7ac1: $3c
	ld   e, $cd                                      ; $7ac2: $1e $cd
	db   $fc                                         ; $7ac4: $fc
	adc  a                                           ; $7ac5: $8f
	jr   @-$06                                       ; $7ac6: $18 $f8

	add  b                                           ; $7ac8: $80
	dec  de                                          ; $7ac9: $1b
	ld   [de], a                                     ; $7aca: $12
	ld   e, a                                        ; $7acb: $5f
	sbc  [hl]                                        ; $7acc: $9e
	ld   a, [hl]                                     ; $7acd: $7e
	and  b                                           ; $7ace: $a0
	ldh  [$fe], a                                    ; $7acf: $e0 $fe
	ld   b, c                                        ; $7ad1: $41
	ld   e, l                                        ; $7ad2: $5d
	inc  hl                                          ; $7ad3: $23
	cp   a                                           ; $7ad4: $bf
	db   $d3                                         ; $7ad5: $d3
	dec  bc                                          ; $7ad6: $0b
	rra                                              ; $7ad7: $1f
	rlca                                             ; $7ad8: $07
	db   $fd                                         ; $7ad9: $fd
	inc  hl                                          ; $7ada: $23
	add  b                                           ; $7adb: $80
	ldh  [rP1], a                                    ; $7adc: $e0 $00
	add  b                                           ; $7ade: $80
	rlca                                             ; $7adf: $07
	inc  d                                           ; $7ae0: $14
	ld   hl, sp-$02                                  ; $7ae1: $f8 $fe
	rst  $38                                         ; $7ae3: $ff
	db   $fc                                         ; $7ae4: $fc
	db   $fd                                         ; $7ae5: $fd
	db   $fc                                         ; $7ae6: $fc
	rst  $38                                         ; $7ae7: $ff
	ld   hl, sp-$05                                  ; $7ae8: $f8 $fb
	ld   hl, sp-$05                                  ; $7aea: $f8 $fb
	ld   hl, sp-$06                                  ; $7aec: $f8 $fa
	ld   hl, sp-$07                                  ; $7aee: $f8 $f9
	ld   hl, sp+$08                                  ; $7af0: $f8 $08
	ret  c                                           ; $7af2: $d8

	xor  $7f                                         ; $7af3: $ee $7f
	ld   a, l                                        ; $7af5: $7d
	add  b                                           ; $7af6: $80
	cp   a                                           ; $7af7: $bf
	add  b                                           ; $7af8: $80
	ccf                                              ; $7af9: $3f
	ld   bc, $9dbf                                   ; $7afa: $01 $bf $9d
	add  b                                           ; $7afd: $80
	rra                                              ; $7afe: $1f
	add  hl, bc                                      ; $7aff: $09
	sbc  a                                           ; $7b00: $9f
	adc  [hl]                                        ; $7b01: $8e
	ld   c, a                                        ; $7b02: $4f
	ld   b, b                                        ; $7b03: $40
	ld   h, b                                        ; $7b04: $60
	nop                                              ; $7b05: $00
	ld   sp, hl                                      ; $7b06: $f9
	adc  c                                           ; $7b07: $89
	push af                                          ; $7b08: $f5
	db   $ed                                         ; $7b09: $ed
	add  b                                           ; $7b0a: $80
	db   $fc                                         ; $7b0b: $fc
	add  c                                           ; $7b0c: $81
	ld   a, [$f204]                                  ; $7b0d: $fa $04 $f2
	pop  af                                          ; $7b10: $f1
	halt                                             ; $7b11: $76
	ldh  [$a6], a                                    ; $7b12: $e0 $a6
	add  b                                           ; $7b14: $80
	db   $dd                                         ; $7b15: $dd
	nop                                              ; $7b16: $00
	pop  bc                                          ; $7b17: $c1
	add  d                                           ; $7b18: $82
	rst  $38                                         ; $7b19: $ff
	add  b                                           ; $7b1a: $80
	nop                                              ; $7b1b: $00
	ld   a, [bc]                                     ; $7b1c: $0a
	ld   a, a                                        ; $7b1d: $7f
	nop                                              ; $7b1e: $00
	ld   b, b                                        ; $7b1f: $40
	nop                                              ; $7b20: $00
	rst  $38                                         ; $7b21: $ff
	nop                                              ; $7b22: $00
	and  [hl]                                        ; $7b23: $a6
	sbc  c                                           ; $7b24: $99
	sbc  b                                           ; $7b25: $98
	sbc  c                                           ; $7b26: $99
	adc  c                                           ; $7b27: $89
	add  [hl]                                        ; $7b28: $86
	sbc  c                                           ; $7b29: $99
	nop                                              ; $7b2a: $00
	sbc  b                                           ; $7b2b: $98
	add  b                                           ; $7b2c: $80
	sbc  h                                           ; $7b2d: $9c
	ld   bc, $b1a1                                   ; $7b2e: $01 $a1 $b1
	add  b                                           ; $7b31: $80
	sub  c                                           ; $7b32: $91
	add  d                                           ; $7b33: $82
	sub  b                                           ; $7b34: $90
	ld   bc, $9010                                   ; $7b35: $01 $10 $90
	add  d                                           ; $7b38: $82
	ret  c                                           ; $7b39: $d8

	add  b                                           ; $7b3a: $80
	ret  z                                           ; $7b3b: $c8

	nop                                              ; $7b3c: $00
	ld   a, [bc]                                     ; $7b3d: $0a
	add  a                                           ; $7b3e: $87
	adc  d                                           ; $7b3f: $8a
	add  b                                           ; $7b40: $80
	add  d                                           ; $7b41: $82
	add  d                                           ; $7b42: $82
	add  [hl]                                        ; $7b43: $86
	add  d                                           ; $7b44: $82
	ld   c, c                                        ; $7b45: $49
	add  d                                           ; $7b46: $82
	ld   b, c                                        ; $7b47: $41
	add  h                                           ; $7b48: $84
	ld   b, l                                        ; $7b49: $45
	inc  bc                                          ; $7b4a: $03
	ld   bc, $5f41                                   ; $7b4b: $01 $41 $5f
	ldh  [$80], a                                    ; $7b4e: $e0 $80
	ldh  a, [$82]                                    ; $7b50: $f0 $82
	rst  $38                                         ; $7b52: $ff
	add  b                                           ; $7b53: $80
	nop                                              ; $7b54: $00
	ld   [de], a                                     ; $7b55: $12
	rst  $10                                         ; $7b56: $d7
	nop                                              ; $7b57: $00
	ld   b, $00                                      ; $7b58: $06 $00
	pop  de                                          ; $7b5a: $d1
	nop                                              ; $7b5b: $00
	ld   b, $01                                      ; $7b5c: $06 $01
	add  hl, bc                                      ; $7b5e: $09
	ld   bc, $c2c3                                   ; $7b5f: $01 $c3 $c2
	push de                                          ; $7b62: $d5
	ret  nz                                          ; $7b63: $c0

	ld   [$0400], sp                                 ; $7b64: $08 $00 $04
	ret  nz                                          ; $7b67: $c0

	ret  nc                                          ; $7b68: $d0

	add  b                                           ; $7b69: $80
	ldh  [rTMA], a                                   ; $7b6a: $e0 $06
	ldh  a, [$ed]                                    ; $7b6c: $f0 $ed
	ld   b, $2e                                      ; $7b6e: $06 $2e
	ld   c, $1e                                      ; $7b70: $0e $1e
	sbc  [hl]                                        ; $7b72: $9e
	add  d                                           ; $7b73: $82
	ld   e, $06                                      ; $7b74: $1e $06
	ld   [$ee4c], sp                                 ; $7b76: $08 $4c $ee
	adc  [hl]                                        ; $7b79: $8e
	sbc  b                                           ; $7b7a: $98
	jr   nz, @+$3a                                   ; $7b7b: $20 $38

	add  b                                           ; $7b7d: $80
	ld   hl, sp-$80                                  ; $7b7e: $f8 $80
	ld   a, [$f981]                                  ; $7b80: $fa $81 $f9
	nop                                              ; $7b83: $00
	db   $fd                                         ; $7b84: $fd
	add  b                                           ; $7b85: $80
	cp   h                                           ; $7b86: $bc
	dec  b                                           ; $7b87: $05
	inc  e                                           ; $7b88: $1c
	nop                                              ; $7b89: $00
	ld   h, b                                        ; $7b8a: $60
	ldh  [$b8], a                                    ; $7b8b: $e0 $b8
	rst  ToBoot                                         ; $7b8d: $c7
	adc  l                                           ; $7b8e: $8d
	rrca                                             ; $7b8f: $0f
	nop                                              ; $7b90: $00
	ld   [$fe83], sp                                 ; $7b91: $08 $83 $fe
	nop                                              ; $7b94: $00
	ld   sp, hl                                      ; $7b95: $f9
	add  a                                           ; $7b96: $87
	rst  $38                                         ; $7b97: $ff
	add  b                                           ; $7b98: $80
	nop                                              ; $7b99: $00
	add  b                                           ; $7b9a: $80
	inc  bc                                          ; $7b9b: $03
	add  b                                           ; $7b9c: $80
	ccf                                              ; $7b9d: $3f
	add  h                                           ; $7b9e: $84
	rst  $38                                         ; $7b9f: $ff
	add  b                                           ; $7ba0: $80
	ld   hl, sp-$80                                  ; $7ba1: $f8 $80
	ret  nz                                          ; $7ba3: $c0

	add  b                                           ; $7ba4: $80
	ccf                                              ; $7ba5: $3f
	add  d                                           ; $7ba6: $82
	rst  $38                                         ; $7ba7: $ff
	add  b                                           ; $7ba8: $80
	db   $fc                                         ; $7ba9: $fc
	add  b                                           ; $7baa: $80
	ldh  [rTAC], a                                   ; $7bab: $e0 $07
	rlca                                             ; $7bad: $07
	nop                                              ; $7bae: $00
	ccf                                              ; $7baf: $3f
	nop                                              ; $7bb0: $00
	ld   a, b                                        ; $7bb1: $78
	nop                                              ; $7bb2: $00
	cp   b                                           ; $7bb3: $b8
	ld   hl, sp-$80                                  ; $7bb4: $f8 $80
	ldh  a, [rAUD1LOW]                               ; $7bb6: $f0 $13
	add  h                                           ; $7bb8: $84
	add  b                                           ; $7bb9: $80
	inc  d                                           ; $7bba: $14
	nop                                              ; $7bbb: $00
	ret  nc                                          ; $7bbc: $d0

	nop                                              ; $7bbd: $00
	ret  nz                                          ; $7bbe: $c0

	nop                                              ; $7bbf: $00
	inc  e                                           ; $7bc0: $1c
	nop                                              ; $7bc1: $00
	db   $e3                                         ; $7bc2: $e3
	nop                                              ; $7bc3: $00
	ld   hl, sp-$29                                  ; $7bc4: $f8 $d7
	pop  de                                          ; $7bc6: $d1
	ld   sp, $0c30                                   ; $7bc7: $31 $30 $0c
	ld   l, h                                        ; $7bca: $6c
	ld   h, e                                        ; $7bcb: $63
	add  b                                           ; $7bcc: $80
	ld   a, e                                        ; $7bcd: $7b
	ld   b, $7f                                      ; $7bce: $06 $7f
	ld   a, h                                        ; $7bd0: $7c
	ld   [hl], e                                     ; $7bd1: $73
	ld   a, a                                        ; $7bd2: $7f
	add  sp, $1f                                     ; $7bd3: $e8 $1f
	inc  b                                           ; $7bd5: $04
	add  b                                           ; $7bd6: $80
	ldh  [rSC], a                                    ; $7bd7: $e0 $02
	ret  nz                                          ; $7bd9: $c0

	nop                                              ; $7bda: $00
	ld   b, b                                        ; $7bdb: $40
	add  b                                           ; $7bdc: $80
	ld   [hl], b                                     ; $7bdd: $70
	inc  c                                           ; $7bde: $0c
	ld   a, b                                        ; $7bdf: $78
	jr   c, @+$40                                    ; $7be0: $38 $3e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7be2: $cf
	add  c                                           ; $7be3: $81
	ld   c, a                                        ; $7be4: $4f
	sbc  a                                           ; $7be5: $9f
	or   b                                           ; $7be6: $b0
	db   $ed                                         ; $7be7: $ed
	ld   [hl-], a                                    ; $7be8: $32
	jr   nc, jr_079_7bf7                             ; $7be9: $30 $0c

	inc  b                                           ; $7beb: $04
	add  c                                           ; $7bec: $81
	ld   a, [bc]                                     ; $7bed: $0a
	inc  b                                           ; $7bee: $04
	ld   a, [de]                                     ; $7bef: $1a
	ld   c, c                                        ; $7bf0: $49
	ld   l, c                                        ; $7bf1: $69
	ret  nz                                          ; $7bf2: $c0

	call nz, $0580                                   ; $7bf3: $c4 $80 $05
	inc  bc                                          ; $7bf6: $03

jr_079_7bf7:
	inc  c                                           ; $7bf7: $0c
	add  e                                           ; $7bf8: $83
	sbc  h                                           ; $7bf9: $9c
	sub  h                                           ; $7bfa: $94
	add  b                                           ; $7bfb: $80
	adc  h                                           ; $7bfc: $8c
	nop                                              ; $7bfd: $00
	inc  c                                           ; $7bfe: $0c
	add  b                                           ; $7bff: $80
	ld   c, h                                        ; $7c00: $4c
	nop                                              ; $7c01: $00
	ld   c, d                                        ; $7c02: $4a
	add  d                                           ; $7c03: $82
	ld   c, [hl]                                     ; $7c04: $4e
	ld   b, $46                                      ; $7c05: $06 $46
	ld   b, l                                        ; $7c07: $45
	ld   b, a                                        ; $7c08: $47
	jp   z, $accc                                    ; $7c09: $ca $cc $ac

	db   $ec                                         ; $7c0c: $ec
	add  c                                           ; $7c0d: $81
	db   $e4                                         ; $7c0e: $e4
	add  c                                           ; $7c0f: $81
	ld   h, h                                        ; $7c10: $64
	add  b                                           ; $7c11: $80
	ld   [hl], b                                     ; $7c12: $70
	inc  b                                           ; $7c13: $04
	ld   b, d                                        ; $7c14: $42
	ld   a, d                                        ; $7c15: $7a
	adc  d                                           ; $7c16: $8a
	rst  $38                                         ; $7c17: $ff
	res  0, e                                        ; $7c18: $cb $83
	add  $01                                         ; $7c1a: $c6 $01
	ld   b, [hl]                                     ; $7c1c: $46
	add  $80                                         ; $7c1d: $c6 $80
	and  $80                                         ; $7c1f: $e6 $80
	ldh  [c], a                                      ; $7c21: $e2
	add  b                                           ; $7c22: $80
	db   $e3                                         ; $7c23: $e3
	add  b                                           ; $7c24: $80
	pop  hl                                          ; $7c25: $e1
	nop                                              ; $7c26: $00
	add  b                                           ; $7c27: $80
	add  [hl]                                        ; $7c28: $86
	ld   b, b                                        ; $7c29: $40
	add  b                                           ; $7c2a: $80
	ret  nz                                          ; $7c2b: $c0

	add  e                                           ; $7c2c: $83
	jp   nz, $2d00                                   ; $7c2d: $c2 $00 $2d

	add  b                                           ; $7c30: $80
	inc  d                                           ; $7c31: $14
	nop                                              ; $7c32: $00
	db   $10                                         ; $7c33: $10
	add  b                                           ; $7c34: $80
	ld   [de], a                                     ; $7c35: $12
	add  b                                           ; $7c36: $80
	sub  c                                           ; $7c37: $91
	ld   bc, $1292                                   ; $7c38: $01 $92 $12
	add  b                                           ; $7c3b: $80
	db   $10                                         ; $7c3c: $10
	add  b                                           ; $7c3d: $80
	inc  d                                           ; $7c3e: $14
	add  b                                           ; $7c3f: $80
	ld   [de], a                                     ; $7c40: $12
	nop                                              ; $7c41: $00
	add  b                                           ; $7c42: $80
	add  b                                           ; $7c43: $80
	ld   a, b                                        ; $7c44: $78
	add  b                                           ; $7c45: $80
	rra                                              ; $7c46: $1f
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	add  b                                           ; $7c49: $80
	add  b                                           ; $7c4a: $80
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	add  b                                           ; $7c4d: $80
	db   $10                                         ; $7c4e: $10
	add  b                                           ; $7c4f: $80
	sub  b                                           ; $7c50: $90
	add  c                                           ; $7c51: $81
	db   $10                                         ; $7c52: $10
	inc  b                                           ; $7c53: $04
	cpl                                              ; $7c54: $2f
	nop                                              ; $7c55: $00
	ret  nz                                          ; $7c56: $c0

	nop                                              ; $7c57: $00
	rst  $38                                         ; $7c58: $ff
	add  [hl]                                        ; $7c59: $86
	nop                                              ; $7c5a: $00
	add  b                                           ; $7c5b: $80
	ld   c, $01                                      ; $7c5c: $0e $01
	rra                                              ; $7c5e: $1f
	ld   e, $81                                      ; $7c5f: $1e $81
	dec  e                                           ; $7c61: $1d
	nop                                              ; $7c62: $00
	inc  e                                           ; $7c63: $1c
	add  b                                           ; $7c64: $80
	ld   c, $80                                      ; $7c65: $0e $80
	ld   b, $80                                      ; $7c67: $06 $80
	ld   [bc], a                                     ; $7c69: $02
	add  b                                           ; $7c6a: $80
	nop                                              ; $7c6b: $00
	add  b                                           ; $7c6c: $80
	jr   c, jr_079_7c70                              ; $7c6d: $38 $01

	ld   l, h                                        ; $7c6f: $6c

jr_079_7c70:
	sub  e                                           ; $7c70: $93
	add  e                                           ; $7c71: $83
	rrca                                             ; $7c72: $0f
	add  b                                           ; $7c73: $80
	inc  c                                           ; $7c74: $0c
	add  [hl]                                        ; $7c75: $86
	nop                                              ; $7c76: $00
	ld   bc, $fe0e                                   ; $7c77: $01 $0e $fe
	add  b                                           ; $7c7a: $80
	ldh  a, [$80]                                    ; $7c7b: $f0 $80
	add  b                                           ; $7c7d: $80
	jr   jr_079_7c83                                 ; $7c7e: $18 $03

	nop                                              ; $7c80: $00
	dec  e                                           ; $7c81: $1d
	nop                                              ; $7c82: $00

jr_079_7c83:
	ld   l, [hl]                                     ; $7c83: $6e
	nop                                              ; $7c84: $00
	ld   [hl], e                                     ; $7c85: $73
	nop                                              ; $7c86: $00
	dec  e                                           ; $7c87: $1d
	nop                                              ; $7c88: $00
	dec  e                                           ; $7c89: $1d
	nop                                              ; $7c8a: $00
	rrca                                             ; $7c8b: $0f
	nop                                              ; $7c8c: $00
	ld   a, h                                        ; $7c8d: $7c
	nop                                              ; $7c8e: $00
	ld   [hl], c                                     ; $7c8f: $71
	nop                                              ; $7c90: $00
	rrca                                             ; $7c91: $0f
	nop                                              ; $7c92: $00
	ld   a, [hl]                                     ; $7c93: $7e
	nop                                              ; $7c94: $00
	or   b                                           ; $7c95: $b0
	nop                                              ; $7c96: $00
	pop  bc                                          ; $7c97: $c1
	add  b                                           ; $7c98: $80
	nop                                              ; $7c99: $00
	dec  b                                           ; $7c9a: $05
	ld   [bc], a                                     ; $7c9b: $02
	nop                                              ; $7c9c: $00
	inc  c                                           ; $7c9d: $0c
	ld   c, $7e                                      ; $7c9e: $0e $7e
	ld   a, a                                        ; $7ca0: $7f
	add  b                                           ; $7ca1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ca2: $cf
	rlca                                             ; $7ca3: $07
	rlca                                             ; $7ca4: $07
	rla                                              ; $7ca5: $17
	add  hl, sp                                      ; $7ca6: $39
	inc  b                                           ; $7ca7: $04
	rst  $38                                         ; $7ca8: $ff
	xor  c                                           ; $7ca9: $a9
	rst  $38                                         ; $7caa: $ff
	ld   a, e                                        ; $7cab: $7b
	add  e                                           ; $7cac: $83
	nop                                              ; $7cad: $00
	add  b                                           ; $7cae: $80
	ldh  [$80], a                                    ; $7caf: $e0 $80
	cp   $80                                         ; $7cb1: $fe $80
	rst  $38                                         ; $7cb3: $ff
	ld   [$f808], sp                                 ; $7cb4: $08 $08 $f8
	stop                                             ; $7cb7: $10 $00
	ldh  [rTAC], a                                   ; $7cb9: $e0 $07
	dec  b                                           ; $7cbb: $05
	inc  bc                                          ; $7cbc: $03
	ld   [bc], a                                     ; $7cbd: $02
	add  c                                           ; $7cbe: $81
	ld   bc, $fd02                                   ; $7cbf: $01 $02 $fd
	ld   sp, hl                                      ; $7cc2: $f9
	ld   b, $83                                      ; $7cc3: $06 $83
	nop                                              ; $7cc5: $00
	inc  e                                           ; $7cc6: $1c
	ld   h, b                                        ; $7cc7: $60
	or   b                                           ; $7cc8: $b0
	xor  a                                           ; $7cc9: $af
	add  b                                           ; $7cca: $80
	ld   [hl], $ff                                   ; $7ccb: $36 $ff

jr_079_7ccd:
	and  l                                           ; $7ccd: $a5
	rst  $38                                         ; $7cce: $ff
	ld   c, d                                        ; $7ccf: $4a
	rst  $38                                         ; $7cd0: $ff
	cp   l                                           ; $7cd1: $bd
	ld   a, a                                        ; $7cd2: $7f
	ld   d, a                                        ; $7cd3: $57
	ld   a, a                                        ; $7cd4: $7f
	ld   a, d                                        ; $7cd5: $7a
	ld   a, a                                        ; $7cd6: $7f
	dec  [hl]                                        ; $7cd7: $35
	ld   a, l                                        ; $7cd8: $7d
	rst  $38                                         ; $7cd9: $ff
	ld   a, a                                        ; $7cda: $7f
	ld   h, c                                        ; $7cdb: $61
	ld   hl, sp+$52                                  ; $7cdc: $f8 $52
	db   $fc                                         ; $7cde: $fc
	xor  [hl]                                        ; $7cdf: $ae
	db   $fc                                         ; $7ce0: $fc
	ld   d, b                                        ; $7ce1: $50
	ld   a, [$80ac]                                  ; $7ce2: $fa $ac $80
	db   $fc                                         ; $7ce5: $fc
	add  hl, hl                                      ; $7ce6: $29
	db   $fd                                         ; $7ce7: $fd
	ret  nc                                          ; $7ce8: $d0

	ld   a, a                                        ; $7ce9: $7f
	db   $eb                                         ; $7cea: $eb
	rst  $38                                         ; $7ceb: $ff
	call c, $c9ff                                    ; $7cec: $dc $ff $c9
	rst  $38                                         ; $7cef: $ff
	or   d                                           ; $7cf0: $b2
	cp   a                                           ; $7cf1: $bf
	cp   l                                           ; $7cf2: $bd
	rst  JumpTable                                         ; $7cf3: $df
	sbc  $e7                                         ; $7cf4: $de $e7
	add  a                                           ; $7cf6: $87
	ld   hl, sp+$29                                  ; $7cf7: $f8 $29
	rst  $38                                         ; $7cf9: $ff
	ld   d, d                                        ; $7cfa: $52
	rst  $38                                         ; $7cfb: $ff
	and  l                                           ; $7cfc: $a5
	rst  $38                                         ; $7cfd: $ff
	ld   a, [bc]                                     ; $7cfe: $0a
	rst  $38                                         ; $7cff: $ff
	push de                                          ; $7d00: $d5
	rst  $38                                         ; $7d01: $ff
	ld   l, d                                        ; $7d02: $6a
	rst  $38                                         ; $7d03: $ff
	cp   h                                           ; $7d04: $bc
	rst  $38                                         ; $7d05: $ff
	ret  z                                           ; $7d06: $c8

	ld   hl, sp-$32                                  ; $7d07: $f8 $ce
	pop  af                                          ; $7d09: $f1
	ld   [hl], c                                     ; $7d0a: $71
	pop  af                                          ; $7d0b: $f1
	adc  b                                           ; $7d0c: $88
	ld   hl, sp+$68                                  ; $7d0d: $f8 $68
	add  sp, -$60                                    ; $7d0f: $e8 $a0
	add  b                                           ; $7d11: $80
	db   $ec                                         ; $7d12: $ec
	rlca                                             ; $7d13: $07
	rst  $38                                         ; $7d14: $ff
	sub  e                                           ; $7d15: $93
	sbc  a                                           ; $7d16: $9f
	inc  e                                           ; $7d17: $1c
	ld   sp, $c2ce                                   ; $7d18: $31 $ce $c2
	ld   b, e                                        ; $7d1b: $43
	add  c                                           ; $7d1c: $81
	jp   wIsDoubleSpeed                                       ; $7d1d: $c3 $02 $c2


	jp   $8043                                       ; $7d20: $c3 $43 $80


	ld   b, c                                        ; $7d23: $41
	add  b                                           ; $7d24: $80
	pop  hl                                          ; $7d25: $e1
	ld   c, $f1                                      ; $7d26: $0e $f1
	ld   de, $30fd                                   ; $7d28: $11 $fd $30
	inc  de                                          ; $7d2b: $13
	ld   bc, $2b03                                   ; $7d2c: $01 $03 $2b
	ld   a, [hl+]                                    ; $7d2f: $2a
	and  d                                           ; $7d30: $a2
	add  c                                           ; $7d31: $81
	pop  de                                          ; $7d32: $d1
	ret  nz                                          ; $7d33: $c0

	ld   [hl], b                                     ; $7d34: $70
	add  b                                           ; $7d35: $80
	add  b                                           ; $7d36: $80
	db   $fc                                         ; $7d37: $fc
	add  b                                           ; $7d38: $80
	cp   $02                                         ; $7d39: $fe $02
	add  b                                           ; $7d3b: $80
	sub  b                                           ; $7d3c: $90
	db   $10                                         ; $7d3d: $10
	add  c                                           ; $7d3e: $81
	ret  nc                                          ; $7d3f: $d0

	nop                                              ; $7d40: $00
	ld   d, b                                        ; $7d41: $50
	add  c                                           ; $7d42: $81
	ret  nc                                          ; $7d43: $d0

	add  c                                           ; $7d44: $81
	ld   d, b                                        ; $7d45: $50
	add  d                                           ; $7d46: $82
	db   $10                                         ; $7d47: $10
	add  b                                           ; $7d48: $80
	add  hl, sp                                      ; $7d49: $39
	add  b                                           ; $7d4a: $80
	jr   nc, jr_079_7ccd                             ; $7d4b: $30 $80

	ld   b, b                                        ; $7d4d: $40
	add  e                                           ; $7d4e: $83
	nop                                              ; $7d4f: $00
	inc  b                                           ; $7d50: $04
	inc  c                                           ; $7d51: $0c
	nop                                              ; $7d52: $00
	inc  bc                                          ; $7d53: $03
	nop                                              ; $7d54: $00
	rrca                                             ; $7d55: $0f
	add  b                                           ; $7d56: $80
	ld   e, h                                        ; $7d57: $5c
	add  b                                           ; $7d58: $80
	ldh  a, [$80]                                    ; $7d59: $f0 $80
	ld   h, l                                        ; $7d5b: $65
	add  b                                           ; $7d5c: $80
	push bc                                          ; $7d5d: $c5
	ld   b, $80                                      ; $7d5e: $06 $80
	sub  b                                           ; $7d60: $90
	add  b                                           ; $7d61: $80
	adc  a                                           ; $7d62: $8f
	nop                                              ; $7d63: $00
	and  c                                           ; $7d64: $a1
	nop                                              ; $7d65: $00
	ret                                              ; $7d66: $c9


	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	add  a                                           ; $7d6a: $87
	rrca                                             ; $7d6b: $0f
	add  b                                           ; $7d6c: $80
	rlca                                             ; $7d6d: $07
	add  e                                           ; $7d6e: $83
	rrca                                             ; $7d6f: $0f
	add  c                                           ; $7d70: $81
	rst  $38                                         ; $7d71: $ff
	add  b                                           ; $7d72: $80
	ld   [$2280], a                                  ; $7d73: $ea $80 $22
	add  hl, bc                                      ; $7d76: $09
	ldh  a, [rIE]                                    ; $7d77: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d79: $cf
	rst  JumpTable                                         ; $7d7a: $df
	sbc  a                                           ; $7d7b: $9f
	rst  $38                                         ; $7d7c: $ff
	ld   a, a                                        ; $7d7d: $7f
	rst  $38                                         ; $7d7e: $ff
	ld   a, b                                        ; $7d7f: $78
	add  a                                           ; $7d80: $87
	add  b                                           ; $7d81: $80
	rrca                                             ; $7d82: $0f
	add  b                                           ; $7d83: $80
	ld   e, $80                                      ; $7d84: $1e $80
	dec  a                                           ; $7d86: $3d
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	add  l                                           ; $7d89: $85
	rst  $38                                         ; $7d8a: $ff
	ld   bc, $9f60                                   ; $7d8b: $01 $60 $9f
	add  b                                           ; $7d8e: $80
	ld   a, a                                        ; $7d8f: $7f
	add  b                                           ; $7d90: $80
	rst  $38                                         ; $7d91: $ff
	add  b                                           ; $7d92: $80
	cp   $00                                         ; $7d93: $fe $00
	nop                                              ; $7d95: $00
	add  l                                           ; $7d96: $85
	rst  $38                                         ; $7d97: $ff
	ld   bc, $de21                                   ; $7d98: $01 $21 $de
	add  b                                           ; $7d9b: $80
	cp   h                                           ; $7d9c: $bc
	add  b                                           ; $7d9d: $80
	ld   a, d                                        ; $7d9e: $7a
	add  b                                           ; $7d9f: $80
	pop  af                                          ; $7da0: $f1
	add  hl, bc                                      ; $7da1: $09
	nop                                              ; $7da2: $00
	rst  $38                                         ; $7da3: $ff
	db   $fd                                         ; $7da4: $fd
	db   $fc                                         ; $7da5: $fc
	ld   sp, hl                                      ; $7da6: $f9
	ld   hl, sp-$10                                  ; $7da7: $f8 $f0
	ldh  [$ce], a                                    ; $7da9: $e0 $ce
	ld   hl, $0580                                   ; $7dab: $21 $80 $05
	add  b                                           ; $7dae: $80
	rst  $38                                         ; $7daf: $ff
	add  b                                           ; $7db0: $80
	ld   a, a                                        ; $7db1: $7f
	ld   [$ff00], sp                                 ; $7db2: $08 $00 $ff
	inc  de                                          ; $7db5: $13
	inc  bc                                          ; $7db6: $03
	rst  $30                                         ; $7db7: $f7
	rlca                                             ; $7db8: $07
	rst  $28                                         ; $7db9: $ef
	rrca                                             ; $7dba: $0f
	nop                                              ; $7dbb: $00
	add  l                                           ; $7dbc: $85
	rst  $38                                         ; $7dbd: $ff
	ld   [$ff00], sp                                 ; $7dbe: $08 $00 $ff
	db   $f4                                         ; $7dc1: $f4
	ldh  a, [$e7]                                    ; $7dc2: $f0 $e7
	ldh  [$c3], a                                    ; $7dc4: $e0 $c3
	ret  nz                                          ; $7dc6: $c0

	nop                                              ; $7dc7: $00
	add  l                                           ; $7dc8: $85
	rst  $38                                         ; $7dc9: $ff
	add  hl, bc                                      ; $7dca: $09
	nop                                              ; $7dcb: $00
	rst  $38                                         ; $7dcc: $ff
	ld   e, a                                        ; $7dcd: $5f
	rra                                              ; $7dce: $1f
	rst  $38                                         ; $7dcf: $ff
	ccf                                              ; $7dd0: $3f
	cp   a                                           ; $7dd1: $bf
	ccf                                              ; $7dd2: $3f
	or   c                                           ; $7dd3: $b1
	ld   c, [hl]                                     ; $7dd4: $4e
	add  b                                           ; $7dd5: $80
	rst  $38                                         ; $7dd6: $ff
	add  b                                           ; $7dd7: $80
	ld   b, b                                        ; $7dd8: $40
	add  b                                           ; $7dd9: $80
	inc  bc                                          ; $7dda: $03
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	add  l                                           ; $7ddd: $85
	rst  $38                                         ; $7dde: $ff
	ld   bc, $c03f                                   ; $7ddf: $01 $3f $c0
	add  b                                           ; $7de2: $80
	add  d                                           ; $7de3: $82
	add  e                                           ; $7de4: $83
	nop                                              ; $7de5: $00
	add  l                                           ; $7de6: $85
	rst  $38                                         ; $7de7: $ff
	ld   bc, $7b84                                   ; $7de8: $01 $84 $7b
	add  b                                           ; $7deb: $80
	inc  de                                          ; $7dec: $13
	add  b                                           ; $7ded: $80
	ld   [de], a                                     ; $7dee: $12
	add  c                                           ; $7def: $81
	nop                                              ; $7df0: $00
	add  l                                           ; $7df1: $85
	rst  $38                                         ; $7df2: $ff
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	add  c                                           ; $7df5: $81
	rst  $38                                         ; $7df6: $ff
	add  b                                           ; $7df7: $80
	cp   a                                           ; $7df8: $bf
	add  b                                           ; $7df9: $80
	daa                                              ; $7dfa: $27
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	add  l                                           ; $7dfd: $85
	rst  $38                                         ; $7dfe: $ff
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	add  e                                           ; $7e01: $83
	rst  $38                                         ; $7e02: $ff
	add  b                                           ; $7e03: $80
	cp   $00                                         ; $7e04: $fe $00
	nop                                              ; $7e06: $00
	add  l                                           ; $7e07: $85
	rst  $38                                         ; $7e08: $ff
	ld   bc, $f807                                   ; $7e09: $01 $07 $f8
	add  b                                           ; $7e0c: $80
	sbc  d                                           ; $7e0d: $9a
	add  b                                           ; $7e0e: $80
	rst  $38                                         ; $7e0f: $ff
	add  b                                           ; $7e10: $80
	ld   [hl+], a                                    ; $7e11: $22
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	add  l                                           ; $7e14: $85
	rst  $38                                         ; $7e15: $ff
	ld   bc, $37c8                                   ; $7e16: $01 $c8 $37
	add  b                                           ; $7e19: $80
	inc  hl                                          ; $7e1a: $23
	add  b                                           ; $7e1b: $80
	ld   bc, $7880                                   ; $7e1c: $01 $80 $78
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	add  l                                           ; $7e21: $85
	rst  $38                                         ; $7e22: $ff
	ld   bc, $bf40                                   ; $7e23: $01 $40 $bf
	add  b                                           ; $7e26: $80
	rst  JumpTable                                         ; $7e27: $df
	add  b                                           ; $7e28: $80
	rst  $28                                         ; $7e29: $ef
	add  b                                           ; $7e2a: $80
	rst  $30                                         ; $7e2b: $f7
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	add  l                                           ; $7e2e: $85

jr_079_7e2f:
	rst  $38                                         ; $7e2f: $ff
	inc  b                                           ; $7e30: $04
	ld   bc, $090f                                   ; $7e31: $01 $0f $09
	rrca                                             ; $7e34: $0f
	rlca                                             ; $7e35: $07
	adc  c                                           ; $7e36: $89
	rrca                                             ; $7e37: $0f
	jr   nz, jr_079_7e2f                             ; $7e38: $20 $f5

	rst  $38                                         ; $7e3a: $ff
	and  b                                           ; $7e3b: $a0
	rst  $38                                         ; $7e3c: $ff
	dec  b                                           ; $7e3d: $05
	rst  $38                                         ; $7e3e: $ff
	dec  b                                           ; $7e3f: $05
	rst  $38                                         ; $7e40: $ff
	dec  d                                           ; $7e41: $15
	rst  $38                                         ; $7e42: $ff
	dec  d                                           ; $7e43: $15
	rst  $38                                         ; $7e44: $ff
	dec  b                                           ; $7e45: $05
	rst  $38                                         ; $7e46: $ff
	dec  b                                           ; $7e47: $05
	rst  $38                                         ; $7e48: $ff
	ld   [bc], a                                     ; $7e49: $02
	rst  $38                                         ; $7e4a: $ff
	inc  bc                                          ; $7e4b: $03
	rst  $38                                         ; $7e4c: $ff
	ld   b, c                                        ; $7e4d: $41
	rst  $38                                         ; $7e4e: $ff
	ld   b, b                                        ; $7e4f: $40
	rst  $38                                         ; $7e50: $ff
	ld   d, l                                        ; $7e51: $55
	rst  $38                                         ; $7e52: $ff
	ld   d, l                                        ; $7e53: $55
	rst  $38                                         ; $7e54: $ff
	ld   d, l                                        ; $7e55: $55
	rst  $38                                         ; $7e56: $ff
	ld   d, l                                        ; $7e57: $55
	rst  $38                                         ; $7e58: $ff
	xor  d                                           ; $7e59: $aa
	add  c                                           ; $7e5a: $81
	rst  $38                                         ; $7e5b: $ff
	ld   de, $ff7f                                   ; $7e5c: $11 $7f $ff
	ccf                                              ; $7e5f: $3f
	cp   $1f                                         ; $7e60: $fe $1f
	db   $fc                                         ; $7e62: $fc
	ld   c, $f8                                      ; $7e63: $0e $f8
	dec  bc                                          ; $7e65: $0b
	ldh  a, [rAUD1SWEEP]                             ; $7e66: $f0 $10
	ldh  [$bf], a                                    ; $7e68: $e0 $bf
	ret  nz                                          ; $7e6a: $c0

	ldh  [$80], a                                    ; $7e6b: $e0 $80
	ret  nz                                          ; $7e6d: $c0

	nop                                              ; $7e6e: $00
	add  b                                           ; $7e6f: $80
	ld   a, a                                        ; $7e70: $7f
	nop                                              ; $7e71: $00
	add  b                                           ; $7e72: $80
	add  b                                           ; $7e73: $80
	nop                                              ; $7e74: $00
	ld   [bc], a                                     ; $7e75: $02
	ld   bc, $01ff                                   ; $7e76: $01 $ff $01
	add  b                                           ; $7e79: $80
	inc  bc                                          ; $7e7a: $03
	dec  c                                           ; $7e7b: $0d
	rst  $38                                         ; $7e7c: $ff
	rra                                              ; $7e7d: $1f
	ld   e, $3e                                      ; $7e7e: $1e $3e
	dec  a                                           ; $7e80: $3d
	inc  a                                           ; $7e81: $3c
	cp   c                                           ; $7e82: $b9
	ld   sp, hl                                      ; $7e83: $f9
	ld   [hl], d                                     ; $7e84: $72
	ldh  a, [$e4]                                    ; $7e85: $f0 $e4
	ldh  [$c7], a                                    ; $7e87: $e0 $c7
	ret  nz                                          ; $7e89: $c0

	add  b                                           ; $7e8a: $80
	add  b                                           ; $7e8b: $80
	ld   [bc], a                                     ; $7e8c: $02
	ld   a, a                                        ; $7e8d: $7f
	nop                                              ; $7e8e: $00
	add  b                                           ; $7e8f: $80
	add  c                                           ; $7e90: $81
	nop                                              ; $7e91: $00
	ld   [hl-], a                                    ; $7e92: $32
	db   $fc                                         ; $7e93: $fc
	db   $fd                                         ; $7e94: $fd
	nop                                              ; $7e95: $00
	inc  bc                                          ; $7e96: $03
	nop                                              ; $7e97: $00
	inc  bc                                          ; $7e98: $03
	db   $fc                                         ; $7e99: $fc
	rlca                                             ; $7e9a: $07
	nop                                              ; $7e9b: $00
	rrca                                             ; $7e9c: $0f
	and  b                                           ; $7e9d: $a0
	ld   a, a                                        ; $7e9e: $7f
	add  b                                           ; $7e9f: $80
	rst  $38                                         ; $7ea0: $ff
	nop                                              ; $7ea1: $00
	rst  $38                                         ; $7ea2: $ff
	nop                                              ; $7ea3: $00
	rst  $38                                         ; $7ea4: $ff
	dec  b                                           ; $7ea5: $05
	rst  $38                                         ; $7ea6: $ff
	dec  b                                           ; $7ea7: $05
	rst  $38                                         ; $7ea8: $ff
	dec  d                                           ; $7ea9: $15
	rst  $38                                         ; $7eaa: $ff
	dec  d                                           ; $7eab: $15
	rst  $38                                         ; $7eac: $ff
	nop                                              ; $7ead: $00
	rst  $38                                         ; $7eae: $ff
	nop                                              ; $7eaf: $00
	rst  $38                                         ; $7eb0: $ff
	dec  d                                           ; $7eb1: $15
	rst  $38                                         ; $7eb2: $ff
	dec  d                                           ; $7eb3: $15
	rst  $38                                         ; $7eb4: $ff
	ld   d, l                                        ; $7eb5: $55
	rst  $38                                         ; $7eb6: $ff
	ld   d, a                                        ; $7eb7: $57
	rst  $38                                         ; $7eb8: $ff
	ld   d, a                                        ; $7eb9: $57
	rst  $38                                         ; $7eba: $ff
	ld   e, a                                        ; $7ebb: $5f
	rst  $38                                         ; $7ebc: $ff
	ld   a, [bc]                                     ; $7ebd: $0a
	rst  $38                                         ; $7ebe: $ff
	nop                                              ; $7ebf: $00
	rst  $38                                         ; $7ec0: $ff
	ld   d, l                                        ; $7ec1: $55
	rst  $38                                         ; $7ec2: $ff
	ld   d, l                                        ; $7ec3: $55
	rst  $38                                         ; $7ec4: $ff
	ld   d, l                                        ; $7ec5: $55
	add  l                                           ; $7ec6: $85
	rst  $38                                         ; $7ec7: $ff
	ld   [$ffaa], sp                                 ; $7ec8: $08 $aa $ff
	nop                                              ; $7ecb: $00
	rst  $38                                         ; $7ecc: $ff
	ld   d, l                                        ; $7ecd: $55
	rst  $38                                         ; $7ece: $ff
	ld   a, a                                        ; $7ecf: $7f
	rst  $38                                         ; $7ed0: $ff
	ld   a, a                                        ; $7ed1: $7f
	add  l                                           ; $7ed2: $85
	rst  $38                                         ; $7ed3: $ff
	inc  b                                           ; $7ed4: $04
	xor  d                                           ; $7ed5: $aa
	rst  $38                                         ; $7ed6: $ff
	nop                                              ; $7ed7: $00
	rst  $38                                         ; $7ed8: $ff
	ld   d, l                                        ; $7ed9: $55
	adc  c                                           ; $7eda: $89
	rst  $38                                         ; $7edb: $ff
	ld   [$ffaa], sp                                 ; $7edc: $08 $aa $ff
	nop                                              ; $7edf: $00
	rst  $38                                         ; $7ee0: $ff
	ld   d, l                                        ; $7ee1: $55
	rst  $38                                         ; $7ee2: $ff
	push af                                          ; $7ee3: $f5
	rst  $38                                         ; $7ee4: $ff
	push af                                          ; $7ee5: $f5
	add  l                                           ; $7ee6: $85
	rst  $38                                         ; $7ee7: $ff
	ld   [$ffaa], sp                                 ; $7ee8: $08 $aa $ff
	nop                                              ; $7eeb: $00
	rst  $38                                         ; $7eec: $ff
	ld   b, b                                        ; $7eed: $40
	rst  $38                                         ; $7eee: $ff
	ld   b, b                                        ; $7eef: $40
	rst  $38                                         ; $7ef0: $ff
	ld   d, l                                        ; $7ef1: $55
	add  l                                           ; $7ef2: $85
	rst  $38                                         ; $7ef3: $ff
	inc  c                                           ; $7ef4: $0c
	nop                                              ; $7ef5: $00
	rst  $38                                         ; $7ef6: $ff
	xor  a                                           ; $7ef7: $af
	rst  $38                                         ; $7ef8: $ff
	dec  b                                           ; $7ef9: $05
	rst  $38                                         ; $7efa: $ff
	nop                                              ; $7efb: $00
	rst  $38                                         ; $7efc: $ff
	ld   b, b                                        ; $7efd: $40
	rst  $38                                         ; $7efe: $ff
	ldh  [rIE], a                                    ; $7eff: $e0 $ff
	push af                                          ; $7f01: $f5
	add  c                                           ; $7f02: $81
	rst  $38                                         ; $7f03: $ff
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	add  c                                           ; $7f06: $81
	rst  $38                                         ; $7f07: $ff
	inc  c                                           ; $7f08: $0c
	ld   a, a                                        ; $7f09: $7f
	rst  $38                                         ; $7f0a: $ff
	ccf                                              ; $7f0b: $3f
	rst  $38                                         ; $7f0c: $ff
	rla                                              ; $7f0d: $17
	rst  $38                                         ; $7f0e: $ff
	ld   [bc], a                                     ; $7f0f: $02
	rst  $38                                         ; $7f10: $ff
	nop                                              ; $7f11: $00
	rst  $38                                         ; $7f12: $ff
	nop                                              ; $7f13: $00
	rst  $38                                         ; $7f14: $ff
	ld   d, l                                        ; $7f15: $55
	add  l                                           ; $7f16: $85
	nop                                              ; $7f17: $00
	inc  bc                                          ; $7f18: $03
	sub  a                                           ; $7f19: $97
	ld   d, h                                        ; $7f1a: $54
	ld   l, b                                        ; $7f1b: $68
	add  sp, -$80                                    ; $7f1c: $e8 $80
	call nc, $e880                                   ; $7f1e: $d4 $80 $e8
	nop                                              ; $7f21: $00
	ld   b, e                                        ; $7f22: $43
	add  l                                           ; $7f23: $85
	nop                                              ; $7f24: $00
	ld   bc, $5457                                   ; $7f25: $01 $57 $54
	add  b                                           ; $7f28: $80
	xor  b                                           ; $7f29: $a8
	add  b                                           ; $7f2a: $80
	ld   d, h                                        ; $7f2b: $54
	add  b                                           ; $7f2c: $80
	xor  b                                           ; $7f2d: $a8
	nop                                              ; $7f2e: $00
	inc  bc                                          ; $7f2f: $03
	add  l                                           ; $7f30: $85
	nop                                              ; $7f31: $00
	ld   bc, $a857                                   ; $7f32: $01 $57 $a8
	add  b                                           ; $7f35: $80
	or   b                                           ; $7f36: $b0
	add  b                                           ; $7f37: $80
	xor  b                                           ; $7f38: $a8
	add  b                                           ; $7f39: $80
	or   b                                           ; $7f3a: $b0
	nop                                              ; $7f3b: $00

jr_079_7f3c:
	rst  $38                                         ; $7f3c: $ff
	add  l                                           ; $7f3d: $85
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00

Jump_079_7f40:
	ldh  a, [$85]                                    ; $7f40: $f0 $85
	nop                                              ; $7f42: $00
	dec  b                                           ; $7f43: $05
	ld   [hl], a                                     ; $7f44: $77
	call nz, Call_079_40c0                           ; $7f45: $c4 $c0 $40
	ld   b, h                                        ; $7f48: $44
	call nz, $c081                                   ; $7f49: $c4 $81 $c0
	add  b                                           ; $7f4c: $80
	ld   b, b                                        ; $7f4d: $40
	ld   b, $c0                                      ; $7f4e: $06 $c0
	ld   b, b                                        ; $7f50: $40
	ret  nz                                          ; $7f51: $c0

	ld   b, b                                        ; $7f52: $40
	ret  nz                                          ; $7f53: $c0

	ld   d, h                                        ; $7f54: $54
	inc  d                                           ; $7f55: $14
	add  b                                           ; $7f56: $80
	ld   [$1480], sp                                 ; $7f57: $08 $80 $14
	add  b                                           ; $7f5a: $80
	ld   [$0480], sp                                 ; $7f5b: $08 $80 $04
	add  b                                           ; $7f5e: $80
	ld   [$0480], sp                                 ; $7f5f: $08 $80 $04
	add  b                                           ; $7f62: $80
	nop                                              ; $7f63: $00
	ld   bc, $be42                                   ; $7f64: $01 $42 $be
	add  b                                           ; $7f67: $80
	xor  b                                           ; $7f68: $a8
	add  b                                           ; $7f69: $80
	or   b                                           ; $7f6a: $b0
	add  b                                           ; $7f6b: $80
	xor  b                                           ; $7f6c: $a8
	add  b                                           ; $7f6d: $80
	or   b                                           ; $7f6e: $b0
	add  b                                           ; $7f6f: $80
	cp   [hl]                                        ; $7f70: $be
	add  b                                           ; $7f71: $80
	add  b                                           ; $7f72: $80
	add  b                                           ; $7f73: $80
	db   $fc                                         ; $7f74: $fc
	nop                                              ; $7f75: $00
	rrca                                             ; $7f76: $0f
	adc  l                                           ; $7f77: $8d
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	ld   [hl], e                                     ; $7f7a: $73
	adc  l                                           ; $7f7b: $8d
	ret  nz                                          ; $7f7c: $c0

	nop                                              ; $7f7d: $00
	ld   b, b                                        ; $7f7e: $40
	adc  l                                           ; $7f7f: $8d
	nop                                              ; $7f80: $00
	ld   bc, $a854                                   ; $7f81: $01 $54 $a8
	add  b                                           ; $7f84: $80
	or   b                                           ; $7f85: $b0
	add  b                                           ; $7f86: $80
	xor  b                                           ; $7f87: $a8
	add  b                                           ; $7f88: $80
	or   b                                           ; $7f89: $b0
	add  b                                           ; $7f8a: $80
	xor  b                                           ; $7f8b: $a8
	add  b                                           ; $7f8c: $80
	or   b                                           ; $7f8d: $b0
	add  b                                           ; $7f8e: $80
	xor  b                                           ; $7f8f: $a8
	add  b                                           ; $7f90: $80
	or   b                                           ; $7f91: $b0
	ld   bc, $54a8                                   ; $7f92: $01 $a8 $54
	add  b                                           ; $7f95: $80
	xor  b                                           ; $7f96: $a8
	add  b                                           ; $7f97: $80
	ld   d, h                                        ; $7f98: $54
	add  b                                           ; $7f99: $80
	xor  b                                           ; $7f9a: $a8
	add  b                                           ; $7f9b: $80
	ld   d, h                                        ; $7f9c: $54
	add  b                                           ; $7f9d: $80
	xor  b                                           ; $7f9e: $a8
	add  b                                           ; $7f9f: $80
	ld   d, h                                        ; $7fa0: $54
	add  b                                           ; $7fa1: $80
	jr   z, jr_079_7fa5                              ; $7fa2: $28 $01

	ld   a, h                                        ; $7fa4: $7c

jr_079_7fa5:
	add  b                                           ; $7fa5: $80
	add  b                                           ; $7fa6: $80
	cp   $8a                                         ; $7fa7: $fe $8a
	rst  $38                                         ; $7fa9: $ff
	nop                                              ; $7faa: $00
	db   $fc                                         ; $7fab: $fc
	add  c                                           ; $7fac: $81
	nop                                              ; $7fad: $00
	ld   bc, $00fc                                   ; $7fae: $01 $fc $00
	adc  b                                           ; $7fb1: $88
	rst  $38                                         ; $7fb2: $ff
	add  b                                           ; $7fb3: $80
	xor  b                                           ; $7fb4: $a8
	add  b                                           ; $7fb5: $80
	sbc  b                                           ; $7fb6: $98
	add  b                                           ; $7fb7: $80
	add  $80                                         ; $7fb8: $c6 $80
	jr   nc, jr_079_7f3c                             ; $7fba: $30 $80

	call z, $f280                                    ; $7fbc: $cc $80 $f2
	add  b                                           ; $7fbf: $80
	db   $fc                                         ; $7fc0: $fc
	add  b                                           ; $7fc1: $80
	rst  $38                                         ; $7fc2: $ff
	nop                                              ; $7fc3: $00
	rrca                                             ; $7fc4: $0f
	add  e                                           ; $7fc5: $83
	nop                                              ; $7fc6: $00
	add  b                                           ; $7fc7: $80
	add  b                                           ; $7fc8: $80
	add  d                                           ; $7fc9: $82
	nop                                              ; $7fca: $00
	add  b                                           ; $7fcb: $80
	add  b                                           ; $7fcc: $80
	add  b                                           ; $7fcd: $80
	nop                                              ; $7fce: $00
	dec  b                                           ; $7fcf: $05
	ld   h, a                                        ; $7fd0: $67
	ld   d, h                                        ; $7fd1: $54
	ld   l, b                                        ; $7fd2: $68
	add  sp, -$2c                                    ; $7fd3: $e8 $d4
	ld   d, h                                        ; $7fd5: $54
	add  b                                           ; $7fd6: $80
	ld   l, b                                        ; $7fd7: $68
	ld   bc, $d454                                   ; $7fd8: $01 $54 $d4
	add  b                                           ; $7fdb: $80
	ret  z                                           ; $7fdc: $c8

	inc  b                                           ; $7fdd: $04
	call nz, Call_079_4844                           ; $7fde: $c4 $44 $48
	ret  z                                           ; $7fe1: $c8

	ld   b, e                                        ; $7fe2: $43
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
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	rst  $38                                         ; $7ff3: $ff
	nop                                              ; $7ff4: $00
	db   $e4                                         ; $7ff5: $e4
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
