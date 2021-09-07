; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	ld   b, $04                                      ; $400b: $06 $04
	rrca                                             ; $400d: $0f
	ld   [bc], a                                     ; $400e: $02
	rrca                                             ; $400f: $0f
	inc  b                                           ; $4010: $04
	rrca                                             ; $4011: $0f
	ld   b, $0f                                      ; $4012: $06 $0f
	ld   b, $0f                                      ; $4014: $06 $0f
	ld   b, $0f                                      ; $4016: $06 $0f
	ld   bc, $0106                                   ; $4018: $01 $06 $01
	ld   b, $05                                      ; $401b: $06 $05
	ld   a, [bc]                                     ; $401d: $0a
	rrca                                             ; $401e: $0f
	inc  d                                           ; $401f: $14
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	inc  a                                           ; $402b: $3c
	inc  a                                           ; $402c: $3c
	ld   b, d                                        ; $402d: $42
	ld   a, [hl]                                     ; $402e: $7e
	sbc  c                                           ; $402f: $99
	ld   a, [hl]                                     ; $4030: $7e
	sbc  c                                           ; $4031: $99
	ld   h, [hl]                                     ; $4032: $66
	sbc  c                                           ; $4033: $99
	db   $db                                         ; $4034: $db
	inc  h                                           ; $4035: $24
	rst  $38                                         ; $4036: $ff
	inc  h                                           ; $4037: $24
	rst  $38                                         ; $4038: $ff
	jr   c, @+$01                                    ; $4039: $38 $ff

	jr   jr_025_40bb                                 ; $403b: $18 $7e

	add  c                                           ; $403d: $81

jr_025_403e:
	cp   l                                           ; $403e: $bd
	ld   e, d                                        ; $403f: $5a
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	ld   h, b                                        ; $404b: $60
	jr   nz, jr_025_403e                             ; $404c: $20 $f0

	ld   b, b                                        ; $404e: $40
	ldh  a, [rAUD4LEN]                               ; $404f: $f0 $20
	ldh  a, [$60]                                    ; $4051: $f0 $60
	ldh  a, [$60]                                    ; $4053: $f0 $60
	ldh  a, [$60]                                    ; $4055: $f0 $60
	ldh  a, [$80]                                    ; $4057: $f0 $80
	ld   h, b                                        ; $4059: $60
	add  b                                           ; $405a: $80
	ld   h, b                                        ; $405b: $60
	and  b                                           ; $405c: $a0
	ld   d, b                                        ; $405d: $50
	ldh  a, [$28]                                    ; $405e: $f0 $28
	dec  c                                           ; $4060: $0d
	ld   [de], a                                     ; $4061: $12
	ld   bc, $191e                                   ; $4062: $01 $1e $19
	ld   h, $05                                      ; $4065: $26 $05
	ld   a, [hl-]                                    ; $4067: $3a
	add  hl, sp                                      ; $4068: $39
	ld   d, [hl]                                     ; $4069: $56
	jr   nc, jr_025_40d7                             ; $406a: $30 $6b

	jr   nz, jr_025_40c9                             ; $406c: $20 $5b

	nop                                              ; $406e: $00
	inc  sp                                          ; $406f: $33
	inc  bc                                          ; $4070: $03
	dec  b                                           ; $4071: $05
	ld   bc, $0306                                   ; $4072: $01 $06 $03
	inc  b                                           ; $4075: $04
	nop                                              ; $4076: $00
	rlca                                             ; $4077: $07
	ld   bc, $0102                                   ; $4078: $01 $02 $01
	ld   [bc], a                                     ; $407b: $02
	nop                                              ; $407c: $00
	ld   bc, $0000                                   ; $407d: $01 $00 $00
	rst  ToBoot                                         ; $4080: $c7
	jr   c, @+$80                                    ; $4081: $38 $7e

	sbc  c                                           ; $4083: $99
	and  c                                           ; $4084: $a1
	ld   e, [hl]                                     ; $4085: $5e
	rst  $38                                         ; $4086: $ff
	nop                                              ; $4087: $00
	cp   l                                           ; $4088: $bd
	jp   Jump_025_6699                               ; $4089: $c3 $99 $66


	cp   l                                           ; $408c: $bd
	ld   e, d                                        ; $408d: $5a
	inc  a                                           ; $408e: $3c
	db   $db                                         ; $408f: $db
	cp   l                                           ; $4090: $bd
	jp   Jump_025_6699                               ; $4091: $c3 $99 $66


	jp   $813c                                       ; $4094: $c3 $3c $81


	ld   h, [hl]                                     ; $4097: $66
	jp   $8124                                       ; $4098: $c3 $24 $81


	ld   b, d                                        ; $409b: $42
	nop                                              ; $409c: $00
	add  c                                           ; $409d: $81
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	or   b                                           ; $40a0: $b0
	ld   c, b                                        ; $40a1: $48
	add  b                                           ; $40a2: $80
	ld   a, b                                        ; $40a3: $78
	sbc  b                                           ; $40a4: $98
	ld   h, h                                        ; $40a5: $64
	and  b                                           ; $40a6: $a0
	ld   e, h                                        ; $40a7: $5c
	sbc  h                                           ; $40a8: $9c
	ld   l, d                                        ; $40a9: $6a
	inc  c                                           ; $40aa: $0c
	sub  $04                                         ; $40ab: $d6 $04
	jp   z, $cc00                                    ; $40ad: $ca $00 $cc

	ret  nz                                          ; $40b0: $c0

	and  b                                           ; $40b1: $a0
	add  b                                           ; $40b2: $80
	ld   h, b                                        ; $40b3: $60
	ret  nz                                          ; $40b4: $c0

	jr   nz, jr_025_40b7                             ; $40b5: $20 $00

jr_025_40b7:
	ldh  [$80], a                                    ; $40b7: $e0 $80
	ld   b, b                                        ; $40b9: $40
	add  b                                           ; $40ba: $80

jr_025_40bb:
	ld   b, b                                        ; $40bb: $40
	nop                                              ; $40bc: $00
	add  b                                           ; $40bd: $80
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00

jr_025_40c9:
	nop                                              ; $40c9: $00
	nop                                              ; $40ca: $00
	nop                                              ; $40cb: $00
	nop                                              ; $40cc: $00
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	inc  c                                           ; $40cf: $0c
	inc  b                                           ; $40d0: $04
	rra                                              ; $40d1: $1f
	inc  c                                           ; $40d2: $0c
	rra                                              ; $40d3: $1f
	ld   a, [bc]                                     ; $40d4: $0a
	rra                                              ; $40d5: $1f
	inc  b                                           ; $40d6: $04

jr_025_40d7:
	rra                                              ; $40d7: $1f
	ld   b, $0f                                      ; $40d8: $06 $0f
	ld   b, $0f                                      ; $40da: $06 $0f
	ld   bc, $0706                                   ; $40dc: $01 $06 $07
	ld   [rRAMG], sp                                 ; $40df: $08 $00 $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	nop                                              ; $40ec: $00
	ld   a, b                                        ; $40ed: $78
	ld   a, b                                        ; $40ee: $78
	add  a                                           ; $40ef: $87
	cp   $31                                         ; $40f0: $fe $31
	cp   $19                                         ; $40f2: $fe $19
	and  $19                                         ; $40f4: $e6 $19
	db   $db                                         ; $40f6: $db
	inc  h                                           ; $40f7: $24
	rst  $38                                         ; $40f8: $ff
	inc  h                                           ; $40f9: $24
	rst  $38                                         ; $40fa: $ff
	jr   c, @+$01                                    ; $40fb: $38 $ff

jr_025_40fd:
	jr   jr_025_40fd                                 ; $40fd: $18 $fe

	ld   bc, $0000                                   ; $40ff: $01 $00 $00
	nop                                              ; $4102: $00

jr_025_4103:
	nop                                              ; $4103: $00
	nop                                              ; $4104: $00
	nop                                              ; $4105: $00
	nop                                              ; $4106: $00
	nop                                              ; $4107: $00
	nop                                              ; $4108: $00
	nop                                              ; $4109: $00
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	nop                                              ; $410c: $00
	ret  nz                                          ; $410d: $c0

	ret  nz                                          ; $410e: $c0

	ldh  [rLCDC], a                                  ; $410f: $e0 $40
	ldh  [rAUD4LEN], a                               ; $4111: $e0 $20
	ldh  a, [$60]                                    ; $4113: $f0 $60
	ldh  a, [$60]                                    ; $4115: $f0 $60
	ldh  a, [rLCDC]                                  ; $4117: $f0 $40
	ldh  a, [$80]                                    ; $4119: $f0 $80
	ld   h, b                                        ; $411b: $60
	nop                                              ; $411c: $00
	ldh  a, [$b0]                                    ; $411d: $f0 $b0
	ld   c, b                                        ; $411f: $48
	ld   c, $17                                      ; $4120: $0e $17
	ld   c, $11                                      ; $4122: $0e $11
	ld   bc, $191e                                   ; $4124: $01 $1e $19
	ld   l, $25                                      ; $4127: $2e $25
	ld   e, d                                        ; $4129: $5a
	ld   a, $41                                      ; $412a: $3e $41
	ld   a, $4d                                      ; $412c: $3e $4d
	jr   z, jr_025_4187                              ; $412e: $28 $57

	inc  e                                           ; $4130: $1c
	dec  hl                                          ; $4131: $2b
	ld   bc, $001e                                   ; $4132: $01 $1e $00
	inc  bc                                          ; $4135: $03
	nop                                              ; $4136: $00
	ld   bc, $0000                                   ; $4137: $01 $00 $00
	nop                                              ; $413a: $00
	nop                                              ; $413b: $00
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	cp   l                                           ; $4140: $bd
	ld   e, d                                        ; $4141: $5a
	rst  ToBoot                                         ; $4142: $c7
	jr   c, jr_025_4103                              ; $4143: $38 $be

	ld   e, c                                        ; $4145: $59
	pop  bc                                          ; $4146: $c1
	ld   a, $ff                                      ; $4147: $3e $ff
	nop                                              ; $4149: $00
	or   l                                           ; $414a: $b5
	res  3, c                                        ; $414b: $cb $99
	ld   h, [hl]                                     ; $414d: $66
	cp   c                                           ; $414e: $b9
	ld   e, [hl]                                     ; $414f: $5e
	ld   a, [hl-]                                    ; $4150: $3a
	db   $dd                                         ; $4151: $dd
	sbc  e                                           ; $4152: $9b
	ld   h, l                                        ; $4153: $65
	ld   b, d                                        ; $4154: $42
	cp   l                                           ; $4155: $bd
	inc  bc                                          ; $4156: $03
	call nz, $0700                                   ; $4157: $c4 $00 $07
	inc  bc                                          ; $415a: $03
	dec  b                                           ; $415b: $05
	inc  bc                                          ; $415c: $03
	inc  b                                           ; $415d: $04
	nop                                              ; $415e: $00
	inc  bc                                          ; $415f: $03
	or   b                                           ; $4160: $b0
	ld   c, b                                        ; $4161: $48
	db   $10                                         ; $4162: $10
	add  sp, -$58                                    ; $4163: $e8 $a8
	ld   d, h                                        ; $4165: $54
	xor  b                                           ; $4166: $a8
	ld   d, h                                        ; $4167: $54
	sbc  b                                           ; $4168: $98
	ld   h, h                                        ; $4169: $64
	sbc  b                                           ; $416a: $98
	ld   h, h                                        ; $416b: $64
	nop                                              ; $416c: $00
	ret  c                                           ; $416d: $d8

	add  b                                           ; $416e: $80
	ld   b, b                                        ; $416f: $40
	nop                                              ; $4170: $00
	ret  nz                                          ; $4171: $c0

	add  b                                           ; $4172: $80
	ldh  [rLCDC], a                                  ; $4173: $e0 $40
	and  b                                           ; $4175: $a0
	ret  nz                                          ; $4176: $c0

	jr   nz, jr_025_4179                             ; $4177: $20 $00

jr_025_4179:
	ldh  [$80], a                                    ; $4179: $e0 $80
	ld   b, b                                        ; $417b: $40
	add  b                                           ; $417c: $80

Call_025_417d:
	ld   b, b                                        ; $417d: $40
	nop                                              ; $417e: $00
	add  b                                           ; $417f: $80
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00

jr_025_4187:
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	inc  bc                                          ; $418d: $03
	inc  bc                                          ; $418e: $03
	rlca                                             ; $418f: $07
	ld   [bc], a                                     ; $4190: $02
	rlca                                             ; $4191: $07
	inc  b                                           ; $4192: $04
	rrca                                             ; $4193: $0f
	ld   b, $0f                                      ; $4194: $06 $0f
	ld   b, $0f                                      ; $4196: $06 $0f
	ld   [bc], a                                     ; $4198: $02
	rrca                                             ; $4199: $0f
	ld   bc, $0006                                   ; $419a: $01 $06 $00
	rrca                                             ; $419d: $0f
	dec  c                                           ; $419e: $0d
	ld   [de], a                                     ; $419f: $12
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	ld   e, $1e                                      ; $41ad: $1e $1e
	pop  hl                                          ; $41af: $e1
	ld   a, a                                        ; $41b0: $7f
	adc  h                                           ; $41b1: $8c
	ld   a, a                                        ; $41b2: $7f
	sbc  b                                           ; $41b3: $98
	ld   h, a                                        ; $41b4: $67
	sbc  b                                           ; $41b5: $98
	db   $db                                         ; $41b6: $db
	inc  h                                           ; $41b7: $24
	rst  $38                                         ; $41b8: $ff
	inc  h                                           ; $41b9: $24
	rst  $38                                         ; $41ba: $ff
	jr   c, @+$01                                    ; $41bb: $38 $ff

	jr   jr_025_423e                                 ; $41bd: $18 $7f

	add  b                                           ; $41bf: $80
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00
	jr   nc, jr_025_41f1                             ; $41cf: $30 $20

	ld   hl, sp+$30                                  ; $41d1: $f8 $30
	ld   hl, sp+$50                                  ; $41d3: $f8 $50
	ld   hl, sp+$20                                  ; $41d5: $f8 $20
	ld   hl, sp+$60                                  ; $41d7: $f8 $60
	ldh  a, [$60]                                    ; $41d9: $f0 $60
	ldh  a, [$80]                                    ; $41db: $f0 $80
	ld   h, b                                        ; $41dd: $60
	ldh  [rAUD1SWEEP], a                             ; $41de: $e0 $10
	dec  c                                           ; $41e0: $0d
	ld   [de], a                                     ; $41e1: $12
	ld   [$1517], sp                                 ; $41e2: $08 $17 $15
	ld   a, [hl+]                                    ; $41e5: $2a
	dec  d                                           ; $41e6: $15
	ld   a, [hl+]                                    ; $41e7: $2a
	add  hl, de                                      ; $41e8: $19
	ld   h, $19                                      ; $41e9: $26 $19
	ld   h, $00                                      ; $41eb: $26 $00
	dec  de                                          ; $41ed: $1b
	ld   bc, $0002                                   ; $41ee: $01 $02 $00

jr_025_41f1:
	inc  bc                                          ; $41f1: $03
	ld   bc, $0207                                   ; $41f2: $01 $07 $02
	dec  b                                           ; $41f5: $05
	inc  bc                                          ; $41f6: $03
	inc  b                                           ; $41f7: $04
	nop                                              ; $41f8: $00
	rlca                                             ; $41f9: $07
	ld   bc, $0102                                   ; $41fa: $01 $02 $01
	ld   [bc], a                                     ; $41fd: $02
	nop                                              ; $41fe: $00
	ld   bc, $5abd                                   ; $41ff: $01 $bd $5a
	db   $e3                                         ; $4202: $e3
	inc  e                                           ; $4203: $1c
	ld   a, l                                        ; $4204: $7d
	or   d                                           ; $4205: $b2
	add  e                                           ; $4206: $83
	ld   a, h                                        ; $4207: $7c
	rst  $38                                         ; $4208: $ff
	nop                                              ; $4209: $00
	xor  l                                           ; $420a: $ad
	db   $d3                                         ; $420b: $d3
	sbc  c                                           ; $420c: $99
	ld   h, [hl]                                     ; $420d: $66
	sbc  l                                           ; $420e: $9d
	ld   a, d                                        ; $420f: $7a
	ld   e, h                                        ; $4210: $5c
	cp   e                                           ; $4211: $bb
	reti                                             ; $4212: $d9


	and  [hl]                                        ; $4213: $a6
	ld   b, d                                        ; $4214: $42
	cp   l                                           ; $4215: $bd
	ret  nz                                          ; $4216: $c0

	inc  hl                                          ; $4217: $23
	nop                                              ; $4218: $00
	ldh  [$c0], a                                    ; $4219: $e0 $c0
	and  b                                           ; $421b: $a0
	ret  nz                                          ; $421c: $c0

	jr   nz, jr_025_421f                             ; $421d: $20 $00

jr_025_421f:
	ret  nz                                          ; $421f: $c0

	ld   [hl], b                                     ; $4220: $70
	add  sp, $70                                     ; $4221: $e8 $70
	adc  b                                           ; $4223: $88

Jump_025_4224:
	add  b                                           ; $4224: $80
	ld   a, b                                        ; $4225: $78
	sbc  b                                           ; $4226: $98
	ld   [hl], h                                     ; $4227: $74
	and  h                                           ; $4228: $a4
	ld   e, d                                        ; $4229: $5a
	ld   a, h                                        ; $422a: $7c
	add  d                                           ; $422b: $82
	ld   a, h                                        ; $422c: $7c
	or   d                                           ; $422d: $b2
	inc  d                                           ; $422e: $14
	ld   [$d438], a                                  ; $422f: $ea $38 $d4
	add  b                                           ; $4232: $80
	ld   a, b                                        ; $4233: $78
	nop                                              ; $4234: $00
	ret  nz                                          ; $4235: $c0

	nop                                              ; $4236: $00
	add  b                                           ; $4237: $80
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00

jr_025_423e:
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	nop                                              ; $4246: $00
	nop                                              ; $4247: $00
	nop                                              ; $4248: $00
	nop                                              ; $4249: $00
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	nop                                              ; $424c: $00
	ld   bc, $2201                                   ; $424d: $01 $01 $22
	ld   hl, $2372                                   ; $4250: $21 $72 $23
	halt                                             ; $4253: $76
	ld   [hl-], a                                    ; $4254: $32
	ld   a, a                                        ; $4255: $7f
	ld   [de], a                                     ; $4256: $12
	db   $fd                                         ; $4257: $fd
	ld   e, c                                        ; $4258: $59
	cp   $6b                                         ; $4259: $fe $6b
	db   $fc                                         ; $425b: $fc
	inc  l                                           ; $425c: $2c
	ld   a, a                                        ; $425d: $7f
	dec  [hl]                                        ; $425e: $35
	ld   a, a                                        ; $425f: $7f
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	ldh  a, [$f0]                                    ; $426b: $f0 $f0
	ld   c, $fe                                      ; $426d: $0e $fe
	ld   bc, $c8f7                                   ; $426f: $01 $f7 $c8
	ld   hl, sp+$37                                  ; $4272: $f8 $37
	rst  $38                                         ; $4274: $ff

jr_025_4275:
	sbc  b                                           ; $4275: $98
	cp   a                                           ; $4276: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4277: $cf
	cp   a                                           ; $4278: $bf
	ld   c, [hl]                                     ; $4279: $4e
	ccf                                              ; $427a: $3f
	pop  bc                                          ; $427b: $c1
	call c, $df23                                    ; $427c: $dc $23 $df
	and  c                                           ; $427f: $a1
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	nop                                              ; $4285: $00
	nop                                              ; $4286: $00
	nop                                              ; $4287: $00
	nop                                              ; $4288: $00
	nop                                              ; $4289: $00
	nop                                              ; $428a: $00
	nop                                              ; $428b: $00
	nop                                              ; $428c: $00
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	add  b                                           ; $428f: $80
	add  b                                           ; $4290: $80
	ld   b, b                                        ; $4291: $40
	ret  nz                                          ; $4292: $c0

	jr   nz, jr_025_4275                             ; $4293: $20 $e0

	db   $10                                         ; $4295: $10
	ldh  [rAUD1SWEEP], a                             ; $4296: $e0 $10
	ldh  a, [$08]                                    ; $4298: $f0 $08
	ldh  [$90], a                                    ; $429a: $e0 $90
	db   $10                                         ; $429c: $10
	add  sp, -$20                                    ; $429d: $e8 $e0
	sub  b                                           ; $429f: $90
	inc  de                                          ; $42a0: $13
	dec  a                                           ; $42a1: $3d
	add  hl, de                                      ; $42a2: $19
	ld   a, $02                                      ; $42a3: $3e $02
	dec  e                                           ; $42a5: $1d
	nop                                              ; $42a6: $00
	rrca                                             ; $42a7: $0f
	ld   [bc], a                                     ; $42a8: $02
	dec  b                                           ; $42a9: $05
	inc  bc                                          ; $42aa: $03
	dec  b                                           ; $42ab: $05
	inc  bc                                          ; $42ac: $03
	inc  b                                           ; $42ad: $04
	ld   bc, $0002                                   ; $42ae: $01 $02 $00
	ld   bc, $0000                                   ; $42b1: $01 $00 $00
	nop                                              ; $42b4: $00
	ld   bc, $0201                                   ; $42b5: $01 $01 $02
	nop                                              ; $42b8: $00
	ld   bc, $0000                                   ; $42b9: $01 $00 $00
	nop                                              ; $42bc: $00

jr_025_42bd:
	nop                                              ; $42bd: $00
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	call c, $dfa3                                    ; $42c0: $dc $a3 $df
	ld   hl, $c03f                                   ; $42c3: $21 $3f $c0
	sbc  a                                           ; $42c6: $9f
	ld   h, b                                        ; $42c7: $60
	ld   e, b                                        ; $42c8: $58
	and  a                                           ; $42c9: $a7
	and  l                                           ; $42ca: $a5
	ld   e, d                                        ; $42cb: $5a
	push de                                          ; $42cc: $d5
	xor  e                                           ; $42cd: $ab
	ld   d, e                                        ; $42ce: $53
	xor  h                                           ; $42cf: $ac
	add  hl, sp                                      ; $42d0: $39
	sub  $7a                                         ; $42d1: $d6 $7a
	add  l                                           ; $42d3: $85
	ld   [hl], b                                     ; $42d4: $70
	adc  a                                           ; $42d5: $8f
	adc  h                                           ; $42d6: $8c
	ld   [hl], d                                     ; $42d7: $72
	ld   c, $d1                                      ; $42d8: $0e $d1
	nop                                              ; $42da: $00
	rrca                                             ; $42db: $0f
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	db   $10                                         ; $42e0: $10
	add  sp, -$20                                    ; $42e1: $e8 $e0
	jr   jr_025_42bd                                 ; $42e3: $18 $d8

	inc  h                                           ; $42e5: $24
	sbc  b                                           ; $42e6: $98
	ld   h, h                                        ; $42e7: $64
	nop                                              ; $42e8: $00
	ld   hl, sp-$80                                  ; $42e9: $f8 $80
	ld   h, b                                        ; $42eb: $60
	add  b                                           ; $42ec: $80
	ld   b, b                                        ; $42ed: $40
	add  b                                           ; $42ee: $80
	ld   b, b                                        ; $42ef: $40
	add  b                                           ; $42f0: $80
	ld   h, b                                        ; $42f1: $60
	ld   b, b                                        ; $42f2: $40
	or   b                                           ; $42f3: $b0
	ld   h, b                                        ; $42f4: $60
	sub  b                                           ; $42f5: $90
	nop                                              ; $42f6: $00
	ld   [hl], b                                     ; $42f7: $70
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	nop                                              ; $4306: $00
	nop                                              ; $4307: $00
	nop                                              ; $4308: $00
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	nop                                              ; $430d: $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	jr   jr_025_432d                                 ; $4313: $18 $18

	dec  a                                           ; $4315: $3d
	add  hl, de                                      ; $4316: $19
	ld   a, a                                        ; $4317: $7f
	add  hl, bc                                      ; $4318: $09
	ld   a, a                                        ; $4319: $7f
	dec  l                                           ; $431a: $2d
	ld   a, [hl]                                     ; $431b: $7e
	inc  d                                           ; $431c: $14
	ccf                                              ; $431d: $3f
	dec  d                                           ; $431e: $15
	ld   a, $00                                      ; $431f: $3e $00
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	nop                                              ; $432b: $00
	nop                                              ; $432c: $00

jr_025_432d:
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	jr   c, @+$3a                                    ; $432f: $38 $38

	ld   b, a                                        ; $4331: $47
	ld   a, a                                        ; $4332: $7f
	add  b                                           ; $4333: $80
	ei                                               ; $4334: $fb

jr_025_4335:
	inc  h                                           ; $4335: $24
	db   $fd                                         ; $4336: $fd

jr_025_4337:
	ld   [de], a                                     ; $4337: $12
	ld   a, a                                        ; $4338: $7f
	ret  z                                           ; $4339: $c8

	ld   e, a                                        ; $433a: $5f
	rst  $28                                         ; $433b: $ef
	rst  JumpTable                                         ; $433c: $df
	ld   h, $9f                                      ; $433d: $26 $9f
	ld   h, c                                        ; $433f: $61
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	nop                                              ; $4345: $00
	nop                                              ; $4346: $00
	nop                                              ; $4347: $00
	nop                                              ; $4348: $00
	nop                                              ; $4349: $00
	nop                                              ; $434a: $00
	nop                                              ; $434b: $00
	nop                                              ; $434c: $00
	nop                                              ; $434d: $00
	nop                                              ; $434e: $00
	nop                                              ; $434f: $00
	nop                                              ; $4350: $00
	nop                                              ; $4351: $00
	nop                                              ; $4352: $00
	ret  nz                                          ; $4353: $c0

	ret  nz                                          ; $4354: $c0

	jr   nz, jr_025_4337                             ; $4355: $20 $e0

	db   $10                                         ; $4357: $10
	ldh  [rAUD1SWEEP], a                             ; $4358: $e0 $10
	ldh  a, [$08]                                    ; $435a: $f0 $08
	ldh  a, [$08]                                    ; $435c: $f0 $08
	ldh  a, [$c8]                                    ; $435e: $f0 $c8
	ld   d, $3f                                      ; $4360: $16 $3f
	dec  bc                                          ; $4362: $0b
	dec  e                                           ; $4363: $1d
	add  hl, bc                                      ; $4364: $09
	rra                                              ; $4365: $1f
	inc  c                                           ; $4366: $0c
	rra                                              ; $4367: $1f
	ld   bc, $020e                                   ; $4368: $01 $0e $02
	dec  b                                           ; $436b: $05
	inc  bc                                          ; $436c: $03
	inc  b                                           ; $436d: $04
	inc  bc                                          ; $436e: $03
	inc  b                                           ; $436f: $04
	ld   bc, $0002                                   ; $4370: $01 $02 $00
	ld   bc, $0000                                   ; $4373: $01 $00 $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	nop                                              ; $437a: $00
	nop                                              ; $437b: $00
	nop                                              ; $437c: $00
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	ld   e, h                                        ; $4380: $5c
	and  e                                           ; $4381: $a3
	rst  $28                                         ; $4382: $ef
	sub  c                                           ; $4383: $91
	db   $ec                                         ; $4384: $ec
	sub  e                                           ; $4385: $93
	rst  $28                                         ; $4386: $ef
	db   $10                                         ; $4387: $10
	rra                                              ; $4388: $1f
	ldh  [rVBK], a                                   ; $4389: $e0 $4f
	or   b                                           ; $438b: $b0
	inc  l                                           ; $438c: $2c
	db   $d3                                         ; $438d: $d3
	jp   nc, Jump_025_59ad                           ; $438e: $d2 $ad $59

	and  [hl]                                        ; $4391: $a6
	ld   [hl], $cb                                   ; $4392: $36 $cb
	ld   c, a                                        ; $4394: $4f
	or   c                                           ; $4395: $b1
	cpl                                              ; $4396: $2f
	ld   d, b                                        ; $4397: $50
	ld   b, $39                                      ; $4398: $06 $39
	ld   bc, $0306                                   ; $439a: $01 $06 $03
	inc  b                                           ; $439d: $04
	nop                                              ; $439e: $00
	inc  bc                                          ; $439f: $03
	ld   [$f0f4], sp                                 ; $43a0: $08 $f4 $f0
	ret  z                                           ; $43a3: $c8

	ld   [$f0f4], sp                                 ; $43a4: $08 $f4 $f0
	adc  h                                           ; $43a7: $8c
	db   $ec                                         ; $43a8: $ec
	ld   [de], a                                     ; $43a9: $12
	adc  $31                                         ; $43aa: $ce $31
	ld   b, $f9                                      ; $43ac: $06 $f9
	ret  nz                                          ; $43ae: $c0

	scf                                              ; $43af: $37
	ld   b, b                                        ; $43b0: $40
	and  b                                           ; $43b1: $a0
	ret  nz                                          ; $43b2: $c0

	jr   nz, jr_025_4335                             ; $43b3: $20 $80

	ld   b, b                                        ; $43b5: $40
	nop                                              ; $43b6: $00
	ldh  a, [$60]                                    ; $43b7: $f0 $60
	sub  b                                           ; $43b9: $90
	add  b                                           ; $43ba: $80
	ld   h, b                                        ; $43bb: $60
	nop                                              ; $43bc: $00
	ret  nz                                          ; $43bd: $c0

	nop                                              ; $43be: $00
	add  b                                           ; $43bf: $80
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	nop                                              ; $43c4: $00
	nop                                              ; $43c5: $00
	nop                                              ; $43c6: $00
	nop                                              ; $43c7: $00
	nop                                              ; $43c8: $00
	nop                                              ; $43c9: $00
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	nop                                              ; $43cc: $00
	nop                                              ; $43cd: $00
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	nop                                              ; $43d2: $00
	ld   bc, $1900                                   ; $43d3: $01 $00 $19
	add  hl, de                                      ; $43d6: $19
	ccf                                              ; $43d7: $3f
	add  hl, de                                      ; $43d8: $19
	ccf                                              ; $43d9: $3f
	dec  c                                           ; $43da: $0d
	ld   a, $2c                                      ; $43db: $3e $2c
	ld   a, a                                        ; $43dd: $7f
	dec  [hl]                                        ; $43de: $35
	ld   a, [hl]                                     ; $43df: $7e
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	nop                                              ; $43ea: $00
	nop                                              ; $43eb: $00
	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	nop                                              ; $43ee: $00
	ld   a, b                                        ; $43ef: $78
	ld   a, b                                        ; $43f0: $78
	add  a                                           ; $43f1: $87
	rst  $38                                         ; $43f2: $ff
	nop                                              ; $43f3: $00
	ei                                               ; $43f4: $fb
	ld   b, h                                        ; $43f5: $44
	cp   $31                                         ; $43f6: $fe $31
	ld   a, a                                        ; $43f8: $7f
	adc  $5f                                         ; $43f9: $ce $5f
	rst  $20                                         ; $43fb: $e7
	rst  JumpTable                                         ; $43fc: $df
	ld   hl, $20df                                   ; $43fd: $21 $df $20
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	add  b                                           ; $4411: $80
	add  b                                           ; $4412: $80
	ld   h, b                                        ; $4413: $60
	ldh  [rAUD1SWEEP], a                             ; $4414: $e0 $10
	ld   [hl], b                                     ; $4416: $70
	adc  b                                           ; $4417: $88
	ldh  a, [$08]                                    ; $4418: $f0 $08
	ld   hl, sp-$3c                                  ; $441a: $f8 $c4
	ld   hl, sp-$7c                                  ; $441c: $f8 $84
	ldh  a, [$e8]                                    ; $441e: $f0 $e8
	scf                                              ; $4420: $37
	ld   a, [hl]                                     ; $4421: $7e
	ld   a, [de]                                     ; $4422: $1a
	ccf                                              ; $4423: $3f
	ld   a, [de]                                     ; $4424: $1a
	ccf                                              ; $4425: $3f
	inc  c                                           ; $4426: $0c
	rra                                              ; $4427: $1f
	ld   b, $0f                                      ; $4428: $06 $0f
	ld   [bc], a                                     ; $442a: $02
	rlca                                             ; $442b: $07
	nop                                              ; $442c: $00
	inc  bc                                          ; $442d: $03
	nop                                              ; $442e: $00
	ld   bc, $0300                                   ; $442f: $01 $00 $03
	ld   [bc], a                                     ; $4432: $02
	dec  b                                           ; $4433: $05
	ld   [bc], a                                     ; $4434: $02
	dec  b                                           ; $4435: $05
	ld   bc, $0002                                   ; $4436: $01 $02 $00
	inc  bc                                          ; $4439: $03
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	rrca                                             ; $4440: $0f
	ldh  a, [rPCM34]                                 ; $4441: $f0 $77
	ret  z                                           ; $4443: $c8

	rst  $30                                         ; $4444: $f7
	ret  z                                           ; $4445: $c8

	rst  $28                                         ; $4446: $ef
	db   $10                                         ; $4447: $10
	rrca                                             ; $4448: $0f
	ldh  a, [$cf]                                    ; $4449: $f0 $cf
	jr   nc, jr_025_4480                             ; $444b: $30 $33

	call z, $b778                                    ; $444d: $cc $78 $b7
	ld   a, d                                        ; $4450: $7a
	sbc  l                                           ; $4451: $9d
	cp   l                                           ; $4452: $bd
	ld   b, d                                        ; $4453: $42
	ld   b, b                                        ; $4454: $40
	cp   l                                           ; $4455: $bd
	add  b                                           ; $4456: $80
	ld   h, c                                        ; $4457: $61
	nop                                              ; $4458: $00
	add  b                                           ; $4459: $80
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00

jr_025_445e:
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	ld   [$f0f4], sp                                 ; $4460: $08 $f4 $f0
	db   $ec                                         ; $4463: $ec
	ld   [$f0f4], sp                                 ; $4464: $08 $f4 $f0
	adc  b                                           ; $4467: $88
	ldh  a, [$08]                                    ; $4468: $f0 $08
	ldh  [rAUD1SWEEP], a                             ; $446a: $e0 $10
	nop                                              ; $446c: $00
	ldh  [$60], a                                    ; $446d: $e0 $60
	sub  b                                           ; $446f: $90
	ldh  a, [$28]                                    ; $4470: $f0 $28
	ld   [hl], b                                     ; $4472: $70
	adc  [hl]                                        ; $4473: $8e
	xor  $11                                         ; $4474: $ee $11
	ld   e, h                                        ; $4476: $5c
	and  d                                           ; $4477: $a2
	jr   jr_025_445e                                 ; $4478: $18 $e4

	nop                                              ; $447a: $00
	jr   c, jr_025_447d                              ; $447b: $38 $00

jr_025_447d:
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00

jr_025_4480:
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	nop                                              ; $4489: $00
	nop                                              ; $448a: $00
	inc  bc                                          ; $448b: $03
	inc  bc                                          ; $448c: $03
	inc  b                                           ; $448d: $04
	rlca                                             ; $448e: $07
	ld   [$0807], sp                                 ; $448f: $08 $07 $08
	dec  b                                           ; $4492: $05
	rrca                                             ; $4493: $0f
	dec  b                                           ; $4494: $05
	dec  sp                                          ; $4495: $3b
	dec  h                                           ; $4496: $25

jr_025_4497:
	ld   a, d                                        ; $4497: $7a
	ld   [hl-], a                                    ; $4498: $32
	ld   a, l                                        ; $4499: $7d
	ld   e, c                                        ; $449a: $59
	cp   $6c                                         ; $449b: $fe $6c
	rst  $38                                         ; $449d: $ff
	ld   [hl], $7f                                   ; $449e: $36 $7f
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	nop                                              ; $44a4: $00
	nop                                              ; $44a5: $00
	nop                                              ; $44a6: $00

jr_025_44a7:
	nop                                              ; $44a7: $00
	nop                                              ; $44a8: $00
	nop                                              ; $44a9: $00
	nop                                              ; $44aa: $00
	db   $fc                                         ; $44ab: $fc
	cp   b                                           ; $44ac: $b8
	ld   b, a                                        ; $44ad: $47
	rst  $10                                         ; $44ae: $d7
	jr   z, @+$01                                    ; $44af: $28 $ff

	nop                                              ; $44b1: $00
	ld   a, a                                        ; $44b2: $7f
	xor  [hl]                                        ; $44b3: $ae
	ld   a, a                                        ; $44b4: $7f
	xor  a                                           ; $44b5: $af
	ld   a, a                                        ; $44b6: $7f
	add  e                                           ; $44b7: $83
	rst  $38                                         ; $44b8: $ff

jr_025_44b9:
	nop                                              ; $44b9: $00
	adc  $31                                         ; $44ba: $ce $31
	scf                                              ; $44bc: $37
	ret  z                                           ; $44bd: $c8

	ld   a, d                                        ; $44be: $7a
	or   l                                           ; $44bf: $b5
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	nop                                              ; $44c6: $00
	nop                                              ; $44c7: $00
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	nop                                              ; $44ce: $00
	add  b                                           ; $44cf: $80
	add  b                                           ; $44d0: $80
	ld   b, b                                        ; $44d1: $40
	add  b                                           ; $44d2: $80
	ld   b, b                                        ; $44d3: $40
	ret  nz                                          ; $44d4: $c0

	jr   nz, jr_025_4497                             ; $44d5: $20 $c0

	jr   nz, jr_025_44b9                             ; $44d7: $20 $e0

	ret  nc                                          ; $44d9: $d0

	nop                                              ; $44da: $00

jr_025_44db:
	ldh  [$e0], a                                    ; $44db: $e0 $e0
	ret  nc                                          ; $44dd: $d0

	nop                                              ; $44de: $00
	ldh  [rAUD3LEN], a                               ; $44df: $e0 $1b
	ccf                                              ; $44e1: $3f
	dec  c                                           ; $44e2: $0d
	rra                                              ; $44e3: $1f
	ld   b, $1f                                      ; $44e4: $06 $1f
	dec  bc                                          ; $44e6: $0b
	rla                                              ; $44e7: $17
	nop                                              ; $44e8: $00
	rrca                                             ; $44e9: $0f
	nop                                              ; $44ea: $00
	inc  bc                                          ; $44eb: $03
	nop                                              ; $44ec: $00
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	nop                                              ; $44f0: $00
	nop                                              ; $44f1: $00
	nop                                              ; $44f2: $00
	nop                                              ; $44f3: $00
	nop                                              ; $44f4: $00
	nop                                              ; $44f5: $00
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	nop                                              ; $44f8: $00
	ld   bc, $0100                                   ; $44f9: $01 $00 $01
	nop                                              ; $44fc: $00
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	ld   c, e                                        ; $4500: $4b

jr_025_4501:
	or   h                                           ; $4501: $b4
	scf                                              ; $4502: $37
	ret  z                                           ; $4503: $c8

	or   a                                           ; $4504: $b7
	ret  z                                           ; $4505: $c8

	scf                                              ; $4506: $37
	ret  z                                           ; $4507: $c8

	jr   jr_025_4501                                 ; $4508: $18 $f7

	dec  a                                           ; $450a: $3d
	jp   z, Jump_025_463d                            ; $450b: $ca $3d $46

	jr   jr_025_4577                                 ; $450e: $18 $67

	ld   b, $f9                                      ; $4510: $06 $f9
	jr   c, jr_025_44db                              ; $4512: $38 $c7

	ld   a, h                                        ; $4514: $7c
	or   d                                           ; $4515: $b2
	ld   [hl], b                                     ; $4516: $70
	adc  [hl]                                        ; $4517: $8e
	add  [hl]                                        ; $4518: $86
	ld   a, c                                        ; $4519: $79
	nop                                              ; $451a: $00
	rst  ToBoot                                         ; $451b: $c7
	nop                                              ; $451c: $00
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00
	nop                                              ; $451f: $00
	ret  nz                                          ; $4520: $c0

	and  b                                           ; $4521: $a0
	ret  nz                                          ; $4522: $c0

	and  b                                           ; $4523: $a0
	ret  nz                                          ; $4524: $c0

	jr   nz, jr_025_44a7                             ; $4525: $20 $80

	ld   b, b                                        ; $4527: $40
	add  b                                           ; $4528: $80
	ld   b, b                                        ; $4529: $40
	add  b                                           ; $452a: $80
	ld   b, b                                        ; $452b: $40
	add  b                                           ; $452c: $80
	ld   b, b                                        ; $452d: $40
	add  b                                           ; $452e: $80
	ld   b, b                                        ; $452f: $40
	nop                                              ; $4530: $00
	add  b                                           ; $4531: $80
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	nop                                              ; $4535: $00
	nop                                              ; $4536: $00
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	nop                                              ; $4539: $00
	nop                                              ; $453a: $00
	nop                                              ; $453b: $00
	nop                                              ; $453c: $00
	nop                                              ; $453d: $00
	nop                                              ; $453e: $00
	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	nop                                              ; $4544: $00
	nop                                              ; $4545: $00
	nop                                              ; $4546: $00
	nop                                              ; $4547: $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	inc  bc                                          ; $454d: $03
	inc  bc                                          ; $454e: $03
	inc  b                                           ; $454f: $04
	rlca                                             ; $4550: $07
	ld   [$0807], sp                                 ; $4551: $08 $07 $08
	dec  b                                           ; $4554: $05

jr_025_4555:
	rrca                                             ; $4555: $0f
	dec  b                                           ; $4556: $05
	dec  sp                                          ; $4557: $3b
	dec  h                                           ; $4558: $25
	ld   a, d                                        ; $4559: $7a
	ld   [hl-], a                                    ; $455a: $32
	ld   a, l                                        ; $455b: $7d
	ld   e, c                                        ; $455c: $59
	cp   $6c                                         ; $455d: $fe $6c
	rst  $38                                         ; $455f: $ff
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	nop                                              ; $4564: $00
	nop                                              ; $4565: $00
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	nop                                              ; $4568: $00
	nop                                              ; $4569: $00
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	cp   $dc                                         ; $456d: $fe $dc
	inc  hl                                          ; $456f: $23
	rst  $10                                         ; $4570: $d7
	jr   z, @+$01                                    ; $4571: $28 $ff

	nop                                              ; $4573: $00
	ld   a, a                                        ; $4574: $7f
	xor  [hl]                                        ; $4575: $ae
	ld   a, a                                        ; $4576: $7f

jr_025_4577:
	xor  a                                           ; $4577: $af
	ld   a, a                                        ; $4578: $7f
	add  e                                           ; $4579: $83
	rst  $38                                         ; $457a: $ff
	nop                                              ; $457b: $00
	adc  [hl]                                        ; $457c: $8e
	ld   [hl], c                                     ; $457d: $71
	ld   [hl], a                                     ; $457e: $77
	sbc  b                                           ; $457f: $98
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	nop                                              ; $4585: $00
	nop                                              ; $4586: $00
	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	nop                                              ; $4589: $00
	nop                                              ; $458a: $00
	nop                                              ; $458b: $00
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	add  b                                           ; $458f: $80
	add  b                                           ; $4590: $80
	ld   b, b                                        ; $4591: $40
	ret  nz                                          ; $4592: $c0

	jr   nz, jr_025_4555                             ; $4593: $20 $c0

	jr   nz, jr_025_4577                             ; $4595: $20 $e0

	sub  b                                           ; $4597: $90
	ldh  [$90], a                                    ; $4598: $e0 $90
	ldh  a, [rBCPS]                                  ; $459a: $f0 $68
	nop                                              ; $459c: $00
	ldh  a, [$f0]                                    ; $459d: $f0 $f0
	ld   l, b                                        ; $459f: $68
	ld   [hl], $7f                                   ; $45a0: $36 $7f
	ld   a, [de]                                     ; $45a2: $1a
	ccf                                              ; $45a3: $3f
	dec  c                                           ; $45a4: $0d
	rra                                              ; $45a5: $1f
	ld   b, $1f                                      ; $45a6: $06 $1f
	add  hl, bc                                      ; $45a8: $09
	ld   d, $01                                      ; $45a9: $16 $01
	ld   c, $00                                      ; $45ab: $0e $00
	inc  bc                                          ; $45ad: $03
	nop                                              ; $45ae: $00

jr_025_45af:
	ld   bc, $0100                                   ; $45af: $01 $00 $01
	nop                                              ; $45b2: $00
	ld   bc, $0100                                   ; $45b3: $01 $00 $01
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	cp   d                                           ; $45c0: $ba
	ld   [hl], l                                     ; $45c1: $75
	ld   e, e                                        ; $45c2: $5b
	and  h                                           ; $45c3: $a4
	ld   d, a                                        ; $45c4: $57
	xor  b                                           ; $45c5: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c6: $cf
	jr   nc, @-$69                                   ; $45c7: $30 $95

	ld   l, d                                        ; $45c9: $6a
	sbc  b                                           ; $45ca: $98
	ld   h, a                                        ; $45cb: $67
	jp   hl                                          ; $45cc: $e9


	ld   d, [hl]                                     ; $45cd: $56
	jp   hl                                          ; $45ce: $e9


	ld   [hl], $aa                                   ; $45cf: $36 $aa
	ld   d, l                                        ; $45d1: $55
	ld   e, e                                        ; $45d2: $5b
	and  h                                           ; $45d3: $a4
	add  a                                           ; $45d4: $87
	ld   a, e                                        ; $45d5: $7b
	inc  bc                                          ; $45d6: $03
	sbc  h                                           ; $45d7: $9c
	inc  b                                           ; $45d8: $04
	dec  bc                                          ; $45d9: $0b
	nop                                              ; $45da: $00
	ld   c, $00                                      ; $45db: $0e $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	ldh  a, [$e0]                                    ; $45e1: $f0 $e0
	ld   d, b                                        ; $45e3: $50
	ldh  [$50], a                                    ; $45e4: $e0 $50
	ldh  [rAUD1SWEEP], a                             ; $45e6: $e0 $10
	ret  nz                                          ; $45e8: $c0

	jr   nz, jr_025_462b                             ; $45e9: $20 $40

	and  b                                           ; $45eb: $a0
	ret  nz                                          ; $45ec: $c0

	jr   nz, jr_025_45af                             ; $45ed: $20 $c0

	jr   nz, jr_025_4631                             ; $45ef: $20 $40

	and  b                                           ; $45f1: $a0
	add  b                                           ; $45f2: $80
	ld   h, b                                        ; $45f3: $60
	ret  nz                                          ; $45f4: $c0

	jr   nz, @+$22                                   ; $45f5: $20 $20

	ret  nc                                          ; $45f7: $d0

	ret  nz                                          ; $45f8: $c0

	jr   nc, jr_025_45fb                             ; $45f9: $30 $00

jr_025_45fb:
	ret  nz                                          ; $45fb: $c0

	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	ld   bc, $0201                                   ; $460d: $01 $01 $02
	inc  bc                                          ; $4610: $03
	inc  b                                           ; $4611: $04
	inc  bc                                          ; $4612: $03
	inc  e                                           ; $4613: $1c
	dec  de                                          ; $4614: $1b

jr_025_4615:
	dec  a                                           ; $4615: $3d
	ld   hl, $2d7e                                   ; $4616: $21 $7e $2d
	ld   a, [hl]                                     ; $4619: $7e
	inc  b                                           ; $461a: $04
	ccf                                              ; $461b: $3f
	ld   a, [de]                                     ; $461c: $1a
	ccf                                              ; $461d: $3f
	dec  de                                          ; $461e: $1b
	ccf                                              ; $461f: $3f
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00

jr_025_462b:
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	cp   $dc                                         ; $462d: $fe $dc
	inc  hl                                          ; $462f: $23
	push af                                          ; $4630: $f5

jr_025_4631:
	ld   a, [bc]                                     ; $4631: $0a
	rst  $38                                         ; $4632: $ff
	nop                                              ; $4633: $00
	ld   e, a                                        ; $4634: $5f
	db   $eb                                         ; $4635: $eb
	ld   e, a                                        ; $4636: $5f

jr_025_4637:
	db   $eb                                         ; $4637: $eb
	ld   e, a                                        ; $4638: $5f
	and  b                                           ; $4639: $a0
	cp   a                                           ; $463a: $bf
	ld   b, b                                        ; $463b: $40
	ld   h, e                                        ; $463c: $63

Jump_025_463d:
	sbc  h                                           ; $463d: $9c
	dec  e                                           ; $463e: $1d
	ldh  [c], a                                      ; $463f: $e2
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	add  b                                           ; $464f: $80
	add  b                                           ; $4650: $80
	ld   b, b                                        ; $4651: $40
	ret  nz                                          ; $4652: $c0

	jr   nz, jr_025_4615                             ; $4653: $20 $c0

	jr   nz, jr_025_4637                             ; $4655: $20 $e0

	sub  b                                           ; $4657: $90
	ldh  [$90], a                                    ; $4658: $e0 $90
	ldh  a, [rBCPS]                                  ; $465a: $f0 $68
	add  b                                           ; $465c: $80
	ld   [hl], b                                     ; $465d: $70
	ldh  a, [rBCPS]                                  ; $465e: $f0 $68
	dec  c                                           ; $4660: $0d
	rra                                              ; $4661: $1f
	ld   b, $0f                                      ; $4662: $06 $0f
	inc  bc                                          ; $4664: $03
	rrca                                             ; $4665: $0f
	dec  b                                           ; $4666: $05
	dec  bc                                          ; $4667: $0b
	ld   [bc], a                                     ; $4668: $02
	dec  b                                           ; $4669: $05
	nop                                              ; $466a: $00
	inc  bc                                          ; $466b: $03
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00

jr_025_4671:
	nop                                              ; $4671: $00
	nop                                              ; $4672: $00
	ld   bc, $0201                                   ; $4673: $01 $01 $02
	nop                                              ; $4676: $00
	inc  bc                                          ; $4677: $03
	nop                                              ; $4678: $00
	ld   bc, $0000                                   ; $4679: $01 $00 $00
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	sbc  [hl]                                        ; $4680: $9e
	db   $ed                                         ; $4681: $ed
	jp   nc, Jump_025_6ded                           ; $4682: $d2 $ed $6d

	ldh  a, [c]                                      ; $4685: $f2
	and  [hl]                                        ; $4686: $a6
	ld   sp, hl                                      ; $4687: $f9
	jp   nz, $09fd                                   ; $4688: $c2 $fd $09

	or   $0b                                         ; $468b: $f6 $0b
	db   $f4                                         ; $468d: $f4
	dec  c                                           ; $468e: $0d
	ld   [hl-], a                                    ; $468f: $32
	jr   nz, jr_025_4671                             ; $4690: $20 $df

	db   $fc                                         ; $4692: $fc
	inc  bc                                          ; $4693: $03
	ld   hl, sp+$67                                  ; $4694: $f8 $67
	ld   h, b                                        ; $4696: $60
	sbc  h                                           ; $4697: $9c
	sbc  b                                           ; $4698: $98
	ld   h, h                                        ; $4699: $64
	nop                                              ; $469a: $00
	sbc  h                                           ; $469b: $9c
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	add  b                                           ; $46a0: $80
	ld   [hl], b                                     ; $46a1: $70
	ldh  [$50], a                                    ; $46a2: $e0 $50
	ldh  [$50], a                                    ; $46a4: $e0 $50
	ldh  [rAUD1SWEEP], a                             ; $46a6: $e0 $10
	ret  nz                                          ; $46a8: $c0

	jr   nz, jr_025_46ab                             ; $46a9: $20 $00

jr_025_46ab:
	ldh  [$c0], a                                    ; $46ab: $e0 $c0
	ld   h, b                                        ; $46ad: $60
	ret  nz                                          ; $46ae: $c0

	jr   nz, jr_025_46b1                             ; $46af: $20 $00

jr_025_46b1:
	ldh  [rAUD4LEN], a                               ; $46b1: $e0 $20
	ret  nc                                          ; $46b3: $d0

	ldh  [rAUD1SWEEP], a                             ; $46b4: $e0 $10
	nop                                              ; $46b6: $00
	ldh  [rP1], a                                    ; $46b7: $e0 $00
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	nop                                              ; $46c2: $00
	nop                                              ; $46c3: $00
	nop                                              ; $46c4: $00
	nop                                              ; $46c5: $00
	nop                                              ; $46c6: $00
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	nop                                              ; $46cb: $00
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	nop                                              ; $46ce: $00
	inc  bc                                          ; $46cf: $03
	inc  bc                                          ; $46d0: $03
	inc  b                                           ; $46d1: $04
	rlca                                             ; $46d2: $07
	jr   z, jr_025_46fc                              ; $46d3: $28 $27

jr_025_46d5:
	ld   a, b                                        ; $46d5: $78
	scf                                              ; $46d6: $37

jr_025_46d7:
	ld   a, b                                        ; $46d7: $78
	rla                                              ; $46d8: $17
	ld   a, b                                        ; $46d9: $78
	ld   b, a                                        ; $46da: $47
	ld   hl, sp+$66                                  ; $46db: $f8 $66
	ld   sp, hl                                      ; $46dd: $f9
	ld   [hl], $79                                   ; $46de: $36 $79
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	nop                                              ; $46e6: $00
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	nop                                              ; $46ea: $00
	rra                                              ; $46eb: $1f
	dec  e                                           ; $46ec: $1d
	ldh  [c], a                                      ; $46ed: $e2
	rst  $38                                         ; $46ee: $ff
	inc  e                                           ; $46ef: $1c
	rst  $38                                         ; $46f0: $ff
	ld   a, b                                        ; $46f1: $78
	rst  $38                                         ; $46f2: $ff
	ld   [$e81f], sp                                 ; $46f3: $08 $1f $e8
	cpl                                              ; $46f6: $2f
	ldh  a, [$6c]                                    ; $46f7: $f0 $6c
	di                                               ; $46f9: $f3
	inc  sp                                          ; $46fa: $33
	db   $fd                                         ; $46fb: $fd

jr_025_46fc:
	ld   d, e                                        ; $46fc: $53
	db   $fd                                         ; $46fd: $fd
	ld   l, c                                        ; $46fe: $69
	cp   $00                                         ; $46ff: $fe $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	nop                                              ; $4706: $00
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	nop                                              ; $470b: $00
	nop                                              ; $470c: $00
	add  b                                           ; $470d: $80
	add  b                                           ; $470e: $80
	ld   b, b                                        ; $470f: $40
	add  b                                           ; $4710: $80
	ld   b, b                                        ; $4711: $40
	ret  nz                                          ; $4712: $c0

	jr   nz, jr_025_46d5                             ; $4713: $20 $c0

	jr   nz, jr_025_46d7                             ; $4715: $20 $c0

	jr   nz, @+$42                                   ; $4717: $20 $40

	and  b                                           ; $4719: $a0
	add  b                                           ; $471a: $80
	ld   h, b                                        ; $471b: $60
	ret  nz                                          ; $471c: $c0

	and  b                                           ; $471d: $a0
	ret  nz                                          ; $471e: $c0

	jr   nz, @+$19                                   ; $471f: $20 $17

	jr   c, @+$0d                                    ; $4721: $38 $0b

	inc  e                                           ; $4723: $1c
	nop                                              ; $4724: $00
	rrca                                             ; $4725: $0f
	nop                                              ; $4726: $00
	rlca                                             ; $4727: $07
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	ld   bc, $0100                                   ; $472d: $01 $00 $01
	nop                                              ; $4730: $00
	ld   bc, $0100                                   ; $4731: $01 $00 $01
	nop                                              ; $4734: $00
	inc  bc                                          ; $4735: $03
	ld   bc, $0002                                   ; $4736: $01 $02 $00
	ld   bc, $0000                                   ; $4739: $01 $00 $00
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	ld   l, d                                        ; $4740: $6a
	db   $fd                                         ; $4741: $fd
	or   h                                           ; $4742: $b4
	ld   a, a                                        ; $4743: $7f
	ld   de, $4bfe                                   ; $4744: $11 $fe $4b
	cp   h                                           ; $4747: $bc
	ld   b, b                                        ; $4748: $40
	cp   a                                           ; $4749: $bf
	inc  bc                                          ; $474a: $03
	db   $fc                                         ; $474b: $fc
	ret                                              ; $474c: $c9


	ld   [hl], $26                                   ; $474d: $36 $26
	reti                                             ; $474f: $d9


jr_025_4750:
	pop  hl                                          ; $4750: $e1
	ld   e, $f7                                      ; $4751: $1e $f7
	ld   c, b                                        ; $4753: $48
	rst  $20                                         ; $4754: $e7
	ld   a, [de]                                     ; $4755: $1a
	ld   d, a                                        ; $4756: $57
	xor  b                                           ; $4757: $a8
	ld   c, $d1                                      ; $4758: $0e $d1
	nop                                              ; $475a: $00
	ld   c, $00                                      ; $475b: $0e $00
	nop                                              ; $475d: $00
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	ret  nz                                          ; $4761: $c0

	ret  nz                                          ; $4762: $c0

	jr   nz, jr_025_4785                             ; $4763: $20 $20

	ret  nc                                          ; $4765: $d0

	ld   [hl], b                                     ; $4766: $70
	xor  b                                           ; $4767: $a8
	jr   c, jr_025_47be                              ; $4768: $38 $54

	jr   jr_025_4750                                 ; $476a: $18 $e4

	nop                                              ; $476c: $00
	sbc  b                                           ; $476d: $98
	nop                                              ; $476e: $00
	add  b                                           ; $476f: $80
	nop                                              ; $4770: $00
	add  b                                           ; $4771: $80
	add  b                                           ; $4772: $80
	ld   b, b                                        ; $4773: $40
	add  b                                           ; $4774: $80
	ld   h, b                                        ; $4775: $60
	ld   b, b                                        ; $4776: $40
	and  b                                           ; $4777: $a0
	nop                                              ; $4778: $00
	ret  nz                                          ; $4779: $c0

	nop                                              ; $477a: $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00

jr_025_4785:
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	ld   bc, $0201                                   ; $478f: $01 $01 $02
	inc  bc                                          ; $4792: $03
	inc  b                                           ; $4793: $04
	inc  bc                                          ; $4794: $03

jr_025_4795:
	inc  h                                           ; $4795: $24
	daa                                              ; $4796: $27

jr_025_4797:
	ld   a, b                                        ; $4797: $78
	scf                                              ; $4798: $37

jr_025_4799:
	ld   a, b                                        ; $4799: $78
	scf                                              ; $479a: $37
	ld   a, b                                        ; $479b: $78
	ld   d, a                                        ; $479c: $57
	ld   hl, sp+$67                                  ; $479d: $f8 $67
	ld   hl, sp+$00                                  ; $479f: $f8 $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	nop                                              ; $47a4: $00
	nop                                              ; $47a5: $00
	nop                                              ; $47a6: $00
	nop                                              ; $47a7: $00
	nop                                              ; $47a8: $00
	nop                                              ; $47a9: $00
	nop                                              ; $47aa: $00
	rra                                              ; $47ab: $1f
	rra                                              ; $47ac: $1f
	ld   h, b                                        ; $47ad: $60
	ld   a, a                                        ; $47ae: $7f
	add  b                                           ; $47af: $80
	rst  $38                                         ; $47b0: $ff
	inc  e                                           ; $47b1: $1c
	rst  $38                                         ; $47b2: $ff
	ld   a, b                                        ; $47b3: $78
	rst  $38                                         ; $47b4: $ff
	ld   [$689f], sp                                 ; $47b5: $08 $9f $68
	adc  a                                           ; $47b8: $8f
	ld   [hl], b                                     ; $47b9: $70
	ld   l, h                                        ; $47ba: $6c
	di                                               ; $47bb: $f3
	inc  sp                                          ; $47bc: $33
	db   $fd                                         ; $47bd: $fd

jr_025_47be:
	inc  de                                          ; $47be: $13
	db   $fd                                         ; $47bf: $fd
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	nop                                              ; $47c2: $00
	nop                                              ; $47c3: $00
	nop                                              ; $47c4: $00
	nop                                              ; $47c5: $00
	nop                                              ; $47c6: $00
	nop                                              ; $47c7: $00
	nop                                              ; $47c8: $00
	nop                                              ; $47c9: $00
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	add  b                                           ; $47cd: $80
	add  b                                           ; $47ce: $80
	ld   b, b                                        ; $47cf: $40
	add  b                                           ; $47d0: $80
	ld   b, b                                        ; $47d1: $40
	ret  nz                                          ; $47d2: $c0

	jr   nz, jr_025_4795                             ; $47d3: $20 $c0

	jr   nz, jr_025_4797                             ; $47d5: $20 $c0

	jr   nz, jr_025_4799                             ; $47d7: $20 $c0

	jr   nz, jr_025_481b                             ; $47d9: $20 $40

	and  b                                           ; $47db: $a0
	add  b                                           ; $47dc: $80
	ld   h, b                                        ; $47dd: $60
	ret  nz                                          ; $47de: $c0

	and  b                                           ; $47df: $a0
	scf                                              ; $47e0: $37
	ld   a, b                                        ; $47e1: $78
	rla                                              ; $47e2: $17
	jr   c, @+$0d                                    ; $47e3: $38 $0b

	inc  e                                           ; $47e5: $1c
	nop                                              ; $47e6: $00
	rrca                                             ; $47e7: $0f
	nop                                              ; $47e8: $00
	inc  bc                                          ; $47e9: $03
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	nop                                              ; $47ee: $00
	ld   bc, $0201                                   ; $47ef: $01 $01 $02
	ld   bc, $060e                                   ; $47f2: $01 $0e $06
	add  hl, bc                                      ; $47f5: $09
	ld   bc, $0006                                   ; $47f6: $01 $06 $00
	inc  bc                                          ; $47f9: $03
	nop                                              ; $47fa: $00
	ld   bc, $0000                                   ; $47fb: $01 $00 $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	dec  hl                                          ; $4800: $2b
	db   $fc                                         ; $4801: $fc
	ld   l, b                                        ; $4802: $68
	rst  $38                                         ; $4803: $ff
	or   l                                           ; $4804: $b5
	ld   a, [hl]                                     ; $4805: $7e
	db   $10                                         ; $4806: $10
	rst  $38                                         ; $4807: $ff
	ld   c, c                                        ; $4808: $49
	cp   [hl]                                        ; $4809: $be
	ld   b, b                                        ; $480a: $40
	cp   a                                           ; $480b: $bf
	ld   [bc], a                                     ; $480c: $02
	db   $fd                                         ; $480d: $fd
	ld   c, c                                        ; $480e: $49
	or   [hl]                                        ; $480f: $b6
	ld   h, $d9                                      ; $4810: $26 $d9
	pop  bc                                          ; $4812: $c1
	ld   a, $e1                                      ; $4813: $3e $e1
	ld   d, d                                        ; $4815: $52
	ret  nz                                          ; $4816: $c0

	ld   hl, $4080                                   ; $4817: $21 $80 $40
	nop                                              ; $481a: $00

jr_025_481b:
	add  b                                           ; $481b: $80
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	add  b                                           ; $4820: $80
	ld   b, b                                        ; $4821: $40
	nop                                              ; $4822: $00
	ret  nz                                          ; $4823: $c0

	add  b                                           ; $4824: $80
	ld   b, b                                        ; $4825: $40
	nop                                              ; $4826: $00
	ret  nz                                          ; $4827: $c0

	ret  nz                                          ; $4828: $c0

	and  b                                           ; $4829: $a0
	ldh  [$50], a                                    ; $482a: $e0 $50
	ld   [hl], b                                     ; $482c: $70
	adc  b                                           ; $482d: $88
	nop                                              ; $482e: $00
	ldh  a, [rLCDC]                                  ; $482f: $f0 $40
	cp   b                                           ; $4831: $b8
	ret  z                                           ; $4832: $c8

	ld   [hl], h                                     ; $4833: $74
	ldh  a, [$08]                                    ; $4834: $f0 $08
	and  b                                           ; $4836: $a0
	ld   e, b                                        ; $4837: $58
	nop                                              ; $4838: $00
	ldh  [rP1], a                                    ; $4839: $e0 $00
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	inc  bc                                          ; $484f: $03
	inc  bc                                          ; $4850: $03
	ld   h, h                                        ; $4851: $64
	daa                                              ; $4852: $27

jr_025_4853:
	ld   a, b                                        ; $4853: $78
	scf                                              ; $4854: $37
	ld   a, b                                        ; $4855: $78
	ld   [hl], $79                                   ; $4856: $36 $79
	ld   d, $f9                                      ; $4858: $16 $f9
	ld   b, a                                        ; $485a: $47
	ld   hl, sp+$64                                  ; $485b: $f8 $64
	ei                                               ; $485d: $fb
	inc  [hl]                                        ; $485e: $34
	ld   a, e                                        ; $485f: $7b
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	ld   a, a                                        ; $486d: $7f
	ld   a, a                                        ; $486e: $7f
	add  b                                           ; $486f: $80
	rst  $38                                         ; $4870: $ff
	inc  e                                           ; $4871: $1c
	rst  $38                                         ; $4872: $ff
	ld   a, b                                        ; $4873: $78
	rst  $38                                         ; $4874: $ff

jr_025_4875:
	ld   [$c83f], sp                                 ; $4875: $08 $3f $c8
	ld   e, a                                        ; $4878: $5f

jr_025_4879:
	ldh  [$5c], a                                    ; $4879: $e0 $5c
	db   $e3                                         ; $487b: $e3
	ld   l, e                                        ; $487c: $6b
	push af                                          ; $487d: $f5
	or   e                                           ; $487e: $b3
	db   $fd                                         ; $487f: $fd
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00
	nop                                              ; $4886: $00
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	nop                                              ; $4889: $00
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	add  b                                           ; $488d: $80
	nop                                              ; $488e: $00
	ret  nz                                          ; $488f: $c0

	ret  nz                                          ; $4890: $c0

	jr   nz, jr_025_4853                             ; $4891: $20 $c0

	jr   nz, jr_025_4875                             ; $4893: $20 $e0

	db   $10                                         ; $4895: $10
	ret  nz                                          ; $4896: $c0

	jr   nc, jr_025_4879                             ; $4897: $30 $e0

	db   $10                                         ; $4899: $10
	ld   h, b                                        ; $489a: $60
	sub  b                                           ; $489b: $90
	and  b                                           ; $489c: $a0
	ld   d, b                                        ; $489d: $50
	ret  nz                                          ; $489e: $c0

	or   b                                           ; $489f: $b0
	ld   d, $39                                      ; $48a0: $16 $39
	rlca                                             ; $48a2: $07
	jr   jr_025_48a8                                 ; $48a3: $18 $03

	inc  c                                           ; $48a5: $0c
	nop                                              ; $48a6: $00
	rlca                                             ; $48a7: $07

jr_025_48a8:
	nop                                              ; $48a8: $00
	inc  bc                                          ; $48a9: $03
	ld   bc, $0002                                   ; $48aa: $01 $02 $00
	ld   bc, $0000                                   ; $48ad: $01 $00 $00
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	nop                                              ; $48b2: $00
	nop                                              ; $48b3: $00
	nop                                              ; $48b4: $00
	nop                                              ; $48b5: $00
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	nop                                              ; $48b8: $00
	nop                                              ; $48b9: $00
	nop                                              ; $48ba: $00
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	set  7, h                                        ; $48c0: $cb $fc
	ld   l, b                                        ; $48c2: $68
	rst  $38                                         ; $48c3: $ff
	or   h                                           ; $48c4: $b4
	ld   a, a                                        ; $48c5: $7f
	ld   de, $53fe                                   ; $48c6: $11 $fe $53
	cp   h                                           ; $48c9: $bc
	ld   b, b                                        ; $48ca: $40
	cp   a                                           ; $48cb: $bf
	inc  bc                                          ; $48cc: $03
	db   $fc                                         ; $48cd: $fc
	ld   c, c                                        ; $48ce: $49
	or   [hl]                                        ; $48cf: $b6
	ld   h, [hl]                                     ; $48d0: $66
	sbc  c                                           ; $48d1: $99
	add  hl, de                                      ; $48d2: $19
	ld   h, [hl]                                     ; $48d3: $66
	ld   e, $21                                      ; $48d4: $1e $21
	ld   b, $3b                                      ; $48d6: $06 $3b
	jr   c, jr_025_4920                              ; $48d8: $38 $46

	jr   jr_025_4902                                 ; $48da: $18 $26

	nop                                              ; $48dc: $00
	inc  e                                           ; $48dd: $1c
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	ret  nz                                          ; $48e0: $c0

	jr   nc, jr_025_48e3                             ; $48e1: $30 $00

jr_025_48e3:
	ret  nz                                          ; $48e3: $c0

	ret  nz                                          ; $48e4: $c0

	inc  a                                           ; $48e5: $3c
	inc  a                                           ; $48e6: $3c
	jp   nz, $da3c                                   ; $48e7: $c2 $3c $da

	nop                                              ; $48ea: $00
	inc  a                                           ; $48eb: $3c
	nop                                              ; $48ec: $00
	add  b                                           ; $48ed: $80
	nop                                              ; $48ee: $00
	add  b                                           ; $48ef: $80
	nop                                              ; $48f0: $00
	add  b                                           ; $48f1: $80
	nop                                              ; $48f2: $00
	add  b                                           ; $48f3: $80
	nop                                              ; $48f4: $00
	nop                                              ; $48f5: $00
	nop                                              ; $48f6: $00
	nop                                              ; $48f7: $00
	nop                                              ; $48f8: $00
	nop                                              ; $48f9: $00
	nop                                              ; $48fa: $00
	nop                                              ; $48fb: $00
	nop                                              ; $48fc: $00
	nop                                              ; $48fd: $00
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	nop                                              ; $4900: $00
	nop                                              ; $4901: $00

jr_025_4902:
	nop                                              ; $4902: $00
	nop                                              ; $4903: $00
	nop                                              ; $4904: $00
	nop                                              ; $4905: $00
	nop                                              ; $4906: $00
	nop                                              ; $4907: $00
	nop                                              ; $4908: $00
	nop                                              ; $4909: $00
	nop                                              ; $490a: $00
	nop                                              ; $490b: $00
	nop                                              ; $490c: $00
	nop                                              ; $490d: $00
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	nop                                              ; $4910: $00
	ld   bc, $0100                                   ; $4911: $01 $00 $01
	nop                                              ; $4914: $00
	ld   bc, $0201                                   ; $4915: $01 $01 $02
	ld   bc, $090e                                   ; $4918: $01 $0e $09
	ld   e, $0d                                      ; $491b: $1e $0d
	ld   e, $02                                      ; $491d: $1e $02
	rra                                              ; $491f: $1f

jr_025_4920:
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	nop                                              ; $4925: $00
	nop                                              ; $4926: $00
	nop                                              ; $4927: $00
	nop                                              ; $4928: $00
	nop                                              ; $4929: $00
	nop                                              ; $492a: $00
	nop                                              ; $492b: $00
	nop                                              ; $492c: $00
	ld   a, [hl]                                     ; $492d: $7e
	ld   h, [hl]                                     ; $492e: $66
	sbc  c                                           ; $492f: $99
	db   $db                                         ; $4930: $db
	inc  h                                           ; $4931: $24
	rst  $38                                         ; $4932: $ff
	jr   @+$01                                       ; $4933: $18 $ff

	nop                                              ; $4935: $00
	cp   l                                           ; $4936: $bd
	ld   b, d                                        ; $4937: $42
	ld   a, [hl]                                     ; $4938: $7e
	sbc  c                                           ; $4939: $99
	ld   a, [hl]                                     ; $493a: $7e
	and  l                                           ; $493b: $a5
	ld   a, [hl]                                     ; $493c: $7e
	cp   c                                           ; $493d: $b9
	ld   a, [hl]                                     ; $493e: $7e
	or   c                                           ; $493f: $b1
	nop                                              ; $4940: $00
	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	nop                                              ; $4943: $00
	nop                                              ; $4944: $00
	nop                                              ; $4945: $00
	nop                                              ; $4946: $00
	nop                                              ; $4947: $00
	nop                                              ; $4948: $00
	nop                                              ; $4949: $00
	nop                                              ; $494a: $00
	nop                                              ; $494b: $00
	nop                                              ; $494c: $00
	nop                                              ; $494d: $00
	nop                                              ; $494e: $00
	nop                                              ; $494f: $00
	nop                                              ; $4950: $00
	add  b                                           ; $4951: $80
	nop                                              ; $4952: $00
	add  b                                           ; $4953: $80
	nop                                              ; $4954: $00
	add  b                                           ; $4955: $80
	add  b                                           ; $4956: $80
	ld   b, b                                        ; $4957: $40
	add  b                                           ; $4958: $80
	ld   [hl], b                                     ; $4959: $70
	sub  b                                           ; $495a: $90
	ld   a, b                                        ; $495b: $78
	or   b                                           ; $495c: $b0
	ld   a, b                                        ; $495d: $78
	ld   b, b                                        ; $495e: $40
	ld   hl, sp+$0a                                  ; $495f: $f8 $0a
	ccf                                              ; $4961: $3f
	dec  l                                           ; $4962: $2d
	ld   e, a                                        ; $4963: $5f
	ld   [hl-], a                                    ; $4964: $32
	ld   c, a                                        ; $4965: $4f
	add  hl, de                                      ; $4966: $19
	daa                                              ; $4967: $27
	nop                                              ; $4968: $00
	dec  e                                           ; $4969: $1d
	nop                                              ; $496a: $00
	dec  c                                           ; $496b: $0d
	nop                                              ; $496c: $00
	ld   bc, $0300                                   ; $496d: $01 $00 $03
	ld   bc, $0102                                   ; $4970: $01 $02 $01
	ld   [bc], a                                     ; $4973: $02
	nop                                              ; $4974: $00
	inc  bc                                          ; $4975: $03
	ld   bc, $0102                                   ; $4976: $01 $02 $01
	ld   [bc], a                                     ; $4979: $02
	nop                                              ; $497a: $00
	inc  bc                                          ; $497b: $03
	nop                                              ; $497c: $00
	ld   bc, $0000                                   ; $497d: $01 $00 $00
	ld   a, [hl]                                     ; $4980: $7e
	or   c                                           ; $4981: $b1
	ld   a, [hl]                                     ; $4982: $7e
	or   c                                           ; $4983: $b1
	ld   a, [hl]                                     ; $4984: $7e
	sub  c                                           ; $4985: $91
	ld   a, [hl]                                     ; $4986: $7e
	add  c                                           ; $4987: $81
	ld   a, [hl]                                     ; $4988: $7e
	add  c                                           ; $4989: $81
	ld   a, [hl]                                     ; $498a: $7e
	add  c                                           ; $498b: $81
	inc  a                                           ; $498c: $3c
	jp   $e718                                       ; $498d: $c3 $18 $e7


	add  c                                           ; $4990: $81
	ld   a, [hl]                                     ; $4991: $7e
	jp   $813c                                       ; $4992: $c3 $3c $81


	ld   h, [hl]                                     ; $4995: $66
	jp   Jump_025_4224                               ; $4996: $c3 $24 $42


	and  l                                           ; $4999: $a5
	add  c                                           ; $499a: $81
	ld   h, [hl]                                     ; $499b: $66
	nop                                              ; $499c: $00
	jp   $0000                                      ; $499d: $c3 $00 $00


	ld   d, b                                        ; $49a0: $50
	db   $fc                                         ; $49a1: $fc
	or   h                                           ; $49a2: $b4
	ld   a, [$f24c]                                  ; $49a3: $fa $4c $f2
	sbc  b                                           ; $49a6: $98
	db   $e4                                         ; $49a7: $e4
	nop                                              ; $49a8: $00
	cp   b                                           ; $49a9: $b8
	nop                                              ; $49aa: $00
	or   b                                           ; $49ab: $b0
	nop                                              ; $49ac: $00
	add  b                                           ; $49ad: $80
	nop                                              ; $49ae: $00
	ret  nz                                          ; $49af: $c0

	add  b                                           ; $49b0: $80
	ld   b, b                                        ; $49b1: $40
	add  b                                           ; $49b2: $80
	ld   b, b                                        ; $49b3: $40
	nop                                              ; $49b4: $00
	ret  nz                                          ; $49b5: $c0

	add  b                                           ; $49b6: $80
	ld   b, b                                        ; $49b7: $40
	add  b                                           ; $49b8: $80
	ld   b, b                                        ; $49b9: $40
	nop                                              ; $49ba: $00
	ret  nz                                          ; $49bb: $c0

	nop                                              ; $49bc: $00
	add  b                                           ; $49bd: $80
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	nop                                              ; $49c5: $00
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	nop                                              ; $49ca: $00
	nop                                              ; $49cb: $00
	nop                                              ; $49cc: $00
	ld   bc, $0201                                   ; $49cd: $01 $01 $02
	ld   bc, $0102                                   ; $49d0: $01 $02 $01
	ld   [bc], a                                     ; $49d3: $02
	ld   bc, $0102                                   ; $49d4: $01 $02 $01
	ld   b, $01                                      ; $49d7: $06 $01
	ld   c, $06                                      ; $49d9: $0e $06
	rrca                                             ; $49db: $0f
	ld   [bc], a                                     ; $49dc: $02
	rrca                                             ; $49dd: $0f
	add  hl, bc                                      ; $49de: $09
	rra                                              ; $49df: $1f
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	nop                                              ; $49e6: $00
	nop                                              ; $49e7: $00
	nop                                              ; $49e8: $00
	nop                                              ; $49e9: $00
	nop                                              ; $49ea: $00
	db   $fc                                         ; $49eb: $fc
	call z, $b632                                    ; $49ec: $cc $32 $b6
	ld   c, c                                        ; $49ef: $49
	rst  $38                                         ; $49f0: $ff
	jr   @+$01                                       ; $49f1: $18 $ff

	nop                                              ; $49f3: $00
	sbc  $21                                         ; $49f4: $de $21
	cp   a                                           ; $49f6: $bf
	ld   c, h                                        ; $49f7: $4c
	cp   a                                           ; $49f8: $bf
	ld   d, d                                        ; $49f9: $52
	cp   a                                           ; $49fa: $bf
	ld   e, h                                        ; $49fb: $5c
	cp   a                                           ; $49fc: $bf
	ld   e, b                                        ; $49fd: $58
	ccf                                              ; $49fe: $3f
	ret  c                                           ; $49ff: $d8

	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	nop                                              ; $4a0b: $00
	nop                                              ; $4a0c: $00
	nop                                              ; $4a0d: $00
	nop                                              ; $4a0e: $00
	nop                                              ; $4a0f: $00
	nop                                              ; $4a10: $00
	add  b                                           ; $4a11: $80
	nop                                              ; $4a12: $00
	add  b                                           ; $4a13: $80
	add  b                                           ; $4a14: $80
	ld   b, b                                        ; $4a15: $40
	add  b                                           ; $4a16: $80
	ld   [hl], b                                     ; $4a17: $70
	sub  b                                           ; $4a18: $90
	ld   a, b                                        ; $4a19: $78
	or   b                                           ; $4a1a: $b0
	ld   a, b                                        ; $4a1b: $78
	ld   b, b                                        ; $4a1c: $40
	ld   hl, sp+$50                                  ; $4a1d: $f8 $50
	db   $fc                                         ; $4a1f: $fc
	dec  c                                           ; $4a20: $0d
	ccf                                              ; $4a21: $3f
	ld   [hl-], a                                    ; $4a22: $32
	ld   c, a                                        ; $4a23: $4f
	add  hl, sp                                      ; $4a24: $39
	ld   b, a                                        ; $4a25: $47
	jr   c, jr_025_4a75                              ; $4a26: $38 $4d

	jr   nc, jr_025_4a87                             ; $4a28: $30 $5d

	ld   [$0035], sp                                 ; $4a2a: $08 $35 $00
	rra                                              ; $4a2d: $1f
	ld   bc, $0002                                   ; $4a2e: $01 $02 $00
	inc  bc                                          ; $4a31: $03
	ld   bc, $0002                                   ; $4a32: $01 $02 $00
	ld   bc, $0000                                   ; $4a35: $01 $00 $00
	nop                                              ; $4a38: $00
	nop                                              ; $4a39: $00
	nop                                              ; $4a3a: $00
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	nop                                              ; $4a3d: $00
	nop                                              ; $4a3e: $00
	nop                                              ; $4a3f: $00
	ccf                                              ; $4a40: $3f
	ret  c                                           ; $4a41: $d8

	ccf                                              ; $4a42: $3f
	ret  z                                           ; $4a43: $c8

	ccf                                              ; $4a44: $3f
	ret  nz                                          ; $4a45: $c0

	cp   a                                           ; $4a46: $bf
	ret  nz                                          ; $4a47: $c0

	ccf                                              ; $4a48: $3f
	ret  nz                                          ; $4a49: $c0

	ld   e, $e1                                      ; $4a4a: $1e $e1
	inc  c                                           ; $4a4c: $0c
	di                                               ; $4a4d: $f3
	ld   b, c                                        ; $4a4e: $41
	ld   a, $83                                      ; $4a4f: $3e $83
	ld   a, h                                        ; $4a51: $7c
	pop  bc                                          ; $4a52: $c1
	ld   [hl], $03                                   ; $4a53: $36 $03
	push hl                                          ; $4a55: $e5
	inc  bc                                          ; $4a56: $03
	inc  b                                           ; $4a57: $04
	nop                                              ; $4a58: $00
	rlca                                             ; $4a59: $07
	nop                                              ; $4a5a: $00
	inc  bc                                          ; $4a5b: $03
	nop                                              ; $4a5c: $00
	nop                                              ; $4a5d: $00
	nop                                              ; $4a5e: $00
	nop                                              ; $4a5f: $00
	or   b                                           ; $4a60: $b0
	db   $fc                                         ; $4a61: $fc
	ld   c, b                                        ; $4a62: $48
	db   $f4                                         ; $4a63: $f4
	sbc  b                                           ; $4a64: $98
	db   $e4                                         ; $4a65: $e4
	nop                                              ; $4a66: $00
	cp   b                                           ; $4a67: $b8
	nop                                              ; $4a68: $00
	add  b                                           ; $4a69: $80
	nop                                              ; $4a6a: $00
	add  b                                           ; $4a6b: $80
	add  b                                           ; $4a6c: $80
	ld   b, b                                        ; $4a6d: $40
	nop                                              ; $4a6e: $00
	ret  nz                                          ; $4a6f: $c0

	add  b                                           ; $4a70: $80
	ld   b, b                                        ; $4a71: $40
	nop                                              ; $4a72: $00
	ret  nz                                          ; $4a73: $c0

	add  b                                           ; $4a74: $80

jr_025_4a75:
	ld   b, b                                        ; $4a75: $40
	add  b                                           ; $4a76: $80
	ld   b, b                                        ; $4a77: $40
	nop                                              ; $4a78: $00
	add  b                                           ; $4a79: $80
	nop                                              ; $4a7a: $00
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	nop                                              ; $4a7d: $00
	nop                                              ; $4a7e: $00
	nop                                              ; $4a7f: $00
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	nop                                              ; $4a85: $00
	nop                                              ; $4a86: $00

jr_025_4a87:
	nop                                              ; $4a87: $00
	nop                                              ; $4a88: $00
	nop                                              ; $4a89: $00
	nop                                              ; $4a8a: $00
	nop                                              ; $4a8b: $00
	nop                                              ; $4a8c: $00
	nop                                              ; $4a8d: $00
	nop                                              ; $4a8e: $00
	nop                                              ; $4a8f: $00
	nop                                              ; $4a90: $00
	ld   bc, $0100                                   ; $4a91: $01 $00 $01
	ld   bc, $0102                                   ; $4a94: $01 $02 $01
	ld   c, $09                                      ; $4a97: $0e $09
	ld   e, $0d                                      ; $4a99: $1e $0d
	ld   e, $02                                      ; $4a9b: $1e $02
	rra                                              ; $4a9d: $1f
	ld   a, [bc]                                     ; $4a9e: $0a
	ccf                                              ; $4a9f: $3f
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00
	nop                                              ; $4aa4: $00
	nop                                              ; $4aa5: $00
	nop                                              ; $4aa6: $00
	nop                                              ; $4aa7: $00
	nop                                              ; $4aa8: $00
	nop                                              ; $4aa9: $00
	nop                                              ; $4aaa: $00
	ccf                                              ; $4aab: $3f
	inc  sp                                          ; $4aac: $33
	ld   c, h                                        ; $4aad: $4c
	ld   l, l                                        ; $4aae: $6d
	sub  d                                           ; $4aaf: $92
	rst  $38                                         ; $4ab0: $ff
	jr   @+$01                                       ; $4ab1: $18 $ff

	nop                                              ; $4ab3: $00
	ld   a, e                                        ; $4ab4: $7b
	add  h                                           ; $4ab5: $84
	db   $fd                                         ; $4ab6: $fd
	ld   [hl-], a                                    ; $4ab7: $32
	db   $fd                                         ; $4ab8: $fd
	ld   c, d                                        ; $4ab9: $4a
	db   $fd                                         ; $4aba: $fd
	ld   [hl], d                                     ; $4abb: $72
	db   $fd                                         ; $4abc: $fd
	ld   h, d                                        ; $4abd: $62
	db   $fc                                         ; $4abe: $fc
	ld   h, e                                        ; $4abf: $63
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	nop                                              ; $4ac9: $00
	nop                                              ; $4aca: $00
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	add  b                                           ; $4acd: $80
	add  b                                           ; $4ace: $80
	ld   b, b                                        ; $4acf: $40
	add  b                                           ; $4ad0: $80
	ld   b, b                                        ; $4ad1: $40
	add  b                                           ; $4ad2: $80
	ld   b, b                                        ; $4ad3: $40
	add  b                                           ; $4ad4: $80
	ld   b, b                                        ; $4ad5: $40
	add  b                                           ; $4ad6: $80
	ld   h, b                                        ; $4ad7: $60
	add  b                                           ; $4ad8: $80
	ld   [hl], b                                     ; $4ad9: $70
	ld   h, b                                        ; $4ada: $60
	ldh  a, [rLCDC]                                  ; $4adb: $f0 $40

jr_025_4add:
	ldh  a, [$90]                                    ; $4add: $f0 $90
	ld   hl, sp+$0d                                  ; $4adf: $f8 $0d
	ccf                                              ; $4ae1: $3f
	ld   [de], a                                     ; $4ae2: $12
	cpl                                              ; $4ae3: $2f
	add  hl, de                                      ; $4ae4: $19
	daa                                              ; $4ae5: $27
	nop                                              ; $4ae6: $00
	dec  e                                           ; $4ae7: $1d
	nop                                              ; $4ae8: $00
	ld   bc, $0100                                   ; $4ae9: $01 $00 $01
	ld   bc, $0002                                   ; $4aec: $01 $02 $00
	inc  bc                                          ; $4aef: $03
	ld   bc, $0002                                   ; $4af0: $01 $02 $00
	inc  bc                                          ; $4af3: $03
	ld   bc, $0102                                   ; $4af4: $01 $02 $01
	ld   [bc], a                                     ; $4af7: $02
	nop                                              ; $4af8: $00
	ld   bc, $0000                                   ; $4af9: $01 $00 $00
	nop                                              ; $4afc: $00
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00

Call_025_4aff:
	nop                                              ; $4aff: $00
	db   $fc                                         ; $4b00: $fc
	ld   h, e                                        ; $4b01: $63
	db   $fc                                         ; $4b02: $fc
	inc  hl                                          ; $4b03: $23
	db   $fc                                         ; $4b04: $fc
	inc  bc                                          ; $4b05: $03
	db   $fd                                         ; $4b06: $fd
	inc  bc                                          ; $4b07: $03
	db   $fc                                         ; $4b08: $fc
	inc  bc                                          ; $4b09: $03
	ld   a, b                                        ; $4b0a: $78
	add  a                                           ; $4b0b: $87
	jr   nc, jr_025_4add                             ; $4b0c: $30 $cf

	add  d                                           ; $4b0e: $82
	ld   a, h                                        ; $4b0f: $7c
	pop  bc                                          ; $4b10: $c1
	ld   a, $83                                      ; $4b11: $3e $83
	ld   l, h                                        ; $4b13: $6c
	ret  nz                                          ; $4b14: $c0

	and  a                                           ; $4b15: $a7
	ret  nz                                          ; $4b16: $c0

	jr   nz, jr_025_4b19                             ; $4b17: $20 $00

jr_025_4b19:
	ldh  [rP1], a                                    ; $4b19: $e0 $00
	ret  nz                                          ; $4b1b: $c0

	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	or   b                                           ; $4b20: $b0
	db   $fc                                         ; $4b21: $fc
	ld   c, h                                        ; $4b22: $4c
	ldh  a, [c]                                      ; $4b23: $f2
	sbc  h                                           ; $4b24: $9c
	ldh  [c], a                                      ; $4b25: $e2
	inc  e                                           ; $4b26: $1c
	or   d                                           ; $4b27: $b2
	inc  c                                           ; $4b28: $0c
	cp   d                                           ; $4b29: $ba
	db   $10                                         ; $4b2a: $10
	xor  h                                           ; $4b2b: $ac
	nop                                              ; $4b2c: $00
	ld   hl, sp-$80                                  ; $4b2d: $f8 $80
	ld   b, b                                        ; $4b2f: $40
	nop                                              ; $4b30: $00
	ret  nz                                          ; $4b31: $c0

	add  b                                           ; $4b32: $80
	ld   b, b                                        ; $4b33: $40
	nop                                              ; $4b34: $00
	add  b                                           ; $4b35: $80
	nop                                              ; $4b36: $00
	nop                                              ; $4b37: $00
	nop                                              ; $4b38: $00
	nop                                              ; $4b39: $00
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	jr   nz, jr_025_4b64                             ; $4b42: $20 $20

	ld   [bc], a                                     ; $4b44: $02
	ld   [de], a                                     ; $4b45: $12
	inc  d                                           ; $4b46: $14
	inc  d                                           ; $4b47: $14
	jr   nz, jr_025_4b6a                             ; $4b48: $20 $20

	inc  h                                           ; $4b4a: $24
	inc  h                                           ; $4b4b: $24
	jr   @+$1a                                       ; $4b4c: $18 $18

	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00
	nop                                              ; $4b51: $00
	nop                                              ; $4b52: $00
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00
	nop                                              ; $4b57: $00
	nop                                              ; $4b58: $00
	nop                                              ; $4b59: $00
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	ld   b, b                                        ; $4b62: $40
	ld   b, b                                        ; $4b63: $40

jr_025_4b64:
	ld   [bc], a                                     ; $4b64: $02
	ld   b, $00                                      ; $4b65: $06 $00
	ld   b, b                                        ; $4b67: $40
	add  b                                           ; $4b68: $80
	add  b                                           ; $4b69: $80

jr_025_4b6a:
	ld   b, d                                        ; $4b6a: $42
	ld   b, d                                        ; $4b6b: $42
	jr   nz, @+$22                                   ; $4b6c: $20 $20

	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	nop                                              ; $4b70: $00
	nop                                              ; $4b71: $00
	nop                                              ; $4b72: $00
	nop                                              ; $4b73: $00
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	nop                                              ; $4b78: $00
	nop                                              ; $4b79: $00
	nop                                              ; $4b7a: $00
	nop                                              ; $4b7b: $00
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	ld   b, b                                        ; $4b83: $40
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	ld   bc, $0000                                   ; $4b87: $01 $00 $00
	nop                                              ; $4b8a: $00
	add  b                                           ; $4b8b: $80
	ld   bc, $2001                                   ; $4b8c: $01 $01 $20
	jr   nz, jr_025_4b91                             ; $4b8f: $20 $00

jr_025_4b91:
	nop                                              ; $4b91: $00
	nop                                              ; $4b92: $00
	nop                                              ; $4b93: $00
	nop                                              ; $4b94: $00
	nop                                              ; $4b95: $00
	nop                                              ; $4b96: $00
	nop                                              ; $4b97: $00
	nop                                              ; $4b98: $00
	nop                                              ; $4b99: $00
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	rst  $38                                         ; $4ba0: $ff
	nop                                              ; $4ba1: $00
	rst  $38                                         ; $4ba2: $ff
	nop                                              ; $4ba3: $00
	rst  $38                                         ; $4ba4: $ff
	nop                                              ; $4ba5: $00
	rst  $38                                         ; $4ba6: $ff
	nop                                              ; $4ba7: $00
	rst  $38                                         ; $4ba8: $ff
	nop                                              ; $4ba9: $00
	rst  $38                                         ; $4baa: $ff
	nop                                              ; $4bab: $00
	rst  $38                                         ; $4bac: $ff
	nop                                              ; $4bad: $00
	rst  $38                                         ; $4bae: $ff
	nop                                              ; $4baf: $00
	rst  $38                                         ; $4bb0: $ff
	nop                                              ; $4bb1: $00
	rst  $38                                         ; $4bb2: $ff
	nop                                              ; $4bb3: $00
	rst  $38                                         ; $4bb4: $ff
	nop                                              ; $4bb5: $00
	rst  $38                                         ; $4bb6: $ff
	nop                                              ; $4bb7: $00
	rst  $38                                         ; $4bb8: $ff
	nop                                              ; $4bb9: $00
	rst  $38                                         ; $4bba: $ff
	nop                                              ; $4bbb: $00
	rst  $38                                         ; $4bbc: $ff
	nop                                              ; $4bbd: $00
	rst  $38                                         ; $4bbe: $ff
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	nop                                              ; $4bc5: $00
	nop                                              ; $4bc6: $00
	nop                                              ; $4bc7: $00
	nop                                              ; $4bc8: $00
	nop                                              ; $4bc9: $00
	nop                                              ; $4bca: $00
	nop                                              ; $4bcb: $00
	nop                                              ; $4bcc: $00
	nop                                              ; $4bcd: $00
	nop                                              ; $4bce: $00
	nop                                              ; $4bcf: $00
	nop                                              ; $4bd0: $00
	nop                                              ; $4bd1: $00
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	nop                                              ; $4bd4: $00
	nop                                              ; $4bd5: $00
	nop                                              ; $4bd6: $00
	nop                                              ; $4bd7: $00
	nop                                              ; $4bd8: $00
	nop                                              ; $4bd9: $00
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
	nop                                              ; $4be4: $00
	nop                                              ; $4be5: $00
	nop                                              ; $4be6: $00
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	nop                                              ; $4be9: $00
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	nop                                              ; $4bef: $00
	nop                                              ; $4bf0: $00
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	nop                                              ; $4bf3: $00
	nop                                              ; $4bf4: $00
	nop                                              ; $4bf5: $00
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	nop                                              ; $4bf8: $00
	nop                                              ; $4bf9: $00
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	jr   jr_025_4c0a                                 ; $4c08: $18 $00

jr_025_4c0a:
	jr   c, jr_025_4c0c                              ; $4c0a: $38 $00

jr_025_4c0c:
	ld   a, b                                        ; $4c0c: $78
	ld   bc, $03f8                                   ; $4c0d: $01 $f8 $03
	ld   a, b                                        ; $4c10: $78
	ld   bc, $0038                                   ; $4c11: $01 $38 $00
	jr   jr_025_4c16                                 ; $4c14: $18 $00

jr_025_4c16:
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	ld   bc, $0361                                   ; $4c28: $01 $61 $03
	db   $e3                                         ; $4c2b: $e3
	rlca                                             ; $4c2c: $07
	rst  $20                                         ; $4c2d: $e7
	rrca                                             ; $4c2e: $0f
	rst  $28                                         ; $4c2f: $ef
	rlca                                             ; $4c30: $07
	rst  $20                                         ; $4c31: $e7
	inc  bc                                          ; $4c32: $03
	db   $e3                                         ; $4c33: $e3
	ld   bc, $0061                                   ; $4c34: $01 $61 $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	db   $10                                         ; $4c49: $10
	ld   bc, $0331                                   ; $4c4a: $01 $31 $03
	ld   [hl], e                                     ; $4c4d: $73
	rlca                                             ; $4c4e: $07
	rst  $30                                         ; $4c4f: $f7
	inc  bc                                          ; $4c50: $03
	ld   [hl], e                                     ; $4c51: $73
	ld   bc, $0031                                   ; $4c52: $01 $31 $00
	stop                                             ; $4c55: $10 $00
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	jp   $c7c3                                       ; $4c68: $c3 $c3 $c7


	rst  ToBoot                                         ; $4c6b: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6c: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6d: $cf
	rst  JumpTable                                         ; $4c6e: $df
	rst  JumpTable                                         ; $4c6f: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c70: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c71: $cf
	rst  ToBoot                                         ; $4c72: $c7
	rst  ToBoot                                         ; $4c73: $c7
	jp   $00c3                                       ; $4c74: $c3 $c3 $00


	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	db   $10                                         ; $4c88: $10
	db   $10                                         ; $4c89: $10
	ld   sp, $7331                                   ; $4c8a: $31 $31 $73
	ld   [hl], e                                     ; $4c8d: $73
	rst  $30                                         ; $4c8e: $f7
	rst  $30                                         ; $4c8f: $f7
	ld   [hl], e                                     ; $4c90: $73
	ld   [hl], e                                     ; $4c91: $73
	ld   sp, $1031                                   ; $4c92: $31 $31 $10
	stop                                             ; $4c95: $10 $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	jp   $c7c0                                       ; $4ca8: $c3 $c0 $c7


	ret  nz                                          ; $4cab: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cac: $cf
	ret  nz                                          ; $4cad: $c0

	rst  JumpTable                                         ; $4cae: $df
	ret  nz                                          ; $4caf: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cb0: $cf
	ret  nz                                          ; $4cb1: $c0

	rst  ToBoot                                         ; $4cb2: $c7
	ret  nz                                          ; $4cb3: $c0

	jp   $00c0                                       ; $4cb4: $c3 $c0 $00


	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	nop                                              ; $4cba: $00
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	nop                                              ; $4cc4: $00
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	nop                                              ; $4cc7: $00
	db   $10                                         ; $4cc8: $10
	db   $10                                         ; $4cc9: $10
	ld   sp, $7330                                   ; $4cca: $31 $30 $73
	ld   [hl], b                                     ; $4ccd: $70
	rst  $30                                         ; $4cce: $f7
	ldh  a, [$73]                                    ; $4ccf: $f0 $73
	ld   [hl], b                                     ; $4cd1: $70
	ld   sp, $1030                                   ; $4cd2: $31 $30 $10
	stop                                             ; $4cd5: $10 $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	ret  nz                                          ; $4ce8: $c0

	inc  bc                                          ; $4ce9: $03
	ret  nz                                          ; $4cea: $c0

	rlca                                             ; $4ceb: $07
	ret  nz                                          ; $4cec: $c0

	rrca                                             ; $4ced: $0f
	ret  nz                                          ; $4cee: $c0

	rra                                              ; $4cef: $1f
	ret  nz                                          ; $4cf0: $c0

	rrca                                             ; $4cf1: $0f
	ret  nz                                          ; $4cf2: $c0

	rlca                                             ; $4cf3: $07
	ret  nz                                          ; $4cf4: $c0

	inc  bc                                          ; $4cf5: $03
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	nop                                              ; $4cf9: $00
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	rst  $38                                         ; $4d01: $ff
	inc  a                                           ; $4d02: $3c
	rst  $38                                         ; $4d03: $ff
	ld   a, [hl]                                     ; $4d04: $7e
	jp   $db7e                                       ; $4d05: $c3 $7e $db


	ld   a, [hl]                                     ; $4d08: $7e
	jp   $db7e                                       ; $4d09: $c3 $7e $db


	ld   a, [hl]                                     ; $4d0c: $7e
	jp   $ff3c                                       ; $4d0d: $c3 $3c $ff


	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	nop                                              ; $4d15: $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	nop                                              ; $4d1a: $00
	nop                                              ; $4d1b: $00
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	rst  $38                                         ; $4d21: $ff
	inc  a                                           ; $4d22: $3c
	rst  $38                                         ; $4d23: $ff
	ld   a, [hl]                                     ; $4d24: $7e
	jp   $db7e                                       ; $4d25: $c3 $7e $db


	ld   a, [hl]                                     ; $4d28: $7e
	jp   $fb3e                                       ; $4d29: $c3 $3e $fb


	ld   a, [hl]                                     ; $4d2c: $7e
	jp   $ff3c                                       ; $4d2d: $c3 $3c $ff


	nop                                              ; $4d30: $00
	nop                                              ; $4d31: $00
	nop                                              ; $4d32: $00
	nop                                              ; $4d33: $00
	nop                                              ; $4d34: $00
	nop                                              ; $4d35: $00
	nop                                              ; $4d36: $00
	nop                                              ; $4d37: $00
	nop                                              ; $4d38: $00
	nop                                              ; $4d39: $00
	nop                                              ; $4d3a: $00
	nop                                              ; $4d3b: $00
	nop                                              ; $4d3c: $00
	nop                                              ; $4d3d: $00
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	nop                                              ; $4d41: $00
	nop                                              ; $4d42: $00
	nop                                              ; $4d43: $00
	nop                                              ; $4d44: $00
	nop                                              ; $4d45: $00
	nop                                              ; $4d46: $00
	rlca                                             ; $4d47: $07
	ld   [bc], a                                     ; $4d48: $02
	rst  $38                                         ; $4d49: $ff
	ld   [hl], b                                     ; $4d4a: $70
	ld   a, a                                        ; $4d4b: $7f
	inc  bc                                          ; $4d4c: $03

jr_025_4d4d:
	rrca                                             ; $4d4d: $0f
	ld   [bc], a                                     ; $4d4e: $02
	ld   c, $02                                      ; $4d4f: $0e $02
	ld   c, $06                                      ; $4d51: $0e $06
	ld   e, $0c                                      ; $4d53: $1e $0c

jr_025_4d55:
	ld   a, h                                        ; $4d55: $7c
	jr   c, jr_025_4d90                              ; $4d56: $38 $38

	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	nop                                              ; $4d5a: $00

jr_025_4d5b:
	nop                                              ; $4d5b: $00
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	nop                                              ; $4d66: $00
	nop                                              ; $4d67: $00
	nop                                              ; $4d68: $00
	ret  nz                                          ; $4d69: $c0

	jr   nz, jr_025_4d4d                             ; $4d6a: $20 $e1

	jr   nz, jr_025_4d55                             ; $4d6c: $20 $e7

	ld   [hl+], a                                    ; $4d6e: $22
	db   $e3                                         ; $4d6f: $e3
	jr   nz, jr_025_4d5b                             ; $4d70: $20 $e9

	inc  h                                           ; $4d72: $24
	push af                                          ; $4d73: $f5
	ld   [$70e9], sp                                 ; $4d74: $08 $e9 $70
	ld   [hl], b                                     ; $4d77: $70
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
	ld   e, b                                        ; $4d87: $58
	inc  h                                           ; $4d88: $24
	cp   h                                           ; $4d89: $bc
	ld   b, b                                        ; $4d8a: $40
	rst  $38                                         ; $4d8b: $ff
	ld   b, [hl]                                     ; $4d8c: $46
	rst  JumpTable                                         ; $4d8d: $df
	ld   b, l                                        ; $4d8e: $45
	rst  JumpTable                                         ; $4d8f: $df

jr_025_4d90:
	ld   b, h                                        ; $4d90: $44
	call c, $dc44                                    ; $4d91: $dc $44 $dc
	ld   b, h                                        ; $4d94: $44
	call c, $cccc                                    ; $4d95: $dc $cc $cc
	nop                                              ; $4d98: $00
	nop                                              ; $4d99: $00
	nop                                              ; $4d9a: $00
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	nop                                              ; $4d9d: $00
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	nop                                              ; $4da4: $00
	nop                                              ; $4da5: $00
	nop                                              ; $4da6: $00
	nop                                              ; $4da7: $00
	nop                                              ; $4da8: $00
	nop                                              ; $4da9: $00
	nop                                              ; $4daa: $00
	nop                                              ; $4dab: $00
	add  b                                           ; $4dac: $80
	add  b                                           ; $4dad: $80
	add  b                                           ; $4dae: $80
	add  b                                           ; $4daf: $80
	nop                                              ; $4db0: $00
	ld   a, h                                        ; $4db1: $7c
	ld   a, $3e                                      ; $4db2: $3e $3e
	nop                                              ; $4db4: $00
	nop                                              ; $4db5: $00
	nop                                              ; $4db6: $00
	nop                                              ; $4db7: $00
	nop                                              ; $4db8: $00
	nop                                              ; $4db9: $00
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	nop                                              ; $4dbd: $00
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	nop                                              ; $4dc4: $00
	nop                                              ; $4dc5: $00
	nop                                              ; $4dc6: $00
	nop                                              ; $4dc7: $00
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00
	nop                                              ; $4dca: $00
	nop                                              ; $4dcb: $00
	nop                                              ; $4dcc: $00
	nop                                              ; $4dcd: $00
	nop                                              ; $4dce: $00
	nop                                              ; $4dcf: $00
	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	nop                                              ; $4dd2: $00
	nop                                              ; $4dd3: $00
	nop                                              ; $4dd4: $00
	nop                                              ; $4dd5: $00
	nop                                              ; $4dd6: $00
	nop                                              ; $4dd7: $00
	nop                                              ; $4dd8: $00
	nop                                              ; $4dd9: $00
	nop                                              ; $4dda: $00
	nop                                              ; $4ddb: $00
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	nop                                              ; $4dea: $00
	nop                                              ; $4deb: $00
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	nop                                              ; $4df0: $00
	nop                                              ; $4df1: $00
	nop                                              ; $4df2: $00
	nop                                              ; $4df3: $00
	nop                                              ; $4df4: $00
	nop                                              ; $4df5: $00
	nop                                              ; $4df6: $00
	nop                                              ; $4df7: $00
	nop                                              ; $4df8: $00
	nop                                              ; $4df9: $00
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00

Call_025_4dff:
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	nop                                              ; $4e16: $00
	nop                                              ; $4e17: $00
	nop                                              ; $4e18: $00
	nop                                              ; $4e19: $00
	nop                                              ; $4e1a: $00
	nop                                              ; $4e1b: $00
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	nop                                              ; $4e21: $00
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	nop                                              ; $4e32: $00
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	nop                                              ; $4e36: $00
	nop                                              ; $4e37: $00
	nop                                              ; $4e38: $00
	nop                                              ; $4e39: $00
	nop                                              ; $4e3a: $00
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	nop                                              ; $4e3d: $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	rst  $38                                         ; $4e41: $ff
	inc  a                                           ; $4e42: $3c
	rst  $38                                         ; $4e43: $ff
	ld   a, [hl]                                     ; $4e44: $7e
	jp   $d37e                                       ; $4e45: $c3 $7e $d3


	ld   a, [hl]                                     ; $4e48: $7e
	db   $d3                                         ; $4e49: $d3
	ld   a, [hl]                                     ; $4e4a: $7e
	db   $d3                                         ; $4e4b: $d3
	ld   a, [hl]                                     ; $4e4c: $7e
	jp   $ff3c                                       ; $4e4d: $c3 $3c $ff


	nop                                              ; $4e50: $00
	rst  $38                                         ; $4e51: $ff
	inc  a                                           ; $4e52: $3c
	rst  $38                                         ; $4e53: $ff
	ld   a, h                                        ; $4e54: $7c
	rst  ToBoot                                         ; $4e55: $c7
	ld   a, h                                        ; $4e56: $7c
	rst  $20                                         ; $4e57: $e7
	inc  a                                           ; $4e58: $3c
	rst  $20                                         ; $4e59: $e7
	inc  a                                           ; $4e5a: $3c
	rst  $20                                         ; $4e5b: $e7
	inc  a                                           ; $4e5c: $3c
	rst  $20                                         ; $4e5d: $e7
	inc  a                                           ; $4e5e: $3c
	rst  $38                                         ; $4e5f: $ff
	nop                                              ; $4e60: $00
	rst  $38                                         ; $4e61: $ff
	inc  a                                           ; $4e62: $3c
	rst  $38                                         ; $4e63: $ff
	ld   a, [hl]                                     ; $4e64: $7e
	jp   $fb7e                                       ; $4e65: $c3 $7e $fb


	inc  e                                           ; $4e68: $1c
	rst  $30                                         ; $4e69: $f7
	ld   a, $ef                                      ; $4e6a: $3e $ef
	ld   a, [hl]                                     ; $4e6c: $7e
	jp   $ff7e                                       ; $4e6d: $c3 $7e $ff


	nop                                              ; $4e70: $00
	rst  $38                                         ; $4e71: $ff
	inc  a                                           ; $4e72: $3c
	rst  $38                                         ; $4e73: $ff
	ld   a, [hl]                                     ; $4e74: $7e
	jp   $fb7e                                       ; $4e75: $c3 $7e $fb


	inc  a                                           ; $4e78: $3c
	rst  $20                                         ; $4e79: $e7
	ld   a, [hl]                                     ; $4e7a: $7e
	ei                                               ; $4e7b: $fb
	ld   a, [hl]                                     ; $4e7c: $7e
	jp   $ff3c                                       ; $4e7d: $c3 $3c $ff


	nop                                              ; $4e80: $00
	rst  $38                                         ; $4e81: $ff
	ld   c, $ff                                      ; $4e82: $0e $ff
	ld   e, $f3                                      ; $4e84: $1e $f3
	ld   a, $e3                                      ; $4e86: $3e $e3
	ld   a, [hl]                                     ; $4e88: $7e
	db   $db                                         ; $4e89: $db
	ld   a, [hl]                                     ; $4e8a: $7e
	jp   $fb7e                                       ; $4e8b: $c3 $7e $fb


	ld   c, $ff                                      ; $4e8e: $0e $ff
	nop                                              ; $4e90: $00
	rst  $38                                         ; $4e91: $ff
	ld   a, [hl]                                     ; $4e92: $7e
	rst  $38                                         ; $4e93: $ff
	ld   a, [hl]                                     ; $4e94: $7e
	jp   $df7c                                       ; $4e95: $c3 $7c $df


	ld   a, [hl]                                     ; $4e98: $7e
	jp   $fb3e                                       ; $4e99: $c3 $3e $fb


	ld   a, [hl]                                     ; $4e9c: $7e
	jp   $ff3c                                       ; $4e9d: $c3 $3c $ff


	nop                                              ; $4ea0: $00
	rst  $38                                         ; $4ea1: $ff
	ld   a, $ff                                      ; $4ea2: $3e $ff
	ld   a, [hl]                                     ; $4ea4: $7e
	jp   $df7c                                       ; $4ea5: $c3 $7c $df


	ld   a, [hl]                                     ; $4ea8: $7e
	jp   $db7e                                       ; $4ea9: $c3 $7e $db


	ld   a, [hl]                                     ; $4eac: $7e
	jp   $ff3c                                       ; $4ead: $c3 $3c $ff


	nop                                              ; $4eb0: $00
	rst  $38                                         ; $4eb1: $ff
	ld   a, [hl]                                     ; $4eb2: $7e
	rst  $38                                         ; $4eb3: $ff
	ld   a, [hl]                                     ; $4eb4: $7e
	jp   $fb7e                                       ; $4eb5: $c3 $7e $fb


	ld   e, $f3                                      ; $4eb8: $1e $f3
	inc  a                                           ; $4eba: $3c
	rst  $20                                         ; $4ebb: $e7
	ld   a, b                                        ; $4ebc: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ebd: $cf
	ld   a, b                                        ; $4ebe: $78
	rst  $38                                         ; $4ebf: $ff
	nop                                              ; $4ec0: $00
	rst  $38                                         ; $4ec1: $ff
	inc  a                                           ; $4ec2: $3c
	rst  $38                                         ; $4ec3: $ff
	ld   a, [hl]                                     ; $4ec4: $7e
	jp   $db7e                                       ; $4ec5: $c3 $7e $db


	ld   a, [hl]                                     ; $4ec8: $7e
	jp   $db7e                                       ; $4ec9: $c3 $7e $db


	ld   a, [hl]                                     ; $4ecc: $7e
	jp   $ff3c                                       ; $4ecd: $c3 $3c $ff


	nop                                              ; $4ed0: $00
	rst  $38                                         ; $4ed1: $ff
	inc  a                                           ; $4ed2: $3c
	rst  $38                                         ; $4ed3: $ff
	ld   a, [hl]                                     ; $4ed4: $7e
	jp   $db7e                                       ; $4ed5: $c3 $7e $db


	ld   a, [hl]                                     ; $4ed8: $7e
	jp   $fb3e                                       ; $4ed9: $c3 $3e $fb


	ld   a, [hl]                                     ; $4edc: $7e
	jp   $ff3c                                       ; $4edd: $c3 $3c $ff


	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	nop                                              ; $4eeb: $00
	nop                                              ; $4eec: $00
	nop                                              ; $4eed: $00
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	nop                                              ; $4ef0: $00
	nop                                              ; $4ef1: $00
	nop                                              ; $4ef2: $00
	nop                                              ; $4ef3: $00
	nop                                              ; $4ef4: $00
	nop                                              ; $4ef5: $00
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	nop                                              ; $4ef8: $00
	nop                                              ; $4ef9: $00
	nop                                              ; $4efa: $00
	nop                                              ; $4efb: $00
	nop                                              ; $4efc: $00
	nop                                              ; $4efd: $00
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	nop                                              ; $4f00: $00
	rst  $38                                         ; $4f01: $ff
	nop                                              ; $4f02: $00
	rst  $38                                         ; $4f03: $ff
	nop                                              ; $4f04: $00
	rst  $38                                         ; $4f05: $ff
	rrca                                             ; $4f06: $0f
	rst  $38                                         ; $4f07: $ff
	rra                                              ; $4f08: $1f
	ld   hl, sp+$1f                                  ; $4f09: $f8 $1f
	ldh  a, [$1f]                                    ; $4f0b: $f0 $1f
	di                                               ; $4f0d: $f3
	rra                                              ; $4f0e: $1f
	di                                               ; $4f0f: $f3
	nop                                              ; $4f10: $00
	rst  $38                                         ; $4f11: $ff
	nop                                              ; $4f12: $00
	rst  $38                                         ; $4f13: $ff
	nop                                              ; $4f14: $00
	rst  $38                                         ; $4f15: $ff
	ldh  a, [rIE]                                    ; $4f16: $f0 $ff
	ld   hl, sp+$1f                                  ; $4f18: $f8 $1f
	db   $fc                                         ; $4f1a: $fc
	rrca                                             ; $4f1b: $0f
	db   $fc                                         ; $4f1c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f1d: $cf
	db   $fc                                         ; $4f1e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f1f: $cf
	rra                                              ; $4f20: $1f
	di                                               ; $4f21: $f3
	rra                                              ; $4f22: $1f
	di                                               ; $4f23: $f3
	rra                                              ; $4f24: $1f
	di                                               ; $4f25: $f3
	rra                                              ; $4f26: $1f
	di                                               ; $4f27: $f3
	rra                                              ; $4f28: $1f
	ldh  a, [$1f]                                    ; $4f29: $f0 $1f
	ld   hl, sp+$0f                                  ; $4f2b: $f8 $0f
	rst  $38                                         ; $4f2d: $ff
	rlca                                             ; $4f2e: $07
	rst  $38                                         ; $4f2f: $ff
	db   $fc                                         ; $4f30: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f31: $cf
	db   $fc                                         ; $4f32: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f33: $cf
	db   $fc                                         ; $4f34: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f35: $cf
	db   $fc                                         ; $4f36: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f37: $cf
	db   $fc                                         ; $4f38: $fc
	rrca                                             ; $4f39: $0f
	db   $fc                                         ; $4f3a: $fc
	rra                                              ; $4f3b: $1f
	db   $fc                                         ; $4f3c: $fc
	rst  $38                                         ; $4f3d: $ff
	ld   hl, sp-$01                                  ; $4f3e: $f8 $ff
	nop                                              ; $4f40: $00
	rst  $38                                         ; $4f41: $ff
	nop                                              ; $4f42: $00
	rst  $38                                         ; $4f43: $ff
	nop                                              ; $4f44: $00
	rst  $38                                         ; $4f45: $ff
	rrca                                             ; $4f46: $0f
	rst  $38                                         ; $4f47: $ff
	rra                                              ; $4f48: $1f
	ld   hl, sp+$1f                                  ; $4f49: $f8 $1f
	ldh  a, [$1f]                                    ; $4f4b: $f0 $1f
	db   $fc                                         ; $4f4d: $fc
	rrca                                             ; $4f4e: $0f
	db   $fc                                         ; $4f4f: $fc
	nop                                              ; $4f50: $00
	rst  $38                                         ; $4f51: $ff
	nop                                              ; $4f52: $00
	rst  $38                                         ; $4f53: $ff
	nop                                              ; $4f54: $00
	rst  $38                                         ; $4f55: $ff
	ldh  [rIE], a                                    ; $4f56: $e0 $ff
	ldh  a, [$3f]                                    ; $4f58: $f0 $3f
	ldh  a, [$3f]                                    ; $4f5a: $f0 $3f
	ldh  a, [$3f]                                    ; $4f5c: $f0 $3f
	ldh  a, [$3f]                                    ; $4f5e: $f0 $3f
	rlca                                             ; $4f60: $07
	db   $fc                                         ; $4f61: $fc
	rlca                                             ; $4f62: $07
	db   $fc                                         ; $4f63: $fc
	rlca                                             ; $4f64: $07
	db   $fc                                         ; $4f65: $fc
	rlca                                             ; $4f66: $07
	db   $fc                                         ; $4f67: $fc
	rlca                                             ; $4f68: $07
	db   $fc                                         ; $4f69: $fc
	rlca                                             ; $4f6a: $07
	db   $fc                                         ; $4f6b: $fc
	rlca                                             ; $4f6c: $07
	rst  $38                                         ; $4f6d: $ff
	inc  bc                                          ; $4f6e: $03
	rst  $38                                         ; $4f6f: $ff
	ldh  a, [$3f]                                    ; $4f70: $f0 $3f
	ldh  a, [$3f]                                    ; $4f72: $f0 $3f
	ldh  a, [$3f]                                    ; $4f74: $f0 $3f
	ldh  a, [$3f]                                    ; $4f76: $f0 $3f
	ldh  a, [$3f]                                    ; $4f78: $f0 $3f
	ldh  a, [$3f]                                    ; $4f7a: $f0 $3f
	ldh  a, [rIE]                                    ; $4f7c: $f0 $ff
	ldh  a, [rIE]                                    ; $4f7e: $f0 $ff
	nop                                              ; $4f80: $00
	rst  $38                                         ; $4f81: $ff
	nop                                              ; $4f82: $00
	rst  $38                                         ; $4f83: $ff
	nop                                              ; $4f84: $00
	rst  $38                                         ; $4f85: $ff
	rrca                                             ; $4f86: $0f
	rst  $38                                         ; $4f87: $ff
	rra                                              ; $4f88: $1f
	ld   hl, sp+$1f                                  ; $4f89: $f8 $1f
	ldh  a, [$1f]                                    ; $4f8b: $f0 $1f
	di                                               ; $4f8d: $f3
	rra                                              ; $4f8e: $1f
	rst  $38                                         ; $4f8f: $ff
	nop                                              ; $4f90: $00
	rst  $38                                         ; $4f91: $ff
	nop                                              ; $4f92: $00
	rst  $38                                         ; $4f93: $ff
	nop                                              ; $4f94: $00
	rst  $38                                         ; $4f95: $ff
	ldh  a, [rIE]                                    ; $4f96: $f0 $ff
	ld   hl, sp+$1f                                  ; $4f98: $f8 $1f
	db   $fc                                         ; $4f9a: $fc
	rrca                                             ; $4f9b: $0f
	db   $fc                                         ; $4f9c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f9d: $cf
	db   $fc                                         ; $4f9e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f9f: $cf
	rrca                                             ; $4fa0: $0f
	rst  $38                                         ; $4fa1: $ff
	rlca                                             ; $4fa2: $07
	cp   $0f                                         ; $4fa3: $fe $0f
	db   $fc                                         ; $4fa5: $fc
	rra                                              ; $4fa6: $1f
	ld   hl, sp+$1f                                  ; $4fa7: $f8 $1f
	ldh  a, [$1f]                                    ; $4fa9: $f0 $1f
	ldh  a, [$1f]                                    ; $4fab: $f0 $1f
	rst  $38                                         ; $4fad: $ff
	rrca                                             ; $4fae: $0f
	rst  $38                                         ; $4faf: $ff
	db   $fc                                         ; $4fb0: $fc
	sbc  a                                           ; $4fb1: $9f
	ld   hl, sp+$3f                                  ; $4fb2: $f8 $3f
	ldh  a, [$7f]                                    ; $4fb4: $f0 $7f
	db   $fc                                         ; $4fb6: $fc
	rst  $38                                         ; $4fb7: $ff
	db   $fc                                         ; $4fb8: $fc
	rrca                                             ; $4fb9: $0f
	db   $fc                                         ; $4fba: $fc
	rrca                                             ; $4fbb: $0f
	db   $fc                                         ; $4fbc: $fc
	rst  $38                                         ; $4fbd: $ff
	db   $fc                                         ; $4fbe: $fc
	rst  $38                                         ; $4fbf: $ff
	nop                                              ; $4fc0: $00
	rst  $38                                         ; $4fc1: $ff
	nop                                              ; $4fc2: $00
	rst  $38                                         ; $4fc3: $ff
	nop                                              ; $4fc4: $00
	rst  $38                                         ; $4fc5: $ff
	rrca                                             ; $4fc6: $0f
	rst  $38                                         ; $4fc7: $ff
	rra                                              ; $4fc8: $1f
	ld   hl, sp+$1f                                  ; $4fc9: $f8 $1f
	ldh  a, [$1f]                                    ; $4fcb: $f0 $1f
	di                                               ; $4fcd: $f3
	rra                                              ; $4fce: $1f
	rst  $38                                         ; $4fcf: $ff
	nop                                              ; $4fd0: $00
	rst  $38                                         ; $4fd1: $ff
	nop                                              ; $4fd2: $00
	rst  $38                                         ; $4fd3: $ff
	nop                                              ; $4fd4: $00
	rst  $38                                         ; $4fd5: $ff
	ldh  a, [rIE]                                    ; $4fd6: $f0 $ff
	ld   hl, sp+$1f                                  ; $4fd8: $f8 $1f
	db   $fc                                         ; $4fda: $fc
	rrca                                             ; $4fdb: $0f
	db   $fc                                         ; $4fdc: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fdd: $cf
	db   $fc                                         ; $4fde: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fdf: $cf
	rrca                                             ; $4fe0: $0f
	db   $fc                                         ; $4fe1: $fc
	rlca                                             ; $4fe2: $07
	db   $fc                                         ; $4fe3: $fc
	rra                                              ; $4fe4: $1f
	rst  $38                                         ; $4fe5: $ff
	rra                                              ; $4fe6: $1f
	di                                               ; $4fe7: $f3
	rra                                              ; $4fe8: $1f
	ldh  a, [$1f]                                    ; $4fe9: $f0 $1f
	ld   hl, sp+$0f                                  ; $4feb: $f8 $0f
	rst  $38                                         ; $4fed: $ff
	rlca                                             ; $4fee: $07
	rst  $38                                         ; $4fef: $ff
	db   $fc                                         ; $4ff0: $fc
	rra                                              ; $4ff1: $1f
	ld   hl, sp+$1f                                  ; $4ff2: $f8 $1f
	ld   hl, sp-$31                                  ; $4ff4: $f8 $cf
	db   $fc                                         ; $4ff6: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff7: $cf
	db   $fc                                         ; $4ff8: $fc
	rrca                                             ; $4ff9: $0f
	db   $fc                                         ; $4ffa: $fc
	rra                                              ; $4ffb: $1f
	db   $fc                                         ; $4ffc: $fc
	rst  $38                                         ; $4ffd: $ff
	ld   hl, sp-$01                                  ; $4ffe: $f8 $ff
	ld   bc, $0100                                   ; $5000: $01 $00 $01
	nop                                              ; $5003: $00
	ld   bc, $0100                                   ; $5004: $01 $00 $01
	nop                                              ; $5007: $00
	ld   bc, $0100                                   ; $5008: $01 $00 $01
	nop                                              ; $500b: $00
	ld   bc, $ff00                                   ; $500c: $01 $00 $ff
	nop                                              ; $500f: $00
	ld   bc, $1100                                   ; $5010: $01 $00 $11
	nop                                              ; $5013: $00
	ld   de, $7d00                                   ; $5014: $11 $00 $7d
	nop                                              ; $5017: $00
	ld   de, $1100                                   ; $5018: $11 $00 $11
	nop                                              ; $501b: $00
	ld   bc, $ff00                                   ; $501c: $01 $00 $ff
	nop                                              ; $501f: $00
	rst  $38                                         ; $5020: $ff
	rst  $38                                         ; $5021: $ff
	ei                                               ; $5022: $fb
	jp   $b1c9                                       ; $5023: $c3 $c9 $b1


	pop  de                                          ; $5026: $d1
	and  c                                           ; $5027: $a1
	db   $ed                                         ; $5028: $ed
	add  c                                           ; $5029: $81
	adc  l                                           ; $502a: $8d
	add  c                                           ; $502b: $81
	jp   $ffc3                                       ; $502c: $c3 $c3 $ff


	rst  $38                                         ; $502f: $ff
	nop                                              ; $5030: $00
	rst  $38                                         ; $5031: $ff
	nop                                              ; $5032: $00
	rst  $38                                         ; $5033: $ff
	xor  d                                           ; $5034: $aa
	ld   d, l                                        ; $5035: $55
	ld   d, l                                        ; $5036: $55
	xor  d                                           ; $5037: $aa
	rst  $38                                         ; $5038: $ff
	nop                                              ; $5039: $00
	rst  $38                                         ; $503a: $ff
	nop                                              ; $503b: $00
	xor  d                                           ; $503c: $aa
	nop                                              ; $503d: $00
	ld   d, l                                        ; $503e: $55
	nop                                              ; $503f: $00
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	inc  bc                                          ; $5044: $03
	nop                                              ; $5045: $00
	ld   [bc], a                                     ; $5046: $02
	nop                                              ; $5047: $00
	ld   [bc], a                                     ; $5048: $02
	nop                                              ; $5049: $00
	ld   [hl+], a                                    ; $504a: $22
	ld   bc, $0060                                   ; $504b: $01 $60 $00
	ld   [hl], a                                     ; $504e: $77
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	add  b                                           ; $5058: $80

jr_025_5059:
	add  b                                           ; $5059: $80
	xor  d                                           ; $505a: $aa
	xor  d                                           ; $505b: $aa
	ld   a, a                                        ; $505c: $7f
	ld   a, a                                        ; $505d: $7f
	nop                                              ; $505e: $00
	rst  $38                                         ; $505f: $ff
	ld   bc, $0100                                   ; $5060: $01 $00 $01
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	ld   bc, $0000                                   ; $5066: $01 $00 $00
	nop                                              ; $5069: $00
	xor  d                                           ; $506a: $aa
	xor  d                                           ; $506b: $aa
	cp   $fe                                         ; $506c: $fe $fe
	nop                                              ; $506e: $00
	rst  $38                                         ; $506f: $ff
	ld   hl, sp-$1a                                  ; $5070: $f8 $e6
	ldh  a, [$ec]                                    ; $5072: $f0 $ec
	ldh  a, [$e9]                                    ; $5074: $f0 $e9
	ld   hl, sp-$1d                                  ; $5076: $f8 $e3
	ldh  a, [$ee]                                    ; $5078: $f0 $ee
	ldh  a, [$ec]                                    ; $507a: $f0 $ec
	ldh  a, [$e9]                                    ; $507c: $f0 $e9
	ldh  a, [$eb]                                    ; $507e: $f0 $eb
	ld   a, a                                        ; $5080: $7f
	add  b                                           ; $5081: $80
	ld   a, a                                        ; $5082: $7f
	add  b                                           ; $5083: $80
	ld   b, b                                        ; $5084: $40
	cp   a                                           ; $5085: $bf
	ccf                                              ; $5086: $3f
	rst  $38                                         ; $5087: $ff
	jr   nc, jr_025_5059                             ; $5088: $30 $cf

	inc  hl                                          ; $508a: $23
	call c, $df20                                    ; $508b: $dc $20 $df
	ld   d, b                                        ; $508e: $50
	and  b                                           ; $508f: $a0
	adc  $21                                         ; $5090: $ce $21
	adc  [hl]                                        ; $5092: $8e
	ld   h, c                                        ; $5093: $61
	ld   [bc], a                                     ; $5094: $02
	db   $fd                                         ; $5095: $fd
	db   $fc                                         ; $5096: $fc
	rst  $38                                         ; $5097: $ff
	ld   [$f4f7], sp                                 ; $5098: $08 $f7 $f4
	dec  bc                                          ; $509b: $0b
	inc  b                                           ; $509c: $04
	ei                                               ; $509d: $fb
	ld   a, [bc]                                     ; $509e: $0a
	dec  b                                           ; $509f: $05
	nop                                              ; $50a0: $00
	rst  $38                                         ; $50a1: $ff
	nop                                              ; $50a2: $00
	rst  $38                                         ; $50a3: $ff
	nop                                              ; $50a4: $00
	rst  $38                                         ; $50a5: $ff
	ld   bc, $23fe                                   ; $50a6: $01 $fe $23
	call c, $d827                                    ; $50a9: $dc $27 $d8
	ld   a, [bc]                                     ; $50ac: $0a
	ret  nc                                          ; $50ad: $d0

	ld   b, l                                        ; $50ae: $45
	sub  b                                           ; $50af: $90
	cpl                                              ; $50b0: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b1: $cf
	nop                                              ; $50b2: $00
	db   $fc                                         ; $50b3: $fc
	adc  a                                           ; $50b4: $8f
	rrca                                             ; $50b5: $0f
	rlca                                             ; $50b6: $07
	ld   a, b                                        ; $50b7: $78
	sbc  a                                           ; $50b8: $9f
	rra                                              ; $50b9: $1f
	sbc  a                                           ; $50ba: $9f
	ld   h, b                                        ; $50bb: $60
	rst  $38                                         ; $50bc: $ff
	ld   a, a                                        ; $50bd: $7f
	rst  $38                                         ; $50be: $ff
	ld   b, b                                        ; $50bf: $40
	cp   $fe                                         ; $50c0: $fe $fe
	ld   b, $02                                      ; $50c2: $06 $02
	rst  $38                                         ; $50c4: $ff
	cp   $fe                                         ; $50c5: $fe $fe
	inc  bc                                          ; $50c7: $03
	cp   $ff                                         ; $50c8: $fe $ff
	cp   $03                                         ; $50ca: $fe $03
	cp   $ff                                         ; $50cc: $fe $ff
	cp   $03                                         ; $50ce: $fe $03
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	jr   nz, jr_025_50d4                             ; $50d2: $20 $00

jr_025_50d4:
	ld   h, b                                        ; $50d4: $60
	nop                                              ; $50d5: $00
	nop                                              ; $50d6: $00
	nop                                              ; $50d7: $00
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	nop                                              ; $50db: $00
	nop                                              ; $50dc: $00
	nop                                              ; $50dd: $00
	nop                                              ; $50de: $00
	nop                                              ; $50df: $00
	ld   bc, $0300                                   ; $50e0: $01 $00 $03
	nop                                              ; $50e3: $00
	daa                                              ; $50e4: $27
	nop                                              ; $50e5: $00
	ld   bc, $0100                                   ; $50e6: $01 $00 $01
	nop                                              ; $50e9: $00
	ld   bc, $0100                                   ; $50ea: $01 $00 $01
	nop                                              ; $50ed: $00
	nop                                              ; $50ee: $00
	nop                                              ; $50ef: $00
	ret  nc                                          ; $50f0: $d0

	nop                                              ; $50f1: $00
	and  b                                           ; $50f2: $a0
	nop                                              ; $50f3: $00
	ld   d, b                                        ; $50f4: $50
	nop                                              ; $50f5: $00
	and  b                                           ; $50f6: $a0
	nop                                              ; $50f7: $00
	ret  nc                                          ; $50f8: $d0

	nop                                              ; $50f9: $00
	and  b                                           ; $50fa: $a0
	nop                                              ; $50fb: $00
	ret  nc                                          ; $50fc: $d0

	nop                                              ; $50fd: $00
	and  b                                           ; $50fe: $a0
	nop                                              ; $50ff: $00
	cp   $00                                         ; $5100: $fe $00
	db   $f4                                         ; $5102: $f4
	nop                                              ; $5103: $00
	add  sp, $00                                     ; $5104: $e8 $00
	ret  nc                                          ; $5106: $d0

	nop                                              ; $5107: $00
	and  b                                           ; $5108: $a0
	nop                                              ; $5109: $00
	add  b                                           ; $510a: $80
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	nop                                              ; $510d: $00
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	cp   a                                           ; $5110: $bf
	nop                                              ; $5111: $00
	ld   d, a                                        ; $5112: $57
	nop                                              ; $5113: $00
	dec  bc                                          ; $5114: $0b
	nop                                              ; $5115: $00
	ld   bc, $0300                                   ; $5116: $01 $00 $03
	nop                                              ; $5119: $00
	ld   bc, $0000                                   ; $511a: $01 $00 $00

jr_025_511d:
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	ld   c, $ef                                      ; $5120: $0e $ef
	call c, Call_025_417d                            ; $5122: $dc $7d $41
	ldh  [c], a                                      ; $5125: $e2
	ld   e, l                                        ; $5126: $5d
	ldh  [c], a                                      ; $5127: $e2
	ld   e, l                                        ; $5128: $5d
	ldh  [c], a                                      ; $5129: $e2
	ld   e, l                                        ; $512a: $5d

jr_025_512b:
	ld   h, d                                        ; $512b: $62
	db   $dd                                         ; $512c: $dd
	ldh  [c], a                                      ; $512d: $e2
	ld   e, l                                        ; $512e: $5d
	ld   h, d                                        ; $512f: $62
	nop                                              ; $5130: $00
	nop                                              ; $5131: $00
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	rst  $38                                         ; $5134: $ff
	rst  $38                                         ; $5135: $ff
	nop                                              ; $5136: $00
	nop                                              ; $5137: $00
	ld   d, d                                        ; $5138: $52
	xor  d                                           ; $5139: $aa
	ld   hl, sp+$00                                  ; $513a: $f8 $00
	nop                                              ; $513c: $00
	ld   hl, sp+$02                                  ; $513d: $f8 $02
	ld   a, [rRAMG]                                  ; $513f: $fa $00 $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	rst  $38                                         ; $5144: $ff
	rst  $38                                         ; $5145: $ff
	nop                                              ; $5146: $00
	nop                                              ; $5147: $00
	ld   d, l                                        ; $5148: $55
	xor  d                                           ; $5149: $aa
	rst  $20                                         ; $514a: $e7
	inc  b                                           ; $514b: $04
	ld   [bc], a                                     ; $514c: $02
	di                                               ; $514d: $f3
	ld   bc, $2cf9                                   ; $514e: $01 $f9 $2c
	call $cd2c                                       ; $5151: $cd $2c $cd
	inc  l                                           ; $5154: $2c
	call $cd2c                                       ; $5155: $cd $2c $cd
	jr   z, @-$35                                    ; $5158: $28 $c9

	jr   nz, jr_025_511d                             ; $515a: $20 $c1

	and  c                                           ; $515c: $a1
	ld   b, d                                        ; $515d: $42
	jp   nz, $3e3c                                   ; $515e: $c2 $3c $3e

	ld   a, $81                                      ; $5161: $3e $81
	nop                                              ; $5163: $00
	rst  $38                                         ; $5164: $ff
	ld   a, $c0                                      ; $5165: $3e $c0
	ld   de, $00ff                                   ; $5167: $11 $ff $00
	nop                                              ; $516a: $00
	rst  $38                                         ; $516b: $ff
	nop                                              ; $516c: $00
	rst  $38                                         ; $516d: $ff
	nop                                              ; $516e: $00
	rst  $38                                         ; $516f: $ff
	ldh  a, [$ee]                                    ; $5170: $f0 $ee
	ldh  a, [$ec]                                    ; $5172: $f0 $ec
	ldh  a, [$e9]                                    ; $5174: $f0 $e9
	ld   [hl], b                                     ; $5176: $70
	ld   l, e                                        ; $5177: $6b
	ldh  a, [$6e]                                    ; $5178: $f0 $6e
	ldh  a, [$6c]                                    ; $517a: $f0 $6c
	ld   [hl], b                                     ; $517c: $70
	jp   hl                                          ; $517d: $e9


	jr   nc, jr_025_512b                             ; $517e: $30 $ab

	nop                                              ; $5180: $00
	ld   h, [hl]                                     ; $5181: $66
	nop                                              ; $5182: $00
	call z, $9900                                    ; $5183: $cc $00 $99
	nop                                              ; $5186: $00
	inc  sp                                          ; $5187: $33
	nop                                              ; $5188: $00
	ld   h, [hl]                                     ; $5189: $66
	nop                                              ; $518a: $00
	call z, $9900                                    ; $518b: $cc $00 $99
	nop                                              ; $518e: $00
	inc  sp                                          ; $518f: $33
	rrca                                             ; $5190: $0f
	ld   l, [hl]                                     ; $5191: $6e
	rrca                                             ; $5192: $0f
	adc  $0f                                         ; $5193: $ce $0f
	sbc  [hl]                                        ; $5195: $9e
	rrca                                             ; $5196: $0f
	ld   a, $0f                                      ; $5197: $3e $0f
	ld   l, [hl]                                     ; $5199: $6e
	rrca                                             ; $519a: $0f
	adc  $0f                                         ; $519b: $ce $0f
	sbc  [hl]                                        ; $519d: $9e
	rrca                                             ; $519e: $0f
	ld   a, $50                                      ; $519f: $3e $50
	add  b                                           ; $51a1: $80
	ld   h, b                                        ; $51a2: $60
	and  b                                           ; $51a3: $a0
	ccf                                              ; $51a4: $3f
	cp   a                                           ; $51a5: $bf
	nop                                              ; $51a6: $00
	add  b                                           ; $51a7: $80
	ld   [hl], l                                     ; $51a8: $75
	adc  d                                           ; $51a9: $8a
	ld   h, a                                        ; $51aa: $67
	add  h                                           ; $51ab: $84
	ld   [bc], a                                     ; $51ac: $02
	di                                               ; $51ad: $f3
	ld   bc, $70f9                                   ; $51ae: $01 $f9 $70
	ret  nz                                          ; $51b1: $c0

	ld   h, b                                        ; $51b2: $60
	ret  nz                                          ; $51b3: $c0

	ld   d, b                                        ; $51b4: $50
	ret  nz                                          ; $51b5: $c0

	ld   h, b                                        ; $51b6: $60
	ret  nz                                          ; $51b7: $c0

	ld   d, b                                        ; $51b8: $50
	ret  nz                                          ; $51b9: $c0

	ld   h, b                                        ; $51ba: $60
	ret  nz                                          ; $51bb: $c0

	ld   d, b                                        ; $51bc: $50
	ret  nz                                          ; $51bd: $c0

	ld   h, b                                        ; $51be: $60
	ret  nz                                          ; $51bf: $c0

	cp   a                                           ; $51c0: $bf
	ld   a, a                                        ; $51c1: $7f
	ld   a, a                                        ; $51c2: $7f
	ldh  [$50], a                                    ; $51c3: $e0 $50
	ret  nz                                          ; $51c5: $c0

	ld   h, b                                        ; $51c6: $60
	ret  nz                                          ; $51c7: $c0

	ld   d, b                                        ; $51c8: $50
	ret  nz                                          ; $51c9: $c0

	ld   h, b                                        ; $51ca: $60
	ret  nz                                          ; $51cb: $c0

	ld   d, b                                        ; $51cc: $50
	ret  nz                                          ; $51cd: $c0

	ld   h, b                                        ; $51ce: $60
	ret  nz                                          ; $51cf: $c0

	nop                                              ; $51d0: $00
	nop                                              ; $51d1: $00
	nop                                              ; $51d2: $00
	nop                                              ; $51d3: $00
	nop                                              ; $51d4: $00
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	nop                                              ; $51d9: $00
	ld   [hl+], a                                    ; $51da: $22
	nop                                              ; $51db: $00
	ld   h, b                                        ; $51dc: $60
	nop                                              ; $51dd: $00
	cp   $00                                         ; $51de: $fe $00
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	ld   bc, $0100                                   ; $51e2: $01 $00 $01
	nop                                              ; $51e5: $00
	ld   hl, $0100                                   ; $51e6: $21 $00 $01
	nop                                              ; $51e9: $00
	inc  bc                                          ; $51ea: $03
	nop                                              ; $51eb: $00
	dec  b                                           ; $51ec: $05
	nop                                              ; $51ed: $00
	ccf                                              ; $51ee: $3f
	nop                                              ; $51ef: $00
	ld   d, b                                        ; $51f0: $50
	nop                                              ; $51f1: $00
	and  b                                           ; $51f2: $a0
	nop                                              ; $51f3: $00
	ld   d, b                                        ; $51f4: $50
	nop                                              ; $51f5: $00
	and  b                                           ; $51f6: $a0
	nop                                              ; $51f7: $00
	ret  nc                                          ; $51f8: $d0

	nop                                              ; $51f9: $00
	and  b                                           ; $51fa: $a0
	nop                                              ; $51fb: $00
	ret  nc                                          ; $51fc: $d0

	nop                                              ; $51fd: $00
	rst  $38                                         ; $51fe: $ff
	nop                                              ; $51ff: $00
	ld   l, a                                        ; $5200: $6f
	add  b                                           ; $5201: $80
	ld   a, a                                        ; $5202: $7f
	add  b                                           ; $5203: $80
	ld   a, [hl]                                     ; $5204: $7e
	add  c                                           ; $5205: $81
	ld   [hl], d                                     ; $5206: $72
	adc  h                                           ; $5207: $8c
	ld   [hl], l                                     ; $5208: $75
	adc  b                                           ; $5209: $88
	ld   [hl], e                                     ; $520a: $73
	adc  h                                           ; $520b: $8c
	ld   a, [hl]                                     ; $520c: $7e
	add  c                                           ; $520d: $81
	ld   e, a                                        ; $520e: $5f
	and  b                                           ; $520f: $a0
	adc  $21                                         ; $5210: $ce $21
	adc  [hl]                                        ; $5212: $8e
	ld   h, c                                        ; $5213: $61
	ld   e, [hl]                                     ; $5214: $5e
	add  c                                           ; $5215: $81
	ld   a, [hl]                                     ; $5216: $7e
	ld   bc, $05fa                                   ; $5217: $01 $fa $05
	db   $fc                                         ; $521a: $fc
	ld   bc, $817e                                   ; $521b: $01 $7e $81
	sbc  [hl]                                        ; $521e: $9e
	ld   h, c                                        ; $521f: $61
	ld   e, l                                        ; $5220: $5d
	ld   h, d                                        ; $5221: $62
	ld   c, l                                        ; $5222: $4d
	ld   [hl], d                                     ; $5223: $72
	ld   d, l                                        ; $5224: $55
	ld   l, d                                        ; $5225: $6a
	ld   c, c                                        ; $5226: $49
	halt                                             ; $5227: $76
	ld   d, l                                        ; $5228: $55
	ld   l, d                                        ; $5229: $6a
	ld   b, c                                        ; $522a: $41
	ld   a, [hl]                                     ; $522b: $7e
	ld   b, c                                        ; $522c: $41
	ld   a, [hl]                                     ; $522d: $7e
	ld   e, a                                        ; $522e: $5f
	ld   h, b                                        ; $522f: $60

jr_025_5230:
	add  a                                           ; $5230: $87
	ld   hl, sp+$45                                  ; $5231: $f8 $45
	ld   a, b                                        ; $5233: $78
	rlca                                             ; $5234: $07
	jr   @+$07                                       ; $5235: $18 $05

	adc  b                                           ; $5237: $88
	add  a                                           ; $5238: $87
	ld   c, b                                        ; $5239: $48
	ret  nz                                          ; $523a: $c0

	jr   c, @-$1f                                    ; $523b: $38 $df

	ccf                                              ; $523d: $3f
	ld   b, b                                        ; $523e: $40
	rra                                              ; $523f: $1f
	nop                                              ; $5240: $00
	db   $fc                                         ; $5241: $fc
	nop                                              ; $5242: $00
	cp   $00                                         ; $5243: $fe $00
	rst  $38                                         ; $5245: $ff
	push bc                                          ; $5246: $c5
	ld   a, [hl-]                                    ; $5247: $3a
	ld   a, [bc]                                     ; $5248: $0a
	dec  [hl]                                        ; $5249: $35
	ld   e, a                                        ; $524a: $5f
	ld   h, b                                        ; $524b: $60
	set  4, b                                        ; $524c: $cb $e0
	dec  d                                           ; $524e: $15
	ret  nz                                          ; $524f: $c0

	nop                                              ; $5250: $00
	rst  $38                                         ; $5251: $ff
	nop                                              ; $5252: $00
	rst  $38                                         ; $5253: $ff
	xor  d                                           ; $5254: $aa
	ld   d, l                                        ; $5255: $55
	ld   d, b                                        ; $5256: $50
	xor  a                                           ; $5257: $af
	ldh  [rAUD1SWEEP], a                             ; $5258: $e0 $10
	and  $16                                         ; $525a: $e6 $16
	and  b                                           ; $525c: $a0
	db   $10                                         ; $525d: $10
	ld   e, a                                        ; $525e: $5f
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	rst  $38                                         ; $5261: $ff
	nop                                              ; $5262: $00
	rst  $38                                         ; $5263: $ff
	nop                                              ; $5264: $00
	add  b                                           ; $5265: $80
	ld   b, b                                        ; $5266: $40
	ret  nz                                          ; $5267: $c0

	cp   $7e                                         ; $5268: $fe $7e
	ret  nz                                          ; $526a: $c0

	ld   b, b                                        ; $526b: $40
	nop                                              ; $526c: $00
	add  b                                           ; $526d: $80
	ccf                                              ; $526e: $3f
	ret  nz                                          ; $526f: $c0

	ld   d, b                                        ; $5270: $50
	adc  [hl]                                        ; $5271: $8e
	ld   [hl], b                                     ; $5272: $70
	adc  h                                           ; $5273: $8c
	ld   [hl], b                                     ; $5274: $70
	adc  c                                           ; $5275: $89
	ld   [hl], h                                     ; $5276: $74
	adc  e                                           ; $5277: $8b
	ld   [hl], c                                     ; $5278: $71
	adc  [hl]                                        ; $5279: $8e
	ld   [hl], e                                     ; $527a: $73
	adc  h                                           ; $527b: $8c
	ld   [hl], b                                     ; $527c: $70
	adc  a                                           ; $527d: $8f
	rrca                                             ; $527e: $0f
	ldh  a, [rP1]                                    ; $527f: $f0 $00
	ld   h, [hl]                                     ; $5281: $66
	nop                                              ; $5282: $00
	call z, $9900                                    ; $5283: $cc $00 $99
	ld   b, h                                        ; $5286: $44
	inc  sp                                          ; $5287: $33
	sbc  c                                           ; $5288: $99
	ld   h, [hl]                                     ; $5289: $66
	inc  sp                                          ; $528a: $33
	call z, $ff00                                    ; $528b: $cc $00 $ff
	rst  $38                                         ; $528e: $ff
	nop                                              ; $528f: $00
	rrca                                             ; $5290: $0f
	ld   l, [hl]                                     ; $5291: $6e
	rrca                                             ; $5292: $0f
	adc  $0f                                         ; $5293: $ce $0f
	sbc  [hl]                                        ; $5295: $9e
	ld   c, c                                        ; $5296: $49
	jr   c, jr_025_5230                              ; $5297: $38 $97

	ld   h, b                                        ; $5299: $60
	scf                                              ; $529a: $37
	ret  nz                                          ; $529b: $c0

	rrca                                             ; $529c: $0f
	ldh  a, [$f0]                                    ; $529d: $f0 $f0
	rrca                                             ; $529f: $0f
	nop                                              ; $52a0: $00
	db   $fc                                         ; $52a1: $fc
	nop                                              ; $52a2: $00
	cp   $00                                         ; $52a3: $fe $00
	rst  $38                                         ; $52a5: $ff
	push de                                          ; $52a6: $d5
	ld   a, [hl+]                                    ; $52a7: $2a
	ld   a, [bc]                                     ; $52a8: $0a
	dec  [hl]                                        ; $52a9: $35
	ld   a, a                                        ; $52aa: $7f
	ld   b, b                                        ; $52ab: $40
	rst  JumpTable                                         ; $52ac: $df
	ldh  [$61], a                                    ; $52ad: $e0 $61
	add  b                                           ; $52af: $80
	ld   d, b                                        ; $52b0: $50
	ret  nz                                          ; $52b1: $c0

	ld   h, b                                        ; $52b2: $60
	ret  nz                                          ; $52b3: $c0

	ld   d, b                                        ; $52b4: $50
	ret  nz                                          ; $52b5: $c0

	ld   h, b                                        ; $52b6: $60
	ret  nz                                          ; $52b7: $c0

	ld   d, b                                        ; $52b8: $50
	ret  nz                                          ; $52b9: $c0

	ld   h, b                                        ; $52ba: $60
	ret  nz                                          ; $52bb: $c0

	ld   d, b                                        ; $52bc: $50
	ret  nz                                          ; $52bd: $c0

	ccf                                              ; $52be: $3f
	cp   a                                           ; $52bf: $bf
	ld   d, b                                        ; $52c0: $50
	ret  nz                                          ; $52c1: $c0

	ld   a, a                                        ; $52c2: $7f
	ret  nz                                          ; $52c3: $c0

	ld   [hl], b                                     ; $52c4: $70
	ret  nz                                          ; $52c5: $c0

	and  b                                           ; $52c6: $a0
	ld   a, a                                        ; $52c7: $7f
	and  b                                           ; $52c8: $a0
	ld   a, e                                        ; $52c9: $7b
	ld   b, h                                        ; $52ca: $44
	cp   $44                                         ; $52cb: $fe $44
	rst  $30                                         ; $52cd: $f7
	ld   c, l                                        ; $52ce: $4d
	or   $81                                         ; $52cf: $f6 $81
	ld   d, d                                        ; $52d1: $52
	add  hl, hl                                      ; $52d2: $29
	sbc  d                                           ; $52d3: $9a
	jp   hl                                          ; $52d4: $e9


	ld   a, [de]                                     ; $52d5: $1a
	ld   sp, hl                                      ; $52d6: $f9
	ld   a, [$0205]                                  ; $52d7: $fa $05 $02
	inc  bc                                          ; $52da: $03
	db   $fc                                         ; $52db: $fc
	ld   a, [$f400]                                  ; $52dc: $fa $00 $f4
	nop                                              ; $52df: $00
	ld   bc, $0300                                   ; $52e0: $01 $00 $03
	nop                                              ; $52e3: $00
	ld   bc, $0100                                   ; $52e4: $01 $00 $01
	nop                                              ; $52e7: $00
	ld   bc, $0500                                   ; $52e8: $01 $00 $05
	nop                                              ; $52eb: $00
	ld   bc, $0000                                   ; $52ec: $01 $00 $00
	nop                                              ; $52ef: $00
	push de                                          ; $52f0: $d5
	ld   a, $64                                      ; $52f1: $3e $64
	ld   l, [hl]                                     ; $52f3: $6e
	rlca                                             ; $52f4: $07
	db   $fc                                         ; $52f5: $fc
	ld   a, [hl]                                     ; $52f6: $7e
	ld   a, b                                        ; $52f7: $78
	inc  b                                           ; $52f8: $04
	ld   hl, sp-$40                                  ; $52f9: $f8 $c0
	nop                                              ; $52fb: $00
	ret  nz                                          ; $52fc: $c0

	nop                                              ; $52fd: $00
	ret  nz                                          ; $52fe: $c0

	nop                                              ; $52ff: $00
	ld   a, a                                        ; $5300: $7f
	cp   a                                           ; $5301: $bf
	cp   a                                           ; $5302: $bf
	ld   b, b                                        ; $5303: $40
	or   b                                           ; $5304: $b0
	ld   l, a                                        ; $5305: $6f
	or   b                                           ; $5306: $b0
	ld   l, a                                        ; $5307: $6f
	or   b                                           ; $5308: $b0
	ld   l, a                                        ; $5309: $6f
	or   d                                           ; $530a: $b2
	ld   l, l                                        ; $530b: $6d
	or   l                                           ; $530c: $b5
	ld   c, d                                        ; $530d: $4a
	ld   b, b                                        ; $530e: $40
	jr   nc, jr_025_5311                             ; $530f: $30 $00

jr_025_5311:
	nop                                              ; $5311: $00
	jr   jr_025_5324                                 ; $5312: $18 $10

	jr   jr_025_5316                                 ; $5314: $18 $00

jr_025_5316:
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	nop                                              ; $5319: $00
	jr   jr_025_532c                                 ; $531a: $18 $10

	jr   jr_025_531e                                 ; $531c: $18 $00

jr_025_531e:
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	ld   c, e                                        ; $5320: $4b
	add  h                                           ; $5321: $84
	ld   [hl], e                                     ; $5322: $73
	ld   [hl], b                                     ; $5323: $70

jr_025_5324:
	call $42b0                                       ; $5324: $cd $b0 $42
	adc  l                                           ; $5327: $8d
	ld   c, d                                        ; $5328: $4a
	add  l                                           ; $5329: $85
	ld   c, b                                        ; $532a: $48
	add  a                                           ; $532b: $87

jr_025_532c:
	ld   c, e                                        ; $532c: $4b
	add  h                                           ; $532d: $84
	ld   c, e                                        ; $532e: $4b
	add  h                                           ; $532f: $84
	ret  nc                                          ; $5330: $d0

	nop                                              ; $5331: $00
	and  d                                           ; $5332: $a2
	nop                                              ; $5333: $00
	call nc, $a000                                   ; $5334: $d4 $00 $a0
	nop                                              ; $5337: $00
	ret  nc                                          ; $5338: $d0

	nop                                              ; $5339: $00
	and  b                                           ; $533a: $a0
	nop                                              ; $533b: $00
	ret  nc                                          ; $533c: $d0

	nop                                              ; $533d: $00
	and  b                                           ; $533e: $a0
	nop                                              ; $533f: $00
	ld   bc, $0100                                   ; $5340: $01 $00 $01
	nop                                              ; $5343: $00
	ld   bc, $0100                                   ; $5344: $01 $00 $01
	nop                                              ; $5347: $00
	ld   bc, $050c                                   ; $5348: $01 $0c $05
	ld   c, $06                                      ; $534b: $0e $06
	rla                                              ; $534d: $17
	rrca                                             ; $534e: $0f
	rra                                              ; $534f: $1f
	pop  hl                                          ; $5350: $e1
	cp   $c0                                         ; $5351: $fe $c0
	rst  $38                                         ; $5353: $ff
	pop  bc                                          ; $5354: $c1
	cp   $44                                         ; $5355: $fe $44
	cp   b                                           ; $5357: $b8
	db   $10                                         ; $5358: $10
	ldh  [rP1], a                                    ; $5359: $e0 $00
	nop                                              ; $535b: $00
	nop                                              ; $535c: $00
	nop                                              ; $535d: $00
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	cp   $00                                         ; $5360: $fe $00
	db   $fd                                         ; $5362: $fd
	nop                                              ; $5363: $00
	cp   $00                                         ; $5364: $fe $00
	db   $fd                                         ; $5366: $fd
	nop                                              ; $5367: $00
	ld   a, [$fd00]                                  ; $5368: $fa $00 $fd
	nop                                              ; $536b: $00
	ld   a, [$f400]                                  ; $536c: $fa $00 $f4
	nop                                              ; $536f: $00
	dec  c                                           ; $5370: $0d
	ld   c, $0d                                      ; $5371: $0e $0d
	ld   c, $0d                                      ; $5373: $0e $0d
	ld   c, $0d                                      ; $5375: $0e $0d
	ld   c, $0d                                      ; $5377: $0e $0d
	ld   c, $0d                                      ; $5379: $0e $0d
	ld   c, $0d                                      ; $537b: $0e $0d
	ld   c, $0d                                      ; $537d: $0e $0d
	ld   c, $00                                      ; $537f: $0e $00
	rst  $38                                         ; $5381: $ff
	nop                                              ; $5382: $00
	rst  $38                                         ; $5383: $ff
	nop                                              ; $5384: $00
	rst  $38                                         ; $5385: $ff
	nop                                              ; $5386: $00
	rst  $38                                         ; $5387: $ff
	nop                                              ; $5388: $00
	rst  $38                                         ; $5389: $ff
	nop                                              ; $538a: $00
	rst  $38                                         ; $538b: $ff
	nop                                              ; $538c: $00
	rst  $38                                         ; $538d: $ff
	nop                                              ; $538e: $00
	rst  $38                                         ; $538f: $ff
	ld   h, b                                        ; $5390: $60
	ret  nz                                          ; $5391: $c0

	ld   d, b                                        ; $5392: $50
	ret  nz                                          ; $5393: $c0

	ld   h, b                                        ; $5394: $60
	ret  nz                                          ; $5395: $c0

	ld   a, d                                        ; $5396: $7a
	jp   z, $d575                                    ; $5397: $ca $75 $d5

	ld   h, b                                        ; $539a: $60
	rst  JumpTable                                         ; $539b: $df
	ld   a, a                                        ; $539c: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $539d: $cf
	ld   h, b                                        ; $539e: $60
	rst  JumpTable                                         ; $539f: $df
	ld   b, $03                                      ; $53a0: $06 $03
	ld   a, [bc]                                     ; $53a2: $0a
	inc  bc                                          ; $53a3: $03
	ld   b, $03                                      ; $53a4: $06 $03
	xor  d                                           ; $53a6: $aa
	xor  e                                           ; $53a7: $ab
	ld   d, [hl]                                     ; $53a8: $56
	ld   d, a                                        ; $53a9: $57
	ld   [bc], a                                     ; $53aa: $02
	rst  $38                                         ; $53ab: $ff
	cp   $ff                                         ; $53ac: $fe $ff
	ld   b, $fb                                      ; $53ae: $06 $fb
	sbc  a                                           ; $53b0: $9f
	rst  JumpTable                                         ; $53b1: $df
	rst  JumpTable                                         ; $53b2: $df
	ldh  [$e0], a                                    ; $53b3: $e0 $e0
	rst  $38                                         ; $53b5: $ff
	cp   $f1                                         ; $53b6: $fe $f1
	ld   a, l                                        ; $53b8: $7d
	ld   a, [$f53a]                                  ; $53b9: $fa $3a $f5
	ld   [hl], l                                     ; $53bc: $75
	ld   a, [$fce3]                                  ; $53bd: $fa $e3 $fc
	ld   a, a                                        ; $53c0: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53c1: $cf
	ld   h, b                                        ; $53c2: $60
	rst  JumpTable                                         ; $53c3: $df
	ld   a, a                                        ; $53c4: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53c5: $cf
	ld   h, b                                        ; $53c6: $60
	rst  JumpTable                                         ; $53c7: $df
	ld   e, a                                        ; $53c8: $5f
	and  b                                           ; $53c9: $a0
	ldh  [$1f], a                                    ; $53ca: $e0 $1f
	rst  $38                                         ; $53cc: $ff
	nop                                              ; $53cd: $00
	rst  $38                                         ; $53ce: $ff
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	nop                                              ; $53d1: $00
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	ld   b, b                                        ; $53d4: $40
	nop                                              ; $53d5: $00
	nop                                              ; $53d6: $00
	nop                                              ; $53d7: $00
	nop                                              ; $53d8: $00
	nop                                              ; $53d9: $00
	jr   nz, jr_025_53dc                             ; $53da: $20 $00

jr_025_53dc:
	ld   l, b                                        ; $53dc: $68
	nop                                              ; $53dd: $00
	or   $00                                         ; $53de: $f6 $00
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	ld   bc, $0900                                   ; $53e2: $01 $00 $09
	nop                                              ; $53e5: $00
	inc  bc                                          ; $53e6: $03
	nop                                              ; $53e7: $00
	ld   b, c                                        ; $53e8: $41
	nop                                              ; $53e9: $00
	inc  bc                                          ; $53ea: $03
	nop                                              ; $53eb: $00
	rla                                              ; $53ec: $17
	nop                                              ; $53ed: $00
	ld   a, a                                        ; $53ee: $7f
	nop                                              ; $53ef: $00
	ld   d, $0f                                      ; $53f0: $16 $0f
	ld   d, $0f                                      ; $53f2: $16 $0f
	ld   d, $0f                                      ; $53f4: $16 $0f
	ld   d, $0f                                      ; $53f6: $16 $0f
	ld   d, $0f                                      ; $53f8: $16 $0f
	ld   d, $0f                                      ; $53fa: $16 $0f
	ld   d, $0f                                      ; $53fc: $16 $0f
	ld   d, $0f                                      ; $53fe: $16 $0f
	ret  nz                                          ; $5400: $c0

	nop                                              ; $5401: $00
	and  b                                           ; $5402: $a0
	nop                                              ; $5403: $00
	ret  nz                                          ; $5404: $c0

	nop                                              ; $5405: $00
	ldh  [rP1], a                                    ; $5406: $e0 $00
	ret  nz                                          ; $5408: $c0

	nop                                              ; $5409: $00
	ld   [$bf0a], a                                  ; $540a: $ea $0a $bf
	ccf                                              ; $540d: $3f
	call nz, $0022                                   ; $540e: $c4 $22 $00
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	ld   bc, $0100                                   ; $5414: $01 $00 $01
	nop                                              ; $5417: $00
	ld   bc, $0100                                   ; $5418: $01 $00 $01
	nop                                              ; $541b: $00
	rst  $38                                         ; $541c: $ff
	cp   $45                                         ; $541d: $fe $45
	ld   [hl+], a                                    ; $541f: $22
	nop                                              ; $5420: $00
	cp   $7e                                         ; $5421: $fe $7e
	add  c                                           ; $5423: $81
	nop                                              ; $5424: $00
	add  c                                           ; $5425: $81
	nop                                              ; $5426: $00
	add  c                                           ; $5427: $81
	nop                                              ; $5428: $00
	ld   bc, $fff0                                   ; $5429: $01 $f0 $ff
	ld   [$04f9], sp                                 ; $542c: $08 $f9 $04
	dec  c                                           ; $542f: $0d
	ret  nc                                          ; $5430: $d0

	nop                                              ; $5431: $00
	and  c                                           ; $5432: $a1
	nop                                              ; $5433: $00
	ret  nc                                          ; $5434: $d0

	nop                                              ; $5435: $00
	and  b                                           ; $5436: $a0
	nop                                              ; $5437: $00
	pop  de                                          ; $5438: $d1
	nop                                              ; $5439: $00
	and  d                                           ; $543a: $a2
	nop                                              ; $543b: $00
	rst  $10                                         ; $543c: $d7
	nop                                              ; $543d: $00
	rst  $38                                         ; $543e: $ff
	nop                                              ; $543f: $00
	rrca                                             ; $5440: $0f
	cpl                                              ; $5441: $2f
	ld   de, $113f                                   ; $5442: $11 $3f $11
	ld   e, a                                        ; $5445: $5f
	jr   c, jr_025_54bf                              ; $5446: $38 $77

	cp   b                                           ; $5448: $b8
	ld   a, a                                        ; $5449: $7f
	ld   e, d                                        ; $544a: $5a
	ccf                                              ; $544b: $3f
	cpl                                              ; $544c: $2f
	rra                                              ; $544d: $1f
	rla                                              ; $544e: $17
	rrca                                             ; $544f: $0f
	nop                                              ; $5450: $00
	rst  $38                                         ; $5451: $ff
	nop                                              ; $5452: $00
	rst  $38                                         ; $5453: $ff
	xor  d                                           ; $5454: $aa
	ld   d, l                                        ; $5455: $55
	ld   d, l                                        ; $5456: $55
	nop                                              ; $5457: $00
	rst  $38                                         ; $5458: $ff
	xor  d                                           ; $5459: $aa
	nop                                              ; $545a: $00
	ld   d, l                                        ; $545b: $55
	ld   a, [hl+]                                    ; $545c: $2a
	push de                                          ; $545d: $d5
	rst  $38                                         ; $545e: $ff
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	rst  $38                                         ; $5461: $ff
	nop                                              ; $5462: $00
	rst  $38                                         ; $5463: $ff
	adc  d                                           ; $5464: $8a
	ld   [hl], l                                     ; $5465: $75
	ld   b, l                                        ; $5466: $45
	ld   a, [de]                                     ; $5467: $1a
	sub  a                                           ; $5468: $97
	adc  b                                           ; $5469: $88
	and  a                                           ; $546a: $a7
	jr   z, @-$6c                                    ; $546b: $28 $92

	ld   c, b                                        ; $546d: $48
	db   $ed                                         ; $546e: $ed
	stop                                             ; $546f: $10 $00
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00
	ld   bc, $0301                                   ; $5473: $01 $01 $03
	ld   [bc], a                                     ; $5476: $02
	rlca                                             ; $5477: $07
	dec  b                                           ; $5478: $05
	ld   c, $0b                                      ; $5479: $0e $0b
	inc  e                                           ; $547b: $1c
	rla                                              ; $547c: $17
	add  hl, sp                                      ; $547d: $39
	xor  a                                           ; $547e: $af
	ld   [hl], d                                     ; $547f: $72
	nop                                              ; $5480: $00
	ret  nz                                          ; $5481: $c0

	ret  nz                                          ; $5482: $c0

	ldh  a, [$30]                                    ; $5483: $f0 $30
	db   $fc                                         ; $5485: $fc
	call z, $e33f                                    ; $5486: $cc $3f $e3
	ld   e, a                                        ; $5489: $5f
	call c, $bfa3                                    ; $548a: $dc $a3 $bf
	ld   b, d                                        ; $548d: $42
	ld   a, [hl]                                     ; $548e: $7e
	add  l                                           ; $548f: $85
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	ret  nz                                          ; $5499: $c0

	ret  nz                                          ; $549a: $c0

	ldh  a, [$30]                                    ; $549b: $f0 $30
	ld   hl, sp-$5a                                  ; $549d: $f8 $a6
	ld   a, b                                        ; $549f: $78
	ldh  a, [rIF]                                    ; $54a0: $f0 $0f
	ldh  a, [rIF]                                    ; $54a2: $f0 $0f
	ldh  a, [rIF]                                    ; $54a4: $f0 $0f
	ldh  a, [rIF]                                    ; $54a6: $f0 $0f
	ldh  a, [rIF]                                    ; $54a8: $f0 $0f
	ldh  a, [rIF]                                    ; $54aa: $f0 $0f
	ldh  a, [rIF]                                    ; $54ac: $f0 $0f
	ldh  a, [rIF]                                    ; $54ae: $f0 $0f
	ld   [hl], a                                     ; $54b0: $77
	add  b                                           ; $54b1: $80
	ld   [hl], d                                     ; $54b2: $72
	add  b                                           ; $54b3: $80
	ld   [hl], l                                     ; $54b4: $75
	add  b                                           ; $54b5: $80
	ld   [hl], b                                     ; $54b6: $70
	add  b                                           ; $54b7: $80
	ld   [hl], b                                     ; $54b8: $70
	add  b                                           ; $54b9: $80
	ld   a, a                                        ; $54ba: $7f
	add  b                                           ; $54bb: $80
	cp   a                                           ; $54bc: $bf
	ld   b, b                                        ; $54bd: $40
	ccf                                              ; $54be: $3f

jr_025_54bf:
	ccf                                              ; $54bf: $3f
	rst  $38                                         ; $54c0: $ff
	nop                                              ; $54c1: $00
	xor  d                                           ; $54c2: $aa
	nop                                              ; $54c3: $00
	ld   d, l                                        ; $54c4: $55
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	rst  $38                                         ; $54ca: $ff
	nop                                              ; $54cb: $00
	rst  $38                                         ; $54cc: $ff
	nop                                              ; $54cd: $00
	rst  $38                                         ; $54ce: $ff
	rst  $38                                         ; $54cf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d0: $cf
	ld   de, $11af                                   ; $54d1: $11 $af $11
	ld   c, a                                        ; $54d4: $4f
	ld   de, $110f                                   ; $54d5: $11 $0f $11
	rrca                                             ; $54d8: $0f
	ld   de, $01ff                                   ; $54d9: $11 $ff $01
	db   $fc                                         ; $54dc: $fc
	nop                                              ; $54dd: $00
	db   $fc                                         ; $54de: $fc
	db   $fc                                         ; $54df: $fc
	ld   e, a                                        ; $54e0: $5f
	sbc  a                                           ; $54e1: $9f
	nop                                              ; $54e2: $00
	rst  $38                                         ; $54e3: $ff
	nop                                              ; $54e4: $00
	rst  $38                                         ; $54e5: $ff
	nop                                              ; $54e6: $00
	rst  $38                                         ; $54e7: $ff
	nop                                              ; $54e8: $00
	rst  $38                                         ; $54e9: $ff
	nop                                              ; $54ea: $00
	rst  $38                                         ; $54eb: $ff
	ld   e, a                                        ; $54ec: $5f
	sbc  a                                           ; $54ed: $9f
	ld   a, b                                        ; $54ee: $78
	add  b                                           ; $54ef: $80
	ld   e, [hl]                                     ; $54f0: $5e
	jr   nz, jr_025_5548                             ; $54f1: $20 $55

	ld   h, b                                        ; $54f3: $60
	ld   e, b                                        ; $54f4: $58
	ldh  [rHDMA5], a                                 ; $54f5: $e0 $55
	ldh  [$58], a                                    ; $54f7: $e0 $58
	ldh  [rHDMA5], a                                 ; $54f9: $e0 $55
	ld   h, b                                        ; $54fb: $60
	ld   c, d                                        ; $54fc: $4a
	ld   h, b                                        ; $54fd: $60
	ld   e, l                                        ; $54fe: $5d
	ld   h, b                                        ; $54ff: $60
	xor  d                                           ; $5500: $aa
	nop                                              ; $5501: $00
	call nc, $a000                                   ; $5502: $d4 $00 $a0
	nop                                              ; $5505: $00
	ret  nz                                          ; $5506: $c0

	nop                                              ; $5507: $00
	rst  $38                                         ; $5508: $ff
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	rst  $38                                         ; $550b: $ff
	ld   bc, $55fe                                   ; $550c: $01 $fe $55
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	rra                                              ; $5514: $1f
	nop                                              ; $5515: $00
	jr   nz, @+$21                                   ; $5516: $20 $1f

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5518: $cf
	cpl                                              ; $5519: $2f
	db   $10                                         ; $551a: $10
	ret  nc                                          ; $551b: $d0

	ldh  [$e0], a                                    ; $551c: $e0 $e0
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	db   $ec                                         ; $5520: $ec
	ld   de, $38d7                                   ; $5521: $11 $d7 $38
	cp   a                                           ; $5524: $bf
	ld   e, a                                        ; $5525: $5f
	ld   bc, $dfde                                   ; $5526: $01 $de $df
	ldh  [$09], a                                    ; $5529: $e0 $09
	db   $10                                         ; $552b: $10
	add  hl, bc                                      ; $552c: $09
	db   $10                                         ; $552d: $10
	add  hl, bc                                      ; $552e: $09
	stop                                             ; $552f: $10 $00
	jr   nc, @-$0a                                   ; $5531: $30 $f4

	jr   c, jr_025_557d                              ; $5533: $38 $48

	call nz, $8448                                   ; $5535: $c4 $48 $84
	ld   c, d                                        ; $5538: $4a
	add  h                                           ; $5539: $84
	ld   c, e                                        ; $553a: $4b
	add  h                                           ; $553b: $84
	ld   c, e                                        ; $553c: $4b
	add  h                                           ; $553d: $84
	ld   c, e                                        ; $553e: $4b
	add  h                                           ; $553f: $84
	dec  bc                                          ; $5540: $0b
	rlca                                             ; $5541: $07
	dec  b                                           ; $5542: $05
	inc  bc                                          ; $5543: $03
	ld   [bc], a                                     ; $5544: $02
	ld   bc, $0001                                   ; $5545: $01 $01 $00

jr_025_5548:
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	nop                                              ; $554e: $00
	nop                                              ; $554f: $00

jr_025_5550:
	ld   c, h                                        ; $5550: $4c
	adc  l                                           ; $5551: $8d
	ld   e, h                                        ; $5552: $5c
	sbc  l                                           ; $5553: $9d
	ld   c, h                                        ; $5554: $4c
	adc  l                                           ; $5555: $8d
	ld   e, h                                        ; $5556: $5c
	sbc  l                                           ; $5557: $9d
	ld   c, h                                        ; $5558: $4c
	adc  l                                           ; $5559: $8d
	ld   e, h                                        ; $555a: $5c
	sbc  l                                           ; $555b: $9d
	ld   c, h                                        ; $555c: $4c
	adc  l                                           ; $555d: $8d
	ld   e, h                                        ; $555e: $5c
	sbc  l                                           ; $555f: $9d
	db   $fc                                         ; $5560: $fc
	ld   e, $fd                                      ; $5561: $1e $fd
	ld   c, $fc                                      ; $5563: $0e $fc
	ld   b, $fd                                      ; $5565: $06 $fd
	ld   [bc], a                                     ; $5567: $02
	db   $fc                                         ; $5568: $fc
	ld   [bc], a                                     ; $5569: $02
	ld   bc, $7efe                                   ; $556a: $01 $fe $7e
	add  b                                           ; $556d: $80
	ld   a, a                                        ; $556e: $7f
	add  b                                           ; $556f: $80
	cp   [hl]                                        ; $5570: $be
	ld   [hl], c                                     ; $5571: $71
	xor  l                                           ; $5572: $ad
	ld   e, [hl]                                     ; $5573: $5e
	cp   e                                           ; $5574: $bb
	ld   b, a                                        ; $5575: $47
	cp   [hl]                                        ; $5576: $be
	ld   b, c                                        ; $5577: $41
	cp   a                                           ; $5578: $bf
	ld   b, b                                        ; $5579: $40
	cp   a                                           ; $557a: $bf
	ld   b, b                                        ; $557b: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $557c: $cf

jr_025_557d:
	jr   nc, jr_025_55b2                             ; $557d: $30 $33

	inc  c                                           ; $557f: $0c
	db   $fd                                         ; $5580: $fd
	ld   a, [bc]                                     ; $5581: $0a
	ei                                               ; $5582: $fb
	inc  d                                           ; $5583: $14
	rst  $30                                         ; $5584: $f7
	add  hl, bc                                      ; $5585: $09
	adc  $d3                                         ; $5586: $ce $d3
	cp   l                                           ; $5588: $bd
	halt                                             ; $5589: $76
	ld   [$f91d], a                                  ; $558a: $ea $1d $f9
	ld   b, $fa                                      ; $558d: $06 $fa
	dec  b                                           ; $558f: $05
	ret  nc                                          ; $5590: $d0

	ld   l, b                                        ; $5591: $68
	and  b                                           ; $5592: $a0
	sbc  $4e                                         ; $5593: $de $4e
	or   l                                           ; $5595: $b5
	adc  [hl]                                        ; $5596: $8e
	ld   [hl], l                                     ; $5597: $75
	ld   c, [hl]                                     ; $5598: $4e
	or   c                                           ; $5599: $b1
	adc  [hl]                                        ; $559a: $8e
	ld   [hl], c                                     ; $559b: $71
	jr   nc, @-$30                                   ; $559c: $30 $ce

	ld   a, b                                        ; $559e: $78
	add  b                                           ; $559f: $80
	nop                                              ; $55a0: $00
	rst  $38                                         ; $55a1: $ff
	ld   a, a                                        ; $55a2: $7f
	add  b                                           ; $55a3: $80
	nop                                              ; $55a4: $00
	add  b                                           ; $55a5: $80
	nop                                              ; $55a6: $00
	add  b                                           ; $55a7: $80
	nop                                              ; $55a8: $00
	add  b                                           ; $55a9: $80
	ld   a, a                                        ; $55aa: $7f
	rst  $38                                         ; $55ab: $ff
	rra                                              ; $55ac: $1f
	sub  b                                           ; $55ad: $90
	jr   nc, jr_025_5550                             ; $55ae: $30 $a0

	nop                                              ; $55b0: $00
	rst  $38                                         ; $55b1: $ff

jr_025_55b2:
	cp   $01                                         ; $55b2: $fe $01
	nop                                              ; $55b4: $00
	ld   bc, $0100                                   ; $55b5: $01 $00 $01
	nop                                              ; $55b8: $00
	ld   bc, $fffe                                   ; $55b9: $01 $fe $ff
	ld   hl, sp+$09                                  ; $55bc: $f8 $09
	inc  c                                           ; $55be: $0c
	dec  b                                           ; $55bf: $05
	ld   [$8bf3], sp                                 ; $55c0: $08 $f3 $8b
	ld   [hl], e                                     ; $55c3: $73
	adc  a                                           ; $55c4: $8f
	ld   [hl], b                                     ; $55c5: $70
	nop                                              ; $55c6: $00
	rst  $38                                         ; $55c7: $ff
	ld   a, l                                        ; $55c8: $7d
	add  d                                           ; $55c9: $82
	ld   c, $f1                                      ; $55ca: $0e $f1
	nop                                              ; $55cc: $00
	rrca                                             ; $55cd: $0f
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	ld   h, b                                        ; $55d0: $60
	xor  a                                           ; $55d1: $af
	rst  $20                                         ; $55d2: $e7
	rst  $28                                         ; $55d3: $ef
	jr   nz, jr_025_55fe                             ; $55d4: $20 $28

	nop                                              ; $55d6: $00
	rst  $38                                         ; $55d7: $ff
	db   $fd                                         ; $55d8: $fd
	ld   [bc], a                                     ; $55d9: $02
	ld   c, $f1                                      ; $55da: $0e $f1
	nop                                              ; $55dc: $00
	rrca                                             ; $55dd: $0f
	nop                                              ; $55de: $00
	nop                                              ; $55df: $00
	ld   a, b                                        ; $55e0: $78
	add  b                                           ; $55e1: $80
	ld   [hl], b                                     ; $55e2: $70
	add  b                                           ; $55e3: $80
	ld   h, b                                        ; $55e4: $60
	add  b                                           ; $55e5: $80
	ld   h, b                                        ; $55e6: $60
	add  b                                           ; $55e7: $80
	ld   l, b                                        ; $55e8: $68
	add  b                                           ; $55e9: $80
	ld   [hl], l                                     ; $55ea: $75
	add  b                                           ; $55eb: $80
	ld   l, d                                        ; $55ec: $6a
	add  b                                           ; $55ed: $80
	ld   [hl], l                                     ; $55ee: $75
	add  b                                           ; $55ef: $80
	ld   e, d                                        ; $55f0: $5a
	ld   h, b                                        ; $55f1: $60
	ld   d, h                                        ; $55f2: $54
	ld   h, b                                        ; $55f3: $60
	ld   e, d                                        ; $55f4: $5a
	ld   h, b                                        ; $55f5: $60
	ld   d, h                                        ; $55f6: $54
	ld   h, b                                        ; $55f7: $60
	ld   e, d                                        ; $55f8: $5a
	ld   h, b                                        ; $55f9: $60
	ld   d, l                                        ; $55fa: $55
	ld   h, b                                        ; $55fb: $60
	ld   e, [hl]                                     ; $55fc: $5e
	ld   h, b                                        ; $55fd: $60

jr_025_55fe:
	ld   e, a                                        ; $55fe: $5f
	ld   h, b                                        ; $55ff: $60
	nop                                              ; $5600: $00
	ld   bc, $0100                                   ; $5601: $01 $00 $01
	ld   d, h                                        ; $5604: $54
	ld   d, l                                        ; $5605: $55
	xor  d                                           ; $5606: $aa
	xor  e                                           ; $5607: $ab
	cp   $ff                                         ; $5608: $fe $ff
	cp   $ff                                         ; $560a: $fe $ff
	nop                                              ; $560c: $00
	ld   bc, $0100                                   ; $560d: $01 $00 $01
	ld   [hl-], a                                    ; $5610: $32
	ld   bc, $3172                                   ; $5611: $01 $72 $31
	or   h                                           ; $5614: $b4
	ld   [hl], e                                     ; $5615: $73
	cp   b                                           ; $5616: $b8
	ld   [hl], a                                     ; $5617: $77
	nop                                              ; $5618: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5619: $cf
	ld   b, $c9                                      ; $561a: $06 $c9
	ld   [hl], $c9                                   ; $561c: $36 $c9
	rrca                                             ; $561e: $0f
	ldh  a, [$c8]                                    ; $561f: $f0 $c8
	db   $10                                         ; $5621: $10
	jp   z, $cfd0                                    ; $5622: $ca $d0 $cf

	db   $d3                                         ; $5625: $d3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5626: $cf
	sub  $1e                                         ; $5627: $d6 $1e
	dec  l                                           ; $5629: $2d
	ld   a, [de]                                     ; $562a: $1a
	dec  a                                           ; $562b: $3d
	or   $39                                         ; $562c: $f6 $39
	ld   l, [hl]                                     ; $562e: $6e
	pop  af                                          ; $562f: $f1
	ld   c, e                                        ; $5630: $4b
	add  h                                           ; $5631: $84
	ld   [hl], e                                     ; $5632: $73
	ld   [hl], b                                     ; $5633: $70
	call $42b0                                       ; $5634: $cd $b0 $42
	adc  l                                           ; $5637: $8d
	ld   c, d                                        ; $5638: $4a
	add  l                                           ; $5639: $85
	ld   c, b                                        ; $563a: $48
	add  a                                           ; $563b: $87
	ld   c, e                                        ; $563c: $4b
	add  h                                           ; $563d: $84
	ld   c, e                                        ; $563e: $4b
	add  h                                           ; $563f: $84
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	add  h                                           ; $5642: $84
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	add  b                                           ; $5645: $80
	nop                                              ; $5646: $00
	db   $fc                                         ; $5647: $fc
	ld   hl, sp+$7b                                  ; $5648: $f8 $7b
	ld   hl, sp+$02                                  ; $564a: $f8 $02
	ld   a, h                                        ; $564c: $7c
	add  d                                           ; $564d: $82
	ld   hl, sp+$7a                                  ; $564e: $f8 $7a
	nop                                              ; $5650: $00
	nop                                              ; $5651: $00
	jr   nz, jr_025_5654                             ; $5652: $20 $00

jr_025_5654:
	nop                                              ; $5654: $00
	nop                                              ; $5655: $00
	ld   [rRAMG], sp                                 ; $5656: $08 $00 $00
	ldh  [rP1], a                                    ; $5659: $e0 $00
	stop                                             ; $565b: $10 $00
	ld   [$2820], sp                                 ; $565d: $08 $20 $28
	add  b                                           ; $5660: $80
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	ld   c, $06                                      ; $5663: $0e $06
	add  hl, hl                                      ; $5665: $29
	ld   bc, $0728                                   ; $5666: $01 $28 $07
	ld   a, [hl]                                     ; $5669: $7e
	ld   bc, $0178                                   ; $566a: $01 $78 $01
	jr   z, @+$03                                    ; $566d: $28 $01

	jr   z, jr_025_5671                              ; $566f: $28 $00

jr_025_5671:
	jr   jr_025_5673                                 ; $5671: $18 $00

jr_025_5673:
	inc  h                                           ; $5673: $24
	nop                                              ; $5674: $00
	inc  h                                           ; $5675: $24

jr_025_5676:
	jr   jr_025_5676                                 ; $5676: $18 $fe

	cp   $19                                         ; $5678: $fe $19
	sbc  $d9                                         ; $567a: $de $d9
	jr   jr_025_5697                                 ; $567c: $18 $19

	jr   jr_025_5699                                 ; $567e: $18 $19

	stop                                             ; $5680: $10 $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	rst  $38                                         ; $5687: $ff
	ld   d, l                                        ; $5688: $55
	xor  d                                           ; $5689: $aa
	rst  $38                                         ; $568a: $ff
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	rst  $38                                         ; $568f: $ff
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00

jr_025_5697:
	rst  $38                                         ; $5697: $ff
	ld   d, l                                        ; $5698: $55

jr_025_5699:
	xor  d                                           ; $5699: $aa
	rst  $38                                         ; $569a: $ff
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	rst  $38                                         ; $569d: $ff
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	ld   h, a                                        ; $56a0: $67
	rst  ToBoot                                         ; $56a1: $c7
	ld   c, l                                        ; $56a2: $4d
	rst  $28                                         ; $56a3: $ef
	ld   c, $af                                      ; $56a4: $0e $af
	nop                                              ; $56a6: $00
	sbc  a                                           ; $56a7: $9f
	nop                                              ; $56a8: $00
	add  b                                           ; $56a9: $80
	ld   a, a                                        ; $56aa: $7f
	add  b                                           ; $56ab: $80
	ld   a, a                                        ; $56ac: $7f
	add  b                                           ; $56ad: $80
	ld   a, a                                        ; $56ae: $7f
	add  b                                           ; $56af: $80
	and  $e3                                         ; $56b0: $e6 $e3
	ldh  a, [c]                                      ; $56b2: $f2
	rst  $30                                         ; $56b3: $f7
	ld   hl, sp-$0b                                  ; $56b4: $f8 $f5
	nop                                              ; $56b6: $00
	ld   sp, hl                                      ; $56b7: $f9
	nop                                              ; $56b8: $00
	ld   bc, $01fe                                   ; $56b9: $01 $fe $01
	cp   $01                                         ; $56bc: $fe $01
	ld   c, $f1                                      ; $56be: $0e $f1
	ccf                                              ; $56c0: $3f
	ret  nz                                          ; $56c1: $c0

	cp   a                                           ; $56c2: $bf
	ret  nz                                          ; $56c3: $c0

	cp   a                                           ; $56c4: $bf
	ld   b, b                                        ; $56c5: $40
	ccf                                              ; $56c6: $3f
	ret  nz                                          ; $56c7: $c0

	add  b                                           ; $56c8: $80
	ld   a, a                                        ; $56c9: $7f
	inc  c                                           ; $56ca: $0c
	di                                               ; $56cb: $f3
	nop                                              ; $56cc: $00
	rra                                              ; $56cd: $1f
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	sub  b                                           ; $56d0: $90
	ld   [hl], a                                     ; $56d1: $77
	add  c                                           ; $56d2: $81
	ld   b, d                                        ; $56d3: $42
	add  c                                           ; $56d4: $81
	ld   h, [hl]                                     ; $56d5: $66
	add  c                                           ; $56d6: $81
	ld   a, [hl]                                     ; $56d7: $7e
	nop                                              ; $56d8: $00
	rst  $38                                         ; $56d9: $ff
	ld   c, $f1                                      ; $56da: $0e $f1
	ldh  a, [rIF]                                    ; $56dc: $f0 $0f
	rst  $38                                         ; $56de: $ff
	nop                                              ; $56df: $00
	ld   l, d                                        ; $56e0: $6a
	sub  b                                           ; $56e1: $90
	ld   b, c                                        ; $56e2: $41
	add  h                                           ; $56e3: $84
	ld   b, b                                        ; $56e4: $40
	add  d                                           ; $56e5: $82
	ld   d, e                                        ; $56e6: $53
	sub  b                                           ; $56e7: $90
	ld   c, b                                        ; $56e8: $48
	adc  c                                           ; $56e9: $89
	ld   e, h                                        ; $56ea: $5c
	sbc  l                                           ; $56eb: $9d
	ld   c, h                                        ; $56ec: $4c
	adc  l                                           ; $56ed: $8d
	ld   e, h                                        ; $56ee: $5c
	sbc  l                                           ; $56ef: $9d
	ld   e, a                                        ; $56f0: $5f
	ld   h, b                                        ; $56f1: $60
	ld   d, l                                        ; $56f2: $55
	ld   h, b                                        ; $56f3: $60
	ldh  a, [c]                                      ; $56f4: $f2
	ld   h, b                                        ; $56f5: $60
	ld   sp, hl                                      ; $56f6: $f9
	ld   [hl], b                                     ; $56f7: $70
	db   $fc                                         ; $56f8: $fc
	ld   a, b                                        ; $56f9: $78
	cp   $7c                                         ; $56fa: $fe $7c
	db   $fc                                         ; $56fc: $fc
	ld   a, [hl]                                     ; $56fd: $7e
	db   $fd                                         ; $56fe: $fd
	ld   a, $fe                                      ; $56ff: $3e $fe
	ld   bc, $01fe                                   ; $5701: $01 $fe $01
	cp   $15                                         ; $5704: $fe $15
	dec  d                                           ; $5706: $15
	cp   $d5                                         ; $5707: $fe $d5
	ld   a, $d4                                      ; $5709: $3e $d4
	ld   a, $d5                                      ; $570b: $3e $d5
	ld   a, $d4                                      ; $570d: $3e $d4
	ld   a, $14                                      ; $570f: $3e $14
	pop  bc                                          ; $5711: $c1
	ld   l, c                                        ; $5712: $69
	add  e                                           ; $5713: $83
	jp   $a707                                       ; $5714: $c3 $07 $a7


	ld   c, $47                                      ; $5717: $0e $47
	ld   c, $86                                      ; $5719: $0e $86
	rrca                                             ; $571b: $0f
	ld   b, $0f                                      ; $571c: $06 $0f
	ld   b, $0f                                      ; $571e: $06 $0f
	jp   nz, $a8f5                                   ; $5720: $c2 $f5 $a8

	db   $db                                         ; $5723: $db
	call c, $100f                                    ; $5724: $dc $0f $10
	inc  bc                                          ; $5727: $03
	jr   nc, jr_025_572d                             ; $5728: $30 $03

	ld   a, h                                        ; $572a: $7c
	inc  bc                                          ; $572b: $03
	db   $ec                                         ; $572c: $ec

jr_025_572d:
	inc  de                                          ; $572d: $13
	pop  bc                                          ; $572e: $c1
	ld   [hl-], a                                    ; $572f: $32
	ld   c, e                                        ; $5730: $4b
	add  h                                           ; $5731: $84
	ld   c, e                                        ; $5732: $4b
	add  h                                           ; $5733: $84
	ld   c, e                                        ; $5734: $4b
	add  h                                           ; $5735: $84
	ld   c, e                                        ; $5736: $4b
	add  h                                           ; $5737: $84
	ld   c, e                                        ; $5738: $4b
	add  h                                           ; $5739: $84
	ld   c, e                                        ; $573a: $4b
	add  h                                           ; $573b: $84
	ld   c, e                                        ; $573c: $4b
	add  h                                           ; $573d: $84
	ld   c, e                                        ; $573e: $4b
	add  h                                           ; $573f: $84
	ld   sp, hl                                      ; $5740: $f9
	inc  bc                                          ; $5741: $03
	ld   [$09f3], sp                                 ; $5742: $08 $f3 $09
	sub  d                                           ; $5745: $92
	ld   l, c                                        ; $5746: $69
	sub  d                                           ; $5747: $92
	ld   [$08f3], sp                                 ; $5748: $08 $f3 $08

jr_025_574b:
	di                                               ; $574b: $f3
	add  hl, bc                                      ; $574c: $09
	di                                               ; $574d: $f3
	add  hl, bc                                      ; $574e: $09
	ldh  a, [c]                                      ; $574f: $f2
	pop  bc                                          ; $5750: $c1
	ret  c                                           ; $5751: $d8

	ld   sp, $f0c8                                   ; $5752: $31 $c8 $f0
	ld   [$38c7], sp                                 ; $5755: $08 $c7 $38
	jr   nz, @-$0f                                   ; $5758: $20 $ef

	jr   nz, jr_025_574b                             ; $575a: $20 $ef

	rst  $20                                         ; $575c: $e7

jr_025_575d:
	rst  $28                                         ; $575d: $ef
	jr   nz, jr_025_5788                             ; $575e: $20 $28

	ld   b, $19                                      ; $5760: $06 $19
	ld   d, $29                                      ; $5762: $16 $29
	or   b                                           ; $5764: $b0
	ld   c, a                                        ; $5765: $4f
	or   a                                           ; $5766: $b7
	ld   c, a                                        ; $5767: $4f
	rrca                                             ; $5768: $0f
	ldh  a, [$1f]                                    ; $5769: $f0 $1f
	ldh  [$bf], a                                    ; $576b: $e0 $bf
	ret  nz                                          ; $576d: $c0

	ccf                                              ; $576e: $3f
	ld   b, b                                        ; $576f: $40
	and  $01                                         ; $5770: $e6 $01
	ldh  [c], a                                      ; $5772: $e2
	dec  b                                           ; $5773: $05
	jr   jr_025_575d                                 ; $5774: $18 $e7

	cp   $ff                                         ; $5776: $fe $ff
	cp   $01                                         ; $5778: $fe $01
	cp   $01                                         ; $577a: $fe $01
	jp   nz, $803d                                   ; $577c: $c2 $3d $80

	ld   a, a                                        ; $577f: $7f
	ld   a, a                                        ; $5780: $7f
	sbc  c                                           ; $5781: $99
	ld   l, d                                        ; $5782: $6a
	and  [hl]                                        ; $5783: $a6
	nop                                              ; $5784: $00
	sbc  c                                           ; $5785: $99
	nop                                              ; $5786: $00
	inc  sp                                          ; $5787: $33

jr_025_5788:
	nop                                              ; $5788: $00
	ld   h, [hl]                                     ; $5789: $66
	nop                                              ; $578a: $00
	call z, $9966                                    ; $578b: $cc $66 $99
	call z, $ff33                                    ; $578e: $cc $33 $ff
	sbc  c                                           ; $5791: $99
	xor  d                                           ; $5792: $aa
	ld   h, [hl]                                     ; $5793: $66
	nop                                              ; $5794: $00
	sbc  c                                           ; $5795: $99
	nop                                              ; $5796: $00
	inc  sp                                          ; $5797: $33
	nop                                              ; $5798: $00
	ld   h, [hl]                                     ; $5799: $66
	nop                                              ; $579a: $00
	call z, $9966                                    ; $579b: $cc $66 $99
	call z, Call_025_7f33                            ; $579e: $cc $33 $7f
	add  b                                           ; $57a1: $80
	ld   a, a                                        ; $57a2: $7f
	push de                                          ; $57a3: $d5
	ld   a, a                                        ; $57a4: $7f
	xor  d                                           ; $57a5: $aa
	ld   a, a                                        ; $57a6: $7f
	push de                                          ; $57a7: $d5
	nop                                              ; $57a8: $00
	rst  $38                                         ; $57a9: $ff
	ld   a, a                                        ; $57aa: $7f
	add  b                                           ; $57ab: $80
	add  b                                           ; $57ac: $80
	ld   a, a                                        ; $57ad: $7f
	rst  $38                                         ; $57ae: $ff
	nop                                              ; $57af: $00
	ld   l, [hl]                                     ; $57b0: $6e
	pop  af                                          ; $57b1: $f1
	add  b                                           ; $57b2: $80
	ld   [hl], l                                     ; $57b3: $75
	add  b                                           ; $57b4: $80
	push bc                                          ; $57b5: $c5
	add  d                                           ; $57b6: $82
	ld   b, l                                        ; $57b7: $45
	ld   a, [hl-]                                    ; $57b8: $3a
	db   $fd                                         ; $57b9: $fd
	add  d                                           ; $57ba: $82
	ld   a, l                                        ; $57bb: $7d
	ld   bc, $fffe                                   ; $57bc: $01 $fe $ff
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	rst  $38                                         ; $57c1: $ff
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	rst  $38                                         ; $57c4: $ff
	nop                                              ; $57c5: $00
	rst  $38                                         ; $57c6: $ff
	nop                                              ; $57c7: $00
	rst  $38                                         ; $57c8: $ff
	nop                                              ; $57c9: $00
	ld   c, $f1                                      ; $57ca: $0e $f1
	ret  nc                                          ; $57cc: $d0

	cpl                                              ; $57cd: $2f
	ld   a, $c1                                      ; $57ce: $3e $c1
	nop                                              ; $57d0: $00
	rst  $38                                         ; $57d1: $ff
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	rst  $38                                         ; $57d4: $ff
	nop                                              ; $57d5: $00
	rst  $38                                         ; $57d6: $ff
	nop                                              ; $57d7: $00
	rst  $38                                         ; $57d8: $ff
	nop                                              ; $57d9: $00
	inc  a                                           ; $57da: $3c

jr_025_57db:
	jp   $3cc3                                       ; $57db: $c3 $c3 $3c


	rst  $38                                         ; $57de: $ff
	nop                                              ; $57df: $00
	ld   bc, $0100                                   ; $57e0: $01 $00 $01
	nop                                              ; $57e3: $00
	ld   bc, $0100                                   ; $57e4: $01 $00 $01
	cp   $54                                         ; $57e7: $fe $54
	xor  e                                           ; $57e9: $ab
	cp   $01                                         ; $57ea: $fe $01
	nop                                              ; $57ec: $00
	cp   $fe                                         ; $57ed: $fe $fe
	cp   $ff                                         ; $57ef: $fe $ff
	sbc  b                                           ; $57f1: $98
	xor  e                                           ; $57f2: $ab
	ld   h, [hl]                                     ; $57f3: $66
	nop                                              ; $57f4: $00
	sbc  c                                           ; $57f5: $99
	nop                                              ; $57f6: $00
	inc  sp                                          ; $57f7: $33
	nop                                              ; $57f8: $00
	ld   h, a                                        ; $57f9: $67
	nop                                              ; $57fa: $00
	call $9966                                       ; $57fb: $cd $66 $99
	call z, $0033                                    ; $57fe: $cc $33 $00
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	nop                                              ; $5807: $00
	rst  $38                                         ; $5808: $ff
	nop                                              ; $5809: $00
	add  c                                           ; $580a: $81
	ld   a, [hl]                                     ; $580b: $7e
	add  c                                           ; $580c: $81
	ld   a, [hl]                                     ; $580d: $7e
	sbc  c                                           ; $580e: $99
	ld   h, [hl]                                     ; $580f: $66
	sbc  c                                           ; $5810: $99

jr_025_5811:
	ld   h, [hl]                                     ; $5811: $66
	sbc  c                                           ; $5812: $99
	ld   h, [hl]                                     ; $5813: $66
	sbc  c                                           ; $5814: $99
	ld   h, [hl]                                     ; $5815: $66
	add  c                                           ; $5816: $81
	ld   a, [hl]                                     ; $5817: $7e
	add  c                                           ; $5818: $81
	ld   a, [hl]                                     ; $5819: $7e
	sbc  c                                           ; $581a: $99
	ld   h, [hl]                                     ; $581b: $66
	sbc  c                                           ; $581c: $99
	ld   h, [hl]                                     ; $581d: $66
	sbc  e                                           ; $581e: $9b
	ld   h, h                                        ; $581f: $64
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	rst  $30                                         ; $5828: $f7
	nop                                              ; $5829: $00
	sbc  h                                           ; $582a: $9c
	ld   h, e                                        ; $582b: $63
	adc  h                                           ; $582c: $8c
	ld   [hl], e                                     ; $582d: $73
	call nz, $e43b                                   ; $582e: $c4 $3b $e4
	dec  de                                          ; $5831: $1b
	add  b                                           ; $5832: $80
	ld   a, a                                        ; $5833: $7f
	add  b                                           ; $5834: $80
	ld   a, a                                        ; $5835: $7f
	ld   hl, sp+$07                                  ; $5836: $f8 $07
	nop                                              ; $5838: $00
	rst  $38                                         ; $5839: $ff
	nop                                              ; $583a: $00
	rst  $38                                         ; $583b: $ff
	ldh  [$1f], a                                    ; $583c: $e0 $1f
	add  a                                           ; $583e: $87
	ld   a, b                                        ; $583f: $78
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	cp   h                                           ; $5848: $bc
	nop                                              ; $5849: $00
	db   $e4                                         ; $584a: $e4
	jr   jr_025_5811                                 ; $584b: $18 $c4

	jr   c, jr_025_57db                              ; $584d: $38 $8c

	ld   [hl], b                                     ; $584f: $70
	sbc  h                                           ; $5850: $9c
	ld   h, b                                        ; $5851: $60
	inc  b                                           ; $5852: $04
	ld   hl, sp+$04                                  ; $5853: $f8 $04
	ld   hl, sp+$7e                                  ; $5855: $f8 $7e
	add  b                                           ; $5857: $80
	ld   [bc], a                                     ; $5858: $02
	db   $fc                                         ; $5859: $fc
	ld   [bc], a                                     ; $585a: $02
	db   $fc                                         ; $585b: $fc
	ld   e, $e0                                      ; $585c: $1e $e0
	add  a                                           ; $585e: $87
	ld   a, b                                        ; $585f: $78
	sbc  d                                           ; $5860: $9a
	ld   h, l                                        ; $5861: $65
	add  d                                           ; $5862: $82
	ld   a, l                                        ; $5863: $7d
	add  e                                           ; $5864: $83
	ld   a, h                                        ; $5865: $7c
	sbc  c                                           ; $5866: $99
	ld   h, [hl]                                     ; $5867: $66
	sbc  c                                           ; $5868: $99
	ld   h, [hl]                                     ; $5869: $66
	sbc  c                                           ; $586a: $99
	ld   h, [hl]                                     ; $586b: $66
	sbc  c                                           ; $586c: $99
	ld   h, [hl]                                     ; $586d: $66
	sbc  c                                           ; $586e: $99
	ld   h, [hl]                                     ; $586f: $66
	rst  $38                                         ; $5870: $ff
	nop                                              ; $5871: $00
	cp   $65                                         ; $5872: $fe $65
	cp   $65                                         ; $5874: $fe $65
	cp   $65                                         ; $5876: $fe $65
	db   $fc                                         ; $5878: $fc
	inc  bc                                          ; $5879: $03
	jr   nz, jr_025_589b                             ; $587a: $20 $1f

	jr   nz, jr_025_589d                             ; $587c: $20 $1f

	inc  a                                           ; $587e: $3c
	inc  bc                                          ; $587f: $03
	inc  e                                           ; $5880: $1c
	db   $e3                                         ; $5881: $e3
	ld   a, h                                        ; $5882: $7c
	add  e                                           ; $5883: $83
	ret  nz                                          ; $5884: $c0

	ccf                                              ; $5885: $3f
	add  b                                           ; $5886: $80
	ld   a, a                                        ; $5887: $7f
	pop  af                                          ; $5888: $f1
	ld   c, $e3                                      ; $5889: $0e $e3
	db   $dd                                         ; $588b: $dd
	rst  ToBoot                                         ; $588c: $c7
	cp   e                                           ; $588d: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $588e: $cf
	scf                                              ; $588f: $37
	ccf                                              ; $5890: $3f
	rst  ToBoot                                         ; $5891: $c7
	ccf                                              ; $5892: $3f
	sub  $3e                                         ; $5893: $d6 $3e
	pop  de                                          ; $5895: $d1
	ld   a, b                                        ; $5896: $78
	add  a                                           ; $5897: $87
	nop                                              ; $5898: $00
	rst  $38                                         ; $5899: $ff
	rlca                                             ; $589a: $07

jr_025_589b:
	ld   hl, sp+$7f                                  ; $589b: $f8 $7f

jr_025_589d:
	add  a                                           ; $589d: $87
	ld   a, a                                        ; $589e: $7f
	cp   b                                           ; $589f: $b8
	pop  hl                                          ; $58a0: $e1
	ld   e, $f9                                      ; $58a1: $1e $f9
	ld   b, $07                                      ; $58a3: $06 $07
	ld   hl, sp+$07                                  ; $58a5: $f8 $07
	ld   a, [$1ae7]                                  ; $58a7: $fa $e7 $1a
	rst  $20                                         ; $58aa: $e7
	ld   a, [de]                                     ; $58ab: $1a
	add  a                                           ; $58ac: $87
	ld   a, b                                        ; $58ad: $78
	call nz, $fc38                                   ; $58ae: $c4 $38 $fc
	ld   b, b                                        ; $58b1: $40
	db   $fc                                         ; $58b2: $fc
	jr   c, jr_025_58f1                              ; $58b3: $38 $3c

	ret  c                                           ; $58b5: $d8

	inc  a                                           ; $58b6: $3c
	ret  c                                           ; $58b7: $d8

	db   $fc                                         ; $58b8: $fc
	nop                                              ; $58b9: $00
	ldh  [$c0], a                                    ; $58ba: $e0 $c0
	ldh  [$c0], a                                    ; $58bc: $e0 $c0
	ldh  [$c0], a                                    ; $58be: $e0 $c0
	jr   c, jr_025_58d9                              ; $58c0: $38 $17

	jr   c, @+$19                                    ; $58c2: $38 $17

jr_025_58c4:
	add  hl, sp                                      ; $58c4: $39
	ld   d, $30                                      ; $58c5: $16 $30
	rrca                                             ; $58c7: $0f
	db   $10                                         ; $58c8: $10
	rrca                                             ; $58c9: $0f
	add  hl, de                                      ; $58ca: $19
	ld   b, $1f                                      ; $58cb: $06 $1f
	add  hl, bc                                      ; $58cd: $09
	rra                                              ; $58ce: $1f
	rrca                                             ; $58cf: $0f
	rra                                              ; $58d0: $1f
	rrca                                             ; $58d1: $0f
	rrca                                             ; $58d2: $0f
	ld   b, $06                                      ; $58d3: $06 $06
	nop                                              ; $58d5: $00
	ld   bc, $0600                                   ; $58d6: $01 $00 $06

jr_025_58d9:
	ld   bc, $0708                                   ; $58d9: $01 $08 $07
	ld   [$1007], sp                                 ; $58dc: $08 $07 $10
	rrca                                             ; $58df: $0f
	ld   hl, sp+$07                                  ; $58e0: $f8 $07
	ret  nz                                          ; $58e2: $c0

	ccf                                              ; $58e3: $3f

jr_025_58e4:
	nop                                              ; $58e4: $00
	rst  $38                                         ; $58e5: $ff
	rra                                              ; $58e6: $1f
	ldh  [$7f], a                                    ; $58e7: $e0 $7f
	adc  a                                           ; $58e9: $8f
	rst  $38                                         ; $58ea: $ff
	ld   a, a                                        ; $58eb: $7f
	rst  $38                                         ; $58ec: $ff
	rst  $38                                         ; $58ed: $ff
	rst  $38                                         ; $58ee: $ff
	ldh  [$e3], a                                    ; $58ef: $e0 $e3

jr_025_58f1:
	add  b                                           ; $58f1: $80

jr_025_58f2:
	sbc  h                                           ; $58f2: $9c
	inc  bc                                          ; $58f3: $03
	jr   nz, @+$21                                   ; $58f4: $20 $1f

	db   $e3                                         ; $58f6: $e3
	inc  e                                           ; $58f7: $1c
	rra                                              ; $58f8: $1f
	db   $e3                                         ; $58f9: $e3
	rra                                              ; $58fa: $1f
	rst  $28                                         ; $58fb: $ef
	rra                                              ; $58fc: $1f
	rst  $28                                         ; $58fd: $ef
	ccf                                              ; $58fe: $3f
	call z, $00c0                                    ; $58ff: $cc $c0 $00
	jr   nz, jr_025_58c4                             ; $5902: $20 $c0

	db   $10                                         ; $5904: $10
	ldh  [rAUD1SWEEP], a                             ; $5905: $e0 $10
	ldh  [$88], a                                    ; $5907: $e0 $88
	ld   [hl], b                                     ; $5909: $70
	adc  b                                           ; $590a: $88
	ld   [hl], b                                     ; $590b: $70
	adc  b                                           ; $590c: $88
	ld   [hl], b                                     ; $590d: $70
	sbc  b                                           ; $590e: $98
	ld   h, b                                        ; $590f: $60
	jr   jr_025_58f2                                 ; $5910: $18 $e0

	jr   c, jr_025_58e4                              ; $5912: $38 $d0

	ld   hl, sp+$30                                  ; $5914: $f8 $30
	ldh  a, [$e0]                                    ; $5916: $f0 $e0
	ldh  a, [$e0]                                    ; $5918: $f0 $e0
	ld   hl, sp-$40                                  ; $591a: $f8 $c0
	call nz, $0238                                   ; $591c: $c4 $38 $02
	db   $fc                                         ; $591f: $fc
	db   $10                                         ; $5920: $10
	rrca                                             ; $5921: $0f
	jr   nz, jr_025_5943                             ; $5922: $20 $1f

	ld   hl, $231e                                   ; $5924: $21 $1e $23
	dec  e                                           ; $5927: $1d
	daa                                              ; $5928: $27
	dec  de                                          ; $5929: $1b
	cpl                                              ; $592a: $2f
	rla                                              ; $592b: $17
	ccf                                              ; $592c: $3f
	ld   c, $7e                                      ; $592d: $0e $7e
	inc  b                                           ; $592f: $04
	add  h                                           ; $5930: $84
	ld   a, b                                        ; $5931: $78
	add  l                                           ; $5932: $85
	ld   a, b                                        ; $5933: $78
	db   $fd                                         ; $5934: $fd
	nop                                              ; $5935: $00
	db   $fd                                         ; $5936: $fd
	ld   a, b                                        ; $5937: $78
	db   $fd                                         ; $5938: $fd
	ld   a, b                                        ; $5939: $78
	db   $fd                                         ; $593a: $fd
	ld   a, b                                        ; $593b: $78
	ld   a, c                                        ; $593c: $79
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	ld   a, $c1                                      ; $5940: $3e $c1
	ld   [hl], h                                     ; $5942: $74

jr_025_5943:
	and  e                                           ; $5943: $a3
	ld   hl, sp+$67                                  ; $5944: $f8 $67
	ldh  a, [$cf]                                    ; $5946: $f0 $cf
	db   $e3                                         ; $5948: $e3
	call c, $b3cf                                    ; $5949: $dc $cf $b3
	cp   a                                           ; $594c: $bf
	rrca                                             ; $594d: $0f
	ccf                                              ; $594e: $3f
	rra                                              ; $594f: $1f
	rst  $38                                         ; $5950: $ff
	inc  c                                           ; $5951: $0c
	inc  c                                           ; $5952: $0c
	ldh  a, [$08]                                    ; $5953: $f0 $08
	ldh  a, [$f8]                                    ; $5955: $f0 $f8
	nop                                              ; $5957: $00
	ld   hl, sp-$10                                  ; $5958: $f8 $f0
	ld   hl, sp-$10                                  ; $595a: $f8 $f0
	ld   hl, sp-$10                                  ; $595c: $f8 $f0
	ldh  a, [rP1]                                    ; $595e: $f0 $00
	ld   [bc], a                                     ; $5960: $02
	db   $fc                                         ; $5961: $fc
	ld   [bc], a                                     ; $5962: $02
	db   $fc                                         ; $5963: $fc
	ld   c, $f0                                      ; $5964: $0e $f0
	ld   a, [hl]                                     ; $5966: $7e
	adc  h                                           ; $5967: $8c
	cp   $7c                                         ; $5968: $fe $7c
	cp   $fc                                         ; $596a: $fe $fc
	db   $fc                                         ; $596c: $fc
	ldh  a, [$f0]                                    ; $596d: $f0 $f0
	add  b                                           ; $596f: $80
	add  b                                           ; $5970: $80
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	nop                                              ; $5974: $00
	nop                                              ; $5975: $00
	nop                                              ; $5976: $00
	nop                                              ; $5977: $00
	nop                                              ; $5978: $00
	nop                                              ; $5979: $00
	nop                                              ; $597a: $00
	nop                                              ; $597b: $00
	nop                                              ; $597c: $00
	nop                                              ; $597d: $00
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	nop                                              ; $5984: $00
	nop                                              ; $5985: $00
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	nop                                              ; $598c: $00
	nop                                              ; $598d: $00
	nop                                              ; $598e: $00
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	nop                                              ; $5992: $00
	nop                                              ; $5993: $00
	nop                                              ; $5994: $00
	nop                                              ; $5995: $00
	nop                                              ; $5996: $00
	nop                                              ; $5997: $00
	nop                                              ; $5998: $00
	nop                                              ; $5999: $00
	nop                                              ; $599a: $00
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	nop                                              ; $599f: $00
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	nop                                              ; $59a2: $00
	nop                                              ; $59a3: $00
	nop                                              ; $59a4: $00
	nop                                              ; $59a5: $00
	nop                                              ; $59a6: $00
	nop                                              ; $59a7: $00
	nop                                              ; $59a8: $00
	nop                                              ; $59a9: $00
	nop                                              ; $59aa: $00
	nop                                              ; $59ab: $00
	nop                                              ; $59ac: $00

Jump_025_59ad:
	nop                                              ; $59ad: $00
	nop                                              ; $59ae: $00
	nop                                              ; $59af: $00
	nop                                              ; $59b0: $00
	nop                                              ; $59b1: $00
	nop                                              ; $59b2: $00
	nop                                              ; $59b3: $00
	nop                                              ; $59b4: $00
	nop                                              ; $59b5: $00
	nop                                              ; $59b6: $00
	nop                                              ; $59b7: $00
	nop                                              ; $59b8: $00
	nop                                              ; $59b9: $00
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	nop                                              ; $59c1: $00
	nop                                              ; $59c2: $00
	nop                                              ; $59c3: $00
	nop                                              ; $59c4: $00
	nop                                              ; $59c5: $00
	nop                                              ; $59c6: $00
	nop                                              ; $59c7: $00
	nop                                              ; $59c8: $00
	nop                                              ; $59c9: $00
	nop                                              ; $59ca: $00
	nop                                              ; $59cb: $00
	nop                                              ; $59cc: $00
	nop                                              ; $59cd: $00
	nop                                              ; $59ce: $00
	nop                                              ; $59cf: $00
	nop                                              ; $59d0: $00
	nop                                              ; $59d1: $00
	nop                                              ; $59d2: $00
	nop                                              ; $59d3: $00
	nop                                              ; $59d4: $00
	nop                                              ; $59d5: $00
	nop                                              ; $59d6: $00
	nop                                              ; $59d7: $00
	nop                                              ; $59d8: $00
	nop                                              ; $59d9: $00
	nop                                              ; $59da: $00
	nop                                              ; $59db: $00
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	nop                                              ; $59e0: $00
	nop                                              ; $59e1: $00
	nop                                              ; $59e2: $00
	nop                                              ; $59e3: $00
	nop                                              ; $59e4: $00
	nop                                              ; $59e5: $00
	nop                                              ; $59e6: $00
	nop                                              ; $59e7: $00
	nop                                              ; $59e8: $00
	nop                                              ; $59e9: $00
	nop                                              ; $59ea: $00
	nop                                              ; $59eb: $00
	nop                                              ; $59ec: $00
	nop                                              ; $59ed: $00
	nop                                              ; $59ee: $00
	nop                                              ; $59ef: $00
	nop                                              ; $59f0: $00
	nop                                              ; $59f1: $00
	nop                                              ; $59f2: $00
	nop                                              ; $59f3: $00
	nop                                              ; $59f4: $00
	nop                                              ; $59f5: $00

jr_025_59f6:
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	inc  bc                                          ; $5a0c: $03
	nop                                              ; $5a0d: $00
	inc  c                                           ; $5a0e: $0c
	inc  bc                                          ; $5a0f: $03

jr_025_5a10:
	ld   [$0c07], sp                                 ; $5a10: $08 $07 $0c
	inc  bc                                          ; $5a13: $03
	rrca                                             ; $5a14: $0f
	inc  b                                           ; $5a15: $04
	inc  c                                           ; $5a16: $0c
	inc  bc                                          ; $5a17: $03
	inc  c                                           ; $5a18: $0c
	inc  bc                                          ; $5a19: $03
	ld   [$0807], sp                                 ; $5a1a: $08 $07 $08
	rlca                                             ; $5a1d: $07
	ld   [$0007], sp                                 ; $5a1e: $08 $07 $00
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	nop                                              ; $5a27: $00
	inc  e                                           ; $5a28: $1c
	nop                                              ; $5a29: $00
	ld   h, e                                        ; $5a2a: $63
	inc  e                                           ; $5a2b: $1c
	add  b                                           ; $5a2c: $80
	ld   a, a                                        ; $5a2d: $7f
	nop                                              ; $5a2e: $00
	rst  $38                                         ; $5a2f: $ff
	inc  e                                           ; $5a30: $1c
	db   $e3                                         ; $5a31: $e3
	ld   a, a                                        ; $5a32: $7f
	sbc  h                                           ; $5a33: $9c
	rst  $38                                         ; $5a34: $ff
	ld   e, $1e                                      ; $5a35: $1e $1e
	pop  hl                                          ; $5a37: $e1
	nop                                              ; $5a38: $00
	rst  $38                                         ; $5a39: $ff
	ret  nz                                          ; $5a3a: $c0

	ccf                                              ; $5a3b: $3f
	ld   hl, sp+$07                                  ; $5a3c: $f8 $07
	ccf                                              ; $5a3e: $3f
	ret  nz                                          ; $5a3f: $c0

	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	nop                                              ; $5a45: $00
	nop                                              ; $5a46: $00
	nop                                              ; $5a47: $00
	nop                                              ; $5a48: $00
	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	nop                                              ; $5a4b: $00
	ret  nz                                          ; $5a4c: $c0

	nop                                              ; $5a4d: $00
	jr   nc, jr_025_5a10                             ; $5a4e: $30 $c0

	inc  c                                           ; $5a50: $0c
	ldh  a, [$82]                                    ; $5a51: $f0 $82
	ld   a, h                                        ; $5a53: $7c
	ld   b, $f8                                      ; $5a54: $06 $f8
	ld   c, $f4                                      ; $5a56: $0e $f4
	ld   e, $ec                                      ; $5a58: $1e $ec
	ld   a, [hl]                                     ; $5a5a: $7e
	sbc  h                                           ; $5a5b: $9c
	inc  e                                           ; $5a5c: $1c
	ldh  [rTMA], a                                   ; $5a5d: $e0 $06
	ld   hl, sp+$10                                  ; $5a5f: $f8 $10
	rrca                                             ; $5a61: $0f
	ld   de, $110e                                   ; $5a62: $11 $0e $11
	ld   c, $20                                      ; $5a65: $0e $20
	rra                                              ; $5a67: $1f
	jr   nz, jr_025_5a89                             ; $5a68: $20 $1f

	inc  hl                                          ; $5a6a: $23
	inc  e                                           ; $5a6b: $1c
	ld   b, e                                        ; $5a6c: $43
	inc  a                                           ; $5a6d: $3c
	ld   h, b                                        ; $5a6e: $60
	rra                                              ; $5a6f: $1f
	jr   c, jr_025_5a79                              ; $5a70: $38 $07

	ld   h, a                                        ; $5a72: $67
	jr   jr_025_59f6                                 ; $5a73: $18 $81

	ld   a, [hl]                                     ; $5a75: $7e
	add  a                                           ; $5a76: $87
	ld   a, b                                        ; $5a77: $78
	rst  $38                                         ; $5a78: $ff

jr_025_5a79:
	ld   b, $ff                                      ; $5a79: $06 $ff
	ld   a, [hl]                                     ; $5a7b: $7e
	rst  $38                                         ; $5a7c: $ff
	ld   a, [hl]                                     ; $5a7d: $7e
	cp   $78                                         ; $5a7e: $fe $78
	rrca                                             ; $5a80: $0f
	ldh  a, [$81]                                    ; $5a81: $f0 $81
	ld   a, [hl]                                     ; $5a83: $7e
	ldh  a, [rIF]                                    ; $5a84: $f0 $0f
	ld   a, [hl]                                     ; $5a86: $7e
	add  c                                           ; $5a87: $81
	rrca                                             ; $5a88: $0f

jr_025_5a89:
	ldh  a, [$81]                                    ; $5a89: $f0 $81
	ld   a, [hl]                                     ; $5a8b: $7e
	ldh  [$1f], a                                    ; $5a8c: $e0 $1f
	db   $fc                                         ; $5a8e: $fc
	inc  bc                                          ; $5a8f: $03
	rra                                              ; $5a90: $1f
	ldh  [$03], a                                    ; $5a91: $e0 $03
	db   $fc                                         ; $5a93: $fc
	ldh  [$1f], a                                    ; $5a94: $e0 $1f
	ld   hl, sp-$19                                  ; $5a96: $f8 $e7
	rst  $38                                         ; $5a98: $ff
	ldh  a, [$f8]                                    ; $5a99: $f0 $f8
	rst  $30                                         ; $5a9b: $f7
	ei                                               ; $5a9c: $fb
	inc  d                                           ; $5a9d: $14
	inc  e                                           ; $5a9e: $1c
	inc  bc                                          ; $5a9f: $03
	pop  bc                                          ; $5aa0: $c1
	ld   a, $f1                                      ; $5aa1: $3e $f1
	ld   c, $61                                      ; $5aa3: $0e $61
	sbc  [hl]                                        ; $5aa5: $9e
	ld   [bc], a                                     ; $5aa6: $02
	db   $fc                                         ; $5aa7: $fc
	jp   $c33c                                       ; $5aa8: $c3 $3c $c3


	inc  a                                           ; $5aab: $3c
	rlca                                             ; $5aac: $07
	ld   a, [$f806]                                  ; $5aad: $fa $06 $f8
	adc  [hl]                                        ; $5ab0: $8e
	ld   [hl], h                                     ; $5ab1: $74
	adc  [hl]                                        ; $5ab2: $8e
	ld   [hl], h                                     ; $5ab3: $74
	inc  c                                           ; $5ab4: $0c
	ldh  a, [rAUD3LEVEL]                             ; $5ab5: $f0 $1c
	add  sp, $18                                     ; $5ab7: $e8 $18
	ldh  [$f8], a                                    ; $5ab9: $e0 $f8
	db   $10                                         ; $5abb: $10
	ld   hl, sp+$70                                  ; $5abc: $f8 $70
	ld   [hl], b                                     ; $5abe: $70
	and  b                                           ; $5abf: $a0
	ld   a, b                                        ; $5ac0: $78
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	nop                                              ; $5ac5: $00
	jr   c, jr_025_5ac8                              ; $5ac6: $38 $00

jr_025_5ac8:
	ld   b, h                                        ; $5ac8: $44
	jr   c, jr_025_5b0f                              ; $5ac9: $38 $44

	jr   c, jr_025_5b11                              ; $5acb: $38 $44

	jr   c, @+$46                                    ; $5acd: $38 $44

	jr   c, @+$44                                    ; $5acf: $38 $42

	inc  a                                           ; $5ad1: $3c
	ld   h, d                                        ; $5ad2: $62
	inc  e                                           ; $5ad3: $1c
	ld   h, d                                        ; $5ad4: $62
	inc  e                                           ; $5ad5: $1c
	ld   h, c                                        ; $5ad6: $61
	ld   e, $71                                      ; $5ad7: $1e $71

jr_025_5ad9:
	ld   l, $31                                      ; $5ad9: $2e $31
	ld   c, $38                                      ; $5adb: $0e $38
	rla                                              ; $5add: $17
	jr   c, jr_025_5af7                              ; $5ade: $38 $17

	ld   c, $05                                      ; $5ae0: $0e $05
	ld   c, $01                                      ; $5ae2: $0e $01
	jr   jr_025_5aed                                 ; $5ae4: $18 $07

	ld   h, b                                        ; $5ae6: $60
	rra                                              ; $5ae7: $1f
	add  e                                           ; $5ae8: $83
	ld   a, h                                        ; $5ae9: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aea: $cf
	jr   nc, @+$01                                   ; $5aeb: $30 $ff

jr_025_5aed:
	ld   b, a                                        ; $5aed: $47
	rst  $38                                         ; $5aee: $ff
	ld   a, a                                        ; $5aef: $7f
	rst  $38                                         ; $5af0: $ff
	ld   a, l                                        ; $5af1: $7d
	ld   a, l                                        ; $5af2: $7d
	jr   nc, @+$32                                   ; $5af3: $30 $30

	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00

jr_025_5af7:
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	add  b                                           ; $5afc: $80
	nop                                              ; $5afd: $00
	add  b                                           ; $5afe: $80
	nop                                              ; $5aff: $00
	inc  h                                           ; $5b00: $24
	ret  c                                           ; $5b01: $d8

	inc  b                                           ; $5b02: $04
	ld   hl, sp+$08                                  ; $5b03: $f8 $08
	ldh  a, [rAUD2LOW]                               ; $5b05: $f0 $18
	ldh  [rAUD3LEVEL], a                             ; $5b07: $e0 $1c
	add  sp, $1c                                     ; $5b09: $e8 $1c
	add  sp, -$78                                    ; $5b0b: $e8 $88
	ld   [hl], b                                     ; $5b0d: $70
	adc  b                                           ; $5b0e: $88

jr_025_5b0f:
	ld   [hl], b                                     ; $5b0f: $70
	add  h                                           ; $5b10: $84

jr_025_5b11:
	ld   a, b                                        ; $5b11: $78
	call nz, $c4b8                                   ; $5b12: $c4 $b8 $c4
	jr   c, jr_025_5ad9                              ; $5b15: $38 $c2

	inc  a                                           ; $5b17: $3c
	ldh  [c], a                                      ; $5b18: $e2
	ld   e, h                                        ; $5b19: $5c
	ld   h, [hl]                                     ; $5b1a: $66
	jr   jr_025_5b83                                 ; $5b1b: $18 $66

	jr   @+$70                                       ; $5b1d: $18 $6e

	inc  d                                           ; $5b1f: $14
	inc  e                                           ; $5b20: $1c
	dec  bc                                          ; $5b21: $0b
	inc  e                                           ; $5b22: $1c
	dec  bc                                          ; $5b23: $0b
	ld   c, $05                                      ; $5b24: $0e $05
	rrca                                             ; $5b26: $0f
	ld   b, $07                                      ; $5b27: $06 $07
	inc  bc                                          ; $5b29: $03
	rlca                                             ; $5b2a: $07
	inc  bc                                          ; $5b2b: $03
	inc  bc                                          ; $5b2c: $03
	ld   bc, $0001                                   ; $5b2d: $01 $01 $00
	ld   c, $00                                      ; $5b30: $0e $00
	ld   de, $110e                                   ; $5b32: $11 $0e $11
	ld   c, $1f                                      ; $5b35: $0e $1f
	nop                                              ; $5b37: $00
	rra                                              ; $5b38: $1f
	ld   c, $1f                                      ; $5b39: $0e $1f
	ld   c, $1f                                      ; $5b3b: $0e $1f
	ld   c, $0e                                      ; $5b3d: $0e $0e
	nop                                              ; $5b3f: $00
	ld   b, b                                        ; $5b40: $40
	add  b                                           ; $5b41: $80
	jr   nz, @-$3e                                   ; $5b42: $20 $c0

	jr   nz, @-$3e                                   ; $5b44: $20 $c0

	ldh  [rP1], a                                    ; $5b46: $e0 $00
	db   $e3                                         ; $5b48: $e3
	ret  nz                                          ; $5b49: $c0

	db   $ec                                         ; $5b4a: $ec
	jp   $cff0                                       ; $5b4b: $c3 $f0 $cf


	ret  nz                                          ; $5b4e: $c0

	ccf                                              ; $5b4f: $3f
	add  b                                           ; $5b50: $80
	ld   a, a                                        ; $5b51: $7f
	rst  $38                                         ; $5b52: $ff
	nop                                              ; $5b53: $00
	rst  $38                                         ; $5b54: $ff
	ld   a, a                                        ; $5b55: $7f
	rst  $38                                         ; $5b56: $ff
	ld   a, a                                        ; $5b57: $7f
	rst  $38                                         ; $5b58: $ff
	ld   a, a                                        ; $5b59: $7f
	ld   a, a                                        ; $5b5a: $7f
	nop                                              ; $5b5b: $00
	nop                                              ; $5b5c: $00
	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	ld   a, $0c                                      ; $5b60: $3e $0c
	ld   a, $1c                                      ; $5b62: $3e $1c
	inc  a                                           ; $5b64: $3c
	nop                                              ; $5b65: $00
	jp   nz, $013c                                   ; $5b66: $c2 $3c $01

	cp   $01                                         ; $5b69: $fe $01
	cp   $01                                         ; $5b6b: $fe $01
	cp   $03                                         ; $5b6d: $fe $03
	db   $fc                                         ; $5b6f: $fc
	rra                                              ; $5b70: $1f
	ldh  [c], a                                      ; $5b71: $e2
	rst  $38                                         ; $5b72: $ff
	ld   e, $ff                                      ; $5b73: $1e $ff
	cp   $fe                                         ; $5b75: $fe $fe
	db   $fc                                         ; $5b77: $fc
	db   $fc                                         ; $5b78: $fc
	ldh  [$e0], a                                    ; $5b79: $e0 $e0
	nop                                              ; $5b7b: $00
	nop                                              ; $5b7c: $00
	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	nop                                              ; $5b80: $00
	nop                                              ; $5b81: $00
	nop                                              ; $5b82: $00

jr_025_5b83:
	nop                                              ; $5b83: $00
	nop                                              ; $5b84: $00
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	nop                                              ; $5b89: $00
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	ld   a, $3e                                      ; $5b8c: $3e $3e
	ld   hl, $263f                                   ; $5b8e: $21 $3f $26
	ccf                                              ; $5b91: $3f
	ld   h, $3f                                      ; $5b92: $26 $3f
	ld   h, $3f                                      ; $5b94: $26 $3f
	ld   h, $3f                                      ; $5b96: $26 $3f
	ld   hl, $263f                                   ; $5b98: $21 $3f $26
	ld   a, $24                                      ; $5b9b: $3e $24
	inc  a                                           ; $5b9d: $3c
	inc  a                                           ; $5b9e: $3c
	inc  a                                           ; $5b9f: $3c
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	nop                                              ; $5ba2: $00
	nop                                              ; $5ba3: $00
	nop                                              ; $5ba4: $00
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	nop                                              ; $5ba7: $00
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	inc  e                                           ; $5bac: $1c
	inc  e                                           ; $5bad: $1c
	ld   [hl+], a                                    ; $5bae: $22
	ld   a, $cd                                      ; $5baf: $3e $cd
	rst  $38                                         ; $5bb1: $ff
	call $cdff                                       ; $5bb2: $cd $ff $cd
	rst  $38                                         ; $5bb5: $ff
	call Call_025_4dff                               ; $5bb6: $cd $ff $4d
	ld   a, a                                        ; $5bb9: $7f
	ld   c, l                                        ; $5bba: $4d
	ld   a, a                                        ; $5bbb: $7f
	ld   [hl+], a                                    ; $5bbc: $22
	ld   a, $1c                                      ; $5bbd: $3e $1c
	inc  e                                           ; $5bbf: $1c
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	nop                                              ; $5bc2: $00
	nop                                              ; $5bc3: $00
	nop                                              ; $5bc4: $00
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	nop                                              ; $5bc7: $00
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	nop                                              ; $5bcb: $00
	jr   c, jr_025_5c06                              ; $5bcc: $38 $38

	ld   b, l                                        ; $5bce: $45
	ld   a, l                                        ; $5bcf: $7d
	sbc  e                                           ; $5bd0: $9b
	rst  $38                                         ; $5bd1: $ff
	sbc  a                                           ; $5bd2: $9f
	rst  $38                                         ; $5bd3: $ff
	ld   c, e                                        ; $5bd4: $4b
	ld   a, e                                        ; $5bd5: $7b
	daa                                              ; $5bd6: $27
	ccf                                              ; $5bd7: $3f
	ld   [hl], e                                     ; $5bd8: $73
	ld   a, a                                        ; $5bd9: $7f
	sbc  e                                           ; $5bda: $9b
	rst  $38                                         ; $5bdb: $ff
	ld   b, l                                        ; $5bdc: $45
	ld   a, l                                        ; $5bdd: $7d
	add  hl, sp                                      ; $5bde: $39
	add  hl, sp                                      ; $5bdf: $39
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	nop                                              ; $5be6: $00
	nop                                              ; $5be7: $00
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00

jr_025_5bec:
	db   $fc                                         ; $5bec: $fc
	db   $fc                                         ; $5bed: $fc
	inc  b                                           ; $5bee: $04
	db   $fc                                         ; $5bef: $fc
	inc  a                                           ; $5bf0: $3c
	db   $fc                                         ; $5bf1: $fc
	jr   c, jr_025_5bec                              ; $5bf2: $38 $f8

	ld   [$38f8], sp                                 ; $5bf4: $08 $f8 $38
	ld   hl, sp+$20                                  ; $5bf7: $f8 $20
	ldh  [$38], a                                    ; $5bf9: $e0 $38
	ld   hl, sp+$04                                  ; $5bfb: $f8 $04
	db   $fc                                         ; $5bfd: $fc
	db   $fc                                         ; $5bfe: $fc
	db   $fc                                         ; $5bff: $fc
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00

jr_025_5c06:
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	ld   a, h                                        ; $5c0e: $7c
	ld   a, h                                        ; $5c0f: $7c
	sub  $fe                                         ; $5c10: $d6 $fe
	add  c                                           ; $5c12: $81
	rst  $38                                         ; $5c13: $ff
	db   $dd                                         ; $5c14: $dd
	rst  $38                                         ; $5c15: $ff
	ld   e, c                                        ; $5c16: $59
	ld   a, a                                        ; $5c17: $7f
	ld   e, a                                        ; $5c18: $5f
	ld   a, a                                        ; $5c19: $7f
	add  hl, hl                                      ; $5c1a: $29
	add  hl, sp                                      ; $5c1b: $39
	jr   z, jr_025_5c56                              ; $5c1c: $28 $38

	jr   c, jr_025_5c58                              ; $5c1e: $38 $38

	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	nop                                              ; $5c29: $00
	nop                                              ; $5c2a: $00
	nop                                              ; $5c2b: $00
	nop                                              ; $5c2c: $00
	nop                                              ; $5c2d: $00
	inc  h                                           ; $5c2e: $24
	inc  h                                           ; $5c2f: $24
	ld   e, d                                        ; $5c30: $5a
	ld   a, [hl]                                     ; $5c31: $7e
	ld   b, d                                        ; $5c32: $42
	ld   a, [hl]                                     ; $5c33: $7e
	sub  l                                           ; $5c34: $95
	rst  $38                                         ; $5c35: $ff
	ld   d, l                                        ; $5c36: $55
	rst  $38                                         ; $5c37: $ff
	ld   l, l                                        ; $5c38: $6d
	rst  $38                                         ; $5c39: $ff
	ld   e, l                                        ; $5c3a: $5d
	rst  $38                                         ; $5c3b: $ff
	xor  d                                           ; $5c3c: $aa
	xor  $4c                                         ; $5c3d: $ee $4c
	ld   c, h                                        ; $5c3f: $4c
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	nop                                              ; $5c4d: $00
	ld   a, [hl]                                     ; $5c4e: $7e
	ld   a, [hl]                                     ; $5c4f: $7e
	ld   b, d                                        ; $5c50: $42
	ld   a, [hl]                                     ; $5c51: $7e
	ld   [hl], h                                     ; $5c52: $74
	ld   a, h                                        ; $5c53: $7c
	inc  l                                           ; $5c54: $2c
	inc  a                                           ; $5c55: $3c

jr_025_5c56:
	ld   b, d                                        ; $5c56: $42
	ld   a, [hl]                                     ; $5c57: $7e

jr_025_5c58:
	cp   l                                           ; $5c58: $bd
	rst  $38                                         ; $5c59: $ff
	call Call_025_4aff                               ; $5c5a: $cd $ff $4a
	ld   a, [hl]                                     ; $5c5d: $7e
	ld   a, h                                        ; $5c5e: $7c
	ld   a, h                                        ; $5c5f: $7c
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	nop                                              ; $5c97: $00
	nop                                              ; $5c98: $00
	nop                                              ; $5c99: $00
	nop                                              ; $5c9a: $00
	nop                                              ; $5c9b: $00
	nop                                              ; $5c9c: $00
	nop                                              ; $5c9d: $00
	nop                                              ; $5c9e: $00
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	nop                                              ; $5ca4: $00
	nop                                              ; $5ca5: $00
	nop                                              ; $5ca6: $00
	nop                                              ; $5ca7: $00
	nop                                              ; $5ca8: $00
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	nop                                              ; $5cac: $00
	nop                                              ; $5cad: $00
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	nop                                              ; $5cb0: $00
	nop                                              ; $5cb1: $00
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	nop                                              ; $5cb5: $00
	nop                                              ; $5cb6: $00
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	nop                                              ; $5cb9: $00
	nop                                              ; $5cba: $00
	nop                                              ; $5cbb: $00
	nop                                              ; $5cbc: $00
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	nop                                              ; $5cc5: $00
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	nop                                              ; $5cc9: $00
	nop                                              ; $5cca: $00
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	nop                                              ; $5cd7: $00
	nop                                              ; $5cd8: $00
	nop                                              ; $5cd9: $00
	nop                                              ; $5cda: $00
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	nop                                              ; $5ce5: $00
	nop                                              ; $5ce6: $00
	nop                                              ; $5ce7: $00
	nop                                              ; $5ce8: $00
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	nop                                              ; $5ceb: $00
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	nop                                              ; $5cf6: $00
	nop                                              ; $5cf7: $00
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	nop                                              ; $5cfd: $00
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00
	nop                                              ; $5d00: $00
	nop                                              ; $5d01: $00
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	nop                                              ; $5d0c: $00
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	nop                                              ; $5d1a: $00
	nop                                              ; $5d1b: $00
	nop                                              ; $5d1c: $00
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	nop                                              ; $5d20: $00
	nop                                              ; $5d21: $00
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	nop                                              ; $5d28: $00
	nop                                              ; $5d29: $00
	nop                                              ; $5d2a: $00
	nop                                              ; $5d2b: $00
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	nop                                              ; $5d30: $00
	nop                                              ; $5d31: $00
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	nop                                              ; $5d36: $00
	nop                                              ; $5d37: $00
	nop                                              ; $5d38: $00
	nop                                              ; $5d39: $00
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	nop                                              ; $5d3d: $00
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	nop                                              ; $5d44: $00
	nop                                              ; $5d45: $00
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	nop                                              ; $5d56: $00
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00
	nop                                              ; $5d5c: $00
	nop                                              ; $5d5d: $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	nop                                              ; $5d62: $00
	nop                                              ; $5d63: $00
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	nop                                              ; $5d66: $00
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	nop                                              ; $5d69: $00
	nop                                              ; $5d6a: $00
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	nop                                              ; $5d99: $00
	nop                                              ; $5d9a: $00
	nop                                              ; $5d9b: $00
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	nop                                              ; $5da4: $00
	nop                                              ; $5da5: $00
	nop                                              ; $5da6: $00
	nop                                              ; $5da7: $00
	nop                                              ; $5da8: $00
	nop                                              ; $5da9: $00
	nop                                              ; $5daa: $00
	nop                                              ; $5dab: $00
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	nop                                              ; $5db0: $00
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	nop                                              ; $5db4: $00
	nop                                              ; $5db5: $00
	nop                                              ; $5db6: $00
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	nop                                              ; $5db9: $00
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	nop                                              ; $5dc1: $00
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	nop                                              ; $5dc6: $00
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	nop                                              ; $5dc9: $00
	nop                                              ; $5dca: $00
	nop                                              ; $5dcb: $00
	nop                                              ; $5dcc: $00
	nop                                              ; $5dcd: $00
	nop                                              ; $5dce: $00
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	nop                                              ; $5dd5: $00
	nop                                              ; $5dd6: $00
	nop                                              ; $5dd7: $00
	nop                                              ; $5dd8: $00
	nop                                              ; $5dd9: $00
	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	nop                                              ; $5df9: $00
	nop                                              ; $5dfa: $00
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	nop                                              ; $5e18: $00
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	nop                                              ; $5e1c: $00
	nop                                              ; $5e1d: $00
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	nop                                              ; $5e39: $00
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	nop                                              ; $5e3d: $00
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	nop                                              ; $5e51: $00
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	ld   h, e                                        ; $5e54: $63
	ld   h, e                                        ; $5e55: $63
	sbc  [hl]                                        ; $5e56: $9e
	rst  $38                                         ; $5e57: $ff
	sbc  b                                           ; $5e58: $98
	rst  $38                                         ; $5e59: $ff
	sbc  [hl]                                        ; $5e5a: $9e
	rst  $38                                         ; $5e5b: $ff
	sub  d                                           ; $5e5c: $92
	di                                               ; $5e5d: $f3
	sub  d                                           ; $5e5e: $92
	di                                               ; $5e5f: $f3
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	rst  ToBoot                                         ; $5e64: $c7
	rst  ToBoot                                         ; $5e65: $c7
	ld   a, c                                        ; $5e66: $79
	rst  $38                                         ; $5e67: $ff
	add  hl, de                                      ; $5e68: $19
	rst  $38                                         ; $5e69: $ff
	ld   a, c                                        ; $5e6a: $79
	rst  $38                                         ; $5e6b: $ff
	ld   c, c                                        ; $5e6c: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6d: $cf
	ld   c, c                                        ; $5e6e: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6f: $cf
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	ld   c, $0e                                      ; $5e76: $0e $0e
	add  hl, bc                                      ; $5e78: $09
	rrca                                             ; $5e79: $0f
	add  hl, bc                                      ; $5e7a: $09
	rrca                                             ; $5e7b: $0f
	add  hl, bc                                      ; $5e7c: $09
	rrca                                             ; $5e7d: $0f
	add  hl, bc                                      ; $5e7e: $09
	rrca                                             ; $5e7f: $0f
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	jr   c, jr_025_5ece                              ; $5e94: $38 $38

	ld   c, b                                        ; $5e96: $48
	ld   a, b                                        ; $5e97: $78
	ld   c, b                                        ; $5e98: $48
	ld   a, b                                        ; $5e99: $78
	ld   c, b                                        ; $5e9a: $48
	ld   a, b                                        ; $5e9b: $78
	ld   c, b                                        ; $5e9c: $48
	ld   a, b                                        ; $5e9d: $78
	ld   c, b                                        ; $5e9e: $48
	ld   a, b                                        ; $5e9f: $78
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	rrca                                             ; $5ea4: $0f
	rrca                                             ; $5ea5: $0f
	ld   l, c                                        ; $5ea6: $69
	ld   l, a                                        ; $5ea7: $6f
	sbc  c                                           ; $5ea8: $99
	rst  $38                                         ; $5ea9: $ff
	ld   c, c                                        ; $5eaa: $49
	ld   a, a                                        ; $5eab: $7f
	ld   c, c                                        ; $5eac: $49
	ld   a, a                                        ; $5ead: $7f
	ld   c, c                                        ; $5eae: $49
	ld   a, a                                        ; $5eaf: $7f
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	inc  c                                           ; $5eb6: $0c
	inc  c                                           ; $5eb7: $0c
	inc  de                                          ; $5eb8: $13
	rra                                              ; $5eb9: $1f
	add  hl, bc                                      ; $5eba: $09
	rrca                                             ; $5ebb: $0f
	add  hl, bc                                      ; $5ebc: $09
	rrca                                             ; $5ebd: $0f
	add  hl, bc                                      ; $5ebe: $09
	rrca                                             ; $5ebf: $0f
	nop                                              ; $5ec0: $00
	nop                                              ; $5ec1: $00
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	inc  e                                           ; $5ec4: $1c
	inc  e                                           ; $5ec5: $1c
	rst  $30                                         ; $5ec6: $f7
	rst  $38                                         ; $5ec7: $ff
	nop                                              ; $5ec8: $00
	rst  $38                                         ; $5ec9: $ff
	db   $fc                                         ; $5eca: $fc
	rst  $38                                         ; $5ecb: $ff
	add  hl, bc                                      ; $5ecc: $09
	rrca                                             ; $5ecd: $0f

jr_025_5ece:
	ld   [de], a                                     ; $5ece: $12
	ld   e, $00                                      ; $5ecf: $1e $00
	nop                                              ; $5ed1: $00
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	ret  nz                                          ; $5ed6: $c0

	ret  nz                                          ; $5ed7: $c0

	ld   b, b                                        ; $5ed8: $40
	ret  nz                                          ; $5ed9: $c0

	add  b                                           ; $5eda: $80
	add  b                                           ; $5edb: $80
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	nop                                              ; $5f35: $00
	nop                                              ; $5f36: $00
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	nop                                              ; $5f3b: $00
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	nop                                              ; $5f46: $00
	nop                                              ; $5f47: $00
	nop                                              ; $5f48: $00
	nop                                              ; $5f49: $00
	nop                                              ; $5f4a: $00
	nop                                              ; $5f4b: $00
	nop                                              ; $5f4c: $00
	nop                                              ; $5f4d: $00
	nop                                              ; $5f4e: $00
	nop                                              ; $5f4f: $00
	sbc  [hl]                                        ; $5f50: $9e
	rst  $38                                         ; $5f51: $ff
	sub  b                                           ; $5f52: $90
	rst  $38                                         ; $5f53: $ff
	sub  [hl]                                        ; $5f54: $96
	rst  $38                                         ; $5f55: $ff
	sub  b                                           ; $5f56: $90
	rst  $38                                         ; $5f57: $ff
	ld   a, a                                        ; $5f58: $7f
	ld   a, a                                        ; $5f59: $7f
	nop                                              ; $5f5a: $00
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	nop                                              ; $5f5d: $00
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	ld   c, c                                        ; $5f60: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f61: $cf
	add  hl, hl                                      ; $5f62: $29
	rst  $28                                         ; $5f63: $ef
	add  hl, de                                      ; $5f64: $19
	rst  $38                                         ; $5f65: $ff
	ld   e, h                                        ; $5f66: $5c
	rst  $38                                         ; $5f67: $ff
	or   a                                           ; $5f68: $b7
	or   a                                           ; $5f69: $b7
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	add  hl, bc                                      ; $5f70: $09
	rrca                                             ; $5f71: $0f
	add  hl, bc                                      ; $5f72: $09
	rrca                                             ; $5f73: $0f
	adc  c                                           ; $5f74: $89
	adc  a                                           ; $5f75: $8f
	add  [hl]                                        ; $5f76: $86
	add  [hl]                                        ; $5f77: $86
	nop                                              ; $5f78: $00
	nop                                              ; $5f79: $00
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	ld   c, b                                        ; $5f90: $48
	ld   a, b                                        ; $5f91: $78
	ld   c, [hl]                                     ; $5f92: $4e
	ld   a, [hl]                                     ; $5f93: $7e
	ld   c, d                                        ; $5f94: $4a
	ld   a, [hl]                                     ; $5f95: $7e
	inc  h                                           ; $5f96: $24
	inc  a                                           ; $5f97: $3c
	jr   jr_025_5fb2                                 ; $5f98: $18 $18

	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	ld   c, c                                        ; $5fa0: $49
	ld   a, a                                        ; $5fa1: $7f
	ld   c, c                                        ; $5fa2: $49
	ld   a, a                                        ; $5fa3: $7f
	ld   c, c                                        ; $5fa4: $49
	ld   a, a                                        ; $5fa5: $7f
	inc  [hl]                                        ; $5fa6: $34
	scf                                              ; $5fa7: $37
	inc  bc                                          ; $5fa8: $03
	inc  bc                                          ; $5fa9: $03
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	add  hl, bc                                      ; $5fb0: $09
	rrca                                             ; $5fb1: $0f

jr_025_5fb2:
	ret                                              ; $5fb2: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb3: $cf
	ld   c, c                                        ; $5fb4: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb5: $cf
	add  a                                           ; $5fb6: $87
	add  a                                           ; $5fb7: $87
	ld   bc, $0001                                   ; $5fb8: $01 $01 $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	ld   hl, $4d3f                                   ; $5fc0: $21 $3f $4d
	ld   a, a                                        ; $5fc3: $7f
	sub  l                                           ; $5fc4: $95
	rst  $30                                         ; $5fc5: $f7
	inc  h                                           ; $5fc6: $24
	rst  $20                                         ; $5fc7: $e7
	rst  ToBoot                                         ; $5fc8: $c7
	rst  ToBoot                                         ; $5fc9: $c7
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	add  b                                           ; $5fd4: $80
	add  b                                           ; $5fd5: $80
	ld   b, b                                        ; $5fd6: $40
	ret  nz                                          ; $5fd7: $c0

	ret  nz                                          ; $5fd8: $c0

	ret  nz                                          ; $5fd9: $c0

	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	nop                                              ; $600a: $00
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	rst  $38                                         ; $6011: $ff
	nop                                              ; $6012: $00
	rst  $38                                         ; $6013: $ff
	nop                                              ; $6014: $00
	rst  $38                                         ; $6015: $ff
	nop                                              ; $6016: $00
	rst  $38                                         ; $6017: $ff
	nop                                              ; $6018: $00
	rst  $38                                         ; $6019: $ff
	nop                                              ; $601a: $00
	rst  $38                                         ; $601b: $ff
	nop                                              ; $601c: $00
	rst  $38                                         ; $601d: $ff
	nop                                              ; $601e: $00
	rst  $38                                         ; $601f: $ff
	nop                                              ; $6020: $00
	rst  $38                                         ; $6021: $ff
	ld   a, a                                        ; $6022: $7f
	rst  $38                                         ; $6023: $ff
	ld   a, a                                        ; $6024: $7f
	jp   nz, $e67f                                   ; $6025: $c2 $7f $e6

	ccf                                              ; $6028: $3f
	and  $3f                                         ; $6029: $e6 $3f
	and  $3f                                         ; $602b: $e6 $3f
	and  $3f                                         ; $602d: $e6 $3f
	rst  $38                                         ; $602f: $ff
	nop                                              ; $6030: $00
	rst  $38                                         ; $6031: $ff
	cp   e                                           ; $6032: $bb
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	xor  $ff                                         ; $6035: $ee $ff
	ld   h, h                                        ; $6037: $64
	rst  $38                                         ; $6038: $ff
	ld   h, b                                        ; $6039: $60
	rst  $38                                         ; $603a: $ff
	ld   l, d                                        ; $603b: $6a
	rst  $38                                         ; $603c: $ff
	ld   l, d                                        ; $603d: $6a
	push af                                          ; $603e: $f5
	rst  $38                                         ; $603f: $ff
	nop                                              ; $6040: $00
	rst  $38                                         ; $6041: $ff
	cp   $ff                                         ; $6042: $fe $ff
	cp   $43                                         ; $6044: $fe $43
	db   $fc                                         ; $6046: $fc
	ld   c, a                                        ; $6047: $4f
	cp   $43                                         ; $6048: $fe $43
	db   $fc                                         ; $604a: $fc
	ld   c, a                                        ; $604b: $4f
	cp   $43                                         ; $604c: $fe $43
	cp   $ff                                         ; $604e: $fe $ff
	nop                                              ; $6050: $00
	rst  $38                                         ; $6051: $ff
	ei                                               ; $6052: $fb
	rst  $38                                         ; $6053: $ff
	rst  $38                                         ; $6054: $ff
	add  [hl]                                        ; $6055: $86
	rst  $38                                         ; $6056: $ff
	sbc  d                                           ; $6057: $9a
	rst  $38                                         ; $6058: $ff
	add  [hl]                                        ; $6059: $86
	rst  $38                                         ; $605a: $ff
	sbc  d                                           ; $605b: $9a
	rst  $38                                         ; $605c: $ff
	add  d                                           ; $605d: $82
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	nop                                              ; $6060: $00
	rst  $38                                         ; $6061: $ff
	rst  $30                                         ; $6062: $f7
	rst  $38                                         ; $6063: $ff
	rst  $38                                         ; $6064: $ff
	jr   @+$01                                       ; $6065: $18 $ff

	ld   [hl], e                                     ; $6067: $73
	rst  $38                                         ; $6068: $ff
	db   $10                                         ; $6069: $10
	rst  $38                                         ; $606a: $ff
	ld   a, h                                        ; $606b: $7c
	rst  $38                                         ; $606c: $ff
	db   $10                                         ; $606d: $10
	rst  $38                                         ; $606e: $ff
	rst  $38                                         ; $606f: $ff
	nop                                              ; $6070: $00
	rst  $38                                         ; $6071: $ff
	db   $fc                                         ; $6072: $fc
	rst  $38                                         ; $6073: $ff
	db   $fc                                         ; $6074: $fc
	add  a                                           ; $6075: $87
	db   $fc                                         ; $6076: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6077: $cf
	ld   hl, sp-$31                                  ; $6078: $f8 $cf
	ld   hl, sp+$4f                                  ; $607a: $f8 $4f
	ld   hl, sp-$31                                  ; $607c: $f8 $cf
	ld   a, b                                        ; $607e: $78
	rst  $38                                         ; $607f: $ff
	rst  $38                                         ; $6080: $ff
	add  b                                           ; $6081: $80
	rst  $38                                         ; $6082: $ff
	cp   a                                           ; $6083: $bf
	cp   $b3                                         ; $6084: $fe $b3
	cp   $b3                                         ; $6086: $fe $b3
	cp   $33                                         ; $6088: $fe $33
	rst  $38                                         ; $608a: $ff
	di                                               ; $608b: $f3
	rra                                              ; $608c: $1f
	ldh  a, [$1f]                                    ; $608d: $f0 $1f
	rst  $38                                         ; $608f: $ff
	rst  $38                                         ; $6090: $ff
	nop                                              ; $6091: $00
	rst  $38                                         ; $6092: $ff
	rst  $38                                         ; $6093: $ff
	ccf                                              ; $6094: $3f
	pop  hl                                          ; $6095: $e1
	ld   a, a                                        ; $6096: $7f
	ret                                              ; $6097: $c9


	ld   a, a                                        ; $6098: $7f
	reti                                             ; $6099: $d9


	rst  $38                                         ; $609a: $ff
	pop  bc                                          ; $609b: $c1
	rst  $38                                         ; $609c: $ff
	reti                                             ; $609d: $d9


	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	ld   bc, $fdff                                   ; $60a1: $01 $ff $fd
	rst  $38                                         ; $60a4: $ff
	dec  b                                           ; $60a5: $05
	rst  $38                                         ; $60a6: $ff
	dec  [hl]                                        ; $60a7: $35
	rst  $38                                         ; $60a8: $ff
	inc  [hl]                                        ; $60a9: $34
	rst  $38                                         ; $60aa: $ff
	rlca                                             ; $60ab: $07
	db   $fc                                         ; $60ac: $fc
	ccf                                              ; $60ad: $3f
	ldh  [rIE], a                                    ; $60ae: $e0 $ff
	nop                                              ; $60b0: $00
	ld   hl, sp+$70                                  ; $60b1: $f8 $70
	ld   hl, sp+$70                                  ; $60b3: $f8 $70
	ret  c                                           ; $60b5: $d8

	ld   [hl], b                                     ; $60b6: $70
	ld   hl, sp+$00                                  ; $60b7: $f8 $00
	ld   hl, sp+$70                                  ; $60b9: $f8 $70
	ld   hl, sp+$70                                  ; $60bb: $f8 $70
	ret  c                                           ; $60bd: $d8

	ld   [hl], b                                     ; $60be: $70
	ld   hl, sp+$00                                  ; $60bf: $f8 $00
	rlca                                             ; $60c1: $07
	inc  bc                                          ; $60c2: $03
	rlca                                             ; $60c3: $07
	inc  bc                                          ; $60c4: $03
	ld   b, $03                                      ; $60c5: $06 $03
	rlca                                             ; $60c7: $07
	nop                                              ; $60c8: $00
	rlca                                             ; $60c9: $07
	inc  bc                                          ; $60ca: $03
	rlca                                             ; $60cb: $07
	inc  bc                                          ; $60cc: $03
	ld   b, $03                                      ; $60cd: $06 $03
	rlca                                             ; $60cf: $07
	nop                                              ; $60d0: $00
	ret  nz                                          ; $60d1: $c0

	add  b                                           ; $60d2: $80
	ret  nz                                          ; $60d3: $c0

	add  b                                           ; $60d4: $80
	ret  nz                                          ; $60d5: $c0

	add  b                                           ; $60d6: $80
	ret  nz                                          ; $60d7: $c0

	nop                                              ; $60d8: $00
	ret  nz                                          ; $60d9: $c0

	add  b                                           ; $60da: $80
	ret  nz                                          ; $60db: $c0

	add  b                                           ; $60dc: $80
	ret  nz                                          ; $60dd: $c0

	add  b                                           ; $60de: $80
	ret  nz                                          ; $60df: $c0

	nop                                              ; $60e0: $00
	ccf                                              ; $60e1: $3f
	nop                                              ; $60e2: $00
	ccf                                              ; $60e3: $3f
	nop                                              ; $60e4: $00
	ccf                                              ; $60e5: $3f
	nop                                              ; $60e6: $00
	ccf                                              ; $60e7: $3f
	nop                                              ; $60e8: $00
	ccf                                              ; $60e9: $3f
	nop                                              ; $60ea: $00
	ccf                                              ; $60eb: $3f
	nop                                              ; $60ec: $00
	ccf                                              ; $60ed: $3f
	nop                                              ; $60ee: $00
	ccf                                              ; $60ef: $3f
	nop                                              ; $60f0: $00
	rrca                                             ; $60f1: $0f
	nop                                              ; $60f2: $00
	rrca                                             ; $60f3: $0f
	nop                                              ; $60f4: $00
	rrca                                             ; $60f5: $0f
	nop                                              ; $60f6: $00
	rrca                                             ; $60f7: $0f
	nop                                              ; $60f8: $00
	rrca                                             ; $60f9: $0f
	nop                                              ; $60fa: $00
	rrca                                             ; $60fb: $0f
	nop                                              ; $60fc: $00
	rrca                                             ; $60fd: $0f
	nop                                              ; $60fe: $00
	rrca                                             ; $60ff: $0f
	inc  c                                           ; $6100: $0c
	rst  $38                                         ; $6101: $ff
	inc  d                                           ; $6102: $14
	rst  $38                                         ; $6103: $ff
	inc  d                                           ; $6104: $14
	rst  $38                                         ; $6105: $ff
	jr   z, @+$01                                    ; $6106: $28 $ff

	jr   z, @+$01                                    ; $6108: $28 $ff

	ld   d, b                                        ; $610a: $50
	rst  $38                                         ; $610b: $ff
	ld   d, b                                        ; $610c: $50
	rst  $38                                         ; $610d: $ff
	ld   h, b                                        ; $610e: $60
	rst  $38                                         ; $610f: $ff
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	add  b                                           ; $6113: $80
	rst  $38                                         ; $6114: $ff
	cp   a                                           ; $6115: $bf
	ldh  [$bf], a                                    ; $6116: $e0 $bf
	rst  $38                                         ; $6118: $ff
	cp   a                                           ; $6119: $bf
	ldh  [$bf], a                                    ; $611a: $e0 $bf
	ldh  [$bf], a                                    ; $611c: $e0 $bf
	ldh  [$bf], a                                    ; $611e: $e0 $bf
	rst  $38                                         ; $6120: $ff
	rst  $38                                         ; $6121: $ff
	rst  $38                                         ; $6122: $ff
	nop                                              ; $6123: $00
	rst  $38                                         ; $6124: $ff
	rst  $38                                         ; $6125: $ff
	nop                                              ; $6126: $00
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	nop                                              ; $612a: $00
	rst  $38                                         ; $612b: $ff
	nop                                              ; $612c: $00
	rst  $38                                         ; $612d: $ff
	nop                                              ; $612e: $00
	rst  $38                                         ; $612f: $ff
	ldh  [$bf], a                                    ; $6130: $e0 $bf
	ldh  [$bf], a                                    ; $6132: $e0 $bf
	ldh  [$bf], a                                    ; $6134: $e0 $bf
	ldh  [$bf], a                                    ; $6136: $e0 $bf
	ldh  [$bf], a                                    ; $6138: $e0 $bf
	ldh  [$bf], a                                    ; $613a: $e0 $bf
	ldh  [$bf], a                                    ; $613c: $e0 $bf
	ldh  [$bf], a                                    ; $613e: $e0 $bf
	ld   c, $ff                                      ; $6140: $0e $ff
	ld   e, $f3                                      ; $6142: $1e $f3
	inc  e                                           ; $6144: $1c
	rst  $30                                         ; $6145: $f7
	inc  e                                           ; $6146: $1c
	rst  $30                                         ; $6147: $f7
	inc  e                                           ; $6148: $1c
	rst  $30                                         ; $6149: $f7
	db   $fc                                         ; $614a: $fc
	rst  $30                                         ; $614b: $f7
	db   $fc                                         ; $614c: $fc
	rla                                              ; $614d: $17
	cp   $f3                                         ; $614e: $fe $f3
	ld   [hl], a                                     ; $6150: $77
	db   $fd                                         ; $6151: $fd
	ld   a, a                                        ; $6152: $7f
	call $ed3f                                       ; $6153: $cd $3f $ed
	ccf                                              ; $6156: $3f
	db   $ed                                         ; $6157: $ed
	ccf                                              ; $6158: $3f
	db   $ed                                         ; $6159: $ed
	ccf                                              ; $615a: $3f
	db   $ed                                         ; $615b: $ed
	ccf                                              ; $615c: $3f
	jp   hl                                          ; $615d: $e9


	ld   a, a                                        ; $615e: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $615f: $cf
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	nop                                              ; $6168: $00
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	rst  $38                                         ; $6171: $ff
	jr   nc, @+$01                                   ; $6172: $30 $ff

	jr   nc, @+$01                                   ; $6174: $30 $ff

	nop                                              ; $6176: $00
	rst  $38                                         ; $6177: $ff
	nop                                              ; $6178: $00
	rst  $38                                         ; $6179: $ff
	jr   nc, @+$01                                   ; $617a: $30 $ff

	jr   nc, @+$01                                   ; $617c: $30 $ff

	nop                                              ; $617e: $00
	rst  $38                                         ; $617f: $ff
	nop                                              ; $6180: $00
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	rst  $38                                         ; $6191: $ff
	nop                                              ; $6192: $00
	rst  $38                                         ; $6193: $ff
	nop                                              ; $6194: $00
	rst  $38                                         ; $6195: $ff
	nop                                              ; $6196: $00
	rst  $38                                         ; $6197: $ff
	nop                                              ; $6198: $00
	rst  $38                                         ; $6199: $ff
	nop                                              ; $619a: $00
	rst  $38                                         ; $619b: $ff
	nop                                              ; $619c: $00
	rst  $38                                         ; $619d: $ff
	nop                                              ; $619e: $00
	rst  $38                                         ; $619f: $ff
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	rst  $38                                         ; $61c1: $ff
	ld   [bc], a                                     ; $61c2: $02
	rst  $38                                         ; $61c3: $ff
	inc  b                                           ; $61c4: $04
	rst  $38                                         ; $61c5: $ff
	ld   [$10ff], sp                                 ; $61c6: $08 $ff $10
	rst  $38                                         ; $61c9: $ff
	jr   nz, @+$01                                   ; $61ca: $20 $ff

	ld   b, b                                        ; $61cc: $40
	rst  $38                                         ; $61cd: $ff
	add  b                                           ; $61ce: $80
	rst  $38                                         ; $61cf: $ff
	nop                                              ; $61d0: $00
	rst  $38                                         ; $61d1: $ff
	nop                                              ; $61d2: $00
	rst  $38                                         ; $61d3: $ff
	nop                                              ; $61d4: $00
	rst  $38                                         ; $61d5: $ff
	nop                                              ; $61d6: $00
	rst  $38                                         ; $61d7: $ff
	nop                                              ; $61d8: $00
	rst  $38                                         ; $61d9: $ff
	nop                                              ; $61da: $00
	rst  $38                                         ; $61db: $ff
	nop                                              ; $61dc: $00
	rst  $38                                         ; $61dd: $ff
	nop                                              ; $61de: $00
	rst  $38                                         ; $61df: $ff
	ld   bc, $02ff                                   ; $61e0: $01 $ff $02
	rst  $38                                         ; $61e3: $ff
	inc  b                                           ; $61e4: $04
	rst  $38                                         ; $61e5: $ff
	ld   [$10ff], sp                                 ; $61e6: $08 $ff $10
	rst  $38                                         ; $61e9: $ff
	jr   nz, @+$01                                   ; $61ea: $20 $ff

	ld   b, b                                        ; $61ec: $40
	rst  $38                                         ; $61ed: $ff
	nop                                              ; $61ee: $00
	rst  $38                                         ; $61ef: $ff
	ld   a, b                                        ; $61f0: $78
	rst  $38                                         ; $61f1: $ff
	db   $fc                                         ; $61f2: $fc
	add  a                                           ; $61f3: $87
	db   $fc                                         ; $61f4: $fc
	rst  $30                                         ; $61f5: $f7
	ld   a, b                                        ; $61f6: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61f7: $cf
	db   $fc                                         ; $61f8: $fc
	rst  $30                                         ; $61f9: $f7
	db   $fc                                         ; $61fa: $fc
	add  a                                           ; $61fb: $87
	ld   a, b                                        ; $61fc: $78
	rst  $38                                         ; $61fd: $ff
	nop                                              ; $61fe: $00
	rst  $38                                         ; $61ff: $ff
	ld   h, d                                        ; $6200: $62
	rst  $38                                         ; $6201: $ff
	call nz, $c6ff                                   ; $6202: $c4 $ff $c6
	rst  $38                                         ; $6205: $ff
	adc  l                                           ; $6206: $8d
	rst  $38                                         ; $6207: $ff
	adc  a                                           ; $6208: $8f
	rst  $38                                         ; $6209: $ff
	adc  [hl]                                        ; $620a: $8e
	cp   $8c                                         ; $620b: $fe $8c
	rst  $38                                         ; $620d: $ff
	add  hl, bc                                      ; $620e: $09
	rst  $38                                         ; $620f: $ff
	nop                                              ; $6210: $00
	rst  $38                                         ; $6211: $ff
	nop                                              ; $6212: $00
	rst  $38                                         ; $6213: $ff
	add  b                                           ; $6214: $80
	rst  $38                                         ; $6215: $ff
	ld   [bc], a                                     ; $6216: $02
	rst  $38                                         ; $6217: $ff
	ld   [bc], a                                     ; $6218: $02
	ld   d, a                                        ; $6219: $57
	ld   b, $8f                                      ; $621a: $06 $8f
	add  [hl]                                        ; $621c: $86
	cp   a                                           ; $621d: $bf
	inc  l                                           ; $621e: $2c
	rst  $38                                         ; $621f: $ff
	nop                                              ; $6220: $00
	rst  $38                                         ; $6221: $ff
	nop                                              ; $6222: $00
	rst  $38                                         ; $6223: $ff
	add  b                                           ; $6224: $80
	rst  $38                                         ; $6225: $ff
	sub  b                                           ; $6226: $90
	rst  $38                                         ; $6227: $ff
	ret  nc                                          ; $6228: $d0

	rst  $38                                         ; $6229: $ff
	jp   c, $dadf                                    ; $622a: $da $df $da

	sbc  $db                                         ; $622d: $de $db
	rst  $38                                         ; $622f: $ff
	db   $10                                         ; $6230: $10
	ldh  a, [$08]                                    ; $6231: $f0 $08
	ld   hl, sp+$08                                  ; $6233: $f8 $08
	ld   hl, sp+$14                                  ; $6235: $f8 $14
	db   $fc                                         ; $6237: $fc
	adc  h                                           ; $6238: $8c
	db   $ec                                         ; $6239: $ec
	ld   b, [hl]                                     ; $623a: $46
	ld   d, [hl]                                     ; $623b: $56
	ld   d, d                                        ; $623c: $52
	ld   a, d                                        ; $623d: $7a
	ld   a, [hl+]                                    ; $623e: $2a
	cp   d                                           ; $623f: $ba
	rrca                                             ; $6240: $0f
	rst  $38                                         ; $6241: $ff
	ld   c, $ff                                      ; $6242: $0e $ff
	ld   c, l                                        ; $6244: $4d
	rst  $38                                         ; $6245: $ff
	ld   c, [hl]                                     ; $6246: $4e
	rst  $38                                         ; $6247: $ff
	ld   c, l                                        ; $6248: $4d
	ei                                               ; $6249: $fb
	ld   c, a                                        ; $624a: $4f
	rst  JumpTable                                         ; $624b: $df
	ld   c, h                                        ; $624c: $4c
	reti                                             ; $624d: $d9


	ld   c, [hl]                                     ; $624e: $4e
	reti                                             ; $624f: $d9


	ld   c, l                                        ; $6250: $4d
	rst  $38                                         ; $6251: $ff
	db   $dd                                         ; $6252: $dd
	rst  $30                                         ; $6253: $f7

jr_025_6254:
	dec  sp                                          ; $6254: $3b
	xor  $d7                                         ; $6255: $ee $d7
	db   $fc                                         ; $6257: $fc
	db   $dd                                         ; $6258: $dd
	jr   c, jr_025_6254                              ; $6259: $38 $f9

	push hl                                          ; $625b: $e5
	sub  c                                           ; $625c: $91
	reti                                             ; $625d: $d9


	db   $d3                                         ; $625e: $d3
	db   $e3                                         ; $625f: $e3
	rst  JumpTable                                         ; $6260: $df
	rst  $30                                         ; $6261: $f7
	rst  JumpTable                                         ; $6262: $df
	ld   [hl], l                                     ; $6263: $75
	rst  JumpTable                                         ; $6264: $df
	ld   [hl], l                                     ; $6265: $75
	or   a                                           ; $6266: $b7
	push hl                                          ; $6267: $e5
	or   a                                           ; $6268: $b7
	rst  $20                                         ; $6269: $e7
	ld   [hl], l                                     ; $626a: $75
	adc  $c3                                         ; $626b: $ce $c3
	sub  a                                           ; $626d: $97
	add  [hl]                                        ; $626e: $86
	ld   c, $2b                                      ; $626f: $0e $2b
	rst  $38                                         ; $6271: $ff
	sub  l                                           ; $6272: $95
	rst  $38                                         ; $6273: $ff
	rst  $10                                         ; $6274: $d7
	ld   a, a                                        ; $6275: $7f
	rst  $10                                         ; $6276: $d7
	ld   a, a                                        ; $6277: $7f
	or   a                                           ; $6278: $b7
	rst  $38                                         ; $6279: $ff
	push af                                          ; $627a: $f5
	cp   a                                           ; $627b: $bf
	cp   l                                           ; $627c: $bd
	db   $dd                                         ; $627d: $dd
	ld   e, l                                        ; $627e: $5d
	db   $fd                                         ; $627f: $fd
	ld   c, h                                        ; $6280: $4c
	ret  z                                           ; $6281: $c8

	ld   c, h                                        ; $6282: $4c
	ret  z                                           ; $6283: $c8

	ld   c, h                                        ; $6284: $4c
	ret  z                                           ; $6285: $c8

	ld   c, h                                        ; $6286: $4c
	add  sp, $4e                                     ; $6287: $e8 $4e
	add  sp, $46                                     ; $6289: $e8 $46
	db   $fc                                         ; $628b: $fc
	add  $fc                                         ; $628c: $c6 $fc
	add  $fc                                         ; $628e: $c6 $fc
	ld   b, $00                                      ; $6290: $06 $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	ld   bc, $0206                                   ; $629e: $01 $06 $02
	rlca                                             ; $62a1: $07
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	nop                                              ; $62a6: $00
	nop                                              ; $62a7: $00
	jr   nz, jr_025_62aa                             ; $62a8: $20 $00

jr_025_62aa:
	ld   h, c                                        ; $62aa: $61
	nop                                              ; $62ab: $00

jr_025_62ac:
	ld   b, b                                        ; $62ac: $40
	ld   hl, $0183                                   ; $62ad: $21 $83 $01
	ld   hl, sp+$38                                  ; $62b0: $f8 $38
	jr   c, jr_025_62ac                              ; $62b2: $38 $f8

	jr   c, @+$7e                                    ; $62b4: $38 $7c

	ld   hl, sp+$7c                                  ; $62b6: $f8 $7c
	ld   l, b                                        ; $62b8: $68
	db   $fc                                         ; $62b9: $fc
	add  sp, -$04                                    ; $62ba: $e8 $fc
	db   $e4                                         ; $62bc: $e4
	db   $fc                                         ; $62bd: $fc
	and  h                                           ; $62be: $a4
	db   $f4                                         ; $62bf: $f4
	rst  ToBoot                                         ; $62c0: $c7
	db   $fc                                         ; $62c1: $fc
	rst  ToBoot                                         ; $62c2: $c7
	cp   $e5                                         ; $62c3: $fe $e5
	rst  $38                                         ; $62c5: $ff
	and  $fd                                         ; $62c6: $e6 $fd
	and  e                                           ; $62c8: $a3
	cp   $a3                                         ; $62c9: $fe $a3
	cp   $b3                                         ; $62cb: $fe $b3
	cp   $b3                                         ; $62cd: $fe $b3
	rst  $38                                         ; $62cf: $ff
	inc  bc                                          ; $62d0: $03
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	add  b                                           ; $62d4: $80
	nop                                              ; $62d5: $00
	ret  nz                                          ; $62d6: $c0

	add  b                                           ; $62d7: $80
	pop  af                                          ; $62d8: $f1
	ld   b, b                                        ; $62d9: $40
	call c, $fe33                                    ; $62da: $dc $33 $fe
	ld   c, $fe                                      ; $62dd: $0e $fe
	ld   [bc], a                                     ; $62df: $02
	rlca                                             ; $62e0: $07
	inc  bc                                          ; $62e1: $03
	ld   c, $07                                      ; $62e2: $0e $07
	ld   e, $0f                                      ; $62e4: $1e $0f
	ld   e, a                                        ; $62e6: $5f
	ccf                                              ; $62e7: $3f
	ld   a, $ff                                      ; $62e8: $3e $ff
	ld   [$000c], sp                                 ; $62ea: $08 $0c $00
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	add  h                                           ; $62f0: $84
	and  $a4                                         ; $62f1: $e6 $a4
	or   $b4                                         ; $62f3: $f6 $b4
	or   $f4                                         ; $62f5: $f6 $f4
	cp   $f4                                         ; $62f7: $fe $f4
	cp   $76                                         ; $62f9: $fe $76
	cp   $66                                         ; $62fb: $fe $66
	ld   a, [hl]                                     ; $62fd: $7e
	ld   h, $3e                                      ; $62fe: $26 $3e
	ldh  [c], a                                      ; $6300: $e2
	rst  $38                                         ; $6301: $ff
	call nz, $c4ff                                   ; $6302: $c4 $ff $c4
	rst  $38                                         ; $6305: $ff
	adc  b                                           ; $6306: $88
	rst  $38                                         ; $6307: $ff
	adc  c                                           ; $6308: $89
	rst  $38                                         ; $6309: $ff
	adc  d                                           ; $630a: $8a
	cp   $94                                         ; $630b: $fe $94

jr_025_630d:
	db   $fd                                         ; $630d: $fd
	dec  e                                           ; $630e: $1d
	rst  $38                                         ; $630f: $ff
	nop                                              ; $6310: $00
	rst  $38                                         ; $6311: $ff
	nop                                              ; $6312: $00
	rst  $38                                         ; $6313: $ff
	nop                                              ; $6314: $00
	rst  $38                                         ; $6315: $ff
	nop                                              ; $6316: $00
	rst  $38                                         ; $6317: $ff
	nop                                              ; $6318: $00
	rst  $38                                         ; $6319: $ff
	jr   nz, @+$01                                   ; $631a: $20 $ff

	ld   c, c                                        ; $631c: $49
	ld   e, a                                        ; $631d: $5f
	ld   e, c                                        ; $631e: $59
	rst  JumpTable                                         ; $631f: $df
	ld   bc, $00ff                                   ; $6320: $01 $ff $00
	rst  $38                                         ; $6323: $ff
	nop                                              ; $6324: $00
	rst  $38                                         ; $6325: $ff
	nop                                              ; $6326: $00
	rst  $38                                         ; $6327: $ff
	ld   b, h                                        ; $6328: $44
	rst  $38                                         ; $6329: $ff
	ld   [hl+], a                                    ; $632a: $22
	rst  $38                                         ; $632b: $ff
	ld   [hl-], a                                    ; $632c: $32
	cp   e                                           ; $632d: $bb
	cp   c                                           ; $632e: $b9
	cp   l                                           ; $632f: $bd
	and  b                                           ; $6330: $a0
	ldh  [rSVBK], a                                  ; $6331: $e0 $70
	ldh  a, [$38]                                    ; $6333: $f0 $38
	ld   hl, sp+$48                                  ; $6335: $f8 $48
	ld   hl, sp+$24                                  ; $6337: $f8 $24
	db   $ec                                         ; $6339: $ec
	sub  h                                           ; $633a: $94
	or   h                                           ; $633b: $b4
	ld   d, d                                        ; $633c: $52
	sub  $4a                                         ; $633d: $d6 $4a
	ld   a, [$ff1a]                                  ; $633f: $fa $1a $ff
	ld   e, $ff                                      ; $6342: $1e $ff
	dec  e                                           ; $6344: $1d
	rst  $38                                         ; $6345: $ff
	ld   e, $ff                                      ; $6346: $1e $ff
	dec  de                                          ; $6348: $1b
	rst  $38                                         ; $6349: $ff
	sbc  a                                           ; $634a: $9f
	db   $fc                                         ; $634b: $fc
	adc  a                                           ; $634c: $8f
	ld   sp, hl                                      ; $634d: $f9
	adc  [hl]                                        ; $634e: $8e
	cp   $99                                         ; $634f: $fe $99
	cp   a                                           ; $6351: $bf
	or   e                                           ; $6352: $b3
	cp   $73                                         ; $6353: $fe $73
	cp   $e7                                         ; $6355: $fe $e7
	db   $fd                                         ; $6357: $fd
	rst  $28                                         ; $6358: $ef
	ld   sp, hl                                      ; $6359: $f9
	reti                                             ; $635a: $d9


	ld   a, l                                        ; $635b: $7d
	db   $ed                                         ; $635c: $ed
	pop  af                                          ; $635d: $f1
	sub  e                                           ; $635e: $93
	reti                                             ; $635f: $d9


	xor  l                                           ; $6360: $ad
	db   $fd                                         ; $6361: $fd
	cp   h                                           ; $6362: $bc
	rst  $28                                         ; $6363: $ef
	cp   [hl]                                        ; $6364: $be
	db   $eb                                         ; $6365: $eb
	ld   l, l                                        ; $6366: $6d
	bit  5, a                                        ; $6367: $cb $6f
	call $cf6b                                       ; $6369: $cd $6b $cf
	add  $8e                                         ; $636c: $c6 $8e
	add  d                                           ; $636e: $82
	rlca                                             ; $636f: $07
	ld   a, [hl+]                                    ; $6370: $2a
	cp   $aa                                         ; $6371: $fe $aa
	cp   $a6                                         ; $6373: $fe $a6
	cp   $f6                                         ; $6375: $fe $f6
	cp   $d4                                         ; $6377: $fe $d4
	ld   a, h                                        ; $6379: $7c
	db   $f4                                         ; $637a: $f4
	cp   h                                           ; $637b: $bc
	ld   a, b                                        ; $637c: $78
	ld   hl, sp-$08                                  ; $637d: $f8 $f8
	jr   c, jr_025_630d                              ; $637f: $38 $8c

	ld   sp, hl                                      ; $6381: $f9
	adc  $f8                                         ; $6382: $ce $f8
	ld   c, [hl]                                     ; $6384: $4e
	ld   hl, sp+$4e                                  ; $6385: $f8 $4e
	ret  c                                           ; $6387: $d8

	ld   c, [hl]                                     ; $6388: $4e
	call c, $d446                                    ; $6389: $dc $46 $d4
	ld   h, a                                        ; $638c: $67
	db   $e4                                         ; $638d: $e4
	ld   h, e                                        ; $638e: $63
	ld   [$e0d6], a                                  ; $638f: $ea $d6 $e0
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	rlca                                             ; $639f: $07
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	nop                                              ; $63a7: $00
	ld   h, b                                        ; $63a8: $60
	nop                                              ; $63a9: $00
	ld   b, c                                        ; $63aa: $41
	jr   nz, @+$03                                   ; $63ab: $20 $01

	jr   nz, @-$3b                                   ; $63ad: $20 $c3

	ld   bc, $7ca8                                   ; $63af: $01 $a8 $7c
	jr   z, jr_025_6430                              ; $63b2: $28 $7c

	or   h                                           ; $63b4: $b4
	ld   a, [hl]                                     ; $63b5: $7e
	db   $f4                                         ; $63b6: $f4
	ld   a, [hl]                                     ; $63b7: $7e
	ld   [hl], d                                     ; $63b8: $72
	cp   $d2                                         ; $63b9: $fe $d2
	ei                                               ; $63bb: $fb

jr_025_63bc:
	jp   c, $fafb                                    ; $63bc: $da $fb $fa

	ei                                               ; $63bf: $fb
	ld   h, e                                        ; $63c0: $63
	ld   a, [$ff33]                                  ; $63c1: $fa $33 $ff
	or   c                                           ; $63c4: $b1
	rst  $38                                         ; $63c5: $ff
	or   c                                           ; $63c6: $b1
	rst  $38                                         ; $63c7: $ff
	pop  de                                          ; $63c8: $d1
	rst  $38                                         ; $63c9: $ff
	ret  c                                           ; $63ca: $d8

	rst  $38                                         ; $63cb: $ff
	ret  c                                           ; $63cc: $d8

	rst  $38                                         ; $63cd: $ff
	db   $fc                                         ; $63ce: $fc
	rst  $38                                         ; $63cf: $ff
	nop                                              ; $63d0: $00
	inc  b                                           ; $63d1: $04
	add  b                                           ; $63d2: $80
	inc  b                                           ; $63d3: $04
	pop  bc                                          ; $63d4: $c1
	add  h                                           ; $63d5: $84
	ld   h, b                                        ; $63d6: $60
	jp   $30e0                                       ; $63d7: $c3 $e0 $30


	di                                               ; $63da: $f3
	adc  h                                           ; $63db: $8c
	rst  $38                                         ; $63dc: $ff
	add  e                                           ; $63dd: $83
	ld   a, a                                        ; $63de: $7f
	pop  bc                                          ; $63df: $c1
	ld   bc, $0383                                   ; $63e0: $01 $83 $03
	add  a                                           ; $63e3: $87
	add  [hl]                                        ; $63e4: $86
	ld   c, $05                                      ; $63e5: $0e $05
	inc  e                                           ; $63e7: $1c
	ld   c, b                                        ; $63e8: $48
	add  hl, sp                                      ; $63e9: $39
	jr   jr_025_63bc                                 ; $63ea: $18 $d0

	jr   nc, jr_025_640e                             ; $63ec: $30 $20

	ld   h, b                                        ; $63ee: $60
	ld   b, b                                        ; $63ef: $40
	sbc  l                                           ; $63f0: $9d
	push bc                                          ; $63f1: $c5
	add  hl, sp                                      ; $63f2: $39
	dec  e                                           ; $63f3: $1d
	ld   sp, hl                                      ; $63f4: $f9
	ccf                                              ; $63f5: $3f
	ld   e, l                                        ; $63f6: $5d
	rst  ToBoot                                         ; $63f7: $c7
	dec  l                                           ; $63f8: $2d
	rla                                              ; $63f9: $17
	dec  b                                           ; $63fa: $05
	ccf                                              ; $63fb: $3f
	rlca                                             ; $63fc: $07
	inc  bc                                          ; $63fd: $03
	rlca                                             ; $63fe: $07
	dec  bc                                          ; $63ff: $0b
	adc  b                                           ; $6400: $88
	rst  $38                                         ; $6401: $ff
	db   $10                                         ; $6402: $10
	rst  $38                                         ; $6403: $ff
	db   $10                                         ; $6404: $10
	rst  $38                                         ; $6405: $ff
	jr   nz, @+$01                                   ; $6406: $20 $ff

	inc  h                                           ; $6408: $24
	rst  $38                                         ; $6409: $ff
	jr   z, @-$03                                    ; $640a: $28 $fb

	ld   d, c                                        ; $640c: $51
	push af                                          ; $640d: $f5

jr_025_640e:
	ld   [hl], l                                     ; $640e: $75
	rst  $38                                         ; $640f: $ff
	nop                                              ; $6410: $00
	rst  $38                                         ; $6411: $ff
	nop                                              ; $6412: $00
	rst  $38                                         ; $6413: $ff
	nop                                              ; $6414: $00
	rst  $38                                         ; $6415: $ff
	nop                                              ; $6416: $00
	rst  $38                                         ; $6417: $ff

jr_025_6418:
	ld   bc, $80ff                                   ; $6418: $01 $ff $80
	rst  $38                                         ; $641b: $ff
	inc  h                                           ; $641c: $24
	ld   a, [hl]                                     ; $641d: $7e
	ld   h, [hl]                                     ; $641e: $66
	ld   a, [hl]                                     ; $641f: $7e
	ld   b, $ff                                      ; $6420: $06 $ff
	ld   bc, $00ff                                   ; $6422: $01 $ff $00
	rst  $38                                         ; $6425: $ff
	ld   bc, $10ff                                   ; $6426: $01 $ff $10
	rst  $38                                         ; $6429: $ff
	adc  d                                           ; $642a: $8a
	cp   $c9                                         ; $642b: $fe $c9
	rst  $28                                         ; $642d: $ef
	push hl                                          ; $642e: $e5
	rst  $30                                         ; $642f: $f7

jr_025_6430:
	add  b                                           ; $6430: $80
	add  b                                           ; $6431: $80
	ret  nz                                          ; $6432: $c0

	ret  nz                                          ; $6433: $c0

	ldh  [$e0], a                                    ; $6434: $e0 $e0
	jr   nz, jr_025_6418                             ; $6436: $20 $e0

	sub  b                                           ; $6438: $90
	or   b                                           ; $6439: $b0
	ld   d, b                                        ; $643a: $50
	ret  nc                                          ; $643b: $d0

	ld   c, h                                        ; $643c: $4c
	ld   d, b                                        ; $643d: $50
	inc  a                                           ; $643e: $3c
	ret  z                                           ; $643f: $c8

	ld   l, d                                        ; $6440: $6a
	cp   $7a                                         ; $6441: $fe $7a
	rst  $38                                         ; $6443: $ff
	ld   [hl], l                                     ; $6444: $75
	rst  $38                                         ; $6445: $ff
	ld   a, e                                        ; $6446: $7b
	rst  $38                                         ; $6447: $ff
	ld   l, a                                        ; $6448: $6f
	rst  $38                                         ; $6449: $ff
	ld   [hl], a                                     ; $644a: $77
	ei                                               ; $644b: $fb
	ld   a, [hl-]                                    ; $644c: $3a
	and  $34                                         ; $644d: $e6 $34
	db   $ec                                         ; $644f: $ec
	ld   h, [hl]                                     ; $6450: $66
	rst  $38                                         ; $6451: $ff
	adc  $fb                                         ; $6452: $ce $fb
	adc  $fb                                         ; $6454: $ce $fb
	sbc  l                                           ; $6456: $9d
	rst  $30                                         ; $6457: $f7
	cp   l                                           ; $6458: $bd
	rst  $20                                         ; $6459: $e7
	push af                                          ; $645a: $f5
	rst  $20                                         ; $645b: $e7
	scf                                              ; $645c: $37
	ld   [hl], $2e                                   ; $645d: $36 $2e
	ld   h, h                                        ; $645f: $64
	or   h                                           ; $6460: $b4
	rst  $30                                         ; $6461: $f7
	ldh  a, [c]                                      ; $6462: $f2
	cp   a                                           ; $6463: $bf
	ld   a, [$bfaf]                                  ; $6464: $fa $af $bf
	daa                                              ; $6467: $27
	cp   a                                           ; $6468: $bf
	dec  l                                           ; $6469: $2d
	cp   c                                           ; $646a: $b9
	ld   a, [hl-]                                    ; $646b: $3a
	dec  h                                           ; $646c: $25
	inc  l                                           ; $646d: $2c
	add  hl, bc                                      ; $646e: $09
	inc  c                                           ; $646f: $0c
	add  sp, $30                                     ; $6470: $e8 $30
	xor  b                                           ; $6472: $a8
	ldh  a, [$98]                                    ; $6473: $f0 $98
	add  sp, -$28                                    ; $6475: $e8 $d8
	add  sp, $78                                     ; $6477: $e8 $78
	ret  nz                                          ; $6479: $c0

	sub  $f0                                         ; $647a: $d6 $f0
	pop  hl                                          ; $647c: $e1
	ldh  [$e6], a                                    ; $647d: $e0 $e6
	ldh  [$3c], a                                    ; $647f: $e0 $3c
	ldh  [$3e], a                                    ; $6481: $e0 $3e
	ldh  [c], a                                      ; $6483: $e2
	dec  sp                                          ; $6484: $3b
	pop  hl                                          ; $6485: $e1
	add  hl, sp                                      ; $6486: $39
	ld   h, b                                        ; $6487: $60
	jr   c, jr_025_64fa                              ; $6488: $38 $70

	jr   @+$52                                       ; $648a: $18 $50

	sbc  h                                           ; $648c: $9c
	sub  b                                           ; $648d: $90
	adc  h                                           ; $648e: $8c
	xor  b                                           ; $648f: $a8
	ld   e, b                                        ; $6490: $58
	ld   h, b                                        ; $6491: $60
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	add  b                                           ; $6494: $80
	ldh  [$e0], a                                    ; $6495: $e0 $e0
	nop                                              ; $6497: $00
	ld   bc, $0100                                   ; $6498: $01 $00 $01
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	inc  c                                           ; $649e: $0c
	ld   e, $02                                      ; $649f: $1e $02
	inc  bc                                          ; $64a1: $03
	ld   b, $1d                                      ; $64a2: $06 $1d
	inc  e                                           ; $64a4: $1c
	inc  bc                                          ; $64a5: $03
	inc  bc                                          ; $64a6: $03
	ld   bc, $0381                                   ; $64a7: $01 $81 $03
	rlca                                             ; $64aa: $07
	add  e                                           ; $64ab: $83
	rlca                                             ; $64ac: $07
	add  e                                           ; $64ad: $83
	rrca                                             ; $64ae: $0f
	rlca                                             ; $64af: $07
	cp   b                                           ; $64b0: $b8
	ret  nz                                          ; $64b1: $c0

	or   b                                           ; $64b2: $b0
	ldh  [$d8], a                                    ; $64b3: $e0 $d8
	ldh  a, [$d4]                                    ; $64b5: $f0 $d4
	ld   hl, sp-$36                                  ; $64b7: $f8 $ca
	ld   hl, sp+$7f                                  ; $64b9: $f8 $7f
	add  b                                           ; $64bb: $80
	ld   l, b                                        ; $64bc: $68
	db   $ec                                         ; $64bd: $ec
	xor  b                                           ; $64be: $a8
	db   $ec                                         ; $64bf: $ec
	adc  h                                           ; $64c0: $8c
	add  sp, -$32                                    ; $64c1: $e8 $ce
	db   $fc                                         ; $64c3: $fc
	rst  ToBoot                                         ; $64c4: $c7
	cp   $c5                                         ; $64c5: $fe $c5
	rst  $38                                         ; $64c7: $ff
	ld   b, a                                        ; $64c8: $47
	db   $fc                                         ; $64c9: $fc
	ld   h, e                                        ; $64ca: $63
	cp   $63                                         ; $64cb: $fe $63
	cp   $f1                                         ; $64cd: $fe $f1
	rst  $38                                         ; $64cf: $ff
	nop                                              ; $64d0: $00
	ld   hl, $212a                                   ; $64d1: $21 $2a $21
	ld   a, $21                                      ; $64d4: $3e $21
	sbc  h                                           ; $64d6: $9c
	ld   e, $81                                      ; $64d7: $1e $81
	ret  nz                                          ; $64d9: $c0

	call z, $fc33                                    ; $64da: $cc $33 $fc
	inc  c                                           ; $64dd: $0c
	db   $fc                                         ; $64de: $fc
	inc  b                                           ; $64df: $04
	ld   b, $8f                                      ; $64e0: $06 $8f
	dec  c                                           ; $64e2: $0d
	rra                                              ; $64e3: $1f
	dec  e                                           ; $64e4: $1d
	ccf                                              ; $64e5: $3f
	rra                                              ; $64e6: $1f
	ld   a, a                                        ; $64e7: $7f
	ld   [$00cc], sp                                 ; $64e8: $08 $cc $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	and  h                                           ; $64f0: $a4
	db   $f4                                         ; $64f1: $f4
	and  h                                           ; $64f2: $a4
	or   $a4                                         ; $64f3: $f6 $a4
	cp   $b6                                         ; $64f5: $fe $b6

Call_025_64f7:
	cp   $76                                         ; $64f7: $fe $76
	ld   a, [hl]                                     ; $64f9: $7e

jr_025_64fa:
	ld   d, $1e                                      ; $64fa: $16 $1e
	ld   c, $0e                                      ; $64fc: $0e $0e
	ld   b, $06                                      ; $64fe: $06 $06
	call $8fff                                       ; $6500: $cd $ff $8f
	rst  $38                                         ; $6503: $ff
	adc  [hl]                                        ; $6504: $8e
	rst  $38                                         ; $6505: $ff
	adc  h                                           ; $6506: $8c
	rst  $38                                         ; $6507: $ff
	adc  c                                           ; $6508: $89
	rst  $38                                         ; $6509: $ff
	rrca                                             ; $650a: $0f
	rst  $38                                         ; $650b: $ff
	ld   c, $ff                                      ; $650c: $0e $ff
	inc  c                                           ; $650e: $0c
	rst  $38                                         ; $650f: $ff
	ld   bc, $41af                                   ; $6510: $01 $af $41
	ld   c, e                                        ; $6513: $4b
	ld   b, e                                        ; $6514: $43
	rst  ToBoot                                         ; $6515: $c7
	add  e                                           ; $6516: $83
	cp   a                                           ; $6517: $bf
	sub  [hl]                                        ; $6518: $96
	rst  $38                                         ; $6519: $ff
	ld   h, $ff                                      ; $651a: $26 $ff
	ld   l, [hl]                                     ; $651c: $6e
	ei                                               ; $651d: $fb
	call c, Call_025_64f7                            ; $651e: $dc $f7 $64
	rst  $38                                         ; $6521: $ff
	ld   h, h                                        ; $6522: $64

jr_025_6523:
	rst  $28                                         ; $6523: $ef
	ld   h, [hl]                                     ; $6524: $66
	xor  $66                                         ; $6525: $ee $66
	rst  $20                                         ; $6527: $e7
	ld   h, [hl]                                     ; $6528: $66
	rst  $28                                         ; $6529: $ef
	ld   h, a                                        ; $652a: $67
	db   $fd                                         ; $652b: $fd
	rst  $20                                         ; $652c: $e7
	cp   l                                           ; $652d: $bd
	rst  $20                                         ; $652e: $e7
	cp   l                                           ; $652f: $bd
	jr   nz, jr_025_6523                             ; $6530: $20 $f1

	db   $10                                         ; $6532: $10
	jp   c, $9b90                                    ; $6533: $da $90 $9b

	sub  c                                           ; $6536: $91
	db   $dd                                         ; $6537: $dd
	ret  z                                           ; $6538: $c8

	db   $dd                                         ; $6539: $dd
	ret  z                                           ; $653a: $c8

	rst  $38                                         ; $653b: $ff
	db   $ec                                         ; $653c: $ec
	ld   a, a                                        ; $653d: $7f
	db   $ec                                         ; $653e: $ec
	ld   a, a                                        ; $653f: $7f
	add  hl, bc                                      ; $6540: $09
	rst  $38                                         ; $6541: $ff
	ld   c, $ff                                      ; $6542: $0e $ff
	rrca                                             ; $6544: $0f
	ld   sp, hl                                      ; $6545: $f9
	rrca                                             ; $6546: $0f
	db   $db                                         ; $6547: $db
	ld   c, l                                        ; $6548: $4d
	db   $dd                                         ; $6549: $dd
	ld   c, [hl]                                     ; $654a: $4e
	reti                                             ; $654b: $d9


	ld   c, a                                        ; $654c: $4f
	ret  z                                           ; $654d: $c8

	ld   c, h                                        ; $654e: $4c
	ret  z                                           ; $654f: $c8

	xor  l                                           ; $6550: $ad
	rst  $30                                         ; $6551: $f7
	set  7, [hl]                                     ; $6552: $cb $fe
	ld   a, [hl]                                     ; $6554: $7e
	cp   h                                           ; $6555: $bc
	xor  $fc                                         ; $6556: $ee $fc
	ld   e, a                                        ; $6558: $5f
	jp   c, $e113                                    ; $6559: $da $13 $e1

	inc  bc                                          ; $655c: $03
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	xor  l                                           ; $6560: $ad
	add  hl, sp                                      ; $6561: $39
	ld   c, c                                        ; $6562: $49
	ld   a, c                                        ; $6563: $79
	ld   d, c                                        ; $6564: $51
	ld   [hl], c                                     ; $6565: $71
	and  e                                           ; $6566: $a3
	pop  hl                                          ; $6567: $e1
	xor  $c3                                         ; $6568: $ee $c3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $656a: $cf
	add  a                                           ; $656b: $87
	ld   [bc], a                                     ; $656c: $02
	inc  bc                                          ; $656d: $03
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	ld   a, l                                        ; $6570: $7d
	ld   d, a                                        ; $6571: $57
	ld   d, l                                        ; $6572: $55
	ld   a, a                                        ; $6573: $7f
	ld   e, l                                        ; $6574: $5d
	rst  $20                                         ; $6575: $e7
	db   $fd                                         ; $6576: $fd
	and  a                                           ; $6577: $a7
	db   $ed                                         ; $6578: $ed
	rst  $30                                         ; $6579: $f7
	or   a                                           ; $657a: $b7
	sbc  a                                           ; $657b: $9f
	adc  a                                           ; $657c: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $657d: $cf
	rra                                              ; $657e: $1f
	cpl                                              ; $657f: $2f
	call z, $cce8                                    ; $6580: $cc $e8 $cc
	add  sp, -$34                                    ; $6583: $e8 $cc
	add  sp, -$32                                    ; $6585: $e8 $ce
	ld   hl, sp-$3a                                  ; $6587: $f8 $c6
	db   $fc                                         ; $6589: $fc
	add  $fc                                         ; $658a: $c6 $fc
	rst  ToBoot                                         ; $658c: $c7
	db   $fc                                         ; $658d: $fc
	rst  ToBoot                                         ; $658e: $c7
	db   $fc                                         ; $658f: $fc
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	ld   bc, $0006                                   ; $659c: $01 $06 $00
	add  hl, bc                                      ; $659f: $09
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	stop                                             ; $65a6: $10 $00
	jr   c, jr_025_65b2                              ; $65a8: $38 $08

	jr   nz, jr_025_65bc                             ; $65aa: $20 $10

	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	ldh  [$0d], a                                    ; $65af: $e0 $0d
	rra                                              ; $65b1: $1f

jr_025_65b2:
	inc  c                                           ; $65b2: $0c
	rra                                              ; $65b3: $1f
	ld   a, $1f                                      ; $65b4: $3e $1f
	ld   e, $3f                                      ; $65b6: $1e $3f
	ld   a, d                                        ; $65b8: $7a
	ccf                                              ; $65b9: $3f
	ld   a, [hl-]                                    ; $65ba: $3a
	ld   a, a                                        ; $65bb: $7f

jr_025_65bc:
	ld   a, [$f97f]                                  ; $65bc: $fa $7f $f9
	rst  $38                                         ; $65bf: $ff
	push bc                                          ; $65c0: $c5
	cp   $e6                                         ; $65c1: $fe $e6
	rst  $38                                         ; $65c3: $ff
	rst  $20                                         ; $65c4: $e7
	db   $fd                                         ; $65c5: $fd
	rst  $20                                         ; $65c6: $e7
	db   $fc                                         ; $65c7: $fc
	db   $e3                                         ; $65c8: $e3
	cp   $e3                                         ; $65c9: $fe $e3
	cp   $d3                                         ; $65cb: $fe $d3
	cp   $d1                                         ; $65cd: $fe $d1
	rst  $38                                         ; $65cf: $ff
	add  b                                           ; $65d0: $80
	rlca                                             ; $65d1: $07
	add  b                                           ; $65d2: $80
	nop                                              ; $65d3: $00
	ld   b, b                                        ; $65d4: $40
	add  b                                           ; $65d5: $80
	and  b                                           ; $65d6: $a0
	ret  nz                                          ; $65d7: $c0

	ld   hl, sp+$60                                  ; $65d8: $f8 $60
	cp   $19                                         ; $65da: $fe $19
	rst  $38                                         ; $65dc: $ff
	ld   b, $ff                                      ; $65dd: $06 $ff
	nop                                              ; $65df: $00
	ld   b, c                                        ; $65e0: $41
	add  c                                           ; $65e1: $81
	inc  bc                                          ; $65e2: $03
	inc  bc                                          ; $65e3: $03
	rlca                                             ; $65e4: $07
	rrca                                             ; $65e5: $0f
	ccf                                              ; $65e6: $3f
	rra                                              ; $65e7: $1f
	and  e                                           ; $65e8: $a3
	ld   h, e                                        ; $65e9: $63
	add  b                                           ; $65ea: $80
	add  b                                           ; $65eb: $80
	add  b                                           ; $65ec: $80
	add  b                                           ; $65ed: $80
	add  b                                           ; $65ee: $80
	add  b                                           ; $65ef: $80
	jp   hl                                          ; $65f0: $e9


	rst  $38                                         ; $65f1: $ff
	push hl                                          ; $65f2: $e5
	rst  $38                                         ; $65f3: $ff
	push hl                                          ; $65f4: $e5
	rst  $38                                         ; $65f5: $ff
	push hl                                          ; $65f6: $e5
	rst  $38                                         ; $65f7: $ff
	rst  $30                                         ; $65f8: $f7
	rst  $38                                         ; $65f9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65fa: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65fb: $cf
	inc  bc                                          ; $65fc: $03
	inc  bc                                          ; $65fd: $03
	ld   bc, $0001                                   ; $65fe: $01 $01 $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00

Jump_025_6699:
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00

jr_025_67bb:
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	add  b                                           ; $6800: $80
	nop                                              ; $6801: $00
	add  b                                           ; $6802: $80
	nop                                              ; $6803: $00
	add  b                                           ; $6804: $80
	nop                                              ; $6805: $00
	add  b                                           ; $6806: $80
	nop                                              ; $6807: $00
	add  b                                           ; $6808: $80
	jr   nc, jr_025_67bb                             ; $6809: $30 $b0

	ld   l, b                                        ; $680b: $68
	ld   [hl], b                                     ; $680c: $70
	ld   hl, sp-$08                                  ; $680d: $f8 $f8
	db   $fc                                         ; $680f: $fc
	ld   sp, hl                                      ; $6810: $f9
	ei                                               ; $6811: $fb
	ei                                               ; $6812: $fb
	rlca                                             ; $6813: $07
	rlca                                             ; $6814: $07
	db   $fd                                         ; $6815: $fd
	ld   l, l                                        ; $6816: $6d
	sbc  [hl]                                        ; $6817: $9e
	sbc  h                                           ; $6818: $9c
	ld   a, a                                        ; $6819: $7f
	ld   e, h                                        ; $681a: $5c
	xor  e                                           ; $681b: $ab
	xor  h                                           ; $681c: $ac
	ld   e, e                                        ; $681d: $5b
	rst  ToBoot                                         ; $681e: $c7
	ld   a, $e8                                      ; $681f: $3e $e8
	db   $fc                                         ; $6821: $fc
	call nz, $8cfe                                   ; $6822: $c4 $fe $8c
	cp   $1e                                         ; $6825: $fe $1e
	rst  $38                                         ; $6827: $ff
	inc  a                                           ; $6828: $3c
	cp   $7a                                         ; $6829: $fe $7a
	db   $fc                                         ; $682b: $fc
	halt                                             ; $682c: $76
	ld   hl, sp+$6c                                  ; $682d: $f8 $6c
	ldh  a, [rTAC]                                   ; $682f: $f0 $07
	rrca                                             ; $6831: $0f
	inc  bc                                          ; $6832: $03
	rlca                                             ; $6833: $07
	inc  bc                                          ; $6834: $03
	dec  b                                           ; $6835: $05
	nop                                              ; $6836: $00
	inc  bc                                          ; $6837: $03
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	ld   d, c                                        ; $6840: $51
	ld   l, b                                        ; $6841: $68
	and  b                                           ; $6842: $a0
	reti                                             ; $6843: $d9


	ld   d, c                                        ; $6844: $51
	xor  e                                           ; $6845: $ab
	and  d                                           ; $6846: $a2
	ld   e, a                                        ; $6847: $5f
	ld   b, l                                        ; $6848: $45
	cp   [hl]                                        ; $6849: $be
	adc  d                                           ; $684a: $8a
	ld   a, h                                        ; $684b: $7c
	dec  d                                           ; $684c: $15
	ld   sp, hl                                      ; $684d: $f9
	xor  d                                           ; $684e: $aa
	ld   [hl], d                                     ; $684f: $72
	inc  a                                           ; $6850: $3c
	inc  bc                                          ; $6851: $03
	rlca                                             ; $6852: $07
	nop                                              ; $6853: $00
	ld   bc, $0000                                   ; $6854: $01 $00 $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	ld   hl, sp+$07                                  ; $6860: $f8 $07
	add  hl, sp                                      ; $6862: $39
	add  $c2                                         ; $6863: $c6 $c2
	inc  a                                           ; $6865: $3c
	inc  a                                           ; $6866: $3c
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	ld   b, b                                        ; $686a: $40
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	cp   $00                                         ; $6871: $fe $00
	rst  $38                                         ; $6873: $ff
	xor  d                                           ; $6874: $aa
	ld   d, l                                        ; $6875: $55
	ld   d, d                                        ; $6876: $52
	xor  l                                           ; $6877: $ad
	ld   hl, sp+$05                                  ; $6878: $f8 $05
	ld   hl, sp+$05                                  ; $687a: $f8 $05
	xor  b                                           ; $687c: $a8
	dec  b                                           ; $687d: $05
	ld   d, d                                        ; $687e: $52
	rlca                                             ; $687f: $07
	ld   c, $03                                      ; $6880: $0e $03
	ld   [bc], a                                     ; $6882: $02
	inc  bc                                          ; $6883: $03
	db   $fc                                         ; $6884: $fc
	db   $fd                                         ; $6885: $fd
	nop                                              ; $6886: $00
	ld   bc, $a952                                   ; $6887: $01 $52 $a9
	db   $fc                                         ; $688a: $fc
	ld   [bc], a                                     ; $688b: $02
	inc  bc                                          ; $688c: $03
	db   $fc                                         ; $688d: $fc
	dec  b                                           ; $688e: $05
	ld   a, [$fd02]                                  ; $688f: $fa $02 $fd
	dec  b                                           ; $6892: $05
	ld   a, [$fd02]                                  ; $6893: $fa $02 $fd
	push bc                                          ; $6896: $c5
	ld   a, [hl-]                                    ; $6897: $3a
	dec  bc                                          ; $6898: $0b
	inc  [hl]                                        ; $6899: $34
	ld   e, a                                        ; $689a: $5f
	ld   h, b                                        ; $689b: $60
	set  4, b                                        ; $689c: $cb $e0
	dec  d                                           ; $689e: $15
	ret  nz                                          ; $689f: $c0

	ld   a, [$06fb]                                  ; $68a0: $fa $fb $06
	ei                                               ; $68a3: $fb
	ld   a, [$02fb]                                  ; $68a4: $fa $fb $02
	rst  $38                                         ; $68a7: $ff
	cp   $01                                         ; $68a8: $fe $01
	ld   bc, $fffe                                   ; $68aa: $01 $fe $ff
	nop                                              ; $68ad: $00
	rst  $38                                         ; $68ae: $ff
	nop                                              ; $68af: $00
	ld   d, b                                        ; $68b0: $50
	ld   l, b                                        ; $68b1: $68
	and  b                                           ; $68b2: $a0
	ret  c                                           ; $68b3: $d8

	ld   d, b                                        ; $68b4: $50
	xor  b                                           ; $68b5: $a8
	and  b                                           ; $68b6: $a0
	ld   e, b                                        ; $68b7: $58
	ld   b, b                                        ; $68b8: $40
	or   b                                           ; $68b9: $b0
	add  c                                           ; $68ba: $81
	ld   h, b                                        ; $68bb: $60
	ld   bc, $0fc0                                   ; $68bc: $01 $c0 $0f
	add  b                                           ; $68bf: $80
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	inc  bc                                          ; $68d1: $03
	inc  bc                                          ; $68d2: $03

jr_025_68d3:
	inc  b                                           ; $68d3: $04
	inc  bc                                          ; $68d4: $03
	inc  b                                           ; $68d5: $04
	inc  bc                                          ; $68d6: $03
	rlca                                             ; $68d7: $07
	inc  bc                                          ; $68d8: $03
	rlca                                             ; $68d9: $07
	nop                                              ; $68da: $00
	inc  b                                           ; $68db: $04
	nop                                              ; $68dc: $00
	inc  b                                           ; $68dd: $04
	ld   [bc], a                                     ; $68de: $02
	inc  b                                           ; $68df: $04
	nop                                              ; $68e0: $00
	rlca                                             ; $68e1: $07
	rlca                                             ; $68e2: $07
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	jr   nz, jr_025_68ec                             ; $68ea: $20 $00

jr_025_68ec:
	ld   h, b                                        ; $68ec: $60
	nop                                              ; $68ed: $00
	rst  $38                                         ; $68ee: $ff
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	rst  $38                                         ; $68f1: $ff
	rst  $38                                         ; $68f2: $ff
	nop                                              ; $68f3: $00
	inc  bc                                          ; $68f4: $03
	nop                                              ; $68f5: $00
	ld   bc, $0000                                   ; $68f6: $01 $00 $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	ld   e, a                                        ; $6900: $5f
	sbc  a                                           ; $6901: $9f
	nop                                              ; $6902: $00
	rst  $38                                         ; $6903: $ff
	nop                                              ; $6904: $00
	rst  $38                                         ; $6905: $ff
	ld   b, h                                        ; $6906: $44
	cp   e                                           ; $6907: $bb
	ld   b, h                                        ; $6908: $44
	cp   e                                           ; $6909: $bb
	jr   c, jr_025_68d3                              ; $690a: $38 $c7

	nop                                              ; $690c: $00
	rst  $38                                         ; $690d: $ff
	nop                                              ; $690e: $00
	rst  $38                                         ; $690f: $ff
	ld   e, [hl]                                     ; $6910: $5e
	jr   nz, @+$57                                   ; $6911: $20 $55

	ld   h, b                                        ; $6913: $60
	nop                                              ; $6914: $00
	rst  $38                                         ; $6915: $ff
	nop                                              ; $6916: $00
	rst  $38                                         ; $6917: $ff
	nop                                              ; $6918: $00
	rst  $38                                         ; $6919: $ff
	nop                                              ; $691a: $00
	rst  $38                                         ; $691b: $ff
	nop                                              ; $691c: $00
	rst  $38                                         ; $691d: $ff
	nop                                              ; $691e: $00
	rst  $38                                         ; $691f: $ff
	xor  d                                           ; $6920: $aa

jr_025_6921:
	ld   d, l                                        ; $6921: $55
	rst  $38                                         ; $6922: $ff
	nop                                              ; $6923: $00
	rst  $38                                         ; $6924: $ff
	nop                                              ; $6925: $00
	sbc  c                                           ; $6926: $99
	ld   h, [hl]                                     ; $6927: $66
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	nop                                              ; $692a: $00
	rst  $38                                         ; $692b: $ff
	nop                                              ; $692c: $00
	inc  d                                           ; $692d: $14
	nop                                              ; $692e: $00
	inc  e                                           ; $692f: $1c
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	rst  $38                                         ; $6935: $ff
	nop                                              ; $6936: $00
	rst  $38                                         ; $6937: $ff
	nop                                              ; $6938: $00
	rst  $38                                         ; $6939: $ff
	nop                                              ; $693a: $00
	rst  $38                                         ; $693b: $ff
	nop                                              ; $693c: $00
	rst  $38                                         ; $693d: $ff
	nop                                              ; $693e: $00
	rst  $38                                         ; $693f: $ff
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	rst  $38                                         ; $6945: $ff
	nop                                              ; $6946: $00
	rst  $38                                         ; $6947: $ff
	nop                                              ; $6948: $00
	rst  $38                                         ; $6949: $ff
	nop                                              ; $694a: $00
	rst  $38                                         ; $694b: $ff
	nop                                              ; $694c: $00
	rst  $38                                         ; $694d: $ff
	nop                                              ; $694e: $00
	rst  $38                                         ; $694f: $ff
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	ld   b, $04                                      ; $6953: $06 $04
	ei                                               ; $6955: $fb
	inc  b                                           ; $6956: $04
	ei                                               ; $6957: $fb
	jr   c, jr_025_6921                              ; $6958: $38 $c7

	ld   b, b                                        ; $695a: $40
	cp   a                                           ; $695b: $bf
	add  b                                           ; $695c: $80
	ld   a, a                                        ; $695d: $7f
	add  b                                           ; $695e: $80
	ld   a, a                                        ; $695f: $7f
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	ldh  a, [rP1]                                    ; $6965: $f0 $00
	ld   hl, sp+$00                                  ; $6967: $f8 $00
	db   $fc                                         ; $6969: $fc
	nop                                              ; $696a: $00
	cp   $00                                         ; $696b: $fe $00
	rst  $38                                         ; $696d: $ff
	nop                                              ; $696e: $00
	rst  $38                                         ; $696f: $ff
	nop                                              ; $6970: $00
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	nop                                              ; $6973: $00
	rst  $38                                         ; $6974: $ff
	nop                                              ; $6975: $00
	rst  $38                                         ; $6976: $ff
	rst  $38                                         ; $6977: $ff
	rst  $38                                         ; $6978: $ff
	rst  $38                                         ; $6979: $ff
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	xor  d                                           ; $697e: $aa
	nop                                              ; $697f: $00
	dec  a                                           ; $6980: $3d
	ld   b, d                                        ; $6981: $42
	dec  a                                           ; $6982: $3d
	ld   b, d                                        ; $6983: $42
	nop                                              ; $6984: $00
	ld   a, a                                        ; $6985: $7f
	inc  a                                           ; $6986: $3c
	ld   c, e                                        ; $6987: $4b
	inc  a                                           ; $6988: $3c
	ld   c, e                                        ; $6989: $4b
	inc  a                                           ; $698a: $3c
	ld   c, e                                        ; $698b: $4b
	inc  a                                           ; $698c: $3c
	ld   c, e                                        ; $698d: $4b
	inc  a                                           ; $698e: $3c
	ld   c, e                                        ; $698f: $4b
	ld   c, e                                        ; $6990: $4b
	add  h                                           ; $6991: $84
	ld   c, e                                        ; $6992: $4b
	add  h                                           ; $6993: $84
	ld   b, b                                        ; $6994: $40
	adc  a                                           ; $6995: $8f
	ld   b, b                                        ; $6996: $40
	sbc  a                                           ; $6997: $9f
	ld   b, b                                        ; $6998: $40
	cp   a                                           ; $6999: $bf
	nop                                              ; $699a: $00
	rst  $38                                         ; $699b: $ff
	nop                                              ; $699c: $00
	rst  $38                                         ; $699d: $ff
	nop                                              ; $699e: $00
	rst  $38                                         ; $699f: $ff
	ccf                                              ; $69a0: $3f
	ret  nz                                          ; $69a1: $c0

	nop                                              ; $69a2: $00
	rst  $38                                         ; $69a3: $ff
	jr   nz, @-$3e                                   ; $69a4: $20 $c0

	ccf                                              ; $69a6: $3f
	ret  nz                                          ; $69a7: $c0

	nop                                              ; $69a8: $00
	rst  $38                                         ; $69a9: $ff
	nop                                              ; $69aa: $00
	add  b                                           ; $69ab: $80
	nop                                              ; $69ac: $00
	add  b                                           ; $69ad: $80
	nop                                              ; $69ae: $00
	add  b                                           ; $69af: $80
	db   $fc                                         ; $69b0: $fc
	inc  bc                                          ; $69b1: $03
	nop                                              ; $69b2: $00
	rst  $38                                         ; $69b3: $ff
	inc  b                                           ; $69b4: $04
	inc  bc                                          ; $69b5: $03
	db   $fc                                         ; $69b6: $fc
	inc  bc                                          ; $69b7: $03
	nop                                              ; $69b8: $00
	rst  $38                                         ; $69b9: $ff
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	inc  bc                                          ; $69d0: $03
	inc  b                                           ; $69d1: $04
	inc  bc                                          ; $69d2: $03
	inc  b                                           ; $69d3: $04
	inc  hl                                          ; $69d4: $23
	inc  b                                           ; $69d5: $04
	dec  bc                                          ; $69d6: $0b
	inc  b                                           ; $69d7: $04
	xor  b                                           ; $69d8: $a8
	rlca                                             ; $69d9: $07
	ld   d, a                                        ; $69da: $57
	nop                                              ; $69db: $00
	cp   $01                                         ; $69dc: $fe $01
	nop                                              ; $69de: $00
	rst  $38                                         ; $69df: $ff
	ld   bc, $0100                                   ; $69e0: $01 $00 $01
	db   $10                                         ; $69e3: $10
	ld   bc, $0138                                   ; $69e4: $01 $38 $01
	ld   a, h                                        ; $69e7: $7c
	ld   bc, $0110                                   ; $69e8: $01 $10 $01
	db   $10                                         ; $69eb: $10
	ld   bc, rAUD1SWEEP                                   ; $69ec: $01 $10 $ff
	nop                                              ; $69ef: $00
	rst  $38                                         ; $69f0: $ff
	cp   $ef                                         ; $69f1: $fe $ef
	cp   $ef                                         ; $69f3: $fe $ef
	cp   $ef                                         ; $69f5: $fe $ef
	cp   $83                                         ; $69f7: $fe $83
	cp   $c7                                         ; $69f9: $fe $c7
	cp   $ef                                         ; $69fb: $fe $ef
	cp   $ff                                         ; $69fd: $fe $ff
	nop                                              ; $69ff: $00
	xor  d                                           ; $6a00: $aa
	ld   d, l                                        ; $6a01: $55
	rst  $38                                         ; $6a02: $ff
	nop                                              ; $6a03: $00
	rst  $38                                         ; $6a04: $ff
	nop                                              ; $6a05: $00
	sbc  c                                           ; $6a06: $99
	ld   h, [hl]                                     ; $6a07: $66
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	nop                                              ; $6a0a: $00
	rst  $38                                         ; $6a0b: $ff
	ld   l, d                                        ; $6a0c: $6a
	add  b                                           ; $6a0d: $80
	ld   [hl], l                                     ; $6a0e: $75
	add  b                                           ; $6a0f: $80
	xor  d                                           ; $6a10: $aa
	ld   d, l                                        ; $6a11: $55
	rst  $38                                         ; $6a12: $ff
	nop                                              ; $6a13: $00
	rst  $38                                         ; $6a14: $ff
	nop                                              ; $6a15: $00
	sbc  c                                           ; $6a16: $99
	ld   h, [hl]                                     ; $6a17: $66
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	nop                                              ; $6a1a: $00
	rst  $38                                         ; $6a1b: $ff
	ld   e, [hl]                                     ; $6a1c: $5e
	ld   h, b                                        ; $6a1d: $60
	ld   e, a                                        ; $6a1e: $5f
	ld   h, b                                        ; $6a1f: $60
	nop                                              ; $6a20: $00
	ld   [$1400], sp                                 ; $6a21: $08 $00 $14
	nop                                              ; $6a24: $00
	inc  e                                           ; $6a25: $1c
	nop                                              ; $6a26: $00
	ld   [$1400], sp                                 ; $6a27: $08 $00 $14
	nop                                              ; $6a2a: $00
	inc  e                                           ; $6a2b: $1c
	nop                                              ; $6a2c: $00

jr_025_6a2d:
	ld   [rRAMG], sp                                 ; $6a2d: $08 $00 $00
	xor  d                                           ; $6a30: $aa
	ld   d, l                                        ; $6a31: $55
	rst  $38                                         ; $6a32: $ff
	nop                                              ; $6a33: $00
	rst  $38                                         ; $6a34: $ff
	nop                                              ; $6a35: $00
	sbc  c                                           ; $6a36: $99
	ld   h, [hl]                                     ; $6a37: $66
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	nop                                              ; $6a3a: $00
	rst  $38                                         ; $6a3b: $ff
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	xor  d                                           ; $6a40: $aa
	ld   d, l                                        ; $6a41: $55
	cp   $01                                         ; $6a42: $fe $01
	cp   $01                                         ; $6a44: $fe $01
	sbc  b                                           ; $6a46: $98
	ld   h, a                                        ; $6a47: $67
	cp   $fd                                         ; $6a48: $fe $fd
	ld   [bc], a                                     ; $6a4a: $02
	db   $fd                                         ; $6a4b: $fd
	nop                                              ; $6a4c: $00
	ld   [de], a                                     ; $6a4d: $12
	nop                                              ; $6a4e: $00
	inc  c                                           ; $6a4f: $0c
	xor  d                                           ; $6a50: $aa
	ld   d, l                                        ; $6a51: $55
	rst  $38                                         ; $6a52: $ff
	nop                                              ; $6a53: $00
	rst  $38                                         ; $6a54: $ff
	nop                                              ; $6a55: $00
	sbc  c                                           ; $6a56: $99
	ld   h, [hl]                                     ; $6a57: $66
	rst  $38                                         ; $6a58: $ff
	cp   $00                                         ; $6a59: $fe $00
	rst  $38                                         ; $6a5b: $ff
	nop                                              ; $6a5c: $00
	ld   bc, $0000                                   ; $6a5d: $01 $00 $00
	ld   b, b                                        ; $6a60: $40
	cp   a                                           ; $6a61: $bf
	ldh  a, [rIF]                                    ; $6a62: $f0 $0f
	ld   hl, sp+$07                                  ; $6a64: $f8 $07
	db   $fc                                         ; $6a66: $fc
	inc  bc                                          ; $6a67: $03
	cp   $01                                         ; $6a68: $fe $01
	cp   $01                                         ; $6a6a: $fe $01
	ld   a, [hl]                                     ; $6a6c: $7e
	add  c                                           ; $6a6d: $81
	ld   a, h                                        ; $6a6e: $7c
	add  d                                           ; $6a6f: $82
	ld   bc, $0100                                   ; $6a70: $01 $00 $01
	db   $10                                         ; $6a73: $10
	ld   bc, $0138                                   ; $6a74: $01 $38 $01
	ld   a, h                                        ; $6a77: $7c
	ld   bc, $0110                                   ; $6a78: $01 $10 $01
	db   $10                                         ; $6a7b: $10
	ld   bc, rAUD1SWEEP                                   ; $6a7c: $01 $10 $ff
	nop                                              ; $6a7f: $00
	inc  a                                           ; $6a80: $3c
	srl  h                                           ; $6a81: $cb $3c
	srl  h                                           ; $6a83: $cb $3c
	srl  h                                           ; $6a85: $cb $3c
	rr   b                                           ; $6a87: $cb $18
	rst  $28                                         ; $6a89: $ef
	nop                                              ; $6a8a: $00
	rst  $38                                         ; $6a8b: $ff
	inc  a                                           ; $6a8c: $3c
	jp   $c33c                                       ; $6a8d: $c3 $3c $c3


	ld   [bc], a                                     ; $6a90: $02
	db   $fd                                         ; $6a91: $fd
	rrca                                             ; $6a92: $0f
	ldh  a, [$1f]                                    ; $6a93: $f0 $1f
	ldh  [$3f], a                                    ; $6a95: $e0 $3f
	ret  nz                                          ; $6a97: $c0

	ld   a, a                                        ; $6a98: $7f
	add  b                                           ; $6a99: $80
	ld   a, a                                        ; $6a9a: $7f
	add  b                                           ; $6a9b: $80
	ld   a, [hl]                                     ; $6a9c: $7e
	add  c                                           ; $6a9d: $81
	ld   a, $c1                                      ; $6a9e: $3e $c1
	ld   a, a                                        ; $6aa0: $7f
	rst  $38                                         ; $6aa1: $ff
	nop                                              ; $6aa2: $00
	add  b                                           ; $6aa3: $80
	nop                                              ; $6aa4: $00
	add  b                                           ; $6aa5: $80
	ld   a, a                                        ; $6aa6: $7f
	add  b                                           ; $6aa7: $80
	nop                                              ; $6aa8: $00
	add  c                                           ; $6aa9: $81
	jr   z, jr_025_6a2d                              ; $6aaa: $28 $81

	ld   a, h                                        ; $6aac: $7c
	add  c                                           ; $6aad: $81
	ld   a, [hl]                                     ; $6aae: $7e
	add  c                                           ; $6aaf: $81
	cp   $fe                                         ; $6ab0: $fe $fe
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	ld   c, b                                        ; $6ab6: $48
	nop                                              ; $6ab7: $00
	ld   [hl-], a                                    ; $6ab8: $32
	nop                                              ; $6ab9: $00
	rst  JumpTable                                         ; $6aba: $df
	nop                                              ; $6abb: $00
	rst  $38                                         ; $6abc: $ff
	nop                                              ; $6abd: $00
	rst  $38                                         ; $6abe: $ff
	nop                                              ; $6abf: $00
	cp   $01                                         ; $6ac0: $fe $01
	cp   $01                                         ; $6ac2: $fe $01
	cp   $01                                         ; $6ac4: $fe $01
	cp   $01                                         ; $6ac6: $fe $01
	cp   $01                                         ; $6ac8: $fe $01
	cp   $01                                         ; $6aca: $fe $01
	cp   $01                                         ; $6acc: $fe $01
	nop                                              ; $6ace: $00
	rst  $38                                         ; $6acf: $ff
	db   $fc                                         ; $6ad0: $fc
	inc  bc                                          ; $6ad1: $03
	ld   sp, hl                                      ; $6ad2: $f9
	inc  b                                           ; $6ad3: $04
	ld   sp, hl                                      ; $6ad4: $f9
	inc  b                                           ; $6ad5: $04
	ld   sp, hl                                      ; $6ad6: $f9
	inc  b                                           ; $6ad7: $04
	ld   sp, hl                                      ; $6ad8: $f9
	inc  b                                           ; $6ad9: $04
	inc  bc                                          ; $6ada: $03
	db   $fc                                         ; $6adb: $fc
	ld   a, [$0005]                                  ; $6adc: $fa $05 $00
	rlca                                             ; $6adf: $07
	ld   bc, $0100                                   ; $6ae0: $01 $00 $01
	db   $10                                         ; $6ae3: $10
	ld   bc, $0138                                   ; $6ae4: $01 $38 $01
	ld   a, h                                        ; $6ae7: $7c
	ld   bc, $0110                                   ; $6ae8: $01 $10 $01
	db   $10                                         ; $6aeb: $10
	ld   bc, rAUD1SWEEP                                   ; $6aec: $01 $10 $ff
	nop                                              ; $6aef: $00
	ld   bc, $0100                                   ; $6af0: $01 $00 $01
	db   $10                                         ; $6af3: $10
	ld   bc, $0110                                   ; $6af4: $01 $10 $01
	db   $10                                         ; $6af7: $10
	ld   bc, $017c                                   ; $6af8: $01 $7c $01
	jr   c, jr_025_6afe                              ; $6afb: $38 $01

	db   $10                                         ; $6afd: $10

jr_025_6afe:
	rst  $38                                         ; $6afe: $ff
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	xor  d                                           ; $6b08: $aa
	nop                                              ; $6b09: $00
	ld   d, l                                        ; $6b0a: $55
	nop                                              ; $6b0b: $00
	rst  $38                                         ; $6b0c: $ff
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	rst  $38                                         ; $6b0f: $ff
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	ld   bc, $2100                                   ; $6b12: $01 $00 $21
	nop                                              ; $6b15: $00
	ld   bc, $ab00                                   ; $6b16: $01 $00 $ab
	nop                                              ; $6b19: $00
	ld   d, [hl]                                     ; $6b1a: $56
	ld   bc, $01fe                                   ; $6b1b: $01 $fe $01
	nop                                              ; $6b1e: $00
	rst  $38                                         ; $6b1f: $ff
	rst  $38                                         ; $6b20: $ff
	nop                                              ; $6b21: $00
	ld   d, l                                        ; $6b22: $55
	nop                                              ; $6b23: $00
	xor  d                                           ; $6b24: $aa
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	ld   [bc], a                                     ; $6b2a: $02
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	cp   $01                                         ; $6b30: $fe $01
	ld   d, h                                        ; $6b32: $54
	ld   bc, $00ab                                   ; $6b33: $01 $ab $00
	ld   hl, $0100                                   ; $6b36: $21 $00 $01
	nop                                              ; $6b39: $00
	ld   bc, $0000                                   ; $6b3a: $01 $00 $00
	nop                                              ; $6b3d: $00
	ld   bc, $5a00                                   ; $6b3e: $01 $00 $5a
	ld   h, b                                        ; $6b41: $60
	ld   d, h                                        ; $6b42: $54
	ld   h, b                                        ; $6b43: $60
	ld   e, d                                        ; $6b44: $5a
	ld   h, b                                        ; $6b45: $60
	ld   d, l                                        ; $6b46: $55
	ld   h, b                                        ; $6b47: $60
	ld   e, e                                        ; $6b48: $5b
	ld   h, b                                        ; $6b49: $60
	ld   e, [hl]                                     ; $6b4a: $5e
	ld   h, c                                        ; $6b4b: $61
	ld   e, [hl]                                     ; $6b4c: $5e
	ld   h, c                                        ; $6b4d: $61
	ld   b, b                                        ; $6b4e: $40
	ld   a, a                                        ; $6b4f: $7f
	ret  nc                                          ; $6b50: $d0

	nop                                              ; $6b51: $00
	and  d                                           ; $6b52: $a2
	nop                                              ; $6b53: $00
	call nc, sCurrPoints                                   ; $6b54: $d4 $00 $a1
	nop                                              ; $6b57: $00
	rst  $10                                         ; $6b58: $d7
	nop                                              ; $6b59: $00

jr_025_6b5a:
	xor  d                                           ; $6b5a: $aa
	ld   bc, $01fe                                   ; $6b5b: $01 $fe $01
	nop                                              ; $6b5e: $00
	rst  $38                                         ; $6b5f: $ff
	cp   $01                                         ; $6b60: $fe $01
	sub  $01                                         ; $6b62: $d6 $01
	xor  e                                           ; $6b64: $ab
	nop                                              ; $6b65: $00
	pop  bc                                          ; $6b66: $c1
	nop                                              ; $6b67: $00
	and  b                                           ; $6b68: $a0
	nop                                              ; $6b69: $00
	jp   nz, $a000                                   ; $6b6a: $c2 $00 $a0

	nop                                              ; $6b6d: $00
	ret  nz                                          ; $6b6e: $c0

	nop                                              ; $6b6f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b70: $cf
	jr   c, jr_025_6b5a                              ; $6b71: $38 $e7

	rra                                              ; $6b73: $1f
	ldh  a, [rIF]                                    ; $6b74: $f0 $0f
	ei                                               ; $6b76: $fb
	add  $bb                                         ; $6b77: $c6 $bb
	halt                                             ; $6b79: $76
	db   $e3                                         ; $6b7a: $e3
	ld   e, $fb                                      ; $6b7b: $1e $fb
	ld   b, $fb                                      ; $6b7d: $06 $fb
	ld   b, $fc                                      ; $6b7f: $06 $fc
	inc  bc                                          ; $6b81: $03
	db   $fc                                         ; $6b82: $fc
	di                                               ; $6b83: $f3
	ld   [bc], a                                     ; $6b84: $02
	db   $fd                                         ; $6b85: $fd
	sbc  [hl]                                        ; $6b86: $9e
	ld   h, c                                        ; $6b87: $61
	sbc  [hl]                                        ; $6b88: $9e
	ld   h, c                                        ; $6b89: $61
	sbc  [hl]                                        ; $6b8a: $9e
	ld   h, c                                        ; $6b8b: $61
	sbc  [hl]                                        ; $6b8c: $9e
	ld   h, c                                        ; $6b8d: $61

jr_025_6b8e:
	sbc  c                                           ; $6b8e: $99
	ld   h, [hl]                                     ; $6b8f: $66
	nop                                              ; $6b90: $00
	rst  $38                                         ; $6b91: $ff
	nop                                              ; $6b92: $00
	rst  $38                                         ; $6b93: $ff
	nop                                              ; $6b94: $00
	rst  $38                                         ; $6b95: $ff
	nop                                              ; $6b96: $00
	rst  $38                                         ; $6b97: $ff
	nop                                              ; $6b98: $00
	rst  $38                                         ; $6b99: $ff
	nop                                              ; $6b9a: $00
	rst  $38                                         ; $6b9b: $ff
	nop                                              ; $6b9c: $00
	rst  $38                                         ; $6b9d: $ff
	nop                                              ; $6b9e: $00
	rst  $38                                         ; $6b9f: $ff
	ld   a, a                                        ; $6ba0: $7f
	add  b                                           ; $6ba1: $80
	ld   a, a                                        ; $6ba2: $7f
	cp   c                                           ; $6ba3: $b9
	ld   a, e                                        ; $6ba4: $7b
	or   c                                           ; $6ba5: $b1
	ld   [hl], e                                     ; $6ba6: $73
	and  b                                           ; $6ba7: $a0
	ld   h, b                                        ; $6ba8: $60
	add  b                                           ; $6ba9: $80
	ld   [hl], e                                     ; $6baa: $73
	and  b                                           ; $6bab: $a0
	ld   a, e                                        ; $6bac: $7b
	or   c                                           ; $6bad: $b1
	ld   a, a                                        ; $6bae: $7f
	cp   c                                           ; $6baf: $b9
	cp   $01                                         ; $6bb0: $fe $01
	cp   $fd                                         ; $6bb2: $fe $fd
	cp   $fd                                         ; $6bb4: $fe $fd
	cp   $05                                         ; $6bb6: $fe $05
	ld   c, $05                                      ; $6bb8: $0e $05
	cp   $05                                         ; $6bba: $fe $05
	cp   $fd                                         ; $6bbc: $fe $fd
	cp   $fd                                         ; $6bbe: $fe $fd
	inc  a                                           ; $6bc0: $3c
	jp   $857a                                       ; $6bc1: $c3 $7a $85


	ld   a, h                                        ; $6bc4: $7c
	add  e                                           ; $6bc5: $83
	ld   a, d                                        ; $6bc6: $7a
	add  l                                           ; $6bc7: $85
	ld   a, b                                        ; $6bc8: $78
	add  a                                           ; $6bc9: $87
	ld   b, h                                        ; $6bca: $44
	cp   b                                           ; $6bcb: $b8
	jr   nz, jr_025_6b8e                             ; $6bcc: $20 $c0

	inc  bc                                          ; $6bce: $03
	inc  bc                                          ; $6bcf: $03
	ccf                                              ; $6bd0: $3f
	add  b                                           ; $6bd1: $80
	inc  a                                           ; $6bd2: $3c
	add  e                                           ; $6bd3: $83
	ld   [hl+], a                                    ; $6bd4: $22
	sbc  h                                           ; $6bd5: $9c
	db   $10                                         ; $6bd6: $10
	ldh  [$81], a                                    ; $6bd7: $e0 $81
	ld   bc, $0f0f                                   ; $6bd9: $01 $0f $0f
	ld   [hl], a                                     ; $6bdc: $77
	ld   [hl], b                                     ; $6bdd: $70
	add  b                                           ; $6bde: $80
	cp   a                                           ; $6bdf: $bf
	nop                                              ; $6be0: $00
	rst  $38                                         ; $6be1: $ff
	ld   a, e                                        ; $6be2: $7b
	add  h                                           ; $6be3: $84
	add  b                                           ; $6be4: $80
	inc  b                                           ; $6be5: $04
	add  b                                           ; $6be6: $80
	inc  b                                           ; $6be7: $04
	call z, Call_025_7f48                            ; $6be8: $cc $48 $7f
	ld   a, e                                        ; $6beb: $7b
	inc  b                                           ; $6bec: $04
	add  b                                           ; $6bed: $80
	inc  b                                           ; $6bee: $04
	ld   hl, sp+$00                                  ; $6bef: $f8 $00
	rst  $38                                         ; $6bf1: $ff
	cp   $01                                         ; $6bf2: $fe $01
	ld   [bc], a                                     ; $6bf4: $02
	inc  bc                                          ; $6bf5: $03
	ld   [bc], a                                     ; $6bf6: $02
	inc  bc                                          ; $6bf7: $03
	ld   [bc], a                                     ; $6bf8: $02
	inc  bc                                          ; $6bf9: $03
	db   $fc                                         ; $6bfa: $fc
	db   $fd                                         ; $6bfb: $fd
	nop                                              ; $6bfc: $00
	ld   bc, $0100                                   ; $6bfd: $01 $00 $01
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	ld   d, $16                                      ; $6c02: $16 $16
	rra                                              ; $6c04: $1f
	rra                                              ; $6c05: $1f
	rra                                              ; $6c06: $1f
	rra                                              ; $6c07: $1f
	ld   e, $1e                                      ; $6c08: $1e $1e
	ld   h, $06                                      ; $6c0a: $26 $06
	halt                                             ; $6c0c: $76
	ld   d, $fe                                      ; $6c0d: $16 $fe
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	db   $e3                                         ; $6c12: $e3
	db   $e3                                         ; $6c13: $e3
	push af                                          ; $6c14: $f5
	push af                                          ; $6c15: $f5
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	rst  $38                                         ; $6c1b: $ff
	ld   a, a                                        ; $6c1c: $7f
	ld   a, a                                        ; $6c1d: $7f
	add  hl, sp                                      ; $6c1e: $39
	ld   bc, $0000                                   ; $6c1f: $01 $00 $00
	add  b                                           ; $6c22: $80
	add  b                                           ; $6c23: $80
	ret  nc                                          ; $6c24: $d0

	ret  nc                                          ; $6c25: $d0

	ldh  [$e0], a                                    ; $6c26: $e0 $e0
	ld   hl, sp-$08                                  ; $6c28: $f8 $f8
	cp   d                                           ; $6c2a: $ba
	cp   b                                           ; $6c2b: $b8
	call c, $fedc                                    ; $6c2c: $dc $dc $fe
	db   $fc                                         ; $6c2f: $fc
	inc  bc                                          ; $6c30: $03
	inc  bc                                          ; $6c31: $03
	ld   bc, $2101                                   ; $6c32: $01 $01 $21
	ld   bc, $0101                                   ; $6c35: $01 $01 $01
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	ld   bc, $1b01                                   ; $6c3a: $01 $01 $1b
	dec  de                                          ; $6c3d: $1b
	rrca                                             ; $6c3e: $0f
	rrca                                             ; $6c3f: $0f
	db   $fd                                         ; $6c40: $fd
	db   $fc                                         ; $6c41: $fc
	db   $fd                                         ; $6c42: $fd
	db   $fc                                         ; $6c43: $fc
	ld   sp, hl                                      ; $6c44: $f9
	ld   hl, sp+$7c                                  ; $6c45: $f8 $7c
	ld   a, h                                        ; $6c47: $7c
	db   $fc                                         ; $6c48: $fc
	db   $fc                                         ; $6c49: $fc
	db   $fc                                         ; $6c4a: $fc
	db   $fc                                         ; $6c4b: $fc
	rst  $38                                         ; $6c4c: $ff
	rst  $38                                         ; $6c4d: $ff
	rst  $38                                         ; $6c4e: $ff
	rst  $38                                         ; $6c4f: $ff
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	jr   nz, jr_025_6c56                             ; $6c54: $20 $00

jr_025_6c56:
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	ret  nz                                          ; $6c5c: $c0

	ret  nz                                          ; $6c5d: $c0

	add  b                                           ; $6c5e: $80
	add  b                                           ; $6c5f: $80
	rlca                                             ; $6c60: $07
	rlca                                             ; $6c61: $07
	inc  bc                                          ; $6c62: $03
	inc  bc                                          ; $6c63: $03
	ld   bc, $2001                                   ; $6c64: $01 $01 $20
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	jr   nz, jr_025_6c70                             ; $6c6e: $20 $00

jr_025_6c70:
	rst  $38                                         ; $6c70: $ff
	rst  $38                                         ; $6c71: $ff
	ldh  a, [c]                                      ; $6c72: $f2
	ldh  a, [c]                                      ; $6c73: $f2
	db   $e4                                         ; $6c74: $e4
	db   $e4                                         ; $6c75: $e4
	ld   hl, sp-$08                                  ; $6c76: $f8 $f8
	ld   [hl], b                                     ; $6c78: $70
	ld   [hl], b                                     ; $6c79: $70
	ld   [hl+], a                                    ; $6c7a: $22
	jr   nz, jr_025_6c7d                             ; $6c7b: $20 $00

jr_025_6c7d:
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	rst  $38                                         ; $6c80: $ff
	nop                                              ; $6c81: $00
	rst  $38                                         ; $6c82: $ff
	nop                                              ; $6c83: $00
	ld   d, a                                        ; $6c84: $57
	nop                                              ; $6c85: $00
	dec  bc                                          ; $6c86: $0b
	nop                                              ; $6c87: $00
	dec  b                                           ; $6c88: $05
	nop                                              ; $6c89: $00
	ld   [bc], a                                     ; $6c8a: $02
	nop                                              ; $6c8b: $00
	ld   bc, $0000                                   ; $6c8c: $01 $00 $00
	nop                                              ; $6c8f: $00
	ld   d, l                                        ; $6c90: $55
	nop                                              ; $6c91: $00
	rst  $38                                         ; $6c92: $ff
	nop                                              ; $6c93: $00
	rst  $38                                         ; $6c94: $ff
	nop                                              ; $6c95: $00
	rst  $38                                         ; $6c96: $ff
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	rst  $38                                         ; $6c99: $ff
	rst  $38                                         ; $6c9a: $ff
	nop                                              ; $6c9b: $00
	rst  $38                                         ; $6c9c: $ff
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	rst  $38                                         ; $6c9f: $ff
	nop                                              ; $6ca0: $00
	rst  $38                                         ; $6ca1: $ff
	nop                                              ; $6ca2: $00
	rst  $38                                         ; $6ca3: $ff
	xor  d                                           ; $6ca4: $aa
	ld   d, l                                        ; $6ca5: $55
	ld   d, l                                        ; $6ca6: $55
	xor  d                                           ; $6ca7: $aa
	rst  $38                                         ; $6ca8: $ff
	nop                                              ; $6ca9: $00
	rst  $38                                         ; $6caa: $ff
	nop                                              ; $6cab: $00
	xor  d                                           ; $6cac: $aa
	nop                                              ; $6cad: $00
	ld   d, l                                        ; $6cae: $55
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	rst  $38                                         ; $6cb4: $ff
	rst  $38                                         ; $6cb5: $ff
	ld   a, [de]                                     ; $6cb6: $1a
	nop                                              ; $6cb7: $00
	ld   e, c                                        ; $6cb8: $59
	and  d                                           ; $6cb9: $a2
	rst  $38                                         ; $6cba: $ff
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	rst  $38                                         ; $6cbd: $ff
	nop                                              ; $6cbe: $00
	rst  $38                                         ; $6cbf: $ff
	inc  e                                           ; $6cc0: $1c
	dec  e                                           ; $6cc1: $1d
	ldh  [$ef], a                                    ; $6cc2: $e0 $ef
	nop                                              ; $6cc4: $00
	ld   a, a                                        ; $6cc5: $7f
	nop                                              ; $6cc6: $00
	rst  $38                                         ; $6cc7: $ff
	nop                                              ; $6cc8: $00
	rst  $38                                         ; $6cc9: $ff
	nop                                              ; $6cca: $00
	rst  $38                                         ; $6ccb: $ff
	nop                                              ; $6ccc: $00
	rst  $38                                         ; $6ccd: $ff
	nop                                              ; $6cce: $00
	rst  $38                                         ; $6ccf: $ff
	dec  b                                           ; $6cd0: $05
	ld   a, [$fa05]                                  ; $6cd1: $fa $05 $fa
	inc  bc                                          ; $6cd4: $03
	db   $fc                                         ; $6cd5: $fc
	dec  b                                           ; $6cd6: $05
	ld   a, [$fa05]                                  ; $6cd7: $fa $05 $fa
	inc  bc                                          ; $6cda: $03
	db   $fc                                         ; $6cdb: $fc
	dec  b                                           ; $6cdc: $05
	ld   a, [$fa05]                                  ; $6cdd: $fa $05 $fa
	sbc  b                                           ; $6ce0: $98
	ld   hl, $39b9                                   ; $6ce1: $21 $b9 $39
	add  hl, sp                                      ; $6ce4: $39
	add  hl, sp                                      ; $6ce5: $39
	sbc  b                                           ; $6ce6: $98
	ld   hl, $2198                                   ; $6ce7: $21 $98 $21
	stop                                             ; $6cea: $10 $00
	rst  $38                                         ; $6cec: $ff
	nop                                              ; $6ced: $00
	rst  $38                                         ; $6cee: $ff
	nop                                              ; $6cef: $00
	ret  nz                                          ; $6cf0: $c0

	ld   bc, $c1c0                                   ; $6cf1: $01 $c0 $c1
	ret  nz                                          ; $6cf4: $c0

	pop  bc                                          ; $6cf5: $c1
	ret  nz                                          ; $6cf6: $c0

	ld   bc, $01c0                                   ; $6cf7: $01 $c0 $01
	add  b                                           ; $6cfa: $80
	ld   bc, $01fe                                   ; $6cfb: $01 $fe $01
	cp   $01                                         ; $6cfe: $fe $01
	ld   a, b                                        ; $6d00: $78
	add  h                                           ; $6d01: $84
	ld   [hl], b                                     ; $6d02: $70
	adc  e                                           ; $6d03: $8b
	ld   h, b                                        ; $6d04: $60
	sub  a                                           ; $6d05: $97
	ld   d, b                                        ; $6d06: $50
	xor  a                                           ; $6d07: $af
	jr   nz, @-$1f                                   ; $6d08: $20 $df

	ld   h, b                                        ; $6d0a: $60
	sbc  a                                           ; $6d0b: $9f
	ld   h, b                                        ; $6d0c: $60
	sbc  h                                           ; $6d0d: $9c
	ld   h, e                                        ; $6d0e: $63
	sbc  b                                           ; $6d0f: $98
	rra                                              ; $6d10: $1f
	rra                                              ; $6d11: $1f
	nop                                              ; $6d12: $00
	rst  $38                                         ; $6d13: $ff
	nop                                              ; $6d14: $00
	rst  $38                                         ; $6d15: $ff
	nop                                              ; $6d16: $00
	rst  $38                                         ; $6d17: $ff
	nop                                              ; $6d18: $00
	rst  $38                                         ; $6d19: $ff
	nop                                              ; $6d1a: $00
	rst  $38                                         ; $6d1b: $ff
	ccf                                              ; $6d1c: $3f
	ccf                                              ; $6d1d: $3f
	ld   hl, sp+$00                                  ; $6d1e: $f8 $00
	ld   e, b                                        ; $6d20: $58
	and  e                                           ; $6d21: $a3
	ld   e, c                                        ; $6d22: $59
	and  d                                           ; $6d23: $a2
	ld   e, c                                        ; $6d24: $59
	and  d                                           ; $6d25: $a2

jr_025_6d26:
	ld   c, c                                        ; $6d26: $49
	or   d                                           ; $6d27: $b2
	ld   c, c                                        ; $6d28: $49
	or   d                                           ; $6d29: $b2
	ld   b, l                                        ; $6d2a: $45
	cp   d                                           ; $6d2b: $ba
	ld   b, c                                        ; $6d2c: $41
	cp   [hl]                                        ; $6d2d: $be
	ld   b, b                                        ; $6d2e: $40
	cp   a                                           ; $6d2f: $bf
	ld   a, [bc]                                     ; $6d30: $0a
	ldh  a, [$81]                                    ; $6d31: $f0 $81
	inc  b                                           ; $6d33: $04
	add  b                                           ; $6d34: $80
	ld   [bc], a                                     ; $6d35: $02
	sub  e                                           ; $6d36: $93
	db   $10                                         ; $6d37: $10
	adc  b                                           ; $6d38: $88
	add  hl, bc                                      ; $6d39: $09
	sbc  h                                           ; $6d3a: $9c
	dec  e                                           ; $6d3b: $1d
	adc  h                                           ; $6d3c: $8c
	dec  c                                           ; $6d3d: $0d
	call c, $011d                                    ; $6d3e: $dc $1d $01
	nop                                              ; $6d41: $00
	ld   bc, $0100                                   ; $6d42: $01 $00 $01
	nop                                              ; $6d45: $00
	ld   bc, $0900                                   ; $6d46: $01 $00 $09
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	ld   bc, $0100                                   ; $6d4b: $01 $00 $01
	nop                                              ; $6d4e: $00
	ld   bc, $01fe                                   ; $6d4f: $01 $fe $01
	ld   d, h                                        ; $6d52: $54
	ld   bc, $01aa                                   ; $6d53: $01 $aa $01
	jr   nz, jr_025_6d59                             ; $6d56: $20 $01

	nop                                              ; $6d58: $00

jr_025_6d59:
	ld   bc, $0100                                   ; $6d59: $01 $00 $01
	ld   bc, $0000                                   ; $6d5c: $01 $00 $00
	nop                                              ; $6d5f: $00
	ccf                                              ; $6d60: $3f
	ret  nz                                          ; $6d61: $c0

	nop                                              ; $6d62: $00
	rst  $38                                         ; $6d63: $ff
	jr   nz, jr_025_6d26                             ; $6d64: $20 $c0

	ccf                                              ; $6d66: $3f
	ret  nz                                          ; $6d67: $c0

	nop                                              ; $6d68: $00
	rst  $38                                         ; $6d69: $ff
	ld   b, b                                        ; $6d6a: $40
	ret  nz                                          ; $6d6b: $c0

	ld   a, a                                        ; $6d6c: $7f
	rst  $38                                         ; $6d6d: $ff
	ld   a, a                                        ; $6d6e: $7f
	add  b                                           ; $6d6f: $80
	db   $fc                                         ; $6d70: $fc
	inc  bc                                          ; $6d71: $03
	nop                                              ; $6d72: $00
	rst  $38                                         ; $6d73: $ff
	inc  b                                           ; $6d74: $04
	inc  bc                                          ; $6d75: $03
	db   $fc                                         ; $6d76: $fc
	inc  bc                                          ; $6d77: $03
	nop                                              ; $6d78: $00
	rst  $38                                         ; $6d79: $ff
	ld   [bc], a                                     ; $6d7a: $02
	inc  bc                                          ; $6d7b: $03
	cp   $ff                                         ; $6d7c: $fe $ff
	rst  $38                                         ; $6d7e: $ff
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	ld   a, a                                        ; $6d81: $7f
	nop                                              ; $6d82: $00
	rst  $38                                         ; $6d83: $ff
	add  b                                           ; $6d84: $80
	ld   a, a                                        ; $6d85: $7f
	add  b                                           ; $6d86: $80
	ld   a, a                                        ; $6d87: $7f
	add  b                                           ; $6d88: $80
	ld   a, a                                        ; $6d89: $7f
	add  b                                           ; $6d8a: $80
	ld   a, a                                        ; $6d8b: $7f
	add  b                                           ; $6d8c: $80
	ld   a, a                                        ; $6d8d: $7f
	push de                                          ; $6d8e: $d5
	ld   a, [hl+]                                    ; $6d8f: $2a
	nop                                              ; $6d90: $00
	db   $fc                                         ; $6d91: $fc
	nop                                              ; $6d92: $00
	cp   $00                                         ; $6d93: $fe $00
	cp   $00                                         ; $6d95: $fe $00
	cp   $00                                         ; $6d97: $fe $00
	cp   $00                                         ; $6d99: $fe $00
	cp   $00                                         ; $6d9b: $fe $00
	cp   $54                                         ; $6d9d: $fe $54
	xor  d                                           ; $6d9f: $aa
	rrca                                             ; $6da0: $0f
	jr   c, @+$09                                    ; $6da1: $38 $07

	rra                                              ; $6da3: $1f
	nop                                              ; $6da4: $00
	rrca                                             ; $6da5: $0f
	ld   bc, $0106                                   ; $6da6: $01 $06 $01
	ld   b, $01                                      ; $6da9: $06 $01
	ld   b, $01                                      ; $6dab: $06 $01
	ld   b, $01                                      ; $6dad: $06 $01
	ld   b, $fc                                      ; $6daf: $06 $fc
	ld   [bc], a                                     ; $6db1: $02
	db   $fc                                         ; $6db2: $fc
	ldh  a, [c]                                      ; $6db3: $f2
	nop                                              ; $6db4: $00
	db   $fc                                         ; $6db5: $fc
	ret  nz                                          ; $6db6: $c0

	ld   h, b                                        ; $6db7: $60
	ret  nz                                          ; $6db8: $c0

	ld   h, b                                        ; $6db9: $60
	ret  nz                                          ; $6dba: $c0

	ld   h, b                                        ; $6dbb: $60
	ret  nz                                          ; $6dbc: $c0

	ld   h, b                                        ; $6dbd: $60
	ret  nz                                          ; $6dbe: $c0

	ld   h, b                                        ; $6dbf: $60
	ld   a, a                                        ; $6dc0: $7f
	rst  $38                                         ; $6dc1: $ff
	nop                                              ; $6dc2: $00
	add  b                                           ; $6dc3: $80
	nop                                              ; $6dc4: $00
	add  b                                           ; $6dc5: $80
	ld   a, a                                        ; $6dc6: $7f
	add  b                                           ; $6dc7: $80
	nop                                              ; $6dc8: $00
	add  c                                           ; $6dc9: $81
	jr   z, @-$7d                                    ; $6dca: $28 $81

	ld   a, h                                        ; $6dcc: $7c
	add  c                                           ; $6dcd: $81
	ld   a, [hl]                                     ; $6dce: $7e
	add  c                                           ; $6dcf: $81
	cp   $ff                                         ; $6dd0: $fe $ff
	nop                                              ; $6dd2: $00
	ld   bc, $0100                                   ; $6dd3: $01 $00 $01
	ld   c, b                                        ; $6dd6: $48
	ld   bc, $0132                                   ; $6dd7: $01 $32 $01
	sbc  $01                                         ; $6dda: $de $01
	cp   $01                                         ; $6ddc: $fe $01
	cp   $01                                         ; $6dde: $fe $01
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	db   $10                                         ; $6dec: $10

Jump_025_6ded:
	jr   z, jr_025_6def                              ; $6ded: $28 $00

jr_025_6def:
	ld   b, h                                        ; $6def: $44
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	ld   [$0014], sp                                 ; $6dfc: $08 $14 $00
	ld   [hl+], a                                    ; $6dff: $22
	ld   h, a                                        ; $6e00: $67
	sub  b                                           ; $6e01: $90
	ld   [hl], l                                     ; $6e02: $75
	adc  d                                           ; $6e03: $8a
	ld   l, d                                        ; $6e04: $6a
	sub  l                                           ; $6e05: $95
	ld   b, c                                        ; $6e06: $41
	cp   [hl]                                        ; $6e07: $be
	ld   b, b                                        ; $6e08: $40
	cp   a                                           ; $6e09: $bf
	ld   b, c                                        ; $6e0a: $41
	and  [hl]                                        ; $6e0b: $a6
	ld   e, b                                        ; $6e0c: $58
	and  e                                           ; $6e0d: $a3
	ld   e, c                                        ; $6e0e: $59
	and  d                                           ; $6e0f: $a2
	ld   hl, sp+$00                                  ; $6e10: $f8 $00
	ldh  a, [rP1]                                    ; $6e12: $f0 $00
	ldh  [rP1], a                                    ; $6e14: $e0 $00
	ld   h, b                                        ; $6e16: $60
	add  b                                           ; $6e17: $80
	add  sp, $00                                     ; $6e18: $e8 $00
	ld   [hl], l                                     ; $6e1a: $75
	add  b                                           ; $6e1b: $80
	ld   [$7500], a                                  ; $6e1c: $ea $00 $75
	add  b                                           ; $6e1f: $80
	ld   b, c                                        ; $6e20: $41
	cp   [hl]                                        ; $6e21: $be
	ld   b, e                                        ; $6e22: $43
	cp   h                                           ; $6e23: $bc
	inc  sp                                          ; $6e24: $33
	call z, $844b                                    ; $6e25: $cc $4b $84
	ld   c, e                                        ; $6e28: $4b
	add  h                                           ; $6e29: $84
	ld   c, e                                        ; $6e2a: $4b

jr_025_6e2b:
	add  h                                           ; $6e2b: $84
	ld   c, e                                        ; $6e2c: $4b
	add  h                                           ; $6e2d: $84
	ld   c, e                                        ; $6e2e: $4b
	add  h                                           ; $6e2f: $84
	ld   a, a                                        ; $6e30: $7f
	add  b                                           ; $6e31: $80
	ld   a, a                                        ; $6e32: $7f
	push de                                          ; $6e33: $d5
	ld   a, a                                        ; $6e34: $7f
	xor  d                                           ; $6e35: $aa
	ld   a, a                                        ; $6e36: $7f
	push de                                          ; $6e37: $d5
	nop                                              ; $6e38: $00
	rst  $38                                         ; $6e39: $ff
	rst  $38                                         ; $6e3a: $ff
	nop                                              ; $6e3b: $00
	add  b                                           ; $6e3c: $80
	ld   a, a                                        ; $6e3d: $7f
	rst  $38                                         ; $6e3e: $ff
	nop                                              ; $6e3f: $00
	ld   [bc], a                                     ; $6e40: $02
	ld   bc, $0104                              ; $6e41: $01 $04 $01
	ld   b, $01                                      ; $6e44: $06 $01
	inc  b                                           ; $6e46: $04
	ld   bc, $0102                                   ; $6e47: $01 $02 $01
	inc  b                                           ; $6e4a: $04
	ld   bc, $0102                                   ; $6e4b: $01 $02 $01
	nop                                              ; $6e4e: $00
	ld   bc, $0000                                   ; $6e4f: $01 $00 $00
	nop                                              ; $6e52: $00
	jr   c, @+$3a                                    ; $6e53: $38 $38

	ld   a, l                                        ; $6e55: $7d
	ld   de, $3b57                                   ; $6e56: $11 $57 $3b
	ld   b, [hl]                                     ; $6e59: $46
	scf                                              ; $6e5a: $37
	ld   c, h                                        ; $6e5b: $4c
	cpl                                              ; $6e5c: $2f
	ld   e, b                                        ; $6e5d: $58
	rra                                              ; $6e5e: $1f
	ld   [hl], c                                     ; $6e5f: $71
	nop                                              ; $6e60: $00
	ld   c, $0c                                      ; $6e61: $0e $0c
	dec  e                                           ; $6e63: $1d
	ld   c, $d5                                      ; $6e64: $0e $d5
	adc  [hl]                                        ; $6e66: $8e
	or   c                                           ; $6e67: $b1
	ld   [hl-], a                                    ; $6e68: $32
	db   $ed                                         ; $6e69: $ed
	call z, $b37b                                    ; $6e6a: $cc $7b $b3
	call z, $837c                                    ; $6e6d: $cc $7c $83
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	ld   bc, $0100                                   ; $6e72: $01 $00 $01
	nop                                              ; $6e75: $00
	ld   bc, $0100                                   ; $6e76: $01 $00 $01
	nop                                              ; $6e79: $00
	ld   bc, $2100                                   ; $6e7a: $01 $00 $21
	ret  nz                                          ; $6e7d: $c0

	ret  z                                           ; $6e7e: $c8

	jr   nc, jr_025_6e2b                             ; $6e7f: $30 $aa

	ld   d, l                                        ; $6e81: $55
	ld   a, a                                        ; $6e82: $7f
	add  b                                           ; $6e83: $80
	ld   a, a                                        ; $6e84: $7f
	add  b                                           ; $6e85: $80
	rst  $38                                         ; $6e86: $ff
	nop                                              ; $6e87: $00
	rst  $38                                         ; $6e88: $ff
	ld   b, b                                        ; $6e89: $40

jr_025_6e8a:
	ld   a, e                                        ; $6e8a: $7b

jr_025_6e8b:
	call nz, $e43f                                   ; $6e8b: $c4 $3f $e4
	rra                                              ; $6e8e: $1f
	ld   [hl], b                                     ; $6e8f: $70

jr_025_6e90:
	xor  b                                           ; $6e90: $a8
	ld   d, [hl]                                     ; $6e91: $56
	db   $fc                                         ; $6e92: $fc
	ld   [bc], a                                     ; $6e93: $02
	db   $fc                                         ; $6e94: $fc
	ld   [bc], a                                     ; $6e95: $02
	db   $fc                                         ; $6e96: $fc
	ld   [bc], a                                     ; $6e97: $02
	db   $fc                                         ; $6e98: $fc
	ld   [bc], a                                     ; $6e99: $02
	db   $ec                                         ; $6e9a: $ec
	ld   [de], a                                     ; $6e9b: $12
	db   $fc                                         ; $6e9c: $fc
	ld   [de], a                                     ; $6e9d: $12
	db   $fc                                         ; $6e9e: $fc
	ld   [bc], a                                     ; $6e9f: $02
	add  c                                           ; $6ea0: $81
	ld   a, [hl]                                     ; $6ea1: $7e
	ld   bc, $21fe                                   ; $6ea2: $01 $fe $21
	sbc  $21                                         ; $6ea5: $de $21
	sbc  $20                                         ; $6ea7: $de $20
	rst  JumpTable                                         ; $6ea9: $df
	jr   nz, jr_025_6e8b                             ; $6eaa: $20 $df

	inc  hl                                          ; $6eac: $23
	call c, $df20                                    ; $6ead: $dc $20 $df
	pop  bc                                          ; $6eb0: $c1
	ld   a, [hl]                                     ; $6eb1: $7e
	ret  nz                                          ; $6eb2: $c0

	ld   a, a                                        ; $6eb3: $7f
	call nz, $c47b                                   ; $6eb4: $c4 $7b $c4
	dec  sp                                          ; $6eb7: $3b
	inc  b                                           ; $6eb8: $04
	ei                                               ; $6eb9: $fb
	inc  b                                           ; $6eba: $04
	ei                                               ; $6ebb: $fb
	db   $f4                                         ; $6ebc: $f4
	dec  bc                                          ; $6ebd: $0b
	inc  b                                           ; $6ebe: $04
	ei                                               ; $6ebf: $fb
	ld   a, [hl]                                     ; $6ec0: $7e
	add  c                                           ; $6ec1: $81
	ld   a, [hl]                                     ; $6ec2: $7e
	add  c                                           ; $6ec3: $81
	ld   a, [hl]                                     ; $6ec4: $7e
	add  c                                           ; $6ec5: $81
	ld   a, [hl]                                     ; $6ec6: $7e
	add  c                                           ; $6ec7: $81
	ld   a, [hl]                                     ; $6ec8: $7e
	add  c                                           ; $6ec9: $81
	ld   a, [hl]                                     ; $6eca: $7e
	add  c                                           ; $6ecb: $81
	nop                                              ; $6ecc: $00
	rst  $38                                         ; $6ecd: $ff
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	db   $fc                                         ; $6ed0: $fc
	inc  bc                                          ; $6ed1: $03
	ld   hl, sp+$05                                  ; $6ed2: $f8 $05
	ld   a, [$fa05]                                  ; $6ed4: $fa $05 $fa
	dec  b                                           ; $6ed7: $05
	ld   a, [$0005]                                  ; $6ed8: $fa $05 $00
	rst  $38                                         ; $6edb: $ff
	rst  $38                                         ; $6edc: $ff
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	jr   nz, jr_025_6f46                             ; $6ee0: $20 $64

	inc  hl                                          ; $6ee2: $23
	db   $e4                                         ; $6ee3: $e4
	jr   z, jr_025_6e8a                              ; $6ee4: $28 $a4

	jr   @-$66                                       ; $6ee6: $18 $98

	nop                                              ; $6ee8: $00
	add  b                                           ; $6ee9: $80
	ld   a, a                                        ; $6eea: $7f
	rst  $38                                         ; $6eeb: $ff
	rra                                              ; $6eec: $1f
	sub  b                                           ; $6eed: $90
	jr   nc, jr_025_6e90                             ; $6eee: $30 $a0

	db   $10                                         ; $6ef0: $10
	ld   [hl-], a                                    ; $6ef1: $32
	ldh  a, [rAUD1LOW]                               ; $6ef2: $f0 $13
	inc  [hl]                                        ; $6ef4: $34
	inc  de                                          ; $6ef5: $13
	inc  c                                           ; $6ef6: $0c
	dec  c                                           ; $6ef7: $0d
	nop                                              ; $6ef8: $00
	ld   bc, $fffe                                   ; $6ef9: $01 $fe $ff
	ld   hl, sp+$09                                  ; $6efc: $f8 $09
	inc  c                                           ; $6efe: $0c
	dec  b                                           ; $6eff: $05
	ld   [hl], b                                     ; $6f00: $70
	adc  a                                           ; $6f01: $8f
	cp   [hl]                                        ; $6f02: $be
	ld   b, c                                        ; $6f03: $41
	ld   e, [hl]                                     ; $6f04: $5e
	ld   hl, $112e                                   ; $6f05: $21 $2e $11
	ld   d, $09                                      ; $6f08: $16 $09
	ld   [$0707], sp                                 ; $6f0a: $08 $07 $07
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	inc  b                                           ; $6f10: $04
	cp   $84                                         ; $6f11: $fe $84
	ld   c, $85                                      ; $6f13: $0e $85
	ld   c, $85                                      ; $6f15: $0e $85
	ld   c, $80                                      ; $6f17: $0e $80
	ld   a, [bc]                                     ; $6f19: $0a
	ldh  a, [$0e]                                    ; $6f1a: $f0 $0e
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	ld   bc, $e1e0                                   ; $6f20: $01 $e0 $e1
	db   $10                                         ; $6f23: $10
	ldh  a, [$88]                                    ; $6f24: $f0 $88
	ld   a, b                                        ; $6f26: $78
	ld   b, h                                        ; $6f27: $44
	inc  a                                           ; $6f28: $3c
	ld   [hl+], a                                    ; $6f29: $22
	ld   e, $11                                      ; $6f2a: $1e $11
	adc  h                                           ; $6f2c: $8c
	adc  e                                           ; $6f2d: $8b
	ld   b, [hl]                                     ; $6f2e: $46
	ld   b, l                                        ; $6f2f: $45
	and  [hl]                                        ; $6f30: $a6
	dec  h                                           ; $6f31: $25
	ld   b, [hl]                                     ; $6f32: $46
	dec  b                                           ; $6f33: $05
	and  [hl]                                        ; $6f34: $a6
	dec  b                                           ; $6f35: $05
	add  $85                                         ; $6f36: $c6 $85
	ld   h, [hl]                                     ; $6f38: $66
	push bc                                          ; $6f39: $c5
	halt                                             ; $6f3a: $76
	and  l                                           ; $6f3b: $a5
	ld   a, [de]                                     ; $6f3c: $1a
	pop  af                                          ; $6f3d: $f1
	ld   l, a                                        ; $6f3e: $6f
	sbc  a                                           ; $6f3f: $9f
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	add  b                                           ; $6f42: $80
	nop                                              ; $6f43: $00
	sub  b                                           ; $6f44: $90
	nop                                              ; $6f45: $00

jr_025_6f46:
	ld   b, b                                        ; $6f46: $40
	nop                                              ; $6f47: $00
	add  d                                           ; $6f48: $82
	nop                                              ; $6f49: $00
	ret  nz                                          ; $6f4a: $c0

	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	db   $fc                                         ; $6f4d: $fc
	db   $fc                                         ; $6f4e: $fc
	cp   $00                                         ; $6f4f: $fe $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	rra                                              ; $7004: $1f
	rra                                              ; $7005: $1f
	rrca                                             ; $7006: $0f
	rrca                                             ; $7007: $0f
	ccf                                              ; $7008: $3f
	ccf                                              ; $7009: $3f
	ld   a, a                                        ; $700a: $7f
	ld   [hl], a                                     ; $700b: $77
	ccf                                              ; $700c: $3f
	add  hl, sp                                      ; $700d: $39
	ld   a, a                                        ; $700e: $7f
	ld   a, a                                        ; $700f: $7f
	ld   a, e                                        ; $7010: $7b
	ld   a, a                                        ; $7011: $7f
	ld   a, d                                        ; $7012: $7a
	ld   a, a                                        ; $7013: $7f
	ld   l, [hl]                                     ; $7014: $6e
	ld   a, a                                        ; $7015: $7f
	ld   l, [hl]                                     ; $7016: $6e
	ld   a, e                                        ; $7017: $7b
	ld   l, $3b                                      ; $7018: $2e $3b
	inc  l                                           ; $701a: $2c
	dec  sp                                          ; $701b: $3b
	db   $10                                         ; $701c: $10
	rra                                              ; $701d: $1f
	ld   [$000f], sp                                 ; $701e: $08 $0f $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	ldh  [$e0], a                                    ; $7024: $e0 $e0
	ld   hl, sp-$08                                  ; $7026: $f8 $f8
	db   $fc                                         ; $7028: $fc
	db   $fc                                         ; $7029: $fc
	cp   $f6                                         ; $702a: $fe $f6
	cp   $8e                                         ; $702c: $fe $8e
	rst  $38                                         ; $702e: $ff
	rst  $38                                         ; $702f: $ff
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	cp   $fe                                         ; $7036: $fe $fe
	cp   [hl]                                        ; $7038: $be
	cp   $3c                                         ; $7039: $fe $3c
	db   $fc                                         ; $703b: $fc
	ld   a, b                                        ; $703c: $78
	ld   hl, sp+$78                                  ; $703d: $f8 $78
	ld   hl, sp+$03                                  ; $703f: $f8 $03
	inc  bc                                          ; $7041: $03
	inc  bc                                          ; $7042: $03
	ld   [bc], a                                     ; $7043: $02
	rlca                                             ; $7044: $07
	inc  b                                           ; $7045: $04
	rlca                                             ; $7046: $07
	inc  b                                           ; $7047: $04
	rlca                                             ; $7048: $07
	inc  b                                           ; $7049: $04
	rrca                                             ; $704a: $0f
	ld   [$080f], sp                                 ; $704b: $08 $0f $08
	rrca                                             ; $704e: $0f
	ld   [$101f], sp                                 ; $704f: $08 $1f $10
	rra                                              ; $7052: $1f
	ld   de, $111f                                   ; $7053: $11 $1f $11
	ccf                                              ; $7056: $3f
	ccf                                              ; $7057: $3f
	ld   b, e                                        ; $7058: $43
	ld   a, a                                        ; $7059: $7f
	inc  a                                           ; $705a: $3c
	inc  a                                           ; $705b: $3c
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	cp   $fe                                         ; $7060: $fe $fe
	rst  $38                                         ; $7062: $ff
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	ld   a, a                                        ; $7065: $7f
	db   $fd                                         ; $7066: $fd
	ld   a, a                                        ; $7067: $7f
	ldh  [$7f], a                                    ; $7068: $e0 $7f
	ret  nz                                          ; $706a: $c0

	ld   a, a                                        ; $706b: $7f
	add  b                                           ; $706c: $80
	rst  $38                                         ; $706d: $ff
	add  b                                           ; $706e: $80
	rst  $38                                         ; $706f: $ff
	add  e                                           ; $7070: $83
	rst  $38                                         ; $7071: $ff
	rst  $38                                         ; $7072: $ff
	rst  $38                                         ; $7073: $ff
	rst  $38                                         ; $7074: $ff
	rst  $38                                         ; $7075: $ff
	rst  $38                                         ; $7076: $ff
	db   $fc                                         ; $7077: $fc
	rst  $38                                         ; $7078: $ff
	db   $fc                                         ; $7079: $fc
	rst  $38                                         ; $707a: $ff
	cp   $01                                         ; $707b: $fe $01
	ld   bc, $0000                                   ; $707d: $01 $00 $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	add  b                                           ; $7088: $80
	add  b                                           ; $7089: $80
	add  b                                           ; $708a: $80
	add  b                                           ; $708b: $80
	ld   b, b                                        ; $708c: $40
	ret  nz                                          ; $708d: $c0

	ld   b, b                                        ; $708e: $40
	ret  nz                                          ; $708f: $c0

	ret  nz                                          ; $7090: $c0

	ret  nz                                          ; $7091: $c0

	ldh  [$e0], a                                    ; $7092: $e0 $e0
	ldh  a, [$d0]                                    ; $7094: $f0 $d0
	ldh  a, [$d0]                                    ; $7096: $f0 $d0
	ldh  a, [$50]                                    ; $7098: $f0 $50
	ld   hl, sp+$38                                  ; $709a: $f8 $38
	ldh  a, [$f0]                                    ; $709c: $f0 $f0
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	inc  bc                                          ; $70a0: $03
	inc  bc                                          ; $70a1: $03
	ld   h, e                                        ; $70a2: $63
	ld   h, d                                        ; $70a3: $62
	sbc  a                                           ; $70a4: $9f
	db   $fc                                         ; $70a5: $fc
	cp   a                                           ; $70a6: $bf
	db   $e4                                         ; $70a7: $e4
	ld   a, a                                        ; $70a8: $7f
	ld   b, b                                        ; $70a9: $40
	ccf                                              ; $70aa: $3f
	jr   nz, jr_025_70cc                             ; $70ab: $20 $1f

	jr   jr_025_70b6                                 ; $70ad: $18 $07

	rlca                                             ; $70af: $07
	inc  bc                                          ; $70b0: $03
	inc  bc                                          ; $70b1: $03
	rlca                                             ; $70b2: $07
	rlca                                             ; $70b3: $07
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff

jr_025_70b6:
	rra                                              ; $70b6: $1f
	rra                                              ; $70b7: $1f
	inc  bc                                          ; $70b8: $03
	inc  bc                                          ; $70b9: $03
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	cp   $fe                                         ; $70c0: $fe $fe
	rst  $38                                         ; $70c2: $ff
	rst  $38                                         ; $70c3: $ff
	rst  $38                                         ; $70c4: $ff
	ld   a, a                                        ; $70c5: $7f
	db   $fd                                         ; $70c6: $fd
	ld   a, a                                        ; $70c7: $7f
	ldh  [$7f], a                                    ; $70c8: $e0 $7f
	ret  nz                                          ; $70ca: $c0

	ld   a, a                                        ; $70cb: $7f

jr_025_70cc:
	add  b                                           ; $70cc: $80
	rst  $38                                         ; $70cd: $ff
	nop                                              ; $70ce: $00
	rst  $38                                         ; $70cf: $ff
	inc  bc                                          ; $70d0: $03
	rst  $38                                         ; $70d1: $ff
	rst  $38                                         ; $70d2: $ff
	rst  $38                                         ; $70d3: $ff
	rst  $38                                         ; $70d4: $ff
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	db   $fc                                         ; $70d7: $fc
	rst  $38                                         ; $70d8: $ff
	db   $fc                                         ; $70d9: $fc
	rst  $38                                         ; $70da: $ff
	cp   $01                                         ; $70db: $fe $01
	ld   bc, $0000                                   ; $70dd: $01 $00 $00
	inc  bc                                          ; $70e0: $03
	inc  bc                                          ; $70e1: $03
	inc  sp                                          ; $70e2: $33
	ld   [hl-], a                                    ; $70e3: $32
	ld   c, a                                        ; $70e4: $4f
	ld   a, h                                        ; $70e5: $7c
	ld   a, a                                        ; $70e6: $7f
	ld   [hl], h                                     ; $70e7: $74
	ccf                                              ; $70e8: $3f
	jr   nz, jr_025_710a                             ; $70e9: $20 $1f

	db   $10                                         ; $70eb: $10
	rrca                                             ; $70ec: $0f
	ld   [$0707], sp                                 ; $70ed: $08 $07 $07
	inc  bc                                          ; $70f0: $03
	inc  bc                                          ; $70f1: $03
	rst  $30                                         ; $70f2: $f7
	rst  $30                                         ; $70f3: $f7
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rra                                              ; $70f6: $1f
	rra                                              ; $70f7: $1f
	inc  bc                                          ; $70f8: $03
	inc  bc                                          ; $70f9: $03
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	cp   $fe                                         ; $7100: $fe $fe
	rst  $38                                         ; $7102: $ff
	rst  $38                                         ; $7103: $ff
	rst  $38                                         ; $7104: $ff
	ld   a, a                                        ; $7105: $7f
	db   $fd                                         ; $7106: $fd
	ld   a, a                                        ; $7107: $7f
	ldh  [$7f], a                                    ; $7108: $e0 $7f

jr_025_710a:
	ret  nz                                          ; $710a: $c0

	ld   a, a                                        ; $710b: $7f
	add  b                                           ; $710c: $80
	rst  $38                                         ; $710d: $ff
	nop                                              ; $710e: $00
	rst  $38                                         ; $710f: $ff
	inc  bc                                          ; $7110: $03
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	rst  $38                                         ; $7113: $ff
	rst  $38                                         ; $7114: $ff
	rst  $38                                         ; $7115: $ff
	rst  $38                                         ; $7116: $ff
	db   $fc                                         ; $7117: $fc
	rst  $38                                         ; $7118: $ff
	db   $fc                                         ; $7119: $fc
	rst  $38                                         ; $711a: $ff
	cp   $01                                         ; $711b: $fe $01
	ld   bc, $0000                                   ; $711d: $01 $00 $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	dec  d                                           ; $7122: $15
	dec  d                                           ; $7123: $15
	jr   nz, jr_025_715b                             ; $7124: $20 $35

	ld   a, a                                        ; $7126: $7f
	ld   e, a                                        ; $7127: $5f
	ld   a, h                                        ; $7128: $7c
	ld   b, e                                        ; $7129: $43
	ccf                                              ; $712a: $3f
	ccf                                              ; $712b: $3f
	ld   a, $21                                      ; $712c: $3e $21
	ld   a, $21                                      ; $712e: $3e $21
	ld   e, $11                                      ; $7130: $1e $11
	rra                                              ; $7132: $1f
	rra                                              ; $7133: $1f
	rrca                                             ; $7134: $0f
	rrca                                             ; $7135: $0f
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	ld   b, b                                        ; $7144: $40
	ld   b, b                                        ; $7145: $40
	and  b                                           ; $7146: $a0
	ldh  [rAUD4LEN], a                               ; $7147: $e0 $20
	ldh  [$c0], a                                    ; $7149: $e0 $c0
	ret  nz                                          ; $714b: $c0

	ld   b, b                                        ; $714c: $40
	ret  nz                                          ; $714d: $c0

	ld   b, b                                        ; $714e: $40
	ret  nz                                          ; $714f: $c0

	add  b                                           ; $7150: $80
	add  b                                           ; $7151: $80
	add  b                                           ; $7152: $80
	add  b                                           ; $7153: $80
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00

jr_025_715b:
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	dec  d                                           ; $7170: $15
	nop                                              ; $7171: $00
	dec  d                                           ; $7172: $15
	nop                                              ; $7173: $00
	dec  d                                           ; $7174: $15
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	dec  d                                           ; $7182: $15
	dec  d                                           ; $7183: $15
	jr   nz, jr_025_71ba                             ; $7184: $20 $34

	ld   a, [hl]                                     ; $7186: $7e
	ld   e, [hl]                                     ; $7187: $5e
	ld   a, h                                        ; $7188: $7c
	ld   b, e                                        ; $7189: $43
	ccf                                              ; $718a: $3f
	ccf                                              ; $718b: $3f
	ld   a, $21                                      ; $718c: $3e $21
	ld   a, $21                                      ; $718e: $3e $21
	ld   e, $11                                      ; $7190: $1e $11
	rra                                              ; $7192: $1f
	rra                                              ; $7193: $1f
	rrca                                             ; $7194: $0f
	rrca                                             ; $7195: $0f
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	ret  nz                                          ; $71aa: $c0

	ret  nz                                          ; $71ab: $c0

	ld   b, b                                        ; $71ac: $40
	ret  nz                                          ; $71ad: $c0

	ld   b, b                                        ; $71ae: $40
	ret  nz                                          ; $71af: $c0

	add  b                                           ; $71b0: $80
	add  b                                           ; $71b1: $80
	add  b                                           ; $71b2: $80
	add  b                                           ; $71b3: $80
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00

jr_025_71ba:
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	add  b                                           ; $71c6: $80
	add  b                                           ; $71c7: $80
	nop                                              ; $71c8: $00
	add  b                                           ; $71c9: $80
	ret  nz                                          ; $71ca: $c0

	ret  nz                                          ; $71cb: $c0

	ld   b, b                                        ; $71cc: $40
	ret  nz                                          ; $71cd: $c0

	ld   b, b                                        ; $71ce: $40
	ret  nz                                          ; $71cf: $c0

	add  b                                           ; $71d0: $80
	add  b                                           ; $71d1: $80
	add  b                                           ; $71d2: $80
	add  b                                           ; $71d3: $80
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	dec  d                                           ; $71f0: $15
	nop                                              ; $71f1: $00
	inc  d                                           ; $71f2: $14
	nop                                              ; $71f3: $00
	inc  d                                           ; $71f4: $14
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	rlca                                             ; $7204: $07
	rlca                                             ; $7205: $07
	rra                                              ; $7206: $1f
	rra                                              ; $7207: $1f
	ccf                                              ; $7208: $3f
	ccf                                              ; $7209: $3f
	ld   a, a                                        ; $720a: $7f
	ld   l, a                                        ; $720b: $6f
	ld   a, a                                        ; $720c: $7f
	ld   [hl], e                                     ; $720d: $73
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	rst  $38                                         ; $7210: $ff
	rst  $38                                         ; $7211: $ff
	cp   $ff                                         ; $7212: $fe $ff
	cp   $ff                                         ; $7214: $fe $ff
	ld   a, [hl]                                     ; $7216: $7e
	ld   a, a                                        ; $7217: $7f
	ld   a, d                                        ; $7218: $7a
	ld   a, a                                        ; $7219: $7f
	jr   c, jr_025_725b                              ; $721a: $38 $3f

	inc  e                                           ; $721c: $1c
	rra                                              ; $721d: $1f
	inc  c                                           ; $721e: $0c
	rrca                                             ; $721f: $0f
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	db   $fc                                         ; $7224: $fc
	db   $fc                                         ; $7225: $fc
	ld   hl, sp-$08                                  ; $7226: $f8 $f8
	db   $fc                                         ; $7228: $fc
	db   $fc                                         ; $7229: $fc
	cp   $ee                                         ; $722a: $fe $ee
	db   $fc                                         ; $722c: $fc
	inc  e                                           ; $722d: $1c
	cp   $fe                                         ; $722e: $fe $fe
	cp   [hl]                                        ; $7230: $be
	cp   $be                                         ; $7231: $fe $be
	cp   $f6                                         ; $7233: $fe $f6
	cp   $f6                                         ; $7235: $fe $f6
	cp   [hl]                                        ; $7237: $be
	ld   [hl], h                                     ; $7238: $74
	xor  h                                           ; $7239: $ac
	ld   [hl], h                                     ; $723a: $74
	cp   h                                           ; $723b: $bc
	ld   [$10f8], sp                                 ; $723c: $08 $f8 $10
	ldh  a, [rP1]                                    ; $723f: $f0 $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	db   $fc                                         ; $7244: $fc
	db   $fc                                         ; $7245: $fc
	ld   hl, sp-$08                                  ; $7246: $f8 $f8
	db   $fc                                         ; $7248: $fc
	db   $fc                                         ; $7249: $fc
	cp   $ee                                         ; $724a: $fe $ee
	db   $fc                                         ; $724c: $fc
	inc  e                                           ; $724d: $1c
	cp   $fe                                         ; $724e: $fe $fe
	cp   [hl]                                        ; $7250: $be
	cp   $be                                         ; $7251: $fe $be
	cp   $f6                                         ; $7253: $fe $f6
	cp   $f6                                         ; $7255: $fe $f6
	cp   [hl]                                        ; $7257: $be
	ld   [hl], h                                     ; $7258: $74
	xor  h                                           ; $7259: $ac
	ld   [hl], h                                     ; $725a: $74

jr_025_725b:
	cp   h                                           ; $725b: $bc
	ld   [$10f8], sp                                 ; $725c: $08 $f8 $10
	ldh  a, [rTAC]                                   ; $725f: $f0 $07
	rlca                                             ; $7261: $07
	rlca                                             ; $7262: $07
	rlca                                             ; $7263: $07
	rrca                                             ; $7264: $0f
	rrca                                             ; $7265: $0f
	rrca                                             ; $7266: $0f
	ld   c, $0f                                      ; $7267: $0e $0f
	ld   c, $13                                      ; $7269: $0e $13
	ld   e, $11                                      ; $726b: $1e $11
	rra                                              ; $726d: $1f
	db   $10                                         ; $726e: $10
	rra                                              ; $726f: $1f
	jr   nz, jr_025_72b1                             ; $7270: $20 $3f

	jr   nz, jr_025_72b3                             ; $7272: $20 $3f

	jr   nz, jr_025_72b5                             ; $7274: $20 $3f

	jr   c, jr_025_72b7                              ; $7276: $38 $3f

	rra                                              ; $7278: $1f
	rra                                              ; $7279: $1f
	rra                                              ; $727a: $1f
	rra                                              ; $727b: $1f
	rra                                              ; $727c: $1f
	rra                                              ; $727d: $1f
	rrca                                             ; $727e: $0f
	rrca                                             ; $727f: $0f
	ldh  [$e0], a                                    ; $7280: $e0 $e0
	pop  hl                                          ; $7282: $e1
	pop  hl                                          ; $7283: $e1
	and  $27                                         ; $7284: $e6 $27
	cp   $1b                                         ; $7286: $fe $1b
	cp   $03                                         ; $7288: $fe $03
	rst  $38                                         ; $728a: $ff
	inc  bc                                          ; $728b: $03
	db   $fc                                         ; $728c: $fc
	add  h                                           ; $728d: $84
	ld   a, b                                        ; $728e: $78
	ld   hl, sp+$40                                  ; $728f: $f8 $40
	ret  nz                                          ; $7291: $c0

	ld   b, b                                        ; $7292: $40
	ret  nz                                          ; $7293: $c0

	ld   b, b                                        ; $7294: $40
	ret  nz                                          ; $7295: $c0

	ld   b, b                                        ; $7296: $40
	ret  nz                                          ; $7297: $c0

	ret  nz                                          ; $7298: $c0

	ret  nz                                          ; $7299: $c0

	ret  nz                                          ; $729a: $c0

	ret  nz                                          ; $729b: $c0

	ret  nz                                          ; $729c: $c0

	ret  nz                                          ; $729d: $c0

	ret  nz                                          ; $729e: $c0

	ret  nz                                          ; $729f: $c0

	ldh  [$e0], a                                    ; $72a0: $e0 $e0
	pop  hl                                          ; $72a2: $e1
	pop  hl                                          ; $72a3: $e1
	and  $27                                         ; $72a4: $e6 $27
	cp   $1b                                         ; $72a6: $fe $1b
	cp   $03                                         ; $72a8: $fe $03
	rst  $38                                         ; $72aa: $ff
	inc  bc                                          ; $72ab: $03
	db   $fc                                         ; $72ac: $fc
	add  h                                           ; $72ad: $84
	ld   a, b                                        ; $72ae: $78
	ld   hl, sp+$40                                  ; $72af: $f8 $40

jr_025_72b1:
	ret  nz                                          ; $72b1: $c0

	ld   b, b                                        ; $72b2: $40

jr_025_72b3:
	ret  nz                                          ; $72b3: $c0

	ld   b, b                                        ; $72b4: $40

jr_025_72b5:
	ret  nz                                          ; $72b5: $c0

	ld   b, b                                        ; $72b6: $40

jr_025_72b7:
	ret  nz                                          ; $72b7: $c0

	ret  nz                                          ; $72b8: $c0

	ret  nz                                          ; $72b9: $c0

	ret  nz                                          ; $72ba: $c0

	ret  nz                                          ; $72bb: $c0

	ret  nz                                          ; $72bc: $c0

	ret  nz                                          ; $72bd: $c0

	ret  nz                                          ; $72be: $c0

	ret  nz                                          ; $72bf: $c0

	rra                                              ; $72c0: $1f
	rra                                              ; $72c1: $1f
	rra                                              ; $72c2: $1f
	rra                                              ; $72c3: $1f
	rra                                              ; $72c4: $1f
	rra                                              ; $72c5: $1f
	rra                                              ; $72c6: $1f
	rra                                              ; $72c7: $1f
	ccf                                              ; $72c8: $3f
	cpl                                              ; $72c9: $2f
	ccf                                              ; $72ca: $3f
	inc  h                                           ; $72cb: $24
	ld   a, a                                        ; $72cc: $7f
	ld   a, a                                        ; $72cd: $7f
	rra                                              ; $72ce: $1f
	rra                                              ; $72cf: $1f
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	ret  nz                                          ; $72e0: $c0

	ret  nz                                          ; $72e1: $c0

	add  b                                           ; $72e2: $80
	add  b                                           ; $72e3: $80
	add  b                                           ; $72e4: $80
	add  b                                           ; $72e5: $80
	add  b                                           ; $72e6: $80
	add  b                                           ; $72e7: $80
	ret  nz                                          ; $72e8: $c0

	ret  nz                                          ; $72e9: $c0

	ldh  [rAUD4LEN], a                               ; $72ea: $e0 $20
	rst  $38                                         ; $72ec: $ff
	rst  $38                                         ; $72ed: $ff
	ld   hl, sp-$08                                  ; $72ee: $f8 $f8
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	ret  nz                                          ; $731c: $c0

	ret  nz                                          ; $731d: $c0

	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	ldh  a, [$f0]                                    ; $733c: $f0 $f0
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	ld   a, c                                        ; $7350: $79
	ld   a, c                                        ; $7351: $79
	and  $ff                                         ; $7352: $e6 $ff
	db   $fd                                         ; $7354: $fd
	rst  $38                                         ; $7355: $ff
	add  [hl]                                        ; $7356: $86
	cp   $84                                         ; $7357: $fe $84
	db   $fc                                         ; $7359: $fc
	add  h                                           ; $735a: $84
	db   $fc                                         ; $735b: $fc
	ld   a, b                                        ; $735c: $78
	ld   a, b                                        ; $735d: $78
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	ret  nz                                          ; $736e: $c0

	ret  nz                                          ; $736f: $c0

	ret  nz                                          ; $7370: $c0

	ld   b, b                                        ; $7371: $40
	add  b                                           ; $7372: $80
	add  b                                           ; $7373: $80
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	add  b                                           ; $7382: $80
	add  b                                           ; $7383: $80
	ld   a, b                                        ; $7384: $78
	ld   hl, sp+$7c                                  ; $7385: $f8 $7c
	db   $fc                                         ; $7387: $fc
	rst  $20                                         ; $7388: $e7
	rst  $38                                         ; $7389: $ff
	sbc  h                                           ; $738a: $9c
	rst  $38                                         ; $738b: $ff
	add  e                                           ; $738c: $83
	rst  $38                                         ; $738d: $ff
	add  h                                           ; $738e: $84
	db   $fc                                         ; $738f: $fc
	ld   b, h                                        ; $7390: $44
	ld   a, h                                        ; $7391: $7c
	jr   c, jr_025_73cc                              ; $7392: $38 $38

	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	ldh  [hScriptOpcodeParams], a                                    ; $73a8: $e0 $a0
	ldh  [$e0], a                                    ; $73aa: $e0 $e0
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	inc  b                                           ; $73ca: $04
	inc  b                                           ; $73cb: $04

jr_025_73cc:
	ld   [$1f09], sp                                 ; $73cc: $08 $09 $1f
	rla                                              ; $73cf: $17
	rra                                              ; $73d0: $1f
	db   $10                                         ; $73d1: $10
	rrca                                             ; $73d2: $0f
	rrca                                             ; $73d3: $0f
	rrca                                             ; $73d4: $0f
	ld   [$080f], sp                                 ; $73d5: $08 $0f $08
	rlca                                             ; $73d8: $07
	inc  b                                           ; $73d9: $04
	rrca                                             ; $73da: $0f
	rrca                                             ; $73db: $0f
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	ld   b, b                                        ; $73ea: $40
	ld   b, b                                        ; $73eb: $40
	db   $10                                         ; $73ec: $10
	ld   d, b                                        ; $73ed: $50
	add  sp, -$08                                    ; $73ee: $e8 $f8
	ld   [$f0f8], sp                                 ; $73f0: $08 $f8 $f0
	ldh  a, [$90]                                    ; $73f3: $f0 $90
	ld   [hl], b                                     ; $73f5: $70
	sub  b                                           ; $73f6: $90
	ld   [hl], b                                     ; $73f7: $70
	and  b                                           ; $73f8: $a0
	ld   h, b                                        ; $73f9: $60
	ldh  a, [$f0]                                    ; $73fa: $f0 $f0
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	ld   bc, $0500                                   ; $7414: $01 $00 $05
	nop                                              ; $7417: $00
	inc  c                                           ; $7418: $0c
	ld   [bc], a                                     ; $7419: $02
	ld   bc, $0602                                   ; $741a: $01 $02 $06
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	ld   b, b                                        ; $7434: $40
	nop                                              ; $7435: $00
	ret  nc                                          ; $7436: $d0

	jr   nz, jr_025_7471                             ; $7437: $20 $38

	add  b                                           ; $7439: $80
	add  b                                           ; $743a: $80
	jr   nz, @+$22                                   ; $743b: $20 $20

	add  b                                           ; $743d: $80
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	ld   de, $0510                                   ; $7454: $11 $10 $05
	inc  b                                           ; $7457: $04
	inc  c                                           ; $7458: $0c
	ld   [bc], a                                     ; $7459: $02
	add  hl, bc                                      ; $745a: $09
	ld   a, [bc]                                     ; $745b: $0a
	ld   b, $00                                      ; $745c: $06 $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	inc  b                                           ; $746a: $04
	inc  b                                           ; $746b: $04
	ld   [$1f08], sp                                 ; $746c: $08 $08 $1f
	rla                                              ; $746f: $17
	rra                                              ; $7470: $1f

jr_025_7471:
	db   $10                                         ; $7471: $10
	rrca                                             ; $7472: $0f
	rrca                                             ; $7473: $0f
	rrca                                             ; $7474: $0f
	ld   [$080f], sp                                 ; $7475: $08 $0f $08
	rlca                                             ; $7478: $07
	inc  b                                           ; $7479: $04
	rrca                                             ; $747a: $0f
	rrca                                             ; $747b: $0f
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	ld   bc, $0d00                                   ; $7494: $01 $00 $0d
	ld   [$020c], sp                                 ; $7497: $08 $0c $02
	dec  b                                           ; $749a: $05
	ld   b, $17                                      ; $749b: $06 $17
	ld   de, $0000                                   ; $749d: $11 $00 $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	ld   b, b                                        ; $74b4: $40
	nop                                              ; $74b5: $00
	ret  nc                                          ; $74b6: $d0

	jr   nz, jr_025_7471                             ; $74b7: $20 $b8

	add  b                                           ; $74b9: $80
	add  b                                           ; $74ba: $80
	jr   nz, @+$22                                   ; $74bb: $20 $20

	add  b                                           ; $74bd: $80
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	ld   c, $0e                                      ; $74c0: $0e $0e
	rlca                                             ; $74c2: $07
	rlca                                             ; $74c3: $07
	rra                                              ; $74c4: $1f
	rra                                              ; $74c5: $1f
	ccf                                              ; $74c6: $3f
	ccf                                              ; $74c7: $3f
	ld   a, a                                        ; $74c8: $7f
	ld   l, a                                        ; $74c9: $6f
	ld   a, a                                        ; $74ca: $7f
	ld   [hl], e                                     ; $74cb: $73
	ld   a, a                                        ; $74cc: $7f
	ld   a, a                                        ; $74cd: $7f
	ld   a, e                                        ; $74ce: $7b
	ld   a, a                                        ; $74cf: $7f
	ld   [hl], e                                     ; $74d0: $73
	ld   a, a                                        ; $74d1: $7f
	ld   a, a                                        ; $74d2: $7f
	ld   a, a                                        ; $74d3: $7f
	ld   e, [hl]                                     ; $74d4: $5e
	rst  $30                                         ; $74d5: $f7
	ld   c, $f3                                      ; $74d6: $0e $f3
	ld   l, $37                                      ; $74d8: $2e $37
	db   $10                                         ; $74da: $10
	rra                                              ; $74db: $1f
	ld   [$0f0f], sp                                 ; $74dc: $08 $0f $0f
	rrca                                             ; $74df: $0f
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	ld   [hl], b                                     ; $74e2: $70
	ld   [hl], b                                     ; $74e3: $70
	ld   hl, sp-$08                                  ; $74e4: $f8 $f8
	db   $fc                                         ; $74e6: $fc
	db   $fc                                         ; $74e7: $fc
	cp   $f6                                         ; $74e8: $fe $f6
	cp   $8e                                         ; $74ea: $fe $8e
	cp   $fe                                         ; $74ec: $fe $fe
	ld   a, [hl]                                     ; $74ee: $7e
	cp   $6e                                         ; $74ef: $fe $6e
	cp   $7e                                         ; $74f1: $fe $7e
	cp   $7a                                         ; $74f3: $fe $7a
	rst  $28                                         ; $74f5: $ef
	ld   [hl], b                                     ; $74f6: $70
	xor  a                                           ; $74f7: $af
	ld   [hl], h                                     ; $74f8: $74
	db   $ec                                         ; $74f9: $ec
	ld   [$10f8], sp                                 ; $74fa: $08 $f8 $10
	ldh  a, [$f0]                                    ; $74fd: $f0 $f0
	ldh  a, [rP1]                                    ; $74ff: $f0 $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	ld   a, $3e                                      ; $7504: $3e $3e
	rra                                              ; $7506: $1f
	rra                                              ; $7507: $1f
	ccf                                              ; $7508: $3f
	ccf                                              ; $7509: $3f
	ccf                                              ; $750a: $3f
	cpl                                              ; $750b: $2f
	ld   a, a                                        ; $750c: $7f
	ld   l, a                                        ; $750d: $6f
	ld   a, a                                        ; $750e: $7f
	ld   [hl], e                                     ; $750f: $73
	ld   a, a                                        ; $7510: $7f
	ld   a, a                                        ; $7511: $7f
	ld   a, e                                        ; $7512: $7b
	ld   a, a                                        ; $7513: $7f
	ld   [hl], e                                     ; $7514: $73
	ld   a, a                                        ; $7515: $7f
	ld   d, e                                        ; $7516: $53
	rst  $38                                         ; $7517: $ff
	inc  e                                           ; $7518: $1c
	rst  $38                                         ; $7519: $ff
	ld   [hl+], a                                    ; $751a: $22
	ccf                                              ; $751b: $3f
	db   $10                                         ; $751c: $10
	rra                                              ; $751d: $1f
	ld   [$000f], sp                                 ; $751e: $08 $0f $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	ldh  a, [$f0]                                    ; $7524: $f0 $f0
	ld   hl, sp-$08                                  ; $7526: $f8 $f8
	db   $fc                                         ; $7528: $fc
	db   $fc                                         ; $7529: $fc
	db   $fc                                         ; $752a: $fc
	db   $f4                                         ; $752b: $f4
	cp   $f6                                         ; $752c: $fe $f6
	cp   $8e                                         ; $752e: $fe $8e
	cp   $fe                                         ; $7530: $fe $fe
	ld   a, [hl]                                     ; $7532: $7e
	cp   $6e                                         ; $7533: $fe $6e
	cp   $6a                                         ; $7535: $fe $6a
	rst  $38                                         ; $7537: $ff
	jr   c, @+$01                                    ; $7538: $38 $ff

	ld   b, h                                        ; $753a: $44
	db   $fc                                         ; $753b: $fc
	ld   [$10f8], sp                                 ; $753c: $08 $f8 $10
	ldh  a, [$1f]                                    ; $753f: $f0 $1f
	add  hl, de                                      ; $7541: $19
	ccf                                              ; $7542: $3f
	ld   l, $7e                                      ; $7543: $2e $7e
	ld   e, [hl]                                     ; $7545: $5e
	ld   a, h                                        ; $7546: $7c
	ld   e, h                                        ; $7547: $5c
	rst  $38                                         ; $7548: $ff
	sbc  [hl]                                        ; $7549: $9e
	db   $e4                                         ; $754a: $e4
	cp   h                                           ; $754b: $bc
	db   $e4                                         ; $754c: $e4
	cp   h                                           ; $754d: $bc
	ld   l, c                                        ; $754e: $69
	ld   a, c                                        ; $754f: $79
	jr   nc, jr_025_7582                             ; $7550: $30 $30

	db   $10                                         ; $7552: $10
	db   $10                                         ; $7553: $10
	jr   nc, jr_025_7586                             ; $7554: $30 $30

	jr   nc, jr_025_7588                             ; $7556: $30 $30

	ld   [hl], b                                     ; $7558: $70
	ld   [hl], b                                     ; $7559: $70
	ldh  a, [$90]                                    ; $755a: $f0 $90
	ldh  a, [$90]                                    ; $755c: $f0 $90
	ldh  a, [$90]                                    ; $755e: $f0 $90
	ld   hl, sp-$68                                  ; $7560: $f8 $98
	db   $fc                                         ; $7562: $fc
	ld   [hl], h                                     ; $7563: $74
	ld   a, [hl]                                     ; $7564: $7e
	ld   a, d                                        ; $7565: $7a
	ld   e, $1a                                      ; $7566: $1e $1a
	ld   a, a                                        ; $7568: $7f
	ld   a, c                                        ; $7569: $79
	daa                                              ; $756a: $27
	dec  a                                           ; $756b: $3d
	daa                                              ; $756c: $27
	dec  a                                           ; $756d: $3d
	ld   d, $5e                                      ; $756e: $16 $5e
	inc  c                                           ; $7570: $0c
	inc  c                                           ; $7571: $0c
	ld   [$0c08], sp                                 ; $7572: $08 $08 $0c
	inc  c                                           ; $7575: $0c
	inc  c                                           ; $7576: $0c
	inc  c                                           ; $7577: $0c
	ld   c, $0e                                      ; $7578: $0e $0e
	rrca                                             ; $757a: $0f
	add  hl, bc                                      ; $757b: $09
	rrca                                             ; $757c: $0f
	add  hl, bc                                      ; $757d: $09
	rrca                                             ; $757e: $0f
	add  hl, bc                                      ; $757f: $09
	ld   [hl], b                                     ; $7580: $70
	ld   d, b                                        ; $7581: $50

jr_025_7582:
	ldh  [$e0], a                                    ; $7582: $e0 $e0
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00

jr_025_7586:
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00

jr_025_7588:
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	ld   c, $0a                                      ; $75a0: $0e $0a
	rlca                                             ; $75a2: $07
	rlca                                             ; $75a3: $07
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	rra                                              ; $75c0: $1f
	add  hl, de                                      ; $75c1: $19
	ccf                                              ; $75c2: $3f
	ld   l, $7e                                      ; $75c3: $2e $7e
	ld   e, [hl]                                     ; $75c5: $5e
	ld   a, h                                        ; $75c6: $7c
	ld   e, h                                        ; $75c7: $5c
	rst  $38                                         ; $75c8: $ff
	sbc  [hl]                                        ; $75c9: $9e
	db   $e4                                         ; $75ca: $e4
	cp   h                                           ; $75cb: $bc
	db   $e4                                         ; $75cc: $e4
	cp   h                                           ; $75cd: $bc
	ld   l, c                                        ; $75ce: $69
	ld   a, c                                        ; $75cf: $79
	jr   nc, jr_025_7602                             ; $75d0: $30 $30

	db   $10                                         ; $75d2: $10
	db   $10                                         ; $75d3: $10
	jr   nc, jr_025_7606                             ; $75d4: $30 $30

	ld   [hl], b                                     ; $75d6: $70
	ld   [hl], b                                     ; $75d7: $70
	ldh  a, [$f0]                                    ; $75d8: $f0 $f0
	ldh  a, [rSVBK]                                  ; $75da: $f0 $70
	ldh  a, [$30]                                    ; $75dc: $f0 $30
	ldh  a, [rAUD1SWEEP]                             ; $75de: $f0 $10
	ld   hl, sp-$68                                  ; $75e0: $f8 $98
	db   $fc                                         ; $75e2: $fc
	ld   [hl], h                                     ; $75e3: $74
	ld   a, [hl]                                     ; $75e4: $7e
	ld   a, d                                        ; $75e5: $7a
	ld   e, $1a                                      ; $75e6: $1e $1a
	ld   a, a                                        ; $75e8: $7f
	ld   a, c                                        ; $75e9: $79
	daa                                              ; $75ea: $27
	dec  a                                           ; $75eb: $3d
	daa                                              ; $75ec: $27
	dec  a                                           ; $75ed: $3d
	ld   d, $5e                                      ; $75ee: $16 $5e
	inc  c                                           ; $75f0: $0c
	inc  c                                           ; $75f1: $0c
	ld   [$0c08], sp                                 ; $75f2: $08 $08 $0c
	inc  c                                           ; $75f5: $0c
	ld   c, $0e                                      ; $75f6: $0e $0e
	rrca                                             ; $75f8: $0f
	rrca                                             ; $75f9: $0f
	rrca                                             ; $75fa: $0f
	ld   c, $0f                                      ; $75fb: $0e $0f
	inc  c                                           ; $75fd: $0c
	rrca                                             ; $75fe: $0f
	ld   [rRAMG], sp                                 ; $75ff: $08 $00 $00

jr_025_7602:
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00

jr_025_7606:
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	ld   bc, $0301                                   ; $7608: $01 $01 $03
	ld   [bc], a                                     ; $760b: $02
	inc  bc                                          ; $760c: $03
	ld   [bc], a                                     ; $760d: $02
	ld   bc, $0001                                   ; $760e: $01 $01 $00
	nop                                              ; $7611: $00
	inc  bc                                          ; $7612: $03
	inc  bc                                          ; $7613: $03
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	add  b                                           ; $7628: $80
	add  b                                           ; $7629: $80
	ret  nz                                          ; $762a: $c0

	ld   b, b                                        ; $762b: $40
	ret  nz                                          ; $762c: $c0

	ld   b, b                                        ; $762d: $40
	add  b                                           ; $762e: $80
	add  b                                           ; $762f: $80
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	ret  nz                                          ; $7632: $c0

	ret  nz                                          ; $7633: $c0

	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	ldh  a, [$d0]                                    ; $7640: $f0 $d0
	ldh  [$e0], a                                    ; $7642: $e0 $e0
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	rrca                                             ; $7660: $0f
	dec  bc                                          ; $7661: $0b
	rlca                                             ; $7662: $07
	rlca                                             ; $7663: $07
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	rra                                              ; $7680: $1f
	rra                                              ; $7681: $1f
	ccf                                              ; $7682: $3f
	ld   l, $7e                                      ; $7683: $2e $7e
	ld   e, [hl]                                     ; $7685: $5e
	ld   a, h                                        ; $7686: $7c
	ld   e, h                                        ; $7687: $5c
	rst  $38                                         ; $7688: $ff
	sbc  [hl]                                        ; $7689: $9e
	db   $e4                                         ; $768a: $e4
	cp   h                                           ; $768b: $bc
	db   $e4                                         ; $768c: $e4
	cp   h                                           ; $768d: $bc
	ld   l, c                                        ; $768e: $69
	ld   a, c                                        ; $768f: $79
	jr   nc, jr_025_76c2                             ; $7690: $30 $30

	db   $10                                         ; $7692: $10
	db   $10                                         ; $7693: $10
	jr   nc, jr_025_76c6                             ; $7694: $30 $30

	jr   nc, jr_025_76c8                             ; $7696: $30 $30

	ld   [hl], b                                     ; $7698: $70
	ld   [hl], b                                     ; $7699: $70
	ldh  a, [$90]                                    ; $769a: $f0 $90
	ldh  a, [$90]                                    ; $769c: $f0 $90
	ldh  a, [$90]                                    ; $769e: $f0 $90
	ld   hl, sp-$08                                  ; $76a0: $f8 $f8
	db   $fc                                         ; $76a2: $fc
	ld   [hl], h                                     ; $76a3: $74
	ld   a, [hl]                                     ; $76a4: $7e
	ld   a, d                                        ; $76a5: $7a
	ld   e, $1a                                      ; $76a6: $1e $1a
	ld   a, a                                        ; $76a8: $7f
	ld   a, c                                        ; $76a9: $79
	daa                                              ; $76aa: $27
	dec  a                                           ; $76ab: $3d
	daa                                              ; $76ac: $27
	dec  a                                           ; $76ad: $3d
	ld   d, $5e                                      ; $76ae: $16 $5e
	inc  c                                           ; $76b0: $0c
	inc  c                                           ; $76b1: $0c
	ld   [$0c08], sp                                 ; $76b2: $08 $08 $0c
	inc  c                                           ; $76b5: $0c
	inc  c                                           ; $76b6: $0c
	inc  c                                           ; $76b7: $0c
	ld   c, $0e                                      ; $76b8: $0e $0e
	rrca                                             ; $76ba: $0f
	add  hl, bc                                      ; $76bb: $09
	rrca                                             ; $76bc: $0f
	add  hl, bc                                      ; $76bd: $09
	rrca                                             ; $76be: $0f
	add  hl, bc                                      ; $76bf: $09
	inc  b                                           ; $76c0: $04
	inc  b                                           ; $76c1: $04

jr_025_76c2:
	ld   a, [bc]                                     ; $76c2: $0a
	add  hl, bc                                      ; $76c3: $09
	rrca                                             ; $76c4: $0f
	rlca                                             ; $76c5: $07

jr_025_76c6:
	rrca                                             ; $76c6: $0f
	nop                                              ; $76c7: $00

jr_025_76c8:
	rrca                                             ; $76c8: $0f
	rrca                                             ; $76c9: $0f
	rrca                                             ; $76ca: $0f
	ld   [$080f], sp                                 ; $76cb: $08 $0f $08
	rlca                                             ; $76ce: $07
	inc  b                                           ; $76cf: $04
	rlca                                             ; $76d0: $07
	rlca                                             ; $76d1: $07
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
	ld   b, b                                        ; $76e0: $40
	ld   b, b                                        ; $76e1: $40
	db   $10                                         ; $76e2: $10
	ld   d, b                                        ; $76e3: $50
	ldh  [$f0], a                                    ; $76e4: $e0 $f0
	nop                                              ; $76e6: $00
	ldh  a, [$f0]                                    ; $76e7: $f0 $f0
	ldh  a, [$90]                                    ; $76e9: $f0 $90
	ld   [hl], b                                     ; $76eb: $70
	sub  b                                           ; $76ec: $90
	ld   [hl], b                                     ; $76ed: $70
	and  b                                           ; $76ee: $a0
	ld   h, b                                        ; $76ef: $60
	ldh  [$e0], a                                    ; $76f0: $e0 $e0
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
	inc  c                                           ; $7704: $0c
	ld   bc, $0007                                   ; $7705: $01 $07 $00
	inc  c                                           ; $7708: $0c
	nop                                              ; $7709: $00
	add  hl, bc                                      ; $770a: $09
	ld   [bc], a                                     ; $770b: $02
	dec  b                                           ; $770c: $05
	ld   a, [bc]                                     ; $770d: $0a
	inc  b                                           ; $770e: $04
	ld   a, [bc]                                     ; $770f: $0a
	ld   bc, $040a                                   ; $7710: $01 $0a $04
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
	ld   b, b                                        ; $7724: $40
	add  b                                           ; $7725: $80
	ret  nz                                          ; $7726: $c0

	jr   nz, jr_025_7729                             ; $7727: $20 $00

jr_025_7729:
	add  b                                           ; $7729: $80
	ld   b, b                                        ; $772a: $40
	add  b                                           ; $772b: $80
	ret  nz                                          ; $772c: $c0

	jr   nz, jr_025_774f                             ; $772d: $20 $20

	sub  b                                           ; $772f: $90
	add  b                                           ; $7730: $80
	jr   nc, jr_025_7753                             ; $7731: $30 $20

	add  b                                           ; $7733: $80
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

jr_025_774f:
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00

jr_025_7753:
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
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	ld   e, $1e                                      ; $7804: $1e $1e
	rrca                                             ; $7806: $0f
	rrca                                             ; $7807: $0f
	rra                                              ; $7808: $1f
	rra                                              ; $7809: $1f
	ccf                                              ; $780a: $3f
	inc  sp                                          ; $780b: $33
	ccf                                              ; $780c: $3f
	ccf                                              ; $780d: $3f
	ld   a, a                                        ; $780e: $7f
	ld   a, a                                        ; $780f: $7f
	ld   a, l                                        ; $7810: $7d
	ld   a, a                                        ; $7811: $7f
	ld   a, l                                        ; $7812: $7d
	ld   a, a                                        ; $7813: $7f
	ld   l, l                                        ; $7814: $6d
	ld   a, a                                        ; $7815: $7f
	ld   a, l                                        ; $7816: $7d
	ld   a, a                                        ; $7817: $7f
	inc  a                                           ; $7818: $3c
	scf                                              ; $7819: $37
	inc  l                                           ; $781a: $2c
	scf                                              ; $781b: $37
	inc  d                                           ; $781c: $14
	rra                                              ; $781d: $1f
	ld   [$000f], sp                                 ; $781e: $08 $0f $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	ldh  [$e0], a                                    ; $7824: $e0 $e0
	ld   hl, sp-$08                                  ; $7826: $f8 $f8
	db   $fc                                         ; $7828: $fc
	db   $fc                                         ; $7829: $fc
	db   $fc                                         ; $782a: $fc
	db   $f4                                         ; $782b: $f4
	cp   $8e                                         ; $782c: $fe $8e
	cp   $fe                                         ; $782e: $fe $fe
	cp   $fe                                         ; $7830: $fe $fe
	cp   [hl]                                        ; $7832: $be
	cp   $9e                                         ; $7833: $fe $9e
	cp   $f4                                         ; $7835: $fe $f4
	cp   $f0                                         ; $7837: $fe $f0
	sbc  [hl]                                        ; $7839: $9e
	db   $e4                                         ; $783a: $e4
	call c, $f8c8                                    ; $783b: $dc $c8 $f8
	jr   @-$06                                       ; $783e: $18 $f8

	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	ld   bc, $0101                                   ; $784e: $01 $01 $01
	ld   bc, $0000                                   ; $7851: $01 $00 $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	ccf                                              ; $7860: $3f
	ccf                                              ; $7861: $3f
	ld   a, a                                        ; $7862: $7f
	ld   e, l                                        ; $7863: $5d
	ld   a, a                                        ; $7864: $7f
	ld   e, l                                        ; $7865: $5d
	rst  $38                                         ; $7866: $ff
	sbc  l                                           ; $7867: $9d
	rst  $30                                         ; $7868: $f7
	sbc  l                                           ; $7869: $9d
	rst  $30                                         ; $786a: $f7
	sbc  l                                           ; $786b: $9d
	rst  $30                                         ; $786c: $f7
	sbc  l                                           ; $786d: $9d
	rst  $38                                         ; $786e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $786f: $cf
	or   $ff                                         ; $7870: $f6 $ff
	and  $ff                                         ; $7872: $e6 $ff
	ld   a, a                                        ; $7874: $7f
	ld   a, a                                        ; $7875: $7f
	rst  $38                                         ; $7876: $ff
	di                                               ; $7877: $f3
	rra                                              ; $7878: $1f
	rra                                              ; $7879: $1f
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	ld   hl, sp-$18                                  ; $7880: $f8 $e8
	db   $fc                                         ; $7882: $fc
	db   $e4                                         ; $7883: $e4
	db   $fc                                         ; $7884: $fc
	db   $e4                                         ; $7885: $e4
	cp   $e2                                         ; $7886: $fe $e2
	ld   e, $f2                                      ; $7888: $1e $f2
	ld   a, $f2                                      ; $788a: $3e $f2
	ld   a, [hl]                                     ; $788c: $7e
	jp   nz, $8fff                                   ; $788d: $c2 $ff $8f

	rst  $38                                         ; $7890: $ff
	cp   a                                           ; $7891: $bf
	ld   a, [hl]                                     ; $7892: $7e
	cp   $fc                                         ; $7893: $fe $fc
	db   $fc                                         ; $7895: $fc
	cp   $fe                                         ; $7896: $fe $fe
	ldh  [$e0], a                                    ; $7898: $e0 $e0
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	inc  e                                           ; $78a0: $1c
	inc  e                                           ; $78a1: $1c
	ld   c, $0e                                      ; $78a2: $0e $0e
	rra                                              ; $78a4: $1f
	rra                                              ; $78a5: $1f
	ccf                                              ; $78a6: $3f
	ccf                                              ; $78a7: $3f
	ccf                                              ; $78a8: $3f
	cpl                                              ; $78a9: $2f
	ld   a, a                                        ; $78aa: $7f
	ld   [hl], a                                     ; $78ab: $77
	ld   a, a                                        ; $78ac: $7f
	ld   a, a                                        ; $78ad: $7f
	ld   a, l                                        ; $78ae: $7d
	ld   a, a                                        ; $78af: $7f
	ld   l, l                                        ; $78b0: $6d
	ld   a, a                                        ; $78b1: $7f
	ld   a, l                                        ; $78b2: $7d
	ld   a, a                                        ; $78b3: $7f
	inc  a                                           ; $78b4: $3c
	scf                                              ; $78b5: $37
	inc  l                                           ; $78b6: $2c
	scf                                              ; $78b7: $37
	ld   l, h                                        ; $78b8: $6c
	ld   [hl], a                                     ; $78b9: $77
	ld   [hl], b                                     ; $78ba: $70
	ld   e, a                                        ; $78bb: $5f
	ld   hl, sp-$71                                  ; $78bc: $f8 $8f
	rst  $38                                         ; $78be: $ff
	adc  a                                           ; $78bf: $8f
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	ldh  [$e0], a                                    ; $78c2: $e0 $e0
	ld   hl, sp-$08                                  ; $78c4: $f8 $f8
	db   $fc                                         ; $78c6: $fc
	db   $fc                                         ; $78c7: $fc
	db   $fc                                         ; $78c8: $fc
	db   $f4                                         ; $78c9: $f4
	cp   $0e                                         ; $78ca: $fe $0e
	cp   $fe                                         ; $78cc: $fe $fe
	cp   [hl]                                        ; $78ce: $be
	cp   $9e                                         ; $78cf: $fe $9e
	cp   $fe                                         ; $78d1: $fe $fe
	cp   $f4                                         ; $78d3: $fe $f4
	sbc  $e0                                         ; $78d5: $de $e0
	sbc  [hl]                                        ; $78d7: $9e
	db   $e4                                         ; $78d8: $e4
	call c, $f808                                    ; $78d9: $dc $08 $f8
	db   $10                                         ; $78dc: $10
	ldh  a, [$f8]                                    ; $78dd: $f0 $f8
	ld   hl, sp+$01                                  ; $78df: $f8 $01
	ld   bc, $0000                                   ; $78e1: $01 $00 $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	ld   bc, $0101                                   ; $78ee: $01 $01 $01
	ld   bc, $0000                                   ; $78f1: $01 $00 $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	rst  $38                                         ; $7900: $ff
	dec  [hl]                                        ; $7901: $35
	rst  $38                                         ; $7902: $ff
	cp   l                                           ; $7903: $bd
	ld   a, a                                        ; $7904: $7f
	ld   a, l                                        ; $7905: $7d
	rra                                              ; $7906: $1f
	dec  e                                           ; $7907: $1d
	rla                                              ; $7908: $17
	dec  e                                           ; $7909: $1d
	rla                                              ; $790a: $17
	dec  e                                           ; $790b: $1d
	rst  $20                                         ; $790c: $e7
	db   $fd                                         ; $790d: $fd
	rst  $30                                         ; $790e: $f7
	rst  $38                                         ; $790f: $ff
	cp   $ff                                         ; $7910: $fe $ff
	cp   $ff                                         ; $7912: $fe $ff
	ld   a, a                                        ; $7914: $7f
	ld   a, a                                        ; $7915: $7f
	rst  $38                                         ; $7916: $ff
	di                                               ; $7917: $f3
	rra                                              ; $7918: $1f
	rra                                              ; $7919: $1f
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	ld   hl, sp+$28                                  ; $7920: $f8 $28
	db   $fc                                         ; $7922: $fc
	db   $e4                                         ; $7923: $e4
	db   $fc                                         ; $7924: $fc
	db   $e4                                         ; $7925: $e4
	cp   $e2                                         ; $7926: $fe $e2
	ld   e, $f2                                      ; $7928: $1e $f2
	ld   a, $f2                                      ; $792a: $3e $f2
	ld   a, [hl]                                     ; $792c: $7e
	jp   nz, $8fff                                   ; $792d: $c2 $ff $8f

	rst  $38                                         ; $7930: $ff
	cp   a                                           ; $7931: $bf
	ld   a, [hl]                                     ; $7932: $7e
	cp   $fc                                         ; $7933: $fe $fc
	db   $fc                                         ; $7935: $fc
	cp   $fe                                         ; $7936: $fe $fe
	ldh  [$e0], a                                    ; $7938: $e0 $e0
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	inc  e                                           ; $7940: $1c
	inc  e                                           ; $7941: $1c
	ld   c, $0e                                      ; $7942: $0e $0e
	rra                                              ; $7944: $1f
	rra                                              ; $7945: $1f
	ccf                                              ; $7946: $3f
	ccf                                              ; $7947: $3f
	ccf                                              ; $7948: $3f
	cpl                                              ; $7949: $2f
	ld   a, a                                        ; $794a: $7f
	ld   [hl], a                                     ; $794b: $77
	ld   a, a                                        ; $794c: $7f
	ld   a, a                                        ; $794d: $7f
	ld   a, l                                        ; $794e: $7d
	ld   a, a                                        ; $794f: $7f
	ld   l, l                                        ; $7950: $6d
	ld   a, a                                        ; $7951: $7f
	ld   a, l                                        ; $7952: $7d
	ld   a, a                                        ; $7953: $7f
	inc  a                                           ; $7954: $3c
	scf                                              ; $7955: $37
	inc  l                                           ; $7956: $2c
	scf                                              ; $7957: $37
	inc  l                                           ; $7958: $2c
	scf                                              ; $7959: $37
	jr   nc, jr_025_799b                             ; $795a: $30 $3f

	ld   a, b                                        ; $795c: $78
	ld   c, a                                        ; $795d: $4f
	rst  $38                                         ; $795e: $ff
	adc  a                                           ; $795f: $8f
	ld   bc, $0101                                   ; $7960: $01 $01 $01
	ld   bc, $0000                                   ; $7963: $01 $00 $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	ld   bc, $0101                                   ; $796e: $01 $01 $01
	ld   bc, $0000                                   ; $7971: $01 $00 $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	rst  $38                                         ; $7980: $ff
	dec  [hl]                                        ; $7981: $35
	rst  $38                                         ; $7982: $ff
	dec  a                                           ; $7983: $3d
	rst  $38                                         ; $7984: $ff
	db   $fd                                         ; $7985: $fd
	rra                                              ; $7986: $1f
	dec  e                                           ; $7987: $1d
	rla                                              ; $7988: $17
	dec  e                                           ; $7989: $1d
	rla                                              ; $798a: $17
	dec  e                                           ; $798b: $1d
	rst  $20                                         ; $798c: $e7
	db   $fd                                         ; $798d: $fd
	rst  $30                                         ; $798e: $f7
	rst  $38                                         ; $798f: $ff
	cp   $ff                                         ; $7990: $fe $ff
	cp   $ff                                         ; $7992: $fe $ff
	ld   a, a                                        ; $7994: $7f
	ld   a, a                                        ; $7995: $7f
	rst  $38                                         ; $7996: $ff
	di                                               ; $7997: $f3
	rra                                              ; $7998: $1f
	rra                                              ; $7999: $1f
	nop                                              ; $799a: $00

jr_025_799b:
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	inc  e                                           ; $79a2: $1c
	inc  e                                           ; $79a3: $1c
	ld   c, $0e                                      ; $79a4: $0e $0e
	rra                                              ; $79a6: $1f
	rra                                              ; $79a7: $1f
	ccf                                              ; $79a8: $3f
	ccf                                              ; $79a9: $3f
	ccf                                              ; $79aa: $3f
	cpl                                              ; $79ab: $2f
	ld   a, a                                        ; $79ac: $7f
	ld   [hl], a                                     ; $79ad: $77
	ld   a, a                                        ; $79ae: $7f
	ld   a, a                                        ; $79af: $7f
	ld   a, l                                        ; $79b0: $7d
	ld   a, a                                        ; $79b1: $7f
	ld   l, l                                        ; $79b2: $6d
	ld   a, a                                        ; $79b3: $7f
	ld   l, l                                        ; $79b4: $6d
	ld   a, a                                        ; $79b5: $7f
	inc  a                                           ; $79b6: $3c
	ccf                                              ; $79b7: $3f
	ld   a, h                                        ; $79b8: $7c
	ld   [hl], a                                     ; $79b9: $77
	ld   l, h                                        ; $79ba: $6c
	ld   [hl], a                                     ; $79bb: $77
	ldh  a, [$9f]                                    ; $79bc: $f0 $9f
	ei                                               ; $79be: $fb
	adc  a                                           ; $79bf: $8f
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	ldh  [$e0], a                                    ; $79c4: $e0 $e0
	ld   hl, sp-$08                                  ; $79c6: $f8 $f8
	db   $fc                                         ; $79c8: $fc
	db   $fc                                         ; $79c9: $fc
	db   $fc                                         ; $79ca: $fc
	db   $f4                                         ; $79cb: $f4
	cp   $0e                                         ; $79cc: $fe $0e
	cp   $fe                                         ; $79ce: $fe $fe
	cp   [hl]                                        ; $79d0: $be
	cp   $9e                                         ; $79d1: $fe $9e
	cp   $9e                                         ; $79d3: $fe $9e
	cp   $f4                                         ; $79d5: $fe $f4
	cp   $f0                                         ; $79d7: $fe $f0
	sbc  [hl]                                        ; $79d9: $9e
	db   $e4                                         ; $79da: $e4
	call c, $f808                                    ; $79db: $dc $08 $f8
	jr   @-$06                                       ; $79de: $18 $f8

	rst  $38                                         ; $79e0: $ff
	rra                                              ; $79e1: $1f
	rst  $38                                         ; $79e2: $ff
	cp   l                                           ; $79e3: $bd
	ld   a, a                                        ; $79e4: $7f
	ld   a, l                                        ; $79e5: $7d
	rra                                              ; $79e6: $1f
	dec  e                                           ; $79e7: $1d
	rla                                              ; $79e8: $17
	dec  e                                           ; $79e9: $1d
	rla                                              ; $79ea: $17
	dec  e                                           ; $79eb: $1d
	rst  $20                                         ; $79ec: $e7
	db   $fd                                         ; $79ed: $fd
	rst  $30                                         ; $79ee: $f7
	rst  $38                                         ; $79ef: $ff
	cp   $ff                                         ; $79f0: $fe $ff
	cp   $ff                                         ; $79f2: $fe $ff
	ld   a, a                                        ; $79f4: $7f
	ld   a, a                                        ; $79f5: $7f
	rst  $38                                         ; $79f6: $ff
	di                                               ; $79f7: $f3
	rra                                              ; $79f8: $1f
	rra                                              ; $79f9: $1f
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	inc  e                                           ; $7a16: $1c
	inc  e                                           ; $7a17: $1c
	ccf                                              ; $7a18: $3f
	inc  hl                                          ; $7a19: $23
	ccf                                              ; $7a1a: $3f
	ld   hl, $233f                                   ; $7a1b: $21 $3f $23
	inc  e                                           ; $7a1e: $1c
	inc  e                                           ; $7a1f: $1c
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	ld   a, a                                        ; $7a26: $7f
	ld   a, a                                        ; $7a27: $7f
	rst  $38                                         ; $7a28: $ff
	add  b                                           ; $7a29: $80
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	rst  $38                                         ; $7a2c: $ff
	add  b                                           ; $7a2d: $80
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	ld   bc, $0001                                   ; $7a34: $01 $01 $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	add  b                                           ; $7a48: $80
	add  b                                           ; $7a49: $80
	add  b                                           ; $7a4a: $80
	add  b                                           ; $7a4b: $80
	add  b                                           ; $7a4c: $80
	add  b                                           ; $7a4d: $80
	add  b                                           ; $7a4e: $80
	add  b                                           ; $7a4f: $80
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	ret  nz                                          ; $7a52: $c0

	ret  nz                                          ; $7a53: $c0

	ret  nz                                          ; $7a54: $c0

	ld   b, b                                        ; $7a55: $40
	ret  nz                                          ; $7a56: $c0

	ret  nz                                          ; $7a57: $c0

	inc  a                                           ; $7a58: $3c
	inc  a                                           ; $7a59: $3c
	inc  h                                           ; $7a5a: $24
	inc  a                                           ; $7a5b: $3c
	add  hl, de                                      ; $7a5c: $19
	add  hl, de                                      ; $7a5d: $19
	ld   bc, $0001                                   ; $7a5e: $01 $01 $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
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
	jp   nz, $e5c2                                   ; $7a7a: $c2 $c2 $e5

	daa                                              ; $7a7d: $27
	rst  $20                                         ; $7a7e: $e7
	rst  $20                                         ; $7a7f: $e7
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	rlca                                             ; $7a84: $07
	rlca                                             ; $7a85: $07
	rra                                              ; $7a86: $1f
	rra                                              ; $7a87: $1f
	ccf                                              ; $7a88: $3f
	ccf                                              ; $7a89: $3f
	ld   a, a                                        ; $7a8a: $7f
	ld   l, a                                        ; $7a8b: $6f
	ld   a, a                                        ; $7a8c: $7f
	ld   [hl], e                                     ; $7a8d: $73
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	rst  $38                                         ; $7a90: $ff
	rst  $38                                         ; $7a91: $ff
	cp   $ff                                         ; $7a92: $fe $ff
	cp   $ff                                         ; $7a94: $fe $ff
	ld   a, [hl]                                     ; $7a96: $7e
	ld   a, a                                        ; $7a97: $7f
	ld   a, d                                        ; $7a98: $7a
	ld   a, a                                        ; $7a99: $7f
	jr   c, jr_025_7adb                              ; $7a9a: $38 $3f

	inc  e                                           ; $7a9c: $1c
	rra                                              ; $7a9d: $1f
	inc  c                                           ; $7a9e: $0c
	rrca                                             ; $7a9f: $0f
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	db   $fc                                         ; $7aa4: $fc
	db   $fc                                         ; $7aa5: $fc
	ld   hl, sp-$08                                  ; $7aa6: $f8 $f8
	db   $fc                                         ; $7aa8: $fc
	db   $fc                                         ; $7aa9: $fc
	cp   $ee                                         ; $7aaa: $fe $ee
	db   $fc                                         ; $7aac: $fc
	inc  e                                           ; $7aad: $1c
	cp   $fe                                         ; $7aae: $fe $fe
	cp   [hl]                                        ; $7ab0: $be
	cp   $be                                         ; $7ab1: $fe $be
	cp   $f6                                         ; $7ab3: $fe $f6
	cp   $f6                                         ; $7ab5: $fe $f6
	cp   [hl]                                        ; $7ab7: $be
	ld   [hl], h                                     ; $7ab8: $74
	xor  h                                           ; $7ab9: $ac
	ld   [hl], h                                     ; $7aba: $74
	cp   h                                           ; $7abb: $bc
	ld   [$10f8], sp                                 ; $7abc: $08 $f8 $10
	ldh  a, [rP1]                                    ; $7abf: $f0 $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	ld   bc, $0101                                   ; $7ac4: $01 $01 $01
	ld   bc, $0302                                   ; $7ac7: $01 $02 $03
	ld   [bc], a                                     ; $7aca: $02
	inc  bc                                          ; $7acb: $03
	inc  b                                           ; $7acc: $04
	rlca                                             ; $7acd: $07
	inc  b                                           ; $7ace: $04
	rlca                                             ; $7acf: $07
	ld   b, $07                                      ; $7ad0: $06 $07
	rlca                                             ; $7ad2: $07
	rlca                                             ; $7ad3: $07
	rrca                                             ; $7ad4: $0f
	rrca                                             ; $7ad5: $0f
	rra                                              ; $7ad6: $1f
	rla                                              ; $7ad7: $17
	ccf                                              ; $7ad8: $3f
	inc  hl                                          ; $7ad9: $23
	ld   a, a                                        ; $7ada: $7f

jr_025_7adb:
	ld   a, a                                        ; $7adb: $7f
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	ld   a, a                                        ; $7ae0: $7f
	ld   a, a                                        ; $7ae1: $7f
	rst  $38                                         ; $7ae2: $ff
	ld   sp, hl                                      ; $7ae3: $f9
	rst  $38                                         ; $7ae4: $ff
	ldh  a, [$7f]                                    ; $7ae5: $f0 $7f
	ldh  a, [$1f]                                    ; $7ae7: $f0 $1f
	ld   hl, sp+$07                                  ; $7ae9: $f8 $07
	db   $fc                                         ; $7aeb: $fc
	inc  bc                                          ; $7aec: $03
	rst  $38                                         ; $7aed: $ff
	ld   [bc], a                                     ; $7aee: $02
	cp   $02                                         ; $7aef: $fe $02
	cp   $ff                                         ; $7af1: $fe $ff
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	rst  $38                                         ; $7af5: $ff
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	rst  $38                                         ; $7af9: $ff
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	ld   b, b                                        ; $7b00: $40
	ret  nz                                          ; $7b01: $c0

	ld   b, b                                        ; $7b02: $40
	ret  nz                                          ; $7b03: $c0

	ret  nz                                          ; $7b04: $c0

	ret  nz                                          ; $7b05: $c0

	ldh  [rAUD4LEN], a                               ; $7b06: $e0 $20
	ldh  [rAUD4LEN], a                               ; $7b08: $e0 $20
	ldh  [rAUD4LEN], a                               ; $7b0a: $e0 $20
	ret  nz                                          ; $7b0c: $c0

	ret  nz                                          ; $7b0d: $c0

	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	add  b                                           ; $7b14: $80
	add  b                                           ; $7b15: $80
	ret  nz                                          ; $7b16: $c0

	ret  nz                                          ; $7b17: $c0

	ret  nz                                          ; $7b18: $c0

	ret  nz                                          ; $7b19: $c0

	add  b                                           ; $7b1a: $80
	add  b                                           ; $7b1b: $80
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	ld   bc, $0201                                   ; $7b28: $01 $01 $02
	inc  bc                                          ; $7b2b: $03
	ld   [bc], a                                     ; $7b2c: $02
	inc  bc                                          ; $7b2d: $03
	inc  b                                           ; $7b2e: $04
	rlca                                             ; $7b2f: $07
	ld   b, $07                                      ; $7b30: $06 $07
	rlca                                             ; $7b32: $07
	rlca                                             ; $7b33: $07
	rrca                                             ; $7b34: $0f
	rrca                                             ; $7b35: $0f
	rra                                              ; $7b36: $1f
	rla                                              ; $7b37: $17
	ccf                                              ; $7b38: $3f
	inc  hl                                          ; $7b39: $23
	ld   a, a                                        ; $7b3a: $7f
	ld   a, a                                        ; $7b3b: $7f
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	ccf                                              ; $7b40: $3f
	ccf                                              ; $7b41: $3f
	ld   a, a                                        ; $7b42: $7f
	ld   a, h                                        ; $7b43: $7c
	rst  $38                                         ; $7b44: $ff
	ld   hl, sp-$41                                  ; $7b45: $f8 $bf
	ld   hl, sp+$0f                                  ; $7b47: $f8 $0f
	db   $fc                                         ; $7b49: $fc
	inc  bc                                          ; $7b4a: $03
	cp   $03                                         ; $7b4b: $fe $03
	rst  $38                                         ; $7b4d: $ff
	ld   [bc], a                                     ; $7b4e: $02
	cp   $02                                         ; $7b4f: $fe $02
	cp   $ff                                         ; $7b51: $fe $ff
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	rst  $38                                         ; $7b55: $ff
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	add  b                                           ; $7b60: $80
	add  b                                           ; $7b61: $80
	add  [hl]                                        ; $7b62: $86
	add  [hl]                                        ; $7b63: $86
	rst  $20                                         ; $7b64: $e7
	ld   h, l                                        ; $7b65: $65
	rst  $38                                         ; $7b66: $ff
	rra                                              ; $7b67: $1f
	ld   a, [$fa0e]                                  ; $7b68: $fa $0e $fa
	ld   c, $fc                                      ; $7b6b: $0e $fc
	db   $fc                                         ; $7b6d: $fc
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	add  b                                           ; $7b74: $80
	add  b                                           ; $7b75: $80
	ret  nz                                          ; $7b76: $c0

	ret  nz                                          ; $7b77: $c0

	ldh  a, [$f0]                                    ; $7b78: $f0 $f0
	add  b                                           ; $7b7a: $80
	add  b                                           ; $7b7b: $80
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	ld   bc, $0201                                   ; $7b88: $01 $01 $02
	inc  bc                                          ; $7b8b: $03
	ld   [bc], a                                     ; $7b8c: $02
	inc  bc                                          ; $7b8d: $03
	inc  b                                           ; $7b8e: $04
	rlca                                             ; $7b8f: $07
	ld   b, $07                                      ; $7b90: $06 $07
	rlca                                             ; $7b92: $07
	rlca                                             ; $7b93: $07
	rrca                                             ; $7b94: $0f
	rrca                                             ; $7b95: $0f
	rra                                              ; $7b96: $1f
	rla                                              ; $7b97: $17
	ccf                                              ; $7b98: $3f
	inc  hl                                          ; $7b99: $23
	ld   a, a                                        ; $7b9a: $7f
	ld   a, a                                        ; $7b9b: $7f
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	ccf                                              ; $7ba2: $3f
	ccf                                              ; $7ba3: $3f
	ld   a, a                                        ; $7ba4: $7f
	ld   a, [hl]                                     ; $7ba5: $7e
	cp   a                                           ; $7ba6: $bf
	db   $fc                                         ; $7ba7: $fc
	rra                                              ; $7ba8: $1f
	db   $fc                                         ; $7ba9: $fc
	rlca                                             ; $7baa: $07
	db   $fc                                         ; $7bab: $fc
	inc  bc                                          ; $7bac: $03
	cp   $03                                         ; $7bad: $fe $03
	rst  $38                                         ; $7baf: $ff
	ld   [bc], a                                     ; $7bb0: $02
	cp   $ff                                         ; $7bb1: $fe $ff
	rst  $38                                         ; $7bb3: $ff
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	rst  $38                                         ; $7bb7: $ff
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	ret  nz                                          ; $7bc2: $c0

	ret  nz                                          ; $7bc3: $c0

	ret  nz                                          ; $7bc4: $c0

	ld   b, b                                        ; $7bc5: $40
	ldh  [rAUD4LEN], a                               ; $7bc6: $e0 $20
	ldh  [rAUD4LEN], a                               ; $7bc8: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $7bca: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $7bcc: $f0 $10
	ld   hl, sp+$08                                  ; $7bce: $f8 $08
	or   $9e                                         ; $7bd0: $f6 $9e
	ld   h, a                                        ; $7bd2: $67
	ld   a, l                                        ; $7bd3: $7d
	sbc  a                                           ; $7bd4: $9f
	sbc  a                                           ; $7bd5: $9f
	ret  nz                                          ; $7bd6: $c0

	ret  nz                                          ; $7bd7: $c0

	ld   hl, sp-$08                                  ; $7bd8: $f8 $f8
	add  b                                           ; $7bda: $80
	add  b                                           ; $7bdb: $80
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	ld   bc, $0201                                   ; $7be8: $01 $01 $02
	inc  bc                                          ; $7beb: $03
	ld   [bc], a                                     ; $7bec: $02
	inc  bc                                          ; $7bed: $03
	inc  b                                           ; $7bee: $04
	rlca                                             ; $7bef: $07
	ld   b, $07                                      ; $7bf0: $06 $07
	rlca                                             ; $7bf2: $07
	rlca                                             ; $7bf3: $07
	rrca                                             ; $7bf4: $0f
	rrca                                             ; $7bf5: $0f
	rra                                              ; $7bf6: $1f
	rla                                              ; $7bf7: $17
	ccf                                              ; $7bf8: $3f
	inc  hl                                          ; $7bf9: $23
	ld   a, a                                        ; $7bfa: $7f
	ld   a, a                                        ; $7bfb: $7f
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	ld   a, a                                        ; $7c02: $7f
	ld   a, a                                        ; $7c03: $7f
	rst  $38                                         ; $7c04: $ff
	db   $fc                                         ; $7c05: $fc
	cp   a                                           ; $7c06: $bf
	ld   hl, sp+$0f                                  ; $7c07: $f8 $0f
	ld   hl, sp+$07                                  ; $7c09: $f8 $07
	db   $fc                                         ; $7c0b: $fc
	inc  bc                                          ; $7c0c: $03
	rst  $38                                         ; $7c0d: $ff
	ld   [bc], a                                     ; $7c0e: $02
	cp   $02                                         ; $7c0f: $fe $02
	cp   $ff                                         ; $7c11: $fe $ff
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	sbc  b                                           ; $7c22: $98
	sbc  b                                           ; $7c23: $98
	and  h                                           ; $7c24: $a4
	cp   h                                           ; $7c25: $bc
	db   $f4                                         ; $7c26: $f4
	ld   a, h                                        ; $7c27: $7c
	ld   hl, sp+$08                                  ; $7c28: $f8 $08
	ld   hl, sp+$08                                  ; $7c2a: $f8 $08
	ldh  a, [$30]                                    ; $7c2c: $f0 $30
	ret  nz                                          ; $7c2e: $c0

	ret  nz                                          ; $7c2f: $c0

	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	add  b                                           ; $7c34: $80
	add  b                                           ; $7c35: $80
	ret  nz                                          ; $7c36: $c0

	ret  nz                                          ; $7c37: $c0

	ldh  a, [$f0]                                    ; $7c38: $f0 $f0
	add  b                                           ; $7c3a: $80
	add  b                                           ; $7c3b: $80
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	ccf                                              ; $7c56: $3f
	ccf                                              ; $7c57: $3f
	ld   a, c                                        ; $7c58: $79
	ld   c, a                                        ; $7c59: $4f
	ld   a, [$fe8e]                                  ; $7c5a: $fa $8e $fe
	cp   $00                                         ; $7c5d: $fe $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	ld   a, h                                        ; $7c76: $7c
	ld   a, h                                        ; $7c77: $7c
	ld   e, [hl]                                     ; $7c78: $5e
	ld   [hl], d                                     ; $7c79: $72
	ld   c, a                                        ; $7c7a: $4f
	ld   a, c                                        ; $7c7b: $79
	ld   a, a                                        ; $7c7c: $7f
	ld   a, a                                        ; $7c7d: $7f
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	rlca                                             ; $7c84: $07
	rlca                                             ; $7c85: $07
	rra                                              ; $7c86: $1f
	rra                                              ; $7c87: $1f
	ccf                                              ; $7c88: $3f
	ccf                                              ; $7c89: $3f
	ccf                                              ; $7c8a: $3f
	cpl                                              ; $7c8b: $2f
	ld   a, a                                        ; $7c8c: $7f
	ld   [hl], c                                     ; $7c8d: $71
	ld   a, a                                        ; $7c8e: $7f
	ld   a, a                                        ; $7c8f: $7f
	ld   a, a                                        ; $7c90: $7f
	ld   a, a                                        ; $7c91: $7f
	ld   a, l                                        ; $7c92: $7d
	ld   a, a                                        ; $7c93: $7f
	ld   a, c                                        ; $7c94: $79
	ld   a, a                                        ; $7c95: $7f
	cpl                                              ; $7c96: $2f
	ld   a, a                                        ; $7c97: $7f
	rrca                                             ; $7c98: $0f
	ld   a, c                                        ; $7c99: $79
	daa                                              ; $7c9a: $27
	dec  sp                                          ; $7c9b: $3b
	inc  de                                          ; $7c9c: $13
	rra                                              ; $7c9d: $1f
	jr   jr_025_7cbf                                 ; $7c9e: $18 $1f

	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	ld   a, b                                        ; $7ca4: $78
	ld   a, b                                        ; $7ca5: $78
	ldh  a, [$f0]                                    ; $7ca6: $f0 $f0
	ld   hl, sp-$08                                  ; $7ca8: $f8 $f8
	db   $fc                                         ; $7caa: $fc
	call z, $fcfc                                    ; $7cab: $cc $fc $fc
	cp   $fe                                         ; $7cae: $fe $fe
	cp   [hl]                                        ; $7cb0: $be
	cp   $be                                         ; $7cb1: $fe $be
	cp   $b6                                         ; $7cb3: $fe $b6
	cp   $be                                         ; $7cb5: $fe $be
	cp   $3c                                         ; $7cb7: $fe $3c
	db   $ec                                         ; $7cb9: $ec
	inc  [hl]                                        ; $7cba: $34
	db   $ec                                         ; $7cbb: $ec
	jr   z, @-$06                                    ; $7cbc: $28 $f8

	db   $10                                         ; $7cbe: $10

jr_025_7cbf:
	ldh  a, [$3f]                                    ; $7cbf: $f0 $3f
	daa                                              ; $7cc1: $27
	ccf                                              ; $7cc2: $3f
	inc  hl                                          ; $7cc3: $23
	ccf                                              ; $7cc4: $3f
	inc  hl                                          ; $7cc5: $23
	ccf                                              ; $7cc6: $3f
	inc  hl                                          ; $7cc7: $23
	rra                                              ; $7cc8: $1f
	ld   de, $111f                                   ; $7cc9: $11 $1f $11
	ld   a, a                                        ; $7ccc: $7f
	ld   [hl], c                                     ; $7ccd: $71
	rst  $38                                         ; $7cce: $ff
	ldh  a, [rIE]                                    ; $7ccf: $f0 $ff
	ld   hl, sp+$7f                                  ; $7cd1: $f8 $7f
	ld   a, b                                        ; $7cd3: $78
	ccf                                              ; $7cd4: $3f
	ccf                                              ; $7cd5: $3f
	db   $fc                                         ; $7cd6: $fc
	rst  $38                                         ; $7cd7: $ff
	rlca                                             ; $7cd8: $07
	rlca                                             ; $7cd9: $07
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	ld   hl, sp-$18                                  ; $7ce0: $f8 $e8
	db   $fc                                         ; $7ce2: $fc
	ld   h, h                                        ; $7ce3: $64
	db   $fc                                         ; $7ce4: $fc
	ld   h, h                                        ; $7ce5: $64
	cp   $62                                         ; $7ce6: $fe $62
	cp   $62                                         ; $7ce8: $fe $62
	sbc  a                                           ; $7cea: $9f
	pop  af                                          ; $7ceb: $f1
	sbc  a                                           ; $7cec: $9f
	pop  af                                          ; $7ced: $f1
	sbc  a                                           ; $7cee: $9f
	ei                                               ; $7cef: $fb
	db   $fc                                         ; $7cf0: $fc
	rst  $38                                         ; $7cf1: $ff
	db   $fc                                         ; $7cf2: $fc
	rst  $38                                         ; $7cf3: $ff
	rst  $38                                         ; $7cf4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cf5: $cf
	ld   a, a                                        ; $7cf6: $7f
	cp   $c3                                         ; $7cf7: $fe $c3
	jp   $0000                                      ; $7cf9: $c3 $00 $00


	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	add  b                                           ; $7d0e: $80
	add  b                                           ; $7d0f: $80
	add  b                                           ; $7d10: $80
	add  b                                           ; $7d11: $80
	add  b                                           ; $7d12: $80
	add  b                                           ; $7d13: $80
	add  b                                           ; $7d14: $80
	add  b                                           ; $7d15: $80
	add  b                                           ; $7d16: $80
	add  b                                           ; $7d17: $80
	add  b                                           ; $7d18: $80
	add  b                                           ; $7d19: $80
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	ccf                                              ; $7d20: $3f
	daa                                              ; $7d21: $27
	ccf                                              ; $7d22: $3f
	inc  hl                                          ; $7d23: $23
	ccf                                              ; $7d24: $3f
	inc  hl                                          ; $7d25: $23
	ccf                                              ; $7d26: $3f
	inc  hl                                          ; $7d27: $23
	rra                                              ; $7d28: $1f
	ld   de, $111f                                   ; $7d29: $11 $1f $11
	ld   a, a                                        ; $7d2c: $7f
	ld   [hl], c                                     ; $7d2d: $71
	rst  $38                                         ; $7d2e: $ff
	ldh  a, [rIE]                                    ; $7d2f: $f0 $ff
	ld   hl, sp+$7f                                  ; $7d31: $f8 $7f
	ld   a, b                                        ; $7d33: $78
	ccf                                              ; $7d34: $3f
	ccf                                              ; $7d35: $3f
	db   $fc                                         ; $7d36: $fc
	rst  $38                                         ; $7d37: $ff
	rlca                                             ; $7d38: $07
	rlca                                             ; $7d39: $07
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	ld   hl, sp-$18                                  ; $7d40: $f8 $e8
	db   $fc                                         ; $7d42: $fc
	ld   h, h                                        ; $7d43: $64
	db   $fc                                         ; $7d44: $fc
	ld   h, h                                        ; $7d45: $64
	db   $fc                                         ; $7d46: $fc
	ld   h, h                                        ; $7d47: $64
	db   $fc                                         ; $7d48: $fc
	ld   h, h                                        ; $7d49: $64
	db   $fc                                         ; $7d4a: $fc
	call nz, $c7ff                                   ; $7d4b: $c4 $ff $c7
	rst  $38                                         ; $7d4e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d4f: $cf
	rst  $38                                         ; $7d50: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d51: $cf
	rst  $38                                         ; $7d52: $ff
	rst  $38                                         ; $7d53: $ff
	cp   $fe                                         ; $7d54: $fe $fe
	ld   c, a                                        ; $7d56: $4f
	rst  $38                                         ; $7d57: $ff
	ld   hl, sp-$08                                  ; $7d58: $f8 $f8
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	add  b                                           ; $7d6e: $80
	add  b                                           ; $7d6f: $80
	add  b                                           ; $7d70: $80
	add  b                                           ; $7d71: $80
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	add  b                                           ; $7d76: $80
	add  b                                           ; $7d77: $80
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	rlca                                             ; $7d82: $07
	rlca                                             ; $7d83: $07
	rra                                              ; $7d84: $1f
	rra                                              ; $7d85: $1f
	ccf                                              ; $7d86: $3f
	ccf                                              ; $7d87: $3f
	ccf                                              ; $7d88: $3f
	cpl                                              ; $7d89: $2f
	ld   a, a                                        ; $7d8a: $7f
	ld   [hl], c                                     ; $7d8b: $71
	ld   a, a                                        ; $7d8c: $7f
	ld   a, a                                        ; $7d8d: $7f
	ld   a, a                                        ; $7d8e: $7f
	ld   a, a                                        ; $7d8f: $7f
	ld   a, l                                        ; $7d90: $7d
	ld   a, a                                        ; $7d91: $7f
	ld   a, c                                        ; $7d92: $79
	ld   a, a                                        ; $7d93: $7f
	add  hl, hl                                      ; $7d94: $29
	ld   a, a                                        ; $7d95: $7f
	ld   c, $7f                                      ; $7d96: $0e $7f
	ld   hl, $103f                                   ; $7d98: $21 $3f $10
	rra                                              ; $7d9b: $1f
	jr   jr_025_7dbd                                 ; $7d9c: $18 $1f

	rlca                                             ; $7d9e: $07
	rlca                                             ; $7d9f: $07
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	ld   a, b                                        ; $7da2: $78
	ld   a, b                                        ; $7da3: $78
	ldh  a, [$f0]                                    ; $7da4: $f0 $f0
	ld   hl, sp-$08                                  ; $7da6: $f8 $f8
	db   $fc                                         ; $7da8: $fc
	call z, $fcfc                                    ; $7da9: $cc $fc $fc
	cp   $fe                                         ; $7dac: $fe $fe
	cp   [hl]                                        ; $7dae: $be
	cp   $be                                         ; $7daf: $fe $be
	cp   $b6                                         ; $7db1: $fe $b6
	cp   $b6                                         ; $7db3: $fe $b6
	cp   $14                                         ; $7db5: $fe $14
	db   $fc                                         ; $7db7: $fc
	inc  h                                           ; $7db8: $24
	db   $fc                                         ; $7db9: $fc
	ld   [$18f8], sp                                 ; $7dba: $08 $f8 $18

jr_025_7dbd:
	ld   hl, sp-$20                                  ; $7dbd: $f8 $e0
	ldh  [rP1], a                                    ; $7dbf: $e0 $00
	nop                                              ; $7dc1: $00
	rlca                                             ; $7dc2: $07
	rlca                                             ; $7dc3: $07
	rra                                              ; $7dc4: $1f
	rra                                              ; $7dc5: $1f
	ccf                                              ; $7dc6: $3f
	ccf                                              ; $7dc7: $3f
	ccf                                              ; $7dc8: $3f
	cpl                                              ; $7dc9: $2f
	ld   a, a                                        ; $7dca: $7f
	ld   [hl], b                                     ; $7dcb: $70
	ld   a, a                                        ; $7dcc: $7f
	ld   a, a                                        ; $7dcd: $7f
	ld   a, l                                        ; $7dce: $7d
	ld   a, a                                        ; $7dcf: $7f
	ld   a, a                                        ; $7dd0: $7f
	ld   a, a                                        ; $7dd1: $7f
	ld   a, a                                        ; $7dd2: $7f
	ld   a, b                                        ; $7dd3: $78
	cpl                                              ; $7dd4: $2f
	ld   a, c                                        ; $7dd5: $79
	rlca                                             ; $7dd6: $07
	ld   a, e                                        ; $7dd7: $7b
	scf                                              ; $7dd8: $37
	dec  sp                                          ; $7dd9: $3b
	db   $10                                         ; $7dda: $10
	rra                                              ; $7ddb: $1f
	jr   jr_025_7dfd                                 ; $7ddc: $18 $1f

	ccf                                              ; $7dde: $3f
	daa                                              ; $7ddf: $27
	jr   c, jr_025_7e1a                              ; $7de0: $38 $38

	ld   [hl], b                                     ; $7de2: $70
	ld   [hl], b                                     ; $7de3: $70
	ld   hl, sp-$08                                  ; $7de4: $f8 $f8
	db   $fc                                         ; $7de6: $fc
	db   $fc                                         ; $7de7: $fc
	db   $fc                                         ; $7de8: $fc
	db   $f4                                         ; $7de9: $f4
	cp   $ee                                         ; $7dea: $fe $ee
	cp   $fe                                         ; $7dec: $fe $fe
	cp   [hl]                                        ; $7dee: $be
	cp   $b6                                         ; $7def: $fe $b6
	cp   $be                                         ; $7df1: $fe $be
	adc  $3e                                         ; $7df3: $ce $3e
	xor  $34                                         ; $7df5: $ee $34
	db   $ec                                         ; $7df7: $ec
	inc  [hl]                                        ; $7df8: $34
	db   $ec                                         ; $7df9: $ec
	ld   [$18f8], sp                                 ; $7dfa: $08 $f8 $18

jr_025_7dfd:
	ld   hl, sp-$08                                  ; $7dfd: $f8 $f8
	add  sp, $7f                                     ; $7dff: $e8 $7f
	ld   e, l                                        ; $7e01: $5d
	rst  $20                                         ; $7e02: $e7
	cp   a                                           ; $7e03: $bf
	rst  $20                                         ; $7e04: $e7
	cp   a                                           ; $7e05: $bf
	rst  $38                                         ; $7e06: $ff
	sbc  a                                           ; $7e07: $9f
	ld   a, c                                        ; $7e08: $79
	ld   l, a                                        ; $7e09: $6f
	ld   de, $711f                                   ; $7e0a: $11 $1f $71
	ld   a, a                                        ; $7e0d: $7f
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	rst  $38                                         ; $7e11: $ff
	ld   a, a                                        ; $7e12: $7f
	ld   a, a                                        ; $7e13: $7f
	ccf                                              ; $7e14: $3f
	ccf                                              ; $7e15: $3f
	rst  $38                                         ; $7e16: $ff
	rst  $38                                         ; $7e17: $ff
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00

jr_025_7e1a:
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	rst  $38                                         ; $7e20: $ff
	rst  $10                                         ; $7e21: $d7
	cp   $73                                         ; $7e22: $fe $73
	cp   $73                                         ; $7e24: $fe $73
	rst  $38                                         ; $7e26: $ff
	ld   [hl], c                                     ; $7e27: $71
	adc  $7e                                         ; $7e28: $ce $7e
	ret  z                                           ; $7e2a: $c8

	ld   hl, sp-$31                                  ; $7e2b: $f8 $cf
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	rst  $38                                         ; $7e31: $ff
	rst  $38                                         ; $7e32: $ff
	rst  $38                                         ; $7e33: $ff
	cp   $9e                                         ; $7e34: $fe $9e
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	add  b                                           ; $7e42: $80
	add  b                                           ; $7e43: $80
	add  b                                           ; $7e44: $80
	add  b                                           ; $7e45: $80
	add  b                                           ; $7e46: $80
	add  b                                           ; $7e47: $80
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	add  b                                           ; $7e4e: $80
	add  b                                           ; $7e4f: $80
	add  b                                           ; $7e50: $80
	add  b                                           ; $7e51: $80
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	add  b                                           ; $7e56: $80
	add  b                                           ; $7e57: $80
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	di                                               ; $7e78: $f3
	sbc  [hl]                                        ; $7e79: $9e
	ld   [hl], a                                     ; $7e7a: $77
	ld   e, h                                        ; $7e7b: $5c
	ccf                                              ; $7e7c: $3f
	ccf                                              ; $7e7d: $3f
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	db   $fc                                         ; $7e96: $fc
	db   $fc                                         ; $7e97: $fc
	sbc  $72                                         ; $7e98: $de $72
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9a: $cf
	ld   a, c                                        ; $7e9b: $79
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00

Call_025_7f33:
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00

Call_025_7f48:
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
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
