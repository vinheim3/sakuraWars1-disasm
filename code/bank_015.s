; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

	ld   a, [hl]                                     ; $4000: $7e
	inc  bc                                          ; $4001: $03
	inc  c                                           ; $4002: $0c
	ld   b, $00                                      ; $4003: $06 $00

Jump_015_4005:
	rrca                                             ; $4005: $0f
	ld   [bc], a                                     ; $4006: $02
	ld   a, [de]                                     ; $4007: $1a
	ld   a, [bc]                                     ; $4008: $0a
	dec  l                                           ; $4009: $2d
	add  hl, bc                                      ; $400a: $09
	ld   h, c                                        ; $400b: $61
	dec  h                                           ; $400c: $25
	db   $e4                                         ; $400d: $e4
	ld   l, h                                        ; $400e: $6c
	ld   c, h                                        ; $400f: $4c
	add  b                                           ; $4010: $80
	ld   d, a                                        ; $4011: $57
	dec  de                                          ; $4012: $1b
	ld   c, d                                        ; $4013: $4a
	adc  c                                           ; $4014: $89
	jr   c, jr_015_4043                              ; $4015: $38 $2c

	db   $20, $b4                                    ; $4017: $20 $b4
	ld   h, b                                        ; $4019: $60
	ld   l, h                                        ; $401a: $6c

jr_015_401b:
	ld   b, b                                        ; $401b: $40
	ld   b, h                                        ; $401c: $44
	ld   b, b                                        ; $401d: $40
	call nz, $aa20                                   ; $401e: $c4 $20 $aa
	ld   d, b                                        ; $4021: $50
	ld   d, l                                        ; $4022: $55
	ld   a, b                                        ; $4023: $78
	or   a                                           ; $4024: $b7

jr_015_4025:
	nop                                              ; $4025: $00
	ld   a, b                                        ; $4026: $78
	jr   nc, jr_015_4025                             ; $4027: $30 $fc

	ld   b, b                                        ; $4029: $40
	ld   [bc], a                                     ; $402a: $02
	jr   c, @+$1d                                    ; $402b: $38 $1b

	ld   e, d                                        ; $402d: $5a
	ld   b, [hl]                                     ; $402e: $46
	add  b                                           ; $402f: $80
	ldh  [c], a                                      ; $4030: $e2
	add  b                                           ; $4031: $80
	call nc, Call_015_660b                           ; $4032: $d4 $0b $66
	push af                                          ; $4035: $f5
	inc  h                                           ; $4036: $24
	ld   [hl], c                                     ; $4037: $71
	ld   a, [de]                                     ; $4038: $1a
	jp   c, $fd1d                                    ; $4039: $da $1d $fd

	dec  c                                           ; $403c: $0d
	adc  l                                           ; $403d: $8d
	dec  c                                           ; $403e: $0d
	adc  l                                           ; $403f: $8d
	add  c                                           ; $4040: $81
	ld   a, [bc]                                     ; $4041: $0a
	db   $10                                         ; $4042: $10

jr_015_4043:
	db   $eb                                         ; $4043: $eb
	inc  d                                           ; $4044: $14
	and  $00                                         ; $4045: $e6 $00
	ld   e, $08                                      ; $4047: $1e $08
	dec  hl                                          ; $4049: $2b
	ld   a, [bc]                                     ; $404a: $0a
	ld   e, c                                        ; $404b: $59
	inc  e                                           ; $404c: $1c
	jp   c, Jump_015_615b                            ; $404d: $da $5b $61

	ld   h, l                                        ; $4050: $65
	ld   h, h                                        ; $4051: $64
	ld   l, h                                        ; $4052: $6c
	adc  h                                           ; $4053: $8c
	add  b                                           ; $4054: $80
	dec  e                                           ; $4055: $1d
	dec  hl                                          ; $4056: $2b
	rla                                              ; $4057: $17
	dec  d                                           ; $4058: $15

jr_015_4059:
	jr   z, jr_015_4098                              ; $4059: $28 $3d

	nop                                              ; $405b: $00
	inc  d                                           ; $405c: $14
	jr   nc, jr_015_401b                             ; $405d: $30 $bc

	ld   h, b                                        ; $405f: $60
	ld   h, h                                        ; $4060: $64
	ld   h, b                                        ; $4061: $60
	ld   h, h                                        ; $4062: $64
	and  b                                           ; $4063: $a0
	xor  b                                           ; $4064: $a8

jr_015_4065:
	and  b                                           ; $4065: $a0
	ld   b, b                                        ; $4066: $40
	nop                                              ; $4067: $00
	ld   a, h                                        ; $4068: $7c
	jr   jr_015_4065                                 ; $4069: $18 $fa

	ld   a, b                                        ; $406b: $78
	ld   a, e                                        ; $406c: $7b
	ld   b, d                                        ; $406d: $42
	ld   [bc], a                                     ; $406e: $02
	ld   a, [hl-]                                    ; $406f: $3a
	ld   d, $56                                      ; $4070: $16 $56
	ld   c, [hl]                                     ; $4072: $4e
	ld   [$d4e1], a                                  ; $4073: $ea $e1 $d4
	ret  nc                                          ; $4076: $d0

	add  sp, -$07                                    ; $4077: $e8 $f9
	ld   h, d                                        ; $4079: $62
	jp   nc, $ba1a                                   ; $407a: $d2 $1a $ba

	dec  e                                           ; $407d: $1d
	db   $dd                                         ; $407e: $dd
	dec  e                                           ; $407f: $1d

Jump_015_4080:
	cp   l                                           ; $4080: $bd
	dec  c                                           ; $4081: $0d
	adc  l                                           ; $4082: $8d
	add  c                                           ; $4083: $81
	ld   a, [bc]                                     ; $4084: $0a
	ld   c, $15                                      ; $4085: $0e $15
	nop                                              ; $4087: $00
	ld   c, $00                                      ; $4088: $0e $00
	rra                                              ; $408a: $1f
	ld   a, [bc]                                     ; $408b: $0a
	jr   z, jr_015_4096                              ; $408c: $28 $08

	ld   l, c                                        ; $408e: $69
	dec  l                                           ; $408f: $2d
	pop  hl                                          ; $4090: $e1
	ld   h, c                                        ; $4091: $61
	ld   h, b                                        ; $4092: $60
	ld   l, h                                        ; $4093: $6c

jr_015_4094:
	ld   c, h                                        ; $4094: $4c
	add  b                                           ; $4095: $80

jr_015_4096:
	ld   d, a                                        ; $4096: $57
	dec  de                                          ; $4097: $1b

jr_015_4098:
	ld   c, a                                        ; $4098: $4f
	adc  l                                           ; $4099: $8d

jr_015_409a:
	jr   jr_015_40a5                                 ; $409a: $18 $09

	jr   z, jr_015_40da                              ; $409c: $28 $3c

	jr   nc, jr_015_4059                             ; $409e: $30 $b9

	ld   h, b                                        ; $40a0: $60
	ld   l, l                                        ; $40a1: $6d
	ld   h, b                                        ; $40a2: $60
	ld   l, h                                        ; $40a3: $6c
	and  b                                           ; $40a4: $a0

jr_015_40a5:
	xor  d                                           ; $40a5: $aa

jr_015_40a6:
	ld   d, b                                        ; $40a6: $50
	xor  d                                           ; $40a7: $aa
	nop                                              ; $40a8: $00
	jr   c, jr_015_40ab                              ; $40a9: $38 $00

jr_015_40ab:
	ld   a, h                                        ; $40ab: $7c
	jr   c, jr_015_40a6                              ; $40ac: $38 $f8

	ld   b, b                                        ; $40ae: $40
	ld   b, d                                        ; $40af: $42
	ld   a, b                                        ; $40b0: $78
	dec  de                                          ; $40b1: $1b
	ld   a, [de]                                     ; $40b2: $1a
	ld   b, $80                                      ; $40b3: $06 $80
	ldh  [c], a                                      ; $40b5: $e2
	add  b                                           ; $40b6: $80
	sub  h                                           ; $40b7: $94
	rrca                                             ; $40b8: $0f
	and  $f4                                         ; $40b9: $e6 $f4
	ld   h, h                                        ; $40bb: $64
	ldh  a, [$3a]                                    ; $40bc: $f0 $3a
	ld   a, d                                        ; $40be: $7a
	dec  de                                          ; $40bf: $1b
	dec  sp                                          ; $40c0: $3b
	dec  c                                           ; $40c1: $0d
	db   $ed                                         ; $40c2: $ed
	dec  c                                           ; $40c3: $0d
	db   $fd                                         ; $40c4: $fd
	inc  b                                           ; $40c5: $04
	inc  d                                           ; $40c6: $14
	inc  b                                           ; $40c7: $04
	dec  de                                          ; $40c8: $1b
	add  c                                           ; $40c9: $81
	nop                                              ; $40ca: $00
	ld   b, $01                                      ; $40cb: $06 $01
	nop                                              ; $40cd: $00
	ld   b, $00                                      ; $40ce: $06 $00
	ld   c, $06                                      ; $40d0: $0e $06
	inc  b                                           ; $40d2: $04
	add  b                                           ; $40d3: $80
	dec  b                                           ; $40d4: $05
	add  b                                           ; $40d5: $80
	inc  b                                           ; $40d6: $04
	rlca                                             ; $40d7: $07
	dec  b                                           ; $40d8: $05
	ld   c, b                                        ; $40d9: $48

jr_015_40da:
	ld   [bc], a                                     ; $40da: $02
	dec  hl                                          ; $40db: $2b
	rlca                                             ; $40dc: $07
	ld   d, a                                        ; $40dd: $57
	ld   b, $2e                                      ; $40de: $06 $2e
	add  b                                           ; $40e0: $80
	nop                                              ; $40e1: $00
	ld   de, $0a02                                   ; $40e2: $11 $02 $0a
	nop                                              ; $40e5: $00
	inc  d                                           ; $40e6: $14
	ld   bc, $0103                                   ; $40e7: $01 $03 $01
	ld   a, e                                        ; $40ea: $7b
	nop                                              ; $40eb: $00
	rst  $38                                         ; $40ec: $ff
	ld   [hl], e                                     ; $40ed: $73
	rst  $20                                         ; $40ee: $e7
	and  h                                           ; $40ef: $a4
	ld   d, b                                        ; $40f0: $50
	inc  de                                          ; $40f1: $13
	ld   bc, $c4c5                                   ; $40f2: $01 $c5 $c4
	add  b                                           ; $40f5: $80
	ld   e, [hl]                                     ; $40f6: $5e
	add  b                                           ; $40f7: $80
	db   $fd                                         ; $40f8: $fd
	inc  de                                          ; $40f9: $13

jr_015_40fa:
	and  [hl]                                        ; $40fa: $a6
	sbc  a                                           ; $40fb: $9f
	add  d                                           ; $40fc: $82
	rst  ToBoot                                         ; $40fd: $c7
	ld   bc, $004d                                   ; $40fe: $01 $4d $00
	adc  $00                                         ; $4101: $ce $00
	ld   c, b                                        ; $4103: $48
	nop                                              ; $4104: $00
	ld   c, b                                        ; $4105: $48
	nop                                              ; $4106: $00
	or   d                                           ; $4107: $b2
	nop                                              ; $4108: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4109: $cf
	nop                                              ; $410a: $00
	db   $fc                                         ; $410b: $fc

jr_015_410c:
	nop                                              ; $410c: $00
	ret  nz                                          ; $410d: $c0

	add  b                                           ; $410e: $80
	add  b                                           ; $410f: $80
	dec  b                                           ; $4110: $05
	nop                                              ; $4111: $00
	jr   nz, jr_015_4094                             ; $4112: $20 $80

	or   b                                           ; $4114: $b0
	and  b                                           ; $4115: $a0
	ld   h, b                                        ; $4116: $60
	add  b                                           ; $4117: $80
	jr   nz, jr_015_409a                             ; $4118: $20 $80

	ld   b, b                                        ; $411a: $40
	rlca                                             ; $411b: $07
	ld   h, b                                        ; $411c: $60
	ld   b, [hl]                                     ; $411d: $46
	ld   b, b                                        ; $411e: $40
	ld   a, [bc]                                     ; $411f: $0a
	sub  b                                           ; $4120: $90
	sub  h                                           ; $4121: $94

jr_015_4122:
	ret  nz                                          ; $4122: $c0

	ldh  [$81], a                                    ; $4123: $e0 $81
	adc  b                                           ; $4125: $88
	ld   [de], a                                     ; $4126: $12
	and  b                                           ; $4127: $a0
	add  b                                           ; $4128: $80
	ldh  [rP1], a                                    ; $4129: $e0 $00
	add  b                                           ; $412b: $80
	nop                                              ; $412c: $00
	inc  e                                           ; $412d: $1c
	nop                                              ; $412e: $00
	ld   e, $08                                      ; $412f: $1e $08
	add  hl, sp                                      ; $4131: $39
	jr   jr_015_4153                                 ; $4132: $18 $1f

	dec  de                                          ; $4134: $1b
	ld   h, e                                        ; $4135: $63
	inc  hl                                          ; $4136: $23
	jr   nz, jr_015_4165                             ; $4137: $20 $2c

	call z, Call_015_5d80                            ; $4139: $cc $80 $5d
	add  b                                           ; $413c: $80
	ld   d, a                                        ; $413d: $57
	ld   bc, $8b4c                                   ; $413e: $01 $4c $8b
	add  b                                           ; $4141: $80
	db   $10                                         ; $4142: $10
	dec  hl                                          ; $4143: $2b
	jr   nc, jr_015_40fa                             ; $4144: $30 $b4

	ld   [hl], b                                     ; $4146: $70
	ld   a, h                                        ; $4147: $7c
	ld   h, b                                        ; $4148: $60
	ld   h, h                                        ; $4149: $64
	ld   b, b                                        ; $414a: $40
	call nz, $2b20                                   ; $414b: $c4 $20 $2b
	jr   nz, jr_015_417b                             ; $414e: $20 $2b

	nop                                              ; $4150: $00
	ld   hl, sp+$70                                  ; $4151: $f8 $70

jr_015_4153:
	ld   a, h                                        ; $4153: $7c
	ld   b, b                                        ; $4154: $40
	ld   b, d                                        ; $4155: $42
	ld   a, b                                        ; $4156: $78
	scf                                              ; $4157: $37
	ld   [hl], $16                                   ; $4158: $36 $16
	jp   nc, $ecca                                   ; $415a: $d2 $ca $ec

	and  $94                                         ; $415d: $e6 $94
	or   b                                           ; $415f: $b0
	jp   nz, $34a3                                   ; $4160: $c2 $a3 $34

	push af                                          ; $4163: $f5
	inc  [hl]                                        ; $4164: $34

jr_015_4165:
	ld   [hl], h                                     ; $4165: $74
	ld   a, [de]                                     ; $4166: $1a
	ld   e, d                                        ; $4167: $5a

jr_015_4168:
	dec  e                                           ; $4168: $1d
	db   $fd                                         ; $4169: $fd
	inc  c                                           ; $416a: $0c
	adc  h                                           ; $416b: $8c
	ld   a, [bc]                                     ; $416c: $0a
	dec  hl                                          ; $416d: $2b
	jr   jr_015_4196                                 ; $416e: $18 $26

	sbc  a                                           ; $4170: $9f
	nop                                              ; $4171: $00
	add  d                                           ; $4172: $82
	inc  b                                           ; $4173: $04
	adc  c                                           ; $4174: $89
	nop                                              ; $4175: $00
	dec  bc                                          ; $4176: $0b
	inc  bc                                          ; $4177: $03
	inc  de                                          ; $4178: $13
	rla                                              ; $4179: $17
	rlca                                             ; $417a: $07

jr_015_417b:
	inc  bc                                          ; $417b: $03
	rrca                                             ; $417c: $0f
	dec  bc                                          ; $417d: $0b
	rrca                                             ; $417e: $0f
	dec  bc                                          ; $417f: $0b
	rlca                                             ; $4180: $07
	dec  bc                                          ; $4181: $0b
	rrca                                             ; $4182: $0f
	add  b                                           ; $4183: $80
	dec  b                                           ; $4184: $05
	add  e                                           ; $4185: $83
	nop                                              ; $4186: $00
	add  b                                           ; $4187: $80
	jr   c, jr_015_410c                              ; $4188: $38 $82

	nop                                              ; $418a: $00
	add  b                                           ; $418b: $80
	inc  b                                           ; $418c: $04
	add  b                                           ; $418d: $80
	ld   [bc], a                                     ; $418e: $02
	add  b                                           ; $418f: $80
	nop                                              ; $4190: $00
	ld   [bc], a                                     ; $4191: $02
	db   $10                                         ; $4192: $10
	sub  b                                           ; $4193: $90
	add  b                                           ; $4194: $80
	add  b                                           ; $4195: $80

jr_015_4196:
	ret  nz                                          ; $4196: $c0

	ld   [bc], a                                     ; $4197: $02
	nop                                              ; $4198: $00
	ldh  [hScriptOpcodeParams], a                                    ; $4199: $e0 $a0
	add  b                                           ; $419b: $80
	jr   nz, jr_015_419f                             ; $419c: $20 $01

	add  b                                           ; $419e: $80

jr_015_419f:
	jr   nz, jr_015_4122                             ; $419f: $20 $81

	ldh  [$81], a                                    ; $41a1: $e0 $81
	nop                                              ; $41a3: $00
	add  d                                           ; $41a4: $82
	inc  b                                           ; $41a5: $04
	add  b                                           ; $41a6: $80
	ld   bc, $0089                                   ; $41a7: $01 $89 $00
	dec  bc                                          ; $41aa: $0b
	ld   [bc], a                                     ; $41ab: $02
	ld   [de], a                                     ; $41ac: $12
	rla                                              ; $41ad: $17
	rlca                                             ; $41ae: $07
	inc  bc                                          ; $41af: $03
	rrca                                             ; $41b0: $0f
	dec  bc                                          ; $41b1: $0b
	rrca                                             ; $41b2: $0f
	dec  bc                                          ; $41b3: $0b
	rlca                                             ; $41b4: $07
	dec  bc                                          ; $41b5: $0b
	rrca                                             ; $41b6: $0f
	add  b                                           ; $41b7: $80
	rlca                                             ; $41b8: $07
	add  e                                           ; $41b9: $83
	nop                                              ; $41ba: $00
	add  b                                           ; $41bb: $80
	jr   c, @-$7c                                    ; $41bc: $38 $82

	nop                                              ; $41be: $00
	add  b                                           ; $41bf: $80
	inc  b                                           ; $41c0: $04
	add  d                                           ; $41c1: $82
	nop                                              ; $41c2: $00
	add  b                                           ; $41c3: $80
	db   $10                                         ; $41c4: $10
	dec  b                                           ; $41c5: $05
	jr   nz, jr_015_4168                             ; $41c6: $20 $a0

	add  b                                           ; $41c8: $80
	nop                                              ; $41c9: $00
	ret  nz                                          ; $41ca: $c0

	add  b                                           ; $41cb: $80
	add  b                                           ; $41cc: $80
	jr   nz, jr_015_41d0                             ; $41cd: $20 $01

	add  b                                           ; $41cf: $80

jr_015_41d0:
	jr   nz, jr_015_4153                             ; $41d0: $20 $81

	ldh  [$81], a                                    ; $41d2: $e0 $81
	nop                                              ; $41d4: $00
	add  d                                           ; $41d5: $82
	inc  b                                           ; $41d6: $04
	adc  c                                           ; $41d7: $89
	nop                                              ; $41d8: $00

jr_015_41d9:
	inc  bc                                          ; $41d9: $03
	ld   [bc], a                                     ; $41da: $02
	ld   [de], a                                     ; $41db: $12
	inc  de                                          ; $41dc: $13
	inc  bc                                          ; $41dd: $03
	add  b                                           ; $41de: $80
	rlca                                             ; $41df: $07
	add  b                                           ; $41e0: $80

jr_015_41e1:
	ld   c, $80                                      ; $41e1: $0e $80
	inc  bc                                          ; $41e3: $03
	add  b                                           ; $41e4: $80
	rrca                                             ; $41e5: $0f
	add  b                                           ; $41e6: $80
	dec  b                                           ; $41e7: $05
	add  e                                           ; $41e8: $83
	nop                                              ; $41e9: $00
	add  b                                           ; $41ea: $80
	jr   c, @-$7c                                    ; $41eb: $38 $82

	nop                                              ; $41ed: $00
	add  b                                           ; $41ee: $80
	inc  b                                           ; $41ef: $04
	add  b                                           ; $41f0: $80
	ld   [bc], a                                     ; $41f1: $02
	add  b                                           ; $41f2: $80
	nop                                              ; $41f3: $00
	add  b                                           ; $41f4: $80
	stop                                             ; $41f5: $10 $00
	nop                                              ; $41f7: $00
	add  b                                           ; $41f8: $80
	add  b                                           ; $41f9: $80
	add  b                                           ; $41fa: $80
	ret  nz                                          ; $41fb: $c0

	add  b                                           ; $41fc: $80
	ldh  [$80], a                                    ; $41fd: $e0 $80
	nop                                              ; $41ff: $00
	add  b                                           ; $4200: $80
	ldh  a, [$80]                                    ; $4201: $f0 $80
	ldh  [$8d], a                                    ; $4203: $e0 $8d
	nop                                              ; $4205: $00
	add  b                                           ; $4206: $80
	ld   bc, $0083                                   ; $4207: $01 $83 $00
	add  d                                           ; $420a: $82
	ld   [$0005], sp                                 ; $420b: $08 $05 $00
	inc  b                                           ; $420e: $04
	nop                                              ; $420f: $00
	ld   [bc], a                                     ; $4210: $02
	nop                                              ; $4211: $00
	ld   b, $81                                      ; $4212: $06 $81
	nop                                              ; $4214: $00
	add  b                                           ; $4215: $80
	ld   b, e                                        ; $4216: $43
	adc  b                                           ; $4217: $88
	nop                                              ; $4218: $00
	ld   [bc], a                                     ; $4219: $02
	ld   bc, $3839                                   ; $421a: $01 $39 $38
	add  b                                           ; $421d: $80
	ld   a, h                                        ; $421e: $7c
	ld   a, [bc]                                     ; $421f: $0a

jr_015_4220:
	jr   nc, jr_015_4220                             ; $4220: $30 $fe

	cp   d                                           ; $4222: $ba
	ldh  a, [c]                                      ; $4223: $f2
	or   d                                           ; $4224: $b2
	ld   a, b                                        ; $4225: $78
	or   d                                           ; $4226: $b2
	cp   $4c                                         ; $4227: $fe $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4229: $cf
	add  e                                           ; $422a: $83
	add  d                                           ; $422b: $82
	nop                                              ; $422c: $00
	add  b                                           ; $422d: $80
	add  b                                           ; $422e: $80
	add  d                                           ; $422f: $82
	nop                                              ; $4230: $00
	add  b                                           ; $4231: $80
	ld   b, b                                        ; $4232: $40
	add  b                                           ; $4233: $80
	jr   nz, @-$77                                   ; $4234: $20 $87

	nop                                              ; $4236: $00
	add  d                                           ; $4237: $82
	jr   nz, @+$08                                   ; $4238: $20 $06

	nop                                              ; $423a: $00
	ld   h, b                                        ; $423b: $60
	nop                                              ; $423c: $00
	add  b                                           ; $423d: $80
	nop                                              ; $423e: $00
	ldh  [rP1], a                                    ; $423f: $e0 $00
	add  d                                           ; $4241: $82
	inc  b                                           ; $4242: $04
	adc  e                                           ; $4243: $8b
	nop                                              ; $4244: $00
	add  d                                           ; $4245: $82
	rlca                                             ; $4246: $07
	rlca                                             ; $4247: $07
	inc  bc                                          ; $4248: $03
	rrca                                             ; $4249: $0f
	dec  bc                                          ; $424a: $0b
	rrca                                             ; $424b: $0f
	dec  bc                                          ; $424c: $0b
	rlca                                             ; $424d: $07
	dec  bc                                          ; $424e: $0b
	rrca                                             ; $424f: $0f
	add  b                                           ; $4250: $80
	inc  b                                           ; $4251: $04
	add  c                                           ; $4252: $81
	nop                                              ; $4253: $00
	add  b                                           ; $4254: $80
	jr   c, jr_015_41d9                              ; $4255: $38 $82

	nop                                              ; $4257: $00
	add  b                                           ; $4258: $80
	inc  b                                           ; $4259: $04
	add  b                                           ; $425a: $80
	ld   [bc], a                                     ; $425b: $02
	add  b                                           ; $425c: $80
	nop                                              ; $425d: $00
	add  b                                           ; $425e: $80
	jr   nz, jr_015_41e1                             ; $425f: $20 $80

	ld   b, b                                        ; $4261: $40
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	add  b                                           ; $4264: $80
	add  b                                           ; $4265: $80
	add  b                                           ; $4266: $80
	ret  nz                                          ; $4267: $c0

	add  b                                           ; $4268: $80
	add  b                                           ; $4269: $80
	add  b                                           ; $426a: $80
	ld   h, b                                        ; $426b: $60
	add  b                                           ; $426c: $80
	ldh  [$80], a                                    ; $426d: $e0 $80
	ret  nz                                          ; $426f: $c0

	sbc  l                                           ; $4270: $9d
	nop                                              ; $4271: $00
	inc  d                                           ; $4272: $14
	ld   b, e                                        ; $4273: $43
	dec  bc                                          ; $4274: $0b
	ld   c, c                                        ; $4275: $49
	dec  [hl]                                        ; $4276: $35
	inc  [hl]                                        ; $4277: $34
	scf                                              ; $4278: $37
	ld   l, a                                        ; $4279: $6f
	jr   nz, jr_015_428c                             ; $427a: $20 $10

	nop                                              ; $427c: $00
	ld   b, a                                        ; $427d: $47
	nop                                              ; $427e: $00
	rla                                              ; $427f: $17
	nop                                              ; $4280: $00
	ld   d, h                                        ; $4281: $54
	nop                                              ; $4282: $00
	inc  e                                           ; $4283: $1c
	nop                                              ; $4284: $00
	rst  JumpTable                                         ; $4285: $df
	db   $10                                         ; $4286: $10
	dec  de                                          ; $4287: $1b
	add  b                                           ; $4288: $80
	rla                                              ; $4289: $17
	dec  e                                           ; $428a: $1d
	ld   d, a                                        ; $428b: $57

jr_015_428c:
	rst  $20                                         ; $428c: $e7
	rlca                                             ; $428d: $07
	inc  e                                           ; $428e: $1c
	nop                                              ; $428f: $00
	ld   a, [bc]                                     ; $4290: $0a
	nop                                              ; $4291: $00
	ld   [bc], a                                     ; $4292: $02
	nop                                              ; $4293: $00
	sub  l                                           ; $4294: $95
	nop                                              ; $4295: $00
	ld   [hl], d                                     ; $4296: $72
	ld   [$8cb8], sp                                 ; $4297: $08 $b8 $8c
	adc  [hl]                                        ; $429a: $8e
	inc  c                                           ; $429b: $0c
	ld   h, d                                        ; $429c: $62
	nop                                              ; $429d: $00
	db   $e4                                         ; $429e: $e4
	nop                                              ; $429f: $00
	xor  h                                           ; $42a0: $ac
	ld   [$0476], sp                                 ; $42a1: $08 $76 $04
	inc  d                                           ; $42a4: $14
	inc  b                                           ; $42a5: $04
	rst  $20                                         ; $42a6: $e7
	ld   d, $76                                      ; $42a7: $16 $76
	add  c                                           ; $42a9: $81
	or   $1c                                         ; $42aa: $f6 $1c
	rst  $38                                         ; $42ac: $ff
	ldh  [$90], a                                    ; $42ad: $e0 $90
	nop                                              ; $42af: $00
	ret  nz                                          ; $42b0: $c0

	nop                                              ; $42b1: $00
	ret  nz                                          ; $42b2: $c0

	nop                                              ; $42b3: $00
	and  a                                           ; $42b4: $a7
	dec  bc                                          ; $42b5: $0b
	ld   d, c                                        ; $42b6: $51
	ld   hl, $0714                                   ; $42b7: $21 $14 $07
	ld   b, a                                        ; $42ba: $47
	nop                                              ; $42bb: $00
	ld   e, b                                        ; $42bc: $58
	nop                                              ; $42bd: $00
	rrca                                             ; $42be: $0f
	nop                                              ; $42bf: $00
	rlca                                             ; $42c0: $07
	nop                                              ; $42c1: $00
	ld   e, b                                        ; $42c2: $58
	nop                                              ; $42c3: $00
	stop                                             ; $42c4: $10 $00
	rst  JumpTable                                         ; $42c6: $df
	db   $10                                         ; $42c7: $10
	dec  de                                          ; $42c8: $1b
	add  b                                           ; $42c9: $80
	rla                                              ; $42ca: $17
	dec  e                                           ; $42cb: $1d
	ld   d, a                                        ; $42cc: $57
	rst  $20                                         ; $42cd: $e7
	rlca                                             ; $42ce: $07
	inc  e                                           ; $42cf: $1c
	nop                                              ; $42d0: $00
	ld   a, [bc]                                     ; $42d1: $0a
	nop                                              ; $42d2: $00
	ld   [bc], a                                     ; $42d3: $02
	nop                                              ; $42d4: $00
	dec  d                                           ; $42d5: $15
	nop                                              ; $42d6: $00
	or   d                                           ; $42d7: $b2
	adc  b                                           ; $42d8: $88
	ld   [$8ecc], sp                                 ; $42d9: $08 $cc $8e
	inc  c                                           ; $42dc: $0c
	ld   [hl-], a                                    ; $42dd: $32
	nop                                              ; $42de: $00
	add  h                                           ; $42df: $84
	nop                                              ; $42e0: $00
	xor  h                                           ; $42e1: $ac
	ld   [$04b6], sp                                 ; $42e2: $08 $b6 $04
	call nc, $e704                                   ; $42e5: $d4 $04 $e7
	ld   d, $76                                      ; $42e8: $16 $76
	add  c                                           ; $42ea: $81
	or   $1c                                         ; $42eb: $f6 $1c
	rst  $38                                         ; $42ed: $ff
	ldh  [$90], a                                    ; $42ee: $e0 $90
	nop                                              ; $42f0: $00
	ret  nz                                          ; $42f1: $c0

	nop                                              ; $42f2: $00
	ret  nz                                          ; $42f3: $c0

	nop                                              ; $42f4: $00
	or   e                                           ; $42f5: $b3
	dec  bc                                          ; $42f6: $0b
	ld   b, c                                        ; $42f7: $41
	dec  h                                           ; $42f8: $25
	inc  d                                           ; $42f9: $14
	rlca                                             ; $42fa: $07
	ld   b, a                                        ; $42fb: $47
	nop                                              ; $42fc: $00
	ld   e, b                                        ; $42fd: $58
	nop                                              ; $42fe: $00
	rrca                                             ; $42ff: $0f
	nop                                              ; $4300: $00
	rrca                                             ; $4301: $0f
	nop                                              ; $4302: $00
	ld   d, b                                        ; $4303: $50
	nop                                              ; $4304: $00
	stop                                             ; $4305: $10 $00
	rst  JumpTable                                         ; $4307: $df
	db   $10                                         ; $4308: $10
	dec  de                                          ; $4309: $1b
	add  b                                           ; $430a: $80
	rla                                              ; $430b: $17
	dec  e                                           ; $430c: $1d
	ld   d, a                                        ; $430d: $57
	rst  $20                                         ; $430e: $e7
	rlca                                             ; $430f: $07
	inc  e                                           ; $4310: $1c
	nop                                              ; $4311: $00
	ld   a, [bc]                                     ; $4312: $0a
	nop                                              ; $4313: $00
	ld   [bc], a                                     ; $4314: $02
	nop                                              ; $4315: $00
	dec  [hl]                                        ; $4316: $35
	nop                                              ; $4317: $00
	jp   nc, $3888                                   ; $4318: $d2 $88 $38

	adc  h                                           ; $431b: $8c
	adc  [hl]                                        ; $431c: $8e
	inc  c                                           ; $431d: $0c
	ld   h, d                                        ; $431e: $62
	nop                                              ; $431f: $00
	db   $e4                                         ; $4320: $e4
	nop                                              ; $4321: $00
	db   $ec                                         ; $4322: $ec
	ld   [$0436], sp                                 ; $4323: $08 $36 $04
	inc  d                                           ; $4326: $14
	inc  b                                           ; $4327: $04
	rst  $20                                         ; $4328: $e7
	ld   d, $76                                      ; $4329: $16 $76
	add  c                                           ; $432b: $81
	or   $16                                         ; $432c: $f6 $16
	rst  $38                                         ; $432e: $ff
	ldh  [$90], a                                    ; $432f: $e0 $90
	nop                                              ; $4331: $00
	ret  nz                                          ; $4332: $c0

	nop                                              ; $4333: $00
	ret  nz                                          ; $4334: $c0

	nop                                              ; $4335: $00
	and  a                                           ; $4336: $a7
	ld   [$255e], sp                                 ; $4337: $08 $5e $25
	inc  h                                           ; $433a: $24
	daa                                              ; $433b: $27
	ld   l, a                                        ; $433c: $6f
	jr   nz, jr_015_434f                             ; $433d: $20 $10

	nop                                              ; $433f: $00
	ld   b, a                                        ; $4340: $47
	nop                                              ; $4341: $00
	rla                                              ; $4342: $17
	nop                                              ; $4343: $00
	ld   e, b                                        ; $4344: $58
	add  c                                           ; $4345: $81
	nop                                              ; $4346: $00
	inc  e                                           ; $4347: $1c
	ret  nc                                          ; $4348: $d0

	nop                                              ; $4349: $00
	rra                                              ; $434a: $1f
	db   $10                                         ; $434b: $10
	dec  de                                          ; $434c: $1b
	ld   d, a                                        ; $434d: $57
	rst  ToBoot                                         ; $434e: $c7

jr_015_434f:
	rlca                                             ; $434f: $07
	inc  l                                           ; $4350: $2c
	nop                                              ; $4351: $00
	rra                                              ; $4352: $1f
	nop                                              ; $4353: $00
	rrca                                             ; $4354: $0f
	nop                                              ; $4355: $00
	db   $fd                                         ; $4356: $fd
	nop                                              ; $4357: $00
	ld   d, d                                        ; $4358: $52
	adc  b                                           ; $4359: $88
	ld   [$8ecc], sp                                 ; $435a: $08 $cc $8e
	inc  c                                           ; $435d: $0c
	ld   [hl-], a                                    ; $435e: $32
	nop                                              ; $435f: $00
	add  h                                           ; $4360: $84
	nop                                              ; $4361: $00
	xor  h                                           ; $4362: $ac
	ld   [$8176], sp                                 ; $4363: $08 $76 $81
	inc  b                                           ; $4366: $04
	inc  d                                           ; $4367: $14
	rla                                              ; $4368: $17
	ld   b, $e6                                      ; $4369: $06 $e6
	ld   d, $76                                      ; $436b: $16 $76
	ldh  a, [$f1]                                    ; $436d: $f0 $f1
	ldh  [$88], a                                    ; $436f: $e0 $88
	nop                                              ; $4371: $00
	ldh  a, [rP1]                                    ; $4372: $f0 $00
	ldh  a, [rP1]                                    ; $4374: $f0 $00
	sub  a                                           ; $4376: $97
	ld   [$1126], sp                                 ; $4377: $08 $26 $11
	ld   d, b                                        ; $437a: $50
	rla                                              ; $437b: $17
	dec  bc                                          ; $437c: $0b
	add  c                                           ; $437d: $81
	nop                                              ; $437e: $00
	ld   a, [bc]                                     ; $437f: $0a
	dec  bc                                          ; $4380: $0b
	nop                                              ; $4381: $00
	cpl                                              ; $4382: $2f
	nop                                              ; $4383: $00
	ld   d, b                                        ; $4384: $50
	nop                                              ; $4385: $00
	stop                                             ; $4386: $10 $00
	rst  JumpTable                                         ; $4388: $df
	db   $10                                         ; $4389: $10
	sbc  e                                           ; $438a: $9b
	add  b                                           ; $438b: $80
	rst  $10                                         ; $438c: $d7
	dec  bc                                          ; $438d: $0b
	rla                                              ; $438e: $17
	daa                                              ; $438f: $27
	rlca                                             ; $4390: $07
	inc  e                                           ; $4391: $1c
	nop                                              ; $4392: $00
	rrca                                             ; $4393: $0f
	nop                                              ; $4394: $00
	rrca                                             ; $4395: $0f
	nop                                              ; $4396: $00
	push hl                                          ; $4397: $e5
	db   $10                                         ; $4398: $10
	ld   a, [hl-]                                    ; $4399: $3a
	add  b                                           ; $439a: $80
	sbc  b                                           ; $439b: $98
	rrca                                             ; $439c: $0f
	inc  a                                           ; $439d: $3c
	ld   e, b                                        ; $439e: $58
	jr   @+$16                                       ; $439f: $18 $14

	db   $10                                         ; $43a1: $10
	ld   l, h                                        ; $43a2: $6c
	ld   [$0cee], sp                                 ; $43a3: $08 $ee $0c
	inc  [hl]                                        ; $43a6: $34
	inc  b                                           ; $43a7: $04
	rla                                              ; $43a8: $17
	ld   b, $e6                                      ; $43a9: $06 $e6
	ld   d, $77                                      ; $43ab: $16 $77
	add  c                                           ; $43ad: $81
	ldh  a, [rAUD1ENV]                               ; $43ae: $f0 $12
	ld   hl, sp-$20                                  ; $43b0: $f8 $e0
	sub  b                                           ; $43b2: $90
	nop                                              ; $43b3: $00
	ldh  [rP1], a                                    ; $43b4: $e0 $00
	ldh  [rP1], a                                    ; $43b6: $e0 $00
	add  sp, $04                                     ; $43b8: $e8 $04
	ld   [$0100], sp                                 ; $43ba: $08 $00 $01
	ld   [bc], a                                     ; $43bd: $02
	inc  b                                           ; $43be: $04
	nop                                              ; $43bf: $00
	ld   [bc], a                                     ; $43c0: $02
	nop                                              ; $43c1: $00
	ld   [bc], a                                     ; $43c2: $02
	add  c                                           ; $43c3: $81
	nop                                              ; $43c4: $00
	inc  b                                           ; $43c5: $04
	dec  b                                           ; $43c6: $05
	nop                                              ; $43c7: $00
	ld   bc, $0d00                                   ; $43c8: $01 $00 $0d
	add  d                                           ; $43cb: $82
	ld   bc, $0503                                   ; $43cc: $01 $03 $05
	ld   c, $00                                      ; $43cf: $0e $00
	ld   bc, $0083                                   ; $43d1: $01 $83 $00
	inc  b                                           ; $43d4: $04
	jr   nc, @+$7a                                   ; $43d5: $30 $78

	ld   d, b                                        ; $43d7: $50
	ld   e, b                                        ; $43d8: $58

jr_015_43d9:
	ld   b, b                                        ; $43d9: $40
	add  b                                           ; $43da: $80
	ld   a, b                                        ; $43db: $78
	add  c                                           ; $43dc: $81
	nop                                              ; $43dd: $00
	ld   a, [bc]                                     ; $43de: $0a
	db   $fd                                         ; $43df: $fd
	nop                                              ; $43e0: $00
	cp   $00                                         ; $43e1: $fe $00
	inc  bc                                          ; $43e3: $03
	nop                                              ; $43e4: $00
	ld   bc, $fe00                                   ; $43e5: $01 $00 $fe
	ld   bc, $82b7                                   ; $43e8: $01 $b7 $82
	ld   a, a                                        ; $43eb: $7f
	add  hl, bc                                      ; $43ec: $09
	ld   a, [hl]                                     ; $43ed: $7e
	ret                                              ; $43ee: $c9


	nop                                              ; $43ef: $00
	xor  h                                           ; $43f0: $ac
	nop                                              ; $43f1: $00
	inc  l                                           ; $43f2: $2c
	nop                                              ; $43f3: $00
	ld   l, [hl]                                     ; $43f4: $6e
	ldh  [$d0], a                                    ; $43f5: $e0 $d0
	add  b                                           ; $43f7: $80
	ld   b, b                                        ; $43f8: $40
	inc  bc                                          ; $43f9: $03
	ret  nz                                          ; $43fa: $c0

	jr   nz, jr_015_43fd                             ; $43fb: $20 $00

jr_015_43fd:
	ld   b, b                                        ; $43fd: $40
	add  c                                           ; $43fe: $81

jr_015_43ff:
	nop                                              ; $43ff: $00

Jump_015_4400:
	ld   [bc], a                                     ; $4400: $02
	ret  nz                                          ; $4401: $c0

	add  b                                           ; $4402: $80
	ld   h, b                                        ; $4403: $60
	add  c                                           ; $4404: $81

Call_015_4405:
	ld   b, b                                        ; $4405: $40
	nop                                              ; $4406: $00
	ld   [hl], b                                     ; $4407: $70
	add  e                                           ; $4408: $83
	ld   h, b                                        ; $4409: $60
	nop                                              ; $440a: $00
	ldh  a, [$85]                                    ; $440b: $f0 $85
	nop                                              ; $440d: $00
	ld   b, $67                                      ; $440e: $06 $67
	ld   [$192e], sp                                 ; $4410: $08 $2e $19
	ld   d, b                                        ; $4413: $50
	rla                                              ; $4414: $17
	dec  bc                                          ; $4415: $0b
	add  c                                           ; $4416: $81
	nop                                              ; $4417: $00
	ld   a, [bc]                                     ; $4418: $0a
	dec  bc                                          ; $4419: $0b
	nop                                              ; $441a: $00
	daa                                              ; $441b: $27
	nop                                              ; $441c: $00
	ld   d, h                                        ; $441d: $54
	nop                                              ; $441e: $00
	inc  e                                           ; $441f: $1c
	nop                                              ; $4420: $00
	rst  JumpTable                                         ; $4421: $df
	db   $10                                         ; $4422: $10
	sbc  e                                           ; $4423: $9b
	add  b                                           ; $4424: $80
	rst  $10                                         ; $4425: $d7
	dec  e                                           ; $4426: $1d
	rla                                              ; $4427: $17
	daa                                              ; $4428: $27
	rlca                                             ; $4429: $07
	inc  e                                           ; $442a: $1c
	nop                                              ; $442b: $00
	rrca                                             ; $442c: $0f
	nop                                              ; $442d: $00
	rlca                                             ; $442e: $07
	nop                                              ; $442f: $00
	db   $ed                                         ; $4430: $ed
	db   $10                                         ; $4431: $10
	ld   a, d                                        ; $4432: $7a
	sbc  b                                           ; $4433: $98
	ret  c                                           ; $4434: $d8

	inc  a                                           ; $4435: $3c
	ld   e, b                                        ; $4436: $58
	jr   @+$16                                       ; $4437: $18 $14

	db   $10                                         ; $4439: $10
	ld   l, h                                        ; $443a: $6c
	ld   [$0cee], sp                                 ; $443b: $08 $ee $0c
	ld   d, h                                        ; $443e: $54
	inc  b                                           ; $443f: $04
	ld   [hl], a                                     ; $4440: $77
	ld   b, $e6                                      ; $4441: $06 $e6
	ld   d, $77                                      ; $4443: $16 $77
	add  c                                           ; $4445: $81
	ldh  a, [rIF]                                    ; $4446: $f0 $0f
	ld   hl, sp-$20                                  ; $4448: $f8 $e0
	sub  b                                           ; $444a: $90
	nop                                              ; $444b: $00
	ldh  [rP1], a                                    ; $444c: $e0 $00
	ldh  [rP1], a                                    ; $444e: $e0 $00
	xor  a                                           ; $4450: $af
	ld   [bc], a                                     ; $4451: $02
	ld   b, h                                        ; $4452: $44
	db   $10                                         ; $4453: $10
	ld   [bc], a                                     ; $4454: $02
	jr   nz, @+$81                                   ; $4455: $20 $7f

	jr   c, jr_015_43d9                              ; $4457: $38 $80

	jr   nc, jr_015_4465                             ; $4459: $30 $0a

	ld   b, e                                        ; $445b: $43
	nop                                              ; $445c: $00
	rrca                                             ; $445d: $0f
	nop                                              ; $445e: $00
	ld   d, b                                        ; $445f: $50
	nop                                              ; $4460: $00
	stop                                             ; $4461: $10 $00
	rst  JumpTable                                         ; $4463: $df
	db   $10                                         ; $4464: $10

jr_015_4465:
	dec  de                                          ; $4465: $1b
	add  b                                           ; $4466: $80
	rla                                              ; $4467: $17
	db   $10                                         ; $4468: $10
	ld   d, a                                        ; $4469: $57
	rst  $20                                         ; $446a: $e7
	rlca                                             ; $446b: $07
	inc  e                                           ; $446c: $1c
	nop                                              ; $446d: $00
	rrca                                             ; $446e: $0f
	nop                                              ; $446f: $00
	rlca                                             ; $4470: $07
	nop                                              ; $4471: $00
	rst  $30                                         ; $4472: $f7
	nop                                              ; $4473: $00
	ret  nc                                          ; $4474: $d0

	jr   jr_015_43ff                                 ; $4475: $18 $88

	inc  c                                           ; $4477: $0c
	ld   hl, sp+$38                                  ; $4478: $f8 $38
	add  b                                           ; $447a: $80
	jr   @+$0c                                       ; $447b: $18 $0a

	and  h                                           ; $447d: $a4
	nop                                              ; $447e: $00
	db   $ec                                         ; $447f: $ec
	ld   [$0436], sp                                 ; $4480: $08 $36 $04
	inc  d                                           ; $4483: $14
	inc  b                                           ; $4484: $04
	rst  $20                                         ; $4485: $e7
	ld   d, $76                                      ; $4486: $16 $76
	add  b                                           ; $4488: $80
	or   $09                                         ; $4489: $f6 $09
	ldh  a, [$f9]                                    ; $448b: $f0 $f9
	ldh  [$90], a                                    ; $448d: $e0 $90
	nop                                              ; $448f: $00
	ldh  [rP1], a                                    ; $4490: $e0 $00
	ldh  a, [rP1]                                    ; $4492: $f0 $00
	ldh  a, [$9d]                                    ; $4494: $f0 $9d
	nop                                              ; $4496: $00
	ld   b, $14                                      ; $4497: $06 $14
	inc  b                                           ; $4499: $04
	ld   a, [de]                                     ; $449a: $1a
	ld   a, [bc]                                     ; $449b: $0a
	ld   c, b                                        ; $449c: $48
	ld   [$8047], sp                                 ; $449d: $08 $47 $80
	rlca                                             ; $44a0: $07
	nop                                              ; $44a1: $00
	rla                                              ; $44a2: $17
	add  b                                           ; $44a3: $80
	db   $10                                         ; $44a4: $10
	ld   bc, $0717                                   ; $44a5: $01 $17 $07
	add  b                                           ; $44a8: $80
	inc  de                                          ; $44a9: $13
	add  b                                           ; $44aa: $80
	rrca                                             ; $44ab: $0f
	add  b                                           ; $44ac: $80
	ld   b, b                                        ; $44ad: $40
	add  b                                           ; $44ae: $80
	ld   c, b                                        ; $44af: $48
	add  b                                           ; $44b0: $80
	ld   [$e815], sp                                 ; $44b1: $08 $15 $e8
	ld   l, b                                        ; $44b4: $68
	ldh  a, [rP1]                                    ; $44b5: $f0 $00
	ld   [hl], d                                     ; $44b7: $72
	nop                                              ; $44b8: $00
	ld   [bc], a                                     ; $44b9: $02
	nop                                              ; $44ba: $00
	ld   l, b                                        ; $44bb: $68
	ld   h, b                                        ; $44bc: $60
	inc  e                                           ; $44bd: $1c
	nop                                              ; $44be: $00
	ld   d, $20                                      ; $44bf: $16 $20
	and  d                                           ; $44c1: $a2
	and  b                                           ; $44c2: $a0
	db   $e3                                         ; $44c3: $e3
	ret  nz                                          ; $44c4: $c0

	inc  h                                           ; $44c5: $24
	ld   b, $a2                                      ; $44c6: $06 $a2
	add  d                                           ; $44c8: $82
	add  b                                           ; $44c9: $80
	ldh  a, [rSB]                                    ; $44ca: $f0 $01
	pop  hl                                          ; $44cc: $e1
	ldh  [$84], a                                    ; $44cd: $e0 $84
	nop                                              ; $44cf: $00
	ld   de, $0e0f                                   ; $44d0: $11 $0f $0e
	rra                                              ; $44d3: $1f
	nop                                              ; $44d4: $00
	sbc  $00                                         ; $44d5: $de $00
	ret  nz                                          ; $44d7: $c0

	nop                                              ; $44d8: $00
	stop                                             ; $44d9: $10 $00
	ld   [de], a                                     ; $44db: $12
	ld   [bc], a                                     ; $44dc: $02
	ld   b, b                                        ; $44dd: $40
	db   $10                                         ; $44de: $10
	ld   d, a                                        ; $44df: $57
	rla                                              ; $44e0: $17
	rra                                              ; $44e1: $1f
	rrca                                             ; $44e2: $0f
	add  b                                           ; $44e3: $80
	nop                                              ; $44e4: $00
	add  b                                           ; $44e5: $80
	rlca                                             ; $44e6: $07
	add  b                                           ; $44e7: $80
	rra                                              ; $44e8: $1f
	add  b                                           ; $44e9: $80
	rrca                                             ; $44ea: $0f
	add  b                                           ; $44eb: $80
	ld   b, b                                        ; $44ec: $40
	add  b                                           ; $44ed: $80
	ld   c, b                                        ; $44ee: $48
	add  b                                           ; $44ef: $80
	ld   [$e815], sp                                 ; $44f0: $08 $15 $e8
	ld   l, b                                        ; $44f3: $68
	ldh  a, [rP1]                                    ; $44f4: $f0 $00
	ld   [hl], d                                     ; $44f6: $72
	nop                                              ; $44f7: $00
	ld   [bc], a                                     ; $44f8: $02
	nop                                              ; $44f9: $00
	add  sp, -$20                                    ; $44fa: $e8 $e0
	ld   e, h                                        ; $44fc: $5c
	ld   b, b                                        ; $44fd: $40
	ld   b, $00                                      ; $44fe: $06 $00
	add  d                                           ; $4500: $82
	add  b                                           ; $4501: $80
	sub  e                                           ; $4502: $93
	and  b                                           ; $4503: $a0
	inc  h                                           ; $4504: $24
	ld   h, $a2                                      ; $4505: $26 $a2
	add  d                                           ; $4507: $82
	add  b                                           ; $4508: $80
	jr   nc, jr_015_450c                             ; $4509: $30 $01

	pop  hl                                          ; $450b: $e1

jr_015_450c:
	ldh  [$84], a                                    ; $450c: $e0 $84
	nop                                              ; $450e: $00
	rlca                                             ; $450f: $07
	rrca                                             ; $4510: $0f
	ld   c, $1f                                      ; $4511: $0e $1f
	nop                                              ; $4513: $00
	sbc  $00                                         ; $4514: $de $00
	ret  nz                                          ; $4516: $c0

	nop                                              ; $4517: $00
	add  b                                           ; $4518: $80
	inc  b                                           ; $4519: $04
	add  b                                           ; $451a: $80
	ld   [bc], a                                     ; $451b: $02
	dec  b                                           ; $451c: $05
	ld   b, b                                        ; $451d: $40
	db   $10                                         ; $451e: $10
	ld   d, a                                        ; $451f: $57
	rla                                              ; $4520: $17
	rra                                              ; $4521: $1f
	rrca                                             ; $4522: $0f
	add  b                                           ; $4523: $80
	nop                                              ; $4524: $00
	add  b                                           ; $4525: $80
	rrca                                             ; $4526: $0f
	add  b                                           ; $4527: $80
	rra                                              ; $4528: $1f
	add  b                                           ; $4529: $80
	rrca                                             ; $452a: $0f
	add  b                                           ; $452b: $80
	ld   b, b                                        ; $452c: $40
	add  b                                           ; $452d: $80
	ld   c, b                                        ; $452e: $48
	add  b                                           ; $452f: $80
	ld   [$e815], sp                                 ; $4530: $08 $15 $e8
	ld   l, b                                        ; $4533: $68
	ldh  a, [rP1]                                    ; $4534: $f0 $00
	ld   [hl], d                                     ; $4536: $72
	nop                                              ; $4537: $00
	ld   [bc], a                                     ; $4538: $02
	nop                                              ; $4539: $00
	ret  z                                           ; $453a: $c8

	ret  nz                                          ; $453b: $c0

	inc  e                                           ; $453c: $1c
	nop                                              ; $453d: $00
	ld   d, $20                                      ; $453e: $16 $20
	and  e                                           ; $4540: $a3
	and  b                                           ; $4541: $a0
	ldh  [c], a                                      ; $4542: $e2
	jp   nz, $0626                                   ; $4543: $c2 $26 $06

	ldh  [c], a                                      ; $4546: $e2
	jp   nz, $f080                                   ; $4547: $c2 $80 $f0

	ld   bc, $e0e1                                   ; $454a: $01 $e1 $e0
	add  h                                           ; $454d: $84
	nop                                              ; $454e: $00
	ld   c, $0f                                      ; $454f: $0e $0f
	ld   c, $1f                                      ; $4551: $0e $1f
	nop                                              ; $4553: $00
	sbc  $00                                         ; $4554: $de $00
	ret  nz                                          ; $4556: $c0

	nop                                              ; $4557: $00
	stop                                             ; $4558: $10 $00
	ld   a, [de]                                     ; $455a: $1a
	ld   a, [bc]                                     ; $455b: $0a
	ld   c, b                                        ; $455c: $48
	ld   [$8047], sp                                 ; $455d: $08 $47 $80
	rlca                                             ; $4560: $07
	nop                                              ; $4561: $00
	rla                                              ; $4562: $17
	add  b                                           ; $4563: $80
	db   $10                                         ; $4564: $10
	ld   bc, $0717                                   ; $4565: $01 $17 $07
	add  d                                           ; $4568: $82
	rra                                              ; $4569: $1f
	add  b                                           ; $456a: $80
	ld   c, a                                        ; $456b: $4f
	add  b                                           ; $456c: $80
	ld   b, b                                        ; $456d: $40
	add  b                                           ; $456e: $80
	ld   [$6811], sp                                 ; $456f: $08 $11 $68
	jr   z, jr_015_45a4                              ; $4572: $28 $30

	db   $10                                         ; $4574: $10
	ld   a, a                                        ; $4575: $7f
	nop                                              ; $4576: $00
	rra                                              ; $4577: $1f
	nop                                              ; $4578: $00
	ld   [$5c00], sp                                 ; $4579: $08 $00 $5c
	ld   b, b                                        ; $457c: $40
	ld   b, $00                                      ; $457d: $06 $00
	add  d                                           ; $457f: $82
	add  b                                           ; $4580: $80
	sub  e                                           ; $4581: $93
	and  d                                           ; $4582: $a2
	add  b                                           ; $4583: $80
	ld   h, $05                                      ; $4584: $26 $05
	and  d                                           ; $4586: $a2
	add  b                                           ; $4587: $80
	ldh  a, [c]                                      ; $4588: $f2
	ldh  a, [$f1]                                    ; $4589: $f0 $f1
	ldh  a, [$80]                                    ; $458b: $f0 $80
	ldh  [$80], a                                    ; $458d: $e0 $80
	nop                                              ; $458f: $00
	add  b                                           ; $4590: $80
	ld   b, $13                                      ; $4591: $06 $13
	ld   c, $0c                                      ; $4593: $0e $0c
	ld   e, $00                                      ; $4595: $1e $00
	db   $ec                                         ; $4597: $ec
	nop                                              ; $4598: $00
	ldh  a, [rP1]                                    ; $4599: $f0 $00
	stop                                             ; $459b: $10 $00
	ld   d, $06                                      ; $459d: $16 $06
	jr   nz, jr_015_45a1                             ; $459f: $20 $00

jr_015_45a1:
	inc  bc                                          ; $45a1: $03

jr_015_45a2:
	dec  bc                                          ; $45a2: $0b
	dec  hl                                          ; $45a3: $2b

jr_015_45a4:
	dec  bc                                          ; $45a4: $0b
	ld   [$8000], sp                                 ; $45a5: $08 $00 $80
	rrca                                             ; $45a8: $0f
	add  b                                           ; $45a9: $80
	rra                                              ; $45aa: $1f
	add  b                                           ; $45ab: $80
	rrca                                             ; $45ac: $0f
	add  b                                           ; $45ad: $80
	ld   b, b                                        ; $45ae: $40
	add  b                                           ; $45af: $80
	ld   [$c808], sp                                 ; $45b0: $08 $08 $c8
	ld   c, b                                        ; $45b3: $48
	add  sp, $08                                     ; $45b4: $e8 $08
	ld   [hl], b                                     ; $45b6: $70
	nop                                              ; $45b7: $00
	rla                                              ; $45b8: $17
	nop                                              ; $45b9: $00
	rlca                                             ; $45ba: $07
	add  c                                           ; $45bb: $81
	nop                                              ; $45bc: $00
	dec  bc                                          ; $45bd: $0b
	inc  h                                           ; $45be: $24
	nop                                              ; $45bf: $00
	ld   h, $00                                      ; $45c0: $26 $00
	ld   bc, $4440                                   ; $45c2: $01 $40 $44
	ld   b, d                                        ; $45c5: $42
	ld   h, [hl]                                     ; $45c6: $66
	ld   [bc], a                                     ; $45c7: $02
	ldh  [$c0], a                                    ; $45c8: $e0 $c0
	add  b                                           ; $45ca: $80
	ldh  a, [rSB]                                    ; $45cb: $f0 $01
	pop  hl                                          ; $45cd: $e1
	ldh  [$80], a                                    ; $45ce: $e0 $80
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	rlca                                             ; $45d2: $07
	add  b                                           ; $45d3: $80
	ld   b, $09                                      ; $45d4: $06 $09
	inc  b                                           ; $45d6: $04
	dec  c                                           ; $45d7: $0d
	ld   [$001e], sp                                 ; $45d8: $08 $1e $00
	ld   hl, sp+$00                                  ; $45db: $f8 $00
	ldh  [rP1], a                                    ; $45dd: $e0 $00
	inc  bc                                          ; $45df: $03
	add  b                                           ; $45e0: $80
	nop                                              ; $45e1: $00
	ld   bc, $0201                                   ; $45e2: $01 $01 $02
	add  a                                           ; $45e5: $87
	nop                                              ; $45e6: $00
	add  b                                           ; $45e7: $80
	ld   bc, $0080                                   ; $45e8: $01 $80 $00
	add  d                                           ; $45eb: $82
	inc  b                                           ; $45ec: $04
	add  b                                           ; $45ed: $80
	nop                                              ; $45ee: $00
	inc  b                                           ; $45ef: $04
	ld   c, $06                                      ; $45f0: $0e $06
	rrca                                             ; $45f2: $0f
	nop                                              ; $45f3: $00
	rlca                                             ; $45f4: $07
	add  c                                           ; $45f5: $81
	nop                                              ; $45f6: $00
	ld   b, $87                                      ; $45f7: $06 $87
	add  h                                           ; $45f9: $84
	and  h                                           ; $45fa: $a4
	and  l                                           ; $45fb: $a5
	add  l                                           ; $45fc: $85
	add  [hl]                                        ; $45fd: $86
	cp   $81                                         ; $45fe: $fe $81
	rst  $38                                         ; $4600: $ff
	inc  bc                                          ; $4601: $03
	ld   [bc], a                                     ; $4602: $02
	nop                                              ; $4603: $00
	cp   $fc                                         ; $4604: $fe $fc
	add  b                                           ; $4606: $80
	rst  $38                                         ; $4607: $ff
	add  b                                           ; $4608: $80
	cp   $80                                         ; $4609: $fe $80
	nop                                              ; $460b: $00
	add  h                                           ; $460c: $84
	add  b                                           ; $460d: $80
	inc  b                                           ; $460e: $04
	ld   bc, $2d00                                   ; $460f: $01 $00 $2d
	nop                                              ; $4612: $00
	inc  l                                           ; $4613: $2c
	add  c                                           ; $4614: $81
	nop                                              ; $4615: $00
	dec  b                                           ; $4616: $05
	add  b                                           ; $4617: $80
	nop                                              ; $4618: $00
	add  b                                           ; $4619: $80
	nop                                              ; $461a: $00
	jr   nc, jr_015_463d                             ; $461b: $30 $20

	add  d                                           ; $461d: $82
	ld   h, b                                        ; $461e: $60
	add  b                                           ; $461f: $80
	jr   nz, jr_015_45a2                             ; $4620: $20 $80

	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	db   $10                                         ; $4624: $10
	add  l                                           ; $4625: $85
	nop                                              ; $4626: $00
	inc  b                                           ; $4627: $04
	ldh  a, [$e0]                                    ; $4628: $f0 $e0
	ldh  a, [rP1]                                    ; $462a: $f0 $00
	ldh  [$81], a                                    ; $462c: $e0 $81
	nop                                              ; $462e: $00
	dec  bc                                          ; $462f: $0b
	stop                                             ; $4630: $10 $00
	ld   d, $06                                      ; $4632: $16 $06
	jr   nz, jr_015_4636                             ; $4634: $20 $00

jr_015_4636:
	inc  bc                                          ; $4636: $03
	dec  bc                                          ; $4637: $0b
	dec  hl                                          ; $4638: $2b
	dec  bc                                          ; $4639: $0b
	ld   [$8000], sp                                 ; $463a: $08 $00 $80

jr_015_463d:
	rlca                                             ; $463d: $07
	add  b                                           ; $463e: $80
	inc  de                                          ; $463f: $13
	add  b                                           ; $4640: $80
	rrca                                             ; $4641: $0f
	add  b                                           ; $4642: $80
	ld   b, b                                        ; $4643: $40
	add  b                                           ; $4644: $80
	ld   [$c808], sp                                 ; $4645: $08 $08 $c8
	ld   c, b                                        ; $4648: $48
	add  sp, $08                                     ; $4649: $e8 $08
	ld   [hl], b                                     ; $464b: $70
	nop                                              ; $464c: $00
	rla                                              ; $464d: $17
	nop                                              ; $464e: $00
	rlca                                             ; $464f: $07
	add  c                                           ; $4650: $81
	nop                                              ; $4651: $00
	dec  bc                                          ; $4652: $0b
	ld   h, h                                        ; $4653: $64
	ld   b, b                                        ; $4654: $40
	ld   h, $00                                      ; $4655: $26 $00
	ld   bc, $4440                                   ; $4657: $01 $40 $44
	ld   b, d                                        ; $465a: $42
	ld   h, [hl]                                     ; $465b: $66
	ld   [bc], a                                     ; $465c: $02
	ldh  [$c0], a                                    ; $465d: $e0 $c0
	add  b                                           ; $465f: $80
	sub  b                                           ; $4660: $90
	ld   bc, $e0e1                                   ; $4661: $01 $e1 $e0
	add  b                                           ; $4664: $80
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	rlca                                             ; $4667: $07
	add  b                                           ; $4668: $80
	ld   b, $0f                                      ; $4669: $06 $0f
	inc  b                                           ; $466b: $04
	dec  c                                           ; $466c: $0d
	ld   [$001e], sp                                 ; $466d: $08 $1e $00
	ld   hl, sp+$00                                  ; $4670: $f8 $00
	ldh  [rP1], a                                    ; $4672: $e0 $00
	stop                                             ; $4674: $10 $00
	jr   nc, jr_015_467e                             ; $4676: $30 $06

	ld   h, [hl]                                     ; $4678: $66
	inc  b                                           ; $4679: $04
	ld   b, a                                        ; $467a: $47
	add  c                                           ; $467b: $81
	inc  bc                                          ; $467c: $03
	add  b                                           ; $467d: $80

jr_015_467e:
	nop                                              ; $467e: $00
	add  b                                           ; $467f: $80
	rrca                                             ; $4680: $0f
	add  b                                           ; $4681: $80
	rra                                              ; $4682: $1f
	add  b                                           ; $4683: $80
	ld   c, $80                                      ; $4684: $0e $80
	ld   b, b                                        ; $4686: $40
	add  b                                           ; $4687: $80
	ld   c, b                                        ; $4688: $48
	add  b                                           ; $4689: $80
	ld   [$680e], sp                                 ; $468a: $08 $0e $68
	jr   z, @+$32                                    ; $468d: $28 $30

	db   $10                                         ; $468f: $10
	ld   a, a                                        ; $4690: $7f
	nop                                              ; $4691: $00
	rra                                              ; $4692: $1f
	nop                                              ; $4693: $00
	ld   [$0c00], sp                                 ; $4694: $08 $00 $0c
	ret  nz                                          ; $4697: $c0

	add  $40                                         ; $4698: $c6 $40
	ret  nz                                          ; $469a: $c0

	add  c                                           ; $469b: $81
	add  b                                           ; $469c: $80
	inc  bc                                          ; $469d: $03
	dec  h                                           ; $469e: $25
	ld   b, $e2                                      ; $469f: $06 $e2
	jp   nz, $f080                                   ; $46a1: $c2 $80 $f0

	ld   bc, $e0e1                                   ; $46a4: $01 $e1 $e0
	add  d                                           ; $46a7: $82
	nop                                              ; $46a8: $00
	add  b                                           ; $46a9: $80
	ld   b, $06                                      ; $46aa: $06 $06
	ld   c, $0c                                      ; $46ac: $0e $0c
	ld   e, $00                                      ; $46ae: $1e $00
	db   $ec                                         ; $46b0: $ec
	nop                                              ; $46b1: $00
	ldh  a, [$9f]                                    ; $46b2: $f0 $9f
	nop                                              ; $46b4: $00
	inc  b                                           ; $46b5: $04
	ccf                                              ; $46b6: $3f
	nop                                              ; $46b7: $00
	jr   nz, jr_015_46ba                             ; $46b8: $20 $00

jr_015_46ba:
	rra                                              ; $46ba: $1f
	sbc  c                                           ; $46bb: $99
	nop                                              ; $46bc: $00
	inc  b                                           ; $46bd: $04
	cp   $00                                         ; $46be: $fe $00
	ld   b, $00                                      ; $46c0: $06 $00
	ld   hl, sp-$67                                  ; $46c2: $f8 $99
	nop                                              ; $46c4: $00
	inc  b                                           ; $46c5: $04
	rst  $38                                         ; $46c6: $ff
	nop                                              ; $46c7: $00
	ret  nz                                          ; $46c8: $c0

	nop                                              ; $46c9: $00
	ccf                                              ; $46ca: $3f
	sbc  c                                           ; $46cb: $99
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	inc  b                                           ; $46ce: $04
	add  c                                           ; $46cf: $81
	nop                                              ; $46d0: $00
	inc  b                                           ; $46d1: $04
	ld   [$0200], sp                                 ; $46d2: $08 $00 $02
	inc  b                                           ; $46d5: $04
	inc  d                                           ; $46d6: $14
	add  b                                           ; $46d7: $80
	inc  b                                           ; $46d8: $04
	add  c                                           ; $46d9: $81
	nop                                              ; $46da: $00
	ld   [bc], a                                     ; $46db: $02
	ld   [de], a                                     ; $46dc: $12
	nop                                              ; $46dd: $00
	inc  c                                           ; $46de: $0c
	or   c                                           ; $46df: $b1
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	ret  nz                                          ; $46e2: $c0

	add  l                                           ; $46e3: $85
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	ret  nz                                          ; $46e6: $c0

	sub  [hl]                                        ; $46e7: $96
	nop                                              ; $46e8: $00
	add  [hl]                                        ; $46e9: $86
	ret  nz                                          ; $46ea: $c0

	sub  l                                           ; $46eb: $95
	nop                                              ; $46ec: $00
	add  [hl]                                        ; $46ed: $86
	ret  nz                                          ; $46ee: $c0

	rst  $38                                         ; $46ef: $ff
	nop                                              ; $46f0: $00
	sub  e                                           ; $46f1: $93
	nop                                              ; $46f2: $00
	ld   bc, $00ff                                   ; $46f3: $01 $ff $00
	add  [hl]                                        ; $46f6: $86
	db   $db                                         ; $46f7: $db
	add  b                                           ; $46f8: $80
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	rst  $38                                         ; $46fb: $ff
	add  c                                           ; $46fc: $81
	nop                                              ; $46fd: $00
	ld   bc, $00ff                                   ; $46fe: $01 $ff $00
	add  [hl]                                        ; $4701: $86
	ld   l, l                                        ; $4702: $6d
	add  b                                           ; $4703: $80
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	rst  $38                                         ; $4706: $ff
	add  c                                           ; $4707: $81
	nop                                              ; $4708: $00
	ld   bc, $00ff                                   ; $4709: $01 $ff $00
	add  [hl]                                        ; $470c: $86
	or   [hl]                                        ; $470d: $b6
	add  b                                           ; $470e: $80
	nop                                              ; $470f: $00
	nop                                              ; $4710: $00
	rst  $38                                         ; $4711: $ff
	add  c                                           ; $4712: $81
	nop                                              ; $4713: $00
	ld   [bc], a                                     ; $4714: $02
	rst  $38                                         ; $4715: $ff
	nop                                              ; $4716: $00
	dec  de                                          ; $4717: $1b
	add  l                                           ; $4718: $85
	db   $db                                         ; $4719: $db
	ld   [bc], a                                     ; $471a: $02
	ret  nz                                          ; $471b: $c0

	nop                                              ; $471c: $00
	rst  $38                                         ; $471d: $ff
	add  c                                           ; $471e: $81
	nop                                              ; $471f: $00
	ld   [bc], a                                     ; $4720: $02
	rst  $38                                         ; $4721: $ff
	nop                                              ; $4722: $00
	inc  bc                                          ; $4723: $03
	add  l                                           ; $4724: $85
	db   $db                                         ; $4725: $db
	ld   [bc], a                                     ; $4726: $02
	ret  c                                           ; $4727: $d8

	nop                                              ; $4728: $00
	rst  $38                                         ; $4729: $ff
	add  c                                           ; $472a: $81
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	rst  $38                                         ; $472d: $ff
	add  b                                           ; $472e: $80
	nop                                              ; $472f: $00
	add  [hl]                                        ; $4730: $86
	db   $db                                         ; $4731: $db
	ld   bc, $ff00                                   ; $4732: $01 $00 $ff
	add  c                                           ; $4735: $81
	nop                                              ; $4736: $00
	ld   [bc], a                                     ; $4737: $02
	rst  $38                                         ; $4738: $ff
	nop                                              ; $4739: $00
	dec  c                                           ; $473a: $0d

jr_015_473b:
	add  l                                           ; $473b: $85
	ld   l, l                                        ; $473c: $6d
	ld   [bc], a                                     ; $473d: $02
	ld   h, b                                        ; $473e: $60
	nop                                              ; $473f: $00
	rst  $38                                         ; $4740: $ff
	add  c                                           ; $4741: $81
	nop                                              ; $4742: $00
	ld   [bc], a                                     ; $4743: $02
	rst  $38                                         ; $4744: $ff
	nop                                              ; $4745: $00
	ld   bc, $6d85                                   ; $4746: $01 $85 $6d
	ld   [bc], a                                     ; $4749: $02
	ld   l, h                                        ; $474a: $6c
	nop                                              ; $474b: $00
	rst  $38                                         ; $474c: $ff
	add  c                                           ; $474d: $81
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	rst  $38                                         ; $4750: $ff
	add  b                                           ; $4751: $80
	nop                                              ; $4752: $00
	add  [hl]                                        ; $4753: $86
	ld   l, l                                        ; $4754: $6d
	ld   bc, $ff00                                   ; $4755: $01 $00 $ff
	add  c                                           ; $4758: $81
	nop                                              ; $4759: $00
	ld   [bc], a                                     ; $475a: $02
	rst  $38                                         ; $475b: $ff
	nop                                              ; $475c: $00
	ld   [hl], $85                                   ; $475d: $36 $85
	or   [hl]                                        ; $475f: $b6
	ld   [bc], a                                     ; $4760: $02
	add  b                                           ; $4761: $80
	nop                                              ; $4762: $00
	rst  $38                                         ; $4763: $ff
	add  c                                           ; $4764: $81
	nop                                              ; $4765: $00
	ld   [bc], a                                     ; $4766: $02
	rst  $38                                         ; $4767: $ff
	nop                                              ; $4768: $00
	ld   b, $85                                      ; $4769: $06 $85
	or   [hl]                                        ; $476b: $b6
	ld   [bc], a                                     ; $476c: $02
	or   b                                           ; $476d: $b0
	nop                                              ; $476e: $00
	rst  $38                                         ; $476f: $ff
	add  c                                           ; $4770: $81
	nop                                              ; $4771: $00
	nop                                              ; $4772: $00
	rst  $38                                         ; $4773: $ff
	add  b                                           ; $4774: $80
	nop                                              ; $4775: $00
	add  [hl]                                        ; $4776: $86
	or   [hl]                                        ; $4777: $b6
	ld   bc, $ff00                                   ; $4778: $01 $00 $ff
	cp   a                                           ; $477b: $bf
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	rst  $38                                         ; $477e: $ff
	sub  h                                           ; $477f: $94
	nop                                              ; $4780: $00
	ld   bc, $80ff                                   ; $4781: $01 $ff $80
	add  b                                           ; $4784: $80
	adc  a                                           ; $4785: $8f
	ld   [bc], a                                     ; $4786: $02
	cp   a                                           ; $4787: $bf
	and  b                                           ; $4788: $a0
	rst  $38                                         ; $4789: $ff
	add  b                                           ; $478a: $80
	ldh  a, [rP1]                                    ; $478b: $f0 $00
	sbc  a                                           ; $478d: $9f
	add  h                                           ; $478e: $84
	nop                                              ; $478f: $00
	ld   bc, $00ff                                   ; $4790: $01 $ff $00
	add  c                                           ; $4793: $81
	rst  $38                                         ; $4794: $ff
	ld   bc, $ff00                                   ; $4795: $01 $00 $ff
	add  b                                           ; $4798: $80
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	rst  $38                                         ; $479b: $ff
	add  h                                           ; $479c: $84
	nop                                              ; $479d: $00
	ld   bc, $01ff                                   ; $479e: $01 $ff $01
	add  c                                           ; $47a1: $81
	rst  $38                                         ; $47a2: $ff
	ld   bc, $ff07                                   ; $47a3: $01 $07 $ff
	add  b                                           ; $47a6: $80
	rrca                                             ; $47a7: $0f
	ld   bc, $f096                                   ; $47a8: $01 $96 $f0
	add  d                                           ; $47ab: $82
	pop  af                                          ; $47ac: $f1
	add  b                                           ; $47ad: $80
	di                                               ; $47ae: $f3
	add  [hl]                                        ; $47af: $86
	pop  af                                          ; $47b0: $f1
	ld   bc, $0060                                   ; $47b1: $01 $60 $00
	add  b                                           ; $47b4: $80
	db   $10                                         ; $47b5: $10
	add  b                                           ; $47b6: $80
	cp   $80                                         ; $47b7: $fe $80
	jr   c, jr_015_473b                              ; $47b9: $38 $80

	ld   d, h                                        ; $47bb: $54
	add  b                                           ; $47bc: $80
	sub  d                                           ; $47bd: $92
	add  b                                           ; $47be: $80
	cp   d                                           ; $47bf: $ba
	add  b                                           ; $47c0: $80
	db   $10                                         ; $47c1: $10
	sub  b                                           ; $47c2: $90
	nop                                              ; $47c3: $00
	add  b                                           ; $47c4: $80
	ld   bc, $0f80                                   ; $47c5: $01 $80 $0f
	add  d                                           ; $47c8: $82
	ld   bc, $0282                                   ; $47c9: $01 $82 $02
	add  b                                           ; $47cc: $80
	inc  c                                           ; $47cd: $0c
	add  b                                           ; $47ce: $80
	nop                                              ; $47cf: $00
	add  b                                           ; $47d0: $80
	ld   bc, $f180                                   ; $47d1: $01 $80 $f1
	add  [hl]                                        ; $47d4: $86
	ld   de, $6080                                   ; $47d5: $11 $80 $60
	nop                                              ; $47d8: $00
	add  hl, bc                                      ; $47d9: $09
	adc  l                                           ; $47da: $8d
	rrca                                             ; $47db: $0f
	ld   bc, $f096                                   ; $47dc: $01 $96 $f0
	add  d                                           ; $47df: $82
	pop  af                                          ; $47e0: $f1
	add  b                                           ; $47e1: $80
	ldh  a, [c]                                      ; $47e2: $f2
	add  b                                           ; $47e3: $80
	di                                               ; $47e4: $f3
	add  d                                           ; $47e5: $82
	ldh  a, [$80]                                    ; $47e6: $f0 $80
	di                                               ; $47e8: $f3
	nop                                              ; $47e9: $00
	ld   h, b                                        ; $47ea: $60
	add  c                                           ; $47eb: $81
	nop                                              ; $47ec: $00
	add  b                                           ; $47ed: $80
	sbc  $80                                         ; $47ee: $de $80
	sub  d                                           ; $47f0: $92
	add  b                                           ; $47f1: $80
	ldh  a, [c]                                      ; $47f2: $f2
	add  d                                           ; $47f3: $82
	sub  d                                           ; $47f4: $92
	add  b                                           ; $47f5: $80
	ld   e, [hl]                                     ; $47f6: $5e
	nop                                              ; $47f7: $00
	sub  b                                           ; $47f8: $90
	add  c                                           ; $47f9: $81
	ldh  a, [$80]                                    ; $47fa: $f0 $80
	di                                               ; $47fc: $f3

jr_015_47fd:
	add  b                                           ; $47fd: $80
	ldh  a, [c]                                      ; $47fe: $f2
	add  b                                           ; $47ff: $80
	ldh  a, [$80]                                    ; $4800: $f0 $80
	di                                               ; $4802: $f3
	add  b                                           ; $4803: $80
	pop  af                                          ; $4804: $f1
	add  b                                           ; $4805: $80
	di                                               ; $4806: $f3
	ld   bc, $0060                                   ; $4807: $01 $60 $00
	add  b                                           ; $480a: $80
	ld   hl, sp-$80                                  ; $480b: $f8 $80
	cp   $80                                         ; $480d: $fe $80
	xor  d                                           ; $480f: $aa
	add  b                                           ; $4810: $80
	ld   hl, sp-$80                                  ; $4811: $f8 $80
	cp   $80                                         ; $4813: $fe $80
	ld   d, h                                        ; $4815: $54
	add  b                                           ; $4816: $80
	cp   $01                                         ; $4817: $fe $01
	sub  b                                           ; $4819: $90
	ldh  a, [$82]                                    ; $481a: $f0 $82
	pop  af                                          ; $481c: $f1
	add  b                                           ; $481d: $80
	ldh  a, [c]                                      ; $481e: $f2
	add  b                                           ; $481f: $80
	pop  af                                          ; $4820: $f1
	add  d                                           ; $4821: $82
	ldh  a, [$80]                                    ; $4822: $f0 $80
	pop  af                                          ; $4824: $f1
	nop                                              ; $4825: $00
	ld   h, b                                        ; $4826: $60
	add  c                                           ; $4827: $81
	nop                                              ; $4828: $00
	add  b                                           ; $4829: $80
	db   $fc                                         ; $482a: $fc
	add  b                                           ; $482b: $80
	nop                                              ; $482c: $00
	add  b                                           ; $482d: $80
	db   $fc                                         ; $482e: $fc
	add  b                                           ; $482f: $80
	xor  b                                           ; $4830: $a8
	add  b                                           ; $4831: $80
	ld   c, d                                        ; $4832: $4a
	add  b                                           ; $4833: $80
	or   [hl]                                        ; $4834: $b6
	add  b                                           ; $4835: $80
	nop                                              ; $4836: $00
	add  b                                           ; $4837: $80
	inc  b                                           ; $4838: $04
	add  b                                           ; $4839: $80
	ld   a, [bc]                                     ; $483a: $0a
	add  b                                           ; $483b: $80
	rra                                              ; $483c: $1f
	add  b                                           ; $483d: $80
	ld   h, b                                        ; $483e: $60
	add  b                                           ; $483f: $80
	rra                                              ; $4840: $1f
	add  b                                           ; $4841: $80
	ld   de, $1f80                                   ; $4842: $11 $80 $1f
	add  b                                           ; $4845: $80
	nop                                              ; $4846: $00
	add  h                                           ; $4847: $84
	inc  b                                           ; $4848: $04
	add  b                                           ; $4849: $80
	call nz, $0480                                   ; $484a: $c4 $80 $04
	add  b                                           ; $484d: $80
	dec  b                                           ; $484e: $05
	add  b                                           ; $484f: $80
	ld   b, $80                                      ; $4850: $06 $80
	nop                                              ; $4852: $00
	add  b                                           ; $4853: $80
	ld   hl, $1186                                   ; $4854: $21 $86 $11
	add  b                                           ; $4857: $80
	ld   bc, $0080                                   ; $4858: $01 $80 $00
	nop                                              ; $485b: $00
	sub  b                                           ; $485c: $90
	add  e                                           ; $485d: $83
	ldh  a, [$80]                                    ; $485e: $f0 $80
	di                                               ; $4860: $f3
	add  d                                           ; $4861: $82
	ldh  a, [$82]                                    ; $4862: $f0 $82
	pop  af                                          ; $4864: $f1
	ld   bc, $0060                                   ; $4865: $01 $60 $00
	add  b                                           ; $4868: $80
	ld   hl, sp-$80                                  ; $4869: $f8 $80
	ld   [hl], b                                     ; $486b: $70
	add  b                                           ; $486c: $80
	cp   $80                                         ; $486d: $fe $80
	ld   d, b                                        ; $486f: $50
	add  b                                           ; $4870: $80
	db   $fc                                         ; $4871: $fc
	add  b                                           ; $4872: $80
	ld   [hl], b                                     ; $4873: $70
	add  b                                           ; $4874: $80
	inc  h                                           ; $4875: $24
	add  b                                           ; $4876: $80
	nop                                              ; $4877: $00
	add  b                                           ; $4878: $80
	ccf                                              ; $4879: $3f
	add  b                                           ; $487a: $80
	jr   nz, jr_015_47fd                             ; $487b: $20 $80

	ccf                                              ; $487d: $3f
	add  b                                           ; $487e: $80
	inc  b                                           ; $487f: $04
	add  b                                           ; $4880: $80
	ld   a, a                                        ; $4881: $7f
	add  d                                           ; $4882: $82
	inc  b                                           ; $4883: $04
	add  b                                           ; $4884: $80
	nop                                              ; $4885: $00
	add  b                                           ; $4886: $80
	add  b                                           ; $4887: $80
	add  b                                           ; $4888: $80
	add  a                                           ; $4889: $87
	add  b                                           ; $488a: $80
	add  b                                           ; $488b: $80
	add  b                                           ; $488c: $80
	nop                                              ; $488d: $00
	add  b                                           ; $488e: $80
	call nz, $0480                                   ; $488f: $c4 $80 $04
	add  b                                           ; $4892: $80
	inc  bc                                          ; $4893: $03
	add  b                                           ; $4894: $80
	nop                                              ; $4895: $00
	add  b                                           ; $4896: $80
	add  c                                           ; $4897: $81
	add  b                                           ; $4898: $80
	pop  af                                          ; $4899: $f1
	add  b                                           ; $489a: $80
	ld   b, c                                        ; $489b: $41
	add  b                                           ; $489c: $80
	ld   hl, $6180                                   ; $489d: $21 $80 $61
	add  b                                           ; $48a0: $80
	ld   bc, $c080                                   ; $48a1: $01 $80 $c0
	nop                                              ; $48a4: $00
	sub  b                                           ; $48a5: $90
	add  e                                           ; $48a6: $83
	ldh  a, [$80]                                    ; $48a7: $f0 $80
	di                                               ; $48a9: $f3
	add  h                                           ; $48aa: $84
	pop  af                                          ; $48ab: $f1
	add  b                                           ; $48ac: $80
	ldh  a, [rSB]                                    ; $48ad: $f0 $01
	ld   h, b                                        ; $48af: $60
	nop                                              ; $48b0: $00
	add  b                                           ; $48b1: $80
	ld   h, b                                        ; $48b2: $60
	add  b                                           ; $48b3: $80
	sbc  b                                           ; $48b4: $98
	add  b                                           ; $48b5: $80
	cp   $82                                         ; $48b6: $fe $82
	ld   d, h                                        ; $48b8: $54
	add  b                                           ; $48b9: $80
	call c, $1080                                    ; $48ba: $dc $80 $10
	add  b                                           ; $48bd: $80
	nop                                              ; $48be: $00
	add  b                                           ; $48bf: $80
	inc  b                                           ; $48c0: $04
	add  b                                           ; $48c1: $80
	ccf                                              ; $48c2: $3f
	add  d                                           ; $48c3: $82
	inc  h                                           ; $48c4: $24
	add  b                                           ; $48c5: $80
	ccf                                              ; $48c6: $3f
	add  d                                           ; $48c7: $82
	inc  b                                           ; $48c8: $04
	add  d                                           ; $48c9: $82
	nop                                              ; $48ca: $00
	add  b                                           ; $48cb: $80
	adc  a                                           ; $48cc: $8f
	add  b                                           ; $48cd: $80
	add  l                                           ; $48ce: $85
	add  b                                           ; $48cf: $80
	add  e                                           ; $48d0: $83
	add  b                                           ; $48d1: $80
	add  h                                           ; $48d2: $84
	add  b                                           ; $48d3: $80
	rrca                                             ; $48d4: $0f
	add  d                                           ; $48d5: $82
	nop                                              ; $48d6: $00
	add  b                                           ; $48d7: $80
	add  c                                           ; $48d8: $81
	add  b                                           ; $48d9: $80
	ld   sp, hl                                      ; $48da: $f9
	add  b                                           ; $48db: $80
	sub  c                                           ; $48dc: $91
	add  b                                           ; $48dd: $80
	pop  hl                                          ; $48de: $e1
	add  b                                           ; $48df: $80
	pop  de                                          ; $48e0: $d1
	add  b                                           ; $48e1: $80
	ld   sp, hl                                      ; $48e2: $f9
	add  b                                           ; $48e3: $80
	add  b                                           ; $48e4: $80
	ld   bc, $f090                                   ; $48e5: $01 $90 $f0
	add  b                                           ; $48e8: $80
	rst  $38                                         ; $48e9: $ff
	nop                                              ; $48ea: $00
	ldh  [$81], a                                    ; $48eb: $e0 $81
	rst  $38                                         ; $48ed: $ff
	nop                                              ; $48ee: $00
	add  b                                           ; $48ef: $80
	add  b                                           ; $48f0: $80
	rst  $38                                         ; $48f1: $ff
	add  b                                           ; $48f2: $80
	nop                                              ; $48f3: $00
	inc  b                                           ; $48f4: $04
	rlca                                             ; $48f5: $07
	nop                                              ; $48f6: $00
	add  hl, bc                                      ; $48f7: $09
	pop  af                                          ; $48f8: $f1
	nop                                              ; $48f9: $00
	add  b                                           ; $48fa: $80
	rst  $38                                         ; $48fb: $ff
	nop                                              ; $48fc: $00
	nop                                              ; $48fd: $00
	add  c                                           ; $48fe: $81
	rst  $38                                         ; $48ff: $ff
	nop                                              ; $4900: $00
	nop                                              ; $4901: $00
	add  b                                           ; $4902: $80
	rst  $38                                         ; $4903: $ff
	add  b                                           ; $4904: $80
	nop                                              ; $4905: $00
	inc  b                                           ; $4906: $04
	ret  nz                                          ; $4907: $c0

	nop                                              ; $4908: $00
	ldh  [$df], a                                    ; $4909: $e0 $df
	nop                                              ; $490b: $00
	add  b                                           ; $490c: $80
	rst  $38                                         ; $490d: $ff
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	add  c                                           ; $4910: $81
	rst  $38                                         ; $4911: $ff
	nop                                              ; $4912: $00
	nop                                              ; $4913: $00
	add  b                                           ; $4914: $80
	rst  $38                                         ; $4915: $ff
	add  e                                           ; $4916: $83
	nop                                              ; $4917: $00
	ld   bc, $00ff                                   ; $4918: $01 $ff $00
	add  b                                           ; $491b: $80
	rst  $38                                         ; $491c: $ff
	nop                                              ; $491d: $00
	nop                                              ; $491e: $00
	add  c                                           ; $491f: $81
	rst  $38                                         ; $4920: $ff
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	add  b                                           ; $4923: $80
	rst  $38                                         ; $4924: $ff
	add  b                                           ; $4925: $80
	nop                                              ; $4926: $00
	inc  b                                           ; $4927: $04
	inc  bc                                          ; $4928: $03
	nop                                              ; $4929: $00
	rlca                                             ; $492a: $07
	ldh  a, [c]                                      ; $492b: $f2
	rrca                                             ; $492c: $0f
	add  b                                           ; $492d: $80
	rst  $38                                         ; $492e: $ff
	nop                                              ; $492f: $00
	rlca                                             ; $4930: $07
	add  c                                           ; $4931: $81
	rst  $38                                         ; $4932: $ff
	nop                                              ; $4933: $00
	ld   bc, $ff80                                   ; $4934: $01 $80 $ff
	add  b                                           ; $4937: $80
	nop                                              ; $4938: $00
	dec  b                                           ; $4939: $05
	ldh  [rP1], a                                    ; $493a: $e0 $00
	ldh  a, [$e8]                                    ; $493c: $f0 $e8
	nop                                              ; $493e: $00
	ld   bc, $0081                                   ; $493f: $01 $81 $00
	ld   [bc], a                                     ; $4942: $02
	ld   [bc], a                                     ; $4943: $02
	nop                                              ; $4944: $00
	ld   [bc], a                                     ; $4945: $02
	add  l                                           ; $4946: $85
	nop                                              ; $4947: $00
	db   $10                                         ; $4948: $10
	ld   sp, hl                                      ; $4949: $f9
	nop                                              ; $494a: $00
	stop                                             ; $494b: $10 $00
	xor  $00                                         ; $494d: $ee $00
	add  $00                                         ; $494f: $c6 $00
	ld   l, h                                        ; $4951: $6c
	nop                                              ; $4952: $00
	add  $00                                         ; $4953: $c6 $00
	jr   z, jr_015_4957                              ; $4955: $28 $00

jr_015_4957:
	xor  d                                           ; $4957: $aa
	nop                                              ; $4958: $00
	db   $10                                         ; $4959: $10
	adc  a                                           ; $495a: $8f
	nop                                              ; $495b: $00
	inc  b                                           ; $495c: $04
	ld   bc, $0e00                                   ; $495d: $01 $00 $0e
	nop                                              ; $4960: $00
	ld   c, $81                                      ; $4961: $0e $81
	nop                                              ; $4963: $00
	nop                                              ; $4964: $00
	inc  bc                                          ; $4965: $03
	add  c                                           ; $4966: $81
	nop                                              ; $4967: $00
	ld   [bc], a                                     ; $4968: $02
	ld   c, $00                                      ; $4969: $0e $00
	rrca                                             ; $496b: $0f
	add  c                                           ; $496c: $81
	nop                                              ; $496d: $00
	ld   [bc], a                                     ; $496e: $02
	ldh  a, [rP1]                                    ; $496f: $f0 $00
	ldh  [$85], a                                    ; $4971: $e0 $85
	nop                                              ; $4973: $00
	inc  b                                           ; $4974: $04
	ld   [hl], b                                     ; $4975: $70
	nop                                              ; $4976: $00
	sbc  e                                           ; $4977: $9b
	nop                                              ; $4978: $00
	ld   bc, $0081                                   ; $4979: $01 $81 $00
	inc  b                                           ; $497c: $04
	inc  bc                                          ; $497d: $03
	nop                                              ; $497e: $00
	ld   bc, $0300                                   ; $497f: $01 $00 $03
	add  c                                           ; $4982: $81
	nop                                              ; $4983: $00
	ld   [bc], a                                     ; $4984: $02
	inc  bc                                          ; $4985: $03
	nop                                              ; $4986: $00
	ei                                               ; $4987: $fb
	add  c                                           ; $4988: $81
	nop                                              ; $4989: $00
	ld   b, $de                                      ; $498a: $06 $de
	nop                                              ; $498c: $00
	ld   c, h                                        ; $498d: $4c
	nop                                              ; $498e: $00
	ld   h, b                                        ; $498f: $60
	nop                                              ; $4990: $00
	ld   h, b                                        ; $4991: $60
	add  c                                           ; $4992: $81
	nop                                              ; $4993: $00
	ld   [bc], a                                     ; $4994: $02
	call z, $a600                                    ; $4995: $cc $00 $a6
	add  c                                           ; $4998: $81
	nop                                              ; $4999: $00
	ld   e, $03                                      ; $499a: $1e $03
	nop                                              ; $499c: $00
	ld   bc, $0200                                   ; $499d: $01 $00 $02
	nop                                              ; $49a0: $00
	inc  bc                                          ; $49a1: $03
	nop                                              ; $49a2: $00
	ld   [bc], a                                     ; $49a3: $02
	nop                                              ; $49a4: $00
	ld   [bc], a                                     ; $49a5: $02
	nop                                              ; $49a6: $00
	ei                                               ; $49a7: $fb
	nop                                              ; $49a8: $00
	ld   hl, sp+$00                                  ; $49a9: $f8 $00
	ld   b, $00                                      ; $49ab: $06 $00
	ld   d, h                                        ; $49ad: $54
	nop                                              ; $49ae: $00
	ld   d, d                                        ; $49af: $52
	nop                                              ; $49b0: $00
	ld   b, $00                                      ; $49b1: $06 $00
	xor  d                                           ; $49b3: $aa
	nop                                              ; $49b4: $00
	xor  d                                           ; $49b5: $aa
	nop                                              ; $49b6: $00
	ld   b, $00                                      ; $49b7: $06 $00
	ld   bc, $0081                                   ; $49b9: $01 $81 $00
	inc  b                                           ; $49bc: $04
	inc  bc                                          ; $49bd: $03
	nop                                              ; $49be: $00
	inc  bc                                          ; $49bf: $03
	nop                                              ; $49c0: $00
	ld   bc, $0081                                   ; $49c1: $01 $81 $00
	ld   [bc], a                                     ; $49c4: $02
	ld   bc, $f900                                   ; $49c5: $01 $00 $f9
	add  c                                           ; $49c8: $81
	nop                                              ; $49c9: $00
	ld   e, $fc                                      ; $49ca: $1e $fc
	nop                                              ; $49cc: $00
	db   $fc                                         ; $49cd: $fc
	nop                                              ; $49ce: $00
	db   $fc                                         ; $49cf: $fc
	nop                                              ; $49d0: $00
	ld   d, h                                        ; $49d1: $54
	nop                                              ; $49d2: $00
	ldh  [c], a                                      ; $49d3: $e2
	nop                                              ; $49d4: $00
	db   $fc                                         ; $49d5: $fc
	nop                                              ; $49d6: $00
	or   [hl]                                        ; $49d7: $b6
	nop                                              ; $49d8: $00
	inc  b                                           ; $49d9: $04
	nop                                              ; $49da: $00
	ld   c, $00                                      ; $49db: $0e $00
	dec  d                                           ; $49dd: $15
	nop                                              ; $49de: $00
	ld   a, a                                        ; $49df: $7f
	nop                                              ; $49e0: $00
	ld   a, a                                        ; $49e1: $7f
	nop                                              ; $49e2: $00
	ld   c, $00                                      ; $49e3: $0e $00
	ld   c, $00                                      ; $49e5: $0e $00
	rra                                              ; $49e7: $1f
	nop                                              ; $49e8: $00
	inc  b                                           ; $49e9: $04
	add  e                                           ; $49ea: $83
	nop                                              ; $49eb: $00
	inc  c                                           ; $49ec: $0c
	ret  nz                                          ; $49ed: $c0

	nop                                              ; $49ee: $00
	ret  nz                                          ; $49ef: $c0

	nop                                              ; $49f0: $00
	ld   bc, $0300                                   ; $49f1: $01 $00 $03
	nop                                              ; $49f4: $00
	dec  b                                           ; $49f5: $05
	nop                                              ; $49f6: $00
	jr   nz, jr_015_49f9                             ; $49f7: $20 $00

jr_015_49f9:
	jr   nc, @-$79                                   ; $49f9: $30 $85

	nop                                              ; $49fb: $00
	nop                                              ; $49fc: $00
	db   $10                                         ; $49fd: $10
	add  c                                           ; $49fe: $81
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	ei                                               ; $4a01: $fb
	add  e                                           ; $4a02: $83
	nop                                              ; $4a03: $00
	ld   [bc], a                                     ; $4a04: $02
	inc  bc                                          ; $4a05: $03
	nop                                              ; $4a06: $00
	inc  bc                                          ; $4a07: $03
	add  c                                           ; $4a08: $81
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	ld   bc, $0081                                   ; $4a0b: $01 $81 $00
	inc  e                                           ; $4a0e: $1c
	ld   sp, hl                                      ; $4a0f: $f9
	nop                                              ; $4a10: $00
	ld   hl, sp+$00                                  ; $4a11: $f8 $00
	adc  b                                           ; $4a13: $88
	nop                                              ; $4a14: $00
	adc  [hl]                                        ; $4a15: $8e
	nop                                              ; $4a16: $00
	xor  [hl]                                        ; $4a17: $ae
	nop                                              ; $4a18: $00
	xor  h                                           ; $4a19: $ac
	nop                                              ; $4a1a: $00
	adc  h                                           ; $4a1b: $8c
	nop                                              ; $4a1c: $00
	ld   d, h                                        ; $4a1d: $54
	nop                                              ; $4a1e: $00
	inc  h                                           ; $4a1f: $24
	nop                                              ; $4a20: $00
	ccf                                              ; $4a21: $3f
	nop                                              ; $4a22: $00
	rra                                              ; $4a23: $1f
	nop                                              ; $4a24: $00
	rra                                              ; $4a25: $1f
	nop                                              ; $4a26: $00
	dec  sp                                          ; $4a27: $3b
	nop                                              ; $4a28: $00
	ld   a, e                                        ; $4a29: $7b
	nop                                              ; $4a2a: $00
	ld   a, e                                        ; $4a2b: $7b
	add  c                                           ; $4a2c: $81
	nop                                              ; $4a2d: $00
	ld   c, $04                                      ; $4a2e: $0e $04
	nop                                              ; $4a30: $00
	add  b                                           ; $4a31: $80
	nop                                              ; $4a32: $00
	rlca                                             ; $4a33: $07
	nop                                              ; $4a34: $00
	rlca                                             ; $4a35: $07
	nop                                              ; $4a36: $00
	add  b                                           ; $4a37: $80
	nop                                              ; $4a38: $00
	call nz, $c000                                   ; $4a39: $c4 $00 $c0
	nop                                              ; $4a3c: $00
	rlca                                             ; $4a3d: $07
	add  c                                           ; $4a3e: $81
	nop                                              ; $4a3f: $00
	ld   c, $80                                      ; $4a40: $0e $80
	nop                                              ; $4a42: $00
	ld   [hl], b                                     ; $4a43: $70
	nop                                              ; $4a44: $00
	or   b                                           ; $4a45: $b0
	nop                                              ; $4a46: $00
	ld   h, b                                        ; $4a47: $60
	nop                                              ; $4a48: $00
	ld   b, b                                        ; $4a49: $40
	nop                                              ; $4a4a: $00
	ld   h, b                                        ; $4a4b: $60
	nop                                              ; $4a4c: $00
	ret  nz                                          ; $4a4d: $c0

	nop                                              ; $4a4e: $00
	dec  sp                                          ; $4a4f: $3b
	add  e                                           ; $4a50: $83
	nop                                              ; $4a51: $00
	ld   [bc], a                                     ; $4a52: $02
	inc  bc                                          ; $4a53: $03
	nop                                              ; $4a54: $00
	ld   [bc], a                                     ; $4a55: $02
	add  e                                           ; $4a56: $83
	nop                                              ; $4a57: $00
	ld   a, [bc]                                     ; $4a58: $0a
	ld   bc, $f800                                   ; $4a59: $01 $00 $f8
	nop                                              ; $4a5c: $00
	ld   h, b                                        ; $4a5d: $60
	nop                                              ; $4a5e: $00
	ld   hl, sp+$00                                  ; $4a5f: $f8 $00
	ld   h, [hl]                                     ; $4a61: $66
	nop                                              ; $4a62: $00
	xor  d                                           ; $4a63: $aa
	add  c                                           ; $4a64: $81
	nop                                              ; $4a65: $00
	ld   a, [bc]                                     ; $4a66: $0a
	adc  b                                           ; $4a67: $88
	nop                                              ; $4a68: $00
	call z, $1000                                    ; $4a69: $cc $00 $10
	nop                                              ; $4a6c: $00
	inc  b                                           ; $4a6d: $04
	nop                                              ; $4a6e: $00
	dec  sp                                          ; $4a6f: $3b
	nop                                              ; $4a70: $00
	dec  de                                          ; $4a71: $1b
	add  c                                           ; $4a72: $81
	nop                                              ; $4a73: $00
	ld   [bc], a                                     ; $4a74: $02
	dec  de                                          ; $4a75: $1b
	nop                                              ; $4a76: $00
	dec  sp                                          ; $4a77: $3b
	add  c                                           ; $4a78: $81
	nop                                              ; $4a79: $00
	nop                                              ; $4a7a: $00
	inc  b                                           ; $4a7b: $04
	add  c                                           ; $4a7c: $81
	nop                                              ; $4a7d: $00
	inc  e                                           ; $4a7e: $1c
	adc  a                                           ; $4a7f: $8f
	nop                                              ; $4a80: $00
	ld   a, [bc]                                     ; $4a81: $0a
	nop                                              ; $4a82: $00
	ld   b, $00                                      ; $4a83: $06 $00
	rlca                                             ; $4a85: $07
	nop                                              ; $4a86: $00
	adc  e                                           ; $4a87: $8b
	nop                                              ; $4a88: $00
	rrca                                             ; $4a89: $0f
	nop                                              ; $4a8a: $00
	inc  bc                                          ; $4a8b: $03
	nop                                              ; $4a8c: $00
	add  b                                           ; $4a8d: $80
	nop                                              ; $4a8e: $00
	ld   a, b                                        ; $4a8f: $78
	nop                                              ; $4a90: $00
	ld   l, b                                        ; $4a91: $68
	nop                                              ; $4a92: $00
	ld   [hl], b                                     ; $4a93: $70
	nop                                              ; $4a94: $00
	jr   nc, jr_015_4a97                             ; $4a95: $30 $00

jr_015_4a97:
	jr   z, jr_015_4a99                              ; $4a97: $28 $00

jr_015_4a99:
	ld   a, b                                        ; $4a99: $78
	nop                                              ; $4a9a: $00
	ld   a, h                                        ; $4a9b: $7c
	rst  $38                                         ; $4a9c: $ff
	nop                                              ; $4a9d: $00
	rst  $38                                         ; $4a9e: $ff
	nop                                              ; $4a9f: $00
	rst  $38                                         ; $4aa0: $ff
	nop                                              ; $4aa1: $00
	rst  $38                                         ; $4aa2: $ff
	nop                                              ; $4aa3: $00
	reti                                             ; $4aa4: $d9


	nop                                              ; $4aa5: $00
	nop                                              ; $4aa6: $00
	rst  $38                                         ; $4aa7: $ff
	add  [hl]                                        ; $4aa8: $86
	nop                                              ; $4aa9: $00
	dec  b                                           ; $4aaa: $05
	inc  bc                                          ; $4aab: $03
	nop                                              ; $4aac: $00
	rlca                                             ; $4aad: $07
	ld   [bc], a                                     ; $4aae: $02
	rrca                                             ; $4aaf: $0f
	dec  c                                           ; $4ab0: $0d
	add  b                                           ; $4ab1: $80
	ld   c, $16                                      ; $4ab2: $0e $16
	rst  $38                                         ; $4ab4: $ff
	add  [hl]                                        ; $4ab5: $86
	sbc  a                                           ; $4ab6: $9f
	or   [hl]                                        ; $4ab7: $b6
	cp   a                                           ; $4ab8: $bf
	sbc  [hl]                                        ; $4ab9: $9e
	rst  $38                                         ; $4aba: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4abb: $cf
	rst  $38                                         ; $4abc: $ff
	ld   b, a                                        ; $4abd: $47
	rst  $38                                         ; $4abe: $ff
	inc  bc                                          ; $4abf: $03
	rst  $38                                         ; $4ac0: $ff
	and  b                                           ; $4ac1: $a0
	rst  $38                                         ; $4ac2: $ff
	pop  hl                                          ; $4ac3: $e1
	rst  $38                                         ; $4ac4: $ff
	ld   b, b                                        ; $4ac5: $40
	rst  $38                                         ; $4ac6: $ff
	nop                                              ; $4ac7: $00
	rst  $38                                         ; $4ac8: $ff
	inc  a                                           ; $4ac9: $3c
	jp   $bd80                                       ; $4aca: $c3 $80 $bd


	add  b                                           ; $4acd: $80
	and  [hl]                                        ; $4ace: $a6
	add  b                                           ; $4acf: $80
	rst  ToBoot                                         ; $4ad0: $c7
	nop                                              ; $4ad1: $00
	nop                                              ; $4ad2: $00
	add  c                                           ; $4ad3: $81
	rst  $38                                         ; $4ad4: $ff
	dec  b                                           ; $4ad5: $05
	nop                                              ; $4ad6: $00
	ld   [bc], a                                     ; $4ad7: $02
	db   $fd                                         ; $4ad8: $fd
	rst  $38                                         ; $4ad9: $ff
	ld   e, $e1                                      ; $4ada: $1e $e1
	add  b                                           ; $4adc: $80
	sbc  $80                                         ; $4add: $de $80
	or   d                                           ; $4adf: $b2
	add  b                                           ; $4ae0: $80
	ld   [hl], c                                     ; $4ae1: $71
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	add  c                                           ; $4ae4: $81
	rst  $38                                         ; $4ae5: $ff
	dec  b                                           ; $4ae6: $05
	nop                                              ; $4ae7: $00
	cp   a                                           ; $4ae8: $bf
	ld   b, b                                        ; $4ae9: $40
	rst  $38                                         ; $4aea: $ff
	inc  a                                           ; $4aeb: $3c
	jp   $bd80                                       ; $4aec: $c3 $80 $bd


	add  b                                           ; $4aef: $80
	and  [hl]                                        ; $4af0: $a6
	add  b                                           ; $4af1: $80
	rst  ToBoot                                         ; $4af2: $c7
	nop                                              ; $4af3: $00
	nop                                              ; $4af4: $00
	add  c                                           ; $4af5: $81
	rst  $38                                         ; $4af6: $ff
	dec  b                                           ; $4af7: $05
	nop                                              ; $4af8: $00
	rst  $38                                         ; $4af9: $ff
	nop                                              ; $4afa: $00
	rst  $38                                         ; $4afb: $ff
	ld   e, $e1                                      ; $4afc: $1e $e1
	add  b                                           ; $4afe: $80
	sbc  $80                                         ; $4aff: $de $80
	or   d                                           ; $4b01: $b2
	add  b                                           ; $4b02: $80
	ld   [hl], c                                     ; $4b03: $71
	nop                                              ; $4b04: $00
	nop                                              ; $4b05: $00
	add  c                                           ; $4b06: $81
	rst  $38                                         ; $4b07: $ff
	dec  b                                           ; $4b08: $05
	nop                                              ; $4b09: $00
	rst  $38                                         ; $4b0a: $ff
	nop                                              ; $4b0b: $00
	rst  $38                                         ; $4b0c: $ff
	inc  a                                           ; $4b0d: $3c
	jp   $bd80                                       ; $4b0e: $c3 $80 $bd


	add  b                                           ; $4b11: $80
	and  [hl]                                        ; $4b12: $a6
	add  b                                           ; $4b13: $80
	rst  ToBoot                                         ; $4b14: $c7
	ld   a, [de]                                     ; $4b15: $1a
	nop                                              ; $4b16: $00
	rst  $38                                         ; $4b17: $ff
	rst  JumpTable                                         ; $4b18: $df
	rst  $38                                         ; $4b19: $ff
	ld   h, c                                        ; $4b1a: $61
	rst  $38                                         ; $4b1b: $ff
	ld   l, e                                        ; $4b1c: $6b
	rst  $38                                         ; $4b1d: $ff
	ei                                               ; $4b1e: $fb
	ld   a, a                                        ; $4b1f: $7f
	di                                               ; $4b20: $f3
	rst  $38                                         ; $4b21: $ff
	ldh  [c], a                                      ; $4b22: $e2
	rst  $38                                         ; $4b23: $ff
	ret  nz                                          ; $4b24: $c0

	rst  $38                                         ; $4b25: $ff
	add  l                                           ; $4b26: $85
	rst  $38                                         ; $4b27: $ff
	ld   bc, $0c0e                                   ; $4b28: $01 $0e $0c
	rrca                                             ; $4b2b: $0f
	ld   a, [bc]                                     ; $4b2c: $0a
	rlca                                             ; $4b2d: $07
	inc  b                                           ; $4b2e: $04
	inc  bc                                          ; $4b2f: $03
	ld   [bc], a                                     ; $4b30: $02
	add  c                                           ; $4b31: $81
	inc  bc                                          ; $4b32: $03
	nop                                              ; $4b33: $00
	ld   [bc], a                                     ; $4b34: $02
	add  b                                           ; $4b35: $80
	ld   bc, $0001                                   ; $4b36: $01 $01 $00
	ld   e, [hl]                                     ; $4b39: $5e
	add  c                                           ; $4b3a: $81
	rst  $38                                         ; $4b3b: $ff
	rlca                                             ; $4b3c: $07
	ld   [hl], e                                     ; $4b3d: $73
	di                                               ; $4b3e: $f3
	ld   l, l                                        ; $4b3f: $6d
	db   $ed                                         ; $4b40: $ed
	ld   h, l                                        ; $4b41: $65
	push hl                                          ; $4b42: $e5
	ld   h, l                                        ; $4b43: $65
	push hl                                          ; $4b44: $e5
	add  b                                           ; $4b45: $80
	db   $fd                                         ; $4b46: $fd
	add  b                                           ; $4b47: $80
	ei                                               ; $4b48: $fb
	nop                                              ; $4b49: $00
	ld   e, [hl]                                     ; $4b4a: $5e
	adc  l                                           ; $4b4b: $8d
	nop                                              ; $4b4c: $00
	nop                                              ; $4b4d: $00
	dec  b                                           ; $4b4e: $05
	add  c                                           ; $4b4f: $81
	rst  $38                                         ; $4b50: $ff
	rlca                                             ; $4b51: $07
	sbc  [hl]                                        ; $4b52: $9e

jr_015_4b53:
	sbc  a                                           ; $4b53: $9f
	ld   l, [hl]                                     ; $4b54: $6e
	ld   l, a                                        ; $4b55: $6f
	ld   l, $2f                                      ; $4b56: $2e $2f
	ld   l, $2f                                      ; $4b58: $2e $2f
	add  b                                           ; $4b5a: $80
	rst  $28                                         ; $4b5b: $ef
	add  b                                           ; $4b5c: $80
	rst  JumpTable                                         ; $4b5d: $df
	ld   [$7025], sp                                 ; $4b5e: $08 $25 $70
	jr   nc, jr_015_4b53                             ; $4b61: $30 $f0

	ld   d, b                                        ; $4b63: $50
	ldh  [rAUD4LEN], a                               ; $4b64: $e0 $20
	ret  nz                                          ; $4b66: $c0

	ld   b, b                                        ; $4b67: $40

jr_015_4b68:
	add  c                                           ; $4b68: $81
	ret  nz                                          ; $4b69: $c0

	nop                                              ; $4b6a: $00
	ld   b, b                                        ; $4b6b: $40
	add  b                                           ; $4b6c: $80
	add  b                                           ; $4b6d: $80
	add  d                                           ; $4b6e: $82
	nop                                              ; $4b6f: $00
	ld   bc, $0001                                   ; $4b70: $01 $01 $00
	add  c                                           ; $4b73: $81
	inc  bc                                          ; $4b74: $03
	add  hl, bc                                      ; $4b75: $09
	ld   [bc], a                                     ; $4b76: $02
	inc  bc                                          ; $4b77: $03
	nop                                              ; $4b78: $00
	rlca                                             ; $4b79: $07
	ld   [bc], a                                     ; $4b7a: $02
	rrca                                             ; $4b7b: $0f
	dec  c                                           ; $4b7c: $0d
	ld   c, $5c                                      ; $4b7d: $0e $5c
	rst  $30                                         ; $4b7f: $f7
	add  b                                           ; $4b80: $80
	rst  $28                                         ; $4b81: $ef
	add  b                                           ; $4b82: $80
	jp   hl                                          ; $4b83: $e9


	ld   b, $69                                      ; $4b84: $06 $69
	jp   hl                                          ; $4b86: $e9


	ld   l, l                                        ; $4b87: $6d
	db   $ed                                         ; $4b88: $ed
	ld   [hl], e                                     ; $4b89: $73
	di                                               ; $4b8a: $f3
	ld   a, a                                        ; $4b8b: $7f
	add  e                                           ; $4b8c: $83
	rst  $38                                         ; $4b8d: $ff
	ld   de, hScriptOpcodeParams                                   ; $4b8e: $11 $a0 $ff
	inc  bc                                          ; $4b91: $03
	rst  $38                                         ; $4b92: $ff
	ld   b, a                                        ; $4b93: $47
	rst  $38                                         ; $4b94: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b95: $cf
	rst  $38                                         ; $4b96: $ff
	sbc  $ff                                         ; $4b97: $de $ff
	sub  $ff                                         ; $4b99: $d6 $ff
	add  [hl]                                        ; $4b9b: $86
	rst  $38                                         ; $4b9c: $ff
	inc  b                                           ; $4b9d: $04
	nop                                              ; $4b9e: $00
	jr   c, jr_015_4b68                              ; $4b9f: $38 $c7

	add  b                                           ; $4ba1: $80
	and  [hl]                                        ; $4ba2: $a6
	add  b                                           ; $4ba3: $80
	cp   l                                           ; $4ba4: $bd
	add  b                                           ; $4ba5: $80
	jp   $0009                                       ; $4ba6: $c3 $09 $00


	rst  $38                                         ; $4ba9: $ff
	nop                                              ; $4baa: $00
	rst  $38                                         ; $4bab: $ff
	ld   b, b                                        ; $4bac: $40
	rst  $38                                         ; $4bad: $ff
	ld   b, b                                        ; $4bae: $40
	nop                                              ; $4baf: $00
	adc  [hl]                                        ; $4bb0: $8e
	ld   [hl], c                                     ; $4bb1: $71
	add  b                                           ; $4bb2: $80
	or   d                                           ; $4bb3: $b2
	add  b                                           ; $4bb4: $80
	sbc  $80                                         ; $4bb5: $de $80
	pop  hl                                          ; $4bb7: $e1
	dec  b                                           ; $4bb8: $05
	nop                                              ; $4bb9: $00
	rst  $38                                         ; $4bba: $ff
	nop                                              ; $4bbb: $00
	rst  $38                                         ; $4bbc: $ff
	nop                                              ; $4bbd: $00
	rst  $38                                         ; $4bbe: $ff
	add  b                                           ; $4bbf: $80
	nop                                              ; $4bc0: $00
	ld   bc, $c738                                   ; $4bc1: $01 $38 $c7
	add  b                                           ; $4bc4: $80
	and  [hl]                                        ; $4bc5: $a6
	add  b                                           ; $4bc6: $80
	cp   l                                           ; $4bc7: $bd
	add  b                                           ; $4bc8: $80
	jp   $0005                                       ; $4bc9: $c3 $05 $00


	rst  $38                                         ; $4bcc: $ff
	nop                                              ; $4bcd: $00
	rst  $38                                         ; $4bce: $ff
	nop                                              ; $4bcf: $00
	rst  $38                                         ; $4bd0: $ff
	add  b                                           ; $4bd1: $80
	nop                                              ; $4bd2: $00
	ld   bc, $718e                                   ; $4bd3: $01 $8e $71
	add  b                                           ; $4bd6: $80
	or   d                                           ; $4bd7: $b2
	add  b                                           ; $4bd8: $80
	sbc  $80                                         ; $4bd9: $de $80
	pop  hl                                          ; $4bdb: $e1
	rla                                              ; $4bdc: $17
	nop                                              ; $4bdd: $00
	rst  $38                                         ; $4bde: $ff
	nop                                              ; $4bdf: $00
	rst  $38                                         ; $4be0: $ff
	ld   [bc], a                                     ; $4be1: $02
	rst  $38                                         ; $4be2: $ff
	rlca                                             ; $4be3: $07
	rst  $38                                         ; $4be4: $ff
	add  l                                           ; $4be5: $85
	rst  $38                                         ; $4be6: $ff
	ret  nz                                          ; $4be7: $c0

	rst  $38                                         ; $4be8: $ff
	ldh  [c], a                                      ; $4be9: $e2
	rst  $38                                         ; $4bea: $ff
	di                                               ; $4beb: $f3
	rst  $38                                         ; $4bec: $ff
	ld   a, e                                        ; $4bed: $7b
	rst  $38                                         ; $4bee: $ff
	ld   l, e                                        ; $4bef: $6b
	rst  $38                                         ; $4bf0: $ff
	ld   h, c                                        ; $4bf1: $61
	rst  $38                                         ; $4bf2: $ff
	ld   h, l                                        ; $4bf3: $65
	cp   a                                           ; $4bf4: $bf
	add  b                                           ; $4bf5: $80
	ld   a, a                                        ; $4bf6: $7f
	add  b                                           ; $4bf7: $80
	ld   c, a                                        ; $4bf8: $4f
	ld   b, $4e                                      ; $4bf9: $06 $4e
	ld   c, a                                        ; $4bfb: $4f
	ld   l, [hl]                                     ; $4bfc: $6e
	ld   l, a                                        ; $4bfd: $6f
	sbc  [hl]                                        ; $4bfe: $9e
	sbc  a                                           ; $4bff: $9f
	cp   $81                                         ; $4c00: $fe $81
	rst  $38                                         ; $4c02: $ff
	nop                                              ; $4c03: $00
	dec  b                                           ; $4c04: $05
	add  b                                           ; $4c05: $80
	nop                                              ; $4c06: $00
	ld   bc, $0080                                   ; $4c07: $01 $80 $00
	add  c                                           ; $4c0a: $81
	ret  nz                                          ; $4c0b: $c0

	ld   a, [bc]                                     ; $4c0c: $0a
	ld   b, b                                        ; $4c0d: $40
	ret  nz                                          ; $4c0e: $c0

	nop                                              ; $4c0f: $00
	ldh  [rLCDC], a                                  ; $4c10: $e0 $40
	ldh  a, [$b0]                                    ; $4c12: $f0 $b0
	ld   [hl], b                                     ; $4c14: $70
	ld   d, a                                        ; $4c15: $57
	rrca                                             ; $4c16: $0f
	ld   [$0780], sp                                 ; $4c17: $08 $80 $07
	add  b                                           ; $4c1a: $80
	nop                                              ; $4c1b: $00
	ld   bc, $80ff                                   ; $4c1c: $01 $ff $80
	add  b                                           ; $4c1f: $80
	adc  a                                           ; $4c20: $8f
	ld   [bc], a                                     ; $4c21: $02
	cp   a                                           ; $4c22: $bf
	and  b                                           ; $4c23: $a0
	rst  $38                                         ; $4c24: $ff
	add  b                                           ; $4c25: $80
	ldh  a, [rSC]                                    ; $4c26: $f0 $02
	ld   e, a                                        ; $4c28: $5f
	ldh  [rAUD4LEN], a                               ; $4c29: $e0 $20
	add  b                                           ; $4c2b: $80
	ret  nz                                          ; $4c2c: $c0

	add  b                                           ; $4c2d: $80
	nop                                              ; $4c2e: $00
	ld   bc, $00ff                                   ; $4c2f: $01 $ff $00
	add  c                                           ; $4c32: $81
	rst  $38                                         ; $4c33: $ff
	ld   bc, $ff00                                   ; $4c34: $01 $00 $ff
	add  b                                           ; $4c37: $80
	nop                                              ; $4c38: $00
	ld   [bc], a                                     ; $4c39: $02
	rra                                              ; $4c3a: $1f
	ldh  a, [rAUD1SWEEP]                             ; $4c3b: $f0 $10
	add  b                                           ; $4c3d: $80
	ldh  [$80], a                                    ; $4c3e: $e0 $80
	nop                                              ; $4c40: $00
	ld   bc, $01ff                                   ; $4c41: $01 $ff $01
	add  c                                           ; $4c44: $81
	rst  $38                                         ; $4c45: $ff
	ld   bc, $ff07                                   ; $4c46: $01 $07 $ff
	add  b                                           ; $4c49: $80
	rrca                                             ; $4c4a: $0f
	nop                                              ; $4c4b: $00
	ld   sp, hl                                      ; $4c4c: $f9
	add  h                                           ; $4c4d: $84
	nop                                              ; $4c4e: $00
	ld   bc, $00ff                                   ; $4c4f: $01 $ff $00
	add  c                                           ; $4c52: $81
	rst  $38                                         ; $4c53: $ff
	ld   bc, $ff00                                   ; $4c54: $01 $00 $ff
	add  b                                           ; $4c57: $80
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	sub  b                                           ; $4c5a: $90
	adc  a                                           ; $4c5b: $8f
	ldh  a, [$80]                                    ; $4c5c: $f0 $80
	rst  $38                                         ; $4c5e: $ff
	nop                                              ; $4c5f: $00
	ldh  [$81], a                                    ; $4c60: $e0 $81
	rst  $38                                         ; $4c62: $ff
	nop                                              ; $4c63: $00
	add  b                                           ; $4c64: $80
	add  b                                           ; $4c65: $80
	rst  $38                                         ; $4c66: $ff
	add  e                                           ; $4c67: $83
	nop                                              ; $4c68: $00
	nop                                              ; $4c69: $00
	rst  $38                                         ; $4c6a: $ff
	xor  l                                           ; $4c6b: $ad
	nop                                              ; $4c6c: $00
	add  c                                           ; $4c6d: $81
	rst  $38                                         ; $4c6e: $ff
	add  d                                           ; $4c6f: $82
	cp   $80                                         ; $4c70: $fe $80
	db   $fc                                         ; $4c72: $fc
	add  b                                           ; $4c73: $80
	db   $f4                                         ; $4c74: $f4
	add  b                                           ; $4c75: $80
	ld   hl, sp-$7e                                  ; $4c76: $f8 $82
	db   $fc                                         ; $4c78: $fc
	adc  d                                           ; $4c79: $8a
	rst  $38                                         ; $4c7a: $ff
	add  d                                           ; $4c7b: $82
	ccf                                              ; $4c7c: $3f
	add  b                                           ; $4c7d: $80
	rst  $38                                         ; $4c7e: $ff
	add  b                                           ; $4c7f: $80
	ei                                               ; $4c80: $fb
	add  d                                           ; $4c81: $82
	ld   sp, hl                                      ; $4c82: $f9
	add  b                                           ; $4c83: $80
	ld   hl, sp-$80                                  ; $4c84: $f8 $80
	ldh  [$80], a                                    ; $4c86: $e0 $80
	db   $fd                                         ; $4c88: $fd
	add  b                                           ; $4c89: $80
	db   $fc                                         ; $4c8a: $fc
	add  b                                           ; $4c8b: $80
	rst  $38                                         ; $4c8c: $ff
	add  b                                           ; $4c8d: $80
	di                                               ; $4c8e: $f3
	add  b                                           ; $4c8f: $80
	sbc  e                                           ; $4c90: $9b
	add  b                                           ; $4c91: $80
	sbc  a                                           ; $4c92: $9f
	adc  d                                           ; $4c93: $8a
	rst  $38                                         ; $4c94: $ff
	add  d                                           ; $4c95: $82
	ei                                               ; $4c96: $fb
	add  h                                           ; $4c97: $84
	di                                               ; $4c98: $f3
	add  b                                           ; $4c99: $80
	rst  $20                                         ; $4c9a: $e7
	add  [hl]                                        ; $4c9b: $86
	rst  $38                                         ; $4c9c: $ff
	add  b                                           ; $4c9d: $80
	ld   a, a                                        ; $4c9e: $7f
	add  h                                           ; $4c9f: $84
	ccf                                              ; $4ca0: $3f
	add  d                                           ; $4ca1: $82
	rst  $38                                         ; $4ca2: $ff
	add  b                                           ; $4ca3: $80
	rst  $20                                         ; $4ca4: $e7
	add  b                                           ; $4ca5: $80
	and  $80                                         ; $4ca6: $e6 $80
	rst  $20                                         ; $4ca8: $e7
	add  b                                           ; $4ca9: $80
	add  $80                                         ; $4caa: $c6 $80
	call z, $cf80                                    ; $4cac: $cc $80 $cf
	add  b                                           ; $4caf: $80
	rst  $38                                         ; $4cb0: $ff
	add  b                                           ; $4cb1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cb2: $cf
	add  b                                           ; $4cb3: $80
	rrca                                             ; $4cb4: $0f
	add  b                                           ; $4cb5: $80
	ccf                                              ; $4cb6: $3f
	add  b                                           ; $4cb7: $80
	ld   c, a                                        ; $4cb8: $4f
	add  b                                           ; $4cb9: $80
	rrca                                             ; $4cba: $0f
	add  b                                           ; $4cbb: $80
	ccf                                              ; $4cbc: $3f
	add  b                                           ; $4cbd: $80
	ld   h, a                                        ; $4cbe: $67
	cp   $ff                                         ; $4cbf: $fe $ff
	add  d                                           ; $4cc1: $82
	pop  af                                          ; $4cc2: $f1
	add  b                                           ; $4cc3: $80
	ld   hl, sp-$7c                                  ; $4cc4: $f8 $84
	ld   sp, hl                                      ; $4cc6: $f9
	add  d                                           ; $4cc7: $82
	db   $fc                                         ; $4cc8: $fc
	add  d                                           ; $4cc9: $82
	rst  $38                                         ; $4cca: $ff
	add  b                                           ; $4ccb: $80
	ld   l, a                                        ; $4ccc: $6f
	add  d                                           ; $4ccd: $82
	rst  $28                                         ; $4cce: $ef
	add  b                                           ; $4ccf: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd0: $cf
	add  b                                           ; $4cd1: $80
	rra                                              ; $4cd2: $1f
	add  b                                           ; $4cd3: $80
	ccf                                              ; $4cd4: $3f
	add  b                                           ; $4cd5: $80
	ld   hl, sp-$80                                  ; $4cd6: $f8 $80
	ldh  a, [$80]                                    ; $4cd8: $f0 $80
	cp   $80                                         ; $4cda: $fe $80
	rst  $28                                         ; $4cdc: $ef
	add  b                                           ; $4cdd: $80
	xor  $80                                         ; $4cde: $ee $80
	rst  $20                                         ; $4ce0: $e7
	add  b                                           ; $4ce1: $80
	db   $e3                                         ; $4ce2: $e3
	add  b                                           ; $4ce3: $80
	ldh  a, [$80]                                    ; $4ce4: $f0 $80
	ld   a, a                                        ; $4ce6: $7f
	add  b                                           ; $4ce7: $80
	rst  $38                                         ; $4ce8: $ff
	add  b                                           ; $4ce9: $80
	ld   a, a                                        ; $4cea: $7f
	add  b                                           ; $4ceb: $80
	ccf                                              ; $4cec: $3f
	add  [hl]                                        ; $4ced: $86
	rst  $38                                         ; $4cee: $ff
	add  d                                           ; $4cef: $82
	rst  $20                                         ; $4cf0: $e7
	add  b                                           ; $4cf1: $80
	rst  $30                                         ; $4cf2: $f7
	add  h                                           ; $4cf3: $84
	cp   $80                                         ; $4cf4: $fe $80
	db   $fc                                         ; $4cf6: $fc
	add  b                                           ; $4cf7: $80
	ld   sp, hl                                      ; $4cf8: $f9
	add  [hl]                                        ; $4cf9: $86
	ccf                                              ; $4cfa: $3f
	add  d                                           ; $4cfb: $82
	ld   a, a                                        ; $4cfc: $7f
	add  d                                           ; $4cfd: $82
	rst  $38                                         ; $4cfe: $ff
	add  b                                           ; $4cff: $80
	sbc  h                                           ; $4d00: $9c
	add  b                                           ; $4d01: $80
	adc  h                                           ; $4d02: $8c
	add  b                                           ; $4d03: $80
	ld   c, a                                        ; $4d04: $4f
	add  b                                           ; $4d05: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d06: $cf
	add  b                                           ; $4d07: $80
	call $c982                                       ; $4d08: $cd $82 $c9
	add  b                                           ; $4d0b: $80
	adc  $80                                         ; $4d0c: $ce $80
	add  e                                           ; $4d0e: $83
	add  b                                           ; $4d0f: $80
	ld   [hl], c                                     ; $4d10: $71
	add  b                                           ; $4d11: $80
	ld   sp, hl                                      ; $4d12: $f9
	add  b                                           ; $4d13: $80
	ccf                                              ; $4d14: $3f
	add  b                                           ; $4d15: $80
	inc  sp                                          ; $4d16: $33
	add  h                                           ; $4d17: $84
	add  hl, sp                                      ; $4d18: $39
	db   $fd                                         ; $4d19: $fd
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	nop                                              ; $4d1c: $00
	rst  $38                                         ; $4d1d: $ff
	nop                                              ; $4d1e: $00
	rst  $38                                         ; $4d1f: $ff
	nop                                              ; $4d20: $00
	rst  $38                                         ; $4d21: $ff
	nop                                              ; $4d22: $00
	rst  $38                                         ; $4d23: $ff
	nop                                              ; $4d24: $00
	rst  $38                                         ; $4d25: $ff
	nop                                              ; $4d26: $00
	rst  $38                                         ; $4d27: $ff
	nop                                              ; $4d28: $00
	rst  $30                                         ; $4d29: $f7
	nop                                              ; $4d2a: $00
	and  l                                           ; $4d2b: $a5
	inc  bc                                          ; $4d2c: $03
	add  d                                           ; $4d2d: $82
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	rst  $38                                         ; $4d30: $ff
	add  b                                           ; $4d31: $80
	nop                                              ; $4d32: $00
	dec  b                                           ; $4d33: $05
	rst  $38                                         ; $4d34: $ff
	cp   $01                                         ; $4d35: $fe $01
	inc  b                                           ; $4d37: $04
	db   $fc                                         ; $4d38: $fc
	ld   hl, sp-$7f                                  ; $4d39: $f8 $81
	call z, $3300                                    ; $4d3b: $cc $00 $33
	add  c                                           ; $4d3e: $81
	nop                                              ; $4d3f: $00
	dec  b                                           ; $4d40: $05
	db   $fc                                         ; $4d41: $fc
	inc  b                                           ; $4d42: $04
	ld   c, $fa                                      ; $4d43: $0e $fa
	or   [hl]                                        ; $4d45: $b6
	ld   a, h                                        ; $4d46: $7c
	add  b                                           ; $4d47: $80
	inc  a                                           ; $4d48: $3c
	nop                                              ; $4d49: $00
	dec  a                                           ; $4d4a: $3d
	add  b                                           ; $4d4b: $80
	inc  a                                           ; $4d4c: $3c
	ld   bc, $c63d                                   ; $4d4d: $01 $3d $c6
	adc  d                                           ; $4d50: $8a
	nop                                              ; $4d51: $00
	inc  bc                                          ; $4d52: $03
	add  b                                           ; $4d53: $80
	ld   a, h                                        ; $4d54: $7c
	inc  b                                           ; $4d55: $04
	ld   hl, sp-$79                                  ; $4d56: $f8 $87
	nop                                              ; $4d58: $00
	ld   b, $ff                                      ; $4d59: $06 $ff
	nop                                              ; $4d5b: $00
	ld   [$f3fb], sp                                 ; $4d5c: $08 $fb $f3
	nop                                              ; $4d5f: $00
	rst  $38                                         ; $4d60: $ff
	add  a                                           ; $4d61: $87
	nop                                              ; $4d62: $00
	ld   b, $ff                                      ; $4d63: $06 $ff
	nop                                              ; $4d65: $00
	ccf                                              ; $4d66: $3f
	rst  $38                                         ; $4d67: $ff
	rst  ToBoot                                         ; $4d68: $c7
	rst  $38                                         ; $4d69: $ff
	rlca                                             ; $4d6a: $07
	add  a                                           ; $4d6b: $87
	nop                                              ; $4d6c: $00
	jr   @+$01                                       ; $4d6d: $18 $ff

	nop                                              ; $4d6f: $00
	ret  nc                                          ; $4d70: $d0

	rst  JumpTable                                         ; $4d71: $df
	rrca                                             ; $4d72: $0f
	nop                                              ; $4d73: $00
	rst  $38                                         ; $4d74: $ff
	nop                                              ; $4d75: $00
	inc  bc                                          ; $4d76: $03
	ld   [bc], a                                     ; $4d77: $02
	rrca                                             ; $4d78: $0f
	add  hl, bc                                      ; $4d79: $09
	dec  a                                           ; $4d7a: $3d
	daa                                              ; $4d7b: $27
	or   $9c                                         ; $4d7c: $f6 $9c
	ret  c                                           ; $4d7e: $d8

	ld   [hl], b                                     ; $4d7f: $70
	ld   l, h                                        ; $4d80: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d81: $cf
	add  e                                           ; $4d82: $83
	nop                                              ; $4d83: $00
	rst  $38                                         ; $4d84: $ff
	nop                                              ; $4d85: $00
	rst  $38                                         ; $4d86: $ff
	add  b                                           ; $4d87: $80
	nop                                              ; $4d88: $00
	add  b                                           ; $4d89: $80
	cp   $03                                         ; $4d8a: $fe $03
	nop                                              ; $4d8c: $00
	rst  $38                                         ; $4d8d: $ff
	nop                                              ; $4d8e: $00
	rst  $38                                         ; $4d8f: $ff
	add  b                                           ; $4d90: $80
	nop                                              ; $4d91: $00
	add  b                                           ; $4d92: $80
	rst  $38                                         ; $4d93: $ff
	dec  bc                                          ; $4d94: $0b
	nop                                              ; $4d95: $00
	ld   hl, sp+$03                                  ; $4d96: $f8 $03
	ei                                               ; $4d98: $fb
	inc  bc                                          ; $4d99: $03
	inc  l                                           ; $4d9a: $2c
	rst  $28                                         ; $4d9b: $ef
	ret  nz                                          ; $4d9c: $c0

	nop                                              ; $4d9d: $00
	rst  $38                                         ; $4d9e: $ff
	nop                                              ; $4d9f: $00
	rst  $38                                         ; $4da0: $ff
	add  b                                           ; $4da1: $80
	nop                                              ; $4da2: $00
	add  b                                           ; $4da3: $80
	rst  $38                                         ; $4da4: $ff
	dec  bc                                          ; $4da5: $0b
	nop                                              ; $4da6: $00
	rst  JumpTable                                         ; $4da7: $df
	ret  nz                                          ; $4da8: $c0

	rst  JumpTable                                         ; $4da9: $df
	ret  nz                                          ; $4daa: $c0

	db   $f4                                         ; $4dab: $f4
	rst  $30                                         ; $4dac: $f7
	inc  bc                                          ; $4dad: $03
	nop                                              ; $4dae: $00
	rst  $38                                         ; $4daf: $ff
	nop                                              ; $4db0: $00
	rst  $38                                         ; $4db1: $ff
	add  b                                           ; $4db2: $80
	nop                                              ; $4db3: $00
	add  b                                           ; $4db4: $80
	rst  $38                                         ; $4db5: $ff
	inc  bc                                          ; $4db6: $03
	nop                                              ; $4db7: $00
	rst  $38                                         ; $4db8: $ff
	nop                                              ; $4db9: $00
	rst  $38                                         ; $4dba: $ff
	add  b                                           ; $4dbb: $80
	nop                                              ; $4dbc: $00
	add  b                                           ; $4dbd: $80
	ld   a, a                                        ; $4dbe: $7f
	inc  bc                                          ; $4dbf: $03
	nop                                              ; $4dc0: $00
	rst  $38                                         ; $4dc1: $ff
	nop                                              ; $4dc2: $00
	rst  $38                                         ; $4dc3: $ff
	add  b                                           ; $4dc4: $80
	nop                                              ; $4dc5: $00
	add  b                                           ; $4dc6: $80
	rst  $38                                         ; $4dc7: $ff
	inc  bc                                          ; $4dc8: $03
	nop                                              ; $4dc9: $00
	rst  $38                                         ; $4dca: $ff
	nop                                              ; $4dcb: $00
	rst  $38                                         ; $4dcc: $ff
	add  b                                           ; $4dcd: $80
	nop                                              ; $4dce: $00
	add  b                                           ; $4dcf: $80
	rst  $38                                         ; $4dd0: $ff
	inc  bc                                          ; $4dd1: $03
	nop                                              ; $4dd2: $00
	rst  $38                                         ; $4dd3: $ff
	nop                                              ; $4dd4: $00
	rst  $38                                         ; $4dd5: $ff
	add  b                                           ; $4dd6: $80
	nop                                              ; $4dd7: $00
	add  b                                           ; $4dd8: $80
	rst  $38                                         ; $4dd9: $ff
	ld   bc, $ff00                                   ; $4dda: $01 $00 $ff
	sbc  l                                           ; $4ddd: $9d
	nop                                              ; $4dde: $00
	jr   jr_015_4e56                                 ; $4ddf: $18 $75

	inc  bc                                          ; $4de1: $03
	nop                                              ; $4de2: $00
	dec  h                                           ; $4de3: $25
	jr   nz, jr_015_4e08                             ; $4de4: $20 $22

	add  hl, hl                                      ; $4de6: $29
	jr   z, @+$11                                    ; $4de7: $28 $0f

	jr   nc, jr_015_4deb                             ; $4de9: $30 $00

jr_015_4deb:
	ld   e, [hl]                                     ; $4deb: $5e
	ld   c, $20                                      ; $4dec: $0e $20
	rra                                              ; $4dee: $1f
	nop                                              ; $4def: $00
	ld   c, $04                                      ; $4df0: $0e $04
	call nz, $e444                                   ; $4df2: $c4 $44 $e4
	and  h                                           ; $4df5: $a4
	ld   h, h                                        ; $4df6: $64
	call nz, $8284                                   ; $4df7: $c4 $84 $82
	ld   b, h                                        ; $4dfa: $44
	add  b                                           ; $4dfb: $80
	call nz, Call_015_4405                           ; $4dfc: $c4 $05 $44
	ld   d, c                                        ; $4dff: $51
	db   $fc                                         ; $4e00: $fc
	add  sp, -$28                                    ; $4e01: $e8 $d8
	ret  z                                           ; $4e03: $c8

	add  c                                           ; $4e04: $81
	call z, $cd01                                    ; $4e05: $cc $01 $cd

jr_015_4e08:
	ld   bc, $ff80                                   ; $4e08: $01 $80 $ff
	add  b                                           ; $4e0b: $80
	nop                                              ; $4e0c: $00
	dec  b                                           ; $4e0d: $05
	rst  $38                                         ; $4e0e: $ff
	nop                                              ; $4e0f: $00
	db   $eb                                         ; $4e10: $eb
	dec  h                                           ; $4e11: $25
	inc  [hl]                                        ; $4e12: $34
	dec  h                                           ; $4e13: $25
	add  b                                           ; $4e14: $80
	inc  a                                           ; $4e15: $3c
	db   $10                                         ; $4e16: $10
	dec  h                                           ; $4e17: $25
	inc  a                                           ; $4e18: $3c
	ld   [hl], h                                     ; $4e19: $74
	ld   a, h                                        ; $4e1a: $7c
	ret  z                                           ; $4e1b: $c8

	ld   a, [$0400]                                  ; $4e1c: $fa $00 $04
	ld   hl, sp+$00                                  ; $4e1f: $f8 $00
	or   [hl]                                        ; $4e21: $b6
	ld   a, d                                        ; $4e22: $7a
	ld   [hl], $0c                                   ; $4e23: $36 $0c
	add  sp, -$6c                                    ; $4e25: $e8 $94
	add  h                                           ; $4e27: $84
	add  [hl]                                        ; $4e28: $86
	inc  b                                           ; $4e29: $04
	ld   bc, $0e00                                   ; $4e2a: $01 $00 $0e
	add  a                                           ; $4e2d: $87
	nop                                              ; $4e2e: $00
	ld   [$00ff], sp                                 ; $4e2f: $08 $ff $00
	ld   [$f3fb], sp                                 ; $4e32: $08 $fb $f3
	nop                                              ; $4e35: $00
	rst  $38                                         ; $4e36: $ff
	nop                                              ; $4e37: $00
	rst  $38                                         ; $4e38: $ff
	add  b                                           ; $4e39: $80
	nop                                              ; $4e3a: $00
	add  b                                           ; $4e3b: $80
	ld   a, a                                        ; $4e3c: $7f
	inc  bc                                          ; $4e3d: $03
	nop                                              ; $4e3e: $00
	cp   $01                                         ; $4e3f: $fe $01
	rst  $38                                         ; $4e41: $ff
	add  b                                           ; $4e42: $80
	nop                                              ; $4e43: $00
	add  b                                           ; $4e44: $80
	ld   a, a                                        ; $4e45: $7f
	ld   bc, $ff00                                   ; $4e46: $01 $00 $ff
	cp   a                                           ; $4e49: $bf
	nop                                              ; $4e4a: $00
	ld   a, [bc]                                     ; $4e4b: $0a
	rra                                              ; $4e4c: $1f
	jr   nz, jr_015_4e5f                             ; $4e4d: $20 $10

	ld   e, a                                        ; $4e4f: $5f
	dec  l                                           ; $4e50: $2d
	ld   a, $1c                                      ; $4e51: $3e $1c
	inc  a                                           ; $4e53: $3c
	dec  a                                           ; $4e54: $3d
	inc  a                                           ; $4e55: $3c

jr_015_4e56:
	cp   h                                           ; $4e56: $bc
	add  b                                           ; $4e57: $80
	inc  a                                           ; $4e58: $3c
	inc  bc                                          ; $4e59: $03
	cp   h                                           ; $4e5a: $bc
	ld   b, d                                        ; $4e5b: $42
	nop                                              ; $4e5c: $00
	rst  $38                                         ; $4e5d: $ff
	add  b                                           ; $4e5e: $80

jr_015_4e5f:
	nop                                              ; $4e5f: $00
	add  b                                           ; $4e60: $80
	rst  $38                                         ; $4e61: $ff
	add  c                                           ; $4e62: $81
	nop                                              ; $4e63: $00
	ld   [bc], a                                     ; $4e64: $02
	cp   $02                                         ; $4e65: $fe $02
	ld   [hl-], a                                    ; $4e67: $32
	add  c                                           ; $4e68: $81
	nop                                              ; $4e69: $00
	ld   [bc], a                                     ; $4e6a: $02
	ld   sp, $ff00                                   ; $4e6b: $31 $00 $ff
	add  b                                           ; $4e6e: $80
	nop                                              ; $4e6f: $00
	add  b                                           ; $4e70: $80
	rst  $38                                         ; $4e71: $ff
	add  c                                           ; $4e72: $81
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	ldh  [$83], a                                    ; $4e75: $e0 $83
	nop                                              ; $4e77: $00
	ld   [bc], a                                     ; $4e78: $02
	rra                                              ; $4e79: $1f
	nop                                              ; $4e7a: $00
	rst  $38                                         ; $4e7b: $ff
	add  b                                           ; $4e7c: $80
	nop                                              ; $4e7d: $00
	add  b                                           ; $4e7e: $80
	rst  $38                                         ; $4e7f: $ff
	add  c                                           ; $4e80: $81
	nop                                              ; $4e81: $00
	ld   [bc], a                                     ; $4e82: $02
	ld   a, a                                        ; $4e83: $7f
	ld   b, b                                        ; $4e84: $40
	ld   c, h                                        ; $4e85: $4c
	add  c                                           ; $4e86: $81
	nop                                              ; $4e87: $00
	ld   [bc], a                                     ; $4e88: $02
	adc  h                                           ; $4e89: $8c
	nop                                              ; $4e8a: $00
	rst  $38                                         ; $4e8b: $ff
	add  b                                           ; $4e8c: $80
	nop                                              ; $4e8d: $00
	add  b                                           ; $4e8e: $80
	rst  $38                                         ; $4e8f: $ff
	add  c                                           ; $4e90: $81
	nop                                              ; $4e91: $00
	nop                                              ; $4e92: $00
	cp   b                                           ; $4e93: $b8
	add  b                                           ; $4e94: $80
	add  b                                           ; $4e95: $80
	add  c                                           ; $4e96: $81
	nop                                              ; $4e97: $00
	ld   [bc], a                                     ; $4e98: $02
	ld   b, a                                        ; $4e99: $47
	nop                                              ; $4e9a: $00
	rst  $38                                         ; $4e9b: $ff
	add  b                                           ; $4e9c: $80
	nop                                              ; $4e9d: $00
	add  b                                           ; $4e9e: $80
	rst  $38                                         ; $4e9f: $ff
	add  c                                           ; $4ea0: $81
	nop                                              ; $4ea1: $00
	ld   [bc], a                                     ; $4ea2: $02
	rst  $28                                         ; $4ea3: $ef
	ld   [$8109], sp                                 ; $4ea4: $08 $09 $81
	nop                                              ; $4ea7: $00
	ld   [bc], a                                     ; $4ea8: $02
	ld   de, $ff00                                   ; $4ea9: $11 $00 $ff
	add  b                                           ; $4eac: $80
	nop                                              ; $4ead: $00
	add  b                                           ; $4eae: $80
	rst  $38                                         ; $4eaf: $ff
	add  c                                           ; $4eb0: $81
	nop                                              ; $4eb1: $00
	ld   [bc], a                                     ; $4eb2: $02
	rst  $30                                         ; $4eb3: $f7
	db   $10                                         ; $4eb4: $10
	ldh  [$81], a                                    ; $4eb5: $e0 $81
	nop                                              ; $4eb7: $00
	rlca                                             ; $4eb8: $07
	ld   hl, sp+$00                                  ; $4eb9: $f8 $00
	cp   $02                                         ; $4ebb: $fe $02
	ld   b, $fc                                      ; $4ebd: $06 $fc
	rst  $38                                         ; $4ebf: $ff
	ld   b, $80                                      ; $4ec0: $06 $80
	ld   [bc], a                                     ; $4ec2: $02
	ld   [bc], a                                     ; $4ec3: $02
	ld   a, [$ca0a]                                  ; $4ec4: $fa $0a $ca
	add  c                                           ; $4ec7: $81
	ld   [bc], a                                     ; $4ec8: $02
	inc  bc                                          ; $4ec9: $03
	jp   nz, $820a                                   ; $4eca: $c2 $0a $82

	ld   b, d                                        ; $4ecd: $42
	add  c                                           ; $4ece: $81
	ld   a, [bc]                                     ; $4ecf: $0a
	ld   [bc], a                                     ; $4ed0: $02
	ld   [bc], a                                     ; $4ed1: $02
	ld   a, [hl-]                                    ; $4ed2: $3a
	ld   [bc], a                                     ; $4ed3: $02
	add  b                                           ; $4ed4: $80
	ld   b, $0e                                      ; $4ed5: $06 $0e
	db   $fc                                         ; $4ed7: $fc
	db   $fd                                         ; $4ed8: $fd
	nop                                              ; $4ed9: $00
	ld   [bc], a                                     ; $4eda: $02
	db   $fc                                         ; $4edb: $fc
	nop                                              ; $4edc: $00
	ld   a, a                                        ; $4edd: $7f
	ld   b, b                                        ; $4ede: $40
	ldh  [$bf], a                                    ; $4edf: $e0 $bf
	rst  $38                                         ; $4ee1: $ff
	ld   h, b                                        ; $4ee2: $60
	nop                                              ; $4ee3: $00
	ld   b, b                                        ; $4ee4: $40
	ld   b, e                                        ; $4ee5: $43
	add  e                                           ; $4ee6: $83
	ld   b, b                                        ; $4ee7: $40
	ld   [bc], a                                     ; $4ee8: $02
	cp   h                                           ; $4ee9: $bc
	nop                                              ; $4eea: $00
	rst  $38                                         ; $4eeb: $ff
	add  b                                           ; $4eec: $80
	nop                                              ; $4eed: $00
	add  b                                           ; $4eee: $80
	rst  $38                                         ; $4eef: $ff
	add  c                                           ; $4ef0: $81
	nop                                              ; $4ef1: $00
	nop                                              ; $4ef2: $00
	sbc  h                                           ; $4ef3: $9c
	add  c                                           ; $4ef4: $81
	nop                                              ; $4ef5: $00
	inc  b                                           ; $4ef6: $04
	jr   nz, jr_015_4f1d                             ; $4ef7: $20 $24

	ld   h, a                                        ; $4ef9: $67
	nop                                              ; $4efa: $00
	rst  $38                                         ; $4efb: $ff
	add  b                                           ; $4efc: $80
	nop                                              ; $4efd: $00
	add  b                                           ; $4efe: $80
	rst  $38                                         ; $4eff: $ff
	add  c                                           ; $4f00: $81
	nop                                              ; $4f01: $00
	ld   [bc], a                                     ; $4f02: $02
	rst  $38                                         ; $4f03: $ff
	add  c                                           ; $4f04: $81
	sbc  c                                           ; $4f05: $99
	add  c                                           ; $4f06: $81
	nop                                              ; $4f07: $00
	ld   [bc], a                                     ; $4f08: $02
	jr   jr_015_4f0b                                 ; $4f09: $18 $00

jr_015_4f0b:
	rst  $38                                         ; $4f0b: $ff
	add  b                                           ; $4f0c: $80
	nop                                              ; $4f0d: $00
	add  b                                           ; $4f0e: $80
	rst  $38                                         ; $4f0f: $ff
	add  c                                           ; $4f10: $81
	nop                                              ; $4f11: $00
	nop                                              ; $4f12: $00
	add  hl, sp                                      ; $4f13: $39
	add  b                                           ; $4f14: $80
	ld   [$0005], sp                                 ; $4f15: $08 $05 $00
	inc  b                                           ; $4f18: $04
	nop                                              ; $4f19: $00
	jp   nz, $ff00                                   ; $4f1a: $c2 $00 $ff

jr_015_4f1d:
	add  b                                           ; $4f1d: $80
	nop                                              ; $4f1e: $00
	add  b                                           ; $4f1f: $80
	rst  $38                                         ; $4f20: $ff
	add  c                                           ; $4f21: $81
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	adc  $80                                         ; $4f24: $ce $80
	ld   [bc], a                                     ; $4f26: $02
	dec  b                                           ; $4f27: $05
	nop                                              ; $4f28: $00
	ld   bc, $3000                                   ; $4f29: $01 $00 $30
	nop                                              ; $4f2c: $00
	rst  $38                                         ; $4f2d: $ff
	add  b                                           ; $4f2e: $80
	nop                                              ; $4f2f: $00
	add  b                                           ; $4f30: $80
	rst  $38                                         ; $4f31: $ff
	add  c                                           ; $4f32: $81
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	ld   [hl], e                                     ; $4f35: $73
	add  b                                           ; $4f36: $80
	ld   [bc], a                                     ; $4f37: $02
	add  c                                           ; $4f38: $81
	nop                                              ; $4f39: $00
	ld   [bc], a                                     ; $4f3a: $02
	adc  h                                           ; $4f3b: $8c
	nop                                              ; $4f3c: $00
	rst  $38                                         ; $4f3d: $ff
	add  b                                           ; $4f3e: $80
	nop                                              ; $4f3f: $00
	add  b                                           ; $4f40: $80
	rst  $38                                         ; $4f41: $ff
	add  c                                           ; $4f42: $81
	nop                                              ; $4f43: $00
	ld   [bc], a                                     ; $4f44: $02
	db   $fc                                         ; $4f45: $fc
	inc  b                                           ; $4f46: $04
	ld   h, h                                        ; $4f47: $64
	add  c                                           ; $4f48: $81
	nop                                              ; $4f49: $00
	ld   [de], a                                     ; $4f4a: $12
	sub  c                                           ; $4f4b: $91
	and  h                                           ; $4f4c: $a4
	xor  h                                           ; $4f4d: $ac
	and  h                                           ; $4f4e: $a4
	cp   h                                           ; $4f4f: $bc
	inc  a                                           ; $4f50: $3c
	and  b                                           ; $4f51: $a0
	inc  a                                           ; $4f52: $3c
	dec  a                                           ; $4f53: $3d
	inc  a                                           ; $4f54: $3c
	ld   e, $3e                                      ; $4f55: $1e $3e

jr_015_4f57:
	inc  bc                                          ; $4f57: $03
	ld   e, a                                        ; $4f58: $5f
	nop                                              ; $4f59: $00
	jr   nz, jr_015_4f7a                             ; $4f5a: $20 $1e

	ld   [bc], a                                     ; $4f5c: $02
	inc  a                                           ; $4f5d: $3c
	add  e                                           ; $4f5e: $83
	nop                                              ; $4f5f: $00
	nop                                              ; $4f60: $00
	ret  nz                                          ; $4f61: $c0

	add  c                                           ; $4f62: $81
	nop                                              ; $4f63: $00
	add  b                                           ; $4f64: $80
	rst  $38                                         ; $4f65: $ff
	add  b                                           ; $4f66: $80
	nop                                              ; $4f67: $00
	nop                                              ; $4f68: $00
	ldh  [$83], a                                    ; $4f69: $e0 $83
	nop                                              ; $4f6b: $00
	ld   [bc], a                                     ; $4f6c: $02
	rra                                              ; $4f6d: $1f
	add  c                                           ; $4f6e: $81
	ld   a, [hl]                                     ; $4f6f: $7e
	add  c                                           ; $4f70: $81
	nop                                              ; $4f71: $00
	add  b                                           ; $4f72: $80
	rst  $38                                         ; $4f73: $ff
	add  b                                           ; $4f74: $80
	nop                                              ; $4f75: $00
	ld   [bc], a                                     ; $4f76: $02

jr_015_4f77:
	ld   a, a                                        ; $4f77: $7f
	nop                                              ; $4f78: $00
	inc  c                                           ; $4f79: $0c

jr_015_4f7a:
	add  e                                           ; $4f7a: $83
	nop                                              ; $4f7b: $00
	nop                                              ; $4f7c: $00
	ld   [hl], e                                     ; $4f7d: $73
	add  c                                           ; $4f7e: $81
	nop                                              ; $4f7f: $00
	add  b                                           ; $4f80: $80
	rst  $38                                         ; $4f81: $ff
	add  b                                           ; $4f82: $80
	nop                                              ; $4f83: $00
	ld   [bc], a                                     ; $4f84: $02
	cp   a                                           ; $4f85: $bf
	jr   nz, jr_015_4fa0                             ; $4f86: $20 $18

	add  e                                           ; $4f88: $83
	nop                                              ; $4f89: $00
	nop                                              ; $4f8a: $00
	add  a                                           ; $4f8b: $87
	add  c                                           ; $4f8c: $81
	nop                                              ; $4f8d: $00
	add  b                                           ; $4f8e: $80
	rst  $38                                         ; $4f8f: $ff
	add  b                                           ; $4f90: $80
	nop                                              ; $4f91: $00
	ld   [bc], a                                     ; $4f92: $02
	rst  $28                                         ; $4f93: $ef
	jr   nz, jr_015_4f57                             ; $4f94: $20 $c1

	add  c                                           ; $4f96: $81
	nop                                              ; $4f97: $00
	ld   [bc], a                                     ; $4f98: $02
	ld   bc, $0708                                   ; $4f99: $01 $08 $07
	add  c                                           ; $4f9c: $81
	nop                                              ; $4f9d: $00
	add  b                                           ; $4f9e: $80
	rst  $38                                         ; $4f9f: $ff

jr_015_4fa0:
	add  b                                           ; $4fa0: $80
	nop                                              ; $4fa1: $00
	ld   [bc], a                                     ; $4fa2: $02
	rst  $30                                         ; $4fa3: $f7
	db   $10                                         ; $4fa4: $10
	ldh  [$81], a                                    ; $4fa5: $e0 $81
	nop                                              ; $4fa7: $00
	ld   [bc], a                                     ; $4fa8: $02
	ldh  a, [rAUD1SWEEP]                             ; $4fa9: $f0 $10
	rst  $20                                         ; $4fab: $e7
	add  c                                           ; $4fac: $81
	nop                                              ; $4fad: $00
	add  b                                           ; $4fae: $80
	rst  $38                                         ; $4faf: $ff
	add  b                                           ; $4fb0: $80
	nop                                              ; $4fb1: $00
	rlca                                             ; $4fb2: $07
	rst  $38                                         ; $4fb3: $ff
	nop                                              ; $4fb4: $00
	db   $fc                                         ; $4fb5: $fc
	inc  b                                           ; $4fb6: $04
	ld   c, $fa                                      ; $4fb7: $0e $fa
	or   [hl]                                        ; $4fb9: $b6
	ld   a, h                                        ; $4fba: $7c
	add  d                                           ; $4fbb: $82
	inc  a                                           ; $4fbc: $3c
	nop                                              ; $4fbd: $00
	dec  a                                           ; $4fbe: $3d
	add  b                                           ; $4fbf: $80
	inc  a                                           ; $4fc0: $3c
	inc  b                                           ; $4fc1: $04
	dec  a                                           ; $4fc2: $3d
	dec  l                                           ; $4fc3: $2d
	dec  h                                           ; $4fc4: $25
	inc  [hl]                                        ; $4fc5: $34
	dec  h                                           ; $4fc6: $25
	add  b                                           ; $4fc7: $80
	inc  a                                           ; $4fc8: $3c
	nop                                              ; $4fc9: $00
	dec  h                                           ; $4fca: $25
	add  c                                           ; $4fcb: $81
	inc  a                                           ; $4fcc: $3c
	add  b                                           ; $4fcd: $80
	ld   a, h                                        ; $4fce: $7c
	ld   [bc], a                                     ; $4fcf: $02
	ret  nz                                          ; $4fd0: $c0

	ld   a, [$8000]                                  ; $4fd1: $fa $00 $80
	inc  b                                           ; $4fd4: $04
	add  l                                           ; $4fd5: $85
	ld   b, b                                        ; $4fd6: $40
	inc  c                                           ; $4fd7: $0c
	ld   b, e                                        ; $4fd8: $43
	ld   b, b                                        ; $4fd9: $40
	jr   nz, jr_015_503c                             ; $4fda: $20 $60

	ccf                                              ; $4fdc: $3f
	cp   a                                           ; $4fdd: $bf
	nop                                              ; $4fde: $00
	ld   b, b                                        ; $4fdf: $40
	jr   c, jr_015_4fea                              ; $4fe0: $38 $08

	ld   c, h                                        ; $4fe2: $4c
	inc  h                                           ; $4fe3: $24
	inc  b                                           ; $4fe4: $04
	add  c                                           ; $4fe5: $81
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	sbc  h                                           ; $4fe8: $9c
	add  c                                           ; $4fe9: $81

jr_015_4fea:
	nop                                              ; $4fea: $00
	add  b                                           ; $4feb: $80
	rst  $38                                         ; $4fec: $ff
	add  b                                           ; $4fed: $80
	nop                                              ; $4fee: $00
	ld   [bc], a                                     ; $4fef: $02
	rst  $38                                         ; $4ff0: $ff
	nop                                              ; $4ff1: $00
	jr   jr_015_4f77                                 ; $4ff2: $18 $83

	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	rst  $20                                         ; $4ff6: $e7
	add  c                                           ; $4ff7: $81
	nop                                              ; $4ff8: $00
	add  b                                           ; $4ff9: $80
	rst  $38                                         ; $4ffa: $ff
	add  b                                           ; $4ffb: $80
	nop                                              ; $4ffc: $00
	inc  b                                           ; $4ffd: $04
	ccf                                              ; $4ffe: $3f
	nop                                              ; $4fff: $00

Call_015_5000:
	inc  b                                           ; $5000: $04
	nop                                              ; $5001: $00
	ld   [bc], a                                     ; $5002: $02
	add  b                                           ; $5003: $80
	nop                                              ; $5004: $00
	ld   bc, $3801                                   ; $5005: $01 $01 $38
	add  c                                           ; $5008: $81
	nop                                              ; $5009: $00
	add  b                                           ; $500a: $80
	rst  $38                                         ; $500b: $ff
	add  b                                           ; $500c: $80
	nop                                              ; $500d: $00
	ld   [bc], a                                     ; $500e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500f: $cf
	nop                                              ; $5010: $00
	ld   bc, $0083                                   ; $5011: $01 $83 $00
	nop                                              ; $5014: $00
	adc  $81                                         ; $5015: $ce $81
	nop                                              ; $5017: $00
	add  b                                           ; $5018: $80
	rst  $38                                         ; $5019: $ff
	add  b                                           ; $501a: $80
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	di                                               ; $501d: $f3
	add  c                                           ; $501e: $81
	nop                                              ; $501f: $00
	nop                                              ; $5020: $00
	add  b                                           ; $5021: $80
	add  b                                           ; $5022: $80
	nop                                              ; $5023: $00
	ld   bc, $3340                                   ; $5024: $01 $40 $33
	add  c                                           ; $5027: $81
	nop                                              ; $5028: $00
	add  b                                           ; $5029: $80
	rst  $38                                         ; $502a: $ff
	add  b                                           ; $502b: $80
	nop                                              ; $502c: $00
	ld   [bc], a                                     ; $502d: $02
	db   $fc                                         ; $502e: $fc
	nop                                              ; $502f: $00
	ld   h, b                                        ; $5030: $60
	add  e                                           ; $5031: $83
	nop                                              ; $5032: $00
	nop                                              ; $5033: $00
	sbc  h                                           ; $5034: $9c
	add  c                                           ; $5035: $81
	nop                                              ; $5036: $00
	add  b                                           ; $5037: $80
	rst  $38                                         ; $5038: $ff
	add  b                                           ; $5039: $80
	nop                                              ; $503a: $00
	ld   [bc], a                                     ; $503b: $02

jr_015_503c:
	ret  nz                                          ; $503c: $c0

	nop                                              ; $503d: $00
	ccf                                              ; $503e: $3f
	adc  e                                           ; $503f: $8b
	nop                                              ; $5040: $00
	add  d                                           ; $5041: $82
	rrca                                             ; $5042: $0f
	add  d                                           ; $5043: $82
	rra                                              ; $5044: $1f
	add  d                                           ; $5045: $82
	ccf                                              ; $5046: $3f
	add  d                                           ; $5047: $82
	ld   a, a                                        ; $5048: $7f
	add  d                                           ; $5049: $82
	nop                                              ; $504a: $00
	add  d                                           ; $504b: $82
	ld   bc, $0382                                   ; $504c: $01 $82 $03
	add  d                                           ; $504f: $82
	rlca                                             ; $5050: $07
	add  d                                           ; $5051: $82
	cp   $82                                         ; $5052: $fe $82
	db   $fc                                         ; $5054: $fc
	add  d                                           ; $5055: $82
	ld   hl, sp-$7e                                  ; $5056: $f8 $82
	ldh  a, [$82]                                    ; $5058: $f0 $82
	rrca                                             ; $505a: $0f
	add  d                                           ; $505b: $82
	rra                                              ; $505c: $1f
	add  d                                           ; $505d: $82
	ccf                                              ; $505e: $3f
	add  d                                           ; $505f: $82
	ld   a, a                                        ; $5060: $7f
	add  d                                           ; $5061: $82
	ldh  [$82], a                                    ; $5062: $e0 $82
	ret  nz                                          ; $5064: $c0

	add  d                                           ; $5065: $82
	add  b                                           ; $5066: $80
	add  d                                           ; $5067: $82
	nop                                              ; $5068: $00
	add  d                                           ; $5069: $82
	cp   $82                                         ; $506a: $fe $82
	db   $fc                                         ; $506c: $fc
	add  [hl]                                        ; $506d: $86
	nop                                              ; $506e: $00
	ld   [bc], a                                     ; $506f: $02
	ccf                                              ; $5070: $3f
	nop                                              ; $5071: $00
	ccf                                              ; $5072: $3f
	adc  e                                           ; $5073: $8b
	nop                                              ; $5074: $00
	inc  c                                           ; $5075: $0c
	ccf                                              ; $5076: $3f
	ret  nz                                          ; $5077: $c0

	sbc  a                                           ; $5078: $9f
	and  b                                           ; $5079: $a0
	rra                                              ; $507a: $1f
	ld   e, a                                        ; $507b: $5f
	scf                                              ; $507c: $37
	jr   c, jr_015_50a3                              ; $507d: $38 $24

	scf                                              ; $507f: $37
	inc  l                                           ; $5080: $2c
	jr   z, jr_015_50a3                              ; $5081: $28 $20

	add  c                                           ; $5083: $81
	jr   z, jr_015_5089                              ; $5084: $28 $03

	ld   l, a                                        ; $5086: $6f
	nop                                              ; $5087: $00
	rst  $38                                         ; $5088: $ff

jr_015_5089:
	nop                                              ; $5089: $00
	add  c                                           ; $508a: $81
	rst  $38                                         ; $508b: $ff
	add  b                                           ; $508c: $80
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	rst  $38                                         ; $508f: $ff
	add  b                                           ; $5090: $80
	nop                                              ; $5091: $00
	rlca                                             ; $5092: $07
	jr   nz, @+$12                                   ; $5093: $20 $10

	jr   nz, jr_015_509f                             ; $5095: $20 $08

	rst  $20                                         ; $5097: $e7
	nop                                              ; $5098: $00
	rst  $38                                         ; $5099: $ff
	nop                                              ; $509a: $00
	add  c                                           ; $509b: $81
	rst  $38                                         ; $509c: $ff
	add  b                                           ; $509d: $80
	nop                                              ; $509e: $00

jr_015_509f:
	nop                                              ; $509f: $00
	rst  $38                                         ; $50a0: $ff
	add  e                                           ; $50a1: $83
	nop                                              ; $50a2: $00

jr_015_50a3:
	inc  b                                           ; $50a3: $04
	ld   bc, $00fe                                   ; $50a4: $01 $fe $00
	rst  $38                                         ; $50a7: $ff
	nop                                              ; $50a8: $00
	add  c                                           ; $50a9: $81
	rst  $38                                         ; $50aa: $ff
	add  b                                           ; $50ab: $80
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	rst  $38                                         ; $50ae: $ff
	add  b                                           ; $50af: $80
	nop                                              ; $50b0: $00
	rlca                                             ; $50b1: $07
	add  [hl]                                        ; $50b2: $86
	ld   c, c                                        ; $50b3: $49
	inc  c                                           ; $50b4: $0c
	nop                                              ; $50b5: $00
	inc  a                                           ; $50b6: $3c
	nop                                              ; $50b7: $00
	rst  $38                                         ; $50b8: $ff
	nop                                              ; $50b9: $00
	add  c                                           ; $50ba: $81
	rst  $38                                         ; $50bb: $ff
	add  b                                           ; $50bc: $80
	nop                                              ; $50bd: $00
	nop                                              ; $50be: $00
	rst  $38                                         ; $50bf: $ff
	add  d                                           ; $50c0: $82
	nop                                              ; $50c1: $00
	dec  b                                           ; $50c2: $05
	add  b                                           ; $50c3: $80
	nop                                              ; $50c4: $00
	ld   a, a                                        ; $50c5: $7f
	nop                                              ; $50c6: $00
	rst  $38                                         ; $50c7: $ff
	nop                                              ; $50c8: $00
	add  c                                           ; $50c9: $81
	rst  $38                                         ; $50ca: $ff
	add  b                                           ; $50cb: $80
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	rst  $38                                         ; $50ce: $ff
	add  h                                           ; $50cf: $84
	nop                                              ; $50d0: $00
	inc  bc                                          ; $50d1: $03
	rst  $38                                         ; $50d2: $ff
	nop                                              ; $50d3: $00
	rst  $38                                         ; $50d4: $ff
	nop                                              ; $50d5: $00
	add  c                                           ; $50d6: $81
	rst  $38                                         ; $50d7: $ff
	add  b                                           ; $50d8: $80
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	rst  $38                                         ; $50db: $ff
	add  d                                           ; $50dc: $82
	nop                                              ; $50dd: $00
	dec  b                                           ; $50de: $05
	inc  bc                                          ; $50df: $03
	inc  b                                           ; $50e0: $04
	ld   hl, sp+$00                                  ; $50e1: $f8 $00
	rst  $38                                         ; $50e3: $ff
	nop                                              ; $50e4: $00
	add  c                                           ; $50e5: $81
	rst  $38                                         ; $50e6: $ff
	add  b                                           ; $50e7: $80
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
	rst  $38                                         ; $50ea: $ff
	add  e                                           ; $50eb: $83
	nop                                              ; $50ec: $00
	inc  b                                           ; $50ed: $04
	add  b                                           ; $50ee: $80
	ld   a, a                                        ; $50ef: $7f
	nop                                              ; $50f0: $00
	rst  $38                                         ; $50f1: $ff
	nop                                              ; $50f2: $00
	add  c                                           ; $50f3: $81
	rst  $38                                         ; $50f4: $ff
	add  b                                           ; $50f5: $80
	nop                                              ; $50f6: $00
	ld   [bc], a                                     ; $50f7: $02
	rst  $38                                         ; $50f8: $ff
	ld   [$8114], sp                                 ; $50f9: $08 $14 $81
	nop                                              ; $50fc: $00
	inc  b                                           ; $50fd: $04
	ld   [hl+], a                                    ; $50fe: $22
	jp   nz, $f802                                   ; $50ff: $c2 $02 $f8

	dec  b                                           ; $5102: $05
	add  b                                           ; $5103: $80
	cp   $05                                         ; $5104: $fe $05
	xor  $1e                                         ; $5106: $ee $1e
	ld   h, $ee                                      ; $5108: $26 $ee
	ld   h, $16                                      ; $510a: $26 $16
	add  d                                           ; $510c: $82
	ld   b, $0c                                      ; $510d: $06 $0c
	inc  [hl]                                        ; $510f: $34
	ret  nz                                          ; $5110: $c0

	sbc  a                                           ; $5111: $9f
	and  b                                           ; $5112: $a0
	rra                                              ; $5113: $1f
	ld   e, a                                        ; $5114: $5f
	scf                                              ; $5115: $37
	jr   c, jr_015_513c                              ; $5116: $38 $24

	scf                                              ; $5118: $37
	inc  l                                           ; $5119: $2c
	jr   z, jr_015_513c                              ; $511a: $28 $20

	add  c                                           ; $511c: $81
	jr   z, jr_015_5122                              ; $511d: $28 $03

	ld   l, a                                        ; $511f: $6f
	nop                                              ; $5120: $00
	rst  $38                                         ; $5121: $ff

jr_015_5122:
	nop                                              ; $5122: $00
	add  c                                           ; $5123: $81
	rst  $38                                         ; $5124: $ff

jr_015_5125:
	add  b                                           ; $5125: $80
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	rst  $38                                         ; $5128: $ff
	add  b                                           ; $5129: $80
	nop                                              ; $512a: $00
	rlca                                             ; $512b: $07
	jr   nz, jr_015_512e                             ; $512c: $20 $00

jr_015_512e:
	stop                                             ; $512e: $10 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5130: $cf
	nop                                              ; $5131: $00
	rst  $38                                         ; $5132: $ff
	nop                                              ; $5133: $00
	add  c                                           ; $5134: $81
	rst  $38                                         ; $5135: $ff
	add  b                                           ; $5136: $80
	nop                                              ; $5137: $00
	ld   a, [bc]                                     ; $5138: $0a
	rst  $38                                         ; $5139: $ff
	jr   jr_015_513c                                 ; $513a: $18 $00

jr_015_513c:
	inc  h                                           ; $513c: $24
	nop                                              ; $513d: $00
	ld   b, d                                        ; $513e: $42
	nop                                              ; $513f: $00
	add  c                                           ; $5140: $81
	nop                                              ; $5141: $00
	rst  $38                                         ; $5142: $ff
	nop                                              ; $5143: $00
	add  c                                           ; $5144: $81
	rst  $38                                         ; $5145: $ff
	add  b                                           ; $5146: $80
	nop                                              ; $5147: $00
	ld   a, [bc]                                     ; $5148: $0a
	rst  $38                                         ; $5149: $ff
	ld   [$0304], sp                                 ; $514a: $08 $04 $03
	nop                                              ; $514d: $00
	ld   [$f800], sp                                 ; $514e: $08 $00 $f8
	nop                                              ; $5151: $00
	rst  $38                                         ; $5152: $ff
	nop                                              ; $5153: $00
	add  c                                           ; $5154: $81
	rst  $38                                         ; $5155: $ff
	add  b                                           ; $5156: $80
	nop                                              ; $5157: $00
	nop                                              ; $5158: $00
	rst  $38                                         ; $5159: $ff
	add  h                                           ; $515a: $84
	nop                                              ; $515b: $00
	inc  bc                                          ; $515c: $03
	rst  $38                                         ; $515d: $ff
	nop                                              ; $515e: $00
	rst  $38                                         ; $515f: $ff
	nop                                              ; $5160: $00
	add  c                                           ; $5161: $81
	rst  $38                                         ; $5162: $ff
	add  b                                           ; $5163: $80
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	rst  $38                                         ; $5166: $ff
	add  h                                           ; $5167: $84
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	cp   b                                           ; $516a: $b8
	adc  l                                           ; $516b: $8d
	jr   z, jr_015_516e                              ; $516c: $28 $00

jr_015_516e:
	adc  b                                           ; $516e: $88
	add  b                                           ; $516f: $80
	nop                                              ; $5170: $00
	nop                                              ; $5171: $00
	inc  b                                           ; $5172: $04
	add  l                                           ; $5173: $85
	nop                                              ; $5174: $00
	dec  b                                           ; $5175: $05
	ld   bc, $2405                                   ; $5176: $01 $05 $24
	inc  b                                           ; $5179: $04
	nop                                              ; $517a: $00
	add  hl, sp                                      ; $517b: $39

jr_015_517c:
	add  l                                           ; $517c: $85
	nop                                              ; $517d: $00
	inc  c                                           ; $517e: $0c
	ld   [bc], a                                     ; $517f: $02
	inc  b                                           ; $5180: $04
	ld   hl, sp+$00                                  ; $5181: $f8 $00
	ldh  [rAUD4LEN], a                               ; $5183: $e0 $20
	ld   a, $00                                      ; $5185: $3e $00
	ldh  [c], a                                      ; $5187: $e2
	nop                                              ; $5188: $00
	ld   h, d                                        ; $5189: $62
	ld   [de], a                                     ; $518a: $12
	ld   [bc], a                                     ; $518b: $02
	add  b                                           ; $518c: $80
	nop                                              ; $518d: $00
	ld   [bc], a                                     ; $518e: $02
	jr   z, @+$42                                    ; $518f: $28 $40

	nop                                              ; $5191: $00
	add  b                                           ; $5192: $80
	ld   [$1805], sp                                 ; $5193: $08 $05 $18
	db   $10                                         ; $5196: $10
	ld   [hl], b                                     ; $5197: $70
	nop                                              ; $5198: $00
	ld   bc, $8c40                                   ; $5199: $01 $40 $8c
	nop                                              ; $519c: $00
	nop                                              ; $519d: $00
	ret  nz                                          ; $519e: $c0

	add  a                                           ; $519f: $87
	nop                                              ; $51a0: $00
	inc  bc                                          ; $51a1: $03
	ret  nz                                          ; $51a2: $c0

	jr   nz, jr_015_5125                             ; $51a3: $20 $80

	db   $10                                         ; $51a5: $10
	add  b                                           ; $51a6: $80
	nop                                              ; $51a7: $00
	nop                                              ; $51a8: $00
	ld   [hl], c                                     ; $51a9: $71
	add  b                                           ; $51aa: $80
	ld   [bc], a                                     ; $51ab: $02
	add  b                                           ; $51ac: $80
	nop                                              ; $51ad: $00
	nop                                              ; $51ae: $00
	ld   b, b                                        ; $51af: $40
	add  c                                           ; $51b0: $81
	nop                                              ; $51b1: $00
	rlca                                             ; $51b2: $07
	add  b                                           ; $51b3: $80
	nop                                              ; $51b4: $00
	ld   [bc], a                                     ; $51b5: $02
	inc  b                                           ; $51b6: $04
	ld   [$0010], sp                                 ; $51b7: $08 $10 $00
	rra                                              ; $51ba: $1f
	add  e                                           ; $51bb: $83
	nop                                              ; $51bc: $00
	add  c                                           ; $51bd: $81
	ld   b, b                                        ; $51be: $40
	add  c                                           ; $51bf: $81
	nop                                              ; $51c0: $00
	inc  b                                           ; $51c1: $04
	ld   b, b                                        ; $51c2: $40
	jr   nz, @+$12                                   ; $51c3: $20 $10

	nop                                              ; $51c5: $00
	adc  $8d                                         ; $51c6: $ce $8d

jr_015_51c8:
	nop                                              ; $51c8: $00
	nop                                              ; $51c9: $00
	inc  sp                                          ; $51ca: $33
	adc  l                                           ; $51cb: $8d
	ld   b, $00                                      ; $51cc: $06 $00
	or   e                                           ; $51ce: $b3
	adc  l                                           ; $51cf: $8d
	jr   z, jr_015_51d6                              ; $51d0: $28 $04

	xor  b                                           ; $51d2: $a8
	nop                                              ; $51d3: $00
	ld   h, $21                                      ; $51d4: $26 $21

jr_015_51d6:
	inc  hl                                          ; $51d6: $23
	add  b                                           ; $51d7: $80
	ld   [bc], a                                     ; $51d8: $02
	ld   bc, $1c00                                   ; $51d9: $01 $00 $1c
	add  c                                           ; $51dc: $81
	nop                                              ; $51dd: $00
	ld   [de], a                                     ; $51de: $12
	ld   bc, $0402                                   ; $51df: $01 $02 $04
	nop                                              ; $51e2: $00
	sbc  c                                           ; $51e3: $99
	ld   b, b                                        ; $51e4: $40
	jp   nz, $2400                                   ; $51e5: $c2 $00 $24

	nop                                              ; $51e8: $00
	ld   [$1040], sp                                 ; $51e9: $08 $40 $10
	nop                                              ; $51ec: $00
	and  b                                           ; $51ed: $a0
	nop                                              ; $51ee: $00
	ld   b, c                                        ; $51ef: $41
	ld   [bc], a                                     ; $51f0: $02
	add  h                                           ; $51f1: $84
	add  b                                           ; $51f2: $80
	ld   [$0081], sp                                 ; $51f3: $08 $81 $00
	ld   [bc], a                                     ; $51f6: $02
	add  b                                           ; $51f7: $80
	ld   b, b                                        ; $51f8: $40
	jr   c, jr_015_517c                              ; $51f9: $38 $81

	nop                                              ; $51fb: $00
	ld   [bc], a                                     ; $51fc: $02
	sbc  b                                           ; $51fd: $98
	sub  b                                           ; $51fe: $90
	ldh  a, [$80]                                    ; $51ff: $f0 $80
	nop                                              ; $5201: $00
	add  c                                           ; $5202: $81
	ld   [$0081], sp                                 ; $5203: $08 $81 $00
	nop                                              ; $5206: $00
	add  b                                           ; $5207: $80
	add  c                                           ; $5208: $81
	ld   bc, $1000                                   ; $5209: $01 $00 $10
	add  c                                           ; $520c: $81
	add  b                                           ; $520d: $80
	add  b                                           ; $520e: $80
	nop                                              ; $520f: $00
	ld   bc, $3e20                                   ; $5210: $01 $20 $3e
	add  c                                           ; $5213: $81
	nop                                              ; $5214: $00
	ld   b, $0f                                      ; $5215: $06 $0f
	db   $10                                         ; $5217: $10
	jr   nz, @+$42                                   ; $5218: $20 $40

	add  e                                           ; $521a: $83
	ld   [bc], a                                     ; $521b: $02
	cp   $83                                         ; $521c: $fe $83
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	cp   b                                           ; $5220: $b8
	adc  l                                           ; $5221: $8d
	jr   z, jr_015_5225                              ; $5222: $28 $01

	xor  b                                           ; $5224: $a8

jr_015_5225:
	nop                                              ; $5225: $00
	add  c                                           ; $5226: $81
	ld   [$4000], sp                                 ; $5227: $08 $00 $40
	adc  b                                           ; $522a: $88
	nop                                              ; $522b: $00
	nop                                              ; $522c: $00
	ld   [hl], c                                     ; $522d: $71
	adc  l                                           ; $522e: $8d
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	add  b                                           ; $5231: $80
	adc  d                                           ; $5232: $8a
	nop                                              ; $5233: $00
	nop                                              ; $5234: $00
	ld   b, b                                        ; $5235: $40
	add  b                                           ; $5236: $80
	nop                                              ; $5237: $00
	ld   [bc], a                                     ; $5238: $02
	ld   b, l                                        ; $5239: $45
	ld   b, d                                        ; $523a: $42
	ld   b, l                                        ; $523b: $45
	add  c                                           ; $523c: $81
	nop                                              ; $523d: $00
	add  c                                           ; $523e: $81
	ld   [bc], a                                     ; $523f: $02
	ld   bc, $0100                                   ; $5240: $01 $00 $01
	add  e                                           ; $5243: $83
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00
	jr   nc, jr_015_51c8                             ; $5246: $30 $80

	ld   b, b                                        ; $5248: $40
	ld   bc, $3000                                   ; $5249: $01 $00 $30
	add  b                                           ; $524c: $80
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	ld   bc, $0080                                   ; $524f: $01 $80 $00
	ld   bc, $0280                                   ; $5252: $01 $80 $02
	add  b                                           ; $5255: $80
	nop                                              ; $5256: $00
	rlca                                             ; $5257: $07
	ld   bc, $fe05                                   ; $5258: $01 $05 $fe
	inc  b                                           ; $525b: $04
	inc  c                                           ; $525c: $0c
	ld   [bc], a                                     ; $525d: $02
	stop                                             ; $525e: $10 $00
	add  b                                           ; $5260: $80
	jr   nz, @+$14                                   ; $5261: $20 $12

	ld   hl, $0125                                   ; $5263: $21 $25 $01
	nop                                              ; $5266: $00
	add  b                                           ; $5267: $80

jr_015_5268:
	adc  b                                           ; $5268: $88
	add  d                                           ; $5269: $82
	ld   [bc], a                                     ; $526a: $02
	sub  $40                                         ; $526b: $d6 $40
	db   $e4                                         ; $526d: $e4
	and  b                                           ; $526e: $a0
	or   b                                           ; $526f: $b0
	ld   [de], a                                     ; $5270: $12
	stop                                             ; $5271: $10 $00
	ld   [$0809], sp                                 ; $5273: $08 $09 $08
	add  e                                           ; $5276: $83
	nop                                              ; $5277: $00
	ld   bc, $0039                                   ; $5278: $01 $39 $00
	add  c                                           ; $527b: $81
	ld   [hl+], a                                    ; $527c: $22
	add  e                                           ; $527d: $83
	nop                                              ; $527e: $00
	add  c                                           ; $527f: $81
	inc  d                                           ; $5280: $14
	add  c                                           ; $5281: $81
	nop                                              ; $5282: $00
	nop                                              ; $5283: $00
	dec  b                                           ; $5284: $05
	adc  l                                           ; $5285: $8d
	ld   b, $00                                      ; $5286: $06 $00
	or   e                                           ; $5288: $b3
	adc  l                                           ; $5289: $8d
	jr   z, jr_015_5291                              ; $528a: $28 $05

	adc  [hl]                                        ; $528c: $8e
	nop                                              ; $528d: $00
	ld   h, d                                        ; $528e: $62
	nop                                              ; $528f: $00
	inc  bc                                          ; $5290: $03

jr_015_5291:
	nop                                              ; $5291: $00
	add  b                                           ; $5292: $80
	ld   b, c                                        ; $5293: $41
	inc  bc                                          ; $5294: $03
	ld   h, a                                        ; $5295: $67
	inc  h                                           ; $5296: $24
	inc  a                                           ; $5297: $3c
	ld   bc, $0080                                   ; $5298: $01 $80 $00
	rrca                                             ; $529b: $0f
	ld   [bc], a                                     ; $529c: $02
	nop                                              ; $529d: $00
	inc  e                                           ; $529e: $1c
	jr   nz, @+$42                                   ; $529f: $20 $40

	add  b                                           ; $52a1: $80
	ld   bc, wType0AnimSpriteXPosRelativeTo                                   ; $52a2: $01 $00 $c6
	inc  b                                           ; $52a5: $04
	ld   c, h                                        ; $52a6: $4c
	nop                                              ; $52a7: $00
	sub  b                                           ; $52a8: $90
	nop                                              ; $52a9: $00
	jr   nz, jr_015_52ac                             ; $52aa: $20 $00

jr_015_52ac:
	add  b                                           ; $52ac: $80
	ld   b, b                                        ; $52ad: $40
	ld   bc, $08c6                                   ; $52ae: $01 $c6 $08
	add  c                                           ; $52b1: $81
	nop                                              ; $52b2: $00
	nop                                              ; $52b3: $00
	db   $10                                         ; $52b4: $10
	add  c                                           ; $52b5: $81
	nop                                              ; $52b6: $00
	rlca                                             ; $52b7: $07
	jr   nz, @+$0b                                   ; $52b8: $20 $09

	nop                                              ; $52ba: $00
	db   $10                                         ; $52bb: $10
	ld   b, b                                        ; $52bc: $40
	xor  c                                           ; $52bd: $a9
	ld   hl, $80d9                                   ; $52be: $21 $d9 $80
	ld   [$4005], sp                                 ; $52c1: $08 $05 $40
	stop                                             ; $52c4: $10 $00
	jr   nz, jr_015_5268                             ; $52c6: $20 $a0

	ld   h, b                                        ; $52c8: $60
	add  b                                           ; $52c9: $80
	ld   b, b                                        ; $52ca: $40
	ld   bc, $8000                                   ; $52cb: $01 $00 $80
	add  c                                           ; $52ce: $81
	nop                                              ; $52cf: $00
	inc  bc                                          ; $52d0: $03
	ld   [bc], a                                     ; $52d1: $02
	nop                                              ; $52d2: $00
	inc  bc                                          ; $52d3: $03
	ld   [$0080], sp                                 ; $52d4: $08 $80 $00
	add  b                                           ; $52d7: $80
	ld   [$0f00], sp                                 ; $52d8: $08 $00 $0f
	add  l                                           ; $52db: $85
	nop                                              ; $52dc: $00
	nop                                              ; $52dd: $00
	cp   b                                           ; $52de: $b8
	adc  l                                           ; $52df: $8d
	jr   z, jr_015_52e2                              ; $52e0: $28 $00

jr_015_52e2:
	ldh  [$85], a                                    ; $52e2: $e0 $85
	nop                                              ; $52e4: $00
	ld   [$4841], sp                                 ; $52e5: $08 $41 $48
	ld   b, d                                        ; $52e8: $42
	nop                                              ; $52e9: $00
	dec  b                                           ; $52ea: $05
	ld   bc, $2021                                   ; $52eb: $01 $21 $20
	ccf                                              ; $52ee: $3f
	add  d                                           ; $52ef: $82
	nop                                              ; $52f0: $00
	dec  bc                                          ; $52f1: $0b
	ld   [bc], a                                     ; $52f2: $02
	sbc  h                                           ; $52f3: $9c
	nop                                              ; $52f4: $00
	cp   h                                           ; $52f5: $bc
	sub  h                                           ; $52f6: $94
	sub  [hl]                                        ; $52f7: $96
	db   $10                                         ; $52f8: $10
	ld   [bc], a                                     ; $52f9: $02
	inc  c                                           ; $52fa: $0c
	jr   nz, jr_015_52fd                             ; $52fb: $20 $00

jr_015_52fd:
	sbc  $86                                         ; $52fd: $de $86
	nop                                              ; $52ff: $00
	ld   [bc], a                                     ; $5300: $02
	jr   nz, jr_015_5303                             ; $5301: $20 $00

jr_015_5303:
	db   $10                                         ; $5303: $10
	add  b                                           ; $5304: $80
	ld   bc, $4102                                   ; $5305: $01 $02 $41
	ld   [$8638], sp                                 ; $5308: $08 $38 $86
	nop                                              ; $530b: $00
	nop                                              ; $530c: $00
	ld   b, b                                        ; $530d: $40
	add  b                                           ; $530e: $80
	nop                                              ; $530f: $00
	inc  b                                           ; $5310: $04
	jr   nz, jr_015_5313                             ; $5311: $20 $00

jr_015_5313:
	db   $10                                         ; $5313: $10
	add  hl, bc                                      ; $5314: $09
	rst  $38                                         ; $5315: $ff
	add  d                                           ; $5316: $82
	nop                                              ; $5317: $00
	inc  b                                           ; $5318: $04
	stop                                             ; $5319: $10 $00
	ld   bc, $2000                                   ; $531b: $01 $00 $20
	add  b                                           ; $531e: $80
	inc  d                                           ; $531f: $14
	dec  b                                           ; $5320: $05
	ld   d, h                                        ; $5321: $54
	nop                                              ; $5322: $00
	and  d                                           ; $5323: $a2
	ld   [hl+], a                                    ; $5324: $22
	adc  a                                           ; $5325: $8f
	db   $10                                         ; $5326: $10
	add  c                                           ; $5327: $81
	ld   b, h                                        ; $5328: $44
	add  c                                           ; $5329: $81
	nop                                              ; $532a: $00
	ld   [$0040], sp                                 ; $532b: $08 $40 $00
	sub  b                                           ; $532e: $90
	inc  b                                           ; $532f: $04
	jr   z, jr_015_5352                              ; $5330: $28 $20

	inc  h                                           ; $5332: $24
	ld   [bc], a                                     ; $5333: $02
	push bc                                          ; $5334: $c5
	add  e                                           ; $5335: $83
	nop                                              ; $5336: $00
	ld   a, [bc]                                     ; $5337: $0a
	ld   bc, $0109                                   ; $5338: $01 $09 $01
	nop                                              ; $533b: $00
	ld   [bc], a                                     ; $533c: $02
	ld   [de], a                                     ; $533d: $12
	ld   [bc], a                                     ; $533e: $02
	nop                                              ; $533f: $00
	inc  h                                           ; $5340: $24
	nop                                              ; $5341: $00
	jr   nc, @-$7b                                   ; $5342: $30 $83

	nop                                              ; $5344: $00
	add  c                                           ; $5345: $81
	ld   [$0002], sp                                 ; $5346: $08 $02 $00
	ld   [$8214], sp                                 ; $5349: $08 $14 $82
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	ld   de, $068d                                   ; $534e: $11 $8d $06
	nop                                              ; $5351: $00

jr_015_5352:
	or   e                                           ; $5352: $b3
	adc  l                                           ; $5353: $8d
	jr   z, jr_015_5357                              ; $5354: $28 $01

	sub  e                                           ; $5356: $93

jr_015_5357:
	inc  b                                           ; $5357: $04
	adc  b                                           ; $5358: $88
	nop                                              ; $5359: $00
	add  c                                           ; $535a: $81
	inc  b                                           ; $535b: $04
	ld   [bc], a                                     ; $535c: $02
	nop                                              ; $535d: $00
	add  d                                           ; $535e: $82
	nop                                              ; $535f: $00
	add  b                                           ; $5360: $80
	add  b                                           ; $5361: $80
	nop                                              ; $5362: $00
	add  c                                           ; $5363: $81
	add  b                                           ; $5364: $80
	ld   bc, $0082                                   ; $5365: $01 $82 $00
	nop                                              ; $5368: $00
	add  b                                           ; $5369: $80
	add  b                                           ; $536a: $80
	nop                                              ; $536b: $00
	ld   [bc], a                                     ; $536c: $02
	ld   b, b                                        ; $536d: $40
	nop                                              ; $536e: $00
	ld   a, $81                                      ; $536f: $3e $81
	nop                                              ; $5371: $00
	inc  c                                           ; $5372: $0c
	ld   [$1000], sp                                 ; $5373: $08 $00 $10
	nop                                              ; $5376: $00
	jr   nz, jr_015_5379                             ; $5377: $20 $00

jr_015_5379:
	ret  nz                                          ; $5379: $c0

	nop                                              ; $537a: $00
	jr   jr_015_537d                                 ; $537b: $18 $00

jr_015_537d:
	stop                                             ; $537d: $10 $00
	ld   [$0080], sp                                 ; $537f: $08 $80 $00
	nop                                              ; $5382: $00
	ld   bc, $0080                                   ; $5383: $01 $80 $00
	add  b                                           ; $5386: $80
	inc  b                                           ; $5387: $04
	ld   [bc], a                                     ; $5388: $02
	ld   b, $02                                      ; $5389: $06 $02
	inc  bc                                          ; $538b: $03
	add  e                                           ; $538c: $83
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	rst  $38                                         ; $538f: $ff
	add  b                                           ; $5390: $80
	nop                                              ; $5391: $00
	add  [hl]                                        ; $5392: $86
	inc  bc                                          ; $5393: $03
	add  d                                           ; $5394: $82
	nop                                              ; $5395: $00
	add  b                                           ; $5396: $80
	inc  bc                                          ; $5397: $03
	add  b                                           ; $5398: $80
	nop                                              ; $5399: $00
	add  b                                           ; $539a: $80
	rst  $28                                         ; $539b: $ef
	add  d                                           ; $539c: $82
	inc  c                                           ; $539d: $0c
	add  b                                           ; $539e: $80
	db   $ec                                         ; $539f: $ec
	add  d                                           ; $53a0: $82
	ld   l, h                                        ; $53a1: $6c
	add  b                                           ; $53a2: $80
	rst  $28                                         ; $53a3: $ef
	add  b                                           ; $53a4: $80
	nop                                              ; $53a5: $00
	add  b                                           ; $53a6: $80
	cp   [hl]                                        ; $53a7: $be
	adc  b                                           ; $53a8: $88
	ld   [hl], $80                                   ; $53a9: $36 $80
	cp   [hl]                                        ; $53ab: $be
	add  b                                           ; $53ac: $80
	nop                                              ; $53ad: $00
	add  b                                           ; $53ae: $80
	ei                                               ; $53af: $fb
	add  d                                           ; $53b0: $82
	db   $db                                         ; $53b1: $db
	add  b                                           ; $53b2: $80
	ei                                               ; $53b3: $fb
	add  b                                           ; $53b4: $80
	di                                               ; $53b5: $f3
	add  d                                           ; $53b6: $82
	db   $db                                         ; $53b7: $db
	add  b                                           ; $53b8: $80
	nop                                              ; $53b9: $00
	add  b                                           ; $53ba: $80
	db   $ec                                         ; $53bb: $ec
	add  b                                           ; $53bc: $80
	inc  c                                           ; $53bd: $0c
	add  b                                           ; $53be: $80
	nop                                              ; $53bf: $00
	add  b                                           ; $53c0: $80
	ret  nz                                          ; $53c1: $c0

	add  b                                           ; $53c2: $80
	nop                                              ; $53c3: $00
	add  b                                           ; $53c4: $80
	inc  c                                           ; $53c5: $0c
	ld   bc, $13ec                                   ; $53c6: $01 $ec $13
	sub  l                                           ; $53c9: $95
	nop                                              ; $53ca: $00
	ld   [$0001], sp                                 ; $53cb: $08 $01 $00
	rra                                              ; $53ce: $1f
	ld   bc, $1b7b                                   ; $53cf: $01 $7b $1b
	rst  $30                                         ; $53d2: $f7
	ld   [hl], a                                     ; $53d3: $77
	rst  $38                                         ; $53d4: $ff
	add  l                                           ; $53d5: $85
	nop                                              ; $53d6: $00
	inc  b                                           ; $53d7: $04
	ret  nz                                          ; $53d8: $c0

	nop                                              ; $53d9: $00
	ldh  [$c0], a                                    ; $53da: $e0 $c0
	ldh  a, [$81]                                    ; $53dc: $f0 $81
	ldh  [rP1], a                                    ; $53de: $e0 $00
	ldh  a, [$99]                                    ; $53e0: $f0 $99
	nop                                              ; $53e2: $00
	inc  b                                           ; $53e3: $04
	inc  bc                                          ; $53e4: $03
	nop                                              ; $53e5: $00
	ld   [bc], a                                     ; $53e6: $02
	nop                                              ; $53e7: $00
	ld   bc, $0081                                   ; $53e8: $01 $81 $00
	ld   b, $01                                      ; $53eb: $06 $01
	nop                                              ; $53ed: $00
	ld   bc, $3e00                                   ; $53ee: $01 $00 $3e
	nop                                              ; $53f1: $00
	pop  bc                                          ; $53f2: $c1
	add  b                                           ; $53f3: $80
	ld   a, $80                                      ; $53f4: $3e $80
	rst  $38                                         ; $53f6: $ff
	ld   bc, $c03f                                   ; $53f7: $01 $3f $c0
	add  e                                           ; $53fa: $83
	nop                                              ; $53fb: $00
	ld   b, $c0                                      ; $53fc: $06 $c0
	nop                                              ; $53fe: $00
	jr   nz, jr_015_5441                             ; $53ff: $20 $40

	ld   e, [hl]                                     ; $5401: $5e
	ld   h, b                                        ; $5402: $60
	ld   h, c                                        ; $5403: $61
	add  b                                           ; $5404: $80
	ld   l, [hl]                                     ; $5405: $6e
	ld   bc, $03fc                                   ; $5406: $01 $fc $03
	adc  c                                           ; $5409: $89
	nop                                              ; $540a: $00
	ld   [$0080], sp                                 ; $540b: $08 $80 $00
	add  b                                           ; $540e: $80
	nop                                              ; $540f: $00
	rst  $38                                         ; $5410: $ff
	nop                                              ; $5411: $00
	db   $fd                                         ; $5412: $fd
	ld   bc, $8900                                   ; $5413: $01 $00 $89
	ld   bc, $fd02                                   ; $5416: $01 $02 $fd
	nop                                              ; $5419: $00
	cp   a                                           ; $541a: $bf
	adc  e                                           ; $541b: $8b
	add  b                                           ; $541c: $80
	nop                                              ; $541d: $00
	ret  nz                                          ; $541e: $c0

	add  c                                           ; $541f: $81
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	rst  $38                                         ; $5422: $ff
	add  b                                           ; $5423: $80
	nop                                              ; $5424: $00
	add  b                                           ; $5425: $80
	rst  $38                                         ; $5426: $ff
	add  b                                           ; $5427: $80
	nop                                              ; $5428: $00
	add  h                                           ; $5429: $84
	call z, $0001                                    ; $542a: $cc $01 $00
	rst  $38                                         ; $542d: $ff
	adc  e                                           ; $542e: $8b
	nop                                              ; $542f: $00
	ld   [bc], a                                     ; $5430: $02
	rst  $38                                         ; $5431: $ff
	nop                                              ; $5432: $00
	rst  $38                                         ; $5433: $ff
	adc  e                                           ; $5434: $8b
	nop                                              ; $5435: $00
	ld   [bc], a                                     ; $5436: $02
	rst  $38                                         ; $5437: $ff
	nop                                              ; $5438: $00
	rst  $38                                         ; $5439: $ff
	xor  e                                           ; $543a: $ab
	nop                                              ; $543b: $00
	db   $10                                         ; $543c: $10
	inc  bc                                          ; $543d: $03
	nop                                              ; $543e: $00
	rst  $38                                         ; $543f: $ff
	nop                                              ; $5440: $00

jr_015_5441:
	cp   h                                           ; $5441: $bc
	jr   c, jr_015_548d                              ; $5442: $38 $49

	ld   c, $31                                      ; $5444: $0e $31
	nop                                              ; $5446: $00
	ld   a, [bc]                                     ; $5447: $0a
	nop                                              ; $5448: $00
	inc  c                                           ; $5449: $0c
	rlca                                             ; $544a: $07
	ld   e, $0e                                      ; $544b: $1e $0e
	rra                                              ; $544d: $1f
	add  b                                           ; $544e: $80
	ld   a, a                                        ; $544f: $7f
	db   $10                                         ; $5450: $10
	rst  $38                                         ; $5451: $ff
	sbc  a                                           ; $5452: $9f
	rra                                              ; $5453: $1f
	cp   $7e                                         ; $5454: $fe $7e
	cp   h                                           ; $5456: $bc
	inc  a                                           ; $5457: $3c
	ld   hl, sp+$30                                  ; $5458: $f8 $30
	dec  sp                                          ; $545a: $3b
	inc  h                                           ; $545b: $24
	and  b                                           ; $545c: $a0
	ld   b, b                                        ; $545d: $40
	ld   d, [hl]                                     ; $545e: $56
	ldh  [$ef], a                                    ; $545f: $e0 $ef
	xor  $80                                         ; $5461: $ee $80
	rst  $28                                         ; $5463: $ef
	add  b                                           ; $5464: $80
	ld   h, a                                        ; $5465: $67
	add  b                                           ; $5466: $80
	db   $db                                         ; $5467: $db
	inc  e                                           ; $5468: $1c
	dec  c                                           ; $5469: $0d
	inc  c                                           ; $546a: $0c
	db   $ec                                         ; $546b: $ec
	inc  c                                           ; $546c: $0c
	rlca                                             ; $546d: $07

jr_015_546e:
	ld   [de], a                                     ; $546e: $12
	dec  bc                                          ; $546f: $0b
	nop                                              ; $5470: $00
	add  b                                           ; $5471: $80
	nop                                              ; $5472: $00
	ret  nz                                          ; $5473: $c0

	add  b                                           ; $5474: $80
	ldh  [rP1], a                                    ; $5475: $e0 $00
	or   b                                           ; $5477: $b0
	nop                                              ; $5478: $00
	ret  c                                           ; $5479: $d8

	or   b                                           ; $547a: $b0
	call nz, Call_015_5c40                           ; $547b: $c4 $40 $5c
	nop                                              ; $547e: $00
	ld   [hl+], a                                    ; $547f: $22
	ld   bc, $0107                                   ; $5480: $01 $07 $01
	dec  c                                           ; $5483: $0d
	inc  bc                                          ; $5484: $03
	ld   a, [de]                                     ; $5485: $1a
	add  b                                           ; $5486: $80
	ld   a, [bc]                                     ; $5487: $0a
	ld   bc, $3b08                                   ; $5488: $01 $08 $3b
	add  c                                           ; $548b: $81
	inc  e                                           ; $548c: $1c

jr_015_548d:
	ld   [bc], a                                     ; $548d: $02
	inc  d                                           ; $548e: $14
	dec  d                                           ; $548f: $15
	ccf                                              ; $5490: $3f
	add  c                                           ; $5491: $81
	rst  $38                                         ; $5492: $ff
	add  b                                           ; $5493: $80
	ld   a, l                                        ; $5494: $7d
	add  b                                           ; $5495: $80
	ei                                               ; $5496: $fb
	ld   [bc], a                                     ; $5497: $02
	db   $db                                         ; $5498: $db
	sbc  c                                           ; $5499: $99
	push af                                          ; $549a: $f5
	add  b                                           ; $549b: $80
	ld   de, $8180                                   ; $549c: $11 $80 $81
	ld   bc, $fcb4                                   ; $549f: $01 $b4 $fc
	add  l                                           ; $54a2: $85
	rst  $38                                         ; $54a3: $ff
	add  b                                           ; $54a4: $80
	ei                                               ; $54a5: $fb
	ld   c, $db                                      ; $54a6: $0e $db
	ret  nc                                          ; $54a8: $d0

	sub  b                                           ; $54a9: $90
	ld   a, [bc]                                     ; $54aa: $0a
	add  b                                           ; $54ab: $80
	ld   d, l                                        ; $54ac: $55
	ld   a, e                                        ; $54ad: $7b
	nop                                              ; $54ae: $00
	ldh  [$c0], a                                    ; $54af: $e0 $c0
	or   b                                           ; $54b1: $b0
	jr   nz, jr_015_54fc                             ; $54b2: $20 $48

	add  b                                           ; $54b4: $80
	xor  b                                           ; $54b5: $a8
	add  b                                           ; $54b6: $80
	add  b                                           ; $54b7: $80
	dec  b                                           ; $54b8: $05
	ld   h, b                                        ; $54b9: $60
	ld   a, b                                        ; $54ba: $78
	ld   [hl], b                                     ; $54bb: $70
	jr   nc, jr_015_546e                             ; $54bc: $30 $b0

	ei                                               ; $54be: $fb
	adc  l                                           ; $54bf: $8d
	ld   bc, $4200                                   ; $54c0: $01 $00 $42
	adc  l                                           ; $54c3: $8d
	add  b                                           ; $54c4: $80
	ld   [bc], a                                     ; $54c5: $02
	cp   e                                           ; $54c6: $bb
	db   $fc                                         ; $54c7: $fc
	ld   a, b                                        ; $54c8: $78
	add  h                                           ; $54c9: $84
	jr   nc, jr_015_54cc                             ; $54ca: $30 $00

jr_015_54cc:
	nop                                              ; $54cc: $00
	add  b                                           ; $54cd: $80
	rst  $38                                         ; $54ce: $ff
	add  b                                           ; $54cf: $80
	nop                                              ; $54d0: $00
	nop                                              ; $54d1: $00
	rst  $38                                         ; $54d2: $ff
	adc  h                                           ; $54d3: $8c
	nop                                              ; $54d4: $00
	inc  bc                                          ; $54d5: $03
	ld   bc, $203e                                   ; $54d6: $01 $3e $20
	rra                                              ; $54d9: $1f
	add  c                                           ; $54da: $81
	nop                                              ; $54db: $00
	ld   [$203f], sp                                 ; $54dc: $08 $3f $20
	ld   [hl], b                                     ; $54df: $70
	ld   e, a                                        ; $54e0: $5f
	ld   l, l                                        ; $54e1: $6d
	ld   a, $1c                                      ; $54e2: $3e $1c
	inc  a                                           ; $54e4: $3c
	cp   h                                           ; $54e5: $bc
	add  b                                           ; $54e6: $80
	inc  a                                           ; $54e7: $3c
	ld   bc, $43bc                                   ; $54e8: $01 $bc $43
	add  c                                           ; $54eb: $81
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	rst  $38                                         ; $54ee: $ff
	add  b                                           ; $54ef: $80
	nop                                              ; $54f0: $00
	inc  bc                                          ; $54f1: $03
	rst  $38                                         ; $54f2: $ff
	ld   a, a                                        ; $54f3: $7f
	add  b                                           ; $54f4: $80
	nop                                              ; $54f5: $00
	add  c                                           ; $54f6: $81
	inc  sp                                          ; $54f7: $33
	ld   [bc], a                                     ; $54f8: $02
	scf                                              ; $54f9: $37
	ld   [hl], $cd                                   ; $54fa: $36 $cd

jr_015_54fc:
	add  c                                           ; $54fc: $81
	nop                                              ; $54fd: $00
	nop                                              ; $54fe: $00
	rst  $38                                         ; $54ff: $ff
	add  b                                           ; $5500: $80
	nop                                              ; $5501: $00
	add  b                                           ; $5502: $80
	rst  $38                                         ; $5503: $ff
	inc  bc                                          ; $5504: $03
	nop                                              ; $5505: $00
	ld   [$070f], sp                                 ; $5506: $08 $0f $07
	add  c                                           ; $5509: $81
	inc  c                                           ; $550a: $0c
	nop                                              ; $550b: $00
	di                                               ; $550c: $f3
	add  c                                           ; $550d: $81
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	rst  $38                                         ; $5510: $ff
	add  b                                           ; $5511: $80
	nop                                              ; $5512: $00
	add  b                                           ; $5513: $80
	rst  $38                                         ; $5514: $ff
	inc  bc                                          ; $5515: $03
	nop                                              ; $5516: $00
	ld   b, c                                        ; $5517: $41
	jp   $8182                                       ; $5518: $c3 $82 $81


	jp   $2d02                                       ; $551b: $c3 $02 $2d


	ld   c, $3d                                      ; $551e: $0e $3d
	add  c                                           ; $5520: $81
	dec  e                                           ; $5521: $1d
	ld   bc, $3d7d                                   ; $5522: $01 $7d $3d
	add  b                                           ; $5525: $80
	inc  sp                                          ; $5526: $33
	ld   [bc], a                                     ; $5527: $02
	adc  e                                           ; $5528: $8b
	inc  bc                                          ; $5529: $03
	di                                               ; $552a: $f3
	add  c                                           ; $552b: $81
	inc  bc                                          ; $552c: $03
	ld   d, $17                                      ; $552d: $16 $17
	nop                                              ; $552f: $00
	rrca                                             ; $5530: $0f
	jr   nz, jr_015_553b                             ; $5531: $20 $08

	ld   c, a                                        ; $5533: $4f
	ld   b, a                                        ; $5534: $47
	db   $d3                                         ; $5535: $d3
	sub  e                                           ; $5536: $93
	add  c                                           ; $5537: $81
	and  c                                           ; $5538: $a1
	add  e                                           ; $5539: $83
	ld   c, a                                        ; $553a: $4f

jr_015_553b:
	dec  hl                                          ; $553b: $2b
	ld   e, a                                        ; $553c: $5f
	ld   h, a                                        ; $553d: $67
	adc  c                                           ; $553e: $89
	nop                                              ; $553f: $00
	pop  af                                          ; $5540: $f1
	dec  b                                           ; $5541: $05
	ld   de, $e3f3                                   ; $5542: $11 $f3 $e3
	add  b                                           ; $5545: $80
	rrc  b                                           ; $5546: $cb $08
	add  e                                           ; $5548: $83
	sub  c                                           ; $5549: $91
	pop  bc                                          ; $554a: $c1
	push hl                                          ; $554b: $e5
	push de                                          ; $554c: $d5
	ld   sp, hl                                      ; $554d: $f9
	push hl                                          ; $554e: $e5
	inc  de                                          ; $554f: $13
	ldh  [$80], a                                    ; $5550: $e0 $80
	ld   h, b                                        ; $5552: $60
	nop                                              ; $5553: $00
	ld   a, b                                        ; $5554: $78
	add  c                                           ; $5555: $81
	ld   [hl], b                                     ; $5556: $70
	add  b                                           ; $5557: $80
	jr   nc, jr_015_556a                             ; $5558: $30 $10

	ld   e, h                                        ; $555a: $5c
	ld   e, b                                        ; $555b: $58
	ld   h, d                                        ; $555c: $62
	ld   h, b                                        ; $555d: $60
	ld   e, [hl]                                     ; $555e: $5e
	ld   b, b                                        ; $555f: $40
	jp   c, $1405                                    ; $5560: $da $05 $14

	inc  b                                           ; $5563: $04
	ld   h, $06                                      ; $5564: $26 $06
	ld   a, [bc]                                     ; $5566: $0a
	ld   [bc], a                                     ; $5567: $02
	ld   a, [bc]                                     ; $5568: $0a
	ld   [bc], a                                     ; $5569: $02

jr_015_556a:
	nop                                              ; $556a: $00
	add  b                                           ; $556b: $80
	inc  b                                           ; $556c: $04
	add  c                                           ; $556d: $81
	ld   b, $02                                      ; $556e: $06 $02
	pop  hl                                          ; $5570: $e1
	ld   d, l                                        ; $5571: $55
	ld   b, b                                        ; $5572: $40
	add  b                                           ; $5573: $80
	ld   [$8a01], a                                  ; $5574: $ea $01 $8a
	adc  b                                           ; $5577: $88
	add  b                                           ; $5578: $80
	ld   h, b                                        ; $5579: $60
	add  hl, bc                                      ; $557a: $09
	add  d                                           ; $557b: $82
	ldh  [c], a                                      ; $557c: $e2
	inc  bc                                          ; $557d: $03
	rrca                                             ; $557e: $0f
	xor  e                                           ; $557f: $ab
	rst  $38                                         ; $5580: $ff
	rst  ToBoot                                         ; $5581: $c7
	xor  $55                                         ; $5582: $ee $55
	ld   b, h                                        ; $5584: $44
	add  b                                           ; $5585: $80
	adc  $80                                         ; $5586: $ce $80
	pop  de                                          ; $5588: $d1
	add  b                                           ; $5589: $80
	add  $0a                                         ; $558a: $c6 $0a
	pop  bc                                          ; $558c: $c1
	db   $d3                                         ; $558d: $d3
	ret  nz                                          ; $558e: $c0

	db   $e4                                         ; $558f: $e4
	push de                                          ; $5590: $d5
	rst  $38                                         ; $5591: $ff
	db   $e3                                         ; $5592: $e3
	ld   c, b                                        ; $5593: $48
	or   b                                           ; $5594: $b0
	xor  b                                           ; $5595: $a8
	and  b                                           ; $5596: $a0
	add  b                                           ; $5597: $80
	jr   nz, jr_015_559e                             ; $5598: $20 $04

	ld   d, b                                        ; $559a: $50
	ld   b, b                                        ; $559b: $40
	ld   d, b                                        ; $559c: $50
	ld   b, b                                        ; $559d: $40

jr_015_559e:
	nop                                              ; $559e: $00
	add  b                                           ; $559f: $80
	jr   nz, @-$7d                                   ; $55a0: $20 $81

	ld   h, b                                        ; $55a2: $60
	nop                                              ; $55a3: $00
	ldh  [$87], a                                    ; $55a4: $e0 $87
	jr   nz, jr_015_55ae                             ; $55a6: $20 $06

	inc  hl                                          ; $55a8: $23
	ld   [hl+], a                                    ; $55a9: $22
	daa                                              ; $55aa: $27
	dec  h                                           ; $55ab: $25
	ld   h, $23                                      ; $55ac: $26 $23

jr_015_55ae:
	ld   d, [hl]                                     ; $55ae: $56
	add  a                                           ; $55af: $87
	nop                                              ; $55b0: $00
	nop                                              ; $55b1: $00
	rst  $38                                         ; $55b2: $ff
	add  b                                           ; $55b3: $80
	nop                                              ; $55b4: $00
	add  b                                           ; $55b5: $80
	cp   $01                                         ; $55b6: $fe $01
	nop                                              ; $55b8: $00
	rst  $38                                         ; $55b9: $ff
	add  a                                           ; $55ba: $87
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	rst  $38                                         ; $55bd: $ff
	add  b                                           ; $55be: $80
	nop                                              ; $55bf: $00
	add  b                                           ; $55c0: $80
	rst  $38                                         ; $55c1: $ff
	rlca                                             ; $55c2: $07
	nop                                              ; $55c3: $00
	sub  d                                           ; $55c4: $92
	ld   e, [hl]                                     ; $55c5: $5e
	ld   l, h                                        ; $55c6: $6c
	jr   nc, jr_015_55e0                             ; $55c7: $30 $17

	add  hl, hl                                      ; $55c9: $29
	ld   hl, $2086                                   ; $55ca: $21 $86 $20
	dec  d                                           ; $55cd: $15
	nop                                              ; $55ce: $00
	sbc  e                                           ; $55cf: $9b
	and  h                                           ; $55d0: $a4
	or   h                                           ; $55d1: $b4
	and  h                                           ; $55d2: $a4
	cp   h                                           ; $55d3: $bc
	inc  a                                           ; $55d4: $3c
	and  b                                           ; $55d5: $a0
	inc  a                                           ; $55d6: $3c
	ld   e, $3e                                      ; $55d7: $1e $3e
	inc  bc                                          ; $55d9: $03
	ld   e, a                                        ; $55da: $5f
	nop                                              ; $55db: $00
	jr   nz, jr_015_55fd                             ; $55dc: $20 $1f

	nop                                              ; $55de: $00
	rst  $38                                         ; $55df: $ff

jr_015_55e0:
	inc  a                                           ; $55e0: $3c
	jr   c, jr_015_5619                              ; $55e1: $38 $36

	ld   [hl-], a                                    ; $55e3: $32
	add  c                                           ; $55e4: $81
	inc  sp                                          ; $55e5: $33
	ld   bc, $80b3                                   ; $55e6: $01 $b3 $80
	add  b                                           ; $55e9: $80
	rst  $38                                         ; $55ea: $ff
	add  b                                           ; $55eb: $80
	nop                                              ; $55ec: $00
	ld   [bc], a                                     ; $55ed: $02
	rst  $38                                         ; $55ee: $ff
	nop                                              ; $55ef: $00
	rst  $38                                         ; $55f0: $ff
	add  b                                           ; $55f1: $80
	rrca                                             ; $55f2: $0f
	add  h                                           ; $55f3: $84
	inc  c                                           ; $55f4: $0c
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	add  b                                           ; $55f7: $80
	rst  $38                                         ; $55f8: $ff
	add  b                                           ; $55f9: $80
	nop                                              ; $55fa: $00
	ld   [bc], a                                     ; $55fb: $02
	rst  $38                                         ; $55fc: $ff

jr_015_55fd:
	nop                                              ; $55fd: $00
	rst  $38                                         ; $55fe: $ff
	add  [hl]                                        ; $55ff: $86
	jp   $0000                                      ; $5600: $c3 $00 $00


	add  b                                           ; $5603: $80
	rst  $38                                         ; $5604: $ff
	add  b                                           ; $5605: $80
	nop                                              ; $5606: $00
	inc  bc                                          ; $5607: $03
	rst  $38                                         ; $5608: $ff
	nop                                              ; $5609: $00
	dec  b                                           ; $560a: $05
	ld   [bc], a                                     ; $560b: $02
	add  d                                           ; $560c: $82
	ld   bc, $0202                                   ; $560d: $01 $02 $02
	nop                                              ; $5610: $00
	dec  b                                           ; $5611: $05
	add  l                                           ; $5612: $85
	nop                                              ; $5613: $00
	dec  l                                           ; $5614: $2d
	cp   $7f                                         ; $5615: $fe $7f
	ld   a, [hl]                                     ; $5617: $7e
	ld   a, a                                        ; $5618: $7f

jr_015_5619:
	dec  a                                           ; $5619: $3d
	ld   a, [hl]                                     ; $561a: $7e
	cp   h                                           ; $561b: $bc
	cp   l                                           ; $561c: $bd
	ld   l, l                                        ; $561d: $6d
	ld   e, a                                        ; $561e: $5f
	ld   l, e                                        ; $561f: $6b
	ld   b, a                                        ; $5620: $47
	and  e                                           ; $5621: $a3
	db   $10                                         ; $5622: $10
	add  a                                           ; $5623: $87
	rlca                                             ; $5624: $07
	sub  b                                           ; $5625: $90
	cp   $7e                                         ; $5626: $fe $7e
	cp   $bc                                         ; $5628: $fe $bc
	ld   a, [hl]                                     ; $562a: $7e
	dec  a                                           ; $562b: $3d
	cp   l                                           ; $562c: $bd
	or   [hl]                                        ; $562d: $b6

jr_015_562e:
	ld   a, [$e2d6]                                  ; $562e: $fa $d6 $e2
	push bc                                          ; $5631: $c5
	ld   [$e0e1], sp                                 ; $5632: $08 $e1 $e0
	ld   d, a                                        ; $5635: $57
	ld   b, b                                        ; $5636: $40

jr_015_5637:
	or   b                                           ; $5637: $b0
	add  b                                           ; $5638: $80
	sbc  b                                           ; $5639: $98
	add  b                                           ; $563a: $80
	ld   h, b                                        ; $563b: $60
	nop                                              ; $563c: $00
	sbc  h                                           ; $563d: $9c
	db   $10                                         ; $563e: $10
	jr   nc, jr_015_5641                             ; $563f: $30 $00

jr_015_5641:
	ld   [bc], a                                     ; $5641: $02
	inc  b                                           ; $5642: $04
	add  b                                           ; $5643: $80
	nop                                              ; $5644: $00
	inc  b                                           ; $5645: $04
	dec  d                                           ; $5646: $15
	ld   [bc], a                                     ; $5647: $02
	ld   b, $00                                      ; $5648: $06 $00
	inc  bc                                          ; $564a: $03
	adc  c                                           ; $564b: $89
	nop                                              ; $564c: $00
	inc  h                                           ; $564d: $24
	ld   a, [hl]                                     ; $564e: $7e
	rst  $38                                         ; $564f: $ff
	ld   a, [hl]                                     ; $5650: $7e
	ld   a, a                                        ; $5651: $7f
	dec  a                                           ; $5652: $3d
	ld   a, [hl]                                     ; $5653: $7e
	cp   h                                           ; $5654: $bc
	dec  a                                           ; $5655: $3d
	ld   l, l                                        ; $5656: $6d
	rra                                              ; $5657: $1f
	dec  hl                                          ; $5658: $2b
	rlca                                             ; $5659: $07
	ld   h, e                                        ; $565a: $63
	jr   jr_015_55e0                                 ; $565b: $18 $83

	ld   b, e                                        ; $565d: $43
	reti                                             ; $565e: $d9


	rst  $38                                         ; $565f: $ff
	ld   a, [hl]                                     ; $5660: $7e
	cp   $bc                                         ; $5661: $fe $bc
	ld   a, [hl]                                     ; $5663: $7e
	dec  a                                           ; $5664: $3d
	cp   h                                           ; $5665: $bc
	or   [hl]                                        ; $5666: $b6
	ld   hl, sp-$2c                                  ; $5667: $f8 $d4
	ldh  [$c6], a                                    ; $5669: $e0 $c6
	jr   jr_015_562e                                 ; $566b: $18 $c1

	jp   nz, Jump_015_4005                           ; $566d: $c2 $05 $40

	ld   h, b                                        ; $5670: $60
	nop                                              ; $5671: $00
	ret  nz                                          ; $5672: $c0

	adc  c                                           ; $5673: $89
	nop                                              ; $5674: $00
	ld   [de], a                                     ; $5675: $12
	rst  $38                                         ; $5676: $ff
	nop                                              ; $5677: $00
	ld   [hl-], a                                    ; $5678: $32
	di                                               ; $5679: $f3
	rrc  [hl]                                        ; $567a: $cb $0e
	inc  l                                           ; $567c: $2c
	add  hl, sp                                      ; $567d: $39
	or   d                                           ; $567e: $b2
	db   $e4                                         ; $567f: $e4
	ret  z                                           ; $5680: $c8

	sub  b                                           ; $5681: $90
	jr   nz, jr_015_56c4                             ; $5682: $20 $40

	add  b                                           ; $5684: $80
	nop                                              ; $5685: $00
	rst  $38                                         ; $5686: $ff
	nop                                              ; $5687: $00
	ld   [bc], a                                     ; $5688: $02
	add  b                                           ; $5689: $80
	cp   $04                                         ; $568a: $fe $04
	inc  bc                                          ; $568c: $03
	ld   sp, hl                                      ; $568d: $f9
	inc  b                                           ; $568e: $04
	ld   [bc], a                                     ; $568f: $02
	ld   bc, $0084                                   ; $5690: $01 $84 $00
	ld   c, $ff                                      ; $5693: $0e $ff
	nop                                              ; $5695: $00
	ld   h, b                                        ; $5696: $60
	ld   a, a                                        ; $5697: $7f
	sbc  a                                           ; $5698: $9f
	add  b                                           ; $5699: $80
	and  a                                           ; $569a: $a7
	ldh  [$6f], a                                    ; $569b: $e0 $6f
	jr   c, jr_015_5637                              ; $569d: $38 $98

	ld   c, a                                        ; $569f: $4f
	daa                                              ; $56a0: $27
	db   $10                                         ; $56a1: $10
	rrca                                             ; $56a2: $0f
	add  e                                           ; $56a3: $83
	nop                                              ; $56a4: $00
	nop                                              ; $56a5: $00
	rst  $38                                         ; $56a6: $ff
	add  b                                           ; $56a7: $80

jr_015_56a8:
	nop                                              ; $56a8: $00
	add  b                                           ; $56a9: $80
	rst  $38                                         ; $56aa: $ff
	add  b                                           ; $56ab: $80
	nop                                              ; $56ac: $00
	add  d                                           ; $56ad: $82
	jr   nc, jr_015_56b1                             ; $56ae: $30 $01

	or   b                                           ; $56b0: $b0

jr_015_56b1:
	ld   c, a                                        ; $56b1: $4f
	add  c                                           ; $56b2: $81
	nop                                              ; $56b3: $00
	nop                                              ; $56b4: $00
	rst  $38                                         ; $56b5: $ff
	add  b                                           ; $56b6: $80
	nop                                              ; $56b7: $00
	add  b                                           ; $56b8: $80
	rst  $38                                         ; $56b9: $ff
	inc  bc                                          ; $56ba: $03
	nop                                              ; $56bb: $00
	ld   b, b                                        ; $56bc: $40
	call z, $808c                                    ; $56bd: $cc $8c $80
	call z, $ec01                                    ; $56c0: $cc $01 $ec
	inc  de                                          ; $56c3: $13

jr_015_56c4:
	add  c                                           ; $56c4: $81
	nop                                              ; $56c5: $00
	nop                                              ; $56c6: $00
	rst  $38                                         ; $56c7: $ff
	add  b                                           ; $56c8: $80
	nop                                              ; $56c9: $00
	add  b                                           ; $56ca: $80
	rst  $38                                         ; $56cb: $ff
	inc  bc                                          ; $56cc: $03
	nop                                              ; $56cd: $00
	ld   hl, $1e3f                                   ; $56ce: $21 $3f $1e
	add  c                                           ; $56d1: $81
	inc  sp                                          ; $56d2: $33
	nop                                              ; $56d3: $00
	call z, $0081                                    ; $56d4: $cc $81 $00
	add  b                                           ; $56d7: $80
	add  b                                           ; $56d8: $80
	ld   [bc], a                                     ; $56d9: $02
	ret  nz                                          ; $56da: $c0

	ld   b, b                                        ; $56db: $40
	ret  nz                                          ; $56dc: $c0

	add  l                                           ; $56dd: $85
	add  b                                           ; $56de: $80
	nop                                              ; $56df: $00
	jp   $0080                                       ; $56e0: $c3 $80 $00


	adc  c                                           ; $56e3: $89

jr_015_56e4:
	ld   bc, $000a                                   ; $56e4: $01 $0a $00
	ld   bc, $0002                                   ; $56e7: $01 $02 $00
	inc  bc                                          ; $56ea: $03
	nop                                              ; $56eb: $00
	rlca                                             ; $56ec: $07
	nop                                              ; $56ed: $00
	ld   [bc], a                                     ; $56ee: $02
	nop                                              ; $56ef: $00
	inc  c                                           ; $56f0: $0c
	add  c                                           ; $56f1: $81
	ld   [bc], a                                     ; $56f2: $02
	ld   b, h                                        ; $56f3: $44
	ld   a, [de]                                     ; $56f4: $1a
	nop                                              ; $56f5: $00
	inc  b                                           ; $56f6: $04
	ld   bc, $073d                                   ; $56f7: $01 $3d $07
	ld   bc, $0503                                   ; $56fa: $01 $03 $05
	inc  b                                           ; $56fd: $04
	inc  bc                                          ; $56fe: $03
	dec  bc                                          ; $56ff: $0b
	inc  de                                          ; $5700: $13
	inc  hl                                          ; $5701: $23
	dec  b                                           ; $5702: $05
	ld   bc, $009a                                   ; $5703: $01 $9a $00
	ld   l, h                                        ; $5706: $6c
	nop                                              ; $5707: $00
	ld   sp, $80e0                                   ; $5708: $31 $e0 $80
	ret  nz                                          ; $570b: $c0

	and  b                                           ; $570c: $a0
	jr   nz, @-$3e                                   ; $570d: $20 $c0

	ret  nc                                          ; $570f: $d0

	ret  z                                           ; $5710: $c8

	call nz, $80a0                                   ; $5711: $c4 $a0 $80
	ld   e, c                                        ; $5714: $59
	nop                                              ; $5715: $00
	or   [hl]                                        ; $5716: $b6
	nop                                              ; $5717: $00
	or   l                                           ; $5718: $b5
	nop                                              ; $5719: $00
	ret  nz                                          ; $571a: $c0

	nop                                              ; $571b: $00
	ldh  [rP1], a                                    ; $571c: $e0 $00
	ld   b, b                                        ; $571e: $40
	nop                                              ; $571f: $00
	inc  l                                           ; $5720: $2c
	ld   b, b                                        ; $5721: $40
	ld   c, [hl]                                     ; $5722: $4e
	ld   b, b                                        ; $5723: $40
	ld   e, b                                        ; $5724: $58
	nop                                              ; $5725: $00
	jr   nz, jr_015_56a8                             ; $5726: $20 $80

	ld   l, c                                        ; $5728: $69
	nop                                              ; $5729: $00
	inc  bc                                          ; $572a: $03
	nop                                              ; $572b: $00
	inc  b                                           ; $572c: $04
	ld   [bc], a                                     ; $572d: $02
	ld   bc, $0e00                                   ; $572e: $01 $00 $0e
	nop                                              ; $5731: $00
	ld   [bc], a                                     ; $5732: $02
	nop                                              ; $5733: $00
	ld   a, [de]                                     ; $5734: $1a
	nop                                              ; $5735: $00
	inc  b                                           ; $5736: $04
	ld   bc, $8333                                   ; $5737: $01 $33 $83
	inc  bc                                          ; $573a: $03
	ld   a, [bc]                                     ; $573b: $0a
	db   $10                                         ; $573c: $10
	dec  d                                           ; $573d: $15
	ld   de, $0a21                                   ; $573e: $11 $21 $0a
	ld   [$0098], sp                                 ; $5741: $08 $98 $00
	ld   l, a                                        ; $5744: $6f
	nop                                              ; $5745: $00
	ld   b, d                                        ; $5746: $42
	add  e                                           ; $5747: $83
	ret  nz                                          ; $5748: $c0

	dec  e                                           ; $5749: $1d
	ld   [$8ca8], sp                                 ; $574a: $08 $a8 $8c
	add  h                                           ; $574d: $84
	ld   d, h                                        ; $574e: $54
	db   $10                                         ; $574f: $10
	sbc  c                                           ; $5750: $99
	nop                                              ; $5751: $00
	ld   [hl], $00                                   ; $5752: $36 $00
	and  a                                           ; $5754: $a7
	nop                                              ; $5755: $00
	ret  nz                                          ; $5756: $c0

	nop                                              ; $5757: $00
	jr   nz, jr_015_579a                             ; $5758: $20 $40

	add  b                                           ; $575a: $80
	nop                                              ; $575b: $00
	ld   [hl], b                                     ; $575c: $70
	nop                                              ; $575d: $00
	ld   b, b                                        ; $575e: $40
	nop                                              ; $575f: $00
	ld   e, b                                        ; $5760: $58
	nop                                              ; $5761: $00
	jr   nz, jr_015_56e4                             ; $5762: $20 $80

	sub  b                                           ; $5764: $90
	rst  $38                                         ; $5765: $ff
	rlca                                             ; $5766: $07
	rst  $38                                         ; $5767: $ff
	add  b                                           ; $5768: $80
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	rst  $38                                         ; $576b: $ff
	add  a                                           ; $576c: $87
	nop                                              ; $576d: $00
	ld   b, $ff                                      ; $576e: $06 $ff
	nop                                              ; $5770: $00
	ret  nc                                          ; $5771: $d0

	rst  JumpTable                                         ; $5772: $df
	rrca                                             ; $5773: $0f
	nop                                              ; $5774: $00
	rst  $38                                         ; $5775: $ff
	add  a                                           ; $5776: $87
	nop                                              ; $5777: $00
	nop                                              ; $5778: $00
	rst  $38                                         ; $5779: $ff
	add  b                                           ; $577a: $80
	nop                                              ; $577b: $00
	add  b                                           ; $577c: $80
	rst  $38                                         ; $577d: $ff
	ld   bc, $ff00                                   ; $577e: $01 $00 $ff
	add  a                                           ; $5781: $87
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	rst  $38                                         ; $5784: $ff
	add  b                                           ; $5785: $80
	ldh  a, [$80]                                    ; $5786: $f0 $80
	ld   [hl], b                                     ; $5788: $70
	inc  b                                           ; $5789: $04
	jr   nc, @+$12                                   ; $578a: $30 $10

	jr   nc, @+$12                                   ; $578c: $30 $10

	nop                                              ; $578e: $00
	add  b                                           ; $578f: $80
	rst  $38                                         ; $5790: $ff
	add  b                                           ; $5791: $80
	nop                                              ; $5792: $00
	ld   [bc], a                                     ; $5793: $02
	rst  $38                                         ; $5794: $ff
	nop                                              ; $5795: $00
	rst  $38                                         ; $5796: $ff
	add  b                                           ; $5797: $80
	db   $fc                                         ; $5798: $fc
	add  b                                           ; $5799: $80

jr_015_579a:
	call c, $cc04                                    ; $579a: $dc $04 $cc
	call nz, $c4cc                                   ; $579d: $c4 $cc $c4
	nop                                              ; $57a0: $00
	add  b                                           ; $57a1: $80
	rst  $38                                         ; $57a2: $ff
	add  b                                           ; $57a3: $80
	nop                                              ; $57a4: $00
	ld   [bc], a                                     ; $57a5: $02
	rst  $38                                         ; $57a6: $ff

jr_015_57a7:
	nop                                              ; $57a7: $00
	rst  $38                                         ; $57a8: $ff
	add  b                                           ; $57a9: $80
	ccf                                              ; $57aa: $3f
	add  h                                           ; $57ab: $84
	inc  sp                                          ; $57ac: $33
	nop                                              ; $57ad: $00
	nop                                              ; $57ae: $00
	add  b                                           ; $57af: $80
	rst  $38                                         ; $57b0: $ff
	add  b                                           ; $57b1: $80
	nop                                              ; $57b2: $00
	ld   [bc], a                                     ; $57b3: $02
	rst  $38                                         ; $57b4: $ff
	nop                                              ; $57b5: $00
	ld   b, b                                        ; $57b6: $40
	add  a                                           ; $57b7: $87
	add  b                                           ; $57b8: $80
	inc  bc                                          ; $57b9: $03
	nop                                              ; $57ba: $00
	ld   b, b                                        ; $57bb: $40
	nop                                              ; $57bc: $00
	add  b                                           ; $57bd: $80
	add  b                                           ; $57be: $80
	nop                                              ; $57bf: $00
	inc  b                                           ; $57c0: $04
	rlca                                             ; $57c1: $07
	inc  b                                           ; $57c2: $04
	rlca                                             ; $57c3: $07
	inc  bc                                          ; $57c4: $03
	nop                                              ; $57c5: $00
	add  b                                           ; $57c6: $80
	inc  bc                                          ; $57c7: $03
	add  b                                           ; $57c8: $80
	nop                                              ; $57c9: $00
	add  l                                           ; $57ca: $85
	inc  bc                                          ; $57cb: $03
	nop                                              ; $57cc: $00
	dec  de                                          ; $57cd: $1b
	add  b                                           ; $57ce: $80
	ld   [bc], a                                     ; $57cf: $02
	rlca                                             ; $57d0: $07
	dec  bc                                          ; $57d1: $0b
	ld   bc, $140b                                   ; $57d2: $01 $0b $14
	dec  b                                           ; $57d5: $05
	ld   [$0600], sp                                 ; $57d6: $08 $00 $06
	add  c                                           ; $57d9: $81
	nop                                              ; $57da: $00
	ld   [hl+], a                                    ; $57db: $22
	ld   [bc], a                                     ; $57dc: $02
	nop                                              ; $57dd: $00
	pop  de                                          ; $57de: $d1
	ldh  [$de], a                                    ; $57df: $e0 $de
	ldh  a, [$f3]                                    ; $57e1: $f0 $f3
	ldh  a, [rP1]                                    ; $57e3: $f0 $00
	ldh  [rAUD2HIGH], a                              ; $57e5: $e0 $19
	nop                                              ; $57e7: $00
	jp   hl                                          ; $57e8: $e9


	nop                                              ; $57e9: $00
	jp   nc, $2600                                   ; $57ea: $d2 $00 $26

	nop                                              ; $57ed: $00
	or   b                                           ; $57ee: $b0
	rlca                                             ; $57ef: $07
	db   $db                                         ; $57f0: $db
	rrca                                             ; $57f1: $0f
	ld   l, a                                        ; $57f2: $6f
	rrca                                             ; $57f3: $0f
	nop                                              ; $57f4: $00
	rlca                                             ; $57f5: $07
	adc  b                                           ; $57f6: $88
	nop                                              ; $57f7: $00
	ld   c, a                                        ; $57f8: $4f
	nop                                              ; $57f9: $00
	and  l                                           ; $57fa: $a5
	nop                                              ; $57fb: $00
	ld   d, d                                        ; $57fc: $52
	nop                                              ; $57fd: $00
	scf                                              ; $57fe: $37
	add  b                                           ; $57ff: $80
	ld   b, b                                        ; $5800: $40
	rlca                                             ; $5801: $07
	ret  nc                                          ; $5802: $d0

	add  b                                           ; $5803: $80
	ret  nc                                          ; $5804: $d0

	jr   z, jr_015_57a7                              ; $5805: $28 $a0

	stop                                             ; $5807: $10 $00
	ld   h, b                                        ; $5809: $60
	add  c                                           ; $580a: $81
	nop                                              ; $580b: $00
	ld   [bc], a                                     ; $580c: $02
	ld   b, b                                        ; $580d: $40
	nop                                              ; $580e: $00
	rst  JumpTable                                         ; $580f: $df
	add  b                                           ; $5810: $80
	ld   [bc], a                                     ; $5811: $02
	rlca                                             ; $5812: $07
	dec  bc                                          ; $5813: $0b
	ld   bc, $140b                                   ; $5814: $01 $0b $14
	dec  b                                           ; $5817: $05
	ld   [$0600], sp                                 ; $5818: $08 $00 $06
	add  c                                           ; $581b: $81
	nop                                              ; $581c: $00
	inc  c                                           ; $581d: $0c
	inc  bc                                          ; $581e: $03
	nop                                              ; $581f: $00
	sub  $e0                                         ; $5820: $d6 $e0
	call c, $f7f0                                    ; $5822: $dc $f0 $f7
	ldh  a, [$0a]                                    ; $5825: $f0 $0a
	ldh  [$08], a                                    ; $5827: $e0 $08
	inc  b                                           ; $5829: $04
	ldh  a, [$80]                                    ; $582a: $f0 $80
	db   $10                                         ; $582c: $10
	dec  c                                           ; $582d: $0d
	and  b                                           ; $582e: $a0
	and  [hl]                                        ; $582f: $a6
	ld   b, b                                        ; $5830: $40
	inc  b                                           ; $5831: $04
	rlca                                             ; $5832: $07
	db   $db                                         ; $5833: $db
	rrca                                             ; $5834: $0f
	ld   l, a                                        ; $5835: $6f
	rrca                                             ; $5836: $0f
	or   b                                           ; $5837: $b0
	rlca                                             ; $5838: $07
	jr   nc, jr_015_583b                             ; $5839: $30 $00

jr_015_583b:
	rra                                              ; $583b: $1f
	add  b                                           ; $583c: $80
	jr   z, jr_015_5842                              ; $583d: $28 $03

	ld   d, l                                        ; $583f: $55
	dec  d                                           ; $5840: $15
	ld   [bc], a                                     ; $5841: $02

jr_015_5842:
	jp   c, Jump_015_4080                            ; $5842: $da $80 $40

	rlca                                             ; $5845: $07
	ret  nc                                          ; $5846: $d0

	add  b                                           ; $5847: $80
	ret  nc                                          ; $5848: $d0

	jr   z, @-$5e                                    ; $5849: $28 $a0

	stop                                             ; $584b: $10 $00
	ld   h, b                                        ; $584d: $60
	add  c                                           ; $584e: $81
	nop                                              ; $584f: $00
	ld   [bc], a                                     ; $5850: $02
	ret  nz                                          ; $5851: $c0

	nop                                              ; $5852: $00
	cp   a                                           ; $5853: $bf
	add  b                                           ; $5854: $80
	nop                                              ; $5855: $00
	add  b                                           ; $5856: $80
	cp   $03                                         ; $5857: $fe $03
	nop                                              ; $5859: $00
	rst  $38                                         ; $585a: $ff
	nop                                              ; $585b: $00
	rst  $38                                         ; $585c: $ff
	add  b                                           ; $585d: $80
	nop                                              ; $585e: $00
	add  b                                           ; $585f: $80
	rst  $38                                         ; $5860: $ff
	inc  bc                                          ; $5861: $03
	nop                                              ; $5862: $00
	rst  $38                                         ; $5863: $ff
	nop                                              ; $5864: $00
	rst  $38                                         ; $5865: $ff
	add  b                                           ; $5866: $80
	nop                                              ; $5867: $00
	add  b                                           ; $5868: $80
	rst  $38                                         ; $5869: $ff
	inc  bc                                          ; $586a: $03
	nop                                              ; $586b: $00
	rst  $38                                         ; $586c: $ff
	nop                                              ; $586d: $00
	rst  $38                                         ; $586e: $ff
	add  b                                           ; $586f: $80
	nop                                              ; $5870: $00
	add  b                                           ; $5871: $80
	rst  $38                                         ; $5872: $ff
	inc  d                                           ; $5873: $14

jr_015_5874:
	nop                                              ; $5874: $00
	rst  $38                                         ; $5875: $ff
	nop                                              ; $5876: $00
	rst  $38                                         ; $5877: $ff
	nop                                              ; $5878: $00
	ld   b, $fe                                      ; $5879: $06 $fe
	ld   sp, hl                                      ; $587b: $f9
	ld   bc, $07e5                                   ; $587c: $01 $e5 $07
	or   $1c                                         ; $587f: $f6 $1c
	add  hl, de                                      ; $5881: $19
	ldh  a, [c]                                      ; $5882: $f2
	db   $e4                                         ; $5883: $e4
	ld   [$00f0], sp                                 ; $5884: $08 $f0 $00
	ret  nz                                          ; $5887: $c0

	nop                                              ; $5888: $00
	adc  h                                           ; $5889: $8c
	add  b                                           ; $588a: $80
	nop                                              ; $588b: $00
	ret  nz                                          ; $588c: $c0

	add  c                                           ; $588d: $81
	nop                                              ; $588e: $00
	add  b                                           ; $588f: $80
	ld   bc, $0304                                   ; $5890: $01 $04 $03
	ld   [bc], a                                     ; $5893: $02
	inc  bc                                          ; $5894: $03
	ld   bc, $8300                                   ; $5895: $01 $00 $83
	ld   bc, $0200                                   ; $5898: $01 $00 $02
	add  c                                           ; $589b: $81
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	rst  $38                                         ; $589e: $ff
	add  b                                           ; $589f: $80
	nop                                              ; $58a0: $00
	add  b                                           ; $58a1: $80
	rst  $38                                         ; $58a2: $ff
	inc  bc                                          ; $58a3: $03
	nop                                              ; $58a4: $00
	inc  b                                           ; $58a5: $04
	db   $fc                                         ; $58a6: $fc
	ld   hl, sp-$7f                                  ; $58a7: $f8 $81
	call z, $3300                                    ; $58a9: $cc $00 $33
	add  c                                           ; $58ac: $81
	nop                                              ; $58ad: $00
	nop                                              ; $58ae: $00
	rst  $38                                         ; $58af: $ff
	add  b                                           ; $58b0: $80
	nop                                              ; $58b1: $00
	add  b                                           ; $58b2: $80
	rst  $38                                         ; $58b3: $ff
	add  b                                           ; $58b4: $80
	nop                                              ; $58b5: $00
	add  e                                           ; $58b6: $83
	ret  nz                                          ; $58b7: $c0

	nop                                              ; $58b8: $00
	ccf                                              ; $58b9: $3f

jr_015_58ba:
	add  c                                           ; $58ba: $81
	nop                                              ; $58bb: $00
	nop                                              ; $58bc: $00
	rst  $38                                         ; $58bd: $ff
	add  b                                           ; $58be: $80
	nop                                              ; $58bf: $00
	add  b                                           ; $58c0: $80
	rst  $38                                         ; $58c1: $ff
	inc  bc                                          ; $58c2: $03
	nop                                              ; $58c3: $00
	add  h                                           ; $58c4: $84
	db   $fc                                         ; $58c5: $fc
	ld   a, b                                        ; $58c6: $78
	add  c                                           ; $58c7: $81
	call z, $3000                                    ; $58c8: $cc $00 $30
	add  c                                           ; $58cb: $81
	nop                                              ; $58cc: $00
	nop                                              ; $58cd: $00
	inc  b                                           ; $58ce: $04
	add  c                                           ; $58cf: $81
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	ld   [$0082], sp                                 ; $58d2: $08 $82 $00
	rlca                                             ; $58d5: $07
	rlca                                             ; $58d6: $07
	rla                                              ; $58d7: $17
	rrca                                             ; $58d8: $0f
	rst  $28                                         ; $58d9: $ef
	nop                                              ; $58da: $00
	ld   bc, $0200                                   ; $58db: $01 $00 $02
	add  c                                           ; $58de: $81
	nop                                              ; $58df: $00
	nop                                              ; $58e0: $00
	inc  b                                           ; $58e1: $04
	add  c                                           ; $58e2: $81
	nop                                              ; $58e3: $00
	ld   [$8088], sp                                 ; $58e4: $08 $88 $80
	nop                                              ; $58e7: $00
	ldh  [$ef], a                                    ; $58e8: $e0 $ef
	nop                                              ; $58ea: $00
	add  b                                           ; $58eb: $80
	nop                                              ; $58ec: $00
	ld   b, b                                        ; $58ed: $40
	add  c                                           ; $58ee: $81
	nop                                              ; $58ef: $00
	nop                                              ; $58f0: $00
	jr   nz, jr_015_5874                             ; $58f1: $20 $81

	nop                                              ; $58f3: $00
	inc  b                                           ; $58f4: $04
	ld   de, $0001                                   ; $58f5: $11 $01 $00
	rlca                                             ; $58f8: $07
	ret  z                                           ; $58f9: $c8

	add  c                                           ; $58fa: $81
	nop                                              ; $58fb: $00
	nop                                              ; $58fc: $00
	jr   nz, @-$7d                                   ; $58fd: $20 $81

	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	db   $10                                         ; $5901: $10
	add  d                                           ; $5902: $82
	nop                                              ; $5903: $00
	ld   [$e8e0], sp                                 ; $5904: $08 $e0 $e8
	ldh  a, [$0a]                                    ; $5907: $f0 $0a
	nop                                              ; $5909: $00
	ld   bc, $0500                                   ; $590a: $01 $00 $05
	ld   [bc], a                                     ; $590d: $02
	add  b                                           ; $590e: $80
	nop                                              ; $590f: $00
	ld   bc, $0408                                   ; $5910: $01 $08 $04
	add  b                                           ; $5913: $80
	nop                                              ; $5914: $00
	ld   bc, $0810                                   ; $5915: $01 $10 $08
	add  b                                           ; $5918: $80
	nop                                              ; $5919: $00
	rlca                                             ; $591a: $07
	ld   de, $54aa                                   ; $591b: $11 $aa $54
	nop                                              ; $591e: $00
	ld   sp, hl                                      ; $591f: $f9
	inc  b                                           ; $5920: $04
	ld   b, $00                                      ; $5921: $06 $00
	add  b                                           ; $5923: $80
	ld   [$0c00], sp                                 ; $5924: $08 $00 $0c
	add  c                                           ; $5927: $81
	nop                                              ; $5928: $00
	add  b                                           ; $5929: $80
	db   $10                                         ; $592a: $10
	rlca                                             ; $592b: $07
	jr   z, jr_015_5943                              ; $592c: $28 $15

	jp   z, $9f00                                    ; $592e: $ca $00 $9f

	jr   nz, jr_015_5993                             ; $5931: $20 $60

	nop                                              ; $5933: $00
	add  b                                           ; $5934: $80
	stop                                             ; $5935: $10 $00
	jr   nc, jr_015_58ba                             ; $5937: $30 $81

	nop                                              ; $5939: $00
	add  b                                           ; $593a: $80
	ld   [$5005], sp                                 ; $593b: $08 $05 $50
	nop                                              ; $593e: $00
	add  b                                           ; $593f: $80
	nop                                              ; $5940: $00
	and  b                                           ; $5941: $a0
	ld   b, b                                        ; $5942: $40

jr_015_5943:
	add  b                                           ; $5943: $80
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	jr   nc, @-$7d                                   ; $5946: $30 $81

	nop                                              ; $5948: $00
	ld   bc, $1008                                   ; $5949: $01 $08 $10
	add  b                                           ; $594c: $80
	nop                                              ; $594d: $00
	jr   nz, @-$07                                   ; $594e: $20 $f7

	nop                                              ; $5950: $00
	ld   c, h                                        ; $5951: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5952: $cf
	db   $d3                                         ; $5953: $d3
	ld   [hl], b                                     ; $5954: $70
	inc  [hl]                                        ; $5955: $34
	sbc  h                                           ; $5956: $9c
	ld   c, l                                        ; $5957: $4d
	daa                                              ; $5958: $27
	inc  de                                          ; $5959: $13
	add  hl, bc                                      ; $595a: $09
	inc  b                                           ; $595b: $04
	ld   [bc], a                                     ; $595c: $02
	ld   bc, $ef00                                   ; $595d: $01 $00 $ef
	nop                                              ; $5960: $00
	jr   jr_015_5963                                 ; $5961: $18 $00

jr_015_5963:
	stop                                             ; $5963: $10 $00
	ld   c, l                                        ; $5965: $4d
	nop                                              ; $5966: $00
	rst  $38                                         ; $5967: $ff
	nop                                              ; $5968: $00
	or   d                                           ; $5969: $b2
	nop                                              ; $596a: $00
	ld   [$1800], sp                                 ; $596b: $08 $00 $18
	nop                                              ; $596e: $00
	rst  $30                                         ; $596f: $f7
	add  c                                           ; $5970: $81
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	rst  $38                                         ; $5973: $ff
	add  b                                           ; $5974: $80
	nop                                              ; $5975: $00
	add  b                                           ; $5976: $80
	rst  $38                                         ; $5977: $ff
	inc  bc                                          ; $5978: $03
	nop                                              ; $5979: $00
	add  h                                           ; $597a: $84
	db   $fc                                         ; $597b: $fc
	ld   a, b                                        ; $597c: $78
	add  c                                           ; $597d: $81
	ret  nz                                          ; $597e: $c0

	ld   [bc], a                                     ; $597f: $02
	rst  JumpTable                                         ; $5980: $df
	jr   nz, jr_015_5963                             ; $5981: $20 $e0

	add  c                                           ; $5983: $81
	ret  nz                                          ; $5984: $c0

	add  b                                           ; $5985: $80
	nop                                              ; $5986: $00
	add  [hl]                                        ; $5987: $86
	ret  nz                                          ; $5988: $c0

	nop                                              ; $5989: $00
	db   $e3                                         ; $598a: $e3
	add  l                                           ; $598b: $85
	ld   bc, $0005                                   ; $598c: $01 $05 $00
	ld   bc, $0200                                   ; $598f: $01 $00 $02
	nop                                              ; $5992: $00

jr_015_5993:
	ld   bc, $0080                                   ; $5993: $01 $80 $00
	ld   [bc], a                                     ; $5996: $02
	ei                                               ; $5997: $fb
	db   $fc                                         ; $5998: $fc
	ld   hl, sp-$7c                                  ; $5999: $f8 $84
	ret  nz                                          ; $599b: $c0

	nop                                              ; $599c: $00
	nop                                              ; $599d: $00
	add  b                                           ; $599e: $80
	rst  $38                                         ; $599f: $ff
	add  b                                           ; $59a0: $80
	nop                                              ; $59a1: $00
	ld   [bc], a                                     ; $59a2: $02
	rst  $38                                         ; $59a3: $ff
	nop                                              ; $59a4: $00
	rst  $38                                         ; $59a5: $ff
	add  e                                           ; $59a6: $83
	ret  nz                                          ; $59a7: $c0

	inc  bc                                          ; $59a8: $03
	ld   b, h                                        ; $59a9: $44
	db   $fc                                         ; $59aa: $fc
	ld   a, b                                        ; $59ab: $78
	nop                                              ; $59ac: $00
	add  b                                           ; $59ad: $80
	rst  $38                                         ; $59ae: $ff
	add  b                                           ; $59af: $80
	nop                                              ; $59b0: $00
	ld   [bc], a                                     ; $59b1: $02
	rst  $38                                         ; $59b2: $ff
	nop                                              ; $59b3: $00
	rst  $38                                         ; $59b4: $ff
	add  b                                           ; $59b5: $80
	db   $fc                                         ; $59b6: $fc
	add  h                                           ; $59b7: $84
	call z, $0000                                   ; $59b8: $cc $00 $00
	add  b                                           ; $59bb: $80
	rst  $38                                         ; $59bc: $ff
	add  b                                           ; $59bd: $80
	nop                                              ; $59be: $00
	inc  c                                           ; $59bf: $0c
	rst  $38                                         ; $59c0: $ff
	nop                                              ; $59c1: $00
	rra                                              ; $59c2: $1f
	nop                                              ; $59c3: $00
	cpl                                              ; $59c4: $2f
	rrca                                             ; $59c5: $0f
	ld   e, $1f                                      ; $59c6: $1e $1f
	jr   jr_015_59e8                                 ; $59c8: $18 $1e

	rlca                                             ; $59ca: $07
	nop                                              ; $59cb: $00
	ccf                                              ; $59cc: $3f
	add  e                                           ; $59cd: $83
	nop                                              ; $59ce: $00
	inc  b                                           ; $59cf: $04
	ld   h, b                                        ; $59d0: $60
	ret  nz                                          ; $59d1: $c0

	ld   b, b                                        ; $59d2: $40
	nop                                              ; $59d3: $00
	and  b                                           ; $59d4: $a0
	add  c                                           ; $59d5: $81
	add  b                                           ; $59d6: $80
	ld   [bc], a                                     ; $59d7: $02
	ld   b, b                                        ; $59d8: $40
	nop                                              ; $59d9: $00
	add  b                                           ; $59da: $80
	add  e                                           ; $59db: $83
	nop                                              ; $59dc: $00
	inc  b                                           ; $59dd: $04
	ld   b, $03                                      ; $59de: $06 $03
	ld   [bc], a                                     ; $59e0: $02
	nop                                              ; $59e1: $00
	dec  b                                           ; $59e2: $05
	add  c                                           ; $59e3: $81
	ld   bc, $0202                                   ; $59e4: $01 $02 $02
	nop                                              ; $59e7: $00

jr_015_59e8:
	ld   bc, $0083                                   ; $59e8: $01 $83 $00
	ld   a, [bc]                                     ; $59eb: $0a
	ld   hl, sp+$00                                  ; $59ec: $f8 $00
	db   $f4                                         ; $59ee: $f4
	ldh  a, [$e8]                                    ; $59ef: $f0 $e8
	ld   hl, sp-$78                                  ; $59f1: $f8 $88
	add  sp, $70                                     ; $59f3: $e8 $70
	nop                                              ; $59f5: $00
	db   $fc                                         ; $59f6: $fc
	add  e                                           ; $59f7: $83
	nop                                              ; $59f8: $00
	ld   a, [bc]                                     ; $59f9: $0a
	ccf                                              ; $59fa: $3f
	nop                                              ; $59fb: $00
	db   $10                                         ; $59fc: $10
	rra                                              ; $59fd: $1f
	ld   l, [hl]                                     ; $59fe: $6e
	add  hl, sp                                      ; $59ff: $39
	jr   nz, jr_015_5a3d                             ; $5a00: $20 $3b

	ld   b, e                                        ; $5a02: $43
	nop                                              ; $5a03: $00
	ccf                                              ; $5a04: $3f
	add  e                                           ; $5a05: $83
	nop                                              ; $5a06: $00
	ld   [bc], a                                     ; $5a07: $02
	sub  b                                           ; $5a08: $90
	nop                                              ; $5a09: $00
	ret  nz                                          ; $5a0a: $c0

	add  c                                           ; $5a0b: $81
	add  b                                           ; $5a0c: $80
	inc  b                                           ; $5a0d: $04
	jr   nz, @-$7e                                   ; $5a0e: $20 $80

	ldh  a, [rP1]                                    ; $5a10: $f0 $00
	add  b                                           ; $5a12: $80
	add  e                                           ; $5a13: $83
	nop                                              ; $5a14: $00
	ld   [bc], a                                     ; $5a15: $02
	add  hl, bc                                      ; $5a16: $09
	nop                                              ; $5a17: $00
	inc  bc                                          ; $5a18: $03
	add  c                                           ; $5a19: $81
	ld   bc, $0404                                   ; $5a1a: $01 $04 $04
	ld   bc, $000f                                   ; $5a1d: $01 $0f $00
	ld   bc, $0083                                   ; $5a20: $01 $83 $00
	ld   a, [bc]                                     ; $5a23: $0a
	db   $fc                                         ; $5a24: $fc
	nop                                              ; $5a25: $00
	ld   [$76f8], sp                                 ; $5a26: $08 $f8 $76
	sbc  h                                           ; $5a29: $9c
	inc  b                                           ; $5a2a: $04
	call c, $00c2                                    ; $5a2b: $dc $c2 $00
	db   $fc                                         ; $5a2e: $fc
	add  e                                           ; $5a2f: $83
	nop                                              ; $5a30: $00
	add  hl, bc                                      ; $5a31: $09
	rst  $38                                         ; $5a32: $ff
	nop                                              ; $5a33: $00
	ld   c, e                                        ; $5a34: $4b
	ld   a, e                                        ; $5a35: $7b
	ld   [hl], b                                     ; $5a36: $70
	ret  nz                                          ; $5a37: $c0

	sbc  a                                           ; $5a38: $9f
	jr   nz, jr_015_5a7b                             ; $5a39: $20 $40

	add  b                                           ; $5a3b: $80
	add  h                                           ; $5a3c: $84

jr_015_5a3d:
	nop                                              ; $5a3d: $00
	nop                                              ; $5a3e: $00
	ld   [hl], a                                     ; $5a3f: $77
	adc  l                                           ; $5a40: $8d
	ld   [hl+], a                                    ; $5a41: $22
	ld   [bc], a                                     ; $5a42: $02
	xor  [hl]                                        ; $5a43: $ae
	db   $fc                                         ; $5a44: $fc
	ld   hl, sp-$7f                                  ; $5a45: $f8 $81
	ret  nz                                          ; $5a47: $c0

	inc  bc                                          ; $5a48: $03
	ld   b, h                                        ; $5a49: $44
	db   $fc                                         ; $5a4a: $fc
	ld   a, b                                        ; $5a4b: $78
	nop                                              ; $5a4c: $00
	add  b                                           ; $5a4d: $80
	rst  $38                                         ; $5a4e: $ff
	add  b                                           ; $5a4f: $80
	nop                                              ; $5a50: $00
	ld   bc, $00ff                                   ; $5a51: $01 $ff $00
	inc  [hl]                                        ; $5a54: $34
	inc  b                                           ; $5a55: $04
	sbc  b                                           ; $5a56: $98
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	inc  bc                                          ; $5a59: $03
	add  e                                           ; $5a5a: $83
	nop                                              ; $5a5b: $00
	nop                                              ; $5a5c: $00
	inc  bc                                          ; $5a5d: $03
	add  a                                           ; $5a5e: $87
	nop                                              ; $5a5f: $00
	nop                                              ; $5a60: $00
	rst  $38                                         ; $5a61: $ff
	add  e                                           ; $5a62: $83
	nop                                              ; $5a63: $00
	nop                                              ; $5a64: $00
	rst  $38                                         ; $5a65: $ff
	add  a                                           ; $5a66: $87
	nop                                              ; $5a67: $00
	nop                                              ; $5a68: $00
	cp   a                                           ; $5a69: $bf
	add  e                                           ; $5a6a: $83
	nop                                              ; $5a6b: $00
	nop                                              ; $5a6c: $00
	cp   a                                           ; $5a6d: $bf
	sub  l                                           ; $5a6e: $95
	nop                                              ; $5a6f: $00
	inc  b                                           ; $5a70: $04
	ld   c, $00                                      ; $5a71: $0e $00
	ccf                                              ; $5a73: $3f
	ld   c, $7f                                      ; $5a74: $0e $7f
	add  c                                           ; $5a76: $81
	ccf                                              ; $5a77: $3f
	nop                                              ; $5a78: $00
	ld   a, a                                        ; $5a79: $7f
	add  a                                           ; $5a7a: $87

jr_015_5a7b:
	nop                                              ; $5a7b: $00
	ld   b, $80                                      ; $5a7c: $06 $80
	nop                                              ; $5a7e: $00
	ldh  [$80], a                                    ; $5a7f: $e0 $80
	ld   hl, sp-$20                                  ; $5a81: $f8 $e0
	ld   hl, sp-$7f                                  ; $5a83: $f8 $81
	nop                                              ; $5a85: $00
	inc  c                                           ; $5a86: $0c
	ld   bc, $0700                                   ; $5a87: $01 $00 $07
	ld   bc, $071f                                   ; $5a8a: $01 $1f $07
	ccf                                              ; $5a8d: $3f
	rra                                              ; $5a8e: $1f
	ld   a, a                                        ; $5a8f: $7f
	ccf                                              ; $5a90: $3f
	rst  $38                                         ; $5a91: $ff
	ld   a, a                                        ; $5a92: $7f
	rst  $38                                         ; $5a93: $ff
	add  c                                           ; $5a94: $81
	nop                                              ; $5a95: $00
	inc  c                                           ; $5a96: $0c
	ret  nz                                          ; $5a97: $c0

	nop                                              ; $5a98: $00
	ldh  a, [$c0]                                    ; $5a99: $f0 $c0
	ld   hl, sp-$10                                  ; $5a9b: $f8 $f0
	db   $fc                                         ; $5a9d: $fc
	ld   hl, sp-$02                                  ; $5a9e: $f8 $fe
	db   $fc                                         ; $5aa0: $fc
	rst  $38                                         ; $5aa1: $ff
	cp   $ff                                         ; $5aa2: $fe $ff
	adc  e                                           ; $5aa4: $8b
	nop                                              ; $5aa5: $00
	ld   [bc], a                                     ; $5aa6: $02
	add  b                                           ; $5aa7: $80
	nop                                              ; $5aa8: $00
	add  b                                           ; $5aa9: $80
	add  d                                           ; $5aaa: $82
	ld   [bc], a                                     ; $5aab: $02
	add  b                                           ; $5aac: $80
	inc  bc                                          ; $5aad: $03
	add  [hl]                                        ; $5aae: $86
	ld   bc, $0001                                   ; $5aaf: $01 $01 $00
	rlca                                             ; $5ab2: $07
	add  e                                           ; $5ab3: $83
	nop                                              ; $5ab4: $00
	nop                                              ; $5ab5: $00
	ld   [$0087], sp                                 ; $5ab6: $08 $87 $00
	ld   b, $f0                                      ; $5ab9: $06 $f0
	nop                                              ; $5abb: $00
	ld   [hl], b                                     ; $5abc: $70
	nop                                              ; $5abd: $00
	stop                                             ; $5abe: $10 $00
	ld   h, b                                        ; $5ac0: $60
	add  a                                           ; $5ac1: $87
	nop                                              ; $5ac2: $00
	ld   a, [bc]                                     ; $5ac3: $0a
	ld   b, b                                        ; $5ac4: $40
	nop                                              ; $5ac5: $00
	or   e                                           ; $5ac6: $b3
	nop                                              ; $5ac7: $00
	ld   [de], a                                     ; $5ac8: $12
	nop                                              ; $5ac9: $00
	ld   hl, $2000                                   ; $5aca: $21 $00 $20
	nop                                              ; $5acd: $00
	ldh  [$83], a                                    ; $5ace: $e0 $83
	nop                                              ; $5ad0: $00
	ld   a, [bc]                                     ; $5ad1: $0a
	ld   bc, $8200                                   ; $5ad2: $01 $00 $82
	nop                                              ; $5ad5: $00
	add  b                                           ; $5ad6: $80
	nop                                              ; $5ad7: $00
	inc  b                                           ; $5ad8: $04
	nop                                              ; $5ad9: $00
	ld   [$0c00], sp                                 ; $5ada: $08 $00 $0c
	add  e                                           ; $5add: $83
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	db   $fc                                         ; $5ae0: $fc
	adc  c                                           ; $5ae1: $89
	nop                                              ; $5ae2: $00
	inc  b                                           ; $5ae3: $04
	inc  bc                                          ; $5ae4: $03
	nop                                              ; $5ae5: $00
	inc  a                                           ; $5ae6: $3c
	nop                                              ; $5ae7: $00
	ccf                                              ; $5ae8: $3f
	add  l                                           ; $5ae9: $85
	nop                                              ; $5aea: $00
	nop                                              ; $5aeb: $00
	ld   bc, $0081                                   ; $5aec: $01 $81 $00
	inc  b                                           ; $5aef: $04
	add  b                                           ; $5af0: $80
	nop                                              ; $5af1: $00

jr_015_5af2:
	ld   b, b                                        ; $5af2: $40
	nop                                              ; $5af3: $00
	jp   nz, $0080                                   ; $5af4: $c2 $80 $00

	add  e                                           ; $5af7: $83
	ld   bc, $fd00                                   ; $5af8: $01 $00 $fd
	add  b                                           ; $5afb: $80
	ld   bc, $ff84                                   ; $5afc: $01 $84 $ff
	add  b                                           ; $5aff: $80
	nop                                              ; $5b00: $00
	ld   bc, $f9f8                                   ; $5b01: $01 $f8 $f9
	add  c                                           ; $5b04: $81
	pop  af                                          ; $5b05: $f1
	add  c                                           ; $5b06: $81
	ldh  a, [$83]                                    ; $5b07: $f0 $83
	rst  $38                                         ; $5b09: $ff
	inc  bc                                          ; $5b0a: $03
	push hl                                          ; $5b0b: $e5
	jr   jr_015_5b8d                                 ; $5b0c: $18 $7f

	ld   a, l                                        ; $5b0e: $7d
	add  d                                           ; $5b0f: $82
	cp   $81                                         ; $5b10: $fe $81
	ld   bc, $f100                                   ; $5b12: $01 $00 $f1
	add  c                                           ; $5b15: $81
	ldh  a, [rSB]                                    ; $5b16: $f0 $01
	pop  af                                          ; $5b18: $f1
	ld   sp, $c080                                   ; $5b19: $31 $80 $c0
	add  c                                           ; $5b1c: $81
	rst  JumpTable                                         ; $5b1d: $df
	add  b                                           ; $5b1e: $80
	ld   e, a                                        ; $5b1f: $5f
	add  c                                           ; $5b20: $81
	rra                                              ; $5b21: $1f
	add  d                                           ; $5b22: $82
	nop                                              ; $5b23: $00
	add  b                                           ; $5b24: $80
	rst  $38                                         ; $5b25: $ff
	add  b                                           ; $5b26: $80
	nop                                              ; $5b27: $00
	add  [hl]                                        ; $5b28: $86
	rst  $38                                         ; $5b29: $ff
	add  d                                           ; $5b2a: $82
	nop                                              ; $5b2b: $00
	add  b                                           ; $5b2c: $80
	rst  $38                                         ; $5b2d: $ff
	add  b                                           ; $5b2e: $80
	nop                                              ; $5b2f: $00
	ld   [bc], a                                     ; $5b30: $02
	ret  nz                                          ; $5b31: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b32: $cf
	adc  a                                           ; $5b33: $8f
	add  e                                           ; $5b34: $83
	sbc  a                                           ; $5b35: $9f
	nop                                              ; $5b36: $00
	rra                                              ; $5b37: $1f
	add  b                                           ; $5b38: $80
	rrca                                             ; $5b39: $0f
	rlca                                             ; $5b3a: $07
	inc  b                                           ; $5b3b: $04
	call nz, $003f                                   ; $5b3c: $c4 $3f $00
	cp   a                                           ; $5b3f: $bf
	nop                                              ; $5b40: $00
	ret  nz                                          ; $5b41: $c0

	sbc  a                                           ; $5b42: $9f
	add  l                                           ; $5b43: $85
	rst  JumpTable                                         ; $5b44: $df
	nop                                              ; $5b45: $00
	ret  nz                                          ; $5b46: $c0

	add  b                                           ; $5b47: $80
	nop                                              ; $5b48: $00
	ld   [bc], a                                     ; $5b49: $02
	rst  $38                                         ; $5b4a: $ff
	nop                                              ; $5b4b: $00
	rst  $38                                         ; $5b4c: $ff
	add  b                                           ; $5b4d: $80
	nop                                              ; $5b4e: $00
	add  [hl]                                        ; $5b4f: $86
	rst  $38                                         ; $5b50: $ff
	add  c                                           ; $5b51: $81
	nop                                              ; $5b52: $00
	ld   [bc], a                                     ; $5b53: $02
	rst  $38                                         ; $5b54: $ff
	nop                                              ; $5b55: $00
	rst  $38                                         ; $5b56: $ff
	add  b                                           ; $5b57: $80
	nop                                              ; $5b58: $00
	inc  bc                                          ; $5b59: $03
	ldh  [$e3], a                                    ; $5b5a: $e0 $e3
	ret  nz                                          ; $5b5c: $c0

	push bc                                          ; $5b5d: $c5
	add  c                                           ; $5b5e: $81
	ret  nz                                          ; $5b5f: $c0

	nop                                              ; $5b60: $00
	add  $81                                         ; $5b61: $c6 $81
	nop                                              ; $5b63: $00
	ld   [bc], a                                     ; $5b64: $02
	rst  $38                                         ; $5b65: $ff
	nop                                              ; $5b66: $00
	ld   e, $81                                      ; $5b67: $1e $81
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	inc  bc                                          ; $5b6b: $03
	add  e                                           ; $5b6c: $83
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	jr   nz, jr_015_5af2                             ; $5b6f: $20 $81

	nop                                              ; $5b71: $00
	ld   [bc], a                                     ; $5b72: $02
	call nz, $0600                                   ; $5b73: $c4 $00 $06
	add  l                                           ; $5b76: $85
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	inc  c                                           ; $5b79: $0c
	add  c                                           ; $5b7a: $81
	nop                                              ; $5b7b: $00
	ld   [bc], a                                     ; $5b7c: $02
	inc  d                                           ; $5b7d: $14
	nop                                              ; $5b7e: $00
	ld   [$0081], sp                                 ; $5b7f: $08 $81 $00
	nop                                              ; $5b82: $00
	db   $10                                         ; $5b83: $10
	add  e                                           ; $5b84: $83
	nop                                              ; $5b85: $00
	ld   [bc], a                                     ; $5b86: $02
	ld   hl, $2100                                   ; $5b87: $21 $00 $21
	add  c                                           ; $5b8a: $81
	nop                                              ; $5b8b: $00

jr_015_5b8c:
	nop                                              ; $5b8c: $00

jr_015_5b8d:
	add  d                                           ; $5b8d: $82
	add  c                                           ; $5b8e: $81
	nop                                              ; $5b8f: $00
	ld   [bc], a                                     ; $5b90: $02
	add  b                                           ; $5b91: $80
	nop                                              ; $5b92: $00
	dec  b                                           ; $5b93: $05
	add  e                                           ; $5b94: $83
	nop                                              ; $5b95: $00
	ld   [bc], a                                     ; $5b96: $02
	inc  bc                                          ; $5b97: $03
	nop                                              ; $5b98: $00
	inc  b                                           ; $5b99: $04
	add  e                                           ; $5b9a: $83
	nop                                              ; $5b9b: $00
	ld   b, $01                                      ; $5b9c: $06 $01
	nop                                              ; $5b9e: $00
	jp   nz, Jump_015_4400                           ; $5b9f: $c2 $00 $44

	nop                                              ; $5ba2: $00
	add  a                                           ; $5ba3: $87
	add  c                                           ; $5ba4: $81
	nop                                              ; $5ba5: $00
	add  hl, bc                                      ; $5ba6: $09
	inc  a                                           ; $5ba7: $3c
	nop                                              ; $5ba8: $00
	ld   b, d                                        ; $5ba9: $42
	nop                                              ; $5baa: $00
	add  b                                           ; $5bab: $80
	nop                                              ; $5bac: $00
	ld   b, $00                                      ; $5bad: $06 $00
	ld   c, $06                                      ; $5baf: $0e $06
	add  b                                           ; $5bb1: $80
	rlca                                             ; $5bb2: $07
	ld   b, $87                                      ; $5bb3: $06 $87
	rlca                                             ; $5bb5: $07
	ld   b, a                                        ; $5bb6: $47
	rlca                                             ; $5bb7: $07
	daa                                              ; $5bb8: $27
	rlca                                             ; $5bb9: $07
	db   $10                                         ; $5bba: $10
	add  d                                           ; $5bbb: $82

jr_015_5bbc:
	rst  $38                                         ; $5bbc: $ff
	add  c                                           ; $5bbd: $81
	rlca                                             ; $5bbe: $07
	nop                                              ; $5bbf: $00
	rst  ToBoot                                         ; $5bc0: $c7
	add  c                                           ; $5bc1: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc2: $cf
	ld   [bc], a                                     ; $5bc3: $02
	adc  a                                           ; $5bc4: $8f
	sbc  a                                           ; $5bc5: $9f
	rra                                              ; $5bc6: $1f
	add  b                                           ; $5bc7: $80
	ccf                                              ; $5bc8: $3f
	add  d                                           ; $5bc9: $82
	rst  $38                                         ; $5bca: $ff
	add  d                                           ; $5bcb: $82
	jp   $8782                                       ; $5bcc: $c3 $82 $87


	add  b                                           ; $5bcf: $80
	rlca                                             ; $5bd0: $07
	add  b                                           ; $5bd1: $80
	rrca                                             ; $5bd2: $0f
	add  c                                           ; $5bd3: $81
	pop  hl                                          ; $5bd4: $e1
	add  c                                           ; $5bd5: $81
	push hl                                          ; $5bd6: $e5
	add  b                                           ; $5bd7: $80
	push bc                                          ; $5bd8: $c5
	nop                                              ; $5bd9: $00
	call nz, wDormRoomButtonsDisplayed                                   ; $5bda: $c4 $83 $cc
	ld   bc, $808c                                   ; $5bdd: $01 $8c $80
	add  [hl]                                        ; $5be0: $86
	rst  $38                                         ; $5be1: $ff
	add  c                                           ; $5be2: $81
	nop                                              ; $5be3: $00
	add  b                                           ; $5be4: $80
	inc  e                                           ; $5be5: $1c
	ld   [bc], a                                     ; $5be6: $02
	db   $10                                         ; $5be7: $10
	ld   de, $8601                                   ; $5be8: $11 $01 $86
	rst  $38                                         ; $5beb: $ff
	add  b                                           ; $5bec: $80
	rra                                              ; $5bed: $1f
	add  b                                           ; $5bee: $80
	ccf                                              ; $5bef: $3f
	add  b                                           ; $5bf0: $80
	ld   a, [hl]                                     ; $5bf1: $7e
	add  b                                           ; $5bf2: $80
	db   $fc                                         ; $5bf3: $fc
	add  b                                           ; $5bf4: $80
	pop  hl                                          ; $5bf5: $e1
	add  b                                           ; $5bf6: $80
	pop  af                                          ; $5bf7: $f1
	add  b                                           ; $5bf8: $80
	pop  hl                                          ; $5bf9: $e1
	add  hl, bc                                      ; $5bfa: $09
	pop  bc                                          ; $5bfb: $c1
	push bc                                          ; $5bfc: $c5
	add  b                                           ; $5bfd: $80
	adc  b                                           ; $5bfe: $88
	inc  c                                           ; $5bff: $0c
	rrca                                             ; $5c00: $0f
	ld   c, $36                                      ; $5c01: $0e $36
	rla                                              ; $5c03: $17
	jr   nz, jr_015_5b8c                             ; $5c04: $20 $86

	rst  $38                                         ; $5c06: $ff
	add  c                                           ; $5c07: $81
	ld   bc, $f104                                   ; $5c08: $01 $04 $f1
	inc  bc                                          ; $5c0b: $03
	inc  de                                          ; $5c0c: $13
	rlca                                             ; $5c0d: $07
	rst  $20                                         ; $5c0e: $e7
	add  [hl]                                        ; $5c0f: $86
	rst  $38                                         ; $5c10: $ff
	add  c                                           ; $5c11: $81
	ld   hl, sp+$00                                  ; $5c12: $f8 $00
	ld   sp, hl                                      ; $5c14: $f9
	add  c                                           ; $5c15: $81
	ldh  a, [rP1]                                    ; $5c16: $f0 $00
	pop  af                                          ; $5c18: $f1
	add  d                                           ; $5c19: $82
	ld   hl, sp+$03                                  ; $5c1a: $f8 $03
	ldh  a, [$f2]                                    ; $5c1c: $f0 $f2
	ldh  a, [$f1]                                    ; $5c1e: $f0 $f1
	add  c                                           ; $5c20: $81
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	db   $fc                                         ; $5c23: $fc
	add  c                                           ; $5c24: $81
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	dec  sp                                          ; $5c27: $3b
	add  c                                           ; $5c28: $81
	nop                                              ; $5c29: $00
	nop                                              ; $5c2a: $00
	ld   b, h                                        ; $5c2b: $44
	add  l                                           ; $5c2c: $85

jr_015_5c2d:
	nop                                              ; $5c2d: $00
	ld   b, $81                                      ; $5c2e: $06 $81
	nop                                              ; $5c30: $00
	ld   c, $00                                      ; $5c31: $0e $00
	rla                                              ; $5c33: $17
	nop                                              ; $5c34: $00
	jr   jr_015_5bbc                                 ; $5c35: $18 $85

	nop                                              ; $5c37: $00
	ld   b, $30                                      ; $5c38: $06 $30
	nop                                              ; $5c3a: $00
	ret  nz                                          ; $5c3b: $c0

	nop                                              ; $5c3c: $00
	ld   bc, $f100                                   ; $5c3d: $01 $00 $f1

Call_015_5c40:
	add  c                                           ; $5c40: $81
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	ld   b, d                                        ; $5c43: $42
	add  c                                           ; $5c44: $81
	nop                                              ; $5c45: $00
	inc  b                                           ; $5c46: $04
	inc  b                                           ; $5c47: $04
	nop                                              ; $5c48: $00
	jp   nz, $0c00                                   ; $5c49: $c2 $00 $0c

	add  c                                           ; $5c4c: $81
	nop                                              ; $5c4d: $00
	ld   b, $88                                      ; $5c4e: $06 $88
	nop                                              ; $5c50: $00
	inc  bc                                          ; $5c51: $03
	nop                                              ; $5c52: $00
	dec  c                                           ; $5c53: $0d
	nop                                              ; $5c54: $00
	ld   [bc], a                                     ; $5c55: $02
	add  c                                           ; $5c56: $81
	nop                                              ; $5c57: $00
	ld   c, $10                                      ; $5c58: $0e $10
	nop                                              ; $5c5a: $00
	ld   [bc], a                                     ; $5c5b: $02
	nop                                              ; $5c5c: $00
	ld   hl, $c100                                   ; $5c5d: $21 $00 $c1
	nop                                              ; $5c60: $00
	ldh  [rP1], a                                    ; $5c61: $e0 $00
	ld   [de], a                                     ; $5c63: $12
	nop                                              ; $5c64: $00
	inc  b                                           ; $5c65: $04
	nop                                              ; $5c66: $00
	ld   c, b                                        ; $5c67: $48
	add  c                                           ; $5c68: $81
	nop                                              ; $5c69: $00
	dec  b                                           ; $5c6a: $05
	ld   b, c                                        ; $5c6b: $41
	nop                                              ; $5c6c: $00
	ld   b, $00                                      ; $5c6d: $06 $00
	ld   de, $8006                                   ; $5c6f: $11 $06 $80
	inc  b                                           ; $5c72: $04
	ld   b, $20                                      ; $5c73: $06 $20
	ld   bc, $0711                                   ; $5c75: $01 $11 $07
	ld   b, a                                        ; $5c78: $47
	rrca                                             ; $5c79: $0f
	adc  a                                           ; $5c7a: $8f
	add  b                                           ; $5c7b: $80
	rlca                                             ; $5c7c: $07
	inc  bc                                          ; $5c7d: $03
	inc  bc                                          ; $5c7e: $03
	inc  sp                                          ; $5c7f: $33

jr_015_5c80:
	db   $10                                         ; $5c80: $10
	ret  nz                                          ; $5c81: $c0

	add  b                                           ; $5c82: $80
	ld   a, [hl]                                     ; $5c83: $7e
	add  b                                           ; $5c84: $80
	db   $fc                                         ; $5c85: $fc
	add  b                                           ; $5c86: $80
	ld   sp, hl                                      ; $5c87: $f9
	add  b                                           ; $5c88: $80
	pop  af                                          ; $5c89: $f1

jr_015_5c8a:
	add  b                                           ; $5c8a: $80
	pop  hl                                          ; $5c8b: $e1
	dec  b                                           ; $5c8c: $05
	ret  nz                                          ; $5c8d: $c0

	call nz, $8a80                                   ; $5c8e: $c4 $80 $8a
	ld   a, [bc]                                     ; $5c91: $0a
	inc  b                                           ; $5c92: $04
	add  b                                           ; $5c93: $80
	rrca                                             ; $5c94: $0f
	add  b                                           ; $5c95: $80
	rra                                              ; $5c96: $1f
	add  d                                           ; $5c97: $82
	rst  $38                                         ; $5c98: $ff
	add  b                                           ; $5c99: $80
	cp   $80                                         ; $5c9a: $fe $80
	ld   hl, sp+$04                                  ; $5c9c: $f8 $04
	ret  nz                                          ; $5c9e: $c0

	pop  bc                                          ; $5c9f: $c1
	ld   bc, $8c0c                                   ; $5ca0: $01 $0c $8c
	add  c                                           ; $5ca3: $81
	sbc  b                                           ; $5ca4: $98
	add  c                                           ; $5ca5: $81
	add  hl, de                                      ; $5ca6: $19
	add  b                                           ; $5ca7: $80
	ld   sp, $3501                                   ; $5ca8: $31 $01 $35
	jr   nc, jr_015_5c2d                             ; $5cab: $30 $80

	ld   [hl], b                                     ; $5cad: $70
	ld   [bc], a                                     ; $5cae: $02
	ld   l, d                                        ; $5caf: $6a
	ld   h, b                                        ; $5cb0: $60
	ld   c, $80                                      ; $5cb1: $0e $80
	rlca                                             ; $5cb3: $07
	add  b                                           ; $5cb4: $80
	rra                                              ; $5cb5: $1f
	add  h                                           ; $5cb6: $84
	rst  $38                                         ; $5cb7: $ff
	add  b                                           ; $5cb8: $80
	db   $fc                                         ; $5cb9: $fc
	add  b                                           ; $5cba: $80
	ldh  a, [$80]                                    ; $5cbb: $f0 $80
	add  b                                           ; $5cbd: $80
	add  b                                           ; $5cbe: $80
	ld   hl, sp+$08                                  ; $5cbf: $f8 $08
	ldh  a, [$f1]                                    ; $5cc1: $f0 $f1
	pop  hl                                          ; $5cc3: $e1
	db   $e3                                         ; $5cc4: $e3
	add  c                                           ; $5cc5: $81
	add  l                                           ; $5cc6: $85
	nop                                              ; $5cc7: $00
	jr   jr_015_5cca                                 ; $5cc8: $18 $00

jr_015_5cca:
	add  b                                           ; $5cca: $80
	jr   nz, jr_015_5cd3                             ; $5ccb: $20 $06

	ld   h, b                                        ; $5ccd: $60
	ld   [hl], b                                     ; $5cce: $70
	ld   [hl], h                                     ; $5ccf: $74
	ld   l, e                                        ; $5cd0: $6b
	db   $ed                                         ; $5cd1: $ed
	push hl                                          ; $5cd2: $e5

jr_015_5cd3:
	ldh  [$80], a                                    ; $5cd3: $e0 $80
	ret  nc                                          ; $5cd5: $d0

	add  b                                           ; $5cd6: $80
	and  e                                           ; $5cd7: $a3
	add  b                                           ; $5cd8: $80
	pop  bc                                          ; $5cd9: $c1
	ld   bc, $ede9                                   ; $5cda: $01 $e9 $ed
	add  b                                           ; $5cdd: $80
	ld   [hl], h                                     ; $5cde: $74
	inc  bc                                          ; $5cdf: $03
	jr   c, jr_015_5ce6                              ; $5ce0: $38 $04

	adc  a                                           ; $5ce2: $8f
	ld   c, a                                        ; $5ce3: $4f
	add  b                                           ; $5ce4: $80
	rra                                              ; $5ce5: $1f

jr_015_5ce6:
	add  b                                           ; $5ce6: $80
	ld   a, a                                        ; $5ce7: $7f
	add  b                                           ; $5ce8: $80
	rst  $38                                         ; $5ce9: $ff
	add  b                                           ; $5cea: $80
	cp   $80                                         ; $5ceb: $fe $80
	db   $fc                                         ; $5ced: $fc
	add  b                                           ; $5cee: $80
	ldh  a, [rSB]                                    ; $5cef: $f0 $01
	ld   b, b                                        ; $5cf1: $40
	ld   b, e                                        ; $5cf2: $43
	add  b                                           ; $5cf3: $80
	ldh  [$80], a                                    ; $5cf4: $e0 $80
	ret  nz                                          ; $5cf6: $c0

	ld   [bc], a                                     ; $5cf7: $02
	add  b                                           ; $5cf8: $80
	adc  b                                           ; $5cf9: $88
	ld   [$1080], sp                                 ; $5cfa: $08 $80 $10
	add  b                                           ; $5cfd: $80
	jr   c, jr_015_5c80                              ; $5cfe: $38 $80

	ld   a, b                                        ; $5d00: $78
	ld   b, $fe                                      ; $5d01: $06 $fe
	db   $fc                                         ; $5d03: $fc
	rst  $38                                         ; $5d04: $ff
	nop                                              ; $5d05: $00
	ld   b, $00                                      ; $5d06: $06 $00
	jr   jr_015_5c8a                                 ; $5d08: $18 $80

	inc  bc                                          ; $5d0a: $03
	add  b                                           ; $5d0b: $80
	rrca                                             ; $5d0c: $0f
	add  b                                           ; $5d0d: $80
	rlca                                             ; $5d0e: $07
	add  b                                           ; $5d0f: $80
	inc  bc                                          ; $5d10: $03
	inc  bc                                          ; $5d11: $03
	ld   bc, $0011                                   ; $5d12: $01 $11 $00
	rrca                                             ; $5d15: $0f
	add  l                                           ; $5d16: $85
	nop                                              ; $5d17: $00
	ld   [$00c0], sp                                 ; $5d18: $08 $c0 $00
	ld   [hl], b                                     ; $5d1b: $70
	nop                                              ; $5d1c: $00
	ld   a, h                                        ; $5d1d: $7c
	add  b                                           ; $5d1e: $80
	xor  a                                           ; $5d1f: $af
	add  b                                           ; $5d20: $80
	ld   h, e                                        ; $5d21: $63
	add  e                                           ; $5d22: $83
	nop                                              ; $5d23: $00
	inc  b                                           ; $5d24: $04
	ld   b, $00                                      ; $5d25: $06 $00
	rlca                                             ; $5d27: $07
	nop                                              ; $5d28: $00
	ld   bc, $0087                                   ; $5d29: $01 $87 $00
	rrca                                             ; $5d2c: $0f
	inc  bc                                          ; $5d2d: $03
	nop                                              ; $5d2e: $00
	rra                                              ; $5d2f: $1f
	inc  bc                                          ; $5d30: $03
	rst  $38                                         ; $5d31: $ff
	rra                                              ; $5d32: $1f
	add  b                                           ; $5d33: $80
	nop                                              ; $5d34: $00
	ld   a, a                                        ; $5d35: $7f
	nop                                              ; $5d36: $00
	ld   bc, $4600                                   ; $5d37: $01 $00 $46
	jr   c, @-$02                                    ; $5d3a: $38 $fc

	ld   a, h                                        ; $5d3c: $7c
	add  b                                           ; $5d3d: $80
	rst  $28                                         ; $5d3e: $ef
	add  b                                           ; $5d3f: $80
	rst  JumpTable                                         ; $5d40: $df
	add  b                                           ; $5d41: $80
	cp   a                                           ; $5d42: $bf
	add  d                                           ; $5d43: $82
	ld   a, a                                        ; $5d44: $7f
	add  b                                           ; $5d45: $80
	rst  JumpTable                                         ; $5d46: $df
	add  hl, bc                                      ; $5d47: $09
	ld   a, [de]                                     ; $5d48: $1a
	ld   d, $31                                      ; $5d49: $16 $31
	dec  [hl]                                        ; $5d4b: $35
	db   $fd                                         ; $5d4c: $fd
	ld   a, l                                        ; $5d4d: $7d
	ldh  a, [c]                                      ; $5d4e: $f2
	ei                                               ; $5d4f: $fb
	ld   a, d                                        ; $5d50: $7a
	ld   a, [$f680]                                  ; $5d51: $fa $80 $f6
	add  b                                           ; $5d54: $80
	rst  $30                                         ; $5d55: $f7
	dec  c                                           ; $5d56: $0d
	or   $f7                                         ; $5d57: $f6 $f7
	rrca                                             ; $5d59: $0f
	rlca                                             ; $5d5a: $07
	cp   $0e                                         ; $5d5b: $fe $0e
	ld   b, [hl]                                     ; $5d5d: $46
	ld   c, [hl]                                     ; $5d5e: $4e
	ld   e, $5e                                      ; $5d5f: $1e $5e
	adc  $de                                         ; $5d61: $ce $de
	inc  e                                           ; $5d63: $1c
	call c, $bc80                                    ; $5d64: $dc $80 $bc
	inc  bc                                          ; $5d67: $03
	sbc  h                                           ; $5d68: $9c
	cp   h                                           ; $5d69: $bc
	ld   l, $60                                      ; $5d6a: $2e $60
	add  b                                           ; $5d6c: $80
	ldh  [rSC], a                                    ; $5d6d: $e0 $02
	pop  hl                                          ; $5d6f: $e1
	ldh  [$d0], a                                    ; $5d70: $e0 $d0
	add  l                                           ; $5d72: $85
	ret  nz                                          ; $5d73: $c0

	rlca                                             ; $5d74: $07
	and  b                                           ; $5d75: $a0
	add  b                                           ; $5d76: $80
	add  hl, sp                                      ; $5d77: $39
	ld   b, $16                                      ; $5d78: $06 $16
	ld   b, $ea                                      ; $5d7a: $06 $ea
	ld   [bc], a                                     ; $5d7c: $02
	add  d                                           ; $5d7d: $82
	inc  bc                                          ; $5d7e: $03
	nop                                              ; $5d7f: $00

Call_015_5d80:
	dec  b                                           ; $5d80: $05
	add  e                                           ; $5d81: $83
	ld   bc, $8b17                                   ; $5d82: $01 $17 $8b
	ld   a, d                                        ; $5d85: $7a
	ld   sp, $bc3b                                   ; $5d86: $31 $3b $bc
	dec  a                                           ; $5d89: $3d
	ret  c                                           ; $5d8a: $d8

	dec  e                                           ; $5d8b: $1d
	ld   l, $0e                                      ; $5d8c: $2e $0e
	inc  c                                           ; $5d8e: $0c
	ld   c, $17                                      ; $5d8f: $0e $17
	rlca                                             ; $5d91: $07
	ld   a, [bc]                                     ; $5d92: $0a
	inc  bc                                          ; $5d93: $03
	and  [hl]                                        ; $5d94: $a6
	cp   h                                           ; $5d95: $bc
	call nc, $0a57                                   ; $5d96: $d4 $57 $0a
	ld   e, e                                        ; $5d99: $5b
	ld   b, e                                        ; $5d9a: $43
	db   $eb                                         ; $5d9b: $eb
	add  b                                           ; $5d9c: $80
	push af                                          ; $5d9d: $f5
	ld   bc, $f5e1                                   ; $5d9e: $01 $e1 $f5
	add  b                                           ; $5da1: $80
	ld   a, [$f203]                                  ; $5da2: $fa $03 $f2
	ld   a, [$0004]                                  ; $5da5: $fa $04 $00
	add  b                                           ; $5da8: $80
	ld   b, $80                                      ; $5da9: $06 $80
	adc  a                                           ; $5dab: $8f
	add  b                                           ; $5dac: $80
	rst  $28                                         ; $5dad: $ef
	add  h                                           ; $5dae: $84
	rst  $20                                         ; $5daf: $e7
	add  b                                           ; $5db0: $80
	db   $e3                                         ; $5db1: $e3
	add  b                                           ; $5db2: $80
	cp   $80                                         ; $5db3: $fe $80
	ld   a, a                                        ; $5db5: $7f
	add  b                                           ; $5db6: $80
	ccf                                              ; $5db7: $3f
	add  b                                           ; $5db8: $80
	rra                                              ; $5db9: $1f
	add  b                                           ; $5dba: $80
	adc  a                                           ; $5dbb: $8f
	add  b                                           ; $5dbc: $80
	add  a                                           ; $5dbd: $87
	add  b                                           ; $5dbe: $80
	jp   $c180                                       ; $5dbf: $c3 $80 $c1


	inc  b                                           ; $5dc2: $04
	ld   hl, sp+$00                                  ; $5dc3: $f8 $00
	add  h                                           ; $5dc5: $84
	nop                                              ; $5dc6: $00
	jp   $8081                                       ; $5dc7: $c3 $81 $80


	ld   [bc], a                                     ; $5dca: $02
	ldh  [$c0], a                                    ; $5dcb: $e0 $c0
	ldh  a, [$81]                                    ; $5dcd: $f0 $81
	ldh  [rDIV], a                                   ; $5dcf: $e0 $04
	ld   hl, sp-$10                                  ; $5dd1: $f8 $f0
	ld   sp, hl                                      ; $5dd3: $f9
	nop                                              ; $5dd4: $00
	inc  bc                                          ; $5dd5: $03
	add  c                                           ; $5dd6: $81
	ld   bc, $0700                                   ; $5dd7: $01 $00 $07
	add  c                                           ; $5dda: $81
	inc  bc                                          ; $5ddb: $03
	ld   bc, $070f                                   ; $5ddc: $01 $0f $07
	add  b                                           ; $5ddf: $80
	ld   b, $03                                      ; $5de0: $06 $03
	ld   e, $0e                                      ; $5de2: $1e $0e
	ccf                                              ; $5de4: $3f
	rst  JumpTable                                         ; $5de5: $df
	add  d                                           ; $5de6: $82
	cp   a                                           ; $5de7: $bf
	add  h                                           ; $5de8: $84
	ld   a, a                                        ; $5de9: $7f
	add  d                                           ; $5dea: $82
	rst  $38                                         ; $5deb: $ff
	add  [hl]                                        ; $5dec: $86
	rst  $28                                         ; $5ded: $ef
	add  [hl]                                        ; $5dee: $86
	rst  JumpTable                                         ; $5def: $df
	ld   [bc], a                                     ; $5df0: $02
	cp   d                                           ; $5df1: $ba
	ld   hl, sp-$48                                  ; $5df2: $f8 $b8
	add  c                                           ; $5df4: $81
	ld   hl, sp+$00                                  ; $5df5: $f8 $00
	db   $f4                                         ; $5df7: $f4
	add  c                                           ; $5df8: $81
	ldh  a, [rSC]                                    ; $5df9: $f0 $02
	ldh  a, [c]                                      ; $5dfb: $f2
	ldh  a, [$e4]                                    ; $5dfc: $f0 $e4
	add  b                                           ; $5dfe: $80
	ldh  [c], a                                      ; $5dff: $e2
	ld   bc, $b0ef                                   ; $5e00: $01 $ef $b0
	add  e                                           ; $5e03: $83
	add  b                                           ; $5e04: $80
	ld   [bc], a                                     ; $5e05: $02
	add  e                                           ; $5e06: $83
	add  b                                           ; $5e07: $80
	cp   h                                           ; $5e08: $bc
	add  b                                           ; $5e09: $80
	add  e                                           ; $5e0a: $83
	add  c                                           ; $5e0b: $81
	cp   a                                           ; $5e0c: $bf
	ld   [bc], a                                     ; $5e0d: $02
	ccf                                              ; $5e0e: $3f
	ld   a, a                                        ; $5e0f: $7f
	add  c                                           ; $5e10: $81
	add  c                                           ; $5e11: $81
	nop                                              ; $5e12: $00
	ld   [bc], a                                     ; $5e13: $02
	ld   e, $00                                      ; $5e14: $1e $00
	pop  hl                                          ; $5e16: $e1
	add  b                                           ; $5e17: $80
	rra                                              ; $5e18: $1f
	add  c                                           ; $5e19: $81
	rst  $38                                         ; $5e1a: $ff
	nop                                              ; $5e1b: $00
	cp   $81                                         ; $5e1c: $fe $81
	rst  $38                                         ; $5e1e: $ff
	ld   b, $44                                      ; $5e1f: $06 $44
	add  e                                           ; $5e21: $83
	add  l                                           ; $5e22: $85
	add  c                                           ; $5e23: $81
	cp   l                                           ; $5e24: $bd
	add  c                                           ; $5e25: $81
	ld   b, b                                        ; $5e26: $40
	add  c                                           ; $5e27: $81
	ld   e, [hl]                                     ; $5e28: $5e
	inc  bc                                          ; $5e29: $03
	rra                                              ; $5e2a: $1f
	sbc  c                                           ; $5e2b: $99
	sbc  [hl]                                        ; $5e2c: $9e
	add  [hl]                                        ; $5e2d: $86
	add  b                                           ; $5e2e: $80
	sbc  b                                           ; $5e2f: $98
	ld   [bc], a                                     ; $5e30: $02
	ld   a, e                                        ; $5e31: $7b
	rst  $38                                         ; $5e32: $ff
	ei                                               ; $5e33: $fb
	add  e                                           ; $5e34: $83
	rst  $38                                         ; $5e35: $ff
	add  b                                           ; $5e36: $80
	ld   a, a                                        ; $5e37: $7f
	add  b                                           ; $5e38: $80
	cp   a                                           ; $5e39: $bf
	add  c                                           ; $5e3a: $81
	rra                                              ; $5e3b: $1f
	ld   bc, $a3df                                   ; $5e3c: $01 $df $a3
	add  c                                           ; $5e3f: $81
	ld   h, e                                        ; $5e40: $63
	add  b                                           ; $5e41: $80
	ld   h, c                                        ; $5e42: $61
	add  b                                           ; $5e43: $80
	and  c                                           ; $5e44: $a1
	ld   bc, $a4a0                                   ; $5e45: $01 $a0 $a4
	add  c                                           ; $5e48: $81
	call nz, wBGP                                   ; $5e49: $c4 $04 $c2
	ldh  [c], a                                      ; $5e4c: $e2
	and  $c6                                         ; $5e4d: $e6 $c6
	ret  nz                                          ; $5e4f: $c0

	add  [hl]                                        ; $5e50: $86
	ldh  [$82], a                                    ; $5e51: $e0 $82
	ldh  a, [$80]                                    ; $5e53: $f0 $80
	ld   [hl], b                                     ; $5e55: $70
	inc  bc                                          ; $5e56: $03
	rst  $30                                         ; $5e57: $f7
	ldh  a, [$fc]                                    ; $5e58: $f0 $fc
	ld   hl, sp-$80                                  ; $5e5a: $f8 $80
	ld   a, b                                        ; $5e5c: $78
	ld   bc, $3c3e                                   ; $5e5d: $01 $3e $3c
	add  b                                           ; $5e60: $80
	inc  e                                           ; $5e61: $1c
	nop                                              ; $5e62: $00
	rrca                                             ; $5e63: $0f
	add  c                                           ; $5e64: $81
	ld   c, $80                                      ; $5e65: $0e $80
	rlca                                             ; $5e67: $07

jr_015_5e68:
	ld   bc, $0eee                                   ; $5e68: $01 $ee $0e
	add  b                                           ; $5e6b: $80
	inc  c                                           ; $5e6c: $0c

jr_015_5e6d:
	ld   bc, Func_1d3d                                   ; $5e6d: $01 $3d $1d
	add  d                                           ; $5e70: $82
	add  hl, de                                      ; $5e71: $19
	nop                                              ; $5e72: $00
	ld   [hl], c                                     ; $5e73: $71
	add  c                                           ; $5e74: $81
	ld   sp, $2502                                   ; $5e75: $31 $02 $25
	ld   hl, $8d7b                                   ; $5e78: $21 $7b $8d
	rst  $38                                         ; $5e7b: $ff
	add  d                                           ; $5e7c: $82
	rst  JumpTable                                         ; $5e7d: $df
	adc  d                                           ; $5e7e: $8a
	cp   a                                           ; $5e7f: $bf
	db   $10                                         ; $5e80: $10
	ldh  [$ef], a                                    ; $5e81: $e0 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e83: $cf
	jp   $cccf                                       ; $5e84: $c3 $cf $cc


	pop  bc                                          ; $5e87: $c1
	pop  de                                          ; $5e88: $d1
	sub  b                                           ; $5e89: $90
	and  b                                           ; $5e8a: $a0
	xor  d                                           ; $5e8b: $aa
	add  b                                           ; $5e8c: $80
	add  d                                           ; $5e8d: $82
	add  b                                           ; $5e8e: $80
	sub  e                                           ; $5e8f: $93
	add  b                                           ; $5e90: $80
	dec  de                                          ; $5e91: $1b
	add  h                                           ; $5e92: $84
	ld   a, a                                        ; $5e93: $7f
	add  b                                           ; $5e94: $80
	ccf                                              ; $5e95: $3f
	add  b                                           ; $5e96: $80
	rrca                                             ; $5e97: $0f
	ld   bc, $5f1f                                   ; $5e98: $01 $1f $5f
	add  c                                           ; $5e9b: $81
	rrca                                             ; $5e9c: $0f
	nop                                              ; $5e9d: $00
	ld   c, a                                        ; $5e9e: $4f
	add  b                                           ; $5e9f: $80
	cp   $07                                         ; $5ea0: $fe $07
	ld   hl, sp-$05                                  ; $5ea2: $f8 $fb
	di                                               ; $5ea4: $f3
	rst  $30                                         ; $5ea5: $f7
	rst  $38                                         ; $5ea6: $ff
	cp   $ff                                         ; $5ea7: $fe $ff
	ld   sp, hl                                      ; $5ea9: $f9
	add  e                                           ; $5eaa: $83
	rst  $38                                         ; $5eab: $ff
	jr   nz, jr_015_5e6d                             ; $5eac: $20 $bf

	ld   b, b                                        ; $5eae: $40
	inc  b                                           ; $5eaf: $04
	nop                                              ; $5eb0: $00
	add  hl, bc                                      ; $5eb1: $09
	nop                                              ; $5eb2: $00
	inc  l                                           ; $5eb3: $2c
	nop                                              ; $5eb4: $00
	ld   c, h                                        ; $5eb5: $4c
	nop                                              ; $5eb6: $00
	ld   a, [de]                                     ; $5eb7: $1a
	add  b                                           ; $5eb8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb9: $cf
	ret  nz                                          ; $5eba: $c0

	rst  ToBoot                                         ; $5ebb: $c7
	ret  nz                                          ; $5ebc: $c0

	ldh  a, [rIF]                                    ; $5ebd: $f0 $0f
	ld   b, a                                        ; $5ebf: $47
	rlca                                             ; $5ec0: $07
	rst  $20                                         ; $5ec1: $e7
	rlca                                             ; $5ec2: $07
	inc  bc                                          ; $5ec3: $03
	dec  bc                                          ; $5ec4: $0b
	add  hl, de                                      ; $5ec5: $19
	dec  c                                           ; $5ec6: $0d
	db   $dd                                         ; $5ec7: $dd
	dec  e                                           ; $5ec8: $1d
	cp   h                                           ; $5ec9: $bc
	ld   e, $5e                                      ; $5eca: $1e $5e
	ccf                                              ; $5ecc: $3f
	ld   e, a                                        ; $5ecd: $5f
	add  b                                           ; $5ece: $80
	ldh  [rSB], a                                    ; $5ecf: $e0 $01
	push hl                                          ; $5ed1: $e5
	push af                                          ; $5ed2: $f5
	add  b                                           ; $5ed3: $80
	pop  af                                          ; $5ed4: $f1
	ld   bc, $fef6                                   ; $5ed5: $01 $f6 $fe
	add  b                                           ; $5ed8: $80
	ld   sp, hl                                      ; $5ed9: $f9
	add  c                                           ; $5eda: $81
	ei                                               ; $5edb: $fb
	ld   bc, $7c7f                                   ; $5edc: $01 $7f $7c
	add  b                                           ; $5edf: $80
	ld   [hl], b                                     ; $5ee0: $70
	add  d                                           ; $5ee1: $82
	jr   c, jr_015_5ee4                              ; $5ee2: $38 $00

jr_015_5ee4:
	jr   jr_015_5e68                                 ; $5ee4: $18 $82

	sbc  b                                           ; $5ee6: $98
	nop                                              ; $5ee7: $00
	jr   @-$7e                                       ; $5ee8: $18 $80

	inc  c                                           ; $5eea: $0c
	ld   c, $0d                                      ; $5eeb: $0e $0d
	inc  c                                           ; $5eed: $0c
	ld   [bc], a                                     ; $5eee: $02
	inc  bc                                          ; $5eef: $03
	inc  hl                                          ; $5ef0: $23
	inc  bc                                          ; $5ef1: $03
	ld   de, $2801                                   ; $5ef2: $11 $01 $28
	nop                                              ; $5ef5: $00
	inc  b                                           ; $5ef6: $04
	nop                                              ; $5ef7: $00
	ld   [bc], a                                     ; $5ef8: $02
	nop                                              ; $5ef9: $00
	ld   de, $0081                                   ; $5efa: $11 $81 $00
	nop                                              ; $5efd: $00
	ldh  a, [$85]                                    ; $5efe: $f0 $85
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	ld   bc, $0085                                   ; $5f02: $01 $85 $00
	inc  b                                           ; $5f05: $04
	sbc  e                                           ; $5f06: $9b
	ld   h, c                                        ; $5f07: $61
	ld   l, a                                        ; $5f08: $6f
	ld   h, e                                        ; $5f09: $63
	ld   d, e                                        ; $5f0a: $53
	add  c                                           ; $5f0b: $81
	ld   b, e                                        ; $5f0c: $43
	nop                                              ; $5f0d: $00
	and  e                                           ; $5f0e: $a3
	add  c                                           ; $5f0f: $81
	add  e                                           ; $5f10: $83
	nop                                              ; $5f11: $00
	ld   b, e                                        ; $5f12: $43
	add  c                                           ; $5f13: $81
	inc  bc                                          ; $5f14: $03
	nop                                              ; $5f15: $00
	add  a                                           ; $5f16: $87
	add  a                                           ; $5f17: $87
	rst  $38                                         ; $5f18: $ff
	add  h                                           ; $5f19: $84
	cp   $86                                         ; $5f1a: $fe $86
	ccf                                              ; $5f1c: $3f
	add  [hl]                                        ; $5f1d: $86
	ld   a, $0a                                      ; $5f1e: $3e $0a
	ld   a, l                                        ; $5f20: $7d
	ld   [hl], b                                     ; $5f21: $70
	ld   a, e                                        ; $5f22: $7b
	ld   [hl], b                                     ; $5f23: $70
	ld   a, l                                        ; $5f24: $7d
	ld   a, b                                        ; $5f25: $78
	dec  sp                                          ; $5f26: $3b
	jr   c, jr_015_5f65                              ; $5f27: $38 $3c

	ccf                                              ; $5f29: $3f
	dec  de                                          ; $5f2a: $1b
	add  c                                           ; $5f2b: $81
	rra                                              ; $5f2c: $1f
	add  b                                           ; $5f2d: $80
	rrca                                             ; $5f2e: $0f
	ld   b, $d7                                      ; $5f2f: $06 $d7
	rrca                                             ; $5f31: $0f
	rst  $28                                         ; $5f32: $ef
	rrca                                             ; $5f33: $0f
	rst  JumpTable                                         ; $5f34: $df
	rra                                              ; $5f35: $1f
	rst  $38                                         ; $5f36: $ff
	add  b                                           ; $5f37: $80
	ld   a, a                                        ; $5f38: $7f
	add  c                                           ; $5f39: $81
	rst  $38                                         ; $5f3a: $ff
	nop                                              ; $5f3b: $00
	cp   $81                                         ; $5f3c: $fe $81
	rst  $38                                         ; $5f3e: $ff
	nop                                              ; $5f3f: $00
	cp   $86                                         ; $5f40: $fe $86
	rst  $38                                         ; $5f42: $ff
	nop                                              ; $5f43: $00
	ld   a, a                                        ; $5f44: $7f
	add  d                                           ; $5f45: $82
	ld   e, a                                        ; $5f46: $5f
	add  b                                           ; $5f47: $80
	ld   c, a                                        ; $5f48: $4f
	nop                                              ; $5f49: $00
	ld   a, a                                        ; $5f4a: $7f
	add  b                                           ; $5f4b: $80
	ldh  a, [$8b]                                    ; $5f4c: $f0 $8b
	rst  $38                                         ; $5f4e: $ff
	rlca                                             ; $5f4f: $07
	ldh  a, [$3f]                                    ; $5f50: $f0 $3f
	scf                                              ; $5f52: $37
	rst  $38                                         ; $5f53: $ff
	dec  de                                          ; $5f54: $1b
	rra                                              ; $5f55: $1f
	sbc  l                                           ; $5f56: $9d
	sbc  a                                           ; $5f57: $9f
	add  b                                           ; $5f58: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f59: $cf
	ld   bc, $efee                                   ; $5f5a: $01 $ee $ef
	add  d                                           ; $5f5d: $82
	rst  $38                                         ; $5f5e: $ff
	ld   [bc], a                                     ; $5f5f: $02
	add  e                                           ; $5f60: $83
	ld   a, h                                        ; $5f61: $7c
	dec  a                                           ; $5f62: $3d
	add  c                                           ; $5f63: $81
	inc  a                                           ; $5f64: $3c

jr_015_5f65:
	nop                                              ; $5f65: $00
	rra                                              ; $5f66: $1f
	add  c                                           ; $5f67: $81
	ld   e, $82                                      ; $5f68: $1e $82
	ld   c, [hl]                                     ; $5f6a: $4e
	add  b                                           ; $5f6b: $80
	ld   h, a                                        ; $5f6c: $67
	nop                                              ; $5f6d: $00
	dec  c                                           ; $5f6e: $0d
	add  e                                           ; $5f6f: $83
	inc  c                                           ; $5f70: $0c
	ld   c, $84                                      ; $5f71: $0e $84
	inc  b                                           ; $5f73: $04
	dec  b                                           ; $5f74: $05
	inc  b                                           ; $5f75: $04
	dec  b                                           ; $5f76: $05
	inc  b                                           ; $5f77: $04
	ld   b, h                                        ; $5f78: $44
	inc  b                                           ; $5f79: $04
	add  b                                           ; $5f7a: $80
	nop                                              ; $5f7b: $00
	adc  $00                                         ; $5f7c: $ce $00
	ld   c, b                                        ; $5f7e: $48
	nop                                              ; $5f7f: $00
	jr   nz, @-$7d                                   ; $5f80: $20 $81

	nop                                              ; $5f82: $00
	ld   [$0010], sp                                 ; $5f83: $08 $10 $00
	ret  nz                                          ; $5f86: $c0

	nop                                              ; $5f87: $00
	rst  $30                                         ; $5f88: $f7
	nop                                              ; $5f89: $00
	ccf                                              ; $5f8a: $3f
	nop                                              ; $5f8b: $00
	ld   bc, $0083                                   ; $5f8c: $01 $83 $00
	nop                                              ; $5f8f: $00
	ld   bc, $0087                                   ; $5f90: $01 $87 $00
	nop                                              ; $5f93: $00
	inc  b                                           ; $5f94: $04
	adc  c                                           ; $5f95: $89
	inc  bc                                          ; $5f96: $03
	nop                                              ; $5f97: $00
	dec  b                                           ; $5f98: $05
	add  c                                           ; $5f99: $81
	ld   bc, $0201                                   ; $5f9a: $01 $01 $02
	cp   $84                                         ; $5f9d: $fe $84
	db   $fc                                         ; $5f9f: $fc
	add  d                                           ; $5fa0: $82
	ld   hl, sp+$00                                  ; $5fa1: $f8 $00
	ldh  a, [c]                                      ; $5fa3: $f2
	add  c                                           ; $5fa4: $81
	ldh  a, [rSC]                                    ; $5fa5: $f0 $02
	inc  a                                           ; $5fa7: $3c
	ld   a, $1c                                      ; $5fa8: $3e $1c
	add  b                                           ; $5faa: $80
	dec  e                                           ; $5fab: $1d
	adc  c                                           ; $5fac: $89
	inc  e                                           ; $5fad: $1c
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	add  c                                           ; $5fb0: $81
	adc  a                                           ; $5fb1: $8f
	ld   [bc], a                                     ; $5fb2: $02
	xor  a                                           ; $5fb3: $af
	and  a                                           ; $5fb4: $a7
	or   a                                           ; $5fb5: $b7
	add  b                                           ; $5fb6: $80
	scf                                              ; $5fb7: $37
	add  d                                           ; $5fb8: $82
	inc  sp                                          ; $5fb9: $33
	add  b                                           ; $5fba: $80
	ld   sp, $3004                                   ; $5fbb: $31 $04 $30
	ld   bc, $fdff                                   ; $5fbe: $01 $ff $fd
	rst  $38                                         ; $5fc1: $ff
	add  h                                           ; $5fc2: $84
	cp   $00                                         ; $5fc3: $fe $00
	ld   a, a                                        ; $5fc5: $7f
	add  c                                           ; $5fc6: $81
	rst  $38                                         ; $5fc7: $ff
	ld   [bc], a                                     ; $5fc8: $02
	cp   a                                           ; $5fc9: $bf
	rst  $38                                         ; $5fca: $ff
	inc  c                                           ; $5fcb: $0c
	add  c                                           ; $5fcc: $81
	ld   c, a                                        ; $5fcd: $4f
	add  b                                           ; $5fce: $80
	ld   l, a                                        ; $5fcf: $6f
	ld   [$7f3f], sp                                 ; $5fd0: $08 $3f $7f
	rra                                              ; $5fd3: $1f
	ccf                                              ; $5fd4: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd5: $cf
	rst  JumpTable                                         ; $5fd6: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd7: $cf
	rst  $38                                         ; $5fd8: $ff
	ccf                                              ; $5fd9: $3f
	adc  c                                           ; $5fda: $89
	rst  $38                                         ; $5fdb: $ff
	ld   b, $c7                                      ; $5fdc: $06 $c7
	rst  $38                                         ; $5fde: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fdf: $cf
	rst  $28                                         ; $5fe0: $ef
	rst  $30                                         ; $5fe1: $f7
	sbc  a                                           ; $5fe2: $9f
	adc  a                                           ; $5fe3: $8f
	add  [hl]                                        ; $5fe4: $86
	rst  $38                                         ; $5fe5: $ff
	add  c                                           ; $5fe6: $81
	cp   $00                                         ; $5fe7: $fe $00
	rst  $38                                         ; $5fe9: $ff
	add  c                                           ; $5fea: $81
	db   $fd                                         ; $5feb: $fd
	ld   bc, $679b                                   ; $5fec: $01 $9b $67
	add  h                                           ; $5fef: $84
	ld   h, e                                        ; $5ff0: $63
	add  b                                           ; $5ff1: $80
	ld   h, c                                        ; $5ff2: $61
	ld   [bc], a                                     ; $5ff3: $02
	ld   h, l                                        ; $5ff4: $65
	ld   h, c                                        ; $5ff5: $61
	ld   b, d                                        ; $5ff6: $42
	add  c                                           ; $5ff7: $81
	ld   d, b                                        ; $5ff8: $50
	inc  c                                           ; $5ff9: $0c
	ld   d, l                                        ; $5ffa: $55
	nop                                              ; $5ffb: $00
	ld   l, b                                        ; $5ffc: $68
	nop                                              ; $5ffd: $00
	ld   l, b                                        ; $5ffe: $68
	nop                                              ; $5fff: $00
	dec  hl                                          ; $6000: $2b
	nop                                              ; $6001: $00
	jp   $8480                                       ; $6002: $c3 $80 $84


	add  b                                           ; $6005: $80
	sub  b                                           ; $6006: $90
	add  c                                           ; $6007: $81
	add  b                                           ; $6008: $80
	nop                                              ; $6009: $00
	ret  nz                                          ; $600a: $c0

	add  e                                           ; $600b: $83
	nop                                              ; $600c: $00
	inc  b                                           ; $600d: $04
	add  b                                           ; $600e: $80
	nop                                              ; $600f: $00
	rst  $38                                         ; $6010: $ff
	nop                                              ; $6011: $00
	ld   a, a                                        ; $6012: $7f
	add  e                                           ; $6013: $83
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	ld   [bc], a                                     ; $6016: $02
	adc  e                                           ; $6017: $8b
	ld   bc, $0080                                   ; $6018: $01 $80 $00
	inc  bc                                          ; $601b: $03
	ld   [$e8f0], sp                                 ; $601c: $08 $f0 $e8
	ldh  [$80], a                                    ; $601f: $e0 $80
	ret  nz                                          ; $6021: $c0

	ld   [bc], a                                     ; $6022: $02
	call nc, $a1c0                                   ; $6023: $d4 $c0 $a1
	add  c                                           ; $6026: $81
	add  b                                           ; $6027: $80
	ld   [$004a], sp                                 ; $6028: $08 $4a $00
	add  h                                           ; $602b: $84
	nop                                              ; $602c: $00
	xor  d                                           ; $602d: $aa
	inc  e                                           ; $602e: $1c
	inc  l                                           ; $602f: $2c
	inc  c                                           ; $6030: $0c
	adc  h                                           ; $6031: $8c
	add  l                                           ; $6032: $85
	inc  c                                           ; $6033: $0c
	nop                                              ; $6034: $00
	inc  d                                           ; $6035: $14
	add  c                                           ; $6036: $81
	inc  b                                           ; $6037: $04
	ld   [$30c0], sp                                 ; $6038: $08 $c0 $30
	ld   d, b                                        ; $603b: $50
	db   $10                                         ; $603c: $10
	ld   [de], a                                     ; $603d: $12
	db   $10                                         ; $603e: $10
	sub  b                                           ; $603f: $90
	db   $10                                         ; $6040: $10
	inc  d                                           ; $6041: $14
	add  c                                           ; $6042: $81
	db   $10                                         ; $6043: $10
	inc  e                                           ; $6044: $1c
	ld   l, h                                        ; $6045: $6c
	ld   [$08c8], sp                                 ; $6046: $08 $c8 $08
	inc  bc                                          ; $6049: $03
	ld   a, a                                        ; $604a: $7f
	xor  a                                           ; $604b: $af
	ccf                                              ; $604c: $3f
	ld   d, a                                        ; $604d: $57
	rra                                              ; $604e: $1f
	dec  hl                                          ; $604f: $2b
	rrca                                             ; $6050: $0f
	ld   hl, $0003                                   ; $6051: $21 $03 $00
	ld   bc, $0060                                   ; $6054: $01 $60 $00
	dec  b                                           ; $6057: $05
	ld   bc, $9cb8                                   ; $6058: $01 $b8 $9c
	add  b                                           ; $605b: $80
	rst  $38                                         ; $605c: $ff
	ldh  [rIE], a                                    ; $605d: $e0 $ff
	rst  $28                                         ; $605f: $ef
	rst  $38                                         ; $6060: $ff
	ldh  a, [$81]                                    ; $6061: $f0 $81
	rst  $38                                         ; $6063: $ff
	ld   [bc], a                                     ; $6064: $02
	ld   a, a                                        ; $6065: $7f
	rst  $38                                         ; $6066: $ff
	ccf                                              ; $6067: $3f
	add  c                                           ; $6068: $81
	ld   a, a                                        ; $6069: $7f
	ld   b, $3f                                      ; $606a: $06 $3f
	rst  $38                                         ; $606c: $ff
	ccf                                              ; $606d: $3f
	rst  $38                                         ; $606e: $ff
	cp   a                                           ; $606f: $bf
	rst  $38                                         ; $6070: $ff

jr_015_6071:
	ld   a, a                                        ; $6071: $7f
	add  c                                           ; $6072: $81
	rst  $38                                         ; $6073: $ff
	inc  b                                           ; $6074: $04
	cp   $ff                                         ; $6075: $fe $ff
	db   $fc                                         ; $6077: $fc
	cp   $ff                                         ; $6078: $fe $ff
	add  b                                           ; $607a: $80
	ei                                               ; $607b: $fb
	ld   a, [bc]                                     ; $607c: $0a
	di                                               ; $607d: $f3
	and  $f7                                         ; $607e: $e6 $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6080: $cf
	xor  $9c                                         ; $6081: $ee $9c
	sbc  $3e                                         ; $6083: $de $3e
	cp   [hl]                                        ; $6085: $be
	ld   a, d                                        ; $6086: $7a
	ld   a, [hl]                                     ; $6087: $7e
	add  b                                           ; $6088: $80
	cp   $00                                         ; $6089: $fe $00
	ld   b, l                                        ; $608b: $45
	add  e                                           ; $608c: $83
	ld   e, b                                        ; $608d: $58
	ld   [bc], a                                     ; $608e: $02
	sbc  e                                           ; $608f: $9b
	cp   h                                           ; $6090: $bc
	or   h                                           ; $6091: $b4
	add  b                                           ; $6092: $80
	or   l                                           ; $6093: $b5
	ld   bc, $3ab6                                   ; $6094: $01 $b6 $3a
	add  c                                           ; $6097: $81
	ld   a, d                                        ; $6098: $7a
	inc  b                                           ; $6099: $04
	ld   b, c                                        ; $609a: $41
	nop                                              ; $609b: $00
	inc  bc                                          ; $609c: $03
	nop                                              ; $609d: $00
	inc  a                                           ; $609e: $3c
	add  b                                           ; $609f: $80
	inc  bc                                          ; $60a0: $03
	add  b                                           ; $60a1: $80
	ccf                                              ; $60a2: $3f
	add  b                                           ; $60a3: $80
	cp   a                                           ; $60a4: $bf
	add  b                                           ; $60a5: $80
	cp   h                                           ; $60a6: $bc
	add  b                                           ; $60a7: $80
	ei                                               ; $60a8: $fb
	ld   de, $08f7                                   ; $60a9: $11 $f7 $08
	nop                                              ; $60ac: $00
	ret  nz                                          ; $60ad: $c0

	nop                                              ; $60ae: $00
	jr   nz, jr_015_6071                             ; $60af: $20 $c0

	ret  nc                                          ; $60b1: $d0

	ret  nz                                          ; $60b2: $c0

	ret  z                                           ; $60b3: $c8

	jr   nc, jr_015_60ea                             ; $60b4: $30 $34

	ld   hl, sp-$06                                  ; $60b6: $f8 $fa
	db   $fc                                         ; $60b8: $fc
	db   $fd                                         ; $60b9: $fd
	cp   $01                                         ; $60ba: $fe $01
	add  a                                           ; $60bc: $87
	nop                                              ; $60bd: $00
	ld   [$0001], sp                                 ; $60be: $08 $01 $00
	rrca                                             ; $60c1: $0f
	nop                                              ; $60c2: $00
	ld   a, $00                                      ; $60c3: $3e $00
	inc  sp                                          ; $60c5: $33
	nop                                              ; $60c6: $00
	ld   bc, $0081                                   ; $60c7: $01 $81 $00
	ld   b, $02                                      ; $60ca: $06 $02
	nop                                              ; $60cc: $00
	rra                                              ; $60cd: $1f
	nop                                              ; $60ce: $00
	rst  $38                                         ; $60cf: $ff
	nop                                              ; $60d0: $00
	ldh  [$81], a                                    ; $60d1: $e0 $81
	nop                                              ; $60d3: $00
	ld   [bc], a                                     ; $60d4: $02
	stop                                             ; $60d5: $10 $00
	db   $10                                         ; $60d7: $10
	add  c                                           ; $60d8: $81
	nop                                              ; $60d9: $00
	inc  b                                           ; $60da: $04
	ccf                                              ; $60db: $3f
	nop                                              ; $60dc: $00
	rst  $38                                         ; $60dd: $ff
	nop                                              ; $60de: $00
	ret  nz                                          ; $60df: $c0

	add  e                                           ; $60e0: $83
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	rlca                                             ; $60e3: $07
	add  c                                           ; $60e4: $81
	nop                                              ; $60e5: $00
	ld   b, $79                                      ; $60e6: $06 $79
	nop                                              ; $60e8: $00
	db   $fc                                         ; $60e9: $fc

jr_015_60ea:
	nop                                              ; $60ea: $00
	add  b                                           ; $60eb: $80
	nop                                              ; $60ec: $00
	ld   [bc], a                                     ; $60ed: $02
	add  e                                           ; $60ee: $83
	nop                                              ; $60ef: $00
	ld   b, $14                                      ; $60f0: $06 $14
	ld   [$0888], sp                                 ; $60f2: $08 $88 $08
	sub  c                                           ; $60f5: $91
	nop                                              ; $60f6: $00
	inc  bc                                          ; $60f7: $03
	add  c                                           ; $60f8: $81
	nop                                              ; $60f9: $00
	db   $10                                         ; $60fa: $10
	ld   [bc], a                                     ; $60fb: $02
	nop                                              ; $60fc: $00
	inc  de                                          ; $60fd: $13
	nop                                              ; $60fe: $00
	jr   c, jr_015_6102                              ; $60ff: $38 $01

Call_015_6101:
	or   a                                           ; $6101: $b7

jr_015_6102:
	nop                                              ; $6102: $00
	ld   e, $00                                      ; $6103: $1e $00
	sub  b                                           ; $6105: $90
	dec  bc                                          ; $6106: $0b
	dec  hl                                          ; $6107: $2b
	rla                                              ; $6108: $17
	ld   d, a                                        ; $6109: $57
	cpl                                              ; $610a: $2f
	xor  a                                           ; $610b: $af
	add  b                                           ; $610c: $80
	ld   l, a                                        ; $610d: $6f
	add  b                                           ; $610e: $80
	ld   e, a                                        ; $610f: $5f

jr_015_6110:
	ld   b, $de                                      ; $6110: $06 $de
	ld   a, [hl]                                     ; $6112: $7e
	cp   a                                           ; $6113: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6114: $cf
	rst  JumpTable                                         ; $6115: $df
	ld   l, b                                        ; $6116: $68
	ld   h, a                                        ; $6117: $67
	add  b                                           ; $6118: $80
	ld   a, b                                        ; $6119: $78
	nop                                              ; $611a: $00
	cp   a                                           ; $611b: $bf
	add  c                                           ; $611c: $81
	ccf                                              ; $611d: $3f
	add  b                                           ; $611e: $80
	rra                                              ; $611f: $1f
	rlca                                             ; $6120: $07
	rst  JumpTable                                         ; $6121: $df
	ld   e, a                                        ; $6122: $5f
	dec  b                                           ; $6123: $05
	db   $fd                                         ; $6124: $fd
	db   $e3                                         ; $6125: $e3
	ei                                               ; $6126: $fb
	rlca                                             ; $6127: $07
	rst  $20                                         ; $6128: $e7
	add  b                                           ; $6129: $80
	rra                                              ; $612a: $1f
	add  [hl]                                        ; $612b: $86
	rst  $38                                         ; $612c: $ff
	nop                                              ; $612d: $00
	ldh  a, [$81]                                    ; $612e: $f0 $81
	cp   $00                                         ; $6130: $fe $00
	db   $ec                                         ; $6132: $ec
	add  c                                           ; $6133: $81
	rst  $38                                         ; $6134: $ff
	nop                                              ; $6135: $00
	db   $dd                                         ; $6136: $dd
	add  b                                           ; $6137: $80
	db   $fd                                         ; $6138: $fd
	ld   bc, $bbfb                                   ; $6139: $01 $fb $bb
	add  b                                           ; $613c: $80
	ei                                               ; $613d: $fb
	ld   bc, $70f0                                   ; $613e: $01 $f0 $70
	add  [hl]                                        ; $6141: $86
	rst  $38                                         ; $6142: $ff
	add  b                                           ; $6143: $80
	db   $fc                                         ; $6144: $fc
	ld   bc, $f3f0                                   ; $6145: $01 $f0 $f3
	add  b                                           ; $6148: $80
	dec  bc                                          ; $6149: $0b
	inc  c                                           ; $614a: $0c
	ei                                               ; $614b: $fb
	rst  $10                                         ; $614c: $d7
	nop                                              ; $614d: $00
	jr   nc, jr_015_6110                             ; $614e: $30 $c0

	ldh  [$80], a                                    ; $6150: $e0 $80
	ret  nz                                          ; $6152: $c0

	nop                                              ; $6153: $00
	cp   [hl]                                        ; $6154: $be
	nop                                              ; $6155: $00
	rst  $38                                         ; $6156: $ff
	ld   a, $82                                      ; $6157: $3e $82
	rst  $28                                         ; $6159: $ef
	nop                                              ; $615a: $00

Jump_015_615b:
	nop                                              ; $615b: $00
	adc  b                                           ; $615c: $88
	rst  $38                                         ; $615d: $ff
	rla                                              ; $615e: $17
	ld   a, a                                        ; $615f: $7f
	rst  $38                                         ; $6160: $ff
	cp   [hl]                                        ; $6161: $be
	cp   $dd                                         ; $6162: $fe $dd
	ldh  [c], a                                      ; $6164: $e2
	nop                                              ; $6165: $00
	ld   bc, $0300                                   ; $6166: $01 $00 $03
	nop                                              ; $6169: $00
	ld   b, $00                                      ; $616a: $06 $00
	inc  c                                           ; $616c: $0c
	nop                                              ; $616d: $00
	jr   jr_015_6170                                 ; $616e: $18 $00

jr_015_6170:
	jr   nc, jr_015_6172                             ; $6170: $30 $00

jr_015_6172:
	ld   h, b                                        ; $6172: $60
	nop                                              ; $6173: $00
	add  b                                           ; $6174: $80
	nop                                              ; $6175: $00
	ret  nz                                          ; $6176: $c0

	add  a                                           ; $6177: $87
	nop                                              ; $6178: $00
	inc  b                                           ; $6179: $04
	inc  bc                                          ; $617a: $03
	nop                                              ; $617b: $00
	inc  b                                           ; $617c: $04
	inc  bc                                          ; $617d: $03
	inc  b                                           ; $617e: $04
	add  e                                           ; $617f: $83
	nop                                              ; $6180: $00
	ld   a, [bc]                                     ; $6181: $0a
	rrca                                             ; $6182: $0f
	nop                                              ; $6183: $00
	jr   nc, jr_015_6194                             ; $6184: $30 $0e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6186: $cf
	dec  a                                           ; $6187: $3d
	ccf                                              ; $6188: $3f
	ei                                               ; $6189: $fb
	rst  $38                                         ; $618a: $ff
	rst  $30                                         ; $618b: $f7
	rrca                                             ; $618c: $0f
	add  c                                           ; $618d: $81
	nop                                              ; $618e: $00
	inc  bc                                          ; $618f: $03
	rra                                              ; $6190: $1f
	nop                                              ; $6191: $00
	cp   $1e                                         ; $6192: $fe $1e

jr_015_6194:
	add  b                                           ; $6194: $80
	ld   a, [hl]                                     ; $6195: $7e
	add  b                                           ; $6196: $80
	ld   sp, hl                                      ; $6197: $f9
	add  b                                           ; $6198: $80
	di                                               ; $6199: $f3
	add  b                                           ; $619a: $80
	ldh  [$0a], a                                    ; $619b: $e0 $0a
	rst  $38                                         ; $619d: $ff
	nop                                              ; $619e: $00
	rlca                                             ; $619f: $07
	nop                                              ; $61a0: $00
	rst  $38                                         ; $61a1: $ff
	nop                                              ; $61a2: $00
	add  hl, sp                                      ; $61a3: $39
	nop                                              ; $61a4: $00
	cp   $c0                                         ; $61a5: $fe $c0
	ldh  [$80], a                                    ; $61a7: $e0 $80
	rst  $20                                         ; $61a9: $e7
	rla                                              ; $61aa: $17
	rst  $28                                         ; $61ab: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ac: $cf
	rst  JumpTable                                         ; $61ad: $df
	ld   h, $00                                      ; $61ae: $26 $00
	call z, $3800                                    ; $61b0: $cc $00 $38
	nop                                              ; $61b3: $00
	ldh  a, [c]                                      ; $61b4: $f2
	nop                                              ; $61b5: $00
	pop  bc                                          ; $61b6: $c1
	nop                                              ; $61b7: $00
	ldh  [rP1], a                                    ; $61b8: $e0 $00
	ld   [de], a                                     ; $61ba: $12
	ldh  [$ec], a                                    ; $61bb: $e0 $ec
	ldh  a, [rOBP1]                                  ; $61bd: $f0 $49
	ld   bc, $071f                                   ; $61bf: $01 $1f $07
	cp   a                                           ; $61c2: $bf
	add  c                                           ; $61c3: $81
	rra                                              ; $61c4: $1f
	add  d                                           ; $61c5: $82
	ccf                                              ; $61c6: $3f
	add  d                                           ; $61c7: $82
	ld   a, a                                        ; $61c8: $7f
	add  d                                           ; $61c9: $82
	rst  $28                                         ; $61ca: $ef
	add  d                                           ; $61cb: $82
	rst  $30                                         ; $61cc: $f7
	add  h                                           ; $61cd: $84
	ei                                               ; $61ce: $fb
	add  b                                           ; $61cf: $80
	db   $fd                                         ; $61d0: $fd
	add  b                                           ; $61d1: $80
	rst  $38                                         ; $61d2: $ff
	ld   b, $fe                                      ; $61d3: $06 $fe
	rst  $38                                         ; $61d5: $ff
	ld   sp, hl                                      ; $61d6: $f9
	rst  $38                                         ; $61d7: $ff
	rst  $20                                         ; $61d8: $e7
	rst  $38                                         ; $61d9: $ff
	rst  JumpTable                                         ; $61da: $df
	add  b                                           ; $61db: $80
	rst  $38                                         ; $61dc: $ff
	add  hl, bc                                      ; $61dd: $09
	cp   $bf                                         ; $61de: $fe $bf
	db   $fd                                         ; $61e0: $fd
	rst  $38                                         ; $61e1: $ff
	ei                                               ; $61e2: $fb
	ld   [hl], b                                     ; $61e3: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e4: $cf
	rst  ToBoot                                         ; $61e5: $c7
	cp   a                                           ; $61e6: $bf
	rst  $38                                         ; $61e7: $ff
	add  c                                           ; $61e8: $81
	ld   a, a                                        ; $61e9: $7f
	dec  b                                           ; $61ea: $05
	ld   e, h                                        ; $61eb: $5c
	ld   a, a                                        ; $61ec: $7f
	ld   h, h                                        ; $61ed: $64
	ld   a, b                                        ; $61ee: $78
	ld   [hl], b                                     ; $61ef: $70
	ld   [hl], a                                     ; $61f0: $77
	add  b                                           ; $61f1: $80
	ld   l, a                                        ; $61f2: $6f
	nop                                              ; $61f3: $00
	ld   b, $83                                      ; $61f4: $06 $83
	db   $fd                                         ; $61f6: $fd
	ld   [bc], a                                     ; $61f7: $02
	db   $fc                                         ; $61f8: $fc
	ldh  a, [$f1]                                    ; $61f9: $f0 $f1
	add  b                                           ; $61fb: $80
	dec  c                                           ; $61fc: $0d
	ld   bc, $fcfd                                   ; $61fd: $01 $fd $fc
	add  c                                           ; $6200: $81
	cp   $01                                         ; $6201: $fe $01
	ld   de, $80ef                                   ; $6203: $11 $ef $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6206: $cf
	add  b                                           ; $6207: $80
	rlca                                             ; $6208: $07
	add  b                                           ; $6209: $80
	scf                                              ; $620a: $37
	add  d                                           ; $620b: $82
	rst  $30                                         ; $620c: $f7
	add  d                                           ; $620d: $82
	ei                                               ; $620e: $fb
	inc  b                                           ; $620f: $04
	ldh  [$eb], a                                    ; $6210: $e0 $eb
	ei                                               ; $6212: $fb
	rst  $30                                         ; $6213: $f7
	rst  $38                                         ; $6214: $ff
	add  c                                           ; $6215: $81
	ei                                               ; $6216: $fb
	nop                                              ; $6217: $00
	rst  $38                                         ; $6218: $ff
	add  l                                           ; $6219: $85
	db   $fd                                         ; $621a: $fd
	ld   [bc], a                                     ; $621b: $02
	ld   a, [hl]                                     ; $621c: $7e
	nop                                              ; $621d: $00
	add  b                                           ; $621e: $80
	add  l                                           ; $621f: $85
	nop                                              ; $6220: $00
	ld   c, $01                                      ; $6221: $0e $01
	nop                                              ; $6223: $00
	ld   [bc], a                                     ; $6224: $02
	ld   bc, $0305                                   ; $6225: $01 $05 $03
	dec  bc                                          ; $6228: $0b
	rlca                                             ; $6229: $07
	rla                                              ; $622a: $17
	rrca                                             ; $622b: $0f
	cpl                                              ; $622c: $2f
	rra                                              ; $622d: $1f
	ld   e, a                                        ; $622e: $5f
	ccf                                              ; $622f: $3f
	cp   a                                           ; $6230: $bf
	add  b                                           ; $6231: $80
	ld   a, a                                        ; $6232: $7f
	add  b                                           ; $6233: $80
	rst  $38                                         ; $6234: $ff
	add  c                                           ; $6235: $81
	cp   $04                                         ; $6236: $fe $04
	pop  af                                          ; $6238: $f1
	rst  $28                                         ; $6239: $ef
	rst  $38                                         ; $623a: $ff
	rst  JumpTable                                         ; $623b: $df
	rst  $38                                         ; $623c: $ff
	add  c                                           ; $623d: $81
	cp   a                                           ; $623e: $bf
	ld   bc, $7fff                                   ; $623f: $01 $ff $7f
	add  b                                           ; $6242: $80
	ld   a, [hl]                                     ; $6243: $7e
	add  b                                           ; $6244: $80
	cp   $80                                         ; $6245: $fe $80
	db   $fc                                         ; $6247: $fc
	add  b                                           ; $6248: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6249: $cf
	add  b                                           ; $624a: $80
	adc  a                                           ; $624b: $8f
	add  b                                           ; $624c: $80
	sbc  a                                           ; $624d: $9f
	add  b                                           ; $624e: $80
	rra                                              ; $624f: $1f
	add  b                                           ; $6250: $80
	ccf                                              ; $6251: $3f
	add  b                                           ; $6252: $80
	ld   c, $80                                      ; $6253: $0e $80
	ld   b, d                                        ; $6255: $42
	add  b                                           ; $6256: $80
	ld   [hl], b                                     ; $6257: $70
	ld   [bc], a                                     ; $6258: $02
	nop                                              ; $6259: $00
	rra                                              ; $625a: $1f
	sbc  a                                           ; $625b: $9f
	add  b                                           ; $625c: $80
	and  e                                           ; $625d: $a3
	ld   bc, $3cbc                                   ; $625e: $01 $bc $3c
	add  d                                           ; $6261: $82
	ld   a, a                                        ; $6262: $7f
	add  c                                           ; $6263: $81
	rst  $38                                         ; $6264: $ff
	inc  de                                          ; $6265: $13
	ccf                                              ; $6266: $3f
	rst  $38                                         ; $6267: $ff
	scf                                              ; $6268: $37
	ld   hl, sp-$06                                  ; $6269: $f8 $fa
	ei                                               ; $626b: $fb
	xor  c                                           ; $626c: $a9
	ld   a, e                                        ; $626d: $7b
	dec  de                                          ; $626e: $1b
	cp   e                                           ; $626f: $bb
	sub  a                                           ; $6270: $97
	rst  $10                                         ; $6271: $d7
	db   $d3                                         ; $6272: $d3
	rst  $10                                         ; $6273: $d7
	sub  $d7                                         ; $6274: $d6 $d7
	xor  a                                           ; $6276: $af
	rst  $28                                         ; $6277: $ef
	ld   sp, hl                                      ; $6278: $f9
	ld   a, a                                        ; $6279: $7f
	add  b                                           ; $627a: $80
	ccf                                              ; $627b: $3f
	ld   bc, $df5f                                   ; $627c: $01 $5f $df
	add  d                                           ; $627f: $82
	rst  $28                                         ; $6280: $ef
	nop                                              ; $6281: $00
	ld   l, a                                        ; $6282: $6f
	add  c                                           ; $6283: $81
	rst  $28                                         ; $6284: $ef
	add  b                                           ; $6285: $80
	rst  JumpTable                                         ; $6286: $df
	add  h                                           ; $6287: $84
	db   $fd                                         ; $6288: $fd
	ld   bc, $fdfc                                   ; $6289: $01 $fc $fd
	add  b                                           ; $628c: $80
	ei                                               ; $628d: $fb
	nop                                              ; $628e: $00
	ld   sp, hl                                      ; $628f: $f9
	add  c                                           ; $6290: $81
	ei                                               ; $6291: $fb
	ld   [bc], a                                     ; $6292: $02
	ld   hl, sp-$05                                  ; $6293: $f8 $fb
	rlca                                             ; $6295: $07
	add  l                                           ; $6296: $85
	rst  $30                                         ; $6297: $f7
	nop                                              ; $6298: $00
	di                                               ; $6299: $f3
	add  d                                           ; $629a: $82
	ei                                               ; $629b: $fb
	inc  bc                                          ; $629c: $03
	di                                               ; $629d: $f3
	pop  af                                          ; $629e: $f1
	push af                                          ; $629f: $f5
	xor  h                                           ; $62a0: $ac
	add  c                                           ; $62a1: $81
	ld   e, a                                        ; $62a2: $5f
	nop                                              ; $62a3: $00
	sbc  e                                           ; $62a4: $9b
	add  c                                           ; $62a5: $81
	sbc  a                                           ; $62a6: $9f
	ld   bc, $9f9c                                   ; $62a7: $01 $9c $9f
	add  b                                           ; $62aa: $80
	rst  JumpTable                                         ; $62ab: $df
	add  b                                           ; $62ac: $80
	sbc  $80                                         ; $62ad: $de $80
	db   $dd                                         ; $62af: $dd
	nop                                              ; $62b0: $00
	nop                                              ; $62b1: $00
	add  e                                           ; $62b2: $83
	cp   $06                                         ; $62b3: $fe $06
	ldh  [$fe], a                                    ; $62b5: $e0 $fe
	db   $10                                         ; $62b7: $10
	pop  af                                          ; $62b8: $f1
	add  c                                           ; $62b9: $81
	adc  a                                           ; $62ba: $8f
	rrca                                             ; $62bb: $0f
	add  b                                           ; $62bc: $80
	ld   a, a                                        ; $62bd: $7f
	ld   [bc], a                                     ; $62be: $02
	rst  $38                                         ; $62bf: $ff
	inc  b                                           ; $62c0: $04
	ei                                               ; $62c1: $fb
	add  b                                           ; $62c2: $80
	db   $e3                                         ; $62c3: $e3
	add  b                                           ; $62c4: $80
	add  e                                           ; $62c5: $83
	add  b                                           ; $62c6: $80
	dec  de                                          ; $62c7: $1b
	add  d                                           ; $62c8: $82
	ld   a, e                                        ; $62c9: $7b
	add  b                                           ; $62ca: $80
	ld   a, l                                        ; $62cb: $7d
	inc  b                                           ; $62cc: $04
	dec  a                                           ; $62cd: $3d
	cp   l                                           ; $62ce: $bd
	ld   a, h                                        ; $62cf: $7c
	db   $fd                                         ; $62d0: $fd
	rst  $38                                         ; $62d1: $ff
	adc  e                                           ; $62d2: $8b
	cp   $02                                         ; $62d3: $fe $02
	rst  $38                                         ; $62d5: $ff
	nop                                              ; $62d6: $00
	ld   bc, $0081                                   ; $62d7: $01 $81 $00
	inc  b                                           ; $62da: $04
	inc  bc                                          ; $62db: $03
	nop                                              ; $62dc: $00
	ld   b, $00                                      ; $62dd: $06 $00
	inc  c                                           ; $62df: $0c
	add  c                                           ; $62e0: $81
	nop                                              ; $62e1: $00
	inc  b                                           ; $62e2: $04
	jr   jr_015_62e5                                 ; $62e3: $18 $00

jr_015_62e5:
	sub  b                                           ; $62e5: $90
	nop                                              ; $62e6: $00
	add  b                                           ; $62e7: $80
	add  a                                           ; $62e8: $87
	nop                                              ; $62e9: $00
	ld   b, $20                                      ; $62ea: $06 $20
	nop                                              ; $62ec: $00
	ld   h, b                                        ; $62ed: $60
	nop                                              ; $62ee: $00
	ld   b, a                                        ; $62ef: $47
	inc  bc                                          ; $62f0: $03
	dec  bc                                          ; $62f1: $0b
	add  c                                           ; $62f2: $81
	rlca                                             ; $62f3: $07
	nop                                              ; $62f4: $00
	rla                                              ; $62f5: $17
	add  e                                           ; $62f6: $83
	rrca                                             ; $62f7: $0f
	nop                                              ; $62f8: $00
	cpl                                              ; $62f9: $2f
	add  c                                           ; $62fa: $81
	rra                                              ; $62fb: $1f
	ld   [bc], a                                     ; $62fc: $02
	rst  JumpTable                                         ; $62fd: $df
	cp   $ff                                         ; $62fe: $fe $ff
	adc  c                                           ; $6300: $89
	db   $fd                                         ; $6301: $fd
	ld   [bc], a                                     ; $6302: $02
	rst  $38                                         ; $6303: $ff
	ei                                               ; $6304: $fb
	inc  b                                           ; $6305: $04
	add  c                                           ; $6306: $81
	db   $fc                                         ; $6307: $fc
	add  d                                           ; $6308: $82
	ld   hl, sp-$7e                                  ; $6309: $f8 $82
	ldh  a, [$80]                                    ; $630b: $f0 $80
	pop  af                                          ; $630d: $f1
	add  b                                           ; $630e: $80
	pop  hl                                          ; $630f: $e1
	add  b                                           ; $6310: $80
	ld   a, h                                        ; $6311: $7c
	nop                                              ; $6312: $00
	db   $fc                                         ; $6313: $fc
	add  c                                           ; $6314: $81
	db   $fd                                         ; $6315: $fd
	nop                                              ; $6316: $00
	ld   sp, hl                                      ; $6317: $f9
	add  c                                           ; $6318: $81
	ei                                               ; $6319: $fb
	add  b                                           ; $631a: $80
	dec  de                                          ; $631b: $1b
	add  b                                           ; $631c: $80
	add  e                                           ; $631d: $83
	add  b                                           ; $631e: $80
	db   $e3                                         ; $631f: $e3
	add  b                                           ; $6320: $80
	ccf                                              ; $6321: $3f
	inc  b                                           ; $6322: $04
	inc  b                                           ; $6323: $04
	rst  ToBoot                                         ; $6324: $c7
	pop  bc                                          ; $6325: $c1
	ld   sp, hl                                      ; $6326: $f9
	ld   hl, sp-$80                                  ; $6327: $f8 $80
	cp   $03                                         ; $6329: $fe $03
	rst  $38                                         ; $632b: $ff
	cp   $ff                                         ; $632c: $fe $ff
	db   $fd                                         ; $632e: $fd
	add  c                                           ; $632f: $81
	rst  $38                                         ; $6330: $ff
	nop                                              ; $6331: $00
	inc  de                                          ; $6332: $13
	add  l                                           ; $6333: $85
	rst  $28                                         ; $6334: $ef
	add  b                                           ; $6335: $80
	ld   h, a                                        ; $6336: $67
	add  b                                           ; $6337: $80
	ld   h, b                                        ; $6338: $60
	add  b                                           ; $6339: $80
	ld   h, e                                        ; $633a: $63
	inc  bc                                          ; $633b: $03
	ld   h, d                                        ; $633c: $62
	ld   h, e                                        ; $633d: $63
	adc  $cf                                         ; $633e: $ce $cf
	add  b                                           ; $6340: $80
	ret  nc                                          ; $6341: $d0

	dec  c                                           ; $6342: $0d
	cp   b                                           ; $6343: $b8
	cp   a                                           ; $6344: $bf
	cp   e                                           ; $6345: $bb
	cp   a                                           ; $6346: $bf
	ld   a, e                                        ; $6347: $7b
	ld   a, a                                        ; $6348: $7f
	rst  $20                                         ; $6349: $e7
	rst  $38                                         ; $634a: $ff
	sbc  a                                           ; $634b: $9f
	rst  $38                                         ; $634c: $ff
	ld   a, a                                        ; $634d: $7f
	rst  $38                                         ; $634e: $ff
	nop                                              ; $634f: $00
	rst  $38                                         ; $6350: $ff
	add  b                                           ; $6351: $80
	rra                                              ; $6352: $1f
	ld   [$ef0f], sp                                 ; $6353: $08 $0f $ef
	rst  $20                                         ; $6356: $e7
	rst  $30                                         ; $6357: $f7
	ld   [hl], $ff                                   ; $6358: $36 $ff
	ld   e, c                                        ; $635a: $59
	rst  $38                                         ; $635b: $ff
	sbc  a                                           ; $635c: $9f
	add  c                                           ; $635d: $81
	rst  $38                                         ; $635e: $ff
	inc  c                                           ; $635f: $0c
	ld   a, [hl]                                     ; $6360: $7e
	db   $ed                                         ; $6361: $ed
	db   $ec                                         ; $6362: $ec
	ret  nz                                          ; $6363: $c0

	ld   c, h                                        ; $6364: $4c
	or   d                                           ; $6365: $b2
	cp   [hl]                                        ; $6366: $be
	cp   a                                           ; $6367: $bf
	or   b                                           ; $6368: $b0
	ld   a, a                                        ; $6369: $7f
	ld   l, a                                        ; $636a: $6f
	rst  $38                                         ; $636b: $ff
	ldh  [$81], a                                    ; $636c: $e0 $81
	rst  $38                                         ; $636e: $ff
	nop                                              ; $636f: $00
	inc  d                                           ; $6370: $14
	add  e                                           ; $6371: $83
	db   $eb                                         ; $6372: $eb
	add  b                                           ; $6373: $80
	ld   [hl], e                                     ; $6374: $73
	add  b                                           ; $6375: $80
	add  e                                           ; $6376: $83
	ld   [bc], a                                     ; $6377: $02
	inc  bc                                          ; $6378: $03
	di                                               ; $6379: $f3
	pop  af                                          ; $637a: $f1
	add  c                                           ; $637b: $81
	ld   sp, hl                                      ; $637c: $f9
	nop                                              ; $637d: $00
	ld   hl, sp-$7f                                  ; $637e: $f8 $81
	rst  $38                                         ; $6380: $ff
	inc  c                                           ; $6381: $0c
	ld   a, a                                        ; $6382: $7f
	rst  $38                                         ; $6383: $ff
	db   $fc                                         ; $6384: $fc
	rst  $38                                         ; $6385: $ff
	add  b                                           ; $6386: $80
	db   $fc                                         ; $6387: $fc
	ldh  a, [$f3]                                    ; $6388: $f0 $f3
	db   $e3                                         ; $638a: $e3
	rst  $28                                         ; $638b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $638c: $cf
	rst  JumpTable                                         ; $638d: $df
	ld   [hl+], a                                    ; $638e: $22
	add  c                                           ; $638f: $81
	cp   l                                           ; $6390: $bd
	add  b                                           ; $6391: $80
	add  l                                           ; $6392: $85
	ld   [bc], a                                     ; $6393: $02
	sbc  l                                           ; $6394: $9d
	dec  e                                           ; $6395: $1d
	dec  a                                           ; $6396: $3d
	add  c                                           ; $6397: $81
	cp   l                                           ; $6398: $bd
	add  b                                           ; $6399: $80
	cp   h                                           ; $639a: $bc
	ld   [bc], a                                     ; $639b: $02
	sbc  h                                           ; $639c: $9c
	call c, $833e                                    ; $639d: $dc $3e $83
	cp   $84                                         ; $63a0: $fe $84
	db   $fd                                         ; $63a2: $fd
	add  b                                           ; $63a3: $80
	ld   a, e                                        ; $63a4: $7b
	add  b                                           ; $63a5: $80
	inc  bc                                          ; $63a6: $03
	nop                                              ; $63a7: $00
	rst  $38                                         ; $63a8: $ff
	adc  c                                           ; $63a9: $89
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	ld   bc, $0081                                   ; $63ac: $01 $81 $00
	nop                                              ; $63af: $00
	ld   hl, $0081                                   ; $63b0: $21 $81 $00
	ld   [$0060], sp                                 ; $63b3: $08 $60 $00
	ld   bc, $c000                                   ; $63b6: $01 $00 $c0
	nop                                              ; $63b9: $00
	inc  bc                                          ; $63ba: $03
	nop                                              ; $63bb: $00
	add  b                                           ; $63bc: $80
	add  c                                           ; $63bd: $81
	nop                                              ; $63be: $00
	ld   [bc], a                                     ; $63bf: $02
	ld   b, d                                        ; $63c0: $42
	nop                                              ; $63c1: $00
	ret  nz                                          ; $63c2: $c0

	add  c                                           ; $63c3: $81
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	add  c                                           ; $63c6: $81
	add  c                                           ; $63c7: $81
	nop                                              ; $63c8: $00
	ld   [bc], a                                     ; $63c9: $02
	inc  bc                                          ; $63ca: $03
	nop                                              ; $63cb: $00
	ld   b, $81                                      ; $63cc: $06 $81
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	ld   a, e                                        ; $63d0: $7b
	add  c                                           ; $63d1: $81
	rra                                              ; $63d2: $1f
	ld   [bc], a                                     ; $63d3: $02
	sbc  a                                           ; $63d4: $9f
	ccf                                              ; $63d5: $3f
	cp   a                                           ; $63d6: $bf
	add  a                                           ; $63d7: $87
	ccf                                              ; $63d8: $3f
	nop                                              ; $63d9: $00

jr_015_63da:
	cp   h                                           ; $63da: $bc
	add  l                                           ; $63db: $85
	ei                                               ; $63dc: $fb
	add  [hl]                                        ; $63dd: $86
	ld   a, [$1901]                                  ; $63de: $fa $01 $19
	pop  hl                                          ; $63e1: $e1
	add  b                                           ; $63e2: $80
	db   $e3                                         ; $63e3: $e3
	add  b                                           ; $63e4: $80
	jp   $0382                                       ; $63e5: $c3 $82 $03


	add  h                                           ; $63e8: $84
	nop                                              ; $63e9: $00
	ld   [bc], a                                     ; $63ea: $02
	ldh  a, [$f4]                                    ; $63eb: $f0 $f4
	db   $e4                                         ; $63ed: $e4
	add  l                                           ; $63ee: $85
	rst  $28                                         ; $63ef: $ef
	ld   bc, $dfcf                                   ; $63f0: $01 $cf $df
	add  d                                           ; $63f3: $82

jr_015_63f4:
	rra                                              ; $63f4: $1f
	dec  bc                                          ; $63f5: $0b
	call c, $03ff                                    ; $63f6: $dc $ff $03
	ccf                                              ; $63f9: $3f
	rrca                                             ; $63fa: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63fb: $cf
	rst  ToBoot                                         ; $63fc: $c7
	rst  $30                                         ; $63fd: $f7
	di                                               ; $63fe: $f3
	ei                                               ; $63ff: $fb
	ldh  a, [c]                                      ; $6400: $f2
	ld   a, [$f980]                                  ; $6401: $fa $80 $f9
	inc  b                                           ; $6404: $04
	db   $eb                                         ; $6405: $eb
	ei                                               ; $6406: $fb
	add  sp, $6b                                     ; $6407: $e8 $6b
	ld   a, e                                        ; $6409: $7b
	add  b                                           ; $640a: $80
	ld   e, e                                        ; $640b: $5b
	nop                                              ; $640c: $00
	dec  de                                          ; $640d: $1b
	add  b                                           ; $640e: $80
	dec  sp                                          ; $640f: $3b
	nop                                              ; $6410: $00
	inc  sp                                          ; $6411: $33
	add  b                                           ; $6412: $80
	scf                                              ; $6413: $37
	add  c                                           ; $6414: $81
	or   a                                           ; $6415: $b7
	ld   [bc], a                                     ; $6416: $02
	rst  $30                                         ; $6417: $f7
	ld   [hl], a                                     ; $6418: $77
	rlca                                             ; $6419: $07
	adc  [hl]                                        ; $641a: $8e
	rst  $38                                         ; $641b: $ff
	inc  bc                                          ; $641c: $03
	ld   sp, hl                                      ; $641d: $f9
	db   $fd                                         ; $641e: $fd
	pop  af                                          ; $641f: $f1
	di                                               ; $6420: $f3
	add  c                                           ; $6421: $81
	ldh  a, [rP1]                                    ; $6422: $f0 $00
	ld   sp, hl                                      ; $6424: $f9
	add  e                                           ; $6425: $83
	ldh  [rSC], a                                    ; $6426: $e0 $02
	ldh  a, [$c0]                                    ; $6428: $f0 $c0
	rrca                                             ; $642a: $0f
	add  c                                           ; $642b: $81
	rst  JumpTable                                         ; $642c: $df
	dec  b                                           ; $642d: $05
	rst  $10                                         ; $642e: $d7

jr_015_642f:
	rst  JumpTable                                         ; $642f: $df
	db   $db                                         ; $6430: $db
	rst  JumpTable                                         ; $6431: $df
	inc  e                                           ; $6432: $1c
	rra                                              ; $6433: $1f
	add  b                                           ; $6434: $80
	ld   e, a                                        ; $6435: $5f
	add  b                                           ; $6436: $80
	ld   l, a                                        ; $6437: $6f
	inc  bc                                          ; $6438: $03
	or   b                                           ; $6439: $b0
	jr   nc, jr_015_63da                             ; $643a: $30 $9e

	sbc  $80                                         ; $643c: $de $80
	rst  JumpTable                                         ; $643e: $df
	ld   bc, $eccc                                   ; $643f: $01 $cc $ec
	add  e                                           ; $6442: $83
	ldh  [$80], a                                    ; $6443: $e0 $80
	nop                                              ; $6445: $00
	add  b                                           ; $6446: $80
	ldh  [rSB], a                                    ; $6447: $e0 $01
	db   $10                                         ; $6449: $10
	inc  de                                          ; $644a: $13
	add  c                                           ; $644b: $81
	inc  bc                                          ; $644c: $03
	add  h                                           ; $644d: $84
	ld   [bc], a                                     ; $644e: $02
	ld   [bc], a                                     ; $644f: $02
	inc  b                                           ; $6450: $04
	dec  b                                           ; $6451: $05
	ld   bc, $0380                                   ; $6452: $01 $80 $03
	ld   bc, $f20f                                   ; $6455: $01 $0f $f2
	add  c                                           ; $6458: $81
	nop                                              ; $6459: $00
	ld   [bc], a                                     ; $645a: $02
	inc  bc                                          ; $645b: $03
	nop                                              ; $645c: $00
	ld   bc, $0087                                   ; $645d: $01 $87 $00
	nop                                              ; $6460: $00
	inc  b                                           ; $6461: $04
	add  e                                           ; $6462: $83
	nop                                              ; $6463: $00
	inc  c                                           ; $6464: $0c
	adc  h                                           ; $6465: $8c
	nop                                              ; $6466: $00
	ret  nz                                          ; $6467: $c0

	nop                                              ; $6468: $00
	jr   nz, jr_015_646b                             ; $6469: $20 $00

jr_015_646b:
	jr   c, jr_015_646d                              ; $646b: $38 $00

jr_015_646d:
	ld   bc, $5900                                   ; $646d: $01 $00 $59
	nop                                              ; $6470: $00
	jr   jr_015_63f4                                 ; $6471: $18 $81

	nop                                              ; $6473: $00
	ld   [bc], a                                     ; $6474: $02
	jr   nc, jr_015_6477                             ; $6475: $30 $00

jr_015_6477:
	ld   h, b                                        ; $6477: $60
	add  c                                           ; $6478: $81
	nop                                              ; $6479: $00
	inc  b                                           ; $647a: $04
	ret  nz                                          ; $647b: $c0

	nop                                              ; $647c: $00
	add  b                                           ; $647d: $80
	nop                                              ; $647e: $00
	ld   a, a                                        ; $647f: $7f
	add  c                                           ; $6480: $81
	ccf                                              ; $6481: $3f
	nop                                              ; $6482: $00
	ld   a, a                                        ; $6483: $7f
	add  e                                           ; $6484: $83
	rra                                              ; $6485: $1f
	nop                                              ; $6486: $00
	ccf                                              ; $6487: $3f
	add  b                                           ; $6488: $80
	rrca                                             ; $6489: $0f
	add  b                                           ; $648a: $80
	ld   c, $04                                      ; $648b: $0e $04
	add  hl, bc                                      ; $648d: $09
	inc  de                                          ; $648e: $13
	ld   [bc], a                                     ; $648f: $02
	ld   c, $06                                      ; $6490: $0e $06
	add  b                                           ; $6492: $80
	inc  b                                           ; $6493: $04
	add  c                                           ; $6494: $81
	nop                                              ; $6495: $00
	add  b                                           ; $6496: $80
	inc  b                                           ; $6497: $04
	dec  b                                           ; $6498: $05
	rlca                                             ; $6499: $07
	rla                                              ; $649a: $17
	rlca                                             ; $649b: $07
	daa                                              ; $649c: $27
	rlca                                             ; $649d: $07
	rst  ToBoot                                         ; $649e: $c7
	adc  c                                           ; $649f: $89
	nop                                              ; $64a0: $00
	add  b                                           ; $64a1: $80
	ldh  [$80], a                                    ; $64a2: $e0 $80
	db   $fc                                         ; $64a4: $fc
	inc  bc                                          ; $64a5: $03
	inc  e                                           ; $64a6: $1c
	rra                                              ; $64a7: $1f
	inc  e                                           ; $64a8: $1c
	rra                                              ; $64a9: $1f
	add  b                                           ; $64aa: $80
	daa                                              ; $64ab: $27
	add  b                                           ; $64ac: $80
	jr   c, jr_015_642f                              ; $64ad: $38 $80

	dec  e                                           ; $64af: $1d
	add  b                                           ; $64b0: $80
	rrca                                             ; $64b1: $0f
	add  b                                           ; $64b2: $80
	db   $10                                         ; $64b3: $10
	add  b                                           ; $64b4: $80
	ld   a, l                                        ; $64b5: $7d
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80
	ei                                               ; $64b9: $fb
	dec  c                                           ; $64ba: $0d
	ld   a, [$f4fb]                                  ; $64bb: $fa $fb $f4
	or   $f0                                         ; $64be: $f6 $f0
	push af                                          ; $64c0: $f5
	ret  nz                                          ; $64c1: $c0

	ret  z                                           ; $64c2: $c8

	jr   nz, jr_015_64f5                             ; $64c3: $20 $30

	ret  nz                                          ; $64c5: $c0

	db   $e3                                         ; $64c6: $e3
	add  c                                           ; $64c7: $81
	call z, Call_015_7785                            ; $64c8: $cc $85 $77
	nop                                              ; $64cb: $00
	rst  $20                                         ; $64cc: $e7
	add  l                                           ; $64cd: $85
	rst  $28                                         ; $64ce: $ef
	nop                                              ; $64cf: $00
	rrca                                             ; $64d0: $0f
	adc  d                                           ; $64d1: $8a
	rst  $38                                         ; $64d2: $ff
	inc  bc                                          ; $64d3: $03
	cp   $ff                                         ; $64d4: $fe $ff
	db   $fc                                         ; $64d6: $fc
	ldh  [c], a                                      ; $64d7: $e2
	add  e                                           ; $64d8: $83
	ret  nz                                          ; $64d9: $c0

	nop                                              ; $64da: $00
	ldh  [$81], a                                    ; $64db: $e0 $81
	add  b                                           ; $64dd: $80
	ld   [bc], a                                     ; $64de: $02
	ret  nz                                          ; $64df: $c0

	nop                                              ; $64e0: $00
	add  b                                           ; $64e1: $80
	add  c                                           ; $64e2: $81
	nop                                              ; $64e3: $00
	inc  b                                           ; $64e4: $04
	ldh  [$df], a                                    ; $64e5: $e0 $df
	add  $e6                                         ; $64e7: $c6 $e6
	ldh  [$84], a                                    ; $64e9: $e0 $84
	ld   hl, sp-$7e                                  ; $64eb: $f8 $82
	db   $fc                                         ; $64ed: $fc
	ld   [bc], a                                     ; $64ee: $02
	ld   a, [$3fc5]                                  ; $64ef: $fa $c5 $3f
	add  b                                           ; $64f2: $80
	cp   a                                           ; $64f3: $bf
	add  b                                           ; $64f4: $80

jr_015_64f5:
	rst  JumpTable                                         ; $64f5: $df
	add  b                                           ; $64f6: $80
	rst  $28                                         ; $64f7: $ef
	add  b                                           ; $64f8: $80
	rst  $38                                         ; $64f9: $ff
	add  b                                           ; $64fa: $80
	ld   a, a                                        ; $64fb: $7f
	add  b                                           ; $64fc: $80
	ccf                                              ; $64fd: $3f
	add  b                                           ; $64fe: $80
	rra                                              ; $64ff: $1f
	ld   [bc], a                                     ; $6500: $02
	ldh  [rIE], a                                    ; $6501: $e0 $ff
	sbc  a                                           ; $6503: $9f
	add  e                                           ; $6504: $83
	rst  $38                                         ; $6505: $ff
	nop                                              ; $6506: $00
	cp   a                                           ; $6507: $bf
	add  e                                           ; $6508: $83
	rst  $38                                         ; $6509: $ff
	inc  c                                           ; $650a: $0c
	rst  JumpTable                                         ; $650b: $df
	cp   $b0                                         ; $650c: $fe $b0
	nop                                              ; $650e: $00
	jp   $3600                                       ; $650f: $c3 $00 $36


	nop                                              ; $6512: $00
	inc  c                                           ; $6513: $0c
	nop                                              ; $6514: $00
	jr   jr_015_6517                                 ; $6515: $18 $00

jr_015_6517:
	db   $10                                         ; $6517: $10
	add  c                                           ; $6518: $81
	nop                                              ; $6519: $00
	ld   [bc], a                                     ; $651a: $02
	ld   h, b                                        ; $651b: $60
	nop                                              ; $651c: $00
	ret  nz                                          ; $651d: $c0

	add  a                                           ; $651e: $87
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	ld   bc, $0083                                   ; $6521: $01 $83 $00
	ld   [bc], a                                     ; $6524: $02
	ld   a, $07                                      ; $6525: $3e $07
	ld   b, a                                        ; $6527: $47
	add  e                                           ; $6528: $83
	ccf                                              ; $6529: $3f
	nop                                              ; $652a: $00
	cp   a                                           ; $652b: $bf
	add  b                                           ; $652c: $80

jr_015_652d:
	rra                                              ; $652d: $1f
	add  b                                           ; $652e: $80
	rst  $38                                         ; $652f: $ff
	add  c                                           ; $6530: $81
	cp   $00                                         ; $6531: $fe $00
	ld   a, $81                                      ; $6533: $3e $81
	rlca                                             ; $6535: $07
	nop                                              ; $6536: $00
	ld   b, a                                        ; $6537: $47
	add  b                                           ; $6538: $80
	rlca                                             ; $6539: $07
	ld   bc, $8303                                   ; $653a: $01 $03 $83
	add  b                                           ; $653d: $80
	ld   bc, $0083                                   ; $653e: $01 $83 $00
	adc  b                                           ; $6541: $88
	rst  $38                                         ; $6542: $ff
	add  b                                           ; $6543: $80
	ld   a, a                                        ; $6544: $7f
	add  b                                           ; $6545: $80
	rra                                              ; $6546: $1f
	add  b                                           ; $6547: $80
	nop                                              ; $6548: $00
	add  h                                           ; $6549: $84
	db   $fc                                         ; $654a: $fc
	add  d                                           ; $654b: $82
	ld   hl, sp-$80                                  ; $654c: $f8 $80
	ldh  a, [$80]                                    ; $654e: $f0 $80
	pop  hl                                          ; $6550: $e1
	ld   [bc], a                                     ; $6551: $02
	ld   bc, $7c00                                   ; $6552: $01 $00 $7c
	add  c                                           ; $6555: $81
	ld   bc, $0700                                   ; $6556: $01 $00 $07
	add  c                                           ; $6559: $81
	inc  bc                                          ; $655a: $03
	ld   [bc], a                                     ; $655b: $02
	add  e                                           ; $655c: $83
	inc  bc                                          ; $655d: $03
	rrca                                             ; $655e: $0f
	add  c                                           ; $655f: $81
	rlca                                             ; $6560: $07
	ld   [bc], a                                     ; $6561: $02
	rra                                              ; $6562: $1f
	rrca                                             ; $6563: $0f
	nop                                              ; $6564: $00
	adc  l                                           ; $6565: $8d
	rst  $28                                         ; $6566: $ef
	nop                                              ; $6567: $00
	rrca                                             ; $6568: $0f
	add  d                                           ; $6569: $82
	rst  $38                                         ; $656a: $ff
	add  b                                           ; $656b: $80
	cp   $82                                         ; $656c: $fe $82
	db   $fd                                         ; $656e: $fd
	add  hl, bc                                      ; $656f: $09
	ei                                               ; $6570: $fb
	di                                               ; $6571: $f3
	ei                                               ; $6572: $fb
	db   $e3                                         ; $6573: $e3
	rst  $30                                         ; $6574: $f7
	db   $e4                                         ; $6575: $e4
	ld   hl, sp-$04                                  ; $6576: $f8 $fc
	ldh  a, [$f8]                                    ; $6578: $f0 $f8
	add  c                                           ; $657a: $81
	ldh  [rP1], a                                    ; $657b: $e0 $00
	ldh  a, [$81]                                    ; $657d: $f0 $81
	ret  nz                                          ; $657f: $c0

	nop                                              ; $6580: $00
	ldh  [$81], a                                    ; $6581: $e0 $81
	add  b                                           ; $6583: $80
	nop                                              ; $6584: $00
	cp   a                                           ; $6585: $bf
	adc  [hl]                                        ; $6586: $8e
	rst  $38                                         ; $6587: $ff
	add  d                                           ; $6588: $82
	ld   a, [$f784]                                  ; $6589: $fa $84 $f7
	add  b                                           ; $658c: $80
	rst  $28                                         ; $658d: $ef
	add  c                                           ; $658e: $81
	db   $ed                                         ; $658f: $ed
	ld   bc, $07ea                                   ; $6590: $01 $ea $07
	add  h                                           ; $6593: $84
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	add  b                                           ; $6596: $80
	add  c                                           ; $6597: $81

jr_015_6598:
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	ld   b, b                                        ; $659a: $40
	add  c                                           ; $659b: $81
	nop                                              ; $659c: $00
	ld   [bc], a                                     ; $659d: $02
	jr   nz, jr_015_6598                             ; $659e: $20 $f8

	jr   jr_015_652d                                 ; $65a0: $18 $8b

	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	ccf                                              ; $65a4: $3f
	add  c                                           ; $65a5: $81
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	ld   b, b                                        ; $65a8: $40
	add  e                                           ; $65a9: $83
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	add  b                                           ; $65ac: $80
	add  e                                           ; $65ad: $83
	nop                                              ; $65ae: $00
	ld   [bc], a                                     ; $65af: $02
	ld   bc, $0200                                   ; $65b0: $01 $00 $02
	add  e                                           ; $65b3: $83
	ld   bc, $0500                                   ; $65b4: $01 $00 $05
	add  e                                           ; $65b7: $83
	inc  bc                                          ; $65b8: $03
	ld   [bc], a                                     ; $65b9: $02
	dec  bc                                          ; $65ba: $0b
	rlca                                             ; $65bb: $07
	dec  bc                                          ; $65bc: $0b
	add  c                                           ; $65bd: $81
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	inc  b                                           ; $65c0: $04
	add  c                                           ; $65c1: $81
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	ld   [$0481], sp                                 ; $65c4: $08 $81 $04
	inc  b                                           ; $65c7: $04
	inc  d                                           ; $65c8: $14
	ld   c, $2e                                      ; $65c9: $0e $2e
	rra                                              ; $65cb: $1f
	rst  JumpTable                                         ; $65cc: $df
	adc  [hl]                                        ; $65cd: $8e
	nop                                              ; $65ce: $00
	add  b                                           ; $65cf: $80
	ld   bc, $0384                                   ; $65d0: $01 $84 $03
	add  h                                           ; $65d3: $84
	rlca                                             ; $65d4: $07
	inc  bc                                          ; $65d5: $03
	rrca                                             ; $65d6: $0f
	ldh  [rIF], a                                    ; $65d7: $e0 $0f
	ccf                                              ; $65d9: $3f
	add  c                                           ; $65da: $81
	rra                                              ; $65db: $1f
	nop                                              ; $65dc: $00
	ld   a, a                                        ; $65dd: $7f
	add  e                                           ; $65de: $83
	ccf                                              ; $65df: $3f
	nop                                              ; $65e0: $00
	rst  $38                                         ; $65e1: $ff

jr_015_65e2:
	add  c                                           ; $65e2: $81
	ld   a, a                                        ; $65e3: $7f
	nop                                              ; $65e4: $00
	ldh  a, [$83]                                    ; $65e5: $f0 $83
	rst  $30                                         ; $65e7: $f7
	nop                                              ; $65e8: $00
	rst  $38                                         ; $65e9: $ff
	add  c                                           ; $65ea: $81
	ei                                               ; $65eb: $fb
	inc  bc                                          ; $65ec: $03
	rst  $38                                         ; $65ed: $ff
	db   $fd                                         ; $65ee: $fd
	rst  $38                                         ; $65ef: $ff
	cp   $80                                         ; $65f0: $fe $80
	rst  $38                                         ; $65f2: $ff
	ld   b, $10                                      ; $65f3: $06 $10
	rst  $30                                         ; $65f5: $f7
	rst  $10                                         ; $65f6: $d7
	rst  $30                                         ; $65f7: $f7
	rst  $20                                         ; $65f8: $e7
	rst  $28                                         ; $65f9: $ef
	xor  a                                           ; $65fa: $af
	add  c                                           ; $65fb: $81
	rst  $28                                         ; $65fc: $ef
	nop                                              ; $65fd: $00
	ld   c, a                                        ; $65fe: $4f
	add  b                                           ; $65ff: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6600: $cf
	inc  bc                                          ; $6601: $03
	adc  $0f                                         ; $6602: $ce $0f
	ld   bc, $8400                                   ; $6604: $01 $00 $84
	rst  $38                                         ; $6607: $ff
	add  b                                           ; $6608: $80
	cp   $09                                         ; $6609: $fe $09

Call_015_660b:
	ld   hl, sp-$03                                  ; $660b: $f8 $fd
	db   $e4                                         ; $660d: $e4
	db   $fc                                         ; $660e: $fc
	inc  e                                           ; $660f: $1c
	ld   a, [$3cf8]                                  ; $6610: $fa $f8 $3c
	add  b                                           ; $6613: $80
	ret  nz                                          ; $6614: $c0

	add  c                                           ; $6615: $81
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	add  b                                           ; $6618: $80
	add  a                                           ; $6619: $87
	nop                                              ; $661a: $00
	adc  e                                           ; $661b: $8b
	rst  $38                                         ; $661c: $ff
	add  b                                           ; $661d: $80
	cp   $80                                         ; $661e: $fe $80
	db   $fd                                         ; $6620: $fd
	add  b                                           ; $6621: $80
	db   $dd                                         ; $6622: $dd
	add  d                                           ; $6623: $82
	sbc  $82                                         ; $6624: $de $82
	cp   a                                           ; $6626: $bf
	add  b                                           ; $6627: $80
	ld   a, a                                        ; $6628: $7f
	add  c                                           ; $6629: $81
	rst  $38                                         ; $662a: $ff
	nop                                              ; $662b: $00
	rra                                              ; $662c: $1f
	add  c                                           ; $662d: $81
	nop                                              ; $662e: $00
	inc  c                                           ; $662f: $0c
	stop                                             ; $6630: $10 $00
	adc  b                                           ; $6632: $88
	nop                                              ; $6633: $00
	call nz, Call_015_6101                           ; $6634: $c4 $01 $61
	ld   bc, $0003                                   ; $6637: $01 $03 $00
	jr   nz, jr_015_663c                             ; $663a: $20 $00

jr_015_663c:
	cp   $88                                         ; $663c: $fe $88
	nop                                              ; $663e: $00
	add  b                                           ; $663f: $80
	ret  nz                                          ; $6640: $c0

	add  c                                           ; $6641: $81
	rst  $38                                         ; $6642: $ff
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	add  [hl]                                        ; $6645: $86
	rlca                                             ; $6646: $07
	add  d                                           ; $6647: $82
	add  a                                           ; $6648: $87
	add  d                                           ; $6649: $82
	rst  ToBoot                                         ; $664a: $c7
	add  d                                           ; $664b: $82
	nop                                              ; $664c: $00
	add  d                                           ; $664d: $82
	add  c                                           ; $664e: $81
	add  d                                           ; $664f: $82
	jp   $e782                                       ; $6650: $c3 $82 $e7


	add  h                                           ; $6653: $84
	nop                                              ; $6654: $00
	add  b                                           ; $6655: $80
	ld   bc, $0380                                   ; $6656: $01 $80 $03
	add  b                                           ; $6659: $80
	rlca                                             ; $665a: $07
	add  b                                           ; $665b: $80
	rrca                                             ; $665c: $0f
	add  b                                           ; $665d: $80
	ld   e, $80                                      ; $665e: $1e $80
	jr   nz, jr_015_65e2                             ; $6660: $20 $80

	ld   b, b                                        ; $6662: $40
	add  b                                           ; $6663: $80
	ret  nz                                          ; $6664: $c0

	add  d                                           ; $6665: $82
	add  b                                           ; $6666: $80
	add  e                                           ; $6667: $83
	nop                                              ; $6668: $00
	inc  b                                           ; $6669: $04
	inc  bc                                          ; $666a: $03
	db   $e4                                         ; $666b: $e4
	inc  h                                           ; $666c: $24
	dec  h                                           ; $666d: $25
	push hl                                          ; $666e: $e5
	add  c                                           ; $666f: $81
	ld   [hl], l                                     ; $6670: $75
	nop                                              ; $6671: $00
	adc  c                                           ; $6672: $89
	add  b                                           ; $6673: $80
	ld   bc, $ff84                                   ; $6674: $01 $84 $ff
	add  b                                           ; $6677: $80
	nop                                              ; $6678: $00
	add  b                                           ; $6679: $80
	ld   hl, sp+$00                                  ; $667a: $f8 $00
	ldh  a, [$80]                                    ; $667c: $f0 $80
	pop  af                                          ; $667e: $f1
	add  c                                           ; $667f: $81
	ldh  a, [$83]                                    ; $6680: $f0 $83
	rst  $38                                         ; $6682: $ff
	inc  bc                                          ; $6683: $03
	ldh  a, [$0e]                                    ; $6684: $f0 $0e
	ld   a, $3c                                      ; $6686: $3e $3c
	add  c                                           ; $6688: $81
	db   $fc                                         ; $6689: $fc
	ld   bc, $07f8                                   ; $668a: $01 $f8 $07
	add  b                                           ; $668d: $80
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	ldh  [$82], a                                    ; $6690: $e0 $82
	db   $e3                                         ; $6692: $e3
	nop                                              ; $6693: $00
	rra                                              ; $6694: $1f
	add  b                                           ; $6695: $80
	nop                                              ; $6696: $00
	add  b                                           ; $6697: $80

jr_015_6698:
	inc  bc                                          ; $6698: $03
	add  b                                           ; $6699: $80
	ld   c, $03                                      ; $669a: $0e $03
	inc  a                                           ; $669c: $3c
	db   $fc                                         ; $669d: $fc
	jr   c, jr_015_6698                              ; $669e: $38 $f8

	add  b                                           ; $66a0: $80
	ldh  a, [$80]                                    ; $66a1: $f0 $80
	ldh  [rSB], a                                    ; $66a3: $e0 $01
	ret  nz                                          ; $66a5: $c0

	ccf                                              ; $66a6: $3f
	add  d                                           ; $66a7: $82
	rst  $38                                         ; $66a8: $ff
	add  c                                           ; $66a9: $81
	rlca                                             ; $66aa: $07
	nop                                              ; $66ab: $00
	rst  ToBoot                                         ; $66ac: $c7
	add  c                                           ; $66ad: $81
	rrca                                             ; $66ae: $0f
	ld   [bc], a                                     ; $66af: $02
	ld   c, a                                        ; $66b0: $4f
	rra                                              ; $66b1: $1f
	sbc  a                                           ; $66b2: $9f
	add  b                                           ; $66b3: $80
	ccf                                              ; $66b4: $3f
	add  d                                           ; $66b5: $82
	rst  $38                                         ; $66b6: $ff
	add  b                                           ; $66b7: $80
	jp   $c780                                       ; $66b8: $c3 $80 $c7


	add  d                                           ; $66bb: $82
	add  a                                           ; $66bc: $87
	add  b                                           ; $66bd: $80
	rlca                                             ; $66be: $07
	ld   bc, $0c0f                                   ; $66bf: $01 $0f $0c
	add  c                                           ; $66c2: $81
	db   $e3                                         ; $66c3: $e3
	nop                                              ; $66c4: $00
	rst  $20                                         ; $66c5: $e7
	add  b                                           ; $66c6: $80
	and  $80                                         ; $66c7: $e6 $80
	call nz, $c781                                   ; $66c9: $c4 $81 $c7
	add  c                                           ; $66cc: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66cd: $cf
	ld   bc, $7f8f                                   ; $66ce: $01 $8f $7f
	add  b                                           ; $66d1: $80
	add  b                                           ; $66d2: $80
	add  h                                           ; $66d3: $84
	nop                                              ; $66d4: $00
	add  b                                           ; $66d5: $80
	rst  $38                                         ; $66d6: $ff
	add  b                                           ; $66d7: $80
	cp   $80                                         ; $66d8: $fe $80
	ld   hl, sp+$01                                  ; $66da: $f8 $01
	ldh  [$1f], a                                    ; $66dc: $e0 $1f
	add  b                                           ; $66de: $80
	ld   a, [hl]                                     ; $66df: $7e
	add  b                                           ; $66e0: $80
	db   $fc                                         ; $66e1: $fc
	add  b                                           ; $66e2: $80
	ld   sp, hl                                      ; $66e3: $f9
	add  b                                           ; $66e4: $80
	pop  af                                          ; $66e5: $f1
	add  b                                           ; $66e6: $80
	pop  hl                                          ; $66e7: $e1
	ld   [bc], a                                     ; $66e8: $02
	ret  nz                                          ; $66e9: $c0

	add  $06                                         ; $66ea: $c6 $06
	add  b                                           ; $66ec: $80
	ld   c, $00                                      ; $66ed: $0e $00
	nop                                              ; $66ef: $00
	add  b                                           ; $66f0: $80
	rrca                                             ; $66f1: $0f
	add  b                                           ; $66f2: $80
	rra                                              ; $66f3: $1f
	add  d                                           ; $66f4: $82
	rst  $38                                         ; $66f5: $ff
	add  b                                           ; $66f6: $80
	cp   $80                                         ; $66f7: $fe $80
	ld   hl, sp-$80                                  ; $66f9: $f8 $80
	ret  nz                                          ; $66fb: $c0

	ld   bc, $0f00                                   ; $66fc: $01 $00 $0f
	add  b                                           ; $66ff: $80
	adc  a                                           ; $6700: $8f
	ld   bc, $9e8e                                   ; $6701: $01 $8e $9e
	add  b                                           ; $6704: $80
	inc  e                                           ; $6705: $1c
	add  b                                           ; $6706: $80
	ld   e, $00                                      ; $6707: $1e $00
	rra                                              ; $6709: $1f
	add  b                                           ; $670a: $80
	ccf                                              ; $670b: $3f
	add  b                                           ; $670c: $80
	ld   a, a                                        ; $670d: $7f
	add  c                                           ; $670e: $81
	rst  $38                                         ; $670f: $ff
	add  b                                           ; $6710: $80
	add  b                                           ; $6711: $80
	add  [hl]                                        ; $6712: $86
	nop                                              ; $6713: $00
	add  b                                           ; $6714: $80
	add  b                                           ; $6715: $80
	add  b                                           ; $6716: $80
	ret  nz                                          ; $6717: $c0

	dec  b                                           ; $6718: $05
	ldh  [rSB], a                                    ; $6719: $e0 $01

jr_015_671b:
	ld   e, $7f                                      ; $671b: $1e $7f
	ccf                                              ; $671d: $3f
	cp   a                                           ; $671e: $bf
	add  b                                           ; $671f: $80
	ld   [hl], a                                     ; $6720: $77
	add  b                                           ; $6721: $80
	rst  ToBoot                                         ; $6722: $c7
	add  l                                           ; $6723: $85
	rlca                                             ; $6724: $07
	ld   bc, $03fb                                   ; $6725: $01 $fb $03
	add  b                                           ; $6728: $80
	rrca                                             ; $6729: $0f
	add  l                                           ; $672a: $85
	rst  $38                                         ; $672b: $ff
	add  b                                           ; $672c: $80
	cp   a                                           ; $672d: $bf
	add  b                                           ; $672e: $80
	cp   e                                           ; $672f: $bb
	add  b                                           ; $6730: $80
	add  hl, sp                                      ; $6731: $39
	add  b                                           ; $6732: $80
	ei                                               ; $6733: $fb
	add  b                                           ; $6734: $80
	db   $fc                                         ; $6735: $fc
	add  b                                           ; $6736: $80
	cp   $80                                         ; $6737: $fe $80
	rst  $30                                         ; $6739: $f7
	add  b                                           ; $673a: $80
	ld   sp, hl                                      ; $673b: $f9
	add  b                                           ; $673c: $80
	ld   hl, sp-$7e                                  ; $673d: $f8 $82
	db   $fc                                         ; $673f: $fc
	add  b                                           ; $6740: $80
	ldh  a, [$80]                                    ; $6741: $f0 $80
	ld   hl, sp-$80                                  ; $6743: $f8 $80
	inc  a                                           ; $6745: $3c
	add  b                                           ; $6746: $80
	ld   c, $80                                      ; $6747: $0e $80
	add  e                                           ; $6749: $83
	add  b                                           ; $674a: $80
	ld   b, b                                        ; $674b: $40
	add  d                                           ; $674c: $82
	nop                                              ; $674d: $00
	add  b                                           ; $674e: $80
	rlca                                             ; $674f: $07
	add  d                                           ; $6750: $82
	ld   b, $82                                      ; $6751: $06 $82
	inc  b                                           ; $6753: $04
	add  c                                           ; $6754: $81
	nop                                              ; $6755: $00
	ld   bc, $0080                                   ; $6756: $01 $80 $00
	inc  sp                                          ; $6759: $33
	inc  bc                                          ; $675a: $03
	sub  a                                           ; $675b: $97
	rst  $38                                         ; $675c: $ff
	rlca                                             ; $675d: $07
	ld   hl, sp-$01                                  ; $675e: $f8 $ff
	rst  $20                                         ; $6760: $e7
	rst  $38                                         ; $6761: $ff
	sbc  a                                           ; $6762: $9f
	rst  $38                                         ; $6763: $ff
	ld   a, a                                        ; $6764: $7f
	nop                                              ; $6765: $00
	add  [hl]                                        ; $6766: $86
	rst  $38                                         ; $6767: $ff
	rlca                                             ; $6768: $07
	ld   a, a                                        ; $6769: $7f
	rst  $38                                         ; $676a: $ff
	sbc  a                                           ; $676b: $9f
	rst  $38                                         ; $676c: $ff
	rst  $28                                         ; $676d: $ef
	rst  $38                                         ; $676e: $ff
	or   $f9                                         ; $676f: $f6 $f9
	add  a                                           ; $6771: $87
	rst  $38                                         ; $6772: $ff
	add  b                                           ; $6773: $80
	add  a                                           ; $6774: $87
	nop                                              ; $6775: $00
	inc  bc                                          ; $6776: $03
	add  b                                           ; $6777: $80
	ld   [hl], e                                     ; $6778: $73
	ld   bc, $888b                                   ; $6779: $01 $8b $88
	adc  d                                           ; $677c: $8a
	rst  $38                                         ; $677d: $ff
	db   $10                                         ; $677e: $10
	cp   $ff                                         ; $677f: $fe $ff
	ld   sp, hl                                      ; $6781: $f9
	ld   hl, sp-$02                                  ; $6782: $f8 $fe
	rst  $38                                         ; $6784: $ff
	db   $fd                                         ; $6785: $fd
	rst  $38                                         ; $6786: $ff
	ei                                               ; $6787: $fb
	rst  $38                                         ; $6788: $ff
	rst  $30                                         ; $6789: $f7
	rst  $38                                         ; $678a: $ff
	rst  $28                                         ; $678b: $ef
	cp   $9e                                         ; $678c: $fe $9e
	cp   h                                           ; $678e: $bc
	inc  a                                           ; $678f: $3c
	add  b                                           ; $6790: $80
	ld   a, b                                        ; $6791: $78
	add  b                                           ; $6792: $80
	ldh  a, [rDIV]                                   ; $6793: $f0 $04
	ret  nz                                          ; $6795: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6796: $cf
	adc  a                                           ; $6797: $8f
	cp   b                                           ; $6798: $b8
	jr   c, jr_015_671b                              ; $6799: $38 $80

	rlca                                             ; $679b: $07
	add  hl, bc                                      ; $679c: $09
	ccf                                              ; $679d: $3f
	rrca                                             ; $679e: $0f
	ld   c, a                                        ; $679f: $4f
	ld   e, a                                        ; $67a0: $5f
	ld   e, h                                        ; $67a1: $5c
	ld   l, h                                        ; $67a2: $6c
	ld   l, a                                        ; $67a3: $6f
	or   a                                           ; $67a4: $b7
	ret  z                                           ; $67a5: $c8

	nop                                              ; $67a6: $00
	add  b                                           ; $67a7: $80
	inc  bc                                          ; $67a8: $03
	ld   [$e3e2], sp                                 ; $67a9: $08 $e2 $e3
	jp   hl                                          ; $67ac: $e9


	rst  $28                                         ; $67ad: $ef
	rlca                                             ; $67ae: $07
	rrca                                             ; $67af: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67b0: $cf
	db   $fd                                         ; $67b1: $fd
	dec  a                                           ; $67b2: $3d
	add  b                                           ; $67b3: $80
	ld   a, e                                        ; $67b4: $7b
	nop                                              ; $67b5: $00
	ld   [$f781], sp                                 ; $67b6: $08 $81 $f7
	adc  a                                           ; $67b9: $8f
	rst  $38                                         ; $67ba: $ff
	dec  bc                                          ; $67bb: $0b
	ld   a, a                                        ; $67bc: $7f
	rst  $38                                         ; $67bd: $ff
	cp   a                                           ; $67be: $bf
	rst  $38                                         ; $67bf: $ff
	rst  ToBoot                                         ; $67c0: $c7
	rst  $38                                         ; $67c1: $ff
	ld   sp, hl                                      ; $67c2: $f9
	rst  $28                                         ; $67c3: $ef
	xor  $f3                                         ; $67c4: $ee $f3
	db   $e3                                         ; $67c6: $e3
	db   $10                                         ; $67c7: $10
	adc  h                                           ; $67c8: $8c
	rst  $38                                         ; $67c9: $ff
	add  b                                           ; $67ca: $80
	ld   a, a                                        ; $67cb: $7f
	adc  d                                           ; $67cc: $8a
	rst  $38                                         ; $67cd: $ff
	add  d                                           ; $67ce: $82
	cp   $82                                         ; $67cf: $fe $82
	rst  $38                                         ; $67d1: $ff
	rlca                                             ; $67d2: $07

jr_015_67d3:
	cp   $ff                                         ; $67d3: $fe $ff
	pop  af                                          ; $67d5: $f1
	rst  $38                                         ; $67d6: $ff
	adc  $fe                                         ; $67d7: $ce $fe
	jr   c, jr_015_67d3                              ; $67d9: $38 $f8

	add  b                                           ; $67db: $80
	db   $f4                                         ; $67dc: $f4
	rlca                                             ; $67dd: $07
	db   $fc                                         ; $67de: $fc
	dec  b                                           ; $67df: $05
	and  $f9                                         ; $67e0: $e6 $f9
	sbc  c                                           ; $67e2: $99
	rst  $20                                         ; $67e3: $e7
	ld   h, a                                        ; $67e4: $67
	rst  $38                                         ; $67e5: $ff
	add  b                                           ; $67e6: $80
	cp   a                                           ; $67e7: $bf
	rlca                                             ; $67e8: $07
	ld   a, a                                        ; $67e9: $7f
	ld   a, h                                        ; $67ea: $7c
	call c, $39d9                                    ; $67eb: $dc $d9 $39
	daa                                              ; $67ee: $27
	ld   h, a                                        ; $67ef: $67
	add  b                                           ; $67f0: $80
	add  a                                           ; $67f1: $87
	rst  $38                                         ; $67f2: $ff
	add  b                                           ; $67f3: $80
	cp   $80                                         ; $67f4: $fe $80
	db   $fd                                         ; $67f6: $fd
	add  b                                           ; $67f7: $80
	rst  $38                                         ; $67f8: $ff
	jr   @-$1f                                       ; $67f9: $18 $df

	ld   e, a                                        ; $67fb: $5f
	rst  $38                                         ; $67fc: $ff
	cp   [hl]                                        ; $67fd: $be
	rst  $38                                         ; $67fe: $ff
	db   $dd                                         ; $67ff: $dd
	sbc  a                                           ; $6800: $9f
	cp   e                                           ; $6801: $bb
	ccf                                              ; $6802: $3f
	scf                                              ; $6803: $37
	or   a                                           ; $6804: $b7
	scf                                              ; $6805: $37
	or   a                                           ; $6806: $b7
	sub  a                                           ; $6807: $97
	sub  e                                           ; $6808: $93
	jp   $77b7                                       ; $6809: $c3 $b7 $77


	rst  $28                                         ; $680c: $ef
	rst  $20                                         ; $680d: $e7
	and  $e4                                         ; $680e: $e6 $e4
	call nc, $c1c2                                   ; $6810: $d4 $c2 $c1
	add  b                                           ; $6813: $80
	ret  z                                           ; $6814: $c8

	ld   bc, $b9d9                                   ; $6815: $01 $d9 $b9
	add  c                                           ; $6818: $81
	cp   l                                           ; $6819: $bd
	add  b                                           ; $681a: $80
	rst  $38                                         ; $681b: $ff
	add  d                                           ; $681c: $82
	rst  JumpTable                                         ; $681d: $df
	nop                                              ; $681e: $00
	or   a                                           ; $681f: $b7
	add  c                                           ; $6820: $81
	inc  de                                          ; $6821: $13
	ld   [bc], a                                     ; $6822: $02
	ld   de, $0005                                   ; $6823: $11 $05 $00
	add  b                                           ; $6826: $80
	and  d                                           ; $6827: $a2
	inc  c                                           ; $6828: $0c
	or   e                                           ; $6829: $b3
	cp   e                                           ; $682a: $bb
	or   b                                           ; $682b: $b0
	call nc, $f2c0                                   ; $682c: $d4 $c0 $f2
	and  h                                           ; $682f: $a4
	cp   h                                           ; $6830: $bc
	add  $47                                         ; $6831: $c6 $47
	ld   d, a                                        ; $6833: $57
	sbc  e                                           ; $6834: $9b
	cp   e                                           ; $6835: $bb

jr_015_6836:
	add  b                                           ; $6836: $80
	db   $db                                         ; $6837: $db
	add  b                                           ; $6838: $80
	ld   e, l                                        ; $6839: $5d
	inc  b                                           ; $683a: $04
	add  b                                           ; $683b: $80
	cp   a                                           ; $683c: $bf
	ld   a, a                                        ; $683d: $7f
	ld   e, a                                        ; $683e: $5f
	rra                                              ; $683f: $1f
	add  b                                           ; $6840: $80
	sbc  a                                           ; $6841: $9f
	add  b                                           ; $6842: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6843: $cf
	ld   bc, $ef6f                                   ; $6844: $01 $6f $ef
	add  b                                           ; $6847: $80
	xor  a                                           ; $6848: $af
	inc  bc                                          ; $6849: $03
	cp   a                                           ; $684a: $bf
	rst  $38                                         ; $684b: $ff
	rst  JumpTable                                         ; $684c: $df
	rra                                              ; $684d: $1f
	add  c                                           ; $684e: $81
	rst  $38                                         ; $684f: $ff
	ld   b, $fc                                      ; $6850: $06 $fc
	rst  $38                                         ; $6852: $ff
	di                                               ; $6853: $f3
	rst  $38                                         ; $6854: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6855: $cf
	rst  $38                                         ; $6856: $ff
	cp   a                                           ; $6857: $bf
	add  c                                           ; $6858: $81
	rst  $38                                         ; $6859: $ff
	nop                                              ; $685a: $00
	ld   a, a                                        ; $685b: $7f
	add  b                                           ; $685c: $80
	rst  $38                                         ; $685d: $ff
	ld   [$dafa], sp                                 ; $685e: $08 $fa $da
	db   $dd                                         ; $6861: $dd
	dec  a                                           ; $6862: $3d
	dec  sp                                          ; $6863: $3b
	ld   a, d                                        ; $6864: $7a
	halt                                             ; $6865: $76
	push af                                          ; $6866: $f5
	db   $fd                                         ; $6867: $fd
	add  b                                           ; $6868: $80
	ei                                               ; $6869: $fb
	add  b                                           ; $686a: $80
	rst  $30                                         ; $686b: $f7
	add  b                                           ; $686c: $80
	xor  $80                                         ; $686d: $ee $80
	adc  $80                                         ; $686f: $ce $80
	cp   b                                           ; $6871: $b8
	add  b                                           ; $6872: $80
	ld   [hl], c                                     ; $6873: $71
	add  b                                           ; $6874: $80
	db   $e3                                         ; $6875: $e3
	add  b                                           ; $6876: $80
	jp   nc, $9280                                   ; $6877: $d2 $80 $92

	add  d                                           ; $687a: $82
	ld   d, d                                        ; $687b: $52
	sub  c                                           ; $687c: $91
	rst  $38                                         ; $687d: $ff
	add  b                                           ; $687e: $80
	rst  $28                                         ; $687f: $ef
	add  b                                           ; $6880: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6881: $cf
	add  b                                           ; $6882: $80
	sbc  a                                           ; $6883: $9f
	add  b                                           ; $6884: $80
	rst  JumpTable                                         ; $6885: $df
	add  e                                           ; $6886: $83
	rst  $38                                         ; $6887: $ff
	add  b                                           ; $6888: $80
	dec  l                                           ; $6889: $2d
	add  d                                           ; $688a: $82
	ld   l, $80                                      ; $688b: $2e $80
	adc  [hl]                                        ; $688d: $8e
	add  b                                           ; $688e: $80
	inc  b                                           ; $688f: $04
	rlca                                             ; $6890: $07
	nop                                              ; $6891: $00
	add  d                                           ; $6892: $82
	and  d                                           ; $6893: $a2
	and  [hl]                                        ; $6894: $a6
	or   h                                           ; $6895: $b4
	or   l                                           ; $6896: $b5
	ld   e, a                                        ; $6897: $5f
	reti                                             ; $6898: $d9


	add  b                                           ; $6899: $80
	db   $dd                                         ; $689a: $dd
	ld   [bc], a                                     ; $689b: $02
	rst  $28                                         ; $689c: $ef
	xor  $00                                         ; $689d: $ee $00
	add  b                                           ; $689f: $80
	ld   bc, $1f04                                   ; $68a0: $01 $04 $1f
	ld   l, b                                        ; $68a3: $68
	jr   c, jr_015_6836                              ; $68a4: $38 $90

	ldh  [$80], a                                    ; $68a6: $e0 $80
	ld   h, b                                        ; $68a8: $60
	inc  c                                           ; $68a9: $0c
	rst  ToBoot                                         ; $68aa: $c7
	rst  $38                                         ; $68ab: $ff
	rst  JumpTable                                         ; $68ac: $df
	rst  $38                                         ; $68ad: $ff
	db   $eb                                         ; $68ae: $eb
	rst  $38                                         ; $68af: $ff
	rst  $10                                         ; $68b0: $d7
	rst  $38                                         ; $68b1: $ff
	rst  $28                                         ; $68b2: $ef
	rst  JumpTable                                         ; $68b3: $df
	db   $db                                         ; $68b4: $db
	ld   l, a                                        ; $68b5: $6f
	ld   h, a                                        ; $68b6: $67
	add  b                                           ; $68b7: $80
	ld   a, a                                        ; $68b8: $7f
	ld   [bc], a                                     ; $68b9: $02
	rrca                                             ; $68ba: $0f
	ld   e, l                                        ; $68bb: $5d
	ld   d, l                                        ; $68bc: $55
	add  b                                           ; $68bd: $80
	xor  d                                           ; $68be: $aa
	add  b                                           ; $68bf: $80
	ld   d, l                                        ; $68c0: $55
	add  b                                           ; $68c1: $80
	xor  d                                           ; $68c2: $aa
	add  b                                           ; $68c3: $80
	push de                                          ; $68c4: $d5
	add  b                                           ; $68c5: $80
	xor  d                                           ; $68c6: $aa
	add  b                                           ; $68c7: $80
	push de                                          ; $68c8: $d5
	add  b                                           ; $68c9: $80
	ld   [$5580], a                                  ; $68ca: $ea $80 $55
	add  b                                           ; $68cd: $80
	xor  d                                           ; $68ce: $aa
	add  b                                           ; $68cf: $80
	ld   d, l                                        ; $68d0: $55
	add  b                                           ; $68d1: $80
	xor  d                                           ; $68d2: $aa
	add  b                                           ; $68d3: $80
	ld   d, l                                        ; $68d4: $55
	add  b                                           ; $68d5: $80
	xor  d                                           ; $68d6: $aa
	add  b                                           ; $68d7: $80
	ld   d, l                                        ; $68d8: $55
	add  b                                           ; $68d9: $80
	xor  d                                           ; $68da: $aa
	add  b                                           ; $68db: $80
	nop                                              ; $68dc: $00
	rlca                                             ; $68dd: $07
	add  b                                           ; $68de: $80
	add  h                                           ; $68df: $84
	inc  b                                           ; $68e0: $04
	inc  c                                           ; $68e1: $0c
	adc  h                                           ; $68e2: $8c
	adc  b                                           ; $68e3: $88
	ld   e, b                                        ; $68e4: $58
	ld   d, b                                        ; $68e5: $50
	add  b                                           ; $68e6: $80
	xor  d                                           ; $68e7: $aa
	add  b                                           ; $68e8: $80
	ld   d, l                                        ; $68e9: $55
	add  b                                           ; $68ea: $80
	xor  d                                           ; $68eb: $aa
	add  b                                           ; $68ec: $80
	ld   bc, $0280                                   ; $68ed: $01 $80 $02
	add  b                                           ; $68f0: $80
	ld   bc, $0280                                   ; $68f1: $01 $80 $02
	add  b                                           ; $68f4: $80
	dec  d                                           ; $68f5: $15
	add  b                                           ; $68f6: $80
	xor  d                                           ; $68f7: $aa
	add  b                                           ; $68f8: $80
	ld   d, l                                        ; $68f9: $55
	add  b                                           ; $68fa: $80
	xor  d                                           ; $68fb: $aa
	add  d                                           ; $68fc: $82
	rst  $38                                         ; $68fd: $ff
	nop                                              ; $68fe: $00
	cp   $89                                         ; $68ff: $fe $89
	rst  $38                                         ; $6901: $ff
	nop                                              ; $6902: $00
	ld   bc, $ff9d                                   ; $6903: $01 $9d $ff
	ld   [bc], a                                     ; $6906: $02
	di                                               ; $6907: $f3
	rst  $38                                         ; $6908: $ff
	db   $eb                                         ; $6909: $eb
	add  c                                           ; $690a: $81
	rst  $38                                         ; $690b: $ff
	nop                                              ; $690c: $00
	db   $db                                         ; $690d: $db
	add  c                                           ; $690e: $81
	rst  $38                                         ; $690f: $ff
	ld   [bc], a                                     ; $6910: $02
	db   $fd                                         ; $6911: $fd
	rst  $38                                         ; $6912: $ff
	cp   $81                                         ; $6913: $fe $81
	rst  $38                                         ; $6915: $ff
	nop                                              ; $6916: $00
	ret  nz                                          ; $6917: $c0

	add  l                                           ; $6918: $85
	rst  $38                                         ; $6919: $ff
	ld   [$ffcf], sp                                 ; $691a: $08 $cf $ff
	cp   a                                           ; $691d: $bf
	rst  $38                                         ; $691e: $ff
	rst  $28                                         ; $691f: $ef
	ld   sp, hl                                      ; $6920: $f9
	ld   l, b                                        ; $6921: $68
	rst  $30                                         ; $6922: $f7
	ld   b, $82                                      ; $6923: $06 $82
	rst  $38                                         ; $6925: $ff
	add  b                                           ; $6926: $80
	ld   a, [$fd80]                                  ; $6927: $fa $80 $fd
	add  b                                           ; $692a: $80
	cp   $81                                         ; $692b: $fe $81
	rst  $38                                         ; $692d: $ff
	ld   [de], a                                     ; $692e: $12
	ld   a, a                                        ; $692f: $7f
	rst  $38                                         ; $6930: $ff
	or   d                                           ; $6931: $b2
	ld   sp, $5999                                   ; $6932: $31 $99 $59
	ld   e, [hl]                                     ; $6935: $5e
	ld   e, h                                        ; $6936: $5c
	call c, $df1c                                    ; $6937: $dc $1c $df
	ld   e, $cf                                      ; $693a: $1e $cf
	ld   b, $e6                                      ; $693c: $06 $e6
	nop                                              ; $693e: $00
	jr   jr_015_6942                                 ; $693f: $18 $01

	add  hl, bc                                      ; $6941: $09

jr_015_6942:
	add  b                                           ; $6942: $80
	ret  nz                                          ; $6943: $c0

	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	add  b                                           ; $6946: $80
	ld   bc, $070e                                   ; $6947: $01 $0e $07
	inc  b                                           ; $694a: $04
	dec  b                                           ; $694b: $05
	inc  bc                                          ; $694c: $03
	add  d                                           ; $694d: $82
	inc  bc                                          ; $694e: $03
	ret  nz                                          ; $694f: $c0

	ld   b, $63                                      ; $6950: $06 $63
	sub  b                                           ; $6952: $90
	or   [hl]                                        ; $6953: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6954: $cf
	rst  JumpTable                                         ; $6955: $df
	ld   e, a                                        ; $6956: $5f
	ld   d, a                                        ; $6957: $57
	add  c                                           ; $6958: $81
	rra                                              ; $6959: $1f
	add  b                                           ; $695a: $80
	ccf                                              ; $695b: $3f
	rlca                                             ; $695c: $07
	rra                                              ; $695d: $1f
	ld   a, a                                        ; $695e: $7f
	ld   l, a                                        ; $695f: $6f
	rst  $38                                         ; $6960: $ff
	rst  $30                                         ; $6961: $f7
	rst  $38                                         ; $6962: $ff
	rlca                                             ; $6963: $07
	rst  $38                                         ; $6964: $ff
	add  b                                           ; $6965: $80
	cp   a                                           ; $6966: $bf
	add  d                                           ; $6967: $82
	sbc  a                                           ; $6968: $9f
	add  b                                           ; $6969: $80
	cp   a                                           ; $696a: $bf
	add  h                                           ; $696b: $84
	rst  $38                                         ; $696c: $ff
	add  b                                           ; $696d: $80
	push af                                          ; $696e: $f5
	add  b                                           ; $696f: $80
	ld   a, [$fd80]                                  ; $6970: $fa $80 $fd
	add  b                                           ; $6973: $80
	cp   $86                                         ; $6974: $fe $86
	rst  $38                                         ; $6976: $ff
	add  b                                           ; $6977: $80
	ld   d, l                                        ; $6978: $55
	add  b                                           ; $6979: $80
	xor  d                                           ; $697a: $aa
	add  b                                           ; $697b: $80
	ld   d, l                                        ; $697c: $55
	add  b                                           ; $697d: $80
	xor  d                                           ; $697e: $aa
	add  b                                           ; $697f: $80
	push de                                          ; $6980: $d5
	add  b                                           ; $6981: $80
	ld   [$fd80], a                                  ; $6982: $ea $80 $fd
	add  b                                           ; $6985: $80
	rst  $38                                         ; $6986: $ff
	add  b                                           ; $6987: $80
	ld   d, l                                        ; $6988: $55
	add  b                                           ; $6989: $80
	xor  d                                           ; $698a: $aa
	ld   bc, $5554                                   ; $698b: $01 $54 $55
	add  b                                           ; $698e: $80
	xor  e                                           ; $698f: $ab
	ld   bc, $5554                                   ; $6990: $01 $54 $55
	add  b                                           ; $6993: $80
	xor  d                                           ; $6994: $aa
	add  b                                           ; $6995: $80
	ld   d, l                                        ; $6996: $55
	add  b                                           ; $6997: $80
	xor  d                                           ; $6998: $aa
	inc  bc                                          ; $6999: $03
	dec  d                                           ; $699a: $15
	ld   d, l                                        ; $699b: $55
	ld   l, d                                        ; $699c: $6a
	ld   [$d580], a                                  ; $699d: $ea $80 $d5
	inc  bc                                          ; $69a0: $03
	ld   l, d                                        ; $69a1: $6a
	ld   [$5515], a                                  ; $69a2: $ea $15 $55
	add  b                                           ; $69a5: $80
	xor  d                                           ; $69a6: $aa
	add  b                                           ; $69a7: $80
	ld   d, l                                        ; $69a8: $55
	add  b                                           ; $69a9: $80
	xor  d                                           ; $69aa: $aa
	add  b                                           ; $69ab: $80
	ld   d, l                                        ; $69ac: $55
	add  b                                           ; $69ad: $80
	xor  d                                           ; $69ae: $aa
	add  b                                           ; $69af: $80
	ld   d, l                                        ; $69b0: $55
	add  b                                           ; $69b1: $80
	xor  d                                           ; $69b2: $aa
	add  b                                           ; $69b3: $80
	ld   d, l                                        ; $69b4: $55
	add  b                                           ; $69b5: $80
	xor  e                                           ; $69b6: $ab
	add  b                                           ; $69b7: $80
	ld   e, a                                        ; $69b8: $5f
	add  b                                           ; $69b9: $80
	rst  $38                                         ; $69ba: $ff
	nop                                              ; $69bb: $00
	db   $fc                                         ; $69bc: $fc
	add  a                                           ; $69bd: $87
	rst  $38                                         ; $69be: $ff
	nop                                              ; $69bf: $00
	db   $fd                                         ; $69c0: $fd
	add  e                                           ; $69c1: $83
	rst  $38                                         ; $69c2: $ff
	ld   bc, $f806                                   ; $69c3: $01 $06 $f8
	add  d                                           ; $69c6: $82
	db   $fc                                         ; $69c7: $fc
	add  b                                           ; $69c8: $80
	cp   $00                                         ; $69c9: $fe $00
	db   $fc                                         ; $69cb: $fc
	add  b                                           ; $69cc: $80
	cp   $81                                         ; $69cd: $fe $81
	rst  $38                                         ; $69cf: $ff
	ld   [bc], a                                     ; $69d0: $02
	db   $fd                                         ; $69d1: $fd
	rst  $38                                         ; $69d2: $ff
	cp   $81                                         ; $69d3: $fe $81
	rst  $38                                         ; $69d5: $ff
	rrca                                             ; $69d6: $0f
	ld   [hl], a                                     ; $69d7: $77
	rst  $38                                         ; $69d8: $ff
	ld   sp, hl                                      ; $69d9: $f9
	rst  $38                                         ; $69da: $ff
	cp   [hl]                                        ; $69db: $be
	rst  $38                                         ; $69dc: $ff
	rst  JumpTable                                         ; $69dd: $df
	rst  $38                                         ; $69de: $ff
	rst  $20                                         ; $69df: $e7
	rst  $38                                         ; $69e0: $ff
	or   $ff                                         ; $69e1: $f6 $ff
	dec  a                                           ; $69e3: $3d
	db   $fc                                         ; $69e4: $fc
	ret  c                                           ; $69e5: $d8

	ld   hl, sp-$80                                  ; $69e6: $f8 $80
	db   $e3                                         ; $69e8: $e3
	dec  d                                           ; $69e9: $15
	rst  $28                                         ; $69ea: $ef
	sbc  a                                           ; $69eb: $9f
	ld   d, $ff                                      ; $69ec: $16 $ff
	add  c                                           ; $69ee: $81
	rst  $38                                         ; $69ef: $ff
	scf                                              ; $69f0: $37
	rst  $38                                         ; $69f1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f2: $cf
	rst  $38                                         ; $69f3: $ff
	cpl                                              ; $69f4: $2f
	rrca                                             ; $69f5: $0f
	ld   c, a                                        ; $69f6: $4f
	rrca                                             ; $69f7: $0f
	adc  $8e                                         ; $69f8: $ce $8e
	db   $fd                                         ; $69fa: $fd
	call $c3cb                                       ; $69fb: $cd $cb $c3
	xor  a                                           ; $69fe: $af
	or   a                                           ; $69ff: $b7
	add  b                                           ; $6a00: $80
	xor  a                                           ; $6a01: $af
	add  b                                           ; $6a02: $80
	sbc  a                                           ; $6a03: $9f
	inc  b                                           ; $6a04: $04
	ld   a, [hl]                                     ; $6a05: $7e
	ld   a, h                                        ; $6a06: $7c
	ld   a, l                                        ; $6a07: $7d
	ld   a, [hl]                                     ; $6a08: $7e
	cp   $89                                         ; $6a09: $fe $89
	rst  $38                                         ; $6a0b: $ff
	add  b                                           ; $6a0c: $80
	inc  bc                                          ; $6a0d: $03
	ld   [$01f9], sp                                 ; $6a0e: $08 $f9 $01
	ld   [bc], a                                     ; $6a11: $02
	nop                                              ; $6a12: $00
	rlca                                             ; $6a13: $07
	nop                                              ; $6a14: $00
	inc  bc                                          ; $6a15: $03
	nop                                              ; $6a16: $00
	ld   bc, $0083                                   ; $6a17: $01 $83 $00
	ld   [bc], a                                     ; $6a1a: $02
	ld   bc, $fdff                                   ; $6a1b: $01 $ff $fd
	add  c                                           ; $6a1e: $81
	rst  $38                                         ; $6a1f: $ff
	db   $10                                         ; $6a20: $10
	ei                                               ; $6a21: $fb
	rst  $38                                         ; $6a22: $ff
	rst  $30                                         ; $6a23: $f7
	rst  $38                                         ; $6a24: $ff
	rst  $28                                         ; $6a25: $ef
	rst  $38                                         ; $6a26: $ff
	rst  JumpTable                                         ; $6a27: $df
	rst  $38                                         ; $6a28: $ff
	cp   a                                           ; $6a29: $bf
	rst  $38                                         ; $6a2a: $ff
	add  e                                           ; $6a2b: $83
	rst  $38                                         ; $6a2c: $ff
	ld   a, a                                        ; $6a2d: $7f
	rst  $38                                         ; $6a2e: $ff
	db   $fd                                         ; $6a2f: $fd
	rst  $38                                         ; $6a30: $ff
	cp   a                                           ; $6a31: $bf
	add  h                                           ; $6a32: $84
	rst  $38                                         ; $6a33: $ff
	inc  bc                                          ; $6a34: $03
	ld   a, $1c                                      ; $6a35: $3e $1c
	rst  JumpTable                                         ; $6a37: $df
	jp   $ff9b                                       ; $6a38: $c3 $9b $ff


	ld   [bc], a                                     ; $6a3b: $02
	cp   $ff                                         ; $6a3c: $fe $ff
	cp   $89                                         ; $6a3e: $fe $89
	rst  $38                                         ; $6a40: $ff
	inc  b                                           ; $6a41: $04
	cp   a                                           ; $6a42: $bf
	rst  $38                                         ; $6a43: $ff
	ld   a, a                                        ; $6a44: $7f
	rst  $38                                         ; $6a45: $ff
	ccf                                              ; $6a46: $3f
	add  a                                           ; $6a47: $87
	rst  $38                                         ; $6a48: $ff
	ld   b, $f7                                      ; $6a49: $06 $f7
	rst  $38                                         ; $6a4b: $ff
	ei                                               ; $6a4c: $fb
	rst  $38                                         ; $6a4d: $ff
	rst  JumpTable                                         ; $6a4e: $df
	rst  $38                                         ; $6a4f: $ff
	db   $d3                                         ; $6a50: $d3
	add  l                                           ; $6a51: $85
	rst  $38                                         ; $6a52: $ff
	nop                                              ; $6a53: $00
	ldh  [$81], a                                    ; $6a54: $e0 $81
	rst  $38                                         ; $6a56: $ff
	inc  b                                           ; $6a57: $04
	rst  $28                                         ; $6a58: $ef
	rst  $38                                         ; $6a59: $ff
	di                                               ; $6a5a: $f3
	rst  $38                                         ; $6a5b: $ff
	db   $fc                                         ; $6a5c: $fc
	add  a                                           ; $6a5d: $87
	rst  $38                                         ; $6a5e: $ff
	ld   b, $1f                                      ; $6a5f: $06 $1f
	rst  $38                                         ; $6a61: $ff
	pop  hl                                          ; $6a62: $e1
	rst  $38                                         ; $6a63: $ff
	cp   $ff                                         ; $6a64: $fe $ff
	nop                                              ; $6a66: $00
	adc  e                                           ; $6a67: $8b
	rst  $38                                         ; $6a68: $ff
	ld   [bc], a                                     ; $6a69: $02
	rrca                                             ; $6a6a: $0f
	rst  $38                                         ; $6a6b: $ff
	ldh  a, [$81]                                    ; $6a6c: $f0 $81
	rst  $38                                         ; $6a6e: $ff
	nop                                              ; $6a6f: $00
	ld   a, a                                        ; $6a70: $7f
	add  c                                           ; $6a71: $81
	rst  $38                                         ; $6a72: $ff
	nop                                              ; $6a73: $00
	cp   a                                           ; $6a74: $bf
	add  c                                           ; $6a75: $81
	rst  $38                                         ; $6a76: $ff
	ld   b, $df                                      ; $6a77: $06 $df
	rst  $38                                         ; $6a79: $ff
	rst  $28                                         ; $6a7a: $ef
	rst  $38                                         ; $6a7b: $ff
	rst  $30                                         ; $6a7c: $f7
	rst  $38                                         ; $6a7d: $ff
	rlca                                             ; $6a7e: $07
	adc  e                                           ; $6a7f: $8b
	rst  $38                                         ; $6a80: $ff
	inc  c                                           ; $6a81: $0c
	ei                                               ; $6a82: $fb
	ld   sp, hl                                      ; $6a83: $f9
	adc  a                                           ; $6a84: $8f
	adc  h                                           ; $6a85: $8c
	rlca                                             ; $6a86: $07
	halt                                             ; $6a87: $76
	inc  de                                          ; $6a88: $13
	ei                                               ; $6a89: $fb
	ld   a, [bc]                                     ; $6a8a: $0a
	ld   a, [$fc68]                                  ; $6a8b: $fa $68 $fc
	db   $fd                                         ; $6a8e: $fd
	add  c                                           ; $6a8f: $81
	db   $fc                                         ; $6a90: $fc
	inc  b                                           ; $6a91: $04
	ld   h, d                                        ; $6a92: $62
	sbc  a                                           ; $6a93: $9f
	cp   a                                           ; $6a94: $bf
	ccf                                              ; $6a95: $3f
	rst  $38                                         ; $6a96: $ff
	add  c                                           ; $6a97: $81
	ld   a, a                                        ; $6a98: $7f
	add  c                                           ; $6a99: $81
	rst  $38                                         ; $6a9a: $ff
	add  d                                           ; $6a9b: $82
	ld   a, a                                        ; $6a9c: $7f
	add  b                                           ; $6a9d: $80
	ccf                                              ; $6a9e: $3f
	nop                                              ; $6a9f: $00
	rst  $38                                         ; $6aa0: $ff
	add  b                                           ; $6aa1: $80
	db   $fd                                         ; $6aa2: $fd
	dec  bc                                          ; $6aa3: $0b
	ldh  a, [$fd]                                    ; $6aa4: $f0 $fd
	call $fffc                                       ; $6aa6: $cd $fc $ff

jr_015_6aa9:
	jp   $3600                                       ; $6aa9: $c3 $00 $36


	sub  $f5                                         ; $6aac: $d6 $f5
	ld   hl, sp-$13                                  ; $6aae: $f8 $ed
	add  d                                           ; $6ab0: $82
	rst  $38                                         ; $6ab1: $ff
	inc  bc                                          ; $6ab2: $03
	ld   a, h                                        ; $6ab3: $7c
	db   $fc                                         ; $6ab4: $fc
	add  b                                           ; $6ab5: $80
	nop                                              ; $6ab6: $00
	add  b                                           ; $6ab7: $80
	sbc  a                                           ; $6ab8: $9f
	dec  e                                           ; $6ab9: $1d
	rra                                              ; $6aba: $1f
	ld   a, a                                        ; $6abb: $7f
	ld   e, a                                        ; $6abc: $5f
	rst  $38                                         ; $6abd: $ff
	ccf                                              ; $6abe: $3f
	rst  $38                                         ; $6abf: $ff
	jr   jr_015_6aa9                                 ; $6ac0: $18 $e7

	ld   a, e                                        ; $6ac2: $7b
	ei                                               ; $6ac3: $fb
	add  hl, sp                                      ; $6ac4: $39
	ld   sp, hl                                      ; $6ac5: $f9
	ld   a, $fe                                      ; $6ac6: $3e $fe
	cp   a                                           ; $6ac8: $bf
	rst  $38                                         ; $6ac9: $ff
	rrca                                             ; $6aca: $0f
	rst  $38                                         ; $6acb: $ff
	ld   b, a                                        ; $6acc: $47
	rst  $38                                         ; $6acd: $ff
	rst  $30                                         ; $6ace: $f7
	rst  $38                                         ; $6acf: $ff
	ld   b, e                                        ; $6ad0: $43
	rst  $38                                         ; $6ad1: $ff
	ei                                               ; $6ad2: $fb
	rst  $38                                         ; $6ad3: $ff
	rst  $30                                         ; $6ad4: $f7
	rst  $38                                         ; $6ad5: $ff
	ld   l, a                                        ; $6ad6: $6f
	ld   a, a                                        ; $6ad7: $7f
	add  b                                           ; $6ad8: $80
	rst  $38                                         ; $6ad9: $ff
	inc  bc                                          ; $6ada: $03
	sbc  a                                           ; $6adb: $9f
	rst  $38                                         ; $6adc: $ff
	cp   a                                           ; $6add: $bf
	rst  $38                                         ; $6ade: $ff
	add  b                                           ; $6adf: $80
	pop  hl                                          ; $6ae0: $e1
	add  d                                           ; $6ae1: $82
	rst  $38                                         ; $6ae2: $ff
	ld   b, $ef                                      ; $6ae3: $06 $ef
	rst  $38                                         ; $6ae5: $ff
	db   $e3                                         ; $6ae6: $e3
	rst  $38                                         ; $6ae7: $ff
	db   $fd                                         ; $6ae8: $fd
	rst  $38                                         ; $6ae9: $ff
	rst  $30                                         ; $6aea: $f7
	add  c                                           ; $6aeb: $81
	rst  $38                                         ; $6aec: $ff
	ld   [bc], a                                     ; $6aed: $02
	push af                                          ; $6aee: $f5
	rst  $38                                         ; $6aef: $ff
	call $ff83                                       ; $6af0: $cd $83 $ff
	ld   b, $df                                      ; $6af3: $06 $df
	rst  $38                                         ; $6af5: $ff
	rst  $28                                         ; $6af6: $ef
	rst  $38                                         ; $6af7: $ff
	ldh  a, [c]                                      ; $6af8: $f2
	rst  $38                                         ; $6af9: $ff
	db   $fc                                         ; $6afa: $fc
	add  c                                           ; $6afb: $81
	rst  $38                                         ; $6afc: $ff
	inc  b                                           ; $6afd: $04
	ret  nz                                          ; $6afe: $c0

	rst  $38                                         ; $6aff: $ff
	jp   $fcff                                       ; $6b00: $c3 $ff $fc


	adc  c                                           ; $6b03: $89
	rst  $38                                         ; $6b04: $ff
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	add  c                                           ; $6b07: $81
	rst  $38                                         ; $6b08: $ff
	ld   [bc], a                                     ; $6b09: $02
	rra                                              ; $6b0a: $1f
	rst  $38                                         ; $6b0b: $ff
	ldh  [$87], a                                    ; $6b0c: $e0 $87
	rst  $38                                         ; $6b0e: $ff
	inc  b                                           ; $6b0f: $04
	ld   a, a                                        ; $6b10: $7f
	rst  $38                                         ; $6b11: $ff
	add  a                                           ; $6b12: $87
	rst  $38                                         ; $6b13: $ff
	ld   hl, sp-$7f                                  ; $6b14: $f8 $81
	rst  $38                                         ; $6b16: $ff
	ld   [bc], a                                     ; $6b17: $02
	rrca                                             ; $6b18: $0f
	rst  $38                                         ; $6b19: $ff
	ldh  a, [$87]                                    ; $6b1a: $f0 $87
	rst  $38                                         ; $6b1c: $ff
	ld   c, $3f                                      ; $6b1d: $0e $3f
	rst  $38                                         ; $6b1f: $ff
	jp   $fcff                                       ; $6b20: $c3 $ff $fc


	rst  $38                                         ; $6b23: $ff
	ld   a, a                                        ; $6b24: $7f
	rst  $38                                         ; $6b25: $ff
	add  a                                           ; $6b26: $87
	rst  $38                                         ; $6b27: $ff
	ld   hl, sp-$01                                  ; $6b28: $f8 $ff
	ld   hl, sp-$01                                  ; $6b2a: $f8 $ff
	ei                                               ; $6b2c: $fb
	add  e                                           ; $6b2d: $83
	rst  $38                                         ; $6b2e: $ff
	ld   [bc], a                                     ; $6b2f: $02
	rra                                              ; $6b30: $1f
	rst  $38                                         ; $6b31: $ff
	db   $e3                                         ; $6b32: $e3
	add  c                                           ; $6b33: $81
	rst  $38                                         ; $6b34: $ff
	ld   [bc], a                                     ; $6b35: $02
	ccf                                              ; $6b36: $3f
	rst  $38                                         ; $6b37: $ff
	ret  nz                                          ; $6b38: $c0

	add  b                                           ; $6b39: $80
	rlca                                             ; $6b3a: $07
	add  b                                           ; $6b3b: $80
	dec  de                                          ; $6b3c: $1b
	add  b                                           ; $6b3d: $80
	inc  sp                                          ; $6b3e: $33
	add  b                                           ; $6b3f: $80
	dec  hl                                          ; $6b40: $2b
	add  b                                           ; $6b41: $80
	ld   e, h                                        ; $6b42: $5c
	add  b                                           ; $6b43: $80
	inc  a                                           ; $6b44: $3c
	add  b                                           ; $6b45: $80
	ld   a, b                                        ; $6b46: $78
	add  b                                           ; $6b47: $80
	pop  af                                          ; $6b48: $f1
	add  d                                           ; $6b49: $82
	cp   $80                                         ; $6b4a: $fe $80
	adc  $80                                         ; $6b4c: $ce $80
	ld   b, a                                        ; $6b4e: $47
	add  b                                           ; $6b4f: $80
	ld   a, a                                        ; $6b50: $7f
	add  b                                           ; $6b51: $80
	db   $e3                                         ; $6b52: $e3
	add  b                                           ; $6b53: $80
	adc  [hl]                                        ; $6b54: $8e
	ld   bc, $01fe                                   ; $6b55: $01 $fe $01
	add  c                                           ; $6b58: $81
	nop                                              ; $6b59: $00
	ld   [$00c0], sp                                 ; $6b5a: $08 $c0 $00
	jr   nz, jr_015_6b5f                             ; $6b5d: $20 $00

jr_015_6b5f:
	db   $10                                         ; $6b5f: $10
	ld   b, b                                        ; $6b60: $40
	ld   c, h                                        ; $6b61: $4c
	jr   nc, jr_015_6b97                             ; $6b62: $30 $33

	add  b                                           ; $6b64: $80
	sbc  h                                           ; $6b65: $9c
	ld   bc, $856e                                   ; $6b66: $01 $6e $85
	add  b                                           ; $6b69: $80
	ld   l, e                                        ; $6b6a: $6b
	ld   [bc], a                                     ; $6b6b: $02
	dec  hl                                          ; $6b6c: $2b
	daa                                              ; $6b6d: $27
	rlca                                             ; $6b6e: $07

jr_015_6b6f:
	add  b                                           ; $6b6f: $80
	rrca                                             ; $6b70: $0f
	dec  b                                           ; $6b71: $05
	ccf                                              ; $6b72: $3f
	rra                                              ; $6b73: $1f
	ld   a, a                                        ; $6b74: $7f
	ccf                                              ; $6b75: $3f
	rst  $38                                         ; $6b76: $ff
	ld   a, a                                        ; $6b77: $7f
	add  b                                           ; $6b78: $80
	rst  $38                                         ; $6b79: $ff
	ld   a, [bc]                                     ; $6b7a: $0a
	db   $fc                                         ; $6b7b: $fc
	rst  $38                                         ; $6b7c: $ff
	di                                               ; $6b7d: $f3
	rst  $38                                         ; $6b7e: $ff
	rst  $28                                         ; $6b7f: $ef
	rst  $38                                         ; $6b80: $ff
	ret  nc                                          ; $6b81: $d0

	rst  $38                                         ; $6b82: $ff
	adc  a                                           ; $6b83: $8f
	rst  $38                                         ; $6b84: $ff
	cp   a                                           ; $6b85: $bf
	add  e                                           ; $6b86: $83
	rst  $38                                         ; $6b87: $ff
	inc  b                                           ; $6b88: $04
	inc  bc                                          ; $6b89: $03
	rst  $38                                         ; $6b8a: $ff
	db   $e3                                         ; $6b8b: $e3
	rst  $38                                         ; $6b8c: $ff
	rra                                              ; $6b8d: $1f
	add  b                                           ; $6b8e: $80
	cp   $83                                         ; $6b8f: $fe $83
	rst  $38                                         ; $6b91: $ff
	inc  b                                           ; $6b92: $04
	cp   $ff                                         ; $6b93: $fe $ff
	ld   hl, sp-$01                                  ; $6b95: $f8 $ff

jr_015_6b97:
	ld   sp, hl                                      ; $6b97: $f9
	add  b                                           ; $6b98: $80
	add  a                                           ; $6b99: $87
	add  b                                           ; $6b9a: $80
	ccf                                              ; $6b9b: $3f
	adc  c                                           ; $6b9c: $89
	rst  $38                                         ; $6b9d: $ff
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	add  l                                           ; $6ba0: $85
	rst  $38                                         ; $6ba1: $ff
	add  b                                           ; $6ba2: $80
	ccf                                              ; $6ba3: $3f
	add  b                                           ; $6ba4: $80
	adc  a                                           ; $6ba5: $8f
	add  b                                           ; $6ba6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba7: $cf
	adc  d                                           ; $6ba8: $8a
	rst  $38                                         ; $6ba9: $ff
	ld   b, $fb                                      ; $6baa: $06 $fb
	rst  $38                                         ; $6bac: $ff
	rst  $20                                         ; $6bad: $e7
	rst  $38                                         ; $6bae: $ff
	rst  JumpTable                                         ; $6baf: $df
	rst  $38                                         ; $6bb0: $ff
	jp   $ff89                                       ; $6bb1: $c3 $89 $ff


	ld   [bc], a                                     ; $6bb4: $02
	cp   $ff                                         ; $6bb5: $fe $ff
	cp   $85                                         ; $6bb7: $fe $85
	rst  $38                                         ; $6bb9: $ff
	ld   a, [bc]                                     ; $6bba: $0a
	ld   sp, hl                                      ; $6bbb: $f9
	rst  $38                                         ; $6bbc: $ff
	rst  $20                                         ; $6bbd: $e7
	rst  $38                                         ; $6bbe: $ff
	pop  de                                          ; $6bbf: $d1
	ldh  a, [rAUDENA]                                ; $6bc0: $f0 $26
	ldh  [$e5], a                                    ; $6bc2: $e0 $e5
	ldh  [$03], a                                    ; $6bc4: $e0 $03
	adc  d                                           ; $6bc6: $8a
	rst  $38                                         ; $6bc7: $ff
	rrca                                             ; $6bc8: $0f
	ld   a, a                                        ; $6bc9: $7f
	ld   a, [hl]                                     ; $6bca: $7e
	daa                                              ; $6bcb: $27
	ld   h, $ff                                      ; $6bcc: $26 $ff
	cp   $ff                                         ; $6bce: $fe $ff
	db   $fd                                         ; $6bd0: $fd
	rst  $38                                         ; $6bd1: $ff
	di                                               ; $6bd2: $f3
	rst  $38                                         ; $6bd3: $ff
	rst  $28                                         ; $6bd4: $ef
	rst  $38                                         ; $6bd5: $ff
	sbc  a                                           ; $6bd6: $9f
	rst  $38                                         ; $6bd7: $ff
	ld   a, a                                        ; $6bd8: $7f
	add  c                                           ; $6bd9: $81
	rst  $38                                         ; $6bda: $ff
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	add  b                                           ; $6bdd: $80
	pop  af                                          ; $6bde: $f1
	add  b                                           ; $6bdf: $80
	di                                               ; $6be0: $f3
	add  b                                           ; $6be1: $80
	rst  $20                                         ; $6be2: $e7
	add  b                                           ; $6be3: $80
	rst  $28                                         ; $6be4: $ef
	add  b                                           ; $6be5: $80
	rst  JumpTable                                         ; $6be6: $df
	add  b                                           ; $6be7: $80
	sbc  a                                           ; $6be8: $9f
	inc  bc                                          ; $6be9: $03
	ld   a, $3f                                      ; $6bea: $3e $3f
	add  hl, sp                                      ; $6bec: $39
	jr   c, jr_015_6b6f                              ; $6bed: $38 $80

	di                                               ; $6bef: $f3
	add  b                                           ; $6bf0: $80
	rst  $20                                         ; $6bf1: $e7
	add  b                                           ; $6bf2: $80
	rst  $28                                         ; $6bf3: $ef
	ld   [bc], a                                     ; $6bf4: $02
	call z, $83cf                                    ; $6bf5: $cc $cf $83
	add  b                                           ; $6bf8: $80
	sbc  a                                           ; $6bf9: $9f
	ld   bc, $7fff                                   ; $6bfa: $01 $ff $7f
	add  b                                           ; $6bfd: $80
	ldh  a, [rP1]                                    ; $6bfe: $f0 $00
	nop                                              ; $6c00: $00
	add  b                                           ; $6c01: $80
	db   $fc                                         ; $6c02: $fc
	ld   [bc], a                                     ; $6c03: $02
	ldh  [rIE], a                                    ; $6c04: $e0 $ff
	rra                                              ; $6c06: $1f
	add  e                                           ; $6c07: $83
	rst  $38                                         ; $6c08: $ff
	add  b                                           ; $6c09: $80
	db   $fd                                         ; $6c0a: $fd
	inc  bc                                          ; $6c0b: $03
	ld   hl, sp+$79                                  ; $6c0c: $f8 $79
	ld   a, b                                        ; $6c0e: $78
	ld   b, $80                                      ; $6c0f: $06 $80
	ld   [de], a                                     ; $6c11: $12
	inc  b                                           ; $6c12: $04
	inc  c                                           ; $6c13: $0c
	rst  $38                                         ; $6c14: $ff
	ldh  a, [$c3]                                    ; $6c15: $f0 $c3
	ret  nz                                          ; $6c17: $c0

	add  c                                           ; $6c18: $81
	rst  $38                                         ; $6c19: $ff
	add  b                                           ; $6c1a: $80
	cp   a                                           ; $6c1b: $bf
	ld   [bc], a                                     ; $6c1c: $02
	rra                                              ; $6c1d: $1f
	ldh  [rP1], a                                    ; $6c1e: $e0 $00
	add  b                                           ; $6c20: $80
	rst  $38                                         ; $6c21: $ff
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	add  d                                           ; $6c24: $82
	ld   a, a                                        ; $6c25: $7f
	ld   [bc], a                                     ; $6c26: $02
	rrca                                             ; $6c27: $0f
	rst  $38                                         ; $6c28: $ff
	ldh  a, [$86]                                    ; $6c29: $f0 $86
	rst  $38                                         ; $6c2b: $ff
	ld   [bc], a                                     ; $6c2c: $02
	db   $fc                                         ; $6c2d: $fc
	rst  $38                                         ; $6c2e: $ff
	inc  bc                                          ; $6c2f: $03
	add  d                                           ; $6c30: $82
	rst  $38                                         ; $6c31: $ff
	rrca                                             ; $6c32: $0f
	ld   a, a                                        ; $6c33: $7f
	rst  $38                                         ; $6c34: $ff
	adc  a                                           ; $6c35: $8f
	rst  $38                                         ; $6c36: $ff
	di                                               ; $6c37: $f3
	rst  $38                                         ; $6c38: $ff
	db   $fc                                         ; $6c39: $fc
	add  e                                           ; $6c3a: $83
	rst  $38                                         ; $6c3b: $ff
	ld   a, e                                        ; $6c3c: $7b
	rst  $38                                         ; $6c3d: $ff
	rst  $20                                         ; $6c3e: $e7
	rst  $38                                         ; $6c3f: $ff
	rst  JumpTable                                         ; $6c40: $df
	rst  $38                                         ; $6c41: $ff
	cp   a                                           ; $6c42: $bf
	add  e                                           ; $6c43: $83
	rst  $38                                         ; $6c44: $ff
	dec  bc                                          ; $6c45: $0b
	cp   $7e                                         ; $6c46: $fe $7e
	ldh  [rIE], a                                    ; $6c48: $e0 $ff
	rst  $28                                         ; $6c4a: $ef
	rst  $38                                         ; $6c4b: $ff
	rst  $30                                         ; $6c4c: $f7
	rst  $38                                         ; $6c4d: $ff
	ei                                               ; $6c4e: $fb
	rst  $38                                         ; $6c4f: $ff
	db   $fc                                         ; $6c50: $fc
	cp   $84                                         ; $6c51: $fe $84
	rst  $38                                         ; $6c53: $ff
	nop                                              ; $6c54: $00
	ld   bc, $ff85                                   ; $6c55: $01 $85 $ff
	add  b                                           ; $6c58: $80
	cp   a                                           ; $6c59: $bf
	adc  b                                           ; $6c5a: $88
	rst  $38                                         ; $6c5b: $ff
	nop                                              ; $6c5c: $00
	cp   $81                                         ; $6c5d: $fe $81
	rst  $38                                         ; $6c5f: $ff
	nop                                              ; $6c60: $00
	cp   $85                                         ; $6c61: $fe $85
	rst  $38                                         ; $6c63: $ff
	ld   [bc], a                                     ; $6c64: $02
	add  e                                           ; $6c65: $83
	rst  $38                                         ; $6c66: $ff
	ld   a, a                                        ; $6c67: $7f
	add  c                                           ; $6c68: $81
	rst  $38                                         ; $6c69: $ff
	inc  b                                           ; $6c6a: $04
	dec  de                                          ; $6c6b: $1b
	rst  $38                                         ; $6c6c: $ff
	rst  ToBoot                                         ; $6c6d: $c7
	rst  $38                                         ; $6c6e: $ff
	rst  JumpTable                                         ; $6c6f: $df
	adc  [hl]                                        ; $6c70: $8e
	rst  $38                                         ; $6c71: $ff
	add  b                                           ; $6c72: $80
	db   $fc                                         ; $6c73: $fc
	inc  bc                                          ; $6c74: $03
	ld   hl, sp-$07                                  ; $6c75: $f8 $f9
	ld   hl, sp-$07                                  ; $6c77: $f8 $f9
	adc  b                                           ; $6c79: $88
	rst  $38                                         ; $6c7a: $ff
	add  b                                           ; $6c7b: $80
	ld   a, a                                        ; $6c7c: $7f
	inc  bc                                          ; $6c7d: $03
	inc  a                                           ; $6c7e: $3c
	cp   h                                           ; $6c7f: $bc
	nop                                              ; $6c80: $00
	add  b                                           ; $6c81: $80
	adc  h                                           ; $6c82: $8c
	rst  $38                                         ; $6c83: $ff
	add  b                                           ; $6c84: $80
	ld   a, a                                        ; $6c85: $7f
	add  e                                           ; $6c86: $83
	rst  $38                                         ; $6c87: $ff
	ld   b, $fe                                      ; $6c88: $06 $fe
	rst  $38                                         ; $6c8a: $ff
	or   $ff                                         ; $6c8b: $f6 $ff
	ld   hl, sp-$01                                  ; $6c8d: $f8 $ff
	rst  $30                                         ; $6c8f: $f7
	add  c                                           ; $6c90: $81
	rst  $38                                         ; $6c91: $ff
	nop                                              ; $6c92: $00
	ld   hl, sp-$7d                                  ; $6c93: $f8 $83
	rst  $38                                         ; $6c95: $ff
	ld   [bc], a                                     ; $6c96: $02
	ccf                                              ; $6c97: $3f
	rst  $38                                         ; $6c98: $ff
	rst  JumpTable                                         ; $6c99: $df
	add  c                                           ; $6c9a: $81
	rst  $38                                         ; $6c9b: $ff
	nop                                              ; $6c9c: $00
	rst  $28                                         ; $6c9d: $ef
	add  c                                           ; $6c9e: $81
	rst  $38                                         ; $6c9f: $ff
	nop                                              ; $6ca0: $00
	rrca                                             ; $6ca1: $0f
	add  d                                           ; $6ca2: $82
	rst  $38                                         ; $6ca3: $ff
	add  b                                           ; $6ca4: $80
	ld   hl, sp+$03                                  ; $6ca5: $f8 $03
	ldh  [$e7], a                                    ; $6ca7: $e0 $e7
	ldh  [$e7], a                                    ; $6ca9: $e0 $e7
	add  b                                           ; $6cab: $80
	ldh  [rSB], a                                    ; $6cac: $e0 $01
	ld   hl, sp-$05                                  ; $6cae: $f8 $fb
	add  c                                           ; $6cb0: $81
	ldh  a, [rAUD2LEN]                               ; $6cb1: $f0 $16
	push af                                          ; $6cb3: $f5
	nop                                              ; $6cb4: $00
	add  hl, bc                                      ; $6cb5: $09
	nop                                              ; $6cb6: $00
	di                                               ; $6cb7: $f3
	nop                                              ; $6cb8: $00
	db   $e4                                         ; $6cb9: $e4
	nop                                              ; $6cba: $00
	add  hl, hl                                      ; $6cbb: $29
	nop                                              ; $6cbc: $00
	ld   c, [hl]                                     ; $6cbd: $4e
	nop                                              ; $6cbe: $00
	cp   h                                           ; $6cbf: $bc
	nop                                              ; $6cc0: $00
	ret  nz                                          ; $6cc1: $c0

	rst  $38                                         ; $6cc2: $ff
	db   $e3                                         ; $6cc3: $e3
	rst  $20                                         ; $6cc4: $e7
	rlca                                             ; $6cc5: $07
	inc  bc                                          ; $6cc6: $03
	db   $e3                                         ; $6cc7: $e3
	rst  $38                                         ; $6cc8: $ff
	rst  JumpTable                                         ; $6cc9: $df
	add  c                                           ; $6cca: $81
	rst  $38                                         ; $6ccb: $ff
	add  b                                           ; $6ccc: $80
	ld   a, a                                        ; $6ccd: $7f
	nop                                              ; $6cce: $00
	ccf                                              ; $6ccf: $3f
	add  b                                           ; $6cd0: $80
	ld   a, a                                        ; $6cd1: $7f
	adc  l                                           ; $6cd2: $8d
	rst  $38                                         ; $6cd3: $ff
	ld   [bc], a                                     ; $6cd4: $02
	rlca                                             ; $6cd5: $07
	ld   h, a                                        ; $6cd6: $67
	ld   h, b                                        ; $6cd7: $60
	add  c                                           ; $6cd8: $81
	nop                                              ; $6cd9: $00
	add  hl, de                                      ; $6cda: $19
	ccf                                              ; $6cdb: $3f
	nop                                              ; $6cdc: $00
	rrca                                             ; $6cdd: $0f
	nop                                              ; $6cde: $00
	ld   d, b                                        ; $6cdf: $50
	nop                                              ; $6ce0: $00
	rrca                                             ; $6ce1: $0f
	nop                                              ; $6ce2: $00
	xor  [hl]                                        ; $6ce3: $ae
	nop                                              ; $6ce4: $00
	pop  bc                                          ; $6ce5: $c1
	nop                                              ; $6ce6: $00
	rrca                                             ; $6ce7: $0f
	nop                                              ; $6ce8: $00
	db   $fc                                         ; $6ce9: $fc
	nop                                              ; $6cea: $00
	push af                                          ; $6ceb: $f5
	nop                                              ; $6cec: $00
	ld   a, [bc]                                     ; $6ced: $0a
	nop                                              ; $6cee: $00
	ld   [hl], h                                     ; $6cef: $74
	nop                                              ; $6cf0: $00
	ld   sp, hl                                      ; $6cf1: $f9
	ld   bc, $0383                                   ; $6cf2: $01 $83 $03
	add  b                                           ; $6cf5: $80
	stop                                             ; $6cf6: $10 $00
	add  e                                           ; $6cf8: $83
	add  b                                           ; $6cf9: $80
	inc  bc                                          ; $6cfa: $03
	ld   bc, $9313                                   ; $6cfb: $01 $13 $93
	add  d                                           ; $6cfe: $82
	dec  sp                                          ; $6cff: $3b
	add  c                                           ; $6d00: $81
	ld   [hl], a                                     ; $6d01: $77
	nop                                              ; $6d02: $00
	ld   [hl], h                                     ; $6d03: $74
	add  b                                           ; $6d04: $80
	ld   h, [hl]                                     ; $6d05: $66
	add  b                                           ; $6d06: $80
	rst  $38                                         ; $6d07: $ff
	ld   bc, $bf0f                                   ; $6d08: $01 $0f $bf
	add  b                                           ; $6d0b: $80
	or   c                                           ; $6d0c: $b1
	rrca                                             ; $6d0d: $0f
	cp   b                                           ; $6d0e: $b8
	xor  b                                           ; $6d0f: $a8
	cp   e                                           ; $6d10: $bb
	ld   a, e                                        ; $6d11: $7b
	ld   a, b                                        ; $6d12: $78
	sbc  b                                           ; $6d13: $98
	ldh  a, [rPCM34]                                 ; $6d14: $f0 $77
	ret  nz                                          ; $6d16: $c0

	ret  c                                           ; $6d17: $d8

	rra                                              ; $6d18: $1f
	rlca                                             ; $6d19: $07
	rst  $20                                         ; $6d1a: $e7
	db   $e3                                         ; $6d1b: $e3
	ei                                               ; $6d1c: $fb
	ld   hl, sp-$80                                  ; $6d1d: $f8 $80
	jr   nz, jr_015_6d28                             ; $6d1f: $20 $07

	nop                                              ; $6d21: $00
	rra                                              ; $6d22: $1f
	nop                                              ; $6d23: $00
	rst  $28                                         ; $6d24: $ef
	nop                                              ; $6d25: $00
	ret  nc                                          ; $6d26: $d0

	nop                                              ; $6d27: $00

jr_015_6d28:
	rst  JumpTable                                         ; $6d28: $df
	add  c                                           ; $6d29: $81
	rst  $38                                         ; $6d2a: $ff
	dec  c                                           ; $6d2b: $0d
	rst  ToBoot                                         ; $6d2c: $c7
	rst  $38                                         ; $6d2d: $ff
	ld   [$173f], sp                                 ; $6d2e: $08 $3f $17
	rra                                              ; $6d31: $1f
	ret  z                                           ; $6d32: $c8

	rrca                                             ; $6d33: $0f
	and  a                                           ; $6d34: $a7
	rlca                                             ; $6d35: $07
	ld   d, e                                        ; $6d36: $53
	inc  bc                                          ; $6d37: $03
	or   c                                           ; $6d38: $b1
	add  c                                           ; $6d39: $81
	add  h                                           ; $6d3a: $84
	rst  $38                                         ; $6d3b: $ff
	inc  bc                                          ; $6d3c: $03
	rra                                              ; $6d3d: $1f
	rst  $38                                         ; $6d3e: $ff
	ld   e, $fe                                      ; $6d3f: $1e $fe
	add  b                                           ; $6d41: $80
	ld   hl, sp+$01                                  ; $6d42: $f8 $01
	db   $e3                                         ; $6d44: $e3
	ldh  [$80], a                                    ; $6d45: $e0 $80
	ldh  a, [$80]                                    ; $6d47: $f0 $80
	ldh  [rAUD3ENA], a                               ; $6d49: $e0 $1a
	push bc                                          ; $6d4b: $c5
	ret  nz                                          ; $6d4c: $c0

	adc  c                                           ; $6d4d: $89
	add  b                                           ; $6d4e: $80
	ld   d, $00                                      ; $6d4f: $16 $00
	add  hl, sp                                      ; $6d51: $39
	nop                                              ; $6d52: $00
	ldh  [rP1], a                                    ; $6d53: $e0 $00
	adc  $00                                         ; $6d55: $ce $00
	ld   c, $1f                                      ; $6d57: $0e $1f
	sbc  a                                           ; $6d59: $9f
	rra                                              ; $6d5a: $1f
	cp   a                                           ; $6d5b: $bf
	ccf                                              ; $6d5c: $3f
	inc  de                                          ; $6d5d: $13
	rrca                                             ; $6d5e: $0f
	push bc                                          ; $6d5f: $c5
	rlca                                             ; $6d60: $07
	inc  sp                                          ; $6d61: $33
	ld   [bc], a                                     ; $6d62: $02
	sub  b                                           ; $6d63: $90
	nop                                              ; $6d64: $00
	ld   l, h                                        ; $6d65: $6c
	add  b                                           ; $6d66: $80
	nop                                              ; $6d67: $00
	add  c                                           ; $6d68: $81
	ret  nz                                          ; $6d69: $c0

	ld   b, $d0                                      ; $6d6a: $06 $d0
	add  b                                           ; $6d6c: $80
	add  h                                           ; $6d6d: $84
	add  c                                           ; $6d6e: $81
	xor  c                                           ; $6d6f: $a9
	inc  bc                                          ; $6d70: $03
	ld   d, e                                        ; $6d71: $53
	add  c                                           ; $6d72: $81
	rlca                                             ; $6d73: $07
	ld   [bc], a                                     ; $6d74: $02
	and  a                                           ; $6d75: $a7
	rrca                                             ; $6d76: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d77: $cf
	add  b                                           ; $6d78: $80
	rst  $38                                         ; $6d79: $ff
	add  b                                           ; $6d7a: $80
	db   $fc                                         ; $6d7b: $fc
	inc  bc                                          ; $6d7c: $03
	ld   hl, sp-$05                                  ; $6d7d: $f8 $fb
	ldh  a, [$f3]                                    ; $6d7f: $f0 $f3
	add  b                                           ; $6d81: $80
	ldh  a, [$80]                                    ; $6d82: $f0 $80
	db   $fc                                         ; $6d84: $fc
	add  d                                           ; $6d85: $82
	cp   $80                                         ; $6d86: $fe $80
	ldh  [rAUD3LEN], a                               ; $6d88: $e0 $1b
	nop                                              ; $6d8a: $00
	rra                                              ; $6d8b: $1f
	nop                                              ; $6d8c: $00
	rst  $38                                         ; $6d8d: $ff
	nop                                              ; $6d8e: $00
	rst  $20                                         ; $6d8f: $e7

jr_015_6d90:
	nop                                              ; $6d90: $00
	ld   a, a                                        ; $6d91: $7f
	nop                                              ; $6d92: $00
	add  hl, de                                      ; $6d93: $19
	nop                                              ; $6d94: $00
	rra                                              ; $6d95: $1f
	nop                                              ; $6d96: $00
	cp   h                                           ; $6d97: $bc
	nop                                              ; $6d98: $00
	dec  a                                           ; $6d99: $3d
	nop                                              ; $6d9a: $00
	ccf                                              ; $6d9b: $3f
	nop                                              ; $6d9c: $00
	ldh  [rTAC], a                                   ; $6d9d: $e0 $07
	rst  ToBoot                                         ; $6d9f: $c7
	rlca                                             ; $6da0: $07
	daa                                              ; $6da1: $27
	rrca                                             ; $6da2: $0f
	ld   c, a                                        ; $6da3: $4f
	nop                                              ; $6da4: $00
	add  b                                           ; $6da5: $80
	add  b                                           ; $6da6: $80
	nop                                              ; $6da7: $00
	add  h                                           ; $6da8: $84
	ccf                                              ; $6da9: $3f
	add  h                                           ; $6daa: $84
	rst  $38                                         ; $6dab: $ff
	add  d                                           ; $6dac: $82
	ccf                                              ; $6dad: $3f
	adc  [hl]                                        ; $6dae: $8e
	cp   h                                           ; $6daf: $bc
	add  [hl]                                        ; $6db0: $86
	sbc  a                                           ; $6db1: $9f
	add  l                                           ; $6db2: $85
	rra                                              ; $6db3: $1f
	ld   bc, $e11e                                   ; $6db4: $01 $1e $e1
	add  b                                           ; $6db7: $80
	db   $e3                                         ; $6db8: $e3
	nop                                              ; $6db9: $00
	rst  $20                                         ; $6dba: $e7
	adc  b                                           ; $6dbb: $88
	rst  $30                                         ; $6dbc: $f7
	dec  bc                                          ; $6dbd: $0b
	rst  $20                                         ; $6dbe: $e7
	db   $e3                                         ; $6dbf: $e3
	nop                                              ; $6dc0: $00
	ld   hl, sp+$00                                  ; $6dc1: $f8 $00
	ld   hl, sp+$00                                  ; $6dc3: $f8 $00
	ld   hl, sp+$00                                  ; $6dc5: $f8 $00
	ld   hl, sp+$00                                  ; $6dc7: $f8 $00
	db   $fc                                         ; $6dc9: $fc
	add  c                                           ; $6dca: $81
	nop                                              ; $6dcb: $00
	ld   [bc], a                                     ; $6dcc: $02
	jr   nz, jr_015_6dcf                             ; $6dcd: $20 $00

jr_015_6dcf:
	sbc  $88                                         ; $6dcf: $de $88
	db   $ed                                         ; $6dd1: $ed
	add  e                                           ; $6dd2: $83
	xor  l                                           ; $6dd3: $ad
	nop                                              ; $6dd4: $00
	ld   d, e                                        ; $6dd5: $53
	add  e                                           ; $6dd6: $83
	nop                                              ; $6dd7: $00
	db   $10                                         ; $6dd8: $10
	ld   bc, $0200                                   ; $6dd9: $01 $00 $02
	nop                                              ; $6ddc: $00
	rlca                                             ; $6ddd: $07
	nop                                              ; $6dde: $00
	inc  c                                           ; $6ddf: $0c
	nop                                              ; $6de0: $00
	jr   jr_015_6de3                                 ; $6de1: $18 $00

jr_015_6de3:
	ld   d, c                                        ; $6de3: $51
	nop                                              ; $6de4: $00
	ret  nz                                          ; $6de5: $c0

	nop                                              ; $6de6: $00
	inc  bc                                          ; $6de7: $03
	nop                                              ; $6de8: $00
	add  d                                           ; $6de9: $82
	add  c                                           ; $6dea: $81
	nop                                              ; $6deb: $00
	ld   [bc], a                                     ; $6dec: $02
	add  b                                           ; $6ded: $80
	nop                                              ; $6dee: $00
	ret  nz                                          ; $6def: $c0

	add  c                                           ; $6df0: $81
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	ld   d, b                                        ; $6df3: $50
	add  c                                           ; $6df4: $81
	nop                                              ; $6df5: $00
	inc  b                                           ; $6df6: $04
	add  c                                           ; $6df7: $81
	nop                                              ; $6df8: $00
	pop  bc                                          ; $6df9: $c1
	nop                                              ; $6dfa: $00
	ld   [hl], b                                     ; $6dfb: $70
	add  c                                           ; $6dfc: $81
	nop                                              ; $6dfd: $00
	inc  b                                           ; $6dfe: $04
	ld   h, b                                        ; $6dff: $60
	nop                                              ; $6e00: $00
	ret  nz                                          ; $6e01: $c0

	nop                                              ; $6e02: $00
	add  b                                           ; $6e03: $80
	add  e                                           ; $6e04: $83
	nop                                              ; $6e05: $00
	ld   [bc], a                                     ; $6e06: $02
	db   $fc                                         ; $6e07: $fc
	nop                                              ; $6e08: $00
	db   $fc                                         ; $6e09: $fc
	add  l                                           ; $6e0a: $85
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	jr   nz, jr_015_6d90                             ; $6e0d: $20 $81

	nop                                              ; $6e0f: $00
	ld   b, $10                                      ; $6e10: $06 $10
	nop                                              ; $6e12: $00
	inc  e                                           ; $6e13: $1c
	nop                                              ; $6e14: $00
	ld   c, $00                                      ; $6e15: $0e $00
	ld   [bc], a                                     ; $6e17: $02
	add  e                                           ; $6e18: $83
	nop                                              ; $6e19: $00
	ld   a, [bc]                                     ; $6e1a: $0a
	add  b                                           ; $6e1b: $80
	nop                                              ; $6e1c: $00
	rra                                              ; $6e1d: $1f
	nop                                              ; $6e1e: $00
	ccf                                              ; $6e1f: $3f
	nop                                              ; $6e20: $00
	ld   a, a                                        ; $6e21: $7f
	nop                                              ; $6e22: $00
	ldh  [$ef], a                                    ; $6e23: $e0 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e25: $cf
	add  c                                           ; $6e26: $81
	rst  JumpTable                                         ; $6e27: $df
	ld   [$bf9f], sp                                 ; $6e28: $08 $9f $bf
	ret  nz                                          ; $6e2b: $c0

	nop                                              ; $6e2c: $00
	rst  $38                                         ; $6e2d: $ff
	nop                                              ; $6e2e: $00
	rst  $38                                         ; $6e2f: $ff
	nop                                              ; $6e30: $00
	rst  $38                                         ; $6e31: $ff
	add  b                                           ; $6e32: $80
	nop                                              ; $6e33: $00
	add  l                                           ; $6e34: $85
	rst  $38                                         ; $6e35: $ff
	add  b                                           ; $6e36: $80
	nop                                              ; $6e37: $00
	inc  b                                           ; $6e38: $04
	rst  $38                                         ; $6e39: $ff
	nop                                              ; $6e3a: $00
	rst  $38                                         ; $6e3b: $ff
	nop                                              ; $6e3c: $00
	rst  $38                                         ; $6e3d: $ff
	add  b                                           ; $6e3e: $80
	nop                                              ; $6e3f: $00
	add  d                                           ; $6e40: $82
	cp   a                                           ; $6e41: $bf
	add  c                                           ; $6e42: $81
	ccf                                              ; $6e43: $3f
	ld   b, $c0                                      ; $6e44: $06 $c0
	nop                                              ; $6e46: $00
	rst  $38                                         ; $6e47: $ff
	nop                                              ; $6e48: $00
	rst  $38                                         ; $6e49: $ff
	nop                                              ; $6e4a: $00
	rst  $38                                         ; $6e4b: $ff
	add  b                                           ; $6e4c: $80
	nop                                              ; $6e4d: $00
	add  l                                           ; $6e4e: $85
	rst  $38                                         ; $6e4f: $ff
	add  b                                           ; $6e50: $80
	nop                                              ; $6e51: $00
	inc  b                                           ; $6e52: $04
	rst  $38                                         ; $6e53: $ff
	nop                                              ; $6e54: $00
	rst  $38                                         ; $6e55: $ff
	nop                                              ; $6e56: $00
	rst  $38                                         ; $6e57: $ff
	add  b                                           ; $6e58: $80
	nop                                              ; $6e59: $00
	add  d                                           ; $6e5a: $82
	di                                               ; $6e5b: $f3
	add  c                                           ; $6e5c: $81
	db   $e3                                         ; $6e5d: $e3
	ld   b, $1c                                      ; $6e5e: $06 $1c
	nop                                              ; $6e60: $00
	rst  $38                                         ; $6e61: $ff
	nop                                              ; $6e62: $00
	rst  $38                                         ; $6e63: $ff
	nop                                              ; $6e64: $00
	rst  $38                                         ; $6e65: $ff
	add  b                                           ; $6e66: $80
	nop                                              ; $6e67: $00
	add  l                                           ; $6e68: $85
	cp   h                                           ; $6e69: $bc
	ld   b, $46                                      ; $6e6a: $06 $46
	nop                                              ; $6e6c: $00
	ld   hl, sp+$00                                  ; $6e6d: $f8 $00
	db   $fc                                         ; $6e6f: $fc
	nop                                              ; $6e70: $00
	cp   $80                                         ; $6e71: $fe $80
	nop                                              ; $6e73: $00
	add  l                                           ; $6e74: $85
	rra                                              ; $6e75: $1f
	ld   bc, $ffe0                                   ; $6e76: $01 $e0 $ff
	add  b                                           ; $6e79: $80
	nop                                              ; $6e7a: $00
	inc  b                                           ; $6e7b: $04
	ld   a, a                                        ; $6e7c: $7f
	nop                                              ; $6e7d: $00
	ccf                                              ; $6e7e: $3f
	nop                                              ; $6e7f: $00
	rra                                              ; $6e80: $1f
	add  l                                           ; $6e81: $85
	nop                                              ; $6e82: $00
	ld   bc, $fea1                                   ; $6e83: $01 $a1 $fe
	add  b                                           ; $6e86: $80
	nop                                              ; $6e87: $00
	inc  b                                           ; $6e88: $04
	rst  $38                                         ; $6e89: $ff
	nop                                              ; $6e8a: $00
	rst  $38                                         ; $6e8b: $ff
	nop                                              ; $6e8c: $00
	rst  $38                                         ; $6e8d: $ff
	add  l                                           ; $6e8e: $85
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	rst  $38                                         ; $6e91: $ff
	add  b                                           ; $6e92: $80
	cp   $0c                                         ; $6e93: $fe $0c
	nop                                              ; $6e95: $00
	rst  $38                                         ; $6e96: $ff
	nop                                              ; $6e97: $00
	rst  $38                                         ; $6e98: $ff
	nop                                              ; $6e99: $00
	rst  $38                                         ; $6e9a: $ff
	nop                                              ; $6e9b: $00
	ld   [bc], a                                     ; $6e9c: $02
	nop                                              ; $6e9d: $00
	dec  c                                           ; $6e9e: $0d
	nop                                              ; $6e9f: $00
	rrca                                             ; $6ea0: $0f
	nop                                              ; $6ea1: $00
	add  c                                           ; $6ea2: $81
	rst  $38                                         ; $6ea3: $ff
	dec  c                                           ; $6ea4: $0d
	nop                                              ; $6ea5: $00
	rst  $38                                         ; $6ea6: $ff
	nop                                              ; $6ea7: $00
	rst  $38                                         ; $6ea8: $ff
	nop                                              ; $6ea9: $00
	rst  $38                                         ; $6eaa: $ff
	nop                                              ; $6eab: $00
	ld   b, h                                        ; $6eac: $44
	nop                                              ; $6ead: $00
	ld   l, h                                        ; $6eae: $6c
	nop                                              ; $6eaf: $00
	ld   d, h                                        ; $6eb0: $54
	nop                                              ; $6eb1: $00
	add  e                                           ; $6eb2: $83
	add  b                                           ; $6eb3: $80
	ei                                               ; $6eb4: $fb
	dec  b                                           ; $6eb5: $05
	nop                                              ; $6eb6: $00
	rst  $38                                         ; $6eb7: $ff
	nop                                              ; $6eb8: $00
	rst  $38                                         ; $6eb9: $ff
	nop                                              ; $6eba: $00
	rst  $38                                         ; $6ebb: $ff
	add  l                                           ; $6ebc: $85
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	rst  $38                                         ; $6ebf: $ff
	add  b                                           ; $6ec0: $80
	db   $fd                                         ; $6ec1: $fd
	dec  b                                           ; $6ec2: $05
	nop                                              ; $6ec3: $00
	rst  $38                                         ; $6ec4: $ff
	nop                                              ; $6ec5: $00
	rst  $38                                         ; $6ec6: $ff
	nop                                              ; $6ec7: $00
	rst  $38                                         ; $6ec8: $ff
	add  c                                           ; $6ec9: $81
	nop                                              ; $6eca: $00
	inc  b                                           ; $6ecb: $04
	rrca                                             ; $6ecc: $0f
	nop                                              ; $6ecd: $00
	rlca                                             ; $6ece: $07
	nop                                              ; $6ecf: $00
	rst  $30                                         ; $6ed0: $f7
	add  b                                           ; $6ed1: $80
	adc  $09                                         ; $6ed2: $ce $09
	nop                                              ; $6ed4: $00
	rst  $38                                         ; $6ed5: $ff
	nop                                              ; $6ed6: $00
	rst  $38                                         ; $6ed7: $ff
	nop                                              ; $6ed8: $00
	rst  $38                                         ; $6ed9: $ff
	nop                                              ; $6eda: $00
	ld   a, $00                                      ; $6edb: $3e $00
	sbc  h                                           ; $6edd: $9c
	add  c                                           ; $6ede: $81

jr_015_6edf:
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	ld   e, l                                        ; $6ee1: $5d
	add  b                                           ; $6ee2: $80

jr_015_6ee3:
	rst  $38                                         ; $6ee3: $ff
	dec  b                                           ; $6ee4: $05
	nop                                              ; $6ee5: $00
	cp   $00                                         ; $6ee6: $fe $00
	db   $fc                                         ; $6ee8: $fc
	nop                                              ; $6ee9: $00
	ld   hl, sp-$7b                                  ; $6eea: $f8 $85
	nop                                              ; $6eec: $00
	db   $10                                         ; $6eed: $10
	ld   a, [bc]                                     ; $6eee: $0a
	nop                                              ; $6eef: $00
	rrca                                             ; $6ef0: $0f
	nop                                              ; $6ef1: $00
	rrca                                             ; $6ef2: $0f
	nop                                              ; $6ef3: $00
	rrca                                             ; $6ef4: $0f
	nop                                              ; $6ef5: $00
	rrca                                             ; $6ef6: $0f
	nop                                              ; $6ef7: $00
	ld   b, $00                                      ; $6ef8: $06 $00
	ld   b, $00                                      ; $6efa: $06 $00
	rrca                                             ; $6efc: $0f
	nop                                              ; $6efd: $00
	ld   b, h                                        ; $6efe: $44
	add  c                                           ; $6eff: $81
	nop                                              ; $6f00: $00
	ld   [bc], a                                     ; $6f01: $02
	jr   c, jr_015_6f04                              ; $6f02: $38 $00

jr_015_6f04:
	ld   d, h                                        ; $6f04: $54
	add  c                                           ; $6f05: $81
	nop                                              ; $6f06: $00
	ld   a, [bc]                                     ; $6f07: $0a
	ld   h, d                                        ; $6f08: $62
	nop                                              ; $6f09: $00
	call nz, $8e00                                   ; $6f0a: $c4 $00 $8e
	nop                                              ; $6f0d: $00
	ld   [$0700], sp                                 ; $6f0e: $08 $00 $07
	nop                                              ; $6f11: $00
	rlca                                             ; $6f12: $07
	add  c                                           ; $6f13: $81
	nop                                              ; $6f14: $00
	ld   [bc], a                                     ; $6f15: $02
	rlca                                             ; $6f16: $07
	nop                                              ; $6f17: $00
	rrca                                             ; $6f18: $0f
	add  e                                           ; $6f19: $83
	nop                                              ; $6f1a: $00
	ld   b, $be                                      ; $6f1b: $06 $be
	nop                                              ; $6f1d: $00
	inc  e                                           ; $6f1e: $1c
	nop                                              ; $6f1f: $00
	inc  e                                           ; $6f20: $1c
	nop                                              ; $6f21: $00
	inc  e                                           ; $6f22: $1c
	add  c                                           ; $6f23: $81
	nop                                              ; $6f24: $00
	inc  b                                           ; $6f25: $04
	add  b                                           ; $6f26: $80
	nop                                              ; $6f27: $00
	ld   h, h                                        ; $6f28: $64
	nop                                              ; $6f29: $00
	ld   b, [hl]                                     ; $6f2a: $46
	add  e                                           ; $6f2b: $83
	nop                                              ; $6f2c: $00
	ld   [bc], a                                     ; $6f2d: $02
	rrca                                             ; $6f2e: $0f
	nop                                              ; $6f2f: $00
	rrca                                             ; $6f30: $0f
	add  e                                           ; $6f31: $83
	nop                                              ; $6f32: $00
	inc  b                                           ; $6f33: $04
	ld   bc, $0200                                   ; $6f34: $01 $00 $02
	nop                                              ; $6f37: $00
	inc  bc                                          ; $6f38: $03
	add  c                                           ; $6f39: $81
	nop                                              ; $6f3a: $00
	ld   [$00c1], sp                                 ; $6f3b: $08 $c1 $00
	add  b                                           ; $6f3e: $80
	nop                                              ; $6f3f: $00
	ret  nz                                          ; $6f40: $c0

	nop                                              ; $6f41: $00
	inc  bc                                          ; $6f42: $03
	nop                                              ; $6f43: $00
	add  d                                           ; $6f44: $82
	add  l                                           ; $6f45: $85
	nop                                              ; $6f46: $00
	ld   [bc], a                                     ; $6f47: $02
	ldh  a, [rP1]                                    ; $6f48: $f0 $00
	ldh  [$81], a                                    ; $6f4a: $e0 $81
	nop                                              ; $6f4c: $00
	ld   b, $81                                      ; $6f4d: $06 $81
	nop                                              ; $6f4f: $00
	pop  bc                                          ; $6f50: $c1
	nop                                              ; $6f51: $00
	ld   [hl], b                                     ; $6f52: $70
	nop                                              ; $6f53: $00
	jr   nz, jr_015_6edf                             ; $6f54: $20 $89

	nop                                              ; $6f56: $00
	ld   [bc], a                                     ; $6f57: $02
	db   $fc                                         ; $6f58: $fc
	nop                                              ; $6f59: $00
	db   $fc                                         ; $6f5a: $fc
	add  e                                           ; $6f5b: $83
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	jr   nz, jr_015_6ee3                             ; $6f5e: $20 $83

	nop                                              ; $6f60: $00
	ld   b, $10                                      ; $6f61: $06 $10
	nop                                              ; $6f63: $00
	inc  e                                           ; $6f64: $1c
	nop                                              ; $6f65: $00
	ld   c, $00                                      ; $6f66: $0e $00
	add  d                                           ; $6f68: $82
	add  l                                           ; $6f69: $85
	nop                                              ; $6f6a: $00
	ld   [$001f], sp                                 ; $6f6b: $08 $1f $00
	ccf                                              ; $6f6e: $3f
	nop                                              ; $6f6f: $00
	ld   a, a                                        ; $6f70: $7f
	nop                                              ; $6f71: $00
	db   $fc                                         ; $6f72: $fc
	db   $fd                                         ; $6f73: $fd
	cp   $85                                         ; $6f74: $fe $85
	nop                                              ; $6f76: $00
	inc  b                                           ; $6f77: $04
	rst  $38                                         ; $6f78: $ff
	nop                                              ; $6f79: $00
	rst  $38                                         ; $6f7a: $ff
	nop                                              ; $6f7b: $00
	rst  $38                                         ; $6f7c: $ff
	add  b                                           ; $6f7d: $80
	nop                                              ; $6f7e: $00
	dec  c                                           ; $6f7f: $0d
	rst  $38                                         ; $6f80: $ff
	inc  b                                           ; $6f81: $04
	nop                                              ; $6f82: $00
	inc  c                                           ; $6f83: $0c
	nop                                              ; $6f84: $00
	jr   jr_015_6f87                                 ; $6f85: $18 $00

jr_015_6f87:
	stop                                             ; $6f87: $10 $00
	rst  $38                                         ; $6f89: $ff
	nop                                              ; $6f8a: $00
	rst  $38                                         ; $6f8b: $ff
	nop                                              ; $6f8c: $00
	rst  $38                                         ; $6f8d: $ff
	add  b                                           ; $6f8e: $80
	nop                                              ; $6f8f: $00
	inc  bc                                          ; $6f90: $03
	rst  $28                                         ; $6f91: $ef
	sub  b                                           ; $6f92: $90
	nop                                              ; $6f93: $00
	ret  nz                                          ; $6f94: $c0

	add  c                                           ; $6f95: $81
	nop                                              ; $6f96: $00
	ld   b, $40                                      ; $6f97: $06 $40
	nop                                              ; $6f99: $00
	rst  $38                                         ; $6f9a: $ff
	nop                                              ; $6f9b: $00
	rst  $38                                         ; $6f9c: $ff
	nop                                              ; $6f9d: $00
	rst  $38                                         ; $6f9e: $ff
	add  b                                           ; $6f9f: $80
	nop                                              ; $6fa0: $00
	dec  c                                           ; $6fa1: $0d
	rst  $38                                         ; $6fa2: $ff
	jr   nz, jr_015_6fa5                             ; $6fa3: $20 $00

jr_015_6fa5:
	ld   h, b                                        ; $6fa5: $60
	nop                                              ; $6fa6: $00
	ret  nz                                          ; $6fa7: $c0

	nop                                              ; $6fa8: $00
	add  b                                           ; $6fa9: $80
	nop                                              ; $6faa: $00
	rst  $38                                         ; $6fab: $ff
	nop                                              ; $6fac: $00
	rst  $38                                         ; $6fad: $ff
	nop                                              ; $6fae: $00
	rst  $38                                         ; $6faf: $ff
	add  b                                           ; $6fb0: $80
	nop                                              ; $6fb1: $00
	ld   bc, $04fb                                   ; $6fb2: $01 $fb $04
	add  l                                           ; $6fb5: $85
	nop                                              ; $6fb6: $00
	inc  b                                           ; $6fb7: $04
	rst  $38                                         ; $6fb8: $ff
	nop                                              ; $6fb9: $00
	rst  $38                                         ; $6fba: $ff
	nop                                              ; $6fbb: $00
	rst  $38                                         ; $6fbc: $ff
	add  b                                           ; $6fbd: $80
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	rst  $38                                         ; $6fc0: $ff
	rst  $38                                         ; $6fc1: $ff
	nop                                              ; $6fc2: $00
	cp   l                                           ; $6fc3: $bd
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	rst  $38                                         ; $6fc6: $ff
	add  d                                           ; $6fc7: $82
	ld   a, a                                        ; $6fc8: $7f
	add  b                                           ; $6fc9: $80
	ld   a, h                                        ; $6fca: $7c
	add  b                                           ; $6fcb: $80
	ld   sp, $0780                                   ; $6fcc: $31 $80 $07
	add  b                                           ; $6fcf: $80
	rrca                                             ; $6fd0: $0f
	add  b                                           ; $6fd1: $80
	rra                                              ; $6fd2: $1f
	add  b                                           ; $6fd3: $80
	ccf                                              ; $6fd4: $3f
	add  b                                           ; $6fd5: $80
	ld   a, a                                        ; $6fd6: $7f
	add  b                                           ; $6fd7: $80
	ccf                                              ; $6fd8: $3f
	add  b                                           ; $6fd9: $80
	cp   a                                           ; $6fda: $bf
	add  b                                           ; $6fdb: $80
	rst  JumpTable                                         ; $6fdc: $df
	add  b                                           ; $6fdd: $80
	rst  $28                                         ; $6fde: $ef
	add  b                                           ; $6fdf: $80
	rst  JumpTable                                         ; $6fe0: $df
	add  b                                           ; $6fe1: $80
	cp   a                                           ; $6fe2: $bf
	add  b                                           ; $6fe3: $80
	ld   a, a                                        ; $6fe4: $7f
	adc  d                                           ; $6fe5: $8a
	db   $fd                                         ; $6fe6: $fd
	add  d                                           ; $6fe7: $82
	ei                                               ; $6fe8: $fb
	add  b                                           ; $6fe9: $80
	cp   $8c                                         ; $6fea: $fe $8c
	rst  $38                                         ; $6fec: $ff
	add  b                                           ; $6fed: $80
	ld   sp, hl                                      ; $6fee: $f9
	adc  h                                           ; $6fef: $8c
	ld   a, c                                        ; $6ff0: $79
	add  b                                           ; $6ff1: $80
	db   $eb                                         ; $6ff2: $eb
	adc  h                                           ; $6ff3: $8c
	rst  $30                                         ; $6ff4: $f7
	add  c                                           ; $6ff5: $81
	ld   a, [$fb00]                                  ; $6ff6: $fa $00 $fb
	adc  c                                           ; $6ff9: $89
	db   $fd                                         ; $6ffa: $fd
	inc  b                                           ; $6ffb: $04
	ld   [bc], a                                     ; $6ffc: $02
	cp   $fc                                         ; $6ffd: $fe $fc
	db   $fd                                         ; $6fff: $fd
	ld   sp, hl                                      ; $7000: $f9
	add  d                                           ; $7001: $82
	ei                                               ; $7002: $fb
	ld   bc, $fefa                                   ; $7003: $01 $fa $fe
	add  b                                           ; $7006: $80
	db   $fc                                         ; $7007: $fc
	add  c                                           ; $7008: $81
	db   $fd                                         ; $7009: $fd
	nop                                              ; $700a: $00
	ld   bc, $7e80                                   ; $700b: $01 $80 $7e
	add  d                                           ; $700e: $82
	cp   $80                                         ; $700f: $fe $80
	ccf                                              ; $7011: $3f
	add  b                                           ; $7012: $80
	ld   a, a                                        ; $7013: $7f
	add  d                                           ; $7014: $82
	cp   $80                                         ; $7015: $fe $80
	db   $fd                                         ; $7017: $fd
	add  h                                           ; $7018: $84
	rst  $38                                         ; $7019: $ff
	add  d                                           ; $701a: $82
	ld   a, a                                        ; $701b: $7f
	add  h                                           ; $701c: $84
	rst  $38                                         ; $701d: $ff
	adc  [hl]                                        ; $701e: $8e
	ei                                               ; $701f: $fb
	adc  [hl]                                        ; $7020: $8e
	rst  $38                                         ; $7021: $ff
	adc  b                                           ; $7022: $88
	ld   a, c                                        ; $7023: $79
	add  h                                           ; $7024: $84
	cp   c                                           ; $7025: $b9
	add  b                                           ; $7026: $80
	rst  $30                                         ; $7027: $f7
	add  [hl]                                        ; $7028: $86
	rst  $28                                         ; $7029: $ef
	add  e                                           ; $702a: $83
	rst  JumpTable                                         ; $702b: $df
	nop                                              ; $702c: $00
	sbc  $80                                         ; $702d: $de $80
	db   $fd                                         ; $702f: $fd
	add  [hl]                                        ; $7030: $86
	db   $ed                                         ; $7031: $ed
	add  e                                           ; $7032: $83
	xor  l                                           ; $7033: $ad
	ld   bc, $00ac                                   ; $7034: $01 $ac $00
	add  b                                           ; $7037: $80
	ccf                                              ; $7038: $3f
	add  b                                           ; $7039: $80
	ld   b, b                                        ; $703a: $40
	nop                                              ; $703b: $00
	ld   e, a                                        ; $703c: $5f
	add  a                                           ; $703d: $87
	ld   b, b                                        ; $703e: $40
	ld   bc, $001f                                   ; $703f: $01 $1f $00
	add  b                                           ; $7042: $80
	rst  $38                                         ; $7043: $ff
	add  b                                           ; $7044: $80
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	rst  $38                                         ; $7047: $ff
	add  a                                           ; $7048: $87
	nop                                              ; $7049: $00
	ld   bc, $00ff                                   ; $704a: $01 $ff $00
	add  b                                           ; $704d: $80
	rst  $38                                         ; $704e: $ff
	add  b                                           ; $704f: $80
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	rst  $38                                         ; $7052: $ff
	add  a                                           ; $7053: $87
	nop                                              ; $7054: $00
	ld   bc, $00ff                                   ; $7055: $01 $ff $00
	add  b                                           ; $7058: $80
	rst  $38                                         ; $7059: $ff
	add  b                                           ; $705a: $80
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	rst  $38                                         ; $705d: $ff
	add  c                                           ; $705e: $81
	nop                                              ; $705f: $00
	rlca                                             ; $7060: $07
	inc  e                                           ; $7061: $1c
	nop                                              ; $7062: $00
	ld   h, e                                        ; $7063: $63
	nop                                              ; $7064: $00
	ld   a, a                                        ; $7065: $7f
	nop                                              ; $7066: $00
	rst  $38                                         ; $7067: $ff
	nop                                              ; $7068: $00
	add  b                                           ; $7069: $80
	rst  $38                                         ; $706a: $ff
	add  b                                           ; $706b: $80
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	rst  $38                                         ; $706e: $ff
	add  c                                           ; $706f: $81
	nop                                              ; $7070: $00
	rlca                                             ; $7071: $07
	ld   h, e                                        ; $7072: $63
	nop                                              ; $7073: $00
	ld   d, l                                        ; $7074: $55

jr_015_7075:
	nop                                              ; $7075: $00
	ld   c, c                                        ; $7076: $49
	nop                                              ; $7077: $00
	add  b                                           ; $7078: $80
	nop                                              ; $7079: $00
	add  b                                           ; $707a: $80
	rst  $38                                         ; $707b: $ff
	add  b                                           ; $707c: $80
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	rst  $38                                         ; $707f: $ff
	add  e                                           ; $7080: $83
	nop                                              ; $7081: $00
	dec  b                                           ; $7082: $05
	ld   a, a                                        ; $7083: $7f
	nop                                              ; $7084: $00
	inc  e                                           ; $7085: $1c
	nop                                              ; $7086: $00
	sbc  h                                           ; $7087: $9c
	nop                                              ; $7088: $00
	add  b                                           ; $7089: $80
	rst  $38                                         ; $708a: $ff
	add  b                                           ; $708b: $80
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	rst  $38                                         ; $708e: $ff
	add  c                                           ; $708f: $81
	nop                                              ; $7090: $00
	ld   [bc], a                                     ; $7091: $02
	ld   a, a                                        ; $7092: $7f
	nop                                              ; $7093: $00
	inc  e                                           ; $7094: $1c
	add  c                                           ; $7095: $81
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	ld   h, e                                        ; $7098: $63
	add  e                                           ; $7099: $83
	nop                                              ; $709a: $00
	ld   a, [bc]                                     ; $709b: $0a
	inc  c                                           ; $709c: $0c
	nop                                              ; $709d: $00
	inc  d                                           ; $709e: $14
	nop                                              ; $709f: $00
	ld   l, $00                                      ; $70a0: $2e $00
	ld   e, d                                        ; $70a2: $5a
	nop                                              ; $70a3: $00
	inc  d                                           ; $70a4: $14
	nop                                              ; $70a5: $00
	ld   a, b                                        ; $70a6: $78
	add  e                                           ; $70a7: $83
	nop                                              ; $70a8: $00
	ld   a, [bc]                                     ; $70a9: $0a
	jr   jr_015_70ac                                 ; $70aa: $18 $00

jr_015_70ac:
	ld   h, a                                        ; $70ac: $67
	nop                                              ; $70ad: $00
	ld   h, a                                        ; $70ae: $67
	nop                                              ; $70af: $00
	ld   h, a                                        ; $70b0: $67
	nop                                              ; $70b1: $00
	inc  h                                           ; $70b2: $24
	nop                                              ; $70b3: $00
	ld   e, e                                        ; $70b4: $5b
	add  e                                           ; $70b5: $83
	nop                                              ; $70b6: $00
	ld   a, [bc]                                     ; $70b7: $0a
	ld   a, a                                        ; $70b8: $7f
	nop                                              ; $70b9: $00
	ld   a, h                                        ; $70ba: $7c
	nop                                              ; $70bb: $00
	ld   a, b                                        ; $70bc: $78
	nop                                              ; $70bd: $00
	ld   a, h                                        ; $70be: $7c
	nop                                              ; $70bf: $00
	ld   a, h                                        ; $70c0: $7c
	nop                                              ; $70c1: $00
	ld   a, e                                        ; $70c2: $7b
	add  e                                           ; $70c3: $83
	nop                                              ; $70c4: $00
	inc  l                                           ; $70c5: $2c
	ld   a, a                                        ; $70c6: $7f
	nop                                              ; $70c7: $00
	ld   a, h                                        ; $70c8: $7c
	nop                                              ; $70c9: $00
	ld   a, b                                        ; $70ca: $78
	nop                                              ; $70cb: $00
	ld   a, h                                        ; $70cc: $7c
	nop                                              ; $70cd: $00
	ld   a, h                                        ; $70ce: $7c
	nop                                              ; $70cf: $00
	ld   a, e                                        ; $70d0: $7b
	nop                                              ; $70d1: $00
	ld   a, a                                        ; $70d2: $7f
	nop                                              ; $70d3: $00
	inc  e                                           ; $70d4: $1c
	nop                                              ; $70d5: $00
	inc  e                                           ; $70d6: $1c
	nop                                              ; $70d7: $00
	inc  e                                           ; $70d8: $1c
	nop                                              ; $70d9: $00
	inc  e                                           ; $70da: $1c
	nop                                              ; $70db: $00
	rra                                              ; $70dc: $1f
	nop                                              ; $70dd: $00
	rrca                                             ; $70de: $0f
	nop                                              ; $70df: $00
	ld   l, a                                        ; $70e0: $6f
	nop                                              ; $70e1: $00
	ld   a, a                                        ; $70e2: $7f
	nop                                              ; $70e3: $00
	inc  e                                           ; $70e4: $1c
	nop                                              ; $70e5: $00
	inc  e                                           ; $70e6: $1c
	nop                                              ; $70e7: $00
	inc  e                                           ; $70e8: $1c
	nop                                              ; $70e9: $00
	inc  e                                           ; $70ea: $1c
	nop                                              ; $70eb: $00
	ld   a, h                                        ; $70ec: $7c
	nop                                              ; $70ed: $00
	ld   hl, sp+$00                                  ; $70ee: $f8 $00
	ei                                               ; $70f0: $fb
	nop                                              ; $70f1: $00
	jr   jr_015_7075                                 ; $70f2: $18 $81

	nop                                              ; $70f4: $00
	ld   [bc], a                                     ; $70f5: $02
	ld   h, a                                        ; $70f6: $67
	nop                                              ; $70f7: $00
	ld   c, c                                        ; $70f8: $49
	add  c                                           ; $70f9: $81
	nop                                              ; $70fa: $00
	ld   [de], a                                     ; $70fb: $12
	ld   d, b                                        ; $70fc: $50
	nop                                              ; $70fd: $00
	stop                                             ; $70fe: $10 $00
	halt                                             ; $7100: $76
	nop                                              ; $7101: $00
	inc  c                                           ; $7102: $0c
	nop                                              ; $7103: $00
	inc  d                                           ; $7104: $14
	nop                                              ; $7105: $00
	jr   z, jr_015_7108                              ; $7106: $28 $00

jr_015_7108:
	ld   d, [hl]                                     ; $7108: $56
	nop                                              ; $7109: $00
	and  l                                           ; $710a: $a5
	nop                                              ; $710b: $00
	inc  a                                           ; $710c: $3c
	nop                                              ; $710d: $00
	rst  $38                                         ; $710e: $ff
	add  l                                           ; $710f: $85
	nop                                              ; $7110: $00
	ld   [bc], a                                     ; $7111: $02
	inc  c                                           ; $7112: $0c
	nop                                              ; $7113: $00
	ld   a, [bc]                                     ; $7114: $0a
	add  c                                           ; $7115: $81
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	dec  b                                           ; $7118: $05
	add  c                                           ; $7119: $81
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	and  e                                           ; $711c: $a3
	adc  l                                           ; $711d: $8d
	ld   b, b                                        ; $711e: $40
	nop                                              ; $711f: $00
	ldh  [$9d], a                                    ; $7120: $e0 $9d
	nop                                              ; $7122: $00
	ld   a, [bc]                                     ; $7123: $0a
	ld   a, a                                        ; $7124: $7f
	nop                                              ; $7125: $00
	ld   a, a                                        ; $7126: $7f
	nop                                              ; $7127: $00
	ld   a, a                                        ; $7128: $7f
	nop                                              ; $7129: $00
	ld   a, a                                        ; $712a: $7f
	nop                                              ; $712b: $00
	ld   a, a                                        ; $712c: $7f
	nop                                              ; $712d: $00
	inc  e                                           ; $712e: $1c
	add  c                                           ; $712f: $81
	nop                                              ; $7130: $00
	ld   [bc], a                                     ; $7131: $02
	inc  e                                           ; $7132: $1c
	nop                                              ; $7133: $00
	inc  e                                           ; $7134: $1c
	add  c                                           ; $7135: $81
	nop                                              ; $7136: $00
	ld   [bc], a                                     ; $7137: $02
	inc  e                                           ; $7138: $1c
	nop                                              ; $7139: $00
	ld   c, c                                        ; $713a: $49
	add  e                                           ; $713b: $83
	nop                                              ; $713c: $00
	ld   [$0001], sp                                 ; $713d: $08 $01 $00
	ld   d, b                                        ; $7140: $50
	nop                                              ; $7141: $00
	inc  b                                           ; $7142: $04
	nop                                              ; $7143: $00
	inc  e                                           ; $7144: $1c
	nop                                              ; $7145: $00
	inc  e                                           ; $7146: $1c
	add  c                                           ; $7147: $81
	nop                                              ; $7148: $00
	ld   [bc], a                                     ; $7149: $02
	inc  e                                           ; $714a: $1c
	nop                                              ; $714b: $00
	ld   a, a                                        ; $714c: $7f
	add  e                                           ; $714d: $83
	nop                                              ; $714e: $00
	ld   [bc], a                                     ; $714f: $02
	ld   a, a                                        ; $7150: $7f
	nop                                              ; $7151: $00
	inc  e                                           ; $7152: $1c
	add  c                                           ; $7153: $81
	nop                                              ; $7154: $00
	ld   [bc], a                                     ; $7155: $02
	inc  e                                           ; $7156: $1c
	nop                                              ; $7157: $00
	inc  e                                           ; $7158: $1c
	add  e                                           ; $7159: $83
	nop                                              ; $715a: $00
	ld   [$00a4], sp                                 ; $715b: $08 $a4 $00
	db   $f4                                         ; $715e: $f4
	nop                                              ; $715f: $00
	ld   c, h                                        ; $7160: $4c
	nop                                              ; $7161: $00
	ld   h, [hl]                                     ; $7162: $66
	nop                                              ; $7163: $00
	ld   b, e                                        ; $7164: $43
	add  e                                           ; $7165: $83
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	ld   e, d                                        ; $7168: $5a
	add  c                                           ; $7169: $81
	nop                                              ; $716a: $00
	inc  c                                           ; $716b: $0c
	ld   a, a                                        ; $716c: $7f
	nop                                              ; $716d: $00
	inc  h                                           ; $716e: $24
	nop                                              ; $716f: $00
	inc  h                                           ; $7170: $24
	nop                                              ; $7171: $00
	ld   b, e                                        ; $7172: $43
	nop                                              ; $7173: $00
	ld   h, [hl]                                     ; $7174: $66
	nop                                              ; $7175: $00
	jp   $9900                                       ; $7176: $c3 $00 $99


	add  c                                           ; $7179: $81
	nop                                              ; $717a: $00
	inc  c                                           ; $717b: $0c
	ld   bc, $3e00                                   ; $717c: $01 $00 $3e
	nop                                              ; $717f: $00
	rrca                                             ; $7180: $0f
	nop                                              ; $7181: $00
	rrca                                             ; $7182: $0f
	nop                                              ; $7183: $00
	rrca                                             ; $7184: $0f
	nop                                              ; $7185: $00
	rrca                                             ; $7186: $0f
	nop                                              ; $7187: $00
	ccf                                              ; $7188: $3f
	add  c                                           ; $7189: $81
	nop                                              ; $718a: $00
	inc  c                                           ; $718b: $0c
	ret  nz                                          ; $718c: $c0

	nop                                              ; $718d: $00
	ld   a, $00                                      ; $718e: $3e $00
	ld   hl, sp+$00                                  ; $7190: $f8 $00
	ld   hl, sp+$00                                  ; $7192: $f8 $00
	ld   hl, sp+$00                                  ; $7194: $f8 $00
	ld   hl, sp+$00                                  ; $7196: $f8 $00
	cp   $81                                         ; $7198: $fe $81
	nop                                              ; $719a: $00
	inc  b                                           ; $719b: $04
	ld   h, [hl]                                     ; $719c: $66
	nop                                              ; $719d: $00
	add  hl, bc                                      ; $719e: $09
	nop                                              ; $719f: $00
	add  hl, bc                                      ; $71a0: $09
	add  c                                           ; $71a1: $81
	nop                                              ; $71a2: $00
	inc  bc                                          ; $71a3: $03
	ld   h, [hl]                                     ; $71a4: $66
	nop                                              ; $71a5: $00
	rst  $38                                         ; $71a6: $ff
	nop                                              ; $71a7: $00
	add  b                                           ; $71a8: $80
	rst  $38                                         ; $71a9: $ff
	add  b                                           ; $71aa: $80
	nop                                              ; $71ab: $00
	dec  bc                                          ; $71ac: $0b
	call z, $c800                                    ; $71ad: $cc $00 $c8
	nop                                              ; $71b0: $00
	ret  z                                           ; $71b1: $c8

	nop                                              ; $71b2: $00
	ld   b, h                                        ; $71b3: $44
	nop                                              ; $71b4: $00
	ld   [hl], a                                     ; $71b5: $77
	nop                                              ; $71b6: $00
	rst  $38                                         ; $71b7: $ff
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80
	rst  $38                                         ; $71ba: $ff
	add  b                                           ; $71bb: $80
	nop                                              ; $71bc: $00
	dec  bc                                          ; $71bd: $0b
	jp   $2400                                       ; $71be: $c3 $00 $24


	nop                                              ; $71c1: $00
	inc  h                                           ; $71c2: $24
	nop                                              ; $71c3: $00
	ld   e, d                                        ; $71c4: $5a
	nop                                              ; $71c5: $00
	ld   h, [hl]                                     ; $71c6: $66
	nop                                              ; $71c7: $00
	rst  $38                                         ; $71c8: $ff
	nop                                              ; $71c9: $00
	add  b                                           ; $71ca: $80
	rst  $38                                         ; $71cb: $ff
	add  d                                           ; $71cc: $82
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	inc  a                                           ; $71cf: $3c
	add  c                                           ; $71d0: $81
	nop                                              ; $71d1: $00
	dec  b                                           ; $71d2: $05
	inc  a                                           ; $71d3: $3c
	nop                                              ; $71d4: $00
	rst  $38                                         ; $71d5: $ff
	nop                                              ; $71d6: $00
	rst  $38                                         ; $71d7: $ff
	nop                                              ; $71d8: $00
	add  b                                           ; $71d9: $80
	rst  $38                                         ; $71da: $ff
	add  b                                           ; $71db: $80
	nop                                              ; $71dc: $00
	dec  bc                                          ; $71dd: $0b
	sbc  h                                           ; $71de: $9c
	nop                                              ; $71df: $00
	inc  bc                                          ; $71e0: $03
	nop                                              ; $71e1: $00
	add  b                                           ; $71e2: $80
	nop                                              ; $71e3: $00
	jr   nz, jr_015_71e6                             ; $71e4: $20 $00

jr_015_71e6:
	ret  nz                                          ; $71e6: $c0

	nop                                              ; $71e7: $00
	rst  $38                                         ; $71e8: $ff
	nop                                              ; $71e9: $00
	add  b                                           ; $71ea: $80
	rst  $38                                         ; $71eb: $ff
	add  d                                           ; $71ec: $82
	nop                                              ; $71ed: $00
	add  b                                           ; $71ee: $80
	ccf                                              ; $71ef: $3f
	add  b                                           ; $71f0: $80
	ld   b, b                                        ; $71f1: $40
	nop                                              ; $71f2: $00
	ld   e, a                                        ; $71f3: $5f
	add  e                                           ; $71f4: $83
	ld   b, b                                        ; $71f5: $40
	dec  b                                           ; $71f6: $05
	ld   b, c                                        ; $71f7: $41
	ld   b, b                                        ; $71f8: $40
	ld   b, c                                        ; $71f9: $41
	ld   b, b                                        ; $71fa: $40
	rra                                              ; $71fb: $1f
	nop                                              ; $71fc: $00
	add  b                                           ; $71fd: $80
	rst  $38                                         ; $71fe: $ff
	add  b                                           ; $71ff: $80
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	rst  $38                                         ; $7202: $ff
	add  c                                           ; $7203: $81
	nop                                              ; $7204: $00
	rlca                                             ; $7205: $07
	ret  c                                           ; $7206: $d8

	nop                                              ; $7207: $00
	dec  h                                           ; $7208: $25
	nop                                              ; $7209: $00
	ld   h, $00                                      ; $720a: $26 $00
	inc  h                                           ; $720c: $24
	nop                                              ; $720d: $00
	add  b                                           ; $720e: $80
	rst  $38                                         ; $720f: $ff
	add  b                                           ; $7210: $80
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	rst  $38                                         ; $7213: $ff
	add  c                                           ; $7214: $81
	nop                                              ; $7215: $00
	rlca                                             ; $7216: $07
	ret  c                                           ; $7217: $d8

	nop                                              ; $7218: $00
	ld   l, b                                        ; $7219: $68
	nop                                              ; $721a: $00
	ld   c, h                                        ; $721b: $4c
	nop                                              ; $721c: $00
	inc  bc                                          ; $721d: $03
	nop                                              ; $721e: $00
	add  b                                           ; $721f: $80
	rst  $38                                         ; $7220: $ff
	add  b                                           ; $7221: $80
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	rst  $38                                         ; $7224: $ff
	add  c                                           ; $7225: $81
	nop                                              ; $7226: $00
	rlca                                             ; $7227: $07
	ccf                                              ; $7228: $3f
	nop                                              ; $7229: $00
	rrca                                             ; $722a: $0f
	nop                                              ; $722b: $00
	rrca                                             ; $722c: $0f
	nop                                              ; $722d: $00
	ret  nz                                          ; $722e: $c0

	nop                                              ; $722f: $00
	add  b                                           ; $7230: $80
	rst  $38                                         ; $7231: $ff
	add  b                                           ; $7232: $80
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	rst  $38                                         ; $7235: $ff
	add  c                                           ; $7236: $81
	nop                                              ; $7237: $00
	rlca                                             ; $7238: $07
	db   $fc                                         ; $7239: $fc
	nop                                              ; $723a: $00
	ldh  a, [rP1]                                    ; $723b: $f0 $00
	ldh  a, [rP1]                                    ; $723d: $f0 $00
	inc  bc                                          ; $723f: $03
	nop                                              ; $7240: $00
	add  b                                           ; $7241: $80
	rst  $38                                         ; $7242: $ff
	add  b                                           ; $7243: $80
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	rst  $38                                         ; $7246: $ff
	add  e                                           ; $7247: $83
	nop                                              ; $7248: $00
	dec  b                                           ; $7249: $05
	rrca                                             ; $724a: $0f
	nop                                              ; $724b: $00
	inc  bc                                          ; $724c: $03
	nop                                              ; $724d: $00
	di                                               ; $724e: $f3
	nop                                              ; $724f: $00
	add  b                                           ; $7250: $80
	rst  $38                                         ; $7251: $ff
	add  b                                           ; $7252: $80
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	rst  $38                                         ; $7255: $ff
	add  c                                           ; $7256: $81
	nop                                              ; $7257: $00
	rlca                                             ; $7258: $07
	jr   c, jr_015_725b                              ; $7259: $38 $00

jr_015_725b:
	rst  ToBoot                                         ; $725b: $c7
	nop                                              ; $725c: $00
	add  hl, sp                                      ; $725d: $39
	nop                                              ; $725e: $00
	add  hl, sp                                      ; $725f: $39
	nop                                              ; $7260: $00
	add  b                                           ; $7261: $80
	db   $fc                                         ; $7262: $fc
	add  b                                           ; $7263: $80
	ld   [bc], a                                     ; $7264: $02
	nop                                              ; $7265: $00
	ld   a, [$0283]                                  ; $7266: $fa $83 $02
	inc  b                                           ; $7269: $04
	add  d                                           ; $726a: $82
	ld   [bc], a                                     ; $726b: $02
	add  d                                           ; $726c: $82
	ld   [bc], a                                     ; $726d: $02
	rlca                                             ; $726e: $07
	add  e                                           ; $726f: $83
	nop                                              ; $7270: $00
	ld   a, [bc]                                     ; $7271: $0a
	ld   c, $00                                      ; $7272: $0e $00
	ld   sp, $2400                                   ; $7274: $31 $00 $24
	nop                                              ; $7277: $00
	inc  d                                           ; $7278: $14
	nop                                              ; $7279: $00
	ld   [hl], b                                     ; $727a: $70
	nop                                              ; $727b: $00
	ld   a, a                                        ; $727c: $7f
	add  e                                           ; $727d: $83
	nop                                              ; $727e: $00
	ld   a, [bc]                                     ; $727f: $0a
	jr   c, jr_015_7282                              ; $7280: $38 $00

jr_015_7282:
	add  $00                                         ; $7282: $c6 $00
	sub  d                                           ; $7284: $92
	nop                                              ; $7285: $00
	inc  d                                           ; $7286: $14
	nop                                              ; $7287: $00
	add  a                                           ; $7288: $87
	nop                                              ; $7289: $00
	rst  $38                                         ; $728a: $ff
	add  e                                           ; $728b: $83
	nop                                              ; $728c: $00
	ld   b, $33                                      ; $728d: $06 $33
	nop                                              ; $728f: $00
	ld   a, [hl+]                                    ; $7290: $2a
	nop                                              ; $7291: $00
	add  hl, de                                      ; $7292: $19
	nop                                              ; $7293: $00
	inc  bc                                          ; $7294: $03
	add  c                                           ; $7295: $81
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	inc  bc                                          ; $7298: $03
	add  e                                           ; $7299: $83
	nop                                              ; $729a: $00
	ld   [hl+], a                                    ; $729b: $22
	ld   hl, sp+$00                                  ; $729c: $f8 $00
	ld   h, b                                        ; $729e: $60
	nop                                              ; $729f: $00
	ld   l, b                                        ; $72a0: $68
	nop                                              ; $72a1: $00
	inc  c                                           ; $72a2: $0c
	nop                                              ; $72a3: $00
	sub  b                                           ; $72a4: $90
	nop                                              ; $72a5: $00
	ld   l, h                                        ; $72a6: $6c
	nop                                              ; $72a7: $00
	ld   [hl], $00                                   ; $72a8: $36 $00
	ld   c, c                                        ; $72aa: $49
	nop                                              ; $72ab: $00
	ld   c, c                                        ; $72ac: $49
	nop                                              ; $72ad: $00
	ld   c, c                                        ; $72ae: $49
	nop                                              ; $72af: $00
	inc  h                                           ; $72b0: $24
	nop                                              ; $72b1: $00
	inc  h                                           ; $72b2: $24
	nop                                              ; $72b3: $00
	ld   h, a                                        ; $72b4: $67
	nop                                              ; $72b5: $00
	jr   jr_015_72b8                                 ; $72b6: $18 $00

jr_015_72b8:
	ld   [hl], $00                                   ; $72b8: $36 $00
	ld   e, d                                        ; $72ba: $5a
	nop                                              ; $72bb: $00
	sub  e                                           ; $72bc: $93
	nop                                              ; $72bd: $00
	sub  e                                           ; $72be: $93
	add  c                                           ; $72bf: $81
	nop                                              ; $72c0: $00
	ld   b, $13                                      ; $72c1: $06 $13
	nop                                              ; $72c3: $00
	inc  de                                          ; $72c4: $13
	nop                                              ; $72c5: $00
	ld   l, h                                        ; $72c6: $6c
	nop                                              ; $72c7: $00
	ld   h, b                                        ; $72c8: $60
	adc  e                                           ; $72c9: $8b
	nop                                              ; $72ca: $00
	ld   [bc], a                                     ; $72cb: $02
	ld   h, b                                        ; $72cc: $60
	nop                                              ; $72cd: $00
	ld   b, $8b                                      ; $72ce: $06 $8b
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	and  a                                           ; $72d2: $a7
	add  e                                           ; $72d3: $83
	ld   b, b                                        ; $72d4: $40
	ld   b, $41                                      ; $72d5: $06 $41
	ld   b, b                                        ; $72d7: $40
	ld   b, c                                        ; $72d8: $41
	ld   b, b                                        ; $72d9: $40
	ld   b, c                                        ; $72da: $41
	ld   b, b                                        ; $72db: $40
	ld   b, c                                        ; $72dc: $41
	add  c                                           ; $72dd: $81
	ld   b, b                                        ; $72de: $40
	db   $10                                         ; $72df: $10
	inc  e                                           ; $72e0: $1c
	nop                                              ; $72e1: $00
	sub  b                                           ; $72e2: $90
	nop                                              ; $72e3: $00
	sub  b                                           ; $72e4: $90
	nop                                              ; $72e5: $00
	sbc  h                                           ; $72e6: $9c
	nop                                              ; $72e7: $00
	sbc  h                                           ; $72e8: $9c
	nop                                              ; $72e9: $00
	sbc  h                                           ; $72ea: $9c
	nop                                              ; $72eb: $00
	sbc  h                                           ; $72ec: $9c
	nop                                              ; $72ed: $00
	ld   h, h                                        ; $72ee: $64
	nop                                              ; $72ef: $00
	add  hl, hl                                      ; $72f0: $29
	add  c                                           ; $72f1: $81
	nop                                              ; $72f2: $00
	ld   b, $4c                                      ; $72f3: $06 $4c
	nop                                              ; $72f5: $00
	ld   c, h                                        ; $72f6: $4c
	nop                                              ; $72f7: $00
	ld   c, h                                        ; $72f8: $4c
	nop                                              ; $72f9: $00
	ld   c, h                                        ; $72fa: $4c
	add  c                                           ; $72fb: $81
	nop                                              ; $72fc: $00
	inc  h                                           ; $72fd: $24
	ld   c, h                                        ; $72fe: $4c
	nop                                              ; $72ff: $00
	call z, $0f00                                    ; $7300: $cc $00 $0f
	nop                                              ; $7303: $00
	add  hl, sp                                      ; $7304: $39
	nop                                              ; $7305: $00
	add  hl, bc                                      ; $7306: $09
	nop                                              ; $7307: $00
	ld   d, $00                                      ; $7308: $16 $00
	ld   a, d                                        ; $730a: $7a
	nop                                              ; $730b: $00
	ld   l, a                                        ; $730c: $6f
	nop                                              ; $730d: $00
	dec  c                                           ; $730e: $0d
	nop                                              ; $730f: $00
	dec  c                                           ; $7310: $0d
	nop                                              ; $7311: $00
	ldh  a, [rP1]                                    ; $7312: $f0 $00
	db   $fc                                         ; $7314: $fc
	nop                                              ; $7315: $00
	rst  $38                                         ; $7316: $ff
	nop                                              ; $7317: $00
	ld   h, h                                        ; $7318: $64
	nop                                              ; $7319: $00
	xor  b                                           ; $731a: $a8
	nop                                              ; $731b: $00
	ld   d, h                                        ; $731c: $54
	nop                                              ; $731d: $00
	ld   sp, hl                                      ; $731e: $f9
	nop                                              ; $731f: $00
	sub  e                                           ; $7320: $93
	nop                                              ; $7321: $00
	ld   bc, $0083                                   ; $7322: $01 $83 $00
	ld   [bc], a                                     ; $7325: $02
	ld   bc, $0100                                   ; $7326: $01 $00 $01
	add  c                                           ; $7329: $81
	nop                                              ; $732a: $00
	ld   [de], a                                     ; $732b: $12
	dec  d                                           ; $732c: $15
	nop                                              ; $732d: $00
	and  $00                                         ; $732e: $e6 $00
	add  hl, sp                                      ; $7330: $39
	nop                                              ; $7331: $00
	jr   c, jr_015_7334                              ; $7332: $38 $00

jr_015_7334:
	cp   $00                                         ; $7334: $fe $00
	rst  $38                                         ; $7336: $ff
	nop                                              ; $7337: $00
	inc  a                                           ; $7338: $3c
	nop                                              ; $7339: $00
	rst  $38                                         ; $733a: $ff
	nop                                              ; $733b: $00
	db   $db                                         ; $733c: $db
	nop                                              ; $733d: $00
	ldh  [c], a                                      ; $733e: $e2
	adc  e                                           ; $733f: $8b
	ld   [bc], a                                     ; $7340: $02
	ld   c, $82                                      ; $7341: $0e $82
	ld   [bc], a                                     ; $7343: $02
	add  a                                           ; $7344: $87
	nop                                              ; $7345: $00
	rra                                              ; $7346: $1f
	nop                                              ; $7347: $00
	rlca                                             ; $7348: $07
	nop                                              ; $7349: $00
	rlca                                             ; $734a: $07
	nop                                              ; $734b: $00
	rlca                                             ; $734c: $07
	nop                                              ; $734d: $00
	rlca                                             ; $734e: $07
	nop                                              ; $734f: $00
	rra                                              ; $7350: $1f
	add  e                                           ; $7351: $83
	nop                                              ; $7352: $00
	ld   a, [bc]                                     ; $7353: $0a
	db   $fc                                         ; $7354: $fc
	nop                                              ; $7355: $00
	ldh  a, [rP1]                                    ; $7356: $f0 $00
	ldh  a, [rP1]                                    ; $7358: $f0 $00
	ldh  a, [rP1]                                    ; $735a: $f0 $00
	ldh  a, [rP1]                                    ; $735c: $f0 $00
	db   $fc                                         ; $735e: $fc
	add  c                                           ; $735f: $81
	nop                                              ; $7360: $00
	ld   [bc], a                                     ; $7361: $02
	ld   a, e                                        ; $7362: $7b
	nop                                              ; $7363: $00
	ld   h, b                                        ; $7364: $60
	add  e                                           ; $7365: $83
	nop                                              ; $7366: $00
	inc  b                                           ; $7367: $04
	inc  h                                           ; $7368: $24
	nop                                              ; $7369: $00
	ld   e, b                                        ; $736a: $58
	nop                                              ; $736b: $00
	ld   h, a                                        ; $736c: $67
	add  c                                           ; $736d: $81
	nop                                              ; $736e: $00
	inc  c                                           ; $736f: $0c
	db   $fc                                         ; $7370: $fc
	nop                                              ; $7371: $00
	sub  b                                           ; $7372: $90
	nop                                              ; $7373: $00
	sub  b                                           ; $7374: $90
	nop                                              ; $7375: $00
	sub  b                                           ; $7376: $90
	nop                                              ; $7377: $00
	stop                                             ; $7378: $10 $00
	add  e                                           ; $737a: $83
	nop                                              ; $737b: $00
	rst  $38                                         ; $737c: $ff
	add  c                                           ; $737d: $81
	nop                                              ; $737e: $00
	dec  bc                                          ; $737f: $0b
	ld   a, a                                        ; $7380: $7f
	nop                                              ; $7381: $00
	ld   h, a                                        ; $7382: $67
	nop                                              ; $7383: $00
	ld   h, a                                        ; $7384: $67
	nop                                              ; $7385: $00
	add  hl, de                                      ; $7386: $19
	nop                                              ; $7387: $00
	ld   h, [hl]                                     ; $7388: $66
	nop                                              ; $7389: $00
	rst  $38                                         ; $738a: $ff
	nop                                              ; $738b: $00
	add  b                                           ; $738c: $80
	rst  $38                                         ; $738d: $ff
	add  b                                           ; $738e: $80
	nop                                              ; $738f: $00
	ld   [bc], a                                     ; $7390: $02
	add  b                                           ; $7391: $80
	nop                                              ; $7392: $00
	inc  de                                          ; $7393: $13
	add  c                                           ; $7394: $81
	nop                                              ; $7395: $00
	dec  b                                           ; $7396: $05
	inc  de                                          ; $7397: $13
	nop                                              ; $7398: $00
	ld   a, a                                        ; $7399: $7f
	nop                                              ; $739a: $00
	rst  $38                                         ; $739b: $ff
	nop                                              ; $739c: $00
	add  b                                           ; $739d: $80
	rst  $38                                         ; $739e: $ff
	add  b                                           ; $739f: $80
	nop                                              ; $73a0: $00
	dec  bc                                          ; $73a1: $0b
	sbc  a                                           ; $73a2: $9f
	nop                                              ; $73a3: $00
	stop                                             ; $73a4: $10 $00
	ld   c, b                                        ; $73a6: $48
	nop                                              ; $73a7: $00
	scf                                              ; $73a8: $37
	nop                                              ; $73a9: $00
	rrca                                             ; $73aa: $0f
	nop                                              ; $73ab: $00
	rst  $38                                         ; $73ac: $ff
	nop                                              ; $73ad: $00
	add  b                                           ; $73ae: $80
	rst  $38                                         ; $73af: $ff
	add  b                                           ; $73b0: $80
	nop                                              ; $73b1: $00

jr_015_73b2:
	ld   b, $cc                                      ; $73b2: $06 $cc
	nop                                              ; $73b4: $00
	ld   d, b                                        ; $73b5: $50
	nop                                              ; $73b6: $00
	and  d                                           ; $73b7: $a2
	nop                                              ; $73b8: $00
	pop  bc                                          ; $73b9: $c1
	add  c                                           ; $73ba: $81
	nop                                              ; $73bb: $00
	ld   bc, $00ff                                   ; $73bc: $01 $ff $00
	add  b                                           ; $73bf: $80
	rst  $38                                         ; $73c0: $ff
	add  b                                           ; $73c1: $80
	nop                                              ; $73c2: $00
	ld   b, $03                                      ; $73c3: $06 $03

jr_015_73c5:
	nop                                              ; $73c5: $00
	rst  $38                                         ; $73c6: $ff
	add  b                                           ; $73c7: $80
	ret  nz                                          ; $73c8: $c0

jr_015_73c9:
	dec  b                                           ; $73c9: $05
	ldh  [$e8], a                                    ; $73ca: $e0 $e8
	ld   hl, sp-$0f                                  ; $73cc: $f8 $f1
	rst  $38                                         ; $73ce: $ff
	cp   $81                                         ; $73cf: $fe $81
	rst  $38                                         ; $73d1: $ff
	add  b                                           ; $73d2: $80
	ccf                                              ; $73d3: $3f
	add  b                                           ; $73d4: $80
	adc  a                                           ; $73d5: $8f
	nop                                              ; $73d6: $00
	rst  $38                                         ; $73d7: $ff
	add  l                                           ; $73d8: $85
	nop                                              ; $73d9: $00
	ld   [bc], a                                     ; $73da: $02
	jr   nz, @-$1e                                   ; $73db: $20 $e0

	ret  nz                                          ; $73dd: $c0

	add  h                                           ; $73de: $84
	rst  $38                                         ; $73df: $ff
	add  e                                           ; $73e0: $83
	nop                                              ; $73e1: $00
	inc  b                                           ; $73e2: $04
	inc  b                                           ; $73e3: $04
	rlca                                             ; $73e4: $07
	inc  hl                                          ; $73e5: $23
	ccf                                              ; $73e6: $3f
	rra                                              ; $73e7: $1f
	add  h                                           ; $73e8: $84
	rst  $38                                         ; $73e9: $ff
	add  b                                           ; $73ea: $80
	rra                                              ; $73eb: $1f
	inc  b                                           ; $73ec: $04
	ccf                                              ; $73ed: $3f
	cp   a                                           ; $73ee: $bf
	rst  $38                                         ; $73ef: $ff
	ld   a, [hl]                                     ; $73f0: $7e
	cp   $80                                         ; $73f1: $fe $80
	db   $fc                                         ; $73f3: $fc
	add  b                                           ; $73f4: $80
	ld   sp, hl                                      ; $73f5: $f9
	add  b                                           ; $73f6: $80
	di                                               ; $73f7: $f3
	add  b                                           ; $73f8: $80
	rst  ToBoot                                         ; $73f9: $c7
	dec  d                                           ; $73fa: $15
	cp   $7c                                         ; $73fb: $fe $7c
	ld   h, $f8                                      ; $73fd: $26 $f8
	push de                                          ; $73ff: $d5
	ldh  [$f2], a                                    ; $7400: $e0 $f2
	pop  hl                                          ; $7402: $e1
	db   $ec                                         ; $7403: $ec
	ldh  [$c3], a                                    ; $7404: $e0 $c3
	ret  nz                                          ; $7406: $c0

	sbc  $c0                                         ; $7407: $de $c0
	pop  bc                                          ; $7409: $c1
	ret  nz                                          ; $740a: $c0

	ld   a, [de]                                     ; $740b: $1a
	jr   nc, jr_015_73b2                             ; $740c: $30 $a4

	ld   h, h                                        ; $740e: $64
	jr   c, jr_015_73c9                              ; $740f: $38 $b8

	add  b                                           ; $7411: $80
	db   $10                                         ; $7412: $10
	inc  c                                           ; $7413: $0c
	and  d                                           ; $7414: $a2
	jr   nz, jr_015_73c5                             ; $7415: $20 $ae

	jr   nz, jr_015_7469                             ; $7417: $20 $50

	ld   b, b                                        ; $7419: $40
	ld   h, h                                        ; $741a: $64
	ld   b, b                                        ; $741b: $40
	rlca                                             ; $741c: $07
	inc  bc                                          ; $741d: $03
	jr   c, @+$05                                    ; $741e: $38 $03

	dec  b                                           ; $7420: $05
	add  e                                           ; $7421: $83
	ld   bc, $1106                                   ; $7422: $01 $06 $11
	ld   bc, $0181                                   ; $7425: $01 $81 $01
	ld   hl, $4a01                                   ; $7428: $21 $01 $4a
	add  l                                           ; $742b: $85
	rst  $30                                         ; $742c: $f7
	inc  b                                           ; $742d: $04
	push af                                          ; $742e: $f5
	rst  $30                                         ; $742f: $f7
	or   $f7                                         ; $7430: $f6 $f7
	push af                                          ; $7432: $f5
	add  c                                           ; $7433: $81
	rst  $30                                         ; $7434: $f7
	nop                                              ; $7435: $00
	rrca                                             ; $7436: $0f
	add  c                                           ; $7437: $81
	rst  $38                                         ; $7438: $ff
	dec  b                                           ; $7439: $05
	rrca                                             ; $743a: $0f
	rst  $38                                         ; $743b: $ff
	sub  a                                           ; $743c: $97
	rst  $20                                         ; $743d: $e7
	ld   b, e                                        ; $743e: $43
	jp   $8080                                       ; $743f: $c3 $80 $80


	add  d                                           ; $7442: $82
	nop                                              ; $7443: $00
	add  b                                           ; $7444: $80
	jp   $e780                                       ; $7445: $c3 $80 $e7


	add  b                                           ; $7448: $80
	di                                               ; $7449: $f3
	add  b                                           ; $744a: $80
	db   $fd                                         ; $744b: $fd
	add  d                                           ; $744c: $82
	cp   $80                                         ; $744d: $fe $80
	ld   a, [hl]                                     ; $744f: $7e
	add  b                                           ; $7450: $80
	ld   a, $80                                      ; $7451: $3e $80

jr_015_7453:
	ld   a, e                                        ; $7453: $7b
	add  b                                           ; $7454: $80
	ld   a, l                                        ; $7455: $7d
	add  b                                           ; $7456: $80
	ld   a, h                                        ; $7457: $7c
	add  b                                           ; $7458: $80
	and  [hl]                                        ; $7459: $a6
	add  b                                           ; $745a: $80
	adc  a                                           ; $745b: $8f
	add  b                                           ; $745c: $80
	rra                                              ; $745d: $1f
	add  b                                           ; $745e: $80
	ld   a, $80                                      ; $745f: $3e $80
	ld   a, b                                        ; $7461: $78
	add  b                                           ; $7462: $80
	rst  JumpTable                                         ; $7463: $df
	add  b                                           ; $7464: $80
	ld   e, a                                        ; $7465: $5f
	inc  bc                                          ; $7466: $03
	xor  a                                           ; $7467: $af
	cpl                                              ; $7468: $2f

jr_015_7469:
	rst  $28                                         ; $7469: $ef
	ld   l, a                                        ; $746a: $6f
	add  b                                           ; $746b: $80
	ld   [hl], e                                     ; $746c: $73
	add  b                                           ; $746d: $80
	inc  e                                           ; $746e: $1c
	dec  b                                           ; $746f: $05
	ld   b, b                                        ; $7470: $40
	nop                                              ; $7471: $00
	ld   b, b                                        ; $7472: $40
	ld   b, $58                                      ; $7473: $06 $58
	ld   e, [hl]                                     ; $7475: $5e
	add  b                                           ; $7476: $80
	xor  [hl]                                        ; $7477: $ae
	add  b                                           ; $7478: $80
	and  h                                           ; $7479: $a4
	add  b                                           ; $747a: $80
	add  b                                           ; $747b: $80
	ld   [bc], a                                     ; $747c: $02
	dec  e                                           ; $747d: $1d
	nop                                              ; $747e: $00
	di                                               ; $747f: $f3
	add  c                                           ; $7480: $81
	nop                                              ; $7481: $00
	dec  c                                           ; $7482: $0d
	add  hl, de                                      ; $7483: $19
	nop                                              ; $7484: $00
	ldh  a, [rP1]                                    ; $7485: $f0 $00
	jr   jr_015_7489                                 ; $7487: $18 $00

jr_015_7489:
	rra                                              ; $7489: $1f
	nop                                              ; $748a: $00
	rrca                                             ; $748b: $0f
	ld   h, b                                        ; $748c: $60
	adc  c                                           ; $748d: $89
	db   $10                                         ; $748e: $10
	dec  b                                           ; $748f: $05
	ld   [$8080], sp                                 ; $7490: $08 $80 $80
	inc  e                                           ; $7493: $1c
	add  d                                           ; $7494: $82
	inc  b                                           ; $7495: $04
	add  l                                           ; $7496: $85
	nop                                              ; $7497: $00
	inc  b                                           ; $7498: $04
	nop                                              ; $7499: $00
	add  d                                           ; $749a: $82
	nop                                              ; $749b: $00
	pop  hl                                          ; $749c: $e1
	nop                                              ; $749d: $00
	jr   nc, jr_015_74a0                             ; $749e: $30 $00

jr_015_74a0:
	cp   b                                           ; $74a0: $b8
	jr   nz, jr_015_7453                             ; $74a1: $20 $b0

	nop                                              ; $74a3: $00
	jr   nc, jr_015_74a6                             ; $74a4: $30 $00

jr_015_74a6:
	db   $d3                                         ; $74a6: $d3
	ld   bc, $0216                                   ; $74a7: $01 $16 $02
	ld   d, [hl]                                     ; $74aa: $56
	ld   b, $2e                                      ; $74ab: $06 $2e
	ld   c, $3e                                      ; $74ad: $0e $3e
	cp   [hl]                                        ; $74af: $be
	sbc  [hl]                                        ; $74b0: $9e
	add  e                                           ; $74b1: $83
	sbc  $04                                         ; $74b2: $de $04
	pop  bc                                          ; $74b4: $c1
	nop                                              ; $74b5: $00
	rst  $38                                         ; $74b6: $ff
	nop                                              ; $74b7: $00
	rst  $38                                         ; $74b8: $ff
	add  c                                           ; $74b9: $81
	nop                                              ; $74ba: $00
	ld   [bc], a                                     ; $74bb: $02
	rst  $20                                         ; $74bc: $e7
	nop                                              ; $74bd: $00
	ld   [hl], c                                     ; $74be: $71
	add  c                                           ; $74bf: $81
	nop                                              ; $74c0: $00
	ld   b, $71                                      ; $74c1: $06 $71
	nop                                              ; $74c3: $00
	rst  $20                                         ; $74c4: $e7
	nop                                              ; $74c5: $00
	rst  $38                                         ; $74c6: $ff
	nop                                              ; $74c7: $00
	rst  $38                                         ; $74c8: $ff
	add  c                                           ; $74c9: $81
	nop                                              ; $74ca: $00
	inc  c                                           ; $74cb: $0c
	adc  $00                                         ; $74cc: $ce $00
	rst  $10                                         ; $74ce: $d7
	nop                                              ; $74cf: $00
	ld   bc, $9600                                   ; $74d0: $01 $00 $96
	nop                                              ; $74d3: $00
	adc  [hl]                                        ; $74d4: $8e
	nop                                              ; $74d5: $00
	rst  $38                                         ; $74d6: $ff
	nop                                              ; $74d7: $00
	rst  $38                                         ; $74d8: $ff
	add  c                                           ; $74d9: $81
	nop                                              ; $74da: $00
	dec  c                                           ; $74db: $0d
	jr   c, jr_015_74de                              ; $74dc: $38 $00

jr_015_74de:
	ld   e, h                                        ; $74de: $5c
	nop                                              ; $74df: $00
	inc  b                                           ; $74e0: $04
	nop                                              ; $74e1: $00
	ld   e, b                                        ; $74e2: $58
	nop                                              ; $74e3: $00
	jr   c, jr_015_74e7                              ; $74e4: $38 $01

	rst  $38                                         ; $74e6: $ff

jr_015_74e7:
	ld   [bc], a                                     ; $74e7: $02
	ld   hl, sp+$06                                  ; $74e8: $f8 $06
	adc  b                                           ; $74ea: $88
	ld   [bc], a                                     ; $74eb: $02
	inc  bc                                          ; $74ec: $03
	ld   h, e                                        ; $74ed: $63
	ldh  [$e2], a                                    ; $74ee: $e0 $e2
	ldh  [$80], a                                    ; $74f0: $e0 $80
	ldh  a, [$80]                                    ; $74f2: $f0 $80
	ld   hl, sp+$04                                  ; $74f4: $f8 $04
	cp   $fc                                         ; $74f6: $fe $fc
	rst  JumpTable                                         ; $74f8: $df
	cp   $df                                         ; $74f9: $fe $df
	add  b                                           ; $74fb: $80
	rst  $28                                         ; $74fc: $ef
	dec  d                                           ; $74fd: $15
	add  b                                           ; $74fe: $80
	add  hl, sp                                      ; $74ff: $39
	nop                                              ; $7500: $00
	ld   c, b                                        ; $7501: $48
	nop                                              ; $7502: $00
	inc  bc                                          ; $7503: $03
	nop                                              ; $7504: $00
	sub  [hl]                                        ; $7505: $96
	nop                                              ; $7506: $00
	ld   hl, $0c00                                   ; $7507: $21 $00 $0c
	nop                                              ; $750a: $00
	ldh  a, [c]                                      ; $750b: $f2
	ret  nz                                          ; $750c: $c0

	or   $00                                         ; $750d: $f6 $00
	ccf                                              ; $750f: $3f
	ld   bc, $0357                                   ; $7510: $01 $57 $03
	add  e                                           ; $7513: $83
	add  c                                           ; $7514: $81
	inc  bc                                          ; $7515: $03
	nop                                              ; $7516: $00
	cpl                                              ; $7517: $2f
	add  c                                           ; $7518: $81
	rlca                                             ; $7519: $07
	inc  b                                           ; $751a: $04
	ld   e, a                                        ; $751b: $5f
	rrca                                             ; $751c: $0f
	ld   l, a                                        ; $751d: $6f
	nop                                              ; $751e: $00
	add  hl, bc                                      ; $751f: $09

jr_015_7520:
	add  c                                           ; $7520: $81
	or   $80                                         ; $7521: $f6 $80
	rst  $30                                         ; $7523: $f7
	nop                                              ; $7524: $00
	rst  $38                                         ; $7525: $ff
	add  e                                           ; $7526: $83
	rst  $28                                         ; $7527: $ef
	inc  bc                                          ; $7528: $03
	db   $e3                                         ; $7529: $e3
	di                                               ; $752a: $f3
	inc  c                                           ; $752b: $0c
	db   $fc                                         ; $752c: $fc
	add  b                                           ; $752d: $80

jr_015_752e:
	inc  a                                           ; $752e: $3c
	add  b                                           ; $752f: $80
	rst  $38                                         ; $7530: $ff
	add  b                                           ; $7531: $80
	db   $fc                                         ; $7532: $fc
	add  b                                           ; $7533: $80
	ldh  a, [rSC]                                    ; $7534: $f0 $02
	pop  hl                                          ; $7536: $e1
	ldh  [$e2], a                                    ; $7537: $e0 $e2
	add  c                                           ; $7539: $81
	ldh  [$0e], a                                    ; $753a: $e0 $0e
	call nz, $05c0                                   ; $753c: $c4 $c0 $05
	ld   [bc], a                                     ; $753f: $02
	jr   c, jr_015_7542                              ; $7540: $38 $00

jr_015_7542:
	ld   b, a                                        ; $7542: $47
	nop                                              ; $7543: $00
	add  b                                           ; $7544: $80
	nop                                              ; $7545: $00

jr_015_7546:
	ld   bc, $0300                                   ; $7546: $01 $00 $03
	nop                                              ; $7549: $00
	ld   b, $81                                      ; $754a: $06 $81
	nop                                              ; $754c: $00
	ld   [$e01b], sp                                 ; $754d: $08 $1b $e0
	ret  nz                                          ; $7550: $c0

	pop  bc                                          ; $7551: $c1
	ld   b, $08                                      ; $7552: $06 $08
	jr   nc, @+$42                                   ; $7554: $30 $40

	add  b                                           ; $7556: $80

jr_015_7557:
	add  e                                           ; $7557: $83
	nop                                              ; $7558: $00
	add  b                                           ; $7559: $80
	ld   bc, $e102                                   ; $755a: $01 $02 $e1
	jr   nz, jr_015_7520                             ; $755d: $20 $c1

	add  e                                           ; $755f: $83
	nop                                              ; $7560: $00
	add  b                                           ; $7561: $80
	inc  bc                                          ; $7562: $03
	add  b                                           ; $7563: $80
	rrca                                             ; $7564: $0f
	add  b                                           ; $7565: $80
	ld   a, a                                        ; $7566: $7f
	ld   b, $ff                                      ; $7567: $06 $ff
	db   $fc                                         ; $7569: $fc
	dec  bc                                          ; $756a: $0b
	nop                                              ; $756b: $00
	add  b                                           ; $756c: $80
	nop                                              ; $756d: $00
	inc  c                                           ; $756e: $0c
	add  c                                           ; $756f: $81
	nop                                              ; $7570: $00
	inc  c                                           ; $7571: $0c
	ld   b, d                                        ; $7572: $42
	add  b                                           ; $7573: $80
	sbc  l                                           ; $7574: $9d
	add  h                                           ; $7575: $84
	cp   l                                           ; $7576: $bd
	inc  e                                           ; $7577: $1c
	ld   a, [$02f8]                                  ; $7578: $fa $f8 $02
	ld   a, h                                        ; $757b: $7c
	cp   $00                                         ; $757c: $fe $00
	ld   a, h                                        ; $757e: $7c
	add  c                                           ; $757f: $81
	nop                                              ; $7580: $00
	inc  b                                           ; $7581: $04
	ld   [bc], a                                     ; $7582: $02
	nop                                              ; $7583: $00
	db   $fd                                         ; $7584: $fd
	nop                                              ; $7585: $00
	add  b                                           ; $7586: $80
	add  b                                           ; $7587: $80
	inc  a                                           ; $7588: $3c
	inc  de                                          ; $7589: $13
	ccf                                              ; $758a: $3f
	inc  l                                           ; $758b: $2c
	jr   z, jr_015_7546                              ; $758c: $28 $b8

	jr   jr_015_752e                                 ; $758e: $18 $9e

	ld   [$002c], sp                                 ; $7590: $08 $2c $00
	add  e                                           ; $7593: $83
	ld   [$902f], sp                                 ; $7594: $08 $2f $90
	sub  [hl]                                        ; $7597: $96
	ld   h, b                                        ; $7598: $60
	inc  hl                                          ; $7599: $23
	xor  a                                           ; $759a: $af
	xor  [hl]                                        ; $759b: $ae
	rra                                              ; $759c: $1f
	ld   e, a                                        ; $759d: $5f
	add  b                                           ; $759e: $80
	ccf                                              ; $759f: $3f
	add  d                                           ; $75a0: $82
	ld   a, a                                        ; $75a1: $7f
	add  e                                           ; $75a2: $83
	rst  $38                                         ; $75a3: $ff
	ld   [bc], a                                     ; $75a4: $02
	ld   bc, $96ff                                   ; $75a5: $01 $ff $96
	add  c                                           ; $75a8: $81
	nop                                              ; $75a9: $00
	ld   [$0001], sp                                 ; $75aa: $08 $01 $00
	sub  a                                           ; $75ad: $97
	nop                                              ; $75ae: $00
	ld   h, e                                        ; $75af: $63
	nop                                              ; $75b0: $00
	and  l                                           ; $75b1: $a5
	nop                                              ; $75b2: $00
	ld   a, [bc]                                     ; $75b3: $0a
	add  c                                           ; $75b4: $81
	nop                                              ; $75b5: $00
	inc  c                                           ; $75b6: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75b7: $cf
	nop                                              ; $75b8: $00
	stop                                             ; $75b9: $10 $00
	db   $dd                                         ; $75bb: $dd
	nop                                              ; $75bc: $00
	adc  $00                                         ; $75bd: $ce $00
	adc  h                                           ; $75bf: $8c
	nop                                              ; $75c0: $00
	ld   c, d                                        ; $75c1: $4a
	nop                                              ; $75c2: $00
	and  b                                           ; $75c3: $a0
	add  c                                           ; $75c4: $81
	nop                                              ; $75c5: $00
	ld   b, $6a                                      ; $75c6: $06 $6a
	nop                                              ; $75c8: $00
	ld   b, b                                        ; $75c9: $40
	nop                                              ; $75ca: $00
	ld   [hl], h                                     ; $75cb: $74
	nop                                              ; $75cc: $00
	jr   c, jr_015_7557                              ; $75cd: $38 $88

	nop                                              ; $75cf: $00
	adc  l                                           ; $75d0: $8d
	ld   [bc], a                                     ; $75d1: $02
	ld   bc, $00fd                                   ; $75d2: $01 $fd $00
	add  l                                           ; $75d5: $85
	ld   a, a                                        ; $75d6: $7f
	add  b                                           ; $75d7: $80
	ld   b, e                                        ; $75d8: $43
	add  c                                           ; $75d9: $81
	ld   bc, $8104                                   ; $75da: $01 $04 $81
	nop                                              ; $75dd: $00
	rst  $38                                         ; $75de: $ff
	nop                                              ; $75df: $00
	cp   $8a                                         ; $75e0: $fe $8a
	rst  $38                                         ; $75e2: $ff
	ld   [bc], a                                     ; $75e3: $02
	pop  af                                          ; $75e4: $f1
	adc  a                                           ; $75e5: $8f
	add  b                                           ; $75e6: $80
	add  b                                           ; $75e7: $80
	ld   e, a                                        ; $75e8: $5f
	ld   [bc], a                                     ; $75e9: $02
	ld   l, a                                        ; $75ea: $6f
	ld   a, a                                        ; $75eb: $7f
	ld   l, a                                        ; $75ec: $6f
	add  l                                           ; $75ed: $85
	ld   a, a                                        ; $75ee: $7f
	add  b                                           ; $75ef: $80
	ld   e, a                                        ; $75f0: $5f
	add  b                                           ; $75f1: $80
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	cp   $8b                                         ; $75f4: $fe $8b
	rst  $38                                         ; $75f6: $ff
	ld   b, $b1                                      ; $75f7: $06 $b1
	ld   b, b                                        ; $75f9: $40
	sub  b                                           ; $75fa: $90
	nop                                              ; $75fb: $00
	jr   nz, jr_015_75fe                             ; $75fc: $20 $00

jr_015_75fe:
	ld   [$0081], sp                                 ; $75fe: $08 $81 $00
	ld   b, $0c                                      ; $7601: $06 $0c
	nop                                              ; $7603: $00
	jr   nc, jr_015_7646                             ; $7604: $30 $40

	ld   c, b                                        ; $7606: $48
	ld   [hl], b                                     ; $7607: $70
	inc  b                                           ; $7608: $04
	add  c                                           ; $7609: $81
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	rla                                              ; $760c: $17
	add  c                                           ; $760d: $81
	rrca                                             ; $760e: $0f
	nop                                              ; $760f: $00
	cpl                                              ; $7610: $2f
	add  d                                           ; $7611: $82
	rra                                              ; $7612: $1f
	ld   bc, $3e1e                                   ; $7613: $01 $1e $3e
	add  b                                           ; $7616: $80
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	rra                                              ; $7619: $1f
	add  e                                           ; $761a: $83
	rst  $38                                         ; $761b: $ff
	dec  b                                           ; $761c: $05
	db   $fc                                         ; $761d: $fc
	cp   $f0                                         ; $761e: $fe $f0
	di                                               ; $7620: $f3
	ret  nz                                          ; $7621: $c0

	pop  bc                                          ; $7622: $c1
	add  d                                           ; $7623: $82
	nop                                              ; $7624: $00
	add  b                                           ; $7625: $80
	ldh  a, [$09]                                    ; $7626: $f0 $09
	ret  nz                                          ; $7628: $c0

	ret                                              ; $7629: $c9


	nop                                              ; $762a: $00
	jr   nc, jr_015_762d                             ; $762b: $30 $00

jr_015_762d:
	inc  a                                           ; $762d: $3c
	nop                                              ; $762e: $00
	db   $fd                                         ; $762f: $fd
	nop                                              ; $7630: $00
	ld   hl, sp-$7f                                  ; $7631: $f8 $81
	nop                                              ; $7633: $00
	inc  b                                           ; $7634: $04
	rlca                                             ; $7635: $07
	nop                                              ; $7636: $00
	jr   z, jr_015_7639                              ; $7637: $28 $00

jr_015_7639:
	pop  bc                                          ; $7639: $c1
	add  c                                           ; $763a: $81
	nop                                              ; $763b: $00
	add  hl, bc                                      ; $763c: $09
	ld   [hl+], a                                    ; $763d: $22
	ld   bc, $30f9                                   ; $763e: $01 $f9 $30
	or   a                                           ; $7641: $b7
	or   b                                           ; $7642: $b0
	call nc, $36d0                                   ; $7643: $d4 $d0 $36

jr_015_7646:
	ld   c, [hl]                                     ; $7646: $4e
	add  c                                           ; $7647: $81
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	add  b                                           ; $764a: $80
	add  b                                           ; $764b: $80
	nop                                              ; $764c: $00
	dec  bc                                          ; $764d: $0b
	ld   bc, $8200                                   ; $764e: $01 $00 $82
	ld   [bc], a                                     ; $7651: $02
	ldh  [c], a                                      ; $7652: $e2
	ld   bc, $057d                                   ; $7653: $01 $7d $05
	ld   a, d                                        ; $7656: $7a
	ld   b, b                                        ; $7657: $40
	ld   a, a                                        ; $7658: $7f
	rra                                              ; $7659: $1f
	add  b                                           ; $765a: $80
	xor  a                                           ; $765b: $af
	ld   [bc], a                                     ; $765c: $02
	cp   a                                           ; $765d: $bf
	ld   a, a                                        ; $765e: $7f
	rst  $38                                         ; $765f: $ff
	add  e                                           ; $7660: $83
	ld   a, a                                        ; $7661: $7f
	add  b                                           ; $7662: $80
	ld   e, a                                        ; $7663: $5f
	add  b                                           ; $7664: $80
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	cp   $8b                                         ; $7667: $fe $8b
	rst  $38                                         ; $7669: $ff
	ld   a, [bc]                                     ; $766a: $0a
	ld   sp, $0300                                   ; $766b: $31 $00 $03
	nop                                              ; $766e: $00
	and  b                                           ; $766f: $a0
	nop                                              ; $7670: $00
	ld   l, h                                        ; $7671: $6c
	nop                                              ; $7672: $00
	cp   [hl]                                        ; $7673: $be
	nop                                              ; $7674: $00
	ld   h, $83                                      ; $7675: $26 $83
	nop                                              ; $7677: $00
	ld   a, [bc]                                     ; $7678: $0a
	ld   a, [hl]                                     ; $7679: $7e
	nop                                              ; $767a: $00
	add  b                                           ; $767b: $80
	nop                                              ; $767c: $00
	ld   a, [bc]                                     ; $767d: $0a
	nop                                              ; $767e: $00
	ld   l, h                                        ; $767f: $6c
	nop                                              ; $7680: $00
	ld   sp, hl                                      ; $7681: $f9
	nop                                              ; $7682: $00
	sbc  d                                           ; $7683: $9a
	add  e                                           ; $7684: $83
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	ld   h, e                                        ; $7687: $63
	add  l                                           ; $7688: $85
	nop                                              ; $7689: $00
	inc  b                                           ; $768a: $04
	ret  z                                           ; $768b: $c8

	nop                                              ; $768c: $00
	db   $e4                                         ; $768d: $e4
	nop                                              ; $768e: $00
	ld   [bc], a                                     ; $768f: $02
	add  c                                           ; $7690: $81
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	ld   l, $85                                      ; $7693: $2e $85
	ld   [bc], a                                     ; $7695: $02
	nop                                              ; $7696: $00
	add  d                                           ; $7697: $82
	add  l                                           ; $7698: $85
	ld   [bc], a                                     ; $7699: $02
	nop                                              ; $769a: $00
	add  d                                           ; $769b: $82
	adc  [hl]                                        ; $769c: $8e
	nop                                              ; $769d: $00
	add  b                                           ; $769e: $80
	ret  nz                                          ; $769f: $c0

	add  a                                           ; $76a0: $87
	nop                                              ; $76a1: $00
	add  d                                           ; $76a2: $82
	ld   bc, $9002                                   ; $76a3: $01 $02 $90
	ld   a, a                                        ; $76a6: $7f
	rst  $28                                         ; $76a7: $ef
	add  d                                           ; $76a8: $82
	ld   a, a                                        ; $76a9: $7f
	add  hl, bc                                      ; $76aa: $09
	ld   a, h                                        ; $76ab: $7c
	db   $fd                                         ; $76ac: $fd
	ld   a, l                                        ; $76ad: $7d
	ld   e, a                                        ; $76ae: $5f
	ld   e, e                                        ; $76af: $5b
	ld   l, e                                        ; $76b0: $6b

jr_015_76b1:
	ld   a, e                                        ; $76b1: $7b
	rra                                              ; $76b2: $1f
	ld   [hl], a                                     ; $76b3: $77
	add  c                                           ; $76b4: $81
	add  h                                           ; $76b5: $84
	rst  $38                                         ; $76b6: $ff
	nop                                              ; $76b7: $00
	rra                                              ; $76b8: $1f
	add  b                                           ; $76b9: $80
	rst  JumpTable                                         ; $76ba: $df
	nop                                              ; $76bb: $00
	rst  $38                                         ; $76bc: $ff
	add  c                                           ; $76bd: $81
	rst  $28                                         ; $76be: $ef
	ld   [bc], a                                     ; $76bf: $02
	ld   sp, hl                                      ; $76c0: $f9
	rst  $30                                         ; $76c1: $f7
	add  e                                           ; $76c2: $83
	add  b                                           ; $76c3: $80
	ld   [hl], b                                     ; $76c4: $70
	dec  b                                           ; $76c5: $05
	ld   a, b                                        ; $76c6: $78
	ld   a, e                                        ; $76c7: $7b
	ld   a, h                                        ; $76c8: $7c
	ld   a, l                                        ; $76c9: $7d
	ld   a, h                                        ; $76ca: $7c
	ld   a, [hl]                                     ; $76cb: $7e
	add  e                                           ; $76cc: $83
	ld   a, b                                        ; $76cd: $78
	ld   [bc], a                                     ; $76ce: $02
	inc  c                                           ; $76cf: $0c
	ld   [hl], b                                     ; $76d0: $70
	add  a                                           ; $76d1: $87
	add  b                                           ; $76d2: $80
	db   $ec                                         ; $76d3: $ec
	add  b                                           ; $76d4: $80
	ld   hl, sp-$7f                                  ; $76d5: $f8 $81
	nop                                              ; $76d7: $00
	add  b                                           ; $76d8: $80
	adc  b                                           ; $76d9: $88
	add  b                                           ; $76da: $80
	rst  $28                                         ; $76db: $ef
	add  d                                           ; $76dc: $82
	rst  JumpTable                                         ; $76dd: $df
	add  [hl]                                        ; $76de: $86
	nop                                              ; $76df: $00

jr_015_76e0:
	add  b                                           ; $76e0: $80
	ld   e, $84                                      ; $76e1: $1e $84
	cp   $80                                         ; $76e3: $fe $80
	ld   b, $80                                      ; $76e5: $06 $80
	rrca                                             ; $76e7: $0f
	add  b                                           ; $76e8: $80
	rst  $28                                         ; $76e9: $ef
	add  b                                           ; $76ea: $80
	xor  $80                                         ; $76eb: $ee $80
	jp   hl                                          ; $76ed: $e9


	add  b                                           ; $76ee: $80
	rst  $20                                         ; $76ef: $e7
	add  d                                           ; $76f0: $82
	rst  $28                                         ; $76f1: $ef
	ld   [bc], a                                     ; $76f2: $02
	ret  nc                                          ; $76f3: $d0

	rst  $10                                         ; $76f4: $d7
	ld   h, a                                        ; $76f5: $67
	add  b                                           ; $76f6: $80
	ld   l, a                                        ; $76f7: $6f
	dec  b                                           ; $76f8: $05
	ld   h, c                                        ; $76f9: $61
	ld   b, c                                        ; $76fa: $41
	ld   e, [hl]                                     ; $76fb: $5e
	sbc  $df                                         ; $76fc: $de $df
	sbc  a                                           ; $76fe: $9f
	add  e                                           ; $76ff: $83
	cp   a                                           ; $7700: $bf
	ld   [bc], a                                     ; $7701: $02
	adc  $03                                         ; $7702: $ce $03
	dec  bc                                          ; $7704: $0b
	add  c                                           ; $7705: $81
	inc  bc                                          ; $7706: $03
	inc  b                                           ; $7707: $04
	rlc  a                                           ; $7708: $cb $07
	rst  $20                                         ; $770a: $e7
	rlca                                             ; $770b: $07
	scf                                              ; $770c: $37
	add  b                                           ; $770d: $80
	rlca                                             ; $770e: $07
	dec  b                                           ; $770f: $05
	rrca                                             ; $7710: $0f
	ld   bc, $700f                                   ; $7711: $01 $0f $70
	ld   a, a                                        ; $7714: $7f
	ld   l, a                                        ; $7715: $6f
	add  l                                           ; $7716: $85
	ld   a, a                                        ; $7717: $7f
	add  b                                           ; $7718: $80
	ld   e, a                                        ; $7719: $5f
	inc  b                                           ; $771a: $04
	ld   l, a                                        ; $771b: $6f
	ld   a, a                                        ; $771c: $7f
	db   $10                                         ; $771d: $10
	ld   a, a                                        ; $771e: $7f
	add  c                                           ; $771f: $81
	adc  e                                           ; $7720: $8b
	rst  $38                                         ; $7721: $ff
	ld   [bc], a                                     ; $7722: $02
	ld   bc, $98ff                                   ; $7723: $01 $ff $98
	add  c                                           ; $7726: $81
	nop                                              ; $7727: $00
	ld   [bc], a                                     ; $7728: $02
	add  b                                           ; $7729: $80
	nop                                              ; $772a: $00
	jr   jr_015_76b1                                 ; $772b: $18 $84

	nop                                              ; $772d: $00
	add  b                                           ; $772e: $80
	rst  $38                                         ; $772f: $ff
	ld   bc, $6300                                   ; $7730: $01 $00 $63
	add  c                                           ; $7733: $81
	nop                                              ; $7734: $00
	ld   [bc], a                                     ; $7735: $02
	ld   [bc], a                                     ; $7736: $02
	nop                                              ; $7737: $00
	ld   h, c                                        ; $7738: $61
	add  h                                           ; $7739: $84
	nop                                              ; $773a: $00
	add  b                                           ; $773b: $80
	rst  $38                                         ; $773c: $ff
	rlca                                             ; $773d: $07
	nop                                              ; $773e: $00
	dec  l                                           ; $773f: $2d
	nop                                              ; $7740: $00
	ld   bc, $e000                                   ; $7741: $01 $00 $e0
	nop                                              ; $7744: $00
	call z, $0084                                    ; $7745: $cc $84 $00
	add  b                                           ; $7748: $80
	rst  $38                                         ; $7749: $ff
	ld   bc, $8000                                   ; $774a: $01 $00 $80
	add  e                                           ; $774d: $83
	ld   [bc], a                                     ; $774e: $02
	nop                                              ; $774f: $00
	add  d                                           ; $7750: $82
	add  c                                           ; $7751: $81
	ld   [bc], a                                     ; $7752: $02
	add  b                                           ; $7753: $80
	ld   b, $02                                      ; $7754: $06 $02
	nop                                              ; $7756: $00
	cp   $fc                                         ; $7757: $fe $fc
	add  b                                           ; $7759: $80
	ld   bc, $008f                                   ; $775a: $01 $8f $00
	add  b                                           ; $775d: $80
	jr   jr_015_76e0                                 ; $775e: $18 $80

	ld   a, $80                                      ; $7760: $3e $80
	ld   a, [hl]                                     ; $7762: $7e
	add  b                                           ; $7763: $80
	ld   a, l                                        ; $7764: $7d
	add  b                                           ; $7765: $80
	dec  sp                                          ; $7766: $3b
	add  b                                           ; $7767: $80
	scf                                              ; $7768: $37
	add  b                                           ; $7769: $80
	rrca                                             ; $776a: $0f
	inc  bc                                          ; $776b: $03
	ld   [hl], b                                     ; $776c: $70
	nop                                              ; $776d: $00
	ld   a, a                                        ; $776e: $7f
	rrca                                             ; $776f: $0f
	add  b                                           ; $7770: $80
	ccf                                              ; $7771: $3f
	add  b                                           ; $7772: $80
	ld   a, a                                        ; $7773: $7f
	add  b                                           ; $7774: $80
	rst  $38                                         ; $7775: $ff
	add  d                                           ; $7776: $82
	cp   $80                                         ; $7777: $fe $80
	rst  $38                                         ; $7779: $ff
	inc  bc                                          ; $777a: $03
	rlca                                             ; $777b: $07
	nop                                              ; $777c: $00
	cp   $f9                                         ; $777d: $fe $f9
	add  b                                           ; $777f: $80
	cp   $83                                         ; $7780: $fe $83
	rst  $38                                         ; $7782: $ff

jr_015_7783:
	ld   [bc], a                                     ; $7783: $02
	ld   a, a                                        ; $7784: $7f

Call_015_7785:
	rst  $38                                         ; $7785: $ff
	ld   a, a                                        ; $7786: $7f
	add  b                                           ; $7787: $80
	rst  $38                                         ; $7788: $ff
	rlca                                             ; $7789: $07
	ldh  a, [$86]                                    ; $778a: $f0 $86
	or   [hl]                                        ; $778c: $b6
	ld   bc, $37f1                                   ; $778d: $01 $f1 $37
	daa                                              ; $7790: $27
	cpl                                              ; $7791: $2f
	add  b                                           ; $7792: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7793: $cf
	add  b                                           ; $7794: $80
	db   $ec                                         ; $7795: $ec
	add  b                                           ; $7796: $80
	xor  $03                                         ; $7797: $ee $03
	adc  $de                                         ; $7799: $ce $de
	jr   nz, jr_015_77dc                             ; $779b: $20 $3f

	add  d                                           ; $779d: $82
	rst  $38                                         ; $779e: $ff
	ld   a, [bc]                                     ; $779f: $0a
	sbc  a                                           ; $77a0: $9f
	rst  $38                                         ; $77a1: $ff
	ld   e, a                                        ; $77a2: $5f
	rst  $38                                         ; $77a3: $ff
	cp   a                                           ; $77a4: $bf
	rst  $38                                         ; $77a5: $ff
	sbc  a                                           ; $77a6: $9f
	rst  $38                                         ; $77a7: $ff
	sbc  a                                           ; $77a8: $9f
	rst  $38                                         ; $77a9: $ff
	add  b                                           ; $77aa: $80
	add  l                                           ; $77ab: $85
	cp   $04                                         ; $77ac: $fe $04
	rst  $38                                         ; $77ae: $ff
	db   $fc                                         ; $77af: $fc
	cp   $f9                                         ; $77b0: $fe $f9
	ld   a, [$f880]                                  ; $77b2: $fa $80 $f8
	add  b                                           ; $77b5: $80
	cp   $82                                         ; $77b6: $fe $82
	rst  $28                                         ; $77b8: $ef
	ld   de, $efee                                   ; $77b9: $11 $ee $ef
	inc  l                                           ; $77bc: $2c
	db   $ec                                         ; $77bd: $ec
	inc  c                                           ; $77be: $0c
	dec  l                                           ; $77bf: $2d
	ret  nz                                          ; $77c0: $c0

	ld   e, [hl]                                     ; $77c1: $5e
	ld   [hl], b                                     ; $77c2: $70
	jr   nc, jr_015_7783                             ; $77c3: $30 $be

	ldh  [rP1], a                                    ; $77c5: $e0 $00
	jr   nz, jr_015_77e8                             ; $77c7: $20 $1f

	sub  b                                           ; $77c9: $90
	db   $10                                         ; $77ca: $10
	sub  b                                           ; $77cb: $90
	add  c                                           ; $77cc: $81
	db   $10                                         ; $77cd: $10
	ld   [bc], a                                     ; $77ce: $02
	sbc  a                                           ; $77cf: $9f
	nop                                              ; $77d0: $00
	ccf                                              ; $77d1: $3f
	add  c                                           ; $77d2: $81
	nop                                              ; $77d3: $00
	inc  c                                           ; $77d4: $0c
	sub  b                                           ; $77d5: $90
	nop                                              ; $77d6: $00
	ld   b, c                                        ; $77d7: $41
	add  c                                           ; $77d8: $81
	ld   hl, $1941                                   ; $77d9: $21 $41 $19

jr_015_77dc:
	nop                                              ; $77dc: $00
	inc  bc                                          ; $77dd: $03
	nop                                              ; $77de: $00
	call nz, $e701                                   ; $77df: $c4 $01 $e7
	add  b                                           ; $77e2: $80
	ld   bc, $0702                                   ; $77e3: $01 $02 $07
	adc  a                                           ; $77e6: $8f
	add  b                                           ; $77e7: $80

jr_015_77e8:
	add  b                                           ; $77e8: $80
	ld   a, a                                        ; $77e9: $7f
	ld   c, $ff                                      ; $77ea: $0e $ff
	rra                                              ; $77ec: $1f
	rst  $38                                         ; $77ed: $ff
	rrca                                             ; $77ee: $0f
	rra                                              ; $77ef: $1f
	rst  $20                                         ; $77f0: $e7
	sub  a                                           ; $77f1: $97
	add  a                                           ; $77f2: $87
	rlca                                             ; $77f3: $07
	ld   a, a                                        ; $77f4: $7f
	rst  $38                                         ; $77f5: $ff
	rlca                                             ; $77f6: $07
	ld   a, b                                        ; $77f7: $78
	nop                                              ; $77f8: $00
	cp   $8b                                         ; $77f9: $fe $8b
	rst  $38                                         ; $77fb: $ff
	rlca                                             ; $77fc: $07
	add  [hl]                                        ; $77fd: $86
	add  e                                           ; $77fe: $83
	ld   e, c                                        ; $77ff: $59
	ld   e, e                                        ; $7800: $5b
	ld   l, c                                        ; $7801: $69
	ld   a, l                                        ; $7802: $7d
	ld   l, h                                        ; $7803: $6c
	ld   a, l                                        ; $7804: $7d
	add  b                                           ; $7805: $80
	ld   a, [hl]                                     ; $7806: $7e
	nop                                              ; $7807: $00
	ld   a, h                                        ; $7808: $7c
	add  c                                           ; $7809: $81
	ld   a, a                                        ; $780a: $7f
	add  b                                           ; $780b: $80
	ld   e, a                                        ; $780c: $5f
	add  a                                           ; $780d: $87
	rst  $38                                         ; $780e: $ff
	ld   bc, $0100                                   ; $780f: $01 $00 $01
	add  e                                           ; $7812: $83
	rst  $38                                         ; $7813: $ff
	add  b                                           ; $7814: $80
	cp   $08                                         ; $7815: $fe $08
	db   $fc                                         ; $7817: $fc
	cp   $fc                                         ; $7818: $fe $fc
	db   $fd                                         ; $781a: $fd
	ld   sp, hl                                      ; $781b: $f9
	db   $fd                                         ; $781c: $fd
	ei                                               ; $781d: $fb
	inc  bc                                          ; $781e: $03
	add  c                                           ; $781f: $81
	add  e                                           ; $7820: $83
	ld   a, a                                        ; $7821: $7f
	add  b                                           ; $7822: $80
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	cp   $8b                                         ; $7825: $fe $8b
	rst  $38                                         ; $7827: $ff
	nop                                              ; $7828: $00
	cp   $87                                         ; $7829: $fe $87
	nop                                              ; $782b: $00
	add  b                                           ; $782c: $80
	ld   bc, $0780                                   ; $782d: $01 $80 $07
	add  b                                           ; $7830: $80
	rrca                                             ; $7831: $0f
	add  b                                           ; $7832: $80
	ld   c, $80                                      ; $7833: $0e $80
	ld   e, $82                                      ; $7835: $1e $82
	ccf                                              ; $7837: $3f
	add  [hl]                                        ; $7838: $86
	ld   a, a                                        ; $7839: $7f
	inc  b                                           ; $783a: $04
	rst  $38                                         ; $783b: $ff
	ld   a, a                                        ; $783c: $7f
	rst  $38                                         ; $783d: $ff
	ld   a, h                                        ; $783e: $7c
	db   $fc                                         ; $783f: $fc
	add  b                                           ; $7840: $80
	di                                               ; $7841: $f3
	add  b                                           ; $7842: $80
	rst  $28                                         ; $7843: $ef
	add  b                                           ; $7844: $80
	rst  JumpTable                                         ; $7845: $df
	add  b                                           ; $7846: $80
	sbc  $80                                         ; $7847: $de $80
	cp   l                                           ; $7849: $bd
	ld   bc, $babb                                   ; $784a: $01 $bb $ba
	add  b                                           ; $784d: $80
	cp   $04                                         ; $784e: $fe $04
	ld   e, $07                                      ; $7850: $1e $07
	rst  $38                                         ; $7852: $ff
	db   $e3                                         ; $7853: $e3
	ei                                               ; $7854: $fb
	add  b                                           ; $7855: $80
	db   $fd                                         ; $7856: $fd
	inc  bc                                          ; $7857: $03
	dec  a                                           ; $7858: $3d
	db   $fd                                         ; $7859: $fd
	ld   e, $de                                      ; $785a: $1e $de
	add  b                                           ; $785c: $80
	xor  $05                                         ; $785d: $ee $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $785f: $cf
	ld   d, b                                        ; $7860: $50
	ret  c                                           ; $7861: $d8

	ld   e, b                                        ; $7862: $58
	sbc  c                                           ; $7863: $99
	cp   c                                           ; $7864: $b9
	add  h                                           ; $7865: $84
	cp   e                                           ; $7866: $bb
	nop                                              ; $7867: $00
	scf                                              ; $7868: $37
	add  c                                           ; $7869: $81
	ld   [hl], a                                     ; $786a: $77
	dec  b                                           ; $786b: $05
	nop                                              ; $786c: $00
	rst  $38                                         ; $786d: $ff
	adc  a                                           ; $786e: $8f
	rst  $38                                         ; $786f: $ff
	rrca                                             ; $7870: $0f
	rst  $38                                         ; $7871: $ff
	add  b                                           ; $7872: $80
	pop  hl                                          ; $7873: $e1
	add  b                                           ; $7874: $80
	ld   hl, sp-$80                                  ; $7875: $f8 $80
	cp   $82                                         ; $7877: $fe $82
	rst  $38                                         ; $7879: $ff
	ld   b, $00                                      ; $787a: $06 $00
	ld   hl, sp-$05                                  ; $787c: $f8 $fb
	ld   hl, sp-$06                                  ; $787e: $f8 $fa
	db   $fd                                         ; $7880: $fd
	db   $fc                                         ; $7881: $fc
	add  b                                           ; $7882: $80
	cp   $80                                         ; $7883: $fe $80
	ld   a, $80                                      ; $7885: $3e $80
	ld   c, $80                                      ; $7887: $0e $80
	add  $06                                         ; $7889: $c6 $06
	cp   $9e                                         ; $788b: $fe $9e
	jr   nz, @-$5e                                   ; $788d: $20 $a0

	ld   l, [hl]                                     ; $788f: $6e
	ld   c, [hl]                                     ; $7890: $4e
	rst  JumpTable                                         ; $7891: $df
	add  c                                           ; $7892: $81
	rra                                              ; $7893: $1f
	add  b                                           ; $7894: $80
	sbc  b                                           ; $7895: $98
	add  b                                           ; $7896: $80
	ld   hl, $0780                                   ; $7897: $21 $80 $07
	ld   bc, $f01f                                   ; $789a: $01 $1f $f0
	add  c                                           ; $789d: $81
	nop                                              ; $789e: $00
	rlca                                             ; $789f: $07
	adc  a                                           ; $78a0: $8f
	nop                                              ; $78a1: $00
	ld   h, b                                        ; $78a2: $60
	ld   d, $57                                      ; $78a3: $16 $57
	ld   sp, $8fff                                   ; $78a5: $31 $ff $8f
	add  b                                           ; $78a8: $80
	db   $fc                                         ; $78a9: $fc
	add  b                                           ; $78aa: $80
	db   $e3                                         ; $78ab: $e3
	inc  b                                           ; $78ac: $04
	ld   bc, $e0e1                                   ; $78ad: $01 $e1 $e0
	sbc  [hl]                                        ; $78b0: $9e
	sbc  a                                           ; $78b1: $9f
	add  b                                           ; $78b2: $80
	ccf                                              ; $78b3: $3f
	add  l                                           ; $78b4: $85
	ld   a, a                                        ; $78b5: $7f
	ld   [$3fc1], sp                                 ; $78b6: $08 $c1 $3f
	ld   [hl], b                                     ; $78b9: $70
	sub  a                                           ; $78ba: $97
	add  a                                           ; $78bb: $87
	rst  $28                                         ; $78bc: $ef
	rrca                                             ; $78bd: $0f
	rra                                              ; $78be: $1f
	sbc  a                                           ; $78bf: $9f
	add  l                                           ; $78c0: $85
	ld   a, a                                        ; $78c1: $7f
	ld   [bc], a                                     ; $78c2: $02
	nop                                              ; $78c3: $00
	ld   a, a                                        ; $78c4: $7f
	add  c                                           ; $78c5: $81
	adc  e                                           ; $78c6: $8b
	rst  $38                                         ; $78c7: $ff
	ld   b, $01                                      ; $78c8: $06 $01
	rst  $38                                         ; $78ca: $ff
	sub  b                                           ; $78cb: $90
	ld   a, a                                        ; $78cc: $7f
	ld   l, a                                        ; $78cd: $6f
	ld   a, a                                        ; $78ce: $7f
	ld   a, [hl]                                     ; $78cf: $7e
	add  c                                           ; $78d0: $81
	ld   a, a                                        ; $78d1: $7f
	ld   bc, $ff01                                   ; $78d2: $01 $01 $ff
	add  h                                           ; $78d5: $84
	nop                                              ; $78d6: $00
	inc  b                                           ; $78d7: $04
	ld   bc, $1fff                                   ; $78d8: $01 $ff $1f
	rst  $38                                         ; $78db: $ff
	rrca                                             ; $78dc: $0f
	add  c                                           ; $78dd: $81
	rra                                              ; $78de: $1f
	ld   bc, $1f11                                   ; $78df: $01 $11 $1f
	add  h                                           ; $78e2: $84
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	add  b                                           ; $78e5: $80
	add  l                                           ; $78e6: $85
	ld   a, a                                        ; $78e7: $7f
	ld   [bc], a                                     ; $78e8: $02
	rrca                                             ; $78e9: $0f
	rst  $38                                         ; $78ea: $ff
	rlca                                             ; $78eb: $07
	add  c                                           ; $78ec: $81
	rrca                                             ; $78ed: $0f
	ld   [bc], a                                     ; $78ee: $02
	ld   [$010f], sp                                 ; $78ef: $08 $0f $01
	adc  e                                           ; $78f2: $8b
	rst  $38                                         ; $78f3: $ff
	ld   bc, $ff01                                   ; $78f4: $01 $01 $ff
	add  b                                           ; $78f7: $80
	rrca                                             ; $78f8: $0f
	ld   bc, $0f8f                                   ; $78f9: $01 $8f $0f
	add  b                                           ; $78fc: $80
	rlca                                             ; $78fd: $07
	ld   [bc], a                                     ; $78fe: $02
	ld   bc, $4041                                   ; $78ff: $01 $41 $40
	add  b                                           ; $7902: $80
	ld   a, [hl]                                     ; $7903: $7e
	add  e                                           ; $7904: $83
	ld   a, a                                        ; $7905: $7f
	inc  bc                                          ; $7906: $03
	adc  b                                           ; $7907: $88
	ld   [hl], e                                     ; $7908: $73
	ld   [hl], a                                     ; $7909: $77
	ld   [hl], e                                     ; $790a: $73
	add  h                                           ; $790b: $84
	ld   a, a                                        ; $790c: $7f
	nop                                              ; $790d: $00
	ccf                                              ; $790e: $3f
	add  c                                           ; $790f: $81
	cp   a                                           ; $7910: $bf
	ld   [bc], a                                     ; $7911: $02
	sbc  a                                           ; $7912: $9f
	rst  JumpTable                                         ; $7913: $df
	dec  sp                                          ; $7914: $3b
	add  c                                           ; $7915: $81
	cp   a                                           ; $7916: $bf
	inc  c                                           ; $7917: $0c
	cp   c                                           ; $7918: $b9
	cp   a                                           ; $7919: $bf
	sbc  h                                           ; $791a: $9c
	rst  $38                                         ; $791b: $ff
	cp   $ff                                         ; $791c: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $791e: $cf
	rst  $38                                         ; $791f: $ff
	db   $e3                                         ; $7920: $e3
	rst  $38                                         ; $7921: $ff
	ldh  a, [$fe]                                    ; $7922: $f0 $fe
	db   $ec                                         ; $7924: $ec
	add  c                                           ; $7925: $81
	xor  $80                                         ; $7926: $ee $80
	sbc  $80                                         ; $7928: $de $80
	inc  a                                           ; $792a: $3c
	add  b                                           ; $792b: $80
	db   $fc                                         ; $792c: $fc
	ld   bc, $f9f8                                   ; $792d: $01 $f8 $f9
	add  b                                           ; $7930: $80
	push hl                                          ; $7931: $e5
	add  b                                           ; $7932: $80
	dec  e                                           ; $7933: $1d
	inc  b                                           ; $7934: $04
	halt                                             ; $7935: $76
	ld   a, a                                        ; $7936: $7f
	ld   l, a                                        ; $7937: $6f
	ld   a, a                                        ; $7938: $7f
	rst  $30                                         ; $7939: $f7
	add  e                                           ; $793a: $83
	rst  $38                                         ; $793b: $ff
	ld   [bc], a                                     ; $793c: $02
	rst  JumpTable                                         ; $793d: $df
	rst  $38                                         ; $793e: $ff
	rst  $28                                         ; $793f: $ef
	add  c                                           ; $7940: $81
	rst  $38                                         ; $7941: $ff
	nop                                              ; $7942: $00
	rst  JumpTable                                         ; $7943: $df
	adc  l                                           ; $7944: $8d
	rst  $38                                         ; $7945: $ff
	add  b                                           ; $7946: $80
	db   $fc                                         ; $7947: $fc
	add  b                                           ; $7948: $80
	inc  c                                           ; $7949: $0c
	add  d                                           ; $794a: $82
	db   $fc                                         ; $794b: $fc
	add  [hl]                                        ; $794c: $86
	ld   hl, sp-$80                                  ; $794d: $f8 $80
	ld   a, h                                        ; $794f: $7c
	add  b                                           ; $7950: $80
	ret  nz                                          ; $7951: $c0

	add  b                                           ; $7952: $80
	inc  bc                                          ; $7953: $03
	add  b                                           ; $7954: $80
	rra                                              ; $7955: $1f
	add  b                                           ; $7956: $80
	ccf                                              ; $7957: $3f
	add  h                                           ; $7958: $84
	ld   a, a                                        ; $7959: $7f
	inc  b                                           ; $795a: $04
	inc  c                                           ; $795b: $0c
	rrca                                             ; $795c: $0f
	ld   [hl], b                                     ; $795d: $70
	ld   a, a                                        ; $795e: $7f
	di                                               ; $795f: $f3
	adc  c                                           ; $7960: $89
	rst  $38                                         ; $7961: $ff
	ld   [bc], a                                     ; $7962: $02
	cp   a                                           ; $7963: $bf
	nop                                              ; $7964: $00
	cp   [hl]                                        ; $7965: $be
	adc  e                                           ; $7966: $8b
	ld   a, a                                        ; $7967: $7f
	ld   bc, $910f                                   ; $7968: $01 $0f $91
	add  d                                           ; $796b: $82
	ld   [hl], b                                     ; $796c: $70
	nop                                              ; $796d: $00
	ld   l, b                                        ; $796e: $68
	add  e                                           ; $796f: $83
	ld   a, b                                        ; $7970: $78
	ld   bc, $7c74                                   ; $7971: $01 $74 $7c
	add  b                                           ; $7974: $80
	ld   e, h                                        ; $7975: $5c
	ld   [bc], a                                     ; $7976: $02
	rlca                                             ; $7977: $07
	nop                                              ; $7978: $00
	ld   a, [hl]                                     ; $7979: $7e
	add  e                                           ; $797a: $83
	rst  $38                                         ; $797b: $ff
	dec  b                                           ; $797c: $05
	ccf                                              ; $797d: $3f
	ld   a, a                                        ; $797e: $7f
	ld   [hl], e                                     ; $797f: $73
	ld   a, a                                        ; $7980: $7f
	ld   bc, $8033                                   ; $7981: $01 $33 $80
	inc  bc                                          ; $7984: $03
	add  b                                           ; $7985: $80
	rst  $38                                         ; $7986: $ff
	dec  bc                                          ; $7987: $0b
	sbc  b                                           ; $7988: $98
	ld   a, b                                        ; $7989: $78
	ld   b, b                                        ; $798a: $40
	ld   h, b                                        ; $798b: $60
	nop                                              ; $798c: $00
	ld   b, b                                        ; $798d: $40
	rlca                                             ; $798e: $07
	add  a                                           ; $798f: $87
	add  hl, bc                                      ; $7990: $09
	rrca                                             ; $7991: $0f
	add  hl, de                                      ; $7992: $19
	rra                                              ; $7993: $1f
	add  b                                           ; $7994: $80
	nop                                              ; $7995: $00
	add  b                                           ; $7996: $80
	rra                                              ; $7997: $1f
	add  b                                           ; $7998: $80
	inc  bc                                          ; $7999: $03
	add  d                                           ; $799a: $82
	nop                                              ; $799b: $00
	add  b                                           ; $799c: $80
	inc  e                                           ; $799d: $1c
	inc  bc                                          ; $799e: $03
	ld   [de], a                                     ; $799f: $12
	ld   e, $13                                      ; $79a0: $1e $13
	rra                                              ; $79a2: $1f
	add  b                                           ; $79a3: $80
	nop                                              ; $79a4: $00
	ld   a, [bc]                                     ; $79a5: $0a
	rst  $38                                         ; $79a6: $ff
	ldh  a, [$af]                                    ; $79a7: $f0 $af
	ld   e, a                                        ; $79a9: $5f
	ld   l, a                                        ; $79aa: $6f
	rst  $38                                         ; $79ab: $ff
	cpl                                              ; $79ac: $2f
	ld   a, a                                        ; $79ad: $7f
	rra                                              ; $79ae: $1f
	ccf                                              ; $79af: $3f
	rrca                                             ; $79b0: $0f
	add  c                                           ; $79b1: $81
	rra                                              ; $79b2: $1f
	inc  b                                           ; $79b3: $04
	rlca                                             ; $79b4: $07
	rrca                                             ; $79b5: $0f
	ld   hl, sp+$00                                  ; $79b6: $f8 $00
	cp   $8b                                         ; $79b8: $fe $8b
	rst  $38                                         ; $79ba: $ff
	nop                                              ; $79bb: $00
	ld   a, [hl]                                     ; $79bc: $7e
	adc  e                                           ; $79bd: $8b
	ld   a, a                                        ; $79be: $7f
	ld   [bc], a                                     ; $79bf: $02
	nop                                              ; $79c0: $00
	ld   a, a                                        ; $79c1: $7f
	adc  [hl]                                        ; $79c2: $8e
	add  c                                           ; $79c3: $81
	adc  $01                                         ; $79c4: $ce $01
	rst  $30                                         ; $79c6: $f7
	or   a                                           ; $79c7: $b7
	add  b                                           ; $79c8: $80
	cp   e                                           ; $79c9: $bb
	ld   bc, $7dfd                                   ; $79ca: $01 $fd $7d
	add  b                                           ; $79cd: $80
	ld   a, [hl]                                     ; $79ce: $7e
	rlca                                             ; $79cf: $07
	ld   a, $be                                      ; $79d0: $3e $be
	ld   e, c                                        ; $79d2: $59
	reti                                             ; $79d3: $d9


	rst  $38                                         ; $79d4: $ff
	ld   a, a                                        ; $79d5: $7f
	rst  $38                                         ; $79d6: $ff
	ld   a, a                                        ; $79d7: $7f
	add  b                                           ; $79d8: $80
	rst  $38                                         ; $79d9: $ff
	add  d                                           ; $79da: $82
	cp   $80                                         ; $79db: $fe $80
	ld   a, a                                        ; $79dd: $7f
	add  b                                           ; $79de: $80
	ccf                                              ; $79df: $3f
	inc  b                                           ; $79e0: $04
	adc  a                                           ; $79e1: $8f
	ld   c, a                                        ; $79e2: $4f
	inc  a                                           ; $79e3: $3c
	db   $fd                                         ; $79e4: $fd
	ld   sp, hl                                      ; $79e5: $f9
	add  d                                           ; $79e6: $82
	ei                                               ; $79e7: $fb
	inc  bc                                          ; $79e8: $03
	ld   a, e                                        ; $79e9: $7b
	ei                                               ; $79ea: $fb
	ld   a, e                                        ; $79eb: $7b
	di                                               ; $79ec: $f3
	add  e                                           ; $79ed: $83
	rst  $30                                         ; $79ee: $f7
	ld   [bc], a                                     ; $79ef: $02
	ret  c                                           ; $79f0: $d8

	rst  $38                                         ; $79f1: $ff
	cp   a                                           ; $79f2: $bf
	add  c                                           ; $79f3: $81
	rst  $38                                         ; $79f4: $ff
	nop                                              ; $79f5: $00
	rst  JumpTable                                         ; $79f6: $df
	add  c                                           ; $79f7: $81
	rst  $38                                         ; $79f8: $ff
	nop                                              ; $79f9: $00
	ld   a, a                                        ; $79fa: $7f
	add  c                                           ; $79fb: $81
	rst  $38                                         ; $79fc: $ff
	ld   [bc], a                                     ; $79fd: $02
	cp   a                                           ; $79fe: $bf
	rst  $38                                         ; $79ff: $ff
	ld   a, a                                        ; $7a00: $7f
	adc  l                                           ; $7a01: $8d
	rst  $38                                         ; $7a02: $ff
	add  [hl]                                        ; $7a03: $86
	ldh  a, [$86]                                    ; $7a04: $f0 $86
	pop  hl                                          ; $7a06: $e1
	sbc  [hl]                                        ; $7a07: $9e
	rst  $38                                         ; $7a08: $ff
	nop                                              ; $7a09: $00
	ld   bc, $7f8b                                   ; $7a0a: $01 $8b $7f
	ld   b, $01                                      ; $7a0d: $06 $01
	ld   a, a                                        ; $7a0f: $7f
	sub  d                                           ; $7a10: $92
	ld   a, [hl]                                     ; $7a11: $7e
	ld   l, l                                        ; $7a12: $6d
	ld   a, a                                        ; $7a13: $7f
	ld   a, [hl]                                     ; $7a14: $7e
	add  e                                           ; $7a15: $83
	ld   a, a                                        ; $7a16: $7f
	add  b                                           ; $7a17: $80
	ld   e, a                                        ; $7a18: $5f
	ld   a, [bc]                                     ; $7a19: $0a
	ld   l, a                                        ; $7a1a: $6f
	ld   a, a                                        ; $7a1b: $7f
	db   $10                                         ; $7a1c: $10
	ld   a, a                                        ; $7a1d: $7f
	add  e                                           ; $7a1e: $83
	inc  bc                                          ; $7a1f: $03
	dec  c                                           ; $7a20: $0d
	rrca                                             ; $7a21: $0f
	di                                               ; $7a22: $f3
	rst  $38                                         ; $7a23: $ff
	rrca                                             ; $7a24: $0f
	add  l                                           ; $7a25: $85
	rst  $38                                         ; $7a26: $ff
	ld   bc, $ff01                                   ; $7a27: $01 $01 $ff
	add  d                                           ; $7a2a: $82
	nop                                              ; $7a2b: $00
	add  b                                           ; $7a2c: $80
	rra                                              ; $7a2d: $1f
	ld   a, [bc]                                     ; $7a2e: $0a
	add  hl, bc                                      ; $7a2f: $09
	rrca                                             ; $7a30: $0f
	add  c                                           ; $7a31: $81
	add  a                                           ; $7a32: $87
	ret  nz                                          ; $7a33: $c0

	ld   b, b                                        ; $7a34: $40
	jr   nz, jr_015_7a97                             ; $7a35: $20 $60

	ld   e, b                                        ; $7a37: $58
	ld   a, b                                        ; $7a38: $78
	ldh  [$81], a                                    ; $7a39: $e0 $81
	nop                                              ; $7a3b: $00
	add  b                                           ; $7a3c: $80
	rra                                              ; $7a3d: $1f
	inc  bc                                          ; $7a3e: $03
	ld   [de], a                                     ; $7a3f: $12
	ld   e, $10                                      ; $7a40: $1e $10
	inc  e                                           ; $7a42: $1c
	add  d                                           ; $7a43: $82
	nop                                              ; $7a44: $00
	add  b                                           ; $7a45: $80
	inc  bc                                          ; $7a46: $03
	nop                                              ; $7a47: $00
	ld   [$0f81], sp                                 ; $7a48: $08 $81 $0f
	nop                                              ; $7a4b: $00
	rla                                              ; $7a4c: $17
	add  c                                           ; $7a4d: $81
	rra                                              ; $7a4e: $1f
	ld   [$3f2f], sp                                 ; $7a4f: $08 $2f $3f
	ld   a, a                                        ; $7a52: $7f
	ld   e, a                                        ; $7a53: $5f
	xor  a                                           ; $7a54: $af
	rst  $38                                         ; $7a55: $ff
	sub  b                                           ; $7a56: $90
	ld   a, a                                        ; $7a57: $7f
	add  c                                           ; $7a58: $81
	adc  e                                           ; $7a59: $8b
	rst  $38                                         ; $7a5a: $ff
	inc  bc                                          ; $7a5b: $03
	ld   bc, $7fff                                   ; $7a5c: $01 $ff $7f
	add  b                                           ; $7a5f: $80
	add  b                                           ; $7a60: $80
	ld   e, a                                        ; $7a61: $5f
	ld   [bc], a                                     ; $7a62: $02
	ld   l, a                                        ; $7a63: $6f
	ld   a, a                                        ; $7a64: $7f
	ld   l, a                                        ; $7a65: $6f
	add  l                                           ; $7a66: $85
	ld   a, a                                        ; $7a67: $7f
	add  b                                           ; $7a68: $80
	ld   e, a                                        ; $7a69: $5f
	ld   [bc], a                                     ; $7a6a: $02
	jr   jr_015_7a6d                                 ; $7a6b: $18 $00

jr_015_7a6d:
	and  $8b                                         ; $7a6d: $e6 $8b
	rst  $38                                         ; $7a6f: $ff
	ld   bc, $808e                                   ; $7a70: $01 $8e $80
	add  b                                           ; $7a73: $80
	ld   [hl], a                                     ; $7a74: $77
	nop                                              ; $7a75: $00
	ld   [hl], e                                     ; $7a76: $73
	add  c                                           ; $7a77: $81
	ld   a, e                                        ; $7a78: $7b
	ld   bc, $7d79                                   ; $7a79: $01 $79 $7d
	add  c                                           ; $7a7c: $81
	ld   a, h                                        ; $7a7d: $7c
	add  c                                           ; $7a7e: $81
	ld   a, a                                        ; $7a7f: $7f
	ld   bc, $0fff                                   ; $7a80: $01 $ff $0f
	add  d                                           ; $7a83: $82
	xor  $00                                         ; $7a84: $ee $00
	adc  $81                                         ; $7a86: $ce $81
	sbc  $80                                         ; $7a88: $de $80
	inc  e                                           ; $7a8a: $1c
	nop                                              ; $7a8b: $00
	sbc  h                                           ; $7a8c: $9c
	add  c                                           ; $7a8d: $81
	cp   h                                           ; $7a8e: $bc
	nop                                              ; $7a8f: $00
	ld   b, b                                        ; $7a90: $40
	add  e                                           ; $7a91: $83
	rst  $38                                         ; $7a92: $ff
	nop                                              ; $7a93: $00
	ld   a, a                                        ; $7a94: $7f
	sub  a                                           ; $7a95: $97
	rst  $38                                         ; $7a96: $ff

jr_015_7a97:
	add  b                                           ; $7a97: $80
	pop  hl                                          ; $7a98: $e1
	adc  b                                           ; $7a99: $88
	jp   $8382                                       ; $7a9a: $c3 $82 $83


	sub  h                                           ; $7a9d: $94
	rst  $38                                         ; $7a9e: $ff
	adc  b                                           ; $7a9f: $88
	cp   $02                                         ; $7aa0: $fe $02
	ld   a, a                                        ; $7aa2: $7f
	nop                                              ; $7aa3: $00
	ld   a, [hl]                                     ; $7aa4: $7e
	add  d                                           ; $7aa5: $82
	ld   a, a                                        ; $7aa6: $7f
	add  a                                           ; $7aa7: $87
	rst  $38                                         ; $7aa8: $ff
	ld   [bc], a                                     ; $7aa9: $02
	ld   bc, $ff80                                   ; $7aaa: $01 $80 $ff
	adc  e                                           ; $7aad: $8b
	ld   a, a                                        ; $7aae: $7f
	add  b                                           ; $7aaf: $80
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	cp   $8b                                         ; $7ab2: $fe $8b
	rst  $38                                         ; $7ab4: $ff
	ld   bc, $0001                                   ; $7ab5: $01 $01 $00
	add  b                                           ; $7ab8: $80
	ld   e, a                                        ; $7ab9: $5f
	ld   [bc], a                                     ; $7aba: $02
	ld   l, a                                        ; $7abb: $6f
	ld   a, a                                        ; $7abc: $7f
	ld   l, a                                        ; $7abd: $6f
	add  l                                           ; $7abe: $85
	ld   a, a                                        ; $7abf: $7f
	add  b                                           ; $7ac0: $80
	ld   e, a                                        ; $7ac1: $5f
	add  b                                           ; $7ac2: $80
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	cp   $8b                                         ; $7ac5: $fe $8b
	rst  $38                                         ; $7ac7: $ff
	ld   [bc], a                                     ; $7ac8: $02
	ld   bc, $ff80                                   ; $7ac9: $01 $80 $ff
	adc  e                                           ; $7acc: $8b
	ld   a, a                                        ; $7acd: $7f
	add  b                                           ; $7ace: $80
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	cp   $8b                                         ; $7ad1: $fe $8b
	rst  $38                                         ; $7ad3: $ff
	ld   bc, $8081                                   ; $7ad4: $01 $81 $80
	add  b                                           ; $7ad7: $80
	ld   e, a                                        ; $7ad8: $5f
	ld   [bc], a                                     ; $7ad9: $02
	ld   l, a                                        ; $7ada: $6f
	ld   a, a                                        ; $7adb: $7f
	ld   l, a                                        ; $7adc: $6f
	add  l                                           ; $7add: $85
	ld   a, a                                        ; $7ade: $7f
	add  b                                           ; $7adf: $80
	ld   e, a                                        ; $7ae0: $5f
	add  b                                           ; $7ae1: $80
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	cp   $8b                                         ; $7ae4: $fe $8b
	rst  $38                                         ; $7ae6: $ff
	ld   b, $82                                      ; $7ae7: $06 $82
	add  a                                           ; $7ae9: $87
	ld   a, c                                        ; $7aea: $79
	ld   a, a                                        ; $7aeb: $7f
	ld   a, h                                        ; $7aec: $7c
	ld   a, a                                        ; $7aed: $7f
	ld   a, [hl]                                     ; $7aee: $7e
	add  a                                           ; $7aef: $87
	ld   a, a                                        ; $7af0: $7f
	ld   a, [bc]                                     ; $7af1: $0a
	adc  a                                           ; $7af2: $8f
	rst  $38                                         ; $7af3: $ff
	ld   [hl], e                                     ; $7af4: $73
	rst  $38                                         ; $7af5: $ff
	add  h                                           ; $7af6: $84
	rst  $38                                         ; $7af7: $ff
	ld   a, e                                        ; $7af8: $7b
	rst  $38                                         ; $7af9: $ff
	cp   $ff                                         ; $7afa: $fe $ff
	db   $fc                                         ; $7afc: $fc
	add  e                                           ; $7afd: $83
	rst  $38                                         ; $7afe: $ff
	inc  b                                           ; $7aff: $04
	ld   a, [hl]                                     ; $7b00: $7e
	add  b                                           ; $7b01: $80
	ccf                                              ; $7b02: $3f
	ld   b, b                                        ; $7b03: $40
	ccf                                              ; $7b04: $3f
	add  b                                           ; $7b05: $80
	jr   nz, jr_015_7b08                             ; $7b06: $20 $00

jr_015_7b08:
	rra                                              ; $7b08: $1f
	add  d                                           ; $7b09: $82
	db   $10                                         ; $7b0a: $10
	ld   [$1011], sp                                 ; $7b0b: $08 $11 $10
	ld   de, $5f10                                   ; $7b0e: $11 $10 $5f
	nop                                              ; $7b11: $00
	rst  $38                                         ; $7b12: $ff
	nop                                              ; $7b13: $00
	rst  $38                                         ; $7b14: $ff
	add  b                                           ; $7b15: $80
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	rst  $38                                         ; $7b18: $ff
	add  b                                           ; $7b19: $80
	nop                                              ; $7b1a: $00
	ld   a, [bc]                                     ; $7b1b: $0a
	ret  c                                           ; $7b1c: $d8

	nop                                              ; $7b1d: $00
	dec  h                                           ; $7b1e: $25
	nop                                              ; $7b1f: $00
	ld   h, $00                                      ; $7b20: $26 $00
	inc  h                                           ; $7b22: $24
	nop                                              ; $7b23: $00
	rst  $38                                         ; $7b24: $ff
	nop                                              ; $7b25: $00
	rst  $38                                         ; $7b26: $ff
	add  b                                           ; $7b27: $80
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	rst  $38                                         ; $7b2a: $ff
	add  b                                           ; $7b2b: $80
	nop                                              ; $7b2c: $00
	ld   a, [bc]                                     ; $7b2d: $0a
	ret  c                                           ; $7b2e: $d8

	nop                                              ; $7b2f: $00
	ld   l, b                                        ; $7b30: $68
	nop                                              ; $7b31: $00
	ld   c, h                                        ; $7b32: $4c
	nop                                              ; $7b33: $00
	inc  bc                                          ; $7b34: $03
	nop                                              ; $7b35: $00
	rst  $38                                         ; $7b36: $ff
	nop                                              ; $7b37: $00
	rst  $38                                         ; $7b38: $ff
	add  b                                           ; $7b39: $80
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	rst  $38                                         ; $7b3c: $ff
	add  b                                           ; $7b3d: $80
	nop                                              ; $7b3e: $00
	ld   a, [bc]                                     ; $7b3f: $0a
	ccf                                              ; $7b40: $3f
	nop                                              ; $7b41: $00
	rrca                                             ; $7b42: $0f
	nop                                              ; $7b43: $00
	rrca                                             ; $7b44: $0f
	nop                                              ; $7b45: $00
	ret  nz                                          ; $7b46: $c0

	nop                                              ; $7b47: $00
	rst  $38                                         ; $7b48: $ff
	nop                                              ; $7b49: $00
	rst  $38                                         ; $7b4a: $ff
	add  b                                           ; $7b4b: $80
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	rst  $38                                         ; $7b4e: $ff
	add  b                                           ; $7b4f: $80
	nop                                              ; $7b50: $00
	ld   a, [bc]                                     ; $7b51: $0a
	db   $fc                                         ; $7b52: $fc
	nop                                              ; $7b53: $00
	ldh  a, [rP1]                                    ; $7b54: $f0 $00
	ldh  a, [rP1]                                    ; $7b56: $f0 $00
	inc  bc                                          ; $7b58: $03
	nop                                              ; $7b59: $00
	rst  $38                                         ; $7b5a: $ff
	nop                                              ; $7b5b: $00
	rst  $38                                         ; $7b5c: $ff
	add  b                                           ; $7b5d: $80
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	rst  $38                                         ; $7b60: $ff
	add  d                                           ; $7b61: $82
	nop                                              ; $7b62: $00
	ld   [$000f], sp                                 ; $7b63: $08 $0f $00
	inc  bc                                          ; $7b66: $03
	nop                                              ; $7b67: $00
	di                                               ; $7b68: $f3
	nop                                              ; $7b69: $00
	rst  $38                                         ; $7b6a: $ff
	nop                                              ; $7b6b: $00
	rst  $38                                         ; $7b6c: $ff
	add  b                                           ; $7b6d: $80
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	rst  $38                                         ; $7b70: $ff
	add  b                                           ; $7b71: $80
	nop                                              ; $7b72: $00
	dec  c                                           ; $7b73: $0d
	jr   c, jr_015_7b76                              ; $7b74: $38 $00

jr_015_7b76:
	rst  ToBoot                                         ; $7b76: $c7
	nop                                              ; $7b77: $00
	add  hl, sp                                      ; $7b78: $39
	nop                                              ; $7b79: $00
	jr   c, @+$03                                    ; $7b7a: $38 $01

	cp   $02                                         ; $7b7c: $fe $02
	ld   hl, sp+$06                                  ; $7b7e: $f8 $06
	ld   [bc], a                                     ; $7b80: $02
	ld   a, [$0282]                                  ; $7b81: $fa $82 $02
	ld   [$0282], sp                                 ; $7b84: $08 $82 $02
	add  d                                           ; $7b87: $82
	ld   [bc], a                                     ; $7b88: $02
	ld   a, [$ff00]                                  ; $7b89: $fa $00 $ff
	nop                                              ; $7b8c: $00
	rst  $38                                         ; $7b8d: $ff
	add  b                                           ; $7b8e: $80
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	rst  $38                                         ; $7b91: $ff
	add  b                                           ; $7b92: $80
	nop                                              ; $7b93: $00
	ld   a, [bc]                                     ; $7b94: $0a
	inc  e                                           ; $7b95: $1c
	nop                                              ; $7b96: $00
	ld   h, e                                        ; $7b97: $63
	nop                                              ; $7b98: $00
	ld   a, a                                        ; $7b99: $7f
	nop                                              ; $7b9a: $00
	rst  $38                                         ; $7b9b: $ff
	nop                                              ; $7b9c: $00
	rst  $38                                         ; $7b9d: $ff
	nop                                              ; $7b9e: $00
	rst  $38                                         ; $7b9f: $ff
	add  b                                           ; $7ba0: $80
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	rst  $38                                         ; $7ba3: $ff
	add  b                                           ; $7ba4: $80
	nop                                              ; $7ba5: $00
	ld   a, [bc]                                     ; $7ba6: $0a
	ld   h, e                                        ; $7ba7: $63
	nop                                              ; $7ba8: $00
	ld   d, l                                        ; $7ba9: $55
	nop                                              ; $7baa: $00
	ld   c, c                                        ; $7bab: $49
	nop                                              ; $7bac: $00
	add  b                                           ; $7bad: $80
	nop                                              ; $7bae: $00
	rst  $38                                         ; $7baf: $ff
	nop                                              ; $7bb0: $00
	rst  $38                                         ; $7bb1: $ff
	add  b                                           ; $7bb2: $80
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	rst  $38                                         ; $7bb5: $ff
	add  d                                           ; $7bb6: $82
	nop                                              ; $7bb7: $00
	ld   [$007f], sp                                 ; $7bb8: $08 $7f $00
	inc  e                                           ; $7bbb: $1c
	nop                                              ; $7bbc: $00
	sbc  h                                           ; $7bbd: $9c
	nop                                              ; $7bbe: $00
	rst  $38                                         ; $7bbf: $ff
	nop                                              ; $7bc0: $00
	rst  $38                                         ; $7bc1: $ff
	add  b                                           ; $7bc2: $80
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	rst  $38                                         ; $7bc5: $ff
	add  b                                           ; $7bc6: $80
	nop                                              ; $7bc7: $00
	ld   [bc], a                                     ; $7bc8: $02
	ld   a, a                                        ; $7bc9: $7f
	nop                                              ; $7bca: $00
	inc  e                                           ; $7bcb: $1c
	add  c                                           ; $7bcc: $81
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	ld   h, e                                        ; $7bcf: $63
	add  e                                           ; $7bd0: $83
	nop                                              ; $7bd1: $00
	ld   a, [bc]                                     ; $7bd2: $0a
	inc  c                                           ; $7bd3: $0c
	nop                                              ; $7bd4: $00
	inc  d                                           ; $7bd5: $14
	nop                                              ; $7bd6: $00
	ld   l, $00                                      ; $7bd7: $2e $00
	ld   e, d                                        ; $7bd9: $5a
	nop                                              ; $7bda: $00
	inc  d                                           ; $7bdb: $14
	nop                                              ; $7bdc: $00
	ld   a, b                                        ; $7bdd: $78
	add  e                                           ; $7bde: $83
	nop                                              ; $7bdf: $00
	ld   a, [bc]                                     ; $7be0: $0a
	jr   jr_015_7be3                                 ; $7be1: $18 $00

jr_015_7be3:
	ld   h, a                                        ; $7be3: $67
	nop                                              ; $7be4: $00
	ld   h, a                                        ; $7be5: $67
	nop                                              ; $7be6: $00
	ld   h, a                                        ; $7be7: $67
	nop                                              ; $7be8: $00
	inc  h                                           ; $7be9: $24
	nop                                              ; $7bea: $00
	ld   e, e                                        ; $7beb: $5b
	add  e                                           ; $7bec: $83
	nop                                              ; $7bed: $00
	ld   a, [bc]                                     ; $7bee: $0a
	ld   a, a                                        ; $7bef: $7f
	nop                                              ; $7bf0: $00
	ld   a, h                                        ; $7bf1: $7c
	nop                                              ; $7bf2: $00
	ld   a, b                                        ; $7bf3: $78
	nop                                              ; $7bf4: $00
	ld   a, h                                        ; $7bf5: $7c
	nop                                              ; $7bf6: $00
	ld   a, h                                        ; $7bf7: $7c
	nop                                              ; $7bf8: $00
	ld   a, e                                        ; $7bf9: $7b
	add  e                                           ; $7bfa: $83
	nop                                              ; $7bfb: $00
	ld   a, [bc]                                     ; $7bfc: $0a
	ld   a, a                                        ; $7bfd: $7f
	nop                                              ; $7bfe: $00
	ld   a, h                                        ; $7bff: $7c
	nop                                              ; $7c00: $00
	ld   a, b                                        ; $7c01: $78
	nop                                              ; $7c02: $00
	ld   a, h                                        ; $7c03: $7c
	nop                                              ; $7c04: $00
	ld   a, h                                        ; $7c05: $7c
	nop                                              ; $7c06: $00
	jp   z, $1083                                    ; $7c07: $ca $83 $10

	ld   b, $11                                      ; $7c0a: $06 $11
	db   $10                                         ; $7c0c: $10
	ld   de, $1110                                   ; $7c0d: $11 $10 $11
	db   $10                                         ; $7c10: $10
	ld   de, $1081                                   ; $7c11: $11 $81 $10
	db   $10                                         ; $7c14: $10
	ld   e, h                                        ; $7c15: $5c
	nop                                              ; $7c16: $00
	sub  b                                           ; $7c17: $90
	nop                                              ; $7c18: $00
	sub  b                                           ; $7c19: $90
	nop                                              ; $7c1a: $00
	sbc  h                                           ; $7c1b: $9c
	nop                                              ; $7c1c: $00
	sbc  h                                           ; $7c1d: $9c
	nop                                              ; $7c1e: $00
	sbc  h                                           ; $7c1f: $9c
	nop                                              ; $7c20: $00
	sbc  h                                           ; $7c21: $9c
	nop                                              ; $7c22: $00
	ld   h, h                                        ; $7c23: $64
	nop                                              ; $7c24: $00
	add  hl, hl                                      ; $7c25: $29
	add  c                                           ; $7c26: $81
	nop                                              ; $7c27: $00
	ld   b, $4c                                      ; $7c28: $06 $4c
	nop                                              ; $7c2a: $00
	ld   c, h                                        ; $7c2b: $4c
	nop                                              ; $7c2c: $00
	ld   c, h                                        ; $7c2d: $4c
	nop                                              ; $7c2e: $00
	ld   c, h                                        ; $7c2f: $4c
	add  c                                           ; $7c30: $81
	nop                                              ; $7c31: $00
	inc  h                                           ; $7c32: $24
	ld   c, h                                        ; $7c33: $4c
	nop                                              ; $7c34: $00
	call z, $0f00                                    ; $7c35: $cc $00 $0f
	nop                                              ; $7c38: $00
	add  hl, sp                                      ; $7c39: $39
	nop                                              ; $7c3a: $00
	add  hl, bc                                      ; $7c3b: $09
	nop                                              ; $7c3c: $00
	ld   d, $00                                      ; $7c3d: $16 $00
	ld   a, d                                        ; $7c3f: $7a
	nop                                              ; $7c40: $00
	ld   l, a                                        ; $7c41: $6f
	nop                                              ; $7c42: $00
	dec  c                                           ; $7c43: $0d
	nop                                              ; $7c44: $00
	dec  c                                           ; $7c45: $0d
	nop                                              ; $7c46: $00
	ldh  a, [rP1]                                    ; $7c47: $f0 $00
	db   $fc                                         ; $7c49: $fc
	nop                                              ; $7c4a: $00
	rst  $38                                         ; $7c4b: $ff
	nop                                              ; $7c4c: $00
	ld   h, h                                        ; $7c4d: $64
	nop                                              ; $7c4e: $00
	xor  b                                           ; $7c4f: $a8
	nop                                              ; $7c50: $00
	ld   d, h                                        ; $7c51: $54
	nop                                              ; $7c52: $00
	ld   sp, hl                                      ; $7c53: $f9
	nop                                              ; $7c54: $00
	sub  e                                           ; $7c55: $93
	nop                                              ; $7c56: $00
	ld   bc, $0083                                   ; $7c57: $01 $83 $00
	ld   [bc], a                                     ; $7c5a: $02
	ld   bc, $0100                                   ; $7c5b: $01 $00 $01
	add  c                                           ; $7c5e: $81
	nop                                              ; $7c5f: $00
	ld   [de], a                                     ; $7c60: $12
	dec  d                                           ; $7c61: $15
	nop                                              ; $7c62: $00
	and  $00                                         ; $7c63: $e6 $00
	add  hl, sp                                      ; $7c65: $39
	nop                                              ; $7c66: $00
	jr   c, jr_015_7c69                              ; $7c67: $38 $00

jr_015_7c69:
	cp   $00                                         ; $7c69: $fe $00
	rst  $38                                         ; $7c6b: $ff
	nop                                              ; $7c6c: $00
	inc  a                                           ; $7c6d: $3c
	nop                                              ; $7c6e: $00
	rst  $38                                         ; $7c6f: $ff
	nop                                              ; $7c70: $00
	db   $db                                         ; $7c71: $db
	nop                                              ; $7c72: $00
	ldh  [$8b], a                                    ; $7c73: $e0 $8b
	ld   [bc], a                                     ; $7c75: $02
	inc  c                                           ; $7c76: $0c
	add  d                                           ; $7c77: $82
	ld   [bc], a                                     ; $7c78: $02
	ld   a, [$7f00]                                  ; $7c79: $fa $00 $7f
	nop                                              ; $7c7c: $00
	ld   a, a                                        ; $7c7d: $7f
	nop                                              ; $7c7e: $00
	ld   a, a                                        ; $7c7f: $7f
	nop                                              ; $7c80: $00
	ld   a, a                                        ; $7c81: $7f
	nop                                              ; $7c82: $00
	inc  e                                           ; $7c83: $1c
	add  c                                           ; $7c84: $81
	nop                                              ; $7c85: $00
	ld   [bc], a                                     ; $7c86: $02
	inc  e                                           ; $7c87: $1c
	nop                                              ; $7c88: $00
	inc  e                                           ; $7c89: $1c
	add  c                                           ; $7c8a: $81
	nop                                              ; $7c8b: $00
	ld   [bc], a                                     ; $7c8c: $02
	inc  e                                           ; $7c8d: $1c
	nop                                              ; $7c8e: $00
	ld   c, c                                        ; $7c8f: $49
	add  e                                           ; $7c90: $83
	nop                                              ; $7c91: $00
	ld   [$0001], sp                                 ; $7c92: $08 $01 $00
	ld   d, b                                        ; $7c95: $50
	nop                                              ; $7c96: $00
	inc  b                                           ; $7c97: $04
	nop                                              ; $7c98: $00
	inc  e                                           ; $7c99: $1c
	nop                                              ; $7c9a: $00
	inc  e                                           ; $7c9b: $1c
	add  c                                           ; $7c9c: $81
	nop                                              ; $7c9d: $00
	ld   [bc], a                                     ; $7c9e: $02
	inc  e                                           ; $7c9f: $1c
	nop                                              ; $7ca0: $00
	ld   a, a                                        ; $7ca1: $7f
	add  e                                           ; $7ca2: $83
	nop                                              ; $7ca3: $00
	ld   [bc], a                                     ; $7ca4: $02
	ld   a, a                                        ; $7ca5: $7f
	nop                                              ; $7ca6: $00
	inc  e                                           ; $7ca7: $1c
	add  c                                           ; $7ca8: $81
	nop                                              ; $7ca9: $00
	ld   [bc], a                                     ; $7caa: $02
	inc  e                                           ; $7cab: $1c
	nop                                              ; $7cac: $00
	inc  e                                           ; $7cad: $1c
	add  e                                           ; $7cae: $83
	nop                                              ; $7caf: $00
	ld   [$00a4], sp                                 ; $7cb0: $08 $a4 $00
	db   $f4                                         ; $7cb3: $f4
	nop                                              ; $7cb4: $00
	ld   c, h                                        ; $7cb5: $4c
	nop                                              ; $7cb6: $00
	ld   h, [hl]                                     ; $7cb7: $66
	nop                                              ; $7cb8: $00
	ld   b, e                                        ; $7cb9: $43
	add  e                                           ; $7cba: $83
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	ld   e, d                                        ; $7cbd: $5a
	add  c                                           ; $7cbe: $81
	nop                                              ; $7cbf: $00
	inc  c                                           ; $7cc0: $0c
	ld   a, a                                        ; $7cc1: $7f
	nop                                              ; $7cc2: $00
	inc  h                                           ; $7cc3: $24
	nop                                              ; $7cc4: $00
	inc  h                                           ; $7cc5: $24
	nop                                              ; $7cc6: $00
	ld   b, e                                        ; $7cc7: $43
	nop                                              ; $7cc8: $00
	ld   h, [hl]                                     ; $7cc9: $66
	nop                                              ; $7cca: $00
	jp   $9900                                       ; $7ccb: $c3 $00 $99


	add  c                                           ; $7cce: $81
	nop                                              ; $7ccf: $00
	inc  c                                           ; $7cd0: $0c
	ld   bc, $3e00                                   ; $7cd1: $01 $00 $3e
	nop                                              ; $7cd4: $00
	rrca                                             ; $7cd5: $0f

jr_015_7cd6:
	nop                                              ; $7cd6: $00
	rrca                                             ; $7cd7: $0f
	nop                                              ; $7cd8: $00
	rrca                                             ; $7cd9: $0f
	nop                                              ; $7cda: $00
	rrca                                             ; $7cdb: $0f
	nop                                              ; $7cdc: $00
	ccf                                              ; $7cdd: $3f
	add  c                                           ; $7cde: $81
	nop                                              ; $7cdf: $00
	inc  c                                           ; $7ce0: $0c
	ret  nz                                          ; $7ce1: $c0

	nop                                              ; $7ce2: $00
	ld   a, $00                                      ; $7ce3: $3e $00
	ld   hl, sp+$00                                  ; $7ce5: $f8 $00
	ld   hl, sp+$00                                  ; $7ce7: $f8 $00
	ld   hl, sp+$00                                  ; $7ce9: $f8 $00
	ld   hl, sp+$00                                  ; $7ceb: $f8 $00
	cp   $81                                         ; $7ced: $fe $81
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	or   b                                           ; $7cf1: $b0
	adc  l                                           ; $7cf2: $8d
	stop                                             ; $7cf3: $10 $00
	and  b                                           ; $7cf5: $a0
	sub  e                                           ; $7cf6: $93
	nop                                              ; $7cf7: $00
	ld   a, [bc]                                     ; $7cf8: $0a
	ld   c, $00                                      ; $7cf9: $0e $00
	ld   sp, $2400                                   ; $7cfb: $31 $00 $24
	nop                                              ; $7cfe: $00
	inc  d                                           ; $7cff: $14
	nop                                              ; $7d00: $00
	ld   [hl], b                                     ; $7d01: $70
	nop                                              ; $7d02: $00
	ld   a, a                                        ; $7d03: $7f
	add  e                                           ; $7d04: $83
	nop                                              ; $7d05: $00
	ld   a, [bc]                                     ; $7d06: $0a
	jr   c, jr_015_7d09                              ; $7d07: $38 $00

jr_015_7d09:
	add  $00                                         ; $7d09: $c6 $00
	sub  d                                           ; $7d0b: $92
	nop                                              ; $7d0c: $00
	inc  d                                           ; $7d0d: $14
	nop                                              ; $7d0e: $00
	add  a                                           ; $7d0f: $87
	nop                                              ; $7d10: $00
	rst  $38                                         ; $7d11: $ff
	sub  e                                           ; $7d12: $93
	nop                                              ; $7d13: $00
	ld   b, $33                                      ; $7d14: $06 $33
	nop                                              ; $7d16: $00
	ld   a, [hl+]                                    ; $7d17: $2a
	nop                                              ; $7d18: $00
	add  hl, de                                      ; $7d19: $19
	nop                                              ; $7d1a: $00
	inc  bc                                          ; $7d1b: $03
	add  c                                           ; $7d1c: $81
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	inc  bc                                          ; $7d1f: $03
	add  e                                           ; $7d20: $83
	nop                                              ; $7d21: $00
	ld   a, [bc]                                     ; $7d22: $0a
	ld   hl, sp+$00                                  ; $7d23: $f8 $00
	ld   h, b                                        ; $7d25: $60
	nop                                              ; $7d26: $00
	ld   l, b                                        ; $7d27: $68
	nop                                              ; $7d28: $00
	inc  c                                           ; $7d29: $0c
	nop                                              ; $7d2a: $00
	sub  b                                           ; $7d2b: $90
	nop                                              ; $7d2c: $00
	ld   l, e                                        ; $7d2d: $6b
	adc  l                                           ; $7d2e: $8d
	ld   [bc], a                                     ; $7d2f: $02
	ld   [hl+], a                                    ; $7d30: $22
	dec  b                                           ; $7d31: $05
	nop                                              ; $7d32: $00
	ld   a, a                                        ; $7d33: $7f
	nop                                              ; $7d34: $00
	inc  e                                           ; $7d35: $1c
	nop                                              ; $7d36: $00
	inc  e                                           ; $7d37: $1c
	nop                                              ; $7d38: $00
	inc  e                                           ; $7d39: $1c
	nop                                              ; $7d3a: $00
	inc  e                                           ; $7d3b: $1c
	nop                                              ; $7d3c: $00
	rra                                              ; $7d3d: $1f
	nop                                              ; $7d3e: $00
	rrca                                             ; $7d3f: $0f
	nop                                              ; $7d40: $00
	ld   l, a                                        ; $7d41: $6f
	nop                                              ; $7d42: $00
	ld   a, a                                        ; $7d43: $7f
	nop                                              ; $7d44: $00
	inc  e                                           ; $7d45: $1c
	nop                                              ; $7d46: $00
	inc  e                                           ; $7d47: $1c
	nop                                              ; $7d48: $00
	inc  e                                           ; $7d49: $1c
	nop                                              ; $7d4a: $00
	inc  e                                           ; $7d4b: $1c
	nop                                              ; $7d4c: $00
	ld   a, h                                        ; $7d4d: $7c
	nop                                              ; $7d4e: $00
	ld   hl, sp+$00                                  ; $7d4f: $f8 $00
	ei                                               ; $7d51: $fb
	nop                                              ; $7d52: $00
	jr   jr_015_7cd6                                 ; $7d53: $18 $81

	nop                                              ; $7d55: $00
	ld   [bc], a                                     ; $7d56: $02
	ld   h, a                                        ; $7d57: $67
	nop                                              ; $7d58: $00
	ld   c, c                                        ; $7d59: $49
	add  c                                           ; $7d5a: $81
	nop                                              ; $7d5b: $00
	jr   jr_015_7dae                                 ; $7d5c: $18 $50

	nop                                              ; $7d5e: $00
	stop                                             ; $7d5f: $10 $00
	halt                                             ; $7d61: $76
	nop                                              ; $7d62: $00
	inc  c                                           ; $7d63: $0c
	nop                                              ; $7d64: $00
	inc  d                                           ; $7d65: $14
	nop                                              ; $7d66: $00
	jr   z, jr_015_7d69                              ; $7d67: $28 $00

jr_015_7d69:
	ld   d, [hl]                                     ; $7d69: $56
	nop                                              ; $7d6a: $00
	and  l                                           ; $7d6b: $a5
	nop                                              ; $7d6c: $00
	inc  a                                           ; $7d6d: $3c
	nop                                              ; $7d6e: $00
	rst  $38                                         ; $7d6f: $ff
	nop                                              ; $7d70: $00
	ld   a, a                                        ; $7d71: $7f
	add  b                                           ; $7d72: $80
	ccf                                              ; $7d73: $3f
	ld   b, b                                        ; $7d74: $40
	ccf                                              ; $7d75: $3f
	add  b                                           ; $7d76: $80
	jr   nz, jr_015_7d79                             ; $7d77: $20 $00

jr_015_7d79:
	rra                                              ; $7d79: $1f
	add  [hl]                                        ; $7d7a: $86
	db   $10                                         ; $7d7b: $10
	rlca                                             ; $7d7c: $07
	ld   e, [hl]                                     ; $7d7d: $5e
	ld   bc, $02fe                                   ; $7d7e: $01 $fe $02
	ld   hl, sp+$06                                  ; $7d81: $f8 $06
	ld   [bc], a                                     ; $7d83: $02
	ld   a, [$0286]                                  ; $7d84: $fa $86 $02
	inc  b                                           ; $7d87: $04
	ld   a, [$ff00]                                  ; $7d88: $fa $00 $ff
	nop                                              ; $7d8b: $00
	rst  $38                                         ; $7d8c: $ff
	add  b                                           ; $7d8d: $80
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	rst  $38                                         ; $7d90: $ff
	add  [hl]                                        ; $7d91: $86
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	or   b                                           ; $7d94: $b0
	sbc  l                                           ; $7d95: $9d
	stop                                             ; $7d96: $10 $00
	and  b                                           ; $7d98: $a0
	adc  a                                           ; $7d99: $8f
	nop                                              ; $7d9a: $00
	ld   a, [bc]                                     ; $7d9b: $0a
	rra                                              ; $7d9c: $1f
	nop                                              ; $7d9d: $00
	rlca                                             ; $7d9e: $07
	nop                                              ; $7d9f: $00
	rlca                                             ; $7da0: $07
	nop                                              ; $7da1: $00
	rlca                                             ; $7da2: $07
	nop                                              ; $7da3: $00
	rlca                                             ; $7da4: $07
	nop                                              ; $7da5: $00
	rra                                              ; $7da6: $1f
	add  e                                           ; $7da7: $83
	nop                                              ; $7da8: $00
	ld   a, [bc]                                     ; $7da9: $0a
	db   $fc                                         ; $7daa: $fc
	nop                                              ; $7dab: $00
	ldh  a, [rP1]                                    ; $7dac: $f0 $00

jr_015_7dae:
	ldh  a, [rP1]                                    ; $7dae: $f0 $00
	ldh  a, [rP1]                                    ; $7db0: $f0 $00
	ldh  a, [rP1]                                    ; $7db2: $f0 $00
	db   $fc                                         ; $7db4: $fc
	sub  c                                           ; $7db5: $91
	nop                                              ; $7db6: $00
	ld   [bc], a                                     ; $7db7: $02
	ld   a, e                                        ; $7db8: $7b
	nop                                              ; $7db9: $00
	ld   h, b                                        ; $7dba: $60
	add  e                                           ; $7dbb: $83
	nop                                              ; $7dbc: $00
	inc  b                                           ; $7dbd: $04
	inc  h                                           ; $7dbe: $24
	nop                                              ; $7dbf: $00
	ld   e, b                                        ; $7dc0: $58
	nop                                              ; $7dc1: $00
	ld   h, a                                        ; $7dc2: $67
	add  c                                           ; $7dc3: $81
	nop                                              ; $7dc4: $00
	inc  c                                           ; $7dc5: $0c
	db   $fc                                         ; $7dc6: $fc
	nop                                              ; $7dc7: $00
	sub  b                                           ; $7dc8: $90
	nop                                              ; $7dc9: $00
	sub  b                                           ; $7dca: $90
	nop                                              ; $7dcb: $00
	sub  b                                           ; $7dcc: $90
	nop                                              ; $7dcd: $00
	stop                                             ; $7dce: $10 $00
	add  e                                           ; $7dd0: $83
	nop                                              ; $7dd1: $00
	rst  $38                                         ; $7dd2: $ff
	add  c                                           ; $7dd3: $81
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	rlca                                             ; $7dd6: $07
	adc  l                                           ; $7dd7: $8d
	ld   [bc], a                                     ; $7dd8: $02
	inc  b                                           ; $7dd9: $04
	ld   h, e                                        ; $7dda: $63
	nop                                              ; $7ddb: $00
	add  hl, bc                                      ; $7ddc: $09
	nop                                              ; $7ddd: $00
	add  hl, bc                                      ; $7dde: $09
	add  c                                           ; $7ddf: $81
	nop                                              ; $7de0: $00
	ld   [bc], a                                     ; $7de1: $02
	ld   h, [hl]                                     ; $7de2: $66
	nop                                              ; $7de3: $00
	rst  $38                                         ; $7de4: $ff
	add  b                                           ; $7de5: $80
	nop                                              ; $7de6: $00
	add  b                                           ; $7de7: $80
	rst  $38                                         ; $7de8: $ff
	dec  bc                                          ; $7de9: $0b
	nop                                              ; $7dea: $00
	call z, $c800                                    ; $7deb: $cc $00 $c8
	nop                                              ; $7dee: $00
	ret  z                                           ; $7def: $c8

	nop                                              ; $7df0: $00
	ld   b, h                                        ; $7df1: $44
	nop                                              ; $7df2: $00
	ld   [hl], a                                     ; $7df3: $77
	nop                                              ; $7df4: $00
	rst  $38                                         ; $7df5: $ff
	add  b                                           ; $7df6: $80
	nop                                              ; $7df7: $00
	add  b                                           ; $7df8: $80
	rst  $38                                         ; $7df9: $ff
	dec  bc                                          ; $7dfa: $0b
	nop                                              ; $7dfb: $00
	jp   $2400                                       ; $7dfc: $c3 $00 $24


	nop                                              ; $7dff: $00
	inc  h                                           ; $7e00: $24
	nop                                              ; $7e01: $00
	ld   e, d                                        ; $7e02: $5a
	nop                                              ; $7e03: $00
	ld   h, [hl]                                     ; $7e04: $66
	nop                                              ; $7e05: $00
	rst  $38                                         ; $7e06: $ff
	add  b                                           ; $7e07: $80
	nop                                              ; $7e08: $00
	add  b                                           ; $7e09: $80
	rst  $38                                         ; $7e0a: $ff
	add  c                                           ; $7e0b: $81
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	inc  a                                           ; $7e0e: $3c
	add  c                                           ; $7e0f: $81
	nop                                              ; $7e10: $00
	inc  b                                           ; $7e11: $04
	inc  a                                           ; $7e12: $3c
	nop                                              ; $7e13: $00
	rst  $38                                         ; $7e14: $ff
	nop                                              ; $7e15: $00
	rst  $38                                         ; $7e16: $ff
	add  b                                           ; $7e17: $80
	nop                                              ; $7e18: $00
	add  b                                           ; $7e19: $80
	rst  $38                                         ; $7e1a: $ff
	ld   bc, $4f00                                   ; $7e1b: $01 $00 $4f
	add  a                                           ; $7e1e: $87
	db   $10                                         ; $7e1f: $10
	ld   b, $3f                                      ; $7e20: $06 $3f
	jr   nz, jr_015_7e24                             ; $7e22: $20 $00

jr_015_7e24:
	ld   a, a                                        ; $7e24: $7f
	cp   a                                           ; $7e25: $bf
	add  b                                           ; $7e26: $80
	ld   hl, sp-$7b                                  ; $7e27: $f8 $85
	ld   [bc], a                                     ; $7e29: $02
	add  b                                           ; $7e2a: $80
	ld   a, [bc]                                     ; $7e2b: $0a
	ld   b, $fe                                      ; $7e2c: $06 $fe
	ld   b, $00                                      ; $7e2e: $06 $00
	cp   $fd                                         ; $7e30: $fe $fd
	ld   bc, $87ff                                   ; $7e32: $01 $ff $87
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	rst  $38                                         ; $7e37: $ff
	add  b                                           ; $7e38: $80
	nop                                              ; $7e39: $00
	add  b                                           ; $7e3a: $80
	rst  $38                                         ; $7e3b: $ff
	ld   bc, $f800                                   ; $7e3c: $01 $00 $f8
	adc  l                                           ; $7e3f: $8d
	ld   [bc], a                                     ; $7e40: $02
	nop                                              ; $7e41: $00
	or   l                                           ; $7e42: $b5
	adc  l                                           ; $7e43: $8d
	stop                                             ; $7e44: $10 $00
	and  b                                           ; $7e46: $a0
	adc  a                                           ; $7e47: $8f
	nop                                              ; $7e48: $00
	ld   d, $36                                      ; $7e49: $16 $36
	nop                                              ; $7e4b: $00
	ld   c, c                                        ; $7e4c: $49
	nop                                              ; $7e4d: $00
	ld   c, c                                        ; $7e4e: $49
	nop                                              ; $7e4f: $00
	ld   c, c                                        ; $7e50: $49
	nop                                              ; $7e51: $00
	inc  h                                           ; $7e52: $24
	nop                                              ; $7e53: $00
	inc  h                                           ; $7e54: $24
	nop                                              ; $7e55: $00
	ld   h, a                                        ; $7e56: $67
	nop                                              ; $7e57: $00
	jr   jr_015_7e5a                                 ; $7e58: $18 $00

jr_015_7e5a:
	ld   [hl], $00                                   ; $7e5a: $36 $00
	ld   e, d                                        ; $7e5c: $5a
	nop                                              ; $7e5d: $00
	sub  e                                           ; $7e5e: $93
	nop                                              ; $7e5f: $00
	sub  e                                           ; $7e60: $93
	add  c                                           ; $7e61: $81
	nop                                              ; $7e62: $00
	ld   b, $13                                      ; $7e63: $06 $13
	nop                                              ; $7e65: $00
	inc  de                                          ; $7e66: $13
	nop                                              ; $7e67: $00
	ld   l, h                                        ; $7e68: $6c
	nop                                              ; $7e69: $00
	ld   h, b                                        ; $7e6a: $60
	adc  e                                           ; $7e6b: $8b
	nop                                              ; $7e6c: $00
	ld   [bc], a                                     ; $7e6d: $02
	ld   h, b                                        ; $7e6e: $60
	nop                                              ; $7e6f: $00
	ld   b, $8b                                      ; $7e70: $06 $8b
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	ld   b, $83                                      ; $7e74: $06 $83
	nop                                              ; $7e76: $00
	ld   [bc], a                                     ; $7e77: $02
	inc  c                                           ; $7e78: $0c
	nop                                              ; $7e79: $00
	ld   a, [bc]                                     ; $7e7a: $0a
	add  c                                           ; $7e7b: $81
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	dec  b                                           ; $7e7e: $05
	add  c                                           ; $7e7f: $81
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	inc  b                                           ; $7e82: $04
	adc  l                                           ; $7e83: $8d
	ld   [bc], a                                     ; $7e84: $02
	nop                                              ; $7e85: $00
	dec  b                                           ; $7e86: $05
	cp   l                                           ; $7e87: $bd
	nop                                              ; $7e88: $00
	inc  b                                           ; $7e89: $04
	rst  $38                                         ; $7e8a: $ff
	nop                                              ; $7e8b: $00
	rst  $38                                         ; $7e8c: $ff
	nop                                              ; $7e8d: $00
	rst  $38                                         ; $7e8e: $ff
	adc  c                                           ; $7e8f: $89
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	add  b                                           ; $7e92: $80
	add  a                                           ; $7e93: $87
	nop                                              ; $7e94: $00
	add  b                                           ; $7e95: $80
	ld   b, b                                        ; $7e96: $40
	ld   [bc], a                                     ; $7e97: $02
	nop                                              ; $7e98: $00
	rst  $38                                         ; $7e99: $ff
	ld   a, a                                        ; $7e9a: $7f
	adc  h                                           ; $7e9b: $8c
	nop                                              ; $7e9c: $00
	add  b                                           ; $7e9d: $80
	rst  $38                                         ; $7e9e: $ff
	add  b                                           ; $7e9f: $80
	nop                                              ; $7ea0: $00
	add  a                                           ; $7ea1: $87
	ld   [bc], a                                     ; $7ea2: $02
	add  b                                           ; $7ea3: $80
	ld   b, $04                                      ; $7ea4: $06 $04
	nop                                              ; $7ea6: $00
	cp   $fd                                         ; $7ea7: $fe $fd
	ld   bc, $874f                                   ; $7ea9: $01 $4f $87
	db   $10                                         ; $7eac: $10
	ld   b, $3f                                      ; $7ead: $06 $3f
	jr   nz, jr_015_7eb1                             ; $7eaf: $20 $00

jr_015_7eb1:
	ld   a, a                                        ; $7eb1: $7f
	cp   a                                           ; $7eb2: $bf
	add  b                                           ; $7eb3: $80
	rst  $38                                         ; $7eb4: $ff
	add  a                                           ; $7eb5: $87
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	rst  $38                                         ; $7eb8: $ff
	add  b                                           ; $7eb9: $80
	nop                                              ; $7eba: $00
	add  b                                           ; $7ebb: $80
	rst  $38                                         ; $7ebc: $ff
	dec  bc                                          ; $7ebd: $0b
	nop                                              ; $7ebe: $00
	add  b                                           ; $7ebf: $80
	nop                                              ; $7ec0: $00
	ld   h, a                                        ; $7ec1: $67
	nop                                              ; $7ec2: $00
	ld   h, a                                        ; $7ec3: $67
	nop                                              ; $7ec4: $00
	add  hl, de                                      ; $7ec5: $19
	nop                                              ; $7ec6: $00
	ld   h, [hl]                                     ; $7ec7: $66
	nop                                              ; $7ec8: $00
	rst  $38                                         ; $7ec9: $ff
	add  b                                           ; $7eca: $80
	nop                                              ; $7ecb: $00
	add  b                                           ; $7ecc: $80
	rst  $38                                         ; $7ecd: $ff
	inc  bc                                          ; $7ece: $03
	nop                                              ; $7ecf: $00
	add  b                                           ; $7ed0: $80
	nop                                              ; $7ed1: $00
	inc  de                                          ; $7ed2: $13
	add  c                                           ; $7ed3: $81
	nop                                              ; $7ed4: $00
	inc  b                                           ; $7ed5: $04
	inc  de                                          ; $7ed6: $13
	nop                                              ; $7ed7: $00
	ld   a, a                                        ; $7ed8: $7f
	nop                                              ; $7ed9: $00
	rst  $38                                         ; $7eda: $ff
	add  b                                           ; $7edb: $80
	nop                                              ; $7edc: $00
	add  b                                           ; $7edd: $80
	rst  $38                                         ; $7ede: $ff
	dec  bc                                          ; $7edf: $0b
	nop                                              ; $7ee0: $00
	sbc  a                                           ; $7ee1: $9f
	nop                                              ; $7ee2: $00
	stop                                             ; $7ee3: $10 $00
	ld   c, b                                        ; $7ee5: $48
	nop                                              ; $7ee6: $00
	scf                                              ; $7ee7: $37
	nop                                              ; $7ee8: $00
	rrca                                             ; $7ee9: $0f
	nop                                              ; $7eea: $00
	rst  $38                                         ; $7eeb: $ff
	add  b                                           ; $7eec: $80
	nop                                              ; $7eed: $00
	add  b                                           ; $7eee: $80
	rst  $38                                         ; $7eef: $ff
	rlca                                             ; $7ef0: $07
	nop                                              ; $7ef1: $00
	call z, Call_015_5000                            ; $7ef2: $cc $00 $50
	nop                                              ; $7ef5: $00
	and  d                                           ; $7ef6: $a2
	nop                                              ; $7ef7: $00
	pop  bc                                          ; $7ef8: $c1
	add  c                                           ; $7ef9: $81
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	rst  $38                                         ; $7efc: $ff
	add  b                                           ; $7efd: $80
	nop                                              ; $7efe: $00
	add  b                                           ; $7eff: $80
	rst  $38                                         ; $7f00: $ff
	dec  bc                                          ; $7f01: $0b
	nop                                              ; $7f02: $00
	sbc  h                                           ; $7f03: $9c
	nop                                              ; $7f04: $00
	inc  bc                                          ; $7f05: $03
	nop                                              ; $7f06: $00
	add  b                                           ; $7f07: $80
	nop                                              ; $7f08: $00
	jr   nz, jr_015_7f0b                             ; $7f09: $20 $00

jr_015_7f0b:
	ret  nz                                          ; $7f0b: $c0

	nop                                              ; $7f0c: $00
	rst  $38                                         ; $7f0d: $ff
	add  b                                           ; $7f0e: $80
	nop                                              ; $7f0f: $00
	add  b                                           ; $7f10: $80
	rst  $38                                         ; $7f11: $ff
	ld   bc, $f800                                   ; $7f12: $01 $00 $f8
	add  l                                           ; $7f15: $85
	ld   [bc], a                                     ; $7f16: $02
	add  b                                           ; $7f17: $80
	ld   a, [bc]                                     ; $7f18: $0a
	ld   b, $fe                                      ; $7f19: $06 $fe
	ld   b, $00                                      ; $7f1b: $06 $00
	cp   $fd                                         ; $7f1d: $fe $fd
	ld   bc, $ffff                                   ; $7f1f: $01 $ff $ff
	nop                                              ; $7f22: $00
	db   $fc                                         ; $7f23: $fc
	nop                                              ; $7f24: $00
	ld   e, a                                        ; $7f25: $5f
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	ld   b, $90                                      ; $7f28: $06 $90
	nop                                              ; $7f2a: $00
	ld   bc, $2e20                                   ; $7f2b: $01 $20 $2e
	adc  c                                           ; $7f2e: $89
	nop                                              ; $7f2f: $00
	ld   bc, $010e                                   ; $7f30: $01 $0e $01
	adc  a                                           ; $7f33: $8f
	nop                                              ; $7f34: $00
	ld   bc, $6e61                                   ; $7f35: $01 $61 $6e
	adc  c                                           ; $7f38: $89
	nop                                              ; $7f39: $00
	ld   bc, $010e                                   ; $7f3a: $01 $0e $01
	adc  a                                           ; $7f3d: $8f
	nop                                              ; $7f3e: $00
	ld   bc, $6e61                                   ; $7f3f: $01 $61 $6e
	adc  c                                           ; $7f42: $89

jr_015_7f43:
	nop                                              ; $7f43: $00

jr_015_7f44:
	ld   bc, $010e                                   ; $7f44: $01 $0e $01
	adc  a                                           ; $7f47: $8f
	nop                                              ; $7f48: $00
	ld   bc, $6e61                                   ; $7f49: $01 $61 $6e
	adc  c                                           ; $7f4c: $89
	nop                                              ; $7f4d: $00
	ld   bc, $010e                                   ; $7f4e: $01 $0e $01
	adc  a                                           ; $7f51: $8f
	nop                                              ; $7f52: $00

jr_015_7f53:
	ld   bc, $6e61                                   ; $7f53: $01 $61 $6e
	adc  c                                           ; $7f56: $89
	nop                                              ; $7f57: $00
	ld   bc, $010e                                   ; $7f58: $01 $0e $01
	adc  [hl]                                        ; $7f5b: $8e
	nop                                              ; $7f5c: $00
	ld   [bc], a                                     ; $7f5d: $02
	ld   h, b                                        ; $7f5e: $60
	ld   bc, $896e                                   ; $7f5f: $01 $6e $89
	nop                                              ; $7f62: $00
	ld   bc, $010e                                   ; $7f63: $01 $0e $01
	adc  [hl]                                        ; $7f66: $8e
	nop                                              ; $7f67: $00
	ld   [bc], a                                     ; $7f68: $02
	ld   h, b                                        ; $7f69: $60
	ld   bc, $896e                                   ; $7f6a: $01 $6e $89
	nop                                              ; $7f6d: $00
	ld   bc, $204e                                   ; $7f6e: $01 $4e $20
	sub  b                                           ; $7f71: $90
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	ld   l, [hl]                                     ; $7f74: $6e
	adc  c                                           ; $7f75: $89
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	ld   c, $84                                      ; $7f78: $0e $84
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	ld   bc, $0083                                   ; $7f7c: $01 $83 $00
	nop                                              ; $7f7f: $00
	ld   bc, $0084                                   ; $7f80: $01 $84 $00
	nop                                              ; $7f83: $00
	ld   c, $89                                      ; $7f84: $0e $89
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	ld   c, $84                                      ; $7f88: $0e $84
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	ld   bc, $0083                                   ; $7f8c: $01 $83 $00
	nop                                              ; $7f8f: $00
	ld   bc, $0084                                   ; $7f90: $01 $84 $00
	nop                                              ; $7f93: $00
	ld   c, $89                                      ; $7f94: $0e $89
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	ld   c, $84                                      ; $7f98: $0e $84
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	ld   bc, $0083                                   ; $7f9c: $01 $83 $00
	nop                                              ; $7f9f: $00
	ld   bc, $0084                                   ; $7fa0: $01 $84 $00
	nop                                              ; $7fa3: $00
	ld   c, $89                                      ; $7fa4: $0e $89
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	dec  c                                           ; $7fa8: $0d
	sub  c                                           ; $7fa9: $91
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	dec  c                                           ; $7fac: $0d
	adc  c                                           ; $7fad: $89
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	rrca                                             ; $7fb0: $0f
	sub  c                                           ; $7fb1: $91
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	rrca                                             ; $7fb4: $0f
	adc  c                                           ; $7fb5: $89
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	rrca                                             ; $7fb8: $0f
	add  d                                           ; $7fb9: $82
	nop                                              ; $7fba: $00
	add  b                                           ; $7fbb: $80
	jr   nz, jr_015_7f43                             ; $7fbc: $20 $85

	nop                                              ; $7fbe: $00
	add  b                                           ; $7fbf: $80
	jr   nz, jr_015_7f44                             ; $7fc0: $20 $82

	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	rrca                                             ; $7fc4: $0f
	adc  c                                           ; $7fc5: $89
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	rrca                                             ; $7fc8: $0f
	add  d                                           ; $7fc9: $82
	nop                                              ; $7fca: $00
	add  b                                           ; $7fcb: $80
	jr   nz, jr_015_7f53                             ; $7fcc: $20 $85

	nop                                              ; $7fce: $00
	add  b                                           ; $7fcf: $80
	jr   nz, @-$7c                                   ; $7fd0: $20 $82

	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	rrca                                             ; $7fd4: $0f
	adc  c                                           ; $7fd5: $89
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	rrca                                             ; $7fd8: $0f
	sub  c                                           ; $7fd9: $91
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	rrca                                             ; $7fdc: $0f
	adc  c                                           ; $7fdd: $89
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	rrca                                             ; $7fe0: $0f
	sub  c                                           ; $7fe1: $91
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	rrca                                             ; $7fe4: $0f
	adc  c                                           ; $7fe5: $89
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	ld   c, l                                        ; $7fe8: $4d
	sub  c                                           ; $7fe9: $91
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	ld   c, l                                        ; $7fec: $4d
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	add  $00                                         ; $7ff3: $c6 $00
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
