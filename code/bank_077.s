; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

	ld   d, a                                        ; $4000: $57
	ld   [bc], a                                     ; $4001: $02
	add  [hl]                                        ; $4002: $86
	nop                                              ; $4003: $00
	ld   bc, $639c                                   ; $4004: $01 $9c $63
	add  b                                           ; $4007: $80
	rst  ToBoot                                         ; $4008: $c7
	add  b                                           ; $4009: $80
	sbc  a                                           ; $400a: $9f
	add  b                                           ; $400b: $80
	ld   a, h                                        ; $400c: $7c
	nop                                              ; $400d: $00
	rst  $38                                         ; $400e: $ff
	add  l                                           ; $400f: $85
	nop                                              ; $4010: $00
	ld   bc, $f807                                   ; $4011: $01 $07 $f8
	add  b                                           ; $4014: $80
	ldh  [$80], a                                    ; $4015: $e0 $80
	inc  b                                           ; $4017: $04

jr_077_4018:
	add  b                                           ; $4018: $80
	inc  de                                          ; $4019: $13
	nop                                              ; $401a: $00
	rst  $38                                         ; $401b: $ff
	add  l                                           ; $401c: $85
	nop                                              ; $401d: $00
	ld   bc, $39c6                                   ; $401e: $01 $c6 $39
	add  b                                           ; $4021: $80
	cp   $80                                         ; $4022: $fe $80
	ld   a, a                                        ; $4024: $7f
	add  b                                           ; $4025: $80
	sbc  a                                           ; $4026: $9f
	nop                                              ; $4027: $00
	rst  $38                                         ; $4028: $ff
	add  l                                           ; $4029: $85
	nop                                              ; $402a: $00
	ld   bc, $8976                                   ; $402b: $01 $76 $89
	add  b                                           ; $402e: $80
	ld   h, [hl]                                     ; $402f: $66
	add  b                                           ; $4030: $80
	xor  c                                           ; $4031: $a9
	add  b                                           ; $4032: $80
	xor  [hl]                                        ; $4033: $ae
	nop                                              ; $4034: $00
	rst  $38                                         ; $4035: $ff
	add  [hl]                                        ; $4036: $86
	nop                                              ; $4037: $00
	nop                                              ; $4038: $00
	rst  $38                                         ; $4039: $ff
	add  b                                           ; $403a: $80
	ld   a, a                                        ; $403b: $7f
	add  b                                           ; $403c: $80
	sbc  a                                           ; $403d: $9f
	add  b                                           ; $403e: $80
	ld   h, a                                        ; $403f: $67
	nop                                              ; $4040: $00

Jump_077_4041:
	rst  $38                                         ; $4041: $ff
	add  l                                           ; $4042: $85
	nop                                              ; $4043: $00
	ld   bc, $de21                                   ; $4044: $01 $21 $de
	add  b                                           ; $4047: $80
	db   $dd                                         ; $4048: $dd
	add  b                                           ; $4049: $80
	db   $db                                         ; $404a: $db
	ld   [bc], a                                     ; $404b: $02
	db   $fc                                         ; $404c: $fc
	inc  b                                           ; $404d: $04
	rlca                                             ; $404e: $07
	add  l                                           ; $404f: $85
	nop                                              ; $4050: $00
	ld   bc, $f30c                                   ; $4051: $01 $0c $f3
	add  b                                           ; $4054: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4055: $cf
	add  b                                           ; $4056: $80
	inc  a                                           ; $4057: $3c
	add  b                                           ; $4058: $80
	jp   $ff00                                       ; $4059: $c3 $00 $ff


	add  l                                           ; $405c: $85
	nop                                              ; $405d: $00
	ld   bc, $fe01                                   ; $405e: $01 $01 $fe
	add  b                                           ; $4061: $80
	ldh  [$80], a                                    ; $4062: $e0 $80
	dec  e                                           ; $4064: $1d
	add  b                                           ; $4065: $80
	ei                                               ; $4066: $fb
	nop                                              ; $4067: $00
	rst  $38                                         ; $4068: $ff
	add  l                                           ; $4069: $85
	nop                                              ; $406a: $00
	ld   bc, $0ff0                                   ; $406b: $01 $f0 $0f
	add  b                                           ; $406e: $80
	rst  $38                                         ; $406f: $ff
	add  b                                           ; $4070: $80
	db   $fc                                         ; $4071: $fc
	add  b                                           ; $4072: $80
	ei                                               ; $4073: $fb
	nop                                              ; $4074: $00
	rst  $38                                         ; $4075: $ff
	add  l                                           ; $4076: $85
	nop                                              ; $4077: $00
	ld   bc, $c738                                   ; $4078: $01 $38 $c7
	add  b                                           ; $407b: $80
	cpl                                              ; $407c: $2f
	add  b                                           ; $407d: $80
	rst  JumpTable                                         ; $407e: $df
	add  b                                           ; $407f: $80
	cp   h                                           ; $4080: $bc
	nop                                              ; $4081: $00
	rst  $38                                         ; $4082: $ff
	add  l                                           ; $4083: $85
	nop                                              ; $4084: $00
	ld   bc, $d12e                                   ; $4085: $01 $2e $d1
	add  b                                           ; $4088: $80
	pop  af                                          ; $4089: $f1
	add  b                                           ; $408a: $80
	sub  c                                           ; $408b: $91
	add  b                                           ; $408c: $80
	ld   [hl], c                                     ; $408d: $71
	nop                                              ; $408e: $00
	rst  $38                                         ; $408f: $ff
	add  l                                           ; $4090: $85
	nop                                              ; $4091: $00
	ld   bc, $07f8                                   ; $4092: $01 $f8 $07
	add  b                                           ; $4095: $80
	jr   jr_077_4018                                 ; $4096: $18 $80

	rrca                                             ; $4098: $0f
	add  b                                           ; $4099: $80
	inc  de                                          ; $409a: $13
	add  b                                           ; $409b: $80
	ldh  [rTIMA], a                                  ; $409c: $e0 $05
	add  e                                           ; $409e: $83
	add  b                                           ; $409f: $80
	inc  c                                           ; $40a0: $0c
	nop                                              ; $40a1: $00
	jr   nc, jr_077_40a4                             ; $40a2: $30 $00

jr_077_40a4:
	add  b                                           ; $40a4: $80
	jr   nc, jr_077_40af                             ; $40a5: $30 $08

	ccf                                              ; $40a7: $3f
	rrca                                             ; $40a8: $0f
	ld   c, $07                                      ; $40a9: $0e $07
	ld   b, $1a                                      ; $40ab: $06 $1a
	and  $0c                                         ; $40ad: $e6 $0c

jr_077_40af:
	rrca                                             ; $40af: $0f
	add  b                                           ; $40b0: $80
	inc  bc                                          ; $40b1: $03
	add  l                                           ; $40b2: $85
	nop                                              ; $40b3: $00
	add  b                                           ; $40b4: $80
	ldh  [$03], a                                    ; $40b5: $e0 $03
	call c, $f83c                                    ; $40b7: $dc $3c $f8
	rst  $20                                         ; $40ba: $e7
	add  b                                           ; $40bb: $80
	jr   @+$06                                       ; $40bc: $18 $04

	rst  $20                                         ; $40be: $e7
	ld   h, a                                        ; $40bf: $67
	ld   a, b                                        ; $40c0: $78
	jr   jr_077_40e2                                 ; $40c1: $18 $1f

	add  b                                           ; $40c3: $80
	inc  bc                                          ; $40c4: $03
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	add  b                                           ; $40c7: $80
	ld   bc, $0e80                                   ; $40c8: $01 $80 $0e
	ld   bc, $a956                                   ; $40cb: $01 $56 $a9
	add  b                                           ; $40ce: $80
	xor  d                                           ; $40cf: $aa

jr_077_40d0:
	add  b                                           ; $40d0: $80
	dec  hl                                          ; $40d1: $2b
	add  b                                           ; $40d2: $80
	db   $eb                                         ; $40d3: $eb
	add  b                                           ; $40d4: $80
	ld   [$e707], sp                                 ; $40d5: $08 $07 $e7
	ld   h, a                                        ; $40d8: $67
	ld   hl, sp-$68                                  ; $40d9: $f8 $98
	rst  $38                                         ; $40db: $ff
	db   $e3                                         ; $40dc: $e3
	ld   h, l                                        ; $40dd: $65
	sbc  c                                           ; $40de: $99
	add  b                                           ; $40df: $80
	ld   h, [hl]                                     ; $40e0: $66
	add  b                                           ; $40e1: $80

jr_077_40e2:
	sbc  c                                           ; $40e2: $99
	add  b                                           ; $40e3: $80
	and  $80                                         ; $40e4: $e6 $80
	ld   sp, hl                                      ; $40e6: $f9
	add  b                                           ; $40e7: $80
	ld   e, $80                                      ; $40e8: $1e $80
	and  $80                                         ; $40ea: $e6 $80
	jr   jr_077_40f1                                 ; $40ec: $18 $03

	ld   hl, sp-$78                                  ; $40ee: $f8 $88
	inc  de                                          ; $40f0: $13

jr_077_40f1:
	ld   h, e                                        ; $40f1: $63
	add  b                                           ; $40f2: $80
	sbc  a                                           ; $40f3: $9f
	add  b                                           ; $40f4: $80
	ld   h, a                                        ; $40f5: $67
	add  b                                           ; $40f6: $80
	sbc  c                                           ; $40f7: $99
	add  b                                           ; $40f8: $80
	and  [hl]                                        ; $40f9: $a6
	add  b                                           ; $40fa: $80
	cp   c                                           ; $40fb: $b9
	add  b                                           ; $40fc: $80
	and  [hl]                                        ; $40fd: $a6
	add  b                                           ; $40fe: $80
	dec  sp                                          ; $40ff: $3b
	add  h                                           ; $4100: $84
	ei                                               ; $4101: $fb
	dec  b                                           ; $4102: $05
	rst  $38                                         ; $4103: $ff

jr_077_4104:
	pop  hl                                          ; $4104: $e1
	ld   h, c                                        ; $4105: $61
	ld   [hl], e                                     ; $4106: $73
	sub  e                                           ; $4107: $93
	sbc  a                                           ; $4108: $9f
	add  b                                           ; $4109: $80
	inc  l                                           ; $410a: $2c
	add  b                                           ; $410b: $80
	rst  $30                                         ; $410c: $f7
	add  b                                           ; $410d: $80
	rst  $28                                         ; $410e: $ef
	add  b                                           ; $410f: $80
	rst  JumpTable                                         ; $4110: $df
	add  b                                           ; $4111: $80
	cp   h                                           ; $4112: $bc
	add  b                                           ; $4113: $80
	ld   [hl], d                                     ; $4114: $72
	add  b                                           ; $4115: $80
	ld   b, c                                        ; $4116: $41
	add  b                                           ; $4117: $80
	sbc  [hl]                                        ; $4118: $9e
	add  b                                           ; $4119: $80
	ld   a, [hl]                                     ; $411a: $7e
	add  b                                           ; $411b: $80
	rst  $20                                         ; $411c: $e7
	add  b                                           ; $411d: $80
	sbc  [hl]                                        ; $411e: $9e
	add  b                                           ; $411f: $80
	ld   a, b                                        ; $4120: $78
	add  b                                           ; $4121: $80
	push bc                                          ; $4122: $c5
	add  b                                           ; $4123: $80
	dec  sp                                          ; $4124: $3b
	add  b                                           ; $4125: $80
	rst  $30                                         ; $4126: $f7
	add  b                                           ; $4127: $80
	rst  $28                                         ; $4128: $ef
	add  b                                           ; $4129: $80
	call c, Call_077_6780                            ; $412a: $dc $80 $67
	add  b                                           ; $412d: $80
	rra                                              ; $412e: $1f
	add  b                                           ; $412f: $80
	db   $fc                                         ; $4130: $fc
	add  b                                           ; $4131: $80
	ei                                               ; $4132: $fb
	add  b                                           ; $4133: $80
	rst  $20                                         ; $4134: $e7
	add  b                                           ; $4135: $80
	sbc  [hl]                                        ; $4136: $9e
	add  b                                           ; $4137: $80
	ld   a, b                                        ; $4138: $78
	add  b                                           ; $4139: $80
	push hl                                          ; $413a: $e5
	add  b                                           ; $413b: $80
	sub  c                                           ; $413c: $91
	add  b                                           ; $413d: $80
	ld   [hl], c                                     ; $413e: $71
	add  d                                           ; $413f: $82
	pop  de                                          ; $4140: $d1
	add  b                                           ; $4141: $80

Call_077_4142:
	sub  c                                           ; $4142: $91
	add  b                                           ; $4143: $80
	ld   sp, $f180                                   ; $4144: $31 $80 $f1
	add  b                                           ; $4147: $80
	pop  de                                          ; $4148: $d1
	add  b                                           ; $4149: $80
	inc  c                                           ; $414a: $0c
	add  b                                           ; $414b: $80
	rlca                                             ; $414c: $07
	add  b                                           ; $414d: $80
	jr   jr_077_40d0                                 ; $414e: $18 $80

	rra                                              ; $4150: $1f
	add  b                                           ; $4151: $80
	rrca                                             ; $4152: $0f
	add  b                                           ; $4153: $80
	inc  de                                          ; $4154: $13
	add  b                                           ; $4155: $80
	db   $10                                         ; $4156: $10
	add  b                                           ; $4157: $80
	inc  de                                          ; $4158: $13
	inc  bc                                          ; $4159: $03
	jr   nz, jr_077_415e                             ; $415a: $20 $02

	jr   nz, jr_077_415e                             ; $415c: $20 $00

jr_077_415e:
	add  b                                           ; $415e: $80
	ld   [bc], a                                     ; $415f: $02
	ld   b, $20                                      ; $4160: $06 $20
	nop                                              ; $4162: $00
	dec  e                                           ; $4163: $1d
	jr   nz, jr_077_4182                             ; $4164: $20 $1c

	ld   [bc], a                                     ; $4166: $02
	ld   bc, $0082                                   ; $4167: $01 $82 $00
	add  b                                           ; $416a: $80
	inc  bc                                          ; $416b: $03
	add  b                                           ; $416c: $80
	ld   b, $80                                      ; $416d: $06 $80
	ld   a, [hl-]                                    ; $416f: $3a
	add  b                                           ; $4170: $80
	jp   nz, $020b                                   ; $4171: $c2 $0b $02

	ldh  [c], a                                      ; $4174: $e2
	inc  bc                                          ; $4175: $03
	jp   $1c3e                                       ; $4176: $c3 $3e $1c


	inc  bc                                          ; $4179: $03
	ld   c, l                                        ; $417a: $4d
	or   e                                           ; $417b: $b3
	ld   a, h                                        ; $417c: $7c
	db   $fc                                         ; $417d: $fc
	ld   a, a                                        ; $417e: $7f
	add  b                                           ; $417f: $80
	rrca                                             ; $4180: $0f
	add  b                                           ; $4181: $80

jr_077_4182:
	jr   jr_077_4104                                 ; $4182: $18 $80

	ld   l, b                                        ; $4184: $68
	add  b                                           ; $4185: $80
	adc  b                                           ; $4186: $88
	add  b                                           ; $4187: $80
	dec  bc                                          ; $4188: $0b
	ld   [bc], a                                     ; $4189: $02
	db   $ec                                         ; $418a: $ec
	inc  d                                           ; $418b: $14
	rlca                                             ; $418c: $07
	add  b                                           ; $418d: $80
	add  hl, de                                      ; $418e: $19
	add  b                                           ; $418f: $80
	ld   h, [hl]                                     ; $4190: $66
	add  b                                           ; $4191: $80
	ld   hl, sp+$02                                  ; $4192: $f8 $02
	cp   $3e                                         ; $4194: $fe $3e
	ccf                                              ; $4196: $3f
	add  b                                           ; $4197: $80
	pop  de                                          ; $4198: $d1
	add  b                                           ; $4199: $80
	ld   de, $1605                                   ; $419a: $11 $05 $16
	pop  af                                          ; $419d: $f1
	ld   h, a                                        ; $419e: $67
	cp   b                                           ; $419f: $b8
	ret  c                                           ; $41a0: $d8

	rra                                              ; $41a1: $1f
	add  b                                           ; $41a2: $80
	inc  bc                                          ; $41a3: $03
	add  c                                           ; $41a4: $81
	nop                                              ; $41a5: $00
	add  b                                           ; $41a6: $80
	ret  nz                                          ; $41a7: $c0

	dec  b                                           ; $41a8: $05
	ei                                               ; $41a9: $fb
	cp   e                                           ; $41aa: $bb
	cp   a                                           ; $41ab: $bf
	adc  a                                           ; $41ac: $8f
	daa                                              ; $41ad: $27
	xor  b                                           ; $41ae: $a8
	add  b                                           ; $41af: $80
	and  a                                           ; $41b0: $a7
	add  b                                           ; $41b1: $80

jr_077_41b2:
	add  hl, de                                      ; $41b2: $19
	rlca                                             ; $41b3: $07

jr_077_41b4:
	and  $66                                         ; $41b4: $e6 $66
	ld   a, b                                        ; $41b6: $78
	jr   jr_077_4220                                 ; $41b7: $18 $67

	ld   a, e                                        ; $41b9: $7b
	adc  l                                           ; $41ba: $8d
	adc  [hl]                                        ; $41bb: $8e
	add  b                                           ; $41bc: $80
	jr   nc, @+$03                                   ; $41bd: $30 $01

	ld   [hl], $c9                                   ; $41bf: $36 $c9
	add  b                                           ; $41c1: $80
	ld   [hl-], a                                    ; $41c2: $32

Jump_077_41c3:
	add  b                                           ; $41c3: $80
	ret  z                                           ; $41c4: $c8

	add  b                                           ; $41c5: $80
	dec  hl                                          ; $41c6: $2b
	add  b                                           ; $41c7: $80
	ret  z                                           ; $41c8: $c8

	add  b                                           ; $41c9: $80
	dec  de                                          ; $41ca: $1b
	dec  bc                                          ; $41cb: $0b
	db   $e3                                         ; $41cc: $e3
	ld   h, e                                        ; $41cd: $63
	sbc  h                                           ; $41ce: $9c
	db   $fc                                         ; $41cf: $fc
	ld   e, $fe                                      ; $41d0: $1e $fe
	ld   a, a                                        ; $41d2: $7f
	ld   a, h                                        ; $41d3: $7c
	sbc  h                                           ; $41d4: $9c
	sbc  [hl]                                        ; $41d5: $9e
	ld   b, $07                                      ; $41d6: $06 $07
	add  b                                           ; $41d8: $80
	ldh  [$80], a                                    ; $41d9: $e0 $80
	jr   @-$7e                                       ; $41db: $18 $80

	db   $e4                                         ; $41dd: $e4
	add  b                                           ; $41de: $80
	ld   sp, hl                                      ; $41df: $f9
	add  b                                           ; $41e0: $80
	cp   e                                           ; $41e1: $bb
	inc  bc                                          ; $41e2: $03
	and  h                                           ; $41e3: $a4
	inc  h                                           ; $41e4: $24
	ld   b, e                                        ; $41e5: $43
	jp   $1d80                                       ; $41e6: $c3 $80 $1d


	add  b                                           ; $41e9: $80
	db   $fd                                         ; $41ea: $fd
	dec  b                                           ; $41eb: $05
	ccf                                              ; $41ec: $3f
	jr   c, jr_077_4238                              ; $41ed: $38 $49

	ld   c, h                                        ; $41ef: $4c
	inc  de                                          ; $41f0: $13
	ld   de, $1b80                                   ; $41f1: $11 $80 $1b
	add  b                                           ; $41f4: $80
	or   $80                                         ; $41f5: $f6 $80
	add  sp, -$80                                    ; $41f7: $e8 $80
	sub  $80                                         ; $41f9: $d6 $80
	call $9b80                                       ; $41fb: $cd $80 $9b
	add  b                                           ; $41fe: $80
	ld   d, a                                        ; $41ff: $57

Jump_077_4200:
	add  b                                           ; $4200: $80
	adc  a                                           ; $4201: $8f
	add  b                                           ; $4202: $80
	or   c                                           ; $4203: $b1
	add  b                                           ; $4204: $80
	ld   sp, $5182                                   ; $4205: $31 $82 $51
	add  [hl]                                        ; $4208: $86
	ld   [hl], c                                     ; $4209: $71
	add  b                                           ; $420a: $80
	dec  d                                           ; $420b: $15
	add  b                                           ; $420c: $80
	ld   d, $82                                      ; $420d: $16 $82
	rla                                              ; $420f: $17
	add  b                                           ; $4210: $80
	ld   b, $80                                      ; $4211: $06 $80
	dec  b                                           ; $4213: $05
	add  b                                           ; $4214: $80
	dec  d                                           ; $4215: $15
	add  b                                           ; $4216: $80
	inc  de                                          ; $4217: $13
	add  h                                           ; $4218: $84
	nop                                              ; $4219: $00
	add  b                                           ; $421a: $80
	rra                                              ; $421b: $1f
	add  b                                           ; $421c: $80
	inc  de                                          ; $421d: $13
	add  b                                           ; $421e: $80
	dec  d                                           ; $421f: $15

jr_077_4220:
	nop                                              ; $4220: $00
	ccf                                              ; $4221: $3f
	add  b                                           ; $4222: $80
	rra                                              ; $4223: $1f
	ld   [bc], a                                     ; $4224: $02
	add  hl, de                                      ; $4225: $19
	ld   h, $18                                      ; $4226: $26 $18
	add  b                                           ; $4228: $80
	nop                                              ; $4229: $00
	ld   bc, $0018                                   ; $422a: $01 $18 $00
	add  b                                           ; $422d: $80
	rst  $38                                         ; $422e: $ff
	add  b                                           ; $422f: $80
	jr   jr_077_41b2                                 ; $4230: $18 $80

	jr   z, jr_077_41b4                              ; $4232: $28 $80

	ret  z                                           ; $4234: $c8

	rlca                                             ; $4235: $07
	rst  $38                                         ; $4236: $ff
	cp   a                                           ; $4237: $bf

jr_077_4238:
	ld   h, b                                        ; $4238: $60
	ld   a, $1c                                      ; $4239: $3e $1c
	inc  bc                                          ; $423b: $03
	ld   bc, $800c                                   ; $423c: $01 $0c $80
	di                                               ; $423f: $f3
	ld   bc, $ccc0                                   ; $4240: $01 $c0 $cc
	add  b                                           ; $4243: $80
	xor  d                                           ; $4244: $aa
	add  b                                           ; $4245: $80
	sbc  c                                           ; $4246: $99
	add  b                                           ; $4247: $80
	adc  c                                           ; $4248: $89
	inc  c                                           ; $4249: $0c
	jr   nz, jr_077_4284                             ; $424a: $20 $38

	jr   @-$0e                                       ; $424c: $18 $f0

	ret  nc                                          ; $424e: $d0

	ld   a, $dc                                      ; $424f: $3e $dc
	jp   Jump_077_4041                               ; $4251: $c3 $41 $40


	ld   [bc], a                                     ; $4254: $02
	ld   b, b                                        ; $4255: $40
	ld   b, d                                        ; $4256: $42
	add  d                                           ; $4257: $82
	ld   b, b                                        ; $4258: $40
	add  b                                           ; $4259: $80
	sbc  b                                           ; $425a: $98
	add  b                                           ; $425b: $80
	xor  c                                           ; $425c: $a9
	add  b                                           ; $425d: $80
	jp   z, $ec0d                                    ; $425e: $ca $0d $ec

	call z, $1c3e                                    ; $4261: $cc $3e $1c
	inc  bc                                          ; $4264: $03
	ld   bc, $0200                                   ; $4265: $01 $00 $02
	nop                                              ; $4268: $00
	ld   a, [bc]                                     ; $4269: $0a
	rst  $30                                         ; $426a: $f7
	cp   $8e                                         ; $426b: $fe $8e
	adc  a                                           ; $426d: $8f
	add  b                                           ; $426e: $80
	sbc  c                                           ; $426f: $99
	add  b                                           ; $4270: $80
	xor  c                                           ; $4271: $a9
	add  b                                           ; $4272: $80
	jp   z, $ec05                                    ; $4273: $ca $05 $ec

	call z, $1c3e                                    ; $4276: $cc $3e $1c
	inc  bc                                          ; $4279: $03
	cp   $80                                         ; $427a: $fe $80
	inc  bc                                          ; $427c: $03
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	add  b                                           ; $427f: $80
	ret  nz                                          ; $4280: $c0

	ld   [bc], a                                     ; $4281: $02
	cp   h                                           ; $4282: $bc
	db   $fc                                         ; $4283: $fc

jr_077_4284:
	cp   a                                           ; $4284: $bf
	add  b                                           ; $4285: $80
	sbc  e                                           ; $4286: $9b
	add  b                                           ; $4287: $80
	xor  e                                           ; $4288: $ab
	add  b                                           ; $4289: $80
	call $e912                                       ; $428a: $cd $12 $e9
	db   $f4                                         ; $428d: $f4
	dec  e                                           ; $428e: $1d
	pop  hl                                          ; $428f: $e1
	ld   h, c                                        ; $4290: $61
	ld   a, h                                        ; $4291: $7c
	inc  e                                           ; $4292: $1c
	daa                                              ; $4293: $27
	dec  sp                                          ; $4294: $3b
	call nz, $f8c7                                   ; $4295: $c4 $c7 $f8
	ld   a, b                                        ; $4298: $78
	ld   a, [hl]                                     ; $4299: $7e
	ld   l, $2f                                      ; $429a: $2e $2f
	ld   h, l                                        ; $429c: $65
	ld   b, $63                                      ; $429d: $06 $63
	add  d                                           ; $429f: $82
	ld   [hl], b                                     ; $42a0: $70
	add  b                                           ; $42a1: $80
	inc  de                                          ; $42a2: $13
	add  hl, bc                                      ; $42a3: $09
	db   $e3                                         ; $42a4: $e3
	ld   h, e                                        ; $42a5: $63
	ld   [hl], b                                     ; $42a6: $70
	db   $10                                         ; $42a7: $10
	ld   [de], a                                     ; $42a8: $12
	ld   [bc], a                                     ; $42a9: $02
	pop  hl                                          ; $42aa: $e1
	add  sp, $26                                     ; $42ab: $e8 $26
	rst  JumpTable                                         ; $42ad: $df
	add  b                                           ; $42ae: $80
	nop                                              ; $42af: $00
	add  b                                           ; $42b0: $80
	ld   h, a                                        ; $42b1: $67
	add  b                                           ; $42b2: $80
	rst  ToBoot                                         ; $42b3: $c7
	add  b                                           ; $42b4: $80
	or   d                                           ; $42b5: $b2
	add  b                                           ; $42b6: $80
	ld   [hl], h                                     ; $42b7: $74
	add  b                                           ; $42b8: $80
	inc  de                                          ; $42b9: $13
	inc  bc                                          ; $42ba: $03
	nop                                              ; $42bb: $00
	ldh  [$81], a                                    ; $42bc: $e0 $81
	ld   [hl], c                                     ; $42be: $71
	add  b                                           ; $42bf: $80
	ld   de, $9180                                   ; $42c0: $11 $80 $91
	ld   bc, $5554                                   ; $42c3: $01 $54 $55
	add  d                                           ; $42c6: $82
	rst  $10                                         ; $42c7: $d7
	add  b                                           ; $42c8: $80
	rla                                              ; $42c9: $17
	inc  bc                                          ; $42ca: $03
	db   $d3                                         ; $42cb: $d3
	rst  $10                                         ; $42cc: $d7
	dec  d                                           ; $42cd: $15
	nop                                              ; $42ce: $00
	add  b                                           ; $42cf: $80
	rla                                              ; $42d0: $17
	add  b                                           ; $42d1: $80
	dec  de                                          ; $42d2: $1b
	add  b                                           ; $42d3: $80
	dec  e                                           ; $42d4: $1d
	add  b                                           ; $42d5: $80
	ld   c, $80                                      ; $42d6: $0e $80
	db   $10                                         ; $42d8: $10
	add  d                                           ; $42d9: $82
	rra                                              ; $42da: $1f
	ld   b, $24                                      ; $42db: $06 $24
	sub  b                                           ; $42dd: $90
	sub  a                                           ; $42de: $97
	sub  b                                           ; $42df: $90
	or   d                                           ; $42e0: $b2
	sub  d                                           ; $42e1: $92
	sub  e                                           ; $42e2: $93
	add  c                                           ; $42e3: $81
	sub  b                                           ; $42e4: $90
	add  b                                           ; $42e5: $80
	or   a                                           ; $42e6: $b7
	add  b                                           ; $42e7: $80
	sub  b                                           ; $42e8: $90
	add  b                                           ; $42e9: $80
	or   a                                           ; $42ea: $b7
	nop                                              ; $42eb: $00
	ld   l, d                                        ; $42ec: $6a
	add  e                                           ; $42ed: $83
	dec  b                                           ; $42ee: $05
	inc  bc                                          ; $42ef: $03
	db   $fd                                         ; $42f0: $fd
	inc  bc                                          ; $42f1: $03
	ld   bc, $8000                                   ; $42f2: $01 $00 $80
	ldh  [$80], a                                    ; $42f5: $e0 $80
	rra                                              ; $42f7: $1f
	add  b                                           ; $42f8: $80
	ldh  [$03], a                                    ; $42f9: $e0 $03
	add  b                                           ; $42fb: $80
	ld   a, [hl]                                     ; $42fc: $7e
	ld   a, [bc]                                     ; $42fd: $0a
	dec  bc                                          ; $42fe: $0b

Call_077_42ff:
	add  d                                           ; $42ff: $82
	ld   a, [bc]                                     ; $4300: $0a
	ld   bc, $03fc                                   ; $4301: $01 $fc $03
	add  b                                           ; $4304: $80
	nop                                              ; $4305: $00
	add  b                                           ; $4306: $80
	ldh  a, [$80]                                    ; $4307: $f0 $80
	rlca                                             ; $4309: $07
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	add  c                                           ; $430c: $81
	ret  nz                                          ; $430d: $c0

	ld   [bc], a                                     ; $430e: $02
	ld   e, b                                        ; $430f: $58
	ld   b, b                                        ; $4310: $40
	ld   b, a                                        ; $4311: $47
	add  c                                           ; $4312: $81
	ld   b, b                                        ; $4313: $40
	inc  bc                                          ; $4314: $03
	call c, Call_077_4142                            ; $4315: $dc $42 $41
	ld   b, b                                        ; $4318: $40
	add  b                                           ; $4319: $80
	ret  c                                           ; $431a: $d8

	nop                                              ; $431b: $00
	ld   b, b                                        ; $431c: $40
	add  b                                           ; $431d: $80
	add  b                                           ; $431e: $80
	add  b                                           ; $431f: $80
	nop                                              ; $4320: $00
	inc  bc                                          ; $4321: $03
	ld   bc, $20c1                                   ; $4322: $01 $c1 $20
	dec  a                                           ; $4325: $3d
	add  c                                           ; $4326: $81
	ld   [hl+], a                                    ; $4327: $22
	ld   b, $fb                                      ; $4328: $06 $fb
	rlca                                             ; $432a: $07
	inc  bc                                          ; $432b: $03
	nop                                              ; $432c: $00
	inc  b                                           ; $432d: $04
	nop                                              ; $432e: $00
	inc  b                                           ; $432f: $04
	add  c                                           ; $4330: $81
	nop                                              ; $4331: $00
	inc  b                                           ; $4332: $04
	add  b                                           ; $4333: $80
	add  c                                           ; $4334: $81
	push hl                                          ; $4335: $e5
	inc  h                                           ; $4336: $24
	ccf                                              ; $4337: $3f
	add  c                                           ; $4338: $81
	inc  b                                           ; $4339: $04
	ld   b, d                                        ; $433a: $42
	db   $fd                                         ; $433b: $fd
	rlca                                             ; $433c: $07
	ld   hl, $1b3f                                   ; $433d: $21 $3f $1b
	dec  b                                           ; $4340: $05
	dec  bc                                          ; $4341: $0b
	ld   [bc], a                                     ; $4342: $02
	ld   e, l                                        ; $4343: $5d
	ld   d, l                                        ; $4344: $55
	xor  d                                           ; $4345: $aa
	xor  [hl]                                        ; $4346: $ae
	pop  de                                          ; $4347: $d1
	push de                                          ; $4348: $d5
	or   $0a                                         ; $4349: $f6 $0a
	adc  d                                           ; $434b: $8a
	adc  c                                           ; $434c: $89
	db   $fc                                         ; $434d: $fc
	xor  a                                           ; $434e: $af
	xor  h                                           ; $434f: $ac
	rst  $30                                         ; $4350: $f7
	sub  $3f                                         ; $4351: $d6 $3f
	ld   l, b                                        ; $4353: $68
	ld   d, a                                        ; $4354: $57
	adc  a                                           ; $4355: $8f
	xor  [hl]                                        ; $4356: $ae
	ld   b, a                                        ; $4357: $47
	ld   d, a                                        ; $4358: $57
	cp   e                                           ; $4359: $bb
	xor  e                                           ; $435a: $ab
	rst  $38                                         ; $435b: $ff
	ccf                                              ; $435c: $3f
	ret  nz                                          ; $435d: $c0

	cp   e                                           ; $435e: $bb
	sbc  e                                           ; $435f: $9b
	ld   hl, sp-$47                                  ; $4360: $f8 $b9
	ei                                               ; $4362: $fb
	sbc  e                                           ; $4363: $9b
	ei                                               ; $4364: $fb
	ld   a, [de]                                     ; $4365: $1a
	ld   a, e                                        ; $4366: $7b
	ld   l, c                                        ; $4367: $69
	ei                                               ; $4368: $fb
	cp   d                                           ; $4369: $ba
	ei                                               ; $436a: $fb
	sbc  e                                           ; $436b: $9b
	db   $db                                         ; $436c: $db
	inc  b                                           ; $436d: $04
	inc  c                                           ; $436e: $0c
	ld   a, a                                        ; $436f: $7f
	add  e                                           ; $4370: $83
	ld   [hl], e                                     ; $4371: $73
	ldh  a, [$7f]                                    ; $4372: $f0 $7f
	rst  JumpTable                                         ; $4374: $df
	ld   a, l                                        ; $4375: $7d
	rst  $30                                         ; $4376: $f7
	ld   e, a                                        ; $4377: $5f
	rst  $38                                         ; $4378: $ff
	dec  d                                           ; $4379: $15
	rst  $38                                         ; $437a: $ff
	pop  hl                                          ; $437b: $e1
	rst  $38                                         ; $437c: $ff
	rlca                                             ; $437d: $07
	add  c                                           ; $437e: $81
	rla                                              ; $437f: $17

Jump_077_4380:
	inc  bc                                          ; $4380: $03
	sub  c                                           ; $4381: $91
	ld   de, $1777                                   ; $4382: $11 $77 $17
	add  b                                           ; $4385: $80
	rst  $10                                         ; $4386: $d7
	add  h                                           ; $4387: $84
	rst  $30                                         ; $4388: $f7
	nop                                              ; $4389: $00
	xor  $81                                         ; $438a: $ee $81
	rra                                              ; $438c: $1f
	add  b                                           ; $438d: $80
	ld   e, $80                                      ; $438e: $1e $80
	db   $10                                         ; $4390: $10
	add  b                                           ; $4391: $80
	inc  de                                          ; $4392: $13
	add  b                                           ; $4393: $80
	db   $10                                         ; $4394: $10
	dec  b                                           ; $4395: $05
	inc  de                                          ; $4396: $13
	inc  bc                                          ; $4397: $03
	inc  de                                          ; $4398: $13
	db   $10                                         ; $4399: $10
	inc  sp                                          ; $439a: $33
	or   b                                           ; $439b: $b0
	add  e                                           ; $439c: $83
	or   d                                           ; $439d: $b2
	add  c                                           ; $439e: $81
	ld   [hl-], a                                    ; $439f: $32
	add  d                                           ; $43a0: $82
	ld   [hl], $80                                   ; $43a1: $36 $80
	jr   nc, jr_077_43a7                             ; $43a3: $30 $02

	rst  $28                                         ; $43a5: $ef
	rst  $38                                         ; $43a6: $ff

jr_077_43a7:
	db   $ed                                         ; $43a7: $ed
	add  c                                           ; $43a8: $81
	pop  de                                          ; $43a9: $d1
	add  c                                           ; $43aa: $81
	db   $fd                                         ; $43ab: $fd
	nop                                              ; $43ac: $00
	pop  bc                                          ; $43ad: $c1
	add  h                                           ; $43ae: $84
	rst  $38                                         ; $43af: $ff
	add  b                                           ; $43b0: $80
	ld   hl, sp+$00                                  ; $43b1: $f8 $00
	or   [hl]                                        ; $43b3: $b6
	add  c                                           ; $43b4: $81
	ld   b, l                                        ; $43b5: $45
	add  c                                           ; $43b6: $81
	rst  $30                                         ; $43b7: $f7
	nop                                              ; $43b8: $00
	inc  b                                           ; $43b9: $04
	add  e                                           ; $43ba: $83
	rst  $38                                         ; $43bb: $ff
	inc  bc                                          ; $43bc: $03
	rlca                                             ; $43bd: $07
	ld   sp, hl                                      ; $43be: $f9
	ld   b, c                                        ; $43bf: $41
	db   $dd                                         ; $43c0: $dd
	add  c                                           ; $43c1: $81
	ld   d, l                                        ; $43c2: $55
	add  b                                           ; $43c3: $80
	push de                                          ; $43c4: $d5
	inc  bc                                          ; $43c5: $03
	db   $dd                                         ; $43c6: $dd
	ld   e, l                                        ; $43c7: $5d
	reti                                             ; $43c8: $d9


	pop  de                                          ; $43c9: $d1
	add  d                                           ; $43ca: $82
	db   $dd                                         ; $43cb: $dd
	inc  bc                                          ; $43cc: $03
	ld   c, h                                        ; $43cd: $4c
	inc  c                                           ; $43ce: $0c
	ld   [bc], a                                     ; $43cf: $02
	ld   b, d                                        ; $43d0: $42
	add  b                                           ; $43d1: $80
	ld   c, h                                        ; $43d2: $4c
	ld   bc, $4c4e                                   ; $43d3: $01 $4e $4c
	add  c                                           ; $43d6: $81
	ld   c, [hl]                                     ; $43d7: $4e
	nop                                              ; $43d8: $00
	inc  c                                           ; $43d9: $0c
	add  d                                           ; $43da: $82
	ld   c, $01                                      ; $43db: $0e $01
	nop                                              ; $43dd: $00
	inc  b                                           ; $43de: $04
	add  b                                           ; $43df: $80
	db   $fc                                         ; $43e0: $fc
	add  b                                           ; $43e1: $80
	dec  b                                           ; $43e2: $05
	ld   bc, $84f5                                   ; $43e3: $01 $f5 $84
	add  c                                           ; $43e6: $81
	push af                                          ; $43e7: $f5
	nop                                              ; $43e8: $00
	add  h                                           ; $43e9: $84
	add  c                                           ; $43ea: $81
	db   $fd                                         ; $43eb: $fd
	ld   bc, $05fc                                   ; $43ec: $01 $fc $05
	add  b                                           ; $43ef: $80
	ld   bc, $0000                                   ; $43f0: $01 $00 $00
	add  b                                           ; $43f3: $80
	ld   hl, sp+$01                                  ; $43f4: $f8 $01
	ld   [hl], a                                     ; $43f6: $77
	ld   b, l                                        ; $43f7: $45
	add  c                                           ; $43f8: $81
	ld   [hl], a                                     ; $43f9: $77
	nop                                              ; $43fa: $00
	ld   b, l                                        ; $43fb: $45
	add  c                                           ; $43fc: $81
	rst  $38                                         ; $43fd: $ff
	inc  bc                                          ; $43fe: $03
	ld   a, a                                        ; $43ff: $7f
	ld   c, l                                        ; $4400: $4d
	inc  h                                           ; $4401: $24
	db   $e4                                         ; $4402: $e4
	add  c                                           ; $4403: $81
	dec  l                                           ; $4404: $2d
	ld   bc, $2d24                                   ; $4405: $01 $24 $2d
	add  d                                           ; $4408: $82
	inc  h                                           ; $4409: $24
	nop                                              ; $440a: $00
	dec  l                                           ; $440b: $2d
	add  b                                           ; $440c: $80
	inc  l                                           ; $440d: $2c
	ld   a, [bc]                                     ; $440e: $0a
	dec  l                                           ; $440f: $2d
	jp   c, $1b3b                                    ; $4410: $da $3b $1b

	add  sp, -$38                                    ; $4413: $e8 $c8
	ei                                               ; $4415: $fb
	dec  sp                                          ; $4416: $3b
	ei                                               ; $4417: $fb
	adc  b                                           ; $4418: $88
	cp   e                                           ; $4419: $bb
	add  b                                           ; $441a: $80
	cp   c                                           ; $441b: $b9
	inc  b                                           ; $441c: $04
	ret  c                                           ; $441d: $d8

	cp   e                                           ; $441e: $bb
	sbc  b                                           ; $441f: $98
	ei                                               ; $4420: $fb
	inc  b                                           ; $4421: $04
	add  b                                           ; $4422: $80
	rst  $38                                         ; $4423: $ff
	ld   b, $7f                                      ; $4424: $06 $7f
	ld   [de], a                                     ; $4426: $12
	ld   [$fa8b], a                                  ; $4427: $ea $8b $fa
	add  hl, bc                                      ; $442a: $09
	ei                                               ; $442b: $fb
	add  b                                           ; $442c: $80
	cp   d                                           ; $442d: $ba
	inc  b                                           ; $442e: $04
	sbc  e                                           ; $442f: $9b
	ei                                               ; $4430: $fb
	sbc  d                                           ; $4431: $9a
	ld   a, [$83fd]                                  ; $4432: $fa $fd $83
	rla                                              ; $4435: $17
	nop                                              ; $4436: $00
	rst  $30                                         ; $4437: $f7
	add  e                                           ; $4438: $83
	rla                                              ; $4439: $17
	add  b                                           ; $443a: $80
	ld   [hl], a                                     ; $443b: $77
	add  b                                           ; $443c: $80
	scf                                              ; $443d: $37
	nop                                              ; $443e: $00
	push af                                          ; $443f: $f5
	add  c                                           ; $4440: $81
	rra                                              ; $4441: $1f
	rlca                                             ; $4442: $07
	rrca                                             ; $4443: $0f
	rra                                              ; $4444: $1f
	inc  e                                           ; $4445: $1c
	rra                                              ; $4446: $1f
	inc  e                                           ; $4447: $1c
	rra                                              ; $4448: $1f
	inc  e                                           ; $4449: $1c
	inc  c                                           ; $444a: $0c
	add  b                                           ; $444b: $80
	rra                                              ; $444c: $1f
	add  b                                           ; $444d: $80
	ld   c, $00                                      ; $444e: $0e $00
	add  hl, sp                                      ; $4450: $39
	add  l                                           ; $4451: $85
	ld   [hl-], a                                    ; $4452: $32
	nop                                              ; $4453: $00
	db   $10                                         ; $4454: $10
	add  d                                           ; $4455: $82
	scf                                              ; $4456: $37
	add  c                                           ; $4457: $81
	ccf                                              ; $4458: $3f
	nop                                              ; $4459: $00
	ret  nz                                          ; $445a: $c0

	add  l                                           ; $445b: $85
	rst  $38                                         ; $445c: $ff
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	add  l                                           ; $445f: $85
	rst  $38                                         ; $4460: $ff
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	add  l                                           ; $4463: $85
	rst  $38                                         ; $4464: $ff
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	add  e                                           ; $4467: $83
	rst  $38                                         ; $4468: $ff
	add  b                                           ; $4469: $80
	db   $fc                                         ; $446a: $fc
	nop                                              ; $446b: $00
	ld   h, d                                        ; $446c: $62
	add  e                                           ; $446d: $83
	db   $dd                                         ; $446e: $dd
	ld   [bc], a                                     ; $446f: $02
	ret  nz                                          ; $4470: $c0

	rst  JumpTable                                         ; $4471: $df
	ld   e, a                                        ; $4472: $5f
	add  e                                           ; $4473: $83
	rst  JumpTable                                         ; $4474: $df
	add  b                                           ; $4475: $80
	ld   b, b                                        ; $4476: $40
	nop                                              ; $4477: $00
	pop  de                                          ; $4478: $d1
	add  e                                           ; $4479: $83
	ld   c, $00                                      ; $447a: $0e $00
	nop                                              ; $447c: $00
	add  e                                           ; $447d: $83
	rst  $38                                         ; $447e: $ff
	add  b                                           ; $447f: $80
	db   $fc                                         ; $4480: $fc
	add  b                                           ; $4481: $80
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	ld   b, $83                                      ; $4484: $06 $83
	db   $fd                                         ; $4486: $fd
	nop                                              ; $4487: $00
	inc  b                                           ; $4488: $04
	add  b                                           ; $4489: $80
	db   $fd                                         ; $448a: $fd
	add  c                                           ; $448b: $81
	rst  $38                                         ; $448c: $ff
	add  e                                           ; $448d: $83
	nop                                              ; $448e: $00
	add  c                                           ; $448f: $81
	rst  $38                                         ; $4490: $ff
	ld   [bc], a                                     ; $4491: $02
	ld   hl, sp-$01                                  ; $4492: $f8 $ff
	rlca                                             ; $4494: $07
	add  c                                           ; $4495: $81
	rst  $38                                         ; $4496: $ff
	add  b                                           ; $4497: $80
	ld   hl, sp-$80                                  ; $4498: $f8 $80
	nop                                              ; $449a: $00
	add  b                                           ; $449b: $80
	rra                                              ; $449c: $1f
	inc  b                                           ; $449d: $04
	ei                                               ; $449e: $fb
	dec  l                                           ; $449f: $2d
	and  h                                           ; $44a0: $a4
	xor  l                                           ; $44a1: $ad
	inc  h                                           ; $44a2: $24
	add  b                                           ; $44a3: $80
	db   $ed                                         ; $44a4: $ed
	add  c                                           ; $44a5: $81
	db   $fd                                         ; $44a6: $fd
	add  b                                           ; $44a7: $80
	inc  b                                           ; $44a8: $04
	ld   bc, $0107                                   ; $44a9: $01 $07 $01
	add  c                                           ; $44ac: $81
	rst  $38                                         ; $44ad: $ff
	inc  bc                                          ; $44ae: $03
	ei                                               ; $44af: $fb
	ld   [$08fb], sp                                 ; $44b0: $08 $fb $08
	add  c                                           ; $44b3: $81
	ei                                               ; $44b4: $fb
	add  b                                           ; $44b5: $80
	ld   hl, sp-$80                                  ; $44b6: $f8 $80
	ld   [$fb84], sp                                 ; $44b8: $08 $84 $fb
	dec  b                                           ; $44bb: $05
	ld   a, [bc]                                     ; $44bc: $0a
	ld   a, [$fb0b]                                  ; $44bd: $fa $0b $fb
	ld   a, [$80fe]                                  ; $44c0: $fa $fe $80
	nop                                              ; $44c3: $00
	add  b                                           ; $44c4: $80
	ld   a, a                                        ; $44c5: $7f
	nop                                              ; $44c6: $00
	rst  $38                                         ; $44c7: $ff
	add  b                                           ; $44c8: $80
	cp   $01                                         ; $44c9: $fe $01
	add  c                                           ; $44cb: $81
	ld   h, a                                        ; $44cc: $67
	add  c                                           ; $44cd: $81
	rla                                              ; $44ce: $17
	add  b                                           ; $44cf: $80
	rst  $30                                         ; $44d0: $f7
	add  d                                           ; $44d1: $82
	rla                                              ; $44d2: $17
	add  c                                           ; $44d3: $81
	rst  $30                                         ; $44d4: $f7
	add  b                                           ; $44d5: $80
	rla                                              ; $44d6: $17
	add  b                                           ; $44d7: $80
	rst  $30                                         ; $44d8: $f7
	nop                                              ; $44d9: $00
	dec  e                                           ; $44da: $1d
	add  b                                           ; $44db: $80
	rra                                              ; $44dc: $1f
	add  d                                           ; $44dd: $82
	inc  c                                           ; $44de: $0c
	inc  b                                           ; $44df: $04
	rrca                                             ; $44e0: $0f
	inc  e                                           ; $44e1: $1c
	rrca                                             ; $44e2: $0f
	inc  c                                           ; $44e3: $0c
	inc  d                                           ; $44e4: $14
	add  c                                           ; $44e5: $81
	nop                                              ; $44e6: $00
	ld   bc, $3e1e                                   ; $44e7: $01 $1e $3e
	add  d                                           ; $44ea: $82
	nop                                              ; $44eb: $00
	add  b                                           ; $44ec: $80
	ld   bc, $3f81                                   ; $44ed: $01 $81 $3f
	add  b                                           ; $44f0: $80
	ld   a, [hl+]                                    ; $44f1: $2a
	add  b                                           ; $44f2: $80
	dec  d                                           ; $44f3: $15
	ld   bc, $d52a                                   ; $44f4: $01 $2a $d5
	add  e                                           ; $44f7: $83
	nop                                              ; $44f8: $00
	add  c                                           ; $44f9: $81
	rst  $38                                         ; $44fa: $ff
	add  b                                           ; $44fb: $80
	ld   d, l                                        ; $44fc: $55
	add  b                                           ; $44fd: $80
	xor  d                                           ; $44fe: $aa
	add  b                                           ; $44ff: $80
	ld   d, l                                        ; $4500: $55
	ld   bc, $5fa0                                   ; $4501: $01 $a0 $5f
	add  c                                           ; $4504: $81
	nop                                              ; $4505: $00
	add  b                                           ; $4506: $80
	ccf                                              ; $4507: $3f
	nop                                              ; $4508: $00
	rst  $38                                         ; $4509: $ff
	add  b                                           ; $450a: $80
	ld   [$5580], a                                  ; $450b: $ea $80 $55
	add  b                                           ; $450e: $80
	xor  d                                           ; $450f: $aa
	add  b                                           ; $4510: $80
	ld   d, b                                        ; $4511: $50
	dec  b                                           ; $4512: $05
	nop                                              ; $4513: $00
	sbc  a                                           ; $4514: $9f
	ld   b, b                                        ; $4515: $40
	daa                                              ; $4516: $27
	rlca                                             ; $4517: $07

jr_077_4518:
	rst  $38                                         ; $4518: $ff
	add  b                                           ; $4519: $80
	db   $fd                                         ; $451a: $fd
	add  b                                           ; $451b: $80
	xor  d                                           ; $451c: $aa
	add  b                                           ; $451d: $80
	ld   d, l                                        ; $451e: $55
	add  b                                           ; $451f: $80
	and  b                                           ; $4520: $a0
	inc  b                                           ; $4521: $04
	nop                                              ; $4522: $00
	rlca                                             ; $4523: $07
	nop                                              ; $4524: $00
	ld   hl, sp+$00                                  ; $4525: $f8 $00
	add  c                                           ; $4527: $81
	rst  $38                                         ; $4528: $ff
	add  b                                           ; $4529: $80
	ld   d, l                                        ; $452a: $55
	add  b                                           ; $452b: $80
	xor  d                                           ; $452c: $aa
	add  b                                           ; $452d: $80
	ld   b, b                                        ; $452e: $40
	inc  b                                           ; $452f: $04
	nop                                              ; $4530: $00
	rra                                              ; $4531: $1f
	nop                                              ; $4532: $00
	rst  $28                                         ; $4533: $ef
	rrca                                             ; $4534: $0f
	add  c                                           ; $4535: $81
	rst  $38                                         ; $4536: $ff
	add  b                                           ; $4537: $80
	xor  d                                           ; $4538: $aa
	add  b                                           ; $4539: $80
	ld   d, l                                        ; $453a: $55
	add  b                                           ; $453b: $80
	and  b                                           ; $453c: $a0
	inc  b                                           ; $453d: $04
	nop                                              ; $453e: $00
	ld   a, [hl]                                     ; $453f: $7e
	ld   bc, $74f4                                   ; $4540: $01 $f4 $74
	add  b                                           ; $4543: $80
	add  b                                           ; $4544: $80
	add  c                                           ; $4545: $81
	rst  $38                                         ; $4546: $ff
	add  b                                           ; $4547: $80
	xor  e                                           ; $4548: $ab
	inc  b                                           ; $4549: $04
	ld   b, b                                        ; $454a: $40
	ld   b, e                                        ; $454b: $43
	nop                                              ; $454c: $00
	or   $0a                                         ; $454d: $f6 $0a
	add  b                                           ; $454f: $80
	ret  nc                                          ; $4550: $d0

	add  d                                           ; $4551: $82
	nop                                              ; $4552: $00
	add  c                                           ; $4553: $81
	rst  $38                                         ; $4554: $ff
	inc  b                                           ; $4555: $04
	ldh  [$ef], a                                    ; $4556: $e0 $ef
	nop                                              ; $4558: $00
	ldh  a, [rP1]                                    ; $4559: $f0 $00
	add  b                                           ; $455b: $80
	add  b                                           ; $455c: $80
	add  h                                           ; $455d: $84
	nop                                              ; $455e: $00
	ld   b, $ff                                      ; $455f: $06 $ff
	ld   [$0b38], sp                                 ; $4561: $08 $38 $0b
	db   $db                                         ; $4564: $db
	dec  e                                           ; $4565: $1d
	ld   [bc], a                                     ; $4566: $02
	add  a                                           ; $4567: $87
	nop                                              ; $4568: $00
	inc  bc                                          ; $4569: $03
	cp   $7e                                         ; $456a: $fe $7e
	nop                                              ; $456c: $00
	add  b                                           ; $456d: $80
	add  b                                           ; $456e: $80
	db   $fc                                         ; $456f: $fc
	add  b                                           ; $4570: $80
	inc  bc                                          ; $4571: $03
	add  [hl]                                        ; $4572: $86
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	add  hl, de                                      ; $4575: $19
	add  e                                           ; $4576: $83
	rla                                              ; $4577: $17
	add  b                                           ; $4578: $80
	rst  $30                                         ; $4579: $f7
	add  d                                           ; $457a: $82
	rla                                              ; $457b: $17
	add  b                                           ; $457c: $80
	ld   de, $1780                                   ; $457d: $11 $80 $17
	nop                                              ; $4580: $00
	xor  $83                                         ; $4581: $ee $83
	nop                                              ; $4583: $00
	add  b                                           ; $4584: $80
	inc  bc                                          ; $4585: $03
	add  b                                           ; $4586: $80
	rrca                                             ; $4587: $0f
	add  l                                           ; $4588: $85
	rra                                              ; $4589: $1f
	add  b                                           ; $458a: $80
	db   $10                                         ; $458b: $10
	add  c                                           ; $458c: $81
	nop                                              ; $458d: $00
	inc  bc                                          ; $458e: $03
	rra                                              ; $458f: $1f
	nop                                              ; $4590: $00
	jr   nz, jr_077_4593                             ; $4591: $20 $00

jr_077_4593:
	add  b                                           ; $4593: $80
	ld   a, [de]                                     ; $4594: $1a
	add  b                                           ; $4595: $80
	jr   nz, jr_077_4518                             ; $4596: $20 $80

	nop                                              ; $4598: $00
	nop                                              ; $4599: $00
	ccf                                              ; $459a: $3f
	add  c                                           ; $459b: $81
	nop                                              ; $459c: $00
	inc  bc                                          ; $459d: $03
	ccf                                              ; $459e: $3f
	nop                                              ; $459f: $00
	jp   $8003                                       ; $45a0: $c3 $03 $80


	ld   l, h                                        ; $45a3: $6c
	add  b                                           ; $45a4: $80
	add  b                                           ; $45a5: $80
	add  d                                           ; $45a6: $82
	nop                                              ; $45a7: $00
	inc  bc                                          ; $45a8: $03
	db   $fc                                         ; $45a9: $fc
	nop                                              ; $45aa: $00
	db   $fc                                         ; $45ab: $fc
	nop                                              ; $45ac: $00
	add  b                                           ; $45ad: $80
	dec  e                                           ; $45ae: $1d
	add  b                                           ; $45af: $80
	ldh  [$86], a                                    ; $45b0: $e0 $86
	nop                                              ; $45b2: $00
	add  b                                           ; $45b3: $80
	inc  bc                                          ; $45b4: $03
	add  b                                           ; $45b5: $80
	ld   a, h                                        ; $45b6: $7c
	add  b                                           ; $45b7: $80
	add  b                                           ; $45b8: $80
	adc  b                                           ; $45b9: $88
	nop                                              ; $45ba: $00
	add  b                                           ; $45bb: $80
	ld   b, b                                        ; $45bc: $40
	adc  b                                           ; $45bd: $88
	nop                                              ; $45be: $00
	add  b                                           ; $45bf: $80
	ret  nz                                          ; $45c0: $c0

	adc  d                                           ; $45c1: $8a
	nop                                              ; $45c2: $00
	add  b                                           ; $45c3: $80
	ld   b, b                                        ; $45c4: $40
	adc  b                                           ; $45c5: $88
	nop                                              ; $45c6: $00
	add  b                                           ; $45c7: $80
	sub  h                                           ; $45c8: $94
	add  b                                           ; $45c9: $80
	inc  bc                                          ; $45ca: $03
	adc  h                                           ; $45cb: $8c
	nop                                              ; $45cc: $00
	add  b                                           ; $45cd: $80
	ldh  [$80], a                                    ; $45ce: $e0 $80
	rra                                              ; $45d0: $1f
	adc  b                                           ; $45d1: $88
	nop                                              ; $45d2: $00
	add  b                                           ; $45d3: $80
	ld   h, b                                        ; $45d4: $60
	add  b                                           ; $45d5: $80
	ld   c, $80                                      ; $45d6: $0e $80
	add  c                                           ; $45d8: $81
	add  b                                           ; $45d9: $80
	ld   a, a                                        ; $45da: $7f
	add  b                                           ; $45db: $80
	rrca                                             ; $45dc: $0f
	add  d                                           ; $45dd: $82
	nop                                              ; $45de: $00
	add  b                                           ; $45df: $80
	ld   bc, $0780                                   ; $45e0: $01 $80 $07
	add  b                                           ; $45e3: $80
	ccf                                              ; $45e4: $3f
	add  d                                           ; $45e5: $82
	rst  $38                                         ; $45e6: $ff
	inc  bc                                          ; $45e7: $03
	cp   $ff                                         ; $45e8: $fe $ff
	jr   @+$19                                       ; $45ea: $18 $17

	add  b                                           ; $45ec: $80
	ld   [hl], a                                     ; $45ed: $77
	adc  c                                           ; $45ee: $89
	rst  $30                                         ; $45ef: $f7
	ld   bc, $d1d7                                   ; $45f0: $01 $d7 $d1
	adc  b                                           ; $45f3: $88
	rra                                              ; $45f4: $1f
	add  b                                           ; $45f5: $80
	dec  e                                           ; $45f6: $1d
	add  b                                           ; $45f7: $80
	rla                                              ; $45f8: $17
	inc  b                                           ; $45f9: $04
	dec  e                                           ; $45fa: $1d
	ld   [hl+], a                                    ; $45fb: $22
	nop                                              ; $45fc: $00
	ret  nz                                          ; $45fd: $c0

	ldh  [$80], a                                    ; $45fe: $e0 $80
	db   $fc                                         ; $4600: $fc
	ld   bc, $ff1f                                   ; $4601: $01 $1f $ff
	add  b                                           ; $4604: $80
	rra                                              ; $4605: $1f
	add  b                                           ; $4606: $80
	ld   bc, $0088                                   ; $4607: $01 $88 $00
	add  b                                           ; $460a: $80
	ret  nz                                          ; $460b: $c0

	add  b                                           ; $460c: $80
	db   $fc                                         ; $460d: $fc
	add  b                                           ; $460e: $80
	rst  $38                                         ; $460f: $ff
	add  b                                           ; $4610: $80
	rra                                              ; $4611: $1f
	add  b                                           ; $4612: $80
	ld   bc, $0088                                   ; $4613: $01 $88 $00
	add  b                                           ; $4616: $80
	ret  nz                                          ; $4617: $c0

	add  b                                           ; $4618: $80
	db   $fc                                         ; $4619: $fc
	add  b                                           ; $461a: $80
	rst  $38                                         ; $461b: $ff
	adc  h                                           ; $461c: $8c
	nop                                              ; $461d: $00
	add  b                                           ; $461e: $80
	ret  nz                                          ; $461f: $c0

	xor  b                                           ; $4620: $a8
	nop                                              ; $4621: $00
	add  b                                           ; $4622: $80
	inc  bc                                          ; $4623: $03
	dec  b                                           ; $4624: $05
	ld   a, [bc]                                     ; $4625: $0a
	rrca                                             ; $4626: $0f
	db   $10                                         ; $4627: $10
	ccf                                              ; $4628: $3f
	ld   a, [hl+]                                    ; $4629: $2a
	nop                                              ; $462a: $00
	add  b                                           ; $462b: $80
	ld   bc, $0780                                   ; $462c: $01 $80 $07
	add  b                                           ; $462f: $80
	rra                                              ; $4630: $1f
	add  hl, bc                                      ; $4631: $09
	ld   a, d                                        ; $4632: $7a
	ld   a, a                                        ; $4633: $7f
	ret  nc                                          ; $4634: $d0

	rst  $38                                         ; $4635: $ff
	add  b                                           ; $4636: $80
	rst  $38                                         ; $4637: $ff
	nop                                              ; $4638: $00
	rst  $38                                         ; $4639: $ff
	push de                                          ; $463a: $d5
	ld   a, a                                        ; $463b: $7f
	add  b                                           ; $463c: $80
	rst  $38                                         ; $463d: $ff
	inc  e                                           ; $463e: $1c
	rst  $30                                         ; $463f: $f7
	rst  $38                                         ; $4640: $ff
	push de                                          ; $4641: $d5
	rst  $38                                         ; $4642: $ff
	adc  b                                           ; $4643: $88
	rst  $38                                         ; $4644: $ff
	nop                                              ; $4645: $00
	rst  $38                                         ; $4646: $ff
	nop                                              ; $4647: $00
	rst  $38                                         ; $4648: $ff
	nop                                              ; $4649: $00
	rst  $38                                         ; $464a: $ff
	ld   d, l                                        ; $464b: $55
	rst  $38                                         ; $464c: $ff
	db   $ed                                         ; $464d: $ed
	rst  $38                                         ; $464e: $ff
	xor  b                                           ; $464f: $a8
	rst  $38                                         ; $4650: $ff
	db   $10                                         ; $4651: $10
	rst  $38                                         ; $4652: $ff
	nop                                              ; $4653: $00
	rst  $38                                         ; $4654: $ff
	nop                                              ; $4655: $00
	rst  $38                                         ; $4656: $ff
	nop                                              ; $4657: $00
	rst  $38                                         ; $4658: $ff
	nop                                              ; $4659: $00
	rst  $38                                         ; $465a: $ff
	ld   d, e                                        ; $465b: $53
	add  b                                           ; $465c: $80
	or   a                                           ; $465d: $b7
	add  b                                           ; $465e: $80
	ld   d, a                                        ; $465f: $57
	add  b                                           ; $4660: $80
	or   a                                           ; $4661: $b7
	add  b                                           ; $4662: $80
	ld   d, a                                        ; $4663: $57
	add  b                                           ; $4664: $80
	or   a                                           ; $4665: $b7
	add  b                                           ; $4666: $80
	ld   d, a                                        ; $4667: $57
	add  b                                           ; $4668: $80
	or   a                                           ; $4669: $b7
	ld   bc, $5157                                   ; $466a: $01 $57 $51
	add  b                                           ; $466d: $80
	ld   a, [bc]                                     ; $466e: $0a
	add  b                                           ; $466f: $80
	dec  d                                           ; $4670: $15
	add  b                                           ; $4671: $80
	ld   a, [bc]                                     ; $4672: $0a
	add  b                                           ; $4673: $80
	dec  d                                           ; $4674: $15
	add  b                                           ; $4675: $80
	ld   a, [bc]                                     ; $4676: $0a
	add  b                                           ; $4677: $80
	dec  d                                           ; $4678: $15
	add  b                                           ; $4679: $80
	ld   a, [bc]                                     ; $467a: $0a
	ld   bc, $ea15                                   ; $467b: $01 $15 $ea
	db   $fd                                         ; $467e: $fd
	nop                                              ; $467f: $00
	ld   d, b                                        ; $4680: $50
	ld   bc, $0f85                                   ; $4681: $01 $85 $0f
	dec  de                                          ; $4684: $1b
	dec  bc                                          ; $4685: $0b
	ld   a, [bc]                                     ; $4686: $0a
	rrca                                             ; $4687: $0f
	inc  b                                           ; $4688: $04
	ld   a, [bc]                                     ; $4689: $0a
	rlca                                             ; $468a: $07
	rrca                                             ; $468b: $0f
	ld   [$e70f], sp                                 ; $468c: $08 $0f $e7
	sbc  l                                           ; $468f: $9d
	adc  c                                           ; $4690: $89
	db   $fc                                         ; $4691: $fc
	adc  b                                           ; $4692: $88
	cp   h                                           ; $4693: $bc
	call nz, $fcff                                   ; $4694: $c4 $ff $fc
	ei                                               ; $4697: $fb
	ld   hl, sp-$02                                  ; $4698: $f8 $fe

jr_077_469a:
	jr   c, jr_077_469a                              ; $469a: $38 $fe

	ld   a, $fe                                      ; $469c: $3e $fe
	db   $fc                                         ; $469e: $fc
	nop                                              ; $469f: $00
	ld   [hl], b                                     ; $46a0: $70
	add  e                                           ; $46a1: $83
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	add  c                                           ; $46a4: $81
	add  c                                           ; $46a5: $81
	ld   bc, $000c                                   ; $46a6: $01 $0c $00
	ld   bc, $0181                                   ; $46a9: $01 $81 $01
	ld   [hl], l                                     ; $46ac: $75
	inc  bc                                          ; $46ad: $03
	dec  de                                          ; $46ae: $1b
	add  hl, de                                      ; $46af: $19
	ld   e, c                                        ; $46b0: $59
	ld   d, [hl]                                     ; $46b1: $56
	ld   a, [hl]                                     ; $46b2: $7e
	ld   [hl], e                                     ; $46b3: $73
	rst  $38                                         ; $46b4: $ff
	add  b                                           ; $46b5: $80
	ld   hl, sp+$0b                                  ; $46b6: $f8 $0b
	ei                                               ; $46b8: $fb
	rst  JumpTable                                         ; $46b9: $df
	rst  $10                                         ; $46ba: $d7
	ld   l, a                                        ; $46bb: $6f
	ld   h, a                                        ; $46bc: $67
	ld   b, $a1                                      ; $46bd: $06 $a1
	and  a                                           ; $46bf: $a7
	add  a                                           ; $46c0: $87
	adc  a                                           ; $46c1: $8f
	rrca                                             ; $46c2: $0f
	ccf                                              ; $46c3: $3f
	add  b                                           ; $46c4: $80
	cp   a                                           ; $46c5: $bf
	nop                                              ; $46c6: $00
	ccf                                              ; $46c7: $3f
	add  b                                           ; $46c8: $80
	dec  a                                           ; $46c9: $3d
	add  b                                           ; $46ca: $80
	dec  sp                                          ; $46cb: $3b
	add  b                                           ; $46cc: $80
	ccf                                              ; $46cd: $3f
	ld   b, $00                                      ; $46ce: $06 $00
	reti                                             ; $46d0: $d9


	ld   sp, hl                                      ; $46d1: $f9
	add  sp, $2a                                     ; $46d2: $e8 $2a
	add  sp, $18                                     ; $46d4: $e8 $18
	add  c                                           ; $46d6: $81
	ldh  a, [rSC]                                    ; $46d7: $f0 $02
	ld   [de], a                                     ; $46d9: $12
	ldh  a, [rP1]                                    ; $46da: $f0 $00
	add  b                                           ; $46dc: $80
	sbc  l                                           ; $46dd: $9d
	dec  l                                           ; $46de: $2d
	rst  $38                                         ; $46df: $ff
	cp   b                                           ; $46e0: $b8
	add  b                                           ; $46e1: $80
	ret  nc                                          ; $46e2: $d0

	ret  nz                                          ; $46e3: $c0

	call nz, $c740                                   ; $46e4: $c4 $40 $c7
	add  h                                           ; $46e7: $84
	rst  $38                                         ; $46e8: $ff
	rst  $28                                         ; $46e9: $ef
	ccf                                              ; $46ea: $3f
	rst  $38                                         ; $46eb: $ff
	rst  $20                                         ; $46ec: $e7
	ld   a, a                                        ; $46ed: $7f
	sub  $8e                                         ; $46ee: $d6 $8e
	db   $fd                                         ; $46f0: $fd
	rrca                                             ; $46f1: $0f
	inc  b                                           ; $46f2: $04
	rlca                                             ; $46f3: $07
	dec  a                                           ; $46f4: $3d
	rrca                                             ; $46f5: $0f
	ei                                               ; $46f6: $fb
	ccf                                              ; $46f7: $3f
	rst  $20                                         ; $46f8: $e7
	rst  $38                                         ; $46f9: $ff
	ldh  [rIE], a                                    ; $46fa: $e0 $ff
	sub  b                                           ; $46fc: $90
	sub  a                                           ; $46fd: $97
	rlca                                             ; $46fe: $07
	db   $fc                                         ; $46ff: $fc
	nop                                              ; $4700: $00
	rst  $38                                         ; $4701: $ff
	jr   nc, @+$01                                   ; $4702: $30 $ff

	call z, $2d3e                                    ; $4704: $cc $3e $2d
	rst  $38                                         ; $4707: $ff
	ld   [de], a                                     ; $4708: $12
	cp   $e0                                         ; $4709: $fe $e0
	rst  $38                                         ; $470b: $ff
	rra                                              ; $470c: $1f
	add  b                                           ; $470d: $80
	ccf                                              ; $470e: $3f
	ld   [bc], a                                     ; $470f: $02
	ld   hl, sp-$71                                  ; $4710: $f8 $8f
	ld   [hl], a                                     ; $4712: $77
	add  b                                           ; $4713: $80
	ld   hl, sp-$80                                  ; $4714: $f8 $80
	ld   b, a                                        ; $4716: $47
	add  b                                           ; $4717: $80
	inc  l                                           ; $4718: $2c
	add  b                                           ; $4719: $80
	ldh  a, [rSC]                                    ; $471a: $f0 $02
	ldh  [$e6], a                                    ; $471c: $e0 $e6
	ld   b, $80                                      ; $471e: $06 $80
	dec  b                                           ; $4720: $05
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	add  b                                           ; $4723: $80
	ld   bc, $0206                                   ; $4724: $01 $06 $02
	ld   [hl+], a                                    ; $4727: $22
	and  b                                           ; $4728: $a0
	sub  $16                                         ; $4729: $d6 $16
	ld   c, a                                        ; $472b: $4f
	rrca                                             ; $472c: $0f
	add  b                                           ; $472d: $80
	ei                                               ; $472e: $fb
	add  b                                           ; $472f: $80
	rst  $28                                         ; $4730: $ef
	add  b                                           ; $4731: $80
	add  b                                           ; $4732: $80
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	add  b                                           ; $4735: $80
	ld   l, a                                        ; $4736: $6f
	add  b                                           ; $4737: $80
	inc  hl                                          ; $4738: $23
	add  b                                           ; $4739: $80
	adc  l                                           ; $473a: $8d
	dec  b                                           ; $473b: $05
	inc  bc                                          ; $473c: $03
	db   $e3                                         ; $473d: $e3
	rst  ToBoot                                         ; $473e: $c7
	ld   [hl], a                                     ; $473f: $77
	ld   c, a                                        ; $4740: $4f
	rra                                              ; $4741: $1f
	add  b                                           ; $4742: $80
	ld   bc, $0016                                   ; $4743: $01 $16 $00
	ld   b, h                                        ; $4746: $44
	or   b                                           ; $4747: $b0
	rst  $38                                         ; $4748: $ff
	di                                               ; $4749: $f3
	rst  $38                                         ; $474a: $ff
	ld   b, [hl]                                     ; $474b: $46
	rst  $38                                         ; $474c: $ff
	adc  $ff                                         ; $474d: $ce $ff
	or   e                                           ; $474f: $b3
	rst  $38                                         ; $4750: $ff
	call z, Call_077_727f                            ; $4751: $cc $7f $72
	sbc  $52                                         ; $4754: $de $52
	rst  $28                                         ; $4756: $ef
	ld   l, a                                        ; $4757: $6f
	ldh  a, [$f8]                                    ; $4758: $f0 $f8
	ldh  a, [$f6]                                    ; $475a: $f0 $f6
	add  b                                           ; $475c: $80
	ldh  a, [rAUD1LOW]                               ; $475d: $f0 $13
	push af                                          ; $475f: $f5
	db   $f4                                         ; $4760: $f4
	push af                                          ; $4761: $f5
	db   $e4                                         ; $4762: $e4
	ldh  a, [$ec]                                    ; $4763: $f0 $ec
	ld   a, h                                        ; $4765: $7c
	ld   [hl], b                                     ; $4766: $70
	rst  $38                                         ; $4767: $ff
	cpl                                              ; $4768: $2f
	nop                                              ; $4769: $00
	inc  b                                           ; $476a: $04
	nop                                              ; $476b: $00
	sub  d                                           ; $476c: $92
	ld   [bc], a                                     ; $476d: $02
	ld   b, d                                        ; $476e: $42
	sbc  d                                           ; $476f: $9a
	sbc  [hl]                                        ; $4770: $9e
	ld   hl, sp-$06                                  ; $4771: $f8 $fa
	add  d                                           ; $4773: $82
	nop                                              ; $4774: $00
	add  b                                           ; $4775: $80
	ldh  a, [rP1]                                    ; $4776: $f0 $00
	nop                                              ; $4778: $00
	add  b                                           ; $4779: $80
	sub  d                                           ; $477a: $92
	ld   c, $de                                      ; $477b: $0e $de
	ret  nz                                          ; $477d: $c0

	push af                                          ; $477e: $f5
	jp   nz, $93f2                                   ; $477f: $c2 $f2 $93

	rlca                                             ; $4782: $07
	nop                                              ; $4783: $00
	inc  sp                                          ; $4784: $33
	nop                                              ; $4785: $00
	jr   c, jr_077_4788                              ; $4786: $38 $00

jr_077_4788:
	or   d                                           ; $4788: $b2
	ld   b, $00                                      ; $4789: $06 $00
	add  b                                           ; $478b: $80
	ld   [$0c80], sp                                 ; $478c: $08 $80 $0c
	add  b                                           ; $478f: $80
	dec  bc                                          ; $4790: $0b
	add  d                                           ; $4791: $82
	rrca                                             ; $4792: $0f
	add  b                                           ; $4793: $80
	dec  c                                           ; $4794: $0d
	ld   [bc], a                                     ; $4795: $02
	rrca                                             ; $4796: $0f
	or   $08                                         ; $4797: $f6 $08
	add  c                                           ; $4799: $81
	nop                                              ; $479a: $00
	ld   bc, $b1b0                                   ; $479b: $01 $b0 $b1
	add  b                                           ; $479e: $80
	cp   h                                           ; $479f: $bc
	add  b                                           ; $47a0: $80
	add  hl, hl                                      ; $47a1: $29
	add  e                                           ; $47a2: $83
	rst  $38                                         ; $47a3: $ff
	ld   bc, $01fe                                   ; $47a4: $01 $fe $01
	add  b                                           ; $47a7: $80
	nop                                              ; $47a8: $00
	inc  b                                           ; $47a9: $04
	inc  b                                           ; $47aa: $04
	ld   b, b                                        ; $47ab: $40
	ld   b, d                                        ; $47ac: $42
	ld   d, b                                        ; $47ad: $50
	ld   d, [hl]                                     ; $47ae: $56
	add  b                                           ; $47af: $80
	ldh  a, [$80]                                    ; $47b0: $f0 $80
	ldh  [c], a                                      ; $47b2: $e2
	add  c                                           ; $47b3: $81
	rst  $38                                         ; $47b4: $ff
	inc  bc                                          ; $47b5: $03
	scf                                              ; $47b6: $37
	ret  nz                                          ; $47b7: $c0

	sbc  a                                           ; $47b8: $9f
	add  a                                           ; $47b9: $87
	add  b                                           ; $47ba: $80
	nop                                              ; $47bb: $00
	ld   [bc], a                                     ; $47bc: $02
	ld   de, $0100                                   ; $47bd: $11 $00 $01
	add  b                                           ; $47c0: $80
	inc  e                                           ; $47c1: $1c
	add  b                                           ; $47c2: $80
	ccf                                              ; $47c3: $3f
	add  b                                           ; $47c4: $80
	ret  nz                                          ; $47c5: $c0

	inc  b                                           ; $47c6: $04

Jump_077_47c7:
	sbc  a                                           ; $47c7: $9f
	and  c                                           ; $47c8: $a1
	ld   a, $81                                      ; $47c9: $3e $81
	ld   bc, $0081                                   ; $47cb: $01 $81 $00
	dec  b                                           ; $47ce: $05
	dec  b                                           ; $47cf: $05
	add  l                                           ; $47d0: $85
	ld   d, $12                                      ; $47d1: $16 $12
	db   $e4                                         ; $47d3: $e4
	ldh  [$80], a                                    ; $47d4: $e0 $80
	ld   bc, $ff02                                   ; $47d6: $01 $02 $ff
	db   $fc                                         ; $47d9: $fc
	inc  bc                                          ; $47da: $03
	add  b                                           ; $47db: $80
	rst  $38                                         ; $47dc: $ff
	add  c                                           ; $47dd: $81
	nop                                              ; $47de: $00
	add  b                                           ; $47df: $80
	ret  nz                                          ; $47e0: $c0

	add  b                                           ; $47e1: $80
	sbc  d                                           ; $47e2: $9a
	add  b                                           ; $47e3: $80
	rrca                                             ; $47e4: $0f
	add  c                                           ; $47e5: $81
	rst  $38                                         ; $47e6: $ff
	ld   bc, $ff00                                   ; $47e7: $01 $00 $ff
	add  b                                           ; $47ea: $80
	jr   c, jr_077_47ef                              ; $47eb: $38 $02

	ld   h, b                                        ; $47ed: $60
	ld   l, b                                        ; $47ee: $68

jr_077_47ef:
	ld   [$7180], sp                                 ; $47ef: $08 $80 $71
	add  b                                           ; $47f2: $80
	add  $80                                         ; $47f3: $c6 $80
	db   $ed                                         ; $47f5: $ed
	add  c                                           ; $47f6: $81
	rst  $38                                         ; $47f7: $ff
	inc  b                                           ; $47f8: $04
	ccf                                              ; $47f9: $3f
	ret  nz                                          ; $47fa: $c0

	jr   nz, jr_077_482d                             ; $47fb: $20 $30

	db   $10                                         ; $47fd: $10
	add  b                                           ; $47fe: $80
	ld   bc, $8580                                   ; $47ff: $01 $80 $85
	add  b                                           ; $4802: $80
	ld   l, d                                        ; $4803: $6a
	add  b                                           ; $4804: $80
	ld   e, e                                        ; $4805: $5b
	add  b                                           ; $4806: $80
	cp   a                                           ; $4807: $bf
	add  b                                           ; $4808: $80
	rst  $38                                         ; $4809: $ff
	add  b                                           ; $480a: $80
	ld   [de], a                                     ; $480b: $12
	inc  bc                                          ; $480c: $03
	ld   [$bb00], sp                                 ; $480d: $08 $00 $bb
	or   e                                           ; $4810: $b3
	add  b                                           ; $4811: $80
	ld   l, d                                        ; $4812: $6a
	add  b                                           ; $4813: $80
	rst  JumpTable                                         ; $4814: $df
	add  b                                           ; $4815: $80
	db   $fd                                         ; $4816: $fd
	add  b                                           ; $4817: $80
	cp   a                                           ; $4818: $bf
	add  b                                           ; $4819: $80
	rst  $38                                         ; $481a: $ff
	add  b                                           ; $481b: $80
	rrca                                             ; $481c: $0f
	add  b                                           ; $481d: $80
	ld   c, e                                        ; $481e: $4b
	add  b                                           ; $481f: $80
	ld   a, [$7780]                                  ; $4820: $fa $80 $77
	add  b                                           ; $4823: $80
	db   $fd                                         ; $4824: $fd
	add  h                                           ; $4825: $84
	rst  $38                                         ; $4826: $ff
	add  b                                           ; $4827: $80
	ret  nz                                          ; $4828: $c0

	add  b                                           ; $4829: $80
	ld   a, [hl-]                                    ; $482a: $3a
	add  b                                           ; $482b: $80
	rst  $38                                         ; $482c: $ff

jr_077_482d:
	add  b                                           ; $482d: $80
	ei                                               ; $482e: $fb
	add  b                                           ; $482f: $80
	rst  $38                                         ; $4830: $ff
	add  b                                           ; $4831: $80
	db   $ed                                         ; $4832: $ed
	add  d                                           ; $4833: $82
	rst  $38                                         ; $4834: $ff
	add  b                                           ; $4835: $80
	ccf                                              ; $4836: $3f
	add  b                                           ; $4837: $80
	ld   l, l                                        ; $4838: $6d
	add  d                                           ; $4839: $82
	rst  $38                                         ; $483a: $ff
	add  b                                           ; $483b: $80
	rst  $28                                         ; $483c: $ef
	add  e                                           ; $483d: $83
	rst  $38                                         ; $483e: $ff
	inc  b                                           ; $483f: $04
	ldh  [$9f], a                                    ; $4840: $e0 $9f
	adc  l                                           ; $4842: $8d
	xor  l                                           ; $4843: $ad
	and  b                                           ; $4844: $a0
	add  b                                           ; $4845: $80
	ret  nc                                          ; $4846: $d0

	add  b                                           ; $4847: $80
	xor  d                                           ; $4848: $aa
	add  b                                           ; $4849: $80
	ei                                               ; $484a: $fb
	add  b                                           ; $484b: $80
	ld   a, [hl]                                     ; $484c: $7e
	add  b                                           ; $484d: $80
	ei                                               ; $484e: $fb
	ld   [bc], a                                     ; $484f: $02
	rst  $38                                         ; $4850: $ff
	nop                                              ; $4851: $00
	rst  $38                                         ; $4852: $ff
	add  b                                           ; $4853: $80
	ld   c, a                                        ; $4854: $4f
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	add  b                                           ; $4857: $80
	db   $10                                         ; $4858: $10
	add  b                                           ; $4859: $80
	adc  d                                           ; $485a: $8a
	add  b                                           ; $485b: $80
	daa                                              ; $485c: $27
	add  b                                           ; $485d: $80
	ld   a, [$ff81]                                  ; $485e: $fa $81 $ff
	ld   bc, $ff00                                   ; $4861: $01 $00 $ff
	add  b                                           ; $4864: $80
	add  e                                           ; $4865: $83
	ld   b, $00                                      ; $4866: $06 $00
	ld   c, h                                        ; $4868: $4c
	inc  c                                           ; $4869: $0c
	or   $96                                         ; $486a: $f6 $96
	ei                                               ; $486c: $fb
	db   $db                                         ; $486d: $db
	add  b                                           ; $486e: $80
	rst  JumpTable                                         ; $486f: $df
	add  c                                           ; $4870: $81
	rst  $38                                         ; $4871: $ff
	inc  b                                           ; $4872: $04
	jp   c, $3b00                                    ; $4873: $da $00 $3b

	nop                                              ; $4876: $00
	ld   e, $80                                      ; $4877: $1e $80
	nop                                              ; $4879: $00
	inc  bc                                          ; $487a: $03
	rst  $38                                         ; $487b: $ff
	rst  $28                                         ; $487c: $ef
	halt                                             ; $487d: $76
	ld   h, [hl]                                     ; $487e: $66
	add  b                                           ; $487f: $80
	rst  $38                                         ; $4880: $ff
	add  b                                           ; $4881: $80
	ld   e, e                                        ; $4882: $5b
	nop                                              ; $4883: $00
	rst  $38                                         ; $4884: $ff
	add  [hl]                                        ; $4885: $86
	nop                                              ; $4886: $00
	ld   [$ffab], sp                                 ; $4887: $08 $ab $ff
	ld   a, [bc]                                     ; $488a: $0a
	rst  $38                                         ; $488b: $ff
	ld   e, [hl]                                     ; $488c: $5e
	rst  $38                                         ; $488d: $ff
	daa                                              ; $488e: $27
	rst  $30                                         ; $488f: $f7
	ret  nc                                          ; $4890: $d0

	add  l                                           ; $4891: $85
	nop                                              ; $4892: $00
	ld   [$ffe4], sp                                 ; $4893: $08 $e4 $ff
	jp   $fdff                                       ; $4896: $c3 $ff $fd


	rst  JumpTable                                         ; $4899: $df
	ld   sp, hl                                      ; $489a: $f9
	rst  $38                                         ; $489b: $ff
	inc  bc                                          ; $489c: $03
	add  l                                           ; $489d: $85
	nop                                              ; $489e: $00
	rlca                                             ; $489f: $07
	xor  a                                           ; $48a0: $af
	rst  $38                                         ; $48a1: $ff
	rrca                                             ; $48a2: $0f
	rst  $38                                         ; $48a3: $ff
	sbc  a                                           ; $48a4: $9f
	rst  $38                                         ; $48a5: $ff
	ccf                                              ; $48a6: $3f
	rst  $38                                         ; $48a7: $ff
	add  a                                           ; $48a8: $87
	nop                                              ; $48a9: $00
	ld   b, e                                        ; $48aa: $43
	ldh  a, [$50]                                    ; $48ab: $f0 $50
	ldh  a, [rAUD1SWEEP]                             ; $48ad: $f0 $10
	ldh  a, [$50]                                    ; $48af: $f0 $50
	ldh  a, [$ef]                                    ; $48b1: $f0 $ef
	rst  $38                                         ; $48b3: $ff
	ei                                               ; $48b4: $fb
	rst  $38                                         ; $48b5: $ff
	cp   e                                           ; $48b6: $bb
	rst  $38                                         ; $48b7: $ff
	cp   [hl]                                        ; $48b8: $be
	rst  $38                                         ; $48b9: $ff
	sub  $ff                                         ; $48ba: $d6 $ff
	ld   [de], a                                     ; $48bc: $12
	rst  $38                                         ; $48bd: $ff
	pop  bc                                          ; $48be: $c1
	rst  $38                                         ; $48bf: $ff
	jp   nz, $a3df                                   ; $48c0: $c2 $df $a3

	cp   a                                           ; $48c3: $bf
	add  hl, sp                                      ; $48c4: $39
	inc  a                                           ; $48c5: $3c
	call $35ff                                       ; $48c6: $cd $ff $35
	rst  $38                                         ; $48c9: $ff
	dec  hl                                          ; $48ca: $2b
	rst  $28                                         ; $48cb: $ef
	dec  a                                           ; $48cc: $3d
	rst  $38                                         ; $48cd: $ff
	ld   e, a                                        ; $48ce: $5f
	rst  $38                                         ; $48cf: $ff
	add  [hl]                                        ; $48d0: $86
	rst  $38                                         ; $48d1: $ff
	dec  h                                           ; $48d2: $25
	rst  $38                                         ; $48d3: $ff
	dec  a                                           ; $48d4: $3d
	pop  af                                          ; $48d5: $f1
	ld   sp, $d3cf                                   ; $48d6: $31 $cf $d3
	scf                                              ; $48d9: $37
	ld   d, l                                        ; $48da: $55
	rst  JumpTable                                         ; $48db: $df
	ld   e, [hl]                                     ; $48dc: $5e
	db   $d3                                         ; $48dd: $d3
	db   $db                                         ; $48de: $db
	ld   a, a                                        ; $48df: $7f
	or   a                                           ; $48e0: $b7
	db   $fd                                         ; $48e1: $fd
	ld   c, l                                        ; $48e2: $4d
	ldh  a, [$30]                                    ; $48e3: $f0 $30
	ldh  a, [$60]                                    ; $48e5: $f0 $60
	ldh  a, [$e0]                                    ; $48e7: $f0 $e0
	ldh  a, [$30]                                    ; $48e9: $f0 $30
	ldh  a, [rSVBK]                                  ; $48eb: $f0 $70
	ldh  a, [$30]                                    ; $48ed: $f0 $30
	add  c                                           ; $48ef: $81
	ldh  a, [$08]                                    ; $48f0: $f0 $08
	sbc  e                                           ; $48f2: $9b
	rst  $38                                         ; $48f3: $ff
	cp   a                                           ; $48f4: $bf
	db   $fc                                         ; $48f5: $fc
	ldh  a, [$db]                                    ; $48f6: $f0 $db
	jp   $e7f7                                       ; $48f8: $c3 $f7 $e7


	add  b                                           ; $48fb: $80
	xor  a                                           ; $48fc: $af
	ld   [bc], a                                     ; $48fd: $02
	rst  $28                                         ; $48fe: $ef
	ld   a, d                                        ; $48ff: $7a
	push af                                          ; $4900: $f5
	add  b                                           ; $4901: $80
	nop                                              ; $4902: $00
	add  b                                           ; $4903: $80
	rst  $38                                         ; $4904: $ff
	ld   [hl-], a                                    ; $4905: $32
	ld   a, [$d4ff]                                  ; $4906: $fa $ff $d4
	rst  $38                                         ; $4909: $ff
	ld   l, [hl]                                     ; $490a: $6e
	rst  $38                                         ; $490b: $ff
	rra                                              ; $490c: $1f
	rst  $38                                         ; $490d: $ff
	adc  a                                           ; $490e: $8f
	rst  $38                                         ; $490f: $ff
	cpl                                              ; $4910: $2f
	inc  bc                                          ; $4911: $03
	ld   bc, $8003                                   ; $4912: $01 $03 $80
	rst  $38                                         ; $4915: $ff
	ld   e, l                                        ; $4916: $5d
	cp   a                                           ; $4917: $bf
	dec  de                                          ; $4918: $1b
	rst  JumpTable                                         ; $4919: $df
	and  [hl]                                        ; $491a: $a6
	rst  $38                                         ; $491b: $ff
	ld   [hl], l                                     ; $491c: $75
	rst  $38                                         ; $491d: $ff
	ld   b, d                                        ; $491e: $42
	rst  $38                                         ; $491f: $ff
	or   h                                           ; $4920: $b4
	db   $fd                                         ; $4921: $fd
	ld   [hl], $f7                                   ; $4922: $36 $f7
	ld   [hl], c                                     ; $4924: $71
	ldh  a, [$e0]                                    ; $4925: $f0 $e0
	ldh  a, [$e0]                                    ; $4927: $f0 $e0
	ldh  a, [$d0]                                    ; $4929: $f0 $d0
	ldh  a, [$60]                                    ; $492b: $f0 $60
	ldh  a, [$30]                                    ; $492d: $f0 $30
	ldh  a, [$d0]                                    ; $492f: $f0 $d0
	ldh  a, [$60]                                    ; $4931: $f0 $60
	ldh  a, [rIE]                                    ; $4933: $f0 $ff
	inc  b                                           ; $4935: $04
	ld   b, h                                        ; $4936: $44
	ld   e, l                                        ; $4937: $5d
	db   $dd                                         ; $4938: $dd
	add  b                                           ; $4939: $80
	rst  JumpTable                                         ; $493a: $df
	add  e                                           ; $493b: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $493c: $cf
	add  b                                           ; $493d: $80
	rst  $28                                         ; $493e: $ef
	inc  d                                           ; $493f: $14
	ld   a, a                                        ; $4940: $7f
	ld   [hl], d                                     ; $4941: $72
	ld   [de], a                                     ; $4942: $12
	db   $10                                         ; $4943: $10
	ld   bc, $48c8                                   ; $4944: $01 $c8 $48
	ret  z                                           ; $4947: $c8

	add  b                                           ; $4948: $80
	ret  z                                           ; $4949: $c8

	ret  nz                                          ; $494a: $c0

	ret                                              ; $494b: $c9


	pop  bc                                          ; $494c: $c1
	ret                                              ; $494d: $c9


	ld   b, b                                        ; $494e: $40
	ret  z                                           ; $494f: $c8

	add  c                                           ; $4950: $81
	ld   c, b                                        ; $4951: $48
	ld   a, [hl]                                     ; $4952: $7e
	ccf                                              ; $4953: $3f
	nop                                              ; $4954: $00
	add  b                                           ; $4955: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4956: $cf
	ld   c, $87                                      ; $4957: $0e $87
	or   b                                           ; $4959: $b0
	add  b                                           ; $495a: $80
	jp   $c387                                       ; $495b: $c3 $87 $c3


	inc  bc                                          ; $495e: $03
	ld   a, [hl]                                     ; $495f: $7e
	ld   bc, $0086                                   ; $4960: $01 $86 $00
	push bc                                          ; $4963: $c5
	sub  b                                           ; $4964: $90
	nop                                              ; $4965: $00
	add  b                                           ; $4966: $80
	add  c                                           ; $4967: $81
	sub  b                                           ; $4968: $90
	ld   [bc], a                                     ; $4969: $02
	stop                                             ; $496a: $10 $00
	sub  b                                           ; $496c: $90
	add  b                                           ; $496d: $80
	or   b                                           ; $496e: $b0
	ld   a, $70                                      ; $496f: $3e $70
	ldh  a, [$80]                                    ; $4971: $f0 $80
	ldh  a, [$39]                                    ; $4973: $f0 $39
	ld   sp, hl                                      ; $4975: $f9
	db   $dd                                         ; $4976: $dd
	rst  $38                                         ; $4977: $ff
	call Call_077_42ff                               ; $4978: $cd $ff $42
	rst  $38                                         ; $497b: $ff
	ld   l, b                                        ; $497c: $68
	rst  $38                                         ; $497d: $ff
	ld   hl, sp-$01                                  ; $497e: $f8 $ff
	push bc                                          ; $4980: $c5
	rst  $38                                         ; $4981: $ff
	cp   e                                           ; $4982: $bb
	rst  $38                                         ; $4983: $ff
	ld   a, l                                        ; $4984: $7d
	rst  $38                                         ; $4985: $ff
	xor  e                                           ; $4986: $ab
	rst  $38                                         ; $4987: $ff
	cp   c                                           ; $4988: $b9
	rst  $38                                         ; $4989: $ff
	jp   $0dff                                       ; $498a: $c3 $ff $0d


	db   $fd                                         ; $498d: $fd
	ld   e, h                                        ; $498e: $5c
	db   $fd                                         ; $498f: $fd
	ld   a, [hl+]                                    ; $4990: $2a
	ei                                               ; $4991: $fb
	rla                                              ; $4992: $17
	rst  ToBoot                                         ; $4993: $c7
	ld   b, $ff                                      ; $4994: $06 $ff
	ld   l, b                                        ; $4996: $68
	pop  af                                          ; $4997: $f1
	ld   l, [hl]                                     ; $4998: $6e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4999: $cf
	ret                                              ; $499a: $c9


	rst  $38                                         ; $499b: $ff
	sub  [hl]                                        ; $499c: $96
	rst  $38                                         ; $499d: $ff
	di                                               ; $499e: $f3
	rst  $38                                         ; $499f: $ff
	xor  l                                           ; $49a0: $ad
	rst  $38                                         ; $49a1: $ff
	cp   a                                           ; $49a2: $bf
	rst  $38                                         ; $49a3: $ff
	ccf                                              ; $49a4: $3f
	ldh  a, [$c0]                                    ; $49a5: $f0 $c0
	ldh  a, [$d0]                                    ; $49a7: $f0 $d0
	ldh  a, [rLCDC]                                  ; $49a9: $f0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $49ab: $f0 $a0
	ldh  a, [$c0]                                    ; $49ad: $f0 $c0
	add  c                                           ; $49af: $81
	ldh  a, [rSCX]                                   ; $49b0: $f0 $43
	ret  nz                                          ; $49b2: $c0

	ldh  a, [$3e]                                    ; $49b3: $f0 $3e
	sbc  a                                           ; $49b5: $9f
	sbc  [hl]                                        ; $49b6: $9e
	ccf                                              ; $49b7: $3f
	scf                                              ; $49b8: $37
	ld   a, a                                        ; $49b9: $7f
	ld   [hl], e                                     ; $49ba: $73
	ld   a, a                                        ; $49bb: $7f
	ld   e, e                                        ; $49bc: $5b
	rst  $38                                         ; $49bd: $ff
	sub  l                                           ; $49be: $95
	rst  $38                                         ; $49bf: $ff
	call nz, Call_077_72ff                           ; $49c0: $c4 $ff $72
	cp   $c9                                         ; $49c3: $fe $c9
	rst  $38                                         ; $49c5: $ff
	or   l                                           ; $49c6: $b5
	rst  $38                                         ; $49c7: $ff
	ld   a, [hl]                                     ; $49c8: $7e
	rst  $38                                         ; $49c9: $ff
	ld   a, [hl]                                     ; $49ca: $7e
	rst  $38                                         ; $49cb: $ff
	inc  a                                           ; $49cc: $3c
	rst  $38                                         ; $49cd: $ff
	ld   c, b                                        ; $49ce: $48
	rst  $38                                         ; $49cf: $ff
	or   l                                           ; $49d0: $b5
	rst  $38                                         ; $49d1: $ff
	ld   hl, $59e1                                   ; $49d2: $21 $e1 $59
	rst  $28                                         ; $49d5: $ef
	inc  de                                          ; $49d6: $13
	rst  $38                                         ; $49d7: $ff
	jp   c, $efff                                    ; $49d8: $da $ff $ef

	rst  $38                                         ; $49db: $ff
	ld   l, a                                        ; $49dc: $6f
	rst  $38                                         ; $49dd: $ff
	ld   d, h                                        ; $49de: $54
	rst  $38                                         ; $49df: $ff
	ld   b, c                                        ; $49e0: $41
	rst  $38                                         ; $49e1: $ff
	sub  l                                           ; $49e2: $95
	rst  $38                                         ; $49e3: $ff
	rst  $28                                         ; $49e4: $ef
	ldh  a, [$e0]                                    ; $49e5: $f0 $e0
	ldh  a, [$b0]                                    ; $49e7: $f0 $b0
	ldh  a, [$30]                                    ; $49e9: $f0 $30
	ldh  a, [$b0]                                    ; $49eb: $f0 $b0
	ldh  a, [$e0]                                    ; $49ed: $f0 $e0
	ldh  a, [rP1]                                    ; $49ef: $f0 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $49f1: $f0 $a0
	ldh  a, [$de]                                    ; $49f3: $f0 $de
	ld   c, [hl]                                     ; $49f5: $4e
	add  b                                           ; $49f6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f7: $cf
	nop                                              ; $49f8: $00
	rst  $38                                         ; $49f9: $ff
	add  b                                           ; $49fa: $80
	rst  $20                                         ; $49fb: $e7
	ld   bc, $1800                                   ; $49fc: $01 $00 $18
	add  d                                           ; $49ff: $82
	di                                               ; $4a00: $f3
	dec  b                                           ; $4a01: $05
	nop                                              ; $4a02: $00
	inc  c                                           ; $4a03: $0c
	ld   a, c                                        ; $4a04: $79
	ld   a, [hl]                                     ; $4a05: $7e
	ld   a, e                                        ; $4a06: $7b
	ld   sp, hl                                      ; $4a07: $f9
	add  c                                           ; $4a08: $81
	dec  a                                           ; $4a09: $3d
	nop                                              ; $4a0a: $00
	db   $fc                                         ; $4a0b: $fc
	add  b                                           ; $4a0c: $80
	nop                                              ; $4a0d: $00
	ld   bc, $fe9e                                   ; $4a0e: $01 $9e $fe
	add  b                                           ; $4a11: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a12: $cf
	dec  b                                           ; $4a13: $05
	nop                                              ; $4a14: $00
	jr   nc, @-$17                                   ; $4a15: $30 $e7

	sub  l                                           ; $4a17: $95
	rst  $38                                         ; $4a18: $ff
	dec  d                                           ; $4a19: $15
	add  c                                           ; $4a1a: $81
	rst  $38                                         ; $4a1b: $ff
	inc  c                                           ; $4a1c: $0c
	ld   [hl-], a                                    ; $4a1d: $32
	rst  $38                                         ; $4a1e: $ff
	pop  hl                                          ; $4a1f: $e1
	rst  $30                                         ; $4a20: $f7
	sub  [hl]                                        ; $4a21: $96
	ld   a, a                                        ; $4a22: $7f
	ld   l, b                                        ; $4a23: $68
	ld   e, a                                        ; $4a24: $5f
	ld   c, c                                        ; $4a25: $49
	add  a                                           ; $4a26: $87
	and  e                                           ; $4a27: $a3
	ldh  a, [$e0]                                    ; $4a28: $f0 $e0
	add  c                                           ; $4a2a: $81
	ldh  a, [rTIMA]                                  ; $4a2b: $f0 $05
	or   b                                           ; $4a2d: $b0
	ldh  a, [$d0]                                    ; $4a2e: $f0 $d0
	ldh  a, [$d0]                                    ; $4a30: $f0 $d0
	ldh  a, [$80]                                    ; $4a32: $f0 $80
	or   b                                           ; $4a34: $b0
	add  b                                           ; $4a35: $80
	and  b                                           ; $4a36: $a0
	ld   a, [bc]                                     ; $4a37: $0a
	xor  l                                           ; $4a38: $ad
	sub  d                                           ; $4a39: $92
	cp   a                                           ; $4a3a: $bf
	and  b                                           ; $4a3b: $a0

jr_077_4a3c:
	rst  $28                                         ; $4a3c: $ef
	or   b                                           ; $4a3d: $b0
	ld   c, a                                        ; $4a3e: $4f

jr_077_4a3f:
	ld   b, b                                        ; $4a3f: $40
	db   $d3                                         ; $4a40: $d3
	jp   $80df                                       ; $4a41: $c3 $df $80


	nop                                              ; $4a44: $00
	add  b                                           ; $4a45: $80
	rst  $38                                         ; $4a46: $ff
	add  hl, bc                                      ; $4a47: $09
	nop                                              ; $4a48: $00
	ld   b, c                                        ; $4a49: $41
	ld   c, b                                        ; $4a4a: $48
	ret                                              ; $4a4b: $c9


	nop                                              ; $4a4c: $00
	ret  z                                           ; $4a4d: $c8

	ld   bc, $0188                                   ; $4a4e: $01 $88 $01
	add  b                                           ; $4a51: $80
	add  b                                           ; $4a52: $80
	ret  nz                                          ; $4a53: $c0

	add  b                                           ; $4a54: $80
	nop                                              ; $4a55: $00
	add  b                                           ; $4a56: $80
	rst  $38                                         ; $4a57: $ff
	add  hl, bc                                      ; $4a58: $09
	nop                                              ; $4a59: $00
	db   $db                                         ; $4a5a: $db
	nop                                              ; $4a5b: $00
	ld   h, b                                        ; $4a5c: $60
	nop                                              ; $4a5d: $00
	add  b                                           ; $4a5e: $80
	nop                                              ; $4a5f: $00
	dec  sp                                          ; $4a60: $3b
	nop                                              ; $4a61: $00
	ld   a, b                                        ; $4a62: $78
	add  c                                           ; $4a63: $81
	inc  bc                                          ; $4a64: $03
	ld   a, [bc]                                     ; $4a65: $0a
	ld   a, e                                        ; $4a66: $7b
	ld   [bc], a                                     ; $4a67: $02
	ld   e, d                                        ; $4a68: $5a
	ld   bc, $0046                                   ; $4a69: $01 $46 $00
	ld   [hl], b                                     ; $4a6c: $70
	nop                                              ; $4a6d: $00
	ld   [hl], b                                     ; $4a6e: $70
	stop                                             ; $4a6f: $10 $00
	add  b                                           ; $4a71: $80
	ld   [hl], b                                     ; $4a72: $70
	ld   [$40d0], sp                                 ; $4a73: $08 $d0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $4a76: $f0 $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $4a78: $f0 $a0
	ldh  a, [$6f]                                    ; $4a7a: $f0 $6f
	nop                                              ; $4a7c: $00
	add  b                                           ; $4a7d: $80
	ld   c, c                                        ; $4a7e: $49
	add  d                                           ; $4a7f: $82
	ld   l, l                                        ; $4a80: $6d
	ld   bc, $2cad                                   ; $4a81: $01 $ad $2c
	add  h                                           ; $4a84: $84
	nop                                              ; $4a85: $00
	ld   bc, $0081                                   ; $4a86: $01 $81 $00
	add  b                                           ; $4a89: $80
	inc  h                                           ; $4a8a: $24
	inc  c                                           ; $4a8b: $0c
	ld   a, [$dc82]                                  ; $4a8c: $fa $82 $dc
	nop                                              ; $4a8f: $00
	sub  d                                           ; $4a90: $92
	inc  d                                           ; $4a91: $14
	inc  e                                           ; $4a92: $1c
	nop                                              ; $4a93: $00
	call z, $e000                                    ; $4a94: $cc $00 $e0
	nop                                              ; $4a97: $00
	ld   e, d                                        ; $4a98: $5a
	add  c                                           ; $4a99: $81
	inc  bc                                          ; $4a9a: $03
	inc  bc                                          ; $4a9b: $03
	daa                                              ; $4a9c: $27
	ld   bc, $0049                                   ; $4a9d: $01 $49 $00
	add  b                                           ; $4aa0: $80
	ld   bc, $0806                                   ; $4aa1: $01 $06 $08
	inc  b                                           ; $4aa4: $04
	ld   c, b                                        ; $4aa5: $48
	ld   hl, $0741                                   ; $4aa6: $21 $41 $07
	ld   hl, sp-$7f                                  ; $4aa9: $f8 $81
	ldh  a, [$80]                                    ; $4aab: $f0 $80
	sub  b                                           ; $4aad: $90
	add  e                                           ; $4aae: $83
	nop                                              ; $4aaf: $00
	ld   b, $a0                                      ; $4ab0: $06 $a0
	or   b                                           ; $4ab2: $b0
	ld   d, b                                        ; $4ab3: $50
	ld   b, b                                        ; $4ab4: $40
	ld   [hl], b                                     ; $4ab5: $70
	ld   a, a                                        ; $4ab6: $7f
	nop                                              ; $4ab7: $00
	add  b                                           ; $4ab8: $80
	jr   c, jr_077_4a3c                              ; $4ab9: $38 $81

	nop                                              ; $4abb: $00
	add  b                                           ; $4abc: $80
	jr   jr_077_4a3f                                 ; $4abd: $18 $80

	db   $eb                                         ; $4abf: $eb
	add  b                                           ; $4ac0: $80
	cp   [hl]                                        ; $4ac1: $be
	add  b                                           ; $4ac2: $80
	rst  $28                                         ; $4ac3: $ef
	dec  b                                           ; $4ac4: $05
	ld   a, a                                        ; $4ac5: $7f
	db   $eb                                         ; $4ac6: $eb
	nop                                              ; $4ac7: $00
	db   $ec                                         ; $4ac8: $ec
	nop                                              ; $4ac9: $00
	ld   a, b                                        ; $4aca: $78
	add  b                                           ; $4acb: $80
	inc  bc                                          ; $4acc: $03
	add  b                                           ; $4acd: $80
	db   $fd                                         ; $4ace: $fd
	add  b                                           ; $4acf: $80
	adc  a                                           ; $4ad0: $8f
	add  b                                           ; $4ad1: $80
	reti                                             ; $4ad2: $d9


	add  d                                           ; $4ad3: $82
	rst  $38                                         ; $4ad4: $ff
	add  b                                           ; $4ad5: $80
	rlca                                             ; $4ad6: $07
	add  b                                           ; $4ad7: $80
	ld   l, a                                        ; $4ad8: $6f
	add  b                                           ; $4ad9: $80
	rst  $20                                         ; $4ada: $e7
	add  b                                           ; $4adb: $80
	rst  JumpTable                                         ; $4adc: $df
	add  b                                           ; $4add: $80
	rst  $38                                         ; $4ade: $ff
	add  b                                           ; $4adf: $80
	db   $fd                                         ; $4ae0: $fd
	add  c                                           ; $4ae1: $81
	rst  $38                                         ; $4ae2: $ff
	nop                                              ; $4ae3: $00
	ldh  a, [$80]                                    ; $4ae4: $f0 $80
	ret  nc                                          ; $4ae6: $d0

	add  h                                           ; $4ae7: $84
	ldh  a, [$80]                                    ; $4ae8: $f0 $80
	or   b                                           ; $4aea: $b0
	add  e                                           ; $4aeb: $83
	ldh  a, [rAUD1HIGH]                              ; $4aec: $f0 $14
	and  l                                           ; $4aee: $a5
	cp   $74                                         ; $4aef: $fe $74
	cp   $6e                                         ; $4af1: $fe $6e
	cp   $1a                                         ; $4af3: $fe $1a
	cp   $52                                         ; $4af5: $fe $52
	rst  $38                                         ; $4af7: $ff
	ld   d, h                                        ; $4af8: $54
	rst  $30                                         ; $4af9: $f7
	sub  a                                           ; $4afa: $97
	di                                               ; $4afb: $f3
	ld   b, d                                        ; $4afc: $42
	ld   [hl], e                                     ; $4afd: $73
	ld   hl, $e3e1                                   ; $4afe: $21 $e1 $e3
	ld   h, e                                        ; $4b01: $63
	ld   a, c                                        ; $4b02: $79
	add  b                                           ; $4b03: $80
	ld   e, e                                        ; $4b04: $5b
	ld   b, $7b                                      ; $4b05: $06 $7b
	dec  sp                                          ; $4b07: $3b
	ld   a, c                                        ; $4b08: $79
	cp   e                                           ; $4b09: $bb
	cp   d                                           ; $4b0a: $ba
	sub  c                                           ; $4b0b: $91
	sub  e                                           ; $4b0c: $93
	add  b                                           ; $4b0d: $80
	add  e                                           ; $4b0e: $83
	ld   [rAUDENA], sp                                 ; $4b0f: $08 $26 $ff
	cp   a                                           ; $4b12: $bf
	db   $fc                                         ; $4b13: $fc
	ldh  a, [$db]                                    ; $4b14: $f0 $db
	jp   $e7f7                                       ; $4b16: $c3 $f7 $e7


	add  b                                           ; $4b19: $80
	xor  a                                           ; $4b1a: $af
	ld   [bc], a                                     ; $4b1b: $02
	rst  $28                                         ; $4b1c: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1d: $cf
	ld   e, a                                        ; $4b1e: $5f
	add  b                                           ; $4b1f: $80
	rst  JumpTable                                         ; $4b20: $df
	ld   c, $e0                                      ; $4b21: $0e $e0
	rst  $38                                         ; $4b23: $ff
	ld   a, [$d4ff]                                  ; $4b24: $fa $ff $d4
	rst  $38                                         ; $4b27: $ff
	ld   l, [hl]                                     ; $4b28: $6e
	rst  $38                                         ; $4b29: $ff
	rra                                              ; $4b2a: $1f
	rst  $38                                         ; $4b2b: $ff
	adc  a                                           ; $4b2c: $8f
	rst  $38                                         ; $4b2d: $ff
	rst  ToBoot                                         ; $4b2e: $c7
	rst  $38                                         ; $4b2f: $ff
	push af                                          ; $4b30: $f5
	add  b                                           ; $4b31: $80
	rst  $28                                         ; $4b32: $ef
	db   $10                                         ; $4b33: $10
	cp   $5c                                         ; $4b34: $fe $5c
	cp   $be                                         ; $4b36: $fe $be
	cp   $fa                                         ; $4b38: $fe $fa
	rst  $38                                         ; $4b3a: $ff
	db   $e3                                         ; $4b3b: $e3
	rst  $38                                         ; $4b3c: $ff
	ld   e, b                                        ; $4b3d: $58
	rst  $38                                         ; $4b3e: $ff
	xor  d                                           ; $4b3f: $aa
	rst  $38                                         ; $4b40: $ff
	sub  h                                           ; $4b41: $94
	rst  $38                                         ; $4b42: $ff
	cp   $f7                                         ; $4b43: $fe $f7
	add  b                                           ; $4b45: $80
	ld   [hl], a                                     ; $4b46: $77
	inc  bc                                          ; $4b47: $03
	ld   [hl], l                                     ; $4b48: $75
	ld   [hl], a                                     ; $4b49: $77
	ld   [hl], h                                     ; $4b4a: $74
	ld   h, $80                                      ; $4b4b: $26 $80
	inc  hl                                          ; $4b4d: $23
	add  hl, bc                                      ; $4b4e: $09
	ld   hl, $0507                                   ; $4b4f: $21 $07 $05
	rlca                                             ; $4b52: $07
	inc  bc                                          ; $4b53: $03
	rlca                                             ; $4b54: $07
	sub  a                                           ; $4b55: $97
	sub  e                                           ; $4b56: $93
	ld   d, e                                        ; $4b57: $53
	db   $d3                                         ; $4b58: $d3
	add  b                                           ; $4b59: $80
	db   $e3                                         ; $4b5a: $e3
	add  b                                           ; $4b5b: $80
	ldh  a, [$80]                                    ; $4b5c: $f0 $80
	pop  hl                                          ; $4b5e: $e1
	ld   bc, $d353                                   ; $4b5f: $01 $53 $d3
	add  c                                           ; $4b62: $81
	db   $e3                                         ; $4b63: $e3
	ld   bc, $8863                                   ; $4b64: $01 $63 $88
	add  c                                           ; $4b67: $81
	rra                                              ; $4b68: $1f
	ld   e, $12                                      ; $4b69: $1e $12
	rra                                              ; $4b6b: $1f
	add  hl, bc                                      ; $4b6c: $09
	ld   a, [bc]                                     ; $4b6d: $0a
	ld   [bc], a                                     ; $4b6e: $02
	dec  d                                           ; $4b6f: $15
	db   $10                                         ; $4b70: $10
	jr   @+$0a                                       ; $4b71: $18 $08

	jr   jr_077_4b86                                 ; $4b73: $18 $11

	inc  e                                           ; $4b75: $1c
	ld   e, e                                        ; $4b76: $5b
	db   $eb                                         ; $4b77: $eb
	jr   z, @-$13                                    ; $4b78: $28 $eb

	ld   [$e2a3], a                                  ; $4b7a: $ea $a3 $e2
	rst  ToBoot                                         ; $4b7d: $c7
	ld   b, e                                        ; $4b7e: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b7f: $cf
	add  d                                           ; $4b80: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b81: $cf
	inc  c                                           ; $4b82: $0c
	dec  b                                           ; $4b83: $05
	ld   b, b                                        ; $4b84: $40
	add  b                                           ; $4b85: $80

jr_077_4b86:
	ld   l, l                                        ; $4b86: $6d
	rst  $38                                         ; $4b87: $ff
	dec  d                                           ; $4b88: $15
	add  c                                           ; $4b89: $81
	rst  $38                                         ; $4b8a: $ff
	inc  e                                           ; $4b8b: $1c
	ld   [hl-], a                                    ; $4b8c: $32
	rst  $38                                         ; $4b8d: $ff
	pop  hl                                          ; $4b8e: $e1
	rst  $30                                         ; $4b8f: $f7
	ld   d, $7f                                      ; $4b90: $16 $7f
	sbc  b                                           ; $4b92: $98
	xor  a                                           ; $4b93: $af
	add  hl, bc                                      ; $4b94: $09
	rlca                                             ; $4b95: $07
	push hl                                          ; $4b96: $e5
	rst  $38                                         ; $4b97: $ff
	ldh  [c], a                                      ; $4b98: $e2
	cp   $d8                                         ; $4b99: $fe $d8
	sbc  $5a                                         ; $4b9b: $de $5a
	cp   $47                                         ; $4b9d: $fe $47
	rst  $38                                         ; $4b9f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ba0: $cf
	cp   $ad                                         ; $4ba1: $fe $ad
	db   $fc                                         ; $4ba3: $fc
	inc  [hl]                                        ; $4ba4: $34
	or   b                                           ; $4ba5: $b0
	ld   h, l                                        ; $4ba6: $65
	ld   h, a                                        ; $4ba7: $67
	rst  ToBoot                                         ; $4ba8: $c7
	add  d                                           ; $4ba9: $82
	add  $00                                         ; $4baa: $c6 $00
	ld   c, a                                        ; $4bac: $4f
	add  c                                           ; $4bad: $81
	ld   c, l                                        ; $4bae: $4d
	ld   b, $cd                                      ; $4baf: $06 $cd
	adc  c                                           ; $4bb1: $89
	add  l                                           ; $4bb2: $85
	add  [hl]                                        ; $4bb3: $86
	add  b                                           ; $4bb4: $80
	db   $e4                                         ; $4bb5: $e4
	db   $e3                                         ; $4bb6: $e3
	add  b                                           ; $4bb7: $80
	db   $d3                                         ; $4bb8: $d3
	add  b                                           ; $4bb9: $80
	or   e                                           ; $4bba: $b3
	add  b                                           ; $4bbb: $80
	and  e                                           ; $4bbc: $a3
	add  b                                           ; $4bbd: $80
	di                                               ; $4bbe: $f3
	add  b                                           ; $4bbf: $80
	db   $e3                                         ; $4bc0: $e3
	inc  b                                           ; $4bc1: $04
	ldh  [c], a                                      ; $4bc2: $e2
	ld   h, e                                        ; $4bc3: $63
	ld   b, e                                        ; $4bc4: $43
	ld   b, c                                        ; $4bc5: $41
	ld   b, b                                        ; $4bc6: $40
	add  b                                           ; $4bc7: $80
	call c, $dd03                                    ; $4bc8: $dc $03 $dd
	sbc  l                                           ; $4bcb: $9d
	sbc  a                                           ; $4bcc: $9f
	rst  JumpTable                                         ; $4bcd: $df
	add  b                                           ; $4bce: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bcf: $cf
	add  c                                           ; $4bd0: $81
	ld   c, a                                        ; $4bd1: $4f
	dec  b                                           ; $4bd2: $05
	ld   l, a                                        ; $4bd3: $6f
	xor  a                                           ; $4bd4: $af
	dec  a                                           ; $4bd5: $3d
	ld   a, $43                                      ; $4bd6: $3e $43
	adc  b                                           ; $4bd8: $88
	add  b                                           ; $4bd9: $80
	sbc  h                                           ; $4bda: $9c
	dec  de                                          ; $4bdb: $1b
	inc  d                                           ; $4bdc: $14
	sbc  [hl]                                        ; $4bdd: $9e
	ldh  a, [c]                                      ; $4bde: $f2
	cp   $f4                                         ; $4bdf: $fe $f4
	rst  $38                                         ; $4be1: $ff
	jp   Jump_077_54ff                               ; $4be2: $c3 $ff $54


	rst  $38                                         ; $4be5: $ff
	and  b                                           ; $4be6: $a0
	rst  $38                                         ; $4be7: $ff
	ld   [hl+], a                                    ; $4be8: $22
	rra                                              ; $4be9: $1f
	jr   nz, @+$01                                   ; $4bea: $20 $ff

	rst  JumpTable                                         ; $4bec: $df
	ccf                                              ; $4bed: $3f
	rst  $38                                         ; $4bee: $ff
	ret  nz                                          ; $4bef: $c0

	inc  e                                           ; $4bf0: $1c
	rra                                              ; $4bf1: $1f
	add  e                                           ; $4bf2: $83
	rst  $38                                         ; $4bf3: $ff
	ld   [bc], a                                     ; $4bf4: $02
	db   $fd                                         ; $4bf5: $fd
	add  b                                           ; $4bf6: $80
	rst  $38                                         ; $4bf7: $ff
	add  b                                           ; $4bf8: $80
	ld   hl, sp+$09                                  ; $4bf9: $f8 $09
	inc  b                                           ; $4bfb: $04
	inc  a                                           ; $4bfc: $3c
	ld   a, [hl-]                                    ; $4bfd: $3a
	cp   $fc                                         ; $4bfe: $fe $fc
	db   $fd                                         ; $4c00: $fd
	cp   h                                           ; $4c01: $bc
	cp   a                                           ; $4c02: $bf
	xor  $ef                                         ; $4c03: $ee $ef
	add  b                                           ; $4c05: $80
	rst  $38                                         ; $4c06: $ff
	inc  de                                          ; $4c07: $13
	ccf                                              ; $4c08: $3f
	rst  $38                                         ; $4c09: $ff
	and  a                                           ; $4c0a: $a7
	sbc  b                                           ; $4c0b: $98
	ld   sp, hl                                      ; $4c0c: $f9
	ldh  a, [$99]                                    ; $4c0d: $f0 $99
	ret  nc                                          ; $4c0f: $d0

	ret  nz                                          ; $4c10: $c0

	ldh  [$29], a                                    ; $4c11: $e0 $29
	reti                                             ; $4c13: $d9


	add  h                                           ; $4c14: $84
	rst  $38                                         ; $4c15: $ff
	db   $eb                                         ; $4c16: $eb
	rst  $38                                         ; $4c17: $ff
	ld   a, a                                        ; $4c18: $7f
	rst  $38                                         ; $4c19: $ff
	cp   a                                           ; $4c1a: $bf
	ret  nz                                          ; $4c1b: $c0

	add  b                                           ; $4c1c: $80
	add  e                                           ; $4c1d: $83
	ld   [$8380], sp                                 ; $4c1e: $08 $80 $83
	inc  bc                                          ; $4c21: $03
	nop                                              ; $4c22: $00
	add  b                                           ; $4c23: $80
	db   $e3                                         ; $4c24: $e3
	ld   h, d                                        ; $4c25: $62
	rst  $38                                         ; $4c26: $ff
	cp   $80                                         ; $4c27: $fe $80
	db   $fc                                         ; $4c29: $fc
	dec  e                                           ; $4c2a: $1d
	ei                                               ; $4c2b: $fb
	ld   sp, hl                                      ; $4c2c: $f9
	rra                                              ; $4c2d: $1f
	cp   h                                           ; $4c2e: $bc
	cp   a                                           ; $4c2f: $bf
	ld   e, [hl]                                     ; $4c30: $5e
	rst  $38                                         ; $4c31: $ff
	ei                                               ; $4c32: $fb
	rst  $38                                         ; $4c33: $ff
	pop  de                                          ; $4c34: $d1
	cp   $8b                                         ; $4c35: $fe $8b
	rst  JumpTable                                         ; $4c37: $df
	ret  z                                           ; $4c38: $c8

	ld   l, e                                        ; $4c39: $6b
	ld   h, e                                        ; $4c3a: $63
	rst  $38                                         ; $4c3b: $ff
	di                                               ; $4c3c: $f3
	db   $fc                                         ; $4c3d: $fc
	or   [hl]                                        ; $4c3e: $b6
	cp   $27                                         ; $4c3f: $fe $27
	rst  $38                                         ; $4c41: $ff
	ret  nc                                          ; $4c42: $d0

	di                                               ; $4c43: $f3
	inc  hl                                          ; $4c44: $23
	ld   l, l                                        ; $4c45: $6d
	call $3efe                                       ; $4c46: $cd $fe $3e
	add  c                                           ; $4c49: $81
	rst  $38                                         ; $4c4a: $ff
	ld   b, $1f                                      ; $4c4b: $06 $1f
	rst  $38                                         ; $4c4d: $ff
	ld   sp, hl                                      ; $4c4e: $f9
	rst  $38                                         ; $4c4f: $ff
	sbc  c                                           ; $4c50: $99
	rst  $38                                         ; $4c51: $ff
	ld   a, a                                        ; $4c52: $7f
	add  c                                           ; $4c53: $81
	rst  $38                                         ; $4c54: $ff
	inc  c                                           ; $4c55: $0c
	ei                                               ; $4c56: $fb
	rst  $38                                         ; $4c57: $ff
	db   $e3                                         ; $4c58: $e3
	cp   $e7                                         ; $4c59: $fe $e7
	ld   sp, hl                                      ; $4c5b: $f9
	add  a                                           ; $4c5c: $87
	ldh  [$90], a                                    ; $4c5d: $e0 $90
	ldh  a, [hScriptOpcodeParams]                                    ; $4c5f: $f0 $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $4c61: $f0 $a0
	add  b                                           ; $4c63: $80

jr_077_4c64:
	ldh  a, [rAUD3LOW]                               ; $4c64: $f0 $1d
	ret  nc                                          ; $4c66: $d0

	ret  nz                                          ; $4c67: $c0

	ldh  a, [rAUD4LEN]                               ; $4c68: $f0 $20
	ldh  a, [$e0]                                    ; $4c6a: $f0 $e0
	ldh  a, [rAUD3LEVEL]                             ; $4c6c: $f0 $1c
	rst  $38                                         ; $4c6e: $ff
	call nz, $37ff                                   ; $4c6f: $c4 $ff $37
	rst  $38                                         ; $4c72: $ff
	dec  c                                           ; $4c73: $0d
	ei                                               ; $4c74: $fb
	ret                                              ; $4c75: $c9


	rst  $38                                         ; $4c76: $ff
	rra                                              ; $4c77: $1f
	rst  $38                                         ; $4c78: $ff
	ld   h, b                                        ; $4c79: $60
	ld   a, a                                        ; $4c7a: $7f
	rlca                                             ; $4c7b: $07
	rst  $38                                         ; $4c7c: $ff
	ld   b, $ff                                      ; $4c7d: $06 $ff
	ldh  a, [rIE]                                    ; $4c7f: $f0 $ff
	ld   d, $ff                                      ; $4c81: $16 $ff
	rst  $20                                         ; $4c83: $e7
	add  h                                           ; $4c84: $84
	rst  $38                                         ; $4c85: $ff
	add  hl, bc                                      ; $4c86: $09
	rra                                              ; $4c87: $1f
	pop  hl                                          ; $4c88: $e1
	cp   $d7                                         ; $4c89: $fe $d7
	rst  $38                                         ; $4c8b: $ff
	reti                                             ; $4c8c: $d9


	rst  $38                                         ; $4c8d: $ff
	ld   h, b                                        ; $4c8e: $60
	rst  $38                                         ; $4c8f: $ff
	sub  c                                           ; $4c90: $91
	add  c                                           ; $4c91: $81
	rst  $38                                         ; $4c92: $ff
	ld   b, $fb                                      ; $4c93: $06 $fb
	rst  $38                                         ; $4c95: $ff
	ei                                               ; $4c96: $fb
	sbc  a                                           ; $4c97: $9f
	sub  b                                           ; $4c98: $90
	rst  $38                                         ; $4c99: $ff
	ldh  a, [$85]                                    ; $4c9a: $f0 $85
	rst  $38                                         ; $4c9c: $ff
	ld   [de], a                                     ; $4c9d: $12
	ld   b, a                                        ; $4c9e: $47
	rst  $38                                         ; $4c9f: $ff
	or   a                                           ; $4ca0: $b7
	rst  $38                                         ; $4ca1: $ff
	rla                                              ; $4ca2: $17
	rst  $38                                         ; $4ca3: $ff
	rlca                                             ; $4ca4: $07
	db   $fd                                         ; $4ca5: $fd
	dec  l                                           ; $4ca6: $2d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ca7: $cf
	cp   [hl]                                        ; $4ca8: $be
	cp   a                                           ; $4ca9: $bf
	ld   sp, hl                                      ; $4caa: $f9
	rst  $38                                         ; $4cab: $ff
	ld   [bc], a                                     ; $4cac: $02
	cp   $34                                         ; $4cad: $fe $34
	rst  $38                                         ; $4caf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cb0: $cf
	add  b                                           ; $4cb1: $80
	cp   $80                                         ; $4cb2: $fe $80
	rst  $38                                         ; $4cb4: $ff
	ld   bc, $04fb                                   ; $4cb5: $01 $fb $04
	add  c                                           ; $4cb8: $81
	rst  $38                                         ; $4cb9: $ff
	add  b                                           ; $4cba: $80
	sub  a                                           ; $4cbb: $97
	add  b                                           ; $4cbc: $80
	add  b                                           ; $4cbd: $80
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	add  b                                           ; $4cc0: $80
	dec  b                                           ; $4cc1: $05

jr_077_4cc2:
	add  b                                           ; $4cc2: $80
	ld   a, [hl+]                                    ; $4cc3: $2a
	add  b                                           ; $4cc4: $80
	ld   e, $02                                      ; $4cc5: $1e $02
	inc  h                                           ; $4cc7: $24
	call nz, $80e0                                   ; $4cc8: $c4 $e0 $80
	sbc  a                                           ; $4ccb: $9f
	add  c                                           ; $4ccc: $81
	nop                                              ; $4ccd: $00
	inc  bc                                          ; $4cce: $03
	rst  $38                                         ; $4ccf: $ff
	rst  $28                                         ; $4cd0: $ef
	halt                                             ; $4cd1: $76
	ld   h, [hl]                                     ; $4cd2: $66
	add  b                                           ; $4cd3: $80
	rst  $38                                         ; $4cd4: $ff
	add  b                                           ; $4cd5: $80
	ld   e, e                                        ; $4cd6: $5b
	ld   [bc], a                                     ; $4cd7: $02
	rst  $38                                         ; $4cd8: $ff
	jr   jr_077_4cc2                                 ; $4cd9: $18 $e7

	add  b                                           ; $4cdb: $80
	ret  nz                                          ; $4cdc: $c0

	add  b                                           ; $4cdd: $80
	add  b                                           ; $4cde: $80
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	add  b                                           ; $4ce1: $80
	jr   jr_077_4c64                                 ; $4ce2: $18 $80

	db   $eb                                         ; $4ce4: $eb
	add  b                                           ; $4ce5: $80
	cp   [hl]                                        ; $4ce6: $be
	add  b                                           ; $4ce7: $80
	rst  $28                                         ; $4ce8: $ef
	ld   [bc], a                                     ; $4ce9: $02
	ld   a, a                                        ; $4cea: $7f
	adc  a                                           ; $4ceb: $8f
	ldh  a, [$81]                                    ; $4cec: $f0 $81
	nop                                              ; $4cee: $00
	add  b                                           ; $4cef: $80
	inc  de                                          ; $4cf0: $13
	add  b                                           ; $4cf1: $80
	ld   a, l                                        ; $4cf2: $7d
	add  b                                           ; $4cf3: $80
	adc  a                                           ; $4cf4: $8f
	add  b                                           ; $4cf5: $80
	reti                                             ; $4cf6: $d9


	add  c                                           ; $4cf7: $81
	rst  $38                                         ; $4cf8: $ff
	rst  $38                                         ; $4cf9: $ff
	nop                                              ; $4cfa: $00
	rst  $38                                         ; $4cfb: $ff
	nop                                              ; $4cfc: $00
	db   $fc                                         ; $4cfd: $fc
	nop                                              ; $4cfe: $00
	dec  sp                                          ; $4cff: $3b
	ld   [bc], a                                     ; $4d00: $02
	add  [hl]                                        ; $4d01: $86
	nop                                              ; $4d02: $00
	ld   bc, $0906                                   ; $4d03: $01 $06 $09
	add  b                                           ; $4d06: $80
	dec  b                                           ; $4d07: $05
	add  b                                           ; $4d08: $80
	inc  b                                           ; $4d09: $04
	add  b                                           ; $4d0a: $80
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	rrca                                             ; $4d0d: $0f
	add  l                                           ; $4d0e: $85
	nop                                              ; $4d0f: $00
	dec  b                                           ; $4d10: $05
	or   h                                           ; $4d11: $b4
	ld   c, b                                        ; $4d12: $48
	ld   h, $24                                      ; $4d13: $26 $24
	sub  e                                           ; $4d15: $93
	sub  d                                           ; $4d16: $92
	add  b                                           ; $4d17: $80
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	rst  $38                                         ; $4d1a: $ff
	add  l                                           ; $4d1b: $85
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	ld   b, h                                        ; $4d1e: $44
	add  c                                           ; $4d1f: $81
	db   $e4                                         ; $4d20: $e4
	inc  b                                           ; $4d21: $04
	ld   b, h                                        ; $4d22: $44
	db   $e4                                         ; $4d23: $e4
	ld   b, h                                        ; $4d24: $44
	db   $e4                                         ; $4d25: $e4
	and  b                                           ; $4d26: $a0
	add  l                                           ; $4d27: $85
	nop                                              ; $4d28: $00
	ld   bc, $b88f                                   ; $4d29: $01 $8f $b8
	add  d                                           ; $4d2c: $82
	cp   [hl]                                        ; $4d2d: $be
	add  b                                           ; $4d2e: $80
	cp   b                                           ; $4d2f: $b8
	nop                                              ; $4d30: $00
	scf                                              ; $4d31: $37
	add  l                                           ; $4d32: $85
	nop                                              ; $4d33: $00
	ld   bc, $f7ce                                   ; $4d34: $01 $ce $f7
	add  b                                           ; $4d37: $80
	rst  ToBoot                                         ; $4d38: $c7
	add  b                                           ; $4d39: $80
	or   $80                                         ; $4d3a: $f6 $80
	rst  $30                                         ; $4d3c: $f7
	nop                                              ; $4d3d: $00
	add  hl, sp                                      ; $4d3e: $39
	add  l                                           ; $4d3f: $85
	nop                                              ; $4d40: $00
	ld   bc, $66fc                                   ; $4d41: $01 $fc $66
	add  d                                           ; $4d44: $82
	halt                                             ; $4d45: $76
	add  b                                           ; $4d46: $80
	ld   h, [hl]                                     ; $4d47: $66

jr_077_4d48:
	nop                                              ; $4d48: $00
	sbc  d                                           ; $4d49: $9a
	add  l                                           ; $4d4a: $85
	nop                                              ; $4d4b: $00
	inc  bc                                          ; $4d4c: $03
	ld   a, $40                                      ; $4d4d: $3e $40
	ld   h, b                                        ; $4d4f: $60
	ld   h, c                                        ; $4d50: $61
	add  b                                           ; $4d51: $80
	ld   b, c                                        ; $4d52: $41
	add  b                                           ; $4d53: $80
	ld   h, c                                        ; $4d54: $61
	nop                                              ; $4d55: $00
	ld   a, a                                        ; $4d56: $7f
	adc  b                                           ; $4d57: $88
	nop                                              ; $4d58: $00
	add  e                                           ; $4d59: $83
	rst  $38                                         ; $4d5a: $ff
	dec  b                                           ; $4d5b: $05
	ld   c, a                                        ; $4d5c: $4f
	ldh  a, [$50]                                    ; $4d5d: $f0 $50
	ldh  a, [$60]                                    ; $4d5f: $f0 $60
	ld   [hl], b                                     ; $4d61: $70
	add  b                                           ; $4d62: $80
	nop                                              ; $4d63: $00
	add  b                                           ; $4d64: $80
	db   $10                                         ; $4d65: $10
	add  h                                           ; $4d66: $84
	nop                                              ; $4d67: $00
	nop                                              ; $4d68: $00
	ldh  a, [$85]                                    ; $4d69: $f0 $85
	nop                                              ; $4d6b: $00
	nop                                              ; $4d6c: $00
	ld   [hl], $80                                   ; $4d6d: $36 $80
	ld   [$c900], sp                                 ; $4d6f: $08 $00 $c9
	add  b                                           ; $4d72: $80
	reti                                             ; $4d73: $d9


	add  b                                           ; $4d74: $80
	pop  de                                          ; $4d75: $d1
	nop                                              ; $4d76: $00
	rst  $38                                         ; $4d77: $ff
	add  a                                           ; $4d78: $87
	nop                                              ; $4d79: $00
	inc  bc                                          ; $4d7a: $03
	ld   b, $f8                                      ; $4d7b: $06 $f8
	db   $fd                                         ; $4d7d: $fd
	db   $fc                                         ; $4d7e: $fc
	add  b                                           ; $4d7f: $80
	cp   $00                                         ; $4d80: $fe $00
	rst  $38                                         ; $4d82: $ff
	add  l                                           ; $4d83: $85
	nop                                              ; $4d84: $00
	add  b                                           ; $4d85: $80
	rst  $38                                         ; $4d86: $ff
	add  b                                           ; $4d87: $80
	xor  a                                           ; $4d88: $af
	add  b                                           ; $4d89: $80
	ld   d, l                                        ; $4d8a: $55
	ld   [bc], a                                     ; $4d8b: $02
	ld   [$c02a], a                                  ; $4d8c: $ea $2a $c0
	add  l                                           ; $4d8f: $85
	nop                                              ; $4d90: $00
	add  h                                           ; $4d91: $84
	rst  $38                                         ; $4d92: $ff
	add  b                                           ; $4d93: $80
	xor  d                                           ; $4d94: $aa
	add  [hl]                                        ; $4d95: $86
	nop                                              ; $4d96: $00
	nop                                              ; $4d97: $00
	db   $fd                                         ; $4d98: $fd
	add  c                                           ; $4d99: $81
	ldh  a, [c]                                      ; $4d9a: $f2
	inc  b                                           ; $4d9b: $04
	rst  $30                                         ; $4d9c: $f7
	pop  hl                                          ; $4d9d: $e1
	add  [hl]                                        ; $4d9e: $86
	and  b                                           ; $4d9f: $a0
	ccf                                              ; $4da0: $3f
	add  l                                           ; $4da1: $85
	nop                                              ; $4da2: $00
	ld   bc, $2ed1                                   ; $4da3: $01 $d1 $2e
	add  b                                           ; $4da6: $80
	ld   d, l                                        ; $4da7: $55
	add  b                                           ; $4da8: $80
	or   $80                                         ; $4da9: $f6 $80
	ccf                                              ; $4dab: $3f
	nop                                              ; $4dac: $00
	rst  $38                                         ; $4dad: $ff
	add  l                                           ; $4dae: $85
	nop                                              ; $4daf: $00
	ld   bc, $a25d                                   ; $4db0: $01 $5d $a2
	add  b                                           ; $4db3: $80
	dec  e                                           ; $4db4: $1d
	add  b                                           ; $4db5: $80
	ld   a, [hl+]                                    ; $4db6: $2a
	add  b                                           ; $4db7: $80
	inc  [hl]                                        ; $4db8: $34
	nop                                              ; $4db9: $00
	pop  af                                          ; $4dba: $f1
	add  l                                           ; $4dbb: $85
	ld   bc, $0780                                   ; $4dbc: $01 $80 $07
	add  b                                           ; $4dbf: $80
	inc  bc                                          ; $4dc0: $03
	add  d                                           ; $4dc1: $82
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	rst  $28                                         ; $4dc4: $ef
	add  e                                           ; $4dc5: $83
	jr   jr_077_4d48                                 ; $4dc6: $18 $80

	inc  e                                           ; $4dc8: $1c
	add  b                                           ; $4dc9: $80
	ld   a, [de]                                     ; $4dca: $1a
	add  b                                           ; $4dcb: $80
	db   $fd                                         ; $4dcc: $fd
	rlca                                             ; $4dcd: $07
	ld   b, $02                                      ; $4dce: $06 $02
	rst  $38                                         ; $4dd0: $ff
	db   $fd                                         ; $4dd1: $fd
	cp   d                                           ; $4dd2: $ba
	db   $e4                                         ; $4dd3: $e4
	and  h                                           ; $4dd4: $a4
	inc  b                                           ; $4dd5: $04
	add  b                                           ; $4dd6: $80
	db   $e4                                         ; $4dd7: $e4
	add  d                                           ; $4dd8: $82
	inc  b                                           ; $4dd9: $04
	add  b                                           ; $4dda: $80
	ld   b, h                                        ; $4ddb: $44
	add  b                                           ; $4ddc: $80
	xor  h                                           ; $4ddd: $ac
	add  b                                           ; $4dde: $80
	ld   d, h                                        ; $4ddf: $54
	nop                                              ; $4de0: $00
	adc  c                                           ; $4de1: $89
	add  c                                           ; $4de2: $81
	cp   [hl]                                        ; $4de3: $be
	nop                                              ; $4de4: $00
	cp   b                                           ; $4de5: $b8
	add  b                                           ; $4de6: $80
	cp   a                                           ; $4de7: $bf
	add  b                                           ; $4de8: $80
	cp   b                                           ; $4de9: $b8
	add  d                                           ; $4dea: $82
	cp   a                                           ; $4deb: $bf
	inc  b                                           ; $4dec: $04
	cp   [hl]                                        ; $4ded: $be
	cp   $3e                                         ; $4dee: $fe $3e
	rrca                                             ; $4df0: $0f
	rst  ToBoot                                         ; $4df1: $c7
	add  b                                           ; $4df2: $80
	or   $80                                         ; $4df3: $f6 $80
	rst  $30                                         ; $4df5: $f7
	ld   [bc], a                                     ; $4df6: $02
	rst  ToBoot                                         ; $4df7: $c7
	rst  $38                                         ; $4df8: $ff
	cp   $80                                         ; $4df9: $fe $80
	rst  ToBoot                                         ; $4dfb: $c7
	dec  b                                           ; $4dfc: $05
	cp   $1e                                         ; $4dfd: $fe $1e
	rst  $38                                         ; $4dff: $ff
	ld   h, b                                        ; $4e00: $60
	ld   a, a                                        ; $4e01: $7f
	inc  de                                          ; $4e02: $13
	add  b                                           ; $4e03: $80
	halt                                             ; $4e04: $76
	nop                                              ; $4e05: $00
	ld   [hl], a                                     ; $4e06: $77
	add  b                                           ; $4e07: $80
	ld   h, a                                        ; $4e08: $67
	add  b                                           ; $4e09: $80
	ld   [hl], a                                     ; $4e0a: $77
	nop                                              ; $4e0b: $00
	ld   h, a                                        ; $4e0c: $67
	add  b                                           ; $4e0d: $80
	rst  $38                                         ; $4e0e: $ff
	ld   b, $67                                      ; $4e0f: $06 $67
	ld   h, [hl]                                     ; $4e11: $66
	cp   $1e                                         ; $4e12: $fe $1e
	rst  $38                                         ; $4e14: $ff
	call c, $80c1                                    ; $4e15: $dc $c1 $80
	pop  hl                                          ; $4e18: $e1
	add  b                                           ; $4e19: $80
	pop  bc                                          ; $4e1a: $c1
	add  b                                           ; $4e1b: $80
	pop  hl                                          ; $4e1c: $e1
	add  b                                           ; $4e1d: $80
	pop  bc                                          ; $4e1e: $c1
	add  b                                           ; $4e1f: $80
	pop  hl                                          ; $4e20: $e1
	add  b                                           ; $4e21: $80
	ld   b, b                                        ; $4e22: $40
	ld   [bc], a                                     ; $4e23: $02
	ldh  [$e1], a                                    ; $4e24: $e0 $e1
	cp   $89                                         ; $4e26: $fe $89
	rst  $38                                         ; $4e28: $ff
	add  c                                           ; $4e29: $81
	inc  bc                                          ; $4e2a: $03
	inc  c                                           ; $4e2b: $0c
	rst  $38                                         ; $4e2c: $ff
	inc  bc                                          ; $4e2d: $03
	rst  $38                                         ; $4e2e: $ff
	ret  nz                                          ; $4e2f: $c0

	ld   hl, sp-$70                                  ; $4e30: $f8 $90
	db   $ec                                         ; $4e32: $ec
	nop                                              ; $4e33: $00
	add  $83                                         ; $4e34: $c6 $83
	rst  $38                                         ; $4e36: $ff
	ld   bc, $81ff                                   ; $4e37: $01 $ff $81
	nop                                              ; $4e3a: $00
	ld   [bc], a                                     ; $4e3b: $02
	rst  $38                                         ; $4e3c: $ff
	ld   l, $d1                                      ; $4e3d: $2e $d1
	add  b                                           ; $4e3f: $80
	pop  af                                          ; $4e40: $f1
	add  d                                           ; $4e41: $82
	di                                               ; $4e42: $f3
	add  d                                           ; $4e43: $82
	db   $e3                                         ; $4e44: $e3
	add  c                                           ; $4e45: $81
	ld   h, b                                        ; $4e46: $60
	ld   bc, $7ce3                                   ; $4e47: $01 $e3 $7c
	adc  c                                           ; $4e4a: $89
	rst  $38                                         ; $4e4b: $ff
	add  c                                           ; $4e4c: $81
	jr   jr_077_4e57                                 ; $4e4d: $18 $08

	rst  $38                                         ; $4e4f: $ff
	add  sp, $00                                     ; $4e50: $e8 $00
	adc  b                                           ; $4e52: $88
	add  b                                           ; $4e53: $80
	add  $c0                                         ; $4e54: $c6 $c0
	pop  hl                                          ; $4e56: $e1

jr_077_4e57:
	ldh  [$80], a                                    ; $4e57: $e0 $80
	ldh  a, [$80]                                    ; $4e59: $f0 $80
	ld   hl, sp-$80                                  ; $4e5b: $f8 $80
	inc  c                                           ; $4e5d: $0c
	ld   [bc], a                                     ; $4e5e: $02
	dec  c                                           ; $4e5f: $0d
	db   $fd                                         ; $4e60: $fd
	rrca                                             ; $4e61: $0f
	add  d                                           ; $4e62: $82
	nop                                              ; $4e63: $00
	add  b                                           ; $4e64: $80
	ld   a, a                                        ; $4e65: $7f
	nop                                              ; $4e66: $00
	rst  $38                                         ; $4e67: $ff
	add  b                                           ; $4e68: $80
	ccf                                              ; $4e69: $3f
	add  b                                           ; $4e6a: $80
	rrca                                             ; $4e6b: $0f
	add  b                                           ; $4e6c: $80
	inc  bc                                          ; $4e6d: $03
	ld   [bc], a                                     ; $4e6e: $02
	pop  bc                                          ; $4e6f: $c1
	ret  nz                                          ; $4e70: $c0

	rst  $38                                         ; $4e71: $ff
	add  b                                           ; $4e72: $80
	ld   e, $80                                      ; $4e73: $1e $80
	ld   c, $88                                      ; $4e75: $0e $88
	cp   $02                                         ; $4e77: $fe $02
	ld   [bc], a                                     ; $4e79: $02
	add  e                                           ; $4e7a: $83
	ld   a, a                                        ; $4e7b: $7f
	add  b                                           ; $4e7c: $80
	ld   l, a                                        ; $4e7d: $6f
	add  b                                           ; $4e7e: $80
	ld   [de], a                                     ; $4e7f: $12
	add  b                                           ; $4e80: $80
	ld   c, h                                        ; $4e81: $4c
	add  b                                           ; $4e82: $80
	ld   [bc], a                                     ; $4e83: $02
	add  d                                           ; $4e84: $82
	nop                                              ; $4e85: $00
	inc  bc                                          ; $4e86: $03
	ld   b, b                                        ; $4e87: $40
	nop                                              ; $4e88: $00
	xor  b                                           ; $4e89: $a8
	add  sp, -$80                                    ; $4e8a: $e8 $80
	sub  h                                           ; $4e8c: $94
	add  b                                           ; $4e8d: $80
	xor  b                                           ; $4e8e: $a8
	add  b                                           ; $4e8f: $80
	ld   d, b                                        ; $4e90: $50
	add  [hl]                                        ; $4e91: $86
	nop                                              ; $4e92: $00
	ld   bc, $02f2                                   ; $4e93: $01 $f2 $02
	add  b                                           ; $4e96: $80
	nop                                              ; $4e97: $00
	add  b                                           ; $4e98: $80

jr_077_4e99:
	ld   [bc], a                                     ; $4e99: $02
	add  b                                           ; $4e9a: $80
	inc  b                                           ; $4e9b: $04
	add  b                                           ; $4e9c: $80
	ld   bc, $0084                                   ; $4e9d: $01 $84 $00
	ld   bc, $7e8e                                   ; $4ea0: $01 $8e $7e
	add  b                                           ; $4ea3: $80
	db   $fd                                         ; $4ea4: $fd
	add  b                                           ; $4ea5: $80
	cp   h                                           ; $4ea6: $bc
	add  b                                           ; $4ea7: $80
	ld   a, d                                        ; $4ea8: $7a
	add  b                                           ; $4ea9: $80
	add  hl, sp                                      ; $4eaa: $39
	add  b                                           ; $4eab: $80
	nop                                              ; $4eac: $00
	add  d                                           ; $4ead: $82
	rra                                              ; $4eae: $1f
	add  hl, bc                                      ; $4eaf: $09
	jr   jr_077_4e99                                 ; $4eb0: $18 $e7

	rst  $38                                         ; $4eb2: $ff
	ld   a, [hl]                                     ; $4eb3: $7e
	ld   a, [$70bc]                                  ; $4eb4: $fa $bc $70
	ld   e, b                                        ; $4eb7: $58
	jr   c, jr_077_4ee2                              ; $4eb8: $38 $28

	add  b                                           ; $4eba: $80
	dec  c                                           ; $4ebb: $0d
	add  d                                           ; $4ebc: $82
	ld   hl, sp+$15                                  ; $4ebd: $f8 $15
	nop                                              ; $4ebf: $00
	ld   c, a                                        ; $4ec0: $4f
	ld   c, h                                        ; $4ec1: $4c
	di                                               ; $4ec2: $f3
	jp   $acff                                       ; $4ec3: $c3 $ff $ac


	db   $fc                                         ; $4ec6: $fc
	ld   l, h                                        ; $4ec7: $6c
	rst  $38                                         ; $4ec8: $ff
	rrca                                             ; $4ec9: $0f
	db   $fc                                         ; $4eca: $fc
	ld   e, $fe                                      ; $4ecb: $1e $fe
	ld   a, [$78fe]                                  ; $4ecd: $fa $fe $78
	ld   h, b                                        ; $4ed0: $60
	ldh  [$fe], a                                    ; $4ed1: $e0 $fe
	pop  hl                                          ; $4ed3: $e1
	rst  $38                                         ; $4ed4: $ff
	add  b                                           ; $4ed5: $80
	rrca                                             ; $4ed6: $0f
	ld   bc, $b030                                   ; $4ed7: $01 $30 $b0
	add  b                                           ; $4eda: $80
	or   [hl]                                        ; $4edb: $b6
	add  b                                           ; $4edc: $80
	or   b                                           ; $4edd: $b0
	ld   [bc], a                                     ; $4ede: $02
	and  b                                           ; $4edf: $a0
	xor  [hl]                                        ; $4ee0: $ae
	ld   c, h                                        ; $4ee1: $4c

jr_077_4ee2:
	add  b                                           ; $4ee2: $80
	rst  JumpTable                                         ; $4ee3: $df
	add  c                                           ; $4ee4: $81
	rst  $38                                         ; $4ee5: $ff
	dec  b                                           ; $4ee6: $05
	jp   $03ff                                       ; $4ee7: $c3 $ff $03


	ld   [bc], a                                     ; $4eea: $02
	jp   $80df                                       ; $4eeb: $c3 $df $80


	sbc  $03                                         ; $4eee: $de $03
	sbc  [hl]                                        ; $4ef0: $9e
	and  [hl]                                        ; $4ef1: $a6
	db   $e4                                         ; $4ef2: $e4
	ret  nz                                          ; $4ef3: $c0

	add  b                                           ; $4ef4: $80
	ld   h, b                                        ; $4ef5: $60
	add  b                                           ; $4ef6: $80
	ld   b, b                                        ; $4ef7: $40
	add  b                                           ; $4ef8: $80
	ld   h, b                                        ; $4ef9: $60
	add  b                                           ; $4efa: $80
	ld   b, b                                        ; $4efb: $40
	add  b                                           ; $4efc: $80
	ld   h, b                                        ; $4efd: $60
	add  b                                           ; $4efe: $80
	ld   b, b                                        ; $4eff: $40
	add  b                                           ; $4f00: $80
	ld   h, b                                        ; $4f01: $60
	ld   bc, $6703                                   ; $4f02: $01 $03 $67
	add  d                                           ; $4f05: $82
	rst  $28                                         ; $4f06: $ef
	inc  b                                           ; $4f07: $04
	ld   h, a                                        ; $4f08: $67
	ld   a, a                                        ; $4f09: $7f
	ld   d, e                                        ; $4f0a: $53
	cpl                                              ; $4f0b: $2f
	inc  de                                          ; $4f0c: $13
	add  b                                           ; $4f0d: $80
	ld   h, a                                        ; $4f0e: $67
	inc  b                                           ; $4f0f: $04
	daa                                              ; $4f10: $27
	scf                                              ; $4f11: $37
	ld   h, $25                                      ; $4f12: $26 $25
	sbc  c                                           ; $4f14: $99
	add  d                                           ; $4f15: $82
	cp   e                                           ; $4f16: $bb
	ld   a, [bc]                                     ; $4f17: $0a
	sbc  c                                           ; $4f18: $99
	rst  $38                                         ; $4f19: $ff
	nop                                              ; $4f1a: $00
	rst  $38                                         ; $4f1b: $ff
	nop                                              ; $4f1c: $00
	rst  $38                                         ; $4f1d: $ff
	ld   a, a                                        ; $4f1e: $7f
	ld   b, e                                        ; $4f1f: $43
	inc  bc                                          ; $4f20: $03
	pop  hl                                          ; $4f21: $e1
	ld   b, c                                        ; $4f22: $41
	add  h                                           ; $4f23: $84
	ldh  [c], a                                      ; $4f24: $e2
	inc  bc                                          ; $4f25: $03
	db   $e3                                         ; $4f26: $e3
	ld   h, b                                        ; $4f27: $60
	db   $e3                                         ; $4f28: $e3
	ld   [hl], b                                     ; $4f29: $70
	add  c                                           ; $4f2a: $81
	di                                               ; $4f2b: $f3
	add  b                                           ; $4f2c: $80
	db   $d3                                         ; $4f2d: $d3
	ld   bc, $7c9b                                   ; $4f2e: $01 $9b $7c
	add  d                                           ; $4f31: $82
	db   $fd                                         ; $4f32: $fd
	inc  b                                           ; $4f33: $04
	ld   a, h                                        ; $4f34: $7c
	rst  $38                                         ; $4f35: $ff
	ld   a, [de]                                     ; $4f36: $1a
	db   $fd                                         ; $4f37: $fd
	ld   a, [de]                                     ; $4f38: $1a
	add  c                                           ; $4f39: $81
	db   $fc                                         ; $4f3a: $fc
	inc  bc                                          ; $4f3b: $03
	cp   $fc                                         ; $4f3c: $fe $fc
	jp   hl                                          ; $4f3e: $e9


	sbc  l                                           ; $4f3f: $9d
	add  d                                           ; $4f40: $82
	cp   l                                           ; $4f41: $bd
	dec  b                                           ; $4f42: $05
	sbc  l                                           ; $4f43: $9d
	db   $fd                                         ; $4f44: $fd
	dec  c                                           ; $4f45: $0d
	db   $fd                                         ; $4f46: $fd
	inc  c                                           ; $4f47: $0c
	db   $fc                                         ; $4f48: $fc
	add  b                                           ; $4f49: $80
	db   $fd                                         ; $4f4a: $fd
	add  b                                           ; $4f4b: $80
	db   $fc                                         ; $4f4c: $fc
	ld   bc, $fd0d                                   ; $4f4d: $01 $0d $fd
	add  b                                           ; $4f50: $80
	inc  a                                           ; $4f51: $3c
	add  d                                           ; $4f52: $82
	inc  h                                           ; $4f53: $24
	add  b                                           ; $4f54: $80
	ld   h, h                                        ; $4f55: $64
	ld   bc, $1c9c                                   ; $4f56: $01 $9c $1c
	add  b                                           ; $4f59: $80
	ld   hl, $9f06                                   ; $4f5a: $21 $06 $9f
	rra                                              ; $4f5d: $1f
	cp   $ee                                         ; $4f5e: $fe $ee
	ld   l, $2a                                      ; $4f60: $2e $2a
	ld   d, $88                                      ; $4f62: $16 $88
	ld   [bc], a                                     ; $4f64: $02
	dec  b                                           ; $4f65: $05
	cp   $ab                                         ; $4f66: $fe $ab
	ld   c, a                                        ; $4f68: $4f
	ld   l, d                                        ; $4f69: $6a
	ld   c, $0c                                      ; $4f6a: $0e $0c
	add  b                                           ; $4f6c: $80
	ld   c, $0d                                      ; $4f6d: $0e $0d
	ld   c, a                                        ; $4f6f: $4f
	ld   c, [hl]                                     ; $4f70: $4e
	rrca                                             ; $4f71: $0f
	ld   c, c                                        ; $4f72: $49
	rrca                                             ; $4f73: $0f
	cpl                                              ; $4f74: $2f
	rrca                                             ; $4f75: $0f
	daa                                              ; $4f76: $27
	ld   c, a                                        ; $4f77: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f78: $cf
	ld   sp, hl                                      ; $4f79: $f9
	ld   l, b                                        ; $4f7a: $68
	ret  nz                                          ; $4f7b: $c0

	jp   $c080                                       ; $4f7c: $c3 $80 $c0


	ld   bc, $0640                                   ; $4f7f: $01 $40 $06
	add  c                                           ; $4f82: $81

jr_077_4f83:
	ld   b, b                                        ; $4f83: $40
	nop                                              ; $4f84: $00
	adc  h                                           ; $4f85: $8c
	add  c                                           ; $4f86: $81
	and  b                                           ; $4f87: $a0
	ld   bc, $00f7                                   ; $4f88: $01 $f7 $00
	add  b                                           ; $4f8b: $80
	ld   bc, $0080                                   ; $4f8c: $01 $80 $00
	add  b                                           ; $4f8f: $80
	inc  c                                           ; $4f90: $0c
	add  b                                           ; $4f91: $80
	nop                                              ; $4f92: $00
	add  b                                           ; $4f93: $80
	ld   [$0082], sp                                 ; $4f94: $08 $82 $00
	nop                                              ; $4f97: $00
	ld   [$1a8d], a                                  ; $4f98: $ea $8d $1a
	adc  [hl]                                        ; $4f9b: $8e
	cp   b                                           ; $4f9c: $b8
	ld   a, [bc]                                     ; $4f9d: $0a
	nop                                              ; $4f9e: $00
	ld   hl, sp+$3e                                  ; $4f9f: $f8 $3e
	cp   $de                                         ; $4fa1: $fe $de
	cp   $1e                                         ; $4fa3: $fe $1e
	cp   $18                                         ; $4fa5: $fe $18
	ld   hl, sp+$1e                                  ; $4fa7: $f8 $1e
	add  c                                           ; $4fa9: $81
	cp   $03                                         ; $4faa: $fe $03
	ld   a, [hl]                                     ; $4fac: $7e
	cp   $78                                         ; $4fad: $fe $78
	add  b                                           ; $4faf: $80
	add  b                                           ; $4fb0: $80
	cp   a                                           ; $4fb1: $bf
	add  b                                           ; $4fb2: $80
	and  c                                           ; $4fb3: $a1
	add  b                                           ; $4fb4: $80
	cp   l                                           ; $4fb5: $bd
	add  [hl]                                        ; $4fb6: $86
	and  l                                           ; $4fb7: $a5
	nop                                              ; $4fb8: $00
	sub  d                                           ; $4fb9: $92
	add  b                                           ; $4fba: $80
	halt                                             ; $4fbb: $76
	inc  bc                                          ; $4fbc: $03
	or   $e6                                         ; $4fbd: $f6 $e6
	rst  $20                                         ; $4fbf: $e7
	rst  $30                                         ; $4fc0: $f7
	add  c                                           ; $4fc1: $81
	or   $01                                         ; $4fc2: $f6 $01
	and  $e7                                         ; $4fc4: $e6 $e7
	add  d                                           ; $4fc6: $82
	rst  $30                                         ; $4fc7: $f7
	ld   bc, $40a5                                   ; $4fc8: $01 $a5 $40
	add  b                                           ; $4fcb: $80
	ld   h, b                                        ; $4fcc: $60
	add  b                                           ; $4fcd: $80
	ret  nz                                          ; $4fce: $c0

	add  b                                           ; $4fcf: $80
	ldh  [$80], a                                    ; $4fd0: $e0 $80
	ret  nz                                          ; $4fd2: $c0

	ld   bc, $e1e0                                   ; $4fd3: $01 $e0 $e1
	add  b                                           ; $4fd6: $80
	pop  bc                                          ; $4fd7: $c1
	add  b                                           ; $4fd8: $80
	pop  hl                                          ; $4fd9: $e1
	dec  b                                           ; $4fda: $05
	xor  $ed                                         ; $4fdb: $ee $ed
	nop                                              ; $4fdd: $00
	ld   l, l                                        ; $4fde: $6d
	db   $ec                                         ; $4fdf: $ec
	push hl                                          ; $4fe0: $e5
	add  d                                           ; $4fe1: $82
	db   $ed                                         ; $4fe2: $ed
	nop                                              ; $4fe3: $00
	ld   h, l                                        ; $4fe4: $65
	add  e                                           ; $4fe5: $83
	db   $ed                                         ; $4fe6: $ed
	inc  bc                                          ; $4fe7: $03
	ld   c, $f0                                      ; $4fe8: $0e $f0
	db   $10                                         ; $4fea: $10
	ld   hl, sp-$80                                  ; $4feb: $f8 $80
	rst  $28                                         ; $4fed: $ef
	add  b                                           ; $4fee: $80
	add  sp, -$7a                                    ; $4fef: $e8 $86
	db   $eb                                         ; $4ff1: $eb
	inc  b                                           ; $4ff2: $04
	dec  hl                                          ; $4ff3: $2b
	db   $d3                                         ; $4ff4: $d3
	ld   d, b                                        ; $4ff5: $50
	db   $d3                                         ; $4ff6: $d3
	jp   $c283                                       ; $4ff7: $c3 $83 $c2


	nop                                              ; $4ffa: $00
	ldh  [c], a                                      ; $4ffb: $e2
	add  e                                           ; $4ffc: $83
	db   $e3                                         ; $4ffd: $e3
	ld   [bc], a                                     ; $4ffe: $02
	ld   a, [hl]                                     ; $4fff: $7e
	db   $fd                                         ; $5000: $fd
	jr   jr_077_4f83                                 ; $5001: $18 $80

	db   $fd                                         ; $5003: $fd
	nop                                              ; $5004: $00
	ld   a, h                                        ; $5005: $7c
	add  d                                           ; $5006: $82
	db   $fd                                         ; $5007: $fd
	nop                                              ; $5008: $00
	ld   a, h                                        ; $5009: $7c
	add  e                                           ; $500a: $83
	db   $fd                                         ; $500b: $fd

jr_077_500c:
	ld   [bc], a                                     ; $500c: $02
	jr   jr_077_500c                                 ; $500d: $18 $fd

	dec  c                                           ; $500f: $0d
	add  b                                           ; $5010: $80
	db   $fd                                         ; $5011: $fd
	nop                                              ; $5012: $00
	sbc  l                                           ; $5013: $9d
	add  d                                           ; $5014: $82
	cp   l                                           ; $5015: $bd
	nop                                              ; $5016: $00
	sbc  l                                           ; $5017: $9d
	add  e                                           ; $5018: $83
	db   $fd                                         ; $5019: $fd
	ld   bc, $38c8                                   ; $501a: $01 $c8 $38
	add  b                                           ; $501d: $80
	inc  [hl]                                        ; $501e: $34
	add  b                                           ; $501f: $80
	ld   a, d                                        ; $5020: $7a
	add  b                                           ; $5021: $80
	ld   a, h                                        ; $5022: $7c
	add  b                                           ; $5023: $80
	ld   d, h                                        ; $5024: $54
	add  b                                           ; $5025: $80
	ld   l, b                                        ; $5026: $68
	add  b                                           ; $5027: $80
	nop                                              ; $5028: $00
	add  b                                           ; $5029: $80
	ld   b, b                                        ; $502a: $40
	add  b                                           ; $502b: $80
	cp   $00                                         ; $502c: $fe $00
	ld   [bc], a                                     ; $502e: $02
	add  b                                           ; $502f: $80
	cp   $83                                         ; $5030: $fe $83
	ld   [bc], a                                     ; $5032: $02
	nop                                              ; $5033: $00
	ld   d, [hl]                                     ; $5034: $56
	add  e                                           ; $5035: $83
	ld   a, [hl]                                     ; $5036: $7e
	ld   de, $4f5f                                   ; $5037: $11 $5f $4f
	rlca                                             ; $503a: $07
	ld   c, a                                        ; $503b: $4f
	ld   l, a                                        ; $503c: $6f
	rrca                                             ; $503d: $0f
	rla                                              ; $503e: $17
	rrca                                             ; $503f: $0f
	dec  bc                                          ; $5040: $0b
	rlca                                             ; $5041: $07
	inc  a                                           ; $5042: $3c
	ld   a, a                                        ; $5043: $7f
	ld   e, e                                        ; $5044: $5b
	ld   a, a                                        ; $5045: $7f
	inc  e                                           ; $5046: $1c
	ld   a, a                                        ; $5047: $7f
	and  a                                           ; $5048: $a7
	and  b                                           ; $5049: $a0
	add  b                                           ; $504a: $80
	ret  nz                                          ; $504b: $c0

	add  b                                           ; $504c: $80
	push bc                                          ; $504d: $c5
	add  b                                           ; $504e: $80
	ldh  [c], a                                      ; $504f: $e2
	inc  bc                                          ; $5050: $03
	push hl                                          ; $5051: $e5
	push bc                                          ; $5052: $c5
	add  d                                           ; $5053: $82
	jp   nz, $c580                                   ; $5054: $c2 $80 $c5

	ld   [bc], a                                     ; $5057: $02
	adc  b                                           ; $5058: $88
	rst  $28                                         ; $5059: $ef
	ldh  a, [$8a]                                    ; $505a: $f0 $8a
	nop                                              ; $505c: $00
	add  c                                           ; $505d: $81
	rrca                                             ; $505e: $0f
	ld   bc, $1fe0                                   ; $505f: $01 $e0 $1f

jr_077_5062:
	add  b                                           ; $5062: $80
	nop                                              ; $5063: $00
	add  d                                           ; $5064: $82
	dec  d                                           ; $5065: $15
	add  b                                           ; $5066: $80
	rra                                              ; $5067: $1f
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
	add  b                                           ; $506a: $80
	rra                                              ; $506b: $1f
	ld   [bc], a                                     ; $506c: $02
	rst  $38                                         ; $506d: $ff
	nop                                              ; $506e: $00
	rst  $38                                         ; $506f: $ff
	add  b                                           ; $5070: $80
	ld   hl, sp-$80                                  ; $5071: $f8 $80
	ld   [$5882], sp                                 ; $5073: $08 $82 $58
	add  b                                           ; $5076: $80
	ld   hl, sp+$06                                  ; $5077: $f8 $06
	ld   [$f0f8], sp                                 ; $5079: $08 $f8 $f0
	rst  $38                                         ; $507c: $ff
	nop                                              ; $507d: $00
	rst  $38                                         ; $507e: $ff
	nop                                              ; $507f: $00
	add  b                                           ; $5080: $80
	rra                                              ; $5081: $1f
	add  c                                           ; $5082: $81
	rrca                                             ; $5083: $0f
	ld   bc, $0f00                                   ; $5084: $01 $00 $0f
	add  c                                           ; $5087: $81
	nop                                              ; $5088: $00
	ld   bc, $00ff                                   ; $5089: $01 $ff $00
	add  c                                           ; $508c: $81
	rst  $38                                         ; $508d: $ff
	nop                                              ; $508e: $00
	dec  h                                           ; $508f: $25
	add  e                                           ; $5090: $83
	and  l                                           ; $5091: $a5
	ld   b, $25                                      ; $5092: $06 $25
	and  l                                           ; $5094: $a5
	inc  h                                           ; $5095: $24
	daa                                              ; $5096: $27
	inc  bc                                          ; $5097: $03
	rst  $38                                         ; $5098: $ff
	nop                                              ; $5099: $00
	add  c                                           ; $509a: $81
	rst  $38                                         ; $509b: $ff
	dec  b                                           ; $509c: $05
	ld   [de], a                                     ; $509d: $12
	rst  $30                                         ; $509e: $f7
	and  $ff                                         ; $509f: $e6 $ff
	ld   bc, $80fd                                   ; $50a1: $01 $fd $80
	ld   bc, $0002                                   ; $50a4: $01 $02 $00
	rst  $38                                         ; $50a7: $ff
	nop                                              ; $50a8: $00
	add  e                                           ; $50a9: $83
	rst  $38                                         ; $50aa: $ff
	ld   bc, $c1c0                                   ; $50ab: $01 $c0 $c1
	add  b                                           ; $50ae: $80
	pop  hl                                          ; $50af: $e1
	add  b                                           ; $50b0: $80
	ret  nz                                          ; $50b1: $c0

	ld   b, $e0                                      ; $50b2: $06 $e0
	pop  hl                                          ; $50b4: $e1
	ld   b, b                                        ; $50b5: $40
	pop  bc                                          ; $50b6: $c1
	rst  JumpTable                                         ; $50b7: $df
	ld   a, $e1                                      ; $50b8: $3e $e1
	add  c                                           ; $50ba: $81
	add  c                                           ; $50bb: $81
	ld   bc, $e807                                   ; $50bc: $01 $07 $e8
	add  b                                           ; $50bf: $80
	ldh  [$80], a                                    ; $50c0: $e0 $80
	nop                                              ; $50c2: $00
	inc  b                                           ; $50c3: $04
	db   $10                                         ; $50c4: $10
	rst  $38                                         ; $50c5: $ff
	nop                                              ; $50c6: $00
	rst  $38                                         ; $50c7: $ff
	nop                                              ; $50c8: $00
	add  h                                           ; $50c9: $84
	rst  $38                                         ; $50ca: $ff
	add  b                                           ; $50cb: $80
	rrca                                             ; $50cc: $0f
	add  b                                           ; $50cd: $80
	rra                                              ; $50ce: $1f
	add  b                                           ; $50cf: $80
	nop                                              ; $50d0: $00
	inc  bc                                          ; $50d1: $03
	rst  $38                                         ; $50d2: $ff
	rra                                              ; $50d3: $1f
	ldh  [rP1], a                                    ; $50d4: $e0 $00
	add  d                                           ; $50d6: $82
	rst  $38                                         ; $50d7: $ff
	ld   bc, $5fc0                                   ; $50d8: $01 $c0 $5f
	add  c                                           ; $50db: $81
	db   $e3                                         ; $50dc: $e3
	nop                                              ; $50dd: $00
	ld   [hl], b                                     ; $50de: $70
	add  b                                           ; $50df: $80
	jr   nc, jr_077_5062                             ; $50e0: $30 $80

	di                                               ; $50e2: $f3
	ld   bc, $3230                                   ; $50e3: $01 $30 $32
	add  c                                           ; $50e6: $81
	ldh  a, [c]                                      ; $50e7: $f2
	ld   [bc], a                                     ; $50e8: $02
	ldh  [c], a                                      ; $50e9: $e2
	ld   [hl+], a                                    ; $50ea: $22
	db   $db                                         ; $50eb: $db
	add  c                                           ; $50ec: $81
	db   $fd                                         ; $50ed: $fd
	ld   [bc], a                                     ; $50ee: $02
	jr   jr_077_50f1                                 ; $50ef: $18 $00

jr_077_50f1:
	ld   [bc], a                                     ; $50f1: $02
	add  b                                           ; $50f2: $80
	rst  $38                                         ; $50f3: $ff
	add  l                                           ; $50f4: $85
	nop                                              ; $50f5: $00
	ld   b, $f2                                      ; $50f6: $06 $f2
	db   $fd                                         ; $50f8: $fd
	db   $fc                                         ; $50f9: $fc
	db   $fd                                         ; $50fa: $fd
	ld   [hl], d                                     ; $50fb: $72
	ld   a, a                                        ; $50fc: $7f
	inc  bc                                          ; $50fd: $03
	add  b                                           ; $50fe: $80
	rst  $38                                         ; $50ff: $ff
	add  l                                           ; $5100: $85
	nop                                              ; $5101: $00
	inc  b                                           ; $5102: $04
	sub  d                                           ; $5103: $92
	ld   l, l                                        ; $5104: $6d

jr_077_5105:
	nop                                              ; $5105: $00
	ld   a, a                                        ; $5106: $7f
	add  b                                           ; $5107: $80
	add  d                                           ; $5108: $82
	rst  $38                                         ; $5109: $ff
	add  l                                           ; $510a: $85
	nop                                              ; $510b: $00
	dec  bc                                          ; $510c: $0b
	dec  e                                           ; $510d: $1d
	cp   $01                                         ; $510e: $fe $01
	rst  $38                                         ; $5110: $ff
	ld   a, [de]                                     ; $5111: $1a
	ld   hl, sp-$03                                  ; $5112: $f8 $fd
	rst  $38                                         ; $5114: $ff
	ld   a, [$0400]                                  ; $5115: $fa $00 $04
	nop                                              ; $5118: $00
	add  d                                           ; $5119: $82
	ld   [bc], a                                     ; $511a: $02
	inc  bc                                          ; $511b: $03
	db   $fc                                         ; $511c: $fc
	ld   a, a                                        ; $511d: $7f
	add  b                                           ; $511e: $80
	rst  $38                                         ; $511f: $ff
	add  b                                           ; $5120: $80

jr_077_5121:
	ccf                                              ; $5121: $3f
	ld   bc, $c0ff                                   ; $5122: $01 $ff $c0
	add  b                                           ; $5125: $80
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	ld   b, b                                        ; $5128: $40
	add  e                                           ; $5129: $83
	nop                                              ; $512a: $00
	ld   [bc], a                                     ; $512b: $02
	ld   [hl], b                                     ; $512c: $70
	rst  $28                                         ; $512d: $ef
	rrca                                             ; $512e: $0f
	add  b                                           ; $512f: $80
	rst  $28                                         ; $5130: $ef
	add  b                                           ; $5131: $80
	add  sp, -$79                                    ; $5132: $e8 $87
	nop                                              ; $5134: $00
	nop                                              ; $5135: $00
	db   $10                                         ; $5136: $10
	add  a                                           ; $5137: $87
	rrca                                             ; $5138: $0f
	nop                                              ; $5139: $00
	nop                                              ; $513a: $00
	add  e                                           ; $513b: $83
	rrca                                             ; $513c: $0f
	nop                                              ; $513d: $00
	nop                                              ; $513e: $00
	add  l                                           ; $513f: $85
	rst  $38                                         ; $5140: $ff
	nop                                              ; $5141: $00
	ld   b, $81                                      ; $5142: $06 $81
	ld   sp, hl                                      ; $5144: $f9
	add  b                                           ; $5145: $80
	rst  $38                                         ; $5146: $ff
	add  b                                           ; $5147: $80
	cp   $00                                         ; $5148: $fe $00
	nop                                              ; $514a: $00
	add  e                                           ; $514b: $83
	rst  $38                                         ; $514c: $ff
	inc  bc                                          ; $514d: $03
	rst  $28                                         ; $514e: $ef
	ldh  a, [$90]                                    ; $514f: $f0 $90
	ld   [hl], b                                     ; $5151: $70
	add  b                                           ; $5152: $80
	ld   h, $80                                      ; $5153: $26 $80
	res  0, b                                        ; $5155: $cb $80
	ld   e, a                                        ; $5157: $5f
	nop                                              ; $5158: $00
	nop                                              ; $5159: $00
	add  d                                           ; $515a: $82
	rst  $38                                         ; $515b: $ff
	ld   [bc], a                                     ; $515c: $02
	db   $fc                                         ; $515d: $fc
	ld   [hl], h                                     ; $515e: $74
	adc  b                                           ; $515f: $88
	add  b                                           ; $5160: $80
	ldh  a, [c]                                      ; $5161: $f2
	add  b                                           ; $5162: $80
	jp   nz, $8080                                   ; $5163: $c2 $80 $80

	add  b                                           ; $5166: $80
	ldh  a, [c]                                      ; $5167: $f2
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	add  c                                           ; $516a: $81
	rst  $38                                         ; $516b: $ff
	ld   bc, $44bb                                   ; $516c: $01 $bb $44
	add  b                                           ; $516f: $80
	add  h                                           ; $5170: $84
	add  b                                           ; $5171: $80
	ldh  [$80], a                                    ; $5172: $e0 $80
	ld   c, e                                        ; $5174: $4b
	add  b                                           ; $5175: $80
	pop  hl                                          ; $5176: $e1
	add  b                                           ; $5177: $80
	and  e                                           ; $5178: $a3
	dec  b                                           ; $5179: $05
	nop                                              ; $517a: $00
	rst  $38                                         ; $517b: $ff
	db   $ed                                         ; $517c: $ed
	ldh  a, [c]                                      ; $517d: $f2
	ld   e, b                                        ; $517e: $58
	cp   b                                           ; $517f: $b8
	add  b                                           ; $5180: $80
	sub  d                                           ; $5181: $92
	add  b                                           ; $5182: $80
	jr   c, jr_077_5105                              ; $5183: $38 $80

	adc  c                                           ; $5185: $89
	add  b                                           ; $5186: $80
	ld   a, $80                                      ; $5187: $3e $80
	sbc  e                                           ; $5189: $9b
	rlca                                             ; $518a: $07
	rst  $38                                         ; $518b: $ff
	add  c                                           ; $518c: $81
	rst  JumpTable                                         ; $518d: $df
	ld   a, $e1                                      ; $518e: $3e $e1
	add  c                                           ; $5190: $81
	pop  hl                                          ; $5191: $e1
	ld   h, b                                        ; $5192: $60
	add  b                                           ; $5193: $80
	ret  nz                                          ; $5194: $c0

	add  b                                           ; $5195: $80
	ld   h, b                                        ; $5196: $60
	add  b                                           ; $5197: $80
	pop  bc                                          ; $5198: $c1
	add  b                                           ; $5199: $80
	ldh  [rSB], a                                    ; $519a: $e0 $01
	ld   a, [hl]                                     ; $519c: $7e
	nop                                              ; $519d: $00
	add  b                                           ; $519e: $80
	jr   nz, jr_077_5121                             ; $519f: $20 $80

	add  hl, hl                                      ; $51a1: $29
	add  b                                           ; $51a2: $80
	ld   bc, $a380                                   ; $51a3: $01 $80 $a3
	add  b                                           ; $51a6: $80
	cp   h                                           ; $51a7: $bc
	add  b                                           ; $51a8: $80
	ld   e, a                                        ; $51a9: $5f
	add  b                                           ; $51aa: $80
	db   $ed                                         ; $51ab: $ed
	add  d                                           ; $51ac: $82
	nop                                              ; $51ad: $00
	add  b                                           ; $51ae: $80
	ld   [bc], a                                     ; $51af: $02
	add  b                                           ; $51b0: $80
	ld   hl, $8b80                                   ; $51b1: $21 $80 $8b
	add  b                                           ; $51b4: $80
	sub  l                                           ; $51b5: $95
	add  b                                           ; $51b6: $80
	ld   [$bf80], a                                  ; $51b7: $ea $80 $bf
	inc  b                                           ; $51ba: $04
	ld   e, $22                                      ; $51bb: $1e $22
	jr   nz, jr_077_51e1                             ; $51bd: $20 $22

	inc  hl                                          ; $51bf: $23
	add  c                                           ; $51c0: $81
	ld   h, e                                        ; $51c1: $63
	add  h                                           ; $51c2: $84
	db   $e3                                         ; $51c3: $e3
	add  b                                           ; $51c4: $80
	di                                               ; $51c5: $f3
	ld   bc, $7f01                                   ; $51c6: $01 $01 $7f
	add  b                                           ; $51c9: $80
	ld   bc, $ff00                                   ; $51ca: $01 $00 $ff
	adc  c                                           ; $51cd: $89
	cp   $02                                         ; $51ce: $fe $02
	db   $fd                                         ; $51d0: $fd
	db   $fc                                         ; $51d1: $fc
	cp   $80                                         ; $51d2: $fe $80
	nop                                              ; $51d4: $00
	adc  c                                           ; $51d5: $89
	add  b                                           ; $51d6: $80
	nop                                              ; $51d7: $00
	ld   a, [hl]                                     ; $51d8: $7e
	add  e                                           ; $51d9: $83
	nop                                              ; $51da: $00
	add  b                                           ; $51db: $80
	ld   [bc], a                                     ; $51dc: $02
	add  b                                           ; $51dd: $80
	nop                                              ; $51de: $00
	add  b                                           ; $51df: $80
	ld   b, [hl]                                     ; $51e0: $46

jr_077_51e1:
	add  b                                           ; $51e1: $80
	and  c                                           ; $51e2: $a1
	add  b                                           ; $51e3: $80
	ld   e, [hl]                                     ; $51e4: $5e
	nop                                              ; $51e5: $00
	ld   bc, $0287                                   ; $51e6: $01 $87 $02
	add  b                                           ; $51e9: $80
	ld   [hl-], a                                    ; $51ea: $32
	add  b                                           ; $51eb: $80
	sub  d                                           ; $51ec: $92
	add  b                                           ; $51ed: $80
	ld   [hl], d                                     ; $51ee: $72
	nop                                              ; $51ef: $00
	add  e                                           ; $51f0: $83
	add  a                                           ; $51f1: $87
	nop                                              ; $51f2: $00
	add  b                                           ; $51f3: $80
	rlca                                             ; $51f4: $07
	add  b                                           ; $51f5: $80
	jr   c, jr_077_51fa                              ; $51f6: $38 $02

	ld   b, e                                        ; $51f8: $43
	ld   b, a                                        ; $51f9: $47

jr_077_51fa:
	sub  h                                           ; $51fa: $94
	add  b                                           ; $51fb: $80
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	ld   [$0b80], sp                                 ; $51fe: $08 $80 $0b
	add  b                                           ; $5201: $80
	inc  c                                           ; $5202: $0c
	add  b                                           ; $5203: $80
	rst  $28                                         ; $5204: $ef
	add  b                                           ; $5205: $80
	nop                                              ; $5206: $00
	inc  bc                                          ; $5207: $03
	rst  $20                                         ; $5208: $e7
	add  b                                           ; $5209: $80
	ld   h, e                                        ; $520a: $63
	inc  e                                           ; $520b: $1c
	adc  [hl]                                        ; $520c: $8e
	rrca                                             ; $520d: $0f
	add  b                                           ; $520e: $80
	di                                               ; $520f: $f3
	sub  b                                           ; $5210: $90
	rst  $38                                         ; $5211: $ff
	add  b                                           ; $5212: $80
	ei                                               ; $5213: $fb
	adc  [hl]                                        ; $5214: $8e
	rst  $38                                         ; $5215: $ff
	add  b                                           ; $5216: $80
	di                                               ; $5217: $f3
	add  [hl]                                        ; $5218: $86
	rst  $38                                         ; $5219: $ff
	add  b                                           ; $521a: $80
	db   $fc                                         ; $521b: $fc
	add  b                                           ; $521c: $80
	res  1, d                                        ; $521d: $cb $8a
	rst  $38                                         ; $521f: $ff
	add  b                                           ; $5220: $80
	sbc  a                                           ; $5221: $9f
	add  b                                           ; $5222: $80
	db   $fc                                         ; $5223: $fc
	add  b                                           ; $5224: $80
	rst  $38                                         ; $5225: $ff
	add  b                                           ; $5226: $80
	res  0, [hl]                                     ; $5227: $cb $86
	rst  $38                                         ; $5229: $ff
	ld   bc, $c1bf                                   ; $522a: $01 $bf $c1
	add  b                                           ; $522d: $80
	pop  hl                                          ; $522e: $e1
	add  b                                           ; $522f: $80
	pop  bc                                          ; $5230: $c1
	add  b                                           ; $5231: $80
	pop  hl                                          ; $5232: $e1
	add  b                                           ; $5233: $80
	pop  bc                                          ; $5234: $c1
	add  b                                           ; $5235: $80
	pop  hl                                          ; $5236: $e1
	add  b                                           ; $5237: $80
	pop  bc                                          ; $5238: $c1

jr_077_5239:
	add  b                                           ; $5239: $80
	pop  hl                                          ; $523a: $e1
	ld   bc, $ff81                                   ; $523b: $01 $81 $ff
	add  b                                           ; $523e: $80
	rst  JumpTable                                         ; $523f: $df
	adc  d                                           ; $5240: $8a
	rst  $38                                         ; $5241: $ff
	inc  bc                                          ; $5242: $03
	db   $eb                                         ; $5243: $eb
	rst  $38                                         ; $5244: $ff
	inc  d                                           ; $5245: $14
	rst  $38                                         ; $5246: $ff
	add  b                                           ; $5247: $80
	rlca                                             ; $5248: $07
	add  b                                           ; $5249: $80
	ld   [bc], a                                     ; $524a: $02
	add  [hl]                                        ; $524b: $86
	nop                                              ; $524c: $00
	ld   bc, $f372                                   ; $524d: $01 $72 $f3
	adc  b                                           ; $5250: $88
	db   $d3                                         ; $5251: $d3
	add  d                                           ; $5252: $82
	db   $e3                                         ; $5253: $e3
	nop                                              ; $5254: $00
	add  c                                           ; $5255: $81
	adc  l                                           ; $5256: $8d
	cp   $00                                         ; $5257: $fe $00
	rst  $38                                         ; $5259: $ff
	add  a                                           ; $525a: $87
	add  b                                           ; $525b: $80
	ld   [bc], a                                     ; $525c: $02
	add  c                                           ; $525d: $81
	add  b                                           ; $525e: $80
	add  c                                           ; $525f: $81
	add  c                                           ; $5260: $81
	add  b                                           ; $5261: $80
	ld   bc, $6719                                   ; $5262: $01 $19 $67
	add  b                                           ; $5265: $80
	ld   e, a                                        ; $5266: $5f
	ld   [$d1d0], sp                                 ; $5267: $08 $d0 $d1
	rst  $20                                         ; $526a: $e7
	xor  $09                                         ; $526b: $ee $09
	ld   [hl], c                                     ; $526d: $71
	ld   [$87ff], sp                                 ; $526e: $08 $ff $87
	add  b                                           ; $5271: $80
	jr   jr_077_527a                                 ; $5272: $18 $06

	rst  $38                                         ; $5274: $ff
	or   $0e                                         ; $5275: $f6 $0e
	inc  [hl]                                        ; $5277: $34
	ld   a, h                                        ; $5278: $7c
	xor  b                                           ; $5279: $a8

jr_077_527a:
	ld   hl, sp-$80                                  ; $527a: $f8 $80
	ld   [$0003], sp                                 ; $527c: $08 $03 $00
	ldh  a, [$6c]                                    ; $527f: $f0 $6c
	add  e                                           ; $5281: $83
	add  b                                           ; $5282: $80
	ld   a, a                                        ; $5283: $7f
	add  b                                           ; $5284: $80
	add  sp, $0b                                     ; $5285: $e8 $0b
	ret  nz                                          ; $5287: $c0

	jr   jr_077_52c3                                 ; $5288: $18 $39

	ld   bc, $0616                                   ; $528a: $01 $16 $06
	rrca                                             ; $528d: $0f
	nop                                              ; $528e: $00
	inc  e                                           ; $528f: $1c
	inc  bc                                          ; $5290: $03
	rra                                              ; $5291: $1f
	rst  $38                                         ; $5292: $ff
	add  b                                           ; $5293: $80
	ld   hl, sp-$80                                  ; $5294: $f8 $80
	ld   h, e                                        ; $5296: $63
	nop                                              ; $5297: $00
	nop                                              ; $5298: $00
	add  b                                           ; $5299: $80
	ld   h, e                                        ; $529a: $63
	db   $10                                         ; $529b: $10
	adc  h                                           ; $529c: $8c
	or   e                                           ; $529d: $b3
	nop                                              ; $529e: $00
	rst  $38                                         ; $529f: $ff
	ccf                                              ; $52a0: $3f
	rst  $38                                         ; $52a1: $ff
	add  [hl]                                        ; $52a2: $86
	add  l                                           ; $52a3: $85
	rst  $38                                         ; $52a4: $ff
	ldh  [c], a                                      ; $52a5: $e2
	ccf                                              ; $52a6: $3f
	ld   hl, $feff                                   ; $52a7: $21 $ff $fe
	rst  $38                                         ; $52aa: $ff
	sbc  $df                                         ; $52ab: $de $df
	add  b                                           ; $52ad: $80
	jr   jr_077_5239                                 ; $52ae: $18 $89

	nop                                              ; $52b0: $00
	adc  l                                           ; $52b1: $8d
	rst  $38                                         ; $52b2: $ff
	inc  e                                           ; $52b3: $1c
	rst  $28                                         ; $52b4: $ef
	rst  $38                                         ; $52b5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52b6: $cf
	rst  $38                                         ; $52b7: $ff
	cpl                                              ; $52b8: $2f
	rst  $38                                         ; $52b9: $ff
	ret  z                                           ; $52ba: $c8

	rst  $38                                         ; $52bb: $ff
	cp   b                                           ; $52bc: $b8
	rst  $38                                         ; $52bd: $ff
	ld   a, a                                        ; $52be: $7f
	rst  $38                                         ; $52bf: $ff
	rrca                                             ; $52c0: $0f
	rst  $38                                         ; $52c1: $ff
	nop                                              ; $52c2: $00

jr_077_52c3:
	rst  $38                                         ; $52c3: $ff
	db   $e3                                         ; $52c4: $e3
	rst  $38                                         ; $52c5: $ff
	db   $fc                                         ; $52c6: $fc
	rst  $38                                         ; $52c7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52c8: $cf
	rst  $38                                         ; $52c9: $ff
	ccf                                              ; $52ca: $3f
	rst  $38                                         ; $52cb: $ff
	ld   h, b                                        ; $52cc: $60
	rst  $38                                         ; $52cd: $ff
	ret  nz                                          ; $52ce: $c0

	rst  $38                                         ; $52cf: $ff
	ccf                                              ; $52d0: $3f
	add  c                                           ; $52d1: $81
	rst  $38                                         ; $52d2: $ff
	ld   b, $87                                      ; $52d3: $06 $87
	rst  $38                                         ; $52d5: $ff
	ld   [$f8ff], sp                                 ; $52d6: $08 $ff $f8

jr_077_52d9:
	rst  $38                                         ; $52d9: $ff
	rst  $20                                         ; $52da: $e7

jr_077_52db:
	add  c                                           ; $52db: $81
	rst  $38                                         ; $52dc: $ff
	dec  b                                           ; $52dd: $05
	rla                                              ; $52de: $17
	rst  $38                                         ; $52df: $ff
	inc  h                                           ; $52e0: $24

jr_077_52e1:
	rst  $38                                         ; $52e1: $ff
	db   $fc                                         ; $52e2: $fc
	rst  $38                                         ; $52e3: $ff
	add  b                                           ; $52e4: $80
	ldh  a, [rDIV]                                   ; $52e5: $f0 $04
	jr   nc, jr_077_52d9                             ; $52e7: $30 $f0

	jr   nz, jr_077_52db                             ; $52e9: $20 $f0

	ldh  [$83], a                                    ; $52eb: $e0 $83
	ldh  a, [rTIMA]                                  ; $52ed: $f0 $05
	jr   nc, jr_077_52e1                             ; $52ef: $30 $f0

	ld   b, b                                        ; $52f1: $40
	ldh  a, [$ef]                                    ; $52f2: $f0 $ef
	pop  bc                                          ; $52f4: $c1
	add  b                                           ; $52f5: $80
	pop  hl                                          ; $52f6: $e1
	add  b                                           ; $52f7: $80
	pop  bc                                          ; $52f8: $c1
	ld   bc, $e061                                   ; $52f9: $01 $61 $e0
	add  b                                           ; $52fc: $80
	ret  nz                                          ; $52fd: $c0

	add  b                                           ; $52fe: $80
	ldh  [$80], a                                    ; $52ff: $e0 $80
	ret  nz                                          ; $5301: $c0

Jump_077_5302:
	add  b                                           ; $5302: $80
	ldh  [$03], a                                    ; $5303: $e0 $03
	rra                                              ; $5305: $1f
	rst  $38                                         ; $5306: $ff
	ld   de, $80f1                                   ; $5307: $11 $f1 $80
	ld   b, b                                        ; $530a: $40
	adc  c                                           ; $530b: $89
	nop                                              ; $530c: $00
	add  a                                           ; $530d: $87
	rst  $38                                         ; $530e: $ff
	ld   b, $fe                                      ; $530f: $06 $fe
	rst  $38                                         ; $5311: $ff
	pop  af                                          ; $5312: $f1
	cp   $8e                                         ; $5313: $fe $8e
	ldh  a, [$ed]                                    ; $5315: $f0 $ed
	add  c                                           ; $5317: $81
	db   $e3                                         ; $5318: $e3
	nop                                              ; $5319: $00
	jp   nz, $c380                                   ; $531a: $c2 $80 $c3

	add  c                                           ; $531d: $81
	jp   nz, Jump_077_4200                           ; $531e: $c2 $00 $42

	add  c                                           ; $5321: $81
	jp   nz, Jump_077_5302                           ; $5322: $c2 $02 $53

	ld   d, d                                        ; $5325: $52
	nop                                              ; $5326: $00
	add  l                                           ; $5327: $85
	cp   $02                                         ; $5328: $fe $02
	ld   bc, $7f00                                   ; $532a: $01 $00 $7f
	add  b                                           ; $532d: $80
	ld   d, b                                        ; $532e: $50
	ld   bc, $e868                                   ; $532f: $01 $68 $e8
	add  b                                           ; $5332: $80
	ld   d, b                                        ; $5333: $50
	add  d                                           ; $5334: $82
	add  c                                           ; $5335: $81
	add  b                                           ; $5336: $80
	add  e                                           ; $5337: $83
	inc  bc                                          ; $5338: $03
	sbc  [hl]                                        ; $5339: $9e
	ld   e, $78                                      ; $533a: $1e $78
	ld   hl, sp-$7d                                  ; $533c: $f8 $83
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	rst  $38                                         ; $5340: $ff
	add  b                                           ; $5341: $80
	ld   bc, $fe80                                   ; $5342: $01 $80 $fe
	inc  bc                                          ; $5345: $03
	ccf                                              ; $5346: $3f
	ld   b, $ff                                      ; $5347: $06 $ff
	cp   c                                           ; $5349: $b9
	add  e                                           ; $534a: $83
	add  b                                           ; $534b: $80
	ld   h, $03                                      ; $534c: $26 $03
	rlca                                             ; $534e: $07
	cp   e                                           ; $534f: $bb
	rst  $38                                         ; $5350: $ff
	ld   b, [hl]                                     ; $5351: $46
	rst  $38                                         ; $5352: $ff
	ld   b, $ff                                      ; $5353: $06 $ff
	ld   h, b                                        ; $5355: $60
	rst  $38                                         ; $5356: $ff
	sbc  a                                           ; $5357: $9f
	inc  bc                                          ; $5358: $03
	nop                                              ; $5359: $00
	inc  bc                                          ; $535a: $03
	inc  b                                           ; $535b: $04
	ld   a, a                                        ; $535c: $7f
	add  e                                           ; $535d: $83
	rst  $38                                         ; $535e: $ff
	db   $f4                                         ; $535f: $f4
	rst  $38                                         ; $5360: $ff
	dec  bc                                          ; $5361: $0b
	rst  $38                                         ; $5362: $ff
	ldh  [rIE], a                                    ; $5363: $e0 $ff
	sbc  e                                           ; $5365: $9b
	db   $fc                                         ; $5366: $fc
	ld   b, b                                        ; $5367: $40
	cp   $de                                         ; $5368: $fe $de
	db   $fc                                         ; $536a: $fc
	inc  de                                          ; $536b: $13
	rst  $38                                         ; $536c: $ff
	ldh  [$fc], a                                    ; $536d: $e0 $fc
	ldh  [rIE], a                                    ; $536f: $e0 $ff
	ld   a, a                                        ; $5371: $7f
	adc  h                                           ; $5372: $8c
	nop                                              ; $5373: $00
	add  b                                           ; $5374: $80
	ret  nz                                          ; $5375: $c0

	add  e                                           ; $5376: $83
	nop                                              ; $5377: $00
	add  b                                           ; $5378: $80
	add  b                                           ; $5379: $80
	add  b                                           ; $537a: $80
	nop                                              ; $537b: $00
	ld   e, e                                        ; $537c: $5b
	ld   [bc], a                                     ; $537d: $02
	add  [hl]                                        ; $537e: $86
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	rrca                                             ; $5381: $0f
	add  l                                           ; $5382: $85
	rlca                                             ; $5383: $07
	nop                                              ; $5384: $00
	ld   [$0085], sp                                 ; $5385: $08 $85 $00
	nop                                              ; $5388: $00
	rst  $38                                         ; $5389: $ff
	add  d                                           ; $538a: $82
	or   c                                           ; $538b: $b1
	add  c                                           ; $538c: $81
	or   b                                           ; $538d: $b0
	nop                                              ; $538e: $00
	ld   c, a                                        ; $538f: $4f
	add  l                                           ; $5390: $85
	nop                                              ; $5391: $00
	inc  b                                           ; $5392: $04
	and  l                                           ; $5393: $a5
	db   $db                                         ; $5394: $db
	set  3, e                                        ; $5395: $cb $db
	sub  c                                           ; $5397: $91
	add  c                                           ; $5398: $81
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	rst  $38                                         ; $539b: $ff
	add  l                                           ; $539c: $85
	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	sbc  e                                           ; $539f: $9b
	add  c                                           ; $53a0: $81
	halt                                             ; $53a1: $76
	nop                                              ; $53a2: $00
	ld   [de], a                                     ; $53a3: $12
	add  c                                           ; $53a4: $81
	nop                                              ; $53a5: $00
	nop                                              ; $53a6: $00
	rst  $38                                         ; $53a7: $ff
	add  l                                           ; $53a8: $85
	nop                                              ; $53a9: $00
	nop                                              ; $53aa: $00
	ccf                                              ; $53ab: $3f
	add  c                                           ; $53ac: $81
	rst  $20                                         ; $53ad: $e7
	nop                                              ; $53ae: $00
	daa                                              ; $53af: $27
	add  c                                           ; $53b0: $81
	nop                                              ; $53b1: $00
	nop                                              ; $53b2: $00
	rst  $38                                         ; $53b3: $ff
	add  l                                           ; $53b4: $85
	nop                                              ; $53b5: $00
	nop                                              ; $53b6: $00
	inc  h                                           ; $53b7: $24
	add  b                                           ; $53b8: $80
	jp   c, $d901                                    ; $53b9: $da $01 $d9

	ld   [bc], a                                     ; $53bc: $02
	add  c                                           ; $53bd: $81
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	rst  $38                                         ; $53c0: $ff
	add  [hl]                                        ; $53c1: $86
	nop                                              ; $53c2: $00
	add  c                                           ; $53c3: $81
	ldh  a, [rP1]                                    ; $53c4: $f0 $00
	rrca                                             ; $53c6: $0f
	add  c                                           ; $53c7: $81
	nop                                              ; $53c8: $00
	nop                                              ; $53c9: $00
	rst  $38                                         ; $53ca: $ff
	add  l                                           ; $53cb: $85
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	rst  $38                                         ; $53ce: $ff
	add  d                                           ; $53cf: $82
	sbc  a                                           ; $53d0: $9f
	add  c                                           ; $53d1: $81
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	rst  $38                                         ; $53d4: $ff
	add  l                                           ; $53d5: $85
	nop                                              ; $53d6: $00
	add  b                                           ; $53d7: $80
	cp   $80                                         ; $53d8: $fe $80
	db   $fc                                         ; $53da: $fc
	nop                                              ; $53db: $00
	rst  $38                                         ; $53dc: $ff
	add  c                                           ; $53dd: $81
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	rst  $38                                         ; $53e0: $ff
	add  l                                           ; $53e1: $85
	nop                                              ; $53e2: $00
	add  b                                           ; $53e3: $80
	inc  bc                                          ; $53e4: $03
	add  b                                           ; $53e5: $80
	rlca                                             ; $53e6: $07
	nop                                              ; $53e7: $00
	rst  $38                                         ; $53e8: $ff
	add  c                                           ; $53e9: $81
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	rst  $38                                         ; $53ec: $ff
	add  l                                           ; $53ed: $85
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	rst  $38                                         ; $53f0: $ff
	add  d                                           ; $53f1: $82
	ccf                                              ; $53f2: $3f
	add  c                                           ; $53f3: $81
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	rst  $38                                         ; $53f6: $ff
	add  l                                           ; $53f7: $85
	nop                                              ; $53f8: $00
	add  b                                           ; $53f9: $80
	ldh  [$80], a                                    ; $53fa: $e0 $80
	ret  nz                                          ; $53fc: $c0

	nop                                              ; $53fd: $00
	rst  $38                                         ; $53fe: $ff
	add  c                                           ; $53ff: $81
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	rst  $38                                         ; $5402: $ff
	add  a                                           ; $5403: $87
	nop                                              ; $5404: $00
	add  b                                           ; $5405: $80
	ld   bc, $ff00                                   ; $5406: $01 $00 $ff
	add  c                                           ; $5409: $81
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	rst  $38                                         ; $540c: $ff
	add  l                                           ; $540d: $85
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	rst  $38                                         ; $5410: $ff
	add  d                                           ; $5411: $82
	ccf                                              ; $5412: $3f
	add  c                                           ; $5413: $81
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	rst  $38                                         ; $5416: $ff
	add  l                                           ; $5417: $85
	nop                                              ; $5418: $00
	add  b                                           ; $5419: $80
	db   $fc                                         ; $541a: $fc
	add  b                                           ; $541b: $80
	ld   hl, sp+$00                                  ; $541c: $f8 $00
	rst  $38                                         ; $541e: $ff
	add  c                                           ; $541f: $81
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	rst  $38                                         ; $5422: $ff
	add  l                                           ; $5423: $85
	nop                                              ; $5424: $00
	ld   bc, $0607                                   ; $5425: $01 $07 $06
	add  b                                           ; $5428: $80
	ld   c, $00                                      ; $5429: $0e $00
	cp   $81                                         ; $542b: $fe $81
	nop                                              ; $542d: $00
	nop                                              ; $542e: $00
	rst  $38                                         ; $542f: $ff
	add  l                                           ; $5430: $85
	nop                                              ; $5431: $00
	ld   bc, $1f9f                                   ; $5432: $01 $9f $1f
	add  b                                           ; $5435: $80
	ccf                                              ; $5436: $3f
	nop                                              ; $5437: $00
	ld   a, a                                        ; $5438: $7f
	add  c                                           ; $5439: $81
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	rst  $38                                         ; $543c: $ff
	add  l                                           ; $543d: $85
	nop                                              ; $543e: $00
	add  e                                           ; $543f: $83
	rst  $38                                         ; $5440: $ff
	add  c                                           ; $5441: $81
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	rst  $38                                         ; $5444: $ff
	add  l                                           ; $5445: $85
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	rst  $38                                         ; $5448: $ff
	add  d                                           ; $5449: $82
	ld   hl, sp-$7f                                  ; $544a: $f8 $81
	nop                                              ; $544c: $00
	nop                                              ; $544d: $00
	rst  $38                                         ; $544e: $ff
	add  l                                           ; $544f: $85
	nop                                              ; $5450: $00
	nop                                              ; $5451: $00
	ldh  a, [$85]                                    ; $5452: $f0 $85
	sub  b                                           ; $5454: $90

jr_077_5455:
	nop                                              ; $5455: $00
	ld   l, a                                        ; $5456: $6f

jr_077_5457:
	add  h                                           ; $5457: $84
	rlca                                             ; $5458: $07
	add  b                                           ; $5459: $80
	ld   bc, $0e80                                   ; $545a: $01 $80 $0e

jr_077_545d:
	add  e                                           ; $545d: $83
	rrca                                             ; $545e: $0f
	nop                                              ; $545f: $00
	rst  $38                                         ; $5460: $ff
	add  l                                           ; $5461: $85
	or   c                                           ; $5462: $b1
	nop                                              ; $5463: $00
	or   b                                           ; $5464: $b0
	add  b                                           ; $5465: $80
	ld   sp, $b183                                   ; $5466: $31 $83 $b1
	ld   [$dbfa], sp                                 ; $5469: $08 $fa $db
	set  3, e                                        ; $546c: $cb $db
	set  3, e                                        ; $546e: $cb $db
	set  3, e                                        ; $5470: $cb $db
	add  c                                           ; $5472: $81
	add  h                                           ; $5473: $84
	rst  $38                                         ; $5474: $ff
	ld   bc, $6400                                   ; $5475: $01 $00 $64
	add  l                                           ; $5478: $85

jr_077_5479:
	halt                                             ; $5479: $76
	nop                                              ; $547a: $00
	ld   [de], a                                     ; $547b: $12
	add  h                                           ; $547c: $84
	rst  $38                                         ; $547d: $ff
	ld   bc, $c000                                   ; $547e: $01 $00 $c0
	add  l                                           ; $5481: $85
	rst  $20                                         ; $5482: $e7
	ld   bc, $e626                                   ; $5483: $01 $26 $e6
	add  d                                           ; $5486: $82
	ldh  [rTMA], a                                   ; $5487: $e0 $06
	rst  $20                                         ; $5489: $e7
	rlca                                             ; $548a: $07
	call c, $ebcb                                    ; $548b: $dc $cb $eb
	db   $db                                         ; $548e: $db
	ei                                               ; $548f: $fb
	add  b                                           ; $5490: $80
	sbc  d                                           ; $5491: $9a
	dec  bc                                          ; $5492: $0b
	ld   e, b                                        ; $5493: $58
	ld   e, h                                        ; $5494: $5c
	ret  c                                           ; $5495: $d8

	ld   [$e0f0], sp                                 ; $5496: $08 $f0 $e0
	pop  hl                                          ; $5499: $e1
	ld   b, e                                        ; $549a: $43
	pop  bc                                          ; $549b: $c1
	inc  bc                                          ; $549c: $03
	rlca                                             ; $549d: $07
	add  a                                           ; $549e: $87
	add  b                                           ; $549f: $80
	rrca                                             ; $54a0: $0f
	add  b                                           ; $54a1: $80
	rra                                              ; $54a2: $1f
	add  b                                           ; $54a3: $80
	ccf                                              ; $54a4: $3f
	ld   bc, $ff7f                                   ; $54a5: $01 $7f $ff
	add  e                                           ; $54a8: $83
	ld   a, a                                        ; $54a9: $7f
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	add  l                                           ; $54ac: $85
	sbc  a                                           ; $54ad: $9f
	add  b                                           ; $54ae: $80
	sbc  [hl]                                        ; $54af: $9e
	add  b                                           ; $54b0: $80
	sbc  h                                           ; $54b1: $9c
	add  b                                           ; $54b2: $80
	sbc  b                                           ; $54b3: $98
	add  b                                           ; $54b4: $80
	sub  b                                           ; $54b5: $90
	ld   bc, $e080                                   ; $54b6: $01 $80 $e0
	add  b                                           ; $54b9: $80
	ret  nz                                          ; $54ba: $c0

	add  b                                           ; $54bb: $80
	add  b                                           ; $54bc: $80
	add  b                                           ; $54bd: $80
	ld   bc, $0380                                   ; $54be: $01 $80 $03
	add  b                                           ; $54c1: $80
	rlca                                             ; $54c2: $07
	add  b                                           ; $54c3: $80

jr_077_54c4:
	rrca                                             ; $54c4: $0f
	add  b                                           ; $54c5: $80
	rra                                              ; $54c6: $1f
	add  b                                           ; $54c7: $80
	ccf                                              ; $54c8: $3f
	add  b                                           ; $54c9: $80
	ld   a, a                                        ; $54ca: $7f
	adc  d                                           ; $54cb: $8a
	rst  $38                                         ; $54cc: $ff
	ld   bc, $3efe                                   ; $54cd: $01 $fe $3e
	add  b                                           ; $54d0: $80
	inc  a                                           ; $54d1: $3c
	add  b                                           ; $54d2: $80
	jr   c, jr_077_5455                              ; $54d3: $38 $80

	jr   nc, jr_077_5457                             ; $54d5: $30 $80

	jr   nz, jr_077_545d                             ; $54d7: $20 $84

	nop                                              ; $54d9: $00
	nop                                              ; $54da: $00
	ret  nz                                          ; $54db: $c0

	adc  c                                           ; $54dc: $89
	nop                                              ; $54dd: $00
	add  b                                           ; $54de: $80
	ld   bc, $0380                                   ; $54df: $01 $80 $03
	add  b                                           ; $54e2: $80
	rlca                                             ; $54e3: $07
	add  b                                           ; $54e4: $80
	rrca                                             ; $54e5: $0f
	add  b                                           ; $54e6: $80
	rra                                              ; $54e7: $1f
	add  b                                           ; $54e8: $80
	ccf                                              ; $54e9: $3f
	add  b                                           ; $54ea: $80
	ld   a, a                                        ; $54eb: $7f
	add  l                                           ; $54ec: $85
	rst  $38                                         ; $54ed: $ff
	add  e                                           ; $54ee: $83
	ccf                                              ; $54ef: $3f
	add  b                                           ; $54f0: $80
	ld   a, $80                                      ; $54f1: $3e $80
	inc  a                                           ; $54f3: $3c
	add  b                                           ; $54f4: $80
	jr   c, @-$7e                                    ; $54f5: $38 $80

	jr   nc, jr_077_5479                             ; $54f7: $30 $80

	jr   nz, jr_077_54fc                             ; $54f9: $20 $01

	nop                                              ; $54fb: $00

jr_077_54fc:
	ret  nz                                          ; $54fc: $c0

	add  b                                           ; $54fd: $80
	add  b                                           ; $54fe: $80

Jump_077_54ff:
	add  b                                           ; $54ff: $80
	ld   bc, $0380                                   ; $5500: $01 $80 $03
	add  b                                           ; $5503: $80
	rlca                                             ; $5504: $07
	add  b                                           ; $5505: $80
	rrca                                             ; $5506: $0f
	add  b                                           ; $5507: $80
	ld   e, $80                                      ; $5508: $1e $80
	inc  a                                           ; $550a: $3c
	ld   bc, $7879                                   ; $550b: $01 $79 $78
	add  b                                           ; $550e: $80
	ldh  a, [c]                                      ; $550f: $f2
	add  b                                           ; $5510: $80
	and  $80                                         ; $5511: $e6 $80
	adc  $80                                         ; $5513: $ce $80
	sbc  [hl]                                        ; $5515: $9e
	add  b                                           ; $5516: $80
	ld   a, $80                                      ; $5517: $3e $80
	ld   a, [hl]                                     ; $5519: $7e
	add  c                                           ; $551a: $81
	cp   $8e                                         ; $551b: $fe $8e
	ld   a, a                                        ; $551d: $7f
	adc  [hl]                                        ; $551e: $8e
	rst  $38                                         ; $551f: $ff
	adc  l                                           ; $5520: $8d
	ld   hl, sp+$00                                  ; $5521: $f8 $00
	rst  $30                                         ; $5523: $f7
	add  [hl]                                        ; $5524: $86
	sub  b                                           ; $5525: $90
	add  b                                           ; $5526: $80
	add  b                                           ; $5527: $80
	add  e                                           ; $5528: $83
	sub  b                                           ; $5529: $90
	nop                                              ; $552a: $00
	ld   l, a                                        ; $552b: $6f
	adc  d                                           ; $552c: $8a
	rrca                                             ; $552d: $0f
	add  b                                           ; $552e: $80
	nop                                              ; $552f: $00
	ld   bc, $f607                                   ; $5530: $01 $07 $f6
	adc  d                                           ; $5533: $8a
	or   c                                           ; $5534: $b1
	add  b                                           ; $5535: $80
	ld   sp, $b105                                   ; $5536: $31 $05 $b1
	or   b                                           ; $5539: $b0
	rst  $38                                         ; $553a: $ff
	ld   l, a                                        ; $553b: $6f
	or   b                                           ; $553c: $b0
	jr   nc, jr_077_54c4                             ; $553d: $30 $85

	or   l                                           ; $553f: $b5
	ld   b, $30                                      ; $5540: $06 $30
	or   l                                           ; $5542: $b5
	jr   nc, @-$49                                   ; $5543: $30 $b5

	and  l                                           ; $5545: $a5
	rst  $38                                         ; $5546: $ff
	db   $fc                                         ; $5547: $fc
	add  b                                           ; $5548: $80
	dec  bc                                          ; $5549: $0b
	add  c                                           ; $554a: $81
	xor  d                                           ; $554b: $aa
	add  b                                           ; $554c: $80
	and  d                                           ; $554d: $a2
	add  b                                           ; $554e: $80
	and  b                                           ; $554f: $a0
	inc  b                                           ; $5550: $04
	ld   sp, $2380                                   ; $5551: $31 $80 $23
	add  d                                           ; $5554: $82
	sbc  $81                                         ; $5555: $de $81
	add  b                                           ; $5557: $80
	add  b                                           ; $5558: $80
	nop                                              ; $5559: $00
	add  d                                           ; $555a: $82
	ld   b, b                                        ; $555b: $40
	add  b                                           ; $555c: $80
	nop                                              ; $555d: $00
	add  b                                           ; $555e: $80
	add  c                                           ; $555f: $81
	add  b                                           ; $5560: $80
	inc  bc                                          ; $5561: $03
	dec  bc                                          ; $5562: $0b
	sbc  a                                           ; $5563: $9f
	add  [hl]                                        ; $5564: $86
	ld   c, $03                                      ; $5565: $0e $03
	rrca                                             ; $5567: $0f
	inc  e                                           ; $5568: $1c
	rra                                              ; $5569: $1f
	ccf                                              ; $556a: $3f
	inc  de                                          ; $556b: $13
	ld   d, e                                        ; $556c: $53
	ld   d, b                                        ; $556d: $50
	pop  de                                          ; $556e: $d1
	add  d                                           ; $556f: $82
	db   $d3                                         ; $5570: $d3
	ld   [bc], a                                     ; $5571: $02
	ld   a, $3f                                      ; $5572: $3e $3f
	rrca                                             ; $5574: $0f
	add  b                                           ; $5575: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5576: $cf
	ld   b, $7f                                      ; $5577: $06 $7f
	rst  $28                                         ; $5579: $ef
	sbc  a                                           ; $557a: $9f
	rst  $38                                         ; $557b: $ff
	cp   $03                                         ; $557c: $fe $03
	db   $fd                                         ; $557e: $fd
	add  b                                           ; $557f: $80
	ret  nz                                          ; $5580: $c0

	add  b                                           ; $5581: $80
	rst  $30                                         ; $5582: $f7
	nop                                              ; $5583: $00
	ld   h, b                                        ; $5584: $60
	add  h                                           ; $5585: $84
	add  b                                           ; $5586: $80
	add  b                                           ; $5587: $80
	ld   bc, $0302                                   ; $5588: $01 $02 $03
	sbc  h                                           ; $558b: $9c
	sbc  a                                           ; $558c: $9f
	add  b                                           ; $558d: $80
	ld   [bc], a                                     ; $558e: $02
	add  b                                           ; $558f: $80
	ld   e, $00                                      ; $5590: $1e $00
	ld   h, b                                        ; $5592: $60
	add  b                                           ; $5593: $80
	ccf                                              ; $5594: $3f
	add  b                                           ; $5595: $80
	ld   a, a                                        ; $5596: $7f
	add  e                                           ; $5597: $83
	rst  $38                                         ; $5598: $ff
	rlca                                             ; $5599: $07
	rra                                              ; $559a: $1f
	rst  $38                                         ; $559b: $ff
	cpl                                              ; $559c: $2f
	ccf                                              ; $559d: $3f
	scf                                              ; $559e: $37
	ccf                                              ; $559f: $3f
	ld   sp, hl                                      ; $55a0: $f9
	cp   $80                                         ; $55a1: $fe $80
	db   $fc                                         ; $55a3: $fc
	add  b                                           ; $55a4: $80
	ld   hl, sp-$80                                  ; $55a5: $f8 $80
	ldh  a, [$80]                                    ; $55a7: $f0 $80
	ldh  [$80], a                                    ; $55a9: $e0 $80
	ret  nz                                          ; $55ab: $c0

	add  b                                           ; $55ac: $80
	add  b                                           ; $55ad: $80
	add  b                                           ; $55ae: $80
	nop                                              ; $55af: $00
	nop                                              ; $55b0: $00
	ret  nz                                          ; $55b1: $c0

	adc  c                                           ; $55b2: $89
	nop                                              ; $55b3: $00
	add  b                                           ; $55b4: $80
	ld   bc, $0380                                   ; $55b5: $01 $80 $03
	ld   bc, $07c7                                   ; $55b8: $01 $c7 $07
	add  b                                           ; $55bb: $80
	rrca                                             ; $55bc: $0f
	add  b                                           ; $55bd: $80
	rra                                              ; $55be: $1f
	add  b                                           ; $55bf: $80
	ccf                                              ; $55c0: $3f
	add  b                                           ; $55c1: $80
	ld   a, a                                        ; $55c2: $7f
	adc  d                                           ; $55c3: $8a
	rst  $38                                         ; $55c4: $ff
	add  b                                           ; $55c5: $80
	cp   $80                                         ; $55c6: $fe $80
	db   $fc                                         ; $55c8: $fc
	add  b                                           ; $55c9: $80
	ld   hl, sp-$80                                  ; $55ca: $f8 $80
	ldh  a, [$80]                                    ; $55cc: $f0 $80
	ldh  [rP1], a                                    ; $55ce: $e0 $00
	ret  nz                                          ; $55d0: $c0

	add  c                                           ; $55d1: $81
	nop                                              ; $55d2: $00
	add  b                                           ; $55d3: $80
	ld   bc, $0380                                   ; $55d4: $01 $80 $03
	add  b                                           ; $55d7: $80
	rlca                                             ; $55d8: $07
	add  b                                           ; $55d9: $80
	rrca                                             ; $55da: $0f
	add  b                                           ; $55db: $80
	ld   e, $80                                      ; $55dc: $1e $80
	inc  a                                           ; $55de: $3c
	ld   bc, $79b9                                   ; $55df: $01 $b9 $79
	add  b                                           ; $55e2: $80
	di                                               ; $55e3: $f3
	add  b                                           ; $55e4: $80
	rst  $20                                         ; $55e5: $e7
	add  b                                           ; $55e6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55e7: $cf
	add  b                                           ; $55e8: $80
	sbc  a                                           ; $55e9: $9f
	add  b                                           ; $55ea: $80
	ccf                                              ; $55eb: $3f
	add  b                                           ; $55ec: $80
	ld   a, a                                        ; $55ed: $7f
	add  b                                           ; $55ee: $80
	rst  $38                                         ; $55ef: $ff
	nop                                              ; $55f0: $00
	ldh  a, [$8c]                                    ; $55f1: $f0 $8c
	sub  b                                           ; $55f3: $90
	ld   bc, $7f80                                   ; $55f4: $01 $80 $7f
	adc  l                                           ; $55f7: $8d
	rlca                                             ; $55f8: $07
	nop                                              ; $55f9: $00
	or   $8b                                         ; $55fa: $f6 $8b
	or   c                                           ; $55fc: $b1
	add  b                                           ; $55fd: $80
	or   b                                           ; $55fe: $b0
	ld   bc, $f5e0                                   ; $55ff: $01 $e0 $f5
	add  b                                           ; $5602: $80
	db   $f4                                         ; $5603: $f4
	inc  bc                                          ; $5604: $03
	ld   [hl], h                                     ; $5605: $74
	push af                                          ; $5606: $f5
	ld   [hl], e                                     ; $5607: $73
	ld   hl, sp-$80                                  ; $5608: $f8 $80
	ldh  a, [$03]                                    ; $560a: $f0 $03
	ret  nc                                          ; $560c: $d0

	ret  nz                                          ; $560d: $c0

	ld   b, b                                        ; $560e: $40
	rst  $38                                         ; $560f: $ff
	add  b                                           ; $5610: $80
	nop                                              ; $5611: $00
	nop                                              ; $5612: $00
	db   $eb                                         ; $5613: $eb
	add  c                                           ; $5614: $81
	ld   d, $02                                      ; $5615: $16 $02
	rla                                              ; $5617: $17
	or   a                                           ; $5618: $b7
	or   h                                           ; $5619: $b4
	add  e                                           ; $561a: $83
	ld   d, $01                                      ; $561b: $16 $01
	rlca                                             ; $561d: $07
	ld   hl, sp-$80                                  ; $561e: $f8 $80
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	and  b                                           ; $5622: $a0
	add  c                                           ; $5623: $81
	ld   b, a                                        ; $5624: $47
	add  b                                           ; $5625: $80
	rst  $20                                         ; $5626: $e7
	add  h                                           ; $5627: $84
	rlca                                             ; $5628: $07
	nop                                              ; $5629: $00
	rst  $20                                         ; $562a: $e7
	add  c                                           ; $562b: $81
	nop                                              ; $562c: $00
	nop                                              ; $562d: $00
	jp   nc, $d387                                   ; $562e: $d2 $87 $d3

	ld   [bc], a                                     ; $5631: $02
	db   $fd                                         ; $5632: $fd
	rst  $38                                         ; $5633: $ff
	inc  bc                                          ; $5634: $03
	add  c                                           ; $5635: $81
	nop                                              ; $5636: $00
	ld   bc, $c03f                                   ; $5637: $01 $3f $c0
	add  b                                           ; $563a: $80
	cp   $82                                         ; $563b: $fe $82
	ret  nz                                          ; $563d: $c0

	add  b                                           ; $563e: $80
	rst  $30                                         ; $563f: $f7
	add  b                                           ; $5640: $80
	ret  nz                                          ; $5641: $c0

	nop                                              ; $5642: $00
	rst  $38                                         ; $5643: $ff
	add  c                                           ; $5644: $81
	nop                                              ; $5645: $00
	ld   bc, $029d                                   ; $5646: $01 $9d $02
	add  b                                           ; $5649: $80
	ld   e, $82                                      ; $564a: $1e $82
	ld   [bc], a                                     ; $564c: $02
	add  b                                           ; $564d: $80
	sbc  a                                           ; $564e: $9f
	add  b                                           ; $564f: $80
	nop                                              ; $5650: $00
	nop                                              ; $5651: $00
	sbc  a                                           ; $5652: $9f
	add  c                                           ; $5653: $81
	nop                                              ; $5654: $00
	rlca                                             ; $5655: $07
	jp   $1e3e                                       ; $5656: $c3 $3e $1e


	inc  a                                           ; $5659: $3c
	ld   a, [hl+]                                    ; $565a: $2a
	ld   a, [hl-]                                    ; $565b: $3a
	ld   b, $36                                      ; $565c: $06 $36
	add  b                                           ; $565e: $80
	xor  $02                                         ; $565f: $ee $02
	ld   a, [hl-]                                    ; $5661: $3a
	ld   a, $fb                                      ; $5662: $3e $fb
	add  c                                           ; $5664: $81
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	rst  $38                                         ; $5667: $ff
	adc  c                                           ; $5668: $89
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	rst  $38                                         ; $566b: $ff
	add  c                                           ; $566c: $81
	nop                                              ; $566d: $00
	ld   bc, $0738                                   ; $566e: $01 $38 $07
	add  b                                           ; $5671: $80
	rrca                                             ; $5672: $0f
	add  b                                           ; $5673: $80
	rra                                              ; $5674: $1f
	add  l                                           ; $5675: $85
	ccf                                              ; $5676: $3f
	add  d                                           ; $5677: $82
	nop                                              ; $5678: $00
	add  e                                           ; $5679: $83
	rst  $38                                         ; $567a: $ff
	add  b                                           ; $567b: $80
	cp   $80                                         ; $567c: $fe $80
	db   $fc                                         ; $567e: $fc
	add  b                                           ; $567f: $80
	ld   hl, sp+$00                                  ; $5680: $f8 $00
	rst  $38                                         ; $5682: $ff
	add  c                                           ; $5683: $81
	nop                                              ; $5684: $00
	ld   bc, $c03f                                   ; $5685: $01 $3f $c0
	add  b                                           ; $5688: $80
	add  b                                           ; $5689: $80
	add  b                                           ; $568a: $80
	ld   bc, $0380                                   ; $568b: $01 $80 $03
	add  b                                           ; $568e: $80
	rlca                                             ; $568f: $07
	add  b                                           ; $5690: $80
	ld   c, $00                                      ; $5691: $0e $00
	rst  $38                                         ; $5693: $ff
	add  c                                           ; $5694: $81
	nop                                              ; $5695: $00
	ld   bc, $3906                                   ; $5696: $01 $06 $39
	add  b                                           ; $5699: $80
	inc  sp                                          ; $569a: $33
	add  b                                           ; $569b: $80
	daa                                              ; $569c: $27
	add  b                                           ; $569d: $80
	rrca                                             ; $569e: $0f
	add  b                                           ; $569f: $80
	rra                                              ; $56a0: $1f
	add  c                                           ; $56a1: $81
	ccf                                              ; $56a2: $3f
	add  c                                           ; $56a3: $81
	nop                                              ; $56a4: $00
	add  d                                           ; $56a5: $82
	rst  $38                                         ; $56a6: $ff
	nop                                              ; $56a7: $00
	db   $fc                                         ; $56a8: $fc
	add  l                                           ; $56a9: $85
	rst  $38                                         ; $56aa: $ff
	nop                                              ; $56ab: $00
	inc  bc                                          ; $56ac: $03
	add  c                                           ; $56ad: $81
	nop                                              ; $56ae: $00
	add  d                                           ; $56af: $82
	cp   $00                                         ; $56b0: $fe $00
	nop                                              ; $56b2: $00
	add  [hl]                                        ; $56b3: $86
	cp   $81                                         ; $56b4: $fe $81
	nop                                              ; $56b6: $00
	add  d                                           ; $56b7: $82
	ld   a, a                                        ; $56b8: $7f
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	add  c                                           ; $56bb: $81
	ld   a, a                                        ; $56bc: $7f
	inc  b                                           ; $56bd: $04
	ld   a, [hl]                                     ; $56be: $7e
	ld   a, a                                        ; $56bf: $7f
	ld   a, l                                        ; $56c0: $7d
	ld   a, a                                        ; $56c1: $7f
	ld   a, h                                        ; $56c2: $7c
	add  d                                           ; $56c3: $82
	nop                                              ; $56c4: $00
	add  b                                           ; $56c5: $80
	cp   $80                                         ; $56c6: $fe $80
	nop                                              ; $56c8: $00
	inc  bc                                          ; $56c9: $03
	rst  $38                                         ; $56ca: $ff
	pop  bc                                          ; $56cb: $c1
	rst  $38                                         ; $56cc: $ff
	ld   a, $81                                      ; $56cd: $3e $81
	rst  $38                                         ; $56cf: $ff
	add  b                                           ; $56d0: $80
	rlca                                             ; $56d1: $07
	add  b                                           ; $56d2: $80
	nop                                              ; $56d3: $00
	dec  bc                                          ; $56d4: $0b
	ret  nz                                          ; $56d5: $c0

	ld   hl, sp+$18                                  ; $56d6: $f8 $18
	jr   c, jr_077_56e2                              ; $56d8: $38 $08

	sbc  b                                           ; $56da: $98
	adc  b                                           ; $56db: $88
	add  sp, $68                                     ; $56dc: $e8 $68
	add  sp, -$78                                    ; $56de: $e8 $88
	add  sp, -$80                                    ; $56e0: $e8 $80

jr_077_56e2:
	ld   hl, sp+$02                                  ; $56e2: $f8 $02
	ld   [hl], b                                     ; $56e4: $70
	ld   a, b                                        ; $56e5: $78
	rrca                                             ; $56e6: $0f
	add  l                                           ; $56e7: $85
	sub  b                                           ; $56e8: $90
	ld   bc, $9080                                   ; $56e9: $01 $80 $90
	add  d                                           ; $56ec: $82
	or   b                                           ; $56ed: $b0
	add  b                                           ; $56ee: $80
	ldh  a, [rP1]                                    ; $56ef: $f0 $00
	ld   a, a                                        ; $56f1: $7f
	add  b                                           ; $56f2: $80
	nop                                              ; $56f3: $00
	adc  e                                           ; $56f4: $8b
	rrca                                             ; $56f5: $0f
	nop                                              ; $56f6: $00
	cp   $80                                         ; $56f7: $fe $80
	ld   sp, $b18b                                   ; $56f9: $31 $8b $b1
	inc  b                                           ; $56fc: $04
	or   b                                           ; $56fd: $b0
	rst  $38                                         ; $56fe: $ff
	rst  $28                                         ; $56ff: $ef
	jr   nc, @+$72                                   ; $5700: $30 $70

	add  e                                           ; $5702: $83
	push af                                          ; $5703: $f5
	ld   [bc], a                                     ; $5704: $02
	ld   [hl], b                                     ; $5705: $70
	push af                                          ; $5706: $f5
	ld   [hl], b                                     ; $5707: $70
	add  c                                           ; $5708: $81
	push af                                          ; $5709: $f5
	nop                                              ; $570a: $00
	and  l                                           ; $570b: $a5
	add  b                                           ; $570c: $80
	rst  $38                                         ; $570d: $ff
	ld   bc, $0d0c                                   ; $570e: $01 $0c $0d
	add  d                                           ; $5711: $82
	xor  h                                           ; $5712: $ac
	inc  bc                                          ; $5713: $03
	cp   h                                           ; $5714: $bc
	dec  c                                           ; $5715: $0d
	cp   l                                           ; $5716: $bd
	inc  c                                           ; $5717: $0c
	add  c                                           ; $5718: $81
	cp   h                                           ; $5719: $bc
	nop                                              ; $571a: $00
	cp   l                                           ; $571b: $bd
	add  b                                           ; $571c: $80
	rst  $20                                         ; $571d: $e7
	ld   bc, $e707                                   ; $571e: $01 $07 $e7
	add  c                                           ; $5721: $81
	ld   b, a                                        ; $5722: $47
	add  b                                           ; $5723: $80
	ld   b, [hl]                                     ; $5724: $46
	ld   [bc], a                                     ; $5725: $02
	call nz, $60e4                                   ; $5726: $c4 $e4 $60
	add  c                                           ; $5729: $81
	ld   b, b                                        ; $572a: $40
	ld   [bc], a                                     ; $572b: $02
	rlca                                             ; $572c: $07
	cp   a                                           ; $572d: $bf
	sbc  a                                           ; $572e: $9f
	add  b                                           ; $572f: $80
	cp   a                                           ; $5730: $bf
	dec  e                                           ; $5731: $1d
	rst  $38                                         ; $5732: $ff
	ld   a, a                                        ; $5733: $7f
	rst  $38                                         ; $5734: $ff
	db   $fd                                         ; $5735: $fd
	rst  $38                                         ; $5736: $ff
	ei                                               ; $5737: $fb
	rst  $38                                         ; $5738: $ff
	rst  $30                                         ; $5739: $f7
	rst  $38                                         ; $573a: $ff
	rst  $28                                         ; $573b: $ef
	rst  $38                                         ; $573c: $ff
	jp   z, $c7f7                                    ; $573d: $ca $f7 $c7

	db   $e4                                         ; $5740: $e4
	or   h                                           ; $5741: $b4
	rst  $30                                         ; $5742: $f7
	rla                                              ; $5743: $17
	rst  $30                                         ; $5744: $f7
	or   e                                           ; $5745: $b3
	rst  $30                                         ; $5746: $f7
	ld   e, [hl]                                     ; $5747: $5e
	ld   e, a                                        ; $5748: $5f
	add  [hl]                                        ; $5749: $86
	ldh  [$60], a                                    ; $574a: $e0 $60
	ldh  [$6c], a                                    ; $574c: $e0 $6c
	sub  d                                           ; $574e: $92
	sub  [hl]                                        ; $574f: $96
	add  b                                           ; $5750: $80
	inc  de                                          ; $5751: $13
	nop                                              ; $5752: $00
	sub  [hl]                                        ; $5753: $96
	add  b                                           ; $5754: $80
	sub  e                                           ; $5755: $93
	dec  b                                           ; $5756: $05
	sbc  d                                           ; $5757: $9a
	ld   e, $93                                      ; $5758: $1e $93
	sub  a                                           ; $575a: $97
	inc  e                                           ; $575b: $1c
	ld   [bc], a                                     ; $575c: $02
	add  b                                           ; $575d: $80
	inc  bc                                          ; $575e: $03
	dec  c                                           ; $575f: $0d
	ld   a, [hl-]                                    ; $5760: $3a
	ld   a, [hl]                                     ; $5761: $7e
	ld   a, [hl+]                                    ; $5762: $2a
	cp   $a4                                         ; $5763: $fe $a4
	ld   a, h                                        ; $5765: $7c
	db   $f4                                         ; $5766: $f4
	db   $fc                                         ; $5767: $fc
	ld   l, h                                        ; $5768: $6c
	ld   a, l                                        ; $5769: $7d
	db   $e3                                         ; $576a: $e3
	ei                                               ; $576b: $fb
	ld   [hl], a                                     ; $576c: $77
	ld   a, a                                        ; $576d: $7f
	add  b                                           ; $576e: $80
	rst  $28                                         ; $576f: $ef
	nop                                              ; $5770: $00
	ld   hl, $1380                                   ; $5771: $21 $80 $13
	add  b                                           ; $5774: $80
	rlca                                             ; $5775: $07
	add  b                                           ; $5776: $80
	rra                                              ; $5777: $1f
	add  b                                           ; $5778: $80
	sbc  a                                           ; $5779: $9f
	ld   [bc], a                                     ; $577a: $02
	rst  $38                                         ; $577b: $ff
	ld   [hl-], a                                    ; $577c: $32
	call $3d80                                       ; $577d: $cd $80 $3d
	add  b                                           ; $5780: $80
	pop  af                                          ; $5781: $f1
	nop                                              ; $5782: $00
	ret  nz                                          ; $5783: $c0

	add  [hl]                                        ; $5784: $86
	ccf                                              ; $5785: $3f
	add  b                                           ; $5786: $80
	dec  [hl]                                        ; $5787: $35
	nop                                              ; $5788: $00
	nop                                              ; $5789: $00
	add  b                                           ; $578a: $80
	inc  [hl]                                        ; $578b: $34
	add  b                                           ; $578c: $80
	inc  h                                           ; $578d: $24
	nop                                              ; $578e: $00
	ret  nz                                          ; $578f: $c0

	add  b                                           ; $5790: $80
	ldh  [$80], a                                    ; $5791: $e0 $80
	ret  nz                                          ; $5793: $c0

	add  b                                           ; $5794: $80
	add  b                                           ; $5795: $80
	ld   a, [bc]                                     ; $5796: $0a
	nop                                              ; $5797: $00
	ld   bc, $e3e1                                   ; $5798: $01 $e1 $e3
	nop                                              ; $579b: $00
	inc  b                                           ; $579c: $04
	ld   b, $0e                                      ; $579d: $06 $0e
	dec  bc                                          ; $579f: $0b
	inc  b                                           ; $57a0: $04
	nop                                              ; $57a1: $00
	add  b                                           ; $57a2: $80
	ld   bc, $f904                                   ; $57a3: $01 $04 $f9
	cp   c                                           ; $57a6: $b9
	cp   b                                           ; $57a7: $b8
	sbc  b                                           ; $57a8: $98
	sbc  a                                           ; $57a9: $9f
	add  c                                           ; $57aa: $81
	add  a                                           ; $57ab: $87
	dec  b                                           ; $57ac: $05
	adc  a                                           ; $57ad: $8f
	rst  JumpTable                                         ; $57ae: $df
	rst  $10                                         ; $57af: $d7
	rst  $38                                         ; $57b0: $ff
	ret  nz                                          ; $57b1: $c0

	nop                                              ; $57b2: $00
	add  b                                           ; $57b3: $80
	dec  a                                           ; $57b4: $3d
	add  b                                           ; $57b5: $80
	jr   c, @+$05                                    ; $57b6: $38 $03

	jr   nc, jr_077_57f1                             ; $57b8: $30 $37

	ld   hl, $8026                                   ; $57ba: $21 $26 $80
	inc  b                                           ; $57bd: $04
	add  b                                           ; $57be: $80
	nop                                              ; $57bf: $00
	add  b                                           ; $57c0: $80
	ld   bc, $c301                                   ; $57c1: $01 $01 $c3
	inc  bc                                          ; $57c4: $03
	add  b                                           ; $57c5: $80
	rst  ToBoot                                         ; $57c6: $c7
	add  c                                           ; $57c7: $81
	nop                                              ; $57c8: $00
	ld   [bc], a                                     ; $57c9: $02
	rra                                              ; $57ca: $1f
	jr   nz, jr_077_580c                             ; $57cb: $20 $3f

	add  b                                           ; $57cd: $80
	ld   a, a                                        ; $57ce: $7f
	add  e                                           ; $57cf: $83
	rst  $38                                         ; $57d0: $ff
	add  c                                           ; $57d1: $81
	cp   $81                                         ; $57d2: $fe $81
	ld   [bc], a                                     ; $57d4: $02
	ld   bc, $02fe                                   ; $57d5: $01 $fe $02
	add  [hl]                                        ; $57d8: $86
	cp   $80                                         ; $57d9: $fe $80
	ld   [hl], c                                     ; $57db: $71
	add  b                                           ; $57dc: $80
	ld   h, a                                        ; $57dd: $67
	dec  bc                                          ; $57de: $0b
	ld   a, a                                        ; $57df: $7f
	nop                                              ; $57e0: $00
	ld   a, a                                        ; $57e1: $7f
	inc  c                                           ; $57e2: $0c
	ld   [hl], b                                     ; $57e3: $70
	ld   h, h                                        ; $57e4: $64
	ld   h, b                                        ; $57e5: $60
	ld   c, b                                        ; $57e6: $48
	ld   b, e                                        ; $57e7: $43
	rrca                                             ; $57e8: $0f
	inc  bc                                          ; $57e9: $03
	ld   a, a                                        ; $57ea: $7f
	add  b                                           ; $57eb: $80
	ld   hl, sp+$04                                  ; $57ec: $f8 $04
	rst  $38                                         ; $57ee: $ff
	add  e                                           ; $57ef: $83
	db   $fc                                         ; $57f0: $fc

jr_077_57f1:
	ld   a, a                                        ; $57f1: $7f
	rst  $38                                         ; $57f2: $ff
	add  b                                           ; $57f3: $80
	ccf                                              ; $57f4: $3f
	add  b                                           ; $57f5: $80
	rlca                                             ; $57f6: $07
	dec  b                                           ; $57f7: $05
	ld   b, e                                        ; $57f8: $43
	jp   $b080                                       ; $57f9: $c3 $80 $b0


	xor  b                                           ; $57fc: $a8
	jr   @-$7e                                       ; $57fd: $18 $80

jr_077_57ff:
	inc  c                                           ; $57ff: $0c
	add  c                                           ; $5800: $81
	inc  b                                           ; $5801: $04
	inc  bc                                          ; $5802: $03
	db   $e4                                         ; $5803: $e4
	ld   h, d                                        ; $5804: $62
	ld   a, [$81ba]                                  ; $5805: $fa $ba $81
	ld   a, [$d904]                                  ; $5808: $fa $04 $d9
	ld   sp, hl                                      ; $580b: $f9

jr_077_580c:
	ld   h, a                                        ; $580c: $67
	ldh  a, [$60]                                    ; $580d: $f0 $60
	add  c                                           ; $580f: $81
	ldh  [$82], a                                    ; $5810: $e0 $82
	ret  nc                                          ; $5812: $d0

	add  b                                           ; $5813: $80
	or   b                                           ; $5814: $b0
	add  b                                           ; $5815: $80
	and  b                                           ; $5816: $a0
	add  b                                           ; $5817: $80
	ld   h, b                                        ; $5818: $60
	nop                                              ; $5819: $00
	rst  $38                                         ; $581a: $ff
	adc  b                                           ; $581b: $88
	rrca                                             ; $581c: $0f
	add  b                                           ; $581d: $80
	nop                                              ; $581e: $00
	add  b                                           ; $581f: $80
	rrca                                             ; $5820: $0f
	ld   bc, $f100                                   ; $5821: $01 $00 $f1
	add  [hl]                                        ; $5824: $86
	or   c                                           ; $5825: $b1
	add  d                                           ; $5826: $82
	ld   sp, $b180                                   ; $5827: $31 $80 $b1
	dec  b                                           ; $582a: $05
	ld   sp, $f560                                   ; $582b: $31 $60 $f5
	ld   [hl], h                                     ; $582e: $74

jr_077_582f:
	push af                                          ; $582f: $f5
	ld   [hl], h                                     ; $5830: $74
	add  l                                           ; $5831: $85
	rst  $30                                         ; $5832: $f7
	ld   [$f770], sp                                 ; $5833: $08 $70 $f7
	ld   [hl], d                                     ; $5836: $72
	rst  $30                                         ; $5837: $f7
	and  h                                           ; $5838: $a4
	xor  h                                           ; $5839: $ac
	ld   bc, $1cad                                   ; $583a: $01 $ad $1c
	add  e                                           ; $583d: $83
	ldh  a, [rTAC]                                   ; $583e: $f0 $07
	ldh  [c], a                                      ; $5840: $e2
	ldh  a, [rAUD1SWEEP]                             ; $5841: $f0 $10
	ret  nc                                          ; $5843: $d0

	ld   [de], a                                     ; $5844: $12
	ret  nc                                          ; $5845: $d0

	ld   e, d                                        ; $5846: $5a
	ld   b, b                                        ; $5847: $40
	add  b                                           ; $5848: $80
	ret  nz                                          ; $5849: $c0

	add  b                                           ; $584a: $80
	nop                                              ; $584b: $00
	add  b                                           ; $584c: $80
	ld   bc, $0380                                   ; $584d: $01 $80 $03
	add  d                                           ; $5850: $82
	rlca                                             ; $5851: $07
	add  b                                           ; $5852: $80
	daa                                              ; $5853: $27
	nop                                              ; $5854: $00
	reti                                             ; $5855: $d9


	add  b                                           ; $5856: $80
	rst  $38                                         ; $5857: $ff
	ld   bc, $3fbf                                   ; $5858: $01 $bf $3f
	add  l                                           ; $585b: $85
	cp   a                                           ; $585c: $bf
	add  d                                           ; $585d: $82
	cp   e                                           ; $585e: $bb
	dec  bc                                          ; $585f: $0b
	ld   e, $e0                                      ; $5860: $1e $e0
	ld   h, b                                        ; $5862: $60
	ldh  [$80], a                                    ; $5863: $e0 $80
	rst  $30                                         ; $5865: $f7
	or   $f7                                         ; $5866: $f6 $f7
	call nz, $b6f6                                   ; $5868: $c4 $f6 $b6
	sub  l                                           ; $586b: $95
	add  b                                           ; $586c: $80
	rst  $10                                         ; $586d: $d7
	ld   [bc], a                                     ; $586e: $02
	or   [hl]                                        ; $586f: $b6
	rst  $30                                         ; $5870: $f7
	call nz, $0380                                   ; $5871: $c4 $80 $03
	inc  b                                           ; $5874: $04
	ld   [bc], a                                     ; $5875: $02
	jr   jr_077_57ff                                 ; $5876: $18 $87

	inc  de                                          ; $5878: $13
	sub  [hl]                                        ; $5879: $96
	add  b                                           ; $587a: $80
	rla                                              ; $587b: $17
	ld   b, $10                                      ; $587c: $06 $10
	sub  l                                           ; $587e: $95
	dec  d                                           ; $587f: $15
	sub  [hl]                                        ; $5880: $96
	sub  b                                           ; $5881: $90
	sub  a                                           ; $5882: $97
	dec  h                                           ; $5883: $25
	add  b                                           ; $5884: $80
	rst  $38                                         ; $5885: $ff
	inc  b                                           ; $5886: $04
	ld   a, a                                        ; $5887: $7f
	ld   l, a                                        ; $5888: $6f
	rst  $38                                         ; $5889: $ff
	rst  $28                                         ; $588a: $ef
	ld   a, a                                        ; $588b: $7f
	add  b                                           ; $588c: $80
	rst  $38                                         ; $588d: $ff
	nop                                              ; $588e: $00
	ld   a, a                                        ; $588f: $7f
	add  b                                           ; $5890: $80
	rst  $38                                         ; $5891: $ff
	add  b                                           ; $5892: $80
	ld   a, a                                        ; $5893: $7f
	ld   [bc], a                                     ; $5894: $02
	rst  $38                                         ; $5895: $ff
	ld   l, h                                        ; $5896: $6c
	call $3f80                                       ; $5897: $cd $80 $3f
	add  hl, bc                                      ; $589a: $09
	di                                               ; $589b: $f3
	ei                                               ; $589c: $fb
	jp   z, $08fa                                    ; $589d: $ca $fa $08

	ld   hl, sp+$38                                  ; $58a0: $f8 $38
	ld   hl, sp-$1e                                  ; $58a2: $f8 $e2
	ld   [$ca80], a                                  ; $58a4: $ea $80 $ca
	ld   bc, $20e0                                   ; $58a7: $01 $e0 $20
	add  d                                           ; $58aa: $82
	nop                                              ; $58ab: $00
	add  b                                           ; $58ac: $80
	jr   nz, jr_077_582f                             ; $58ad: $20 $80

	ld   hl, $0402                                   ; $58af: $21 $02 $04
	rlca                                             ; $58b2: $07
	inc  bc                                          ; $58b3: $03
	add  b                                           ; $58b4: $80
	rlca                                             ; $58b5: $07
	dec  b                                           ; $58b6: $05
	nop                                              ; $58b7: $00
	rst  JumpTable                                         ; $58b8: $df
	dec  de                                          ; $58b9: $1b
	ld   [hl], e                                     ; $58ba: $73
	ld   b, e                                        ; $58bb: $43
	res  0, b                                        ; $58bc: $cb $80
	ld   a, [bc]                                     ; $58be: $0a
	add  c                                           ; $58bf: $81

jr_077_58c0:
	inc  e                                           ; $58c0: $1c
	dec  b                                           ; $58c1: $05
	inc  d                                           ; $58c2: $14
	inc  de                                          ; $58c3: $13
	dec  de                                          ; $58c4: $1b
	ccf                                              ; $58c5: $3f
	jr   c, jr_077_58c0                              ; $58c6: $38 $f8

	add  b                                           ; $58c8: $80
	rst  $38                                         ; $58c9: $ff
	add  b                                           ; $58ca: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58cb: $cf
	dec  c                                           ; $58cc: $0d
	rst  $38                                         ; $58cd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ce: $cf
	db   $fd                                         ; $58cf: $fd
	pop  bc                                          ; $58d0: $c1
	jp   nz, $cecc                                   ; $58d1: $c2 $cc $ce

	call z, $c8f8                                    ; $58d4: $cc $f8 $c8
	inc  c                                           ; $58d7: $0c
	inc  l                                           ; $58d8: $2c
	db   $d3                                         ; $58d9: $d3
	inc  bc                                          ; $58da: $03
	add  c                                           ; $58db: $81
	rlca                                             ; $58dc: $07
	add  b                                           ; $58dd: $80
	rrca                                             ; $58de: $0f
	add  b                                           ; $58df: $80
	rra                                              ; $58e0: $1f
	add  l                                           ; $58e1: $85
	ccf                                              ; $58e2: $3f
	inc  bc                                          ; $58e3: $03
	rlca                                             ; $58e4: $07
	rst  $38                                         ; $58e5: $ff
	ld   bc, $81ff                                   ; $58e6: $01 $ff $81
	ld   bc, $6d82                                   ; $58e9: $01 $82 $6d
	add  b                                           ; $58ec: $80
	ld   bc, $6d00                                   ; $58ed: $01 $00 $6d
	add  b                                           ; $58f0: $80
	db   $ed                                         ; $58f1: $ed
	dec  c                                           ; $58f2: $0d
	ld   l, l                                        ; $58f3: $6d
	cp   $80                                         ; $58f4: $fe $80
	cp   $c0                                         ; $58f6: $fe $c0
	jp   nz, $f4c0                                   ; $58f8: $c2 $c0 $f4

	ldh  a, [$f8]                                    ; $58fb: $f0 $f8
	or   b                                           ; $58fd: $b0
	sub  b                                           ; $58fe: $90
	ret  nz                                          ; $58ff: $c0

	ldh  [$81], a                                    ; $5900: $e0 $81
	add  b                                           ; $5902: $80
	dec  bc                                          ; $5903: $0b
	ld   c, a                                        ; $5904: $4f
	rrca                                             ; $5905: $0f
	ld   c, $78                                      ; $5906: $0e $78
	jr   c, jr_077_5922                              ; $5908: $38 $18

	ld   e, $56                                      ; $590a: $1e $56
	halt                                             ; $590c: $76
	ld   d, [hl]                                     ; $590d: $56
	ld   b, b                                        ; $590e: $40
	ld   b, c                                        ; $590f: $41
	add  c                                           ; $5910: $81
	ld   [hl], a                                     ; $5911: $77
	nop                                              ; $5912: $00
	ld   [hl], $80                                   ; $5913: $36 $80
	ld   hl, sp-$80                                  ; $5915: $f8 $80
	nop                                              ; $5917: $00
	inc  b                                           ; $5918: $04
	cp   $82                                         ; $5919: $fe $82
	rst  $38                                         ; $591b: $ff
	ld   a, h                                        ; $591c: $7c
	rst  $38                                         ; $591d: $ff
	add  b                                           ; $591e: $80
	db   $e3                                         ; $591f: $e3
	add  b                                           ; $5920: $80
	add  b                                           ; $5921: $80

jr_077_5922:
	inc  bc                                          ; $5922: $03
	nop                                              ; $5923: $00
	ld   e, $ef                                      ; $5924: $1e $ef
	ld   sp, hl                                      ; $5926: $f9
	add  b                                           ; $5927: $80
	ld   a, c                                        ; $5928: $79
	add  hl, bc                                      ; $5929: $09
	ld   sp, $1939                                   ; $592a: $31 $39 $19
	sbc  c                                           ; $592d: $99
	adc  l                                           ; $592e: $8d
	ld   l, l                                        ; $592f: $6d
	db   $f4                                         ; $5930: $f4
	or   h                                           ; $5931: $b4
	and  d                                           ; $5932: $a2
	sub  d                                           ; $5933: $92
	add  b                                           ; $5934: $80
	ld   [de], a                                     ; $5935: $12
	nop                                              ; $5936: $00
	ld   e, a                                        ; $5937: $5f
	add  b                                           ; $5938: $80
	ld   b, b                                        ; $5939: $40
	add  c                                           ; $593a: $81
	ld   d, b                                        ; $593b: $50
	nop                                              ; $593c: $00

jr_077_593d:
	sub  b                                           ; $593d: $90
	add  c                                           ; $593e: $81
	or   b                                           ; $593f: $b0
	ld   bc, $3000                                   ; $5940: $01 $00 $30
	add  d                                           ; $5943: $82
	ld   [hl], b                                     ; $5944: $70
	nop                                              ; $5945: $00
	rst  $38                                         ; $5946: $ff
	add  b                                           ; $5947: $80
	rrca                                             ; $5948: $0f
	add  b                                           ; $5949: $80
	ld   c, $80                                      ; $594a: $0e $80
	nop                                              ; $594c: $00
	add  a                                           ; $594d: $87
	ld   c, $00                                      ; $594e: $0e $00
	rst  $38                                         ; $5950: $ff
	adc  l                                           ; $5951: $8d
	or   c                                           ; $5952: $b1
	ld   b, $e2                                      ; $5953: $06 $e2
	rst  $30                                         ; $5955: $f7
	push af                                          ; $5956: $f5
	rst  $30                                         ; $5957: $f7
	ld   [hl], d                                     ; $5958: $72
	ldh  a, [c]                                      ; $5959: $f2
	ld   [hl], d                                     ; $595a: $72
	add  l                                           ; $595b: $85
	ldh  a, [c]                                      ; $595c: $f2
	inc  bc                                          ; $595d: $03
	and  a                                           ; $595e: $a7
	rst  $38                                         ; $595f: $ff
	add  d                                           ; $5960: $82
	add  b                                           ; $5961: $80
	add  b                                           ; $5962: $80
	nop                                              ; $5963: $00
	add  d                                           ; $5964: $82
	ld   bc, $0580                                   ; $5965: $01 $80 $05
	add  b                                           ; $5968: $80
	dec  c                                           ; $5969: $0d
	add  b                                           ; $596a: $80
	dec  e                                           ; $596b: $1d
	inc  bc                                          ; $596c: $03
	db   $fd                                         ; $596d: $fd
	rst  $38                                         ; $596e: $ff
	ld   a, a                                        ; $596f: $7f
	ld   h, a                                        ; $5970: $67
	add  b                                           ; $5971: $80
	rst  $20                                         ; $5972: $e7
	add  c                                           ; $5973: $81
	and  a                                           ; $5974: $a7
	add  l                                           ; $5975: $85
	rst  $20                                         ; $5976: $e7
	ld   [bc], a                                     ; $5977: $02
	and  a                                           ; $5978: $a7
	rst  $20                                         ; $5979: $e7
	ld   e, l                                        ; $597a: $5d
	add  c                                           ; $597b: $81
	cp   e                                           ; $597c: $bb
	nop                                              ; $597d: $00
	cp   c                                           ; $597e: $b9
	add  c                                           ; $597f: $81
	cp   e                                           ; $5980: $bb
	inc  c                                           ; $5981: $0c
	or   e                                           ; $5982: $b3
	cp   e                                           ; $5983: $bb
	xor  e                                           ; $5984: $ab
	cp   e                                           ; $5985: $bb
	sbc  e                                           ; $5986: $9b
	cp   e                                           ; $5987: $bb
	dec  sp                                          ; $5988: $3b
	rst  $38                                         ; $5989: $ff
	ld   sp, $f4d7                                   ; $598a: $31 $d7 $f4
	or   $6b                                         ; $598d: $f6 $6b
	add  l                                           ; $598f: $85
	rst  $38                                         ; $5990: $ff
	nop                                              ; $5991: $00
	adc  a                                           ; $5992: $8f
	add  c                                           ; $5993: $81
	rst  $38                                         ; $5994: $ff
	inc  b                                           ; $5995: $04
	db   $ec                                         ; $5996: $ec

jr_077_5997:
	sub  [hl]                                        ; $5997: $96
	ld   e, $1f                                      ; $5998: $1e $1f
	adc  c                                           ; $599a: $89
	add  b                                           ; $599b: $80
	sub  d                                           ; $599c: $92
	add  b                                           ; $599d: $80
	sub  e                                           ; $599e: $93
	nop                                              ; $599f: $00
	sub  d                                           ; $59a0: $92
	add  b                                           ; $59a1: $80
	sub  e                                           ; $59a2: $93
	rrca                                             ; $59a3: $0f
	adc  [hl]                                        ; $59a4: $8e
	sbc  [hl]                                        ; $59a5: $9e
	adc  a                                           ; $59a6: $8f
	sbc  a                                           ; $59a7: $9f
	ld   a, $7f                                      ; $59a8: $3e $7f
	ld   a, e                                        ; $59aa: $7b
	rst  $38                                         ; $59ab: $ff
	rst  JumpTable                                         ; $59ac: $df
	ld   a, a                                        ; $59ad: $7f
	ld   e, b                                        ; $59ae: $58
	db   $fd                                         ; $59af: $fd
	ld   sp, hl                                      ; $59b0: $f9
	ld   a, c                                        ; $59b1: $79
	pop  de                                          ; $59b2: $d1
	pop  af                                          ; $59b3: $f1
	add  b                                           ; $59b4: $80
	ld   h, c                                        ; $59b5: $61
	add  b                                           ; $59b6: $80
	rst  $38                                         ; $59b7: $ff
	add  b                                           ; $59b8: $80
	sbc  d                                           ; $59b9: $9a
	add  b                                           ; $59ba: $80
	jr   c, jr_077_593d                              ; $59bb: $38 $80

	ld   [hl], b                                     ; $59bd: $70
	add  b                                           ; $59be: $80
	ld   h, b                                        ; $59bf: $60
	add  b                                           ; $59c0: $80
	ld   b, e                                        ; $59c1: $43
	ld   bc, $090b                                   ; $59c2: $01 $0b $09
	add  b                                           ; $59c5: $80
	dec  c                                           ; $59c6: $0d
	inc  bc                                          ; $59c7: $03
	db   $fd                                         ; $59c8: $fd
	rst  $38                                         ; $59c9: $ff
	ret  nz                                          ; $59ca: $c0

	nop                                              ; $59cb: $00
	add  b                                           ; $59cc: $80
	ld   e, $00                                      ; $59cd: $1e $00
	ld   a, $80                                      ; $59cf: $3e $80
	ld   [hl+], a                                    ; $59d1: $22
	add  [hl]                                        ; $59d2: $86
	ld   a, [hl+]                                    ; $59d3: $2a
	inc  b                                           ; $59d4: $04
	ld   a, $b8                                      ; $59d5: $3e $b8
	ld   hl, sp+$78                                  ; $59d7: $f8 $78
	ld   hl, sp-$80                                  ; $59d9: $f8 $80
	ldh  a, [$80]                                    ; $59db: $f0 $80
	cp   $80                                         ; $59dd: $fe $80
	db   $ec                                         ; $59df: $ec
	add  b                                           ; $59e0: $80
	ld   hl, sp-$80                                  ; $59e1: $f8 $80
	ldh  a, [$80]                                    ; $59e3: $f0 $80
	rst  $38                                         ; $59e5: $ff
	inc  b                                           ; $59e6: $04
	ld   [bc], a                                     ; $59e7: $02
	add  [hl]                                        ; $59e8: $86
	nop                                              ; $59e9: $00
	nop                                              ; $59ea: $00
	rrca                                             ; $59eb: $0f
	add  b                                           ; $59ec: $80
	inc  c                                           ; $59ed: $0c
	add  b                                           ; $59ee: $80
	ld   [$0e80], sp                                 ; $59ef: $08 $80 $0e
	ld   bc, $0f00                                   ; $59f2: $01 $00 $0f
	add  l                                           ; $59f5: $85
	nop                                              ; $59f6: $00
	inc  b                                           ; $59f7: $04
	rst  $38                                         ; $59f8: $ff
	ld   b, b                                        ; $59f9: $40
	ld   h, c                                        ; $59fa: $61
	add  b                                           ; $59fb: $80
	and  d                                           ; $59fc: $a2
	add  b                                           ; $59fd: $80
	add  b                                           ; $59fe: $80
	ld   bc, $bc40                                   ; $59ff: $01 $40 $bc
	add  l                                           ; $5a02: $85
	nop                                              ; $5a03: $00
	ld   [$02ff], sp                                 ; $5a04: $08 $ff $02
	ldh  [c], a                                      ; $5a07: $e2
	nop                                              ; $5a08: $00
	ld   h, b                                        ; $5a09: $60
	nop                                              ; $5a0a: $00
	ld   [hl], h                                     ; $5a0b: $74
	nop                                              ; $5a0c: $00
	dec  bc                                          ; $5a0d: $0b
	add  l                                           ; $5a0e: $85
	nop                                              ; $5a0f: $00
	inc  b                                           ; $5a10: $04
	ldh  a, [$b0]                                    ; $5a11: $f0 $b0
	sub  b                                           ; $5a13: $90
	nop                                              ; $5a14: $00
	jr   z, jr_077_5997                              ; $5a15: $28 $80

	db   $10                                         ; $5a17: $10
	ld   bc, $f008                                   ; $5a18: $01 $08 $f0
	adc  c                                           ; $5a1b: $89
	nop                                              ; $5a1c: $00
	inc  b                                           ; $5a1d: $04
	ld   e, $00                                      ; $5a1e: $1e $00
	ld   bc, $1f00                                   ; $5a20: $01 $00 $1f
	sbc  b                                           ; $5a23: $98
	nop                                              ; $5a24: $00
	add  b                                           ; $5a25: $80
	inc  e                                           ; $5a26: $1c
	inc  bc                                          ; $5a27: $03
	ld   b, c                                        ; $5a28: $41
	ld   c, c                                        ; $5a29: $49
	ld   b, c                                        ; $5a2a: $41
	ld   c, c                                        ; $5a2b: $49
	and  l                                           ; $5a2c: $a5
	nop                                              ; $5a2d: $00
	ld   [bc], a                                     ; $5a2e: $02
	jr   nz, jr_077_5a31                             ; $5a2f: $20 $00

jr_077_5a31:
	ld   d, b                                        ; $5a31: $50
	add  e                                           ; $5a32: $83
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	ld   [hl], b                                     ; $5a35: $70
	or   l                                           ; $5a36: $b5
	nop                                              ; $5a37: $00
	add  b                                           ; $5a38: $80
	scf                                              ; $5a39: $37
	add  b                                           ; $5a3a: $80
	ld   e, a                                        ; $5a3b: $5f
	add  b                                           ; $5a3c: $80
	ccf                                              ; $5a3d: $3f
	add  b                                           ; $5a3e: $80
	ld   a, a                                        ; $5a3f: $7f
	add  [hl]                                        ; $5a40: $86
	nop                                              ; $5a41: $00
	add  b                                           ; $5a42: $80
	ret  nz                                          ; $5a43: $c0

	add  b                                           ; $5a44: $80
	pop  bc                                          ; $5a45: $c1
	add  b                                           ; $5a46: $80
	add  b                                           ; $5a47: $80
	add  b                                           ; $5a48: $80
	add  c                                           ; $5a49: $81
	add  [hl]                                        ; $5a4a: $86
	nop                                              ; $5a4b: $00
	add  b                                           ; $5a4c: $80
	sub  b                                           ; $5a4d: $90
	add  b                                           ; $5a4e: $80
	ld   [$9080], sp                                 ; $5a4f: $08 $80 $90
	add  b                                           ; $5a52: $80
	jr   nz, jr_077_5a55                             ; $5a53: $20 $00

jr_077_5a55:
	rrca                                             ; $5a55: $0f
	add  b                                           ; $5a56: $80
	inc  bc                                          ; $5a57: $03
	add  b                                           ; $5a58: $80
	dec  c                                           ; $5a59: $0d
	add  b                                           ; $5a5a: $80
	ld   [$0c80], sp                                 ; $5a5b: $08 $80 $0c
	add  b                                           ; $5a5e: $80
	ld   b, $80                                      ; $5a5f: $06 $80
	inc  bc                                          ; $5a61: $03
	add  b                                           ; $5a62: $80

jr_077_5a63:
	inc  c                                           ; $5a63: $0c
	rlca                                             ; $5a64: $07
	ld   [$007c], sp                                 ; $5a65: $08 $7c $00
	adc  e                                           ; $5a68: $8b
	add  b                                           ; $5a69: $80
	ld   [$8700], sp                                 ; $5a6a: $08 $00 $87
	add  b                                           ; $5a6d: $80
	ld   e, b                                        ; $5a6e: $58
	add  b                                           ; $5a6f: $80
	add  sp, -$80                                    ; $5a70: $e8 $80
	call nc, $a019                                   ; $5a72: $d4 $19 $a0
	and  c                                           ; $5a75: $a1
	nop                                              ; $5a76: $00
	rrca                                             ; $5a77: $0f
	nop                                              ; $5a78: $00
	ldh  a, [c]                                      ; $5a79: $f2
	nop                                              ; $5a7a: $00
	inc  c                                           ; $5a7b: $0c
	ld   bc, $00f9                                   ; $5a7c: $01 $f9 $00
	ld   de, $0100                                   ; $5a7f: $11 $00 $01
	inc  c                                           ; $5a82: $0c
	inc  h                                           ; $5a83: $24
	inc  bc                                          ; $5a84: $03
	di                                               ; $5a85: $f3
	nop                                              ; $5a86: $00
	rst  ToBoot                                         ; $5a87: $c7
	jr   nz, @+$0a                                   ; $5a88: $20 $08

	ld   d, b                                        ; $5a8a: $50
	ld   [hl], b                                     ; $5a8b: $70
	jr   nz, jr_077_5ab6                             ; $5a8c: $20 $28

	add  b                                           ; $5a8e: $80
	add  b                                           ; $5a8f: $80
	inc  bc                                          ; $5a90: $03
	jr   z, jr_077_5acb                              ; $5a91: $28 $38

	xor  b                                           ; $5a93: $a8
	or   b                                           ; $5a94: $b0
	add  b                                           ; $5a95: $80
	ld   d, b                                        ; $5a96: $50
	add  hl, bc                                      ; $5a97: $09
	jr   nz, jr_077_5a63                             ; $5a98: $20 $c9

	nop                                              ; $5a9a: $00
	ld   [$1900], sp                                 ; $5a9b: $08 $00 $19
	ld   bc, $1007                                   ; $5a9e: $01 $07 $10
	ld   bc, $3680                                   ; $5aa1: $01 $80 $36
	ld   bc, $1a3a                                   ; $5aa4: $01 $3a $1a
	add  c                                           ; $5aa7: $81
	ld   a, b                                        ; $5aa8: $78
	nop                                              ; $5aa9: $00
	ld   b, a                                        ; $5aaa: $47
	add  [hl]                                        ; $5aab: $86
	nop                                              ; $5aac: $00
	ld   bc, $0080                                   ; $5aad: $01 $80 $00
	add  c                                           ; $5ab0: $81
	ret  nz                                          ; $5ab1: $c0

	ld   c, $80                                      ; $5ab2: $0e $80
	ldh  [rAUD1HIGH], a                              ; $5ab4: $e0 $14

jr_077_5ab6:
	ld   b, c                                        ; $5ab6: $41
	ld   [hl], c                                     ; $5ab7: $71
	ld   hl, $2127                                   ; $5ab8: $21 $27 $21
	inc  h                                           ; $5abb: $24
	nop                                              ; $5abc: $00
	ld   a, [bc]                                     ; $5abd: $0a
	nop                                              ; $5abe: $00
	dec  bc                                          ; $5abf: $0b
	ld   bc, $810f                                   ; $5ac0: $01 $0f $81
	rlca                                             ; $5ac3: $07
	nop                                              ; $5ac4: $00
	rrca                                             ; $5ac5: $0f
	adc  b                                           ; $5ac6: $88
	nop                                              ; $5ac7: $00
	add  b                                           ; $5ac8: $80
	add  b                                           ; $5ac9: $80
	nop                                              ; $5aca: $00

jr_077_5acb:
	ret  nz                                          ; $5acb: $c0

	add  b                                           ; $5acc: $80
	ld   b, b                                        ; $5acd: $40
	nop                                              ; $5ace: $00
	ret  nz                                          ; $5acf: $c0

	add  c                                           ; $5ad0: $81
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	ld   bc, $0081                                   ; $5ad3: $01 $81 $00
	nop                                              ; $5ad6: $00
	ld   [bc], a                                     ; $5ad7: $02
	add  e                                           ; $5ad8: $83
	nop                                              ; $5ad9: $00
	ld   b, $c0                                      ; $5ada: $06 $c0
	nop                                              ; $5adc: $00
	or   e                                           ; $5add: $b3
	ld   hl, sp-$68                                  ; $5ade: $f8 $98
	ld   hl, sp+$50                                  ; $5ae0: $f8 $50
	add  b                                           ; $5ae2: $80
	db   $fc                                         ; $5ae3: $fc
	add  c                                           ; $5ae4: $81
	db   $ec                                         ; $5ae5: $ec
	nop                                              ; $5ae6: $00
	add  sp, -$7d                                    ; $5ae7: $e8 $83
	xor  $00                                         ; $5ae9: $ee $00
	ld   d, d                                        ; $5aeb: $52
	adc  a                                           ; $5aec: $8f
	nop                                              ; $5aed: $00
	ld   [bc], a                                     ; $5aee: $02
	ld   bc, $0600                                   ; $5aef: $01 $00 $06
	add  e                                           ; $5af2: $83
	nop                                              ; $5af3: $00
	rlca                                             ; $5af4: $07
	ld   bc, $3800                                   ; $5af5: $01 $00 $38
	nop                                              ; $5af8: $00
	jp   $1728                                       ; $5af9: $c3 $28 $17


	ld   [bc], a                                     ; $5afc: $02
	add  b                                           ; $5afd: $80
	ld   bc, $7a01                                   ; $5afe: $01 $01 $7a
	ld   c, d                                        ; $5b01: $4a
	add  b                                           ; $5b02: $80
	rlca                                             ; $5b03: $07
	add  b                                           ; $5b04: $80
	rrca                                             ; $5b05: $0f
	nop                                              ; $5b06: $00
	rst  $28                                         ; $5b07: $ef

jr_077_5b08:
	add  d                                           ; $5b08: $82
	ccf                                              ; $5b09: $3f
	ld   [bc], a                                     ; $5b0a: $02
	ld   a, a                                        ; $5b0b: $7f
	rst  JumpTable                                         ; $5b0c: $df

jr_077_5b0d:
	cp   a                                           ; $5b0d: $bf
	add  b                                           ; $5b0e: $80
	ld   a, a                                        ; $5b0f: $7f
	add  b                                           ; $5b10: $80
	rst  $38                                         ; $5b11: $ff
	add  h                                           ; $5b12: $84
	cp   $82                                         ; $5b13: $fe $82
	db   $fc                                         ; $5b15: $fc
	add  d                                           ; $5b16: $82
	nop                                              ; $5b17: $00
	add  b                                           ; $5b18: $80
	ld   [bc], a                                     ; $5b19: $02
	add  h                                           ; $5b1a: $84
	nop                                              ; $5b1b: $00
	add  b                                           ; $5b1c: $80
	jr   nz, @-$7e                                   ; $5b1d: $20 $80

	ld   hl, $1080                                   ; $5b1f: $21 $80 $10
	add  b                                           ; $5b22: $80
	jr   nz, @-$7e                                   ; $5b23: $20 $80

	ld   b, b                                        ; $5b25: $40
	add  b                                           ; $5b26: $80
	ld   h, b                                        ; $5b27: $60
	add  b                                           ; $5b28: $80
	ld   b, b                                        ; $5b29: $40
	add  b                                           ; $5b2a: $80
	ld   h, b                                        ; $5b2b: $60
	add  b                                           ; $5b2c: $80
	ret  nz                                          ; $5b2d: $c0

	add  b                                           ; $5b2e: $80
	ld   b, b                                        ; $5b2f: $40
	nop                                              ; $5b30: $00
	rrca                                             ; $5b31: $0f
	add  b                                           ; $5b32: $80
	dec  c                                           ; $5b33: $0d
	add  b                                           ; $5b34: $80
	inc  b                                           ; $5b35: $04
	add  b                                           ; $5b36: $80
	dec  bc                                          ; $5b37: $0b
	add  b                                           ; $5b38: $80
	ld   b, $80                                      ; $5b39: $06 $80
	dec  bc                                          ; $5b3b: $0b
	ld   bc, $0b00                                   ; $5b3c: $01 $00 $0b

jr_077_5b3f:
	add  c                                           ; $5b3f: $81
	nop                                              ; $5b40: $00
	rlca                                             ; $5b41: $07
	cp   h                                           ; $5b42: $bc
	ld   bc, $0ce9                                   ; $5b43: $01 $e9 $0c
	cp   h                                           ; $5b46: $bc
	inc  de                                          ; $5b47: $13
	ld   [de], a                                     ; $5b48: $12
	nop                                              ; $5b49: $00
	add  b                                           ; $5b4a: $80
	jr   nz, jr_077_5b53                             ; $5b4b: $20 $06

	ld   [hl+], a                                    ; $5b4d: $22
	nop                                              ; $5b4e: $00
	jp   $0c04                                       ; $5b4f: $c3 $04 $0c


	nop                                              ; $5b52: $00

jr_077_5b53:
	scf                                              ; $5b53: $37
	add  b                                           ; $5b54: $80
	add  b                                           ; $5b55: $80
	ld   bc, $6040                                   ; $5b56: $01 $40 $60
	add  b                                           ; $5b59: $80
	jr   nz, @+$07                                   ; $5b5a: $20 $05

	add  b                                           ; $5b5c: $80
	sub  b                                           ; $5b5d: $90
	ld   d, b                                        ; $5b5e: $50
	pop  de                                          ; $5b5f: $d1
	jr   nz, jr_077_5b08                             ; $5b60: $20 $a6

	add  b                                           ; $5b62: $80
	ld   h, b                                        ; $5b63: $60
	dec  bc                                          ; $5b64: $0b
	ld   de, $00c9                                   ; $5b65: $11 $c9 $00
	ld   [hl], b                                     ; $5b68: $70
	nop                                              ; $5b69: $00
	ld   e, b                                        ; $5b6a: $58
	nop                                              ; $5b6b: $00
	stop                                             ; $5b6c: $10 $00
	ld   h, b                                        ; $5b6e: $60
	nop                                              ; $5b6f: $00
	add  b                                           ; $5b70: $80
	add  b                                           ; $5b71: $80
	db   $10                                         ; $5b72: $10
	add  b                                           ; $5b73: $80
	ld   [hl], b                                     ; $5b74: $70
	ld   [$c7f0], sp                                 ; $5b75: $08 $f0 $c7
	ld   a, b                                        ; $5b78: $78
	dec  sp                                          ; $5b79: $3b
	ldh  [$e1], a                                    ; $5b7a: $e0 $e1
	ld   hl, sp-$06                                  ; $5b7c: $f8 $fa
	ld   hl, sp-$7f                                  ; $5b7e: $f8 $81
	ei                                               ; $5b80: $fb
	add  b                                           ; $5b81: $80
	di                                               ; $5b82: $f3
	inc  bc                                          ; $5b83: $03
	ei                                               ; $5b84: $fb
	cp   b                                           ; $5b85: $b8
	ld   a, b                                        ; $5b86: $78
	add  a                                           ; $5b87: $87
	add  b                                           ; $5b88: $80
	ldh  [$03], a                                    ; $5b89: $e0 $03
	jr   nz, jr_077_5b0d                             ; $5b8b: $20 $80

	jr   nc, jr_077_5b3f                             ; $5b8d: $30 $b0

	add  l                                           ; $5b8f: $85
	ld   [hl], b                                     ; $5b90: $70
	add  b                                           ; $5b91: $80
	ld   h, b                                        ; $5b92: $60
	ld   bc, $038c                                   ; $5b93: $01 $8c $03
	add  b                                           ; $5b96: $80
	dec  e                                           ; $5b97: $1d
	nop                                              ; $5b98: $00
	ld   e, $80                                      ; $5b99: $1e $80
	ld   a, $80                                      ; $5b9b: $3e $80
	ld   a, [hl]                                     ; $5b9d: $7e
	nop                                              ; $5b9e: $00
	cp   $80                                         ; $5b9f: $fe $80
	db   $fc                                         ; $5ba1: $fc
	add  b                                           ; $5ba2: $80
	db   $fd                                         ; $5ba3: $fd
	ld   [bc], a                                     ; $5ba4: $02
	ld   hl, sp+$78                                  ; $5ba5: $f8 $78
	cp   $83                                         ; $5ba7: $fe $83
	ld   h, b                                        ; $5ba9: $60
	nop                                              ; $5baa: $00
	pop  hl                                          ; $5bab: $e1
	add  b                                           ; $5bac: $80
	ldh  [rSC], a                                    ; $5bad: $e0 $02
	pop  hl                                          ; $5baf: $e1
	ldh  [$e3], a                                    ; $5bb0: $e0 $e3
	add  c                                           ; $5bb2: $81
	pop  hl                                          ; $5bb3: $e1
	inc  bc                                          ; $5bb4: $03
	and  $06                                         ; $5bb5: $e6 $06
	nop                                              ; $5bb7: $00
	jp   nz, $0081                                   ; $5bb8: $c2 $81 $00

	nop                                              ; $5bbb: $00
	ldh  [$80], a                                    ; $5bbc: $e0 $80
	nop                                              ; $5bbe: $00
	ld   bc, $4170                                   ; $5bbf: $01 $70 $41
	add  b                                           ; $5bc2: $80
	cp   b                                           ; $5bc3: $b8
	dec  b                                           ; $5bc4: $05
	ld   hl, sp-$10                                  ; $5bc5: $f8 $f0
	inc  c                                           ; $5bc7: $0c
	ld   c, b                                        ; $5bc8: $48
	or   $f2                                         ; $5bc9: $f6 $f2
	add  e                                           ; $5bcb: $83
	db   $fc                                         ; $5bcc: $fc
	nop                                              ; $5bcd: $00
	cp   h                                           ; $5bce: $bc
	add  l                                           ; $5bcf: $85
	nop                                              ; $5bd0: $00
	ld   [bc], a                                     ; $5bd1: $02
	ei                                               ; $5bd2: $fb
	nop                                              ; $5bd3: $00
	inc  b                                           ; $5bd4: $04
	add  b                                           ; $5bd5: $80
	inc  bc                                          ; $5bd6: $03
	add  l                                           ; $5bd7: $85
	ld   [bc], a                                     ; $5bd8: $02
	nop                                              ; $5bd9: $00
	ld   b, $80                                      ; $5bda: $06 $80
	ld   bc, $0001                                   ; $5bdc: $01 $01 $00
	db   $fc                                         ; $5bdf: $fc
	add  b                                           ; $5be0: $80
	ld   [hl], h                                     ; $5be1: $74
	add  b                                           ; $5be2: $80
	ld   d, l                                        ; $5be3: $55
	add  b                                           ; $5be4: $80
	or   l                                           ; $5be5: $b5
	add  b                                           ; $5be6: $80
	cp   c                                           ; $5be7: $b9
	add  b                                           ; $5be8: $80
	ld   a, b                                        ; $5be9: $78
	add  b                                           ; $5bea: $80
	ld   a, c                                        ; $5beb: $79
	add  b                                           ; $5bec: $80
	ld   a, d                                        ; $5bed: $7a
	add  b                                           ; $5bee: $80
	daa                                              ; $5bef: $27
	dec  b                                           ; $5bf0: $05
	pop  hl                                          ; $5bf1: $e1
	jp   hl                                          ; $5bf2: $e9


	ldh  [$e8], a                                    ; $5bf3: $e0 $e8
	ret  nz                                          ; $5bf5: $c0

	call c, $f081                                    ; $5bf6: $dc $81 $f0
	rlca                                             ; $5bf9: $07
	db   $ec                                         ; $5bfa: $ec
	ld   [hl], c                                     ; $5bfb: $71
	ld   [hl], h                                     ; $5bfc: $74
	ld   sp, $0b7f                                   ; $5bfd: $31 $7f $0b
	ld   b, e                                        ; $5c00: $43
	db   $fc                                         ; $5c01: $fc
	add  h                                           ; $5c02: $84
	ld   hl, sp-$7d                                  ; $5c03: $f8 $83
	ldh  a, [$03]                                    ; $5c05: $f0 $03
	pop  af                                          ; $5c07: $f1
	ld   [hl], c                                     ; $5c08: $71
	pop  af                                          ; $5c09: $f1
	add  c                                           ; $5c0a: $81
	add  b                                           ; $5c0b: $80
	ld   b, b                                        ; $5c0c: $40
	add  b                                           ; $5c0d: $80
	ld   h, c                                        ; $5c0e: $61
	add  b                                           ; $5c0f: $80
	ret  nz                                          ; $5c10: $c0

	add  b                                           ; $5c11: $80
	and  b                                           ; $5c12: $a0
	add  b                                           ; $5c13: $80
	ret  nz                                          ; $5c14: $c0

	add  b                                           ; $5c15: $80
	add  b                                           ; $5c16: $80
	add  b                                           ; $5c17: $80
	add  c                                           ; $5c18: $81
	ld   [bc], a                                     ; $5c19: $02
	add  b                                           ; $5c1a: $80
	ld   b, b                                        ; $5c1b: $40
	ret  nz                                          ; $5c1c: $c0

	add  b                                           ; $5c1d: $80
	jp   nz, $8082                                   ; $5c1e: $c2 $82 $80

	add  b                                           ; $5c21: $80
	nop                                              ; $5c22: $00
	add  b                                           ; $5c23: $80
	add  b                                           ; $5c24: $80
	add  b                                           ; $5c25: $80
	nop                                              ; $5c26: $00
	add  b                                           ; $5c27: $80
	add  c                                           ; $5c28: $81
	nop                                              ; $5c29: $00
	inc  b                                           ; $5c2a: $04
	add  e                                           ; $5c2b: $83
	ld   [$0302], sp                                 ; $5c2c: $08 $02 $03
	nop                                              ; $5c2f: $00
	rrca                                             ; $5c30: $0f
	add  d                                           ; $5c31: $82
	nop                                              ; $5c32: $00
	add  c                                           ; $5c33: $81
	rrca                                             ; $5c34: $0f
	nop                                              ; $5c35: $00
	rra                                              ; $5c36: $1f
	add  e                                           ; $5c37: $83
	ret  nz                                          ; $5c38: $c0

	add  b                                           ; $5c39: $80
	nop                                              ; $5c3a: $00
	inc  b                                           ; $5c3b: $04
	call c, $0600                                    ; $5c3c: $dc $00 $06
	nop                                              ; $5c3f: $00
	ld   [bc], a                                     ; $5c40: $02
	add  c                                           ; $5c41: $81
	ret  nz                                          ; $5c42: $c0

	nop                                              ; $5c43: $00
	ret  z                                           ; $5c44: $c8

	add  b                                           ; $5c45: $80
	rra                                              ; $5c46: $1f
	nop                                              ; $5c47: $00
	ld   c, a                                        ; $5c48: $4f
	add  b                                           ; $5c49: $80
	ld   c, [hl]                                     ; $5c4a: $4e
	ld   [bc], a                                     ; $5c4b: $02
	ld   b, c                                        ; $5c4c: $41
	ld   b, b                                        ; $5c4d: $40
	ld   c, [hl]                                     ; $5c4e: $4e
	add  b                                           ; $5c4f: $80
	ld   c, b                                        ; $5c50: $48
	add  b                                           ; $5c51: $80
	ld   c, c                                        ; $5c52: $49
	nop                                              ; $5c53: $00
	ld   c, a                                        ; $5c54: $4f
	add  b                                           ; $5c55: $80
	ld   c, [hl]                                     ; $5c56: $4e
	ld   [de], a                                     ; $5c57: $12
	ld   d, a                                        ; $5c58: $57
	ldh  [$90], a                                    ; $5c59: $e0 $90
	add  b                                           ; $5c5b: $80
	ld   h, b                                        ; $5c5c: $60
	nop                                              ; $5c5d: $00
	inc  b                                           ; $5c5e: $04
	db   $10                                         ; $5c5f: $10
	ld   d, $10                                      ; $5c60: $16 $10
	dec  b                                           ; $5c62: $05
	nop                                              ; $5c63: $00
	ld   h, c                                        ; $5c64: $61
	nop                                              ; $5c65: $00
	add  hl, bc                                      ; $5c66: $09
	nop                                              ; $5c67: $00
	adc  b                                           ; $5c68: $88
	inc  [hl]                                        ; $5c69: $34
	ld   [hl], h                                     ; $5c6a: $74
	add  b                                           ; $5c6b: $80
	ld   c, h                                        ; $5c6c: $4c
	add  c                                           ; $5c6d: $81
	ld   a, h                                        ; $5c6e: $7c
	ld   a, [bc]                                     ; $5c6f: $0a
	db   $fc                                         ; $5c70: $fc
	ld   a, h                                        ; $5c71: $7c
	db   $fc                                         ; $5c72: $fc
	ld   a, h                                        ; $5c73: $7c
	call c, $9c3c                                    ; $5c74: $dc $3c $9c
	nop                                              ; $5c77: $00
	rst  JumpTable                                         ; $5c78: $df
	add  b                                           ; $5c79: $80
	and  b                                           ; $5c7a: $a0
	adc  d                                           ; $5c7b: $8a
	ldh  [rSC], a                                    ; $5c7c: $e0 $02
	nop                                              ; $5c7e: $00
	ld   a, [$8005]                                  ; $5c7f: $fa $05 $80
	ld   a, [bc]                                     ; $5c82: $0a
	add  b                                           ; $5c83: $80
	dec  b                                           ; $5c84: $05
	add  b                                           ; $5c85: $80
	dec  bc                                          ; $5c86: $0b
	add  b                                           ; $5c87: $80
	rlca                                             ; $5c88: $07
	add  b                                           ; $5c89: $80
	inc  bc                                          ; $5c8a: $03
	add  b                                           ; $5c8b: $80
	rlca                                             ; $5c8c: $07
	add  b                                           ; $5c8d: $80
	inc  bc                                          ; $5c8e: $03
	nop                                              ; $5c8f: $00
	inc  a                                           ; $5c90: $3c
	add  h                                           ; $5c91: $84
	rst  $20                                         ; $5c92: $e7
	ld   [bc], a                                     ; $5c93: $02
	pop  hl                                          ; $5c94: $e1
	jp   hl                                          ; $5c95: $e9


	ld   [$f580], a                                  ; $5c96: $ea $80 $f5
	add  b                                           ; $5c99: $80
	rst  $28                                         ; $5c9a: $ef
	add  b                                           ; $5c9b: $80
	ld   sp, hl                                      ; $5c9c: $f9
	ld   [$0e7b], sp                                 ; $5c9d: $08 $7b $0e
	ld   l, l                                        ; $5ca0: $6d
	dec  c                                           ; $5ca1: $0d
	ld   c, $6e                                      ; $5ca2: $0e $6e
	ld   h, l                                        ; $5ca4: $65
	ld   l, l                                        ; $5ca5: $6d
	ld   h, e                                        ; $5ca6: $63
	add  l                                           ; $5ca7: $85
	rst  $28                                         ; $5ca8: $ef
	ld   bc, $01e9                                   ; $5ca9: $01 $e9 $01
	add  b                                           ; $5cac: $80
	ld   [bc], a                                     ; $5cad: $02
	inc  b                                           ; $5cae: $04
	ld   e, l                                        ; $5caf: $5d
	ld   bc, $025a                                   ; $5cb0: $01 $5a $02
	inc  bc                                          ; $5cb3: $03

jr_077_5cb4:
	add  l                                           ; $5cb4: $85
	rst  $38                                         ; $5cb5: $ff
	ld   bc, $1517                                   ; $5cb6: $01 $17 $15
	add  b                                           ; $5cb9: $80
	xor  c                                           ; $5cba: $a9
	ld   bc, $f4f5                                   ; $5cbb: $01 $f5 $f4
	add  b                                           ; $5cbe: $80
	cp   h                                           ; $5cbf: $bc
	add  b                                           ; $5cc0: $80
	ld   a, h                                        ; $5cc1: $7c
	nop                                              ; $5cc2: $00
	db   $fc                                         ; $5cc3: $fc
	add  d                                           ; $5cc4: $82
	db   $fd                                         ; $5cc5: $fd
	add  b                                           ; $5cc6: $80
	cp   $05                                         ; $5cc7: $fe $05
	cp   a                                           ; $5cc9: $bf
	adc  [hl]                                        ; $5cca: $8e
	rst  $38                                         ; $5ccb: $ff
	ret  nz                                          ; $5ccc: $c0

	rst  $38                                         ; $5ccd: $ff
	push af                                          ; $5cce: $f5
	add  d                                           ; $5ccf: $82
	rst  $38                                         ; $5cd0: $ff
	rlca                                             ; $5cd1: $07
	ld   a, a                                        ; $5cd2: $7f
	ld   a, [hl]                                     ; $5cd3: $7e
	ld   a, a                                        ; $5cd4: $7f
	ld   a, h                                        ; $5cd5: $7c
	ld   a, a                                        ; $5cd6: $7f
	ld   a, [hl]                                     ; $5cd7: $7e
	daa                                              ; $5cd8: $27
	dec  l                                           ; $5cd9: $2d
	add  b                                           ; $5cda: $80
	db   $ed                                         ; $5cdb: $ed
	add  b                                           ; $5cdc: $80
	call $c182                                       ; $5cdd: $cd $82 $c1
	rlca                                             ; $5ce0: $07
	call $ec8c                                       ; $5ce1: $cd $8c $ec
	ld   c, $ee                                      ; $5ce4: $0e $ee
	rst  JumpTable                                         ; $5ce6: $df
	pop  hl                                          ; $5ce7: $e1
	and  c                                           ; $5ce8: $a1
	add  b                                           ; $5ce9: $80
	pop  hl                                          ; $5cea: $e1
	add  c                                           ; $5ceb: $81
	db   $e3                                         ; $5cec: $e3
	add  b                                           ; $5ced: $80
	jp   Jump_077_4380                               ; $5cee: $c3 $80 $43


	add  c                                           ; $5cf1: $81
	jp   $c780                                       ; $5cf2: $c3 $80 $c7


	add  b                                           ; $5cf5: $80
	add  c                                           ; $5cf6: $81
	add  b                                           ; $5cf7: $80
	ld   b, d                                        ; $5cf8: $42
	add  b                                           ; $5cf9: $80
	add  b                                           ; $5cfa: $80
	add  b                                           ; $5cfb: $80
	ld   b, b                                        ; $5cfc: $40
	add  h                                           ; $5cfd: $84
	nop                                              ; $5cfe: $00
	add  b                                           ; $5cff: $80
	ld   bc, $0580                                   ; $5d00: $01 $80 $05
	add  b                                           ; $5d03: $80
	adc  a                                           ; $5d04: $8f
	add  b                                           ; $5d05: $80
	ld   b, l                                        ; $5d06: $45
	add  b                                           ; $5d07: $80
	adc  [hl]                                        ; $5d08: $8e
	add  b                                           ; $5d09: $80
	ld   d, e                                        ; $5d0a: $53
	add  b                                           ; $5d0b: $80
	dec  c                                           ; $5d0c: $0d
	add  b                                           ; $5d0d: $80
	sub  b                                           ; $5d0e: $90
	add  b                                           ; $5d0f: $80
	ld   a, [hl+]                                    ; $5d10: $2a
	nop                                              ; $5d11: $00
	rrca                                             ; $5d12: $0f
	add  e                                           ; $5d13: $83
	nop                                              ; $5d14: $00
	add  b                                           ; $5d15: $80
	ld   bc, $0a80                                   ; $5d16: $01 $80 $0a
	add  b                                           ; $5d19: $80
	dec  c                                           ; $5d1a: $0d
	add  b                                           ; $5d1b: $80
	ld   a, [bc]                                     ; $5d1c: $0a
	inc  bc                                          ; $5d1d: $03
	dec  c                                           ; $5d1e: $0d
	ld   a, [bc]                                     ; $5d1f: $0a
	add  b                                           ; $5d20: $80
	inc  c                                           ; $5d21: $0c
	add  c                                           ; $5d22: $81
	nop                                              ; $5d23: $00
	inc  b                                           ; $5d24: $04
	ld   b, $00                                      ; $5d25: $06 $00
	dec  b                                           ; $5d27: $05
	nop                                              ; $5d28: $00
	rlca                                             ; $5d29: $07
	add  b                                           ; $5d2a: $80
	nop                                              ; $5d2b: $00
	add  b                                           ; $5d2c: $80
	add  b                                           ; $5d2d: $80
	ld   bc, $8f00                                   ; $5d2e: $01 $00 $8f
	add  b                                           ; $5d31: $80
	jr   nz, jr_077_5cb4                             ; $5d32: $20 $80

	jr   nc, @+$07                                   ; $5d34: $30 $05

	ld   sp, $3271                                   ; $5d36: $31 $71 $32
	ldh  a, [c]                                      ; $5d39: $f2
	ld   de, $80b9                                   ; $5d3a: $11 $b9 $80
	dec  bc                                          ; $5d3d: $0b
	add  c                                           ; $5d3e: $81
	rrca                                             ; $5d3f: $0f
	dec  bc                                          ; $5d40: $0b
	add  d                                           ; $5d41: $82
	nop                                              ; $5d42: $00
	ld   l, d                                        ; $5d43: $6a
	nop                                              ; $5d44: $00
	ld   a, [hl-]                                    ; $5d45: $3a
	ld   e, d                                        ; $5d46: $5a
	ld   e, l                                        ; $5d47: $5d
	db   $fd                                         ; $5d48: $fd
	ld   a, [$7f7a]                                  ; $5d49: $fa $7a $7f
	rst  $38                                         ; $5d4c: $ff
	add  b                                           ; $5d4d: $80
	rst  $28                                         ; $5d4e: $ef
	add  b                                           ; $5d4f: $80
	rst  $38                                         ; $5d50: $ff
	nop                                              ; $5d51: $00
	ccf                                              ; $5d52: $3f
	add  c                                           ; $5d53: $81
	nop                                              ; $5d54: $00
	add  b                                           ; $5d55: $80
	add  b                                           ; $5d56: $80
	add  b                                           ; $5d57: $80
	ld   b, b                                        ; $5d58: $40
	add  b                                           ; $5d59: $80
	add  b                                           ; $5d5a: $80
	add  c                                           ; $5d5b: $81
	ret  nz                                          ; $5d5c: $c0

	add  c                                           ; $5d5d: $81
	ldh  [rSB], a                                    ; $5d5e: $e0 $01
	push de                                          ; $5d60: $d5
	ld   a, [bc]                                     ; $5d61: $0a
	add  b                                           ; $5d62: $80
	rla                                              ; $5d63: $17
	add  b                                           ; $5d64: $80
	ld   l, $00                                      ; $5d65: $2e $00
	ccf                                              ; $5d67: $3f
	add  a                                           ; $5d68: $87
	ld   a, a                                        ; $5d69: $7f
	ld   bc, $07b8                                   ; $5d6a: $01 $b8 $07
	add  b                                           ; $5d6d: $80
	inc  bc                                          ; $5d6e: $03
	ld   bc, $a09f                                   ; $5d6f: $01 $9f $a0
	add  b                                           ; $5d72: $80
	ld   b, b                                        ; $5d73: $40
	add  c                                           ; $5d74: $81
	ldh  [$80], a                                    ; $5d75: $e0 $80
	pop  hl                                          ; $5d77: $e1
	add  b                                           ; $5d78: $80
	db   $e3                                         ; $5d79: $e3
	dec  b                                           ; $5d7a: $05
	push hl                                          ; $5d7b: $e5
	dec  de                                          ; $5d7c: $1b
	rst  $38                                         ; $5d7d: $ff
	rst  JumpTable                                         ; $5d7e: $df
	cp   a                                           ; $5d7f: $bf
	cp   [hl]                                        ; $5d80: $be
	add  h                                           ; $5d81: $84
	cp   a                                           ; $5d82: $bf
	add  e                                           ; $5d83: $83
	ccf                                              ; $5d84: $3f
	nop                                              ; $5d85: $00
	rst  $38                                         ; $5d86: $ff
	add  b                                           ; $5d87: $80
	rst  $28                                         ; $5d88: $ef
	inc  bc                                          ; $5d89: $03
	rrca                                             ; $5d8a: $0f
	ld   a, a                                        ; $5d8b: $7f
	ld   e, a                                        ; $5d8c: $5f
	cpl                                              ; $5d8d: $2f
	add  d                                           ; $5d8e: $82
	sbc  a                                           ; $5d8f: $9f
	adc  a                                           ; $5d90: $8f
	rst  $38                                         ; $5d91: $ff
	inc  b                                           ; $5d92: $04
	cp   d                                           ; $5d93: $ba
	rst  $38                                         ; $5d94: $ff
	sub  c                                           ; $5d95: $91
	rst  $38                                         ; $5d96: $ff
	call nc, $fe81                                   ; $5d97: $d4 $81 $fe
	inc  c                                           ; $5d9a: $0c
	ld   [$e8fe], a                                  ; $5d9b: $ea $fe $e8
	cp   $a8                                         ; $5d9e: $fe $a8
	cp   $44                                         ; $5da0: $fe $44
	cp   $47                                         ; $5da2: $fe $47
	rst  $38                                         ; $5da4: $ff
	ld   b, e                                        ; $5da5: $43
	rst  $38                                         ; $5da6: $ff
	inc  de                                          ; $5da7: $13
	add  e                                           ; $5da8: $83
	cp   a                                           ; $5da9: $bf
	ld   [bc], a                                     ; $5daa: $02
	cp   [hl]                                        ; $5dab: $be
	cp   a                                           ; $5dac: $bf
	cp   [hl]                                        ; $5dad: $be
	add  b                                           ; $5dae: $80
	cp   a                                           ; $5daf: $bf
	dec  bc                                          ; $5db0: $0b
	rlca                                             ; $5db1: $07
	rst  $38                                         ; $5db2: $ff
	ld   l, a                                        ; $5db3: $6f
	ld   d, a                                        ; $5db4: $57
	rlca                                             ; $5db5: $07
	adc  $ee                                         ; $5db6: $ce $ee
	ld   c, [hl]                                     ; $5db8: $4e
	xor  $10                                         ; $5db9: $ee $10
	ldh  a, [$5f]                                    ; $5dbb: $f0 $5f
	add  c                                           ; $5dbd: $81
	ld   sp, hl                                      ; $5dbe: $f9
	ld   bc, $f0f6                                   ; $5dbf: $01 $f6 $f0
	add  b                                           ; $5dc2: $80
	ldh  [$81], a                                    ; $5dc3: $e0 $81
	rst  $38                                         ; $5dc5: $ff
	add  b                                           ; $5dc6: $80
	add  d                                           ; $5dc7: $82
	add  b                                           ; $5dc8: $80
	add  [hl]                                        ; $5dc9: $86
	add  b                                           ; $5dca: $80
	adc  d                                           ; $5dcb: $8a
	add  b                                           ; $5dcc: $80
	add  h                                           ; $5dcd: $84
	add  b                                           ; $5dce: $80
	ld   c, $80                                      ; $5dcf: $0e $80
	ld   d, h                                        ; $5dd1: $54
	add  b                                           ; $5dd2: $80
	ld   c, [hl]                                     ; $5dd3: $4e
	add  b                                           ; $5dd4: $80
	ld   d, l                                        ; $5dd5: $55
	add  b                                           ; $5dd6: $80
	nop                                              ; $5dd7: $00
	add  b                                           ; $5dd8: $80
	ld   [$8280], sp                                 ; $5dd9: $08 $80 $82
	add  b                                           ; $5ddc: $80
	dec  d                                           ; $5ddd: $15
	add  b                                           ; $5dde: $80
	add  d                                           ; $5ddf: $82
	add  b                                           ; $5de0: $80
	ld   b, c                                        ; $5de1: $41
	add  b                                           ; $5de2: $80
	adc  e                                           ; $5de3: $8b
	add  b                                           ; $5de4: $80
	sbc  a                                           ; $5de5: $9f
	add  b                                           ; $5de6: $80
	ld   e, l                                        ; $5de7: $5d
	add  b                                           ; $5de8: $80
	ld   c, $80                                      ; $5de9: $0e $80
	sub  h                                           ; $5deb: $94
	add  b                                           ; $5dec: $80
	xor  [hl]                                        ; $5ded: $ae
	add  b                                           ; $5dee: $80
	sbc  $80                                         ; $5def: $de $80
	adc  [hl]                                        ; $5df1: $8e
	add  b                                           ; $5df2: $80
	ld   d, [hl]                                     ; $5df3: $56
	ld   bc, $e3ec                                   ; $5df4: $01 $ec $e3
	adc  c                                           ; $5df7: $89
	rrca                                             ; $5df8: $0f
	ld   [$0f0a], sp                                 ; $5df9: $08 $0a $0f
	inc  b                                           ; $5dfc: $04
	rrca                                             ; $5dfd: $0f
	cp   $80                                         ; $5dfe: $fe $80
	cp   a                                           ; $5e00: $bf
	ret  nz                                          ; $5e01: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e02: $cf
	add  d                                           ; $5e03: $82
	ret  nz                                          ; $5e04: $c0

	dec  bc                                          ; $5e05: $0b
	ldh  [$60], a                                    ; $5e06: $e0 $60
	ldh  [rAUD4LEN], a                               ; $5e08: $e0 $20
	ldh  a, [$30]                                    ; $5e0a: $f0 $30
	ldh  a, [$97]                                    ; $5e0c: $f0 $97
	rra                                              ; $5e0e: $1f
	rst  JumpTable                                         ; $5e0f: $df
	rrca                                             ; $5e10: $0f
	xor  a                                           ; $5e11: $af
	add  c                                           ; $5e12: $81
	rrca                                             ; $5e13: $0f
	ld   [$070a], sp                                 ; $5e14: $08 $0a $07
	inc  b                                           ; $5e17: $04
	rlca                                             ; $5e18: $07
	ld   b, $07                                      ; $5e19: $06 $07
	ld   b, $07                                      ; $5e1b: $06 $07
	cp   c                                           ; $5e1d: $b9
	add  c                                           ; $5e1e: $81
	rst  $38                                         ; $5e1f: $ff
	ld   c, $fb                                      ; $5e20: $0e $fb
	rst  $38                                         ; $5e22: $ff
	pop  af                                          ; $5e23: $f1
	rst  $38                                         ; $5e24: $ff
	and  b                                           ; $5e25: $a0
	rst  $38                                         ; $5e26: $ff
	inc  d                                           ; $5e27: $14
	rst  $38                                         ; $5e28: $ff
	ld   e, h                                        ; $5e29: $5c
	rst  $38                                         ; $5e2a: $ff
	ld   c, l                                        ; $5e2b: $4d
	rst  $38                                         ; $5e2c: $ff
	ld   d, b                                        ; $5e2d: $50
	ldh  [$ef], a                                    ; $5e2e: $e0 $ef
	add  c                                           ; $5e30: $81
	push af                                          ; $5e31: $f5
	ld   a, [bc]                                     ; $5e32: $0a
	ld   a, [$a0e0]                                  ; $5e33: $fa $e0 $a0
	ldh  [rAUD1LOW], a                               ; $5e36: $e0 $13
	di                                               ; $5e38: $f3
	rra                                              ; $5e39: $1f
	rst  $38                                         ; $5e3a: $ff
	rla                                              ; $5e3b: $17
	rst  $38                                         ; $5e3c: $ff
	ld   c, b                                        ; $5e3d: $48
	add  b                                           ; $5e3e: $80
	ld   a, a                                        ; $5e3f: $7f
	add  c                                           ; $5e40: $81
	rst  $38                                         ; $5e41: $ff
	ld   a, [bc]                                     ; $5e42: $0a
	xor  a                                           ; $5e43: $af
	ld   a, a                                        ; $5e44: $7f
	ld   b, a                                        ; $5e45: $47
	ld   a, a                                        ; $5e46: $7f
	jp   nc, $90ff                                   ; $5e47: $d2 $ff $90

	rst  $38                                         ; $5e4a: $ff
	xor  b                                           ; $5e4b: $a8
	rst  $38                                         ; $5e4c: $ff
	dec  e                                           ; $5e4d: $1d
	add  b                                           ; $5e4e: $80
	push hl                                          ; $5e4f: $e5
	nop                                              ; $5e50: $00
	pop  hl                                          ; $5e51: $e1
	add  [hl]                                        ; $5e52: $86
	ldh  [rDIV], a                                   ; $5e53: $e0 $04
	ld   a, [hl]                                     ; $5e55: $7e
	ldh  [rPCM12], a                                 ; $5e56: $e0 $76
	ret  nz                                          ; $5e58: $c0

	ld   d, $81                                      ; $5e59: $16 $81
	ccf                                              ; $5e5b: $3f
	ld   d, $35                                      ; $5e5c: $16 $35
	ccf                                              ; $5e5e: $3f
	jr   nz, jr_077_5ea0                             ; $5e5f: $20 $3f

	ld   d, h                                        ; $5e61: $54
	ccf                                              ; $5e62: $3f
	cp   h                                           ; $5e63: $bc
	ccf                                              ; $5e64: $3f
	cp   c                                           ; $5e65: $b9
	ccf                                              ; $5e66: $3f
	cp   e                                           ; $5e67: $bb
	ccf                                              ; $5e68: $3f
	ld   a, [hl+]                                    ; $5e69: $2a
	rst  $38                                         ; $5e6a: $ff
	ret  z                                           ; $5e6b: $c8

	rst  $38                                         ; $5e6c: $ff
	ld   c, l                                        ; $5e6d: $4d
	rst  $38                                         ; $5e6e: $ff
	cpl                                              ; $5e6f: $2f
	rst  $38                                         ; $5e70: $ff
	ccf                                              ; $5e71: $3f
	rst  $38                                         ; $5e72: $ff
	cp   a                                           ; $5e73: $bf
	add  e                                           ; $5e74: $83
	rst  $38                                         ; $5e75: $ff
	ld   [$ffb5], sp                                 ; $5e76: $08 $b5 $ff
	ld   de, $5bff                                   ; $5e79: $11 $ff $5b
	rst  $38                                         ; $5e7c: $ff
	ei                                               ; $5e7d: $fb
	rst  $38                                         ; $5e7e: $ff
	ei                                               ; $5e7f: $fb
	sub  l                                           ; $5e80: $95
	rst  $38                                         ; $5e81: $ff
	add  b                                           ; $5e82: $80
	rlca                                             ; $5e83: $07
	add  b                                           ; $5e84: $80
	rra                                              ; $5e85: $1f
	adc  e                                           ; $5e86: $8b
	rst  $38                                         ; $5e87: $ff
	add  h                                           ; $5e88: $84
	cp   $84                                         ; $5e89: $fe $84
	db   $fc                                         ; $5e8b: $fc
	add  d                                           ; $5e8c: $82
	ld   hl, sp-$80                                  ; $5e8d: $f8 $80
	ld   c, l                                        ; $5e8f: $4d
	add  b                                           ; $5e90: $80
	ld   e, l                                        ; $5e91: $5d
	add  b                                           ; $5e92: $80
	ld   e, e                                        ; $5e93: $5b
	add  b                                           ; $5e94: $80
	ld   sp, hl                                      ; $5e95: $f9
	add  b                                           ; $5e96: $80
	db   $db                                         ; $5e97: $db
	add  b                                           ; $5e98: $80
	or   e                                           ; $5e99: $b3
	add  b                                           ; $5e9a: $80
	db   $d3                                         ; $5e9b: $d3
	add  b                                           ; $5e9c: $80
	add  b                                           ; $5e9d: $80
	add  b                                           ; $5e9e: $80
	sbc  l                                           ; $5e9f: $9d

jr_077_5ea0:
	add  b                                           ; $5ea0: $80
	sbc  [hl]                                        ; $5ea1: $9e
	add  b                                           ; $5ea2: $80
	cp   l                                           ; $5ea3: $bd
	add  b                                           ; $5ea4: $80
	ld   e, a                                        ; $5ea5: $5f
	add  b                                           ; $5ea6: $80
	cp   a                                           ; $5ea7: $bf
	add  b                                           ; $5ea8: $80
	rra                                              ; $5ea9: $1f
	add  b                                           ; $5eaa: $80
	ccf                                              ; $5eab: $3f
	add  b                                           ; $5eac: $80
	nop                                              ; $5ead: $00
	add  b                                           ; $5eae: $80
	ld   d, h                                        ; $5eaf: $54
	add  b                                           ; $5eb0: $80
	db   $fc                                         ; $5eb1: $fc
	add  b                                           ; $5eb2: $80
	ld   a, h                                        ; $5eb3: $7c
	add  b                                           ; $5eb4: $80
	db   $fc                                         ; $5eb5: $fc
	add  b                                           ; $5eb6: $80
	db   $fd                                         ; $5eb7: $fd
	add  b                                           ; $5eb8: $80
	db   $fc                                         ; $5eb9: $fc
	add  b                                           ; $5eba: $80
	db   $fd                                         ; $5ebb: $fd
	add  b                                           ; $5ebc: $80
	nop                                              ; $5ebd: $00
	add  hl, bc                                      ; $5ebe: $09
	rrca                                             ; $5ebf: $0f
	dec  bc                                          ; $5ec0: $0b
	rrca                                             ; $5ec1: $0f
	inc  bc                                          ; $5ec2: $03
	rrca                                             ; $5ec3: $0f
	rlca                                             ; $5ec4: $07
	rrca                                             ; $5ec5: $0f
	dec  bc                                          ; $5ec6: $0b
	rrca                                             ; $5ec7: $0f
	dec  bc                                          ; $5ec8: $0b
	add  e                                           ; $5ec9: $83
	rrca                                             ; $5eca: $0f
	inc  b                                           ; $5ecb: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ecc: $cf
	add  sp, $68                                     ; $5ecd: $e8 $68
	ldh  [hScriptOpcodeParams], a                                    ; $5ecf: $e0 $a0
	add  c                                           ; $5ed1: $81
	ldh  [rSC], a                                    ; $5ed2: $e0 $02
	and  b                                           ; $5ed4: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $5ed5: $e0 $a0
	add  e                                           ; $5ed7: $83
	ldh  [rTIMA], a                                  ; $5ed8: $e0 $05
	and  b                                           ; $5eda: $a0
	rlca                                             ; $5edb: $07
	ld   b, $07                                      ; $5edc: $06 $07
	ld   b, $07                                      ; $5ede: $06 $07
	add  c                                           ; $5ee0: $81
	inc  bc                                          ; $5ee1: $03
	nop                                              ; $5ee2: $00
	dec  bc                                          ; $5ee3: $0b
	add  b                                           ; $5ee4: $80
	add  hl, bc                                      ; $5ee5: $09
	add  b                                           ; $5ee6: $80
	dec  c                                           ; $5ee7: $0d
	add  b                                           ; $5ee8: $80
	inc  c                                           ; $5ee9: $0c
	nop                                              ; $5eea: $00
	ld   c, a                                        ; $5eeb: $4f
	adc  [hl]                                        ; $5eec: $8e
	nop                                              ; $5eed: $00
	adc  e                                           ; $5eee: $8b
	rst  $38                                         ; $5eef: $ff
	ld   [bc], a                                     ; $5ef0: $02
	db   $ed                                         ; $5ef1: $ed
	rst  $38                                         ; $5ef2: $ff
	db   $ed                                         ; $5ef3: $ed
	add  l                                           ; $5ef4: $85
	rst  $38                                         ; $5ef5: $ff
	ld   a, [bc]                                     ; $5ef6: $0a
	ei                                               ; $5ef7: $fb
	rst  $38                                         ; $5ef8: $ff
	db   $db                                         ; $5ef9: $db
	rst  $38                                         ; $5efa: $ff
	ld   e, e                                        ; $5efb: $5b
	rst  $38                                         ; $5efc: $ff
	ld   l, e                                        ; $5efd: $6b
	rst  $38                                         ; $5efe: $ff
	sub  b                                           ; $5eff: $90
	ret  nz                                          ; $5f00: $c0

Jump_077_5f01:
	cp   a                                           ; $5f01: $bf
	adc  c                                           ; $5f02: $89
	rst  $38                                         ; $5f03: $ff
	ld   [bc], a                                     ; $5f04: $02
	cp   a                                           ; $5f05: $bf
	rst  $38                                         ; $5f06: $ff
	cp   a                                           ; $5f07: $bf
	adc  d                                           ; $5f08: $8a
	rst  $38                                         ; $5f09: $ff
	add  b                                           ; $5f0a: $80
	ldh  a, [$80]                                    ; $5f0b: $f0 $80
	add  b                                           ; $5f0d: $80
	add  [hl]                                        ; $5f0e: $86
	rst  $38                                         ; $5f0f: $ff
	add  b                                           ; $5f10: $80
	ldh  a, [$81]                                    ; $5f11: $f0 $81
	nop                                              ; $5f13: $00
	ld   [bc], a                                     ; $5f14: $02
	ld   bc, $0100                                   ; $5f15: $01 $00 $01
	add  d                                           ; $5f18: $82
	rst  $38                                         ; $5f19: $ff
	add  b                                           ; $5f1a: $80
	ld   hl, sp-$7d                                  ; $5f1b: $f8 $83
	nop                                              ; $5f1d: $00
	inc  bc                                          ; $5f1e: $03
	rrca                                             ; $5f1f: $0f
	nop                                              ; $5f20: $00
	ldh  a, [rP1]                                    ; $5f21: $f0 $00
	add  c                                           ; $5f23: $81
	rst  $38                                         ; $5f24: $ff
	add  b                                           ; $5f25: $80
	ldh  a, [$81]                                    ; $5f26: $f0 $81
	nop                                              ; $5f28: $00
	inc  b                                           ; $5f29: $04
	ld   bc, $7e00                                   ; $5f2a: $01 $00 $7e
	nop                                              ; $5f2d: $00
	add  b                                           ; $5f2e: $80
	add  c                                           ; $5f2f: $81
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	rst  $38                                         ; $5f32: $ff
	add  b                                           ; $5f33: $80
	ldh  a, [$81]                                    ; $5f34: $f0 $81
	nop                                              ; $5f36: $00
	ld   [bc], a                                     ; $5f37: $02
	ld   bc, $fe00                                   ; $5f38: $01 $00 $fe
	add  l                                           ; $5f3b: $85
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	rst  $38                                         ; $5f3e: $ff
	add  e                                           ; $5f3f: $83
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	ld   sp, hl                                      ; $5f42: $f9
	add  c                                           ; $5f43: $81
	nop                                              ; $5f44: $00
	ld   b, $0a                                      ; $5f45: $06 $0a
	nop                                              ; $5f47: $00
	ld   [bc], a                                     ; $5f48: $02
	nop                                              ; $5f49: $00
	ld   [bc], a                                     ; $5f4a: $02
	nop                                              ; $5f4b: $00
	di                                               ; $5f4c: $f3
	add  c                                           ; $5f4d: $81
	nop                                              ; $5f4e: $00
	ld   [bc], a                                     ; $5f4f: $02
	rla                                              ; $5f50: $17
	nop                                              ; $5f51: $00
	ldh  [$81], a                                    ; $5f52: $e0 $81
	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	db   $10                                         ; $5f56: $10
	add  c                                           ; $5f57: $81
	nop                                              ; $5f58: $00
	ld   [bc], a                                     ; $5f59: $02
	ld   [$ef00], sp                                 ; $5f5a: $08 $00 $ef
	add  c                                           ; $5f5d: $81
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	ccf                                              ; $5f60: $3f
	add  e                                           ; $5f61: $83
	nop                                              ; $5f62: $00
	ld   b, $60                                      ; $5f63: $06 $60
	nop                                              ; $5f65: $00
	ld   h, b                                        ; $5f66: $60
	nop                                              ; $5f67: $00
	ld   h, b                                        ; $5f68: $60
	nop                                              ; $5f69: $00
	ld   e, a                                        ; $5f6a: $5f
	add  c                                           ; $5f6b: $81
	nop                                              ; $5f6c: $00
	inc  c                                           ; $5f6d: $0c
	db   $fd                                         ; $5f6e: $fd
	nop                                              ; $5f6f: $00
	rlca                                             ; $5f70: $07
	nop                                              ; $5f71: $00
	rlca                                             ; $5f72: $07
	nop                                              ; $5f73: $00
	ld   b, $00                                      ; $5f74: $06 $00
	ld   [bc], a                                     ; $5f76: $02
	nop                                              ; $5f77: $00
	add  d                                           ; $5f78: $82
	nop                                              ; $5f79: $00
	ld   a, e                                        ; $5f7a: $7b
	adc  [hl]                                        ; $5f7b: $8e
	rrca                                             ; $5f7c: $0f
	add  b                                           ; $5f7d: $80
	ldh  [$84], a                                    ; $5f7e: $e0 $84
	ret  nz                                          ; $5f80: $c0

	add  b                                           ; $5f81: $80
	ldh  a, [rTMA]                                   ; $5f82: $f0 $06
	adc  a                                           ; $5f84: $8f
	rst  $28                                         ; $5f85: $ef
	add  c                                           ; $5f86: $81
	sbc  [hl]                                        ; $5f87: $9e
	add  b                                           ; $5f88: $80
	ld   a, [hl]                                     ; $5f89: $7e
	ld   c, $82                                      ; $5f8a: $0e $82
	rrca                                             ; $5f8c: $0f
	ld   bc, $0777                                   ; $5f8d: $01 $77 $07
	add  d                                           ; $5f90: $82
	inc  bc                                          ; $5f91: $03
	add  b                                           ; $5f92: $80
	rst  $38                                         ; $5f93: $ff
	inc  bc                                          ; $5f94: $03
	db   $fc                                         ; $5f95: $fc
	rst  $38                                         ; $5f96: $ff
	db   $fc                                         ; $5f97: $fc
	rst  $38                                         ; $5f98: $ff
	add  d                                           ; $5f99: $82
	ld   a, a                                        ; $5f9a: $7f
	nop                                              ; $5f9b: $00
	db   $fd                                         ; $5f9c: $fd
	add  c                                           ; $5f9d: $81
	rst  $38                                         ; $5f9e: $ff
	nop                                              ; $5f9f: $00
	ld   sp, hl                                      ; $5fa0: $f9
	add  c                                           ; $5fa1: $81
	rst  $38                                         ; $5fa2: $ff
	ld   c, $b3                                      ; $5fa3: $0e $b3
	rst  $38                                         ; $5fa5: $ff
	di                                               ; $5fa6: $f3
	rst  $38                                         ; $5fa7: $ff
	dec  sp                                          ; $5fa8: $3b
	rst  $38                                         ; $5fa9: $ff
	ld   l, [hl]                                     ; $5faa: $6e
	rst  $38                                         ; $5fab: $ff
	call nz, $f7ff                                   ; $5fac: $c4 $ff $f7
	rst  $38                                         ; $5faf: $ff
	sbc  c                                           ; $5fb0: $99
	rst  $38                                         ; $5fb1: $ff
	ei                                               ; $5fb2: $fb
	add  b                                           ; $5fb3: $80
	ld   hl, sp+$0d                                  ; $5fb4: $f8 $0d
	ldh  [$e1], a                                    ; $5fb6: $e0 $e1
	rst  $38                                         ; $5fb8: $ff
	ld   h, $ff                                      ; $5fb9: $26 $ff
	ld   l, a                                        ; $5fbb: $6f
	rst  $38                                         ; $5fbc: $ff
	rst  $20                                         ; $5fbd: $e7
	cp   $fd                                         ; $5fbe: $fe $fd
	db   $fc                                         ; $5fc0: $fc
	rst  $20                                         ; $5fc1: $e7
	nop                                              ; $5fc2: $00
	ld   [$1080], sp                                 ; $5fc3: $08 $80 $10
	add  b                                           ; $5fc6: $80
	nop                                              ; $5fc7: $00
	add  b                                           ; $5fc8: $80
	db   $fc                                         ; $5fc9: $fc
	add  b                                           ; $5fca: $80

jr_077_5fcb:
	ldh  [$80], a                                    ; $5fcb: $e0 $80
	add  b                                           ; $5fcd: $80
	dec  b                                           ; $5fce: $05
	nop                                              ; $5fcf: $00
	add  c                                           ; $5fd0: $81
	nop                                              ; $5fd1: $00
	and  [hl]                                        ; $5fd2: $a6
	ld   b, b                                        ; $5fd3: $40
	ld   e, b                                        ; $5fd4: $58
	add  c                                           ; $5fd5: $81
	nop                                              ; $5fd6: $00
	ld   [$003f], sp                                 ; $5fd7: $08 $3f $00
	ld   bc, $0e00                                   ; $5fda: $01 $00 $0e
	nop                                              ; $5fdd: $00
	ld   [hl], b                                     ; $5fde: $70
	nop                                              ; $5fdf: $00
	add  b                                           ; $5fe0: $80
	add  l                                           ; $5fe1: $85
	nop                                              ; $5fe2: $00
	ld   [bc], a                                     ; $5fe3: $02
	ldh  [rP1], a                                    ; $5fe4: $e0 $00
	ldh  [$89], a                                    ; $5fe6: $e0 $89
	nop                                              ; $5fe8: $00
	add  b                                           ; $5fe9: $80
	ld   [bc], a                                     ; $5fea: $02
	add  [hl]                                        ; $5feb: $86
	nop                                              ; $5fec: $00
	add  b                                           ; $5fed: $80
	ld   bc, $2a80                                   ; $5fee: $01 $80 $2a
	add  b                                           ; $5ff1: $80
	ld   [hl], a                                     ; $5ff2: $77
	add  b                                           ; $5ff3: $80
	and  d                                           ; $5ff4: $a2
	add  [hl]                                        ; $5ff5: $86
	nop                                              ; $5ff6: $00
	add  b                                           ; $5ff7: $80
	ld   d, l                                        ; $5ff8: $55
	add  b                                           ; $5ff9: $80
	xor  d                                           ; $5ffa: $aa
	add  b                                           ; $5ffb: $80
	ld   e, a                                        ; $5ffc: $5f
	add  b                                           ; $5ffd: $80
	rst  $38                                         ; $5ffe: $ff
	add  d                                           ; $5fff: $82
	nop                                              ; $6000: $00
	add  b                                           ; $6001: $80
	ld   d, h                                        ; $6002: $54
	add  b                                           ; $6003: $80
	ld   a, [hl+]                                    ; $6004: $2a
	add  b                                           ; $6005: $80
	ld   e, l                                        ; $6006: $5d
	add  d                                           ; $6007: $82
	rst  $38                                         ; $6008: $ff
	inc  l                                           ; $6009: $2c
	ld   d, a                                        ; $600a: $57
	rst  $38                                         ; $600b: $ff
	and  h                                           ; $600c: $a4
	nop                                              ; $600d: $00
	ld   de, $4300                                   ; $600e: $11 $00 $43
	ld   b, b                                        ; $6011: $40
	and  e                                           ; $6012: $a3
	and  b                                           ; $6013: $a0
	ldh  [c], a                                      ; $6014: $e2
	ldh  [$e2], a                                    ; $6015: $e0 $e2
	ldh  [$e6], a                                    ; $6017: $e0 $e6
	ret  nz                                          ; $6019: $c0

	ld   b, h                                        ; $601a: $44
	ret  nz                                          ; $601b: $c0

	ld   l, $00                                      ; $601c: $2e $00
	add  b                                           ; $601e: $80
	nop                                              ; $601f: $00
	jr   nz, jr_077_6022                             ; $6020: $20 $00

jr_077_6022:
	ld   [bc], a                                     ; $6022: $02
	nop                                              ; $6023: $00
	ld   [bc], a                                     ; $6024: $02
	nop                                              ; $6025: $00
	ld   h, d                                        ; $6026: $62
	nop                                              ; $6027: $00
	ld   h, h                                        ; $6028: $64
	nop                                              ; $6029: $00
	ld   c, h                                        ; $602a: $4c
	nop                                              ; $602b: $00
	ei                                               ; $602c: $fb
	nop                                              ; $602d: $00
	ld   [bc], a                                     ; $602e: $02
	nop                                              ; $602f: $00
	inc  bc                                          ; $6030: $03
	nop                                              ; $6031: $00
	inc  bc                                          ; $6032: $03
	nop                                              ; $6033: $00
	ld   [bc], a                                     ; $6034: $02
	nop                                              ; $6035: $00
	ld   [de], a                                     ; $6036: $12
	add  c                                           ; $6037: $81
	nop                                              ; $6038: $00
	ld   c, $05                                      ; $6039: $0e $05
	nop                                              ; $603b: $00
	sub  c                                           ; $603c: $91
	nop                                              ; $603d: $00
	add  b                                           ; $603e: $80
	nop                                              ; $603f: $00
	add  b                                           ; $6040: $80
	nop                                              ; $6041: $00
	add  b                                           ; $6042: $80
	nop                                              ; $6043: $00
	jr   z, jr_077_6046                              ; $6044: $28 $00

jr_077_6046:
	ld   a, c                                        ; $6046: $79
	nop                                              ; $6047: $00
	jr   c, jr_077_5fcb                              ; $6048: $38 $81

	nop                                              ; $604a: $00
	jr   z, jr_077_604f                              ; $604b: $28 $02

	sub  [hl]                                        ; $604d: $96
	nop                                              ; $604e: $00

jr_077_604f:
	inc  bc                                          ; $604f: $03
	inc  c                                           ; $6050: $0c
	rrca                                             ; $6051: $0f
	nop                                              ; $6052: $00
	inc  bc                                          ; $6053: $03
	adc  d                                           ; $6054: $8a
	nop                                              ; $6055: $00
	ld   bc, $7f80                                   ; $6056: $01 $80 $7f
	add  b                                           ; $6059: $80
	rst  $38                                         ; $605a: $ff
	inc  b                                           ; $605b: $04
	ld   a, $fe                                      ; $605c: $3e $fe
	ld   c, $3e                                      ; $605e: $0e $3e
	rrca                                             ; $6060: $0f
	add  l                                           ; $6061: $85
	nop                                              ; $6062: $00
	ld   bc, $6a95                                   ; $6063: $01 $95 $6a
	add  b                                           ; $6066: $80
	ld   e, h                                        ; $6067: $5c
	add  b                                           ; $6068: $80
	rst  JumpTable                                         ; $6069: $df
	add  b                                           ; $606a: $80
	cp   a                                           ; $606b: $bf
	nop                                              ; $606c: $00
	rst  $38                                         ; $606d: $ff
	add  l                                           ; $606e: $85
	nop                                              ; $606f: $00
	ld   bc, $aa55                                   ; $6070: $01 $55 $aa
	add  b                                           ; $6073: $80
	ld   d, l                                        ; $6074: $55
	add  b                                           ; $6075: $80
	ld   a, [hl+]                                    ; $6076: $2a
	add  b                                           ; $6077: $80
	sub  a                                           ; $6078: $97
	nop                                              ; $6079: $00
	rst  $38                                         ; $607a: $ff
	add  l                                           ; $607b: $85
	nop                                              ; $607c: $00
	ld   bc, $aa55                                   ; $607d: $01 $55 $aa
	add  b                                           ; $6080: $80
	ld   d, l                                        ; $6081: $55
	add  b                                           ; $6082: $80
	cp   [hl]                                        ; $6083: $be
	add  c                                           ; $6084: $81
	rst  $38                                         ; $6085: $ff
	add  l                                           ; $6086: $85
	nop                                              ; $6087: $00
	ld   bc, $2ad5                                   ; $6088: $01 $d5 $2a
	add  b                                           ; $608b: $80
	sbc  a                                           ; $608c: $9f
	add  b                                           ; $608d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $608e: $cf
	add  b                                           ; $608f: $80
	ld   [hl], a                                     ; $6090: $77
	nop                                              ; $6091: $00
	rst  $38                                         ; $6092: $ff
	add  l                                           ; $6093: $85
	nop                                              ; $6094: $00
	ld   bc, $bd42                                   ; $6095: $01 $42 $bd
	add  d                                           ; $6098: $82
	rst  $38                                         ; $6099: $ff
	add  b                                           ; $609a: $80
	cp   $00                                         ; $609b: $fe $00
	rst  $38                                         ; $609d: $ff
	add  l                                           ; $609e: $85
	nop                                              ; $609f: $00
	ld   [$9fa0], sp                                 ; $60a0: $08 $a0 $9f
	ld   e, a                                        ; $60a3: $5f
	sbc  a                                           ; $60a4: $9f
	ld   e, [hl]                                     ; $60a5: $5e
	cp   a                                           ; $60a6: $bf
	ld   a, $3f                                      ; $60a7: $3e $3f
	rra                                              ; $60a9: $1f
	add  l                                           ; $60aa: $85
	nop                                              ; $60ab: $00
	ld   [$b6d6], sp                                 ; $60ac: $08 $d6 $b6
	ld   [hl], b                                     ; $60af: $70
	sbc  [hl]                                        ; $60b0: $9e
	ret  c                                           ; $60b1: $d8

	halt                                             ; $60b2: $76
	inc  c                                           ; $60b3: $0c
	ld   l, a                                        ; $60b4: $6f
	ld   b, e                                        ; $60b5: $43
	add  l                                           ; $60b6: $85
	nop                                              ; $60b7: $00
	ld   [$6d6b], sp                                 ; $60b8: $08 $6b $6d
	dec  hl                                          ; $60bb: $2b
	ld   a, h                                        ; $60bc: $7c
	ld   [hl-], a                                    ; $60bd: $32
	ld   l, a                                        ; $60be: $6f
	sbc  h                                           ; $60bf: $9c
	or   $66                                         ; $60c0: $f6 $66
	add  l                                           ; $60c2: $85
	nop                                              ; $60c3: $00
	ld   [$f20b], sp                                 ; $60c4: $08 $0b $f2
	db   $f4                                         ; $60c7: $f4
	ldh  a, [c]                                      ; $60c8: $f2
	ld   [hl], l                                     ; $60c9: $75
	ei                                               ; $60ca: $fb
	ld   [hl], e                                     ; $60cb: $73
	di                                               ; $60cc: $f3
	pop  af                                          ; $60cd: $f1
	add  l                                           ; $60ce: $85
	nop                                              ; $60cf: $00
	ld   bc, $7d82                                   ; $60d0: $01 $82 $7d
	add  l                                           ; $60d3: $85
	rst  $38                                         ; $60d4: $ff
	add  l                                           ; $60d5: $85
	nop                                              ; $60d6: $00
	ld   bc, $55aa                                   ; $60d7: $01 $aa $55
	add  b                                           ; $60da: $80
	xor  e                                           ; $60db: $ab
	add  b                                           ; $60dc: $80
	or   $81                                         ; $60dd: $f6 $81
	rst  $38                                         ; $60df: $ff
	add  l                                           ; $60e0: $85
	nop                                              ; $60e1: $00
	ld   bc, $aa55                                   ; $60e2: $01 $55 $aa
	add  b                                           ; $60e5: $80
	ld   d, l                                        ; $60e6: $55
	add  b                                           ; $60e7: $80
	ld   a, [$ff81]                                  ; $60e8: $fa $81 $ff
	add  l                                           ; $60eb: $85
	nop                                              ; $60ec: $00
	ld   bc, $aa55                                   ; $60ed: $01 $55 $aa
	add  b                                           ; $60f0: $80
	ld   d, h                                        ; $60f1: $54
	add  b                                           ; $60f2: $80
	xor  c                                           ; $60f3: $a9
	add  b                                           ; $60f4: $80
	di                                               ; $60f5: $f3
	nop                                              ; $60f6: $00
	rst  $38                                         ; $60f7: $ff
	add  c                                           ; $60f8: $81
	nop                                              ; $60f9: $00
	ld   [bc], a                                     ; $60fa: $02
	inc  c                                           ; $60fb: $0c
	nop                                              ; $60fc: $00
	inc  bc                                          ; $60fd: $03
	add  a                                           ; $60fe: $87
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	rrca                                             ; $6101: $0f
	add  l                                           ; $6102: $85
	nop                                              ; $6103: $00
	dec  bc                                          ; $6104: $0b
	ldh  [rP1], a                                    ; $6105: $e0 $00
	jr   jr_077_6109                                 ; $6107: $18 $00

jr_077_6109:
	ld   b, $00                                      ; $6109: $06 $00
	ld   bc, $f600                                   ; $610b: $01 $00 $f6
	ld   c, $01                                      ; $610e: $0e $01
	rlca                                             ; $6110: $07
	adc  b                                           ; $6111: $88
	nop                                              ; $6112: $00
	ld   [bc], a                                     ; $6113: $02
	add  b                                           ; $6114: $80
	nop                                              ; $6115: $00
	pop  bc                                          ; $6116: $c1
	add  c                                           ; $6117: $81
	cp   a                                           ; $6118: $bf
	add  b                                           ; $6119: $80
	cp   $07                                         ; $611a: $fe $07
	sbc  $fe                                         ; $611c: $de $fe
	add  $de                                         ; $611e: $c6 $de
	ret                                              ; $6120: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6121: $cf
	call nz, $80c5                                   ; $6122: $c4 $c5 $80
	jp   nz, Jump_077_5f01                           ; $6125: $c2 $01 $5f

	ld   h, b                                        ; $6128: $60
	add  b                                           ; $6129: $80
	ld   e, a                                        ; $612a: $5f
	add  b                                           ; $612b: $80
	rst  JumpTable                                         ; $612c: $df
	add  h                                           ; $612d: $84
	cp   a                                           ; $612e: $bf
	add  b                                           ; $612f: $80
	rst  $38                                         ; $6130: $ff
	inc  bc                                          ; $6131: $03
	add  b                                           ; $6132: $80
	rst  $38                                         ; $6133: $ff
	ld   a, a                                        ; $6134: $7f
	nop                                              ; $6135: $00
	adc  d                                           ; $6136: $8a
	rst  $38                                         ; $6137: $ff
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	add  b                                           ; $613a: $80
	rst  $38                                         ; $613b: $ff
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	adc  b                                           ; $613e: $88
	ld   e, a                                        ; $613f: $5f
	add  b                                           ; $6140: $80
	rst  $38                                         ; $6141: $ff
	inc  bc                                          ; $6142: $03
	rrca                                             ; $6143: $0f
	rst  $38                                         ; $6144: $ff
	pop  af                                          ; $6145: $f1
	ld   bc, $fd80                                   ; $6146: $01 $80 $fd
	add  d                                           ; $6149: $82
	rst  $38                                         ; $614a: $ff
	add  h                                           ; $614b: $84
	cp   $80                                         ; $614c: $fe $80
	rst  $38                                         ; $614e: $ff
	ld   bc, $20c0                                   ; $614f: $01 $c0 $20
	add  d                                           ; $6152: $82
	ccf                                              ; $6153: $3f
	nop                                              ; $6154: $00
	ld   e, a                                        ; $6155: $5f
	add  e                                           ; $6156: $83
	cp   a                                           ; $6157: $bf
	add  b                                           ; $6158: $80
	nop                                              ; $6159: $00
	add  b                                           ; $615a: $80
	rst  $38                                         ; $615b: $ff
	ld   b, $90                                      ; $615c: $06 $90
	rst  $38                                         ; $615e: $ff
	add  d                                           ; $615f: $82
	sub  d                                           ; $6160: $92
	sub  h                                           ; $6161: $94
	cp   $ea                                         ; $6162: $fe $ea
	add  b                                           ; $6164: $80
	db   $e4                                         ; $6165: $e4
	add  b                                           ; $6166: $80
	cp   $00                                         ; $6167: $fe $00
	rst  $38                                         ; $6169: $ff
	add  b                                           ; $616a: $80
	nop                                              ; $616b: $00
	add  b                                           ; $616c: $80
	rst  $38                                         ; $616d: $ff
	ld   b, $0d                                      ; $616e: $06 $0d
	rst  $38                                         ; $6170: $ff
	adc  c                                           ; $6171: $89
	call $fff1                                       ; $6172: $cd $f1 $ff
	ld   b, a                                        ; $6175: $47
	add  b                                           ; $6176: $80
	daa                                              ; $6177: $27
	add  b                                           ; $6178: $80
	ld   a, a                                        ; $6179: $7f
	nop                                              ; $617a: $00
	rst  $38                                         ; $617b: $ff
	add  b                                           ; $617c: $80
	nop                                              ; $617d: $00
	add  b                                           ; $617e: $80
	rst  $38                                         ; $617f: $ff
	ld   bc, $030d                                   ; $6180: $01 $0d $03
	add  d                                           ; $6183: $82
	di                                               ; $6184: $f3
	nop                                              ; $6185: $00
	db   $f4                                         ; $6186: $f4
	add  e                                           ; $6187: $83
	ld   a, [$0080]                                  ; $6188: $fa $80 $00
	add  b                                           ; $618b: $80
	rst  $38                                         ; $618c: $ff
	add  b                                           ; $618d: $80
	nop                                              ; $618e: $00
	adc  h                                           ; $618f: $8c
	rst  $38                                         ; $6190: $ff
	add  b                                           ; $6191: $80
	nop                                              ; $6192: $00
	adc  b                                           ; $6193: $88
	push af                                          ; $6194: $f5
	add  b                                           ; $6195: $80
	rst  $38                                         ; $6196: $ff
	inc  bc                                          ; $6197: $03
	ldh  [rIE], a                                    ; $6198: $e0 $ff
	or   l                                           ; $619a: $b5
	xor  d                                           ; $619b: $aa
	add  b                                           ; $619c: $80
	ld   b, a                                        ; $619d: $47
	add  b                                           ; $619e: $80
	ld   a, [hl+]                                    ; $619f: $2a
	add  hl, bc                                      ; $61a0: $09
	ld   [bc], a                                     ; $61a1: $02
	ld   a, [hl+]                                    ; $61a2: $2a
	db   $10                                         ; $61a3: $10
	ld   a, a                                        ; $61a4: $7f
	ld   b, a                                        ; $61a5: $47
	rst  ToBoot                                         ; $61a6: $c7
	db   $db                                         ; $61a7: $db
	rst  $38                                         ; $61a8: $ff
	db   $e3                                         ; $61a9: $e3
	nop                                              ; $61aa: $00
	add  b                                           ; $61ab: $80
	dec  c                                           ; $61ac: $0d
	add  b                                           ; $61ad: $80
	push af                                          ; $61ae: $f5
	add  b                                           ; $61af: $80
	or   $80                                         ; $61b0: $f6 $80
	ld   a, [$fb80]                                  ; $61b2: $fa $80 $fb
	ld   b, $fa                                      ; $61b5: $06 $fa
	ei                                               ; $61b7: $fb
	db   $fc                                         ; $61b8: $fc
	cp   $05                                         ; $61b9: $fe $05
	db   $fd                                         ; $61bb: $fd
	dec  bc                                          ; $61bc: $0b
	add  b                                           ; $61bd: $80
	nop                                              ; $61be: $00
	add  b                                           ; $61bf: $80
	ld   b, $82                                      ; $61c0: $06 $82
	dec  bc                                          ; $61c2: $0b
	add  d                                           ; $61c3: $82
	dec  c                                           ; $61c4: $0d
	add  b                                           ; $61c5: $80
	ld   c, $01                                      ; $61c6: $0e $01
	ld   [bc], a                                     ; $61c8: $02
	ldh  a, [c]                                      ; $61c9: $f2
	add  d                                           ; $61ca: $82
	nop                                              ; $61cb: $00
	add  b                                           ; $61cc: $80
	ret  nz                                          ; $61cd: $c0

	ld   bc, $f8f0                                   ; $61ce: $01 $f0 $f8
	add  l                                           ; $61d1: $85
	rst  $38                                         ; $61d2: $ff
	inc  b                                           ; $61d3: $04
	ld   sp, hl                                      ; $61d4: $f9
	nop                                              ; $61d5: $00
	inc  c                                           ; $61d6: $0c
	nop                                              ; $61d7: $00
	ld   [bc], a                                     ; $61d8: $02
	add  h                                           ; $61d9: $84
	nop                                              ; $61da: $00
	add  b                                           ; $61db: $80
	ldh  [$81], a                                    ; $61dc: $e0 $81
	ld   hl, sp+$01                                  ; $61de: $f8 $01
	ld   b, $c1                                      ; $61e0: $06 $c1
	add  d                                           ; $61e2: $82
	ret  nz                                          ; $61e3: $c0

	rlca                                             ; $61e4: $07
	ld   b, b                                        ; $61e5: $40
	ld   h, b                                        ; $61e6: $60
	and  b                                           ; $61e7: $a0
	cp   b                                           ; $61e8: $b8
	ld   d, b                                        ; $61e9: $50
	ld   d, [hl]                                     ; $61ea: $56
	xor  d                                           ; $61eb: $aa
	xor  e                                           ; $61ec: $ab
	add  b                                           ; $61ed: $80
	rst  ToBoot                                         ; $61ee: $c7
	ld   bc, $ea15                                   ; $61ef: $01 $15 $ea
	add  b                                           ; $61f2: $80
	call nc, sGlobalFlags1                                   ; $61f3: $d4 $80 $a0
	add  b                                           ; $61f6: $80
	ret  nz                                          ; $61f7: $c0

	add  b                                           ; $61f8: $80
	add  b                                           ; $61f9: $80
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	add  b                                           ; $61fc: $80
	add  b                                           ; $61fd: $80
	add  c                                           ; $61fe: $81
	rst  $38                                         ; $61ff: $ff
	ld   bc, $807f                                   ; $6200: $01 $7f $80
	adc  c                                           ; $6203: $89
	nop                                              ; $6204: $00
	add  c                                           ; $6205: $81
	rst  $38                                         ; $6206: $ff
	ld   bc, $1fef                                   ; $6207: $01 $ef $1f
	adc  b                                           ; $620a: $88
	ld   e, $01                                      ; $620b: $1e $01
	ld   c, $fe                                      ; $620d: $0e $fe
	add  c                                           ; $620f: $81
	rst  $38                                         ; $6210: $ff
	dec  b                                           ; $6211: $05
	add  b                                           ; $6212: $80
	adc  a                                           ; $6213: $8f
	add  b                                           ; $6214: $80
	adc  e                                           ; $6215: $8b
	jp   $8047                                       ; $6216: $c3 $47 $80


	ld   b, b                                        ; $6219: $40
	nop                                              ; $621a: $00
	ld   a, a                                        ; $621b: $7f
	add  d                                           ; $621c: $82
	nop                                              ; $621d: $00
	add  c                                           ; $621e: $81
	rst  $38                                         ; $621f: $ff
	add  hl, bc                                      ; $6220: $09
	nop                                              ; $6221: $00
	rst  ToBoot                                         ; $6222: $c7
	nop                                              ; $6223: $00
	ld   h, $00                                      ; $6224: $26 $00
	pop  hl                                          ; $6226: $e1
	nop                                              ; $6227: $00
	ld   h, b                                        ; $6228: $60
	rst  $38                                         ; $6229: $ff
	ld   h, b                                        ; $622a: $60
	add  b                                           ; $622b: $80
	ret  c                                           ; $622c: $d8

	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	add  c                                           ; $622f: $81
	rst  $38                                         ; $6230: $ff
	dec  b                                           ; $6231: $05
	nop                                              ; $6232: $00
	ld   h, [hl]                                     ; $6233: $66
	add  c                                           ; $6234: $81
	ld   h, h                                        ; $6235: $64
	ld   b, b                                        ; $6236: $40
	jp   $0080                                       ; $6237: $c3 $80 $00


	nop                                              ; $623a: $00
	rst  $38                                         ; $623b: $ff
	add  d                                           ; $623c: $82
	nop                                              ; $623d: $00
	add  c                                           ; $623e: $81
	rst  $38                                         ; $623f: $ff
	dec  b                                           ; $6240: $05
	nop                                              ; $6241: $00
	jp   Boot                                        ; $6242: $c3 $00 $01


	ld   hl, $80e3                                   ; $6245: $21 $e3 $80
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	rst  $38                                         ; $624a: $ff
	add  d                                           ; $624b: $82
	nop                                              ; $624c: $00
	add  c                                           ; $624d: $81
	rst  $38                                         ; $624e: $ff
	add  hl, bc                                      ; $624f: $09
	nop                                              ; $6250: $00
	and  a                                           ; $6251: $a7
	ld   b, b                                        ; $6252: $40
	add  a                                           ; $6253: $87
	add  d                                           ; $6254: $82
	ldh  [c], a                                      ; $6255: $e2
	nop                                              ; $6256: $00
	ld   b, $ff                                      ; $6257: $06 $ff
	ld   b, $80                                      ; $6259: $06 $80
	dec  de                                          ; $625b: $1b
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	add  c                                           ; $625e: $81
	rst  $38                                         ; $625f: $ff
	ld   bc, wLCDC                                   ; $6260: $01 $03 $c2
	add  b                                           ; $6263: $80
	ld   [hl+], a                                    ; $6264: $22
	ld   bc, $c406                                   ; $6265: $01 $06 $c4
	add  b                                           ; $6268: $80
	inc  b                                           ; $6269: $04
	nop                                              ; $626a: $00
	db   $fc                                         ; $626b: $fc
	add  d                                           ; $626c: $82
	nop                                              ; $626d: $00
	add  b                                           ; $626e: $80
	rst  $38                                         ; $626f: $ff
	nop                                              ; $6270: $00
	rst  $28                                         ; $6271: $ef
	adc  c                                           ; $6272: $89
	ldh  a, [rP1]                                    ; $6273: $f0 $00
	ldh  [$81], a                                    ; $6275: $e0 $81
	rst  $38                                         ; $6277: $ff
	ld   bc, $05fa                                   ; $6278: $01 $fa $05
	adc  c                                           ; $627b: $89
	nop                                              ; $627c: $00
	add  c                                           ; $627d: $81
	rst  $38                                         ; $627e: $ff
	ld   bc, $5ea1                                   ; $627f: $01 $a1 $5e
	add  b                                           ; $6282: $80
	xor  h                                           ; $6283: $ac
	add  b                                           ; $6284: $80
	inc  d                                           ; $6285: $14
	add  b                                           ; $6286: $80
	inc  c                                           ; $6287: $0c
	add  d                                           ; $6288: $82
	inc  b                                           ; $6289: $04
	ld   bc, $fc03                                   ; $628a: $01 $03 $fc
	add  b                                           ; $628d: $80
	db   $e3                                         ; $628e: $e3
	nop                                              ; $628f: $00
	ldh  a, [$80]                                    ; $6290: $f0 $80
	nop                                              ; $6292: $00
	ld   [bc], a                                     ; $6293: $02
	ld   [$0502], sp                                 ; $6294: $08 $02 $05
	add  b                                           ; $6297: $80
	ld   a, [bc]                                     ; $6298: $0a
	add  b                                           ; $6299: $80
	dec  b                                           ; $629a: $05
	add  b                                           ; $629b: $80

jr_077_629c:
	ld   a, [bc]                                     ; $629c: $0a
	add  b                                           ; $629d: $80
	dec  b                                           ; $629e: $05
	add  b                                           ; $629f: $80
	ld   [bc], a                                     ; $62a0: $02
	nop                                              ; $62a1: $00
	rst  $30                                         ; $62a2: $f7
	adc  l                                           ; $62a3: $8d
	ccf                                              ; $62a4: $3f
	nop                                              ; $62a5: $00
	scf                                              ; $62a6: $37
	adc  l                                           ; $62a7: $8d
	ld   hl, sp+$05                                  ; $62a8: $f8 $05
	jr   c, jr_077_629c                              ; $62aa: $38 $f0

	ret  nz                                          ; $62ac: $c0

	adc  $c0                                         ; $62ad: $ce $c0
	pop  bc                                          ; $62af: $c1
	add  l                                           ; $62b0: $85
	ret  nz                                          ; $62b1: $c0

	add  b                                           ; $62b2: $80
	ld   hl, sp-$7f                                  ; $62b3: $f8 $81
	rst  $38                                         ; $62b5: $ff
	add  c                                           ; $62b6: $81
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	rst  $38                                         ; $62b9: $ff
	add  a                                           ; $62ba: $87
	add  b                                           ; $62bb: $80
	nop                                              ; $62bc: $00
	ld   a, a                                        ; $62bd: $7f
	add  b                                           ; $62be: $80
	rst  $38                                         ; $62bf: $ff
	add  c                                           ; $62c0: $81
	nop                                              ; $62c1: $00
	nop                                              ; $62c2: $00
	rst  $38                                         ; $62c3: $ff
	add  a                                           ; $62c4: $87
	nop                                              ; $62c5: $00
	add  c                                           ; $62c6: $81
	rst  $38                                         ; $62c7: $ff
	add  c                                           ; $62c8: $81
	rrca                                             ; $62c9: $0f
	nop                                              ; $62ca: $00
	rst  $38                                         ; $62cb: $ff
	add  a                                           ; $62cc: $87
	rra                                              ; $62cd: $1f
	nop                                              ; $62ce: $00
	rst  $28                                         ; $62cf: $ef
	add  b                                           ; $62d0: $80
	rst  $38                                         ; $62d1: $ff
	add  c                                           ; $62d2: $81
	nop                                              ; $62d3: $00
	add  c                                           ; $62d4: $81
	cp   $03                                         ; $62d5: $fe $03
	nop                                              ; $62d7: $00
	cp   $03                                         ; $62d8: $fe $03
	rst  $38                                         ; $62da: $ff
	add  c                                           ; $62db: $81
	db   $fc                                         ; $62dc: $fc
	ld   [bc], a                                     ; $62dd: $02
	cp   $01                                         ; $62de: $fe $01
	rst  $38                                         ; $62e0: $ff
	add  c                                           ; $62e1: $81
	nop                                              ; $62e2: $00
	add  c                                           ; $62e3: $81
	ld   a, [hl]                                     ; $62e4: $7e
	inc  bc                                          ; $62e5: $03
	nop                                              ; $62e6: $00
	ld   a, [hl]                                     ; $62e7: $7e
	inc  bc                                          ; $62e8: $03
	rst  $38                                         ; $62e9: $ff
	add  c                                           ; $62ea: $81
	db   $fc                                         ; $62eb: $fc
	ld   [bc], a                                     ; $62ec: $02
	ld   a, [hl]                                     ; $62ed: $7e
	add  c                                           ; $62ee: $81
	rst  $38                                         ; $62ef: $ff
	add  c                                           ; $62f0: $81
	nop                                              ; $62f1: $00
	add  c                                           ; $62f2: $81
	ld   a, a                                        ; $62f3: $7f
	inc  bc                                          ; $62f4: $03
	nop                                              ; $62f5: $00
	ld   a, a                                        ; $62f6: $7f
	ld   bc, $81ff                                   ; $62f7: $01 $ff $81
	cp   $02                                         ; $62fa: $fe $02
	ld   a, a                                        ; $62fc: $7f
	add  b                                           ; $62fd: $80
	rst  $38                                         ; $62fe: $ff
	add  c                                           ; $62ff: $81
	nop                                              ; $6300: $00
	add  c                                           ; $6301: $81
	ccf                                              ; $6302: $3f
	inc  bc                                          ; $6303: $03
	nop                                              ; $6304: $00
	ccf                                              ; $6305: $3f
	ldh  [rIE], a                                    ; $6306: $e0 $ff
	add  c                                           ; $6308: $81
	rra                                              ; $6309: $1f
	ld   [bc], a                                     ; $630a: $02
	ccf                                              ; $630b: $3f
	ret  nz                                          ; $630c: $c0

	rst  $38                                         ; $630d: $ff
	add  c                                           ; $630e: $81
	nop                                              ; $630f: $00
	add  c                                           ; $6310: $81
	sbc  a                                           ; $6311: $9f
	inc  bc                                          ; $6312: $03
	nop                                              ; $6313: $00
	sbc  a                                           ; $6314: $9f
	jr   nc, @+$01                                   ; $6315: $30 $ff

	add  c                                           ; $6317: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6318: $cf
	ld   [bc], a                                     ; $6319: $02
	sbc  a                                           ; $631a: $9f
	ld   h, b                                        ; $631b: $60
	rst  $38                                         ; $631c: $ff
	add  c                                           ; $631d: $81
	ld   bc, $9f81                                   ; $631e: $01 $81 $9f
	inc  bc                                          ; $6321: $03
	ld   bc, $319f                                   ; $6322: $01 $9f $31
	rst  $38                                         ; $6325: $ff
	add  c                                           ; $6326: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6327: $cf
	ld   [bc], a                                     ; $6328: $02
	sbc  a                                           ; $6329: $9f
	ld   h, c                                        ; $632a: $61
	rst  $38                                         ; $632b: $ff
	add  c                                           ; $632c: $81
	ldh  [rP1], a                                    ; $632d: $e0 $00
	rst  $38                                         ; $632f: $ff
	add  a                                           ; $6330: $87
	ldh  a, [rP1]                                    ; $6331: $f0 $00
	rst  $28                                         ; $6333: $ef
	add  b                                           ; $6334: $80
	rst  $38                                         ; $6335: $ff
	add  b                                           ; $6336: $80
	nop                                              ; $6337: $00
	ld   bc, $ff03                                   ; $6338: $01 $03 $ff
	add  b                                           ; $633b: $80
	nop                                              ; $633c: $00
	add  b                                           ; $633d: $80
	ld   bc, $0200                                   ; $633e: $01 $00 $02
	add  b                                           ; $6341: $80
	nop                                              ; $6342: $00
	add  b                                           ; $6343: $80
	ld   bc, $ff02                                   ; $6344: $01 $02 $ff
	sbc  l                                           ; $6347: $9d
	sbc  h                                           ; $6348: $9c
	add  b                                           ; $6349: $80
	ld   h, e                                        ; $634a: $63
	add  b                                           ; $634b: $80
	sbc  h                                           ; $634c: $9c
	add  b                                           ; $634d: $80
	ld   h, e                                        ; $634e: $63
	add  hl, bc                                      ; $634f: $09
	sbc  l                                           ; $6350: $9d
	sbc  a                                           ; $6351: $9f
	ld   l, e                                        ; $6352: $6b
	ld   a, e                                        ; $6353: $7b
	ld   e, e                                        ; $6354: $5b
	ld   a, e                                        ; $6355: $7b
	ld   a, c                                        ; $6356: $79
	ld   a, e                                        ; $6357: $7b
	adc  $01                                         ; $6358: $ce $01
	add  b                                           ; $635a: $80
	ld   [bc], a                                     ; $635b: $02
	add  d                                           ; $635c: $82
	ld   b, $00                                      ; $635d: $06 $00
	ld   a, [bc]                                     ; $635f: $0a
	add  l                                           ; $6360: $85
	ld   c, $01                                      ; $6361: $0e $01
	ld   d, e                                        ; $6363: $53
	sbc  a                                           ; $6364: $9f
	add  b                                           ; $6365: $80
	rst  $28                                         ; $6366: $ef
	add  b                                           ; $6367: $80
	rst  JumpTable                                         ; $6368: $df
	adc  b                                           ; $6369: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636a: $cf
	add  b                                           ; $636b: $80
	scf                                              ; $636c: $37
	dec  c                                           ; $636d: $0d
	dec  sp                                          ; $636e: $3b
	xor  a                                           ; $636f: $af
	xor  l                                           ; $6370: $ad
	add  hl, bc                                      ; $6371: $09
	rra                                              ; $6372: $1f
	rst  $20                                         ; $6373: $e7
	cp   $1f                                         ; $6374: $fe $1f
	ld   e, [hl]                                     ; $6376: $5e
	pop  hl                                          ; $6377: $e1
	add  hl, bc                                      ; $6378: $09
	rst  $38                                         ; $6379: $ff
	ld   d, a                                        ; $637a: $57
	nop                                              ; $637b: $00
	add  b                                           ; $637c: $80
	rst  $38                                         ; $637d: $ff
	add  b                                           ; $637e: $80
	rst  ToBoot                                         ; $637f: $c7
	add  b                                           ; $6380: $80
	ret  c                                           ; $6381: $d8

	add  d                                           ; $6382: $82
	db   $dd                                         ; $6383: $dd
	add  b                                           ; $6384: $80
	rst  JumpTable                                         ; $6385: $df
	add  d                                           ; $6386: $82
	db   $dd                                         ; $6387: $dd
	add  d                                           ; $6388: $82
	ld   a, a                                        ; $6389: $7f
	inc  c                                           ; $638a: $0c
	ld   hl, $3300                                   ; $638b: $21 $00 $33
	dec  h                                           ; $638e: $25
	ld   a, [hl-]                                    ; $638f: $3a
	ld   d, a                                        ; $6390: $57
	ld   e, e                                        ; $6391: $5b
	ld   a, [hl]                                     ; $6392: $7e
	ld   e, a                                        ; $6393: $5f
	jr   nz, jr_077_63a6                             ; $6394: $20 $10

	ld   h, c                                        ; $6396: $61
	adc  [hl]                                        ; $6397: $8e
	add  c                                           ; $6398: $81
	rst  $38                                         ; $6399: $ff
	ld   bc, $0080                                   ; $639a: $01 $80 $00
	add  b                                           ; $639d: $80
	rst  $30                                         ; $639e: $f7
	nop                                              ; $639f: $00
	ld   [hl], a                                     ; $63a0: $77
	add  h                                           ; $63a1: $84
	rst  $30                                         ; $63a2: $f7
	ld   bc, $6f77                                   ; $63a3: $01 $77 $6f

jr_077_63a6:
	add  c                                           ; $63a6: $81
	rst  $28                                         ; $63a7: $ef
	add  b                                           ; $63a8: $80
	rrca                                             ; $63a9: $0f
	adc  b                                           ; $63aa: $88
	rst  $28                                         ; $63ab: $ef
	add  d                                           ; $63ac: $82
	push de                                          ; $63ad: $d5
	ld   bc, $b797                                   ; $63ae: $01 $97 $b7
	add  h                                           ; $63b1: $84
	or   l                                           ; $63b2: $b5
	ld   bc, $d5f5                                   ; $63b3: $01 $f5 $d5
	add  b                                           ; $63b6: $80
	rst  $30                                         ; $63b7: $f7
	add  d                                           ; $63b8: $82
	ld   d, l                                        ; $63b9: $55
	add  b                                           ; $63ba: $80
	rst  $38                                         ; $63bb: $ff
	add  [hl]                                        ; $63bc: $86
	ld   d, l                                        ; $63bd: $55
	add  b                                           ; $63be: $80
	rst  $38                                         ; $63bf: $ff
	stop                                             ; $63c0: $10 $00
	db   $ec                                         ; $63c2: $ec
	rra                                              ; $63c3: $1f
	cp   $86                                         ; $63c4: $fe $86
	sbc  a                                           ; $63c6: $9f
	inc  b                                           ; $63c7: $04
	db   $10                                         ; $63c8: $10
	xor  d                                           ; $63c9: $aa
	rst  $38                                         ; $63ca: $ff
	nop                                              ; $63cb: $00
	rst  $38                                         ; $63cc: $ff
	nop                                              ; $63cd: $00
	rst  $38                                         ; $63ce: $ff
	ld   d, l                                        ; $63cf: $55
	nop                                              ; $63d0: $00
	xor  d                                           ; $63d1: $aa
	add  c                                           ; $63d2: $81
	ld   [$7f01], a                                  ; $63d3: $ea $01 $7f
	rst  $38                                         ; $63d6: $ff
	add  l                                           ; $63d7: $85
	ld   [$2a00], a                                  ; $63d8: $ea $00 $2a
	add  b                                           ; $63db: $80
	rst  $38                                         ; $63dc: $ff
	inc  bc                                          ; $63dd: $03
	ld   d, h                                        ; $63de: $54
	ld   d, l                                        ; $63df: $55
	ld   h, l                                        ; $63e0: $65
	ld   h, a                                        ; $63e1: $67
	add  b                                           ; $63e2: $80
	ld   c, a                                        ; $63e3: $4f
	add  hl, bc                                      ; $63e4: $09
	call z, $cecf                                    ; $63e5: $cc $cf $ce
	rst  $28                                         ; $63e8: $ef
	ld   h, h                                        ; $63e9: $64
	ld   h, a                                        ; $63ea: $67
	sbc  b                                           ; $63eb: $98
	rst  $38                                         ; $63ec: $ff
	ld   b, l                                        ; $63ed: $45
	nop                                              ; $63ee: $00
	add  d                                           ; $63ef: $82
	xor  e                                           ; $63f0: $ab
	ld   bc, $cdc9                                   ; $63f1: $01 $c9 $cd
	add  h                                           ; $63f4: $84
	xor  l                                           ; $63f5: $ad
	ld   bc, $abaf                                   ; $63f6: $01 $af $ab
	add  h                                           ; $63f9: $84
	rst  $28                                         ; $63fa: $ef
	add  b                                           ; $63fb: $80
	ldh  [$88], a                                    ; $63fc: $e0 $88
	rst  $28                                         ; $63fe: $ef
	nop                                              ; $63ff: $00
	cp   $81                                         ; $6400: $fe $81
	rst  $38                                         ; $6402: $ff
	add  b                                           ; $6403: $80
	ld   bc, $de0f                                   ; $6404: $01 $0f $de
	rst  JumpTable                                         ; $6407: $df
	sbc  $df                                         ; $6408: $de $df
	sbc  $df                                         ; $640a: $de $df
	sbc  $df                                         ; $640c: $de $df
	sbc  $df                                         ; $640e: $de $df
	ld   e, c                                        ; $6410: $59
	ld   a, e                                        ; $6411: $7b
	ld   c, d                                        ; $6412: $4a
	ld   a, e                                        ; $6413: $7b
	ld   a, [hl+]                                    ; $6414: $2a
	ld   l, d                                        ; $6415: $6a
	add  b                                           ; $6416: $80
	ld   a, c                                        ; $6417: $79
	add  b                                           ; $6418: $80
	dec  hl                                          ; $6419: $2b
	ld   [bc], a                                     ; $641a: $02
	ld   a, [hl+]                                    ; $641b: $2a
	ld   l, d                                        ; $641c: $6a
	ld   l, b                                        ; $641d: $68
	add  c                                           ; $641e: $81
	ld   [$8e00], sp                                 ; $641f: $08 $00 $8e
	add  l                                           ; $6422: $85
	ld   c, $84                                      ; $6423: $0e $84
	ld   [bc], a                                     ; $6425: $02
	add  b                                           ; $6426: $80
	ld   a, [bc]                                     ; $6427: $0a
	nop                                              ; $6428: $00
	dec  bc                                          ; $6429: $0b
	adc  l                                           ; $642a: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $642b: $cf
	nop                                              ; $642c: $00
	db   $dd                                         ; $642d: $dd
	add  c                                           ; $642e: $81
	ld   [$0a81], a                                  ; $642f: $ea $81 $0a
	nop                                              ; $6432: $00
	jp   z, $2f80                                    ; $6433: $ca $80 $2f

	ld   b, $4a                                      ; $6436: $06 $4a
	ld   l, d                                        ; $6438: $6a
	ld   a, [bc]                                     ; $6439: $0a
	ld   a, [hl+]                                    ; $643a: $2a
	inc  b                                           ; $643b: $04
	ld   e, [hl]                                     ; $643c: $5e
	ld   b, a                                        ; $643d: $47
	add  e                                           ; $643e: $83
	db   $dd                                         ; $643f: $dd
	inc  b                                           ; $6440: $04
	sbc  $df                                         ; $6441: $de $df
	db   $dd                                         ; $6443: $dd
	rst  JumpTable                                         ; $6444: $df
	db   $db                                         ; $6445: $db
	add  d                                           ; $6446: $82
	rst  JumpTable                                         ; $6447: $df
	inc  c                                           ; $6448: $0c
	ret  c                                           ; $6449: $d8

	add  hl, hl                                      ; $644a: $29
	ld   c, c                                        ; $644b: $49
	ld   l, e                                        ; $644c: $6b
	db   $eb                                         ; $644d: $eb
	ld   h, $cf                                      ; $644e: $26 $cf
	add  hl, bc                                      ; $6450: $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6451: $cf
	call z, $c082                                    ; $6452: $cc $82 $c0
	adc  a                                           ; $6455: $8f
	add  b                                           ; $6456: $80
	add  a                                           ; $6457: $87
	inc  bc                                          ; $6458: $03
	ld   b, h                                        ; $6459: $44
	sbc  a                                           ; $645a: $9f
	ldh  [c], a                                      ; $645b: $e2
	ld   [hl], a                                     ; $645c: $77
	add  b                                           ; $645d: $80
	rst  $30                                         ; $645e: $f7
	dec  c                                           ; $645f: $0d
	scf                                              ; $6460: $37
	rst  $30                                         ; $6461: $f7
	rra                                              ; $6462: $1f
	ld   a, a                                        ; $6463: $7f
	cpl                                              ; $6464: $2f
	ld   e, a                                        ; $6465: $5f
	rst  $28                                         ; $6466: $ef
	ld   a, a                                        ; $6467: $7f
	ld   d, a                                        ; $6468: $57
	ld   [hl], a                                     ; $6469: $77
	rla                                              ; $646a: $17
	ld   [hl], a                                     ; $646b: $77
	ld   l, a                                        ; $646c: $6f
	rst  $28                                         ; $646d: $ef
	add  b                                           ; $646e: $80
	rst  $38                                         ; $646f: $ff
	add  b                                           ; $6470: $80
	rst  $28                                         ; $6471: $ef
	add  b                                           ; $6472: $80
	rst  $38                                         ; $6473: $ff
	add  b                                           ; $6474: $80
	rst  $28                                         ; $6475: $ef
	add  b                                           ; $6476: $80
	rst  $38                                         ; $6477: $ff
	add  d                                           ; $6478: $82
	rst  $28                                         ; $6479: $ef
	add  hl, bc                                      ; $647a: $09
	ld   d, l                                        ; $647b: $55
	push af                                          ; $647c: $f5
	dec  b                                           ; $647d: $05
	push af                                          ; $647e: $f5
	dec  b                                           ; $647f: $05
	push af                                          ; $6480: $f5
	dec  h                                           ; $6481: $25
	push af                                          ; $6482: $f5
	ld   [hl], a                                     ; $6483: $77
	rst  $30                                         ; $6484: $f7
	add  h                                           ; $6485: $84
	push af                                          ; $6486: $f5
	nop                                              ; $6487: $00
	and  l                                           ; $6488: $a5
	add  l                                           ; $6489: $85
	ld   d, l                                        ; $648a: $55
	add  b                                           ; $648b: $80
	rst  $38                                         ; $648c: $ff
	add  b                                           ; $648d: $80
	ld   d, l                                        ; $648e: $55
	add  b                                           ; $648f: $80
	ld   e, l                                        ; $6490: $5d
	add  b                                           ; $6491: $80
	push de                                          ; $6492: $d5
	add  [hl]                                        ; $6493: $86
	ld   d, l                                        ; $6494: $55
	add  b                                           ; $6495: $80
	rst  $38                                         ; $6496: $ff
	add  b                                           ; $6497: $80
	ld   d, l                                        ; $6498: $55
	inc  b                                           ; $6499: $04
	ld   c, a                                        ; $649a: $4f
	ld   b, b                                        ; $649b: $40
	ld   [hl], b                                     ; $649c: $70
	ld   b, b                                        ; $649d: $40
	push de                                          ; $649e: $d5
	add  l                                           ; $649f: $85
	ld   [$ff80], a                                  ; $64a0: $ea $80 $ff
	add  c                                           ; $64a3: $81
	ld   [$0a03], a                                  ; $64a4: $ea $03 $0a
	ld   e, $06                                      ; $64a7: $1e $06
	ld   d, d                                        ; $64a9: $52
	add  c                                           ; $64aa: $81
	xor  d                                           ; $64ab: $aa
	add  b                                           ; $64ac: $80
	cp   d                                           ; $64ad: $ba
	add  b                                           ; $64ae: $80
	and  $80                                         ; $64af: $e6 $80
	di                                               ; $64b1: $f3
	add  b                                           ; $64b2: $80
	ldh  a, [c]                                      ; $64b3: $f2
	add  b                                           ; $64b4: $80
	add  d                                           ; $64b5: $82
	add  b                                           ; $64b6: $80
	and  [hl]                                        ; $64b7: $a6
	rlca                                             ; $64b8: $07
	xor  e                                           ; $64b9: $ab
	xor  a                                           ; $64ba: $af
	and  c                                           ; $64bb: $a1
	xor  a                                           ; $64bc: $af
	and  c                                           ; $64bd: $a1
	xor  a                                           ; $64be: $af
	and  l                                           ; $64bf: $a5
	xor  a                                           ; $64c0: $af
	add  b                                           ; $64c1: $80
	rst  $28                                         ; $64c2: $ef
	add  h                                           ; $64c3: $84
	xor  a                                           ; $64c4: $af
	ld   bc, $fff1                                   ; $64c5: $01 $f1 $ff
	add  b                                           ; $64c8: $80
	rst  $28                                         ; $64c9: $ef
	add  b                                           ; $64ca: $80
	rst  $38                                         ; $64cb: $ff
	add  b                                           ; $64cc: $80
	rst  $28                                         ; $64cd: $ef
	add  b                                           ; $64ce: $80
	rst  $38                                         ; $64cf: $ff
	add  h                                           ; $64d0: $84
	rst  $28                                         ; $64d1: $ef
	adc  d                                           ; $64d2: $8a
	rst  JumpTable                                         ; $64d3: $df
	add  b                                           ; $64d4: $80
	rst  $38                                         ; $64d5: $ff
	add  b                                           ; $64d6: $80
	rst  JumpTable                                         ; $64d7: $df
	nop                                              ; $64d8: $00
	ld   a, e                                        ; $64d9: $7b
	add  c                                           ; $64da: $81
	ld   [$0b03], sp                                 ; $64db: $08 $03 $0b
	ld   a, e                                        ; $64de: $7b
	ld   a, h                                        ; $64df: $7c
	ld   a, a                                        ; $64e0: $7f
	add  b                                           ; $64e1: $80
	rlca                                             ; $64e2: $07
	add  b                                           ; $64e3: $80
	ld   a, b                                        ; $64e4: $78
	inc  b                                           ; $64e5: $04
	ld   c, e                                        ; $64e6: $4b
	ld   a, e                                        ; $64e7: $7b
	ld   c, b                                        ; $64e8: $48
	ld   a, e                                        ; $64e9: $7b
	cp   $85                                         ; $64ea: $fe $85
	ld   c, $82                                      ; $64ec: $0e $82
	ld   a, [bc]                                     ; $64ee: $0a
	add  d                                           ; $64ef: $82
	ld   [bc], a                                     ; $64f0: $02
	nop                                              ; $64f1: $00
	dec  bc                                          ; $64f2: $0b
	adc  l                                           ; $64f3: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f4: $cf
	nop                                              ; $64f5: $00
	ld   h, d                                        ; $64f6: $62
	add  e                                           ; $64f7: $83
	ld   d, l                                        ; $64f8: $55
	ld   bc, $5554                                   ; $64f9: $01 $54 $55
	add  b                                           ; $64fc: $80
	cp   $80                                         ; $64fd: $fe $80
	ld   d, l                                        ; $64ff: $55
	dec  b                                           ; $6500: $05
	ld   b, d                                        ; $6501: $42
	ld   c, [hl]                                     ; $6502: $4e
	ld   b, $7f                                      ; $6503: $06 $7f
	xor  b                                           ; $6505: $a8
	call c, $de80                                    ; $6506: $dc $80 $de
	add  b                                           ; $6509: $80
	call c, $de80                                    ; $650a: $dc $80 $de
	add  c                                           ; $650d: $81
	call c, $dd83                                    ; $650e: $dc $83 $dd
	db   $10                                         ; $6511: $10
	inc  [hl]                                        ; $6512: $34
	cp   a                                           ; $6513: $bf
	sub  h                                           ; $6514: $94
	sbc  a                                           ; $6515: $9f

jr_077_6516:
	jr   z, jr_077_6516                              ; $6516: $28 $fe

	scf                                              ; $6518: $37
	ld   e, a                                        ; $6519: $5f
	rrca                                             ; $651a: $0f
	cpl                                              ; $651b: $2f
	ld   [bc], a                                     ; $651c: $02
	ld   de, $ff54                                   ; $651d: $11 $54 $ff
	rrca                                             ; $6520: $0f
	rst  $38                                         ; $6521: $ff
	add  b                                           ; $6522: $80
	add  b                                           ; $6523: $80
	rst  $30                                         ; $6524: $f7
	nop                                              ; $6525: $00
	ld   [hl], a                                     ; $6526: $77
	add  b                                           ; $6527: $80
	rst  $30                                         ; $6528: $f7
	nop                                              ; $6529: $00
	rla                                              ; $652a: $17
	add  b                                           ; $652b: $80
	ld   [hl], a                                     ; $652c: $77
	inc  b                                           ; $652d: $04
	rst  $30                                         ; $652e: $f7
	rra                                              ; $652f: $1f
	ld   a, a                                        ; $6530: $7f
	ccf                                              ; $6531: $3f
	rst  $28                                         ; $6532: $ef
	add  b                                           ; $6533: $80
	sbc  a                                           ; $6534: $9f
	nop                                              ; $6535: $00
	rra                                              ; $6536: $1f
	add  a                                           ; $6537: $87
	rst  $28                                         ; $6538: $ef
	rlca                                             ; $6539: $07
	xor  $ef                                         ; $653a: $ee $ef
	add  sp, -$11                                    ; $653c: $e8 $ef
	xor  $e8                                         ; $653e: $ee $e8
	dec  b                                           ; $6540: $05
	push af                                          ; $6541: $f5
	add  b                                           ; $6542: $80
	rst  $30                                         ; $6543: $f7
	add  b                                           ; $6544: $80
	db   $f4                                         ; $6545: $f4
	add  hl, bc                                      ; $6546: $09
	ld   [hl], h                                     ; $6547: $74
	db   $f4                                         ; $6548: $f4
	inc  h                                           ; $6549: $24
	cp   $00                                         ; $654a: $fe $00
	cp   $03                                         ; $654c: $fe $03
	rst  $38                                         ; $654e: $ff
	xor  b                                           ; $654f: $a8
	nop                                              ; $6550: $00
	add  b                                           ; $6551: $80
	ld   d, l                                        ; $6552: $55
	add  b                                           ; $6553: $80
	ld   h, a                                        ; $6554: $67
	add  b                                           ; $6555: $80
	ld   c, l                                        ; $6556: $4d
	add  b                                           ; $6557: $80
	call $ce09                                       ; $6558: $cd $09 $ce
	rst  $28                                         ; $655b: $ef
	ld   h, h                                        ; $655c: $64
	ld   h, a                                        ; $655d: $67
	sbc  b                                           ; $655e: $98
	rst  $38                                         ; $655f: $ff
	ld   b, l                                        ; $6560: $45
	nop                                              ; $6561: $00
	ld   a, [hl+]                                    ; $6562: $2a
	ld   d, l                                        ; $6563: $55
	add  b                                           ; $6564: $80
	ld   [$bf0d], a                                  ; $6565: $ea $0d $bf
	rst  $38                                         ; $6568: $ff
	ret  nz                                          ; $6569: $c0

	rst  $38                                         ; $656a: $ff
	xor  d                                           ; $656b: $aa
	rst  $38                                         ; $656c: $ff
	nop                                              ; $656d: $00
	rst  $38                                         ; $656e: $ff
	nop                                              ; $656f: $00
	rst  $38                                         ; $6570: $ff
	ld   d, l                                        ; $6571: $55
	nop                                              ; $6572: $00
	xor  d                                           ; $6573: $aa
	ld   d, [hl]                                     ; $6574: $56
	add  b                                           ; $6575: $80
	xor  a                                           ; $6576: $af
	dec  bc                                          ; $6577: $0b
	ld   a, [$06fe]                                  ; $6578: $fa $fe $06
	cp   $00                                         ; $657b: $fe $00
	rst  $38                                         ; $657d: $ff
	cp   a                                           ; $657e: $bf
	rst  $38                                         ; $657f: $ff
	rla                                              ; $6580: $17
	rst  $38                                         ; $6581: $ff
	ld   d, a                                        ; $6582: $57
	nop                                              ; $6583: $00
	add  b                                           ; $6584: $80
	xor  d                                           ; $6585: $aa
	add  b                                           ; $6586: $80
	rst  ToBoot                                         ; $6587: $c7
	add  b                                           ; $6588: $80
	xor  d                                           ; $6589: $aa
	inc  bc                                          ; $658a: $03
	add  d                                           ; $658b: $82
	xor  d                                           ; $658c: $aa
	db   $10                                         ; $658d: $10
	rst  $38                                         ; $658e: $ff
	add  b                                           ; $658f: $80
	rst  ToBoot                                         ; $6590: $c7
	inc  b                                           ; $6591: $04
	db   $db                                         ; $6592: $db
	rst  $38                                         ; $6593: $ff
	db   $e3                                         ; $6594: $e3
	nop                                              ; $6595: $00
	ld   bc, $0785                                   ; $6596: $01 $85 $07
	rlca                                             ; $6599: $07
	ld   b, $07                                      ; $659a: $06 $07
	inc  bc                                          ; $659c: $03
	rlca                                             ; $659d: $07
	dec  a                                           ; $659e: $3d
	rst  $38                                         ; $659f: $ff
	pop  bc                                          ; $65a0: $c1
	nop                                              ; $65a1: $00
	adc  b                                           ; $65a2: $88
	rst  $28                                         ; $65a3: $ef
	ld   [bc], a                                     ; $65a4: $02
	ld   l, a                                        ; $65a5: $6f
	rst  $28                                         ; $65a6: $ef
	adc  a                                           ; $65a7: $8f
	add  b                                           ; $65a8: $80
	rst  $28                                         ; $65a9: $ef
	nop                                              ; $65aa: $00
	rrca                                             ; $65ab: $0f
	add  b                                           ; $65ac: $80
	rst  $38                                         ; $65ad: $ff
	adc  h                                           ; $65ae: $8c
	rst  JumpTable                                         ; $65af: $df
	inc  bc                                          ; $65b0: $03
	ld   c, e                                        ; $65b1: $4b
	ld   a, e                                        ; $65b2: $7b
	ld   a, b                                        ; $65b3: $78
	ld   a, e                                        ; $65b4: $7b
	add  b                                           ; $65b5: $80
	ld   l, e                                        ; $65b6: $6b
	add  b                                           ; $65b7: $80
	ld   c, e                                        ; $65b8: $4b
	inc  bc                                          ; $65b9: $03
	ld   c, d                                        ; $65ba: $4a
	ld   a, d                                        ; $65bb: $7a
	ld   a, h                                        ; $65bc: $7c
	ld   a, a                                        ; $65bd: $7f
	add  b                                           ; $65be: $80
	rrca                                             ; $65bf: $0f
	add  b                                           ; $65c0: $80
	ld   [hl], b                                     ; $65c1: $70
	nop                                              ; $65c2: $00
	pop  af                                          ; $65c3: $f1
	add  b                                           ; $65c4: $80
	ld   [bc], a                                     ; $65c5: $02
	nop                                              ; $65c6: $00
	ld   c, $80                                      ; $65c7: $0e $80
	nop                                              ; $65c9: $00
	inc  b                                           ; $65ca: $04
	ld   [$000f], sp                                 ; $65cb: $08 $0f $00
	ld   [$8000], sp                                 ; $65ce: $08 $00 $80
	ld   b, $80                                      ; $65d1: $06 $80
	ld   c, $01                                      ; $65d3: $0e $01
	inc  c                                           ; $65d5: $0c
	inc  b                                           ; $65d6: $04
	add  c                                           ; $65d7: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65d8: $cf
	ld   bc, $cfdf                                   ; $65d9: $01 $df $cf
	add  b                                           ; $65dc: $80
	adc  a                                           ; $65dd: $8f
	dec  b                                           ; $65de: $05
	rrca                                             ; $65df: $0f
	ld   c, a                                        ; $65e0: $4f
	ld   h, e                                        ; $65e1: $63
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e2: $cf
	add  c                                           ; $65e3: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e4: $cf
	add  b                                           ; $65e5: $80
	adc  a                                           ; $65e6: $8f
	ld   bc, $d752                                   ; $65e7: $01 $52 $d7
	add  b                                           ; $65ea: $80
	ld   d, a                                        ; $65eb: $57
	add  b                                           ; $65ec: $80
	sub  a                                           ; $65ed: $97
	add  b                                           ; $65ee: $80
	rst  $30                                         ; $65ef: $f7
	add  b                                           ; $65f0: $80
	ld   [hl], a                                     ; $65f1: $77
	add  b                                           ; $65f2: $80
	rla                                              ; $65f3: $17
	add  b                                           ; $65f4: $80
	rlca                                             ; $65f5: $07
	add  b                                           ; $65f6: $80
	rst  ToBoot                                         ; $65f7: $c7
	add  b                                           ; $65f8: $80
	jp   c, $dc80                                    ; $65f9: $da $80 $dc

	add  b                                           ; $65fc: $80
	jp   c, $dc80                                    ; $65fd: $da $80 $dc

	add  b                                           ; $6600: $80
	jp   c, $dc80                                    ; $6601: $da $80 $dc

	add  b                                           ; $6604: $80
	jp   c, $dc80                                    ; $6605: $da $80 $dc

	inc  bc                                          ; $6608: $03
	ld   d, l                                        ; $6609: $55
	rst  $38                                         ; $660a: $ff
	sub  h                                           ; $660b: $94
	ld   a, $80                                      ; $660c: $3e $80
	ld   b, $03                                      ; $660e: $06 $03
	ld   [$020e], sp                                 ; $6610: $08 $0e $02
	ld   b, $80                                      ; $6613: $06 $80
	ld   l, $80                                      ; $6615: $2e $80
	ld   h, $05                                      ; $6617: $26 $05
	dec  hl                                          ; $6619: $2b
	cpl                                              ; $661a: $2f
	add  hl, hl                                      ; $661b: $29
	cpl                                              ; $661c: $2f
	rra                                              ; $661d: $1f
	ccf                                              ; $661e: $3f
	add  b                                           ; $661f: $80
	ld   [hl], a                                     ; $6620: $77
	ld   [bc], a                                     ; $6621: $02
	scf                                              ; $6622: $37
	ld   [hl], a                                     ; $6623: $77
	scf                                              ; $6624: $37
	add  c                                           ; $6625: $81
	ld   [hl], a                                     ; $6626: $77
	dec  b                                           ; $6627: $05
	scf                                              ; $6628: $37
	ld   [hl], a                                     ; $6629: $77
	scf                                              ; $662a: $37
	ld   [hl], a                                     ; $662b: $77
	ret  z                                           ; $662c: $c8

	add  sp, -$80                                    ; $662d: $e8 $80
	ld   hl, sp-$80                                  ; $662f: $f8 $80
	rst  $28                                         ; $6631: $ef
	add  b                                           ; $6632: $80
	rst  $38                                         ; $6633: $ff
	add  b                                           ; $6634: $80
	rst  $28                                         ; $6635: $ef
	add  b                                           ; $6636: $80
	rst  $38                                         ; $6637: $ff
	add  b                                           ; $6638: $80
	rst  $28                                         ; $6639: $ef
	add  b                                           ; $663a: $80
	rst  $38                                         ; $663b: $ff
	add  d                                           ; $663c: $82
	nop                                              ; $663d: $00
	inc  c                                           ; $663e: $0c
	ld   l, a                                        ; $663f: $6f
	rst  $28                                         ; $6640: $ef
	rrca                                             ; $6641: $0f
	adc  a                                           ; $6642: $8f
	ld   l, b                                        ; $6643: $68
	add  sp, $08                                     ; $6644: $e8 $08
	adc  b                                           ; $6646: $88
	add  hl, bc                                      ; $6647: $09
	jp   hl                                          ; $6648: $e9


	adc  c                                           ; $6649: $89
	jp   hl                                          ; $664a: $e9


	add  b                                           ; $664b: $80
	add  c                                           ; $664c: $81
	nop                                              ; $664d: $00
	add  d                                           ; $664e: $82
	rst  $38                                         ; $664f: $ff
	add  d                                           ; $6650: $82
	nop                                              ; $6651: $00
	add  d                                           ; $6652: $82
	rst  $38                                         ; $6653: $ff
	add  d                                           ; $6654: $82
	nop                                              ; $6655: $00
	add  d                                           ; $6656: $82
	rst  $38                                         ; $6657: $ff
	add  c                                           ; $6658: $81
	db   $10                                         ; $6659: $10
	ld   bc, $b330                                   ; $665a: $01 $30 $b3
	add  c                                           ; $665d: $81
	di                                               ; $665e: $f3
	nop                                              ; $665f: $00
	ld   h, b                                        ; $6660: $60
	add  c                                           ; $6661: $81
	nop                                              ; $6662: $00
	add  d                                           ; $6663: $82
	rst  $38                                         ; $6664: $ff
	add  c                                           ; $6665: $81
	ld   [$1801], sp                                 ; $6666: $08 $01 $18
	reti                                             ; $6669: $d9


	add  c                                           ; $666a: $81
	ld   sp, hl                                      ; $666b: $f9
	ld   bc, $f7c7                                   ; $666c: $01 $c7 $f7
	add  b                                           ; $666f: $80
	rla                                              ; $6670: $17
	adc  d                                           ; $6671: $8a
	rst  $10                                         ; $6672: $d7
	add  d                                           ; $6673: $82
	nop                                              ; $6674: $00
	dec  c                                           ; $6675: $0d
	or   $f7                                         ; $6676: $f6 $f7
	ldh  a, [$f1]                                    ; $6678: $f0 $f1
	ld   [hl], $37                                   ; $667a: $36 $37
	jr   nc, jr_077_66ef                             ; $667c: $30 $71

	ld   [hl], b                                     ; $667e: $70
	rst  $30                                         ; $667f: $f7
	pop  af                                          ; $6680: $f1
	rst  $30                                         ; $6681: $f7
	adc  $0f                                         ; $6682: $ce $0f
	add  b                                           ; $6684: $80
	rra                                              ; $6685: $1f
	add  b                                           ; $6686: $80
	rst  $28                                         ; $6687: $ef
	add  b                                           ; $6688: $80
	rst  $38                                         ; $6689: $ff
	add  b                                           ; $668a: $80
	rst  $28                                         ; $668b: $ef
	add  b                                           ; $668c: $80
	rst  $38                                         ; $668d: $ff
	add  d                                           ; $668e: $82
	rst  $28                                         ; $668f: $ef
	add  d                                           ; $6690: $82
	rst  JumpTable                                         ; $6691: $df
	add  b                                           ; $6692: $80
	call c, $fc03                                    ; $6693: $dc $03 $fc
	rst  $38                                         ; $6696: $ff
	rst  JumpTable                                         ; $6697: $df
	db   $dd                                         ; $6698: $dd
	add  b                                           ; $6699: $80
	db   $fd                                         ; $669a: $fd
	add  d                                           ; $669b: $82
	db   $dd                                         ; $669c: $dd
	ld   [$4243], sp                                 ; $669d: $08 $43 $42
	ld   c, h                                        ; $66a0: $4c
	ld   c, l                                        ; $66a1: $4d
	ld   [hl], c                                     ; $66a2: $71
	ld   [hl], d                                     ; $66a3: $72
	jp   nz, $0ece                                   ; $66a4: $c2 $ce $0e

	add  b                                           ; $66a7: $80
	inc  a                                           ; $66a8: $3c
	add  b                                           ; $66a9: $80
	ld   a, b                                        ; $66aa: $78
	ld   [bc], a                                     ; $66ab: $02
	ld   [hl], c                                     ; $66ac: $71
	halt                                             ; $66ad: $76
	ld   h, h                                        ; $66ae: $64
	ld   h, [hl]                                     ; $66af: $66
	ld   [bc], a                                     ; $66b0: $02
	add  [hl]                                        ; $66b1: $86
	nop                                              ; $66b2: $00
	add  [hl]                                        ; $66b3: $86
	rrca                                             ; $66b4: $0f
	add  [hl]                                        ; $66b5: $86
	nop                                              ; $66b6: $00
	add  [hl]                                        ; $66b7: $86
	rst  $38                                         ; $66b8: $ff
	add  [hl]                                        ; $66b9: $86
	nop                                              ; $66ba: $00
	ld   [bc], a                                     ; $66bb: $02
	cp   $f1                                         ; $66bc: $fe $f1
	ldh  a, [$80]                                    ; $66be: $f0 $80
	cp   $81                                         ; $66c0: $fe $81
	rst  $38                                         ; $66c2: $ff
	add  [hl]                                        ; $66c3: $86
	nop                                              ; $66c4: $00
	ld   bc, $7887                                   ; $66c5: $01 $87 $78
	add  b                                           ; $66c8: $80
	ld   a, $04                                      ; $66c9: $3e $04
	rlca                                             ; $66cb: $07
	rst  ToBoot                                         ; $66cc: $c7
	ret  nz                                          ; $66cd: $c0

	ld   hl, sp+$07                                  ; $66ce: $f8 $07
	add  l                                           ; $66d0: $85
	nop                                              ; $66d1: $00
	ld   bc, $39c6                                   ; $66d2: $01 $c6 $39
	add  b                                           ; $66d5: $80
	ld   c, $80                                      ; $66d6: $0e $80
	jp   $f080                                       ; $66d8: $c3 $80 $f0


	nop                                              ; $66db: $00
	rst  $38                                         ; $66dc: $ff
	add  l                                           ; $66dd: $85

jr_077_66de:
	nop                                              ; $66de: $00
	ld   bc, $bf40                                   ; $66df: $01 $40 $bf
	add  b                                           ; $66e2: $80
	nop                                              ; $66e3: $00
	add  b                                           ; $66e4: $80
	ld   a, a                                        ; $66e5: $7f
	add  b                                           ; $66e6: $80
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	rst  $38                                         ; $66e9: $ff
	add  [hl]                                        ; $66ea: $86
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	rst  $38                                         ; $66ed: $ff
	add  b                                           ; $66ee: $80

jr_077_66ef:
	nop                                              ; $66ef: $00
	add  b                                           ; $66f0: $80
	rst  $38                                         ; $66f1: $ff
	add  b                                           ; $66f2: $80
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	rst  $38                                         ; $66f5: $ff
	add  [hl]                                        ; $66f6: $86
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	rst  $38                                         ; $66f9: $ff
	add  b                                           ; $66fa: $80
	nop                                              ; $66fb: $00
	add  b                                           ; $66fc: $80
	rst  $38                                         ; $66fd: $ff
	add  b                                           ; $66fe: $80
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	rst  $38                                         ; $6701: $ff
	add  l                                           ; $6702: $85
	nop                                              ; $6703: $00
	inc  bc                                          ; $6704: $03
	rlca                                             ; $6705: $07
	ei                                               ; $6706: $fb
	inc  bc                                          ; $6707: $03
	nop                                              ; $6708: $00
	add  b                                           ; $6709: $80
	ld   hl, sp-$80                                  ; $670a: $f8 $80
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	rst  $38                                         ; $670e: $ff
	add  l                                           ; $670f: $85
	nop                                              ; $6710: $00
	add  c                                           ; $6711: $81
	rst  $38                                         ; $6712: $ff
	add  b                                           ; $6713: $80
	ld   a, a                                        ; $6714: $7f
	add  b                                           ; $6715: $80
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	rst  $38                                         ; $6718: $ff
	add  [hl]                                        ; $6719: $86
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	rst  $38                                         ; $671c: $ff
	add  b                                           ; $671d: $80
	rst  $28                                         ; $671e: $ef
	add  b                                           ; $671f: $80
	rst  ToBoot                                         ; $6720: $c7
	add  b                                           ; $6721: $80
	nop                                              ; $6722: $00
	ld   bc, $38c7                                   ; $6723: $01 $c7 $38
	add  l                                           ; $6726: $85
	nop                                              ; $6727: $00
	add  c                                           ; $6728: $81
	rst  $38                                         ; $6729: $ff
	add  b                                           ; $672a: $80
	db   $fc                                         ; $672b: $fc
	add  b                                           ; $672c: $80
	nop                                              ; $672d: $00
	ld   bc, $01fe                                   ; $672e: $01 $fe $01
	add  l                                           ; $6731: $85
	nop                                              ; $6732: $00
	inc  bc                                          ; $6733: $03
	ret  nz                                          ; $6734: $c0

	cp   a                                           ; $6735: $bf
	add  b                                           ; $6736: $80
	nop                                              ; $6737: $00
	add  b                                           ; $6738: $80
	ccf                                              ; $6739: $3f
	add  b                                           ; $673a: $80
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	rst  $38                                         ; $673d: $ff
	add  [hl]                                        ; $673e: $86
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	rst  $38                                         ; $6741: $ff
	add  b                                           ; $6742: $80
	nop                                              ; $6743: $00
	add  b                                           ; $6744: $80
	rst  $38                                         ; $6745: $ff
	add  b                                           ; $6746: $80
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	rst  $38                                         ; $6749: $ff
	add  [hl]                                        ; $674a: $86
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	rst  $38                                         ; $674d: $ff
	add  b                                           ; $674e: $80
	nop                                              ; $674f: $00
	add  b                                           ; $6750: $80
	rst  $38                                         ; $6751: $ff
	add  b                                           ; $6752: $80
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	rst  $38                                         ; $6755: $ff
	add  l                                           ; $6756: $85
	nop                                              ; $6757: $00
	ld   bc, $4eb1                                   ; $6758: $01 $b1 $4e
	add  b                                           ; $675b: $80
	jr   c, jr_077_66de                              ; $675c: $38 $80

	and  c                                           ; $675e: $a1
	add  b                                           ; $675f: $80
	ld   [bc], a                                     ; $6760: $02
	nop                                              ; $6761: $00
	ldh  a, [$8d]                                    ; $6762: $f0 $8d
	rrca                                             ; $6764: $0f
	xor  [hl]                                        ; $6765: $ae
	rst  $38                                         ; $6766: $ff
	ld   [bc], a                                     ; $6767: $02
	db   $e3                                         ; $6768: $e3
	inc  e                                           ; $6769: $1c
	inc  bc                                          ; $676a: $03
	add  b                                           ; $676b: $80
	db   $e3                                         ; $676c: $e3
	add  a                                           ; $676d: $87
	rst  $38                                         ; $676e: $ff
	nop                                              ; $676f: $00
	db   $fc                                         ; $6770: $fc
	add  b                                           ; $6771: $80
	ret  nz                                          ; $6772: $c0

	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	add  d                                           ; $6775: $82
	rst  $38                                         ; $6776: $ff
	add  [hl]                                        ; $6777: $86
	ldh  a, [$82]                                    ; $6778: $f0 $82
	nop                                              ; $677a: $00
	add  d                                           ; $677b: $82
	rst  $38                                         ; $677c: $ff
	add  b                                           ; $677d: $80
	inc  bc                                          ; $677e: $03
	add  [hl]                                        ; $677f: $86

Call_077_6780:
	ld   [bc], a                                     ; $6780: $02
	add  b                                           ; $6781: $80
	nop                                              ; $6782: $00
	add  h                                           ; $6783: $84
	rst  $38                                         ; $6784: $ff
	rlca                                             ; $6785: $07
	inc  bc                                          ; $6786: $03
	rlca                                             ; $6787: $07
	dec  b                                           ; $6788: $05
	rlca                                             ; $6789: $07
	ld   b, $07                                      ; $678a: $06 $07
	nop                                              ; $678c: $00
	rlca                                             ; $678d: $07
	add  b                                           ; $678e: $80
	nop                                              ; $678f: $00
	add  [hl]                                        ; $6790: $86
	ldh  [rP1], a                                    ; $6791: $e0 $00
	pop  hl                                          ; $6793: $e1
	add  e                                           ; $6794: $83
	ldh  [rP1], a                                    ; $6795: $e0 $00
	ld   bc, $ff80                                   ; $6797: $01 $80 $ff
	add  l                                           ; $679a: $85
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	rst  $30                                         ; $679d: $f7
	add  e                                           ; $679e: $83
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	rst  $30                                         ; $67a1: $f7
	add  b                                           ; $67a2: $80
	rst  ToBoot                                         ; $67a3: $c7
	add  l                                           ; $67a4: $85
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	rst  ToBoot                                         ; $67a7: $c7
	add  e                                           ; $67a8: $83
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	rst  ToBoot                                         ; $67ab: $c7
	add  b                                           ; $67ac: $80
	cp   $85                                         ; $67ad: $fe $85
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	rst  JumpTable                                         ; $67b1: $df
	add  e                                           ; $67b2: $83
	nop                                              ; $67b3: $00
	ld   bc, $00df                                   ; $67b4: $01 $df $00
	add  d                                           ; $67b7: $82
	ccf                                              ; $67b8: $3f
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	adc  b                                           ; $67bb: $88
	jr   nz, jr_077_67be                             ; $67bc: $20 $00

jr_077_67be:
	nop                                              ; $67be: $00
	add  d                                           ; $67bf: $82
	rst  $38                                         ; $67c0: $ff
	add  [hl]                                        ; $67c1: $86
	rra                                              ; $67c2: $1f
	add  d                                           ; $67c3: $82
	nop                                              ; $67c4: $00
	adc  d                                           ; $67c5: $8a
	rst  $38                                         ; $67c6: $ff
	add  b                                           ; $67c7: $80
	nop                                              ; $67c8: $00
	add  b                                           ; $67c9: $80
	dec  d                                           ; $67ca: $15
	add  b                                           ; $67cb: $80
	add  sp, -$80                                    ; $67cc: $e8 $80
	ldh  [$80], a                                    ; $67ce: $e0 $80
	and  $82                                         ; $67d0: $e6 $82
	xor  $80                                         ; $67d2: $ee $80
	db   $ec                                         ; $67d4: $ec
	add  b                                           ; $67d5: $80
	inc  c                                           ; $67d6: $0c
	nop                                              ; $67d7: $00
	ldh  a, [$8d]                                    ; $67d8: $f0 $8d
	rrca                                             ; $67da: $0f
	adc  h                                           ; $67db: $8c
	rst  $38                                         ; $67dc: $ff
	add  b                                           ; $67dd: $80
	cp   $82                                         ; $67de: $fe $82
	rst  $38                                         ; $67e0: $ff
	inc  bc                                          ; $67e1: $03
	nop                                              ; $67e2: $00
	rst  $38                                         ; $67e3: $ff
	add  h                                           ; $67e4: $84
	ei                                               ; $67e5: $fb
	add  b                                           ; $67e6: $80
	di                                               ; $67e7: $f3
	nop                                              ; $67e8: $00
	jp   nz, $c780                                   ; $67e9: $c2 $80 $c7

	inc  bc                                          ; $67ec: $03
	ret  z                                           ; $67ed: $c8

	ret                                              ; $67ee: $c9


	jp   nz, $817e                                   ; $67ef: $c2 $7e $81

	rst  $38                                         ; $67f2: $ff
	ld   [bc], a                                     ; $67f3: $02
	rrca                                             ; $67f4: $0f
	rst  $38                                         ; $67f5: $ff
	rra                                              ; $67f6: $1f
	add  c                                           ; $67f7: $81
	rst  $38                                         ; $67f8: $ff
	ld   b, $bf                                      ; $67f9: $06 $bf
	rst  $38                                         ; $67fb: $ff
	cp   a                                           ; $67fc: $bf
	ld   a, a                                        ; $67fd: $7f
	rst  $38                                         ; $67fe: $ff
	ccf                                              ; $67ff: $3f
	xor  a                                           ; $6800: $af
	add  b                                           ; $6801: $80
	rst  $38                                         ; $6802: $ff
	inc  b                                           ; $6803: $04
	ret  nz                                          ; $6804: $c0

	rst  ToBoot                                         ; $6805: $c7
	ret  nz                                          ; $6806: $c0

	ret  nc                                          ; $6807: $d0

	di                                               ; $6808: $f3
	add  c                                           ; $6809: $81
	ldh  a, [$83]                                    ; $680a: $f0 $83
	db   $f4                                         ; $680c: $f4
	nop                                              ; $680d: $00
	ldh  [$80], a                                    ; $680e: $e0 $80
	rst  $38                                         ; $6810: $ff
	add  c                                           ; $6811: $81
	nop                                              ; $6812: $00
	add  b                                           ; $6813: $80
	rst  $38                                         ; $6814: $ff
	add  b                                           ; $6815: $80
	nop                                              ; $6816: $00
	add  d                                           ; $6817: $82
	rst  $38                                         ; $6818: $ff
	ld   [bc], a                                     ; $6819: $02
	cp   $ff                                         ; $681a: $fe $ff
	ld   bc, $ff80                                   ; $681c: $01 $80 $ff
	add  c                                           ; $681f: $81
	nop                                              ; $6820: $00
	add  b                                           ; $6821: $80
	cp   a                                           ; $6822: $bf
	add  b                                           ; $6823: $80
	and  b                                           ; $6824: $a0
	add  d                                           ; $6825: $82
	and  a                                           ; $6826: $a7
	ld   [bc], a                                     ; $6827: $02
	ld   b, a                                        ; $6828: $47
	rst  $30                                         ; $6829: $f7
	or   b                                           ; $682a: $b0
	add  b                                           ; $682b: $80
	rst  $38                                         ; $682c: $ff
	inc  b                                           ; $682d: $04
	nop                                              ; $682e: $00
	dec  e                                           ; $682f: $1d
	ld   bc, $f9e1                                   ; $6830: $01 $e1 $f9
	add  b                                           ; $6833: $80
	ld   bc, $f100                                   ; $6834: $01 $00 $f1
	add  e                                           ; $6837: $83
	push af                                          ; $6838: $f5
	ld   [$e061], sp                                 ; $6839: $08 $61 $e0
	jr   nz, @-$1e                                   ; $683c: $20 $e0

	ld   bc, $81e0                                   ; $683e: $01 $e0 $81
	ldh  [$c0], a                                    ; $6841: $e0 $c0
	add  c                                           ; $6843: $81
	ldh  [rP1], a                                    ; $6844: $e0 $00
	pop  hl                                          ; $6846: $e1
	add  c                                           ; $6847: $81
	ldh  [rP1], a                                    ; $6848: $e0 $00
	rla                                              ; $684a: $17
	add  c                                           ; $684b: $81
	nop                                              ; $684c: $00
	ld   [bc], a                                     ; $684d: $02
	rst  $30                                         ; $684e: $f7
	nop                                              ; $684f: $00
	rst  $30                                         ; $6850: $f7
	add  e                                           ; $6851: $83
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	rst  $30                                         ; $6854: $f7
	add  b                                           ; $6855: $80
	nop                                              ; $6856: $00
	ld   bc, $eb2c                                   ; $6857: $01 $2c $eb
	add  c                                           ; $685a: $81
	nop                                              ; $685b: $00
	ld   [bc], a                                     ; $685c: $02
	rst  ToBoot                                         ; $685d: $c7
	nop                                              ; $685e: $00
	rst  ToBoot                                         ; $685f: $c7
	add  e                                           ; $6860: $83
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	ret  nz                                          ; $6863: $c0

	add  b                                           ; $6864: $80
	nop                                              ; $6865: $00
	ld   [bc], a                                     ; $6866: $02
	rlca                                             ; $6867: $07
	sbc  $00                                         ; $6868: $de $00
	add  b                                           ; $686a: $80
	ld   [bc], a                                     ; $686b: $02
	ld   [bc], a                                     ; $686c: $02
	sbc  $06                                         ; $686d: $de $06
	sbc  $86                                         ; $686f: $de $86
	ld   b, $01                                      ; $6871: $06 $01
	sbc  $06                                         ; $6873: $de $06
	add  b                                           ; $6875: $80
	nop                                              ; $6876: $00
	ld   bc, $7cff                                   ; $6877: $01 $ff $7c
	add  c                                           ; $687a: $81
	add  e                                           ; $687b: $83
	add  d                                           ; $687c: $82
	and  e                                           ; $687d: $a3
	add  d                                           ; $687e: $82
	or   e                                           ; $687f: $b3
	add  c                                           ; $6880: $81
	nop                                              ; $6881: $00
	ld   [bc], a                                     ; $6882: $02
	cp   $14                                         ; $6883: $fe $14
	ld   [$f480], a                                  ; $6885: $ea $80 $f4
	add  b                                           ; $6888: $80
	ld   a, [$f480]                                  ; $6889: $fa $80 $f4
	add  b                                           ; $688c: $80
	ld   a, [$f480]                                  ; $688d: $fa $80 $f4
	add  b                                           ; $6890: $80
	nop                                              ; $6891: $00
	add  b                                           ; $6892: $80
	ld   e, $80                                      ; $6893: $1e $80
	ld   e, b                                        ; $6895: $58
	add  b                                           ; $6896: $80
	ld   b, b                                        ; $6897: $40
	add  b                                           ; $6898: $80
	ld   e, b                                        ; $6899: $58
	add  b                                           ; $689a: $80
	ld   b, b                                        ; $689b: $40
	add  d                                           ; $689c: $82
	ld   e, b                                        ; $689d: $58
	add  b                                           ; $689e: $80
	ld   [$0380], sp                                 ; $689f: $08 $80 $03
	ld   b, $3e                                      ; $68a2: $06 $3e
	ccf                                              ; $68a4: $3f
	jp   $06c7                                       ; $68a5: $c3 $c7 $06


	rlca                                             ; $68a8: $07
	ld   b, c                                        ; $68a9: $41
	add  e                                           ; $68aa: $83
	ld   b, l                                        ; $68ab: $45
	nop                                              ; $68ac: $00
	ldh  a, [$85]                                    ; $68ad: $f0 $85
	rrca                                             ; $68af: $0f
	add  b                                           ; $68b0: $80
	ld   c, $80                                      ; $68b1: $0e $80
	ld   [$0080], sp                                 ; $68b3: $08 $80 $00
	add  b                                           ; $68b6: $80
	ld   [$f880], sp                                 ; $68b7: $08 $80 $f8
	add  b                                           ; $68ba: $80
	ldh  a, [$80]                                    ; $68bb: $f0 $80
	ret  nz                                          ; $68bd: $c0

	add  b                                           ; $68be: $80
	ld   bc, $0e01                                   ; $68bf: $01 $01 $0e
	ld   e, $81                                      ; $68c2: $1e $81
	jr   jr_077_68c9                                 ; $68c4: $18 $03

	ld   a, [de]                                     ; $68c6: $1a
	dec  e                                           ; $68c7: $1d
	rra                                              ; $68c8: $1f

jr_077_68c9:
	ld   d, d                                        ; $68c9: $52
	add  b                                           ; $68ca: $80
	jp   nz, $c307                                   ; $68cb: $c2 $07 $c3

	jp   nz, Jump_077_72c3                           ; $68ce: $c2 $c3 $72

	rst  $30                                         ; $68d1: $f7
	ld   l, $2b                                      ; $68d2: $2e $2b
	inc  hl                                          ; $68d4: $23
	add  b                                           ; $68d5: $80
	ld   [hl+], a                                    ; $68d6: $22
	dec  b                                           ; $68d7: $05
	and  e                                           ; $68d8: $a3
	ld   [hl+], a                                    ; $68d9: $22
	and  a                                           ; $68da: $a7
	ld   l, d                                        ; $68db: $6a
	rst  $38                                         ; $68dc: $ff
	ld   a, a                                        ; $68dd: $7f
	add  c                                           ; $68de: $81
	rst  $38                                         ; $68df: $ff
	ld   [bc], a                                     ; $68e0: $02
	cp   a                                           ; $68e1: $bf
	rst  $38                                         ; $68e2: $ff
	cp   a                                           ; $68e3: $bf
	add  b                                           ; $68e4: $80
	rst  $38                                         ; $68e5: $ff
	add  b                                           ; $68e6: $80
	ccf                                              ; $68e7: $3f
	inc  bc                                          ; $68e8: $03
	rst  $38                                         ; $68e9: $ff
	cp   a                                           ; $68ea: $bf
	rst  $38                                         ; $68eb: $ff
	cp   e                                           ; $68ec: $bb
	adc  l                                           ; $68ed: $8d
	db   $f4                                         ; $68ee: $f4
	nop                                              ; $68ef: $00
	inc  e                                           ; $68f0: $1c
	add  c                                           ; $68f1: $81
	rst  $38                                         ; $68f2: $ff
	ld   [bc], a                                     ; $68f3: $02
	db   $fd                                         ; $68f4: $fd
	rst  $38                                         ; $68f5: $ff
	cp   $81                                         ; $68f6: $fe $81
	rst  $38                                         ; $68f8: $ff
	add  b                                           ; $68f9: $80
	xor  d                                           ; $68fa: $aa
	add  b                                           ; $68fb: $80
	ld   d, l                                        ; $68fc: $55
	add  b                                           ; $68fd: $80
	xor  d                                           ; $68fe: $aa
	ld   bc, $5f07                                   ; $68ff: $01 $07 $5f
	add  b                                           ; $6902: $80
	rst  $38                                         ; $6903: $ff
	ld   [bc], a                                     ; $6904: $02
	rra                                              ; $6905: $1f
	rst  $30                                         ; $6906: $f7
	or   a                                           ; $6907: $b7
	add  c                                           ; $6908: $81
	and  a                                           ; $6909: $a7
	add  b                                           ; $690a: $80
	and  l                                           ; $690b: $a5
	ld   bc, $02a2                                   ; $690c: $01 $a2 $02
	add  b                                           ; $690f: $80
	dec  b                                           ; $6910: $05
	adc  b                                           ; $6911: $88
	push af                                          ; $6912: $f5
	add  b                                           ; $6913: $80
	ld   d, l                                        ; $6914: $55
	add  b                                           ; $6915: $80
	and  l                                           ; $6916: $a5
	add  b                                           ; $6917: $80
	ld   d, l                                        ; $6918: $55
	add  c                                           ; $6919: $81
	nop                                              ; $691a: $00
	dec  c                                           ; $691b: $0d
	ld   a, a                                        ; $691c: $7f
	ld   b, a                                        ; $691d: $47
	ld   a, a                                        ; $691e: $7f
	halt                                             ; $691f: $76
	ld   a, a                                        ; $6920: $7f
	ld   l, l                                        ; $6921: $6d
	ld   a, a                                        ; $6922: $7f
	ld   h, d                                        ; $6923: $62
	ld   a, a                                        ; $6924: $7f
	ld   a, h                                        ; $6925: $7c
	ld   a, a                                        ; $6926: $7f
	ld   a, [hl]                                     ; $6927: $7e
	ld   a, h                                        ; $6928: $7c
	ld   b, b                                        ; $6929: $40
	add  b                                           ; $692a: $80
	nop                                              ; $692b: $00
	ld   [$21f7], sp                                 ; $692c: $08 $f7 $21
	or   $90                                         ; $692f: $f6 $90
	ldh  a, [$30]                                    ; $6931: $f0 $30
	ldh  a, [$75]                                    ; $6933: $f0 $75
	push af                                          ; $6935: $f5
	add  b                                           ; $6936: $80
	rst  $30                                         ; $6937: $f7
	add  e                                           ; $6938: $83
	nop                                              ; $6939: $00
	ld   [bc], a                                     ; $693a: $02
	rst  $38                                         ; $693b: $ff
	ld   [hl+], a                                    ; $693c: $22
	db   $dd                                         ; $693d: $dd
	add  d                                           ; $693e: $82
	nop                                              ; $693f: $00
	add  b                                           ; $6940: $80
	ld   d, l                                        ; $6941: $55
	add  b                                           ; $6942: $80
	ld   [hl], a                                     ; $6943: $77
	add  b                                           ; $6944: $80
	ld   bc, $0080                                   ; $6945: $01 $80 $00
	inc  bc                                          ; $6948: $03
	inc  b                                           ; $6949: $04
	call c, $dc04                                    ; $694a: $dc $04 $dc
	add  d                                           ; $694d: $82
	inc  e                                           ; $694e: $1c
	add  b                                           ; $694f: $80
	ld   e, h                                        ; $6950: $5c
	add  b                                           ; $6951: $80
	call c, $f480                                    ; $6952: $dc $80 $f4
	add  d                                           ; $6955: $82
	nop                                              ; $6956: $00
	add  b                                           ; $6957: $80
	cp   $80                                         ; $6958: $fe $80
	nop                                              ; $695a: $00
	add  h                                           ; $695b: $84

jr_077_695c:
	cp   $84                                         ; $695c: $fe $84
	nop                                              ; $695e: $00
	add  b                                           ; $695f: $80
	rst  $38                                         ; $6960: $ff
	add  b                                           ; $6961: $80
	nop                                              ; $6962: $00
	add  h                                           ; $6963: $84
	ldh  a, [$84]                                    ; $6964: $f0 $84
	nop                                              ; $6966: $00
	add  b                                           ; $6967: $80
	ld   hl, sp-$80                                  ; $6968: $f8 $80
	nop                                              ; $696a: $00
	add  b                                           ; $696b: $80
	ret  nz                                          ; $696c: $c0

	add  b                                           ; $696d: $80
	pop  bc                                          ; $696e: $c1
	add  b                                           ; $696f: $80
	ret  nz                                          ; $6970: $c0

	add  b                                           ; $6971: $80
	pop  bc                                          ; $6972: $c1
	add  d                                           ; $6973: $82
	ld   b, l                                        ; $6974: $45
	nop                                              ; $6975: $00
	ld   b, c                                        ; $6976: $41
	add  c                                           ; $6977: $81
	ld   b, l                                        ; $6978: $45
	add  b                                           ; $6979: $80
	ld   b, a                                        ; $697a: $47
	ld   bc, $fffb                                   ; $697b: $01 $fb $ff
	add  b                                           ; $697e: $80
	nop                                              ; $697f: $00
	add  b                                           ; $6980: $80
	rst  $38                                         ; $6981: $ff
	nop                                              ; $6982: $00
	ldh  a, [$81]                                    ; $6983: $f0 $81
	rrca                                             ; $6985: $0f
	nop                                              ; $6986: $00
	add  hl, bc                                      ; $6987: $09
	add  e                                           ; $6988: $83
	rrca                                             ; $6989: $0f
	ld   bc, $0f09                                   ; $698a: $01 $09 $0f
	add  b                                           ; $698d: $80
	inc  c                                           ; $698e: $0c
	add  b                                           ; $698f: $80
	nop                                              ; $6990: $00
	inc  bc                                          ; $6991: $03
	ld   [$1d1a], sp                                 ; $6992: $08 $1a $1d
	rra                                              ; $6995: $1f
	add  b                                           ; $6996: $80
	ld   a, [de]                                     ; $6997: $1a
	add  b                                           ; $6998: $80
	inc  e                                           ; $6999: $1c
	add  b                                           ; $699a: $80
	dec  de                                          ; $699b: $1b
	add  e                                           ; $699c: $83
	jr   jr_077_69a3                                 ; $699d: $18 $04

	rra                                              ; $699f: $1f
	or   l                                           ; $69a0: $b5
	xor  d                                           ; $69a1: $aa
	cp   [hl]                                        ; $69a2: $be

jr_077_69a3:
	or   a                                           ; $69a3: $b7
	add  b                                           ; $69a4: $80
	and  a                                           ; $69a5: $a7
	dec  de                                          ; $69a6: $1b
	inc  hl                                          ; $69a7: $23
	ld   [hl-], a                                    ; $69a8: $32
	or   d                                           ; $69a9: $b2
	and  d                                           ; $69aa: $a2
	ld   h, $27                                      ; $69ab: $26 $27
	rrca                                             ; $69ad: $0f
	rst  $28                                         ; $69ae: $ef
	or   a                                           ; $69af: $b7
	rst  $10                                         ; $69b0: $d7
	xor  $ff                                         ; $69b1: $ee $ff
	ld   a, a                                        ; $69b3: $7f
	rst  $38                                         ; $69b4: $ff
	ld   a, a                                        ; $69b5: $7f
	rst  $38                                         ; $69b6: $ff
	cp   a                                           ; $69b7: $bf
	ld   a, a                                        ; $69b8: $7f
	ccf                                              ; $69b9: $3f
	db   $fc                                         ; $69ba: $fc
	ld   a, a                                        ; $69bb: $7f
	rst  $38                                         ; $69bc: $ff
	inc  a                                           ; $69bd: $3c
	cp   $3f                                         ; $69be: $fe $3f
	rst  $38                                         ; $69c0: $ff
	cp   $f0                                         ; $69c1: $fe $f0
	add  d                                           ; $69c3: $82
	db   $f4                                         ; $69c4: $f4
	add  b                                           ; $69c5: $80
	ldh  a, [rSB]                                    ; $69c6: $f0 $01
	rst  $20                                         ; $69c8: $e7
	rlca                                             ; $69c9: $07
	add  b                                           ; $69ca: $80
	ld   hl, sp-$80                                  ; $69cb: $f8 $80
	ld   bc, $8380                                   ; $69cd: $01 $80 $83
	add  b                                           ; $69d0: $80
	nop                                              ; $69d1: $00
	inc  bc                                          ; $69d2: $03
	ld   c, $0f                                      ; $69d3: $0e $0f
	ld   sp, $8030                                   ; $69d5: $31 $30 $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69d8: $cf
	add  b                                           ; $69d9: $80
	jr   nc, jr_077_695c                             ; $69da: $30 $80

	jp   $a480                                       ; $69dc: $c3 $80 $a4


	add  b                                           ; $69df: $80
	ld   b, b                                        ; $69e0: $40
	add  c                                           ; $69e1: $81
	nop                                              ; $69e2: $00
	ld   [$40e0], sp                                 ; $69e3: $08 $e0 $40
	cp   b                                           ; $69e6: $b8
	ret  nc                                          ; $69e7: $d0

	call z, $2b2e                                    ; $69e8: $cc $2e $2b
	dec  c                                           ; $69eb: $0d
	inc  c                                           ; $69ec: $0c
	add  b                                           ; $69ed: $80
	sub  a                                           ; $69ee: $97
	add  b                                           ; $69ef: $80
	dec  bc                                          ; $69f0: $0b
	add  b                                           ; $69f1: $80
	ld   bc, $0582                                   ; $69f2: $01 $82 $05
	add  b                                           ; $69f5: $80
	ld   [hl], l                                     ; $69f6: $75
	dec  b                                           ; $69f7: $05
	nop                                              ; $69f8: $00
	add  b                                           ; $69f9: $80
	rst  ToBoot                                         ; $69fa: $c7
	ld   a, a                                        ; $69fb: $7f
	jr   c, jr_077_69fe                              ; $69fc: $38 $00

jr_077_69fe:
	add  b                                           ; $69fe: $80
	ld   a, [$3e00]                                  ; $69ff: $fa $00 $3e
	add  c                                           ; $6a02: $81
	ld   a, [hl]                                     ; $6a03: $7e
	ld   bc, $0040                                   ; $6a04: $01 $40 $00
	add  b                                           ; $6a07: $80
	ld   a, a                                        ; $6a08: $7f
	add  b                                           ; $6a09: $80
	nop                                              ; $6a0a: $00
	add  b                                           ; $6a0b: $80
	ld   a, a                                        ; $6a0c: $7f
	add  b                                           ; $6a0d: $80
	ld   [hl], b                                     ; $6a0e: $70
	add  b                                           ; $6a0f: $80
	ld   h, b                                        ; $6a10: $60
	add  b                                           ; $6a11: $80
	cp   a                                           ; $6a12: $bf
	add  b                                           ; $6a13: $80
	xor  d                                           ; $6a14: $aa
	add  b                                           ; $6a15: $80
	nop                                              ; $6a16: $00
	add  b                                           ; $6a17: $80
	ld   e, [hl]                                     ; $6a18: $5e
	add  b                                           ; $6a19: $80
	nop                                              ; $6a1a: $00
	add  b                                           ; $6a1b: $80
	xor  l                                           ; $6a1c: $ad
	add  b                                           ; $6a1d: $80
	ld   b, e                                        ; $6a1e: $43
	add  b                                           ; $6a1f: $80
	inc  a                                           ; $6a20: $3c
	add  b                                           ; $6a21: $80
	ld   [hl], c                                     ; $6a22: $71
	add  b                                           ; $6a23: $80
	xor  c                                           ; $6a24: $a9
	add  b                                           ; $6a25: $80
	ld   bc, $6980                                   ; $6a26: $01 $80 $69
	add  b                                           ; $6a29: $80
	ld   bc, $a880                                   ; $6a2a: $01 $80 $a8
	add  b                                           ; $6a2d: $80
	cp   b                                           ; $6a2e: $b8
	add  b                                           ; $6a2f: $80
	rst  $10                                         ; $6a30: $d7
	adc  b                                           ; $6a31: $88
	db   $f4                                         ; $6a32: $f4
	add  d                                           ; $6a33: $82
	inc  b                                           ; $6a34: $04
	add  b                                           ; $6a35: $80
	ld   a, h                                        ; $6a36: $7c
	add  b                                           ; $6a37: $80
	rst  $38                                         ; $6a38: $ff
	add  b                                           ; $6a39: $80
	nop                                              ; $6a3a: $00
	add  b                                           ; $6a3b: $80
	db   $db                                         ; $6a3c: $db
	add  b                                           ; $6a3d: $80
	nop                                              ; $6a3e: $00
	add  b                                           ; $6a3f: $80
	ld   bc, $0780                                   ; $6a40: $01 $80 $07
	add  b                                           ; $6a43: $80
	dec  bc                                          ; $6a44: $0b
	add  b                                           ; $6a45: $80
	ld   d, $80                                      ; $6a46: $16 $80
	ei                                               ; $6a48: $fb
	add  b                                           ; $6a49: $80
	dec  bc                                          ; $6a4a: $0b
	add  b                                           ; $6a4b: $80
	ld   l, e                                        ; $6a4c: $6b
	add  b                                           ; $6a4d: $80
	dec  bc                                          ; $6a4e: $0b
	add  b                                           ; $6a4f: $80
	ld   a, e                                        ; $6a50: $7b
	add  b                                           ; $6a51: $80
	ldh  a, [$80]                                    ; $6a52: $f0 $80
	ret  nz                                          ; $6a54: $c0

	add  b                                           ; $6a55: $80
	nop                                              ; $6a56: $00
	add  b                                           ; $6a57: $80
	ld   hl, sp+$01                                  ; $6a58: $f8 $01
	ldh  a, [$f1]                                    ; $6a5a: $f0 $f1
	add  b                                           ; $6a5c: $80
	jp   hl                                          ; $6a5d: $e9


	ld   bc, $d0d1                                   ; $6a5e: $01 $d1 $d0
	add  b                                           ; $6a61: $80
	xor  b                                           ; $6a62: $a8
	add  b                                           ; $6a63: $80
	ret  nc                                          ; $6a64: $d0

	add  b                                           ; $6a65: $80
	jr   z, jr_077_6a6c                              ; $6a66: $28 $04

	nop                                              ; $6a68: $00
	ld   bc, $fffe                                   ; $6a69: $01 $fe $ff

jr_077_6a6c:
	ld   [bc], a                                     ; $6a6c: $02
	add  b                                           ; $6a6d: $80
	add  a                                           ; $6a6e: $87
	add  c                                           ; $6a6f: $81
	rlca                                             ; $6a70: $07
	nop                                              ; $6a71: $00
	ld   [bc], a                                     ; $6a72: $02
	add  c                                           ; $6a73: $81
	rlca                                             ; $6a74: $07
	add  d                                           ; $6a75: $82
	dec  b                                           ; $6a76: $05
	nop                                              ; $6a77: $00
	rst  $38                                         ; $6a78: $ff
	adc  b                                           ; $6a79: $88
	nop                                              ; $6a7a: $00
	add  h                                           ; $6a7b: $84
	ld   bc, $1c80                                   ; $6a7c: $01 $80 $1c
	add  e                                           ; $6a7f: $83
	nop                                              ; $6a80: $00
	add  b                                           ; $6a81: $80
	inc  e                                           ; $6a82: $1c
	add  b                                           ; $6a83: $80
	db   $e4                                         ; $6a84: $e4
	add  d                                           ; $6a85: $82
	add  h                                           ; $6a86: $84
	ld   bc, $eb6b                                   ; $6a87: $01 $6b $eb
	add  b                                           ; $6a8a: $80
	jp   $c404                                       ; $6a8b: $c3 $04 $c4


	rst  ToBoot                                         ; $6a8e: $c7
	ret  nz                                          ; $6a8f: $c0

	rst  $38                                         ; $6a90: $ff
	cp   a                                           ; $6a91: $bf
	add  b                                           ; $6a92: $80
	db   $e3                                         ; $6a93: $e3
	add  d                                           ; $6a94: $82
	inc  bc                                          ; $6a95: $03
	add  hl, bc                                      ; $6a96: $09
	nop                                              ; $6a97: $00
	db   $ed                                         ; $6a98: $ed
	rst  $38                                         ; $6a99: $ff
	sbc  a                                           ; $6a9a: $9f
	rst  $38                                         ; $6a9b: $ff
	rrca                                             ; $6a9c: $0f
	rst  $38                                         ; $6a9d: $ff
	ld   a, a                                        ; $6a9e: $7f
	rst  $38                                         ; $6a9f: $ff
	cp   $80                                         ; $6aa0: $fe $80
	db   $fc                                         ; $6aa2: $fc
	add  b                                           ; $6aa3: $80
	ldh  a, [$80]                                    ; $6aa4: $f0 $80
	add  b                                           ; $6aa6: $80
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	add  b                                           ; $6aa9: $80
	sub  a                                           ; $6aaa: $97
	add  b                                           ; $6aab: $80
	adc  d                                           ; $6aac: $8a
	add  b                                           ; $6aad: $80
	sub  [hl]                                        ; $6aae: $96
	add  b                                           ; $6aaf: $80
	adc  d                                           ; $6ab0: $8a
	add  b                                           ; $6ab1: $80
	sub  b                                           ; $6ab2: $90

jr_077_6ab3:
	add  b                                           ; $6ab3: $80
	adc  a                                           ; $6ab4: $8f
	add  b                                           ; $6ab5: $80
	ld   a, a                                        ; $6ab6: $7f
	add  b                                           ; $6ab7: $80
	nop                                              ; $6ab8: $00
	add  b                                           ; $6ab9: $80
	ld   a, h                                        ; $6aba: $7c
	add  b                                           ; $6abb: $80
	add  h                                           ; $6abc: $84
	add  b                                           ; $6abd: $80
	db   $fc                                         ; $6abe: $fc
	add  b                                           ; $6abf: $80
	add  b                                           ; $6ac0: $80
	add  b                                           ; $6ac1: $80
	rra                                              ; $6ac2: $1f
	add  d                                           ; $6ac3: $82
	rst  $38                                         ; $6ac4: $ff
	add  b                                           ; $6ac5: $80
	nop                                              ; $6ac6: $00
	add  b                                           ; $6ac7: $80
	ei                                               ; $6ac8: $fb
	add  b                                           ; $6ac9: $80
	add  l                                           ; $6aca: $85
	add  b                                           ; $6acb: $80
	db   $fd                                         ; $6acc: $fd
	add  b                                           ; $6acd: $80
	ld   bc, $e080                                   ; $6ace: $01 $80 $e0
	add  b                                           ; $6ad1: $80
	cp   $80                                         ; $6ad2: $fe $80
	rst  $20                                         ; $6ad4: $e7
	add  b                                           ; $6ad5: $80
	ld   bc, $fa86                                   ; $6ad6: $01 $86 $fa
	add  b                                           ; $6ad9: $80
	ld   a, d                                        ; $6ada: $7a
	add  b                                           ; $6adb: $80
	ld   a, [de]                                     ; $6adc: $1a
	add  b                                           ; $6add: $80
	jp   nz, $e280                                   ; $6ade: $c2 $80 $e2

	dec  b                                           ; $6ae1: $05
	ld   h, b                                        ; $6ae2: $60
	ld   a, a                                        ; $6ae3: $7f
	ld   b, a                                        ; $6ae4: $47
	ld   a, a                                        ; $6ae5: $7f
	rra                                              ; $6ae6: $1f
	ccf                                              ; $6ae7: $3f
	add  b                                           ; $6ae8: $80
	ld   a, a                                        ; $6ae9: $7f
	ld   bc, $fff8                                   ; $6aea: $01 $f8 $ff
	add  b                                           ; $6aed: $80
	ccf                                              ; $6aee: $3f
	add  b                                           ; $6aef: $80
	ld   b, h                                        ; $6af0: $44
	add  b                                           ; $6af1: $80
	jr   c, jr_077_6af5                              ; $6af2: $38 $01

	ld   a, a                                        ; $6af4: $7f

jr_077_6af5:
	rst  $38                                         ; $6af5: $ff
	add  b                                           ; $6af6: $80
	rst  JumpTable                                         ; $6af7: $df
	ld   bc, $cf4f                                   ; $6af8: $01 $4f $cf
	add  b                                           ; $6afb: $80
	rst  ToBoot                                         ; $6afc: $c7
	add  b                                           ; $6afd: $80
	add  e                                           ; $6afe: $83
	add  b                                           ; $6aff: $80
	inc  bc                                          ; $6b00: $03
	add  b                                           ; $6b01: $80
	ld   c, $80                                      ; $6b02: $0e $80
	db   $fd                                         ; $6b04: $fd
	add  b                                           ; $6b05: $80
	rrca                                             ; $6b06: $0f
	add  b                                           ; $6b07: $80
	ld   l, a                                        ; $6b08: $6f
	add  b                                           ; $6b09: $80
	ld   [hl], a                                     ; $6b0a: $77
	add  b                                           ; $6b0b: $80
	ld   a, b                                        ; $6b0c: $78
	add  b                                           ; $6b0d: $80
	ld   a, a                                        ; $6b0e: $7f
	add  d                                           ; $6b0f: $82
	nop                                              ; $6b10: $00
	add  b                                           ; $6b11: $80
	ld   b, b                                        ; $6b12: $40
	add  h                                           ; $6b13: $84
	ld   a, h                                        ; $6b14: $7c
	add  d                                           ; $6b15: $82
	db   $fc                                         ; $6b16: $fc
	add  d                                           ; $6b17: $82
	nop                                              ; $6b18: $00
	add  b                                           ; $6b19: $80
	ld   [hl], h                                     ; $6b1a: $74
	add  b                                           ; $6b1b: $80
	cpl                                              ; $6b1c: $2f
	add  b                                           ; $6b1d: $80
	ld   e, a                                        ; $6b1e: $5f
	add  b                                           ; $6b1f: $80
	cpl                                              ; $6b20: $2f
	add  b                                           ; $6b21: $80
	ld   e, a                                        ; $6b22: $5f
	add  b                                           ; $6b23: $80

jr_077_6b24:
	inc  l                                           ; $6b24: $2c
	rlca                                             ; $6b25: $07
	ld   e, e                                        ; $6b26: $5b
	ld   e, a                                        ; $6b27: $5f
	inc  hl                                          ; $6b28: $23
	ccf                                              ; $6b29: $3f
	rra                                              ; $6b2a: $1f
	ccf                                              ; $6b2b: $3f
	ld   sp, $8009                                   ; $6b2c: $31 $09 $80
	ld   d, b                                        ; $6b2f: $50
	add  h                                           ; $6b30: $84
	jr   nc, jr_077_6ab3                             ; $6b31: $30 $80

	or   b                                           ; $6b33: $b0
	add  b                                           ; $6b34: $80
	ret  nc                                          ; $6b35: $d0

	add  b                                           ; $6b36: $80
	add  sp, $03                                     ; $6b37: $e8 $03
	nop                                              ; $6b39: $00
	ld   bc, $c0c1                                   ; $6b3a: $01 $c1 $c0
	add  b                                           ; $6b3d: $80
	pop  hl                                          ; $6b3e: $e1
	add  l                                           ; $6b3f: $85
	ldh  [$81], a                                    ; $6b40: $e0 $81
	pop  hl                                          ; $6b42: $e1
	nop                                              ; $6b43: $00
	ld   bc, $0581                                   ; $6b44: $01 $81 $05
	inc  bc                                          ; $6b47: $03
	pop  bc                                          ; $6b48: $c1
	push bc                                          ; $6b49: $c5
	dec  a                                           ; $6b4a: $3d
	inc  a                                           ; $6b4b: $3c
	add  b                                           ; $6b4c: $80
	pop  hl                                          ; $6b4d: $e1
	add  b                                           ; $6b4e: $80
	ld   a, $01                                      ; $6b4f: $3e $01
	ld   bc, $80c1                                   ; $6b51: $01 $c1 $80
	ld   hl, sp+$00                                  ; $6b54: $f8 $00
	ccf                                              ; $6b56: $3f
	add  l                                           ; $6b57: $85
	ld   bc, $0202                                   ; $6b58: $01 $02 $02
	nop                                              ; $6b5b: $00
	inc  c                                           ; $6b5c: $0c
	add  c                                           ; $6b5d: $81
	nop                                              ; $6b5e: $00
	inc  bc                                          ; $6b5f: $03
	ld   bc, $a200                                   ; $6b60: $01 $00 $a2
	xor  h                                           ; $6b63: $ac
	add  b                                           ; $6b64: $80
	call nc, $8701                                   ; $6b65: $d4 $01 $87
	add  h                                           ; $6b68: $84
	add  b                                           ; $6b69: $80
	call nc, $8c1e                                   ; $6b6a: $d4 $1e $8c
	add  b                                           ; $6b6d: $80
	or   a                                           ; $6b6e: $b7
	add  b                                           ; $6b6f: $80
	ld   hl, sp+$00                                  ; $6b70: $f8 $00
	ret  nz                                          ; $6b72: $c0

	nop                                              ; $6b73: $00
	rra                                              ; $6b74: $1f
	nop                                              ; $6b75: $00
	ldh  [rP1], a                                    ; $6b76: $e0 $00
	rlca                                             ; $6b78: $07
	nop                                              ; $6b79: $00
	jr   c, jr_077_6b7c                              ; $6b7a: $38 $00

jr_077_6b7c:
	pop  bc                                          ; $6b7c: $c1
	nop                                              ; $6b7d: $00
	rrca                                             ; $6b7e: $0f
	nop                                              ; $6b7f: $00
	ld   a, [bc]                                     ; $6b80: $0a
	nop                                              ; $6b81: $00
	inc  b                                           ; $6b82: $04
	nop                                              ; $6b83: $00
	rst  $38                                         ; $6b84: $ff
	inc  bc                                          ; $6b85: $03
	jp   $8fcf                                       ; $6b86: $c3 $cf $8f


	ccf                                              ; $6b89: $3f
	cp   a                                           ; $6b8a: $bf
	add  b                                           ; $6b8b: $80
	rra                                              ; $6b8c: $1f
	add  b                                           ; $6b8d: $80
	rlca                                             ; $6b8e: $07
	dec  b                                           ; $6b8f: $05
	nop                                              ; $6b90: $00
	ret  nz                                          ; $6b91: $c0

	nop                                              ; $6b92: $00
	jr   c, jr_077_6b95                              ; $6b93: $38 $00

jr_077_6b95:
	ld   hl, sp-$80                                  ; $6b95: $f8 $80
	db   $fc                                         ; $6b97: $fc
	add  h                                           ; $6b98: $84
	rst  $38                                         ; $6b99: $ff
	ld   bc, $fbf8                                   ; $6b9a: $01 $f8 $fb
	add  c                                           ; $6b9d: $81
	inc  bc                                          ; $6b9e: $03
	ld   [bc], a                                     ; $6b9f: $02
	rlca                                             ; $6ba0: $07
	nop                                              ; $6ba1: $00
	jr   c, jr_077_6b24                              ; $6ba2: $38 $80

	ccf                                              ; $6ba4: $3f
	dec  b                                           ; $6ba5: $05
	rst  $38                                         ; $6ba6: $ff
	rst  JumpTable                                         ; $6ba7: $df
	rst  $38                                         ; $6ba8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba9: $cf
	jr   nz, @-$0e                                   ; $6baa: $20 $f0

	add  b                                           ; $6bac: $80
	ldh  [$80], a                                    ; $6bad: $e0 $80
	ret  nz                                          ; $6baf: $c0

	add  c                                           ; $6bb0: $81
	nop                                              ; $6bb1: $00
	ld   b, $18                                      ; $6bb2: $06 $18
	rst  $20                                         ; $6bb4: $e7
	add  e                                           ; $6bb5: $83
	sub  e                                           ; $6bb6: $93
	ld   de, $2021                                   ; $6bb7: $11 $21 $20
	add  b                                           ; $6bba: $80
	add  b                                           ; $6bbb: $80
	ld   [$c242], sp                                 ; $6bbc: $08 $42 $c2
	inc  l                                           ; $6bbf: $2c
	ld   l, a                                        ; $6bc0: $6f
	db   $10                                         ; $6bc1: $10
	inc  a                                           ; $6bc2: $3c
	nop                                              ; $6bc3: $00
	ld   l, a                                        ; $6bc4: $6f
	add  b                                           ; $6bc5: $80
	add  b                                           ; $6bc6: $80
	ld   hl, sp-$7e                                  ; $6bc7: $f8 $82
	db   $ec                                         ; $6bc9: $ec
	add  b                                           ; $6bca: $80
	and  $80                                         ; $6bcb: $e6 $80
	add  $05                                         ; $6bcd: $c6 $05
	rst  $20                                         ; $6bcf: $e7
	ld   h, a                                        ; $6bd0: $67
	ld   [hl], a                                     ; $6bd1: $77
	scf                                              ; $6bd2: $37
	sub  c                                           ; $6bd3: $91
	ld   d, c                                        ; $6bd4: $51
	add  b                                           ; $6bd5: $80
	ld   sp, $5180                                   ; $6bd6: $31 $80 $51
	add  b                                           ; $6bd9: $80
	ld   bc, $3004                                   ; $6bda: $01 $04 $30
	jr   c, jr_077_6c0f                              ; $6bdd: $38 $30

	ccf                                              ; $6bdf: $3f
	rlca                                             ; $6be0: $07
	add  c                                           ; $6be1: $81
	nop                                              ; $6be2: $00
	add  b                                           ; $6be3: $80
	ld   a, [hl]                                     ; $6be4: $7e
	add  b                                           ; $6be5: $80
	ld   a, l                                        ; $6be6: $7d
	add  b                                           ; $6be7: $80
	ld   a, d                                        ; $6be8: $7a
	add  b                                           ; $6be9: $80
	ld   [hl], l                                     ; $6bea: $75
	dec  b                                           ; $6beb: $05
	ld   [bc], a                                     ; $6bec: $02
	ldh  a, [c]                                      ; $6bed: $f2
	pop  af                                          ; $6bee: $f1
	db   $fd                                         ; $6bef: $fd
	db   $fc                                         ; $6bf0: $fc
	nop                                              ; $6bf1: $00
	add  b                                           ; $6bf2: $80
	dec  e                                           ; $6bf3: $1d
	add  b                                           ; $6bf4: $80
	ld   c, h                                        ; $6bf5: $4c
	add  b                                           ; $6bf6: $80

Call_077_6bf7:
	ld   l, h                                        ; $6bf7: $6c
	add  b                                           ; $6bf8: $80
	ld   l, [hl]                                     ; $6bf9: $6e
	add  b                                           ; $6bfa: $80
	halt                                             ; $6bfb: $76
	add  b                                           ; $6bfc: $80
	ld   a, b                                        ; $6bfd: $78
	add  b                                           ; $6bfe: $80
	ld   a, a                                        ; $6bff: $7f
	add  b                                           ; $6c00: $80
	ld   a, [hl+]                                    ; $6c01: $2a
	add  b                                           ; $6c02: $80
	ld   d, l                                        ; $6c03: $55
	add  h                                           ; $6c04: $84
	db   $f4                                         ; $6c05: $f4
	add  d                                           ; $6c06: $82
	db   $ec                                         ; $6c07: $ec
	add  b                                           ; $6c08: $80
	inc  e                                           ; $6c09: $1c
	add  b                                           ; $6c0a: $80
	xor  b                                           ; $6c0b: $a8
	add  b                                           ; $6c0c: $80
	ld   d, h                                        ; $6c0d: $54
	add  hl, bc                                      ; $6c0e: $09

jr_077_6c0f:
	rrca                                             ; $6c0f: $0f
	ccf                                              ; $6c10: $3f
	scf                                              ; $6c11: $37
	rra                                              ; $6c12: $1f
	dec  de                                          ; $6c13: $1b
	rrca                                             ; $6c14: $0f
	cpl                                              ; $6c15: $2f
	daa                                              ; $6c16: $27
	dec  [hl]                                        ; $6c17: $35
	ld   sp, $2080                                   ; $6c18: $31 $80 $20
	add  b                                           ; $6c1b: $80
	jr   @+$0d                                       ; $6c1c: $18 $0b

	nop                                              ; $6c1e: $00
	rlca                                             ; $6c1f: $07
	and  $e1                                         ; $6c20: $e6 $e1
	ldh  [c], a                                      ; $6c22: $e2
	and  $e4                                         ; $6c23: $e6 $e4
	add  sp, -$36                                    ; $6c25: $e8 $ca
	jp   nc, $9484                                   ; $6c27: $d2 $84 $94

	add  b                                           ; $6c2a: $80
	rlca                                             ; $6c2b: $07
	dec  b                                           ; $6c2c: $05
	nop                                              ; $6c2d: $00
	daa                                              ; $6c2e: $27
	dec  h                                           ; $6c2f: $25
	and  $e5                                         ; $6c30: $e6 $e5
	ld   bc, $2080                                   ; $6c32: $01 $80 $20
	add  b                                           ; $6c35: $80
	pop  hl                                          ; $6c36: $e1
	add  b                                           ; $6c37: $80
	ld   b, b                                        ; $6c38: $40
	add  b                                           ; $6c39: $80
	ld   c, b                                        ; $6c3a: $48
	add  d                                           ; $6c3b: $82
	adc  b                                           ; $6c3c: $88
	add  b                                           ; $6c3d: $80
	ld   [$0003], sp                                 ; $6c3e: $08 $03 $00

jr_077_6c41:
	add  [hl]                                        ; $6c41: $86
	ld   a, [de]                                     ; $6c42: $1a
	sbc  [hl]                                        ; $6c43: $9e
	add  c                                           ; $6c44: $81
	rra                                              ; $6c45: $1f
	inc  bc                                          ; $6c46: $03
	ccf                                              ; $6c47: $3f
	dec  l                                           ; $6c48: $2d
	ld   e, a                                        ; $6c49: $5f
	ld   d, a                                        ; $6c4a: $57
	add  b                                           ; $6c4b: $80
	adc  a                                           ; $6c4c: $8f
	add  c                                           ; $6c4d: $81
	xor  a                                           ; $6c4e: $af
	ld   [bc], a                                     ; $6c4f: $02
	ld   e, a                                        ; $6c50: $5f
	nop                                              ; $6c51: $00
	ld   [$0f8c], sp                                 ; $6c52: $08 $8c $0f
	ld   [bc], a                                     ; $6c55: $02
	ld   bc, $03fd                                   ; $6c56: $01 $fd $03
	adc  e                                           ; $6c59: $8b
	rst  $38                                         ; $6c5a: $ff
	ld   [bc], a                                     ; $6c5b: $02
	db   $fc                                         ; $6c5c: $fc
	db   $fd                                         ; $6c5d: $fd
	cp   $8b                                         ; $6c5e: $fe $8b
	rst  $38                                         ; $6c60: $ff
	ld   [bc], a                                     ; $6c61: $02
	nop                                              ; $6c62: $00
	cp   $01                                         ; $6c63: $fe $01
	adc  d                                           ; $6c65: $8a
	rst  $38                                         ; $6c66: $ff
	ld   [bc], a                                     ; $6c67: $02
	ld   hl, sp+$00                                  ; $6c68: $f8 $00
	rlca                                             ; $6c6a: $07
	add  b                                           ; $6c6b: $80
	add  b                                           ; $6c6c: $80
	adc  d                                           ; $6c6d: $8a
	rst  $38                                         ; $6c6e: $ff
	add  c                                           ; $6c6f: $81
	nop                                              ; $6c70: $00
	inc  bc                                          ; $6c71: $03
	inc  a                                           ; $6c72: $3c
	ret  nz                                          ; $6c73: $c0

	rst  $38                                         ; $6c74: $ff
	db   $fc                                         ; $6c75: $fc
	add  [hl]                                        ; $6c76: $86
	rst  $38                                         ; $6c77: $ff
	ld   bc, $1ce3                                   ; $6c78: $01 $e3 $1c
	add  b                                           ; $6c7b: $80
	ld   [bc], a                                     ; $6c7c: $02
	add  hl, bc                                      ; $6c7d: $09
	ld   h, c                                        ; $6c7e: $61
	ld   l, c                                        ; $6c7f: $69
	sbc  b                                           ; $6c80: $98
	inc  d                                           ; $6c81: $14
	call nc, $ca92                                   ; $6c82: $d4 $92 $ca
	ld   [$e5f6], a                                  ; $6c85: $ea $f6 $e5
	add  b                                           ; $6c88: $80
	pop  bc                                          ; $6c89: $c1
	nop                                              ; $6c8a: $00
	db   $fd                                         ; $6c8b: $fd
	add  d                                           ; $6c8c: $82
	inc  de                                          ; $6c8d: $13
	nop                                              ; $6c8e: $00
	inc  bc                                          ; $6c8f: $03
	add  b                                           ; $6c90: $80
	adc  e                                           ; $6c91: $8b
	nop                                              ; $6c92: $00
	dec  bc                                          ; $6c93: $0b
	add  c                                           ; $6c94: $81
	inc  bc                                          ; $6c95: $03
	inc  b                                           ; $6c96: $04
	ld   b, a                                        ; $6c97: $47
	ld   b, e                                        ; $6c98: $43
	inc  bc                                          ; $6c99: $03
	ld   bc, $807e                                   ; $6c9a: $01 $7e $80
	add  c                                           ; $6c9d: $81
	inc  bc                                          ; $6c9e: $03
	add  e                                           ; $6c9f: $83
	jp   nz, Jump_077_41c3                           ; $6ca0: $c2 $c3 $41

	add  c                                           ; $6ca3: $81
	ld   b, e                                        ; $6ca4: $43
	add  b                                           ; $6ca5: $80
	ld   h, e                                        ; $6ca6: $63
	add  b                                           ; $6ca7: $80
	ld   hl, $b080                                   ; $6ca8: $21 $80 $b0
	inc  b                                           ; $6cab: $04
	jr   @-$02                                       ; $6cac: $18 $fc

	ret  c                                           ; $6cae: $d8

	db   $fc                                         ; $6caf: $fc
	cp   h                                           ; $6cb0: $bc
	add  c                                           ; $6cb1: $81
	db   $fc                                         ; $6cb2: $fc
	add  b                                           ; $6cb3: $80
	ld   hl, sp+$05                                  ; $6cb4: $f8 $05
	cp   b                                           ; $6cb6: $b8
	ld   hl, sp+$20                                  ; $6cb7: $f8 $20
	ldh  a, [$30]                                    ; $6cb9: $f0 $30
	jr   nz, jr_077_6c41                             ; $6cbb: $20 $84

	nop                                              ; $6cbd: $00
	ld   bc, $013e                                   ; $6cbe: $01 $3e $01
	add  b                                           ; $6cc1: $80
	nop                                              ; $6cc2: $00
	dec  b                                           ; $6cc3: $05
	jr   nz, jr_077_6cc6                             ; $6cc4: $20 $00

jr_077_6cc6:
	stop                                             ; $6cc6: $10 $00
	ld   [$8007], sp                                 ; $6cc8: $08 $07 $80
	nop                                              ; $6ccb: $00
	dec  c                                           ; $6ccc: $0d
	inc  e                                           ; $6ccd: $1c
	ld   h, b                                        ; $6cce: $60
	inc  b                                           ; $6ccf: $04
	add  h                                           ; $6cd0: $84
	ld   b, b                                        ; $6cd1: $40
	jp   $e121                                       ; $6cd2: $c3 $21 $e1


	db   $10                                         ; $6cd5: $10
	ld   [hl], e                                     ; $6cd6: $73
	inc  bc                                          ; $6cd7: $03
	ccf                                              ; $6cd8: $3f
	nop                                              ; $6cd9: $00
	ldh  [$80], a                                    ; $6cda: $e0 $80
	ld   sp, $3e84                                   ; $6cdc: $31 $84 $3e
	add  b                                           ; $6cdf: $80
	inc  a                                           ; $6ce0: $3c
	add  b                                           ; $6ce1: $80
	jr   nc, @-$7e                                   ; $6ce2: $30 $80

	nop                                              ; $6ce4: $00
	add  b                                           ; $6ce5: $80
	ld   a, $03                                      ; $6ce6: $3e $03
	nop                                              ; $6ce8: $00
	ldh  [$e3], a                                    ; $6ce9: $e0 $e3
	inc  bc                                          ; $6ceb: $03
	add  d                                           ; $6cec: $82
	ld   h, a                                        ; $6ced: $67
	add  b                                           ; $6cee: $80
	inc  b                                           ; $6cef: $04
	add  d                                           ; $6cf0: $82
	nop                                              ; $6cf1: $00
	ld   [bc], a                                     ; $6cf2: $02
	rlca                                             ; $6cf3: $07
	ld   bc, $83ce                                   ; $6cf4: $01 $ce $83
	ret  z                                           ; $6cf7: $c8

	add  b                                           ; $6cf8: $80
	ret  nz                                          ; $6cf9: $c0

	add  c                                           ; $6cfa: $81
	nop                                              ; $6cfb: $00
	add  c                                           ; $6cfc: $81
	ld   bc, $c980                                   ; $6cfd: $01 $80 $c9
	nop                                              ; $6d00: $00
	ld   b, $81                                      ; $6d01: $06 $81
	xor  a                                           ; $6d03: $af
	inc  b                                           ; $6d04: $04
	xor  l                                           ; $6d05: $ad
	xor  a                                           ; $6d06: $af
	and  a                                           ; $6d07: $a7
	ld   a, a                                        ; $6d08: $7f
	ld   l, a                                        ; $6d09: $6f
	add  b                                           ; $6d0a: $80
	ccf                                              ; $6d0b: $3f
	ld   bc, $1d1f                                   ; $6d0c: $01 $1f $1d
	add  b                                           ; $6d0f: $80
	rra                                              ; $6d10: $1f
	nop                                              ; $6d11: $00
	sbc  a                                           ; $6d12: $9f
	inc  e                                           ; $6d13: $1c
	ld   [bc], a                                     ; $6d14: $02
	add  [hl]                                        ; $6d15: $86
	nop                                              ; $6d16: $00
	add  b                                           ; $6d17: $80
	ld   a, [bc]                                     ; $6d18: $0a
	add  b                                           ; $6d19: $80
	dec  b                                           ; $6d1a: $05
	adc  d                                           ; $6d1b: $8a
	nop                                              ; $6d1c: $00
	inc  bc                                          ; $6d1d: $03
	rst  $38                                         ; $6d1e: $ff
	cp   $56                                         ; $6d1f: $fe $56
	ld   d, a                                        ; $6d21: $57
	add  b                                           ; $6d22: $80
	ld   a, [hl+]                                    ; $6d23: $2a
	add  b                                           ; $6d24: $80
	dec  b                                           ; $6d25: $05
	add  [hl]                                        ; $6d26: $86
	nop                                              ; $6d27: $00
	ld   [$7f80], sp                                 ; $6d28: $08 $80 $7f
	rrca                                             ; $6d2b: $0f
	adc  a                                           ; $6d2c: $8f
	add  c                                           ; $6d2d: $81
	pop  af                                          ; $6d2e: $f1
	db   $10                                         ; $6d2f: $10
	ld   e, $01                                      ; $6d30: $1e $01
	add  l                                           ; $6d32: $85
	nop                                              ; $6d33: $00
	dec  b                                           ; $6d34: $05
	ccf                                              ; $6d35: $3f
	rst  $38                                         ; $6d36: $ff
	rst  ToBoot                                         ; $6d37: $c7
	rst  $38                                         ; $6d38: $ff
	ld   hl, sp-$01                                  ; $6d39: $f8 $ff
	add  b                                           ; $6d3b: $80
	ccf                                              ; $6d3c: $3f
	nop                                              ; $6d3d: $00
	rst  $38                                         ; $6d3e: $ff
	add  l                                           ; $6d3f: $85
	nop                                              ; $6d40: $00
	add  h                                           ; $6d41: $84
	rst  $38                                         ; $6d42: $ff
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	add  b                                           ; $6d45: $80
	rst  $38                                         ; $6d46: $ff
	add  l                                           ; $6d47: $85
	nop                                              ; $6d48: $00
	add  h                                           ; $6d49: $84
	rst  $38                                         ; $6d4a: $ff
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	add  b                                           ; $6d4d: $80
	rst  $38                                         ; $6d4e: $ff
	add  l                                           ; $6d4f: $85
	nop                                              ; $6d50: $00
	add  h                                           ; $6d51: $84
	rst  $38                                         ; $6d52: $ff
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	add  b                                           ; $6d55: $80
	rst  $38                                         ; $6d56: $ff
	add  l                                           ; $6d57: $85
	nop                                              ; $6d58: $00
	add  h                                           ; $6d59: $84
	rst  $38                                         ; $6d5a: $ff
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	add  b                                           ; $6d5d: $80
	rst  $38                                         ; $6d5e: $ff
	add  l                                           ; $6d5f: $85
	nop                                              ; $6d60: $00
	add  h                                           ; $6d61: $84
	rst  $38                                         ; $6d62: $ff
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	add  b                                           ; $6d65: $80
	rst  $38                                         ; $6d66: $ff
	add  l                                           ; $6d67: $85
	nop                                              ; $6d68: $00
	add  h                                           ; $6d69: $84
	rst  $38                                         ; $6d6a: $ff
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	add  b                                           ; $6d6d: $80
	rst  $38                                         ; $6d6e: $ff
	add  l                                           ; $6d6f: $85
	nop                                              ; $6d70: $00
	add  h                                           ; $6d71: $84
	rst  $38                                         ; $6d72: $ff
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	add  b                                           ; $6d75: $80
	rst  $38                                         ; $6d76: $ff
	add  l                                           ; $6d77: $85
	nop                                              ; $6d78: $00
	add  h                                           ; $6d79: $84
	rst  $38                                         ; $6d7a: $ff
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	add  b                                           ; $6d7d: $80
	rst  $38                                         ; $6d7e: $ff
	add  l                                           ; $6d7f: $85
	nop                                              ; $6d80: $00
	add  h                                           ; $6d81: $84
	rst  $38                                         ; $6d82: $ff
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	add  b                                           ; $6d85: $80
	rst  $38                                         ; $6d86: $ff
	add  l                                           ; $6d87: $85
	nop                                              ; $6d88: $00
	add  h                                           ; $6d89: $84
	rst  $38                                         ; $6d8a: $ff
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	add  b                                           ; $6d8d: $80
	rst  $38                                         ; $6d8e: $ff
	add  l                                           ; $6d8f: $85
	nop                                              ; $6d90: $00
	add  h                                           ; $6d91: $84
	rst  $38                                         ; $6d92: $ff
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	add  b                                           ; $6d95: $80
	rst  $38                                         ; $6d96: $ff
	add  l                                           ; $6d97: $85
	nop                                              ; $6d98: $00
	add  h                                           ; $6d99: $84
	rst  $38                                         ; $6d9a: $ff
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	add  b                                           ; $6d9d: $80
	rst  $38                                         ; $6d9e: $ff
	sub  e                                           ; $6d9f: $93
	nop                                              ; $6da0: $00
	ld   bc, $0001                                   ; $6da1: $01 $01 $00
	add  b                                           ; $6da4: $80
	ld   [bc], a                                     ; $6da5: $02
	add  b                                           ; $6da6: $80
	inc  b                                           ; $6da7: $04
	add  b                                           ; $6da8: $80
	ld   [bc], a                                     ; $6da9: $02
	add  b                                           ; $6daa: $80
	inc  b                                           ; $6dab: $04
	ld   bc, $0203                                   ; $6dac: $01 $03 $02
	add  b                                           ; $6daf: $80
	ld   bc, $0080                                   ; $6db0: $01 $80 $00
	add  b                                           ; $6db3: $80
	ret  nz                                          ; $6db4: $c0

	dec  c                                           ; $6db5: $0d
	ld   hl, sp+$18                                  ; $6db6: $f8 $18
	rra                                              ; $6db8: $1f
	db   $e3                                         ; $6db9: $e3
	inc  bc                                          ; $6dba: $03
	db   $fc                                         ; $6dbb: $fc
	nop                                              ; $6dbc: $00
	rst  $38                                         ; $6dbd: $ff
	db   $e4                                         ; $6dbe: $e4
	rst  ToBoot                                         ; $6dbf: $c7
	ld   b, b                                        ; $6dc0: $40
	ld   a, b                                        ; $6dc1: $78
	cp   c                                           ; $6dc2: $b9
	cp   a                                           ; $6dc3: $bf
	add  b                                           ; $6dc4: $80
	ld   e, a                                        ; $6dc5: $5f
	add  b                                           ; $6dc6: $80
	ccf                                              ; $6dc7: $3f
	add  b                                           ; $6dc8: $80
	rra                                              ; $6dc9: $1f
	ld   bc, $2faf                                   ; $6dca: $01 $af $2f
	add  b                                           ; $6dcd: $80
	rla                                              ; $6dce: $17
	nop                                              ; $6dcf: $00
	add  c                                           ; $6dd0: $81
	add  c                                           ; $6dd1: $81
	rst  $38                                         ; $6dd2: $ff
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	adc  c                                           ; $6dd5: $89
	rst  $38                                         ; $6dd6: $ff
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	add  c                                           ; $6dd9: $81
	rst  $38                                         ; $6dda: $ff
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	add  h                                           ; $6ddd: $84
	rst  $38                                         ; $6dde: $ff
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	add  b                                           ; $6de1: $80
	ld   a, a                                        ; $6de2: $7f
	ld   [bc], a                                     ; $6de3: $02
	ld   a, [hl+]                                    ; $6de4: $2a
	ld   d, l                                        ; $6de5: $55
	add  b                                           ; $6de6: $80
	add  c                                           ; $6de7: $81
	rst  $38                                         ; $6de8: $ff
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	add  h                                           ; $6deb: $84
	rst  $38                                         ; $6dec: $ff
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	add  b                                           ; $6def: $80
	ld   sp, hl                                      ; $6df0: $f9
	ld   [bc], a                                     ; $6df1: $02
	xor  d                                           ; $6df2: $aa
	ld   d, a                                        ; $6df3: $57
	ld   [bc], a                                     ; $6df4: $02
	add  c                                           ; $6df5: $81
	rst  $38                                         ; $6df6: $ff
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	add  h                                           ; $6df9: $84
	rst  $38                                         ; $6dfa: $ff
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	add  b                                           ; $6dfd: $80
	rst  $38                                         ; $6dfe: $ff
	ld   [bc], a                                     ; $6dff: $02
	xor  d                                           ; $6e00: $aa
	ld   d, l                                        ; $6e01: $55
	nop                                              ; $6e02: $00
	add  c                                           ; $6e03: $81
	rst  $38                                         ; $6e04: $ff
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	add  h                                           ; $6e07: $84
	rst  $38                                         ; $6e08: $ff
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	add  b                                           ; $6e0b: $80
	rst  $38                                         ; $6e0c: $ff
	ld   [bc], a                                     ; $6e0d: $02
	xor  d                                           ; $6e0e: $aa
	ld   d, l                                        ; $6e0f: $55
	nop                                              ; $6e10: $00
	add  c                                           ; $6e11: $81
	rst  $38                                         ; $6e12: $ff
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	add  h                                           ; $6e15: $84
	rst  $38                                         ; $6e16: $ff
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	add  b                                           ; $6e19: $80
	rst  $38                                         ; $6e1a: $ff
	ld   [bc], a                                     ; $6e1b: $02
	xor  d                                           ; $6e1c: $aa
	ld   d, l                                        ; $6e1d: $55
	nop                                              ; $6e1e: $00
	add  c                                           ; $6e1f: $81
	rst  $38                                         ; $6e20: $ff
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	add  h                                           ; $6e23: $84
	rst  $38                                         ; $6e24: $ff
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	add  b                                           ; $6e27: $80
	rst  $38                                         ; $6e28: $ff
	ld   [bc], a                                     ; $6e29: $02
	xor  d                                           ; $6e2a: $aa
	ld   d, l                                        ; $6e2b: $55
	nop                                              ; $6e2c: $00
	add  c                                           ; $6e2d: $81
	rst  $38                                         ; $6e2e: $ff
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	add  h                                           ; $6e31: $84
	rst  $38                                         ; $6e32: $ff
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	add  b                                           ; $6e35: $80
	ccf                                              ; $6e36: $3f
	ld   [bc], a                                     ; $6e37: $02
	ld   l, d                                        ; $6e38: $6a
	push de                                          ; $6e39: $d5
	ld   b, b                                        ; $6e3a: $40
	add  c                                           ; $6e3b: $81
	rst  $38                                         ; $6e3c: $ff
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	add  h                                           ; $6e3f: $84
	rst  $38                                         ; $6e40: $ff
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	add  b                                           ; $6e43: $80
	cp   $02                                         ; $6e44: $fe $02
	xor  b                                           ; $6e46: $a8
	ld   d, [hl]                                     ; $6e47: $56
	ld   bc, $ff81                                   ; $6e48: $01 $81 $ff
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	adc  c                                           ; $6e4d: $89
	rst  $38                                         ; $6e4e: $ff
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	add  c                                           ; $6e51: $81
	rst  $38                                         ; $6e52: $ff
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	adc  c                                           ; $6e55: $89
	rst  $38                                         ; $6e56: $ff
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	add  c                                           ; $6e59: $81
	rst  $38                                         ; $6e5a: $ff
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	adc  c                                           ; $6e5d: $89
	rst  $38                                         ; $6e5e: $ff
	adc  [hl]                                        ; $6e5f: $8e
	nop                                              ; $6e60: $00
	ld   bc, $0a0b                                   ; $6e61: $01 $0b $0a
	add  b                                           ; $6e64: $80
	ld   b, $80                                      ; $6e65: $06 $80
	ld   a, [bc]                                     ; $6e67: $0a
	add  b                                           ; $6e68: $80
	ld   b, $80                                      ; $6e69: $06 $80
	ld   a, [bc]                                     ; $6e6b: $0a
	add  b                                           ; $6e6c: $80
	ld   d, $80                                      ; $6e6d: $16 $80
	ld   c, $80                                      ; $6e6f: $0e $80
	ld   d, $00                                      ; $6e71: $16 $00
	db   $fc                                         ; $6e73: $fc
	adc  l                                           ; $6e74: $8d
	rst  $38                                         ; $6e75: $ff
	ld   bc, $0f8c                                   ; $6e76: $01 $8c $0f
	add  b                                           ; $6e79: $80
	rlca                                             ; $6e7a: $07
	add  b                                           ; $6e7b: $80
	dec  bc                                          ; $6e7c: $0b
	add  b                                           ; $6e7d: $80
	dec  b                                           ; $6e7e: $05
	add  b                                           ; $6e7f: $80
	dec  bc                                          ; $6e80: $0b
	add  b                                           ; $6e81: $80
	dec  b                                           ; $6e82: $05
	add  b                                           ; $6e83: $80
	inc  bc                                          ; $6e84: $03
	add  b                                           ; $6e85: $80
	ld   bc, $7e00                                   ; $6e86: $01 $00 $7e
	adc  l                                           ; $6e89: $8d
	rst  $38                                         ; $6e8a: $ff
	ld   bc, $2aaa                                   ; $6e8b: $01 $aa $2a
	add  b                                           ; $6e8e: $80
	ld   d, l                                        ; $6e8f: $55
	add  b                                           ; $6e90: $80
	ld   a, [hl+]                                    ; $6e91: $2a
	add  b                                           ; $6e92: $80
	ld   d, l                                        ; $6e93: $55
	add  b                                           ; $6e94: $80
	ld   a, [hl+]                                    ; $6e95: $2a
	add  b                                           ; $6e96: $80
	ld   d, l                                        ; $6e97: $55
	add  b                                           ; $6e98: $80
	ld   a, [hl+]                                    ; $6e99: $2a
	add  b                                           ; $6e9a: $80
	ld   a, a                                        ; $6e9b: $7f
	ld   bc, $ae2c                                   ; $6e9c: $01 $2c $ae
	add  b                                           ; $6e9f: $80
	ld   d, a                                        ; $6ea0: $57
	add  b                                           ; $6ea1: $80
	xor  [hl]                                        ; $6ea2: $ae
	add  b                                           ; $6ea3: $80
	ld   d, a                                        ; $6ea4: $57
	add  b                                           ; $6ea5: $80
	xor  [hl]                                        ; $6ea6: $ae
	add  b                                           ; $6ea7: $80
	ld   d, a                                        ; $6ea8: $57
	add  b                                           ; $6ea9: $80
	xor  [hl]                                        ; $6eaa: $ae
	add  b                                           ; $6eab: $80
	rst  $38                                         ; $6eac: $ff
	ld   bc, $aaa8                                   ; $6ead: $01 $a8 $aa
	add  b                                           ; $6eb0: $80
	ld   d, l                                        ; $6eb1: $55
	add  b                                           ; $6eb2: $80
	xor  d                                           ; $6eb3: $aa
	add  b                                           ; $6eb4: $80
	ld   d, l                                        ; $6eb5: $55
	add  b                                           ; $6eb6: $80
	xor  d                                           ; $6eb7: $aa
	add  b                                           ; $6eb8: $80
	ld   d, l                                        ; $6eb9: $55
	add  b                                           ; $6eba: $80
	xor  d                                           ; $6ebb: $aa
	add  b                                           ; $6ebc: $80
	rst  $38                                         ; $6ebd: $ff
	add  b                                           ; $6ebe: $80
	xor  d                                           ; $6ebf: $aa
	add  b                                           ; $6ec0: $80
	ld   d, l                                        ; $6ec1: $55
	add  b                                           ; $6ec2: $80
	xor  d                                           ; $6ec3: $aa
	add  b                                           ; $6ec4: $80
	ld   d, l                                        ; $6ec5: $55
	add  b                                           ; $6ec6: $80
	xor  d                                           ; $6ec7: $aa
	add  b                                           ; $6ec8: $80
	ld   d, l                                        ; $6ec9: $55
	add  b                                           ; $6eca: $80
	xor  d                                           ; $6ecb: $aa
	add  b                                           ; $6ecc: $80
	rst  $38                                         ; $6ecd: $ff
	add  b                                           ; $6ece: $80
	xor  d                                           ; $6ecf: $aa
	add  b                                           ; $6ed0: $80
	ld   d, l                                        ; $6ed1: $55
	add  b                                           ; $6ed2: $80
	xor  d                                           ; $6ed3: $aa
	add  b                                           ; $6ed4: $80
	ld   d, l                                        ; $6ed5: $55
	add  b                                           ; $6ed6: $80
	xor  d                                           ; $6ed7: $aa
	add  b                                           ; $6ed8: $80
	ld   d, l                                        ; $6ed9: $55
	add  b                                           ; $6eda: $80
	xor  d                                           ; $6edb: $aa
	add  b                                           ; $6edc: $80
	rst  $38                                         ; $6edd: $ff
	add  b                                           ; $6ede: $80
	xor  d                                           ; $6edf: $aa
	add  b                                           ; $6ee0: $80
	ld   d, l                                        ; $6ee1: $55
	add  b                                           ; $6ee2: $80
	xor  d                                           ; $6ee3: $aa
	add  b                                           ; $6ee4: $80
	ld   d, l                                        ; $6ee5: $55
	add  b                                           ; $6ee6: $80
	xor  d                                           ; $6ee7: $aa
	add  b                                           ; $6ee8: $80
	ld   d, l                                        ; $6ee9: $55
	add  b                                           ; $6eea: $80
	xor  d                                           ; $6eeb: $aa
	add  b                                           ; $6eec: $80
	rst  $38                                         ; $6eed: $ff
	ld   bc, $eaaa                                   ; $6eee: $01 $aa $ea
	add  b                                           ; $6ef1: $80
	push de                                          ; $6ef2: $d5
	add  b                                           ; $6ef3: $80
	ld   [$d580], a                                  ; $6ef4: $ea $80 $d5
	add  b                                           ; $6ef7: $80
	ld   [$d580], a                                  ; $6ef8: $ea $80 $d5
	add  b                                           ; $6efb: $80
	ld   [$ff80], a                                  ; $6efc: $ea $80 $ff
	ld   bc, $aaeb                                   ; $6eff: $01 $eb $aa
	add  b                                           ; $6f02: $80
	ld   d, [hl]                                     ; $6f03: $56
	add  b                                           ; $6f04: $80
	xor  d                                           ; $6f05: $aa
	add  b                                           ; $6f06: $80
	ld   d, [hl]                                     ; $6f07: $56
	add  b                                           ; $6f08: $80
	xor  d                                           ; $6f09: $aa
	add  b                                           ; $6f0a: $80
	ld   d, [hl]                                     ; $6f0b: $56
	add  b                                           ; $6f0c: $80
	xor  d                                           ; $6f0d: $aa
	add  c                                           ; $6f0e: $81
	cp   $8e                                         ; $6f0f: $fe $8e
	rst  $38                                         ; $6f11: $ff
	add  c                                           ; $6f12: $81
	nop                                              ; $6f13: $00
	add  b                                           ; $6f14: $80
	rst  $38                                         ; $6f15: $ff
	ld   [bc], a                                     ; $6f16: $02
	add  b                                           ; $6f17: $80
	rst  $38                                         ; $6f18: $ff
	ret  nz                                          ; $6f19: $c0

	add  b                                           ; $6f1a: $80
	rst  $38                                         ; $6f1b: $ff
	add  e                                           ; $6f1c: $83
	ldh  [rP1], a                                    ; $6f1d: $e0 $00
	ld   e, a                                        ; $6f1f: $5f
	add  c                                           ; $6f20: $81
	nop                                              ; $6f21: $00
	add  b                                           ; $6f22: $80
	cp   $02                                         ; $6f23: $fe $02
	ld   [bc], a                                     ; $6f25: $02
	cp   $0e                                         ; $6f26: $fe $0e
	add  b                                           ; $6f28: $80
	cp   $83                                         ; $6f29: $fe $83
	ld   e, $00                                      ; $6f2b: $1e $00
	inc  de                                          ; $6f2d: $13
	add  a                                           ; $6f2e: $87
	nop                                              ; $6f2f: $00
	add  b                                           ; $6f30: $80
	ld   bc, $0280                                   ; $6f31: $01 $80 $02
	add  b                                           ; $6f34: $80
	dec  b                                           ; $6f35: $05
	ld   bc, $2e2f                                   ; $6f36: $01 $2f $2e
	add  b                                           ; $6f39: $80
	ld   d, $80                                      ; $6f3a: $16 $80
	ld   l, $80                                      ; $6f3c: $2e $80
	ld   e, [hl]                                     ; $6f3e: $5e
	add  b                                           ; $6f3f: $80
	xor  [hl]                                        ; $6f40: $ae
	add  b                                           ; $6f41: $80
	ld   e, [hl]                                     ; $6f42: $5e
	add  b                                           ; $6f43: $80
	xor  [hl]                                        ; $6f44: $ae
	add  b                                           ; $6f45: $80
	ld   e, [hl]                                     ; $6f46: $5e
	nop                                              ; $6f47: $00
	db   $fc                                         ; $6f48: $fc
	adc  l                                           ; $6f49: $8d
	rst  $38                                         ; $6f4a: $ff
	ld   bc, $0380                                   ; $6f4b: $01 $80 $03
	adc  h                                           ; $6f4e: $8c
	ld   bc, $2b01                                   ; $6f4f: $01 $01 $2b
	xor  d                                           ; $6f52: $aa
	add  b                                           ; $6f53: $80
	ld   d, l                                        ; $6f54: $55
	add  l                                           ; $6f55: $85
	nop                                              ; $6f56: $00
	add  d                                           ; $6f57: $82
	ld   bc, $0001                                   ; $6f58: $01 $01 $00
	ret  nz                                          ; $6f5b: $c0

	add  e                                           ; $6f5c: $83
	ld   b, b                                        ; $6f5d: $40
	ld   [bc], a                                     ; $6f5e: $02
	ld   a, b                                        ; $6f5f: $78
	nop                                              ; $6f60: $00
	add  hl, de                                      ; $6f61: $19
	add  b                                           ; $6f62: $80
	ld   b, l                                        ; $6f63: $45
	nop                                              ; $6f64: $00
	dec  e                                           ; $6f65: $1d
	add  c                                           ; $6f66: $81
	add  hl, sp                                      ; $6f67: $39
	ld   bc, $8041                                   ; $6f68: $01 $41 $80
	add  c                                           ; $6f6b: $81
	ld   b, $02                                      ; $6f6c: $06 $02
	inc  b                                           ; $6f6e: $04
	ld   b, $1f                                      ; $6f6f: $06 $1f
	add  b                                           ; $6f71: $80
	nop                                              ; $6f72: $00
	ld   b, $13                                      ; $6f73: $06 $13
	ld   [bc], a                                     ; $6f75: $02
	ldh  a, [c]                                      ; $6f76: $f2
	db   $ec                                         ; $6f77: $ec
	xor  $f8                                         ; $6f78: $ee $f8
	ld   b, $86                                      ; $6f7a: $06 $86
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	add  b                                           ; $6f7e: $80
	add  c                                           ; $6f7f: $81
	nop                                              ; $6f80: $00
	add  b                                           ; $6f81: $80
	ccf                                              ; $6f82: $3f
	add  b                                           ; $6f83: $80
	dec  d                                           ; $6f84: $15
	nop                                              ; $6f85: $00
	add  b                                           ; $6f86: $80
	adc  c                                           ; $6f87: $89
	nop                                              ; $6f88: $00
	add  b                                           ; $6f89: $80
	rst  $38                                         ; $6f8a: $ff
	add  b                                           ; $6f8b: $80
	ld   a, a                                        ; $6f8c: $7f
	adc  d                                           ; $6f8d: $8a
	nop                                              ; $6f8e: $00
	add  d                                           ; $6f8f: $82
	rst  $38                                         ; $6f90: $ff
	adc  b                                           ; $6f91: $88
	nop                                              ; $6f92: $00
	ld   b, $40                                      ; $6f93: $06 $40
	ld   a, a                                        ; $6f95: $7f
	ret  nz                                          ; $6f96: $c0

	cp   a                                           ; $6f97: $bf
	ccf                                              ; $6f98: $3f
	rst  $38                                         ; $6f99: $ff
	nop                                              ; $6f9a: $00
	add  l                                           ; $6f9b: $85
	ret  nz                                          ; $6f9c: $c0

	inc  b                                           ; $6f9d: $04
	add  b                                           ; $6f9e: $80
	ret  nz                                          ; $6f9f: $c0

	nop                                              ; $6fa0: $00
	ldh  [$1f], a                                    ; $6fa1: $e0 $1f
	add  b                                           ; $6fa3: $80
	cp   a                                           ; $6fa4: $bf
	ld   bc, $837f                                   ; $6fa5: $01 $7f $83
	adc  c                                           ; $6fa8: $89
	ld   [bc], a                                     ; $6fa9: $02
	add  d                                           ; $6faa: $82
	cp   $01                                         ; $6fab: $fe $01
	xor  e                                           ; $6fad: $ab
	xor  d                                           ; $6fae: $aa
	add  b                                           ; $6faf: $80
	ld   d, l                                        ; $6fb0: $55
	adc  d                                           ; $6fb1: $8a
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	ld   b, b                                        ; $6fb4: $40
	adc  c                                           ; $6fb5: $89
	ldh  [$80], a                                    ; $6fb6: $e0 $80
	rst  $38                                         ; $6fb8: $ff
	add  b                                           ; $6fb9: $80
	push af                                          ; $6fba: $f5
	nop                                              ; $6fbb: $00
	xor  l                                           ; $6fbc: $ad
	adc  c                                           ; $6fbd: $89
	ld   e, $80                                      ; $6fbe: $1e $80
	cp   $80                                         ; $6fc0: $fe $80
	ld   e, [hl]                                     ; $6fc2: $5e
	ld   bc, $0a19                                   ; $6fc3: $01 $19 $0a
	add  b                                           ; $6fc6: $80
	dec  b                                           ; $6fc7: $05
	add  b                                           ; $6fc8: $80
	ld   a, [bc]                                     ; $6fc9: $0a
	add  b                                           ; $6fca: $80
	dec  b                                           ; $6fcb: $05
	add  b                                           ; $6fcc: $80
	ld   a, [bc]                                     ; $6fcd: $0a
	add  b                                           ; $6fce: $80
	dec  b                                           ; $6fcf: $05
	add  b                                           ; $6fd0: $80
	dec  bc                                          ; $6fd1: $0b
	add  b                                           ; $6fd2: $80
	rlca                                             ; $6fd3: $07
	ld   bc, $bebf                                   ; $6fd4: $01 $bf $be
	add  b                                           ; $6fd7: $80
	ld   a, [hl]                                     ; $6fd8: $7e
	add  b                                           ; $6fd9: $80
	cp   $80                                         ; $6fda: $fe $80
	ld   a, [hl]                                     ; $6fdc: $7e
	add  h                                           ; $6fdd: $84
	cp   $02                                         ; $6fde: $fe $02
	jp   nc, $c2ec                                   ; $6fe0: $d2 $ec $c2

	add  l                                           ; $6fe3: $85
	rst  $38                                         ; $6fe4: $ff
	add  b                                           ; $6fe5: $80
	cp   $06                                         ; $6fe6: $fe $06
	ei                                               ; $6fe8: $fb
	ld   hl, sp-$09                                  ; $6fe9: $f8 $f7
	pop  af                                          ; $6feb: $f1
	ld   [$8be7], a                                  ; $6fec: $ea $e7 $8b
	add  c                                           ; $6fef: $81
	ld   bc, $0000                                   ; $6ff0: $01 $00 $00
	add  b                                           ; $6ff3: $80
	rrca                                             ; $6ff4: $0f
	dec  b                                           ; $6ff5: $05
	ld   [$1fa7], sp                                 ; $6ff6: $08 $a7 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ff9: $cf
	nop                                              ; $6ffa: $00
	ld   a, [hl]                                     ; $6ffb: $7e
	add  c                                           ; $6ffc: $81
	ld   a, h                                        ; $6ffd: $7c
	nop                                              ; $6ffe: $00
	db   $fd                                         ; $6fff: $fd
	add  d                                           ; $7000: $82
	nop                                              ; $7001: $00
	rrca                                             ; $7002: $0f
	ldh  [hScriptOpcodeParams], a                                    ; $7003: $e0 $a0
	ld   a, [hl]                                     ; $7005: $7e
	cp   h                                           ; $7006: $bc
	pop  hl                                          ; $7007: $e1
	sbc  c                                           ; $7008: $99
	ld   bc, $111d                                   ; $7009: $01 $1d $11
	ccf                                              ; $700c: $3f
	daa                                              ; $700d: $27
	ld   a, [hl+]                                    ; $700e: $2a
	ld   b, c                                        ; $700f: $41
	ld   a, c                                        ; $7010: $79
	inc  bc                                          ; $7011: $03
	dec  sp                                          ; $7012: $3b
	add  e                                           ; $7013: $83
	ld   b, e                                        ; $7014: $43
	ld   a, [bc]                                     ; $7015: $0a
	ld   b, b                                        ; $7016: $40
	ld   b, d                                        ; $7017: $42
	ld   [bc], a                                     ; $7018: $02
	ld   a, d                                        ; $7019: $7a
	ld   [bc], a                                     ; $701a: $02
	nop                                              ; $701b: $00
	ld   hl, sp+$06                                  ; $701c: $f8 $06
	rra                                              ; $701e: $1f
	db   $10                                         ; $701f: $10
	add  hl, bc                                      ; $7020: $09
	add  l                                           ; $7021: $85
	ld   b, $05                                      ; $7022: $06 $05
	ld   sp, hl                                      ; $7024: $f9
	rst  $38                                         ; $7025: $ff
	ld   sp, hl                                      ; $7026: $f9
	nop                                              ; $7027: $00
	ld   a, a                                        ; $7028: $7f
	ld   b, b                                        ; $7029: $40
	add  b                                           ; $702a: $80
	ld   d, l                                        ; $702b: $55
	add  b                                           ; $702c: $80
	ld   b, b                                        ; $702d: $40
	add  b                                           ; $702e: $80
	ld   b, l                                        ; $702f: $45
	add  b                                           ; $7030: $80
	ld   b, b                                        ; $7031: $40
	ld   bc, $00c0                                   ; $7032: $01 $c0 $00
	add  c                                           ; $7035: $81
	rst  $38                                         ; $7036: $ff
	ld   [bc], a                                     ; $7037: $02
	nop                                              ; $7038: $00
	ld   d, l                                        ; $7039: $55
	xor  d                                           ; $703a: $aa
	add  b                                           ; $703b: $80
	ld   d, l                                        ; $703c: $55
	add  b                                           ; $703d: $80
	ld   a, [bc]                                     ; $703e: $0a
	add  b                                           ; $703f: $80
	ld   d, l                                        ; $7040: $55
	add  b                                           ; $7041: $80
	ld   a, [bc]                                     ; $7042: $0a
	add  b                                           ; $7043: $80
	nop                                              ; $7044: $00
	add  c                                           ; $7045: $81
	rst  $38                                         ; $7046: $ff
	ld   [bc], a                                     ; $7047: $02
	nop                                              ; $7048: $00
	ld   d, a                                        ; $7049: $57
	xor  e                                           ; $704a: $ab
	add  b                                           ; $704b: $80
	ld   d, a                                        ; $704c: $57
	inc  bc                                          ; $704d: $03
	xor  c                                           ; $704e: $a9
	xor  e                                           ; $704f: $ab
	ld   d, h                                        ; $7050: $54
	ld   d, l                                        ; $7051: $55
	add  b                                           ; $7052: $80
	xor  d                                           ; $7053: $aa
	add  b                                           ; $7054: $80
	nop                                              ; $7055: $00
	add  c                                           ; $7056: $81
	rst  $38                                         ; $7057: $ff
	ld   [de], a                                     ; $7058: $12
	nop                                              ; $7059: $00
	db   $fc                                         ; $705a: $fc
	ld   a, [$fcff]                                  ; $705b: $fa $ff $fc
	inc  d                                           ; $705e: $14
	ld   [de], a                                     ; $705f: $12
	add  hl, sp                                      ; $7060: $39
	cp   l                                           ; $7061: $bd
	cp   d                                           ; $7062: $ba
	or   d                                           ; $7063: $b2
	ld   d, b                                        ; $7064: $50
	db   $10                                         ; $7065: $10
	rst  $10                                         ; $7066: $d7
	rst  JumpTable                                         ; $7067: $df
	rst  $28                                         ; $7068: $ef
	jr   z, jr_077_70c0                              ; $7069: $28 $55

	ld   [$d580], a                                  ; $706b: $ea $80 $d5
	add  b                                           ; $706e: $80
	ldh  [rP1], a                                    ; $706f: $e0 $00
	call nz, $c781                                   ; $7071: $c4 $81 $c7
	add  b                                           ; $7074: $80
	ret  nz                                          ; $7075: $c0

	dec  b                                           ; $7076: $05
	db   $fc                                         ; $7077: $fc
	cp   $be                                         ; $7078: $fe $be
	nop                                              ; $707a: $00
	ld   d, h                                        ; $707b: $54
	xor  d                                           ; $707c: $aa
	add  b                                           ; $707d: $80
	ld   d, [hl]                                     ; $707e: $56
	add  b                                           ; $707f: $80
	ld   [bc], a                                     ; $7080: $02
	nop                                              ; $7081: $00
	ld   [de], a                                     ; $7082: $12
	add  b                                           ; $7083: $80
	ldh  a, [c]                                      ; $7084: $f2
	inc  bc                                          ; $7085: $03
	ldh  [c], a                                      ; $7086: $e2
	ld   [de], a                                     ; $7087: $12
	ld   [bc], a                                     ; $7088: $02
	ld   e, $80                                      ; $7089: $1e $80
	ld   a, [hl]                                     ; $708b: $7e
	ld   bc, $ff00                                   ; $708c: $01 $00 $ff
	add  [hl]                                        ; $708f: $86
	nop                                              ; $7090: $00
	add  l                                           ; $7091: $85
	rst  $38                                         ; $7092: $ff
	ld   bc, $eab5                                   ; $7093: $01 $b5 $ea
	add  b                                           ; $7096: $80
	push af                                          ; $7097: $f5
	ld   [bc], a                                     ; $7098: $02
	ret  nz                                          ; $7099: $c0

	ldh  [rIE], a                                    ; $709a: $e0 $ff
	add  b                                           ; $709c: $80
	add  b                                           ; $709d: $80
	inc  bc                                          ; $709e: $03
	rst  JumpTable                                         ; $709f: $df
	ret  nz                                          ; $70a0: $c0

	ldh  [rIE], a                                    ; $70a1: $e0 $ff
	add  b                                           ; $70a3: $80
	add  b                                           ; $70a4: $80
	ld   [bc], a                                     ; $70a5: $02
	rst  JumpTable                                         ; $70a6: $df
	dec  c                                           ; $70a7: $0d
	cp   [hl]                                        ; $70a8: $be
	add  b                                           ; $70a9: $80
	ld   e, [hl]                                     ; $70aa: $5e
	dec  bc                                          ; $70ab: $0b
	ld   c, $1e                                      ; $70ac: $0e $1e
	cp   $02                                         ; $70ae: $fe $02
	ld   b, $f6                                      ; $70b0: $06 $f6
	ld   [de], a                                     ; $70b2: $12
	ld   e, $fe                                      ; $70b3: $1e $fe
	ld   [bc], a                                     ; $70b5: $02
	ld   b, $f6                                      ; $70b6: $06 $f6
	add  b                                           ; $70b8: $80
	dec  b                                           ; $70b9: $05
	add  b                                           ; $70ba: $80
	ld   a, [bc]                                     ; $70bb: $0a
	add  b                                           ; $70bc: $80
	dec  b                                           ; $70bd: $05
	add  b                                           ; $70be: $80
	ld   a, [bc]                                     ; $70bf: $0a

jr_077_70c0:
	add  b                                           ; $70c0: $80
	dec  b                                           ; $70c1: $05
	add  b                                           ; $70c2: $80
	ld   a, [bc]                                     ; $70c3: $0a
	add  b                                           ; $70c4: $80
	dec  b                                           ; $70c5: $05
	add  b                                           ; $70c6: $80
	ld   a, [bc]                                     ; $70c7: $0a
	ld   bc, $54a4                                   ; $70c8: $01 $a4 $54
	add  b                                           ; $70cb: $80
	xor  e                                           ; $70cc: $ab
	add  b                                           ; $70cd: $80
	ld   d, l                                        ; $70ce: $55
	ld   bc, $abaa                                   ; $70cf: $01 $aa $ab
	add  b                                           ; $70d2: $80
	ld   d, a                                        ; $70d3: $57
	ld   bc, $afac                                   ; $70d4: $01 $ac $af
	add  b                                           ; $70d7: $80
	ld   d, [hl]                                     ; $70d8: $56
	add  b                                           ; $70d9: $80
	xor  [hl]                                        ; $70da: $ae
	ld   [bc], a                                     ; $70db: $02
	jr   nz, @-$2f                                   ; $70dc: $20 $cf

	rst  $28                                         ; $70de: $ef
	add  b                                           ; $70df: $80
	rst  JumpTable                                         ; $70e0: $df
	inc  bc                                          ; $70e1: $03
	cp   a                                           ; $70e2: $bf
	ccf                                              ; $70e3: $3f
	cp   a                                           ; $70e4: $bf
	ccf                                              ; $70e5: $3f
	add  d                                           ; $70e6: $82
	ld   a, a                                        ; $70e7: $7f
	add  c                                           ; $70e8: $81
	rst  $38                                         ; $70e9: $ff
	nop                                              ; $70ea: $00
	add  d                                           ; $70eb: $82
	add  c                                           ; $70ec: $81
	ld   a, [hl]                                     ; $70ed: $7e
	nop                                              ; $70ee: $00
	ld   a, a                                        ; $70ef: $7f
	add  c                                           ; $70f0: $81
	ld   a, [hl]                                     ; $70f1: $7e
	add  b                                           ; $70f2: $80
	halt                                             ; $70f3: $76
	ld   bc, $6b6a                                   ; $70f4: $01 $6a $6b
	add  b                                           ; $70f7: $80
	ld   [hl], a                                     ; $70f8: $77
	add  b                                           ; $70f9: $80
	ld   l, e                                        ; $70fa: $6b
	inc  bc                                          ; $70fb: $03
	ld   c, $2f                                      ; $70fc: $0e $2f
	rrca                                             ; $70fe: $0f
	ld   l, a                                        ; $70ff: $6f
	add  b                                           ; $7100: $80
	ld   c, a                                        ; $7101: $4f
	ld   bc, $cf0f                                   ; $7102: $01 $0f $cf
	add  b                                           ; $7105: $80
	adc  a                                           ; $7106: $8f
	ld   b, $4f                                      ; $7107: $06 $4f
	adc  h                                           ; $7109: $8c
	rrca                                             ; $710a: $0f
	inc  c                                           ; $710b: $0c
	rrca                                             ; $710c: $0f
	ld   c, a                                        ; $710d: $4f
	ld   sp, hl                                      ; $710e: $f9
	add  b                                           ; $710f: $80
	ld   hl, sp+$0a                                  ; $7110: $f8 $0a
	ldh  a, [$f8]                                    ; $7112: $f0 $f8
	ldh  [$f8], a                                    ; $7114: $e0 $f8
	ret  z                                           ; $7116: $c8

	ld   a, [$f298]                                  ; $7117: $fa $98 $f2
	ld   sp, $30b0                                   ; $711a: $31 $b0 $30
	add  b                                           ; $711d: $80
	ld   hl, sp-$79                                  ; $711e: $f8 $87
	rst  $38                                         ; $7120: $ff
	add  b                                           ; $7121: $80
	rra                                              ; $7122: $1f
	inc  b                                           ; $7123: $04
	ret  nz                                          ; $7124: $c0

	jr   nz, jr_077_7145                             ; $7125: $20 $1e

	ld   bc, $8b00                                   ; $7127: $01 $00 $8b
	rst  $38                                         ; $712a: $ff
	add  b                                           ; $712b: $80
	rlca                                             ; $712c: $07
	add  b                                           ; $712d: $80
	ldh  a, [$8c]                                    ; $712e: $f0 $8c
	rst  $38                                         ; $7130: $ff
	add  b                                           ; $7131: $80
	ccf                                              ; $7132: $3f
	add  a                                           ; $7133: $87
	rst  $38                                         ; $7134: $ff
	add  h                                           ; $7135: $84
	cp   $01                                         ; $7136: $fe $01
	rst  $28                                         ; $7138: $ef
	db   $ed                                         ; $7139: $ed
	add  c                                           ; $713a: $81
	push af                                          ; $713b: $f5
	ld   [$eaf6], sp                                 ; $713c: $08 $f6 $ea
	jp   c, Jump_077_78b9                            ; $713f: $da $b9 $78

	pop  hl                                          ; $7142: $e1
	cp   $c9                                         ; $7143: $fe $c9

jr_077_7145:
	rst  $38                                         ; $7145: $ff
	add  b                                           ; $7146: $80
	ld   a, a                                        ; $7147: $7f
	ld   de, $fe26                                   ; $7148: $11 $26 $fe
	rst  $38                                         ; $714b: $ff
	db   $fc                                         ; $714c: $fc
	rst  $38                                         ; $714d: $ff
	ld   sp, hl                                      ; $714e: $f9
	rst  $38                                         ; $714f: $ff
	di                                               ; $7150: $f3
	ld   l, a                                        ; $7151: $6f
	ld   [hl], a                                     ; $7152: $77
	sbc  a                                           ; $7153: $9f
	adc  a                                           ; $7154: $8f
	ld   [hl], c                                     ; $7155: $71
	or   c                                           ; $7156: $b1
	sbc  $ee                                         ; $7157: $de $ee
	adc  a                                           ; $7159: $8f
	ld   a, a                                        ; $715a: $7f
	adc  d                                           ; $715b: $8a
	rst  $38                                         ; $715c: $ff
	add  b                                           ; $715d: $80
	ccf                                              ; $715e: $3f
	adc  [hl]                                        ; $715f: $8e
	rst  $38                                         ; $7160: $ff
	ld   bc, $f5aa                                   ; $7161: $01 $aa $f5
	add  b                                           ; $7164: $80
	ld   [$e180], a                                  ; $7165: $ea $80 $e1
	adc  b                                           ; $7168: $88
	ldh  [rP1], a                                    ; $7169: $e0 $00
	ld   c, l                                        ; $716b: $4d
	add  c                                           ; $716c: $81
	cp   $80                                         ; $716d: $fe $80
	ld   a, [hl]                                     ; $716f: $7e
	add  b                                           ; $7170: $80
	cp   [hl]                                        ; $7171: $be
	add  b                                           ; $7172: $80
	ld   e, [hl]                                     ; $7173: $5e
	add  b                                           ; $7174: $80
	ld   a, $82                                      ; $7175: $3e $82
	ld   e, $01                                      ; $7177: $1e $01
	add  hl, de                                      ; $7179: $19
	dec  b                                           ; $717a: $05
	add  b                                           ; $717b: $80
	ld   a, [bc]                                     ; $717c: $0a
	add  b                                           ; $717d: $80
	dec  b                                           ; $717e: $05
	add  b                                           ; $717f: $80
	ld   a, [bc]                                     ; $7180: $0a
	add  b                                           ; $7181: $80
	dec  b                                           ; $7182: $05
	add  b                                           ; $7183: $80
	ld   a, [bc]                                     ; $7184: $0a
	add  b                                           ; $7185: $80
	dec  b                                           ; $7186: $05
	add  b                                           ; $7187: $80
	ld   a, [bc]                                     ; $7188: $0a
	inc  bc                                          ; $7189: $03
	xor  d                                           ; $718a: $aa
	ld   e, [hl]                                     ; $718b: $5e
	xor  h                                           ; $718c: $ac
	xor  l                                           ; $718d: $ad
	add  b                                           ; $718e: $80
	ld   e, l                                        ; $718f: $5d
	rlca                                             ; $7190: $07
	or   c                                           ; $7191: $b1
	cp   l                                           ; $7192: $bd
	ld   e, d                                        ; $7193: $5a
	ld   e, e                                        ; $7194: $5b
	cp   d                                           ; $7195: $ba
	cp   e                                           ; $7196: $bb
	ld   h, d                                        ; $7197: $62
	ld   a, e                                        ; $7198: $7b
	add  b                                           ; $7199: $80
	cp   b                                           ; $719a: $b8
	nop                                              ; $719b: $00
	ld   [de], a                                     ; $719c: $12
	add  c                                           ; $719d: $81
	rst  $38                                         ; $719e: $ff
	dec  c                                           ; $719f: $0d
	di                                               ; $71a0: $f3
	rst  $38                                         ; $71a1: $ff
	add  b                                           ; $71a2: $80
	rst  $38                                         ; $71a3: $ff
	nop                                              ; $71a4: $00
	cp   $01                                         ; $71a5: $fe $01
	ldh  a, [rSB]                                    ; $71a7: $f0 $01
	adc  a                                           ; $71a9: $8f
	ld   [hl-], a                                    ; $71aa: $32
	ld   b, e                                        ; $71ab: $43
	dec  hl                                          ; $71ac: $2b
	ld   d, a                                        ; $71ad: $57
	add  b                                           ; $71ae: $80
	ld   l, [hl]                                     ; $71af: $6e
	add  b                                           ; $71b0: $80
	ld   d, [hl]                                     ; $71b1: $56
	dec  sp                                          ; $71b2: $3b
	ld   c, b                                        ; $71b3: $48
	ld   c, [hl]                                     ; $71b4: $4e
	ld   c, $3e                                      ; $71b5: $0e $3e
	cp   $3e                                         ; $71b7: $fe $3e
	ld   c, $fe                                      ; $71b9: $0e $fe
	pop  af                                          ; $71bb: $f1
	sbc  l                                           ; $71bc: $9d
	jr   nz, jr_077_7207                             ; $71bd: $20 $48

	push bc                                          ; $71bf: $c5
	rst  ToBoot                                         ; $71c0: $c7
	ret  nz                                          ; $71c1: $c0

	rst  ToBoot                                         ; $71c2: $c7
	ld   b, b                                        ; $71c3: $40
	rst  ToBoot                                         ; $71c4: $c7
	jp   nz, Jump_077_47c7                           ; $71c5: $c2 $c7 $47

	rst  ToBoot                                         ; $71c8: $c7
	jp   $fcc7                                       ; $71c9: $c3 $c7 $fc


	rst  $38                                         ; $71cc: $ff
	inc  bc                                          ; $71cd: $03
	nop                                              ; $71ce: $00
	ld   d, h                                        ; $71cf: $54
	db   $fc                                         ; $71d0: $fc
	nop                                              ; $71d1: $00
	ld   hl, sp+$10                                  ; $71d2: $f8 $10
	ld   hl, sp-$5b                                  ; $71d4: $f8 $a5
	db   $fc                                         ; $71d6: $fc
	ldh  [c], a                                      ; $71d7: $e2
	add  b                                           ; $71d8: $80
	adc  [hl]                                        ; $71d9: $8e
	adc  $15                                         ; $71da: $ce $15
	rst  $38                                         ; $71dc: $ff
	jp   z, $55e0                                    ; $71dd: $ca $e0 $55

	rst  $38                                         ; $71e0: $ff
	nop                                              ; $71e1: $00
	rst  $38                                         ; $71e2: $ff
	ret  z                                           ; $71e3: $c8

	sbc  a                                           ; $71e4: $9f
	ld   h, l                                        ; $71e5: $65
	ld   a, a                                        ; $71e6: $7f
	ld   h, h                                        ; $71e7: $64
	ld   a, a                                        ; $71e8: $7f
	ld   [bc], a                                     ; $71e9: $02
	ld   bc, $f070                                   ; $71ea: $01 $70 $f0
	add  a                                           ; $71ed: $87
	rlca                                             ; $71ee: $07
	add  b                                           ; $71ef: $80
	nop                                              ; $71f0: $00
	dec  c                                           ; $71f1: $0d
	and  l                                           ; $71f2: $a5
	push hl                                          ; $71f3: $e5
	nop                                              ; $71f4: $00
	push hl                                          ; $71f5: $e5
	ld   b, l                                        ; $71f6: $45
	push hl                                          ; $71f7: $e5
	ld   b, l                                        ; $71f8: $45
	push hl                                          ; $71f9: $e5
	ld   h, b                                        ; $71fa: $60
	push hl                                          ; $71fb: $e5
	ld   l, $0f                                      ; $71fc: $2e $0f
	cp   [hl]                                        ; $71fe: $be
	cp   a                                           ; $71ff: $bf

jr_077_7200:
	add  b                                           ; $7200: $80
	ccf                                              ; $7201: $3f
	dec  c                                           ; $7202: $0d
	xor  d                                           ; $7203: $aa
	rst  $38                                         ; $7204: $ff
	ret  nz                                          ; $7205: $c0

	rst  $38                                         ; $7206: $ff

jr_077_7207:
	sub  l                                           ; $7207: $95
	rst  $38                                         ; $7208: $ff
	add  b                                           ; $7209: $80
	rst  $38                                         ; $720a: $ff
	ld   b, b                                        ; $720b: $40
	jr   c, jr_077_7215                              ; $720c: $38 $07

	rst  $38                                         ; $720e: $ff
	ld   bc, $80fe                                   ; $720f: $01 $fe $80
	rst  $38                                         ; $7212: $ff
	rlca                                             ; $7213: $07
	xor  d                                           ; $7214: $aa

jr_077_7215:
	rst  $38                                         ; $7215: $ff
	nop                                              ; $7216: $00
	rst  $38                                         ; $7217: $ff
	ld   d, l                                        ; $7218: $55
	rst  $38                                         ; $7219: $ff
	nop                                              ; $721a: $00
	rst  $38                                         ; $721b: $ff
	add  b                                           ; $721c: $80
	ld   a, $80                                      ; $721d: $3e $80
	rst  $38                                         ; $721f: $ff
	rrca                                             ; $7220: $0f
	ld   b, [hl]                                     ; $7221: $46
	ld   d, [hl]                                     ; $7222: $56
	sub  c                                           ; $7223: $91
	ld   c, $cf                                      ; $7224: $0e $cf
	add  b                                           ; $7226: $80
	ld   a, a                                        ; $7227: $7f
	ret  nz                                          ; $7228: $c0

	ld   c, h                                        ; $7229: $4c
	db   $fc                                         ; $722a: $fc

jr_077_722b:
	ld   [hl], b                                     ; $722b: $70
	ret  nz                                          ; $722c: $c0

	ld   h, b                                        ; $722d: $60
	jr   nz, jr_077_7200                             ; $722e: $20 $d0

	ldh  a, [$80]                                    ; $7230: $f0 $80
	db   $10                                         ; $7232: $10
	dec  bc                                          ; $7233: $0b
	cp   $18                                         ; $7234: $fe $18
	cp   b                                           ; $7236: $b8
	jr   nc, jr_077_722b                             ; $7237: $30 $f2

	ld   h, d                                        ; $7239: $62
	and  $c6                                         ; $723a: $e6 $c6
	adc  $8e                                         ; $723c: $ce $8e
	ld   a, [hl]                                     ; $723e: $7e

jr_077_723f:
	nop                                              ; $723f: $00
	add  b                                           ; $7240: $80
	cp   $80                                         ; $7241: $fe $80
	ccf                                              ; $7243: $3f
	dec  e                                           ; $7244: $1d
	ld   d, l                                        ; $7245: $55
	rst  $38                                         ; $7246: $ff
	dec  c                                           ; $7247: $0d
	rst  $30                                         ; $7248: $f7
	dec  b                                           ; $7249: $05
	rst  $30                                         ; $724a: $f7
	ld   c, b                                        ; $724b: $48
	ei                                               ; $724c: $fb
	ld   b, d                                        ; $724d: $42
	ld   a, e                                        ; $724e: $7b
	ld   hl, $141d                                   ; $724f: $21 $1d $14
	inc  c                                           ; $7252: $0c
	di                                               ; $7253: $f3
	rst  $38                                         ; $7254: $ff
	ld   d, l                                        ; $7255: $55
	rst  $38                                         ; $7256: $ff
	ld   d, l                                        ; $7257: $55
	rst  $38                                         ; $7258: $ff
	cp   a                                           ; $7259: $bf
	rst  $38                                         ; $725a: $ff
	sbc  a                                           ; $725b: $9f
	rst  $38                                         ; $725c: $ff
	ld   c, a                                        ; $725d: $4f
	rst  $38                                         ; $725e: $ff
	daa                                              ; $725f: $27
	rst  $38                                         ; $7260: $ff
	ld   [$8040], sp                                 ; $7261: $08 $40 $80
	add  b                                           ; $7264: $80
	ld   [bc], a                                     ; $7265: $02
	ld   d, l                                        ; $7266: $55
	rst  $38                                         ; $7267: $ff
	ld   d, l                                        ; $7268: $55
	add  a                                           ; $7269: $87
	rst  $38                                         ; $726a: $ff
	add  b                                           ; $726b: $80
	nop                                              ; $726c: $00
	dec  b                                           ; $726d: $05
	ldh  a, [c]                                      ; $726e: $f2
	cp   $59                                         ; $726f: $fe $59
	rst  $38                                         ; $7271: $ff
	ld   d, l                                        ; $7272: $55
	rst  $38                                         ; $7273: $ff
	add  d                                           ; $7274: $82
	add  b                                           ; $7275: $80
	add  b                                           ; $7276: $80
	ldh  [$80], a                                    ; $7277: $e0 $80
	ld   hl, sp-$80                                  ; $7279: $f8 $80
	inc  b                                           ; $727b: $04
	ld   bc, $05f5                                   ; $727c: $01 $f5 $05

Call_077_727f:
	add  b                                           ; $727f: $80
	ld   a, [bc]                                     ; $7280: $0a
	add  b                                           ; $7281: $80
	dec  b                                           ; $7282: $05
	add  b                                           ; $7283: $80
	ld   [$0202], sp                                 ; $7284: $08 $02 $02
	inc  bc                                          ; $7287: $03
	ld   c, $83                                      ; $7288: $0e $83
	rrca                                             ; $728a: $0f
	ld   a, [de]                                     ; $728b: $1a
	sub  h                                           ; $728c: $94
	ld   [hl], a                                     ; $728d: $77
	call nc, $07d0                                   ; $728e: $d4 $d0 $07
	scf                                              ; $7291: $37
	ld   h, [hl]                                     ; $7292: $66
	rst  $28                                         ; $7293: $ef
	ld   l, c                                        ; $7294: $69
	xor  $67                                         ; $7295: $ee $67
	add  sp, $7e                                     ; $7297: $e8 $7e
	ldh  [$d8], a                                    ; $7299: $e0 $d8
	add  b                                           ; $729b: $80
	ld   h, a                                        ; $729c: $67
	cp   $27                                         ; $729d: $fe $27
	jr   c, jr_077_723f                              ; $729f: $38 $9e

	ldh  [$78], a                                    ; $72a1: $e0 $78
	add  b                                           ; $72a3: $80
	ldh  [rP1], a                                    ; $72a4: $e0 $00
	add  b                                           ; $72a6: $80
	add  e                                           ; $72a7: $83
	nop                                              ; $72a8: $00
	ld   [bc], a                                     ; $72a9: $02
	add  h                                           ; $72aa: $84
	inc  c                                           ; $72ab: $0c
	adc  h                                           ; $72ac: $8c
	add  e                                           ; $72ad: $83
	inc  c                                           ; $72ae: $0c
	nop                                              ; $72af: $00
	dec  c                                           ; $72b0: $0d
	add  b                                           ; $72b1: $80
	inc  c                                           ; $72b2: $0c
	add  hl, hl                                      ; $72b3: $29
	dec  c                                           ; $72b4: $0d
	rla                                              ; $72b5: $17
	rlca                                             ; $72b6: $07
	ld   h, [hl]                                     ; $72b7: $66
	ld   e, $61                                      ; $72b8: $1e $61
	nop                                              ; $72ba: $00
	ld   b, $01                                      ; $72bb: $06 $01
	add  hl, de                                      ; $72bd: $19
	rlca                                             ; $72be: $07
	ld   h, h                                        ; $72bf: $64
	inc  e                                           ; $72c0: $1c
	sbc  e                                           ; $72c1: $9b
	ld   a, e                                        ; $72c2: $7b

Jump_077_72c3:
	ld   h, b                                        ; $72c3: $60
	rst  $20                                         ; $72c4: $e7
	sbc  c                                           ; $72c5: $99
	sbc  a                                           ; $72c6: $9f
	ld   bc, $807f                                   ; $72c7: $01 $7f $80
	ld   a, a                                        ; $72ca: $7f
	ret  nz                                          ; $72cb: $c0

	ld   a, a                                        ; $72cc: $7f
	ld   c, [hl]                                     ; $72cd: $4e
	ld   a, a                                        ; $72ce: $7f
	dec  c                                           ; $72cf: $0d
	cp   $7a                                         ; $72d0: $fe $7a
	ldh  a, [$67]                                    ; $72d2: $f0 $67
	ldh  a, [$cf]                                    ; $72d4: $f0 $cf
	ldh  [$b0], a                                    ; $72d6: $e0 $b0
	ret  nz                                          ; $72d8: $c0

	ld   b, b                                        ; $72d9: $40
	rst  $38                                         ; $72da: $ff
	nop                                              ; $72db: $00
	rst  $38                                         ; $72dc: $ff
	nop                                              ; $72dd: $00
	add  b                                           ; $72de: $80
	rst  $38                                         ; $72df: $ff
	add  c                                           ; $72e0: $81
	nop                                              ; $72e1: $00
	ld   [bc], a                                     ; $72e2: $02
	db   $fc                                         ; $72e3: $fc
	inc  bc                                          ; $72e4: $03
	rst  $38                                         ; $72e5: $ff
	add  c                                           ; $72e6: $81
	nop                                              ; $72e7: $00
	inc  b                                           ; $72e8: $04
	ld   a, h                                        ; $72e9: $7c
	add  e                                           ; $72ea: $83
	nop                                              ; $72eb: $00
	rst  $38                                         ; $72ec: $ff
	nop                                              ; $72ed: $00
	add  b                                           ; $72ee: $80
	rst  $38                                         ; $72ef: $ff
	add  c                                           ; $72f0: $81
	nop                                              ; $72f1: $00
	ld   de, $f00f                                   ; $72f2: $11 $0f $f0
	cp   $00                                         ; $72f5: $fe $00
	ld   [bc], a                                     ; $72f7: $02
	inc  b                                           ; $72f8: $04
	jr   @+$01                                       ; $72f9: $18 $ff

	rra                                              ; $72fb: $1f
	rst  $38                                         ; $72fc: $ff
	rrca                                             ; $72fd: $0f
	rst  $28                                         ; $72fe: $ef

Call_077_72ff:
	rst  JumpTable                                         ; $72ff: $df
	rra                                              ; $7300: $1f
	ld   l, a                                        ; $7301: $6f
	cpl                                              ; $7302: $2f
	rst  JumpTable                                         ; $7303: $df
	ld   a, a                                        ; $7304: $7f
	add  b                                           ; $7305: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7306: $cf
	inc  bc                                          ; $7307: $03
	cp   a                                           ; $7308: $bf
	rst  $38                                         ; $7309: $ff
	ld   a, a                                        ; $730a: $7f
	rst  $38                                         ; $730b: $ff
	add  b                                           ; $730c: $80
	add  sp, -$80                                    ; $730d: $e8 $80
	db   $fc                                         ; $730f: $fc
	add  b                                           ; $7310: $80
	add  sp, -$80                                    ; $7311: $e8 $80
	db   $fc                                         ; $7313: $fc
	add  b                                           ; $7314: $80
	add  sp, -$80                                    ; $7315: $e8 $80
	rst  $38                                         ; $7317: $ff
	add  b                                           ; $7318: $80
	add  sp, $03                                     ; $7319: $e8 $03
	rst  $20                                         ; $731b: $e7
	add  sp, $04                                     ; $731c: $e8 $04
	dec  bc                                          ; $731e: $0b
	add  b                                           ; $731f: $80
	rla                                              ; $7320: $17
	add  b                                           ; $7321: $80
	dec  bc                                          ; $7322: $0b
	add  b                                           ; $7323: $80
	rla                                              ; $7324: $17
	add  b                                           ; $7325: $80
	dec  bc                                          ; $7326: $0b
	add  b                                           ; $7327: $80
	rst  $30                                         ; $7328: $f7
	add  b                                           ; $7329: $80
	dec  bc                                          ; $732a: $0b
	ld   [bc], a                                     ; $732b: $02
	add  b                                           ; $732c: $80
	nop                                              ; $732d: $00
	ld   a, a                                        ; $732e: $7f
	adc  e                                           ; $732f: $8b
	rst  $38                                         ; $7330: $ff
	inc  bc                                          ; $7331: $03
	ld   [hl], l                                     ; $7332: $75
	adc  a                                           ; $7333: $8f
	ld   e, d                                        ; $7334: $5a
	and  b                                           ; $7335: $a0
	add  b                                           ; $7336: $80
	ldh  a, [$80]                                    ; $7337: $f0 $80
	and  b                                           ; $7339: $a0
	add  b                                           ; $733a: $80
	ldh  a, [$80]                                    ; $733b: $f0 $80
	and  b                                           ; $733d: $a0
	add  b                                           ; $733e: $80
	ldh  a, [$80]                                    ; $733f: $f0 $80
	and  b                                           ; $7341: $a0
	inc  bc                                          ; $7342: $03
	ld   d, l                                        ; $7343: $55
	rst  $38                                         ; $7344: $ff
	xor  d                                           ; $7345: $aa
	nop                                              ; $7346: $00
	add  b                                           ; $7347: $80
	ld   d, l                                        ; $7348: $55
	add  b                                           ; $7349: $80
	nop                                              ; $734a: $00
	add  b                                           ; $734b: $80
	dec  d                                           ; $734c: $15
	add  b                                           ; $734d: $80
	nop                                              ; $734e: $00
	add  b                                           ; $734f: $80
	dec  b                                           ; $7350: $05
	add  b                                           ; $7351: $80
	nop                                              ; $7352: $00
	add  hl, bc                                      ; $7353: $09
	ld   d, l                                        ; $7354: $55
	rst  $38                                         ; $7355: $ff
	inc  b                                           ; $7356: $04
	xor  a                                           ; $7357: $af
	cp   $fc                                         ; $7358: $fe $fc
	jr   z, @+$2c                                    ; $735a: $28 $2a

	ld   a, [hl]                                     ; $735c: $7e
	ld   a, a                                        ; $735d: $7f
	add  b                                           ; $735e: $80
	ld   a, [hl+]                                    ; $735f: $2a
	rlca                                             ; $7360: $07
	ld   b, e                                        ; $7361: $43
	ld   e, a                                        ; $7362: $5f
	jr   z, jr_077_739b                              ; $7363: $28 $36

	ld   d, a                                        ; $7365: $57
	rst  $38                                         ; $7366: $ff
	xor  d                                           ; $7367: $aa
	rst  $38                                         ; $7368: $ff
	add  d                                           ; $7369: $82
	nop                                              ; $736a: $00
	inc  bc                                          ; $736b: $03
	inc  bc                                          ; $736c: $03
	rst  $38                                         ; $736d: $ff
	cp   h                                           ; $736e: $bc
	cp   a                                           ; $736f: $bf
	add  b                                           ; $7370: $80
	rst  $38                                         ; $7371: $ff
	add  b                                           ; $7372: $80
	xor  e                                           ; $7373: $ab
	dec  e                                           ; $7374: $1d
	ld   [bc], a                                     ; $7375: $02
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	add  c                                           ; $7378: $81
	rrca                                             ; $7379: $0f
	add  b                                           ; $737a: $80
	ld   bc, $0000                                   ; $737b: $01 $00 $00
	add  b                                           ; $737e: $80
	ld   c, $83                                      ; $737f: $0e $83
	rrca                                             ; $7381: $0f
	ld   [bc], a                                     ; $7382: $02
	inc  bc                                          ; $7383: $03
	ld   bc, $8302                                   ; $7384: $01 $02 $83
	rst  $38                                         ; $7387: $ff
	add  b                                           ; $7388: $80
	rra                                              ; $7389: $1f
	nop                                              ; $738a: $00
	jr   nc, @-$79                                   ; $738b: $30 $85

	rst  $38                                         ; $738d: $ff
	ld   bc, $8b4e                                   ; $738e: $01 $4e $8b
	add  b                                           ; $7391: $80
	db   $eb                                         ; $7392: $eb
	inc  bc                                          ; $7393: $03
	di                                               ; $7394: $f3
	ei                                               ; $7395: $fb
	db   $fd                                         ; $7396: $fd
	rst  $38                                         ; $7397: $ff
	add  b                                           ; $7398: $80
	rra                                              ; $7399: $1f
	nop                                              ; $739a: $00

jr_077_739b:
	nop                                              ; $739b: $00
	add  b                                           ; $739c: $80
	ldh  [$81], a                                    ; $739d: $e0 $81
	rst  $38                                         ; $739f: $ff
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	add  c                                           ; $73a2: $81
	rst  $38                                         ; $73a3: $ff
	add  d                                           ; $73a4: $82
	cp   $82                                         ; $73a5: $fe $82
	rst  $38                                         ; $73a7: $ff
	add  b                                           ; $73a8: $80
	rrca                                             ; $73a9: $0f
	ld   b, $30                                      ; $73aa: $06 $30
	cp   $41                                         ; $73ac: $fe $41
	add  b                                           ; $73ae: $80
	nop                                              ; $73af: $00
	inc  e                                           ; $73b0: $1c
	inc  d                                           ; $73b1: $14
	add  b                                           ; $73b2: $80
	rra                                              ; $73b3: $1f
	add  c                                           ; $73b4: $81
	cpl                                              ; $73b5: $2f
	inc  bc                                          ; $73b6: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73b7: $cf
	rst  $28                                         ; $73b8: $ef
	rst  $30                                         ; $73b9: $f7
	rst  $38                                         ; $73ba: $ff
	add  b                                           ; $73bb: $80
	rrca                                             ; $73bc: $0f
	nop                                              ; $73bd: $00
	rst  $38                                         ; $73be: $ff
	add  d                                           ; $73bf: $82
	nop                                              ; $73c0: $00
	add  b                                           ; $73c1: $80
	add  b                                           ; $73c2: $80
	add  b                                           ; $73c3: $80
	ld   hl, sp-$7a                                  ; $73c4: $f8 $86
	rst  $38                                         ; $73c6: $ff
	add  l                                           ; $73c7: $85
	nop                                              ; $73c8: $00
	inc  bc                                          ; $73c9: $03
	ld   bc, $1e00                                   ; $73ca: $01 $00 $1e
	ldh  [$82], a                                    ; $73cd: $e0 $82
	ret  nz                                          ; $73cf: $c0

	nop                                              ; $73d0: $00
	rst  $38                                         ; $73d1: $ff
	add  e                                           ; $73d2: $83
	nop                                              ; $73d3: $00
	inc  b                                           ; $73d4: $04
	add  hl, bc                                      ; $73d5: $09
	ld   e, $ee                                      ; $73d6: $1e $ee
	ld   e, $0a                                      ; $73d8: $1e $0a
	add  c                                           ; $73da: $81
	ld   [hl], $80                                   ; $73db: $36 $80
	inc  [hl]                                        ; $73dd: $34
	nop                                              ; $73de: $00
	db   $db                                         ; $73df: $db
	add  b                                           ; $73e0: $80
	nop                                              ; $73e1: $00
	ld   b, $03                                      ; $73e2: $06 $03
	jr   c, jr_077_73ed                              ; $73e4: $38 $07

	rst  ToBoot                                         ; $73e6: $c7
	rlca                                             ; $73e7: $07
	nop                                              ; $73e8: $00
	rlca                                             ; $73e9: $07
	add  b                                           ; $73ea: $80
	ld   b, $81                                      ; $73eb: $06 $81

jr_077_73ed:
	inc  b                                           ; $73ed: $04
	inc  b                                           ; $73ee: $04
	nop                                              ; $73ef: $00
	ld   hl, sp+$00                                  ; $73f0: $f8 $00
	ld   a, b                                        ; $73f2: $78
	add  b                                           ; $73f3: $80
	add  b                                           ; $73f4: $80
	ret  nz                                          ; $73f5: $c0

	nop                                              ; $73f6: $00
	ld   b, b                                        ; $73f7: $40
	add  e                                           ; $73f8: $83
	pop  bc                                          ; $73f9: $c1
	nop                                              ; $73fa: $00
	add  c                                           ; $73fb: $81
	add  b                                           ; $73fc: $80
	add  b                                           ; $73fd: $80
	ld   [$f700], sp                                 ; $73fe: $08 $00 $f7
	db   $f4                                         ; $7401: $f4
	or   h                                           ; $7402: $b4
	rst  $30                                         ; $7403: $f7
	ld   [hl], e                                     ; $7404: $73
	di                                               ; $7405: $f3
	inc  de                                          ; $7406: $13
	di                                               ; $7407: $f3
	add  b                                           ; $7408: $80
	or   e                                           ; $7409: $b3
	add  c                                           ; $740a: $81
	ld   hl, $0181                                   ; $740b: $21 $81 $01
	nop                                              ; $740e: $00
	rst  $38                                         ; $740f: $ff
	add  d                                           ; $7410: $82
	nop                                              ; $7411: $00
	ld   [$e0c0], sp                                 ; $7412: $08 $c0 $e0
	ret  nc                                          ; $7415: $d0

	or   b                                           ; $7416: $b0
	sbc  b                                           ; $7417: $98
	dec  de                                          ; $7418: $1b
	inc  e                                           ; $7419: $1c
	dec  e                                           ; $741a: $1d
	inc  e                                           ; $741b: $1c
	add  b                                           ; $741c: $80
	ret  c                                           ; $741d: $d8

	nop                                              ; $741e: $00
	sbc  $95                                         ; $741f: $de $95
	nop                                              ; $7421: $00
	add  [hl]                                        ; $7422: $86
	rrca                                             ; $7423: $0f
	add  [hl]                                        ; $7424: $86
	nop                                              ; $7425: $00
	add  [hl]                                        ; $7426: $86
	rst  $38                                         ; $7427: $ff
	adc  h                                           ; $7428: $8c
	rrca                                             ; $7429: $0f
	nop                                              ; $742a: $00
	inc  bc                                          ; $742b: $03
	add  b                                           ; $742c: $80
	rrca                                             ; $742d: $0f
	inc  bc                                          ; $742e: $03
	ld   bc, $0f03                                   ; $742f: $01 $03 $0f
	dec  c                                           ; $7432: $0d
	add  l                                           ; $7433: $85
	ld   bc, $0304                                   ; $7434: $01 $04 $03
	rrca                                             ; $7437: $0f
	dec  c                                           ; $7438: $0d
	ld   bc, $85cd                                   ; $7439: $01 $cd $85
	rst  $38                                         ; $743c: $ff
	add  b                                           ; $743d: $80
	cp   $80                                         ; $743e: $fe $80
	rst  $38                                         ; $7440: $ff
	add  b                                           ; $7441: $80
	cp   $80                                         ; $7442: $fe $80
	rst  $38                                         ; $7444: $ff

jr_077_7445:
	inc  b                                           ; $7445: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7446: $cf
	rst  $38                                         ; $7447: $ff
	rst  ToBoot                                         ; $7448: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7449: $cf
	res  0, b                                        ; $744a: $cb $80
	ret                                              ; $744c: $c9


	inc  bc                                          ; $744d: $03
	ld   sp, hl                                      ; $744e: $f9
	ei                                               ; $744f: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7450: $cf
	call $c981                                       ; $7451: $cd $81 $c9
	ld   [bc], a                                     ; $7454: $02
	set  7, a                                        ; $7455: $cb $ff
	pop  af                                          ; $7457: $f1
	adc  l                                           ; $7458: $8d
	rst  $38                                         ; $7459: $ff
	ld   [bc], a                                     ; $745a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $745b: $cf
	ldh  a, [$f3]                                    ; $745c: $f0 $f3
	add  c                                           ; $745e: $81
	rst  $38                                         ; $745f: $ff
	ld   b, $9f                                      ; $7460: $06 $9f
	cp   a                                           ; $7462: $bf
	xor  a                                           ; $7463: $af
	and  a                                           ; $7464: $a7
	xor  a                                           ; $7465: $af
	rst  $38                                         ; $7466: $ff
	rst  $30                                         ; $7467: $f7
	add  c                                           ; $7468: $81
	and  a                                           ; $7469: $a7
	inc  b                                           ; $746a: $04
	dec  hl                                          ; $746b: $2b
	rst  $38                                         ; $746c: $ff
	inc  bc                                          ; $746d: $03
	jp   $80c0                                       ; $746e: $c3 $c0 $80


	db   $fc                                         ; $7471: $fc
	add  c                                           ; $7472: $81
	rst  $38                                         ; $7473: $ff
	nop                                              ; $7474: $00
	cp   $83                                         ; $7475: $fe $83
	rst  $38                                         ; $7477: $ff
	nop                                              ; $7478: $00
	ld   a, [hl]                                     ; $7479: $7e
	add  c                                           ; $747a: $81
	add  b                                           ; $747b: $80
	add  b                                           ; $747c: $80
	nop                                              ; $747d: $00
	adc  b                                           ; $747e: $88
	cp   a                                           ; $747f: $bf
	add  d                                           ; $7480: $82
	nop                                              ; $7481: $00
	add  b                                           ; $7482: $80
	rra                                              ; $7483: $1f
	add  d                                           ; $7484: $82
	cp   a                                           ; $7485: $bf
	rlca                                             ; $7486: $07
	or   e                                           ; $7487: $b3
	cp   e                                           ; $7488: $bb
	or   e                                           ; $7489: $b3
	cp   e                                           ; $748a: $bb
	or   e                                           ; $748b: $b3
	cp   e                                           ; $748c: $bb
	ld   [$8000], sp                                 ; $748d: $08 $00 $80
	ld   bc, $ef82                                   ; $7490: $01 $82 $ef
	nop                                              ; $7493: $00
	xor  $81                                         ; $7494: $ee $81
	rst  $28                                         ; $7496: $ef
	dec  b                                           ; $7497: $05
	xor  $ef                                         ; $7498: $ee $ef
	xor  $ef                                         ; $749a: $ee $ef
	ld   bc, $8400                                   ; $749c: $01 $00 $84
	db   $fd                                         ; $749f: $fd
	add  [hl]                                        ; $74a0: $86
	cp   l                                           ; $74a1: $bd
	add  b                                           ; $74a2: $80
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	cp   $81                                         ; $74a5: $fe $81
	rst  $38                                         ; $74a7: $ff
	nop                                              ; $74a8: $00
	rst  $10                                         ; $74a9: $d7
	add  c                                           ; $74aa: $81
	rst  $30                                         ; $74ab: $f7
	ld   [bc], a                                     ; $74ac: $02
	rst  $10                                         ; $74ad: $d7
	rst  $30                                         ; $74ae: $f7
	rst  $10                                         ; $74af: $d7
	add  c                                           ; $74b0: $81
	rst  $30                                         ; $74b1: $f7
	ld   [$7858], sp                                 ; $74b2: $08 $58 $78
	inc  e                                           ; $74b5: $1c
	sbc  h                                           ; $74b6: $9c
	add  [hl]                                        ; $74b7: $86
	rst  $20                                         ; $74b8: $e7
	db   $eb                                         ; $74b9: $eb
	ei                                               ; $74ba: $fb
	ret  z                                           ; $74bb: $c8

	add  b                                           ; $74bc: $80
	cp   $83                                         ; $74bd: $fe $83
	rst  JumpTable                                         ; $74bf: $df
	nop                                              ; $74c0: $00
	jr   jr_077_7445                                 ; $74c1: $18 $82

	add  b                                           ; $74c3: $80
	add  c                                           ; $74c4: $81
	pop  bc                                          ; $74c5: $c1
	add  hl, bc                                      ; $74c6: $09
	ld   d, b                                        ; $74c7: $50
	ld   [hl], d                                     ; $74c8: $72
	cp   l                                           ; $74c9: $bd
	dec  hl                                          ; $74ca: $2b
	ld   l, b                                        ; $74cb: $68
	ld   [bc], a                                     ; $74cc: $02
	dec  b                                           ; $74cd: $05
	sub  l                                           ; $74ce: $95
	ld   c, a                                        ; $74cf: $4f
	ret  nz                                          ; $74d0: $c0

	add  b                                           ; $74d1: $80
	ldh  [$80], a                                    ; $74d2: $e0 $80
	ldh  a, [$0a]                                    ; $74d4: $f0 $0a
	or   b                                           ; $74d6: $b0
	ld   [hl], b                                     ; $74d7: $70
	ld   d, h                                        ; $74d8: $54
	db   $f4                                         ; $74d9: $f4
	ld   a, $fe                                      ; $74da: $3e $fe
	sbc  d                                           ; $74dc: $9a
	cp   $d1                                         ; $74dd: $fe $d1
	rst  $38                                         ; $74df: $ff
	ld   [$008b], a                                  ; $74e0: $ea $8b $00
	add  b                                           ; $74e3: $80
	add  b                                           ; $74e4: $80
	add  a                                           ; $74e5: $87
	nop                                              ; $74e6: $00
	inc  bc                                          ; $74e7: $03
	inc  bc                                          ; $74e8: $03
	nop                                              ; $74e9: $00
	ld   [bc], a                                     ; $74ea: $02
	nop                                              ; $74eb: $00
	add  c                                           ; $74ec: $81
	ld   [bc], a                                     ; $74ed: $02
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	add  d                                           ; $74f0: $82
	ld   bc, $0d01                                   ; $74f1: $01 $01 $0d
	ld   c, $85                                      ; $74f4: $0e $85

jr_077_74f6:
	rrca                                             ; $74f6: $0f
	ld   [bc], a                                     ; $74f7: $02
	nop                                              ; $74f8: $00
	rrca                                             ; $74f9: $0f
	adc  $81                                         ; $74fa: $ce $81
	cp   $80                                         ; $74fc: $fe $80
	db   $fc                                         ; $74fe: $fc
	ld   bc, $fe3e                                   ; $74ff: $01 $3e $fe
	add  b                                           ; $7502: $80
	db   $fc                                         ; $7503: $fc
	add  b                                           ; $7504: $80
	cp   $80                                         ; $7505: $fe $80
	db   $fc                                         ; $7507: $fc
	ld   [bc], a                                     ; $7508: $02
	ld   a, $fe                                      ; $7509: $3e $fe
	di                                               ; $750b: $f3
	add  e                                           ; $750c: $83
	ret                                              ; $750d: $c9


	nop                                              ; $750e: $00
	ld   a, [bc]                                     ; $750f: $0a
	add  l                                           ; $7510: $85
	rst  $38                                         ; $7511: $ff
	ld   [bc], a                                     ; $7512: $02
	nop                                              ; $7513: $00
	rst  $38                                         ; $7514: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7515: $cf
	add  l                                           ; $7516: $85
	rst  $38                                         ; $7517: $ff
	nop                                              ; $7518: $00
	ld   a, $81                                      ; $7519: $3e $81
	rst  $38                                         ; $751b: $ff
	ld   b, $fe                                      ; $751c: $06 $fe
	rst  $38                                         ; $751e: $ff
	ccf                                              ; $751f: $3f
	rst  $38                                         ; $7520: $ff
	or   h                                           ; $7521: $b4
	rst  $38                                         ; $7522: $ff
	rst  $30                                         ; $7523: $f7
	add  e                                           ; $7524: $83
	and  a                                           ; $7525: $a7
	nop                                              ; $7526: $00
	dec  hl                                          ; $7527: $2b
	add  c                                           ; $7528: $81
	rst  $38                                         ; $7529: $ff
	nop                                              ; $752a: $00
	inc  bc                                          ; $752b: $03
	add  c                                           ; $752c: $81
	rst  $38                                         ; $752d: $ff
	ld   [bc], a                                     ; $752e: $02
	db   $fd                                         ; $752f: $fd
	rst  $38                                         ; $7530: $ff
	db   $fd                                         ; $7531: $fd
	add  e                                           ; $7532: $83
	rst  $38                                         ; $7533: $ff
	nop                                              ; $7534: $00
	call nz, $f881                                   ; $7535: $c4 $81 $f8
	nop                                              ; $7538: $00
	rst  ToBoot                                         ; $7539: $c7
	add  c                                           ; $753a: $81
	rst  $38                                         ; $753b: $ff
	nop                                              ; $753c: $00
	ld   b, a                                        ; $753d: $47
	add  l                                           ; $753e: $85
	cp   a                                           ; $753f: $bf
	add  d                                           ; $7540: $82
	ld   bc, $bf82                                   ; $7541: $01 $82 $bf
	dec  b                                           ; $7544: $05
	or   e                                           ; $7545: $b3
	cp   e                                           ; $7546: $bb
	or   e                                           ; $7547: $b3
	cp   e                                           ; $7548: $bb
	or   e                                           ; $7549: $b3
	cp   e                                           ; $754a: $bb
	add  b                                           ; $754b: $80
	cp   b                                           ; $754c: $b8
	nop                                              ; $754d: $00
	adc  b                                           ; $754e: $88
	add  c                                           ; $754f: $81
	add  b                                           ; $7550: $80
	add  d                                           ; $7551: $82
	cp   a                                           ; $7552: $bf
	inc  b                                           ; $7553: $04
	xor  $ef                                         ; $7554: $ee $ef
	xor  $ef                                         ; $7556: $ee $ef
	xor  $81                                         ; $7558: $ee $81
	rst  $28                                         ; $755a: $ef
	nop                                              ; $755b: $00
	pop  hl                                          ; $755c: $e1
	add  c                                           ; $755d: $81
	ldh  [$82], a                                    ; $755e: $e0 $82
	rst  $28                                         ; $7560: $ef
	add  h                                           ; $7561: $84
	cp   l                                           ; $7562: $bd
	add  b                                           ; $7563: $80
	cp   h                                           ; $7564: $bc
	add  b                                           ; $7565: $80
	inc  e                                           ; $7566: $1c
	add  b                                           ; $7567: $80
	dec  e                                           ; $7568: $1d
	add  d                                           ; $7569: $82
	db   $fd                                         ; $756a: $fd
	inc  bc                                          ; $756b: $03
	or   $f7                                         ; $756c: $f6 $f7
	rst  $10                                         ; $756e: $d7
	rst  $30                                         ; $756f: $f7
	add  b                                           ; $7570: $80
	rst  $28                                         ; $7571: $ef
	nop                                              ; $7572: $00
	jr   nz, jr_077_74f6                             ; $7573: $20 $81

	ld   bc, $fe00                                   ; $7575: $01 $00 $fe
	add  c                                           ; $7578: $81
	rst  $38                                         ; $7579: $ff
	ld   [bc], a                                     ; $757a: $02
	rst  $10                                         ; $757b: $d7
	rst  $30                                         ; $757c: $f7
	add  hl, de                                      ; $757d: $19
	add  e                                           ; $757e: $83
	rst  JumpTable                                         ; $757f: $df
	dec  bc                                          ; $7580: $0b
	ld   e, a                                        ; $7581: $5f
	rst  JumpTable                                         ; $7582: $df
	sbc  h                                           ; $7583: $9c
	rst  $38                                         ; $7584: $ff
	rra                                              ; $7585: $1f
	rst  $38                                         ; $7586: $ff
	rst  $28                                         ; $7587: $ef
	rst  $38                                         ; $7588: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7589: $cf
	rst  $38                                         ; $758a: $ff
	ccf                                              ; $758b: $3f
	sbc  e                                           ; $758c: $9b
	add  b                                           ; $758d: $80
	add  h                                           ; $758e: $84
	add  b                                           ; $758f: $80
	add  b                                           ; $7590: $80
	add  b                                           ; $7591: $80
	sub  e                                           ; $7592: $93
	ld   bc, $e181                                   ; $7593: $01 $81 $e1
	add  b                                           ; $7596: $80
	rst  $30                                         ; $7597: $f7
	dec  d                                           ; $7598: $15
	jp   nc, wPreservedDEduringAnimSpriteSpecLoad                                   ; $7599: $d2 $f2 $c1

	pop  hl                                          ; $759c: $e1
	call nc, $fbff                                   ; $759d: $d4 $ff $fb
	rst  JumpTable                                         ; $75a0: $df
	or   a                                           ; $75a1: $b7
	cp   a                                           ; $75a2: $bf
	rlca                                             ; $75a3: $07
	ld   e, a                                        ; $75a4: $5f
	ld   c, l                                        ; $75a5: $4d
	cp   a                                           ; $75a6: $bf
	dec  b                                           ; $75a7: $05
	cp   $ce                                         ; $75a8: $fe $ce
	cp   a                                           ; $75aa: $bf
	dec  de                                          ; $75ab: $1b
	ld   a, a                                        ; $75ac: $7f
	inc  a                                           ; $75ad: $3c
	add  b                                           ; $75ae: $80
	add  d                                           ; $75af: $82
	nop                                              ; $75b0: $00
	inc  bc                                          ; $75b1: $03
	add  b                                           ; $75b2: $80
	rst  $38                                         ; $75b3: $ff
	ccf                                              ; $75b4: $3f
	cp   a                                           ; $75b5: $bf
	add  b                                           ; $75b6: $80
	ld   a, a                                        ; $75b7: $7f
	rlca                                             ; $75b8: $07
	rst  $38                                         ; $75b9: $ff
	ld   a, a                                        ; $75ba: $7f
	cp   a                                           ; $75bb: $bf
	rst  $38                                         ; $75bc: $ff
	ld   a, [hl-]                                    ; $75bd: $3a
	ld   [bc], a                                     ; $75be: $02
	dec  c                                           ; $75bf: $0d
	dec  b                                           ; $75c0: $05
	add  b                                           ; $75c1: $80
	ld   [bc], a                                     ; $75c2: $02
	rlca                                             ; $75c3: $07
	dec  d                                           ; $75c4: $15
	push hl                                          ; $75c5: $e5
	ldh  a, [c]                                      ; $75c6: $f2
	ld   a, [$fde5]                                  ; $75c7: $fa $e5 $fd
	db   $ed                                         ; $75ca: $ed
	db   $fd                                         ; $75cb: $fd
	add  b                                           ; $75cc: $80
	ld   a, [$f002]                                  ; $75cd: $fa $02 $f0
	rrca                                             ; $75d0: $0f
	inc  bc                                          ; $75d1: $03
	add  e                                           ; $75d2: $83
	ld   bc, $0303                                   ; $75d3: $01 $03 $03
	rrca                                             ; $75d6: $0f
	inc  c                                           ; $75d7: $0c
	nop                                              ; $75d8: $00
	add  b                                           ; $75d9: $80
	ld   bc, $0080                                   ; $75da: $01 $80 $00
	ld   bc, $fcce                                   ; $75dd: $01 $ce $fc
	add  b                                           ; $75e0: $80
	ld   a, [$f480]                                  ; $75e1: $fa $80 $f4
	add  b                                           ; $75e4: $80
	ld   a, [$7480]                                  ; $75e5: $fa $80 $74
	add  b                                           ; $75e8: $80
	cp   d                                           ; $75e9: $ba
	add  b                                           ; $75ea: $80
	ld   [hl], h                                     ; $75eb: $74
	add  b                                           ; $75ec: $80
	cp   d                                           ; $75ed: $ba
	ld   [bc], a                                     ; $75ee: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75ef: $cf
	rst  $38                                         ; $75f0: $ff
	jp   $c981                                       ; $75f1: $c3 $81 $c9


	ld   [bc], a                                     ; $75f4: $02
	set  7, a                                        ; $75f5: $cb $ff
	db   $fd                                         ; $75f7: $fd
	add  c                                           ; $75f8: $81
	ret                                              ; $75f9: $c9


	add  b                                           ; $75fa: $80
	ld   c, c                                        ; $75fb: $49
	add  b                                           ; $75fc: $80
	adc  c                                           ; $75fd: $89
	nop                                              ; $75fe: $00
	push bc                                          ; $75ff: $c5
	add  l                                           ; $7600: $85
	rst  $38                                         ; $7601: $ff
	add  b                                           ; $7602: $80
	push af                                          ; $7603: $f5
	add  b                                           ; $7604: $80
	ld   a, [$f580]                                  ; $7605: $fa $80 $f5
	add  b                                           ; $7608: $80
	ld   a, [$bc00]                                  ; $7609: $fa $00 $bc
	add  c                                           ; $760c: $81
	and  a                                           ; $760d: $a7
	inc  bc                                          ; $760e: $03
	xor  a                                           ; $760f: $af
	rst  $38                                         ; $7610: $ff
	rst  $30                                         ; $7611: $f7
	and  a                                           ; $7612: $a7
	add  b                                           ; $7613: $80
	daa                                              ; $7614: $27
	add  b                                           ; $7615: $80
	and  a                                           ; $7616: $a7
	inc  b                                           ; $7617: $04
	cpl                                              ; $7618: $2f
	ld   a, a                                        ; $7619: $7f
	rst  $30                                         ; $761a: $f7
	and  a                                           ; $761b: $a7
	db   $db                                         ; $761c: $db
	add  e                                           ; $761d: $83
	rst  $38                                         ; $761e: $ff
	nop                                              ; $761f: $00
	rst  $28                                         ; $7620: $ef
	add  e                                           ; $7621: $83
	rst  $38                                         ; $7622: $ff
	nop                                              ; $7623: $00
	rst  JumpTable                                         ; $7624: $df
	add  c                                           ; $7625: $81
	rst  $38                                         ; $7626: $ff
	nop                                              ; $7627: $00
	ld   a, a                                        ; $7628: $7f
	adc  e                                           ; $7629: $8b
	cp   a                                           ; $762a: $bf
	add  b                                           ; $762b: $80
	sbc  a                                           ; $762c: $9f
	add  b                                           ; $762d: $80
	cp   a                                           ; $762e: $bf
	nop                                              ; $762f: $00
	or   e                                           ; $7630: $b3
	add  c                                           ; $7631: $81
	cp   e                                           ; $7632: $bb
	ld   b, $b3                                      ; $7633: $06 $b3
	cp   e                                           ; $7635: $bb
	or   e                                           ; $7636: $b3
	cp   e                                           ; $7637: $bb
	or   e                                           ; $7638: $b3
	cp   e                                           ; $7639: $bb
	or   e                                           ; $763a: $b3
	add  c                                           ; $763b: $81
	cp   e                                           ; $763c: $bb
	nop                                              ; $763d: $00
	and  $83                                         ; $763e: $e6 $83
	rst  $28                                         ; $7640: $ef
	ld   [bc], a                                     ; $7641: $02
	xor  $ef                                         ; $7642: $ee $ef
	xor  $81                                         ; $7644: $ee $81
	rst  $28                                         ; $7646: $ef
	inc  b                                           ; $7647: $04
	xor  $ef                                         ; $7648: $ee $ef

jr_077_764a:
	xor  $ef                                         ; $764a: $ee $ef
	cp   h                                           ; $764c: $bc
	adc  e                                           ; $764d: $8b
	cp   l                                           ; $764e: $bd
	add  b                                           ; $764f: $80
	adc  l                                           ; $7650: $8d
	nop                                              ; $7651: $00
	sub  $81                                         ; $7652: $d6 $81
	rst  $30                                         ; $7654: $f7
	inc  bc                                          ; $7655: $03
	rst  $10                                         ; $7656: $d7
	rst  $30                                         ; $7657: $f7
	sub  $f6                                         ; $7658: $d6 $f6
	add  b                                           ; $765a: $80
	rst  $30                                         ; $765b: $f7
	inc  bc                                          ; $765c: $03
	sub  $f6                                         ; $765d: $d6 $f6
	rst  $10                                         ; $765f: $d7
	rst  $30                                         ; $7660: $f7
	add  b                                           ; $7661: $80
	or   $00                                         ; $7662: $f6 $00
	ld   a, [de]                                     ; $7664: $1a

jr_077_7665:
	add  c                                           ; $7665: $81
	rst  JumpTable                                         ; $7666: $df
	add  b                                           ; $7667: $80
	ld   e, a                                        ; $7668: $5f
	add  b                                           ; $7669: $80
	sbc  a                                           ; $766a: $9f
	add  b                                           ; $766b: $80
	ld   e, a                                        ; $766c: $5f
	rlca                                             ; $766d: $07
	sbc  e                                           ; $766e: $9b
	sbc  a                                           ; $766f: $9f
	ld   d, a                                        ; $7670: $57
	ld   e, h                                        ; $7671: $5c
	and  h                                           ; $7672: $a4
	or   b                                           ; $7673: $b0
	ld   a, a                                        ; $7674: $7f
	add  b                                           ; $7675: $80
	add  b                                           ; $7676: $80
	add  l                                           ; $7677: $85
	add  b                                           ; $7678: $80
	adc  d                                           ; $7679: $8a
	add  b                                           ; $767a: $80
	ret  nz                                          ; $767b: $c0

	add  b                                           ; $767c: $80
	add  b                                           ; $767d: $80
	add  b                                           ; $767e: $80
	pop  hl                                          ; $767f: $e1
	add  hl, bc                                      ; $7680: $09
	ld   b, h                                        ; $7681: $44
	rst  $30                                         ; $7682: $f7
	inc  c                                           ; $7683: $0c
	rst  $38                                         ; $7684: $ff
	sbc  d                                           ; $7685: $9a
	rst  $38                                         ; $7686: $ff
	ld   e, b                                        ; $7687: $58
	ld   a, a                                        ; $7688: $7f
	inc  a                                           ; $7689: $3c
	ld   a, $80                                      ; $768a: $3e $80
	ld   d, l                                        ; $768c: $55
	add  b                                           ; $768d: $80
	ld   a, [hl+]                                    ; $768e: $2a
	add  d                                           ; $768f: $82
	nop                                              ; $7690: $00
	ld   a, [bc]                                     ; $7691: $0a
	ld   l, l                                        ; $7692: $6d
	ld   l, a                                        ; $7693: $6f
	sbc  l                                           ; $7694: $9d
	rst  $38                                         ; $7695: $ff
	ld   e, a                                        ; $7696: $5f
	rst  $38                                         ; $7697: $ff
	ld   c, a                                        ; $7698: $4f
	rst  $38                                         ; $7699: $ff
	xor  a                                           ; $769a: $af
	rst  $38                                         ; $769b: $ff
	rra                                              ; $769c: $1f
	add  c                                           ; $769d: $81
	ld   a, a                                        ; $769e: $7f
	dec  b                                           ; $769f: $05
	or   b                                           ; $76a0: $b0
	rst  $38                                         ; $76a1: $ff
	inc  h                                           ; $76a2: $24
	ccf                                              ; $76a3: $3f
	pop  hl                                          ; $76a4: $e1
	push af                                          ; $76a5: $f5
	add  b                                           ; $76a6: $80
	ld   [$e480], a                                  ; $76a7: $ea $80 $e4
	add  b                                           ; $76aa: $80
	ldh  [$80], a                                    ; $76ab: $e0 $80
	pop  bc                                          ; $76ad: $c1
	ld   b, $e0                                      ; $76ae: $06 $e0
	ldh  a, [$e8]                                    ; $76b0: $f0 $e8
	ld   hl, sp+$56                                  ; $76b2: $f8 $56
	or   $5d                                         ; $76b4: $f6 $5d
	add  c                                           ; $76b6: $81
	nop                                              ; $76b7: $00
	ld   [bc], a                                     ; $76b8: $02
	ld   [bc], a                                     ; $76b9: $02
	ld   c, $0c                                      ; $76ba: $0e $0c
	add  c                                           ; $76bc: $81
	nop                                              ; $76bd: $00
	ld   bc, FarGetAddrBank                                   ; $76be: $01 $09 $0b
	add  b                                           ; $76c1: $80
	rlca                                             ; $76c2: $07
	add  b                                           ; $76c3: $80
	rrca                                             ; $76c4: $0f
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	add  l                                           ; $76c7: $85
	jr   nc, jr_077_764a                             ; $76c8: $30 $80

	ccf                                              ; $76ca: $3f
	ld   bc, $2d1d                                   ; $76cb: $01 $1d $2d
	add  b                                           ; $76ce: $80
	rst  $38                                         ; $76cf: $ff
	inc  b                                           ; $76d0: $04
	ld   a, [$05ff]                                  ; $76d1: $fa $ff $05
	ld   a, $3c                                      ; $76d4: $3e $3c
	add  e                                           ; $76d6: $83
	ld   [$b508], sp                                 ; $76d7: $08 $08 $b5
	cp   a                                           ; $76da: $bf
	rst  $30                                         ; $76db: $f7
	rst  $38                                         ; $76dc: $ff
	ld   d, e                                        ; $76dd: $53
	rst  $38                                         ; $76de: $ff
	inc  h                                           ; $76df: $24
	rst  $38                                         ; $76e0: $ff
	ld   a, a                                        ; $76e1: $7f
	add  c                                           ; $76e2: $81
	jr   nc, jr_077_7665                             ; $76e3: $30 $80

	inc  sp                                          ; $76e5: $33
	rlca                                             ; $76e6: $07
	ld   c, a                                        ; $76e7: $4f
	ld   a, a                                        ; $76e8: $7f
	xor  $ff                                         ; $76e9: $ee $ff
	ld   b, c                                        ; $76eb: $41
	rst  $38                                         ; $76ec: $ff
	xor  b                                           ; $76ed: $a8
	ld   hl, sp-$80                                  ; $76ee: $f8 $80
	add  e                                           ; $76f0: $83
	add  hl, bc                                      ; $76f1: $09
	rst  $30                                         ; $76f2: $f7
	inc  hl                                          ; $76f3: $23
	dec  h                                           ; $76f4: $25
	ld   l, $ea                                      ; $76f5: $2e $ea
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f7: $cf
	ld   e, h                                        ; $76f8: $5c
	rst  $38                                         ; $76f9: $ff
	and  [hl]                                        ; $76fa: $a6
	rst  $38                                         ; $76fb: $ff
	add  b                                           ; $76fc: $80
	ret  nz                                          ; $76fd: $c0

	db   $10                                         ; $76fe: $10
	jr   c, jr_077_7740                              ; $76ff: $38 $3f

	rlca                                             ; $7701: $07
	rst  $38                                         ; $7702: $ff
	ld   b, c                                        ; $7703: $41
	cp   $75                                         ; $7704: $fe $75
	push af                                          ; $7706: $f5
	sbc  d                                           ; $7707: $9a
	ld   a, [$e868]                                  ; $7708: $fa $68 $e8
	daa                                              ; $770b: $27
	rlca                                             ; $770c: $07
	pop  bc                                          ; $770d: $c1
	rst  $38                                         ; $770e: $ff
	ld   a, $81                                      ; $770f: $3e $81
	rst  $38                                         ; $7711: $ff
	dec  b                                           ; $7712: $05
	ld   [hl], l                                     ; $7713: $75
	sbc  a                                           ; $7714: $9f
	jr   c, jr_077_7746                              ; $7715: $38 $2f

	inc  d                                           ; $7717: $14
	ld   d, $80                                      ; $7718: $16 $80
	nop                                              ; $771a: $00
	add  d                                           ; $771b: $82
	rst  $38                                         ; $771c: $ff
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	add  c                                           ; $771f: $81
	rst  $38                                         ; $7720: $ff
	dec  b                                           ; $7721: $05
	ld   d, [hl]                                     ; $7722: $56
	rst  $38                                         ; $7723: $ff
	and  d                                           ; $7724: $a2
	or   $59                                         ; $7725: $f6 $59
	ld   e, e                                        ; $7727: $5b
	add  b                                           ; $7728: $80
	inc  b                                           ; $7729: $04
	add  d                                           ; $772a: $82
	rst  $38                                         ; $772b: $ff
	add  hl, bc                                      ; $772c: $09
	ccf                                              ; $772d: $3f
	rst  $38                                         ; $772e: $ff
	ret  nz                                          ; $772f: $c0

	rst  $38                                         ; $7730: $ff
	ld   a, [de]                                     ; $7731: $1a
	rst  $38                                         ; $7732: $ff
	add  c                                           ; $7733: $81
	rst  $38                                         ; $7734: $ff
	sbc  e                                           ; $7735: $9b
	rst  $38                                         ; $7736: $ff
	add  b                                           ; $7737: $80
	ld   [bc], a                                     ; $7738: $02
	add  h                                           ; $7739: $84
	rst  $38                                         ; $773a: $ff
	rlca                                             ; $773b: $07
	nop                                              ; $773c: $00
	rst  $38                                         ; $773d: $ff
	ret  nc                                          ; $773e: $d0

	rst  $38                                         ; $773f: $ff

jr_077_7740:
	ld   [hl], l                                     ; $7740: $75
	rst  $38                                         ; $7741: $ff
	cp   b                                           ; $7742: $b8
	ldh  [c], a                                      ; $7743: $e2
	add  b                                           ; $7744: $80
	nop                                              ; $7745: $00

jr_077_7746:
	add  h                                           ; $7746: $84
	rst  $38                                         ; $7747: $ff
	rlca                                             ; $7748: $07
	rrca                                             ; $7749: $0f
	rst  $38                                         ; $774a: $ff
	inc  b                                           ; $774b: $04
	rst  $38                                         ; $774c: $ff
	call nc, Call_077_42ff                           ; $774d: $d4 $ff $42
	ld   h, d                                        ; $7750: $62
	add  b                                           ; $7751: $80
	ld   de, $fe80                                   ; $7752: $11 $80 $fe
	add  h                                           ; $7755: $84
	rst  $38                                         ; $7756: $ff
	dec  b                                           ; $7757: $05
	inc  bc                                          ; $7758: $03
	rst  $38                                         ; $7759: $ff
	ld   d, c                                        ; $775a: $51
	db   $fd                                         ; $775b: $fd
	daa                                              ; $775c: $27
	ld   [hl], a                                     ; $775d: $77
	add  b                                           ; $775e: $80
	cpl                                              ; $775f: $2f
	add  hl, bc                                      ; $7760: $09
	db   $fc                                         ; $7761: $fc
	rst  $38                                         ; $7762: $ff
	di                                               ; $7763: $f3
	rst  $38                                         ; $7764: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7765: $cf
	rst  $38                                         ; $7766: $ff
	cp   a                                           ; $7767: $bf
	rst  $38                                         ; $7768: $ff

jr_077_7769:
	rst  JumpTable                                         ; $7769: $df
	and  b                                           ; $776a: $a0
	add  b                                           ; $776b: $80
	ldh  a, [$80]                                    ; $776c: $f0 $80
	ldh  [rSB], a                                    ; $776e: $e0 $01
	ld   [hl-], a                                    ; $7770: $32
	ldh  a, [c]                                      ; $7771: $f2
	add  b                                           ; $7772: $80
	rst  $38                                         ; $7773: $ff
	ld   [bc], a                                     ; $7774: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7775: $cf
	rst  $38                                         ; $7776: $ff
	ldh  a, [$81]                                    ; $7777: $f0 $81
	rst  $38                                         ; $7779: $ff
	nop                                              ; $777a: $00
	sbc  a                                           ; $777b: $9f
	add  c                                           ; $777c: $81
	ld   h, b                                        ; $777d: $60
	add  b                                           ; $777e: $80
	nop                                              ; $777f: $00
	add  b                                           ; $7780: $80
	dec  b                                           ; $7781: $05
	add  b                                           ; $7782: $80
	rst  $38                                         ; $7783: $ff
	ld   [bc], a                                     ; $7784: $02
	cp   [hl]                                        ; $7785: $be
	rst  $38                                         ; $7786: $ff
	ld   b, c                                        ; $7787: $41
	add  c                                           ; $7788: $81
	rst  $38                                         ; $7789: $ff
	ld   bc, $25da                                   ; $778a: $01 $da $25
	add  b                                           ; $778d: $80
	nop                                              ; $778e: $00
	add  d                                           ; $778f: $82
	rst  $38                                         ; $7790: $ff
	ld   [bc], a                                     ; $7791: $02
	ldh  [rIE], a                                    ; $7792: $e0 $ff
	rra                                              ; $7794: $1f
	add  e                                           ; $7795: $83
	rst  $38                                         ; $7796: $ff
	ld   bc, $54ab                                   ; $7797: $01 $ab $54
	add  b                                           ; $779a: $80
	nop                                              ; $779b: $00
	add  b                                           ; $779c: $80
	add  b                                           ; $779d: $80
	add  b                                           ; $779e: $80
	ldh  [$80], a                                    ; $779f: $e0 $80
	rst  $38                                         ; $77a1: $ff
	ld   [bc], a                                     ; $77a2: $02
	rrca                                             ; $77a3: $0f
	rst  $38                                         ; $77a4: $ff
	ldh  a, [$81]                                    ; $77a5: $f0 $81
	rst  $38                                         ; $77a7: $ff
	dec  b                                           ; $77a8: $05
	ld   c, $0f                                      ; $77a9: $0e $0f
	ld   a, [bc]                                     ; $77ab: $0a
	rrca                                             ; $77ac: $0f
	inc  b                                           ; $77ad: $04
	rrca                                             ; $77ae: $0f
	add  b                                           ; $77af: $80
	nop                                              ; $77b0: $00
	add  b                                           ; $77b1: $80
	rrca                                             ; $77b2: $0f
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	add  e                                           ; $77b5: $83
	rrca                                             ; $77b6: $0f
	inc  bc                                          ; $77b7: $03
	ret  nc                                          ; $77b8: $d0

	rst  $38                                         ; $77b9: $ff
	ld   l, $fe                                      ; $77ba: $2e $fe
	add  b                                           ; $77bc: $80
	add  c                                           ; $77bd: $81
	inc  b                                           ; $77be: $04
	ld   [hl], b                                     ; $77bf: $70
	ld   a, a                                        ; $77c0: $7f
	adc  a                                           ; $77c1: $8f
	rst  $38                                         ; $77c2: $ff
	ld   a, a                                        ; $77c3: $7f
	add  e                                           ; $77c4: $83
	rst  $38                                         ; $77c5: $ff
	ld   b, $0f                                      ; $77c6: $06 $0f
	ldh  a, [$0c]                                    ; $77c8: $f0 $0c
	rrca                                             ; $77ca: $0f
	add  e                                           ; $77cb: $83
	rst  $38                                         ; $77cc: $ff
	ld   a, a                                        ; $77cd: $7f
	add  a                                           ; $77ce: $87
	rst  $38                                         ; $77cf: $ff
	ld   [bc], a                                     ; $77d0: $02
	sbc  a                                           ; $77d1: $9f
	ld   a, a                                        ; $77d2: $7f
	rra                                              ; $77d3: $1f
	add  a                                           ; $77d4: $87
	rst  $38                                         ; $77d5: $ff
	add  b                                           ; $77d6: $80
	push af                                          ; $77d7: $f5
	add  b                                           ; $77d8: $80
	ret  nc                                          ; $77d9: $d0

	adc  d                                           ; $77da: $8a
	rst  $38                                         ; $77db: $ff
	add  b                                           ; $77dc: $80
	ld   d, d                                        ; $77dd: $52
	add  b                                           ; $77de: $80
	jr   z, jr_077_7769                              ; $77df: $28 $88

	rst  $38                                         ; $77e1: $ff
	add  b                                           ; $77e2: $80
	db   $fd                                         ; $77e3: $fd
	add  b                                           ; $77e4: $80
	and  b                                           ; $77e5: $a0
	add  b                                           ; $77e6: $80
	nop                                              ; $77e7: $00
	add  [hl]                                        ; $77e8: $86
	rst  $38                                         ; $77e9: $ff
	add  b                                           ; $77ea: $80
	xor  a                                           ; $77eb: $af
	add  b                                           ; $77ec: $80
	ld   b, b                                        ; $77ed: $40
	add  d                                           ; $77ee: $82
	nop                                              ; $77ef: $00
	adc  b                                           ; $77f0: $88
	rst  $38                                         ; $77f1: $ff
	add  b                                           ; $77f2: $80
	ld   e, a                                        ; $77f3: $5f
	add  b                                           ; $77f4: $80
	ccf                                              ; $77f5: $3f
	add  b                                           ; $77f6: $80
	ld   d, a                                        ; $77f7: $57
	sub  d                                           ; $77f8: $92
	ldh  a, [$80]                                    ; $77f9: $f0 $80
	ldh  [$80], a                                    ; $77fb: $e0 $80
	or   b                                           ; $77fd: $b0
	add  b                                           ; $77fe: $80
	ld   d, b                                        ; $77ff: $50
	add  b                                           ; $7800: $80
	and  b                                           ; $7801: $a0
	add  b                                           ; $7802: $80
	ld   d, b                                        ; $7803: $50
	add  b                                           ; $7804: $80
	jr   nz, @-$72                                   ; $7805: $20 $8c

	rst  $38                                         ; $7807: $ff
	add  b                                           ; $7808: $80
	jp   nz, $ff86                                   ; $7809: $c2 $86 $ff

	add  b                                           ; $780c: $80
	db   $fd                                         ; $780d: $fd
	add  b                                           ; $780e: $80
	ret  nz                                          ; $780f: $c0

	add  b                                           ; $7810: $80
	ret  nc                                          ; $7811: $d0

	add  b                                           ; $7812: $80
	xor  b                                           ; $7813: $a8
	add  [hl]                                        ; $7814: $86
	rst  $38                                         ; $7815: $ff
	add  b                                           ; $7816: $80
	ld   a, a                                        ; $7817: $7f
	add  b                                           ; $7818: $80
	ld   a, [bc]                                     ; $7819: $0a
	add  d                                           ; $781a: $82
	nop                                              ; $781b: $00
	adc  b                                           ; $781c: $88
	rst  $38                                         ; $781d: $ff
	add  b                                           ; $781e: $80
	cp   a                                           ; $781f: $bf
	add  b                                           ; $7820: $80
	ld   e, [hl]                                     ; $7821: $5e
	add  b                                           ; $7822: $80
	dec  d                                           ; $7823: $15
	add  h                                           ; $7824: $84
	rst  $38                                         ; $7825: $ff
	add  b                                           ; $7826: $80
	cp   $80                                         ; $7827: $fe $80
	db   $f4                                         ; $7829: $f4
	add  b                                           ; $782a: $80
	and  b                                           ; $782b: $a0
	add  b                                           ; $782c: $80
	ret  nz                                          ; $782d: $c0

	add  b                                           ; $782e: $80
	ld   b, b                                        ; $782f: $40
	add  d                                           ; $7830: $82
	rst  $38                                         ; $7831: $ff
	add  b                                           ; $7832: $80
	cp   a                                           ; $7833: $bf
	add  b                                           ; $7834: $80
	ld   a, [hl+]                                    ; $7835: $2a
	add  b                                           ; $7836: $80
	nop                                              ; $7837: $00
	add  b                                           ; $7838: $80
	ld   bc, $0380                                   ; $7839: $01 $80 $03
	add  [hl]                                        ; $783c: $86
	rrca                                             ; $783d: $0f
	add  b                                           ; $783e: $80
	ld   [$0f80], sp                                 ; $783f: $08 $80 $0f
	add  b                                           ; $7842: $80
	ld   c, $82                                      ; $7843: $0e $82
	rrca                                             ; $7845: $0f
	add  d                                           ; $7846: $82
	rst  $38                                         ; $7847: $ff
	add  b                                           ; $7848: $80
	ld   d, l                                        ; $7849: $55
	add  b                                           ; $784a: $80
	nop                                              ; $784b: $00
	add  b                                           ; $784c: $80
	ret  nz                                          ; $784d: $c0

	add  b                                           ; $784e: $80
	nop                                              ; $784f: $00
	add  b                                           ; $7850: $80
	ld   a, [$ff80]                                  ; $7851: $fa $80 $ff
	add  b                                           ; $7854: $80
	xor  d                                           ; $7855: $aa
	add  b                                           ; $7856: $80
	push de                                          ; $7857: $d5
	add  h                                           ; $7858: $84
	nop                                              ; $7859: $00
	add  b                                           ; $785a: $80
	ld   [bc], a                                     ; $785b: $02
	add  b                                           ; $785c: $80
	xor  l                                           ; $785d: $ad
	add  b                                           ; $785e: $80
	cp   $80                                         ; $785f: $fe $80
	add  b                                           ; $7861: $80
	add  b                                           ; $7862: $80
	ld   b, b                                        ; $7863: $40
	add  h                                           ; $7864: $84
	nop                                              ; $7865: $00
	add  b                                           ; $7866: $80
	adc  b                                           ; $7867: $88
	add  b                                           ; $7868: $80
	ld   d, h                                        ; $7869: $54
	add  b                                           ; $786a: $80
	xor  d                                           ; $786b: $aa
	adc  h                                           ; $786c: $8c
	nop                                              ; $786d: $00
	add  b                                           ; $786e: $80
	add  b                                           ; $786f: $80
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	add  b                                           ; $7872: $80
	rrca                                             ; $7873: $0f
	add  h                                           ; $7874: $84
	rlca                                             ; $7875: $07
	add  d                                           ; $7876: $82
	inc  bc                                          ; $7877: $03
	add  b                                           ; $7878: $80
	dec  bc                                          ; $7879: $0b
	dec  b                                           ; $787a: $05
	rrca                                             ; $787b: $0f
	ld   [hl], b                                     ; $787c: $70
	rst  $38                                         ; $787d: $ff
	adc  a                                           ; $787e: $8f
	rst  $38                                         ; $787f: $ff
	ldh  a, [$89]                                    ; $7880: $f0 $89
	rst  $38                                         ; $7882: $ff
	ld   bc, $02fd                                   ; $7883: $01 $fd $02
	add  b                                           ; $7886: $80
	dec  d                                           ; $7887: $15
	adc  d                                           ; $7888: $8a
	nop                                              ; $7889: $00
	add  b                                           ; $788a: $80
	rst  $38                                         ; $788b: $ff
	add  b                                           ; $788c: $80
	ld   d, l                                        ; $788d: $55
	adc  d                                           ; $788e: $8a
	nop                                              ; $788f: $00
	add  b                                           ; $7890: $80
	add  sp, -$80                                    ; $7891: $e8 $80
	ld   b, b                                        ; $7893: $40
	adc  d                                           ; $7894: $8a
	nop                                              ; $7895: $00
	adc  [hl]                                        ; $7896: $8e
	rst  $38                                         ; $7897: $ff
	add  b                                           ; $7898: $80
	ld   b, b                                        ; $7899: $40
	adc  h                                           ; $789a: $8c
	nop                                              ; $789b: $00
	add  d                                           ; $789c: $82
	rst  $38                                         ; $789d: $ff
	add  b                                           ; $789e: $80
	or   [hl]                                        ; $789f: $b6
	ld   b, $1f                                      ; $78a0: $06 $1f
	rst  $38                                         ; $78a2: $ff
	db   $dd                                         ; $78a3: $dd
	pop  bc                                          ; $78a4: $c1
	nop                                              ; $78a5: $00
	ld   bc, $8185                                   ; $78a6: $01 $85 $81
	add  c                                           ; $78a9: $81
	nop                                              ; $78aa: $00
	ld   b, $81                                      ; $78ab: $06 $81
	rst  $38                                         ; $78ad: $ff
	add  b                                           ; $78ae: $80
	xor  $80                                         ; $78af: $ee $80
	cp   e                                           ; $78b1: $bb
	add  b                                           ; $78b2: $80
	ld   d, l                                        ; $78b3: $55
	ld   b, $2a                                      ; $78b4: $06 $2a
	xor  d                                           ; $78b6: $aa
	adc  l                                           ; $78b7: $8d
	db   $fd                                         ; $78b8: $fd

Jump_077_78b9:
	ldh  a, [$fe]                                    ; $78b9: $f0 $fe
	ld   bc, $ff81                                   ; $78bb: $01 $81 $ff
	add  b                                           ; $78be: $80
	xor  $80                                         ; $78bf: $ee $80
	cp   e                                           ; $78c1: $bb
	add  b                                           ; $78c2: $80
	ld   d, l                                        ; $78c3: $55
	add  b                                           ; $78c4: $80
	xor  d                                           ; $78c5: $aa
	add  b                                           ; $78c6: $80
	ld   d, l                                        ; $78c7: $55
	add  b                                           ; $78c8: $80
	ld   [hl+], a                                    ; $78c9: $22
	add  b                                           ; $78ca: $80
	ld   bc, $0082                                   ; $78cb: $01 $82 $00
	add  b                                           ; $78ce: $80
	ld   [$2480], sp                                 ; $78cf: $08 $80 $24
	add  h                                           ; $78d2: $84
	nop                                              ; $78d3: $00
	add  b                                           ; $78d4: $80
	call c, $bc12                                    ; $78d5: $dc $12 $bc
	db   $fc                                         ; $78d8: $fc
	inc  a                                           ; $78d9: $3c
	db   $fc                                         ; $78da: $fc
	cp   d                                           ; $78db: $ba
	cp   $90                                         ; $78dc: $fe $90
	cp   $94                                         ; $78de: $fe $94
	rst  $38                                         ; $78e0: $ff
	sbc  h                                           ; $78e1: $9c
	rst  $38                                         ; $78e2: $ff
	dec  e                                           ; $78e3: $1d
	ld   a, a                                        ; $78e4: $7f
	ccf                                              ; $78e5: $3f
	rst  $38                                         ; $78e6: $ff
	cp   $ff                                         ; $78e7: $fe $ff
	cp   $81                                         ; $78e9: $fe $81
	rst  $38                                         ; $78eb: $ff
	add  b                                           ; $78ec: $80
	ld   a, a                                        ; $78ed: $7f
	add  b                                           ; $78ee: $80
	ld   a, [bc]                                     ; $78ef: $0a
	adc  b                                           ; $78f0: $88
	nop                                              ; $78f1: $00
	add  b                                           ; $78f2: $80
	ld   b, $01                                      ; $78f3: $06 $01
	nop                                              ; $78f5: $00
	inc  bc                                          ; $78f6: $03
	add  b                                           ; $78f7: $80
	ld   bc, $0601                                   ; $78f8: $01 $01 $06
	ld   [bc], a                                     ; $78fb: $02
	add  b                                           ; $78fc: $80
	ld   bc, $370b                                   ; $78fd: $01 $0b $37
	ld   [hl], b                                     ; $7900: $70
	ld   h, b                                        ; $7901: $60
	ldh  a, [$80]                                    ; $7902: $f0 $80
	ldh  a, [$90]                                    ; $7904: $f0 $90
	ldh  a, [$90]                                    ; $7906: $f0 $90
	ldh  a, [rP1]                                    ; $7908: $f0 $00
	ld   d, b                                        ; $790a: $50
	add  b                                           ; $790b: $80
	ldh  [$80], a                                    ; $790c: $e0 $80
	ldh  a, [rAUD4ENV]                               ; $790e: $f0 $21
	sbc  a                                           ; $7910: $9f
	rst  $38                                         ; $7911: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7912: $cf
	rst  $38                                         ; $7913: $ff
	adc  d                                           ; $7914: $8a
	rst  $38                                         ; $7915: $ff
	ret  nz                                          ; $7916: $c0

	rst  $38                                         ; $7917: $ff
	add  sp, -$01                                    ; $7918: $e8 $ff
	xor  b                                           ; $791a: $a8
	xor  a                                           ; $791b: $af
	ld   [hl], c                                     ; $791c: $71
	ld   a, a                                        ; $791d: $7f
	ld   [$a1ff], a                                  ; $791e: $ea $ff $a1
	ret  nz                                          ; $7921: $c0

	ld   b, b                                        ; $7922: $40
	ret  nz                                          ; $7923: $c0

	ldh  [rIE], a                                    ; $7924: $e0 $ff
	rst  JumpTable                                         ; $7926: $df
	rst  $38                                         ; $7927: $ff
	ld   a, a                                        ; $7928: $7f
	rst  $38                                         ; $7929: $ff
	ccf                                              ; $792a: $3f
	rst  $38                                         ; $792b: $ff
	ccf                                              ; $792c: $3f
	rst  $38                                         ; $792d: $ff
	ld   a, a                                        ; $792e: $7f
	rst  $38                                         ; $792f: $ff
	jr   nc, jr_077_7932                             ; $7930: $30 $00

jr_077_7932:
	add  b                                           ; $7932: $80
	ld   bc, $0301                                   ; $7933: $01 $01 $03
	di                                               ; $7936: $f3
	add  b                                           ; $7937: $80
	ld   hl, sp-$80                                  ; $7938: $f8 $80
	db   $fd                                         ; $793a: $fd
	add  b                                           ; $793b: $80
	ld   hl, sp-$80                                  ; $793c: $f8 $80
	ld   sp, hl                                      ; $793e: $f9
	add  b                                           ; $793f: $80
	ldh  [c], a                                      ; $7940: $e2
	ld   bc, $d0df                                   ; $7941: $01 $df $d0
	add  b                                           ; $7944: $80
	or   b                                           ; $7945: $b0
	add  b                                           ; $7946: $80
	ld   [hl], b                                     ; $7947: $70
	ld   de, $b0a0                                   ; $7948: $11 $a0 $b0
	ld   b, b                                        ; $794b: $40
	ld   [hl], b                                     ; $794c: $70
	add  b                                           ; $794d: $80
	or   b                                           ; $794e: $b0
	ld   h, b                                        ; $794f: $60
	ld   [hl], b                                     ; $7950: $70
	and  b                                           ; $7951: $a0
	or   b                                           ; $7952: $b0
	ld   [hl], l                                     ; $7953: $75
	ld   a, a                                        ; $7954: $7f
	xor  b                                           ; $7955: $a8
	cp   a                                           ; $7956: $bf
	ld   [hl], h                                     ; $7957: $74
	ld   [hl], a                                     ; $7958: $77
	xor  d                                           ; $7959: $aa
	xor  e                                           ; $795a: $ab
	add  b                                           ; $795b: $80
	ld   d, $80                                      ; $795c: $16 $80
	ld   a, [bc]                                     ; $795e: $0a
	add  b                                           ; $795f: $80
	nop                                              ; $7960: $00
	add  b                                           ; $7961: $80
	ld   [$0f0d], sp                                 ; $7962: $08 $0d $0f
	rst  $38                                         ; $7965: $ff
	xor  a                                           ; $7966: $af
	rst  $38                                         ; $7967: $ff
	ccf                                              ; $7968: $3f
	rst  $38                                         ; $7969: $ff
	ccf                                              ; $796a: $3f
	ld   a, a                                        ; $796b: $7f
	sbc  a                                           ; $796c: $9f
	rst  $38                                         ; $796d: $ff
	ld   a, a                                        ; $796e: $7f
	ccf                                              ; $796f: $3f
	ld   e, l                                        ; $7970: $5d
	ld   e, a                                        ; $7971: $5f
	add  b                                           ; $7972: $80
	and  a                                           ; $7973: $a7
	ld   bc, $e1e3                                   ; $7974: $01 $e3 $e1
	add  b                                           ; $7977: $80
	ldh  [c], a                                      ; $7978: $e2
	add  b                                           ; $7979: $80
	push hl                                          ; $797a: $e5
	add  b                                           ; $797b: $80
	add  b                                           ; $797c: $80
	add  b                                           ; $797d: $80
	and  b                                           ; $797e: $a0
	add  b                                           ; $797f: $80
	ret  nz                                          ; $7980: $c0

	dec  b                                           ; $7981: $05
	ld   [hl], e                                     ; $7982: $73
	ldh  a, [c]                                      ; $7983: $f2
	ld   [hl-], a                                    ; $7984: $32
	ldh  a, [rAUD3LEVEL]                             ; $7985: $f0 $1c
	ld   d, b                                        ; $7987: $50
	add  b                                           ; $7988: $80
	or   b                                           ; $7989: $b0
	add  b                                           ; $798a: $80
	jr   nz, @-$7e                                   ; $798b: $20 $80

	db   $10                                         ; $798d: $10
	add  d                                           ; $798e: $82
	nop                                              ; $798f: $00
	add  b                                           ; $7990: $80
	add  b                                           ; $7991: $80
	ld   [bc], a                                     ; $7992: $02
	ldh  [$60], a                                    ; $7993: $e0 $60
	rst  $28                                         ; $7995: $ef
	add  c                                           ; $7996: $81
	ld   h, b                                        ; $7997: $60
	add  b                                           ; $7998: $80
	nop                                              ; $7999: $00
	add  b                                           ; $799a: $80
	dec  b                                           ; $799b: $05
	add  b                                           ; $799c: $80
	rst  $38                                         ; $799d: $ff
	rlca                                             ; $799e: $07

jr_077_799f:
	cp   [hl]                                        ; $799f: $be
	rst  $38                                         ; $79a0: $ff
	ld   b, [hl]                                     ; $79a1: $46
	rst  $38                                         ; $79a2: $ff
	pop  bc                                          ; $79a3: $c1
	cp   $e2                                         ; $79a4: $fe $e2
	dec  h                                           ; $79a6: $25
	add  b                                           ; $79a7: $80
	nop                                              ; $79a8: $00
	add  d                                           ; $79a9: $82
	rst  $38                                         ; $79aa: $ff
	add  hl, bc                                      ; $79ab: $09
	ldh  [rIE], a                                    ; $79ac: $e0 $ff
	rra                                              ; $79ae: $1f
	rst  $38                                         ; $79af: $ff
	ld   bc, $f6ff                                   ; $79b0: $01 $ff $f6
	ld   [$54ab], sp                                 ; $79b3: $08 $ab $54
	add  b                                           ; $79b6: $80
	nop                                              ; $79b7: $00
	add  b                                           ; $79b8: $80
	add  b                                           ; $79b9: $80
	add  b                                           ; $79ba: $80
	ldh  [$80], a                                    ; $79bb: $e0 $80
	rst  $38                                         ; $79bd: $ff
	ld   b, $0f                                      ; $79be: $06 $0f
	rst  $38                                         ; $79c0: $ff
	ld   [hl], b                                     ; $79c1: $70
	rst  $38                                         ; $79c2: $ff
	ret  nz                                          ; $79c3: $c0

	ld   b, b                                        ; $79c4: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79c5: $cf
	add  e                                           ; $79c6: $83
	jr   nc, @-$7e                                   ; $79c7: $30 $80

	nop                                              ; $79c9: $00
	add  b                                           ; $79ca: $80
	or   $05                                         ; $79cb: $f6 $05
	call nc, $22f6                                   ; $79cd: $d4 $f6 $22
	or   $86                                         ; $79d0: $f6 $86
	or   $64                                         ; $79d2: $f6 $64
	ld   bc, $0703                                   ; $79d4: $01 $03 $07
	ld   [$0800], sp                                 ; $79d7: $08 $00 $08
	add  b                                           ; $79da: $80
	inc  c                                           ; $79db: $0c
	inc  bc                                          ; $79dc: $03
	add  hl, bc                                      ; $79dd: $09
	rrca                                             ; $79de: $0f
	inc  c                                           ; $79df: $0c
	dec  c                                           ; $79e0: $0d
	add  b                                           ; $79e1: $80
	rrca                                             ; $79e2: $0f
	add  b                                           ; $79e3: $80
	dec  c                                           ; $79e4: $0d
	add  b                                           ; $79e5: $80
	rrca                                             ; $79e6: $0f
	inc  sp                                          ; $79e7: $33
	add  c                                           ; $79e8: $81
	ld   [hl], a                                     ; $79e9: $77
	ld   [hl], $3b                                   ; $79ea: $36 $3b
	dec  de                                          ; $79ec: $1b
	dec  e                                           ; $79ed: $1d
	dec  c                                           ; $79ee: $0d
	ld   c, $82                                      ; $79ef: $0e $82
	add  e                                           ; $79f1: $83
	ret  nz                                          ; $79f2: $c0

	ld   b, b                                        ; $79f3: $40
	ret  nz                                          ; $79f4: $c0

	and  b                                           ; $79f5: $a0
	ld   b, c                                        ; $79f6: $41
	ld   d, c                                        ; $79f7: $51
	cp   b                                           ; $79f8: $b8
	xor  a                                           ; $79f9: $af
	ld   e, b                                        ; $79fa: $58
	ret  nz                                          ; $79fb: $c0

	and  c                                           ; $79fc: $a1
	pop  hl                                          ; $79fd: $e1
	call nc, Call_077_6bf7                           ; $79fe: $d4 $f7 $6b
	or   h                                           ; $7a01: $b4
	ld   e, h                                        ; $7a02: $5c
	rst  $28                                         ; $7a03: $ef
	ld   d, a                                        ; $7a04: $57
	dec  sp                                          ; $7a05: $3b
	sbc  l                                           ; $7a06: $9d
	adc  [hl]                                        ; $7a07: $8e
	ldh  a, [c]                                      ; $7a08: $f2
	ld   b, d                                        ; $7a09: $42
	ld   b, h                                        ; $7a0a: $44
	ld   b, a                                        ; $7a0b: $47
	ld   d, b                                        ; $7a0c: $50

jr_077_7a0d:
	rst  JumpTable                                         ; $7a0d: $df
	add  $3a                                         ; $7a0e: $c6 $3a
	dec  h                                           ; $7a10: $25

jr_077_7a11:
	push de                                          ; $7a11: $d5
	ld   [$55aa], a                                  ; $7a12: $ea $aa $55
	push de                                          ; $7a15: $d5
	ld   a, [hl+]                                    ; $7a16: $2a
	db   $eb                                         ; $7a17: $eb
	ld   d, l                                        ; $7a18: $55

jr_077_7a19:
	db   $ec                                         ; $7a19: $ec
	adc  b                                           ; $7a1a: $88
	ret  nc                                          ; $7a1b: $d0

	add  b                                           ; $7a1c: $80
	jr   nz, jr_077_799f                             ; $7a1d: $20 $80

	ld   hl, $3012                                   ; $7a1f: $21 $12 $30
	inc  sp                                          ; $7a22: $33
	ld   e, c                                        ; $7a23: $59
	ld   e, [hl]                                     ; $7a24: $5e
	or   b                                           ; $7a25: $b0
	db   $fc                                         ; $7a26: $fc
	jr   z, jr_077_7a19                              ; $7a27: $28 $f0

	cp   l                                           ; $7a29: $bd
	dec  bc                                          ; $7a2a: $0b
	nop                                              ; $7a2b: $00
	ld   e, $58                                      ; $7a2c: $1e $58
	ld   [hl], b                                     ; $7a2e: $70
	jr   nc, jr_077_7a11                             ; $7a2f: $30 $e0

	ld   h, b                                        ; $7a31: $60
	ret  nz                                          ; $7a32: $c0

	nop                                              ; $7a33: $00
	add  c                                           ; $7a34: $81
	ld   b, b                                        ; $7a35: $40
	ld   c, $00                                      ; $7a36: $0e $00
	ld   hl, $ff1e                                   ; $7a38: $21 $1e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3b: $cf
	ccf                                              ; $7a3c: $3f
	ld   sp, $060f                                   ; $7a3d: $31 $0f $06
	db   $10                                         ; $7a40: $10
	ld   [$1020], sp                                 ; $7a41: $08 $20 $10
	ld   b, b                                        ; $7a44: $40
	ld   h, b                                        ; $7a45: $60
	add  b                                           ; $7a46: $80
	ret  nz                                          ; $7a47: $c0

	ld   [de], a                                     ; $7a48: $12
	ld   b, b                                        ; $7a49: $40
	sub  e                                           ; $7a4a: $93
	db   $d3                                         ; $7a4b: $d3
	and  h                                           ; $7a4c: $a4
	and  l                                           ; $7a4d: $a5
	db   $fc                                         ; $7a4e: $fc
	rst  $38                                         ; $7a4f: $ff
	nop                                              ; $7a50: $00
	rst  $38                                         ; $7a51: $ff
	ld   sp, hl                                      ; $7a52: $f9
	ld   c, $02                                      ; $7a53: $0e $02
	dec  e                                           ; $7a55: $1d
	dec  [hl]                                        ; $7a56: $35
	ld   a, [hl-]                                    ; $7a57: $3a
	ld   [hl+], a                                    ; $7a58: $22
	ld   b, a                                        ; $7a59: $47
	sub  l                                           ; $7a5a: $95
	ld   [$d580], a                                  ; $7a5b: $ea $80 $d5
	add  b                                           ; $7a5e: $80
	xor  d                                           ; $7a5f: $aa
	add  b                                           ; $7a60: $80
	ld   d, l                                        ; $7a61: $55
	add  b                                           ; $7a62: $80
	xor  d                                           ; $7a63: $aa
	add  b                                           ; $7a64: $80
	ld   d, h                                        ; $7a65: $54
	add  b                                           ; $7a66: $80
	xor  b                                           ; $7a67: $a8
	inc  bc                                          ; $7a68: $03
	ld   a, a                                        ; $7a69: $7f
	rst  $38                                         ; $7a6a: $ff
	jr   nz, jr_077_7a0d                             ; $7a6b: $20 $a0

	add  b                                           ; $7a6d: $80
	ld   b, c                                        ; $7a6e: $41
	add  b                                           ; $7a6f: $80
	add  d                                           ; $7a70: $82
	add  b                                           ; $7a71: $80
	inc  b                                           ; $7a72: $04
	add  b                                           ; $7a73: $80
	ld   [$1180], sp                                 ; $7a74: $08 $80 $11
	add  b                                           ; $7a77: $80
	ld   [hl+], a                                    ; $7a78: $22
	add  b                                           ; $7a79: $80
	push bc                                          ; $7a7a: $c5
	add  b                                           ; $7a7b: $80
	or   b                                           ; $7a7c: $b0
	add  b                                           ; $7a7d: $80
	ld   e, c                                        ; $7a7e: $59
	add  b                                           ; $7a7f: $80
	dec  l                                           ; $7a80: $2d
	dec  b                                           ; $7a81: $05
	ld   d, l                                        ; $7a82: $55
	ld   d, a                                        ; $7a83: $57
	xor  b                                           ; $7a84: $a8
	xor  e                                           ; $7a85: $ab
	ld   d, h                                        ; $7a86: $54
	ld   d, l                                        ; $7a87: $55
	add  b                                           ; $7a88: $80
	xor  d                                           ; $7a89: $aa
	add  b                                           ; $7a8a: $80
	ld   d, l                                        ; $7a8b: $55
	dec  d                                           ; $7a8c: $15
	sbc  $e1                                         ; $7a8d: $de $e1
	add  sp, -$14                                    ; $7a8f: $e8 $ec
	db   $ed                                         ; $7a91: $ed
	rst  $28                                         ; $7a92: $ef
	ldh  [c], a                                      ; $7a93: $e2
	rst  $20                                         ; $7a94: $e7
	pop  hl                                          ; $7a95: $e1
	db   $e3                                         ; $7a96: $e3
	ld   b, b                                        ; $7a97: $40
	pop  bc                                          ; $7a98: $c1
	add  b                                           ; $7a99: $80
	ret  nz                                          ; $7a9a: $c0

	ld   b, b                                        ; $7a9b: $40
	ret  nz                                          ; $7a9c: $c0

	ld   l, d                                        ; $7a9d: $6a
	dec  de                                          ; $7a9e: $1b
	jp   hl                                          ; $7a9f: $e9


	ld   a, e                                        ; $7aa0: $7b
	ld   c, e                                        ; $7aa1: $4b
	dec  sp                                          ; $7aa2: $3b
	add  b                                           ; $7aa3: $80
	db   $eb                                         ; $7aa4: $eb
	add  hl, bc                                      ; $7aa5: $09
	rst  $28                                         ; $7aa6: $ef
	rrca                                             ; $7aa7: $0f
	add  e                                           ; $7aa8: $83
	add  a                                           ; $7aa9: $87
	ld   d, a                                        ; $7aaa: $57
	rst  $10                                         ; $7aab: $d7
	rrca                                             ; $7aac: $0f
	ld   a, a                                        ; $7aad: $7f
	dec  b                                           ; $7aae: $05
	db   $fd                                         ; $7aaf: $fd
	add  b                                           ; $7ab0: $80
	rst  $30                                         ; $7ab1: $f7
	add  b                                           ; $7ab2: $80
	db   $fd                                         ; $7ab3: $fd
	add  b                                           ; $7ab4: $80
	rst  $30                                         ; $7ab5: $f7
	add  b                                           ; $7ab6: $80
	db   $fd                                         ; $7ab7: $fd
	add  b                                           ; $7ab8: $80
	rst  $30                                         ; $7ab9: $f7
	add  b                                           ; $7aba: $80
	db   $fd                                         ; $7abb: $fd
	add  b                                           ; $7abc: $80
	rst  $30                                         ; $7abd: $f7
	ld   bc, $a1a0                                   ; $7abe: $01 $a0 $a1
	add  b                                           ; $7ac1: $80
	ld   b, c                                        ; $7ac2: $41
	ld   bc, $a0a1                                   ; $7ac3: $01 $a1 $a0
	add  b                                           ; $7ac6: $80
	ld   b, b                                        ; $7ac7: $40
	add  b                                           ; $7ac8: $80
	and  b                                           ; $7ac9: $a0
	add  b                                           ; $7aca: $80
	ld   b, b                                        ; $7acb: $40
	add  b                                           ; $7acc: $80
	and  b                                           ; $7acd: $a0
	add  b                                           ; $7ace: $80
	ld   c, a                                        ; $7acf: $4f
	inc  bc                                          ; $7ad0: $03
	xor  a                                           ; $7ad1: $af
	ret  c                                           ; $7ad2: $d8

	ld   e, b                                        ; $7ad3: $58
	ret  c                                           ; $7ad4: $d8

	add  b                                           ; $7ad5: $80
	sbc  b                                           ; $7ad6: $98
	ld   [bc], a                                     ; $7ad7: $02
	add  sp, $20                                     ; $7ad8: $e8 $20
	ccf                                              ; $7ada: $3f
	add  b                                           ; $7adb: $80
	rlca                                             ; $7adc: $07
	ld   b, $01                                      ; $7add: $06 $01
	ld   e, $3f                                      ; $7adf: $1e $3f
	rst  JumpTable                                         ; $7ae1: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae2: $cf
	dec  a                                           ; $7ae3: $3d
	dec  c                                           ; $7ae4: $0d
	add  b                                           ; $7ae5: $80
	rrca                                             ; $7ae6: $0f
	add  b                                           ; $7ae7: $80
	dec  c                                           ; $7ae8: $0d
	inc  b                                           ; $7ae9: $04
	rlca                                             ; $7aea: $07
	rrca                                             ; $7aeb: $0f
	ld   [$000f], sp                                 ; $7aec: $08 $0f $00
	add  e                                           ; $7aef: $83
	rrca                                             ; $7af0: $0f
	dec  b                                           ; $7af1: $05
	xor  e                                           ; $7af2: $ab
	xor  h                                           ; $7af3: $ac
	ld   b, d                                        ; $7af4: $42
	ld   b, [hl]                                     ; $7af5: $46
	and  c                                           ; $7af6: $a1
	and  d                                           ; $7af7: $a2
	add  b                                           ; $7af8: $80
	ld   b, l                                        ; $7af9: $45
	dec  b                                           ; $7afa: $05
	rra                                              ; $7afb: $1f
	rst  $38                                         ; $7afc: $ff
	cp   b                                           ; $7afd: $b8
	ld   e, a                                        ; $7afe: $5f
	and  l                                           ; $7aff: $a5
	and  d                                           ; $7b00: $a2
	add  b                                           ; $7b01: $80
	ld   b, l                                        ; $7b02: $45
	inc  bc                                          ; $7b03: $03
	sbc  e                                           ; $7b04: $9b
	ld   h, a                                        ; $7b05: $67
	ld   [hl-], a                                    ; $7b06: $32
	ld   sp, $0180                                   ; $7b07: $31 $80 $01
	dec  e                                           ; $7b0a: $1d
	pop  bc                                          ; $7b0b: $c1
	ld   b, c                                        ; $7b0c: $41
	or   b                                           ; $7b0d: $b0
	ldh  a, [rLCDC]                                  ; $7b0e: $f0 $40
	add  b                                           ; $7b10: $80
	ld   b, a                                        ; $7b11: $47
	cp   a                                           ; $7b12: $bf
	ld   a, b                                        ; $7b13: $78
	ld   a, a                                        ; $7b14: $7f
	add  b                                           ; $7b15: $80
	cp   a                                           ; $7b16: $bf
	ei                                               ; $7b17: $fb
	set  5, a                                        ; $7b18: $cb $ef
	rst  $20                                         ; $7b1a: $e7
	ld   h, e                                        ; $7b1b: $63
	rst  $20                                         ; $7b1c: $e7
	and  c                                           ; $7b1d: $a1
	push hl                                          ; $7b1e: $e5
	ld   b, $3f                                      ; $7b1f: $06 $3f
	ret                                              ; $7b21: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b22: $cf
	ld   [hl], a                                     ; $7b23: $77
	rst  $38                                         ; $7b24: $ff
	ld   d, b                                        ; $7b25: $50
	ldh  [$80], a                                    ; $7b26: $e0 $80
	ret  nz                                          ; $7b28: $c0

	add  b                                           ; $7b29: $80
	ldh  [$30], a                                    ; $7b2a: $e0 $30
	ret  c                                           ; $7b2c: $d8

	ld   hl, sp-$5c                                  ; $7b2d: $f8 $a4
	rst  $38                                         ; $7b2f: $ff
	ld   a, e                                        ; $7b30: $7b
	rst  $38                                         ; $7b31: $ff
	sub  c                                           ; $7b32: $91
	rst  $38                                         ; $7b33: $ff
	and  $ff                                         ; $7b34: $e6 $ff
	ld   [$3226], sp                                 ; $7b36: $08 $26 $32
	inc  a                                           ; $7b39: $3c
	nop                                              ; $7b3a: $00
	ld   a, b                                        ; $7b3b: $78
	ld   b, b                                        ; $7b3c: $40
	ldh  a, [rLCDC]                                  ; $7b3d: $f0 $40
	ldh  [rP1], a                                    ; $7b3f: $e0 $00
	ret  nz                                          ; $7b41: $c0

	sub  b                                           ; $7b42: $90
	ldh  a, [$66]                                    ; $7b43: $f0 $66
	cp   $78                                         ; $7b45: $fe $78
	ld   b, b                                        ; $7b47: $40
	jr   nz, jr_077_7bab                             ; $7b48: $20 $61

	ld   bc, $3323                                   ; $7b4a: $01 $23 $33
	ld   [hl], $1e                                   ; $7b4d: $36 $1e
	inc  l                                           ; $7b4f: $2c
	inc  d                                           ; $7b50: $14
	jr   c, jr_077_7bcb                              ; $7b51: $38 $78

	ld   [hl], b                                     ; $7b53: $70
	or   b                                           ; $7b54: $b0
	ldh  [$60], a                                    ; $7b55: $e0 $60
	ret  nc                                          ; $7b57: $d0

	ldh  [$90], a                                    ; $7b58: $e0 $90
	add  b                                           ; $7b5a: $80
	rra                                              ; $7b5b: $1f
	jr   nz, @-$7e                                   ; $7b5c: $20 $80

	cp   a                                           ; $7b5e: $bf
	rlca                                             ; $7b5f: $07
	ld   a, a                                        ; $7b60: $7f
	ccf                                              ; $7b61: $3f
	ld   a, a                                        ; $7b62: $7f
	jr   nz, jr_077_7ba4                             ; $7b63: $20 $3f

	inc  e                                           ; $7b65: $1c
	inc  a                                           ; $7b66: $3c
	rra                                              ; $7b67: $1f
	add  d                                           ; $7b68: $82
	nop                                              ; $7b69: $00
	ld   bc, $00ff                                   ; $7b6a: $01 $ff $00
	add  e                                           ; $7b6d: $83
	rst  $38                                         ; $7b6e: $ff
	db   $10                                         ; $7b6f: $10
	ld   a, a                                        ; $7b70: $7f
	rst  $38                                         ; $7b71: $ff
	ld   a, [hl]                                     ; $7b72: $7e
	ld   bc, $7fa0                                   ; $7b73: $01 $a0 $7f
	inc  e                                           ; $7b76: $1c
	ld   e, h                                        ; $7b77: $5c
	ld   bc, $8f9f                                   ; $7b78: $01 $9f $8f
	or   c                                           ; $7b7b: $b1
	or   d                                           ; $7b7c: $b2
	adc  [hl]                                        ; $7b7d: $8e
	add  c                                           ; $7b7e: $81
	add  e                                           ; $7b7f: $83
	sbc  h                                           ; $7b80: $9c
	add  c                                           ; $7b81: $81
	sbc  l                                           ; $7b82: $9d
	inc  bc                                          ; $7b83: $03
	ld   a, a                                        ; $7b84: $7f
	rst  $38                                         ; $7b85: $ff
	ld   a, a                                        ; $7b86: $7f
	nop                                              ; $7b87: $00
	add  b                                           ; $7b88: $80
	add  b                                           ; $7b89: $80
	ld   [bc], a                                     ; $7b8a: $02
	ld   b, b                                        ; $7b8b: $40
	ret  nz                                          ; $7b8c: $c0

	nop                                              ; $7b8d: $00
	add  c                                           ; $7b8e: $81
	ret  nz                                          ; $7b8f: $c0

	nop                                              ; $7b90: $00
	add  b                                           ; $7b91: $80
	add  c                                           ; $7b92: $81
	ret  nz                                          ; $7b93: $c0

	add  hl, bc                                      ; $7b94: $09
	ld   a, e                                        ; $7b95: $7b
	add  h                                           ; $7b96: $84
	ret  z                                           ; $7b97: $c8

	ld   c, b                                        ; $7b98: $48
	inc  c                                           ; $7b99: $0c
	ld   c, h                                        ; $7b9a: $4c
	ld   b, d                                        ; $7b9b: $42
	ld   b, [hl]                                     ; $7b9c: $46
	ld   b, b                                        ; $7b9d: $40
	ld   b, [hl]                                     ; $7b9e: $46
	add  b                                           ; $7b9f: $80
	ld   e, e                                        ; $7ba0: $5b
	add  hl, bc                                      ; $7ba1: $09
	ld   b, [hl]                                     ; $7ba2: $46
	ld   c, l                                        ; $7ba3: $4d

jr_077_7ba4:
	nop                                              ; $7ba4: $00
	ld   c, l                                        ; $7ba5: $4d
	add  h                                           ; $7ba6: $84
	rrca                                             ; $7ba7: $0f
	sub  b                                           ; $7ba8: $90
	sbc  a                                           ; $7ba9: $9f
	xor  a                                           ; $7baa: $af

jr_077_7bab:
	or   b                                           ; $7bab: $b0
	add  b                                           ; $7bac: $80
	ldh  a, [$80]                                    ; $7bad: $f0 $80
	ld   [hl], b                                     ; $7baf: $70
	add  b                                           ; $7bb0: $80
	jr   nc, jr_077_7bb9                             ; $7bb1: $30 $06

	add  sp, -$08                                    ; $7bb3: $e8 $f8
	ld   b, d                                        ; $7bb5: $42
	cp   $b3                                         ; $7bb6: $fe $b3
	rst  $38                                         ; $7bb8: $ff

jr_077_7bb9:
	db   $10                                         ; $7bb9: $10
	add  b                                           ; $7bba: $80
	ldh  a, [$81]                                    ; $7bbb: $f0 $81
	jr   nc, jr_077_7bca                             ; $7bbd: $30 $0b

	jr   nz, jr_077_7bf1                             ; $7bbf: $20 $30

	inc  [hl]                                        ; $7bc1: $34
	inc  a                                           ; $7bc2: $3c
	ld   h, $3f                                      ; $7bc3: $26 $3f

jr_077_7bc5:
	jr   nc, jr_077_7bf8                             ; $7bc5: $30 $31

	ret  nc                                          ; $7bc7: $d0

	ldh  a, [rOBP0]                                  ; $7bc8: $f0 $48

jr_077_7bca:
	ld   l, b                                        ; $7bca: $68

jr_077_7bcb:
	add  b                                           ; $7bcb: $80
	jr   z, jr_077_7bcf                              ; $7bcc: $28 $01

	inc  h                                           ; $7bce: $24

jr_077_7bcf:
	inc  d                                           ; $7bcf: $14
	add  b                                           ; $7bd0: $80
	ld   d, $16                                      ; $7bd1: $16 $16
	ld   [de], a                                     ; $7bd3: $12
	dec  bc                                          ; $7bd4: $0b
	adc  c                                           ; $7bd5: $89
	adc  b                                           ; $7bd6: $88
	jr   nz, jr_077_7bc5                             ; $7bd7: $20 $ec

	add  e                                           ; $7bd9: $83
	ld   a, a                                        ; $7bda: $7f
	ld   e, e                                        ; $7bdb: $5b
	ld   a, a                                        ; $7bdc: $7f
	xor  d                                           ; $7bdd: $aa
	cp   c                                           ; $7bde: $b9
	ld   d, a                                        ; $7bdf: $57
	ld   e, a                                        ; $7be0: $5f
	xor  e                                           ; $7be1: $ab
	xor  a                                           ; $7be2: $af
	dec  e                                           ; $7be3: $1d
	rst  $38                                         ; $7be4: $ff

jr_077_7be5:
	ld   b, c                                        ; $7be5: $41
	cp   a                                           ; $7be6: $bf
	ld   b, [hl]                                     ; $7be7: $46
	ld   e, [hl]                                     ; $7be8: $5e
	rlca                                             ; $7be9: $07
	add  l                                           ; $7bea: $85
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	rst  $10                                         ; $7bed: $d7
	add  l                                           ; $7bee: $85
	jp   hl                                          ; $7bef: $e9


	nop                                              ; $7bf0: $00

jr_077_7bf1:
	ld   a, $85                                      ; $7bf1: $3e $85
	nop                                              ; $7bf3: $00
	inc  b                                           ; $7bf4: $04
	ld   a, [hl]                                     ; $7bf5: $7e
	pop  af                                          ; $7bf6: $f1
	ldh  a, [c]                                      ; $7bf7: $f2

jr_077_7bf8:
	di                                               ; $7bf8: $f3
	pop  af                                          ; $7bf9: $f1
	add  c                                           ; $7bfa: $81
	di                                               ; $7bfb: $f3
	nop                                              ; $7bfc: $00
	adc  h                                           ; $7bfd: $8c

jr_077_7bfe:
	add  l                                           ; $7bfe: $85
	nop                                              ; $7bff: $00
	inc  bc                                          ; $7c00: $03
	ret  nz                                          ; $7c01: $c0

	rst  $38                                         ; $7c02: $ff
	jr   nz, jr_077_7be5                             ; $7c03: $20 $e0

	add  b                                           ; $7c05: $80
	sbc  a                                           ; $7c06: $9f
	add  b                                           ; $7c07: $80
	add  b                                           ; $7c08: $80
	nop                                              ; $7c09: $00
	rst  $38                                         ; $7c0a: $ff
	add  [hl]                                        ; $7c0b: $86
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	ldh  a, [$80]                                    ; $7c0e: $f0 $80
	nop                                              ; $7c10: $00
	add  b                                           ; $7c11: $80
	ldh  a, [$80]                                    ; $7c12: $f0 $80
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00

jr_077_7c16:
	dec  bc                                          ; $7c16: $0b
	add  c                                           ; $7c17: $81
	inc  b                                           ; $7c18: $04
	dec  b                                           ; $7c19: $05
	inc  h                                           ; $7c1a: $24
	daa                                              ; $7c1b: $27
	ld   h, h                                        ; $7c1c: $64
	ld   h, a                                        ; $7c1d: $67
	ld   h, h                                        ; $7c1e: $64
	ld   h, a                                        ; $7c1f: $67
	add  b                                           ; $7c20: $80
	rst  ToBoot                                         ; $7c21: $c7
	add  b                                           ; $7c22: $80
	add  a                                           ; $7c23: $87
	add  b                                           ; $7c24: $80
	rlca                                             ; $7c25: $07
	nop                                              ; $7c26: $00
	ld   bc, $0382                                   ; $7c27: $01 $82 $03
	inc  bc                                          ; $7c2a: $03
	cp   $03                                         ; $7c2b: $fe $03
	rst  $38                                         ; $7c2d: $ff
	nop                                              ; $7c2e: $00
	add  l                                           ; $7c2f: $85
	rst  $38                                         ; $7c30: $ff
	ld   bc, $d0e0                                   ; $7c31: $01 $e0 $d0
	add  b                                           ; $7c34: $80
	ldh  [rTMA], a                                   ; $7c35: $e0 $06
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c37: $cf
	nop                                              ; $7c38: $00
	add  b                                           ; $7c39: $80
	rst  $38                                         ; $7c3a: $ff
	nop                                              ; $7c3b: $00
	rst  $38                                         ; $7c3c: $ff
	add  b                                           ; $7c3d: $80
	add  e                                           ; $7c3e: $83
	rst  $38                                         ; $7c3f: $ff
	ld   a, [bc]                                     ; $7c40: $0a
	db   $10                                         ; $7c41: $10
	jr   nc, @+$22                                   ; $7c42: $30 $20

	jr   nc, jr_077_7c16                             ; $7c44: $30 $d0

	stop                                             ; $7c46: $10 $00
	ldh  a, [rP1]                                    ; $7c48: $f0 $00
	ldh  a, [rP1]                                    ; $7c4a: $f0 $00
	add  e                                           ; $7c4c: $83
	ldh  a, [$08]                                    ; $7c4d: $f0 $08
	ld   a, a                                        ; $7c4f: $7f
	rst  $38                                         ; $7c50: $ff
	xor  a                                           ; $7c51: $af
	rst  $38                                         ; $7c52: $ff
	push bc                                          ; $7c53: $c5
	rst  $38                                         ; $7c54: $ff
	add  sp, -$01                                    ; $7c55: $e8 $ff
	db   $fd                                         ; $7c57: $fd
	add  c                                           ; $7c58: $81
	rst  $38                                         ; $7c59: $ff
	add  b                                           ; $7c5a: $80
	ld   a, a                                        ; $7c5b: $7f
	jr   z, jr_077_7bfe                              ; $7c5c: $28 $a0

	ld   h, b                                        ; $7c5e: $60
	set  7, a                                        ; $7c5f: $cb $ff
	pop  af                                          ; $7c61: $f1
	rst  $38                                         ; $7c62: $ff
	ld   hl, sp-$01                                  ; $7c63: $f8 $ff
	cp   h                                           ; $7c65: $bc
	rst  $38                                         ; $7c66: $ff
	inc  e                                           ; $7c67: $1c
	rst  $38                                         ; $7c68: $ff
	adc  e                                           ; $7c69: $8b
	cp   $cf                                         ; $7c6a: $fe $cf
	rst  $20                                         ; $7c6c: $e7
	ld   [hl], h                                     ; $7c6d: $74
	ld   a, e                                        ; $7c6e: $7b
	rst  $28                                         ; $7c6f: $ef
	rst  $38                                         ; $7c70: $ff
	db   $e4                                         ; $7c71: $e4
	ei                                               ; $7c72: $fb
	ld   sp, hl                                      ; $7c73: $f9
	ei                                               ; $7c74: $fb
	ld   [hl], h                                     ; $7c75: $74
	rst  $30                                         ; $7c76: $f7
	ld   d, d                                        ; $7c77: $52
	rst  JumpTable                                         ; $7c78: $df
	ld   c, l                                        ; $7c79: $4d
	ld   a, a                                        ; $7c7a: $7f
	dec  a                                           ; $7c7b: $3d
	rst  $38                                         ; $7c7c: $ff
	ei                                               ; $7c7d: $fb
	rst  $38                                         ; $7c7e: $ff
	rst  $30                                         ; $7c7f: $f7
	ldh  a, [rSVBK]                                  ; $7c80: $f0 $70
	ldh  a, [$90]                                    ; $7c82: $f0 $90
	ldh  a, [$e0]                                    ; $7c84: $f0 $e0
	add  a                                           ; $7c86: $87
	ldh  a, [rTAC]                                   ; $7c87: $f0 $07
	ld   b, c                                        ; $7c89: $41
	ld   a, a                                        ; $7c8a: $7f
	ld   h, b                                        ; $7c8b: $60
	ld   a, l                                        ; $7c8c: $7d
	inc  l                                           ; $7c8d: $2c
	jr   nc, jr_077_7cac                             ; $7c8e: $30 $1c

	inc  l                                           ; $7c90: $2c
	add  b                                           ; $7c91: $80
	db   $ec                                         ; $7c92: $ec
	add  b                                           ; $7c93: $80
	ldh  [$08], a                                    ; $7c94: $e0 $08
	db   $10                                         ; $7c96: $10
	ldh  a, [$e8]                                    ; $7c97: $f0 $e8
	ld   hl, sp-$5a                                  ; $7c99: $f8 $a6
	rst  JumpTable                                         ; $7c9b: $df
	ret  nz                                          ; $7c9c: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c9d: $cf
	ld   c, $81                                      ; $7c9e: $0e $81
	adc  a                                           ; $7ca0: $8f
	add  b                                           ; $7ca1: $80
	add  a                                           ; $7ca2: $87
	inc  bc                                          ; $7ca3: $03
	ld   bc, $0207                                   ; $7ca4: $01 $07 $02
	inc  bc                                          ; $7ca7: $03
	add  b                                           ; $7ca8: $80
	db   $10                                         ; $7ca9: $10
	dec  c                                           ; $7caa: $0d
	ld   h, a                                        ; $7cab: $67

jr_077_7cac:
	rst  $20                                         ; $7cac: $e7
	inc  e                                           ; $7cad: $1c
	sbc  h                                           ; $7cae: $9c
	ld   [hl], e                                     ; $7caf: $73
	di                                               ; $7cb0: $f3
	ld   c, a                                        ; $7cb1: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cb2: $cf
	sbc  $df                                         ; $7cb3: $de $df
	ld   b, c                                        ; $7cb5: $41
	rst  ToBoot                                         ; $7cb6: $c7

jr_077_7cb7:
	ld   h, a                                        ; $7cb7: $67
	rst  $20                                         ; $7cb8: $e7
	add  b                                           ; $7cb9: $80
	rlca                                             ; $7cba: $07
	ld   bc, $3038                                   ; $7cbb: $01 $38 $30
	add  b                                           ; $7cbe: $80
	ldh  a, [rDIV]                                   ; $7cbf: $f0 $04
	ldh  [$f0], a                                    ; $7cc1: $e0 $f0
	sub  b                                           ; $7cc3: $90
	ldh  a, [rSVBK]                                  ; $7cc4: $f0 $70
	add  c                                           ; $7cc6: $81
	ldh  a, [rDIV]                                   ; $7cc7: $f0 $04
	ldh  [$f0], a                                    ; $7cc9: $e0 $f0
	and  b                                           ; $7ccb: $a0
	ret  nz                                          ; $7ccc: $c0

	daa                                              ; $7ccd: $27
	add  d                                           ; $7cce: $82
	ld   l, c                                        ; $7ccf: $69
	ld   [$19e9], sp                                 ; $7cd0: $08 $e9 $19
	ld   a, c                                        ; $7cd3: $79
	dec  b                                           ; $7cd4: $05
	dec  a                                           ; $7cd5: $3d
	ld   a, [bc]                                     ; $7cd6: $0a
	rra                                              ; $7cd7: $1f
	inc  bc                                          ; $7cd8: $03
	rrca                                             ; $7cd9: $0f
	add  b                                           ; $7cda: $80
	nop                                              ; $7cdb: $00
	add  b                                           ; $7cdc: $80
	add  a                                           ; $7cdd: $87
	add  h                                           ; $7cde: $84
	add  h                                           ; $7cdf: $84
	dec  b                                           ; $7ce0: $05
	and  a                                           ; $7ce1: $a7
	rst  $20                                         ; $7ce2: $e7
	ldh  [$e7], a                                    ; $7ce3: $e0 $e7
	xor  a                                           ; $7ce5: $af
	rst  $28                                         ; $7ce6: $ef
	add  b                                           ; $7ce7: $80
	adc  a                                           ; $7ce8: $8f
	ld   bc, $fff8                                   ; $7ce9: $01 $f8 $ff
	add  h                                           ; $7cec: $84
	nop                                              ; $7ced: $00
	add  b                                           ; $7cee: $80
	rst  $38                                         ; $7cef: $ff
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	add  c                                           ; $7cf2: $81
	rst  $38                                         ; $7cf3: $ff
	inc  bc                                          ; $7cf4: $03
	ld   a, a                                        ; $7cf5: $7f
	rst  $38                                         ; $7cf6: $ff
	or   b                                           ; $7cf7: $b0
	ldh  a, [$84]                                    ; $7cf8: $f0 $84
	ld   [hl], b                                     ; $7cfa: $70
	add  b                                           ; $7cfb: $80
	ldh  a, [rP1]                                    ; $7cfc: $f0 $00
	ld   [hl], b                                     ; $7cfe: $70
	add  e                                           ; $7cff: $83
	ldh  a, [rSB]                                    ; $7d00: $f0 $01
	cp   a                                           ; $7d02: $bf
	nop                                              ; $7d03: $00
	add  b                                           ; $7d04: $80
	rlca                                             ; $7d05: $07
	nop                                              ; $7d06: $00
	inc  b                                           ; $7d07: $04
	adc  c                                           ; $7d08: $89
	rlca                                             ; $7d09: $07
	ld   bc, $0003                                   ; $7d0a: $01 $03 $00
	add  b                                           ; $7d0d: $80
	ld   l, a                                        ; $7d0e: $6f
	nop                                              ; $7d0f: $00
	ld   l, b                                        ; $7d10: $68
	add  c                                           ; $7d11: $81
	ld   l, a                                        ; $7d12: $6f
	add  b                                           ; $7d13: $80
	rrca                                             ; $7d14: $0f
	add  b                                           ; $7d15: $80
	ld   l, a                                        ; $7d16: $6f
	add  b                                           ; $7d17: $80
	ld   l, [hl]                                     ; $7d18: $6e
	add  b                                           ; $7d19: $80
	rrca                                             ; $7d1a: $0f
	ld   bc, $0007                                   ; $7d1b: $01 $07 $00
	add  b                                           ; $7d1e: $80
	rst  $38                                         ; $7d1f: $ff
	ld   bc, $f807                                   ; $7d20: $01 $07 $f8
	add  b                                           ; $7d23: $80
	ret  nc                                          ; $7d24: $d0

	add  b                                           ; $7d25: $80
	or   b                                           ; $7d26: $b0
	add  b                                           ; $7d27: $80
	ld   d, b                                        ; $7d28: $50
	add  b                                           ; $7d29: $80
	sub  b                                           ; $7d2a: $90
	add  b                                           ; $7d2b: $80
	rst  $38                                         ; $7d2c: $ff
	ld   bc, $00f0                                   ; $7d2d: $01 $f0 $00
	add  b                                           ; $7d30: $80

jr_077_7d31:
	ldh  a, [rP1]                                    ; $7d31: $f0 $00
	ret  nc                                          ; $7d33: $d0

	add  a                                           ; $7d34: $87
	jr   nc, jr_077_7cb7                             ; $7d35: $30 $80

	ldh  a, [$0c]                                    ; $7d37: $f0 $0c
	ld   de, $4201                                   ; $7d39: $11 $01 $42
	jp   nz, $f515                                   ; $7d3c: $c2 $15 $f5

	ld   b, $fe                                      ; $7d3f: $06 $fe
	ld   h, c                                        ; $7d41: $61
	ld   a, a                                        ; $7d42: $7f
	jr   c, jr_077_7dc4                              ; $7d43: $38 $7f

	ld   a, [hl]                                     ; $7d45: $7e
	add  c                                           ; $7d46: $81
	ld   a, a                                        ; $7d47: $7f
	ld   bc, $5797                                   ; $7d48: $01 $97 $57
	add  b                                           ; $7d4b: $80
	xor  a                                           ; $7d4c: $af
	add  b                                           ; $7d4d: $80
	ld   a, a                                        ; $7d4e: $7f
	add  d                                           ; $7d4f: $82
	rst  $38                                         ; $7d50: $ff
	ld   [$ff7f], sp                                 ; $7d51: $08 $7f $ff
	rra                                              ; $7d54: $1f
	rst  $38                                         ; $7d55: $ff
	add  a                                           ; $7d56: $87
	rst  $38                                         ; $7d57: $ff
	add  sp, -$01                                    ; $7d58: $e8 $ff
	rst  $28                                         ; $7d5a: $ef
	add  c                                           ; $7d5b: $81
	rst  $38                                         ; $7d5c: $ff
	nop                                              ; $7d5d: $00
	rst  JumpTable                                         ; $7d5e: $df
	add  e                                           ; $7d5f: $83
	rst  $38                                         ; $7d60: $ff
	ld   bc, $febe                                   ; $7d61: $01 $be $fe
	add  b                                           ; $7d64: $80
	ld   sp, hl                                      ; $7d65: $f9
	nop                                              ; $7d66: $00
	ld   a, a                                        ; $7d67: $7f
	add  l                                           ; $7d68: $85
	ldh  a, [$80]                                    ; $7d69: $f0 $80
	ldh  [$80], a                                    ; $7d6b: $e0 $80
	sub  b                                           ; $7d6d: $90
	add  b                                           ; $7d6e: $80
	ld   [hl], b                                     ; $7d6f: $70
	add  b                                           ; $7d70: $80
	ret  nz                                          ; $7d71: $c0

	inc  c                                           ; $7d72: $0c
	dec  bc                                          ; $7d73: $0b
	db   $fc                                         ; $7d74: $fc
	ld   a, [$fcfe]                                  ; $7d75: $fa $fe $fc
	rst  $38                                         ; $7d78: $ff
	ld   bc, $1fff                                   ; $7d79: $01 $ff $1f
	cp   $60                                         ; $7d7c: $fe $60
	rst  $38                                         ; $7d7e: $ff
	cp   a                                           ; $7d7f: $bf
	add  c                                           ; $7d80: $81
	rst  $38                                         ; $7d81: $ff
	ld   bc, $7c43                                   ; $7d82: $01 $43 $7c
	add  b                                           ; $7d85: $80
	ccf                                              ; $7d86: $3f
	rrca                                             ; $7d87: $0f
	call c, $0efc                                    ; $7d88: $dc $fc $0e
	or   c                                           ; $7d8b: $b1
	ld   c, e                                        ; $7d8c: $4b
	db   $db                                         ; $7d8d: $db

jr_077_7d8e:
	rst  $20                                         ; $7d8e: $e7
	rst  $28                                         ; $7d8f: $ef
	inc  de                                          ; $7d90: $13

jr_077_7d91:
	rst  $30                                         ; $7d91: $f7
	db   $eb                                         ; $7d92: $eb
	ld   hl, sp-$10                                  ; $7d93: $f8 $f0
	ld   b, $07                                      ; $7d95: $06 $07
	ld   bc, $db80                                   ; $7d97: $01 $80 $db
	add  b                                           ; $7d9a: $80
	inc  bc                                          ; $7d9b: $03
	inc  bc                                          ; $7d9c: $03
	inc  hl                                          ; $7d9d: $23

jr_077_7d9e:
	db   $e3                                         ; $7d9e: $e3
	db   $d3                                         ; $7d9f: $d3
	di                                               ; $7da0: $f3
	add  b                                           ; $7da1: $80
	ei                                               ; $7da2: $fb
	inc  bc                                          ; $7da3: $03
	jr   jr_077_7d9e                                 ; $7da4: $18 $f8

	cpl                                              ; $7da6: $2f
	jr   nz, jr_077_7d31                             ; $7da7: $20 $88

	ld   h, b                                        ; $7da9: $60
	add  b                                           ; $7daa: $80
	db   $10                                         ; $7dab: $10
	ld   [bc], a                                     ; $7dac: $02
	add  b                                           ; $7dad: $80
	ldh  a, [rPCM34]                                 ; $7dae: $f0 $77
	add  l                                           ; $7db0: $85
	ld   [$0f80], sp                                 ; $7db1: $08 $80 $0f
	add  d                                           ; $7db4: $82
	ld   [$0480], sp                                 ; $7db5: $08 $80 $04
	nop                                              ; $7db8: $00
	adc  b                                           ; $7db9: $88
	add  l                                           ; $7dba: $85
	adc  a                                           ; $7dbb: $8f
	ld   bc, $f7f0                                   ; $7dbc: $01 $f0 $f7
	add  b                                           ; $7dbf: $80
	rlca                                             ; $7dc0: $07
	inc  b                                           ; $7dc1: $04
	inc  b                                           ; $7dc2: $04
	rlca                                             ; $7dc3: $07

jr_077_7dc4:
	ld   bc, $8103                                   ; $7dc4: $01 $03 $81
	add  c                                           ; $7dc7: $81
	rst  $38                                         ; $7dc8: $ff
	nop                                              ; $7dc9: $00
	ld   a, a                                        ; $7dca: $7f
	add  c                                           ; $7dcb: $81
	rst  $38                                         ; $7dcc: $ff
	ld   [$ff1f], sp                                 ; $7dcd: $08 $1f $ff
	ret  nz                                          ; $7dd0: $c0

	rst  JumpTable                                         ; $7dd1: $df
	ld   e, a                                        ; $7dd2: $5f
	rst  JumpTable                                         ; $7dd3: $df
	add  b                                           ; $7dd4: $80
	ret  nz                                          ; $7dd5: $c0

	adc  a                                           ; $7dd6: $8f
	add  l                                           ; $7dd7: $85
	ldh  a, [rP1]                                    ; $7dd8: $f0 $00
	db   $10                                         ; $7dda: $10
	add  e                                           ; $7ddb: $83
	or   b                                           ; $7ddc: $b0
	add  b                                           ; $7ddd: $80
	jr   nc, jr_077_7de0                             ; $7dde: $30 $00

jr_077_7de0:
	dec  de                                          ; $7de0: $1b
	add  c                                           ; $7de1: $81
	rlca                                             ; $7de2: $07
	add  b                                           ; $7de3: $80
	rst  $20                                         ; $7de4: $e7
	inc  bc                                          ; $7de5: $03
	rrca                                             ; $7de6: $0f
	rst  $38                                         ; $7de7: $ff
	ld   [hl], e                                     ; $7de8: $73
	ld   a, a                                        ; $7de9: $7f
	add  h                                           ; $7dea: $84
	rst  $38                                         ; $7deb: $ff
	ld   bc, $6a92                                   ; $7dec: $01 $92 $6a
	add  b                                           ; $7def: $80
	ld   l, h                                        ; $7df0: $6c
	add  b                                           ; $7df1: $80
	ld   [$6880], sp                                 ; $7df2: $08 $80 $68
	add  b                                           ; $7df5: $80
	ld   l, l                                        ; $7df6: $6d
	ld   b, $6a                                      ; $7df7: $06 $6a
	ld   [$ffa8], a                                  ; $7df9: $ea $a8 $ff

jr_077_7dfc:
	rst  ToBoot                                         ; $7dfc: $c7
	rst  $38                                         ; $7dfd: $ff
	rlca                                             ; $7dfe: $07
	add  l                                           ; $7dff: $85
	db   $10                                         ; $7e00: $10
	add  b                                           ; $7e01: $80
	ld   e, d                                        ; $7e02: $5a
	add  b                                           ; $7e03: $80
	or   l                                           ; $7e04: $b5
	inc  b                                           ; $7e05: $04
	nop                                              ; $7e06: $00
	rst  $38                                         ; $7e07: $ff
	nop                                              ; $7e08: $00
	rst  $38                                         ; $7e09: $ff
	jr   nz, jr_077_7d91                             ; $7e0a: $20 $85

	jr   nc, jr_077_7d8e                             ; $7e0c: $30 $80

	or   b                                           ; $7e0e: $b0
	add  b                                           ; $7e0f: $80
	ld   [hl], b                                     ; $7e10: $70
	dec  b                                           ; $7e11: $05

jr_077_7e12:
	db   $10                                         ; $7e12: $10
	ldh  a, [rP1]                                    ; $7e13: $f0 $00
	ldh  a, [$9f]                                    ; $7e15: $f0 $9f
	ld   a, a                                        ; $7e17: $7f
	add  b                                           ; $7e18: $80
	scf                                              ; $7e19: $37
	inc  de                                          ; $7e1a: $13
	or   [hl]                                        ; $7e1b: $b6
	cp   a                                           ; $7e1c: $bf
	ld   e, [hl]                                     ; $7e1d: $5e
	ld   c, c                                        ; $7e1e: $49
	add  b                                           ; $7e1f: $80
	add  $e5                                         ; $7e20: $c6 $e5
	db   $ed                                         ; $7e22: $ed
	jp   z, $95da                                    ; $7e23: $ca $da $95

	push af                                          ; $7e26: $f5
	ld   c, b                                        ; $7e27: $48
	adc  b                                           ; $7e28: $88
	inc  c                                           ; $7e29: $0c
	ld   [hl], e                                     ; $7e2a: $73
	rra                                              ; $7e2b: $1f
	ldh  [$d0], a                                    ; $7e2c: $e0 $d0
	ld   d, b                                        ; $7e2e: $50
	add  b                                           ; $7e2f: $80
	and  b                                           ; $7e30: $a0
	add  b                                           ; $7e31: $80
	ld   b, b                                        ; $7e32: $40
	add  b                                           ; $7e33: $80
	add  b                                           ; $7e34: $80
	add  d                                           ; $7e35: $82
	nop                                              ; $7e36: $00
	ld   [$f070], sp                                 ; $7e37: $08 $70 $f0
	sub  b                                           ; $7e3a: $90
	inc  e                                           ; $7e3b: $1c
	inc  c                                           ; $7e3c: $0c
	rlca                                             ; $7e3d: $07
	ld   b, $00                                      ; $7e3e: $06 $00
	ld   bc, $0083                                   ; $7e40: $01 $83 $00
	add  b                                           ; $7e43: $80
	inc  c                                           ; $7e44: $0c
	add  b                                           ; $7e45: $80
	add  hl, de                                      ; $7e46: $19
	inc  b                                           ; $7e47: $04
	jr   nc, jr_077_7dfc                             ; $7e48: $30 $b2

	add  d                                           ; $7e4a: $82
	ld   a, l                                        ; $7e4b: $7d
	add  d                                           ; $7e4c: $82
	add  c                                           ; $7e4d: $81
	nop                                              ; $7e4e: $00
	ld   bc, $0080                                   ; $7e4f: $01 $80 $00
	add  b                                           ; $7e52: $80
	ld   b, b                                        ; $7e53: $40
	ld   [$d810], sp                                 ; $7e54: $08 $10 $d8
	ld   [$54c4], sp                                 ; $7e57: $08 $c4 $54
	inc  [hl]                                        ; $7e5a: $34
	inc  e                                           ; $7e5b: $1c
	ld   a, [bc]                                     ; $7e5c: $0a
	ld   c, $80                                      ; $7e5d: $0e $80
	ld   b, $80                                      ; $7e5f: $06 $80
	ld   bc, $0200                                   ; $7e61: $01 $00 $02
	add  b                                           ; $7e64: $80
	nop                                              ; $7e65: $00
	ld   a, [bc]                                     ; $7e66: $0a
	xor  c                                           ; $7e67: $a9
	ld   l, b                                        ; $7e68: $68
	rra                                              ; $7e69: $1f
	ccf                                              ; $7e6a: $3f
	ld   d, b                                        ; $7e6b: $50
	ld   c, a                                        ; $7e6c: $4f
	nop                                              ; $7e6d: $00
	jr   nz, @+$23                                   ; $7e6e: $20 $21

	rra                                              ; $7e70: $1f
	ld   e, $80                                      ; $7e71: $1e $80
	nop                                              ; $7e73: $00
	add  b                                           ; $7e74: $80
	add  b                                           ; $7e75: $80
	ld   b, $81                                      ; $7e76: $06 $81
	adc  e                                           ; $7e78: $8b
	push af                                          ; $7e79: $f5
	ld   [bc], a                                     ; $7e7a: $02
	cp   $03                                         ; $7e7b: $fe $03
	nop                                              ; $7e7d: $00

jr_077_7e7e:
	add  b                                           ; $7e7e: $80
	ret  nz                                          ; $7e7f: $c0

	add  d                                           ; $7e80: $82
	nop                                              ; $7e81: $00
	add  b                                           ; $7e82: $80
	rst  $38                                         ; $7e83: $ff
	ld   [bc], a                                     ; $7e84: $02
	xor  b                                           ; $7e85: $a8
	rst  $38                                         ; $7e86: $ff
	cp   b                                           ; $7e87: $b8
	add  c                                           ; $7e88: $81
	add  hl, sp                                      ; $7e89: $39
	inc  bc                                          ; $7e8a: $03

jr_077_7e8b:
	or   $f0                                         ; $7e8b: $f6 $f0
	ret  nz                                          ; $7e8d: $c0

	jr   jr_077_7e12                                 ; $7e8e: $18 $82

	ld   [$8880], sp                                 ; $7e90: $08 $80 $88
	dec  e                                           ; $7e93: $1d
	jr   nz, jr_077_7e7e                             ; $7e94: $20 $e8

	ret  nz                                          ; $7e96: $c0

	inc  bc                                          ; $7e97: $03
	push hl                                          ; $7e98: $e5
	ld   sp, hl                                      ; $7e99: $f9
	db   $e3                                         ; $7e9a: $e3
	ld   [bc], a                                     ; $7e9b: $02
	rst  $20                                         ; $7e9c: $e7
	ld   sp, hl                                      ; $7e9d: $f9
	ld   l, e                                        ; $7e9e: $6b
	adc  e                                           ; $7e9f: $8b
	ld   [hl], $26                                   ; $7ea0: $36 $26
	rst  $38                                         ; $7ea2: $ff
	adc  [hl]                                        ; $7ea3: $8e
	db   $dd                                         ; $7ea4: $dd
	ld   a, l                                        ; $7ea5: $7d
	cp   $9f                                         ; $7ea6: $fe $9f
	cp   e                                           ; $7ea8: $bb
	inc  a                                           ; $7ea9: $3c
	ld   [hl], b                                     ; $7eaa: $70
	jr   c, jr_077_7ef4                              ; $7eab: $38 $47

	ld   l, a                                        ; $7ead: $6f
	ldh  [$78], a                                    ; $7eae: $e0 $78
	sub  h                                           ; $7eb0: $94
	db   $f4                                         ; $7eb1: $f4
	add  b                                           ; $7eb2: $80
	ld   a, [$1f05]                                  ; $7eb3: $fa $05 $1f
	cp   a                                           ; $7eb6: $bf
	ldh  [rIE], a                                    ; $7eb7: $e0 $ff
	ld   hl, sp+$07                                  ; $7eb9: $f8 $07
	add  b                                           ; $7ebb: $80
	nop                                              ; $7ebc: $00
	add  b                                           ; $7ebd: $80
	rst  $38                                         ; $7ebe: $ff
	add  b                                           ; $7ebf: $80
	rra                                              ; $7ec0: $1f
	add  b                                           ; $7ec1: $80
	dec  b                                           ; $7ec2: $05
	add  b                                           ; $7ec3: $80
	dec  bc                                          ; $7ec4: $0b
	ld   a, [bc]                                     ; $7ec5: $0a
	db   $fc                                         ; $7ec6: $fc
	rst  $38                                         ; $7ec7: $ff
	ld   [hl], a                                     ; $7ec8: $77
	adc  e                                           ; $7ec9: $8b
	ld   l, e                                        ; $7eca: $6b
	db   $eb                                         ; $7ecb: $eb
	xor  e                                           ; $7ecc: $ab
	db   $eb                                         ; $7ecd: $eb
	inc  hl                                          ; $7ece: $23
	di                                               ; $7ecf: $f3
	ld   d, e                                        ; $7ed0: $53
	add  c                                           ; $7ed1: $81
	db   $d3                                         ; $7ed2: $d3
	dec  d                                           ; $7ed3: $15
	ld   b, e                                        ; $7ed4: $43
	db   $d3                                         ; $7ed5: $d3
	sub  e                                           ; $7ed6: $93
	or   e                                           ; $7ed7: $b3
	adc  b                                           ; $7ed8: $88
	sbc  a                                           ; $7ed9: $9f
	inc  hl                                          ; $7eda: $23
	ld   a, a                                        ; $7edb: $7f
	and  h                                           ; $7edc: $a4
	xor  a                                           ; $7edd: $af
	pop  bc                                          ; $7ede: $c1
	ld   l, [hl]                                     ; $7edf: $6e
	ld   l, a                                        ; $7ee0: $6f
	ld   a, a                                        ; $7ee1: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee2: $cf
	ccf                                              ; $7ee3: $3f
	rlca                                             ; $7ee4: $07
	ld   a, a                                        ; $7ee5: $7f
	jr   z, jr_077_7f67                              ; $7ee6: $28 $7f

	ld   a, [hl]                                     ; $7ee8: $7e
	add  c                                           ; $7ee9: $81
	add  b                                           ; $7eea: $80
	ld   b, d                                        ; $7eeb: $42
	inc  bc                                          ; $7eec: $03
	cp   $ff                                         ; $7eed: $fe $ff
	xor  d                                           ; $7eef: $aa
	xor  e                                           ; $7ef0: $ab
	add  b                                           ; $7ef1: $80
	rla                                              ; $7ef2: $17
	add  b                                           ; $7ef3: $80

jr_077_7ef4:
	rst  $38                                         ; $7ef4: $ff
	ld   de, $fffc                                   ; $7ef5: $11 $fc $ff
	ld   [bc], a                                     ; $7ef8: $02
	cp   $86                                         ; $7ef9: $fe $86
	ld   a, [hl]                                     ; $7efb: $7e
	or   $fe                                         ; $7efc: $f6 $fe
	ld   [$30f8], sp                                 ; $7efe: $08 $f8 $30
	ldh  a, [$dc]                                    ; $7f01: $f0 $dc
	db   $fc                                         ; $7f03: $fc
	sbc  h                                           ; $7f04: $9c
	db   $fc                                         ; $7f05: $fc
	ld   a, b                                        ; $7f06: $78
	ld   hl, sp-$80                                  ; $7f07: $f8 $80
	jr   c, jr_077_7e8b                              ; $7f09: $38 $80

	ld   h, c                                        ; $7f0b: $61
	db   $10                                         ; $7f0c: $10
	jr   z, jr_077_7f7b                              ; $7f0d: $28 $6c

	ld   l, l                                        ; $7f0f: $6d
	ld   l, a                                        ; $7f10: $6f
	ld   h, d                                        ; $7f11: $62
	ld   h, a                                        ; $7f12: $67
	pop  hl                                          ; $7f13: $e1
	db   $e3                                         ; $7f14: $e3
	ld   b, b                                        ; $7f15: $40
	pop  bc                                          ; $7f16: $c1
	nop                                              ; $7f17: $00
	ret  nz                                          ; $7f18: $c0

	ld   b, b                                        ; $7f19: $40
	ret  nz                                          ; $7f1a: $c0

	sub  a                                           ; $7f1b: $97
	ld   l, b                                        ; $7f1c: $68
	ld   a, a                                        ; $7f1d: $7f
	add  b                                           ; $7f1e: $80
	ret  nz                                          ; $7f1f: $c0

	rrca                                             ; $7f20: $0f
	ld   b, b                                        ; $7f21: $40
	ret  nz                                          ; $7f22: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $7f23: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $7f25: $e0 $a0
	ldh  a, [$d0]                                    ; $7f27: $f0 $d0
	ldh  a, [$d0]                                    ; $7f29: $f0 $d0
	ret  c                                           ; $7f2b: $d8

	and  a                                           ; $7f2c: $a7
	nop                                              ; $7f2d: $00
	add  b                                           ; $7f2e: $80
	ld   a, a                                        ; $7f2f: $7f
	nop                                              ; $7f30: $00
	add  e                                           ; $7f31: $83
	rst  $38                                         ; $7f32: $ff
	add  b                                           ; $7f33: $80
	db   $fd                                         ; $7f34: $fd
	ld   bc, $7afa                                   ; $7f35: $01 $fa $7a
	add  b                                           ; $7f38: $80
	ld   [hl], h                                     ; $7f39: $74
	nop                                              ; $7f3a: $00
	add  b                                           ; $7f3b: $80
	add  b                                           ; $7f3c: $80
	nop                                              ; $7f3d: $00
	ld   [bc], a                                     ; $7f3e: $02
	rst  $38                                         ; $7f3f: $ff
	nop                                              ; $7f40: $00
	rst  $38                                         ; $7f41: $ff
	add  b                                           ; $7f42: $80
	rst  $10                                         ; $7f43: $d7
	add  b                                           ; $7f44: $80
	xor  a                                           ; $7f45: $af
	add  b                                           ; $7f46: $80
	ld   e, [hl]                                     ; $7f47: $5e
	add  b                                           ; $7f48: $80
	cp   l                                           ; $7f49: $bd
	add  b                                           ; $7f4a: $80
	ld   a, d                                        ; $7f4b: $7a

jr_077_7f4c:
	dec  b                                           ; $7f4c: $05
	jr   jr_077_7f76                                 ; $7f4d: $18 $27

	rlca                                             ; $7f4f: $07
	rst  $20                                         ; $7f50: $e7
	ld   h, e                                        ; $7f51: $63
	db   $e3                                         ; $7f52: $e3
	add  b                                           ; $7f53: $80
	ldh  [rSB], a                                    ; $7f54: $e0 $01
	add  b                                           ; $7f56: $80
	ldh  a, [$80]                                    ; $7f57: $f0 $80
	or   b                                           ; $7f59: $b0
	add  b                                           ; $7f5a: $80
	jr   nc, @+$05                                   ; $7f5b: $30 $03

	cp   a                                           ; $7f5d: $bf
	cp   c                                           ; $7f5e: $b9
	jr   z, jr_077_7f61                              ; $7f5f: $28 $00

jr_077_7f61:
	add  b                                           ; $7f61: $80
	ld   [bc], a                                     ; $7f62: $02
	add  b                                           ; $7f63: $80
	ld   b, $03                                      ; $7f64: $06 $03
	ld   a, b                                        ; $7f66: $78

jr_077_7f67:
	ld   a, [hl]                                     ; $7f67: $7e
	add  a                                           ; $7f68: $87
	add  e                                           ; $7f69: $83
	add  b                                           ; $7f6a: $80
	rrca                                             ; $7f6b: $0f
	ld   bc, $fc00                                   ; $7f6c: $01 $00 $fc
	add  c                                           ; $7f6f: $81
	ld   bc, $4308                                   ; $7f70: $01 $08 $43
	ret  nz                                          ; $7f73: $c0

	rst  ToBoot                                         ; $7f74: $c7
	and  b                                           ; $7f75: $a0

jr_077_7f76:
	xor  a                                           ; $7f76: $af
	and  b                                           ; $7f77: $a0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f78: $cf
	sub  l                                           ; $7f79: $95
	sub  b                                           ; $7f7a: $90

jr_077_7f7b:
	add  b                                           ; $7f7b: $80
	ld   l, a                                        ; $7f7c: $6f
	dec  c                                           ; $7f7d: $0d
	cpl                                              ; $7f7e: $2f
	ld   l, a                                        ; $7f7f: $6f
	ld   [hl], e                                     ; $7f80: $73
	db   $d3                                         ; $7f81: $d3
	sub  b                                           ; $7f82: $90
	rst  $38                                         ; $7f83: $ff
	cpl                                              ; $7f84: $2f
	rst  $38                                         ; $7f85: $ff
	ld   a, [hl]                                     ; $7f86: $7e
	rst  $38                                         ; $7f87: $ff
	db   $fc                                         ; $7f88: $fc
	rst  $38                                         ; $7f89: $ff
	db   $fd                                         ; $7f8a: $fd
	nop                                              ; $7f8b: $00
	add  h                                           ; $7f8c: $84
	rst  $38                                         ; $7f8d: $ff
	dec  bc                                          ; $7f8e: $0b
	ld   e, h                                        ; $7f8f: $5c
	db   $fc                                         ; $7f90: $fc
	inc  c                                           ; $7f91: $0c
	db   $fc                                         ; $7f92: $fc
	nop                                              ; $7f93: $00
	db   $fc                                         ; $7f94: $fc
	nop                                              ; $7f95: $00
	ld   hl, sp+$50                                  ; $7f96: $f8 $50
	ld   [$f4f8], sp                                 ; $7f98: $08 $f8 $f4
	add  b                                           ; $7f9b: $80
	add  sp, $05                                     ; $7f9c: $e8 $05
	pop  hl                                          ; $7f9e: $e1
	jp   hl                                          ; $7f9f: $e9


	or   b                                           ; $7fa0: $b0
	cp   e                                           ; $7fa1: $bb
	ld   [hl], $33                                   ; $7fa2: $36 $33
	add  b                                           ; $7fa4: $80
	ld   [hl], d                                     ; $7fa5: $72
	ld   de, $6e64                                   ; $7fa6: $11 $64 $6e
	and  $e7                                         ; $7fa9: $e6 $e7
	pop  bc                                          ; $7fab: $c1
	rst  $10                                         ; $7fac: $d7
	ret  c                                           ; $7fad: $d8

	db   $db                                         ; $7fae: $db
	jr   nc, jr_077_7f4c                             ; $7faf: $30 $9b

	inc  h                                           ; $7fb1: $24
	add  sp, $50                                     ; $7fb2: $e8 $50
	ret  nc                                          ; $7fb4: $d0

	ccf                                              ; $7fb5: $3f
	rst  $38                                         ; $7fb6: $ff
	db   $10                                         ; $7fb7: $10
	ret  nc                                          ; $7fb8: $d0

	add  b                                           ; $7fb9: $80
	and  b                                           ; $7fba: $a0
	add  b                                           ; $7fbb: $80
	ld   d, b                                        ; $7fbc: $50
	inc  bc                                          ; $7fbd: $03
	ccf                                              ; $7fbe: $3f
	rst  $38                                         ; $7fbf: $ff
	add  b                                           ; $7fc0: $80
	ld   b, b                                        ; $7fc1: $40
	add  b                                           ; $7fc2: $80
	ccf                                              ; $7fc3: $3f
	rrca                                             ; $7fc4: $0f
	ld   d, $17                                      ; $7fc5: $16 $17
	ldh  a, [$fe]                                    ; $7fc7: $f0 $fe
	jr   jr_077_7fe2                                 ; $7fc9: $18 $17

	ld   l, $2f                                      ; $7fcb: $2e $2f
	ld   e, l                                        ; $7fcd: $5d
	ld   e, a                                        ; $7fce: $5f
	add  b                                           ; $7fcf: $80
	db   $fc                                         ; $7fd0: $fc
	add  $be                                         ; $7fd1: $c6 $be
	xor  $b5                                         ; $7fd3: $ee $b5
	add  b                                           ; $7fd5: $80
	and  a                                           ; $7fd6: $a7
	inc  e                                           ; $7fd7: $1c
	and  e                                           ; $7fd8: $a3
	jr   nz, jr_077_7fdd                             ; $7fd9: $20 $02

	ld   [hl+], a                                    ; $7fdb: $22
	dec  h                                           ; $7fdc: $25

jr_077_7fdd:
	ld   l, l                                        ; $7fdd: $6d
	ld   h, [hl]                                     ; $7fde: $66
	ld   l, d                                        ; $7fdf: $6a
	ld   h, e                                        ; $7fe0: $63
	ld   h, l                                        ; $7fe1: $65

jr_077_7fe2:
	ld   h, c                                        ; $7fe2: $61
	ld   h, d                                        ; $7fe3: $62
	ld   l, l                                        ; $7fe4: $6d
	db   $d3                                         ; $7fe5: $d3
	and  h                                           ; $7fe6: $a4
	and  l                                           ; $7fe7: $a5
	db   $fc                                         ; $7fe8: $fc
	rst  $38                                         ; $7fe9: $ff
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	ld   sp, hl                                      ; $7fec: $f9
	rrca                                             ; $7fed: $0f
	inc  bc                                          ; $7fee: $03
	rra                                              ; $7fef: $1f
	scf                                              ; $7ff0: $37
	ccf                                              ; $7ff1: $3f
	daa                                              ; $7ff2: $27
	ld   b, a                                        ; $7ff3: $47
	ld   a, a                                        ; $7ff4: $7f
	rst  $38                                         ; $7ff5: $ff
	nop                                              ; $7ff6: $00
	rst  $38                                         ; $7ff7: $ff
	nop                                              ; $7ff8: $00
	rst  $38                                         ; $7ff9: $ff
	nop                                              ; $7ffa: $00
	xor  d                                           ; $7ffb: $aa
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
