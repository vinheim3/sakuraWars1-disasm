; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0bb", ROMX[$4000], BANK[$bb]

	ld   a, b                                        ; $4000: $78
	ld   l, h                                        ; $4001: $6c
	ld   e, b                                        ; $4002: $58
	adc  c                                           ; $4003: $89
	ld   a, b                                        ; $4004: $78
	ld   a, c                                        ; $4005: $79
	sub  a                                           ; $4006: $97
	and  [hl]                                        ; $4007: $a6
	sub  [hl]                                        ; $4008: $96
	and  a                                           ; $4009: $a7
	and  a                                           ; $400a: $a7
	sbc  b                                           ; $400b: $98
	ld   e, h                                        ; $400c: $5c
	ld   e, c                                        ; $400d: $59
	ld   [hl], a                                     ; $400e: $77
	adc  b                                           ; $400f: $88
	and  l                                           ; $4010: $a5
	and  a                                           ; $4011: $a7
	ld   a, d                                        ; $4012: $7a
	ld   l, c                                        ; $4013: $69
	add  a                                           ; $4014: $87
	sub  a                                           ; $4015: $97
	push bc                                          ; $4016: $c5
	adc  c                                           ; $4017: $89
	add  a                                           ; $4018: $87
	adc  b                                           ; $4019: $88
	adc  d                                           ; $401a: $8a
	ld   l, d                                        ; $401b: $6a
	ld   a, e                                        ; $401c: $7b
	ld   l, c                                        ; $401d: $69
	ld   [hl], a                                     ; $401e: $77
	or   [hl]                                        ; $401f: $b6
	and  [hl]                                        ; $4020: $a6
	sub  a                                           ; $4021: $97
	sub  a                                           ; $4022: $97
	and  a                                           ; $4023: $a7
	ld   a, e                                        ; $4024: $7b
	ld   a, c                                        ; $4025: $79
	ld   [hl], a                                     ; $4026: $77
	ld   a, c                                        ; $4027: $79
	adc  c                                           ; $4028: $89
	ld   a, d                                        ; $4029: $7a
	ld   e, d                                        ; $402a: $5a
	add  a                                           ; $402b: $87
	and  [hl]                                        ; $402c: $a6
	sub  l                                           ; $402d: $95
	add  a                                           ; $402e: $87
	ret  z                                           ; $402f: $c8

	ld   c, b                                        ; $4030: $48
	add  a                                           ; $4031: $87
	adc  c                                           ; $4032: $89
	ld   l, c                                        ; $4033: $69
	ld   e, d                                        ; $4034: $5a
	sub  [hl]                                        ; $4035: $96
	sub  [hl]                                        ; $4036: $96
	sub  a                                           ; $4037: $97
	add  $5a                                         ; $4038: $c6 $5a
	ld   a, c                                        ; $403a: $79
	ld   e, c                                        ; $403b: $59
	ld   a, b                                        ; $403c: $78
	adc  d                                           ; $403d: $8a
	ld   l, b                                        ; $403e: $68
	sub  [hl]                                        ; $403f: $96
	jp   nc, $7cb6                                   ; $4040: $d2 $b6 $7c

	add  hl, sp                                      ; $4043: $39
	ld   l, c                                        ; $4044: $69
	adc  c                                           ; $4045: $89
	ld   [hl], a                                     ; $4046: $77
	sub  [hl]                                        ; $4047: $96
	sub  a                                           ; $4048: $97
	sbc  c                                           ; $4049: $99
	ld   h, a                                        ; $404a: $67
	sub  [hl]                                        ; $404b: $96
	sbc  b                                           ; $404c: $98
	add  [hl]                                        ; $404d: $86
	or   a                                           ; $404e: $b7
	ld   l, c                                        ; $404f: $69
	ld   a, c                                        ; $4050: $79
	adc  b                                           ; $4051: $88
	ld   a, e                                        ; $4052: $7b
	ld   c, c                                        ; $4053: $49
	ld   l, c                                        ; $4054: $69
	sub  l                                           ; $4055: $95
	call nz, $89c6                                   ; $4056: $c4 $c6 $89
	ld   l, d                                        ; $4059: $6a
	ld   a, c                                        ; $405a: $79
	ld   l, e                                        ; $405b: $6b
	ld   l, b                                        ; $405c: $68
	add  a                                           ; $405d: $87
	and  l                                           ; $405e: $a5
	sub  a                                           ; $405f: $97
	adc  d                                           ; $4060: $8a
	ld   [hl], a                                     ; $4061: $77
	sbc  b                                           ; $4062: $98
	ld   a, b                                        ; $4063: $78
	ld   a, c                                        ; $4064: $79
	sub  a                                           ; $4065: $97
	add  a                                           ; $4066: $87
	sub  [hl]                                        ; $4067: $96
	sbc  d                                           ; $4068: $9a
	sbc  b                                           ; $4069: $98
	ld   l, e                                        ; $406a: $6b
	ld   e, c                                        ; $406b: $59
	ld   [hl], a                                     ; $406c: $77
	and  [hl]                                        ; $406d: $a6
	sbc  d                                           ; $406e: $9a
	ld   h, h                                        ; $406f: $64
	or   [hl]                                        ; $4070: $b6
	sbc  c                                           ; $4071: $99
	ld   e, b                                        ; $4072: $58
	ld   e, d                                        ; $4073: $5a
	add  a                                           ; $4074: $87
	ld   a, c                                        ; $4075: $79
	sbc  d                                           ; $4076: $9a
	sbc  b                                           ; $4077: $98
	ld   d, a                                        ; $4078: $57
	or   a                                           ; $4079: $b7
	sub  [hl]                                        ; $407a: $96
	and  [hl]                                        ; $407b: $a6
	ld   a, b                                        ; $407c: $78
	ld   [hl], a                                     ; $407d: $77
	sbc  d                                           ; $407e: $9a
	ld   l, d                                        ; $407f: $6a
	ld   e, c                                        ; $4080: $59
	adc  b                                           ; $4081: $88
	ld   [hl], a                                     ; $4082: $77
	sub  a                                           ; $4083: $97
	add  $6a                                         ; $4084: $c6 $6a
	add  [hl]                                        ; $4086: $86
	sbc  c                                           ; $4087: $99
	ld   e, d                                        ; $4088: $5a
	sub  [hl]                                        ; $4089: $96
	ld   a, d                                        ; $408a: $7a
	ld   h, [hl]                                     ; $408b: $66
	or   l                                           ; $408c: $b5
	ld   a, d                                        ; $408d: $7a
	adc  b                                           ; $408e: $88
	add  a                                           ; $408f: $87
	adc  c                                           ; $4090: $89
	adc  b                                           ; $4091: $88
	ld   l, d                                        ; $4092: $6a
	ld   l, b                                        ; $4093: $68
	xor  b                                           ; $4094: $a8
	ld   a, b                                        ; $4095: $78
	add  l                                           ; $4096: $85
	and  l                                           ; $4097: $a5
	sbc  c                                           ; $4098: $99
	and  a                                           ; $4099: $a7
	ld   a, c                                        ; $409a: $79
	ld   l, d                                        ; $409b: $6a
	ld   c, c                                        ; $409c: $49
	ld   a, d                                        ; $409d: $7a
	add  a                                           ; $409e: $87
	or   a                                           ; $409f: $b7
	add  a                                           ; $40a0: $87
	and  [hl]                                        ; $40a1: $a6
	or   l                                           ; $40a2: $b5
	ld   a, c                                        ; $40a3: $79
	sub  a                                           ; $40a4: $97
	ld   e, h                                        ; $40a5: $5c
	ld   e, e                                        ; $40a6: $5b
	ld   l, b                                        ; $40a7: $68
	xor  c                                           ; $40a8: $a9
	sbc  c                                           ; $40a9: $99
	or   a                                           ; $40aa: $b7
	sub  a                                           ; $40ab: $97
	add  [hl]                                        ; $40ac: $86
	sbc  c                                           ; $40ad: $99
	ld   a, d                                        ; $40ae: $7a
	ld   a, b                                        ; $40af: $78
	xor  c                                           ; $40b0: $a9
	add  a                                           ; $40b1: $87
	adc  b                                           ; $40b2: $88
	add  [hl]                                        ; $40b3: $86
	ld   d, l                                        ; $40b4: $55
	ld   h, [hl]                                     ; $40b5: $66
	ld   d, l                                        ; $40b6: $55
	ld   l, c                                        ; $40b7: $69
	ld   a, b                                        ; $40b8: $78
	xor  e                                           ; $40b9: $ab
	call c, $fedd                                    ; $40ba: $dc $dd $fe
	or   [hl]                                        ; $40bd: $b6
	ld   h, a                                        ; $40be: $67
	ld   sp, $1211                                   ; $40bf: $31 $11 $12
	ld   de, $9768                                   ; $40c2: $11 $68 $97
	xor  a                                           ; $40c5: $af
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	db   $eb                                         ; $40c9: $eb
	add  a                                           ; $40ca: $87
	ld   de, $1111                                   ; $40cb: $11 $11 $11
	ld   de, $4a13                                   ; $40ce: $11 $13 $4a
	rst  $28                                         ; $40d1: $ef
	rst  $38                                         ; $40d2: $ff
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	ld   a, [$1121]                                  ; $40d6: $fa $21 $11
	ld   de, $1111                                   ; $40d9: $11 $11 $11
	ld   d, $df                                      ; $40dc: $16 $df
	rst  $38                                         ; $40de: $ff
	rst  $38                                         ; $40df: $ff
	rst  $38                                         ; $40e0: $ff
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	call nz, $1111                                   ; $40e3: $c4 $11 $11
	ld   de, $1111                                   ; $40e6: $11 $11 $11
	ld   c, [hl]                                     ; $40e9: $4e
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	rst  $38                                         ; $40ee: $ff
	ld   a, [$1191]                                  ; $40ef: $fa $91 $11
	ld   de, $1111                                   ; $40f2: $11 $11 $11
	ld   e, d                                        ; $40f5: $5a
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	rst  $38                                         ; $40f8: $ff
	rst  $38                                         ; $40f9: $ff
	rst  $38                                         ; $40fa: $ff
	ld   [$11a8], a                                  ; $40fb: $ea $a8 $11
	ld   de, $1111                                   ; $40fe: $11 $11 $11
	ld   a, [hl-]                                    ; $4101: $3a
	rst  $28                                         ; $4102: $ef
	rst  $38                                         ; $4103: $ff
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	rst  $38                                         ; $4106: $ff
	db   $eb                                         ; $4107: $eb
	adc  c                                           ; $4108: $89
	ld   d, c                                        ; $4109: $51
	ld   de, $1111                                   ; $410a: $11 $11 $11
	ld   d, $ff                                      ; $410d: $16 $ff
	rst  $38                                         ; $410f: $ff
	rst  $38                                         ; $4110: $ff
	rst  $38                                         ; $4111: $ff
	rst  $38                                         ; $4112: $ff
	ei                                               ; $4113: $fb
	add  [hl]                                        ; $4114: $86
	and  l                                           ; $4115: $a5
	ld   de, $1111                                   ; $4116: $11 $11 $11
	ld   de, $ffcf                                   ; $4119: $11 $cf $ff
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	and  h                                           ; $4120: $a4
	ld   a, h                                        ; $4121: $7c
	ld   de, $1111                                   ; $4122: $11 $11 $11
	ld   de, $ff7f                                   ; $4125: $11 $7f $ff
	rst  $38                                         ; $4128: $ff
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	rst  $38                                         ; $412b: $ff
	push bc                                          ; $412c: $c5
	ld   c, h                                        ; $412d: $4c
	and  c                                           ; $412e: $a1
	ld   de, $1111                                   ; $412f: $11 $11 $11
	ld   e, $ff                                      ; $4132: $1e $ff
	rst  $38                                         ; $4134: $ff
	rst  $38                                         ; $4135: $ff
	db   $fd                                         ; $4136: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4137: $cf
	ld   sp, hl                                      ; $4138: $f9
	ld   b, a                                        ; $4139: $47
	rst  $20                                         ; $413a: $e7
	ld   de, $1111                                   ; $413b: $11 $11 $11
	rla                                              ; $413e: $17
	rst  $38                                         ; $413f: $ff
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	rst  $38                                         ; $4142: $ff
	sbc  h                                           ; $4143: $9c
	cp   $74                                         ; $4144: $fe $74
	xor  $11                                         ; $4146: $ee $11
	ld   de, $1111                                   ; $4148: $11 $11 $11
	rst  JumpTable                                         ; $414b: $df
	rst  $38                                         ; $414c: $ff
	rst  $38                                         ; $414d: $ff
	rst  $38                                         ; $414e: $ff
	and  h                                           ; $414f: $a4
	cp   a                                           ; $4150: $bf
	push de                                          ; $4151: $d5
	ld   a, a                                        ; $4152: $7f
	pop  bc                                          ; $4153: $c1
	ld   de, $1111                                   ; $4154: $11 $11 $11
	ld   c, a                                        ; $4157: $4f
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	db   $e3                                         ; $415b: $e3
	ld   a, a                                        ; $415c: $7f
	db   $fc                                         ; $415d: $fc
	ld   a, a                                        ; $415e: $7f
	di                                               ; $415f: $f3
	ld   de, $1111                                   ; $4160: $11 $11 $11
	dec  de                                          ; $4163: $1b
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	rst  $38                                         ; $4166: $ff
	db   $f4                                         ; $4167: $f4
	add  hl, sp                                      ; $4168: $39
	rst  $38                                         ; $4169: $ff
	sbc  e                                           ; $416a: $9b
	rst  $30                                         ; $416b: $f7
	ld   de, $1111                                   ; $416c: $11 $11 $11
	inc  de                                          ; $416f: $13
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	rst  $38                                         ; $4172: $ff
	ld   hl, sp+$13                                  ; $4173: $f8 $13
	rst  $28                                         ; $4175: $ef
	add  sp, $62                                     ; $4176: $e8 $62
	ld   de, $6a11                                   ; $4178: $11 $11 $6a
	ld   a, [hl+]                                    ; $417b: $2a
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	and  a                                           ; $417f: $a7
	ld   d, e                                        ; $4180: $53
	ld   a, a                                        ; $4181: $7f
	ld   sp, hl                                      ; $4182: $f9
	ld   de, $1111                                   ; $4183: $11 $11 $11
	cp   e                                           ; $4186: $bb
	rst  $38                                         ; $4187: $ff
	rst  $38                                         ; $4188: $ff
	rst  $38                                         ; $4189: $ff
	ld   [hl], d                                     ; $418a: $72
	dec  [hl]                                        ; $418b: $35
	ld   a, e                                        ; $418c: $7b
	rst  $38                                         ; $418d: $ff
	ld   [hl], c                                     ; $418e: $71
	ld   de, $5a11                                   ; $418f: $11 $11 $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4192: $cf
	rst  $38                                         ; $4193: $ff
	rst  $38                                         ; $4194: $ff
	rst  $30                                         ; $4195: $f7
	ld   b, h                                        ; $4196: $44
	ld   l, d                                        ; $4197: $6a
	rst  $28                                         ; $4198: $ef
	ld   sp, hl                                      ; $4199: $f9
	ld   de, $1311                                   ; $419a: $11 $11 $13
	add  [hl]                                        ; $419d: $86
	rst  $38                                         ; $419e: $ff
	rst  $38                                         ; $419f: $ff
	rst  $38                                         ; $41a0: $ff
	call nz, $8e35                                   ; $41a1: $c4 $35 $8e
	rst  $38                                         ; $41a4: $ff
	pop  de                                          ; $41a5: $d1
	ld   de, $1711                                   ; $41a6: $11 $11 $17
	ld   l, c                                        ; $41a9: $69
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	ld   [hl], d                                     ; $41ad: $72
	scf                                              ; $41ae: $37
	cp   a                                           ; $41af: $bf
	rst  $38                                         ; $41b0: $ff
	ld   h, c                                        ; $41b1: $61
	ld   de, $1811                                   ; $41b2: $11 $11 $18
	adc  a                                           ; $41b5: $8f
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff
	ld   a, [$7a34]                                  ; $41b8: $fa $34 $7a
	rst  $28                                         ; $41bb: $ef
	rst  $38                                         ; $41bc: $ff
	ld   hl, $1111                                   ; $41bd: $21 $11 $11
	ld   d, [hl]                                     ; $41c0: $56
	adc  a                                           ; $41c1: $8f
	rst  $38                                         ; $41c2: $ff
	rst  $38                                         ; $41c3: $ff
	ld   hl, sp+$33                                  ; $41c4: $f8 $33
	ld   a, l                                        ; $41c6: $7d
	rst  $38                                         ; $41c7: $ff
	ei                                               ; $41c8: $fb
	ld   de, $1111                                   ; $41c9: $11 $11 $11
	halt                                             ; $41cc: $76
	sbc  a                                           ; $41cd: $9f
	rst  $38                                         ; $41ce: $ff
	rst  $38                                         ; $41cf: $ff
	ld   hl, sp+$55                                  ; $41d0: $f8 $55
	ld   l, h                                        ; $41d2: $6c
	rst  $38                                         ; $41d3: $ff
	ei                                               ; $41d4: $fb
	ld   de, $1111                                   ; $41d5: $11 $11 $11
	ld   b, l                                        ; $41d8: $45
	adc  a                                           ; $41d9: $8f
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	ei                                               ; $41dc: $fb
	ld   h, e                                        ; $41dd: $63
	ld   l, e                                        ; $41de: $6b
	rst  $38                                         ; $41df: $ff
	db   $fc                                         ; $41e0: $fc
	ld   sp, $1111                                   ; $41e1: $31 $11 $11
	dec  h                                           ; $41e4: $25
	ld   e, a                                        ; $41e5: $5f
	rst  $38                                         ; $41e6: $ff
	rst  $38                                         ; $41e7: $ff
	rst  $38                                         ; $41e8: $ff
	and  h                                           ; $41e9: $a4
	ld   c, c                                        ; $41ea: $49
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	ld   [hl], c                                     ; $41ed: $71
	ld   de, $1411                                   ; $41ee: $11 $11 $14
	ld   e, d                                        ; $41f1: $5a
	rst  $38                                         ; $41f2: $ff
	rst  $38                                         ; $41f3: $ff
	rst  $38                                         ; $41f4: $ff
	rst  $30                                         ; $41f5: $f7
	ld   d, a                                        ; $41f6: $57
	cp   a                                           ; $41f7: $bf
	rst  $38                                         ; $41f8: $ff
	call nz, $1111                                   ; $41f9: $c4 $11 $11
	ld   de, $df33                                   ; $41fc: $11 $33 $df
	rst  $38                                         ; $41ff: $ff
	rst  $38                                         ; $4200: $ff
	cp   $86                                         ; $4201: $fe $86
	adc  l                                           ; $4203: $8d
	rst  $38                                         ; $4204: $ff
	db   $fc                                         ; $4205: $fc
	ld   b, c                                        ; $4206: $41
	ld   de, $1111                                   ; $4207: $11 $11 $11
	dec  hl                                          ; $420a: $2b
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	rst  $38                                         ; $420d: $ff
	ld   a, [$de89]                                  ; $420e: $fa $89 $de
	xor  $c7                                         ; $4211: $ee $c7
	ld   de, $1111                                   ; $4213: $11 $11 $11
	inc  de                                          ; $4216: $13
	ld   c, [hl]                                     ; $4217: $4e
	rst  $38                                         ; $4218: $ff
	rst  $38                                         ; $4219: $ff
	rst  $38                                         ; $421a: $ff
	ld   a, [$cdbb]                                  ; $421b: $fa $bb $cd
	call z, $11b6                                    ; $421e: $cc $b6 $11
	ld   de, $1111                                   ; $4221: $11 $11 $11
	ld   c, [hl]                                     ; $4224: $4e
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	db   $fc                                         ; $4228: $fc
	res  7, d                                        ; $4229: $cb $ba
	sbc  l                                           ; $422b: $9d
	add  sp, $11                                     ; $422c: $e8 $11
	ld   de, $1111                                   ; $422e: $11 $11 $11
	add  hl, hl                                      ; $4231: $29
	rst  $38                                         ; $4232: $ff
	rst  $38                                         ; $4233: $ff
	rst  $38                                         ; $4234: $ff
	cp   $dc                                         ; $4235: $fe $dc
	xor  c                                           ; $4237: $a9
	xor  a                                           ; $4238: $af
	db   $fd                                         ; $4239: $fd
	ld   d, c                                        ; $423a: $51
	ld   de, $1111                                   ; $423b: $11 $11 $11
	ld   de, $ff7c                                   ; $423e: $11 $7c $ff
	rst  $38                                         ; $4241: $ff
	rst  $38                                         ; $4242: $ff
	cp   $ed                                         ; $4243: $fe $ed
	db   $dd                                         ; $4245: $dd
	rst  $38                                         ; $4246: $ff
	add  $11                                         ; $4247: $c6 $11
	ld   de, $1111                                   ; $4249: $11 $11 $11
	inc  d                                           ; $424c: $14
	sbc  [hl]                                        ; $424d: $9e
	rst  $38                                         ; $424e: $ff
	rst  $38                                         ; $424f: $ff
	rst  $38                                         ; $4250: $ff
	rst  $38                                         ; $4251: $ff
	rst  $38                                         ; $4252: $ff
	db   $dd                                         ; $4253: $dd
	db   $eb                                         ; $4254: $eb
	sub  d                                           ; $4255: $92
	ld   de, $1111                                   ; $4256: $11 $11 $11
	ld   de, $7c13                                   ; $4259: $11 $13 $7c
	rst  $38                                         ; $425c: $ff
	rst  $38                                         ; $425d: $ff
	rst  $38                                         ; $425e: $ff
	rst  $38                                         ; $425f: $ff
	cp   $ee                                         ; $4260: $fe $ee
	db   $db                                         ; $4262: $db
	ld   [hl], d                                     ; $4263: $72
	ld   de, $1111                                   ; $4264: $11 $11 $11
	ld   de, $5a11                                   ; $4267: $11 $11 $5a
	rst  JumpTable                                         ; $426a: $df
	rst  $38                                         ; $426b: $ff
	rst  $38                                         ; $426c: $ff
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	cp   $ca                                         ; $426f: $fe $ca
	add  h                                           ; $4271: $84
	ld   de, $1111                                   ; $4272: $11 $11 $11
	ld   de, $0311                                   ; $4275: $11 $11 $03
	ld   e, c                                        ; $4278: $59
	cp   [hl]                                        ; $4279: $be
	rst  $38                                         ; $427a: $ff
	rst  $38                                         ; $427b: $ff
	rst  $38                                         ; $427c: $ff
	rst  $38                                         ; $427d: $ff
	call c, $86ba                                    ; $427e: $dc $ba $86
	ld   d, e                                        ; $4281: $53
	ld   hl, $1111                                   ; $4282: $21 $11 $11
	ld   de, $3412                                   ; $4285: $11 $12 $34
	ld   d, a                                        ; $4288: $57
	sbc  d                                           ; $4289: $9a
	call $ffde                                       ; $428a: $cd $de $ff
	cp   $ee                                         ; $428d: $fe $ee
	db   $ed                                         ; $428f: $ed
	db   $dd                                         ; $4290: $dd
	res  7, e                                        ; $4291: $cb $bb
	xor  b                                           ; $4293: $a8
	ld   h, h                                        ; $4294: $64
	ld   sp, $1111                                   ; $4295: $31 $11 $11
	ld   de, $1311                                   ; $4298: $11 $11 $13
	ld   d, a                                        ; $429b: $57
	adc  e                                           ; $429c: $8b
	rst  JumpTable                                         ; $429d: $df
	rst  $38                                         ; $429e: $ff
	rst  $38                                         ; $429f: $ff
	rst  $38                                         ; $42a0: $ff
	rst  $38                                         ; $42a1: $ff
	db   $fd                                         ; $42a2: $fd
	cp   d                                           ; $42a3: $ba
	xor  b                                           ; $42a4: $a8
	ld   h, h                                        ; $42a5: $64
	ld   hl, $1111                                   ; $42a6: $21 $11 $11
	ld   de, $1211                                   ; $42a9: $11 $11 $12
	ld   b, a                                        ; $42ac: $47
	sbc  e                                           ; $42ad: $9b
	rst  JumpTable                                         ; $42ae: $df
	rst  $38                                         ; $42af: $ff
	rst  $38                                         ; $42b0: $ff
	rst  $38                                         ; $42b1: $ff
	rst  $38                                         ; $42b2: $ff
	rst  $38                                         ; $42b3: $ff
	db   $ed                                         ; $42b4: $ed
	jp   z, Jump_0bb_5396                            ; $42b5: $ca $96 $53

	ld   de, $1111                                   ; $42b8: $11 $11 $11
	ld   de, $1211                                   ; $42bb: $11 $11 $12
	ld   b, [hl]                                     ; $42be: $46
	adc  d                                           ; $42bf: $8a
	call $ffff                                       ; $42c0: $cd $ff $ff
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	cp   $dc                                         ; $42c6: $fe $dc
	cp   b                                           ; $42c8: $b8
	ld   [hl], l                                     ; $42c9: $75
	ld   sp, $1111                                   ; $42ca: $31 $11 $11
	ld   de, $1111                                   ; $42cd: $11 $11 $11
	inc  h                                           ; $42d0: $24
	ld   l, b                                        ; $42d1: $68
	cp   [hl]                                        ; $42d2: $be
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	rst  $38                                         ; $42d7: $ff
	cp   $ec                                         ; $42d8: $fe $ec
	cp   b                                           ; $42da: $b8
	ld   [hl], l                                     ; $42db: $75
	ld   sp, $1111                                   ; $42dc: $31 $11 $11
	ld   de, $1111                                   ; $42df: $11 $11 $11
	inc  hl                                          ; $42e2: $23
	ld   d, a                                        ; $42e3: $57
	sbc  e                                           ; $42e4: $9b
	rst  JumpTable                                         ; $42e5: $df
	rst  $38                                         ; $42e6: $ff
	rst  $38                                         ; $42e7: $ff
	rst  $38                                         ; $42e8: $ff
	rst  $38                                         ; $42e9: $ff
	rst  $38                                         ; $42ea: $ff
	db   $ed                                         ; $42eb: $ed
	call c, Call_0bb_76a9                            ; $42ec: $dc $a9 $76
	ld   b, d                                        ; $42ef: $42
	ld   bc, $1111                                   ; $42f0: $01 $11 $11
	ld   de, $1311                                   ; $42f3: $11 $11 $13
	ld   d, a                                        ; $42f6: $57
	sbc  h                                           ; $42f7: $9c
	rst  $28                                         ; $42f8: $ef
	rst  $38                                         ; $42f9: $ff
	rst  $38                                         ; $42fa: $ff
	rst  $38                                         ; $42fb: $ff
	rst  $38                                         ; $42fc: $ff
	rst  $38                                         ; $42fd: $ff
	db   $fd                                         ; $42fe: $fd
	db   $db                                         ; $42ff: $db
	sbc  b                                           ; $4300: $98
	ld   h, l                                        ; $4301: $65
	ld   hl, $1111                                   ; $4302: $21 $11 $11
	ld   de, $1111                                   ; $4305: $11 $11 $11
	inc  h                                           ; $4308: $24
	ld   l, b                                        ; $4309: $68
	xor  h                                           ; $430a: $ac
	rst  $28                                         ; $430b: $ef
	rst  $38                                         ; $430c: $ff
	rst  $38                                         ; $430d: $ff
	rst  $38                                         ; $430e: $ff
	rst  $38                                         ; $430f: $ff
	rst  $38                                         ; $4310: $ff
	db   $ed                                         ; $4311: $ed
	res  2, a                                        ; $4312: $cb $97
	ld   h, h                                        ; $4314: $64
	ld   hl, $1111                                   ; $4315: $21 $11 $11
	ld   de, $1111                                   ; $4318: $11 $11 $11
	dec  [hl]                                        ; $431b: $35
	ld   l, b                                        ; $431c: $68
	xor  l                                           ; $431d: $ad
	rst  $28                                         ; $431e: $ef
	rst  $38                                         ; $431f: $ff
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	rst  $38                                         ; $4322: $ff
	rst  $38                                         ; $4323: $ff
	db   $ed                                         ; $4324: $ed
	res  3, b                                        ; $4325: $cb $98
	ld   h, l                                        ; $4327: $65
	ld   sp, $1111                                   ; $4328: $31 $11 $11
	ld   de, $1111                                   ; $432b: $11 $11 $11
	inc  h                                           ; $432e: $24
	ld   d, a                                        ; $432f: $57
	sbc  h                                           ; $4330: $9c
	rst  $28                                         ; $4331: $ef
	rst  $38                                         ; $4332: $ff
	rst  $38                                         ; $4333: $ff
	rst  $38                                         ; $4334: $ff
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	db   $fd                                         ; $4337: $fd
	db   $db                                         ; $4338: $db
	sbc  c                                           ; $4339: $99
	halt                                             ; $433a: $76
	ld   b, d                                        ; $433b: $42
	ld   de, $1111                                   ; $433c: $11 $11 $11
	ld   de, $1311                                   ; $433f: $11 $11 $13
	ld   d, [hl]                                     ; $4342: $56
	adc  d                                           ; $4343: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4344: $cf
	rst  $38                                         ; $4345: $ff
	rst  $38                                         ; $4346: $ff
	rst  $38                                         ; $4347: $ff
	rst  $38                                         ; $4348: $ff
	rst  $38                                         ; $4349: $ff
	cp   $cb                                         ; $434a: $fe $cb
	xor  b                                           ; $434c: $a8
	halt                                             ; $434d: $76
	ld   b, d                                        ; $434e: $42
	ld   de, $1111                                   ; $434f: $11 $11 $11
	ld   de, $2311                                   ; $4352: $11 $11 $23
	ld   b, [hl]                                     ; $4355: $46
	adc  d                                           ; $4356: $8a
	adc  $ff                                         ; $4357: $ce $ff
	rst  $38                                         ; $4359: $ff
	rst  $38                                         ; $435a: $ff
	rst  $38                                         ; $435b: $ff
	rst  $38                                         ; $435c: $ff
	db   $ed                                         ; $435d: $ed
	db   $db                                         ; $435e: $db
	cp   c                                           ; $435f: $b9
	add  a                                           ; $4360: $87
	ld   h, h                                        ; $4361: $64
	ld   hl, $1111                                   ; $4362: $21 $11 $11
	ld   de, $1211                                   ; $4365: $11 $11 $12
	dec  [hl]                                        ; $4368: $35
	ld   a, c                                        ; $4369: $79
	cp   h                                           ; $436a: $bc
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	cp   $db                                         ; $4370: $fe $db
	xor  d                                           ; $4372: $aa
	add  a                                           ; $4373: $87
	ld   h, h                                        ; $4374: $64
	ld   sp, $1111                                   ; $4375: $31 $11 $11
	ld   de, $1211                                   ; $4378: $11 $11 $12
	dec  [hl]                                        ; $437b: $35
	ld   a, c                                        ; $437c: $79
	cp   l                                           ; $437d: $bd
	rst  $38                                         ; $437e: $ff
	rst  $38                                         ; $437f: $ff
	rst  $38                                         ; $4380: $ff
	rst  $38                                         ; $4381: $ff
	rst  $38                                         ; $4382: $ff
	db   $ed                                         ; $4383: $ed
	res  5, c                                        ; $4384: $cb $a9
	sbc  b                                           ; $4386: $98
	ld   h, l                                        ; $4387: $65
	ld   sp, $1111                                   ; $4388: $31 $11 $11
	ld   de, $1111                                   ; $438b: $11 $11 $11
	inc  [hl]                                        ; $438e: $34
	ld   l, b                                        ; $438f: $68
	xor  h                                           ; $4390: $ac
	rst  $28                                         ; $4391: $ef
	rst  $38                                         ; $4392: $ff
	rst  $38                                         ; $4393: $ff
	rst  $38                                         ; $4394: $ff
	rst  $38                                         ; $4395: $ff
	cp   $dc                                         ; $4396: $fe $dc
	cp   d                                           ; $4398: $ba
	sbc  b                                           ; $4399: $98
	ld   h, l                                        ; $439a: $65
	ld   sp, $1111                                   ; $439b: $31 $11 $11
	ld   de, $1111                                   ; $439e: $11 $11 $11
	inc  [hl]                                        ; $43a1: $34
	ld   l, b                                        ; $43a2: $68
	cp   h                                           ; $43a3: $bc
	rst  JumpTable                                         ; $43a4: $df
	rst  $38                                         ; $43a5: $ff
	rst  $38                                         ; $43a6: $ff
	rst  $38                                         ; $43a7: $ff
	rst  $38                                         ; $43a8: $ff
	cp   $dd                                         ; $43a9: $fe $dd
	res  5, b                                        ; $43ab: $cb $a8
	ld   [hl], l                                     ; $43ad: $75
	ld   b, c                                        ; $43ae: $41
	ld   de, $1111                                   ; $43af: $11 $11 $11
	ld   de, $2411                                   ; $43b2: $11 $11 $24
	ld   e, b                                        ; $43b5: $58
	xor  e                                           ; $43b6: $ab
	rst  JumpTable                                         ; $43b7: $df
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	rst  $38                                         ; $43bb: $ff
	rst  $38                                         ; $43bc: $ff
	db   $ec                                         ; $43bd: $ec
	cp   d                                           ; $43be: $ba
	xor  b                                           ; $43bf: $a8
	ld   [hl], l                                     ; $43c0: $75
	ld   b, c                                        ; $43c1: $41
	ld   de, $1111                                   ; $43c2: $11 $11 $11
	ld   de, $2411                                   ; $43c5: $11 $11 $24
	ld   d, a                                        ; $43c8: $57
	cp   h                                           ; $43c9: $bc
	rst  $28                                         ; $43ca: $ef
	rst  $38                                         ; $43cb: $ff
	rst  $38                                         ; $43cc: $ff
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	cp   $dd                                         ; $43cf: $fe $dd
	jp   z, Jump_0bb_75aa                            ; $43d1: $ca $aa $75

	ld   b, d                                        ; $43d4: $42
	ld   de, $1111                                   ; $43d5: $11 $11 $11
	ld   de, $1311                                   ; $43d8: $11 $11 $13
	ld   d, [hl]                                     ; $43db: $56
	sbc  e                                           ; $43dc: $9b
	sbc  $ff                                         ; $43dd: $de $ff
	rst  $38                                         ; $43df: $ff
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	db   $ed                                         ; $43e3: $ed
	call z, $86b9                                    ; $43e4: $cc $b9 $86
	ld   b, e                                        ; $43e7: $43
	ld   de, $1111                                   ; $43e8: $11 $11 $11
	ld   de, $0211                                   ; $43eb: $11 $11 $02
	ld   b, l                                        ; $43ee: $45
	adc  e                                           ; $43ef: $8b
	rst  JumpTable                                         ; $43f0: $df
	rst  $38                                         ; $43f1: $ff
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	rst  $38                                         ; $43f4: $ff
	rst  $38                                         ; $43f5: $ff
	db   $fd                                         ; $43f6: $fd
	call c, $a8ba                                    ; $43f7: $dc $ba $a8
	ld   d, e                                        ; $43fa: $53
	ld   hl, $1111                                   ; $43fb: $21 $11 $11
	ld   de, $1111                                   ; $43fe: $11 $11 $11
	dec  [hl]                                        ; $4401: $35
	ld   l, d                                        ; $4402: $6a
	call $ffff                                       ; $4403: $cd $ff $ff
	rst  $38                                         ; $4406: $ff
	rst  $38                                         ; $4407: $ff
	rst  $38                                         ; $4408: $ff
	cp   $dd                                         ; $4409: $fe $dd
	res  7, c                                        ; $440b: $cb $b9
	ld   [hl], l                                     ; $440d: $75
	ld   sp, $1111                                   ; $440e: $31 $11 $11
	ld   de, $1111                                   ; $4411: $11 $11 $11
	inc  hl                                          ; $4414: $23
	ld   d, a                                        ; $4415: $57
	xor  h                                           ; $4416: $ac
	rst  JumpTable                                         ; $4417: $df
	rst  $38                                         ; $4418: $ff
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	rst  $38                                         ; $441b: $ff
	rst  $38                                         ; $441c: $ff
	xor  $cc                                         ; $441d: $ee $cc
	cp   e                                           ; $441f: $bb
	sub  a                                           ; $4420: $97
	ld   d, d                                        ; $4421: $52
	ld   de, $1111                                   ; $4422: $11 $11 $11
	ld   de, $1211                                   ; $4425: $11 $11 $12
	ld   b, [hl]                                     ; $4428: $46
	sbc  e                                           ; $4429: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $442a: $cf
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	rst  $38                                         ; $4430: $ff
	db   $dd                                         ; $4431: $dd
	db   $db                                         ; $4432: $db
	xor  c                                           ; $4433: $a9
	ld   [hl], l                                     ; $4434: $75
	ld   de, $1111                                   ; $4435: $11 $11 $11
	ld   de, $1111                                   ; $4438: $11 $11 $11
	dec  h                                           ; $443b: $25
	ld   a, c                                        ; $443c: $79
	cp   l                                           ; $443d: $bd
	rst  $28                                         ; $443e: $ef
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	rst  $38                                         ; $4442: $ff
	rst  $38                                         ; $4443: $ff
	db   $fd                                         ; $4444: $fd
	call z, $97cb                                    ; $4445: $cc $cb $97
	ld   b, c                                        ; $4448: $41
	ld   de, $1111                                   ; $4449: $11 $11 $11
	ld   de, $1211                                   ; $444c: $11 $11 $12
	ld   e, b                                        ; $444f: $58
	sbc  d                                           ; $4450: $9a
	sbc  $ff                                         ; $4451: $de $ff
	rst  $38                                         ; $4453: $ff
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	cp   $ef                                         ; $4456: $fe $ef
	call c, $b9dc                                    ; $4458: $dc $dc $b9
	ld   [hl], h                                     ; $445b: $74
	ld   de, $1111                                   ; $445c: $11 $11 $11
	ld   de, $1111                                   ; $445f: $11 $11 $11
	ld   [hl], $8a                                   ; $4462: $36 $8a
	cp   [hl]                                        ; $4464: $be
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	rst  $38                                         ; $4468: $ff
	rst  $38                                         ; $4469: $ff
	xor  $ed                                         ; $446a: $ee $ed
	db   $dd                                         ; $446c: $dd
	jp   z, $2196                                    ; $446d: $ca $96 $21

	ld   de, $1111                                   ; $4470: $11 $11 $11
	ld   de, $1411                                   ; $4473: $11 $11 $14
	ld   a, b                                        ; $4476: $78
	xor  h                                           ; $4477: $ac
	rst  $28                                         ; $4478: $ef
	rst  $38                                         ; $4479: $ff
	rst  $38                                         ; $447a: $ff
	rst  $38                                         ; $447b: $ff
	rst  $38                                         ; $447c: $ff
	rst  $38                                         ; $447d: $ff
	xor  $dd                                         ; $447e: $ee $dd
	res  4, a                                        ; $4480: $cb $a7
	ld   b, c                                        ; $4482: $41
	ld   de, $1111                                   ; $4483: $11 $11 $11
	ld   de, $1311                                   ; $4486: $11 $11 $13
	ld   l, b                                        ; $4489: $68
	sbc  e                                           ; $448a: $9b
	sbc  $ff                                         ; $448b: $de $ff
	rst  $38                                         ; $448d: $ff
	rst  $38                                         ; $448e: $ff
	rst  $38                                         ; $448f: $ff
	rst  $38                                         ; $4490: $ff
	db   $ed                                         ; $4491: $ed
	sbc  $cc                                         ; $4492: $de $cc
	cp   c                                           ; $4494: $b9
	ld   h, d                                        ; $4495: $62
	ld   de, $1111                                   ; $4496: $11 $11 $11
	ld   de, $1211                                   ; $4499: $11 $11 $12
	ld   l, b                                        ; $449c: $68
	adc  e                                           ; $449d: $8b
	sbc  $ef                                         ; $449e: $de $ef
	rst  $38                                         ; $44a0: $ff
	rst  $38                                         ; $44a1: $ff
	rst  $38                                         ; $44a2: $ff
	rst  $38                                         ; $44a3: $ff
	db   $fd                                         ; $44a4: $fd
	sbc  $dc                                         ; $44a5: $de $dc
	cp   b                                           ; $44a7: $b8
	ld   h, e                                        ; $44a8: $63
	ld   de, $1111                                   ; $44a9: $11 $11 $11
	ld   de, $1211                                   ; $44ac: $11 $11 $12
	ld   e, b                                        ; $44af: $58
	adc  d                                           ; $44b0: $8a
	db   $dd                                         ; $44b1: $dd
	rst  $38                                         ; $44b2: $ff
	rst  $38                                         ; $44b3: $ff
	rst  $38                                         ; $44b4: $ff
	rst  $38                                         ; $44b5: $ff
	rst  $38                                         ; $44b6: $ff
	xor  $dd                                         ; $44b7: $ee $dd
	db   $ed                                         ; $44b9: $ed
	cp   b                                           ; $44ba: $b8
	ld   h, e                                        ; $44bb: $63
	ld   de, $1111                                   ; $44bc: $11 $11 $11
	ld   de, $1311                                   ; $44bf: $11 $11 $13
	ld   d, a                                        ; $44c2: $57
	sbc  d                                           ; $44c3: $9a
	call $ffef                                       ; $44c4: $cd $ef $ff
	rst  $38                                         ; $44c7: $ff
	rst  $38                                         ; $44c8: $ff
	cp   $ee                                         ; $44c9: $fe $ee
	sbc  $db                                         ; $44cb: $de $db
	cp   c                                           ; $44cd: $b9
	ld   h, e                                        ; $44ce: $63
	ld   de, $1111                                   ; $44cf: $11 $11 $11
	ld   de, $1311                                   ; $44d2: $11 $11 $13
	ld   h, a                                        ; $44d5: $67
	sbc  d                                           ; $44d6: $9a
	cp   h                                           ; $44d7: $bc
	xor  $ee                                         ; $44d8: $ee $ee
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	cp   $fe                                         ; $44dc: $fe $fe
	sbc  $dc                                         ; $44de: $de $dc
	cp   b                                           ; $44e0: $b8
	ld   h, e                                        ; $44e1: $63
	ld   de, $1111                                   ; $44e2: $11 $11 $11
	ld   de, $2411                                   ; $44e5: $11 $11 $24
	ld   h, a                                        ; $44e8: $67
	adc  d                                           ; $44e9: $8a
	cp   h                                           ; $44ea: $bc
	sbc  $de                                         ; $44eb: $de $de
	rst  $38                                         ; $44ed: $ff
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	xor  $ee                                         ; $44f0: $ee $ee
	db   $dd                                         ; $44f2: $dd
	cp   c                                           ; $44f3: $b9
	ld   h, e                                        ; $44f4: $63
	ld   de, $1111                                   ; $44f5: $11 $11 $11
	ld   de, $2311                                   ; $44f8: $11 $11 $23
	ld   d, [hl]                                     ; $44fb: $56
	ld   a, c                                        ; $44fc: $79
	cp   h                                           ; $44fd: $bc
	db   $dd                                         ; $44fe: $dd
	xor  $ff                                         ; $44ff: $ee $ff
	rst  $38                                         ; $4501: $ff
	rst  $38                                         ; $4502: $ff
	rst  $38                                         ; $4503: $ff
	cp   $dc                                         ; $4504: $fe $dc
	and  a                                           ; $4506: $a7
	ld   b, d                                        ; $4507: $42
	ld   de, $1111                                   ; $4508: $11 $11 $11
	ld   de, $2411                                   ; $450b: $11 $11 $24
	ld   d, a                                        ; $450e: $57
	sbc  d                                           ; $450f: $9a
	cp   l                                           ; $4510: $bd
	db   $dd                                         ; $4511: $dd
	rst  $28                                         ; $4512: $ef
	rst  $38                                         ; $4513: $ff
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	rst  $38                                         ; $4516: $ff
	xor  $db                                         ; $4517: $ee $db
	ld   [hl], h                                     ; $4519: $74
	ld   hl, $1111                                   ; $451a: $21 $11 $11
	ld   de, $1211                                   ; $451d: $11 $11 $12
	ld   b, l                                        ; $4520: $45
	ld   a, b                                        ; $4521: $78
	xor  e                                           ; $4522: $ab
	db   $dd                                         ; $4523: $dd
	rst  JumpTable                                         ; $4524: $df
	rst  $38                                         ; $4525: $ff
	rst  $38                                         ; $4526: $ff
	rst  $38                                         ; $4527: $ff
	rst  $38                                         ; $4528: $ff
	cp   $ec                                         ; $4529: $fe $ec
	and  a                                           ; $452b: $a7
	ld   b, c                                        ; $452c: $41
	ld   de, $1111                                   ; $452d: $11 $11 $11
	ld   de, $2411                                   ; $4530: $11 $11 $24
	ld   h, a                                        ; $4533: $67
	sbc  d                                           ; $4534: $9a
	cp   l                                           ; $4535: $bd
	sbc  $ff                                         ; $4536: $de $ff
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	rst  $38                                         ; $453a: $ff
	rst  $38                                         ; $453b: $ff
	db   $ed                                         ; $453c: $ed
	cp   b                                           ; $453d: $b8
	ld   d, d                                        ; $453e: $52
	ld   de, $1111                                   ; $453f: $11 $11 $11
	ld   de, $2311                                   ; $4542: $11 $11 $23
	ld   d, a                                        ; $4545: $57
	sbc  d                                           ; $4546: $9a
	cp   l                                           ; $4547: $bd
	sbc  $ff                                         ; $4548: $de $ff
	rst  $38                                         ; $454a: $ff
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	db   $fd                                         ; $454e: $fd
	ret                                              ; $454f: $c9


	ld   h, e                                        ; $4550: $63
	ld   bc, $1111                                   ; $4551: $01 $11 $11
	ld   de, $1311                                   ; $4554: $11 $11 $13
	ld   d, [hl]                                     ; $4557: $56
	adc  d                                           ; $4558: $8a
	cp   l                                           ; $4559: $bd
	sbc  $ff                                         ; $455a: $de $ff
	rst  $38                                         ; $455c: $ff
	rst  $38                                         ; $455d: $ff
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	db   $ed                                         ; $4560: $ed
	ret  z                                           ; $4561: $c8

	ld   d, e                                        ; $4562: $53
	ld   de, $1111                                   ; $4563: $11 $11 $11
	ld   de, $1311                                   ; $4566: $11 $11 $13
	ld   d, a                                        ; $4569: $57
	adc  d                                           ; $456a: $8a
	call z, $ffef                                    ; $456b: $cc $ef $ff
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	rst  $38                                         ; $4570: $ff
	rst  $38                                         ; $4571: $ff
	db   $ec                                         ; $4572: $ec
	and  a                                           ; $4573: $a7
	ld   b, c                                        ; $4574: $41
	ld   de, $1111                                   ; $4575: $11 $11 $11
	ld   de, $2411                                   ; $4578: $11 $11 $24
	ld   l, b                                        ; $457b: $68
	sbc  e                                           ; $457c: $9b
	sbc  $ff                                         ; $457d: $de $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	rst  $38                                         ; $4582: $ff
	rst  $38                                         ; $4583: $ff
	jp   z, $2184                                    ; $4584: $ca $84 $21

	ld   de, $1111                                   ; $4587: $11 $11 $11
	ld   de, $4512                                   ; $458a: $11 $12 $45
	ld   a, c                                        ; $458d: $79
	cp   l                                           ; $458e: $bd
	rst  $28                                         ; $458f: $ef
	rst  $38                                         ; $4590: $ff
	rst  $38                                         ; $4591: $ff
	rst  $38                                         ; $4592: $ff
	rst  $38                                         ; $4593: $ff
	rst  $38                                         ; $4594: $ff
	db   $ec                                         ; $4595: $ec
	and  a                                           ; $4596: $a7
	ld   b, c                                        ; $4597: $41
	ld   de, $1111                                   ; $4598: $11 $11 $11
	ld   de, $2411                                   ; $459b: $11 $11 $24
	ld   l, b                                        ; $459e: $68
	xor  e                                           ; $459f: $ab
	rst  JumpTable                                         ; $45a0: $df
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	rst  $38                                         ; $45a3: $ff
	rst  $38                                         ; $45a4: $ff
	rst  $38                                         ; $45a5: $ff
	db   $fd                                         ; $45a6: $fd
	cp   c                                           ; $45a7: $b9
	ld   h, e                                        ; $45a8: $63
	ld   de, $1111                                   ; $45a9: $11 $11 $11
	ld   de, $1311                                   ; $45ac: $11 $11 $13
	ld   d, a                                        ; $45af: $57
	adc  d                                           ; $45b0: $8a
	call $ffff                                       ; $45b1: $cd $ff $ff
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	rst  $38                                         ; $45b6: $ff
	rst  $38                                         ; $45b7: $ff
	jp   z, $1163                                    ; $45b8: $ca $63 $11

	ld   de, $1111                                   ; $45bb: $11 $11 $11
	ld   de, $4612                                   ; $45be: $11 $12 $46
	adc  d                                           ; $45c1: $8a
	adc  $ff                                         ; $45c2: $ce $ff
	rst  $38                                         ; $45c4: $ff
	rst  $38                                         ; $45c5: $ff
	rst  $38                                         ; $45c6: $ff
	rst  $38                                         ; $45c7: $ff
	cp   $c9                                         ; $45c8: $fe $c9
	ld   h, e                                        ; $45ca: $63
	ld   de, $1111                                   ; $45cb: $11 $11 $11
	ld   de, $1211                                   ; $45ce: $11 $11 $12
	ld   b, [hl]                                     ; $45d1: $46
	sbc  d                                           ; $45d2: $9a
	adc  $ff                                         ; $45d3: $ce $ff
	rst  $38                                         ; $45d5: $ff
	rst  $38                                         ; $45d6: $ff
	rst  $38                                         ; $45d7: $ff
	rst  $38                                         ; $45d8: $ff
	db   $fd                                         ; $45d9: $fd
	xor  b                                           ; $45da: $a8
	ld   b, d                                        ; $45db: $42
	ld   de, $1111                                   ; $45dc: $11 $11 $11
	ld   de, $1311                                   ; $45df: $11 $11 $13
	ld   d, a                                        ; $45e2: $57
	adc  e                                           ; $45e3: $8b
	sbc  $ff                                         ; $45e4: $de $ff
	rst  $38                                         ; $45e6: $ff
	rst  $38                                         ; $45e7: $ff
	rst  $38                                         ; $45e8: $ff
	rst  $38                                         ; $45e9: $ff
	db   $ec                                         ; $45ea: $ec
	sub  l                                           ; $45eb: $95
	ld   sp, $1111                                   ; $45ec: $31 $11 $11
	ld   de, $1111                                   ; $45ef: $11 $11 $11
	dec  [hl]                                        ; $45f2: $35
	ld   a, c                                        ; $45f3: $79
	xor  l                                           ; $45f4: $ad
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	ret  z                                           ; $45fb: $c8

	ld   d, e                                        ; $45fc: $53
	ld   de, $1111                                   ; $45fd: $11 $11 $11
	ld   de, $1311                                   ; $4600: $11 $11 $13
	ld   d, a                                        ; $4603: $57
	sbc  d                                           ; $4604: $9a
	rst  JumpTable                                         ; $4605: $df
	rst  $38                                         ; $4606: $ff
	rst  $38                                         ; $4607: $ff
	rst  $38                                         ; $4608: $ff
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	db   $db                                         ; $460b: $db
	ld   [hl], h                                     ; $460c: $74
	ld   hl, $1111                                   ; $460d: $21 $11 $11
	ld   de, $1111                                   ; $4610: $11 $11 $11
	ld   b, [hl]                                     ; $4613: $46
	sbc  c                                           ; $4614: $99
	cp   [hl]                                        ; $4615: $be
	rst  $38                                         ; $4616: $ff
	rst  $38                                         ; $4617: $ff
	rst  $38                                         ; $4618: $ff
	rst  $38                                         ; $4619: $ff
	rst  $38                                         ; $461a: $ff
	ret                                              ; $461b: $c9


	ld   h, d                                        ; $461c: $62
	ld   de, $1111                                   ; $461d: $11 $11 $11
	ld   de, $1411                                   ; $4620: $11 $11 $14
	adc  d                                           ; $4623: $8a
	rst  $28                                         ; $4624: $ef
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	rst  $38                                         ; $4627: $ff
	rst  $38                                         ; $4628: $ff
	rst  $38                                         ; $4629: $ff
	sub  e                                           ; $462a: $93
	ld   de, $1111                                   ; $462b: $11 $11 $11
	ld   de, $2611                                   ; $462e: $11 $11 $26
	xor  h                                           ; $4631: $ac
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	rst  $38                                         ; $4636: $ff
	rst  $38                                         ; $4637: $ff
	reti                                             ; $4638: $d9


	ld   sp, $1111                                   ; $4639: $31 $11 $11
	ld   de, $2911                                   ; $463c: $11 $11 $29
	rst  $38                                         ; $463f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4640: $cf
	rst  $38                                         ; $4641: $ff
	rst  $38                                         ; $4642: $ff
	rst  $38                                         ; $4643: $ff
	rst  $38                                         ; $4644: $ff
	cp   $ff                                         ; $4645: $fe $ff
	add  c                                           ; $4647: $81
	ld   de, $1111                                   ; $4648: $11 $11 $11
	ld   de, $ff17                                   ; $464b: $11 $17 $ff
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	rst  $38                                         ; $4652: $ff
	xor  $ff                                         ; $4653: $ee $ff
	and  $11                                         ; $4655: $e6 $11
	ld   de, $1111                                   ; $4657: $11 $11 $11
	inc  de                                          ; $465a: $13
	rst  $28                                         ; $465b: $ef
	rst  $38                                         ; $465c: $ff
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	cp   $ff                                         ; $465f: $fe $ff
	db   $fd                                         ; $4661: $fd
	cp   $eb                                         ; $4662: $fe $eb
	ld   sp, $1111                                   ; $4664: $31 $11 $11
	ld   de, $df13                                   ; $4667: $11 $13 $df
	rst  $38                                         ; $466a: $ff
	rst  JumpTable                                         ; $466b: $df
	rst  $38                                         ; $466c: $ff
	cp   $de                                         ; $466d: $fe $de
	rst  $38                                         ; $466f: $ff
	rst  $38                                         ; $4670: $ff
	call z, $1151                                    ; $4671: $cc $51 $11
	ld   de, $1422                                   ; $4674: $11 $22 $14
	rst  $28                                         ; $4677: $ef
	rst  $38                                         ; $4678: $ff
	rst  JumpTable                                         ; $4679: $df
	rst  $38                                         ; $467a: $ff
	rst  $38                                         ; $467b: $ff
	call z, $ffff                                    ; $467c: $cc $ff $ff
	cp   d                                           ; $467f: $ba
	ld   b, c                                        ; $4680: $41
	ld   de, $7511                                   ; $4681: $11 $11 $75
	ld   h, $ff                                      ; $4684: $26 $ff
	rst  $38                                         ; $4686: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4687: $cf
	rst  $38                                         ; $4688: $ff
	rst  $38                                         ; $4689: $ff
	sbc  h                                           ; $468a: $9c
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	sbc  b                                           ; $468d: $98
	ld   sp, $1111                                   ; $468e: $31 $11 $11
	cp   b                                           ; $4691: $b8
	ld   l, c                                        ; $4692: $69
	rst  $38                                         ; $4693: $ff

Call_0bb_4694:
	rst  $38                                         ; $4694: $ff
	cp   e                                           ; $4695: $bb
	rst  $38                                         ; $4696: $ff
	rst  $38                                         ; $4697: $ff
	ld   a, d                                        ; $4698: $7a
	rst  $38                                         ; $4699: $ff
	db   $fd                                         ; $469a: $fd
	ld   d, h                                        ; $469b: $54
	ld   de, $1411                                   ; $469c: $11 $11 $14
	ei                                               ; $469f: $fb
	db   $eb                                         ; $46a0: $eb
	rst  $38                                         ; $46a1: $ff
	cp   $97                                         ; $46a2: $fe $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46a4: $cf
	ei                                               ; $46a5: $fb
	ld   e, d                                        ; $46a6: $5a
	rst  $38                                         ; $46a7: $ff
	ld   sp, hl                                      ; $46a8: $f9
	ld   de, $1111                                   ; $46a9: $11 $11 $11
	dec  e                                           ; $46ac: $1d
	rst  $38                                         ; $46ad: $ff
	db   $fc                                         ; $46ae: $fc
	rst  $38                                         ; $46af: $ff
	cp   $74                                         ; $46b0: $fe $74
	rst  $38                                         ; $46b2: $ff
	ei                                               ; $46b3: $fb
	xor  e                                           ; $46b4: $ab
	rst  $38                                         ; $46b5: $ff
	push af                                          ; $46b6: $f5
	ld   de, $1111                                   ; $46b7: $11 $11 $11
	adc  a                                           ; $46ba: $8f
	rst  $38                                         ; $46bb: $ff
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	rst  ToBoot                                         ; $46be: $c7
	add  hl, sp                                      ; $46bf: $39
	rst  $38                                         ; $46c0: $ff
	call c, $ffff                                    ; $46c1: $dc $ff $ff
	or   c                                           ; $46c4: $b1
	ld   de, $1311                                   ; $46c5: $11 $11 $13
	rst  $38                                         ; $46c8: $ff
	rst  $38                                         ; $46c9: $ff
	rst  $38                                         ; $46ca: $ff
	db   $fc                                         ; $46cb: $fc
	ld   b, d                                        ; $46cc: $42
	ld   e, a                                        ; $46cd: $5f
	rst  $38                                         ; $46ce: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46cf: $cf
	rst  $38                                         ; $46d0: $ff
	db   $fd                                         ; $46d1: $fd
	ld   de, $1111                                   ; $46d2: $11 $11 $11
	rra                                              ; $46d5: $1f
	rst  $38                                         ; $46d6: $ff
	rst  $38                                         ; $46d7: $ff
	rst  $38                                         ; $46d8: $ff
	jp   nz, $df12                                   ; $46d9: $c2 $12 $df

	db   $fd                                         ; $46dc: $fd
	rst  $38                                         ; $46dd: $ff
	rst  $38                                         ; $46de: $ff
	pop  af                                          ; $46df: $f1
	ld   de, $1111                                   ; $46e0: $11 $11 $11
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	cp   $31                                         ; $46e6: $fe $31
	inc  e                                           ; $46e8: $1c
	rst  $38                                         ; $46e9: $ff
	rst  $28                                         ; $46ea: $ef
	rst  $38                                         ; $46eb: $ff
	rst  $38                                         ; $46ec: $ff
	ld   de, $1111                                   ; $46ed: $11 $11 $11
	rra                                              ; $46f0: $1f
	rst  $38                                         ; $46f1: $ff
	rst  $38                                         ; $46f2: $ff
	rst  $38                                         ; $46f3: $ff
	db   $e3                                         ; $46f4: $e3
	ld   de, $fe7f                                   ; $46f5: $11 $7f $fe
	rst  $38                                         ; $46f8: $ff
	rst  $38                                         ; $46f9: $ff
	ldh  a, [c]                                      ; $46fa: $f2
	ld   de, $1111                                   ; $46fb: $11 $11 $11
	rst  $38                                         ; $46fe: $ff
	rst  $38                                         ; $46ff: $ff
	rst  $38                                         ; $4700: $ff
	rst  $38                                         ; $4701: $ff
	ld   b, c                                        ; $4702: $41
	inc  d                                           ; $4703: $14
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	rst  $38                                         ; $4707: $ff
	ld   sp, $1111                                   ; $4708: $31 $11 $11
	inc  e                                           ; $470b: $1c
	rst  $38                                         ; $470c: $ff
	rst  $38                                         ; $470d: $ff
	rst  $38                                         ; $470e: $ff
	db   $f4                                         ; $470f: $f4
	ld   de, $cd4f                                   ; $4710: $11 $4f $cd
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	push af                                          ; $4715: $f5
	ld   de, $1111                                   ; $4716: $11 $11 $11
	cp   a                                           ; $4719: $bf
	rst  $38                                         ; $471a: $ff
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	ld   [hl], c                                     ; $471d: $71
	inc  de                                          ; $471e: $13
	add  sp, -$52                                    ; $471f: $e8 $ae
	rst  $38                                         ; $4721: $ff
	rst  $38                                         ; $4722: $ff
	ld   d, c                                        ; $4723: $51
	ld   de, $1911                                   ; $4724: $11 $11 $19
	rst  $38                                         ; $4727: $ff
	rst  $38                                         ; $4728: $ff
	rst  $38                                         ; $4729: $ff
	ld   a, [$5d31]                                  ; $472a: $fa $31 $5d
	ld   h, a                                        ; $472d: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $472e: $cf
	rst  $38                                         ; $472f: $ff
	db   $f4                                         ; $4730: $f4
	ld   de, $1111                                   ; $4731: $11 $11 $11
	xor  a                                           ; $4734: $af
	rst  $38                                         ; $4735: $ff
	rst  $38                                         ; $4736: $ff
	rst  $38                                         ; $4737: $ff
	or   e                                           ; $4738: $b3
	dec  de                                          ; $4739: $1b
	sub  h                                           ; $473a: $94
	ld   e, c                                        ; $473b: $59
	rst  $38                                         ; $473c: $ff
	rst  $38                                         ; $473d: $ff
	ld   de, $1111                                   ; $473e: $11 $11 $11
	add  hl, hl                                      ; $4741: $29
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	ld   a, [$d659]                                  ; $4745: $fa $59 $d6
	inc  [hl]                                        ; $4748: $34
	sbc  a                                           ; $4749: $9f
	rst  $38                                         ; $474a: $ff
	and  c                                           ; $474b: $a1
	ld   de, $1611                                   ; $474c: $11 $11 $16
	cp   a                                           ; $474f: $bf
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	rst  $38                                         ; $4752: $ff
	sbc  c                                           ; $4753: $99
	ld   a, [$4e22]                                  ; $4754: $fa $22 $4e
	rst  $38                                         ; $4757: $ff
	di                                               ; $4758: $f3
	ld   de, $1211                                   ; $4759: $11 $11 $12
	ld   a, [hl]                                     ; $475c: $7e
	rst  $38                                         ; $475d: $ff
	rst  $38                                         ; $475e: $ff
	rst  $38                                         ; $475f: $ff
	ret  c                                           ; $4760: $d8

	rst  $28                                         ; $4761: $ef
	ld   h, d                                        ; $4762: $62
	daa                                              ; $4763: $27
	rst  $38                                         ; $4764: $ff
	ld   sp, hl                                      ; $4765: $f9
	ld   de, $1111                                   ; $4766: $11 $11 $11
	ld   l, b                                        ; $4769: $68
	rst  $38                                         ; $476a: $ff
	rst  $38                                         ; $476b: $ff
	rst  $38                                         ; $476c: $ff
	db   $fc                                         ; $476d: $fc
	rst  $28                                         ; $476e: $ef
	and  d                                           ; $476f: $a2
	ld   h, $ef                                      ; $4770: $26 $ef
	db   $fc                                         ; $4772: $fc
	ld   de, $1111                                   ; $4773: $11 $11 $11
	daa                                              ; $4776: $27
	rst  $28                                         ; $4777: $ef
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	rst  $38                                         ; $477a: $ff
	rst  JumpTable                                         ; $477b: $df
	db   $e4                                         ; $477c: $e4
	inc  hl                                          ; $477d: $23
	sbc  a                                           ; $477e: $9f
	rst  $38                                         ; $477f: $ff
	ld   d, c                                        ; $4780: $51
	ld   de, $1611                                   ; $4781: $11 $11 $16
	sbc  a                                           ; $4784: $9f
	rst  $38                                         ; $4785: $ff
	rst  $38                                         ; $4786: $ff
	rst  $38                                         ; $4787: $ff
	rst  $38                                         ; $4788: $ff
	ld   hl, sp+$22                                  ; $4789: $f8 $22
	ld   l, a                                        ; $478b: $6f
	rst  $38                                         ; $478c: $ff
	ld   [hl], c                                     ; $478d: $71
	ld   de, $1511                                   ; $478e: $11 $11 $15
	ld   a, a                                        ; $4791: $7f
	rst  $38                                         ; $4792: $ff
	rst  $38                                         ; $4793: $ff
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	db   $fd                                         ; $4796: $fd
	ld   b, e                                        ; $4797: $43
	ld   e, h                                        ; $4798: $5c
	rst  $38                                         ; $4799: $ff
	ld   [hl], c                                     ; $479a: $71
	ld   de, $1411                                   ; $479b: $11 $11 $14
	ld   a, h                                        ; $479e: $7c
	rst  $38                                         ; $479f: $ff
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	add  h                                           ; $47a4: $84
	ld   c, e                                        ; $47a5: $4b
	rst  $38                                         ; $47a6: $ff
	sub  c                                           ; $47a7: $91
	ld   de, $1311                                   ; $47a8: $11 $11 $13
	ld   l, c                                        ; $47ab: $69
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	rst  $38                                         ; $47b0: $ff
	and  l                                           ; $47b1: $a5
	ld   e, b                                        ; $47b2: $58
	cp   $71                                         ; $47b3: $fe $71
	ld   de, $1111                                   ; $47b5: $11 $11 $11
	ld   h, a                                        ; $47b8: $67
	rst  JumpTable                                         ; $47b9: $df
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	rst  $38                                         ; $47bd: $ff
	add  sp, $57                                     ; $47be: $e8 $57
	xor  $61                                         ; $47c0: $ee $61
	ld   de, $1111                                   ; $47c2: $11 $11 $11
	ld   d, l                                        ; $47c5: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47c6: $cf
	rst  $38                                         ; $47c7: $ff
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	ld   sp, hl                                      ; $47cb: $f9
	ld   [hl], a                                     ; $47cc: $77
	db   $dd                                         ; $47cd: $dd
	ld   b, c                                        ; $47ce: $41
	ld   de, $1111                                   ; $47cf: $11 $11 $11
	ld   d, h                                        ; $47d2: $54
	xor  a                                           ; $47d3: $af
	rst  $38                                         ; $47d4: $ff
	rst  $38                                         ; $47d5: $ff
	rst  $38                                         ; $47d6: $ff
	rst  $38                                         ; $47d7: $ff
	ei                                               ; $47d8: $fb
	sbc  d                                           ; $47d9: $9a
	call c, $1131                                    ; $47da: $dc $31 $11
	ld   de, $3311                                   ; $47dd: $11 $11 $33
	ld   a, [hl]                                     ; $47e0: $7e
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	rst  $38                                         ; $47e3: $ff
	rst  $38                                         ; $47e4: $ff
	cp   $ad                                         ; $47e5: $fe $ad
	db   $db                                         ; $47e7: $db
	ld   hl, $1111                                   ; $47e8: $21 $11 $11
	ld   de, $3921                                   ; $47eb: $11 $21 $39
	rst  $38                                         ; $47ee: $ff
	rst  $38                                         ; $47ef: $ff
	rst  $38                                         ; $47f0: $ff
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	db   $fd                                         ; $47f3: $fd
	db   $fc                                         ; $47f4: $fc
	ld   hl, $1111                                   ; $47f5: $21 $11 $11
	ld   de, $1401                                   ; $47f8: $11 $01 $14
	xor  a                                           ; $47fb: $af
	rst  $38                                         ; $47fc: $ff
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	call nc, $1111                                   ; $4802: $d4 $11 $11
	ld   de, $1111                                   ; $4805: $11 $11 $11
	ld   de, $9859                                   ; $4808: $11 $59 $98
	adc  $ff                                         ; $480b: $ce $ff
	rst  $38                                         ; $480d: $ff
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	or   l                                           ; $4810: $b5
	ld   d, l                                        ; $4811: $55
	ld   hl, $1111                                   ; $4812: $21 $11 $11
	ld   de, $1311                                   ; $4815: $11 $11 $13
	inc  [hl]                                        ; $4818: $34
	ld   a, c                                        ; $4819: $79
	rst  JumpTable                                         ; $481a: $df
	rst  $38                                         ; $481b: $ff
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	jp   hl                                          ; $481e: $e9


	ld   h, l                                        ; $481f: $65
	and  l                                           ; $4820: $a5
	ld   c, h                                        ; $4821: $4c
	ld   de, $1151                                   ; $4822: $11 $51 $11
	ld   de, $3511                                   ; $4825: $11 $11 $35
	ld   e, d                                        ; $4828: $5a
	rst  $38                                         ; $4829: $ff
	rst  $38                                         ; $482a: $ff
	rst  $38                                         ; $482b: $ff
	rst  $38                                         ; $482c: $ff
	ld   sp, hl                                      ; $482d: $f9
	ld   h, a                                        ; $482e: $67
	ld   d, h                                        ; $482f: $54
	ld   h, c                                        ; $4830: $61
	ld   de, $1111                                   ; $4831: $11 $11 $11
	ld   de, $4634                                   ; $4834: $11 $34 $46
	adc  [hl]                                        ; $4837: $8e
	rst  $38                                         ; $4838: $ff
	rst  $38                                         ; $4839: $ff
	rst  $38                                         ; $483a: $ff
	rst  $38                                         ; $483b: $ff
	jp   c, $2261                                    ; $483c: $da $61 $22

	ld   de, $1111                                   ; $483f: $11 $11 $11
	ld   de, $9615                                   ; $4842: $11 $15 $96
	xor  l                                           ; $4845: $ad
	rst  $38                                         ; $4846: $ff
	rst  $38                                         ; $4847: $ff
	rst  $38                                         ; $4848: $ff
	rst  $38                                         ; $4849: $ff
	db   $fc                                         ; $484a: $fc
	ld   d, h                                        ; $484b: $54
	ld   de, $1111                                   ; $484c: $11 $11 $11
	ld   de, $1b11                                   ; $484f: $11 $11 $1b
	db   $ec                                         ; $4852: $ec
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	rst  $38                                         ; $4855: $ff
	rst  $38                                         ; $4856: $ff
	rst  $38                                         ; $4857: $ff
	or   $11                                         ; $4858: $f6 $11
	ld   de, $1111                                   ; $485a: $11 $11 $11
	ld   de, $df14                                   ; $485d: $11 $14 $df
	rst  $38                                         ; $4860: $ff
	rst  $38                                         ; $4861: $ff
	rst  $38                                         ; $4862: $ff
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	db   $fd                                         ; $4865: $fd
	ld   de, $1111                                   ; $4866: $11 $11 $11
	ld   de, $1211                                   ; $4869: $11 $11 $12
	rst  $28                                         ; $486c: $ef
	rst  $38                                         ; $486d: $ff
	rst  $38                                         ; $486e: $ff
	rst  $38                                         ; $486f: $ff
	rst  $38                                         ; $4870: $ff
	rst  $38                                         ; $4871: $ff
	rst  $38                                         ; $4872: $ff
	ld   h, c                                        ; $4873: $61
	ld   de, $1111                                   ; $4874: $11 $11 $11
	ld   de, $8f11                                   ; $4877: $11 $11 $8f
	rst  $38                                         ; $487a: $ff
	rst  $38                                         ; $487b: $ff
	rst  $38                                         ; $487c: $ff
	rst  $38                                         ; $487d: $ff
	rst  $38                                         ; $487e: $ff
	rst  $38                                         ; $487f: $ff
	sub  c                                           ; $4880: $91
	ld   de, $1111                                   ; $4881: $11 $11 $11
	ld   de, $5f11                                   ; $4884: $11 $11 $5f
	rst  $38                                         ; $4887: $ff
	rst  $38                                         ; $4888: $ff
	rst  $38                                         ; $4889: $ff
	rst  $38                                         ; $488a: $ff
	rst  $38                                         ; $488b: $ff
	rst  $38                                         ; $488c: $ff
	or   c                                           ; $488d: $b1
	ld   de, $1111                                   ; $488e: $11 $11 $11
	ld   de, $1f11                                   ; $4891: $11 $11 $1f
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	rst  $38                                         ; $4898: $ff
	rst  $38                                         ; $4899: $ff
	pop  de                                          ; $489a: $d1
	ld   de, $1111                                   ; $489b: $11 $11 $11
	ld   de, $1c11                                   ; $489e: $11 $11 $1c
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	rst  $38                                         ; $48a3: $ff
	rst  $38                                         ; $48a4: $ff
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	ldh  a, [c]                                      ; $48a7: $f2
	ld   de, $1111                                   ; $48a8: $11 $11 $11
	ld   de, $1b11                                   ; $48ab: $11 $11 $1b
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	rst  $38                                         ; $48b0: $ff
	rst  $38                                         ; $48b1: $ff
	rst  $38                                         ; $48b2: $ff
	rst  $38                                         ; $48b3: $ff
	pop  af                                          ; $48b4: $f1
	ld   de, $1111                                   ; $48b5: $11 $11 $11
	ld   de, $1b11                                   ; $48b8: $11 $11 $1b
	rst  $38                                         ; $48bb: $ff
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	rst  $38                                         ; $48c0: $ff
	pop  hl                                          ; $48c1: $e1
	ld   de, $1111                                   ; $48c2: $11 $11 $11
	ld   de, $1c11                                   ; $48c5: $11 $11 $1c
	rst  $38                                         ; $48c8: $ff
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	rst  $38                                         ; $48cb: $ff
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	pop  de                                          ; $48ce: $d1
	ld   de, $1111                                   ; $48cf: $11 $11 $11
	ld   de, $1f11                                   ; $48d2: $11 $11 $1f
	rst  $38                                         ; $48d5: $ff
	rst  $38                                         ; $48d6: $ff
	rst  $38                                         ; $48d7: $ff
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	and  c                                           ; $48db: $a1
	ld   de, $1111                                   ; $48dc: $11 $11 $11
	ld   de, $3f11                                   ; $48df: $11 $11 $3f
	rst  $38                                         ; $48e2: $ff
	rst  $38                                         ; $48e3: $ff
	rst  $38                                         ; $48e4: $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	rst  $38                                         ; $48e7: $ff
	ld   d, c                                        ; $48e8: $51
	ld   de, $1111                                   ; $48e9: $11 $11 $11
	ld   de, $8f11                                   ; $48ec: $11 $11 $8f
	rst  $38                                         ; $48ef: $ff
	rst  $38                                         ; $48f0: $ff
	rst  $38                                         ; $48f1: $ff
	rst  $38                                         ; $48f2: $ff
	rst  $38                                         ; $48f3: $ff
	cp   $11                                         ; $48f4: $fe $11
	ld   de, $1111                                   ; $48f6: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $48f9: $11 $11 $ff
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	ld   sp, hl                                      ; $4901: $f9
	ld   de, $1111                                   ; $4902: $11 $11 $11
	ld   de, $1211                                   ; $4905: $11 $11 $12
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	rst  $38                                         ; $490a: $ff
	rst  $38                                         ; $490b: $ff
	db   $fd                                         ; $490c: $fd
	rst  $38                                         ; $490d: $ff
	pop  af                                          ; $490e: $f1
	ld   de, $1111                                   ; $490f: $11 $11 $11
	ld   de, $1c11                                   ; $4912: $11 $11 $1c
	rst  $38                                         ; $4915: $ff
	rst  $38                                         ; $4916: $ff
	rst  $38                                         ; $4917: $ff
	rst  $38                                         ; $4918: $ff
	xor  $ff                                         ; $4919: $ee $ff
	and  c                                           ; $491b: $a1
	ld   de, $1111                                   ; $491c: $11 $11 $11
	ld   de, $1f11                                   ; $491f: $11 $11 $1f
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4926: $cf
	rst  $38                                         ; $4927: $ff
	ld   hl, $1111                                   ; $4928: $21 $11 $11
	ld   de, $1111                                   ; $492b: $11 $11 $11
	sbc  a                                           ; $492e: $9f
	rst  $38                                         ; $492f: $ff
	rst  $38                                         ; $4930: $ff
	rst  $38                                         ; $4931: $ff
	cp   $df                                         ; $4932: $fe $df
	db   $fd                                         ; $4934: $fd
	ld   de, $1111                                   ; $4935: $11 $11 $11
	ld   de, $1111                                   ; $4938: $11 $11 $11
	rst  $38                                         ; $493b: $ff
	rst  $38                                         ; $493c: $ff
	rst  $38                                         ; $493d: $ff
	rst  $38                                         ; $493e: $ff
	db   $fd                                         ; $493f: $fd
	rst  $38                                         ; $4940: $ff
	di                                               ; $4941: $f3
	ld   de, $1111                                   ; $4942: $11 $11 $11
	ld   de, $1411                                   ; $4945: $11 $11 $14
	rst  $38                                         ; $4948: $ff
	rst  $38                                         ; $4949: $ff
	rst  $38                                         ; $494a: $ff
	rst  $38                                         ; $494b: $ff
	cp   $ff                                         ; $494c: $fe $ff
	pop  af                                          ; $494e: $f1
	ld   de, $1111                                   ; $494f: $11 $11 $11
	ld   de, $1f11                                   ; $4952: $11 $11 $1f
	rst  $38                                         ; $4955: $ff
	rst  $38                                         ; $4956: $ff
	rst  $38                                         ; $4957: $ff
	rst  $38                                         ; $4958: $ff
	rst  $28                                         ; $4959: $ef
	rst  $38                                         ; $495a: $ff
	ld   h, c                                        ; $495b: $61
	ld   de, $1111                                   ; $495c: $11 $11 $11
	ld   de, $1f11                                   ; $495f: $11 $11 $1f
	rst  $38                                         ; $4962: $ff
	rst  $38                                         ; $4963: $ff
	rst  $38                                         ; $4964: $ff
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	ld   de, $1111                                   ; $4968: $11 $11 $11
	ld   de, $1111                                   ; $496b: $11 $11 $11
	rst  JumpTable                                         ; $496e: $df
	rst  $38                                         ; $496f: $ff
	rst  $38                                         ; $4970: $ff
	rst  $38                                         ; $4971: $ff
	rst  $38                                         ; $4972: $ff
	rst  $38                                         ; $4973: $ff
	rst  $30                                         ; $4974: $f7
	ld   de, $1111                                   ; $4975: $11 $11 $11
	ld   de, $1111                                   ; $4978: $11 $11 $11
	rst  $38                                         ; $497b: $ff
	rst  $38                                         ; $497c: $ff
	rst  $38                                         ; $497d: $ff
	rst  $38                                         ; $497e: $ff
	rst  $38                                         ; $497f: $ff
	rst  $38                                         ; $4980: $ff
	ldh  a, [c]                                      ; $4981: $f2
	ld   [de], a                                     ; $4982: $12
	ld   de, $1111                                   ; $4983: $11 $11 $11
	ld   de, $ff19                                   ; $4986: $11 $19 $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	rst  $38                                         ; $498b: $ff
	rst  $38                                         ; $498c: $ff
	rst  $38                                         ; $498d: $ff
	sub  d                                           ; $498e: $92
	ld   b, e                                        ; $498f: $43
	ld   de, $1111                                   ; $4990: $11 $11 $11
	ld   de, $ff1e                                   ; $4993: $11 $1e $ff
	rst  $38                                         ; $4996: $ff
	rst  $38                                         ; $4997: $ff
	rst  $38                                         ; $4998: $ff
	rst  $38                                         ; $4999: $ff
	rst  $38                                         ; $499a: $ff
	ld   [hl], l                                     ; $499b: $75
	ld   [hl], c                                     ; $499c: $71
	ld   de, $1111                                   ; $499d: $11 $11 $11
	ld   de, $ff5e                                   ; $49a0: $11 $5e $ff
	rst  $38                                         ; $49a3: $ff
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	rst  $38                                         ; $49a6: $ff
	db   $fc                                         ; $49a7: $fc
	sbc  e                                           ; $49a8: $9b
	add  c                                           ; $49a9: $81
	ld   de, $1111                                   ; $49aa: $11 $11 $11
	ld   de, $bf59                                   ; $49ad: $11 $59 $bf
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	rst  $38                                         ; $49b2: $ff
	rst  $38                                         ; $49b3: $ff
	db   $fd                                         ; $49b4: $fd
	sbc  $91                                         ; $49b5: $de $91
	ld   de, $1111                                   ; $49b7: $11 $11 $11
	ld   de, $6b25                                   ; $49ba: $11 $25 $6b
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	rst  $38                                         ; $49bf: $ff
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	db   $d3                                         ; $49c3: $d3
	ld   de, $1111                                   ; $49c4: $11 $11 $11
	ld   de, $1611                                   ; $49c7: $11 $11 $16
	rst  $28                                         ; $49ca: $ef
	rst  $38                                         ; $49cb: $ff
	rst  $38                                         ; $49cc: $ff
	rst  $38                                         ; $49cd: $ff
	rst  $38                                         ; $49ce: $ff
	rst  $38                                         ; $49cf: $ff
	ld   sp, hl                                      ; $49d0: $f9
	ld   de, $1111                                   ; $49d1: $11 $11 $11
	ld   de, $1111                                   ; $49d4: $11 $11 $11
	ld   l, l                                        ; $49d7: $6d
	rst  $38                                         ; $49d8: $ff
	rst  $38                                         ; $49d9: $ff
	rst  $38                                         ; $49da: $ff
	rst  $38                                         ; $49db: $ff
	rst  $38                                         ; $49dc: $ff
	cp   $b5                                         ; $49dd: $fe $b5
	ld   de, $1111                                   ; $49df: $11 $11 $11
	ld   de, $1211                                   ; $49e2: $11 $11 $12
	ld   l, d                                        ; $49e5: $6a
	rst  $28                                         ; $49e6: $ef
	rst  $38                                         ; $49e7: $ff
	rst  $38                                         ; $49e8: $ff
	rst  $38                                         ; $49e9: $ff
	rst  $38                                         ; $49ea: $ff
	cp   $b6                                         ; $49eb: $fe $b6
	ld   b, d                                        ; $49ed: $42
	ld   de, $1111                                   ; $49ee: $11 $11 $11
	ld   de, $3512                                   ; $49f1: $11 $12 $35
	ld   a, b                                        ; $49f4: $78
	xor  d                                           ; $49f5: $aa
	cp   l                                           ; $49f6: $bd
	db   $dd                                         ; $49f7: $dd
	call $bbdb                                       ; $49f8: $cd $db $bb
	xor  d                                           ; $49fb: $aa
	sbc  e                                           ; $49fc: $9b
	sbc  b                                           ; $49fd: $98
	adc  e                                           ; $49fe: $8b
	and  [hl]                                        ; $49ff: $a6
	ld   [hl], a                                     ; $4a00: $77
	halt                                             ; $4a01: $76
	ld   d, l                                        ; $4a02: $55
	ld   d, [hl]                                     ; $4a03: $56
	ld   d, h                                        ; $4a04: $54
	ld   b, h                                        ; $4a05: $44
	ld   d, [hl]                                     ; $4a06: $56
	ld   h, l                                        ; $4a07: $65
	ld   h, a                                        ; $4a08: $67
	sbc  c                                           ; $4a09: $99
	xor  d                                           ; $4a0a: $aa
	cp   e                                           ; $4a0b: $bb
	sbc  $de                                         ; $4a0c: $de $de
	xor  $ec                                         ; $4a0e: $ee $ec
	xor  e                                           ; $4a10: $ab
	sub  a                                           ; $4a11: $97
	ld   h, l                                        ; $4a12: $65
	ld   b, e                                        ; $4a13: $43
	ld   [hl+], a                                    ; $4a14: $22
	ld   de, $3423                                   ; $4a15: $11 $23 $34
	ld   d, [hl]                                     ; $4a18: $56
	adc  c                                           ; $4a19: $89
	xor  e                                           ; $4a1a: $ab
	db   $dd                                         ; $4a1b: $dd
	xor  $ee                                         ; $4a1c: $ee $ee
	call c, $bacb                                    ; $4a1e: $dc $cb $ba
	sub  [hl]                                        ; $4a21: $96
	ld   d, h                                        ; $4a22: $54
	ld   b, h                                        ; $4a23: $44
	inc  sp                                          ; $4a24: $33
	ld   b, h                                        ; $4a25: $44
	ld   b, l                                        ; $4a26: $45
	ld   h, [hl]                                     ; $4a27: $66
	ld   a, c                                        ; $4a28: $79
	xor  d                                           ; $4a29: $aa
	xor  e                                           ; $4a2a: $ab
	xor  e                                           ; $4a2b: $ab
	xor  d                                           ; $4a2c: $aa
	xor  d                                           ; $4a2d: $aa
	sbc  c                                           ; $4a2e: $99
	sbc  c                                           ; $4a2f: $99
	adc  b                                           ; $4a30: $88
	ld   [hl], a                                     ; $4a31: $77
	ld   [hl], a                                     ; $4a32: $77
	ld   h, a                                        ; $4a33: $67
	ld   [hl], a                                     ; $4a34: $77
	ld   [hl], a                                     ; $4a35: $77
	sbc  b                                           ; $4a36: $98
	sbc  c                                           ; $4a37: $99
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	add  a                                           ; $4a3a: $87
	ld   [hl], a                                     ; $4a3b: $77
	ld   [hl], a                                     ; $4a3c: $77
	ld   [hl], a                                     ; $4a3d: $77
	ld   a, b                                        ; $4a3e: $78
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	sbc  c                                           ; $4a41: $99
	adc  c                                           ; $4a42: $89
	xor  d                                           ; $4a43: $aa
	xor  c                                           ; $4a44: $a9
	adc  b                                           ; $4a45: $88
	sbc  b                                           ; $4a46: $98
	add  a                                           ; $4a47: $87
	ld   [hl], a                                     ; $4a48: $77
	halt                                             ; $4a49: $76
	ld   h, [hl]                                     ; $4a4a: $66
	ld   h, a                                        ; $4a4b: $67
	ld   [hl], a                                     ; $4a4c: $77
	ld   a, b                                        ; $4a4d: $78
	adc  c                                           ; $4a4e: $89
	sbc  d                                           ; $4a4f: $9a
	sbc  c                                           ; $4a50: $99
	sbc  c                                           ; $4a51: $99
	sbc  c                                           ; $4a52: $99
	sbc  b                                           ; $4a53: $98
	adc  b                                           ; $4a54: $88
	add  a                                           ; $4a55: $87
	ld   [hl], a                                     ; $4a56: $77
	ld   h, [hl]                                     ; $4a57: $66
	ld   [hl], a                                     ; $4a58: $77
	ld   [hl], a                                     ; $4a59: $77
	ld   a, b                                        ; $4a5a: $78
	adc  c                                           ; $4a5b: $89
	adc  c                                           ; $4a5c: $89
	sbc  c                                           ; $4a5d: $99
	sbc  c                                           ; $4a5e: $99
	sbc  c                                           ; $4a5f: $99
	sbc  c                                           ; $4a60: $99
	adc  b                                           ; $4a61: $88
	adc  b                                           ; $4a62: $88
	ld   [hl], a                                     ; $4a63: $77
	ld   [hl], a                                     ; $4a64: $77
	ld   [hl], a                                     ; $4a65: $77
	ld   [hl], a                                     ; $4a66: $77
	ld   [hl], a                                     ; $4a67: $77
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	sbc  c                                           ; $4a6a: $99
	adc  c                                           ; $4a6b: $89
	sbc  b                                           ; $4a6c: $98
	adc  b                                           ; $4a6d: $88
	adc  c                                           ; $4a6e: $89
	adc  b                                           ; $4a6f: $88
	add  a                                           ; $4a70: $87
	ld   [hl], a                                     ; $4a71: $77
	ld   [hl], a                                     ; $4a72: $77
	ld   [hl], a                                     ; $4a73: $77
	ld   [hl], a                                     ; $4a74: $77
	adc  b                                           ; $4a75: $88
	adc  c                                           ; $4a76: $89
	sbc  c                                           ; $4a77: $99
	sbc  c                                           ; $4a78: $99
	sbc  c                                           ; $4a79: $99
	adc  b                                           ; $4a7a: $88
	sbc  c                                           ; $4a7b: $99
	sbc  b                                           ; $4a7c: $98
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	add  a                                           ; $4a7f: $87
	ld   [hl], a                                     ; $4a80: $77
	ld   [hl], a                                     ; $4a81: $77
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  b                                           ; $4a85: $88
	adc  b                                           ; $4a86: $88
	adc  c                                           ; $4a87: $89
	sbc  c                                           ; $4a88: $99
	sbc  c                                           ; $4a89: $99
	adc  b                                           ; $4a8a: $88
	sbc  c                                           ; $4a8b: $99
	sbc  b                                           ; $4a8c: $98
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	ld   [hl], a                                     ; $4a91: $77
	ld   [hl], a                                     ; $4a92: $77
	ld   [hl], a                                     ; $4a93: $77
	ld   [hl], a                                     ; $4a94: $77
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  c                                           ; $4a98: $89
	sbc  c                                           ; $4a99: $99
	sbc  c                                           ; $4a9a: $99
	sbc  c                                           ; $4a9b: $99
	sbc  c                                           ; $4a9c: $99
	adc  b                                           ; $4a9d: $88
	add  a                                           ; $4a9e: $87
	ld   [hl], a                                     ; $4a9f: $77
	ld   [hl], a                                     ; $4aa0: $77
	ld   [hl], a                                     ; $4aa1: $77
	ld   [hl], a                                     ; $4aa2: $77
	ld   [hl], a                                     ; $4aa3: $77
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	sbc  c                                           ; $4aa7: $99
	sbc  c                                           ; $4aa8: $99
	sbc  c                                           ; $4aa9: $99
	sbc  b                                           ; $4aaa: $98
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	ld   [hl], a                                     ; $4aad: $77
	ld   [hl], a                                     ; $4aae: $77
	ld   [hl], a                                     ; $4aaf: $77
	ld   [hl], a                                     ; $4ab0: $77
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	ld   [hl], a                                     ; $4aba: $77
	ld   [hl], a                                     ; $4abb: $77
	ld   [hl], a                                     ; $4abc: $77
	ld   [hl], a                                     ; $4abd: $77
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  c                                           ; $4ac1: $89
	adc  b                                           ; $4ac2: $88
	sbc  c                                           ; $4ac3: $99
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	ld   [hl], a                                     ; $4ac7: $77
	ld   [hl], a                                     ; $4ac8: $77
	ld   [hl], a                                     ; $4ac9: $77
	ld   [hl], a                                     ; $4aca: $77
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  c                                           ; $4acf: $89
	sbc  b                                           ; $4ad0: $98
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	ld   [hl], a                                     ; $4ad6: $77
	ld   a, b                                        ; $4ad7: $78
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	sbc  b                                           ; $4add: $98
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	add  a                                           ; $4ae3: $87
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  c                                           ; $4ae9: $89
	sbc  b                                           ; $4aea: $98
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	ld   [hl], a                                     ; $4af0: $77
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  c                                           ; $4af6: $89
	sbc  b                                           ; $4af7: $98
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	adc  b                                           ; $4b07: $88
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	adc  b                                           ; $4b4d: $88
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	adc  b                                           ; $4b9a: $88
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  b                                           ; $4bb0: $88
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	adc  b                                           ; $4bb5: $88
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	adc  b                                           ; $4bb9: $88
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	adc  b                                           ; $4bbc: $88
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	adc  b                                           ; $4bcf: $88
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	adc  b                                           ; $4bde: $88
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	adc  b                                           ; $4bf7: $88
	adc  b                                           ; $4bf8: $88
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	adc  b                                           ; $4bfb: $88
	adc  b                                           ; $4bfc: $88
	adc  b                                           ; $4bfd: $88
	adc  b                                           ; $4bfe: $88
	adc  b                                           ; $4bff: $88
	adc  b                                           ; $4c00: $88
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	adc  b                                           ; $4c03: $88
	adc  b                                           ; $4c04: $88
	adc  b                                           ; $4c05: $88
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  b                                           ; $4c09: $88
	adc  b                                           ; $4c0a: $88
	adc  b                                           ; $4c0b: $88
	adc  b                                           ; $4c0c: $88
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	adc  b                                           ; $4c0f: $88
	adc  b                                           ; $4c10: $88
	adc  b                                           ; $4c11: $88
	adc  b                                           ; $4c12: $88
	adc  b                                           ; $4c13: $88
	adc  b                                           ; $4c14: $88
	adc  b                                           ; $4c15: $88
	adc  b                                           ; $4c16: $88
	adc  b                                           ; $4c17: $88
	adc  b                                           ; $4c18: $88
	adc  b                                           ; $4c19: $88
	adc  b                                           ; $4c1a: $88
	adc  b                                           ; $4c1b: $88
	adc  b                                           ; $4c1c: $88
	adc  b                                           ; $4c1d: $88
	adc  b                                           ; $4c1e: $88
	adc  b                                           ; $4c1f: $88
	adc  b                                           ; $4c20: $88
	adc  b                                           ; $4c21: $88
	adc  b                                           ; $4c22: $88
	adc  b                                           ; $4c23: $88
	adc  b                                           ; $4c24: $88
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	adc  b                                           ; $4c27: $88
	adc  b                                           ; $4c28: $88
	adc  b                                           ; $4c29: $88
	adc  b                                           ; $4c2a: $88
	adc  b                                           ; $4c2b: $88
	adc  b                                           ; $4c2c: $88
	adc  b                                           ; $4c2d: $88
	adc  b                                           ; $4c2e: $88
	adc  b                                           ; $4c2f: $88
	adc  b                                           ; $4c30: $88
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	adc  b                                           ; $4c34: $88
	adc  b                                           ; $4c35: $88
	adc  b                                           ; $4c36: $88
	adc  b                                           ; $4c37: $88
	adc  b                                           ; $4c38: $88
	adc  b                                           ; $4c39: $88
	adc  b                                           ; $4c3a: $88
	adc  b                                           ; $4c3b: $88
	adc  b                                           ; $4c3c: $88
	adc  b                                           ; $4c3d: $88
	adc  b                                           ; $4c3e: $88
	adc  b                                           ; $4c3f: $88
	adc  b                                           ; $4c40: $88
	adc  b                                           ; $4c41: $88
	adc  b                                           ; $4c42: $88
	adc  b                                           ; $4c43: $88
	adc  b                                           ; $4c44: $88
	adc  b                                           ; $4c45: $88
	adc  b                                           ; $4c46: $88
	adc  b                                           ; $4c47: $88
	adc  b                                           ; $4c48: $88
	adc  b                                           ; $4c49: $88
	adc  b                                           ; $4c4a: $88
	adc  b                                           ; $4c4b: $88
	adc  b                                           ; $4c4c: $88
	adc  b                                           ; $4c4d: $88
	adc  b                                           ; $4c4e: $88
	adc  b                                           ; $4c4f: $88
	adc  b                                           ; $4c50: $88
	adc  b                                           ; $4c51: $88
	adc  b                                           ; $4c52: $88
	adc  b                                           ; $4c53: $88
	adc  b                                           ; $4c54: $88
	adc  b                                           ; $4c55: $88
	adc  b                                           ; $4c56: $88
	adc  b                                           ; $4c57: $88
	adc  b                                           ; $4c58: $88
	adc  b                                           ; $4c59: $88
	adc  b                                           ; $4c5a: $88
	adc  b                                           ; $4c5b: $88
	adc  b                                           ; $4c5c: $88
	adc  b                                           ; $4c5d: $88
	adc  b                                           ; $4c5e: $88
	adc  b                                           ; $4c5f: $88
	adc  b                                           ; $4c60: $88
	adc  b                                           ; $4c61: $88
	adc  b                                           ; $4c62: $88
	adc  b                                           ; $4c63: $88
	adc  b                                           ; $4c64: $88
	adc  b                                           ; $4c65: $88
	adc  b                                           ; $4c66: $88
	adc  b                                           ; $4c67: $88
	adc  b                                           ; $4c68: $88
	adc  b                                           ; $4c69: $88
	adc  b                                           ; $4c6a: $88
	adc  b                                           ; $4c6b: $88
	adc  b                                           ; $4c6c: $88
	adc  b                                           ; $4c6d: $88
	adc  b                                           ; $4c6e: $88
	adc  b                                           ; $4c6f: $88
	adc  b                                           ; $4c70: $88
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	adc  b                                           ; $4c73: $88
	adc  b                                           ; $4c74: $88
	adc  b                                           ; $4c75: $88
	adc  b                                           ; $4c76: $88
	adc  b                                           ; $4c77: $88
	adc  b                                           ; $4c78: $88
	adc  b                                           ; $4c79: $88
	adc  b                                           ; $4c7a: $88
	adc  b                                           ; $4c7b: $88
	adc  b                                           ; $4c7c: $88
	adc  b                                           ; $4c7d: $88
	adc  b                                           ; $4c7e: $88
	adc  b                                           ; $4c7f: $88
	adc  b                                           ; $4c80: $88
	adc  b                                           ; $4c81: $88
	adc  b                                           ; $4c82: $88
	adc  b                                           ; $4c83: $88
	adc  b                                           ; $4c84: $88
	adc  b                                           ; $4c85: $88
	adc  b                                           ; $4c86: $88
	adc  b                                           ; $4c87: $88
	adc  b                                           ; $4c88: $88
	adc  b                                           ; $4c89: $88
	adc  b                                           ; $4c8a: $88
	adc  b                                           ; $4c8b: $88
	adc  b                                           ; $4c8c: $88
	adc  b                                           ; $4c8d: $88
	adc  b                                           ; $4c8e: $88
	adc  b                                           ; $4c8f: $88
	sbc  b                                           ; $4c90: $98
	adc  b                                           ; $4c91: $88
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	adc  b                                           ; $4c94: $88
	sbc  c                                           ; $4c95: $99
	adc  b                                           ; $4c96: $88
	adc  b                                           ; $4c97: $88
	adc  c                                           ; $4c98: $89
	adc  b                                           ; $4c99: $88
	adc  b                                           ; $4c9a: $88
	ld   [hl], a                                     ; $4c9b: $77
	ld   a, b                                        ; $4c9c: $78
	adc  b                                           ; $4c9d: $88
	ld   a, b                                        ; $4c9e: $78
	sbc  b                                           ; $4c9f: $98
	add  a                                           ; $4ca0: $87
	adc  b                                           ; $4ca1: $88
	add  a                                           ; $4ca2: $87
	ld   a, b                                        ; $4ca3: $78
	add  a                                           ; $4ca4: $87
	ld   [hl], a                                     ; $4ca5: $77
	adc  b                                           ; $4ca6: $88
	ld   [hl], a                                     ; $4ca7: $77
	adc  b                                           ; $4ca8: $88
	ld   a, c                                        ; $4ca9: $79
	adc  c                                           ; $4caa: $89
	adc  c                                           ; $4cab: $89
	add  a                                           ; $4cac: $87
	ld   a, b                                        ; $4cad: $78
	add  a                                           ; $4cae: $87
	adc  b                                           ; $4caf: $88
	add  a                                           ; $4cb0: $87
	add  a                                           ; $4cb1: $87
	ld   [hl], a                                     ; $4cb2: $77
	add  a                                           ; $4cb3: $87
	ld   [hl], a                                     ; $4cb4: $77
	halt                                             ; $4cb5: $76
	ld   h, a                                        ; $4cb6: $67
	ld   [hl], a                                     ; $4cb7: $77
	ld   h, a                                        ; $4cb8: $67
	ld   a, b                                        ; $4cb9: $78
	adc  b                                           ; $4cba: $88
	sbc  b                                           ; $4cbb: $98
	xor  d                                           ; $4cbc: $aa
	sbc  d                                           ; $4cbd: $9a
	cp   e                                           ; $4cbe: $bb
	cp   e                                           ; $4cbf: $bb
	call z, $aaba                                    ; $4cc0: $cc $ba $aa
	sub  a                                           ; $4cc3: $97
	ld   d, e                                        ; $4cc4: $53
	ld   b, e                                        ; $4cc5: $43
	ld   de, $1111                                   ; $4cc6: $11 $11 $11
	ld   de, $ad25                                   ; $4cc9: $11 $25 $ad
	rst  $28                                         ; $4ccc: $ef
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	cp   $ec                                         ; $4cd1: $fe $ec
	cp   c                                           ; $4cd3: $b9
	add  [hl]                                        ; $4cd4: $86
	ld   [hl-], a                                    ; $4cd5: $32
	ld   de, $1111                                   ; $4cd6: $11 $11 $11
	ld   de, $4811                                   ; $4cd9: $11 $11 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cdc: $cf
	rst  $38                                         ; $4cdd: $ff
	rst  $38                                         ; $4cde: $ff
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	rst  $38                                         ; $4ce1: $ff
	db   $ed                                         ; $4ce2: $ed
	db   $db                                         ; $4ce3: $db
	sub  a                                           ; $4ce4: $97
	ld   d, d                                        ; $4ce5: $52
	ld   de, $1111                                   ; $4ce6: $11 $11 $11
	ld   de, $1311                                   ; $4ce9: $11 $11 $13
	cp   a                                           ; $4cec: $bf
	rst  $38                                         ; $4ced: $ff
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	db   $dd                                         ; $4cf2: $dd
	bit  6, h                                        ; $4cf3: $cb $74
	ld   hl, $1111                                   ; $4cf5: $21 $11 $11
	ld   de, $1111                                   ; $4cf8: $11 $11 $11
	ld   [$ffff], sp                                 ; $4cfb: $08 $ff $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	cp   $dc                                         ; $4d01: $fe $dc
	cp   c                                           ; $4d03: $b9
	ld   [hl], h                                     ; $4d04: $74
	ld   hl, $1111                                   ; $4d05: $21 $11 $11
	ld   de, $1111                                   ; $4d08: $11 $11 $11
	jr   @+$01                                       ; $4d0b: $18 $ff

	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff
	rst  $38                                         ; $4d11: $ff
	db   $db                                         ; $4d12: $db
	cp   d                                           ; $4d13: $ba
	ld   [hl], l                                     ; $4d14: $75
	ld   b, d                                        ; $4d15: $42
	ld   [hl+], a                                    ; $4d16: $22
	ld   de, $1111                                   ; $4d17: $11 $11 $11
	ld   de, $ef14                                   ; $4d1a: $11 $14 $ef
	rst  $38                                         ; $4d1d: $ff
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	cp   e                                           ; $4d22: $bb
	call z, $4485                                    ; $4d23: $cc $85 $44
	inc  sp                                          ; $4d26: $33
	ld   de, $1111                                   ; $4d27: $11 $11 $11
	ld   de, $cf12                                   ; $4d2a: $11 $12 $cf
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	rst  $38                                         ; $4d2f: $ff
	rst  $38                                         ; $4d30: $ff
	rst  $38                                         ; $4d31: $ff
	jp   z, $85ce                                    ; $4d32: $ca $ce $85

	ld   d, l                                        ; $4d35: $55
	inc  sp                                          ; $4d36: $33
	ld   hl, $1111                                   ; $4d37: $21 $11 $11
	ld   de, $4c11                                   ; $4d3a: $11 $11 $4c
	rst  $38                                         ; $4d3d: $ff
	rst  $38                                         ; $4d3e: $ff
	rst  $38                                         ; $4d3f: $ff
	rst  $38                                         ; $4d40: $ff
	rst  $38                                         ; $4d41: $ff
	db   $fc                                         ; $4d42: $fc
	call z, Call_0bb_64ba                            ; $4d43: $cc $ba $64
	ld   b, h                                        ; $4d46: $44
	ld   b, e                                        ; $4d47: $43
	ld   bc, $1111                                   ; $4d48: $01 $11 $11
	ld   de, $df18                                   ; $4d4b: $11 $18 $df
	rst  $38                                         ; $4d4e: $ff
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	rst  $38                                         ; $4d51: $ff
	cp   $cc                                         ; $4d52: $fe $cc
	db   $eb                                         ; $4d54: $eb
	add  a                                           ; $4d55: $87
	ld   [hl], l                                     ; $4d56: $75
	inc  sp                                          ; $4d57: $33
	ld   hl, $1111                                   ; $4d58: $21 $11 $11
	ld   de, $6e11                                   ; $4d5b: $11 $11 $6e
	rst  $38                                         ; $4d5e: $ff
	rst  $38                                         ; $4d5f: $ff
	rst  $38                                         ; $4d60: $ff
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	db   $ec                                         ; $4d63: $ec
	adc  $b7                                         ; $4d64: $ce $b7
	ld   d, l                                        ; $4d66: $55
	ld   d, h                                        ; $4d67: $54
	ld   [hl-], a                                    ; $4d68: $32
	ld   bc, $1111                                   ; $4d69: $01 $11 $11
	ld   de, $ef18                                   ; $4d6c: $11 $18 $ef
	rst  $38                                         ; $4d6f: $ff
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	cp   l                                           ; $4d74: $bd
	db   $fc                                         ; $4d75: $fc
	sub  a                                           ; $4d76: $97
	ld   d, [hl]                                     ; $4d77: $56
	ld   d, d                                        ; $4d78: $52
	ld   hl, $1111                                   ; $4d79: $21 $11 $11
	ld   de, $7b11                                   ; $4d7c: $11 $11 $7b
	rst  JumpTable                                         ; $4d7f: $df
	rst  $38                                         ; $4d80: $ff
	rst  $38                                         ; $4d81: $ff
	rst  $38                                         ; $4d82: $ff
	rst  $38                                         ; $4d83: $ff
	db   $ed                                         ; $4d84: $ed
	call Call_0bb_76d9                               ; $4d85: $cd $d9 $76
	ld   b, h                                        ; $4d88: $44
	ld   b, d                                        ; $4d89: $42
	ld   de, $1111                                   ; $4d8a: $11 $11 $11
	ld   de, $ef13                                   ; $4d8d: $11 $13 $ef
	rst  $28                                         ; $4d90: $ef
	rst  $38                                         ; $4d91: $ff
	rst  $38                                         ; $4d92: $ff
	rst  $38                                         ; $4d93: $ff
	rst  $38                                         ; $4d94: $ff
	db   $dd                                         ; $4d95: $dd
	cp   $96                                         ; $4d96: $fe $96
	ld   h, a                                        ; $4d98: $67
	ld   d, e                                        ; $4d99: $53
	ld   [de], a                                     ; $4d9a: $12
	ld   bc, $1111                                   ; $4d9b: $01 $11 $11
	ld   de, $ce3a                                   ; $4d9e: $11 $3a $ce
	rst  $38                                         ; $4da1: $ff
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	cp   $ed                                         ; $4da6: $fe $ed
	adc  b                                           ; $4da8: $88
	ld   [hl], h                                     ; $4da9: $74
	ld   b, h                                        ; $4daa: $44
	ld   de, $1111                                   ; $4dab: $11 $11 $11
	ld   de, $4a11                                   ; $4dae: $11 $11 $4a
	rst  $28                                         ; $4db1: $ef
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	cp   $ff                                         ; $4db6: $fe $ff
	db   $db                                         ; $4db8: $db
	add  [hl]                                        ; $4db9: $86
	ld   d, l                                        ; $4dba: $55
	ld   [hl+], a                                    ; $4dbb: $22
	ld   de, $1111                                   ; $4dbc: $11 $11 $11
	ld   de, $7b12                                   ; $4dbf: $11 $12 $7b
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	cp   $ff                                         ; $4dc7: $fe $ff
	jp   c, $5587                                    ; $4dc9: $da $87 $55

	ld   b, c                                        ; $4dcc: $41
	ld   de, $1111                                   ; $4dcd: $11 $11 $11
	ld   de, $8b13                                   ; $4dd0: $11 $13 $8b
	call c, $ffef                                    ; $4dd3: $dc $ef $ff
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	cp   $ff                                         ; $4dd8: $fe $ff
	jp   z, Jump_0bb_6575                            ; $4dda: $ca $75 $65

	ld   [hl-], a                                    ; $4ddd: $32
	ld   de, $1111                                   ; $4dde: $11 $11 $11
	ld   de, $5814                                   ; $4de1: $11 $14 $58
	adc  $df                                         ; $4de4: $ce $df
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	jp   c, $6686                                    ; $4deb: $da $86 $66

	ld   d, h                                        ; $4dee: $54
	ld   hl, $1111                                   ; $4def: $21 $11 $11
	ld   de, $5712                                   ; $4df2: $11 $12 $57
	xor  e                                           ; $4df5: $ab
	cp   a                                           ; $4df6: $bf
	rst  $38                                         ; $4df7: $ff
	rst  $38                                         ; $4df8: $ff
	rst  $38                                         ; $4df9: $ff
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	db   $eb                                         ; $4dfc: $eb
	sbc  c                                           ; $4dfd: $99
	ld   [hl], a                                     ; $4dfe: $77
	ld   d, d                                        ; $4dff: $52
	inc  sp                                          ; $4e00: $33
	ld   de, $1111                                   ; $4e01: $11 $11 $11
	ld   de, $6834                                   ; $4e04: $11 $34 $68
	sbc  e                                           ; $4e07: $9b
	db   $dd                                         ; $4e08: $dd
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	db   $fd                                         ; $4e0b: $fd
	rst  $28                                         ; $4e0c: $ef
	call c, $a9ba                                    ; $4e0d: $dc $ba $a9
	add  a                                           ; $4e10: $87
	halt                                             ; $4e11: $76
	ld   d, e                                        ; $4e12: $53
	ld   de, $1111                                   ; $4e13: $11 $11 $11
	ld   [de], a                                     ; $4e16: $12
	inc  [hl]                                        ; $4e17: $34
	ld   h, [hl]                                     ; $4e18: $66
	ld   a, c                                        ; $4e19: $79
	xor  e                                           ; $4e1a: $ab
	db   $dd                                         ; $4e1b: $dd
	xor  $ff                                         ; $4e1c: $ee $ff
	rst  $38                                         ; $4e1e: $ff
	cp   $ed                                         ; $4e1f: $fe $ed
	cp   d                                           ; $4e21: $ba
	sbc  b                                           ; $4e22: $98
	halt                                             ; $4e23: $76
	ld   d, h                                        ; $4e24: $54
	ld   hl, $1111                                   ; $4e25: $21 $11 $11
	ld   de, $3523                                   ; $4e28: $11 $23 $35
	ld   a, b                                        ; $4e2b: $78
	sbc  e                                           ; $4e2c: $9b
	call z, $ffef                                    ; $4e2d: $cc $ef $ff
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	call c, $87b9                                    ; $4e32: $dc $b9 $87
	ld   h, l                                        ; $4e35: $65
	ld   b, e                                        ; $4e36: $43
	ld   hl, $1111                                   ; $4e37: $21 $11 $11
	ld   de, $4523                                   ; $4e3a: $11 $23 $45
	ld   l, b                                        ; $4e3d: $68
	sbc  e                                           ; $4e3e: $9b
	cp   [hl]                                        ; $4e3f: $be
	rst  $28                                         ; $4e40: $ef
	rst  $38                                         ; $4e41: $ff
	rst  $38                                         ; $4e42: $ff
	rst  $38                                         ; $4e43: $ff
	db   $fd                                         ; $4e44: $fd
	cp   d                                           ; $4e45: $ba
	add  a                                           ; $4e46: $87
	ld   h, l                                        ; $4e47: $65
	ld   b, h                                        ; $4e48: $44
	ld   hl, $1111                                   ; $4e49: $21 $11 $11
	ld   de, $3523                                   ; $4e4c: $11 $23 $35
	ld   h, a                                        ; $4e4f: $67
	sbc  e                                           ; $4e50: $9b
	cp   h                                           ; $4e51: $bc
	sbc  $ff                                         ; $4e52: $de $ff
	rst  $38                                         ; $4e54: $ff
	rst  $38                                         ; $4e55: $ff
	db   $fd                                         ; $4e56: $fd
	cp   d                                           ; $4e57: $ba
	add  a                                           ; $4e58: $87
	ld   h, l                                        ; $4e59: $65
	ld   b, h                                        ; $4e5a: $44
	ld   sp, $1111                                   ; $4e5b: $31 $11 $11
	ld   de, $4512                                   ; $4e5e: $11 $12 $45
	ld   l, b                                        ; $4e61: $68
	sbc  d                                           ; $4e62: $9a
	cp   h                                           ; $4e63: $bc
	xor  $ff                                         ; $4e64: $ee $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	db   $fd                                         ; $4e68: $fd
	jp   z, $6698                                    ; $4e69: $ca $98 $66

	ld   d, h                                        ; $4e6c: $54
	ld   sp, $1111                                   ; $4e6d: $31 $11 $11
	ld   de, $3412                                   ; $4e70: $11 $12 $34
	ld   h, a                                        ; $4e73: $67
	sbc  d                                           ; $4e74: $9a
	cp   l                                           ; $4e75: $bd
	xor  $ff                                         ; $4e76: $ee $ff
	rst  $38                                         ; $4e78: $ff
	rst  $38                                         ; $4e79: $ff
	cp   $cb                                         ; $4e7a: $fe $cb
	sbc  b                                           ; $4e7c: $98
	ld   h, [hl]                                     ; $4e7d: $66
	ld   d, h                                        ; $4e7e: $54
	ld   sp, $1101                                   ; $4e7f: $31 $01 $11
	ld   de, $3523                                   ; $4e82: $11 $23 $35
	ld   l, b                                        ; $4e85: $68
	xor  e                                           ; $4e86: $ab
	adc  $ff                                         ; $4e87: $ce $ff
	rst  $38                                         ; $4e89: $ff
	rst  $38                                         ; $4e8a: $ff
	rst  $38                                         ; $4e8b: $ff
	db   $fd                                         ; $4e8c: $fd
	res  2, a                                        ; $4e8d: $cb $97
	ld   [hl], l                                     ; $4e8f: $75
	ld   b, h                                        ; $4e90: $44
	ld   hl, $1111                                   ; $4e91: $21 $11 $11
	ld   de, $4513                                   ; $4e94: $11 $13 $45
	ld   l, b                                        ; $4e97: $68
	xor  e                                           ; $4e98: $ab
	adc  $ef                                         ; $4e99: $ce $ef
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	db   $ed                                         ; $4e9e: $ed
	cp   c                                           ; $4e9f: $b9
	halt                                             ; $4ea0: $76
	ld   d, h                                        ; $4ea1: $54
	ld   sp, $1111                                   ; $4ea2: $31 $11 $11
	ld   de, $3512                                   ; $4ea5: $11 $12 $35
	ld   h, a                                        ; $4ea8: $67
	sbc  d                                           ; $4ea9: $9a
	sbc  $ef                                         ; $4eaa: $de $ef
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	rst  $38                                         ; $4eae: $ff
	cp   $db                                         ; $4eaf: $fe $db
	xor  b                                           ; $4eb1: $a8
	ld   [hl], l                                     ; $4eb2: $75
	ld   b, e                                        ; $4eb3: $43
	ld   de, $1111                                   ; $4eb4: $11 $11 $11
	ld   de, $5624                                   ; $4eb7: $11 $24 $56
	adc  d                                           ; $4eba: $8a
	cp   l                                           ; $4ebb: $bd
	xor  $ff                                         ; $4ebc: $ee $ff
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	call c, Call_0bb_75a8                            ; $4ec1: $dc $a8 $75
	ld   sp, $1111                                   ; $4ec4: $31 $11 $11
	ld   de, $2511                                   ; $4ec7: $11 $11 $25
	ld   l, b                                        ; $4eca: $68
	cp   d                                           ; $4ecb: $ba
	adc  $ff                                         ; $4ecc: $ce $ff
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	db   $fd                                         ; $4ed1: $fd
	cp   e                                           ; $4ed2: $bb
	sub  l                                           ; $4ed3: $95
	ld   d, h                                        ; $4ed4: $54
	ld   hl, $1111                                   ; $4ed5: $21 $11 $11
	ld   de, $6812                                   ; $4ed8: $11 $12 $68
	sbc  d                                           ; $4edb: $9a
	call $ffff                                       ; $4edc: $cd $ff $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	rst  $38                                         ; $4ee1: $ff
	db   $eb                                         ; $4ee2: $eb
	sbc  b                                           ; $4ee3: $98
	ld   d, e                                        ; $4ee4: $53
	ld   sp, $1111                                   ; $4ee5: $31 $11 $11
	ld   de, $5811                                   ; $4ee8: $11 $11 $58
	xor  h                                           ; $4eeb: $ac
	rst  JumpTable                                         ; $4eec: $df
	rst  $38                                         ; $4eed: $ff
	rst  $38                                         ; $4eee: $ff
	rst  $38                                         ; $4eef: $ff
	rst  $38                                         ; $4ef0: $ff
	cp   $da                                         ; $4ef1: $fe $da
	ld   [hl], h                                     ; $4ef3: $74
	ld   [hl+], a                                    ; $4ef4: $22
	ld   de, $1111                                   ; $4ef5: $11 $11 $11
	ld   de, $8e13                                   ; $4ef8: $11 $13 $8e
	xor  $ff                                         ; $4efb: $ee $ff
	rst  $38                                         ; $4efd: $ff
	rst  $38                                         ; $4efe: $ff
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	jp   c, $1195                                    ; $4f01: $da $95 $11

	ld   de, $1111                                   ; $4f04: $11 $11 $11
	ld   de, $2c11                                   ; $4f07: $11 $11 $2c
	rst  $38                                         ; $4f0a: $ff
	rst  $28                                         ; $4f0b: $ef
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	rst  $38                                         ; $4f0e: $ff
	rst  $38                                         ; $4f0f: $ff
	ei                                               ; $4f10: $fb
	sbc  d                                           ; $4f11: $9a
	ld   de, $1111                                   ; $4f12: $11 $11 $11
	ld   de, $1111                                   ; $4f15: $11 $11 $11
	add  hl, hl                                      ; $4f18: $29
	rst  $38                                         ; $4f19: $ff
	rst  $38                                         ; $4f1a: $ff
	rst  $38                                         ; $4f1b: $ff
	rst  $38                                         ; $4f1c: $ff
	rst  $38                                         ; $4f1d: $ff
	rst  $38                                         ; $4f1e: $ff
	db   $fd                                         ; $4f1f: $fd
	ld   h, [hl]                                     ; $4f20: $66
	ld   b, c                                        ; $4f21: $41
	ld   de, $1111                                   ; $4f22: $11 $11 $11
	ld   de, $3d22                                   ; $4f25: $11 $22 $3d
	rst  $38                                         ; $4f28: $ff
	rst  $38                                         ; $4f29: $ff
	rst  $38                                         ; $4f2a: $ff
	rst  $38                                         ; $4f2b: $ff
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	add  sp, $63                                     ; $4f2e: $e8 $63
	ld   de, $1111                                   ; $4f30: $11 $11 $11
	ld   de, $1611                                   ; $4f33: $11 $11 $16
	xor  a                                           ; $4f36: $af
	rst  $38                                         ; $4f37: $ff
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	rst  $38                                         ; $4f3a: $ff
	rst  $38                                         ; $4f3b: $ff
	rst  $38                                         ; $4f3c: $ff
	ret  c                                           ; $4f3d: $d8

	ld   sp, $1111                                   ; $4f3e: $31 $11 $11
	ld   de, $1211                                   ; $4f41: $11 $11 $12
	jr   c, @+$01                                    ; $4f44: $38 $ff

	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	rst  $38                                         ; $4f49: $ff
	rst  $38                                         ; $4f4a: $ff
	db   $fc                                         ; $4f4b: $fc
	ld   [hl-], a                                    ; $4f4c: $32
	ld   de, $1111                                   ; $4f4d: $11 $11 $11
	ld   de, $4511                                   ; $4f50: $11 $11 $45
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	rst  $38                                         ; $4f55: $ff
	rst  $38                                         ; $4f56: $ff
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	cp   $45                                         ; $4f59: $fe $45
	ld   hl, $1111                                   ; $4f5b: $21 $11 $11
	ld   de, $2811                                   ; $4f5e: $11 $11 $28
	rst  $38                                         ; $4f61: $ff
	rst  $38                                         ; $4f62: $ff
	rst  $38                                         ; $4f63: $ff
	rst  $38                                         ; $4f64: $ff
	rst  $38                                         ; $4f65: $ff
	rst  $28                                         ; $4f66: $ef
	ei                                               ; $4f67: $fb
	sub  h                                           ; $4f68: $94
	ld   de, $1111                                   ; $4f69: $11 $11 $11
	ld   de, $4811                                   ; $4f6c: $11 $11 $48
	rst  JumpTable                                         ; $4f6f: $df
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	rst  $38                                         ; $4f72: $ff
	rst  $38                                         ; $4f73: $ff
	rst  $28                                         ; $4f74: $ef
	ld   a, [$11b5]                                  ; $4f75: $fa $b5 $11
	ld   de, $1111                                   ; $4f78: $11 $11 $11
	ld   de, $ff2a                                   ; $4f7b: $11 $2a $ff
	rst  $38                                         ; $4f7e: $ff
	rst  $38                                         ; $4f7f: $ff
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	rst  JumpTable                                         ; $4f82: $df
	ld   sp, hl                                      ; $4f83: $f9
	sub  e                                           ; $4f84: $93
	ld   de, $1111                                   ; $4f85: $11 $11 $11
	ld   de, $7c14                                   ; $4f88: $11 $14 $7c
	rst  $38                                         ; $4f8b: $ff
	rst  $38                                         ; $4f8c: $ff
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	xor  a                                           ; $4f90: $af
	push af                                          ; $4f91: $f5
	ld   h, c                                        ; $4f92: $61
	ld   de, $1111                                   ; $4f93: $11 $11 $11
	ld   de, $8f46                                   ; $4f96: $11 $46 $8f
	rst  $38                                         ; $4f99: $ff
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	rst  $38                                         ; $4f9c: $ff
	rst  $38                                         ; $4f9d: $ff
	rst  $38                                         ; $4f9e: $ff
	db   $e3                                         ; $4f9f: $e3
	ld   de, $1111                                   ; $4fa0: $11 $11 $11
	ld   de, $6912                                   ; $4fa3: $11 $12 $69
	rst  $38                                         ; $4fa6: $ff
	rst  $38                                         ; $4fa7: $ff
	rst  $38                                         ; $4fa8: $ff
	rst  $38                                         ; $4fa9: $ff
	cp   $ff                                         ; $4faa: $fe $ff
	rst  $38                                         ; $4fac: $ff
	ld   h, c                                        ; $4fad: $61
	ld   de, $1111                                   ; $4fae: $11 $11 $11
	ld   de, $af17                                   ; $4fb1: $11 $17 $af
	rst  $38                                         ; $4fb4: $ff
	rst  $38                                         ; $4fb5: $ff
	rst  $38                                         ; $4fb6: $ff
	rst  $38                                         ; $4fb7: $ff
	db   $fc                                         ; $4fb8: $fc
	rst  $38                                         ; $4fb9: $ff
	halt                                             ; $4fba: $76
	ld   de, $1111                                   ; $4fbb: $11 $11 $11
	ld   de, $7b18                                   ; $4fbe: $11 $18 $7b
	rst  $38                                         ; $4fc1: $ff
	rst  $38                                         ; $4fc2: $ff
	rst  $38                                         ; $4fc3: $ff
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	rst  $38                                         ; $4fc6: $ff
	rst  $30                                         ; $4fc7: $f7
	ld   de, $1111                                   ; $4fc8: $11 $11 $11
	ld   de, $9628                                   ; $4fcb: $11 $28 $96
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	rst  $38                                         ; $4fd0: $ff
	rst  $38                                         ; $4fd1: $ff
	db   $fd                                         ; $4fd2: $fd
	rst  $28                                         ; $4fd3: $ef
	db   $fc                                         ; $4fd4: $fc
	ld   de, $1111                                   ; $4fd5: $11 $11 $11
	ld   de, $7a51                                   ; $4fd8: $11 $51 $7a
	rst  $38                                         ; $4fdb: $ff
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	rst  $38                                         ; $4fde: $ff
	ei                                               ; $4fdf: $fb
	rst  JumpTable                                         ; $4fe0: $df
	db   $eb                                         ; $4fe1: $eb
	ld   b, c                                        ; $4fe2: $41
	ld   de, $1111                                   ; $4fe3: $11 $11 $11
	ld   b, l                                        ; $4fe6: $45
	ld   c, h                                        ; $4fe7: $4c
	rst  $38                                         ; $4fe8: $ff
	rst  $38                                         ; $4fe9: $ff
	rst  $38                                         ; $4fea: $ff
	rst  $38                                         ; $4feb: $ff
	rst  $38                                         ; $4fec: $ff
	xor  l                                           ; $4fed: $ad
	ld   a, [$1121]                                  ; $4fee: $fa $21 $11
	ld   de, $5313                                   ; $4ff1: $11 $13 $53
	ld   a, h                                        ; $4ff4: $7c
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	rst  $38                                         ; $4ff7: $ff
	rst  $38                                         ; $4ff8: $ff
	cp   $df                                         ; $4ff9: $fe $df
	rst  $10                                         ; $4ffb: $d7
	ld   hl, $1111                                   ; $4ffc: $21 $11 $11
	ld   a, [de]                                     ; $4fff: $1a
	ld   [hl], e                                     ; $5000: $73
	adc  l                                           ; $5001: $8d
	rst  $38                                         ; $5002: $ff
	db   $fd                                         ; $5003: $fd
	rst  $38                                         ; $5004: $ff
	rst  $38                                         ; $5005: $ff
	ld   sp, hl                                      ; $5006: $f9
	cp   a                                           ; $5007: $bf
	or   a                                           ; $5008: $b7
	ld   de, $1111                                   ; $5009: $11 $11 $11
	ld   b, [hl]                                     ; $500c: $46
	add  hl, hl                                      ; $500d: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500e: $cf
	rst  $38                                         ; $500f: $ff
	rst  $38                                         ; $5010: $ff
	rst  $38                                         ; $5011: $ff
	rst  $38                                         ; $5012: $ff
	cp   $db                                         ; $5013: $fe $db
	add  h                                           ; $5015: $84
	ld   de, $1111                                   ; $5016: $11 $11 $11
	ld   b, a                                        ; $5019: $47
	ld   b, [hl]                                     ; $501a: $46
	rst  $38                                         ; $501b: $ff
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	rst  $38                                         ; $501e: $ff
	rst  $38                                         ; $501f: $ff
	db   $fc                                         ; $5020: $fc
	db   $dd                                         ; $5021: $dd
	ld   b, c                                        ; $5022: $41
	ld   de, $1911                                   ; $5023: $11 $11 $19
	ld   d, c                                        ; $5026: $51
	ld   a, a                                        ; $5027: $7f
	rst  $38                                         ; $5028: $ff
	rst  $38                                         ; $5029: $ff
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	db   $fd                                         ; $502c: $fd
	call c, $1182                                    ; $502d: $dc $82 $11
	ld   de, $d416                                   ; $5030: $11 $16 $d4
	jr   z, @+$01                                    ; $5033: $28 $ff

	rst  $38                                         ; $5035: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5036: $cf
	rst  $38                                         ; $5037: $ff
	rst  $38                                         ; $5038: $ff
	adc  $d6                                         ; $5039: $ce $d6
	ld   de, $1111                                   ; $503b: $11 $11 $11
	sbc  e                                           ; $503e: $9b
	ld   b, c                                        ; $503f: $41
	xor  a                                           ; $5040: $af
	rst  $38                                         ; $5041: $ff
	db   $fd                                         ; $5042: $fd
	rst  $38                                         ; $5043: $ff
	rst  $38                                         ; $5044: $ff
	ret  z                                           ; $5045: $c8

	cp   [hl]                                        ; $5046: $be
	ld   d, c                                        ; $5047: $51
	ld   de, $7811                                   ; $5048: $11 $11 $78
	add  a                                           ; $504b: $87
	ld   a, a                                        ; $504c: $7f
	rst  $38                                         ; $504d: $ff
	rst  $38                                         ; $504e: $ff
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	xor  $74                                         ; $5051: $ee $74
	add  c                                           ; $5053: $81
	ld   de, $6c11                                   ; $5054: $11 $11 $6c
	and  [hl]                                        ; $5057: $a6
	adc  a                                           ; $5058: $8f
	rst  $38                                         ; $5059: $ff
	db   $fd                                         ; $505a: $fd
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	ld   a, [$21d8]                                  ; $505d: $fa $d8 $21
	ld   de, $1911                                   ; $5060: $11 $11 $19
	db   $ec                                         ; $5063: $ec
	ld   a, a                                        ; $5064: $7f
	rst  $38                                         ; $5065: $ff
	cp   $df                                         ; $5066: $fe $df
	rst  $38                                         ; $5068: $ff
	rst  $30                                         ; $5069: $f7
	ld   l, h                                        ; $506a: $6c
	ld   de, $1111                                   ; $506b: $11 $11 $11
	dec  sp                                          ; $506e: $3b
	rst  $20                                         ; $506f: $e7
	ld   a, a                                        ; $5070: $7f
	rst  $38                                         ; $5071: $ff
	rst  $38                                         ; $5072: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5073: $cf
	rst  $38                                         ; $5074: $ff
	cp   $51                                         ; $5075: $fe $51
	ld   de, $1111                                   ; $5077: $11 $11 $11
	ld   c, a                                        ; $507a: $4f
	or   $5f                                         ; $507b: $f6 $5f
	rst  $38                                         ; $507d: $ff
	ei                                               ; $507e: $fb
	xor  a                                           ; $507f: $af
	rst  $38                                         ; $5080: $ff
	ei                                               ; $5081: $fb
	dec  [hl]                                        ; $5082: $35
	ld   de, $1211                                   ; $5083: $11 $11 $12
	call c, $ff9c                                    ; $5086: $dc $9c $ff
	rst  $38                                         ; $5089: $ff
	cp   a                                           ; $508a: $bf
	rst  $38                                         ; $508b: $ff
	rst  $38                                         ; $508c: $ff
	sub  $11                                         ; $508d: $d6 $11
	ld   de, $1911                                   ; $508f: $11 $11 $19
	rst  $38                                         ; $5092: $ff
	sbc  e                                           ; $5093: $9b
	rst  $38                                         ; $5094: $ff
	rst  $38                                         ; $5095: $ff
	adc  [hl]                                        ; $5096: $8e
	rst  $38                                         ; $5097: $ff
	rst  $38                                         ; $5098: $ff
	ld   hl, $1111                                   ; $5099: $21 $11 $11
	ld   de, $a7df                                   ; $509c: $11 $df $a7
	rst  $38                                         ; $509f: $ff
	rst  $38                                         ; $50a0: $ff
	sbc  h                                           ; $50a1: $9c
	rst  $38                                         ; $50a2: $ff
	rst  $38                                         ; $50a3: $ff
	or   h                                           ; $50a4: $b4
	ld   de, $1111                                   ; $50a5: $11 $11 $11
	cpl                                              ; $50a8: $2f
	ei                                               ; $50a9: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50aa: $cf
	rst  $38                                         ; $50ab: $ff
	or   $df                                         ; $50ac: $f6 $df
	rst  $38                                         ; $50ae: $ff
	db   $f4                                         ; $50af: $f4
	ld   hl, $1111                                   ; $50b0: $21 $11 $11
	dec  de                                          ; $50b3: $1b
	rst  $38                                         ; $50b4: $ff
	xor  c                                           ; $50b5: $a9
	rst  $38                                         ; $50b6: $ff
	ei                                               ; $50b7: $fb
	cp   a                                           ; $50b8: $bf
	rst  $38                                         ; $50b9: $ff
	cp   $71                                         ; $50ba: $fe $71
	ld   de, $1111                                   ; $50bc: $11 $11 $11
	ld   a, a                                        ; $50bf: $7f
	ld   sp, hl                                      ; $50c0: $f9
	rst  $38                                         ; $50c1: $ff
	rst  $38                                         ; $50c2: $ff
	adc  c                                           ; $50c3: $89
	rst  $38                                         ; $50c4: $ff
	rst  $38                                         ; $50c5: $ff
	ld   b, c                                        ; $50c6: $41
	ld   de, $1111                                   ; $50c7: $11 $11 $11
	adc  a                                           ; $50ca: $8f
	db   $fd                                         ; $50cb: $fd
	rst  $38                                         ; $50cc: $ff
	rst  $38                                         ; $50cd: $ff
	and  h                                           ; $50ce: $a4
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	add  c                                           ; $50d1: $81
	ld   de, $1111                                   ; $50d2: $11 $11 $11
	cp   a                                           ; $50d5: $bf
	ret                                              ; $50d6: $c9


	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	ld   h, [hl]                                     ; $50d9: $66
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	ld   d, c                                        ; $50dc: $51
	ld   de, $1111                                   ; $50dd: $11 $11 $11
	sbc  a                                           ; $50e0: $9f
	db   $fd                                         ; $50e1: $fd
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	ld   d, h                                        ; $50e4: $54
	rst  $28                                         ; $50e5: $ef
	rst  $38                                         ; $50e6: $ff
	ld   sp, $1111                                   ; $50e7: $31 $11 $11
	ld   de, $fadf                                   ; $50ea: $11 $df $fa
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	ld   h, [hl]                                     ; $50ef: $66
	rst  $38                                         ; $50f0: $ff
	cp   $31                                         ; $50f1: $fe $31
	ld   de, $1111                                   ; $50f3: $11 $11 $11
	rst  $28                                         ; $50f6: $ef
	rst  $28                                         ; $50f7: $ef
	rst  $38                                         ; $50f8: $ff
	cp   $3a                                         ; $50f9: $fe $3a
	rst  $38                                         ; $50fb: $ff
	db   $fc                                         ; $50fc: $fc
	ld   de, $1111                                   ; $50fd: $11 $11 $11
	rla                                              ; $5100: $17
	rst  $38                                         ; $5101: $ff
	adc  $ff                                         ; $5102: $ce $ff
	db   $fd                                         ; $5104: $fd
	ld   a, l                                        ; $5105: $7d
	rst  $38                                         ; $5106: $ff
	jp   $1111                                       ; $5107: $c3 $11 $11


	ld   de, $ff1a                                   ; $510a: $11 $1a $ff
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	rst  ToBoot                                         ; $510f: $c7
	cp   a                                           ; $5110: $bf
	rst  $38                                         ; $5111: $ff
	ld   [hl], c                                     ; $5112: $71

Call_0bb_5113:
	ld   de, $1111                                   ; $5113: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5116: $cf
	rst  $38                                         ; $5117: $ff
	rst  $38                                         ; $5118: $ff
	rst  $38                                         ; $5119: $ff
	ld   [hl], l                                     ; $511a: $75
	rst  $38                                         ; $511b: $ff
	ld   a, [$1111]                                  ; $511c: $fa $11 $11
	ld   de, $ff18                                   ; $511f: $11 $18 $ff
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	db   $fd                                         ; $5124: $fd
	ld   a, $ff                                      ; $5125: $3e $ff
	sub  c                                           ; $5127: $91
	ld   de, $1111                                   ; $5128: $11 $11 $11
	cpl                                              ; $512b: $2f
	rst  $38                                         ; $512c: $ff
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	ei                                               ; $512f: $fb
	rst  JumpTable                                         ; $5130: $df
	ld   hl, sp+$21                                  ; $5131: $f8 $21
	ld   de, $1111                                   ; $5133: $11 $11 $11
	rst  $28                                         ; $5136: $ef
	rst  $38                                         ; $5137: $ff
	rst  $38                                         ; $5138: $ff
	rst  $38                                         ; $5139: $ff
	xor  $ff                                         ; $513a: $ee $ff
	sub  c                                           ; $513c: $91
	ld   de, $1111                                   ; $513d: $11 $11 $11
	adc  a                                           ; $5140: $8f
	xor  $ff                                         ; $5141: $ee $ff
	rst  $38                                         ; $5143: $ff
	or   a                                           ; $5144: $b7
	rst  $38                                         ; $5145: $ff
	ld   sp, hl                                      ; $5146: $f9
	ld   de, $1111                                   ; $5147: $11 $11 $11
	ld   [de], a                                     ; $514a: $12
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	sbc  $ff                                         ; $514d: $de $ff
	rst  JumpTable                                         ; $514f: $df
	rst  $38                                         ; $5150: $ff
	ld   d, c                                        ; $5151: $51
	ld   de, $1111                                   ; $5152: $11 $11 $11
	sbc  a                                           ; $5155: $9f
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	db   $fc                                         ; $5158: $fc
	adc  $ff                                         ; $5159: $ce $ff
	and  c                                           ; $515b: $a1
	ld   de, $1111                                   ; $515c: $11 $11 $11
	ld   a, [de]                                     ; $515f: $1a
	rst  $38                                         ; $5160: $ff
	db   $fd                                         ; $5161: $fd
	rst  $38                                         ; $5162: $ff
	cp   d                                           ; $5163: $ba
	rst  $38                                         ; $5164: $ff
	db   $fc                                         ; $5165: $fc
	ld   de, $2111                                   ; $5166: $11 $11 $21
	ld   de, $ceff                                   ; $5169: $11 $ff $ce
	rst  $38                                         ; $516c: $ff
	ld   a, [$ff9f]                                  ; $516d: $fa $9f $ff
	ld   de, $b111                                   ; $5170: $11 $11 $b1
	ld   de, $fc4f                                   ; $5173: $11 $4f $fc
	xor  a                                           ; $5176: $af
	rst  $38                                         ; $5177: $ff
	cp   d                                           ; $5178: $ba
	rst  $38                                         ; $5179: $ff
	db   $d3                                         ; $517a: $d3
	ld   de, $1115                                   ; $517b: $11 $15 $11
	inc  e                                           ; $517e: $1c
	rst  $38                                         ; $517f: $ff
	cp   l                                           ; $5180: $bd
	rst  $38                                         ; $5181: $ff
	db   $fd                                         ; $5182: $fd
	xor  a                                           ; $5183: $af
	pop  af                                          ; $5184: $f1
	ld   de, $411a                                   ; $5185: $11 $1a $41
	inc  de                                          ; $5188: $13
	rst  $38                                         ; $5189: $ff
	rst  $30                                         ; $518a: $f7
	rst  $38                                         ; $518b: $ff
	db   $eb                                         ; $518c: $eb
	rst  JumpTable                                         ; $518d: $df
	cp   $11                                         ; $518e: $fe $11
	ld   de, $11a1                                   ; $5190: $11 $a1 $11
	ld   l, a                                        ; $5193: $6f
	ld   hl, sp+$3f                                  ; $5194: $f8 $3f
	db   $fd                                         ; $5196: $fd
	rst  $38                                         ; $5197: $ff
	xor  a                                           ; $5198: $af
	and  c                                           ; $5199: $a1
	ld   de, $3119                                   ; $519a: $11 $19 $31
	rra                                              ; $519d: $1f
	db   $fd                                         ; $519e: $fd
	cp   a                                           ; $519f: $bf
	rst  $38                                         ; $51a0: $ff
	rst  $10                                         ; $51a1: $d7
	xor  $43                                         ; $51a2: $ee $43
	ld   de, $1181                                   ; $51a4: $11 $81 $11
	rra                                              ; $51a7: $1f
	db   $fd                                         ; $51a8: $fd
	adc  a                                           ; $51a9: $8f
	db   $fc                                         ; $51aa: $fc
	adc  e                                           ; $51ab: $8b
	cp   a                                           ; $51ac: $bf
	pop  hl                                          ; $51ad: $e1
	ld   de, $2145                                   ; $51ae: $11 $45 $21
	rra                                              ; $51b1: $1f
	ld   hl, sp-$41                                  ; $51b2: $f8 $bf
	rst  $38                                         ; $51b4: $ff
	ld   sp, hl                                      ; $51b5: $f9
	sbc  a                                           ; $51b6: $9f
	and  c                                           ; $51b7: $a1
	ld   de, $611a                                   ; $51b8: $11 $1a $61
	inc  de                                          ; $51bb: $13
	rst  JumpTable                                         ; $51bc: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51bd: $cf
	rst  $38                                         ; $51be: $ff
	push af                                          ; $51bf: $f5
	ld   a, a                                        ; $51c0: $7f
	pop  bc                                          ; $51c1: $c1
	ld   de, $912d                                   ; $51c2: $11 $2d $91
	dec  d                                           ; $51c5: $15
	rst  $38                                         ; $51c6: $ff
	push af                                          ; $51c7: $f5
	xor  a                                           ; $51c8: $af
	cp   $b6                                         ; $51c9: $fe $b6
	ld   d, a                                        ; $51cb: $57
	ld   de, $11ad                                   ; $51cc: $11 $ad $11
	ld   de, $82ff                                   ; $51cf: $11 $ff $82

jr_0bb_51d2:
	cp   a                                           ; $51d2: $bf
	db   $fd                                         ; $51d3: $fd
	ld   h, a                                        ; $51d4: $67
	cp   h                                           ; $51d5: $bc
	ld   h, c                                        ; $51d6: $61
	ld   d, $86                                      ; $51d7: $16 $86
	ld   sp, $fa3f                                   ; $51d9: $31 $3f $fa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51dc: $cf
	rst  $38                                         ; $51dd: $ff
	adc  $62                                         ; $51de: $ce $62
	or   c                                           ; $51e0: $b1
	dec  e                                           ; $51e1: $1d
	ld   sp, $6e21                                   ; $51e2: $31 $21 $6e
	ld   sp, hl                                      ; $51e5: $f9
	adc  a                                           ; $51e6: $8f
	cp   $d5                                         ; $51e7: $fe $d5
	cp   l                                           ; $51e9: $bd
	sub  c                                           ; $51ea: $91
	ld   [de], a                                     ; $51eb: $12
	ld   b, [hl]                                     ; $51ec: $46
	sub  c                                           ; $51ed: $91
	ld   e, $fb                                      ; $51ee: $1e $fb
	call z, $f9de                                    ; $51f0: $cc $de $f9
	ld   l, a                                        ; $51f3: $6f
	or   c                                           ; $51f4: $b1
	ld   de, $812a                                   ; $51f5: $11 $2a $81
	ld   d, $ed                                      ; $51f8: $16 $ed
	cp   d                                           ; $51fa: $ba
	ld   a, l                                        ; $51fb: $7d
	ei                                               ; $51fc: $fb
	xor  e                                           ; $51fd: $ab
	adc  c                                           ; $51fe: $89
	ld   d, d                                        ; $51ff: $52
	ld   [de], a                                     ; $5200: $12
	ld   a, [$5b14]                                  ; $5201: $fa $14 $5b
	ld   sp, hl                                      ; $5204: $f9
	ld   e, d                                        ; $5205: $5a
	rst  $38                                         ; $5206: $ff
	sbc  l                                           ; $5207: $9d
	rst  ToBoot                                         ; $5208: $c7
	ld   b, c                                        ; $5209: $41
	jr   jr_0bb_51d2                                 ; $520a: $18 $c6

	ld   b, e                                        ; $520c: $43
	ld   e, d                                        ; $520d: $5a
	cp   h                                           ; $520e: $bc
	ld   a, b                                        ; $520f: $78
	cp   $8b                                         ; $5210: $fe $8b
	halt                                             ; $5212: $76
	db   $db                                         ; $5213: $db
	ld   de, $ba5c                                   ; $5214: $11 $5c $ba
	ld   sp, $b4bf                                   ; $5217: $31 $bf $b4
	adc  [hl]                                        ; $521a: $8e
	reti                                             ; $521b: $d9


	cp   b                                           ; $521c: $b8
	ld   a, l                                        ; $521d: $7d
	sub  e                                           ; $521e: $93
	inc  de                                          ; $521f: $13
	xor  b                                           ; $5220: $a8
	ld   [hl], l                                     ; $5221: $75
	add  hl, de                                      ; $5222: $19
	or   $18                                         ; $5223: $f6 $18
	rst  $38                                         ; $5225: $ff
	or   h                                           ; $5226: $b4
	ld   [hl], $a9                                   ; $5227: $36 $a9
	ld   d, e                                        ; $5229: $53
	ld   e, h                                        ; $522a: $5c
	sub  d                                           ; $522b: $92
	dec  h                                           ; $522c: $25
	rst  $38                                         ; $522d: $ff
	ld   [hl], c                                     ; $522e: $71
	dec  a                                           ; $522f: $3d
	db   $fd                                         ; $5230: $fd
	sub  h                                           ; $5231: $94
	daa                                              ; $5232: $27
	and  h                                           ; $5233: $a4
	ld   a, [hl-]                                    ; $5234: $3a
	bit  2, l                                        ; $5235: $cb $55
	ld   d, [hl]                                     ; $5237: $56
	xor  $77                                         ; $5238: $ee $77
	xor  b                                           ; $523a: $a8
	halt                                             ; $523b: $76
	cp   d                                           ; $523c: $ba
	rla                                              ; $523d: $17
	or   [hl]                                        ; $523e: $b6
	ld   a, b                                        ; $523f: $78
	ld   d, l                                        ; $5240: $55
	ld   a, d                                        ; $5241: $7a
	add  $59                                         ; $5242: $c6 $59
	sbc  h                                           ; $5244: $9c
	or   a                                           ; $5245: $b7
	ld   h, l                                        ; $5246: $65
	sbc  e                                           ; $5247: $9b
	inc  hl                                          ; $5248: $23
	cp   e                                           ; $5249: $bb
	and  a                                           ; $524a: $a7
	dec  [hl]                                        ; $524b: $35
	sbc  e                                           ; $524c: $9b
	jp   $d95e                                       ; $524d: $c3 $5e $d9


	ld   [hl+], a                                    ; $5250: $22
	ld   [hl], a                                     ; $5251: $77
	adc  h                                           ; $5252: $8c
	ld   [hl], l                                     ; $5253: $75
	ld   [hl], a                                     ; $5254: $77
	xor  d                                           ; $5255: $aa
	ld   a, c                                        ; $5256: $79
	ld   h, [hl]                                     ; $5257: $66
	xor  e                                           ; $5258: $ab
	cp   d                                           ; $5259: $ba
	ld   h, l                                        ; $525a: $65
	halt                                             ; $525b: $76
	ld   a, c                                        ; $525c: $79
	xor  b                                           ; $525d: $a8
	ld   b, [hl]                                     ; $525e: $46
	adc  c                                           ; $525f: $89
	sbc  b                                           ; $5260: $98
	halt                                             ; $5261: $76
	adc  d                                           ; $5262: $8a
	and  [hl]                                        ; $5263: $a6
	ld   a, b                                        ; $5264: $78
	ld   a, d                                        ; $5265: $7a
	cp   b                                           ; $5266: $b8
	ld   b, l                                        ; $5267: $45
	sbc  c                                           ; $5268: $99
	xor  c                                           ; $5269: $a9
	ld   [hl], l                                     ; $526a: $75
	ld   a, d                                        ; $526b: $7a
	cp   e                                           ; $526c: $bb
	sbc  b                                           ; $526d: $98
	ld   b, d                                        ; $526e: $42
	ld   l, c                                        ; $526f: $69
	cp   d                                           ; $5270: $ba
	add  [hl]                                        ; $5271: $86
	ld   b, l                                        ; $5272: $45
	xor  l                                           ; $5273: $ad
	xor  c                                           ; $5274: $a9
	ld   d, l                                        ; $5275: $55
	sbc  c                                           ; $5276: $99
	sub  a                                           ; $5277: $97
	ld   d, [hl]                                     ; $5278: $56
	add  a                                           ; $5279: $87
	adc  c                                           ; $527a: $89
	ld   a, b                                        ; $527b: $78
	sbc  b                                           ; $527c: $98
	sbc  c                                           ; $527d: $99
	and  [hl]                                        ; $527e: $a6
	ld   d, a                                        ; $527f: $57
	adc  h                                           ; $5280: $8c
	sub  h                                           ; $5281: $94
	ld   b, a                                        ; $5282: $47
	xor  [hl]                                        ; $5283: $ae
	or   l                                           ; $5284: $b5
	ld   l, b                                        ; $5285: $68
	sbc  d                                           ; $5286: $9a
	halt                                             ; $5287: $76
	sbc  c                                           ; $5288: $99
	add  [hl]                                        ; $5289: $86
	adc  b                                           ; $528a: $88
	ld   l, c                                        ; $528b: $69
	adc  b                                           ; $528c: $88
	sub  a                                           ; $528d: $97
	ld   [hl], a                                     ; $528e: $77
	ld   h, a                                        ; $528f: $67
	adc  c                                           ; $5290: $89
	halt                                             ; $5291: $76
	ld   l, c                                        ; $5292: $69
	sbc  b                                           ; $5293: $98
	add  a                                           ; $5294: $87
	ld   d, a                                        ; $5295: $57
	sbc  d                                           ; $5296: $9a
	sbc  c                                           ; $5297: $99
	ld   [hl], l                                     ; $5298: $75
	ld   a, b                                        ; $5299: $78
	adc  c                                           ; $529a: $89
	xor  d                                           ; $529b: $aa
	sub  a                                           ; $529c: $97
	ld   l, b                                        ; $529d: $68
	cp   d                                           ; $529e: $ba
	halt                                             ; $529f: $76
	ld   a, c                                        ; $52a0: $79
	xor  b                                           ; $52a1: $a8
	ld   a, b                                        ; $52a2: $78
	sbc  c                                           ; $52a3: $99
	sbc  b                                           ; $52a4: $98
	adc  b                                           ; $52a5: $88
	xor  b                                           ; $52a6: $a8
	ld   a, b                                        ; $52a7: $78
	halt                                             ; $52a8: $76
	sbc  c                                           ; $52a9: $99
	sbc  d                                           ; $52aa: $9a
	sub  a                                           ; $52ab: $97
	ld   [hl], a                                     ; $52ac: $77
	sbc  c                                           ; $52ad: $99
	adc  b                                           ; $52ae: $88
	adc  c                                           ; $52af: $89
	add  a                                           ; $52b0: $87
	ld   a, b                                        ; $52b1: $78
	adc  c                                           ; $52b2: $89
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	adc  b                                           ; $52b5: $88
	ld   [hl], a                                     ; $52b6: $77
	adc  b                                           ; $52b7: $88
	sub  a                                           ; $52b8: $97
	halt                                             ; $52b9: $76
	adc  d                                           ; $52ba: $8a
	sub  a                                           ; $52bb: $97
	ld   d, a                                        ; $52bc: $57
	sbc  d                                           ; $52bd: $9a
	add  [hl]                                        ; $52be: $86
	ld   d, a                                        ; $52bf: $57
	xor  b                                           ; $52c0: $a8
	halt                                             ; $52c1: $76
	ld   a, c                                        ; $52c2: $79
	sub  a                                           ; $52c3: $97
	ld   h, [hl]                                     ; $52c4: $66
	adc  c                                           ; $52c5: $89
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	sub  a                                           ; $52c8: $97
	ld   h, [hl]                                     ; $52c9: $66
	ld   a, e                                        ; $52ca: $7b
	cp   b                                           ; $52cb: $b8
	ld   h, a                                        ; $52cc: $67
	sbc  b                                           ; $52cd: $98
	adc  b                                           ; $52ce: $88
	adc  c                                           ; $52cf: $89
	sbc  c                                           ; $52d0: $99
	ld   [hl], a                                     ; $52d1: $77
	adc  c                                           ; $52d2: $89
	sub  a                                           ; $52d3: $97
	ld   [hl], a                                     ; $52d4: $77
	adc  c                                           ; $52d5: $89
	adc  b                                           ; $52d6: $88
	adc  c                                           ; $52d7: $89
	add  a                                           ; $52d8: $87
	adc  c                                           ; $52d9: $89
	adc  b                                           ; $52da: $88
	ld   [hl], a                                     ; $52db: $77
	adc  c                                           ; $52dc: $89
	sbc  b                                           ; $52dd: $98
	ld   [hl], a                                     ; $52de: $77
	adc  c                                           ; $52df: $89
	adc  b                                           ; $52e0: $88
	ld   a, b                                        ; $52e1: $78
	adc  c                                           ; $52e2: $89
	adc  b                                           ; $52e3: $88
	add  a                                           ; $52e4: $87
	ld   a, c                                        ; $52e5: $79
	xor  c                                           ; $52e6: $a9
	ld   [hl], a                                     ; $52e7: $77
	sbc  c                                           ; $52e8: $99
	adc  b                                           ; $52e9: $88
	ld   [hl], a                                     ; $52ea: $77
	adc  b                                           ; $52eb: $88
	sbc  c                                           ; $52ec: $99
	add  a                                           ; $52ed: $87
	adc  c                                           ; $52ee: $89
	adc  c                                           ; $52ef: $89
	add  a                                           ; $52f0: $87
	adc  c                                           ; $52f1: $89
	add  a                                           ; $52f2: $87
	adc  c                                           ; $52f3: $89
	adc  c                                           ; $52f4: $89
	adc  b                                           ; $52f5: $88
	adc  c                                           ; $52f6: $89
	adc  b                                           ; $52f7: $88
	ld   a, b                                        ; $52f8: $78
	sbc  c                                           ; $52f9: $99
	sbc  b                                           ; $52fa: $98
	adc  c                                           ; $52fb: $89
	sbc  c                                           ; $52fc: $99
	adc  b                                           ; $52fd: $88
	sbc  c                                           ; $52fe: $99
	sbc  c                                           ; $52ff: $99
	sbc  c                                           ; $5300: $99
	sbc  b                                           ; $5301: $98
	adc  c                                           ; $5302: $89
	sbc  b                                           ; $5303: $98
	adc  b                                           ; $5304: $88
	adc  c                                           ; $5305: $89
	sbc  b                                           ; $5306: $98
	ld   [hl], a                                     ; $5307: $77
	sbc  c                                           ; $5308: $99
	adc  b                                           ; $5309: $88
	add  a                                           ; $530a: $87
	ld   a, b                                        ; $530b: $78
	sbc  b                                           ; $530c: $98
	adc  b                                           ; $530d: $88
	ld   a, b                                        ; $530e: $78
	adc  b                                           ; $530f: $88
	ld   [hl], a                                     ; $5310: $77
	ld   a, b                                        ; $5311: $78
	adc  c                                           ; $5312: $89
	add  a                                           ; $5313: $87
	ld   a, b                                        ; $5314: $78
	adc  c                                           ; $5315: $89
	ld   [hl], a                                     ; $5316: $77
	ld   a, b                                        ; $5317: $78
	adc  b                                           ; $5318: $88
	ld   [hl], a                                     ; $5319: $77
	adc  b                                           ; $531a: $88
	ld   [hl], a                                     ; $531b: $77
	ld   [hl], a                                     ; $531c: $77
	ld   [hl], a                                     ; $531d: $77
	adc  b                                           ; $531e: $88
	add  a                                           ; $531f: $87
	ld   [hl], a                                     ; $5320: $77
	ld   [hl], a                                     ; $5321: $77
	adc  b                                           ; $5322: $88
	ld   [hl], a                                     ; $5323: $77
	ld   a, b                                        ; $5324: $78
	ld   a, b                                        ; $5325: $78
	ld   [hl], a                                     ; $5326: $77
	adc  c                                           ; $5327: $89
	sbc  b                                           ; $5328: $98
	ld   a, b                                        ; $5329: $78
	adc  c                                           ; $532a: $89
	ld   [hl], a                                     ; $532b: $77
	adc  b                                           ; $532c: $88
	sbc  c                                           ; $532d: $99
	adc  b                                           ; $532e: $88
	sbc  b                                           ; $532f: $98
	adc  b                                           ; $5330: $88
	adc  b                                           ; $5331: $88
	sbc  b                                           ; $5332: $98
	adc  b                                           ; $5333: $88
	adc  b                                           ; $5334: $88
	adc  c                                           ; $5335: $89
	adc  b                                           ; $5336: $88
	add  a                                           ; $5337: $87
	adc  c                                           ; $5338: $89
	adc  b                                           ; $5339: $88
	adc  b                                           ; $533a: $88
	adc  b                                           ; $533b: $88
	sbc  b                                           ; $533c: $98
	ld   a, b                                        ; $533d: $78
	sbc  c                                           ; $533e: $99
	add  a                                           ; $533f: $87
	ld   a, b                                        ; $5340: $78
	sbc  b                                           ; $5341: $98
	add  a                                           ; $5342: $87
	adc  c                                           ; $5343: $89
	sbc  c                                           ; $5344: $99
	add  a                                           ; $5345: $87
	ld   a, b                                        ; $5346: $78
	add  a                                           ; $5347: $87
	adc  b                                           ; $5348: $88
	sbc  b                                           ; $5349: $98
	adc  b                                           ; $534a: $88
	adc  b                                           ; $534b: $88
	adc  b                                           ; $534c: $88
	adc  b                                           ; $534d: $88
	adc  b                                           ; $534e: $88
	adc  b                                           ; $534f: $88
	adc  b                                           ; $5350: $88
	adc  b                                           ; $5351: $88
	adc  b                                           ; $5352: $88
	adc  b                                           ; $5353: $88
	adc  b                                           ; $5354: $88
	adc  b                                           ; $5355: $88
	ld   a, b                                        ; $5356: $78
	adc  c                                           ; $5357: $89
	add  a                                           ; $5358: $87
	adc  b                                           ; $5359: $88
	adc  b                                           ; $535a: $88
	adc  b                                           ; $535b: $88
	adc  b                                           ; $535c: $88
	adc  b                                           ; $535d: $88
	adc  b                                           ; $535e: $88
	adc  b                                           ; $535f: $88
	adc  b                                           ; $5360: $88
	adc  b                                           ; $5361: $88
	sbc  c                                           ; $5362: $99
	adc  b                                           ; $5363: $88
	adc  b                                           ; $5364: $88
	adc  c                                           ; $5365: $89
	adc  b                                           ; $5366: $88
	adc  c                                           ; $5367: $89
	sbc  b                                           ; $5368: $98
	adc  b                                           ; $5369: $88
	adc  b                                           ; $536a: $88
	adc  b                                           ; $536b: $88
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	adc  b                                           ; $536e: $88
	adc  b                                           ; $536f: $88
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	adc  b                                           ; $5373: $88
	add  a                                           ; $5374: $87
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	adc  b                                           ; $5377: $88
	adc  b                                           ; $5378: $88
	adc  b                                           ; $5379: $88
	adc  b                                           ; $537a: $88
	adc  b                                           ; $537b: $88
	adc  b                                           ; $537c: $88
	adc  b                                           ; $537d: $88
	adc  b                                           ; $537e: $88
	adc  b                                           ; $537f: $88
	adc  b                                           ; $5380: $88
	adc  c                                           ; $5381: $89
	adc  b                                           ; $5382: $88
	ld   a, b                                        ; $5383: $78
	adc  b                                           ; $5384: $88
	adc  c                                           ; $5385: $89
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	sbc  c                                           ; $5389: $99
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	adc  b                                           ; $538c: $88
	adc  b                                           ; $538d: $88
	adc  b                                           ; $538e: $88
	adc  b                                           ; $538f: $88
	adc  b                                           ; $5390: $88
	adc  b                                           ; $5391: $88
	adc  b                                           ; $5392: $88
	adc  b                                           ; $5393: $88
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88

Jump_0bb_5396:
	adc  b                                           ; $5396: $88
	add  a                                           ; $5397: $87
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  b                                           ; $539a: $88
	adc  b                                           ; $539b: $88
	adc  b                                           ; $539c: $88
	adc  b                                           ; $539d: $88
	adc  b                                           ; $539e: $88
	adc  b                                           ; $539f: $88
	adc  b                                           ; $53a0: $88
	adc  b                                           ; $53a1: $88
	adc  b                                           ; $53a2: $88
	adc  b                                           ; $53a3: $88
	adc  b                                           ; $53a4: $88
	adc  b                                           ; $53a5: $88
	adc  b                                           ; $53a6: $88
	adc  b                                           ; $53a7: $88
	adc  b                                           ; $53a8: $88
	adc  b                                           ; $53a9: $88
	adc  b                                           ; $53aa: $88
	adc  b                                           ; $53ab: $88
	adc  b                                           ; $53ac: $88
	adc  b                                           ; $53ad: $88
	adc  b                                           ; $53ae: $88
	adc  b                                           ; $53af: $88
	adc  b                                           ; $53b0: $88
	adc  b                                           ; $53b1: $88
	adc  b                                           ; $53b2: $88
	adc  b                                           ; $53b3: $88
	adc  b                                           ; $53b4: $88
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	adc  b                                           ; $53b7: $88
	adc  b                                           ; $53b8: $88
	adc  b                                           ; $53b9: $88
	adc  b                                           ; $53ba: $88
	adc  b                                           ; $53bb: $88
	adc  b                                           ; $53bc: $88
	adc  b                                           ; $53bd: $88
	adc  b                                           ; $53be: $88
	adc  b                                           ; $53bf: $88
	adc  b                                           ; $53c0: $88
	adc  b                                           ; $53c1: $88
	adc  b                                           ; $53c2: $88
	adc  b                                           ; $53c3: $88
	adc  b                                           ; $53c4: $88
	adc  b                                           ; $53c5: $88
	adc  b                                           ; $53c6: $88
	adc  b                                           ; $53c7: $88
	adc  b                                           ; $53c8: $88
	adc  b                                           ; $53c9: $88
	adc  b                                           ; $53ca: $88
	adc  b                                           ; $53cb: $88
	adc  b                                           ; $53cc: $88
	adc  b                                           ; $53cd: $88
	adc  b                                           ; $53ce: $88
	adc  b                                           ; $53cf: $88
	adc  b                                           ; $53d0: $88
	adc  b                                           ; $53d1: $88
	adc  b                                           ; $53d2: $88
	adc  b                                           ; $53d3: $88
	adc  b                                           ; $53d4: $88
	adc  b                                           ; $53d5: $88
	adc  b                                           ; $53d6: $88
	adc  b                                           ; $53d7: $88
	adc  b                                           ; $53d8: $88
	adc  b                                           ; $53d9: $88
	adc  b                                           ; $53da: $88
	adc  b                                           ; $53db: $88
	adc  b                                           ; $53dc: $88
	adc  b                                           ; $53dd: $88
	adc  b                                           ; $53de: $88
	adc  b                                           ; $53df: $88
	adc  b                                           ; $53e0: $88
	adc  b                                           ; $53e1: $88
	adc  b                                           ; $53e2: $88
	adc  b                                           ; $53e3: $88
	adc  b                                           ; $53e4: $88
	adc  b                                           ; $53e5: $88
	adc  b                                           ; $53e6: $88
	adc  b                                           ; $53e7: $88
	adc  b                                           ; $53e8: $88
	adc  b                                           ; $53e9: $88
	adc  b                                           ; $53ea: $88
	adc  b                                           ; $53eb: $88
	adc  b                                           ; $53ec: $88
	adc  b                                           ; $53ed: $88
	adc  b                                           ; $53ee: $88
	ld   de, $1111                                   ; $53ef: $11 $11 $11
	ld   de, $1111                                   ; $53f2: $11 $11 $11
	ld   de, $1111                                   ; $53f5: $11 $11 $11
	ld   de, $1111                                   ; $53f8: $11 $11 $11
	ld   de, $1111                                   ; $53fb: $11 $11 $11
	ld   de, $1111                                   ; $53fe: $11 $11 $11
	ld   de, $1111                                   ; $5401: $11 $11 $11
	ld   de, $1111                                   ; $5404: $11 $11 $11
	ld   de, $1111                                   ; $5407: $11 $11 $11
	ld   de, $1111                                   ; $540a: $11 $11 $11
	ld   de, $1111                                   ; $540d: $11 $11 $11
	ld   de, $1111                                   ; $5410: $11 $11 $11
	ld   de, $1111                                   ; $5413: $11 $11 $11
	nop                                              ; $5416: $00
	ld   c, b                                        ; $5417: $48
	ld   de, $1111                                   ; $5418: $11 $11 $11
	ld   de, $1111                                   ; $541b: $11 $11 $11
	ld   de, $1111                                   ; $541e: $11 $11 $11
	ld   de, $5413                                   ; $5421: $11 $13 $54
	ld   d, h                                        ; $5424: $54
	ld   d, h                                        ; $5425: $54
	ld   b, c                                        ; $5426: $41
	rra                                              ; $5427: $1f
	rst  $38                                         ; $5428: $ff
	pop  af                                          ; $5429: $f1
	ld   de, $1911                                   ; $542a: $11 $11 $19
	sub  c                                           ; $542d: $91
	ld   de, $de1c                                   ; $542e: $11 $1c $de
	call z, $c1de                                    ; $5431: $cc $de $c1
	ld   de, $1111                                   ; $5434: $11 $11 $11
	ld   de, $1111                                   ; $5437: $11 $11 $11
	ld   de, $1111                                   ; $543a: $11 $11 $11
	ld   de, $1111                                   ; $543d: $11 $11 $11
	ld   de, $5411                                   ; $5440: $11 $11 $54
	ld   b, h                                        ; $5443: $44
	sbc  c                                           ; $5444: $99
	ld   de, $5454                                   ; $5445: $11 $54 $54
	ld   h, a                                        ; $5448: $67
	ld   [hl], d                                     ; $5449: $72
	ld   de, $1111                                   ; $544a: $11 $11 $11
	ld   de, $1112                                   ; $544d: $11 $12 $11
	ld   [de], a                                     ; $5450: $12
	ld   de, $1111                                   ; $5451: $11 $11 $11
	ld   h, [hl]                                     ; $5454: $66
	halt                                             ; $5455: $76
	ld   l, c                                        ; $5456: $69
	ld   de, $8888                                   ; $5457: $11 $88 $88
	adc  d                                           ; $545a: $8a
	xor  c                                           ; $545b: $a9
	sub  a                                           ; $545c: $97
	sbc  c                                           ; $545d: $99
	adc  c                                           ; $545e: $89
	ld   [hl], a                                     ; $545f: $77
	ld   a, c                                        ; $5460: $79
	sbc  b                                           ; $5461: $98
	ld   [hl], a                                     ; $5462: $77
	adc  b                                           ; $5463: $88
	adc  b                                           ; $5464: $88
	adc  c                                           ; $5465: $89
	adc  c                                           ; $5466: $89
	sbc  c                                           ; $5467: $99
	sbc  c                                           ; $5468: $99
	add  a                                           ; $5469: $87
	ld   a, b                                        ; $546a: $78
	ld   [hl], a                                     ; $546b: $77
	ld   [hl], a                                     ; $546c: $77
	ld   a, c                                        ; $546d: $79
	adc  b                                           ; $546e: $88
	adc  b                                           ; $546f: $88
	ld   [hl], a                                     ; $5470: $77
	ld   [hl], a                                     ; $5471: $77
	add  a                                           ; $5472: $87
	ld   [hl], a                                     ; $5473: $77
	ld   [hl], a                                     ; $5474: $77
	adc  b                                           ; $5475: $88
	sbc  c                                           ; $5476: $99
	add  a                                           ; $5477: $87
	ld   a, b                                        ; $5478: $78
	halt                                             ; $5479: $76
	ld   [hl], a                                     ; $547a: $77
	sbc  c                                           ; $547b: $99
	add  a                                           ; $547c: $87
	ld   [hl], a                                     ; $547d: $77
	ld   [hl], a                                     ; $547e: $77
	ld   a, b                                        ; $547f: $78
	adc  b                                           ; $5480: $88
	ld   [hl], a                                     ; $5481: $77
	ld   [hl], a                                     ; $5482: $77
	ld   [hl], a                                     ; $5483: $77
	ld   a, b                                        ; $5484: $78

Jump_0bb_5485:
	adc  b                                           ; $5485: $88
	ld   [hl], a                                     ; $5486: $77
	adc  b                                           ; $5487: $88
	adc  c                                           ; $5488: $89
	adc  b                                           ; $5489: $88
	adc  c                                           ; $548a: $89
	ld   [hl], a                                     ; $548b: $77
	ld   [hl], a                                     ; $548c: $77
	ld   a, c                                        ; $548d: $79
	sbc  b                                           ; $548e: $98
	adc  c                                           ; $548f: $89
	xor  b                                           ; $5490: $a8
	ld   [hl], a                                     ; $5491: $77
	ld   [hl], a                                     ; $5492: $77
	halt                                             ; $5493: $76
	ld   h, [hl]                                     ; $5494: $66
	ld   [hl], a                                     ; $5495: $77
	halt                                             ; $5496: $76
	ld   a, b                                        ; $5497: $78
	halt                                             ; $5498: $76
	ld   h, a                                        ; $5499: $67
	ld   a, b                                        ; $549a: $78
	ld   h, l                                        ; $549b: $65
	ld   h, a                                        ; $549c: $67
	sub  a                                           ; $549d: $97
	sbc  d                                           ; $549e: $9a
	ld   a, c                                        ; $549f: $79
	jp   c, Jump_0bb_7787                            ; $54a0: $da $87 $77

	ld   a, d                                        ; $54a3: $7a
	ld   [hl], l                                     ; $54a4: $75
	ld   e, b                                        ; $54a5: $58
	add  a                                           ; $54a6: $87
	and  [hl]                                        ; $54a7: $a6
	ld   d, a                                        ; $54a8: $57
	sbc  c                                           ; $54a9: $99
	ld   a, b                                        ; $54aa: $78
	ld   b, a                                        ; $54ab: $47
	ld   a, d                                        ; $54ac: $7a
	sub  l                                           ; $54ad: $95
	sub  [hl]                                        ; $54ae: $96
	xor  h                                           ; $54af: $ac
	cp   c                                           ; $54b0: $b9
	ld   a, d                                        ; $54b1: $7a
	ld   l, b                                        ; $54b2: $68
	ld   [hl], a                                     ; $54b3: $77
	ld   d, l                                        ; $54b4: $55
	sbc  b                                           ; $54b5: $98
	sbc  c                                           ; $54b6: $99
	and  a                                           ; $54b7: $a7
	sbc  c                                           ; $54b8: $99
	ld   [hl], a                                     ; $54b9: $77
	ld   a, c                                        ; $54ba: $79
	adc  c                                           ; $54bb: $89
	xor  d                                           ; $54bc: $aa
	ld   [hl], a                                     ; $54bd: $77
	halt                                             ; $54be: $76
	ld   a, d                                        ; $54bf: $7a
	adc  b                                           ; $54c0: $88
	xor  h                                           ; $54c1: $ac
	ret  z                                           ; $54c2: $c8

	add  a                                           ; $54c3: $87
	ld   a, b                                        ; $54c4: $78
	xor  e                                           ; $54c5: $ab
	ld   a, b                                        ; $54c6: $78
	sbc  e                                           ; $54c7: $9b
	sub  [hl]                                        ; $54c8: $96
	ld   d, l                                        ; $54c9: $55
	adc  d                                           ; $54ca: $8a
	ld   [hl], h                                     ; $54cb: $74
	ld   c, b                                        ; $54cc: $48
	cp   c                                           ; $54cd: $b9
	add  [hl]                                        ; $54ce: $86
	sbc  d                                           ; $54cf: $9a
	adc  c                                           ; $54d0: $89
	ld   d, [hl]                                     ; $54d1: $56
	xor  l                                           ; $54d2: $ad
	sub  [hl]                                        ; $54d3: $96
	sbc  h                                           ; $54d4: $9c
	db   $dd                                         ; $54d5: $dd
	or   [hl]                                        ; $54d6: $b6
	ld   e, d                                        ; $54d7: $5a
	add  a                                           ; $54d8: $87
	ld   e, b                                        ; $54d9: $58
	sbc  b                                           ; $54da: $98
	ret  c                                           ; $54db: $d8

	ld   h, l                                        ; $54dc: $65
	add  a                                           ; $54dd: $87
	ld   d, h                                        ; $54de: $54
	ld   b, a                                        ; $54df: $47
	cp   h                                           ; $54e0: $bc
	ld   h, a                                        ; $54e1: $67
	ld   a, b                                        ; $54e2: $78
	xor  b                                           ; $54e3: $a8
	halt                                             ; $54e4: $76
	xor  e                                           ; $54e5: $ab
	adc  $ca                                         ; $54e6: $ce $ca
	ld   a, c                                        ; $54e8: $79
	xor  h                                           ; $54e9: $ac
	cp   c                                           ; $54ea: $b9
	adc  b                                           ; $54eb: $88
	add  l                                           ; $54ec: $85
	ld   a, b                                        ; $54ed: $78
	ld   [hl], a                                     ; $54ee: $77
	ld   h, a                                        ; $54ef: $67
	adc  d                                           ; $54f0: $8a
	add  l                                           ; $54f1: $85
	inc  [hl]                                        ; $54f2: $34
	ld   a, d                                        ; $54f3: $7a
	xor  b                                           ; $54f4: $a8
	ld   h, a                                        ; $54f5: $67
	and  a                                           ; $54f6: $a7
	add  a                                           ; $54f7: $87
	ld   a, d                                        ; $54f8: $7a
	xor  a                                           ; $54f9: $af
	cp   e                                           ; $54fa: $bb
	sub  [hl]                                        ; $54fb: $96
	cp   c                                           ; $54fc: $b9
	cp   b                                           ; $54fd: $b8
	ld   l, c                                        ; $54fe: $69
	ld   l, c                                        ; $54ff: $69
	ld   d, a                                        ; $5500: $57
	ld   [hl], a                                     ; $5501: $77
	or   a                                           ; $5502: $b7
	ld   [hl], e                                     ; $5503: $73
	add  a                                           ; $5504: $87
	ld   d, l                                        ; $5505: $55
	ld   e, e                                        ; $5506: $5b
	xor  l                                           ; $5507: $ad
	ld   d, h                                        ; $5508: $54
	ld   d, [hl]                                     ; $5509: $56
	adc  b                                           ; $550a: $88
	or   a                                           ; $550b: $b7
	call z, $8bc9                                    ; $550c: $cc $c9 $8b
	ld   a, e                                        ; $550f: $7b
	sbc  b                                           ; $5510: $98

Jump_0bb_5511:
	sub  a                                           ; $5511: $97
	ld   [hl], h                                     ; $5512: $74
	ld   d, l                                        ; $5513: $55
	ld   l, d                                        ; $5514: $6a
	and  [hl]                                        ; $5515: $a6
	ld   d, a                                        ; $5516: $57
	ld   a, b                                        ; $5517: $78
	rst  ToBoot                                         ; $5518: $c7
	ld   e, b                                        ; $5519: $58
	sbc  e                                           ; $551a: $9b
	ld   [hl], l                                     ; $551b: $75
	ld   l, c                                        ; $551c: $69
	sbc  d                                           ; $551d: $9a
	sbc  b                                           ; $551e: $98
	sbc  b                                           ; $551f: $98
	xor  d                                           ; $5520: $aa
	sbc  c                                           ; $5521: $99
	call Call_0bb_79b7                               ; $5522: $cd $b7 $79
	sbc  e                                           ; $5525: $9b
	sbc  b                                           ; $5526: $98
	ld   [hl], a                                     ; $5527: $77
	ld   h, l                                        ; $5528: $65
	ld   h, l                                        ; $5529: $65
	adc  c                                           ; $552a: $89
	ld   d, e                                        ; $552b: $53
	dec  [hl]                                        ; $552c: $35
	ld   b, l                                        ; $552d: $45
	ld   h, a                                        ; $552e: $67
	ld   a, d                                        ; $552f: $7a
	sbc  c                                           ; $5530: $99
	add  [hl]                                        ; $5531: $86
	xor  b                                           ; $5532: $a8
	ld   h, a                                        ; $5533: $67
	xor  l                                           ; $5534: $ad
	cp   d                                           ; $5535: $ba
	cp   h                                           ; $5536: $bc

jr_0bb_5537:
	cp   e                                           ; $5537: $bb
	ret                                              ; $5538: $c9


	ld   d, a                                        ; $5539: $57
	cp   [hl]                                        ; $553a: $be
	add  $32                                         ; $553b: $c6 $32
	ld   c, b                                        ; $553d: $48
	sbc  b                                           ; $553e: $98
	ld   b, c                                        ; $553f: $41
	ld   b, [hl]                                     ; $5540: $46
	xor  d                                           ; $5541: $aa
	inc  [hl]                                        ; $5542: $34
	ld   e, c                                        ; $5543: $59
	rst  ToBoot                                         ; $5544: $c7
	ld   [hl], c                                     ; $5545: $71
	ld   a, [hl+]                                    ; $5546: $2a
	rst  JumpTable                                         ; $5547: $df
	and  [hl]                                        ; $5548: $a6
	xor  e                                           ; $5549: $ab
	call c, Call_0bb_5999                            ; $554a: $dc $99 $59
	call z, Call_0bb_79b6                            ; $554d: $cc $b6 $79
	rst  $28                                         ; $5550: $ef
	and  a                                           ; $5551: $a7
	ld   h, a                                        ; $5552: $67
	add  [hl]                                        ; $5553: $86
	ld   d, l                                        ; $5554: $55
	ld   b, l                                        ; $5555: $45
	ld   b, d                                        ; $5556: $42
	ld   de, $1711                                   ; $5557: $11 $11 $17
	rst  $28                                         ; $555a: $ef
	cp   $83                                         ; $555b: $fe $83
	add  hl, sp                                      ; $555d: $39
	cp   [hl]                                        ; $555e: $be
	cp   d                                           ; $555f: $ba
	adc  c                                           ; $5560: $89
	adc  $95                                         ; $5561: $ce $95
	ld   b, l                                        ; $5563: $45
	sbc  [hl]                                        ; $5564: $9e
	ei                                               ; $5565: $fb
	add  a                                           ; $5566: $87
	sbc  d                                           ; $5567: $9a
	sub  a                                           ; $5568: $97
	ld   hl, $9228                                   ; $5569: $21 $28 $92
	ld   de, $1111                                   ; $556c: $11 $11 $11
	xor  a                                           ; $556f: $af
	rst  $38                                         ; $5570: $ff
	ld   sp, $d914                                   ; $5571: $31 $14 $d9
	ld   de, $ff4f                                   ; $5574: $11 $4f $ff
	pop  af                                          ; $5577: $f1
	ld   de, $71bc                                   ; $5578: $11 $bc $71
	ld   c, a                                        ; $557b: $4f
	rst  $38                                         ; $557c: $ff
	and  c                                           ; $557d: $a1
	ld   de, $3169                                   ; $557e: $11 $69 $31
	ld   de, $1131                                   ; $5581: $11 $31 $11
	rst  $38                                         ; $5584: $ff
	push af                                          ; $5585: $f5
	ld   de, $f16b                                   ; $5586: $11 $6b $f1
	inc  d                                           ; $5589: $14
	rst  $38                                         ; $558a: $ff
	cp   $11                                         ; $558b: $fe $11
	ld   l, a                                        ; $558d: $6f
	ldh  a, [c]                                      ; $558e: $f2
	ld   de, $ff7f                                   ; $558f: $11 $7f $ff
	sub  c                                           ; $5592: $91
	jr   c, jr_0bb_5537                              ; $5593: $38 $a2

	ld   de, $1113                                   ; $5595: $11 $13 $11
	dec  de                                          ; $5598: $1b
	rst  $38                                         ; $5599: $ff
	pop  af                                          ; $559a: $f1
	inc  d                                           ; $559b: $14
	sbc  a                                           ; $559c: $9f
	pop  hl                                          ; $559d: $e1
	rla                                              ; $559e: $17
	rst  $38                                         ; $559f: $ff
	db   $f4                                         ; $55a0: $f4
	ld   de, $f89f                                   ; $55a1: $11 $9f $f8
	ld   [de], a                                     ; $55a4: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a5: $cf
	rst  $38                                         ; $55a6: $ff
	ld   h, c                                        ; $55a7: $61
	ld   e, e                                        ; $55a8: $5b
	push de                                          ; $55a9: $d5
	ld   de, $1111                                   ; $55aa: $11 $11 $11
	rra                                              ; $55ad: $1f
	rst  $38                                         ; $55ae: $ff
	pop  bc                                          ; $55af: $c1
	ld   e, [hl]                                     ; $55b0: $5e
	ld   c, a                                        ; $55b1: $4f
	ld   de, $ff1f                                   ; $55b2: $11 $1f $ff
	and  a                                           ; $55b5: $a7
	ld   c, c                                        ; $55b6: $49
	db   $fd                                         ; $55b7: $fd
	ld   b, c                                        ; $55b8: $41
	rra                                              ; $55b9: $1f
	call $ffb8                                       ; $55ba: $cd $b8 $ff
	db   $fc                                         ; $55bd: $fc
	ld   de, $1112                                   ; $55be: $11 $12 $11
	ld   de, $ff1f                                   ; $55c1: $11 $1f $ff
	ld   de, $8c4f                                   ; $55c4: $11 $4f $8c
	ld   de, $ff4f                                   ; $55c7: $11 $4f $ff
	ld   de, $f81f                                   ; $55ca: $11 $1f $f8
	ld   de, $ff1f                                   ; $55cd: $11 $1f $ff
	ld   [hl+], a                                    ; $55d0: $22
	rst  $38                                         ; $55d1: $ff
	rst  $30                                         ; $55d2: $f7
	ld   de, $1116                                   ; $55d3: $11 $16 $11
	ld   de, $f7af                                   ; $55d6: $11 $af $f7
	ld   de, $71ff                                   ; $55d9: $11 $ff $71
	ld   de, $f2ff                                   ; $55dc: $11 $ff $f2
	ld   a, [hl+]                                    ; $55df: $2a
	rst  $28                                         ; $55e0: $ef
	and  c                                           ; $55e1: $a1
	ld   de, $f5ff                                   ; $55e2: $11 $ff $f5
	cpl                                              ; $55e5: $2f
	rst  $38                                         ; $55e6: $ff
	ld   h, c                                        ; $55e7: $61
	ld   [de], a                                     ; $55e8: $12
	add  c                                           ; $55e9: $81
	ld   de, $ff16                                   ; $55ea: $11 $16 $ff
	ld   d, c                                        ; $55ed: $51
	rra                                              ; $55ee: $1f
	pop  af                                          ; $55ef: $f1
	ld   de, $ff1f                                   ; $55f0: $11 $1f $ff
	ld   [de], a                                     ; $55f3: $12
	rst  $38                                         ; $55f4: $ff
	push af                                          ; $55f5: $f5
	ld   de, $fa1f                                   ; $55f6: $11 $1f $fa
	ld   c, c                                        ; $55f9: $49
	rst  $38                                         ; $55fa: $ff
	ldh  a, [c]                                      ; $55fb: $f2
	ld   de, $1144                                   ; $55fc: $11 $44 $11
	ld   de, $f1ff                                   ; $55ff: $11 $ff $f1
	ld   e, $f6                                      ; $5602: $1e $f6
	ld   de, $ff1d                                   ; $5604: $11 $1d $ff
	and  c                                           ; $5607: $a1
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	ld   de, $f21e                                   ; $560a: $11 $1e $f2
	ld   h, a                                        ; $560d: $67
	rst  $38                                         ; $560e: $ff
	rst  $30                                         ; $560f: $f7
	ld   de, $1154                                   ; $5610: $11 $54 $11
	ld   de, $f1ff                                   ; $5613: $11 $ff $f1
	cpl                                              ; $5616: $2f
	ld   sp, hl                                      ; $5617: $f9
	ld   de, $ff1b                                   ; $5618: $11 $1b $ff
	ld   [hl], c                                     ; $561b: $71
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	ld   de, $c139                                   ; $561e: $11 $39 $c1
	dec  hl                                          ; $5621: $2b
	rst  $38                                         ; $5622: $ff
	ei                                               ; $5623: $fb
	inc  [hl]                                        ; $5624: $34
	ld   b, c                                        ; $5625: $41
	ld   de, rAUD1LEN                                   ; $5626: $11 $11 $ff
	sub  d                                           ; $5629: $92
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $562a: $cf
	pop  af                                          ; $562b: $f1
	ld   de, $7a1f                                   ; $562c: $11 $1f $7a
	ld   de, $fcff                                   ; $562f: $11 $ff $fc
	dec  de                                          ; $5632: $1b
	rla                                              ; $5633: $17
	ld   hl, $ff59                                   ; $5634: $21 $59 $ff
	sbc  $85                                         ; $5637: $de $85
	ld   de, $1f11                                   ; $5639: $11 $11 $1f
	pop  af                                          ; $563c: $f1
	ld   e, a                                        ; $563d: $5f
	rst  $38                                         ; $563e: $ff
	ld   [hl-], a                                    ; $563f: $32
	ld   de, $11d1                                   ; $5640: $11 $d1 $11
	ld   a, a                                        ; $5643: $7f
	rst  $38                                         ; $5644: $ff
	sbc  $fb                                         ; $5645: $de $fb
	add  c                                           ; $5647: $81
	inc  d                                           ; $5648: $14
	ld   a, l                                        ; $5649: $7d
	sbc  d                                           ; $564a: $9a
	db   $ed                                         ; $564b: $ed
	add  c                                           ; $564c: $81
	ld   de, $f11f                                   ; $564d: $11 $1f $f1
	xor  a                                           ; $5650: $af
	rst  $38                                         ; $5651: $ff
	ld   c, a                                        ; $5652: $4f
	ld   [de], a                                     ; $5653: $12
	pop  af                                          ; $5654: $f1
	ld   de, $6f5f                                   ; $5655: $11 $5f $6f
	rst  $38                                         ; $5658: $ff
	db   $fc                                         ; $5659: $fc
	call nz, $128c                                   ; $565a: $c4 $8c $12
	ld   c, d                                        ; $565d: $4a
	add  $41                                         ; $565e: $c6 $41
	ld   de, $f211                                   ; $5660: $11 $11 $f2
	rra                                              ; $5663: $1f
	rst  $38                                         ; $5664: $ff
	ld   d, [hl]                                     ; $5665: $56
	pop  af                                          ; $5666: $f1
	pop  de                                          ; $5667: $d1
	ld   de, $761f                                   ; $5668: $11 $1f $76
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	adc  l                                           ; $566d: $8d
	xor  [hl]                                        ; $566e: $ae
	ld   d, c                                        ; $566f: $51
	ld   d, a                                        ; $5670: $57
	and  e                                           ; $5671: $a3
	ld   de, $1211                                   ; $5672: $11 $11 $12
	push af                                          ; $5675: $f5
	rra                                              ; $5676: $1f
	rst  $38                                         ; $5677: $ff
	sub  e                                           ; $5678: $93
	pop  af                                          ; $5679: $f1
	pop  af                                          ; $567a: $f1
	ld   de, $511f                                   ; $567b: $11 $1f $51
	rst  $38                                         ; $567e: $ff
	rst  $38                                         ; $567f: $ff
	sbc  a                                           ; $5680: $9f
	rst  $38                                         ; $5681: $ff
	ld   d, c                                        ; $5682: $51
	ld   l, c                                        ; $5683: $69
	ld   [hl], c                                     ; $5684: $71
	ld   de, $1511                                   ; $5685: $11 $11 $15
	di                                               ; $5688: $f3
	rra                                              ; $5689: $1f
	rst  $38                                         ; $568a: $ff
	sub  [hl]                                        ; $568b: $96
	di                                               ; $568c: $f3
	pop  hl                                          ; $568d: $e1
	ld   de, $111b                                   ; $568e: $11 $1b $11
	rst  $38                                         ; $5691: $ff
	rst  $38                                         ; $5692: $ff
	rst  $38                                         ; $5693: $ff
	db   $fc                                         ; $5694: $fc
	ld   h, e                                        ; $5695: $63
	add  a                                           ; $5696: $87
	ld   de, $1111                                   ; $5697: $11 $11 $11
	rra                                              ; $569a: $1f
	pop  af                                          ; $569b: $f1
	rra                                              ; $569c: $1f
	rst  $38                                         ; $569d: $ff
	add  hl, sp                                      ; $569e: $39
	ld   hl, sp-$3f                                  ; $569f: $f8 $c1
	ld   de, $1315                                   ; $56a1: $11 $15 $13
	rst  $38                                         ; $56a4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a5: $cf
	rst  $38                                         ; $56a6: $ff

Call_0bb_56a7:
	db   $fc                                         ; $56a7: $fc
	cp   b                                           ; $56a8: $b8
	or   h                                           ; $56a9: $b4
	ld   de, $1111                                   ; $56aa: $11 $11 $11
	rra                                              ; $56ad: $1f
	pop  af                                          ; $56ae: $f1
	ld   e, a                                        ; $56af: $5f
	rst  $38                                         ; $56b0: $ff
	rra                                              ; $56b1: $1f
	push af                                          ; $56b2: $f5
	ld   d, c                                        ; $56b3: $51
	ld   hl, $1b11                                   ; $56b4: $21 $11 $1b
	db   $fc                                         ; $56b7: $fc
	rst  JumpTable                                         ; $56b8: $df
	rst  $38                                         ; $56b9: $ff
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	add  c                                           ; $56bc: $81
	ld   de, $1111                                   ; $56bd: $11 $11 $11
	xor  a                                           ; $56c0: $af
	ld   de, $f5ff                                   ; $56c1: $11 $ff $f5
	rst  $38                                         ; $56c4: $ff
	push af                                          ; $56c5: $f5
	ld   de, $1161                                   ; $56c6: $11 $61 $11
	rra                                              ; $56c9: $1f
	ld   h, c                                        ; $56ca: $61
	rst  $38                                         ; $56cb: $ff
	rst  $38                                         ; $56cc: $ff
	rst  $38                                         ; $56cd: $ff
	ei                                               ; $56ce: $fb
	ld   d, e                                        ; $56cf: $53
	ld   de, $1111                                   ; $56d0: $11 $11 $11
	ld   a, [$ff16]                                  ; $56d3: $fa $16 $ff
	ei                                               ; $56d6: $fb
	rst  $38                                         ; $56d7: $ff
	xor  d                                           ; $56d8: $aa
	ld   l, l                                        ; $56d9: $6d
	ld   de, $5111                                   ; $56da: $11 $11 $51
	dec  d                                           ; $56dd: $15
	rst  $38                                         ; $56de: $ff
	rst  $38                                         ; $56df: $ff
	rst  $38                                         ; $56e0: $ff
	rst  $38                                         ; $56e1: $ff
	db   $fc                                         ; $56e2: $fc
	ld   de, $1111                                   ; $56e3: $11 $11 $11
	ld   b, c                                        ; $56e6: $41
	rra                                              ; $56e7: $1f
	rst  $38                                         ; $56e8: $ff
	rst  $28                                         ; $56e9: $ef
	rst  $38                                         ; $56ea: $ff
	rst  $38                                         ; $56eb: $ff
	db   $fd                                         ; $56ec: $fd
	ld   de, $1111                                   ; $56ed: $11 $11 $11
	ld   [de], a                                     ; $56f0: $12
	rst  ToBoot                                         ; $56f1: $c7
	rst  $38                                         ; $56f2: $ff
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	ld   sp, hl                                      ; $56f5: $f9
	ld   de, $1111                                   ; $56f6: $11 $11 $11
	rla                                              ; $56f9: $17
	ld   b, c                                        ; $56fa: $41
	cpl                                              ; $56fb: $2f
	rst  $38                                         ; $56fc: $ff
	rst  $38                                         ; $56fd: $ff
	rst  $38                                         ; $56fe: $ff
	db   $fc                                         ; $56ff: $fc
	add  [hl]                                        ; $5700: $86
	ld   de, $1111                                   ; $5701: $11 $11 $11
	ld   e, h                                        ; $5704: $5c
	cp   e                                           ; $5705: $bb
	rst  $38                                         ; $5706: $ff
	or   a                                           ; $5707: $b7
	ld   c, d                                        ; $5708: $4a
	pop  af                                          ; $5709: $f1
	inc  e                                           ; $570a: $1c
	sub  c                                           ; $570b: $91
	jr   @-$09                                       ; $570c: $18 $f5

	ld   a, a                                        ; $570e: $7f
	rst  $38                                         ; $570f: $ff
	call z, $c1ff                                    ; $5710: $cc $ff $c1
	sbc  h                                           ; $5713: $9c
	ld   d, c                                        ; $5714: $51
	ld   e, e                                        ; $5715: $5b
	halt                                             ; $5716: $76
	sbc  h                                           ; $5717: $9c
	and  d                                           ; $5718: $a2
	ld   de, $111f                                   ; $5719: $11 $1f $11
	cp   a                                           ; $571c: $bf
	ld   de, $e2af                                   ; $571d: $11 $af $e2
	rst  $38                                         ; $5720: $ff
	ld   sp, hl                                      ; $5721: $f9
	xor  a                                           ; $5722: $af
	ret  c                                           ; $5723: $d8

	rla                                              ; $5724: $17
	pop  de                                          ; $5725: $d1
	dec  d                                           ; $5726: $15
	and  $2b                                         ; $5727: $e6 $2b
	jp   c, $2134                                    ; $5729: $da $34 $21

	di                                               ; $572c: $f3
	dec  de                                          ; $572d: $1b
	pop  af                                          ; $572e: $f1
	add  hl, de                                      ; $572f: $19
	rst  $30                                         ; $5730: $f7
	cpl                                              ; $5731: $2f
	rst  $28                                         ; $5732: $ef
	db   $ec                                         ; $5733: $ec
	cp   $d2                                         ; $5734: $fe $d2
	cp   a                                           ; $5736: $bf
	dec  d                                           ; $5737: $15
	adc  d                                           ; $5738: $8a
	ld   d, d                                        ; $5739: $52
	or   a                                           ; $573a: $b7
	ld   d, c                                        ; $573b: $51
	ld   de, $116f                                   ; $573c: $11 $6f $11
	pop  af                                          ; $573f: $f1
	inc  d                                           ; $5740: $14
	rst  $38                                         ; $5741: $ff
	rra                                              ; $5742: $1f
	rst  $38                                         ; $5743: $ff
	rst  $30                                         ; $5744: $f7
	rst  $38                                         ; $5745: $ff
	db   $d3                                         ; $5746: $d3
	ld   l, a                                        ; $5747: $6f
	ld   de, $7188                                   ; $5748: $11 $88 $71
	adc  b                                           ; $574b: $88
	ld   h, e                                        ; $574c: $63
	ld   de, $113f                                   ; $574d: $11 $3f $11
	ldh  a, [c]                                      ; $5750: $f2
	add  hl, de                                      ; $5751: $19
	sbc  a                                           ; $5752: $9f
	cpl                                              ; $5753: $2f
	ei                                               ; $5754: $fb
	ld   hl, sp-$01                                  ; $5755: $f8 $ff
	jp   hl                                          ; $5757: $e9


	ld   e, a                                        ; $5758: $5f
	add  c                                           ; $5759: $81
	reti                                             ; $575a: $d9


	ld   [hl], e                                     ; $575b: $73
	ld   l, c                                        ; $575c: $69
	inc  sp                                          ; $575d: $33
	ld   de, $111e                                   ; $575e: $11 $1e $11
	push af                                          ; $5761: $f5
	rla                                              ; $5762: $17
	ld   e, a                                        ; $5763: $5f
	ld   c, c                                        ; $5764: $49
	ei                                               ; $5765: $fb
	ld   a, [$dcdf]                                  ; $5766: $fa $df $dc
	xor  a                                           ; $5769: $af
	jp   nz, $94da                                   ; $576a: $c2 $da $94

	ld   c, c                                        ; $576d: $49
	ld   sp, $1b11                                   ; $576e: $31 $11 $1b
	ld   de, $17f2                                   ; $5771: $11 $f2 $17

Jump_0bb_5774:
	ld   e, [hl]                                     ; $5774: $5e
	ld   c, c                                        ; $5775: $49
	ei                                               ; $5776: $fb
	ei                                               ; $5777: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5778: $cf
	jp   hl                                          ; $5779: $e9


	rst  $28                                         ; $577a: $ef
	call nc, $97fc                                   ; $577b: $d4 $fc $97
	ld   e, b                                        ; $577e: $58
	ld   d, c                                        ; $577f: $51
	ld   de, $1116                                   ; $5780: $11 $16 $11
	or   d                                           ; $5783: $b2
	rla                                              ; $5784: $17
	ld   a, [hl-]                                    ; $5785: $3a
	ld   a, b                                        ; $5786: $78
	ld   a, [$bffc]                                  ; $5787: $fa $fc $bf
	db   $fd                                         ; $578a: $fd
	rst  $38                                         ; $578b: $ff
	ld   [$bafc], a                                  ; $578c: $ea $fc $ba
	ld   [hl], a                                     ; $578f: $77
	ld   [hl], h                                     ; $5790: $74
	inc  de                                          ; $5791: $13
	ld   de, $1871                                   ; $5792: $11 $71 $18
	ld   de, $a235                                   ; $5795: $11 $35 $a2
	cp   e                                           ; $5798: $bb
	sbc  a                                           ; $5799: $9f
	adc  [hl]                                        ; $579a: $8e
	db   $fd                                         ; $579b: $fd
	call z, $cefd                                    ; $579c: $cc $fd $ce
	call z, $87ba                                    ; $579f: $cc $ba $87
	ld   [hl], l                                     ; $57a2: $75
	ld   h, e                                        ; $57a3: $63
	jr   z, jr_0bb_57d7                              ; $57a4: $28 $31

	ld   d, h                                        ; $57a6: $54
	inc  d                                           ; $57a7: $14
	dec  d                                           ; $57a8: $15
	ld   d, h                                        ; $57a9: $54
	sub  [hl]                                        ; $57aa: $96
	jp   z, $cb6e                                    ; $57ab: $ca $6e $cb

	call z, $fcdc                                    ; $57ae: $cc $dc $fc
	call $aaa9                                       ; $57b1: $cd $a9 $aa
	adc  c                                           ; $57b4: $89
	sub  l                                           ; $57b5: $95
	ld   e, b                                        ; $57b6: $58
	sub  c                                           ; $57b7: $91
	jr   z, jr_0bb_57cb                              ; $57b8: $28 $11

	inc  sp                                          ; $57ba: $33
	ld   b, e                                        ; $57bb: $43
	ld   h, l                                        ; $57bc: $65
	ld   l, b                                        ; $57bd: $68
	ld   d, a                                        ; $57be: $57
	jp   z, $dc8b                                    ; $57bf: $ca $8b $dc

	sbc  [hl]                                        ; $57c2: $9e
	jp   c, $cccb                                    ; $57c3: $da $cb $cc

	xor  d                                           ; $57c6: $aa
	xor  d                                           ; $57c7: $aa
	adc  b                                           ; $57c8: $88
	ld   a, c                                        ; $57c9: $79
	add  c                                           ; $57ca: $81

jr_0bb_57cb:
	ld   d, [hl]                                     ; $57cb: $56
	inc  de                                          ; $57cc: $13
	inc  hl                                          ; $57cd: $23
	inc  sp                                          ; $57ce: $33
	ld   d, h                                        ; $57cf: $54
	ld   h, a                                        ; $57d0: $67
	ld   d, a                                        ; $57d1: $57
	xor  b                                           ; $57d2: $a8
	adc  d                                           ; $57d3: $8a
	cp   d                                           ; $57d4: $ba
	xor  e                                           ; $57d5: $ab
	xor  h                                           ; $57d6: $ac

jr_0bb_57d7:
	cp   d                                           ; $57d7: $ba
	call z, $dbcb                                    ; $57d8: $cc $cb $db
	cp   d                                           ; $57db: $ba
	xor  c                                           ; $57dc: $a9
	adc  b                                           ; $57dd: $88
	ld   b, h                                        ; $57de: $44
	ld   h, e                                        ; $57df: $63
	ld   [hl+], a                                    ; $57e0: $22
	inc  [hl]                                        ; $57e1: $34
	inc  h                                           ; $57e2: $24
	ld   d, l                                        ; $57e3: $55
	ld   h, [hl]                                     ; $57e4: $66
	ld   h, a                                        ; $57e5: $67
	add  a                                           ; $57e6: $87
	ld   a, c                                        ; $57e7: $79
	sbc  c                                           ; $57e8: $99
	xor  e                                           ; $57e9: $ab
	xor  h                                           ; $57ea: $ac
	call z, $ddcd                                    ; $57eb: $cc $cd $dd
	call c, $a9bc                                    ; $57ee: $dc $bc $a9
	adc  b                                           ; $57f1: $88
	ld   h, h                                        ; $57f2: $64
	ld   d, h                                        ; $57f3: $54
	inc  hl                                          ; $57f4: $23
	inc  sp                                          ; $57f5: $33
	inc  sp                                          ; $57f6: $33
	ld   d, l                                        ; $57f7: $55
	ld   d, [hl]                                     ; $57f8: $56
	ld   h, [hl]                                     ; $57f9: $66
	ld   h, a                                        ; $57fa: $67
	ld   [hl], a                                     ; $57fb: $77
	adc  b                                           ; $57fc: $88
	sbc  d                                           ; $57fd: $9a
	xor  d                                           ; $57fe: $aa
	call z, $dedd                                    ; $57ff: $cc $dd $de
	call c, $cbcc                                    ; $5802: $dc $cc $cb
	sbc  c                                           ; $5805: $99
	sub  a                                           ; $5806: $97
	ld   [hl], l                                     ; $5807: $75
	ld   b, h                                        ; $5808: $44
	inc  sp                                          ; $5809: $33
	inc  sp                                          ; $580a: $33
	inc  sp                                          ; $580b: $33
	ld   b, h                                        ; $580c: $44
	ld   b, l                                        ; $580d: $45
	ld   d, l                                        ; $580e: $55
	ld   h, [hl]                                     ; $580f: $66
	ld   h, a                                        ; $5810: $67
	adc  c                                           ; $5811: $89
	adc  d                                           ; $5812: $8a
	cp   d                                           ; $5813: $ba
	cp   h                                           ; $5814: $bc
	db   $dd                                         ; $5815: $dd
	adc  $dd                                         ; $5816: $ce $dd
	call c, $bacb                                    ; $5818: $dc $cb $ba
	adc  c                                           ; $581b: $89
	halt                                             ; $581c: $76
	ld   d, h                                        ; $581d: $54
	inc  sp                                          ; $581e: $33
	ld   [hl-], a                                    ; $581f: $32
	inc  hl                                          ; $5820: $23
	inc  sp                                          ; $5821: $33
	inc  [hl]                                        ; $5822: $34
	ld   b, l                                        ; $5823: $45
	ld   h, [hl]                                     ; $5824: $66
	ld   h, a                                        ; $5825: $67
	adc  b                                           ; $5826: $88
	adc  d                                           ; $5827: $8a
	cp   d                                           ; $5828: $ba
	call z, $cdcd                                    ; $5829: $cc $cd $cd
	db   $dd                                         ; $582c: $dd
	call c, $bacb                                    ; $582d: $dc $cb $ba
	xor  b                                           ; $5830: $a8
	add  a                                           ; $5831: $87
	halt                                             ; $5832: $76
	ld   d, l                                        ; $5833: $55
	ld   b, e                                        ; $5834: $43
	inc  sp                                          ; $5835: $33
	ld   [hl+], a                                    ; $5836: $22
	inc  sp                                          ; $5837: $33
	inc  [hl]                                        ; $5838: $34
	ld   d, l                                        ; $5839: $55
	ld   h, a                                        ; $583a: $67
	ld   a, b                                        ; $583b: $78
	sbc  c                                           ; $583c: $99
	xor  e                                           ; $583d: $ab
	xor  d                                           ; $583e: $aa
	cp   h                                           ; $583f: $bc
	call z, $ccbb                                    ; $5840: $cc $bb $cc
	call z, $a9ba                                    ; $5843: $cc $ba $a9
	xor  c                                           ; $5846: $a9
	add  a                                           ; $5847: $87
	ld   [hl], a                                     ; $5848: $77
	ld   h, l                                        ; $5849: $65
	ld   d, l                                        ; $584a: $55
	ld   d, h                                        ; $584b: $54
	ld   b, h                                        ; $584c: $44
	ld   b, h                                        ; $584d: $44
	ld   b, l                                        ; $584e: $45
	ld   h, [hl]                                     ; $584f: $66
	ld   h, a                                        ; $5850: $67
	ld   a, b                                        ; $5851: $78
	sbc  b                                           ; $5852: $98
	sbc  d                                           ; $5853: $9a
	sbc  c                                           ; $5854: $99
	xor  d                                           ; $5855: $aa
	xor  d                                           ; $5856: $aa
	xor  e                                           ; $5857: $ab
	xor  d                                           ; $5858: $aa
	xor  d                                           ; $5859: $aa
	sbc  c                                           ; $585a: $99
	xor  d                                           ; $585b: $aa
	sbc  c                                           ; $585c: $99
	sbc  c                                           ; $585d: $99
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	add  a                                           ; $5860: $87
	ld   [hl], a                                     ; $5861: $77
	ld   h, [hl]                                     ; $5862: $66
	ld   h, [hl]                                     ; $5863: $66
	ld   h, l                                        ; $5864: $65
	ld   h, [hl]                                     ; $5865: $66
	ld   h, [hl]                                     ; $5866: $66
	ld   h, [hl]                                     ; $5867: $66
	ld   [hl], a                                     ; $5868: $77
	ld   a, b                                        ; $5869: $78
	adc  b                                           ; $586a: $88
	adc  b                                           ; $586b: $88
	sbc  b                                           ; $586c: $98
	sbc  c                                           ; $586d: $99
	xor  d                                           ; $586e: $aa
	xor  d                                           ; $586f: $aa
	xor  c                                           ; $5870: $a9
	xor  c                                           ; $5871: $a9
	xor  d                                           ; $5872: $aa
	sbc  c                                           ; $5873: $99
	sbc  c                                           ; $5874: $99
	adc  b                                           ; $5875: $88
	adc  b                                           ; $5876: $88
	adc  c                                           ; $5877: $89
	adc  b                                           ; $5878: $88
	adc  b                                           ; $5879: $88
	ld   [hl], a                                     ; $587a: $77
	ld   [hl], a                                     ; $587b: $77
	halt                                             ; $587c: $76
	halt                                             ; $587d: $76
	ld   h, [hl]                                     ; $587e: $66
	ld   h, [hl]                                     ; $587f: $66
	ld   [hl], a                                     ; $5880: $77
	ld   [hl], a                                     ; $5881: $77
	adc  b                                           ; $5882: $88
	adc  c                                           ; $5883: $89
	sbc  c                                           ; $5884: $99
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  c                                           ; $5889: $89
	adc  b                                           ; $588a: $88
	adc  b                                           ; $588b: $88
	adc  c                                           ; $588c: $89
	sbc  c                                           ; $588d: $99
	adc  c                                           ; $588e: $89
	sbc  c                                           ; $588f: $99
	sbc  c                                           ; $5890: $99
	sbc  c                                           ; $5891: $99
	adc  c                                           ; $5892: $89
	adc  b                                           ; $5893: $88
	adc  b                                           ; $5894: $88
	adc  b                                           ; $5895: $88
	adc  b                                           ; $5896: $88
	add  a                                           ; $5897: $87
	ld   [hl], a                                     ; $5898: $77
	ld   [hl], a                                     ; $5899: $77
	ld   [hl], a                                     ; $589a: $77
	ld   [hl], a                                     ; $589b: $77
	ld   [hl], a                                     ; $589c: $77
	ld   [hl], a                                     ; $589d: $77
	ld   [hl], a                                     ; $589e: $77
	adc  b                                           ; $589f: $88
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	adc  c                                           ; $58a2: $89
	sbc  c                                           ; $58a3: $99
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	sbc  c                                           ; $58a6: $99
	adc  c                                           ; $58a7: $89
	sbc  c                                           ; $58a8: $99
	adc  b                                           ; $58a9: $88
	adc  b                                           ; $58aa: $88
	adc  c                                           ; $58ab: $89
	sbc  c                                           ; $58ac: $99
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	adc  b                                           ; $58af: $88
	add  a                                           ; $58b0: $87
	ld   [hl], a                                     ; $58b1: $77
	ld   [hl], a                                     ; $58b2: $77
	ld   [hl], a                                     ; $58b3: $77
	ld   [hl], a                                     ; $58b4: $77
	ld   [hl], a                                     ; $58b5: $77
	ld   [hl], a                                     ; $58b6: $77
	ld   a, b                                        ; $58b7: $78
	ld   a, b                                        ; $58b8: $78
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	sbc  c                                           ; $58bb: $99
	sbc  b                                           ; $58bc: $98
	adc  b                                           ; $58bd: $88
	adc  b                                           ; $58be: $88
	sbc  b                                           ; $58bf: $98
	sbc  c                                           ; $58c0: $99
	sbc  c                                           ; $58c1: $99
	sbc  b                                           ; $58c2: $98
	adc  b                                           ; $58c3: $88
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	adc  b                                           ; $58c6: $88
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	ld   [hl], a                                     ; $58c9: $77
	ld   [hl], a                                     ; $58ca: $77
	ld   [hl], a                                     ; $58cb: $77
	adc  b                                           ; $58cc: $88
	adc  b                                           ; $58cd: $88
	adc  b                                           ; $58ce: $88
	adc  b                                           ; $58cf: $88
	ld   a, b                                        ; $58d0: $78
	sbc  b                                           ; $58d1: $98
	sbc  b                                           ; $58d2: $98
	adc  c                                           ; $58d3: $89
	adc  c                                           ; $58d4: $89
	adc  c                                           ; $58d5: $89
	sbc  b                                           ; $58d6: $98
	sbc  c                                           ; $58d7: $99
	sbc  c                                           ; $58d8: $99
	adc  c                                           ; $58d9: $89
	adc  b                                           ; $58da: $88
	adc  c                                           ; $58db: $89
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	ld   [hl], a                                     ; $58df: $77
	adc  b                                           ; $58e0: $88
	ld   [hl], a                                     ; $58e1: $77
	add  a                                           ; $58e2: $87
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  c                                           ; $58e5: $89
	adc  b                                           ; $58e6: $88
	sbc  b                                           ; $58e7: $98
	adc  b                                           ; $58e8: $88
	sbc  b                                           ; $58e9: $98
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	adc  b                                           ; $58ee: $88
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	add  a                                           ; $58f3: $87
	ld   a, b                                        ; $58f4: $78
	ld   a, b                                        ; $58f5: $78
	adc  b                                           ; $58f6: $88
	adc  b                                           ; $58f7: $88
	ld   a, b                                        ; $58f8: $78
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	ld   a, b                                        ; $58fb: $78
	adc  b                                           ; $58fc: $88
	sub  a                                           ; $58fd: $97
	add  a                                           ; $58fe: $87
	adc  b                                           ; $58ff: $88
	ld   a, c                                        ; $5900: $79
	ld   a, c                                        ; $5901: $79
	sbc  b                                           ; $5902: $98
	adc  b                                           ; $5903: $88
	sub  a                                           ; $5904: $97
	adc  c                                           ; $5905: $89
	ld   [hl], a                                     ; $5906: $77
	sub  a                                           ; $5907: $97
	adc  b                                           ; $5908: $88
	ld   a, b                                        ; $5909: $78
	ld   a, b                                        ; $590a: $78
	adc  b                                           ; $590b: $88
	add  a                                           ; $590c: $87
	adc  b                                           ; $590d: $88
	adc  b                                           ; $590e: $88
	ld   a, b                                        ; $590f: $78
	ld   a, b                                        ; $5910: $78
	add  a                                           ; $5911: $87
	adc  c                                           ; $5912: $89
	adc  b                                           ; $5913: $88
	sub  a                                           ; $5914: $97
	sbc  b                                           ; $5915: $98
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	ld   a, b                                        ; $5918: $78
	adc  b                                           ; $5919: $88
	add  a                                           ; $591a: $87
	sbc  c                                           ; $591b: $99
	ld   l, c                                        ; $591c: $69
	ld   [hl], a                                     ; $591d: $77
	adc  b                                           ; $591e: $88
	ld   a, b                                        ; $591f: $78
	sub  a                                           ; $5920: $97
	adc  b                                           ; $5921: $88
	sub  a                                           ; $5922: $97
	adc  b                                           ; $5923: $88
	ld   a, b                                        ; $5924: $78
	adc  b                                           ; $5925: $88
	ld   a, b                                        ; $5926: $78
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  b                                           ; $5929: $88
	adc  b                                           ; $592a: $88
	add  a                                           ; $592b: $87
	sub  a                                           ; $592c: $97
	sub  a                                           ; $592d: $97
	ld   a, c                                        ; $592e: $79
	ld   l, c                                        ; $592f: $69
	ld   a, b                                        ; $5930: $78
	ld   a, c                                        ; $5931: $79
	sub  [hl]                                        ; $5932: $96
	and  [hl]                                        ; $5933: $a6
	sbc  c                                           ; $5934: $99
	ld   a, b                                        ; $5935: $78
	add  a                                           ; $5936: $87
	ld   a, c                                        ; $5937: $79
	ld   a, b                                        ; $5938: $78
	adc  b                                           ; $5939: $88
	ld   a, c                                        ; $593a: $79
	adc  c                                           ; $593b: $89
	add  a                                           ; $593c: $87
	and  [hl]                                        ; $593d: $a6
	sbc  c                                           ; $593e: $99
	ld   a, c                                        ; $593f: $79
	sub  a                                           ; $5940: $97
	sub  a                                           ; $5941: $97
	sub  a                                           ; $5942: $97
	adc  c                                           ; $5943: $89
	ld   a, c                                        ; $5944: $79
	add  a                                           ; $5945: $87
	sub  a                                           ; $5946: $97
	sbc  b                                           ; $5947: $98
	ld   a, c                                        ; $5948: $79
	ld   a, b                                        ; $5949: $78
	add  a                                           ; $594a: $87
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	add  a                                           ; $594d: $87
	add  a                                           ; $594e: $87
	ld   [hl], a                                     ; $594f: $77
	add  a                                           ; $5950: $87
	ld   [hl], a                                     ; $5951: $77
	halt                                             ; $5952: $76
	ld   l, c                                        ; $5953: $69
	ld   [hl], a                                     ; $5954: $77
	adc  b                                           ; $5955: $88
	sbc  b                                           ; $5956: $98
	sbc  b                                           ; $5957: $98
	adc  c                                           ; $5958: $89
	sbc  c                                           ; $5959: $99
	adc  d                                           ; $595a: $8a
	xor  c                                           ; $595b: $a9
	cp   b                                           ; $595c: $b8
	cp   c                                           ; $595d: $b9
	adc  d                                           ; $595e: $8a
	ld   a, e                                        ; $595f: $7b
	ld   l, c                                        ; $5960: $69
	halt                                             ; $5961: $76
	add  e                                           ; $5962: $83
	add  [hl]                                        ; $5963: $86
	ld   d, l                                        ; $5964: $55
	ld   d, [hl]                                     ; $5965: $56
	ld   h, [hl]                                     ; $5966: $66
	ld   e, d                                        ; $5967: $5a
	ld   l, b                                        ; $5968: $68
	ld   a, b                                        ; $5969: $78
	sbc  b                                           ; $596a: $98
	or   a                                           ; $596b: $b7
	xor  h                                           ; $596c: $ac
	sbc  d                                           ; $596d: $9a
	jp   z, $baca                                    ; $596e: $ca $ca $ba

	xor  h                                           ; $5971: $ac
	adc  b                                           ; $5972: $88
	ld   a, c                                        ; $5973: $79
	add  h                                           ; $5974: $84
	ld   h, [hl]                                     ; $5975: $66
	ld   h, h                                        ; $5976: $64
	ld   h, $37                                      ; $5977: $26 $37
	ld   d, e                                        ; $5979: $53
	ld   [hl], a                                     ; $597a: $77
	ld   [hl], a                                     ; $597b: $77
	add  a                                           ; $597c: $87
	jp   z, $ad89                                    ; $597d: $ca $89 $ad

	xor  e                                           ; $5980: $ab
	cp   h                                           ; $5981: $bc
	reti                                             ; $5982: $d9


	res  5, d                                        ; $5983: $cb $aa
	ld   a, b                                        ; $5985: $78
	ld   h, [hl]                                     ; $5986: $66
	dec  h                                           ; $5987: $25
	sub  c                                           ; $5988: $91
	daa                                              ; $5989: $27
	ld   h, $24                                      ; $598a: $26 $24
	sub  h                                           ; $598c: $94
	sbc  b                                           ; $598d: $98
	ld   a, c                                        ; $598e: $79
	call z, $fb6b                                    ; $598f: $cc $6b $fb
	call z, $bcbe                                    ; $5992: $cc $be $bc
	cp   c                                           ; $5995: $b9
	or   a                                           ; $5996: $b7
	ld   [hl], h                                     ; $5997: $74
	add  hl, de                                      ; $5998: $19

Call_0bb_5999:
	ld   d, c                                        ; $5999: $51
	ld   [de], a                                     ; $599a: $12
	ld   [hl], d                                     ; $599b: $72
	ld   [hl-], a                                    ; $599c: $32
	ld   l, b                                        ; $599d: $68
	sub  a                                           ; $599e: $97
	sbc  d                                           ; $599f: $9a
	cp   $9c                                         ; $59a0: $fe $9c
	rst  $38                                         ; $59a2: $ff
	cp   e                                           ; $59a3: $bb
	adc  $ca                                         ; $59a4: $ce $ca
	sub  a                                           ; $59a6: $97
	add  h                                           ; $59a7: $84
	ld   hl, $7117                                   ; $59a8: $21 $17 $71
	add  hl, de                                      ; $59ab: $19
	dec  h                                           ; $59ac: $25
	ld   b, e                                        ; $59ad: $43
	cp   b                                           ; $59ae: $b8
	sbc  l                                           ; $59af: $9d
	sbc  a                                           ; $59b0: $9f
	ld   a, [$ffdf]                                  ; $59b1: $fa $df $ff
	adc  l                                           ; $59b4: $8d
	jp   hl                                          ; $59b5: $e9


	and  [hl]                                        ; $59b6: $a6
	inc  sp                                          ; $59b7: $33
	ld   de, $7113                                   ; $59b8: $11 $13 $71
	ld   [de], a                                     ; $59bb: $12
	ld   c, c                                        ; $59bc: $49
	inc  de                                          ; $59bd: $13
	db   $ec                                         ; $59be: $ec
	rst  $28                                         ; $59bf: $ef
	rst  $38                                         ; $59c0: $ff
	rst  $38                                         ; $59c1: $ff
	rst  $38                                         ; $59c2: $ff
	rst  $38                                         ; $59c3: $ff
	call z, $818a                                    ; $59c4: $cc $8a $81
	ld   de, $1511                                   ; $59c7: $11 $11 $15
	ld   de, $5527                                   ; $59ca: $11 $27 $55
	ccf                                              ; $59cd: $3f
	db   $fd                                         ; $59ce: $fd
	rst  $38                                         ; $59cf: $ff
	rst  $38                                         ; $59d0: $ff
	rst  $38                                         ; $59d1: $ff
	ei                                               ; $59d2: $fb
	db   $dd                                         ; $59d3: $dd
	sub  [hl]                                        ; $59d4: $96
	ld   h, l                                        ; $59d5: $65
	ld   de, $1111                                   ; $59d6: $11 $11 $11
	ld   sp, $6c14                                   ; $59d9: $31 $14 $6c
	halt                                             ; $59dc: $76
	rst  $38                                         ; $59dd: $ff
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	rst  $38                                         ; $59e0: $ff
	ld   hl, sp+$5d                                  ; $59e1: $f8 $5d
	and  l                                           ; $59e3: $a5
	ld   [de], a                                     ; $59e4: $12
	ld   de, $1311                                   ; $59e5: $11 $11 $13
	ld   sp, $af14                                   ; $59e8: $31 $14 $af
	xor  c                                           ; $59eb: $a9
	rst  $38                                         ; $59ec: $ff
	rst  $38                                         ; $59ed: $ff
	rst  $38                                         ; $59ee: $ff
	rst  $38                                         ; $59ef: $ff
	push af                                          ; $59f0: $f5
	add  hl, sp                                      ; $59f1: $39
	add  l                                           ; $59f2: $85
	ld   de, $1111                                   ; $59f3: $11 $11 $11
	dec  de                                          ; $59f6: $1b
	ld   de, $ff16                                   ; $59f7: $11 $16 $ff
	adc  a                                           ; $59fa: $8f
	rst  $38                                         ; $59fb: $ff
	rst  $38                                         ; $59fc: $ff
	rst  $38                                         ; $59fd: $ff
	rst  $28                                         ; $59fe: $ef
	pop  af                                          ; $59ff: $f1
	ld   b, [hl]                                     ; $5a00: $46
	ld   [hl], h                                     ; $5a01: $74
	ld   de, $1111                                   ; $5a02: $11 $11 $11
	ld   a, c                                        ; $5a05: $79
	ld   de, $fc5b                                   ; $5a06: $11 $5b $fc
	rst  $28                                         ; $5a09: $ef
	rst  $38                                         ; $5a0a: $ff
	rst  $38                                         ; $5a0b: $ff
	ei                                               ; $5a0c: $fb
	rst  $38                                         ; $5a0d: $ff
	ld   b, d                                        ; $5a0e: $42
	ld   d, [hl]                                     ; $5a0f: $56
	ld   d, c                                        ; $5a10: $51
	ld   de, $1411                                   ; $5a11: $11 $11 $14
	pop  de                                          ; $5a14: $d1
	inc  de                                          ; $5a15: $13
	sbc  a                                           ; $5a16: $9f
	cp   $fe                                         ; $5a17: $fe $fe
	rst  $38                                         ; $5a19: $ff
	rst  $38                                         ; $5a1a: $ff
	ld   l, b                                        ; $5a1b: $68
	or   $33                                         ; $5a1c: $f6 $33
	jr   c, jr_0bb_5a55                              ; $5a1e: $38 $35

	ld   hl, $1f11                                   ; $5a20: $21 $11 $1f
	ld   de, rAUD1HIGH                                   ; $5a23: $11 $14 $ff
	cp   a                                           ; $5a26: $bf
	db   $ed                                         ; $5a27: $ed
	rst  $38                                         ; $5a28: $ff
	db   $fd                                         ; $5a29: $fd
	ccf                                              ; $5a2a: $3f
	and  $31                                         ; $5a2b: $e6 $31
	ld   a, b                                        ; $5a2d: $78
	ld   d, a                                        ; $5a2e: $57
	ld   de, $ef11                                   ; $5a2f: $11 $11 $ef
	ld   de, $ff17                                   ; $5a32: $11 $17 $ff
	rst  $38                                         ; $5a35: $ff
	ld   e, a                                        ; $5a36: $5f
	rst  $38                                         ; $5a37: $ff
	db   $f4                                         ; $5a38: $f4
	add  hl, hl                                      ; $5a39: $29
	ld   l, e                                        ; $5a3a: $6b
	ld   h, h                                        ; $5a3b: $64
	ld   hl, $1196                                   ; $5a3c: $21 $96 $11
	ld   de, $11f5                                   ; $5a3f: $11 $f5 $11
	rra                                              ; $5a42: $1f
	rst  $38                                         ; $5a43: $ff
	db   $fd                                         ; $5a44: $fd
	ld   a, a                                        ; $5a45: $7f
	rst  $38                                         ; $5a46: $ff
	or   $81                                         ; $5a47: $f6 $81
	add  hl, de                                      ; $5a49: $19
	sbc  h                                           ; $5a4a: $9c
	ld   sp, $1141                                   ; $5a4b: $31 $41 $11
	jr   @+$63                                       ; $5a4e: $18 $61

	ld   hl, $ff6f                                   ; $5a50: $21 $6f $ff
	db   $fc                                         ; $5a53: $fc
	rst  $38                                         ; $5a54: $ff

jr_0bb_5a55:
	rst  $38                                         ; $5a55: $ff
	jp   c, $3731                                    ; $5a56: $da $31 $37

	db   $ed                                         ; $5a59: $ed
	ld   b, d                                        ; $5a5a: $42
	ld   de, $2c11                                   ; $5a5b: $11 $11 $2c
	ld   de, $cf21                                   ; $5a5e: $11 $21 $cf
	rst  $38                                         ; $5a61: $ff
	db   $fd                                         ; $5a62: $fd
	rst  $38                                         ; $5a63: $ff
	rst  $38                                         ; $5a64: $ff
	ld   a, [$1711]                                  ; $5a65: $fa $11 $17
	ei                                               ; $5a68: $fb
	ld   [hl], c                                     ; $5a69: $71
	ld   de, $ca11                                   ; $5a6a: $11 $11 $ca
	ld   de, $ff16                                   ; $5a6d: $11 $16 $ff
	rst  $38                                         ; $5a70: $ff
	cp   [hl]                                        ; $5a71: $be
	rst  $28                                         ; $5a72: $ef
	rst  $38                                         ; $5a73: $ff
	or   $11                                         ; $5a74: $f6 $11
	inc  e                                           ; $5a76: $1c
	ei                                               ; $5a77: $fb
	and  c                                           ; $5a78: $a1
	ld   de, $f911                                   ; $5a79: $11 $11 $f9
	ld   de, $ff17                                   ; $5a7c: $11 $17 $ff
	rst  $38                                         ; $5a7f: $ff
	jp   z, $ffaf                                    ; $5a80: $ca $af $ff

	pop  af                                          ; $5a83: $f1
	ld   de, $ff1f                                   ; $5a84: $11 $1f $ff
	or   c                                           ; $5a87: $b1
	ld   de, $fb18                                   ; $5a88: $11 $18 $fb
	ld   d, c                                        ; $5a8b: $51
	inc  d                                           ; $5a8c: $14
	rst  $28                                         ; $5a8d: $ef
	rst  $38                                         ; $5a8e: $ff
	rst  $30                                         ; $5a8f: $f7
	ld   e, a                                        ; $5a90: $5f
	rst  $38                                         ; $5a91: $ff
	pop  af                                          ; $5a92: $f1
	ld   de, $ff1e                                   ; $5a93: $11 $1e $ff
	and  c                                           ; $5a96: $a1
	ld   de, $ff1a                                   ; $5a97: $11 $1a $ff
	sub  c                                           ; $5a9a: $91
	ld   [de], a                                     ; $5a9b: $12
	xor  a                                           ; $5a9c: $af
	rst  $38                                         ; $5a9d: $ff
	or   $59                                         ; $5a9e: $f6 $59
	sbc  a                                           ; $5aa0: $9f
	rst  $30                                         ; $5aa1: $f7
	ld   de, $ff16                                   ; $5aa2: $11 $16 $ff
	db   $e3                                         ; $5aa5: $e3
	ld   de, rAUD1LOW                                   ; $5aa6: $11 $13 $ff
	di                                               ; $5aa9: $f3
	ld   de, $ff5f                                   ; $5aaa: $11 $5f $ff
	ei                                               ; $5aad: $fb
	sub  d                                           ; $5aae: $92
	ld   c, a                                        ; $5aaf: $4f
	call z, $1131                                    ; $5ab0: $cc $31 $11
	cp   a                                           ; $5ab3: $bf
	and  e                                           ; $5ab4: $a3
	ld   de, $af11                                   ; $5ab5: $11 $11 $af
	ld   a, [$bf41]                                  ; $5ab8: $fa $41 $bf
	rst  $38                                         ; $5abb: $ff
	rst  $38                                         ; $5abc: $ff
	and  c                                           ; $5abd: $a1
	ld   d, a                                        ; $5abe: $57
	ld   a, d                                        ; $5abf: $7a
	ld   d, [hl]                                     ; $5ac0: $56
	ld   b, h                                        ; $5ac1: $44
	jp   z, $1171                                    ; $5ac2: $ca $71 $11

	ld   [de], a                                     ; $5ac5: $12
	adc  [hl]                                        ; $5ac6: $8e
	and  a                                           ; $5ac7: $a7
	ld   h, l                                        ; $5ac8: $65
	rst  $38                                         ; $5ac9: $ff
	rst  $38                                         ; $5aca: $ff
	rst  $38                                         ; $5acb: $ff
	sub  h                                           ; $5acc: $94
	sub  l                                           ; $5acd: $95
	ld   [hl], l                                     ; $5ace: $75
	dec  d                                           ; $5acf: $15
	ld   c, d                                        ; $5ad0: $4a
	jp   c, $1161                                    ; $5ad1: $da $61 $11

	dec  d                                           ; $5ad4: $15
	xor  a                                           ; $5ad5: $af
	cp   e                                           ; $5ad6: $bb
	ld   h, a                                        ; $5ad7: $67
	rst  $38                                         ; $5ad8: $ff
	rst  $38                                         ; $5ad9: $ff
	rst  $38                                         ; $5ada: $ff
	ld   d, h                                        ; $5adb: $54
	ld   d, d                                        ; $5adc: $52
	ld   [hl], h                                     ; $5add: $74
	ld   e, c                                        ; $5ade: $59
	ld   a, [hl]                                     ; $5adf: $7e
	jp   c, $1131                                    ; $5ae0: $da $31 $11

	inc  d                                           ; $5ae3: $14
	cp   [hl]                                        ; $5ae4: $be
	xor  d                                           ; $5ae5: $aa
	ld   e, b                                        ; $5ae6: $58
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	ld   h, [hl]                                     ; $5aea: $66
	ld   b, d                                        ; $5aeb: $42
	ld   d, d                                        ; $5aec: $52
	ld   l, c                                        ; $5aed: $69
	sbc  [hl]                                        ; $5aee: $9e
	rst  ToBoot                                         ; $5aef: $c7
	ld   de, $0611                                   ; $5af0: $11 $11 $06
	db   $dd                                         ; $5af3: $dd
	xor  d                                           ; $5af4: $aa
	ld   c, e                                        ; $5af5: $4b
	rst  $38                                         ; $5af6: $ff
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	ld   b, [hl]                                     ; $5af9: $46
	ld   [hl+], a                                    ; $5afa: $22
	ld   d, d                                        ; $5afb: $52
	adc  c                                           ; $5afc: $89
	cp   a                                           ; $5afd: $bf
	ret  z                                           ; $5afe: $c8

	ld   de, $0511                                   ; $5aff: $11 $11 $05
	db   $dd                                         ; $5b02: $dd
	xor  d                                           ; $5b03: $aa
	ld   c, h                                        ; $5b04: $4c
	rst  $38                                         ; $5b05: $ff
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	ld   d, [hl]                                     ; $5b08: $56
	ld   [de], a                                     ; $5b09: $12
	ld   b, c                                        ; $5b0a: $41
	sbc  c                                           ; $5b0b: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b0c: $cf
	or   a                                           ; $5b0d: $b7
	ld   de, $0611                                   ; $5b0e: $11 $11 $06
	cp   $ca                                         ; $5b11: $fe $ca
	ld   e, h                                        ; $5b13: $5c
	rst  $38                                         ; $5b14: $ff
	rst  $38                                         ; $5b15: $ff
	rst  $38                                         ; $5b16: $ff
	ld   h, [hl]                                     ; $5b17: $66
	ld   de, $9a22                                   ; $5b18: $11 $22 $9a
	rst  $28                                         ; $5b1b: $ef
	rst  ToBoot                                         ; $5b1c: $c7
	ld   de, $1711                                   ; $5b1d: $11 $11 $17
	cp   $cb                                         ; $5b20: $fe $cb
	ld   e, l                                        ; $5b22: $5d
	rst  $38                                         ; $5b23: $ff
	rst  $38                                         ; $5b24: $ff
	rst  $38                                         ; $5b25: $ff
	halt                                             ; $5b26: $76
	ld   de, $ab12                                   ; $5b27: $11 $12 $ab
	rst  $38                                         ; $5b2a: $ff
	add  $11                                         ; $5b2b: $c6 $11
	ld   de, $ff17                                   ; $5b2d: $11 $17 $ff
	ld   [$df5d], a                                  ; $5b30: $ea $5d $df
	rst  $38                                         ; $5b33: $ff
	rst  $38                                         ; $5b34: $ff
	sub  [hl]                                        ; $5b35: $96
	ld   de, $ab12                                   ; $5b36: $11 $12 $ab
	rst  $38                                         ; $5b39: $ff
	push de                                          ; $5b3a: $d5
	ld   de, $1711                                   ; $5b3b: $11 $11 $17
	cp   $fa                                         ; $5b3e: $fe $fa
	ld   l, l                                        ; $5b40: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b41: $cf
	rst  $38                                         ; $5b42: $ff
	rst  $38                                         ; $5b43: $ff
	or   [hl]                                        ; $5b44: $b6
	ld   de, $9c11                                   ; $5b45: $11 $11 $9c
	rst  $38                                         ; $5b48: $ff
	push hl                                          ; $5b49: $e5
	ld   de, $1711                                   ; $5b4a: $11 $11 $17
	rst  $38                                         ; $5b4d: $ff
	db   $fc                                         ; $5b4e: $fc
	ld   e, l                                        ; $5b4f: $5d
	xor  a                                           ; $5b50: $af
	rst  $38                                         ; $5b51: $ff
	rst  $38                                         ; $5b52: $ff
	rst  $10                                         ; $5b53: $d7
	ld   de, $9c11                                   ; $5b54: $11 $11 $9c
	rst  $38                                         ; $5b57: $ff
	or   $11                                         ; $5b58: $f6 $11
	ld   de, $ff17                                   ; $5b5a: $11 $17 $ff
	db   $fd                                         ; $5b5d: $fd
	ld   l, e                                        ; $5b5e: $6b
	sbc  a                                           ; $5b5f: $9f
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff
	add  sp, $11                                     ; $5b62: $e8 $11
	ld   de, $ff7b                                   ; $5b64: $11 $7b $ff
	rst  $30                                         ; $5b67: $f7
	ld   de, $1611                                   ; $5b68: $11 $11 $16
	rst  $38                                         ; $5b6b: $ff
	db   $fd                                         ; $5b6c: $fd
	adc  e                                           ; $5b6d: $8b
	adc  l                                           ; $5b6e: $8d
	rst  $38                                         ; $5b6f: $ff
	rst  $38                                         ; $5b70: $ff
	ei                                               ; $5b71: $fb
	ld   de, $4a11                                   ; $5b72: $11 $11 $4a
	rst  $38                                         ; $5b75: $ff
	ld   a, [$1111]                                  ; $5b76: $fa $11 $11
	inc  d                                           ; $5b79: $14
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	adc  e                                           ; $5b7c: $8b
	ld   a, e                                        ; $5b7d: $7b
	rst  $38                                         ; $5b7e: $ff
	rst  $38                                         ; $5b7f: $ff
	cp   $31                                         ; $5b80: $fe $31
	ld   de, $ff28                                   ; $5b82: $11 $28 $ff
	db   $fc                                         ; $5b85: $fc
	ld   de, $1111                                   ; $5b86: $11 $11 $11
	rst  $28                                         ; $5b89: $ef
	rst  $38                                         ; $5b8a: $ff
	cp   e                                           ; $5b8b: $bb
	ld   a, c                                        ; $5b8c: $79
	rst  JumpTable                                         ; $5b8d: $df
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	ld   [hl], c                                     ; $5b90: $71
	ld   de, $ff15                                   ; $5b91: $11 $15 $ff
	rst  $38                                         ; $5b94: $ff
	ld   b, c                                        ; $5b95: $41
	ld   de, $af11                                   ; $5b96: $11 $11 $af
	rst  $38                                         ; $5b99: $ff
	db   $db                                         ; $5b9a: $db
	add  [hl]                                        ; $5b9b: $86
	cp   l                                           ; $5b9c: $bd
	rst  $38                                         ; $5b9d: $ff
	rst  $38                                         ; $5b9e: $ff
	push bc                                          ; $5b9f: $c5
	ld   de, $9f11                                   ; $5ba0: $11 $11 $9f
	rst  $38                                         ; $5ba3: $ff
	or   c                                           ; $5ba4: $b1
	ld   de, $3e11                                   ; $5ba5: $11 $11 $3e
	rst  $38                                         ; $5ba8: $ff
	db   $fc                                         ; $5ba9: $fc
	sub  h                                           ; $5baa: $94
	ld   l, d                                        ; $5bab: $6a
	rst  $28                                         ; $5bac: $ef
	rst  $38                                         ; $5bad: $ff
	ld   a, [$1141]                                  ; $5bae: $fa $41 $11
	inc  a                                           ; $5bb1: $3c
	rst  $38                                         ; $5bb2: $ff
	ld   hl, sp+$11                                  ; $5bb3: $f8 $11
	ld   de, $ef15                                   ; $5bb5: $11 $15 $ef
	cp   $b7                                         ; $5bb8: $fe $b7
	dec  [hl]                                        ; $5bba: $35
	sbc  [hl]                                        ; $5bbb: $9e
	rst  $38                                         ; $5bbc: $ff
	rst  $38                                         ; $5bbd: $ff
	or   l                                           ; $5bbe: $b5
	ld   de, $bf13                                   ; $5bbf: $11 $13 $bf
	rst  $38                                         ; $5bc2: $ff
	sub  d                                           ; $5bc3: $92
	ld   de, $3b11                                   ; $5bc4: $11 $11 $3b
	rst  $28                                         ; $5bc7: $ef
	reti                                             ; $5bc8: $d9


	ld   [hl], h                                     ; $5bc9: $74
	ld   c, c                                        ; $5bca: $49
	cp   a                                           ; $5bcb: $bf
	rst  $38                                         ; $5bcc: $ff
	db   $fd                                         ; $5bcd: $fd
	add  d                                           ; $5bce: $82
	ld   de, $bf28                                   ; $5bcf: $11 $28 $bf
	db   $fc                                         ; $5bd2: $fc
	add  c                                           ; $5bd3: $81
	ld   de, $5a11                                   ; $5bd4: $11 $11 $5a
	cp   l                                           ; $5bd7: $bd
	and  [hl]                                        ; $5bd8: $a6
	ld   h, e                                        ; $5bd9: $63
	ld   l, c                                        ; $5bda: $69
	rst  JumpTable                                         ; $5bdb: $df
	rst  $38                                         ; $5bdc: $ff
	db   $fc                                         ; $5bdd: $fc
	add  h                                           ; $5bde: $84
	ld   [hl-], a                                    ; $5bdf: $32
	ld   b, a                                        ; $5be0: $47
	cp   l                                           ; $5be1: $bd
	db   $ed                                         ; $5be2: $ed
	sub  l                                           ; $5be3: $95
	ld   de, $3711                                   ; $5be4: $11 $11 $37
	sbc  d                                           ; $5be7: $9a
	add  [hl]                                        ; $5be8: $86
	ld   b, h                                        ; $5be9: $44
	ld   b, a                                        ; $5bea: $47
	xor  [hl]                                        ; $5beb: $ae
	rst  $38                                         ; $5bec: $ff
	cp   $b8                                         ; $5bed: $fe $b8
	ld   d, l                                        ; $5bef: $55
	ld   d, a                                        ; $5bf0: $57
	xor  h                                           ; $5bf1: $ac
	db   $ed                                         ; $5bf2: $ed
	jp   z, $1163                                    ; $5bf3: $ca $63 $11

	dec  [hl]                                        ; $5bf6: $35
	ld   a, b                                        ; $5bf7: $78
	ld   [hl], a                                     ; $5bf8: $77
	ld   b, e                                        ; $5bf9: $43
	inc  sp                                          ; $5bfa: $33
	ld   e, b                                        ; $5bfb: $58
	cp   [hl]                                        ; $5bfc: $be
	db   $fd                                         ; $5bfd: $fd
	jp   z, Jump_0bb_6876                            ; $5bfe: $ca $76 $68

	sbc  e                                           ; $5c01: $9b
	call $a7db                                       ; $5c02: $cd $db $a7
	ld   h, l                                        ; $5c05: $65
	ld   d, l                                        ; $5c06: $55
	ld   a, b                                        ; $5c07: $78
	halt                                             ; $5c08: $76
	ld   b, d                                        ; $5c09: $42
	ld   hl, $7924                                   ; $5c0a: $21 $24 $79
	cp   e                                           ; $5c0d: $bb
	cp   e                                           ; $5c0e: $bb
	sbc  c                                           ; $5c0f: $99
	sbc  c                                           ; $5c10: $99
	sbc  d                                           ; $5c11: $9a
	call $b9cb                                       ; $5c12: $cd $cb $b9
	adc  c                                           ; $5c15: $89
	xor  d                                           ; $5c16: $aa
	cp   d                                           ; $5c17: $ba
	add  a                                           ; $5c18: $87
	ld   d, e                                        ; $5c19: $53
	ld   hl, $3423                                   ; $5c1a: $21 $23 $34
	ld   h, a                                        ; $5c1d: $67
	ld   [hl], a                                     ; $5c1e: $77
	sbc  b                                           ; $5c1f: $98
	sbc  c                                           ; $5c20: $99
	sbc  d                                           ; $5c21: $9a
	xor  e                                           ; $5c22: $ab
	cp   e                                           ; $5c23: $bb
	xor  e                                           ; $5c24: $ab
	xor  e                                           ; $5c25: $ab
	call z, $bbbb                                    ; $5c26: $cc $bb $bb
	sbc  b                                           ; $5c29: $98
	ld   h, l                                        ; $5c2a: $65
	ld   b, e                                        ; $5c2b: $43
	inc  sp                                          ; $5c2c: $33
	inc  [hl]                                        ; $5c2d: $34
	ld   b, h                                        ; $5c2e: $44
	ld   d, [hl]                                     ; $5c2f: $56
	ld   h, [hl]                                     ; $5c30: $66
	ld   a, b                                        ; $5c31: $78
	sbc  c                                           ; $5c32: $99
	xor  d                                           ; $5c33: $aa
	xor  e                                           ; $5c34: $ab
	xor  e                                           ; $5c35: $ab
	cp   h                                           ; $5c36: $bc
	call z, $cccb                                    ; $5c37: $cc $cb $cc
	cp   d                                           ; $5c3a: $ba
	sbc  b                                           ; $5c3b: $98
	halt                                             ; $5c3c: $76
	ld   d, l                                        ; $5c3d: $55
	ld   b, h                                        ; $5c3e: $44
	inc  sp                                          ; $5c3f: $33
	inc  sp                                          ; $5c40: $33
	inc  [hl]                                        ; $5c41: $34
	ld   d, l                                        ; $5c42: $55
	ld   a, b                                        ; $5c43: $78
	sbc  d                                           ; $5c44: $9a
	sbc  d                                           ; $5c45: $9a
	xor  d                                           ; $5c46: $aa
	xor  d                                           ; $5c47: $aa
	xor  e                                           ; $5c48: $ab
	call z, $bbcb                                    ; $5c49: $cc $cb $bb
	cp   d                                           ; $5c4c: $ba
	sbc  d                                           ; $5c4d: $9a
	adc  b                                           ; $5c4e: $88
	halt                                             ; $5c4f: $76
	ld   d, h                                        ; $5c50: $54
	inc  sp                                          ; $5c51: $33
	inc  sp                                          ; $5c52: $33
	ld   b, h                                        ; $5c53: $44
	ld   d, [hl]                                     ; $5c54: $56
	ld   h, a                                        ; $5c55: $67
	ld   a, b                                        ; $5c56: $78
	adc  c                                           ; $5c57: $89
	sbc  d                                           ; $5c58: $9a
	cp   d                                           ; $5c59: $ba
	xor  d                                           ; $5c5a: $aa
	xor  d                                           ; $5c5b: $aa
	xor  e                                           ; $5c5c: $ab
	cp   e                                           ; $5c5d: $bb
	cp   e                                           ; $5c5e: $bb
	cp   d                                           ; $5c5f: $ba
	xor  c                                           ; $5c60: $a9
	sub  a                                           ; $5c61: $97
	ld   h, l                                        ; $5c62: $65
	ld   d, h                                        ; $5c63: $54
	ld   b, h                                        ; $5c64: $44
	ld   b, h                                        ; $5c65: $44
	ld   b, h                                        ; $5c66: $44
	ld   b, l                                        ; $5c67: $45
	ld   h, a                                        ; $5c68: $67
	adc  c                                           ; $5c69: $89
	sbc  c                                           ; $5c6a: $99
	xor  c                                           ; $5c6b: $a9
	sbc  c                                           ; $5c6c: $99
	sbc  d                                           ; $5c6d: $9a
	xor  e                                           ; $5c6e: $ab
	cp   e                                           ; $5c6f: $bb
	xor  e                                           ; $5c70: $ab
	cp   d                                           ; $5c71: $ba
	cp   d                                           ; $5c72: $ba
	xor  d                                           ; $5c73: $aa
	sbc  b                                           ; $5c74: $98
	halt                                             ; $5c75: $76
	ld   d, h                                        ; $5c76: $54
	ld   b, e                                        ; $5c77: $43
	ld   b, h                                        ; $5c78: $44
	ld   b, l                                        ; $5c79: $45
	ld   d, l                                        ; $5c7a: $55
	ld   h, [hl]                                     ; $5c7b: $66
	ld   a, b                                        ; $5c7c: $78
	sbc  c                                           ; $5c7d: $99
	sbc  d                                           ; $5c7e: $9a
	xor  c                                           ; $5c7f: $a9
	sbc  c                                           ; $5c80: $99
	sbc  c                                           ; $5c81: $99
	xor  e                                           ; $5c82: $ab
	xor  d                                           ; $5c83: $aa
	cp   d                                           ; $5c84: $ba
	xor  d                                           ; $5c85: $aa
	xor  c                                           ; $5c86: $a9
	sbc  c                                           ; $5c87: $99
	add  a                                           ; $5c88: $87
	ld   h, l                                        ; $5c89: $65
	ld   d, l                                        ; $5c8a: $55
	ld   d, h                                        ; $5c8b: $54
	ld   b, h                                        ; $5c8c: $44
	ld   b, h                                        ; $5c8d: $44
	ld   d, [hl]                                     ; $5c8e: $56
	ld   a, b                                        ; $5c8f: $78
	adc  c                                           ; $5c90: $89
	adc  b                                           ; $5c91: $88
	adc  c                                           ; $5c92: $89
	sbc  c                                           ; $5c93: $99
	cp   d                                           ; $5c94: $ba
	xor  c                                           ; $5c95: $a9
	sbc  d                                           ; $5c96: $9a
	xor  d                                           ; $5c97: $aa
	cp   e                                           ; $5c98: $bb
	xor  e                                           ; $5c99: $ab
	xor  c                                           ; $5c9a: $a9
	sbc  b                                           ; $5c9b: $98
	add  a                                           ; $5c9c: $87
	halt                                             ; $5c9d: $76
	ld   h, l                                        ; $5c9e: $65
	ld   b, h                                        ; $5c9f: $44
	ld   b, h                                        ; $5ca0: $44
	ld   b, l                                        ; $5ca1: $45
	ld   h, [hl]                                     ; $5ca2: $66
	ld   [hl], a                                     ; $5ca3: $77
	ld   a, b                                        ; $5ca4: $78
	adc  b                                           ; $5ca5: $88
	sbc  c                                           ; $5ca6: $99
	xor  d                                           ; $5ca7: $aa
	xor  c                                           ; $5ca8: $a9
	sbc  d                                           ; $5ca9: $9a
	xor  e                                           ; $5caa: $ab
	cp   e                                           ; $5cab: $bb
	xor  d                                           ; $5cac: $aa
	xor  d                                           ; $5cad: $aa
	sbc  c                                           ; $5cae: $99
	sbc  c                                           ; $5caf: $99
	add  a                                           ; $5cb0: $87
	halt                                             ; $5cb1: $76
	ld   h, l                                        ; $5cb2: $65
	ld   d, h                                        ; $5cb3: $54
	ld   b, h                                        ; $5cb4: $44
	ld   b, l                                        ; $5cb5: $45
	ld   d, [hl]                                     ; $5cb6: $56
	ld   h, a                                        ; $5cb7: $67
	ld   a, b                                        ; $5cb8: $78
	sbc  c                                           ; $5cb9: $99
	sbc  c                                           ; $5cba: $99
	xor  d                                           ; $5cbb: $aa
	sbc  c                                           ; $5cbc: $99
	sbc  d                                           ; $5cbd: $9a
	xor  c                                           ; $5cbe: $a9
	xor  d                                           ; $5cbf: $aa
	xor  e                                           ; $5cc0: $ab
	cp   d                                           ; $5cc1: $ba
	xor  c                                           ; $5cc2: $a9
	xor  c                                           ; $5cc3: $a9
	sbc  b                                           ; $5cc4: $98
	ld   [hl], a                                     ; $5cc5: $77
	ld   h, [hl]                                     ; $5cc6: $66
	ld   d, l                                        ; $5cc7: $55
	ld   b, h                                        ; $5cc8: $44
	ld   b, h                                        ; $5cc9: $44
	ld   d, [hl]                                     ; $5cca: $56
	ld   h, a                                        ; $5ccb: $67
	ld   [hl], a                                     ; $5ccc: $77
	adc  b                                           ; $5ccd: $88
	sbc  c                                           ; $5cce: $99
	sbc  d                                           ; $5ccf: $9a
	sbc  c                                           ; $5cd0: $99
	xor  d                                           ; $5cd1: $aa
	sbc  e                                           ; $5cd2: $9b
	xor  d                                           ; $5cd3: $aa
	xor  d                                           ; $5cd4: $aa
	res  7, c                                        ; $5cd5: $cb $b9
	adc  d                                           ; $5cd7: $8a
	sbc  e                                           ; $5cd8: $9b
	sub  a                                           ; $5cd9: $97
	ld   h, l                                        ; $5cda: $65
	ld   d, h                                        ; $5cdb: $54
	ld   d, l                                        ; $5cdc: $55
	ld   b, h                                        ; $5cdd: $44
	dec  [hl]                                        ; $5cde: $35
	ld   a, b                                        ; $5cdf: $78
	add  a                                           ; $5ce0: $87
	ld   h, l                                        ; $5ce1: $65
	ld   l, c                                        ; $5ce2: $69
	cp   e                                           ; $5ce3: $bb
	cp   d                                           ; $5ce4: $ba
	adc  b                                           ; $5ce5: $88
	sbc  d                                           ; $5ce6: $9a
	call $b9db                                       ; $5ce7: $cd $db $b9
	xor  d                                           ; $5cea: $aa
	cp   e                                           ; $5ceb: $bb
	and  a                                           ; $5cec: $a7
	ld   b, d                                        ; $5ced: $42
	ld   b, a                                        ; $5cee: $47
	add  a                                           ; $5cef: $87
	ld   d, d                                        ; $5cf0: $52
	ld   [hl+], a                                    ; $5cf1: $22
	ld   d, a                                        ; $5cf2: $57
	halt                                             ; $5cf3: $76
	ld   d, l                                        ; $5cf4: $55
	ld   l, b                                        ; $5cf5: $68
	xor  h                                           ; $5cf6: $ac
	jp   z, $88a9                                    ; $5cf7: $ca $a9 $88

	xor  e                                           ; $5cfa: $ab
	db   $dd                                         ; $5cfb: $dd
	call c, $a9ba                                    ; $5cfc: $dc $ba $a9
	sub  a                                           ; $5cff: $97
	ld   d, h                                        ; $5d00: $54
	halt                                             ; $5d01: $76
	ld   d, e                                        ; $5d02: $53
	ld   [de], a                                     ; $5d03: $12
	dec  h                                           ; $5d04: $25
	ld   a, c                                        ; $5d05: $79
	halt                                             ; $5d06: $76
	ld   h, a                                        ; $5d07: $67
	sbc  d                                           ; $5d08: $9a
	cp   e                                           ; $5d09: $bb
	sbc  c                                           ; $5d0a: $99
	cp   e                                           ; $5d0b: $bb
	call $99ca                                       ; $5d0c: $cd $ca $99
	xor  e                                           ; $5d0f: $ab
	xor  b                                           ; $5d10: $a8
	ld   b, c                                        ; $5d11: $41
	inc  d                                           ; $5d12: $14
	cp   d                                           ; $5d13: $ba
	sub  l                                           ; $5d14: $95
	ld   hl, $fe3b                                   ; $5d15: $21 $3b $fe
	and  a                                           ; $5d18: $a7
	ld   b, [hl]                                     ; $5d19: $46
	ld   a, e                                        ; $5d1a: $7b
	ld   [$88a8], a                                  ; $5d1b: $ea $a8 $88
	xor  l                                           ; $5d1e: $ad
	res  3, c                                        ; $5d1f: $cb $99
	add  a                                           ; $5d21: $87
	ld   d, c                                        ; $5d22: $51
	ld   de, $7758                                   ; $5d23: $11 $58 $77
	ld   b, [hl]                                     ; $5d26: $46
	ld   c, c                                        ; $5d27: $49
	rst  $38                                         ; $5d28: $ff
	db   $fd                                         ; $5d29: $fd
	sbc  b                                           ; $5d2a: $98
	ld   l, b                                        ; $5d2b: $68
	cp   $a6                                         ; $5d2c: $fe $a6
	ld   b, l                                        ; $5d2e: $45
	ld   e, h                                        ; $5d2f: $5c
	cp   $a7                                         ; $5d30: $fe $a7
	ld   sp, $1711                                   ; $5d32: $31 $11 $17
	ld   [hl], h                                     ; $5d35: $74
	ld   b, c                                        ; $5d36: $41
	ld   l, d                                        ; $5d37: $6a
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	rst  ToBoot                                         ; $5d3a: $c7
	sbc  e                                           ; $5d3b: $9b
	rst  $28                                         ; $5d3c: $ef
	ld   [hl], d                                     ; $5d3d: $72
	ld   de, $ff5a                                   ; $5d3e: $11 $5a $ff
	ret  c                                           ; $5d41: $d8

	ld   b, c                                        ; $5d42: $41
	ld   de, $6414                                   ; $5d43: $11 $14 $64
	ld   [hl], h                                     ; $5d46: $74
	ld   a, d                                        ; $5d47: $7a
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	ld   hl, sp-$77                                  ; $5d4a: $f8 $89
	rst  JumpTable                                         ; $5d4c: $df
	ld   d, c                                        ; $5d4d: $51
	ld   de, $ff8f                                   ; $5d4e: $11 $8f $ff
	pop  bc                                          ; $5d51: $c1
	ld   de, $6911                                   ; $5d52: $11 $11 $69
	daa                                              ; $5d55: $27
	add  hl, sp                                      ; $5d56: $39
	rst  JumpTable                                         ; $5d57: $df
	rst  $38                                         ; $5d58: $ff
	ld   a, [$ad66]                                  ; $5d59: $fa $66 $ad
	pop  de                                          ; $5d5c: $d1
	ld   de, $ff8f                                   ; $5d5d: $11 $8f $ff
	pop  af                                          ; $5d60: $f1
	ld   de, $1711                                   ; $5d61: $11 $11 $17
	ld   de, $ff8f                                   ; $5d64: $11 $8f $ff
	rst  $38                                         ; $5d67: $ff
	ld   hl, sp+$47                                  ; $5d68: $f8 $47
	ld   b, e                                        ; $5d6a: $43
	ld   [hl], e                                     ; $5d6b: $73
	ld   de, $ff9f                                   ; $5d6c: $11 $9f $ff
	push af                                          ; $5d6f: $f5
	ld   de, $1111                                   ; $5d70: $11 $11 $11
	ld   de, $ffbf                                   ; $5d73: $11 $bf $ff
	rst  $38                                         ; $5d76: $ff
	rst  $38                                         ; $5d77: $ff
	ld   h, c                                        ; $5d78: $61
	ld   de, $3113                                   ; $5d79: $11 $13 $31
	ld   c, a                                        ; $5d7c: $4f
	rst  $38                                         ; $5d7d: $ff
	rst  $38                                         ; $5d7e: $ff
	ld   hl, $1111                                   ; $5d7f: $21 $11 $11
	ld   d, $af                                      ; $5d82: $16 $af
	rst  $38                                         ; $5d84: $ff
	rst  $38                                         ; $5d85: $ff
	rst  $38                                         ; $5d86: $ff
	pop  hl                                          ; $5d87: $e1
	ld   de, $ba11                                   ; $5d88: $11 $11 $ba
	ld   h, $ff                                      ; $5d8b: $26 $ff
	rst  $38                                         ; $5d8d: $ff
	pop  af                                          ; $5d8e: $f1
	ld   de, $1111                                   ; $5d8f: $11 $11 $11
	rst  JumpTable                                         ; $5d92: $df
	rst  $38                                         ; $5d93: $ff
	rst  $38                                         ; $5d94: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d95: $cf
	rst  $30                                         ; $5d96: $f7
	ld   de, $3f11                                   ; $5d97: $11 $11 $3f
	push hl                                          ; $5d9a: $e5
	ld   a, a                                        ; $5d9b: $7f
	rst  $38                                         ; $5d9c: $ff
	ld   a, [$1111]                                  ; $5d9d: $fa $11 $11
	ld   de, $ff1f                                   ; $5da0: $11 $1f $ff
	rst  $38                                         ; $5da3: $ff
	ld   hl, sp-$01                                  ; $5da4: $f8 $ff
	ld   d, c                                        ; $5da6: $51
	ld   de, $ff1c                                   ; $5da7: $11 $1c $ff
	ld   d, h                                        ; $5daa: $54
	rst  $38                                         ; $5dab: $ff
	rst  $38                                         ; $5dac: $ff
	ld   d, c                                        ; $5dad: $51
	ld   de, $1111                                   ; $5dae: $11 $11 $11
	rst  $38                                         ; $5db1: $ff
	rst  $38                                         ; $5db2: $ff
	call z, $f56f                                    ; $5db3: $cc $6f $f5
	ld   de, $ff15                                   ; $5db6: $11 $15 $ff
	or   $3f                                         ; $5db9: $f6 $3f
	rst  $38                                         ; $5dbb: $ff
	pop  af                                          ; $5dbc: $f1
	ld   de, $1133                                   ; $5dbd: $11 $33 $11
	rra                                              ; $5dc0: $1f
	rst  $38                                         ; $5dc1: $ff
	rst  $30                                         ; $5dc2: $f7
	ld   [hl], l                                     ; $5dc3: $75
	rst  $38                                         ; $5dc4: $ff
	ld   h, c                                        ; $5dc5: $61
	ld   de, $ffbf                                   ; $5dc6: $11 $bf $ff
	ld   d, e                                        ; $5dc9: $53
	rst  $38                                         ; $5dca: $ff
	cp   $11                                         ; $5dcb: $fe $11
	ld   d, $61                                      ; $5dcd: $16 $61
	ld   de, $ffff                                   ; $5dcf: $11 $ff $ff
	inc  de                                          ; $5dd2: $13
	sbc  a                                           ; $5dd3: $9f
	ld   hl, sp+$11                                  ; $5dd4: $f8 $11
	rra                                              ; $5dd6: $1f
	rst  $38                                         ; $5dd7: $ff
	ldh  a, [c]                                      ; $5dd8: $f2
	ccf                                              ; $5dd9: $3f
	rst  $38                                         ; $5dda: $ff
	add  c                                           ; $5ddb: $81
	ld   [de], a                                     ; $5ddc: $12
	cp   c                                           ; $5ddd: $b9
	ld   de, $ff1e                                   ; $5dde: $11 $1e $ff
	pop  af                                          ; $5de1: $f1
	dec  de                                          ; $5de2: $1b
	rst  $38                                         ; $5de3: $ff
	or   c                                           ; $5de4: $b1
	ld   de, $feff                                   ; $5de5: $11 $ff $fe
	ld   [de], a                                     ; $5de8: $12
	rst  $38                                         ; $5de9: $ff
	push af                                          ; $5dea: $f5
	ld   de, $c15f                                   ; $5deb: $11 $5f $c1
	ld   de, $ff5f                                   ; $5dee: $11 $5f $ff
	ld   de, $ffdf                                   ; $5df1: $11 $df $ff
	ld   de, $ff1f                                   ; $5df4: $11 $1f $ff
	or   c                                           ; $5df7: $b1
	cpl                                              ; $5df8: $2f
	rst  $38                                         ; $5df9: $ff
	ld   b, c                                        ; $5dfa: $41

jr_0bb_5dfb:
	jr   jr_0bb_5dfb                                 ; $5dfb: $18 $fe

	ld   de, rAUD1LEN                                   ; $5dfd: $11 $11 $ff
	pop  af                                          ; $5e00: $f1
	dec  de                                          ; $5e01: $1b
	rst  $38                                         ; $5e02: $ff
	pop  af                                          ; $5e03: $f1
	ld   de, $fdbf                                   ; $5e04: $11 $bf $fd
	ld   de, $f9ff                                   ; $5e07: $11 $ff $f9
	ld   de, $f15f                                   ; $5e0a: $11 $5f $f1
	ld   de, $ff1f                                   ; $5e0d: $11 $1f $ff
	ld   d, c                                        ; $5e10: $51
	cpl                                              ; $5e11: $2f
	rst  $38                                         ; $5e12: $ff
	ld   de, rAUD1LOW                                   ; $5e13: $11 $13 $ff
	pop  af                                          ; $5e16: $f1
	ld   e, $ff                                      ; $5e17: $1e $ff
	pop  af                                          ; $5e19: $f1
	ld   de, $51ff                                   ; $5e1a: $11 $ff $51
	ld   de, $fdff                                   ; $5e1d: $11 $ff $fd
	ld   de, $f1ff                                   ; $5e20: $11 $ff $f1
	ld   de, $ff1f                                   ; $5e23: $11 $1f $ff
	ld   b, c                                        ; $5e26: $41
	adc  a                                           ; $5e27: $8f
	rst  $38                                         ; $5e28: $ff
	ld   de, $fb1d                                   ; $5e29: $11 $1d $fb
	ld   de, rAUD1LEN                                   ; $5e2c: $11 $11 $ff
	pop  af                                          ; $5e2f: $f1
	rra                                              ; $5e30: $1f
	rst  $38                                         ; $5e31: $ff
	pop  de                                          ; $5e32: $d1
	ld   de, $f5ff                                   ; $5e33: $11 $ff $f5
	inc  de                                          ; $5e36: $13
	rst  $38                                         ; $5e37: $ff
	pop  af                                          ; $5e38: $f1
	ld   de, $f19f                                   ; $5e39: $11 $9f $f1
	ld   de, $ff1f                                   ; $5e3c: $11 $1f $ff
	ld   de, $ff3f                                   ; $5e3f: $11 $3f $ff
	ld   de, rAUD1LOW                                   ; $5e42: $11 $13 $ff
	or   c                                           ; $5e45: $b1
	rra                                              ; $5e46: $1f
	rst  $38                                         ; $5e47: $ff
	and  c                                           ; $5e48: $a1
	inc  d                                           ; $5e49: $14
	rst  $38                                         ; $5e4a: $ff
	ld   b, c                                        ; $5e4b: $41
	ld   de, $ff1f                                   ; $5e4c: $11 $1f $ff
	ld   de, $f9ff                                   ; $5e4f: $11 $ff $f9
	ld   de, $ff1f                                   ; $5e52: $11 $1f $ff
	ld   de, $ff8f                                   ; $5e55: $11 $8f $ff
	ld   hl, $ff1b                                   ; $5e58: $21 $1b $ff
	ld   de, $9f11                                   ; $5e5b: $11 $11 $9f
	ld   sp, hl                                      ; $5e5e: $f9
	ld   de, $f3ff                                   ; $5e5f: $11 $ff $f3
	ld   de, $ff1f                                   ; $5e62: $11 $1f $ff
	ld   de, $ffdf                                   ; $5e65: $11 $df $ff
	ld   hl, $fb1c                                   ; $5e68: $21 $1c $fb
	ld   de, $7f11                                   ; $5e6b: $11 $11 $7f
	ld   hl, sp+$12                                  ; $5e6e: $f8 $12
	rst  $38                                         ; $5e70: $ff
	ld   hl, sp+$11                                  ; $5e71: $f8 $11
	rra                                              ; $5e73: $1f
	db   $fd                                         ; $5e74: $fd
	ld   de, $ff8f                                   ; $5e75: $11 $8f $ff
	add  c                                           ; $5e78: $81
	ld   a, [de]                                     ; $5e79: $1a
	db   $fd                                         ; $5e7a: $fd
	ld   de, $1f11                                   ; $5e7b: $11 $11 $1f
	rst  $38                                         ; $5e7e: $ff
	ld   de, $ffff                                   ; $5e7f: $11 $ff $ff
	ld   hl, $ff19                                   ; $5e82: $21 $19 $ff
	ld   d, c                                        ; $5e85: $51
	jr   z, @+$01                                    ; $5e86: $28 $ff

	and  $25                                         ; $5e88: $e6 $25
	sbc  $92                                         ; $5e8a: $de $92
	ld   [de], a                                     ; $5e8c: $12
	dec  h                                           ; $5e8d: $25
	rst  $38                                         ; $5e8e: $ff
	ld   h, c                                        ; $5e8f: $61
	rla                                              ; $5e90: $17
	adc  c                                           ; $5e91: $89
	sbc  $73                                         ; $5e92: $de $73
	ld   a, [hl]                                     ; $5e94: $7e
	db   $fc                                         ; $5e95: $fc
	add  l                                           ; $5e96: $85
	ld   d, [hl]                                     ; $5e97: $56
	adc  d                                           ; $5e98: $8a
	sub  a                                           ; $5e99: $97
	ld   a, b                                        ; $5e9a: $78
	xor  e                                           ; $5e9b: $ab
	res  0, l                                        ; $5e9c: $cb $85
	ld   c, c                                        ; $5e9e: $49
	rst  ToBoot                                         ; $5e9f: $c7
	ld   de, $7d12                                   ; $5ea0: $11 $12 $7d
	add  $47                                         ; $5ea3: $c6 $47
	cp   l                                           ; $5ea5: $bd
	db   $dd                                         ; $5ea6: $dd
	and  h                                           ; $5ea7: $a4
	ld   c, c                                        ; $5ea8: $49
	cp   e                                           ; $5ea9: $bb
	add  a                                           ; $5eaa: $87
	sbc  e                                           ; $5eab: $9b
	call c, $3185                                    ; $5eac: $dc $85 $31
	ld   a, [de]                                     ; $5eaf: $1a
	rst  $10                                         ; $5eb0: $d7
	ld   de, $df37                                   ; $5eb1: $11 $37 $df
	or   $27                                         ; $5eb4: $f6 $27
	rst  $28                                         ; $5eb6: $ef
	db   $ec                                         ; $5eb7: $ec
	ld   d, c                                        ; $5eb8: $51
	ld   c, e                                        ; $5eb9: $4b
	reti                                             ; $5eba: $d9


	ld   h, [hl]                                     ; $5ebb: $66
	xor  l                                           ; $5ebc: $ad
	ld   [$1141], a                                  ; $5ebd: $ea $41 $11
	rra                                              ; $5ec0: $1f
	ld   hl, sp+$12                                  ; $5ec1: $f8 $12
	rst  JumpTable                                         ; $5ec3: $df
	rst  $38                                         ; $5ec4: $ff
	pop  de                                          ; $5ec5: $d1

jr_0bb_5ec6:
	jr   jr_0bb_5ec6                                 ; $5ec6: $18 $fe

	ld   h, d                                        ; $5ec8: $62
	ld   de, $fbcf                                   ; $5ec9: $11 $cf $fb
	adc  d                                           ; $5ecc: $8a
	rst  $38                                         ; $5ecd: $ff
	sub  c                                           ; $5ece: $91
	ld   de, rAUD1LEN                                   ; $5ecf: $11 $11 $ff
	and  c                                           ; $5ed2: $a1
	ccf                                              ; $5ed3: $3f
	rst  $38                                         ; $5ed4: $ff
	pop  af                                          ; $5ed5: $f1
	ld   de, $b1cf                                   ; $5ed6: $11 $cf $b1
	ld   de, $ffff                                   ; $5ed9: $11 $ff $ff
	ld   h, d                                        ; $5edc: $62
	xor  a                                           ; $5edd: $af
	pop  de                                          ; $5ede: $d1
	ld   de, rAUD1LEN                                   ; $5edf: $11 $11 $ff
	pop  af                                          ; $5ee2: $f1
	rra                                              ; $5ee3: $1f
	rst  $38                                         ; $5ee4: $ff
	pop  af                                          ; $5ee5: $f1
	ld   de, $f19f                                   ; $5ee6: $11 $9f $f1
	inc  d                                           ; $5ee9: $14
	rst  $38                                         ; $5eea: $ff
	db   $fd                                         ; $5eeb: $fd
	ld   de, $e17f                                   ; $5eec: $11 $7f $e1
	ld   de, rAUD1LEN                                   ; $5eef: $11 $11 $ff
	pop  af                                          ; $5ef2: $f1
	rra                                              ; $5ef3: $1f
	rst  $38                                         ; $5ef4: $ff
	or   c                                           ; $5ef5: $b1
	ld   de, $f1ff                                   ; $5ef6: $11 $ff $f1
	add  hl, de                                      ; $5ef9: $19
	rst  $38                                         ; $5efa: $ff
	di                                               ; $5efb: $f3
	ld   de, $f1bf                                   ; $5efc: $11 $bf $f1
	ld   de, rAUD1LEN                                   ; $5eff: $11 $11 $ff
	pop  af                                          ; $5f02: $f1
	rra                                              ; $5f03: $1f
	rst  $38                                         ; $5f04: $ff
	sub  c                                           ; $5f05: $91
	ld   de, $f1ff                                   ; $5f06: $11 $ff $f1
	dec  de                                          ; $5f09: $1b
	rst  $38                                         ; $5f0a: $ff
	pop  af                                          ; $5f0b: $f1
	ld   de, $e1df                                   ; $5f0c: $11 $df $e1
	ld   de, $1f11                                   ; $5f0f: $11 $11 $1f
	db   $f4                                         ; $5f12: $f4
	ld   d, $ff                                      ; $5f13: $16 $ff
	db   $f4                                         ; $5f15: $f4
	ld   de, $fb1f                                   ; $5f16: $11 $1f $fb
	inc  de                                          ; $5f19: $13
	rst  $38                                         ; $5f1a: $ff
	ei                                               ; $5f1b: $fb
	ld   de, $f85f                                   ; $5f1c: $11 $5f $f8
	ld   de, $1c11                                   ; $5f1f: $11 $11 $1c
	rst  $38                                         ; $5f22: $ff
	ld   de, $ffbf                                   ; $5f23: $11 $bf $ff
	ld   de, $ff15                                   ; $5f26: $11 $15 $ff
	add  c                                           ; $5f29: $81
	ld   a, a                                        ; $5f2a: $7f
	rst  $38                                         ; $5f2b: $ff
	ld   [hl], c                                     ; $5f2c: $71
	ld   a, [de]                                     ; $5f2d: $1a
	rst  $38                                         ; $5f2e: $ff
	ld   d, c                                        ; $5f2f: $51
	ld   de, rAUD1LEN                                   ; $5f30: $11 $11 $ff
	pop  af                                          ; $5f33: $f1
	ld   e, $ff                                      ; $5f34: $1e $ff
	pop  af                                          ; $5f36: $f1
	ld   de, $f6df                                   ; $5f37: $11 $df $f6
	ld   a, [de]                                     ; $5f3a: $1a
	rst  $38                                         ; $5f3b: $ff
	ldh  a, [c]                                      ; $5f3c: $f2
	ld   de, $f3ff                                   ; $5f3d: $11 $ff $f3
	ld   de, $1f11                                   ; $5f40: $11 $11 $1f
	ei                                               ; $5f43: $fb
	rla                                              ; $5f44: $17
	rst  $38                                         ; $5f45: $ff
	rst  $38                                         ; $5f46: $ff
	ld   de, $ff1f                                   ; $5f47: $11 $1f $ff
	halt                                             ; $5f4a: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f4b: $cf
	rst  $38                                         ; $5f4c: $ff
	ld   de, $fc3f                                   ; $5f4d: $11 $3f $fc
	ld   b, c                                        ; $5f50: $41
	ld   de, rAUD1LEN                                   ; $5f51: $11 $11 $ff
	and  c                                           ; $5f54: $a1
	ccf                                              ; $5f55: $3f
	rst  $38                                         ; $5f56: $ff
	pop  bc                                          ; $5f57: $c1
	ld   de, $f2ff                                   ; $5f58: $11 $ff $f2
	ld   c, a                                        ; $5f5b: $4f
	rst  $38                                         ; $5f5c: $ff
	or   c                                           ; $5f5d: $b1
	jr   @+$01                                       ; $5f5e: $18 $ff

	and  c                                           ; $5f60: $a1
	ld   de, $1f11                                   ; $5f61: $11 $11 $1f
	ld   sp, hl                                      ; $5f64: $f9
	inc  d                                           ; $5f65: $14
	rst  $38                                         ; $5f66: $ff
	ld   a, [$1f11]                                  ; $5f67: $fa $11 $1f
	db   $fd                                         ; $5f6a: $fd
	ld   d, $ff                                      ; $5f6b: $16 $ff
	ei                                               ; $5f6d: $fb
	ld   de, $f7bf                                   ; $5f6e: $11 $bf $f7
	ld   de, $1111                                   ; $5f71: $11 $11 $11
	rst  $38                                         ; $5f74: $ff
	and  c                                           ; $5f75: $a1
	ld   c, a                                        ; $5f76: $4f
	rst  $38                                         ; $5f77: $ff
	sub  c                                           ; $5f78: $91
	ld   de, $b1ff                                   ; $5f79: $11 $ff $b1
	adc  a                                           ; $5f7c: $8f
	rst  $38                                         ; $5f7d: $ff
	sub  c                                           ; $5f7e: $91
	dec  de                                          ; $5f7f: $1b
	rst  $38                                         ; $5f80: $ff
	ld   h, c                                        ; $5f81: $61
	ld   de, $1f11                                   ; $5f82: $11 $11 $1f
	or   $15                                         ; $5f85: $f6 $15
	rst  $38                                         ; $5f87: $ff
	ld   hl, sp+$11                                  ; $5f88: $f8 $11
	ld   c, a                                        ; $5f8a: $4f
	rst  $30                                         ; $5f8b: $f7
	dec  de                                          ; $5f8c: $1b
	rst  $38                                         ; $5f8d: $ff
	ld   sp, hl                                      ; $5f8e: $f9
	ld   [de], a                                     ; $5f8f: $12
	xor  a                                           ; $5f90: $af
	db   $f4                                         ; $5f91: $f4
	ld   de, $1111                                   ; $5f92: $11 $11 $11
	rst  $38                                         ; $5f95: $ff
	ld   b, c                                        ; $5f96: $41
	adc  a                                           ; $5f97: $8f
	rst  $38                                         ; $5f98: $ff
	add  c                                           ; $5f99: $81
	ld   d, $ff                                      ; $5f9a: $16 $ff
	ld   b, c                                        ; $5f9c: $41
	rst  $28                                         ; $5f9d: $ef
	rst  $38                                         ; $5f9e: $ff
	add  c                                           ; $5f9f: $81
	dec  l                                           ; $5fa0: $2d
	rst  $38                                         ; $5fa1: $ff
	ld   de, $1111                                   ; $5fa2: $11 $11 $11
	rra                                              ; $5fa5: $1f
	db   $f4                                         ; $5fa6: $f4
	add  hl, de                                      ; $5fa7: $19
	rst  $38                                         ; $5fa8: $ff
	ld   a, [$6f11]                                  ; $5fa9: $fa $11 $6f
	ldh  a, [c]                                      ; $5fac: $f2
	rra                                              ; $5fad: $1f
	rst  $38                                         ; $5fae: $ff
	ld   sp, hl                                      ; $5faf: $f9
	ld   h, $df                                      ; $5fb0: $26 $df
	or   c                                           ; $5fb2: $b1
	ld   de, $1111                                   ; $5fb3: $11 $11 $11
	rst  $38                                         ; $5fb6: $ff
	ld   h, c                                        ; $5fb7: $61
	ld   l, a                                        ; $5fb8: $6f
	rst  $38                                         ; $5fb9: $ff
	or   c                                           ; $5fba: $b1
	ld   d, $ff                                      ; $5fbb: $16 $ff
	ld   de, $ffff                                   ; $5fbd: $11 $ff $ff
	ld   [hl], e                                     ; $5fc0: $73
	sbc  a                                           ; $5fc1: $9f
	ld   hl, sp+$11                                  ; $5fc2: $f8 $11
	ld   de, $1f11                                   ; $5fc4: $11 $11 $1f
	db   $fc                                         ; $5fc7: $fc
	inc  de                                          ; $5fc8: $13
	rst  $38                                         ; $5fc9: $ff
	cp   $11                                         ; $5fca: $fe $11
	ld   c, a                                        ; $5fcc: $4f
	pop  af                                          ; $5fcd: $f1
	inc  e                                           ; $5fce: $1c
	rst  $38                                         ; $5fcf: $ff
	rst  $30                                         ; $5fd0: $f7
	ld   a, l                                        ; $5fd1: $7d
	rst  $38                                         ; $5fd2: $ff
	ld   [hl], c                                     ; $5fd3: $71
	inc  d                                           ; $5fd4: $14
	ld   hl, $bf11                                   ; $5fd5: $21 $11 $bf
	pop  af                                          ; $5fd8: $f1
	rra                                              ; $5fd9: $1f
	rst  $38                                         ; $5fda: $ff
	pop  af                                          ; $5fdb: $f1
	ld   de, $11cf                                   ; $5fdc: $11 $cf $11
	ld   e, a                                        ; $5fdf: $5f
	cp   $ce                                         ; $5fe0: $fe $ce
	rst  $38                                         ; $5fe2: $ff
	ld   sp, hl                                      ; $5fe3: $f9
	dec  d                                           ; $5fe4: $15
	sub  c                                           ; $5fe5: $91
	ld   de, rAUD1LEN                                   ; $5fe6: $11 $11 $ff
	ld   h, c                                        ; $5fe9: $61
	cp   a                                           ; $5fea: $bf
	rst  $38                                         ; $5feb: $ff
	pop  bc                                          ; $5fec: $c1
	inc  d                                           ; $5fed: $14
	cp   b                                           ; $5fee: $b8
	ld   de, $ffef                                   ; $5fef: $11 $ef $ff
	cp   l                                           ; $5ff2: $bd
	rst  $38                                         ; $5ff3: $ff
	di                                               ; $5ff4: $f3
	ld   h, $41                                      ; $5ff5: $26 $41
	ld   de, $ff16                                   ; $5ff7: $11 $16 $ff
	ld   de, $ffff                                   ; $5ffa: $11 $ff $ff
	ld   sp, $f14f                                   ; $5ffd: $31 $4f $f1
	ld   de, $d9ff                                   ; $6000: $11 $ff $d9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6003: $cf
	rst  $38                                         ; $6004: $ff
	or   e                                           ; $6005: $b3
	ld   l, b                                        ; $6006: $68
	ld   b, c                                        ; $6007: $41
	ld   de, $f11f                                   ; $6008: $11 $1f $f1
	rla                                              ; $600b: $17
	rst  $38                                         ; $600c: $ff
	db   $fc                                         ; $600d: $fc
	dec  h                                           ; $600e: $25
	rst  $28                                         ; $600f: $ef
	add  c                                           ; $6010: $81
	dec  d                                           ; $6011: $15
	db   $dd                                         ; $6012: $dd
	adc  c                                           ; $6013: $89
	rst  $38                                         ; $6014: $ff
	rst  $38                                         ; $6015: $ff
	sub  a                                           ; $6016: $97
	add  a                                           ; $6017: $87
	ld   de, $3f11                                   ; $6018: $11 $11 $3f
	ld   [hl], c                                     ; $601b: $71
	rra                                              ; $601c: $1f
	rst  $38                                         ; $601d: $ff
	db   $fc                                         ; $601e: $fc
	sbc  [hl]                                        ; $601f: $9e
	rst  $38                                         ; $6020: $ff
	ld   de, $6615                                   ; $6021: $11 $15 $66
	ld   l, c                                        ; $6024: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6025: $cf
	db   $fd                                         ; $6026: $fd
	res  2, e                                        ; $6027: $cb $93
	ld   de, $b411                                   ; $6029: $11 $11 $b4
	ld   de, $ffaf                                   ; $602c: $11 $af $ff
	db   $fc                                         ; $602f: $fc
	rst  $38                                         ; $6030: $ff
	ld   sp, hl                                      ; $6031: $f9
	inc  h                                           ; $6032: $24
	ld   h, l                                        ; $6033: $65
	ld   d, [hl]                                     ; $6034: $56
	ld   l, b                                        ; $6035: $68
	call $b8bb                                       ; $6036: $cd $bb $b8
	ld   sp, $6511                                   ; $6039: $31 $11 $65
	ld   de, $bb6c                                   ; $603c: $11 $6c $bb
	sbc  $ef                                         ; $603f: $de $ef
	db   $fd                                         ; $6041: $fd
	cp   e                                           ; $6042: $bb
	cp   b                                           ; $6043: $b8
	ld   h, [hl]                                     ; $6044: $66
	ld   [hl], a                                     ; $6045: $77
	ld   a, b                                        ; $6046: $78
	adc  d                                           ; $6047: $8a
	xor  c                                           ; $6048: $a9
	halt                                             ; $6049: $76
	ld   d, h                                        ; $604a: $54
	inc  [hl]                                        ; $604b: $34
	ld   [hl], h                                     ; $604c: $74
	inc  de                                          ; $604d: $13
	ld   a, b                                        ; $604e: $78
	ld   l, b                                        ; $604f: $68
	xor  e                                           ; $6050: $ab
	xor  e                                           ; $6051: $ab
	call z, $b9cd                                    ; $6052: $cc $cd $b9
	xor  d                                           ; $6055: $aa
	add  a                                           ; $6056: $87
	adc  b                                           ; $6057: $88
	sbc  c                                           ; $6058: $99
	adc  c                                           ; $6059: $89
	adc  b                                           ; $605a: $88
	add  a                                           ; $605b: $87
	ld   d, l                                        ; $605c: $55
	ld   [hl], a                                     ; $605d: $77
	ld   b, c                                        ; $605e: $41
	scf                                              ; $605f: $37
	ld   [hl], l                                     ; $6060: $75
	ld   d, [hl]                                     ; $6061: $56
	ld   a, d                                        ; $6062: $7a
	xor  d                                           ; $6063: $aa
	adc  d                                           ; $6064: $8a
	res  7, d                                        ; $6065: $cb $ba
	sbc  b                                           ; $6067: $98
	cp   h                                           ; $6068: $bc
	cp   b                                           ; $6069: $b8
	adc  c                                           ; $606a: $89
	xor  d                                           ; $606b: $aa
	xor  c                                           ; $606c: $a9
	adc  b                                           ; $606d: $88
	sub  a                                           ; $606e: $97
	ld   h, [hl]                                     ; $606f: $66
	ld   h, l                                        ; $6070: $65
	ld   d, h                                        ; $6071: $54
	ld   b, e                                        ; $6072: $43
	ld   b, h                                        ; $6073: $44
	ld   d, [hl]                                     ; $6074: $56
	ld   h, [hl]                                     ; $6075: $66
	ld   a, c                                        ; $6076: $79
	sbc  d                                           ; $6077: $9a
	sbc  d                                           ; $6078: $9a
	cp   l                                           ; $6079: $bd
	jp   z, $ccbb                                    ; $607a: $ca $bb $cc

	xor  c                                           ; $607d: $a9
	sbc  e                                           ; $607e: $9b
	cp   c                                           ; $607f: $b9
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	ld   h, l                                        ; $6082: $65
	ld   b, h                                        ; $6083: $44
	ld   b, e                                        ; $6084: $43
	ld   [hl-], a                                    ; $6085: $32
	inc  [hl]                                        ; $6086: $34
	ld   d, [hl]                                     ; $6087: $56
	ld   h, [hl]                                     ; $6088: $66
	ld   a, d                                        ; $6089: $7a
	cp   d                                           ; $608a: $ba
	sbc  c                                           ; $608b: $99
	xor  e                                           ; $608c: $ab
	cp   e                                           ; $608d: $bb
	xor  e                                           ; $608e: $ab
	call $bbba                                       ; $608f: $cd $ba $bb
	cp   d                                           ; $6092: $ba
	adc  b                                           ; $6093: $88
	add  a                                           ; $6094: $87
	halt                                             ; $6095: $76
	ld   b, h                                        ; $6096: $44
	ld   b, h                                        ; $6097: $44
	ld   b, e                                        ; $6098: $43
	inc  sp                                          ; $6099: $33
	ld   b, l                                        ; $609a: $45
	ld   h, [hl]                                     ; $609b: $66
	ld   h, a                                        ; $609c: $67
	sbc  c                                           ; $609d: $99
	sbc  c                                           ; $609e: $99
	xor  d                                           ; $609f: $aa
	cp   e                                           ; $60a0: $bb
	cp   e                                           ; $60a1: $bb
	cp   h                                           ; $60a2: $bc
	res  7, d                                        ; $60a3: $cb $ba
	cp   d                                           ; $60a5: $ba
	xor  c                                           ; $60a6: $a9
	sbc  c                                           ; $60a7: $99
	sbc  b                                           ; $60a8: $98
	halt                                             ; $60a9: $76
	ld   h, l                                        ; $60aa: $65
	ld   d, h                                        ; $60ab: $54
	inc  sp                                          ; $60ac: $33
	inc  [hl]                                        ; $60ad: $34
	ld   b, h                                        ; $60ae: $44
	ld   b, l                                        ; $60af: $45
	ld   h, a                                        ; $60b0: $67
	adc  c                                           ; $60b1: $89
	sbc  c                                           ; $60b2: $99
	xor  e                                           ; $60b3: $ab
	xor  c                                           ; $60b4: $a9
	sbc  e                                           ; $60b5: $9b
	cp   h                                           ; $60b6: $bc
	res  7, e                                        ; $60b7: $cb $bb
	call z, $9ab9                                    ; $60b9: $cc $b9 $9a
	sbc  b                                           ; $60bc: $98
	ld   [hl], a                                     ; $60bd: $77
	ld   [hl], a                                     ; $60be: $77
	ld   h, l                                        ; $60bf: $65
	ld   d, l                                        ; $60c0: $55
	ld   d, l                                        ; $60c1: $55
	ld   b, e                                        ; $60c2: $43
	ld   b, l                                        ; $60c3: $45
	ld   d, l                                        ; $60c4: $55
	ld   d, l                                        ; $60c5: $55
	ld   h, a                                        ; $60c6: $67
	sbc  c                                           ; $60c7: $99
	sbc  c                                           ; $60c8: $99
	xor  e                                           ; $60c9: $ab
	cp   e                                           ; $60ca: $bb
	cp   e                                           ; $60cb: $bb
	cp   e                                           ; $60cc: $bb
	cp   d                                           ; $60cd: $ba
	xor  d                                           ; $60ce: $aa
	cp   d                                           ; $60cf: $ba
	xor  c                                           ; $60d0: $a9
	sbc  c                                           ; $60d1: $99
	sbc  c                                           ; $60d2: $99
	ld   [hl], a                                     ; $60d3: $77
	ld   [hl], a                                     ; $60d4: $77
	ld   h, l                                        ; $60d5: $65
	ld   b, h                                        ; $60d6: $44
	ld   b, h                                        ; $60d7: $44
	ld   b, h                                        ; $60d8: $44
	ld   b, h                                        ; $60d9: $44
	ld   d, [hl]                                     ; $60da: $56
	ld   h, a                                        ; $60db: $67
	ld   a, c                                        ; $60dc: $79
	sbc  c                                           ; $60dd: $99
	sbc  c                                           ; $60de: $99
	sbc  d                                           ; $60df: $9a
	cp   e                                           ; $60e0: $bb
	xor  d                                           ; $60e1: $aa
	cp   h                                           ; $60e2: $bc
	res  5, e                                        ; $60e3: $cb $ab
	cp   e                                           ; $60e5: $bb
	sbc  c                                           ; $60e6: $99
	sbc  b                                           ; $60e7: $98
	add  a                                           ; $60e8: $87
	halt                                             ; $60e9: $76
	ld   h, a                                        ; $60ea: $67
	halt                                             ; $60eb: $76
	ld   h, [hl]                                     ; $60ec: $66
	ld   h, l                                        ; $60ed: $65
	ld   d, l                                        ; $60ee: $55
	ld   d, h                                        ; $60ef: $54
	ld   d, l                                        ; $60f0: $55
	ld   d, [hl]                                     ; $60f1: $56
	ld   h, a                                        ; $60f2: $67
	sbc  c                                           ; $60f3: $99
	sbc  c                                           ; $60f4: $99
	xor  e                                           ; $60f5: $ab
	cp   d                                           ; $60f6: $ba
	xor  d                                           ; $60f7: $aa
	xor  e                                           ; $60f8: $ab
	xor  c                                           ; $60f9: $a9
	xor  c                                           ; $60fa: $a9
	sbc  c                                           ; $60fb: $99
	sbc  d                                           ; $60fc: $9a
	sbc  c                                           ; $60fd: $99
	adc  c                                           ; $60fe: $89
	add  a                                           ; $60ff: $87
	ld   [hl], a                                     ; $6100: $77
	halt                                             ; $6101: $76
	ld   h, [hl]                                     ; $6102: $66
	ld   h, [hl]                                     ; $6103: $66
	ld   h, [hl]                                     ; $6104: $66
	ld   h, [hl]                                     ; $6105: $66
	ld   [hl], a                                     ; $6106: $77
	halt                                             ; $6107: $76
	ld   h, a                                        ; $6108: $67
	ld   [hl], a                                     ; $6109: $77
	ld   [hl], a                                     ; $610a: $77
	adc  c                                           ; $610b: $89
	sbc  c                                           ; $610c: $99
	sbc  c                                           ; $610d: $99
	sbc  d                                           ; $610e: $9a
	sbc  c                                           ; $610f: $99
	xor  c                                           ; $6110: $a9
	sbc  c                                           ; $6111: $99
	adc  c                                           ; $6112: $89
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	sbc  c                                           ; $6117: $99
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	add  a                                           ; $611a: $87
	ld   [hl], a                                     ; $611b: $77
	ld   [hl], a                                     ; $611c: $77
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	adc  b                                           ; $611f: $88
	ld   [hl], a                                     ; $6120: $77
	ld   [hl], a                                     ; $6121: $77
	ld   [hl], a                                     ; $6122: $77
	ld   [hl], a                                     ; $6123: $77
	ld   [hl], a                                     ; $6124: $77
	ld   [hl], a                                     ; $6125: $77
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  c                                           ; $612a: $89
	sbc  c                                           ; $612b: $99
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	sbc  c                                           ; $612e: $99
	sbc  b                                           ; $612f: $98
	adc  b                                           ; $6130: $88
	sbc  c                                           ; $6131: $99
	adc  c                                           ; $6132: $89
	sbc  b                                           ; $6133: $98
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	ld   [hl], a                                     ; $6136: $77
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	adc  b                                           ; $613a: $88
	add  a                                           ; $613b: $87
	ld   [hl], a                                     ; $613c: $77
	ld   [hl], a                                     ; $613d: $77
	ld   [hl], a                                     ; $613e: $77
	ld   [hl], a                                     ; $613f: $77
	ld   [hl], a                                     ; $6140: $77
	ld   a, b                                        ; $6141: $78
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	adc  b                                           ; $6144: $88
	sbc  c                                           ; $6145: $99
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	sbc  b                                           ; $6148: $98
	adc  b                                           ; $6149: $88
	sbc  b                                           ; $614a: $98
	adc  c                                           ; $614b: $89
	sbc  c                                           ; $614c: $99
	sbc  b                                           ; $614d: $98
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	adc  b                                           ; $6150: $88
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	adc  b                                           ; $6153: $88
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	add  a                                           ; $6156: $87
	ld   [hl], a                                     ; $6157: $77
	ld   [hl], a                                     ; $6158: $77
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	ld   a, b                                        ; $615b: $78
	adc  b                                           ; $615c: $88
	add  a                                           ; $615d: $87
	sbc  c                                           ; $615e: $99
	ld   a, b                                        ; $615f: $78
	cp   b                                           ; $6160: $b8
	ld   l, d                                        ; $6161: $6a
	adc  b                                           ; $6162: $88
	adc  c                                           ; $6163: $89
	add  [hl]                                        ; $6164: $86
	adc  d                                           ; $6165: $8a
	add  a                                           ; $6166: $87
	adc  c                                           ; $6167: $89
	add  a                                           ; $6168: $87
	ld   a, c                                        ; $6169: $79
	adc  b                                           ; $616a: $88
	add  a                                           ; $616b: $87
	adc  b                                           ; $616c: $88
	sbc  c                                           ; $616d: $99
	ld   h, a                                        ; $616e: $67
	sbc  b                                           ; $616f: $98
	adc  b                                           ; $6170: $88
	ld   [hl], a                                     ; $6171: $77
	sbc  c                                           ; $6172: $99
	add  a                                           ; $6173: $87
	adc  b                                           ; $6174: $88
	ld   a, b                                        ; $6175: $78
	sbc  c                                           ; $6176: $99
	adc  c                                           ; $6177: $89
	add  a                                           ; $6178: $87
	adc  b                                           ; $6179: $88
	sbc  c                                           ; $617a: $99
	ld   a, b                                        ; $617b: $78
	ld   [hl], a                                     ; $617c: $77
	adc  b                                           ; $617d: $88
	ld   a, b                                        ; $617e: $78
	ld   [hl], a                                     ; $617f: $77
	ld   a, b                                        ; $6180: $78
	ld   a, b                                        ; $6181: $78
	add  a                                           ; $6182: $87
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	adc  b                                           ; $6185: $88
	adc  c                                           ; $6186: $89
	adc  b                                           ; $6187: $88
	adc  b                                           ; $6188: $88
	sbc  b                                           ; $6189: $98
	ld   a, c                                        ; $618a: $79
	sbc  b                                           ; $618b: $98
	sbc  c                                           ; $618c: $99
	adc  c                                           ; $618d: $89
	adc  b                                           ; $618e: $88
	sbc  b                                           ; $618f: $98
	adc  b                                           ; $6190: $88
	ld   a, b                                        ; $6191: $78
	ld   [hl], a                                     ; $6192: $77
	add  [hl]                                        ; $6193: $86
	adc  b                                           ; $6194: $88
	ld   a, b                                        ; $6195: $78
	ld   [hl], a                                     ; $6196: $77
	add  a                                           ; $6197: $87
	adc  c                                           ; $6198: $89
	ld   [hl], a                                     ; $6199: $77
	sub  a                                           ; $619a: $97
	ld   a, c                                        ; $619b: $79
	adc  b                                           ; $619c: $88
	sbc  c                                           ; $619d: $99
	adc  b                                           ; $619e: $88
	xor  b                                           ; $619f: $a8
	sbc  d                                           ; $61a0: $9a
	ld   a, c                                        ; $61a1: $79
	and  a                                           ; $61a2: $a7
	sbc  c                                           ; $61a3: $99
	ld   a, c                                        ; $61a4: $79
	add  a                                           ; $61a5: $87
	sub  a                                           ; $61a6: $97
	sbc  b                                           ; $61a7: $98
	ld   a, b                                        ; $61a8: $78
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	ld   [hl], a                                     ; $61ab: $77
	ld   a, b                                        ; $61ac: $78
	ld   a, b                                        ; $61ad: $78
	add  a                                           ; $61ae: $87
	ld   [hl], a                                     ; $61af: $77
	add  a                                           ; $61b0: $87
	sub  a                                           ; $61b1: $97
	ld   a, c                                        ; $61b2: $79
	ld   l, c                                        ; $61b3: $69
	ld   [hl], a                                     ; $61b4: $77
	sbc  b                                           ; $61b5: $98
	adc  b                                           ; $61b6: $88
	adc  c                                           ; $61b7: $89
	sbc  c                                           ; $61b8: $99
	adc  c                                           ; $61b9: $89
	adc  c                                           ; $61ba: $89
	sbc  c                                           ; $61bb: $99
	adc  c                                           ; $61bc: $89
	sbc  c                                           ; $61bd: $99
	sbc  c                                           ; $61be: $99
	sub  a                                           ; $61bf: $97
	sbc  c                                           ; $61c0: $99
	ld   a, c                                        ; $61c1: $79
	ld   l, c                                        ; $61c2: $69
	add  a                                           ; $61c3: $87
	add  a                                           ; $61c4: $87
	ld   [hl], a                                     ; $61c5: $77
	ld   [hl], a                                     ; $61c6: $77
	halt                                             ; $61c7: $76
	halt                                             ; $61c8: $76
	ld   [hl], a                                     ; $61c9: $77
	ld   h, a                                        ; $61ca: $67
	ld   [hl], a                                     ; $61cb: $77
	ld   a, b                                        ; $61cc: $78
	sbc  b                                           ; $61cd: $98
	adc  b                                           ; $61ce: $88
	adc  c                                           ; $61cf: $89
	sbc  c                                           ; $61d0: $99
	sbc  b                                           ; $61d1: $98
	xor  d                                           ; $61d2: $aa
	adc  c                                           ; $61d3: $89
	sbc  c                                           ; $61d4: $99
	xor  c                                           ; $61d5: $a9
	sbc  c                                           ; $61d6: $99
	xor  d                                           ; $61d7: $aa
	adc  d                                           ; $61d8: $8a
	ld   [hl], a                                     ; $61d9: $77
	add  a                                           ; $61da: $87
	add  [hl]                                        ; $61db: $86
	ld   h, a                                        ; $61dc: $67
	ld   d, [hl]                                     ; $61dd: $56
	ld   [hl], l                                     ; $61de: $75
	ld   h, [hl]                                     ; $61df: $66
	ld   d, a                                        ; $61e0: $57
	ld   d, [hl]                                     ; $61e1: $56
	halt                                             ; $61e2: $76
	sub  a                                           ; $61e3: $97
	adc  c                                           ; $61e4: $89
	adc  d                                           ; $61e5: $8a
	xor  d                                           ; $61e6: $aa
	xor  c                                           ; $61e7: $a9
	xor  d                                           ; $61e8: $aa
	xor  e                                           ; $61e9: $ab
	sbc  c                                           ; $61ea: $99
	cp   b                                           ; $61eb: $b8
	cp   c                                           ; $61ec: $b9
	sbc  e                                           ; $61ed: $9b
	ld   a, d                                        ; $61ee: $7a
	sbc  c                                           ; $61ef: $99
	sub  [hl]                                        ; $61f0: $96
	add  l                                           ; $61f1: $85
	ld   h, [hl]                                     ; $61f2: $66
	ld   d, [hl]                                     ; $61f3: $56
	ld   b, h                                        ; $61f4: $44
	ld   h, e                                        ; $61f5: $63

jr_0bb_61f6:
	ld   d, [hl]                                     ; $61f6: $56
	ld   b, [hl]                                     ; $61f7: $46
	ld   h, [hl]                                     ; $61f8: $66
	adc  b                                           ; $61f9: $88
	adc  c                                           ; $61fa: $89
	sbc  d                                           ; $61fb: $9a
	xor  b                                           ; $61fc: $a8
	cp   d                                           ; $61fd: $ba
	xor  e                                           ; $61fe: $ab
	cp   e                                           ; $61ff: $bb
	cp   e                                           ; $6200: $bb
	xor  d                                           ; $6201: $aa
	xor  c                                           ; $6202: $a9
	xor  b                                           ; $6203: $a8
	adc  c                                           ; $6204: $89
	ld   [hl], a                                     ; $6205: $77
	halt                                             ; $6206: $76
	ld   d, h                                        ; $6207: $54
	ld   d, l                                        ; $6208: $55
	dec  [hl]                                        ; $6209: $35
	ld   b, d                                        ; $620a: $42
	ld   d, e                                        ; $620b: $53
	ld   d, a                                        ; $620c: $57
	ld   d, [hl]                                     ; $620d: $56
	add  a                                           ; $620e: $87
	adc  d                                           ; $620f: $8a
	sbc  h                                           ; $6210: $9c
	xor  e                                           ; $6211: $ab
	res  7, h                                        ; $6212: $cb $bc
	set  1, h                                        ; $6214: $cb $cc
	cp   e                                           ; $6216: $bb
	sbc  e                                           ; $6217: $9b
	xor  c                                           ; $6218: $a9
	sub  a                                           ; $6219: $97
	ld   h, a                                        ; $621a: $67
	ld   d, l                                        ; $621b: $55
	ld   d, h                                        ; $621c: $54
	inc  sp                                          ; $621d: $33
	inc  sp                                          ; $621e: $33
	inc  sp                                          ; $621f: $33
	ld   d, h                                        ; $6220: $54
	ld   d, [hl]                                     ; $6221: $56
	ld   a, c                                        ; $6222: $79
	sbc  c                                           ; $6223: $99
	cp   e                                           ; $6224: $bb
	xor  h                                           ; $6225: $ac
	call c, $ccdc                                    ; $6226: $dc $dc $cc
	cp   h                                           ; $6229: $bc
	jp   z, $99aa                                    ; $622a: $ca $aa $99

	ld   a, b                                        ; $622d: $78
	ld   h, [hl]                                     ; $622e: $66
	ld   d, e                                        ; $622f: $53
	ld   d, e                                        ; $6230: $53
	inc  d                                           ; $6231: $14
	ld   [hl+], a                                    ; $6232: $22
	inc  sp                                          ; $6233: $33
	ld   b, l                                        ; $6234: $45
	ld   d, a                                        ; $6235: $57
	adc  b                                           ; $6236: $88
	sbc  d                                           ; $6237: $9a
	set  1, [hl]                                     ; $6238: $cb $ce
	call z, $dced                                    ; $623a: $cc $ed $dc
	call z, $a8aa                                    ; $623d: $cc $aa $a8
	adc  c                                           ; $6240: $89
	ld   h, a                                        ; $6241: $67
	ld   b, e                                        ; $6242: $43
	ld   h, l                                        ; $6243: $65
	inc  d                                           ; $6244: $14
	ld   sp, $4641                                   ; $6245: $31 $41 $46
	scf                                              ; $6248: $37
	adc  b                                           ; $6249: $88
	xor  e                                           ; $624a: $ab
	call $ecce                                       ; $624b: $cd $ce $ec
	db   $dd                                         ; $624e: $dd
	call z, $bacc                                    ; $624f: $cc $cc $ba
	cp   c                                           ; $6252: $b9
	sub  a                                           ; $6253: $97
	ld   h, [hl]                                     ; $6254: $66
	inc  sp                                          ; $6255: $33
	ld   h, e                                        ; $6256: $63
	inc  d                                           ; $6257: $14
	ld   hl, $5541                                   ; $6258: $21 $41 $55
	jr   c, jr_0bb_61f6                              ; $625b: $38 $99

	xor  h                                           ; $625d: $ac
	db   $dd                                         ; $625e: $dd
	sbc  $ed                                         ; $625f: $de $ed
	db   $dd                                         ; $6261: $dd
	set  1, h                                        ; $6262: $cb $cc
	xor  c                                           ; $6264: $a9
	xor  b                                           ; $6265: $a8
	ld   [hl], a                                     ; $6266: $77
	ld   d, e                                        ; $6267: $53
	dec  [hl]                                        ; $6268: $35
	ld   b, c                                        ; $6269: $41
	inc  sp                                          ; $626a: $33
	inc  d                                           ; $626b: $14
	inc  h                                           ; $626c: $24
	ld   h, e                                        ; $626d: $63
	sbc  c                                           ; $626e: $99
	adc  d                                           ; $626f: $8a
	call $fdcd                                       ; $6270: $cd $cd $fd
	sbc  $dc                                         ; $6273: $de $dc
	cp   h                                           ; $6275: $bc
	cp   d                                           ; $6276: $ba
	adc  c                                           ; $6277: $89
	sub  l                                           ; $6278: $95
	ld   h, e                                        ; $6279: $63
	inc  d                                           ; $627a: $14
	ld   d, c                                        ; $627b: $51
	ld   d, $12                                      ; $627c: $16 $12
	ld   b, c                                        ; $627e: $41
	add  h                                           ; $627f: $84
	ld   e, h                                        ; $6280: $5c
	sbc  c                                           ; $6281: $99
	adc  $dc                                         ; $6282: $ce $dc
	rst  $38                                         ; $6284: $ff
	db   $dd                                         ; $6285: $dd
	sbc  $cb                                         ; $6286: $de $cb
	jp   z, $8588                                    ; $6288: $ca $88 $85

	inc  sp                                          ; $628b: $33
	inc  de                                          ; $628c: $13
	ld   h, c                                        ; $628d: $61
	jr   jr_0bb_62a4                                 ; $628e: $18 $14

	ld   b, c                                        ; $6290: $41
	or   e                                           ; $6291: $b3
	ld   l, l                                        ; $6292: $6d
	sbc  c                                           ; $6293: $99
	rst  $28                                         ; $6294: $ef
	db   $ed                                         ; $6295: $ed
	rst  $38                                         ; $6296: $ff
	sbc  $ee                                         ; $6297: $de $ee
	jp   z, Jump_0bb_77c9                            ; $6299: $ca $c9 $77

	ld   [hl], d                                     ; $629c: $72
	ld   hl, $1116                                   ; $629d: $21 $16 $11
	sub  c                                           ; $62a0: $91
	add  hl, de                                      ; $62a1: $19
	ld   d, $91                                      ; $62a2: $16 $91

jr_0bb_62a4:
	db   $dd                                         ; $62a4: $dd
	adc  l                                           ; $62a5: $8d
	rst  $38                                         ; $62a6: $ff
	rst  JumpTable                                         ; $62a7: $df
	cp   $ef                                         ; $62a8: $fe $ef
	db   $fd                                         ; $62aa: $fd
	sbc  h                                           ; $62ab: $9c
	and  [hl]                                        ; $62ac: $a6
	ld   h, a                                        ; $62ad: $67
	ld   b, c                                        ; $62ae: $41
	ld   de, $1453                                   ; $62af: $11 $53 $14
	ld   h, c                                        ; $62b2: $61
	ld   [hl], c                                     ; $62b3: $71
	inc  l                                           ; $62b4: $2c
	dec  de                                          ; $62b5: $1b
	ld   hl, sp-$31                                  ; $62b6: $f8 $cf
	db   $fd                                         ; $62b8: $fd
	rst  $28                                         ; $62b9: $ef
	ei                                               ; $62ba: $fb
	rst  $38                                         ; $62bb: $ff
	jp   hl                                          ; $62bc: $e9


	cp   l                                           ; $62bd: $bd
	ld   [hl], l                                     ; $62be: $75
	add  [hl]                                        ; $62bf: $86
	ld   de, $5113                                   ; $62c0: $11 $13 $51
	dec  hl                                          ; $62c3: $2b
	inc  d                                           ; $62c4: $14
	ld   d, c                                        ; $62c5: $51
	pop  hl                                          ; $62c6: $e1
	ld   a, a                                        ; $62c7: $7f
	ld   l, d                                        ; $62c8: $6a
	rst  $38                                         ; $62c9: $ff
	db   $fc                                         ; $62ca: $fc
	rst  $38                                         ; $62cb: $ff
	cp   [hl]                                        ; $62cc: $be
	rst  $38                                         ; $62cd: $ff
	sbc  e                                           ; $62ce: $9b
	ld   hl, sp+$58                                  ; $62cf: $f8 $58
	add  c                                           ; $62d1: $81
	ld   de, $1118                                   ; $62d2: $11 $18 $11
	pop  af                                          ; $62d5: $f1
	ld   a, [de]                                     ; $62d6: $1a
	dec  e                                           ; $62d7: $1d
	ld   [hl+], a                                    ; $62d8: $22
	ld   hl, sp+$7f                                  ; $62d9: $f8 $7f
	rst  $38                                         ; $62db: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62dc: $cf
	ei                                               ; $62dd: $fb
	rst  JumpTable                                         ; $62de: $df
	ei                                               ; $62df: $fb
	xor  a                                           ; $62e0: $af
	and  l                                           ; $62e1: $a5
	adc  d                                           ; $62e2: $8a
	ld   hl, $9111                                   ; $62e3: $21 $11 $91
	rra                                              ; $62e6: $1f
	ld   de, $c4c1                                   ; $62e7: $11 $c1 $c4
	rra                                              ; $62ea: $1f
	or   l                                           ; $62eb: $b5
	rst  $38                                         ; $62ec: $ff
	ei                                               ; $62ed: $fb
	rst  $38                                         ; $62ee: $ff
	cp   [hl]                                        ; $62ef: $be
	rst  $38                                         ; $62f0: $ff
	ret                                              ; $62f1: $c9


	db   $fc                                         ; $62f2: $fc
	ld   h, a                                        ; $62f3: $67
	and  e                                           ; $62f4: $a3
	ld   de, $111a                                   ; $62f5: $11 $1a $11
	pop  af                                          ; $62f8: $f1
	rra                                              ; $62f9: $1f
	dec  d                                           ; $62fa: $15
	or   c                                           ; $62fb: $b1
	rst  $38                                         ; $62fc: $ff
	rra                                              ; $62fd: $1f
	rst  $38                                         ; $62fe: $ff
	cp   a                                           ; $62ff: $bf
	db   $fc                                         ; $6300: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6301: $cf
	db   $fd                                         ; $6302: $fd
	adc  a                                           ; $6303: $8f
	and  $6b                                         ; $6304: $e6 $6b
	ld   h, c                                        ; $6306: $61
	ld   hl, $1973                                   ; $6307: $21 $73 $19
	sub  c                                           ; $630a: $91
	or   e                                           ; $630b: $b3
	rra                                              ; $630c: $1f
	dec  e                                           ; $630d: $1d
	pop  af                                          ; $630e: $f1
	rst  JumpTable                                         ; $630f: $df
	db   $fd                                         ; $6310: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6311: $cf
	ld   a, [$e8ff]                                  ; $6312: $fa $ff $e8
	rst  JumpTable                                         ; $6315: $df
	add  [hl]                                        ; $6316: $86
	cp   c                                           ; $6317: $b9
	ld   [de], a                                     ; $6318: $12
	ld   [de], a                                     ; $6319: $12
	and  c                                           ; $631a: $a1
	rra                                              ; $631b: $1f
	ld   de, $e1d1                                   ; $631c: $11 $d1 $e1
	rra                                              ; $631f: $1f
	ld   d, a                                        ; $6320: $57
	rst  $38                                         ; $6321: $ff
	ld   a, [$8fff]                                  ; $6322: $fa $ff $8f
	rst  $38                                         ; $6325: $ff
	cp   d                                           ; $6326: $ba
	ld   a, [$c269]                                  ; $6327: $fa $69 $c2
	ld   [de], a                                     ; $632a: $12
	add  hl, de                                      ; $632b: $19
	ld   de, $1ff1                                   ; $632c: $11 $f1 $1f
	ld   de, $fff1                                   ; $632f: $11 $f1 $ff
	rra                                              ; $6332: $1f
	rst  $38                                         ; $6333: $ff
	xor  a                                           ; $6334: $af
	db   $fc                                         ; $6335: $fc
	cp   a                                           ; $6336: $bf
	db   $ed                                         ; $6337: $ed
	xor  l                                           ; $6338: $ad
	rst  $20                                         ; $6339: $e7
	ld   l, e                                        ; $633a: $6b
	ld   [hl], c                                     ; $633b: $71
	ld   sp, $1129                                   ; $633c: $31 $29 $11
	pop  af                                          ; $633f: $f1
	dec  e                                           ; $6340: $1d
	rra                                              ; $6341: $1f
	ld   de, $8ff5                                   ; $6342: $11 $f5 $8f
	cp   $9f                                         ; $6345: $fe $9f
	rst  $30                                         ; $6347: $f7
	rst  $38                                         ; $6348: $ff
	call c, $b5af                                    ; $6349: $dc $af $b5
	adc  h                                           ; $634c: $8c
	ld   hl, $9111                                   ; $634d: $21 $11 $91
	rra                                              ; $6350: $1f
	ld   de, $2bf1                                   ; $6351: $11 $f1 $2b
	rra                                              ; $6354: $1f
	db   $f4                                         ; $6355: $f4
	rst  $28                                         ; $6356: $ef
	ld   hl, sp-$01                                  ; $6357: $f8 $ff
	cp   d                                           ; $6359: $ba
	cp   $da                                         ; $635a: $fe $da
	db   $dd                                         ; $635c: $dd
	add  l                                           ; $635d: $85
	cp   b                                           ; $635e: $b8
	ld   [de], a                                     ; $635f: $12
	inc  d                                           ; $6360: $14
	ld   h, c                                        ; $6361: $61
	ld   e, $11                                      ; $6362: $1e $11
	and  c                                           ; $6364: $a1
	or   c                                           ; $6365: $b1
	ld   a, a                                        ; $6366: $7f
	adc  d                                           ; $6367: $8a
	rst  $38                                         ; $6368: $ff
	rst  $30                                         ; $6369: $f7
	rst  $38                                         ; $636a: $ff
	ld   a, a                                        ; $636b: $7f
	cp   $bb                                         ; $636c: $fe $bb
	ld   [$b367], a                                  ; $636e: $ea $67 $b3
	ld   de, $1126                                   ; $6371: $11 $26 $11
	or   c                                           ; $6374: $b1
	jr   @+$16                                       ; $6375: $18 $14

	ld   d, d                                        ; $6377: $52
	db   $fc                                         ; $6378: $fc
	cp   h                                           ; $6379: $bc
	rst  $38                                         ; $637a: $ff
	xor  h                                           ; $637b: $ac
	cp   $9f                                         ; $637c: $fe $9f
	ei                                               ; $637e: $fb
	sbc  l                                           ; $637f: $9d
	cp   c                                           ; $6380: $b9
	ld   l, c                                        ; $6381: $69
	ld   [hl], d                                     ; $6382: $72
	ld   de, $1163                                   ; $6383: $11 $63 $11
	pop  bc                                          ; $6386: $c1
	rla                                              ; $6387: $17
	daa                                              ; $6388: $27
	ld   a, [de]                                     ; $6389: $1a
	ld   a, [$ffbd]                                  ; $638a: $fa $bd $ff
	adc  a                                           ; $638d: $8f
	ld   sp, hl                                      ; $638e: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $638f: $cf
	ld   sp, hl                                      ; $6390: $f9
	sbc  [hl]                                        ; $6391: $9e
	and  [hl]                                        ; $6392: $a6
	ld   a, b                                        ; $6393: $78
	ld   b, c                                        ; $6394: $41
	ld   [de], a                                     ; $6395: $12
	add  c                                           ; $6396: $81
	jr   jr_0bb_63ca                                 ; $6397: $18 $31

	inc  [hl]                                        ; $6399: $34
	ld   [hl], e                                     ; $639a: $73
	ld   c, a                                        ; $639b: $4f
	call $fdbf                                       ; $639c: $cd $bf $fd
	xor  a                                           ; $639f: $af
	ld   sp, hl                                      ; $63a0: $f9
	cp   a                                           ; $63a1: $bf
	and  $bd                                         ; $63a2: $e6 $bd
	sub  l                                           ; $63a4: $95
	halt                                             ; $63a5: $76
	ld   b, c                                        ; $63a6: $41
	inc  d                                           ; $63a7: $14
	ld   [hl], c                                     ; $63a8: $71
	dec  de                                          ; $63a9: $1b
	ld   de, $9127                                   ; $63aa: $11 $27 $91
	sbc  [hl]                                        ; $63ad: $9e
	cp   h                                           ; $63ae: $bc
	cp   a                                           ; $63af: $bf
	db   $fd                                         ; $63b0: $fd
	cp   a                                           ; $63b1: $bf
	db   $fc                                         ; $63b2: $fc
	xor  a                                           ; $63b3: $af
	rst  $20                                         ; $63b4: $e7
	xor  e                                           ; $63b5: $ab
	and  l                                           ; $63b6: $a5
	halt                                             ; $63b7: $76
	ld   b, c                                        ; $63b8: $41
	ld   d, $71                                      ; $63b9: $16 $71
	ld   a, [de]                                     ; $63bb: $1a
	ld   de, $a118                                   ; $63bc: $11 $18 $a1
	adc  [hl]                                        ; $63bf: $8e
	call c, $fdaf                                    ; $63c0: $dc $af $fd
	adc  $fd                                         ; $63c3: $ce $fd
	adc  l                                           ; $63c5: $8d
	reti                                             ; $63c6: $d9


	adc  c                                           ; $63c7: $89
	or   a                                           ; $63c8: $b7
	ld   h, [hl]                                     ; $63c9: $66

jr_0bb_63ca:
	ld   h, e                                        ; $63ca: $63
	inc  de                                          ; $63cb: $13
	and  c                                           ; $63cc: $a1
	ld   d, $41                                      ; $63cd: $16 $41
	inc  d                                           ; $63cf: $14
	and  h                                           ; $63d0: $a4
	ld   e, d                                        ; $63d1: $5a
	db   $db                                         ; $63d2: $db
	cp   d                                           ; $63d3: $ba
	rst  $38                                         ; $63d4: $ff
	set  3, a                                        ; $63d5: $cb $df
	cp   d                                           ; $63d7: $ba
	call $aab7                                       ; $63d8: $cd $b7 $aa
	sub  a                                           ; $63db: $97
	halt                                             ; $63dc: $76
	ld   d, e                                        ; $63dd: $53
	ld   e, c                                        ; $63de: $59
	ld   de, $2145                                   ; $63df: $11 $45 $21
	ld   c, b                                        ; $63e2: $48
	ld   d, l                                        ; $63e3: $55
	sbc  c                                           ; $63e4: $99
	cp   e                                           ; $63e5: $bb
	cp   h                                           ; $63e6: $bc
	call $cbba                                       ; $63e7: $cd $ba $cb
	xor  d                                           ; $63ea: $aa
	res  7, e                                        ; $63eb: $cb $bb
	cp   d                                           ; $63ed: $ba
	xor  c                                           ; $63ee: $a9
	add  a                                           ; $63ef: $87
	ld   h, l                                        ; $63f0: $65
	add  [hl]                                        ; $63f1: $86
	ld   [de], a                                     ; $63f2: $12
	ld   b, e                                        ; $63f3: $43
	ld   hl, $4646                                   ; $63f4: $21 $46 $46
	ld   [hl], a                                     ; $63f7: $77
	sbc  c                                           ; $63f8: $99
	adc  c                                           ; $63f9: $89
	xor  e                                           ; $63fa: $ab
	cp   c                                           ; $63fb: $b9
	cp   e                                           ; $63fc: $bb
	cp   e                                           ; $63fd: $bb
	cp   h                                           ; $63fe: $bc
	cp   l                                           ; $63ff: $bd
	cp   e                                           ; $6400: $bb
	cp   e                                           ; $6401: $bb
	xor  c                                           ; $6402: $a9
	adc  c                                           ; $6403: $89
	ld   [hl], a                                     ; $6404: $77
	ld   [hl], h                                     ; $6405: $74
	inc  sp                                          ; $6406: $33
	ld   b, h                                        ; $6407: $44
	ld   [hl-], a                                    ; $6408: $32
	inc  [hl]                                        ; $6409: $34
	ld   d, l                                        ; $640a: $55
	ld   h, [hl]                                     ; $640b: $66
	ld   [hl], a                                     ; $640c: $77
	adc  b                                           ; $640d: $88
	sbc  c                                           ; $640e: $99
	sbc  d                                           ; $640f: $9a
	xor  d                                           ; $6410: $aa
	cp   e                                           ; $6411: $bb
	cp   h                                           ; $6412: $bc
	call $bbdc                                       ; $6413: $cd $dc $bb
	res  5, d                                        ; $6416: $cb $aa
	sbc  b                                           ; $6418: $98
	halt                                             ; $6419: $76
	ld   d, h                                        ; $641a: $54
	ld   b, e                                        ; $641b: $43
	inc  sp                                          ; $641c: $33
	inc  sp                                          ; $641d: $33
	ld   b, h                                        ; $641e: $44
	ld   d, l                                        ; $641f: $55
	ld   h, [hl]                                     ; $6420: $66
	ld   [hl], a                                     ; $6421: $77
	adc  b                                           ; $6422: $88
	sbc  b                                           ; $6423: $98
	sbc  d                                           ; $6424: $9a
	xor  e                                           ; $6425: $ab
	cp   h                                           ; $6426: $bc
	cp   h                                           ; $6427: $bc
	call z, $ccdc                                    ; $6428: $cc $dc $cc
	cp   e                                           ; $642b: $bb
	xor  d                                           ; $642c: $aa
	sbc  c                                           ; $642d: $99
	ld   [hl], a                                     ; $642e: $77
	ld   h, l                                        ; $642f: $65
	ld   b, h                                        ; $6430: $44
	inc  sp                                          ; $6431: $33
	inc  sp                                          ; $6432: $33
	inc  sp                                          ; $6433: $33
	ld   b, l                                        ; $6434: $45
	ld   d, l                                        ; $6435: $55
	ld   h, a                                        ; $6436: $67
	ld   [hl], a                                     ; $6437: $77
	adc  b                                           ; $6438: $88
	adc  c                                           ; $6439: $89
	sbc  d                                           ; $643a: $9a
	cp   e                                           ; $643b: $bb
	call z, $cccc                                    ; $643c: $cc $cc $cc
	call z, $bbcb                                    ; $643f: $cc $cb $bb
	sbc  c                                           ; $6442: $99
	sub  a                                           ; $6443: $97
	halt                                             ; $6444: $76
	ld   d, h                                        ; $6445: $54
	ld   b, e                                        ; $6446: $43
	inc  sp                                          ; $6447: $33
	inc  sp                                          ; $6448: $33
	inc  [hl]                                        ; $6449: $34
	ld   b, l                                        ; $644a: $45
	ld   h, [hl]                                     ; $644b: $66
	ld   h, a                                        ; $644c: $67
	adc  c                                           ; $644d: $89
	adc  c                                           ; $644e: $89
	sbc  d                                           ; $644f: $9a
	xor  d                                           ; $6450: $aa
	cp   h                                           ; $6451: $bc
	res  7, e                                        ; $6452: $cb $bb
	cp   e                                           ; $6454: $bb
	xor  d                                           ; $6455: $aa
	xor  d                                           ; $6456: $aa
	xor  c                                           ; $6457: $a9
	sbc  c                                           ; $6458: $99
	add  a                                           ; $6459: $87
	halt                                             ; $645a: $76
	ld   h, l                                        ; $645b: $65
	ld   d, l                                        ; $645c: $55
	ld   b, h                                        ; $645d: $44
	ld   b, h                                        ; $645e: $44
	ld   b, l                                        ; $645f: $45
	ld   d, [hl]                                     ; $6460: $56
	ld   h, a                                        ; $6461: $67
	ld   a, b                                        ; $6462: $78
	sbc  c                                           ; $6463: $99
	sbc  c                                           ; $6464: $99
	sbc  c                                           ; $6465: $99
	xor  d                                           ; $6466: $aa
	xor  d                                           ; $6467: $aa
	cp   e                                           ; $6468: $bb
	xor  d                                           ; $6469: $aa
	xor  d                                           ; $646a: $aa
	sbc  c                                           ; $646b: $99
	adc  c                                           ; $646c: $89
	sbc  b                                           ; $646d: $98
	ld   a, b                                        ; $646e: $78
	ld   [hl], a                                     ; $646f: $77
	ld   [hl], a                                     ; $6470: $77
	ld   [hl], a                                     ; $6471: $77
	ld   [hl], a                                     ; $6472: $77
	ld   [hl], a                                     ; $6473: $77
	ld   [hl], a                                     ; $6474: $77
	ld   [hl], a                                     ; $6475: $77
	ld   [hl], a                                     ; $6476: $77
	ld   [hl], a                                     ; $6477: $77
	ld   [hl], a                                     ; $6478: $77
	ld   [hl], a                                     ; $6479: $77
	adc  c                                           ; $647a: $89
	adc  b                                           ; $647b: $88
	adc  c                                           ; $647c: $89
	sbc  c                                           ; $647d: $99
	sbc  c                                           ; $647e: $99
	sbc  b                                           ; $647f: $98
	adc  b                                           ; $6480: $88
	sbc  c                                           ; $6481: $99
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	ld   a, b                                        ; $6486: $78
	add  a                                           ; $6487: $87
	ld   [hl], a                                     ; $6488: $77
	adc  b                                           ; $6489: $88
	ld   a, b                                        ; $648a: $78
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	sbc  c                                           ; $6492: $99
	adc  b                                           ; $6493: $88
	adc  c                                           ; $6494: $89
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	add  a                                           ; $649b: $87
	ld   [hl], a                                     ; $649c: $77
	ld   [hl], a                                     ; $649d: $77
	ld   [hl], a                                     ; $649e: $77
	add  a                                           ; $649f: $87
	ld   [hl], a                                     ; $64a0: $77
	adc  b                                           ; $64a1: $88
	ld   a, b                                        ; $64a2: $78
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	sbc  b                                           ; $64a9: $98
	adc  c                                           ; $64aa: $89
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	add  a                                           ; $64b0: $87
	ld   [hl], a                                     ; $64b1: $77
	ld   [hl], a                                     ; $64b2: $77
	ld   [hl], a                                     ; $64b3: $77
	ld   [hl], a                                     ; $64b4: $77
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88

Call_0bb_64ba:
	adc  b                                           ; $64ba: $88
	sbc  b                                           ; $64bb: $98
	sbc  c                                           ; $64bc: $99
	sbc  b                                           ; $64bd: $98
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	add  a                                           ; $64c4: $87
	add  a                                           ; $64c5: $87
	ld   [hl], a                                     ; $64c6: $77
	ld   [hl], a                                     ; $64c7: $77
	ld   a, b                                        ; $64c8: $78
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	sbc  c                                           ; $64ce: $99
	sbc  c                                           ; $64cf: $99
	sbc  c                                           ; $64d0: $99
	sbc  b                                           ; $64d1: $98
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	add  a                                           ; $64d9: $87
	adc  b                                           ; $64da: $88
	ld   a, b                                        ; $64db: $78
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  b                                           ; $64ec: $88
	adc  b                                           ; $64ed: $88
	adc  b                                           ; $64ee: $88
	adc  b                                           ; $64ef: $88
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	adc  c                                           ; $64f4: $89
	adc  b                                           ; $64f5: $88
	adc  c                                           ; $64f6: $89
	sbc  b                                           ; $64f7: $98
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	ld   [hl], a                                     ; $64fc: $77
	adc  b                                           ; $64fd: $88
	add  a                                           ; $64fe: $87
	adc  d                                           ; $64ff: $8a
	sbc  b                                           ; $6500: $98
	sbc  b                                           ; $6501: $98
	ld   a, b                                        ; $6502: $78
	adc  b                                           ; $6503: $88
	add  a                                           ; $6504: $87
	adc  b                                           ; $6505: $88
	sbc  b                                           ; $6506: $98
	ld   [hl], a                                     ; $6507: $77
	ld   a, b                                        ; $6508: $78
	adc  c                                           ; $6509: $89
	sbc  b                                           ; $650a: $98
	xor  c                                           ; $650b: $a9
	adc  c                                           ; $650c: $89
	adc  c                                           ; $650d: $89
	add  a                                           ; $650e: $87
	ld   a, b                                        ; $650f: $78
	ld   [hl], a                                     ; $6510: $77
	adc  b                                           ; $6511: $88
	add  a                                           ; $6512: $87
	ld   a, c                                        ; $6513: $79
	adc  b                                           ; $6514: $88
	ld   [hl], a                                     ; $6515: $77
	xor  c                                           ; $6516: $a9
	adc  c                                           ; $6517: $89
	add  a                                           ; $6518: $87
	sbc  b                                           ; $6519: $98
	sbc  d                                           ; $651a: $9a
	add  a                                           ; $651b: $87
	ld   h, [hl]                                     ; $651c: $66
	ld   h, l                                        ; $651d: $65
	ld   d, e                                        ; $651e: $53
	ld   [hl], $86                                   ; $651f: $36 $86
	ld   h, l                                        ; $6521: $65
	ld   a, c                                        ; $6522: $79
	call $adbb                                       ; $6523: $cd $bb $ad
	db   $ed                                         ; $6526: $ed
	res  3, c                                        ; $6527: $cb $99
	xor  d                                           ; $6529: $aa
	ld   [hl], h                                     ; $652a: $74
	ld   hl, $1a11                                   ; $652b: $21 $11 $1a
	ld   h, c                                        ; $652e: $61
	ld   [de], a                                     ; $652f: $12
	xor  a                                           ; $6530: $af
	rst  $38                                         ; $6531: $ff
	ld   [hl], a                                     ; $6532: $77
	rst  $28                                         ; $6533: $ef
	rst  $38                                         ; $6534: $ff
	ld   [hl], d                                     ; $6535: $72
	ld   c, l                                        ; $6536: $4d
	jp   hl                                          ; $6537: $e9


	ld   b, h                                        ; $6538: $44
	ld   a, l                                        ; $6539: $7d
	db   $fd                                         ; $653a: $fd
	ld   hl, $1911                                   ; $653b: $21 $11 $19
	pop  hl                                          ; $653e: $e1
	inc  de                                          ; $653f: $13
	rst  JumpTable                                         ; $6540: $df
	rst  $38                                         ; $6541: $ff
	db   $e4                                         ; $6542: $e4
	rst  JumpTable                                         ; $6543: $df
	ld   a, [$1831]                                  ; $6544: $fa $31 $18
	ld   a, [$bf44]                                  ; $6547: $fa $44 $bf
	rst  $38                                         ; $654a: $ff
	add  c                                           ; $654b: $81
	ld   de, $4911                                   ; $654c: $11 $11 $49
	ld   de, $ff6f                                   ; $654f: $11 $6f $ff
	cp   $5e                                         ; $6552: $fe $5e
	db   $fd                                         ; $6554: $fd
	ld   hl, $8f11                                   ; $6555: $21 $11 $8f
	or   a                                           ; $6558: $b7
	rst  JumpTable                                         ; $6559: $df
	rst  $38                                         ; $655a: $ff
	db   $f4                                         ; $655b: $f4
	ld   de, $1111                                   ; $655c: $11 $11 $11
	db   $fd                                         ; $655f: $fd
	cp   $ff                                         ; $6560: $fe $ff
	rst  $38                                         ; $6562: $ff
	pop  af                                          ; $6563: $f1
	ld   de, $1126                                   ; $6564: $11 $26 $11
	inc  de                                          ; $6567: $13
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff
	rst  $38                                         ; $656a: $ff
	rst  $38                                         ; $656b: $ff
	sub  c                                           ; $656c: $91
	ld   de, $1f11                                   ; $656d: $11 $11 $1f
	cp   $bf                                         ; $6570: $fe $bf
	rst  $38                                         ; $6572: $ff
	cp   $11                                         ; $6573: $fe $11

Jump_0bb_6575:
	rla                                              ; $6575: $17
	ld   b, c                                        ; $6576: $41
	ld   de, $ffdf                                   ; $6577: $11 $df $ff
	add  a                                           ; $657a: $87
	rst  JumpTable                                         ; $657b: $df
	push af                                          ; $657c: $f5
	ld   de, $1111                                   ; $657d: $11 $11 $11
	rst  $38                                         ; $6580: $ff
	cp   $ef                                         ; $6581: $fe $ef
	rst  $38                                         ; $6583: $ff
	pop  af                                          ; $6584: $f1
	ld   de, $556a                                   ; $6585: $11 $6a $55
	jr   c, @+$01                                    ; $6588: $38 $ff

	db   $f4                                         ; $658a: $f4
	dec  d                                           ; $658b: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $658c: $cf
	pop  bc                                          ; $658d: $c1
	ld   de, $1f11                                   ; $658e: $11 $11 $1f
	db   $fd                                         ; $6591: $fd
	db   $db                                         ; $6592: $db
	rst  $38                                         ; $6593: $ff
	rst  $38                                         ; $6594: $ff
	ld   de, $ca17                                   ; $6595: $11 $17 $ca
	sbc  c                                           ; $6598: $99
	ld   l, a                                        ; $6599: $6f
	rst  $38                                         ; $659a: $ff
	ld   b, c                                        ; $659b: $41
	scf                                              ; $659c: $37
	rst  $38                                         ; $659d: $ff
	ld   b, c                                        ; $659e: $41
	ld   de, $1f11                                   ; $659f: $11 $11 $1f
	rst  $38                                         ; $65a2: $ff
	ret  c                                           ; $65a3: $d8

	rst  $38                                         ; $65a4: $ff
	rst  $38                                         ; $65a5: $ff
	ld   de, $de15                                   ; $65a6: $11 $15 $de

Call_0bb_65a9:
	and  c                                           ; $65a9: $a1
	ld   l, a                                        ; $65aa: $6f
	rst  $38                                         ; $65ab: $ff
	ld   [hl], c                                     ; $65ac: $71
	inc  c                                           ; $65ad: $0c
	rst  $38                                         ; $65ae: $ff
	ld   sp, $1111                                   ; $65af: $31 $11 $11
	rra                                              ; $65b2: $1f
	rst  $38                                         ; $65b3: $ff
	push af                                          ; $65b4: $f5
	adc  l                                           ; $65b5: $8d
	rst  $38                                         ; $65b6: $ff
	ld   de, $cf11                                   ; $65b7: $11 $11 $cf
	db   $f4                                         ; $65ba: $f4
	rra                                              ; $65bb: $1f
	rst  $38                                         ; $65bc: $ff
	pop  de                                          ; $65bd: $d1
	inc  d                                           ; $65be: $14
	rst  $38                                         ; $65bf: $ff
	and  c                                           ; $65c0: $a1
	ld   de, $6f11                                   ; $65c1: $11 $11 $6f
	ld   hl, sp+$7d                                  ; $65c4: $f8 $7d
	rst  $38                                         ; $65c6: $ff
	ei                                               ; $65c7: $fb
	ld   de, wTitleScreenCounterForResettingData                                   ; $65c8: $11 $17 $cc
	sub  c                                           ; $65cb: $91
	sbc  a                                           ; $65cc: $9f
	rst  $38                                         ; $65cd: $ff
	ld   [hl], c                                     ; $65ce: $71
	ld   e, $ff                                      ; $65cf: $1e $ff
	ld   h, c                                        ; $65d1: $61
	ld   de, $1d11                                   ; $65d2: $11 $11 $1d
	rst  $38                                         ; $65d5: $ff
	rst  $38                                         ; $65d6: $ff
	db   $fd                                         ; $65d7: $fd
	rst  $38                                         ; $65d8: $ff
	ld   de, $1d11                                   ; $65d9: $11 $11 $1d
	db   $fd                                         ; $65dc: $fd
	sbc  a                                           ; $65dd: $9f
	rst  $38                                         ; $65de: $ff
	rst  $30                                         ; $65df: $f7
	ld   de, $91df                                   ; $65e0: $11 $df $91
	ld   de, $1f11                                   ; $65e3: $11 $11 $1f
	db   $fc                                         ; $65e6: $fc
	sub  l                                           ; $65e7: $95
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	ld   de, $df12                                   ; $65ea: $11 $12 $df
	and  c                                           ; $65ed: $a1
	ld   c, a                                        ; $65ee: $4f
	rst  $38                                         ; $65ef: $ff
	pop  hl                                          ; $65f0: $e1
	dec  d                                           ; $65f1: $15
	rst  $38                                         ; $65f2: $ff
	and  c                                           ; $65f3: $a1
	ld   de, $1811                                   ; $65f4: $11 $11 $18
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	adc  c                                           ; $65f9: $89
	rst  $38                                         ; $65fa: $ff
	or   c                                           ; $65fb: $b1
	ld   de, $ff1e                                   ; $65fc: $11 $1e $ff
	ld   l, d                                        ; $65ff: $6a
	rst  $38                                         ; $6600: $ff
	db   $fc                                         ; $6601: $fc
	ld   de, $e65e                                   ; $6602: $11 $5e $e6
	ld   de, $1f11                                   ; $6605: $11 $11 $1f
	db   $fd                                         ; $6608: $fd
	and  e                                           ; $6609: $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $660a: $cf
	rst  $38                                         ; $660b: $ff
	ld   de, $9f11                                   ; $660c: $11 $11 $9f
	push af                                          ; $660f: $f5
	inc  e                                           ; $6610: $1c
	rst  $38                                         ; $6611: $ff
	ld   sp, hl                                      ; $6612: $f9
	ld   de, $f5cf                                   ; $6613: $11 $cf $f5
	ld   de, $1111                                   ; $6616: $11 $11 $11
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	ld   a, d                                        ; $661b: $7a
	cp   a                                           ; $661c: $bf
	pop  af                                          ; $661d: $f1
	ld   de, $ff17                                   ; $661e: $11 $17 $ff
	add  [hl]                                        ; $6621: $86
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	ld   d, c                                        ; $6624: $51
	inc  e                                           ; $6625: $1c
	ei                                               ; $6626: $fb
	ld   hl, $1511                                   ; $6627: $21 $11 $15
	rst  $38                                         ; $662a: $ff
	push bc                                          ; $662b: $c5
	ld   c, [hl]                                     ; $662c: $4e
	rst  $38                                         ; $662d: $ff
	pop  af                                          ; $662e: $f1
	ld   de, $fe1f                                   ; $662f: $11 $1f $fe
	ld   [de], a                                     ; $6632: $12
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	ld   b, c                                        ; $6635: $41
	cpl                                              ; $6636: $2f
	cp   $31                                         ; $6637: $fe $31
	ld   de, $cf11                                   ; $6639: $11 $11 $cf
	rst  $38                                         ; $663c: $ff
	xor  c                                           ; $663d: $a9
	xor  a                                           ; $663e: $af
	ld   hl, sp+$11                                  ; $663f: $f8 $11
	ld   de, $e3ef                                   ; $6641: $11 $ef $e3
	sbc  a                                           ; $6644: $9f
	rst  $38                                         ; $6645: $ff
	pop  af                                          ; $6646: $f1
	dec  d                                           ; $6647: $15
	rst  $28                                         ; $6648: $ef
	or   c                                           ; $6649: $b1
	ld   de, $ef11                                   ; $664a: $11 $11 $ef
	ei                                               ; $664d: $fb
	scf                                              ; $664e: $37
	rst  $38                                         ; $664f: $ff
	ld   hl, sp+$11                                  ; $6650: $f8 $11
	ld   d, $ff                                      ; $6652: $16 $ff
	add  c                                           ; $6654: $81
	ld   l, [hl]                                     ; $6655: $6e
	rst  $38                                         ; $6656: $ff
	pop  de                                          ; $6657: $d1
	add  hl, de                                      ; $6658: $19
	rst  $38                                         ; $6659: $ff
	ldh  a, [c]                                      ; $665a: $f2
	ld   de, $1f11                                   ; $665b: $11 $11 $1f
	cp   $fb                                         ; $665e: $fe $fb
	adc  b                                           ; $6660: $88
	rst  $38                                         ; $6661: $ff
	ld   b, d                                        ; $6662: $42
	ld   de, $fe4f                                   ; $6663: $11 $4f $fe
	xor  h                                           ; $6666: $ac
	cp   a                                           ; $6667: $bf
	ld   sp, hl                                      ; $6668: $f9
	inc  de                                          ; $6669: $13
	sbc  l                                           ; $666a: $9d
	cp   $21                                         ; $666b: $fe $21
	ld   de, $fc1b                                   ; $666d: $11 $1b $fc
	and  l                                           ; $6670: $a5
	ld   a, h                                        ; $6671: $7c
	rst  $38                                         ; $6672: $ff
	sub  c                                           ; $6673: $91
	ld   de, $fa3f                                   ; $6674: $11 $3f $fa
	ld   l, e                                        ; $6677: $6b
	rst  $28                                         ; $6678: $ef
	db   $fc                                         ; $6679: $fc
	ld   de, $ff6c                                   ; $667a: $11 $6c $ff
	ld   h, c                                        ; $667d: $61
	ld   de, rAUD1LEN                                   ; $667e: $11 $11 $ff
	sbc  b                                           ; $6681: $98
	jr   c, @+$01                                    ; $6682: $38 $ff

	ldh  a, [c]                                      ; $6684: $f2
	ld   de, $ff1b                                   ; $6685: $11 $1b $ff
	ld   b, l                                        ; $6688: $45
	cp   [hl]                                        ; $6689: $be
	rst  $38                                         ; $668a: $ff
	add  c                                           ; $668b: $81
	ld   c, d                                        ; $668c: $4a
	rst  $38                                         ; $668d: $ff
	pop  de                                          ; $668e: $d1
	ld   de, $1f11                                   ; $668f: $11 $11 $1f
	rst  $28                                         ; $6692: $ef
	or   e                                           ; $6693: $b3
	ld   l, a                                        ; $6694: $6f
	rst  $38                                         ; $6695: $ff
	ld   h, c                                        ; $6696: $61
	ld   de, $fbaf                                   ; $6697: $11 $af $fb
	cp   d                                           ; $669a: $ba
	cp   a                                           ; $669b: $bf
	ld   sp, hl                                      ; $669c: $f9
	ld   h, l                                        ; $669d: $65
	ld   a, l                                        ; $669e: $7d
	ld   a, [$1121]                                  ; $669f: $fa $21 $11
	dec  de                                          ; $66a2: $1b
	db   $ec                                         ; $66a3: $ec
	or   h                                           ; $66a4: $b4
	ld   a, h                                        ; $66a5: $7c
	rst  $38                                         ; $66a6: $ff
	rst  ToBoot                                         ; $66a7: $c7
	ld   de, $fc2c                                   ; $66a8: $11 $2c $fc
	xor  c                                           ; $66ab: $a9
	cp   a                                           ; $66ac: $bf
	cp   $a6                                         ; $66ad: $fe $a6
	ld   l, d                                        ; $66af: $6a
	db   $ed                                         ; $66b0: $ed
	ld   [hl], c                                     ; $66b1: $71
	ld   de, $bd11                                   ; $66b2: $11 $11 $bd
	and  [hl]                                        ; $66b5: $a6
	dec  h                                           ; $66b6: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66b7: $cf
	rst  $38                                         ; $66b8: $ff
	sub  c                                           ; $66b9: $91
	dec  d                                           ; $66ba: $15
	rst  $28                                         ; $66bb: $ef
	and  [hl]                                        ; $66bc: $a6
	ld   d, [hl]                                     ; $66bd: $56
	rst  JumpTable                                         ; $66be: $df
	db   $fd                                         ; $66bf: $fd
	adc  c                                           ; $66c0: $89
	cp   l                                           ; $66c1: $bd
	ret  z                                           ; $66c2: $c8

	ld   sp, $1711                                   ; $66c3: $31 $11 $17
	cp   b                                           ; $66c6: $b8
	ld   [hl], e                                     ; $66c7: $73
	ld   b, a                                        ; $66c8: $47

Call_0bb_66c9:
	rst  $38                                         ; $66c9: $ff
	cp   $62                                         ; $66ca: $fe $62
	ld   a, [hl-]                                    ; $66cc: $3a
	call c, Call_0bb_77b9                            ; $66cd: $dc $b9 $77
	cp   h                                           ; $66d0: $bc
	db   $ec                                         ; $66d1: $ec
	ret  z                                           ; $66d2: $c8

	adc  c                                           ; $66d3: $89
	xor  b                                           ; $66d4: $a8
	ld   h, c                                        ; $66d5: $61
	ld   de, $5425                                   ; $66d6: $11 $25 $54
	ld   [hl+], a                                    ; $66d9: $22
	ld   c, c                                        ; $66da: $49
	sbc  $fa                                         ; $66db: $de $fa
	ld   [hl], a                                     ; $66dd: $77
	xor  h                                           ; $66de: $ac
	sbc  $ca                                         ; $66df: $de $ca
	sbc  c                                           ; $66e1: $99
	sbc  h                                           ; $66e2: $9c
	db   $db                                         ; $66e3: $db
	sbc  b                                           ; $66e4: $98
	sbc  d                                           ; $66e5: $9a
	cp   d                                           ; $66e6: $ba
	ld   h, c                                        ; $66e7: $61
	inc  de                                          ; $66e8: $13
	ld   d, h                                        ; $66e9: $54
	ld   hl, $3711                                   ; $66ea: $21 $11 $37
	sbc  d                                           ; $66ed: $9a
	sbc  b                                           ; $66ee: $98
	sbc  e                                           ; $66ef: $9b
	sbc  $ee                                         ; $66f0: $de $ee
	call c, $dccc                                    ; $66f2: $dc $cc $dc
	cp   e                                           ; $66f5: $bb
	xor  c                                           ; $66f6: $a9
	xor  e                                           ; $66f7: $ab
	cp   c                                           ; $66f8: $b9
	ld   d, c                                        ; $66f9: $51
	ld   [de], a                                     ; $66fa: $12
	ld   sp, $1111                                   ; $66fb: $31 $11 $11
	dec  d                                           ; $66fe: $15
	ld   l, b                                        ; $66ff: $68
	sbc  c                                           ; $6700: $99
	xor  h                                           ; $6701: $ac
	rst  $28                                         ; $6702: $ef
	rst  $38                                         ; $6703: $ff
	db   $fd                                         ; $6704: $fd
	db   $ec                                         ; $6705: $ec
	call $99ca                                       ; $6706: $cd $ca $99
	xor  d                                           ; $6709: $aa
	and  a                                           ; $670a: $a7
	ld   sp, $1112                                   ; $670b: $31 $12 $11
	ld   de, $1411                                   ; $670e: $11 $11 $14
	ld   a, b                                        ; $6711: $78
	xor  d                                           ; $6712: $aa
	call $ffef                                       ; $6713: $cd $ef $ff
	cp   $cc                                         ; $6716: $fe $cc
	db   $ed                                         ; $6718: $ed
	res  5, c                                        ; $6719: $cb $a9
	xor  d                                           ; $671b: $aa
	sub  [hl]                                        ; $671c: $96
	ld   hl, $2112                                   ; $671d: $21 $12 $21
	ld   de, $1411                                   ; $6720: $11 $11 $14
	ld   a, c                                        ; $6723: $79
	xor  c                                           ; $6724: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6725: $cf
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	db   $dd                                         ; $6728: $dd
	db   $dd                                         ; $6729: $dd
	db   $dd                                         ; $672a: $dd
	jp   z, $baaa                                    ; $672b: $ca $aa $ba

	add  [hl]                                        ; $672e: $86
	ld   sp, $3112                                   ; $672f: $31 $12 $31
	ld   de, $1411                                   ; $6732: $11 $11 $14
	ld   a, b                                        ; $6735: $78
	sbc  d                                           ; $6736: $9a
	cp   [hl]                                        ; $6737: $be
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	db   $ec                                         ; $673a: $ec
	sbc  $fe                                         ; $673b: $de $fe
	db   $db                                         ; $673d: $db
	xor  d                                           ; $673e: $aa
	xor  d                                           ; $673f: $aa
	and  a                                           ; $6740: $a7
	ld   b, d                                        ; $6741: $42
	ld   de, $1131                                   ; $6742: $11 $31 $11
	ld   de, $7813                                   ; $6745: $11 $13 $78
	adc  c                                           ; $6748: $89
	sbc  l                                           ; $6749: $9d
	rst  $38                                         ; $674a: $ff
	rst  $38                                         ; $674b: $ff
	db   $fd                                         ; $674c: $fd
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	jp   c, $baaa                                    ; $674f: $da $aa $ba

	xor  b                                           ; $6752: $a8
	ld   d, e                                        ; $6753: $53
	ld   de, $1113                                   ; $6754: $11 $13 $11
	ld   de, $5711                                   ; $6757: $11 $11 $57
	ld   a, b                                        ; $675a: $78
	sbc  d                                           ; $675b: $9a
	rst  $28                                         ; $675c: $ef
	rst  $38                                         ; $675d: $ff
	cp   $ef                                         ; $675e: $fe $ef
	rst  $38                                         ; $6760: $ff
	db   $ec                                         ; $6761: $ec
	xor  d                                           ; $6762: $aa
	cp   h                                           ; $6763: $bc
	xor  c                                           ; $6764: $a9
	ld   [hl], h                                     ; $6765: $74
	ld   sp, $3111                                   ; $6766: $31 $11 $31
	ld   de, $1411                                   ; $6769: $11 $11 $14
	ld   h, [hl]                                     ; $676c: $66
	ld   a, c                                        ; $676d: $79
	xor  [hl]                                        ; $676e: $ae
	rst  $38                                         ; $676f: $ff
	rst  $38                                         ; $6770: $ff
	cp   $ff                                         ; $6771: $fe $ff
	db   $ed                                         ; $6773: $ed
	res  5, h                                        ; $6774: $cb $ac
	cp   d                                           ; $6776: $ba
	add  a                                           ; $6777: $87
	ld   d, h                                        ; $6778: $54
	ld   sp, $2113                                   ; $6779: $31 $13 $21
	ld   de, $3511                                   ; $677c: $11 $11 $35
	ld   h, a                                        ; $677f: $67
	adc  d                                           ; $6780: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6781: $cf
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $28                                         ; $6784: $ef
	rst  $38                                         ; $6785: $ff
	call c, $babb                                    ; $6786: $dc $bb $ba
	xor  b                                           ; $6789: $a8
	add  [hl]                                        ; $678a: $86
	ld   d, h                                        ; $678b: $54
	ld   hl, $1113                                   ; $678c: $21 $13 $11
	ld   de, $4511                                   ; $678f: $11 $11 $45
	ld   l, b                                        ; $6792: $68
	xor  e                                           ; $6793: $ab
	rst  $38                                         ; $6794: $ff
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	cp   $db                                         ; $6798: $fe $db
	xor  e                                           ; $679a: $ab
	cp   d                                           ; $679b: $ba
	xor  c                                           ; $679c: $a9
	add  [hl]                                        ; $679d: $86
	ld   h, l                                        ; $679e: $65
	ld   hl, $1113                                   ; $679f: $21 $13 $11
	ld   de, $4511                                   ; $67a2: $11 $11 $45
	ld   h, a                                        ; $67a5: $67
	sbc  e                                           ; $67a6: $9b
	rst  JumpTable                                         ; $67a7: $df
	rst  $38                                         ; $67a8: $ff
	rst  $38                                         ; $67a9: $ff
	rst  $28                                         ; $67aa: $ef
	cp   $cc                                         ; $67ab: $fe $cc
	set  1, e                                        ; $67ad: $cb $cb
	sbc  d                                           ; $67af: $9a
	sub  a                                           ; $67b0: $97
	halt                                             ; $67b1: $76
	ld   sp, $2112                                   ; $67b2: $31 $12 $21
	ld   de, $2411                                   ; $67b5: $11 $11 $24
	ld   h, [hl]                                     ; $67b8: $66
	adc  c                                           ; $67b9: $89
	cp   a                                           ; $67ba: $bf
	xor  $fe                                         ; $67bb: $ee $fe
	cp   $ff                                         ; $67bd: $fe $ff
	call c, $bbcc                                    ; $67bf: $dc $cc $bb
	cp   c                                           ; $67c2: $b9
	sbc  b                                           ; $67c3: $98
	halt                                             ; $67c4: $76
	ld   d, h                                        ; $67c5: $54
	ld   hl, $1122                                   ; $67c6: $21 $22 $11
	ld   de, $4511                                   ; $67c9: $11 $11 $45
	ld   l, b                                        ; $67cc: $68
	xor  e                                           ; $67cd: $ab
	db   $dd                                         ; $67ce: $dd
	xor  $ef                                         ; $67cf: $ee $ef
	rst  $28                                         ; $67d1: $ef
	db   $ed                                         ; $67d2: $ed
	call z, $babb                                    ; $67d3: $cc $bb $ba
	sbc  d                                           ; $67d6: $9a
	sbc  b                                           ; $67d7: $98
	halt                                             ; $67d8: $76
	ld   d, e                                        ; $67d9: $53
	ld   [hl+], a                                    ; $67da: $22
	ld   sp, $1111                                   ; $67db: $31 $11 $11
	ld   [de], a                                     ; $67de: $12
	ld   b, l                                        ; $67df: $45
	ld   l, b                                        ; $67e0: $68
	sbc  h                                           ; $67e1: $9c
	sbc  $ee                                         ; $67e2: $de $ee
	rst  $38                                         ; $67e4: $ff
	rst  $38                                         ; $67e5: $ff
	db   $ed                                         ; $67e6: $ed
	call c, $babc                                    ; $67e7: $dc $bc $ba
	xor  d                                           ; $67ea: $aa
	sbc  b                                           ; $67eb: $98
	add  a                                           ; $67ec: $87
	ld   d, e                                        ; $67ed: $53
	ld   hl, $1121                                   ; $67ee: $21 $21 $11
	ld   de, $4512                                   ; $67f1: $11 $12 $45
	ld   l, b                                        ; $67f4: $68
	sbc  e                                           ; $67f5: $9b
	db   $dd                                         ; $67f6: $dd
	sbc  $fe                                         ; $67f7: $de $fe
	rst  $28                                         ; $67f9: $ef
	xor  $dd                                         ; $67fa: $ee $dd
	call z, $bbcc                                    ; $67fc: $cc $cc $bb
	xor  b                                           ; $67ff: $a8
	add  a                                           ; $6800: $87
	ld   h, h                                        ; $6801: $64
	ld   sp, $1122                                   ; $6802: $31 $22 $11
	ld   de, $3411                                   ; $6805: $11 $11 $34
	ld   d, [hl]                                     ; $6808: $56
	adc  d                                           ; $6809: $8a
	cp   h                                           ; $680a: $bc
	db   $dd                                         ; $680b: $dd
	rst  $28                                         ; $680c: $ef
	rst  $38                                         ; $680d: $ff
	cp   $ed                                         ; $680e: $fe $ed
	call c, $cacc                                    ; $6810: $dc $cc $ca
	xor  c                                           ; $6813: $a9
	sbc  b                                           ; $6814: $98
	halt                                             ; $6815: $76
	ld   d, h                                        ; $6816: $54
	ld   [hl+], a                                    ; $6817: $22
	ld   hl, $1111                                   ; $6818: $21 $11 $11
	ld   [de], a                                     ; $681b: $12
	inc  [hl]                                        ; $681c: $34
	ld   d, a                                        ; $681d: $57
	adc  e                                           ; $681e: $8b
	sbc  $df                                         ; $681f: $de $df
	rst  $38                                         ; $6821: $ff
	rst  $38                                         ; $6822: $ff
	cp   $ee                                         ; $6823: $fe $ee
	call c, $b9db                                    ; $6825: $dc $db $b9
	adc  b                                           ; $6828: $88
	ld   [hl], a                                     ; $6829: $77
	ld   h, h                                        ; $682a: $64
	ld   [hl-], a                                    ; $682b: $32
	ld   [de], a                                     ; $682c: $12
	ld   de, $1111                                   ; $682d: $11 $11 $11
	inc  d                                           ; $6830: $14
	ld   b, l                                        ; $6831: $45
	ld   a, c                                        ; $6832: $79
	xor  e                                           ; $6833: $ab
	sbc  $de                                         ; $6834: $de $de
	rst  $28                                         ; $6836: $ef
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	db   $ed                                         ; $6839: $ed
	call z, $a9ca                                    ; $683a: $cc $ca $a9
	add  a                                           ; $683d: $87
	halt                                             ; $683e: $76
	ld   d, l                                        ; $683f: $55
	ld   b, d                                        ; $6840: $42
	ld   [de], a                                     ; $6841: $12
	ld   hl, $1111                                   ; $6842: $21 $11 $11
	inc  de                                          ; $6845: $13
	ld   d, l                                        ; $6846: $55
	ld   l, b                                        ; $6847: $68
	xor  e                                           ; $6848: $ab
	db   $dd                                         ; $6849: $dd
	sbc  $ff                                         ; $684a: $de $ff
	rst  $38                                         ; $684c: $ff
	cp   $dd                                         ; $684d: $fe $dd
	call c, $a9cb                                    ; $684f: $dc $cb $a9
	adc  b                                           ; $6852: $88
	ld   [hl], a                                     ; $6853: $77
	ld   h, l                                        ; $6854: $65
	ld   d, h                                        ; $6855: $54
	ld   [hl-], a                                    ; $6856: $32
	inc  sp                                          ; $6857: $33
	ld   de, $1111                                   ; $6858: $11 $11 $11
	ld   b, l                                        ; $685b: $45
	ld   d, [hl]                                     ; $685c: $56
	adc  c                                           ; $685d: $89
	xor  h                                           ; $685e: $ac
	db   $dd                                         ; $685f: $dd
	db   $dd                                         ; $6860: $dd
	xor  $ff                                         ; $6861: $ee $ff
	db   $ed                                         ; $6863: $ed
	call z, $b9cb                                    ; $6864: $cc $cb $b9
	sbc  b                                           ; $6867: $98
	add  a                                           ; $6868: $87
	ld   [hl], a                                     ; $6869: $77
	ld   h, [hl]                                     ; $686a: $66
	ld   d, l                                        ; $686b: $55
	ld   b, e                                        ; $686c: $43
	inc  sp                                          ; $686d: $33
	ld   de, $1211                                   ; $686e: $11 $11 $12
	ld   b, l                                        ; $6871: $45
	ld   d, [hl]                                     ; $6872: $56
	ld   a, c                                        ; $6873: $79
	cp   e                                           ; $6874: $bb
	db   $dd                                         ; $6875: $dd

Jump_0bb_6876:
	db   $dd                                         ; $6876: $dd
	xor  $ff                                         ; $6877: $ee $ff
	db   $ec                                         ; $6879: $ec
	cp   h                                           ; $687a: $bc
	cp   e                                           ; $687b: $bb
	cp   d                                           ; $687c: $ba
	sub  a                                           ; $687d: $97
	ld   a, b                                        ; $687e: $78
	sbc  b                                           ; $687f: $98
	ld   h, [hl]                                     ; $6880: $66
	ld   h, l                                        ; $6881: $65
	ld   b, c                                        ; $6882: $41
	inc  de                                          ; $6883: $13
	ld   sp, $1111                                   ; $6884: $31 $11 $11
	scf                                              ; $6887: $37
	adc  c                                           ; $6888: $89
	sbc  e                                           ; $6889: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $688a: $cf
	rst  $38                                         ; $688b: $ff
	db   $fd                                         ; $688c: $fd
	set  3, l                                        ; $688d: $cb $dd
	ret                                              ; $688f: $c9


	ld   [hl], a                                     ; $6890: $77
	ld   a, d                                        ; $6891: $7a
	call z, $89ba                                    ; $6892: $cc $ba $89
	xor  d                                           ; $6895: $aa
	add  h                                           ; $6896: $84
	ld   hl, $1111                                   ; $6897: $21 $11 $11
	ld   [de], a                                     ; $689a: $12
	ld   b, h                                        ; $689b: $44
	dec  [hl]                                        ; $689c: $35
	ld   a, a                                        ; $689d: $7f
	rst  $38                                         ; $689e: $ff
	db   $fc                                         ; $689f: $fc
	cp   e                                           ; $68a0: $bb
	rst  $38                                         ; $68a1: $ff
	and  [hl]                                        ; $68a2: $a6
	ld   d, [hl]                                     ; $68a3: $56
	ld   a, e                                        ; $68a4: $7b
	xor  b                                           ; $68a5: $a8
	ld   e, c                                        ; $68a6: $59
	xor  [hl]                                        ; $68a7: $ae
	rst  $38                                         ; $68a8: $ff
	jp   c, $a8ba                                    ; $68a9: $da $ba $a8

	ld   b, c                                        ; $68ac: $41
	ld   de, $1411                                   ; $68ad: $11 $11 $14
	adc  b                                           ; $68b0: $88
	sub  a                                           ; $68b1: $97
	cp   [hl]                                        ; $68b2: $be
	rst  $38                                         ; $68b3: $ff
	db   $fc                                         ; $68b4: $fc
	ld   h, a                                        ; $68b5: $67
	ld   l, [hl]                                     ; $68b6: $6e
	or   c                                           ; $68b7: $b1
	ld   de, $ff7a                                   ; $68b8: $11 $7a $ff
	or   [hl]                                        ; $68bb: $b6
	rst  JumpTable                                         ; $68bc: $df
	rst  $38                                         ; $68bd: $ff
	ret  c                                           ; $68be: $d8

	dec  sp                                          ; $68bf: $3b
	ret                                              ; $68c0: $c9


	ld   hl, $1111                                   ; $68c1: $21 $11 $11
	ld   de, $fcad                                   ; $68c4: $11 $ad $fc
	xor  $ff                                         ; $68c7: $ee $ff
	db   $fc                                         ; $68c9: $fc
	ld   [hl+], a                                    ; $68ca: $22
	inc  h                                           ; $68cb: $24
	or   d                                           ; $68cc: $b2
	ld   de, $ffbf                                   ; $68cd: $11 $bf $ff
	ld   sp, hl                                      ; $68d0: $f9
	cp   a                                           ; $68d1: $bf
	cp   $97                                         ; $68d2: $fe $97
	ld   b, a                                        ; $68d4: $47
	jp   c, $1141                                    ; $68d5: $da $41 $11

	ld   de, $5f11                                   ; $68d8: $11 $11 $5f
	rst  $38                                         ; $68db: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68dc: $cf
	rst  JumpTable                                         ; $68dd: $df
	cp   $21                                         ; $68de: $fe $21
	ld   de, $119b                                   ; $68e0: $11 $9b $11
	ld   l, a                                        ; $68e3: $6f
	rst  $38                                         ; $68e4: $ff
	ld   sp, hl                                      ; $68e5: $f9
	ld   e, [hl]                                     ; $68e6: $5e
	ei                                               ; $68e7: $fb
	ld   d, c                                        ; $68e8: $51
	ld   h, a                                        ; $68e9: $67
	rst  $38                                         ; $68ea: $ff
	ld   [hl], c                                     ; $68eb: $71
	inc  de                                          ; $68ec: $13
	ld   de, $1f11                                   ; $68ed: $11 $11 $1f
	rst  $38                                         ; $68f0: $ff
	ld   hl, sp-$01                                  ; $68f1: $f8 $ff
	rst  $38                                         ; $68f3: $ff
	ld   hl, $2e13                                   ; $68f4: $21 $13 $2e
	ld   d, c                                        ; $68f7: $51
	rra                                              ; $68f8: $1f
	rst  $38                                         ; $68f9: $ff
	or   $56                                         ; $68fa: $f6 $56
	db   $fd                                         ; $68fc: $fd
	ld   de, $ff1f                                   ; $68fd: $11 $1f $ff
	or   l                                           ; $6900: $b5
	add  hl, sp                                      ; $6901: $39
	add  c                                           ; $6902: $81
	ld   de, $8f11                                   ; $6903: $11 $11 $8f
	rst  $38                                         ; $6906: $ff
	cp   a                                           ; $6907: $bf
	rst  $38                                         ; $6908: $ff
	pop  af                                          ; $6909: $f1
	ld   de, $4714                                   ; $690a: $11 $14 $47
	ld   [de], a                                     ; $690d: $12
	rst  $38                                         ; $690e: $ff
	rst  $38                                         ; $690f: $ff
	ld   [hl], l                                     ; $6910: $75
	ld   l, d                                        ; $6911: $6a
	or   c                                           ; $6912: $b1
	ld   de, $ffff                                   ; $6913: $11 $ff $ff
	ld   e, d                                        ; $6916: $5a
	sbc  $21                                         ; $6917: $de $21
	ld   de, $1f11                                   ; $6919: $11 $11 $1f
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	rst  $30                                         ; $691f: $f7
	ld   de, $3c15                                   ; $6920: $11 $15 $3c
	ld   h, [hl]                                     ; $6923: $66
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	ld   [hl], c                                     ; $6926: $71
	ld   de, $1151                                   ; $6927: $11 $51 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $692a: $cf
	rst  $38                                         ; $692b: $ff
	jp   z, Jump_0bb_719a                            ; $692c: $ca $9a $71

	ld   de, $1111                                   ; $692f: $11 $11 $11
	rst  $38                                         ; $6932: $ff
	rst  $38                                         ; $6933: $ff
	sbc  a                                           ; $6934: $9f
	rst  $38                                         ; $6935: $ff
	sub  c                                           ; $6936: $91
	ld   de, $e8fb                                   ; $6937: $11 $fb $e8
	ld   a, a                                        ; $693a: $7f
	rst  $38                                         ; $693b: $ff
	or   c                                           ; $693c: $b1
	ld   [de], a                                     ; $693d: $12
	ld   de, $2f11                                   ; $693e: $11 $11 $2f
	rst  $38                                         ; $6941: $ff
	ld   a, [$858b]                                  ; $6942: $fa $8b $85
	ld   de, $1111                                   ; $6945: $11 $11 $11
	rra                                              ; $6948: $1f
	rst  $38                                         ; $6949: $ff
	push af                                          ; $694a: $f5
	cp   $fa                                         ; $694b: $fe $fa
	ld   de, $fd1f                                   ; $694d: $11 $1f $fd
	and  a                                           ; $6950: $a7
	rst  $38                                         ; $6951: $ff
	ld   hl, sp+$11                                  ; $6952: $f8 $11
	ld   [hl], $31                                   ; $6954: $36 $31
	inc  de                                          ; $6956: $13
	rst  $38                                         ; $6957: $ff
	cp   $77                                         ; $6958: $fe $77
	ret  z                                           ; $695a: $c8

	ld   h, c                                        ; $695b: $61
	ld   de, $1111                                   ; $695c: $11 $11 $11
	adc  a                                           ; $695f: $8f
	rst  $38                                         ; $6960: $ff
	dec  [hl]                                        ; $6961: $35
	rst  $38                                         ; $6962: $ff
	pop  af                                          ; $6963: $f1
	ld   de, $daaf                                   ; $6964: $11 $af $da
	ld   a, $ff                                      ; $6967: $3e $ff
	pop  af                                          ; $6969: $f1
	ld   de, $31c5                                   ; $696a: $11 $c5 $31
	dec  e                                           ; $696d: $1d
	rst  $38                                         ; $696e: $ff
	ld   hl, sp+$6c                                  ; $696f: $f8 $6c
	ret  z                                           ; $6971: $c8

	ld   hl, $1111                                   ; $6972: $21 $11 $11
	ld   de, $fd3f                                   ; $6975: $11 $3f $fd
	ld   d, $ff                                      ; $6978: $16 $ff
	pop  af                                          ; $697a: $f1
	ld   de, $a5af                                   ; $697b: $11 $af $a5
	ld   c, l                                        ; $697e: $4d
	rst  $38                                         ; $697f: $ff
	pop  af                                          ; $6980: $f1
	inc  d                                           ; $6981: $14
	call nz, $3e11                                   ; $6982: $c4 $11 $3e
	rst  $38                                         ; $6985: $ff
	db   $db                                         ; $6986: $db
	cp   l                                           ; $6987: $bd
	sub  h                                           ; $6988: $94
	ld   de, $2112                                   ; $6989: $11 $12 $21
	ld   de, $ff16                                   ; $698c: $11 $16 $ff
	ld   [hl], l                                     ; $698f: $75
	rst  JumpTable                                         ; $6990: $df
	sbc  a                                           ; $6991: $9f
	ld   de, $f21b                                   ; $6992: $11 $1b $f2
	ld   e, c                                        ; $6995: $59
	rst  $38                                         ; $6996: $ff
	cp   $13                                         ; $6997: $fe $13
	ld   a, c                                        ; $6999: $79
	ld   de, $cf16                                   ; $699a: $11 $16 $cf
	cp   $fc                                         ; $699d: $fe $fc
	rst  $10                                         ; $699f: $d7
	ld   d, h                                        ; $69a0: $54
	ld   [de], a                                     ; $69a1: $12
	ld   [de], a                                     ; $69a2: $12
	ld   de, $4f11                                   ; $69a3: $11 $11 $4f
	ld   sp, hl                                      ; $69a6: $f9
	ld   c, b                                        ; $69a7: $48
	db   $fc                                         ; $69a8: $fc
	pop  hl                                          ; $69a9: $e1
	ld   de, $43bf                                   ; $69aa: $11 $bf $43
	adc  a                                           ; $69ad: $8f
	rst  $38                                         ; $69ae: $ff
	pop  de                                          ; $69af: $d1
	jr   @-$3d                                       ; $69b0: $18 $c1

	ld   [de], a                                     ; $69b2: $12
	xor  a                                           ; $69b3: $af
	rst  $38                                         ; $69b4: $ff
	sbc  l                                           ; $69b5: $9d
	rst  $38                                         ; $69b6: $ff
	ld   d, c                                        ; $69b7: $51
	dec  [hl]                                        ; $69b8: $35
	ld   [hl], h                                     ; $69b9: $74
	ld   de, $2113                                   ; $69ba: $11 $13 $21
	rra                                              ; $69bd: $1f
	ld   a, [$ff47]                                  ; $69be: $fa $47 $ff
	ld   hl, sp+$11                                  ; $69c1: $f8 $11
	adc  a                                           ; $69c3: $8f
	ld   [hl], c                                     ; $69c4: $71
	ld   a, [hl]                                     ; $69c5: $7e
	rst  $38                                         ; $69c6: $ff
	db   $f4                                         ; $69c7: $f4
	dec  hl                                          ; $69c8: $2b
	pop  bc                                          ; $69c9: $c1
	inc  de                                          ; $69ca: $13
	xor  l                                           ; $69cb: $ad
	db   $dd                                         ; $69cc: $dd
	cp   a                                           ; $69cd: $bf
	rst  $38                                         ; $69ce: $ff
	ld   h, c                                        ; $69cf: $61
	ld   h, a                                        ; $69d0: $67
	ld   d, c                                        ; $69d1: $51
	ld   de, $1112                                   ; $69d2: $11 $12 $11
	rra                                              ; $69d5: $1f
	ei                                               ; $69d6: $fb
	dec  h                                           ; $69d7: $25
	rst  $38                                         ; $69d8: $ff
	push bc                                          ; $69d9: $c5
	ld   de, $81bf                                   ; $69da: $11 $bf $81
	sbc  a                                           ; $69dd: $9f
	rst  $38                                         ; $69de: $ff
	or   d                                           ; $69df: $b2
	ld   a, [de]                                     ; $69e0: $1a
	and  c                                           ; $69e1: $a1
	inc  d                                           ; $69e2: $14
	rst  $28                                         ; $69e3: $ef
	xor  $bf                                         ; $69e4: $ee $bf
	rst  $38                                         ; $69e6: $ff
	ld   b, c                                        ; $69e7: $41
	ld   c, c                                        ; $69e8: $49
	ld   h, c                                        ; $69e9: $61
	ld   de, $2146                                   ; $69ea: $11 $46 $21
	inc  de                                          ; $69ed: $13
	rst  $38                                         ; $69ee: $ff
	ld   d, e                                        ; $69ef: $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f0: $cf
	sbc  $11                                         ; $69f1: $de $11
	ld   l, e                                        ; $69f3: $6b
	pop  af                                          ; $69f4: $f1
	dec  de                                          ; $69f5: $1b
	rst  $38                                         ; $69f6: $ff
	srl  b                                           ; $69f7: $cb $38
	sub  $11                                         ; $69f9: $d6 $11
	xor  a                                           ; $69fb: $af
	jp   z, $ffcd                                    ; $69fc: $ca $cd $ff

	jp   nc, $8329                                   ; $69ff: $d2 $29 $83

	ld   [de], a                                     ; $6a02: $12
	ld   b, l                                        ; $6a03: $45
	ld   de, rAUD1LEN                                   ; $6a04: $11 $11 $ff
	or   c                                           ; $6a07: $b1
	ld   c, a                                        ; $6a08: $4f
	ld   a, [$1b51]                                  ; $6a09: $fa $51 $1b
	or   $16                                         ; $6a0c: $f6 $16
	rst  $38                                         ; $6a0e: $ff
	ret  z                                           ; $6a0f: $c8

	ld   [hl], a                                     ; $6a10: $77
	db   $db                                         ; $6a11: $db
	ld   hl, $e84e                                   ; $6a12: $21 $4e $e8
	adc  l                                           ; $6a15: $8d
	rst  $38                                         ; $6a16: $ff
	rst  $30                                         ; $6a17: $f7
	ld   h, $a6                                      ; $6a18: $26 $a6
	ld   de, $5145                                   ; $6a1a: $11 $45 $51
	ld   de, $f23f                                   ; $6a1d: $11 $3f $f2
	dec  de                                          ; $6a20: $1b
	rst  $38                                         ; $6a21: $ff
	ld   h, e                                        ; $6a22: $63
	rla                                              ; $6a23: $17
	rl   c                                           ; $6a24: $cb $11
	rst  JumpTable                                         ; $6a26: $df
	rst  $30                                         ; $6a27: $f7
	sbc  d                                           ; $6a28: $9a
	xor  h                                           ; $6a29: $ac
	ld   h, c                                        ; $6a2a: $61
	ld   a, [de]                                     ; $6a2b: $1a
	ld   [$ff69], a                                  ; $6a2c: $ea $69 $ff
	ei                                               ; $6a2f: $fb
	ld   [hl], l                                     ; $6a30: $75
	xor  d                                           ; $6a31: $aa
	ld   b, c                                        ; $6a32: $41
	dec  [hl]                                        ; $6a33: $35
	ld   b, d                                        ; $6a34: $42
	ld   de, $ff15                                   ; $6a35: $11 $15 $ff
	ld   d, $ff                                      ; $6a38: $16 $ff
	and  [hl]                                        ; $6a3a: $a6
	ld   de, $a198                                   ; $6a3b: $11 $98 $a1
	ccf                                              ; $6a3e: $3f
	rst  $38                                         ; $6a3f: $ff
	ld   l, [hl]                                     ; $6a40: $6e
	xor  h                                           ; $6a41: $ac
	add  e                                           ; $6a42: $83
	ld   de, $75cb                                   ; $6a43: $11 $cb $75
	rst  JumpTable                                         ; $6a46: $df
	db   $fc                                         ; $6a47: $fc
	sbc  d                                           ; $6a48: $9a
	xor  e                                           ; $6a49: $ab
	ld   [hl], e                                     ; $6a4a: $73
	dec  [hl]                                        ; $6a4b: $35
	ld   h, e                                        ; $6a4c: $63
	ld   de, $1311                                   ; $6a4d: $11 $11 $13
	rst  $38                                         ; $6a50: $ff
	ld   h, [hl]                                     ; $6a51: $66
	rst  $38                                         ; $6a52: $ff
	xor  d                                           ; $6a53: $aa
	ld   de, $b146                                   ; $6a54: $11 $46 $b1
	ld   c, h                                        ; $6a57: $4c
	rst  $38                                         ; $6a58: $ff
	sbc  [hl]                                        ; $6a59: $9e
	sbc  e                                           ; $6a5a: $9b
	ld   [hl], a                                     ; $6a5b: $77
	ld   hl, $9599                                   ; $6a5c: $21 $99 $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a5f: $cf
	db   $fd                                         ; $6a60: $fd
	jp   z, Jump_0bb_7399                            ; $6a61: $ca $99 $73

	inc  d                                           ; $6a64: $14
	ld   b, d                                        ; $6a65: $42
	ld   bc, $5f11                                   ; $6a66: $01 $11 $5f
	pop  af                                          ; $6a69: $f1
	ld   a, a                                        ; $6a6a: $7f
	ei                                               ; $6a6b: $fb
	ld   d, d                                        ; $6a6c: $52
	ld   a, [de]                                     ; $6a6d: $1a
	ld   a, c                                        ; $6a6e: $79
	ld   [de], a                                     ; $6a6f: $12
	rst  $38                                         ; $6a70: $ff
	db   $e3                                         ; $6a71: $e3
	db   $fc                                         ; $6a72: $fc
	ret  c                                           ; $6a73: $d8

	inc  sp                                          ; $6a74: $33
	inc  a                                           ; $6a75: $3c
	add  l                                           ; $6a76: $85
	ld   e, h                                        ; $6a77: $5c
	cp   $cb                                         ; $6a78: $fe $cb
	res  4, a                                        ; $6a7a: $cb $a7
	inc  sp                                          ; $6a7c: $33
	ld   d, l                                        ; $6a7d: $55
	ld   de, $1111                                   ; $6a7e: $11 $11 $11
	rst  $38                                         ; $6a81: $ff
	xor  b                                           ; $6a82: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a83: $cf
	rst  $30                                         ; $6a84: $f7
	add  c                                           ; $6a85: $81
	inc  d                                           ; $6a86: $14
	add  h                                           ; $6a87: $84
	ld   a, [de]                                     ; $6a88: $1a
	rst  JumpTable                                         ; $6a89: $df
	xor  h                                           ; $6a8a: $ac
	ld   a, [$51c4]                                  ; $6a8b: $fa $c4 $51
	ld   e, c                                        ; $6a8e: $59
	ld   h, [hl]                                     ; $6a8f: $66
	adc  a                                           ; $6a90: $8f
	rst  $28                                         ; $6a91: $ef
	call $85aa                                       ; $6a92: $cd $aa $85
	ld   b, e                                        ; $6a95: $43
	ld   d, e                                        ; $6a96: $53
	ld   de, $1111                                   ; $6a97: $11 $11 $11
	rst  $38                                         ; $6a9a: $ff
	ld   h, l                                        ; $6a9b: $65
	cp   a                                           ; $6a9c: $bf
	or   $31                                         ; $6a9d: $f6 $31
	ld   d, l                                        ; $6a9f: $55
	or   c                                           ; $6aa0: $b1
	ld   a, [de]                                     ; $6aa1: $1a
	rst  $38                                         ; $6aa2: $ff
	ld   e, h                                        ; $6aa3: $5c
	adc  $a4                                         ; $6aa4: $ce $a4
	ld   d, c                                        ; $6aa6: $51
	sbc  b                                           ; $6aa7: $98
	add  h                                           ; $6aa8: $84
	ld   a, a                                        ; $6aa9: $7f
	db   $fd                                         ; $6aaa: $fd
	adc  h                                           ; $6aab: $8c
	call z, Call_0bb_4694                            ; $6aac: $cc $94 $46
	ld   [hl], h                                     ; $6aaf: $74
	ld   de, $1111                                   ; $6ab0: $11 $11 $11
	xor  a                                           ; $6ab3: $af
	rst  $30                                         ; $6ab4: $f7
	ld   a, a                                        ; $6ab5: $7f
	db   $fd                                         ; $6ab6: $fd
	and  c                                           ; $6ab7: $a1
	inc  d                                           ; $6ab8: $14
	xor  b                                           ; $6ab9: $a8
	inc  de                                          ; $6aba: $13
	xor  a                                           ; $6abb: $af
	call z, $f6c9                                    ; $6abc: $cc $c9 $f6
	and  c                                           ; $6abf: $a1
	scf                                              ; $6ac0: $37
	ld   a, b                                        ; $6ac1: $78
	ld   c, e                                        ; $6ac2: $4b
	adc  $dd                                         ; $6ac3: $ce $dd
	db   $db                                         ; $6ac5: $db
	or   a                                           ; $6ac6: $b7
	ld   d, e                                        ; $6ac7: $53
	ld   b, h                                        ; $6ac8: $44
	ld   hl, $1111                                   ; $6ac9: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6acc: $cf
	db   $d3                                         ; $6acd: $d3
	xor  a                                           ; $6ace: $af
	ld   hl, sp+$61                                  ; $6acf: $f8 $61
	inc  d                                           ; $6ad1: $14
	add  a                                           ; $6ad2: $87
	inc  de                                          ; $6ad3: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad4: $cf
	cp   d                                           ; $6ad5: $ba
	call z, $a1f4                                    ; $6ad6: $cc $f4 $a1
	daa                                              ; $6ad9: $27
	ld   a, d                                        ; $6ada: $7a
	dec  sp                                          ; $6adb: $3b
	rst  $28                                         ; $6adc: $ef
	call z, $a7da                                    ; $6add: $cc $da $a7
	ld   h, d                                        ; $6ae0: $62
	ld   b, l                                        ; $6ae1: $45
	ld   b, d                                        ; $6ae2: $42
	ld   de, $3f11                                   ; $6ae3: $11 $11 $3f
	di                                               ; $6ae6: $f3
	ld   l, [hl]                                     ; $6ae7: $6e
	cp   $74                                         ; $6ae8: $fe $74
	ld   de, $116b                                   ; $6aea: $11 $6b $11
	ld   l, a                                        ; $6aed: $6f
	ld   sp, hl                                      ; $6aee: $f9
	jp   c, $96f7                                    ; $6aef: $da $f7 $96

	inc  d                                           ; $6af2: $14
	ld   l, e                                        ; $6af3: $6b
	ld   [hl], a                                     ; $6af4: $77
	adc  $ed                                         ; $6af5: $ce $ed
	jp   z, $8697                                    ; $6af7: $ca $97 $86

	dec  [hl]                                        ; $6afa: $35
	ld   b, h                                        ; $6afb: $44
	ld   de, $1f11                                   ; $6afc: $11 $11 $1f
	ld   sp, hl                                      ; $6aff: $f9
	add  hl, sp                                      ; $6b00: $39
	rst  $38                                         ; $6b01: $ff
	and  [hl]                                        ; $6b02: $a6
	ld   de, $813b                                   ; $6b03: $11 $3b $81
	dec  e                                           ; $6b06: $1d
	cp   $d9                                         ; $6b07: $fe $d9
	jp   z, $117b                                    ; $6b09: $ca $7b $11

	dec  hl                                          ; $6b0c: $2b
	ret  c                                           ; $6b0d: $d8

	xor  e                                           ; $6b0e: $ab
	cp   $eb                                         ; $6b0f: $fe $eb
	add  [hl]                                        ; $6b11: $86
	adc  b                                           ; $6b12: $88
	ld   d, e                                        ; $6b13: $53
	ld   b, l                                        ; $6b14: $45
	ld   b, c                                        ; $6b15: $41
	ld   de, rAUD1HIGH                                   ; $6b16: $11 $14 $ff
	ld   h, e                                        ; $6b19: $63
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b1a: $cf
	ld   a, [$1441]                                  ; $6b1b: $fa $41 $14
	rst  $30                                         ; $6b1e: $f7
	ld   de, $fcff                                   ; $6b1f: $11 $ff $fc
	ld   a, d                                        ; $6b22: $7a
	ld   c, h                                        ; $6b23: $4c
	and  d                                           ; $6b24: $a2
	ld   de, $badd                                   ; $6b25: $11 $dd $ba
	xor  l                                           ; $6b28: $ad
	adc  $b6                                         ; $6b29: $ce $b6
	ld   b, a                                        ; $6b2b: $47
	sub  a                                           ; $6b2c: $97
	ld   b, h                                        ; $6b2d: $44
	ld   b, d                                        ; $6b2e: $42
	ld   hl, $9f11                                   ; $6b2f: $21 $11 $9f
	ld   sp, hl                                      ; $6b32: $f9
	dec  a                                           ; $6b33: $3d
	rst  $38                                         ; $6b34: $ff
	ldh  [c], a                                      ; $6b35: $e2
	ld   de, $914f                                   ; $6b36: $11 $4f $91
	rra                                              ; $6b39: $1f
	rst  $38                                         ; $6b3a: $ff
	reti                                             ; $6b3b: $d9


	ld   b, c                                        ; $6b3c: $41
	cp   c                                           ; $6b3d: $b9
	ld   h, c                                        ; $6b3e: $61
	ld   a, [de]                                     ; $6b3f: $1a
	rst  JumpTable                                         ; $6b40: $df
	res  1, d                                        ; $6b41: $cb $8a
	db   $ed                                         ; $6b43: $ed
	sub  d                                           ; $6b44: $92
	ld   b, a                                        ; $6b45: $47
	xor  b                                           ; $6b46: $a8
	ld   h, d                                        ; $6b47: $62
	ld   de, $1711                                   ; $6b48: $11 $11 $17
	rst  $38                                         ; $6b4b: $ff
	push hl                                          ; $6b4c: $e5
	xor  a                                           ; $6b4d: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b4e: $cf
	ld   d, c                                        ; $6b4f: $51
	ld   de, $73fd                                   ; $6b50: $11 $fd $73
	sbc  a                                           ; $6b53: $9f
	rst  $38                                         ; $6b54: $ff
	call nc, $9b15                                   ; $6b55: $d4 $15 $9b
	ld   sp, $ff5a                                   ; $6b58: $31 $5a $ff
	ld   hl, sp+$69                                  ; $6b5b: $f8 $69
	db   $ed                                         ; $6b5d: $ed
	ld   h, e                                        ; $6b5e: $63
	scf                                              ; $6b5f: $37
	xor  d                                           ; $6b60: $aa
	ld   h, c                                        ; $6b61: $61
	ld   de, $2f11                                   ; $6b62: $11 $11 $2f
	rst  $38                                         ; $6b65: $ff
	adc  b                                           ; $6b66: $88
	db   $fd                                         ; $6b67: $fd
	jp   hl                                          ; $6b68: $e9


	ld   de, $dc1a                                   ; $6b69: $11 $1a $dc
	ld   h, a                                        ; $6b6c: $67
	sbc  $ff                                         ; $6b6d: $de $ff
	or   c                                           ; $6b6f: $b1
	ld   d, $88                                      ; $6b70: $16 $88
	inc  [hl]                                        ; $6b72: $34
	ld   a, h                                        ; $6b73: $7c
	rst  $38                                         ; $6b74: $ff
	add  sp, $68                                     ; $6b75: $e8 $68
	ret                                              ; $6b77: $c9


	ld   [hl], l                                     ; $6b78: $75
	ld   b, [hl]                                     ; $6b79: $46
	adc  c                                           ; $6b7a: $89
	ld   [hl], d                                     ; $6b7b: $72
	ld   de, $8f11                                   ; $6b7c: $11 $11 $8f
	db   $fd                                         ; $6b7f: $fd
	ld   e, d                                        ; $6b80: $5a
	db   $fc                                         ; $6b81: $fc
	rst  $30                                         ; $6b82: $f7
	ld   de, $ed1c                                   ; $6b83: $11 $1c $ed
	ld   a, c                                        ; $6b86: $79
	xor  l                                           ; $6b87: $ad
	rst  $38                                         ; $6b88: $ff
	pop  bc                                          ; $6b89: $c1
	ld   [de], a                                     ; $6b8a: $12
	adc  c                                           ; $6b8b: $89
	ld   a, c                                        ; $6b8c: $79
	ld   a, c                                        ; $6b8d: $79
	rst  JumpTable                                         ; $6b8e: $df
	ld   sp, hl                                      ; $6b8f: $f9
	ld   d, [hl]                                     ; $6b90: $56
	adc  c                                           ; $6b91: $89
	sbc  c                                           ; $6b92: $99
	ld   h, h                                        ; $6b93: $64
	ld   l, c                                        ; $6b94: $69
	sub  h                                           ; $6b95: $94
	ld   de, $6f11                                   ; $6b96: $11 $11 $6f
	rst  $38                                         ; $6b99: $ff
	ld   a, b                                        ; $6b9a: $78
	jp   c, $21fb                                    ; $6b9b: $da $fb $21

	ld   d, $df                                      ; $6b9e: $16 $df
	res  1, b                                        ; $6ba0: $cb $88
	rst  JumpTable                                         ; $6ba2: $df
	di                                               ; $6ba3: $f3
	ld   de, $9d38                                   ; $6ba4: $11 $38 $9d
	xor  c                                           ; $6ba7: $a9
	adc  h                                           ; $6ba8: $8c
	cp   $a7                                         ; $6ba9: $fe $a7
	ld   d, l                                        ; $6bab: $55
	ld   a, d                                        ; $6bac: $7a
	xor  b                                           ; $6bad: $a8
	ld   h, [hl]                                     ; $6bae: $66
	ld   h, h                                        ; $6baf: $64
	ld   hl, $1f11                                   ; $6bb0: $21 $11 $1f
	rst  $38                                         ; $6bb3: $ff
	ld   hl, sp-$3a                                  ; $6bb4: $f8 $c6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb6: $cf
	sub  c                                           ; $6bb7: $91
	ld   de, $ff6e                                   ; $6bb8: $11 $6e $ff
	or   $69                                         ; $6bbb: $f6 $69
	ei                                               ; $6bbd: $fb
	ld   d, d                                        ; $6bbe: $52
	ld   de, $fd3c                                   ; $6bbf: $11 $3c $fd
	cp   b                                           ; $6bc2: $b8
	cp   e                                           ; $6bc3: $bb
	cp   h                                           ; $6bc4: $bc
	sub  a                                           ; $6bc5: $97
	dec  [hl]                                        ; $6bc6: $35
	sbc  e                                           ; $6bc7: $9b
	cp   d                                           ; $6bc8: $ba
	ld   [hl], h                                     ; $6bc9: $74
	ld   de, $1111                                   ; $6bca: $11 $11 $11
	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	cp   h                                           ; $6bcf: $bc
	ld   a, [hl-]                                    ; $6bd0: $3a
	ret  c                                           ; $6bd1: $d8

	ld   de, $af14                                   ; $6bd2: $11 $14 $af
	rst  $38                                         ; $6bd5: $ff

jr_0bb_6bd6:
	and  l                                           ; $6bd6: $a5
	ld   a, h                                        ; $6bd7: $7c
	xor  b                                           ; $6bd8: $a8
	ld   [hl-], a                                    ; $6bd9: $32
	ld   de, $ffbe                                   ; $6bda: $11 $be $ff
	cp   e                                           ; $6bdd: $bb
	ld   l, b                                        ; $6bde: $68
	cp   h                                           ; $6bdf: $bc
	and  l                                           ; $6be0: $a5
	ld   h, [hl]                                     ; $6be1: $66
	adc  d                                           ; $6be2: $8a
	cp   d                                           ; $6be3: $ba
	ld   d, c                                        ; $6be4: $51
	ld   de, $1f11                                   ; $6be5: $11 $11 $1f
	rst  $38                                         ; $6be8: $ff
	db   $fc                                         ; $6be9: $fc
	call nc, $637d                                   ; $6bea: $d4 $7d $63
	ld   de, $ff47                                   ; $6bed: $11 $47 $ff
	db   $fd                                         ; $6bf0: $fd
	ld   d, [hl]                                     ; $6bf1: $56
	and  a                                           ; $6bf2: $a7
	add  l                                           ; $6bf3: $85
	ld   b, d                                        ; $6bf4: $42
	jr   jr_0bb_6bd6                                 ; $6bf5: $18 $df

	db   $fc                                         ; $6bf7: $fc
	add  $57                                         ; $6bf8: $c6 $57
	sbc  d                                           ; $6bfa: $9a
	ld   a, b                                        ; $6bfb: $78
	sbc  d                                           ; $6bfc: $9a
	cp   h                                           ; $6bfd: $bc
	jp   z, $1142                                    ; $6bfe: $ca $42 $11

	ld   de, $6f11                                   ; $6c01: $11 $11 $6f
	rst  $38                                         ; $6c04: $ff
	ei                                               ; $6c05: $fb
	ld   b, c                                        ; $6c06: $41
	ld   a, b                                        ; $6c07: $78
	add  d                                           ; $6c08: $82
	ld   [de], a                                     ; $6c09: $12
	dec  hl                                          ; $6c0a: $2b
	rst  $38                                         ; $6c0b: $ff
	ld   a, [$1433]                                  ; $6c0c: $fa $33 $14
	ld   h, a                                        ; $6c0f: $67
	add  d                                           ; $6c10: $82
	ld   c, c                                        ; $6c11: $49
	rst  JumpTable                                         ; $6c12: $df
	rst  $38                                         ; $6c13: $ff
	sub  d                                           ; $6c14: $92
	inc  h                                           ; $6c15: $24
	sbc  l                                           ; $6c16: $9d
	jp   z, Jump_0bb_7975                            ; $6c17: $ca $75 $79

	cp   c                                           ; $6c1a: $b9
	ld   b, c                                        ; $6c1b: $41
	ld   de, rAUD1LEN                                   ; $6c1c: $11 $11 $ff
	rst  $38                                         ; $6c1f: $ff
	xor  d                                           ; $6c20: $aa
	inc  de                                          ; $6c21: $13
	rst  $10                                         ; $6c22: $d7
	add  c                                           ; $6c23: $81
	inc  de                                          ; $6c24: $13
	ccf                                              ; $6c25: $3f
	rst  $38                                         ; $6c26: $ff
	di                                               ; $6c27: $f3
	ld   sp, $9a28                                   ; $6c28: $31 $28 $9a
	ld   h, c                                        ; $6c2b: $61
	ld   l, c                                        ; $6c2c: $69
	rst  $38                                         ; $6c2d: $ff
	cp   $51                                         ; $6c2e: $fe $51
	dec  d                                           ; $6c30: $15
	cp   l                                           ; $6c31: $bd
	db   $ed                                         ; $6c32: $ed
	add  [hl]                                        ; $6c33: $86
	ld   l, b                                        ; $6c34: $68
	xor  c                                           ; $6c35: $a9
	ld   h, c                                        ; $6c36: $61
	ld   de, $1f11                                   ; $6c37: $11 $11 $1f
	rst  $38                                         ; $6c3a: $ff
	ei                                               ; $6c3b: $fb
	sub  c                                           ; $6c3c: $91
	add  hl, de                                      ; $6c3d: $19
	ld   a, b                                        ; $6c3e: $78
	ld   de, $ff34                                   ; $6c3f: $11 $34 $ff
	rst  $38                                         ; $6c42: $ff
	ld   d, d                                        ; $6c43: $52
	ld   de, $d959                                   ; $6c44: $11 $59 $d9
	ld   d, [hl]                                     ; $6c47: $56
	sbc  l                                           ; $6c48: $9d
	rst  $38                                         ; $6c49: $ff
	and  $11                                         ; $6c4a: $e6 $11
	ld   c, b                                        ; $6c4c: $48
	adc  $eb                                         ; $6c4d: $ce $eb
	sbc  c                                           ; $6c4f: $99
	sbc  c                                           ; $6c50: $99
	add  [hl]                                        ; $6c51: $86
	ld   b, c                                        ; $6c52: $41
	ld   de, $1211                                   ; $6c53: $11 $11 $12
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	or   l                                           ; $6c58: $b5
	ld   de, $9168                                   ; $6c59: $11 $68 $91
	ld   d, e                                        ; $6c5c: $53
	ld   c, [hl]                                     ; $6c5d: $4e
	rst  $38                                         ; $6c5e: $ff
	ld   hl, sp+$41                                  ; $6c5f: $f8 $41
	ld   [de], a                                     ; $6c61: $12
	adc  [hl]                                        ; $6c62: $8e
	xor  b                                           ; $6c63: $a8
	add  a                                           ; $6c64: $87
	cp   h                                           ; $6c65: $bc
	cp   $84                                         ; $6c66: $fe $84
	inc  de                                          ; $6c68: $13
	ld   e, e                                        ; $6c69: $5b
	rst  $38                                         ; $6c6a: $ff
	ret  c                                           ; $6c6b: $d8

	ld   h, [hl]                                     ; $6c6c: $66
	ld   h, a                                        ; $6c6d: $67
	sub  [hl]                                        ; $6c6e: $96
	ld   sp, $1111                                   ; $6c6f: $31 $11 $11
	rst  JumpTable                                         ; $6c72: $df
	rst  $38                                         ; $6c73: $ff
	ret  c                                           ; $6c74: $d8

	ld   de, $b576                                   ; $6c75: $11 $76 $b5
	ld   d, $0a                                      ; $6c78: $16 $0a
	rst  $38                                         ; $6c7a: $ff
	db   $fc                                         ; $6c7b: $fc
	ld   h, c                                        ; $6c7c: $61
	ld   de, $ea4b                                   ; $6c7d: $11 $4b $ea
	and  a                                           ; $6c80: $a7
	adc  h                                           ; $6c81: $8c
	rst  $28                                         ; $6c82: $ef
	or   a                                           ; $6c83: $b7
	ld   sp, $cf36                                   ; $6c84: $31 $36 $cf
	db   $fd                                         ; $6c87: $fd
	and  a                                           ; $6c88: $a7
	ld   h, [hl]                                     ; $6c89: $66
	adc  b                                           ; $6c8a: $88
	ld   h, e                                        ; $6c8b: $63
	ld   de, $1c11                                   ; $6c8c: $11 $11 $1c
	rst  $38                                         ; $6c8f: $ff
	rst  $38                                         ; $6c90: $ff
	add  c                                           ; $6c91: $81
	dec  d                                           ; $6c92: $15
	ld   l, h                                        ; $6c93: $6c
	ld   [hl], e                                     ; $6c94: $73
	ld   [hl], c                                     ; $6c95: $71
	adc  a                                           ; $6c96: $8f
	rst  $38                                         ; $6c97: $ff
	rst  $10                                         ; $6c98: $d7
	ld   bc, $be13                                   ; $6c99: $01 $13 $be
	call c, $9b98                                    ; $6c9c: $dc $98 $9b
	db   $fc                                         ; $6c9f: $fc
	add  h                                           ; $6ca0: $84
	ld   de, $ff5b                                   ; $6ca1: $11 $5b $ff
	db   $eb                                         ; $6ca4: $eb
	add  [hl]                                        ; $6ca5: $86
	ld   h, a                                        ; $6ca6: $67
	ld   [hl], a                                     ; $6ca7: $77
	ld   d, d                                        ; $6ca8: $52
	ld   bc, $1711                                   ; $6ca9: $01 $11 $17
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	and  e                                           ; $6cae: $a3
	ld   [de], a                                     ; $6caf: $12
	ld   l, b                                        ; $6cb0: $68
	or   l                                           ; $6cb1: $b5
	ld   [hl], e                                     ; $6cb2: $73
	ld   e, l                                        ; $6cb3: $5d
	rst  $38                                         ; $6cb4: $ff
	ld   sp, hl                                      ; $6cb5: $f9
	ld   d, c                                        ; $6cb6: $51
	ld   [de], a                                     ; $6cb7: $12
	ld   a, [hl]                                     ; $6cb8: $7e
	call c, $9ac8                                    ; $6cb9: $dc $c8 $9a
	res  0, [hl]                                     ; $6cbc: $cb $86
	ld   b, d                                        ; $6cbe: $42
	ld   c, b                                        ; $6cbf: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cc0: $cf
	db   $fd                                         ; $6cc1: $fd
	sub  [hl]                                        ; $6cc2: $96
	ld   d, l                                        ; $6cc3: $55
	ld   [hl], a                                     ; $6cc4: $77
	halt                                             ; $6cc5: $76
	ld   sp, $1111                                   ; $6cc6: $31 $11 $11
	adc  a                                           ; $6cc9: $8f
	rst  $38                                         ; $6cca: $ff
	ld   a, [$3631]                                  ; $6ccb: $fa $31 $36
	sbc  c                                           ; $6cce: $99
	ld   d, a                                        ; $6ccf: $57
	ld   [hl], $df                                   ; $6cd0: $36 $df
	rst  $38                                         ; $6cd2: $ff
	and  l                                           ; $6cd3: $a5
	ld   de, $ce27                                   ; $6cd4: $11 $27 $ce
	db   $eb                                         ; $6cd7: $eb
	adc  b                                           ; $6cd8: $88
	sbc  d                                           ; $6cd9: $9a
	xor  c                                           ; $6cda: $a9
	ld   [hl], l                                     ; $6cdb: $75
	ld   b, l                                        ; $6cdc: $45
	sbc  e                                           ; $6cdd: $9b
	cp   $d9                                         ; $6cde: $fe $d9
	ld   h, l                                        ; $6ce0: $65
	ld   d, a                                        ; $6ce1: $57
	adc  b                                           ; $6ce2: $88
	ld   [hl], h                                     ; $6ce3: $74
	ld   hl, $1111                                   ; $6ce4: $21 $11 $11
	rst  $28                                         ; $6ce7: $ef
	rst  $38                                         ; $6ce8: $ff
	jp   c, Jump_0bb_5511                            ; $6ce9: $da $11 $55

	and  [hl]                                        ; $6cec: $a6
	ld   [hl], a                                     ; $6ced: $77
	ld   c, c                                        ; $6cee: $49
	rst  $28                                         ; $6cef: $ef
	db   $fc                                         ; $6cf0: $fc
	add  h                                           ; $6cf1: $84
	ld   de, $cd38                                   ; $6cf2: $11 $38 $cd
	ld   [$8a98], a                                  ; $6cf5: $ea $98 $8a
	sbc  b                                           ; $6cf8: $98
	ld   [hl], l                                     ; $6cf9: $75
	ld   d, a                                        ; $6cfa: $57
	sbc  h                                           ; $6cfb: $9c
	db   $dd                                         ; $6cfc: $dd
	cp   c                                           ; $6cfd: $b9
	ld   h, l                                        ; $6cfe: $65
	ld   h, a                                        ; $6cff: $67
	sbc  c                                           ; $6d00: $99
	ld   [hl], l                                     ; $6d01: $75
	ld   sp, $1111                                   ; $6d02: $31 $11 $11
	ld   a, a                                        ; $6d05: $7f
	rst  $38                                         ; $6d06: $ff
	ei                                               ; $6d07: $fb
	ld   h, c                                        ; $6d08: $61
	ld   b, [hl]                                     ; $6d09: $46
	ld   [hl], a                                     ; $6d0a: $77
	ld   h, a                                        ; $6d0b: $67
	ld   h, a                                        ; $6d0c: $67
	cp   [hl]                                        ; $6d0d: $be
	xor  $97                                         ; $6d0e: $ee $97
	ld   [hl-], a                                    ; $6d10: $32
	ld   d, a                                        ; $6d11: $57
	xor  e                                           ; $6d12: $ab
	jp   z, $aa99                                    ; $6d13: $ca $99 $aa

	xor  c                                           ; $6d16: $a9
	add  a                                           ; $6d17: $87
	ld   h, [hl]                                     ; $6d18: $66
	ld   a, b                                        ; $6d19: $78
	xor  d                                           ; $6d1a: $aa
	res  3, b                                        ; $6d1b: $cb $98
	ld   [hl], a                                     ; $6d1d: $77
	ld   [hl], a                                     ; $6d1e: $77
	ld   [hl], l                                     ; $6d1f: $75
	ld   b, h                                        ; $6d20: $44
	ld   b, e                                        ; $6d21: $43
	ld   hl, $ef11                                   ; $6d22: $21 $11 $ef
	rst  $38                                         ; $6d25: $ff
	add  $11                                         ; $6d26: $c6 $11
	ld   b, a                                        ; $6d28: $47
	xor  d                                           ; $6d29: $aa
	xor  b                                           ; $6d2a: $a8
	ld   e, b                                        ; $6d2b: $58
	sbc  $fc                                         ; $6d2c: $de $fc
	add  h                                           ; $6d2e: $84
	inc  de                                          ; $6d2f: $13
	ld   l, d                                        ; $6d30: $6a
	db   $ed                                         ; $6d31: $ed
	cp   b                                           ; $6d32: $b8
	ld   h, a                                        ; $6d33: $67
	adc  c                                           ; $6d34: $89
	xor  c                                           ; $6d35: $a9
	sub  [hl]                                        ; $6d36: $96
	ld   d, [hl]                                     ; $6d37: $56
	ld   a, d                                        ; $6d38: $7a
	cp   e                                           ; $6d39: $bb
	cp   b                                           ; $6d3a: $b8
	ld   [hl], a                                     ; $6d3b: $77
	ld   a, c                                        ; $6d3c: $79
	sbc  b                                           ; $6d3d: $98
	ld   h, l                                        ; $6d3e: $65
	ld   d, l                                        ; $6d3f: $55
	ld   h, l                                        ; $6d40: $65
	ld   b, c                                        ; $6d41: $41
	ld   de, $ff3f                                   ; $6d42: $11 $3f $ff
	db   $fc                                         ; $6d45: $fc
	ld   hl, $9d14                                   ; $6d46: $21 $14 $9d
	db   $db                                         ; $6d49: $db
	ld   h, h                                        ; $6d4a: $64
	ld   l, c                                        ; $6d4b: $69
	adc  $cb                                         ; $6d4c: $ce $cb
	ld   h, h                                        ; $6d4e: $64
	ld   l, b                                        ; $6d4f: $68
	call Call_0bb_66c9                               ; $6d50: $cd $c9 $66
	ld   a, b                                        ; $6d53: $78
	cp   d                                           ; $6d54: $ba
	sub  a                                           ; $6d55: $97
	ld   h, [hl]                                     ; $6d56: $66
	ld   a, c                                        ; $6d57: $79
	sbc  c                                           ; $6d58: $99
	sbc  b                                           ; $6d59: $98
	ld   a, b                                        ; $6d5a: $78
	sbc  c                                           ; $6d5b: $99
	adc  b                                           ; $6d5c: $88
	halt                                             ; $6d5d: $76
	ld   h, [hl]                                     ; $6d5e: $66
	ld   h, a                                        ; $6d5f: $67
	ld   h, [hl]                                     ; $6d60: $66
	ld   b, e                                        ; $6d61: $43
	ld   de, $df16                                   ; $6d62: $11 $16 $df
	db   $fd                                         ; $6d65: $fd
	sub  h                                           ; $6d66: $94
	inc  h                                           ; $6d67: $24
	ld   a, e                                        ; $6d68: $7b
	call z, Call_0bb_56a7                            ; $6d69: $cc $a7 $56
	ld   a, c                                        ; $6d6c: $79
	call z, Call_0bb_76b9                            ; $6d6d: $cc $b9 $76
	ld   a, c                                        ; $6d70: $79
	xor  d                                           ; $6d71: $aa
	sbc  b                                           ; $6d72: $98
	ld   a, b                                        ; $6d73: $78
	adc  c                                           ; $6d74: $89
	xor  b                                           ; $6d75: $a8
	add  a                                           ; $6d76: $87
	ld   [hl], a                                     ; $6d77: $77
	ld   a, c                                        ; $6d78: $79
	xor  d                                           ; $6d79: $aa
	sbc  b                                           ; $6d7a: $98
	adc  b                                           ; $6d7b: $88
	sbc  b                                           ; $6d7c: $98
	adc  b                                           ; $6d7d: $88
	halt                                             ; $6d7e: $76
	ld   d, [hl]                                     ; $6d7f: $56
	ld   [hl], a                                     ; $6d80: $77
	ld   h, [hl]                                     ; $6d81: $66
	ld   d, e                                        ; $6d82: $53
	ld   hl, $be38                                   ; $6d83: $21 $38 $be
	jp   z, Jump_0bb_5774                            ; $6d86: $ca $74 $57

	sbc  h                                           ; $6d89: $9c
	cp   d                                           ; $6d8a: $ba
	sub  [hl]                                        ; $6d8b: $96
	ld   h, [hl]                                     ; $6d8c: $66
	adc  d                                           ; $6d8d: $8a
	cp   h                                           ; $6d8e: $bc
	xor  b                                           ; $6d8f: $a8
	ld   [hl], a                                     ; $6d90: $77
	adc  c                                           ; $6d91: $89
	cp   d                                           ; $6d92: $ba
	sub  a                                           ; $6d93: $97
	adc  b                                           ; $6d94: $88
	sbc  c                                           ; $6d95: $99
	adc  b                                           ; $6d96: $88
	ld   a, b                                        ; $6d97: $78
	adc  c                                           ; $6d98: $89
	xor  c                                           ; $6d99: $a9
	sbc  c                                           ; $6d9a: $99
	add  a                                           ; $6d9b: $87
	ld   a, b                                        ; $6d9c: $78
	sbc  c                                           ; $6d9d: $99
	sbc  b                                           ; $6d9e: $98
	halt                                             ; $6d9f: $76
	ld   [hl], a                                     ; $6da0: $77
	adc  b                                           ; $6da1: $88
	ld   [hl], a                                     ; $6da2: $77
	ld   h, l                                        ; $6da3: $65
	ld   b, h                                        ; $6da4: $44
	ld   b, e                                        ; $6da5: $43
	ld   b, [hl]                                     ; $6da6: $46
	adc  c                                           ; $6da7: $89
	sbc  c                                           ; $6da8: $99
	sub  a                                           ; $6da9: $97
	ld   [hl], a                                     ; $6daa: $77
	ld   a, c                                        ; $6dab: $79
	sbc  d                                           ; $6dac: $9a
	sbc  b                                           ; $6dad: $98
	adc  b                                           ; $6dae: $88
	adc  b                                           ; $6daf: $88
	sbc  d                                           ; $6db0: $9a
	sbc  d                                           ; $6db1: $9a
	xor  c                                           ; $6db2: $a9
	sbc  c                                           ; $6db3: $99
	sbc  b                                           ; $6db4: $98
	adc  b                                           ; $6db5: $88
	adc  b                                           ; $6db6: $88
	sbc  b                                           ; $6db7: $98
	adc  b                                           ; $6db8: $88
	sbc  c                                           ; $6db9: $99
	sbc  b                                           ; $6dba: $98
	sbc  c                                           ; $6dbb: $99
	adc  b                                           ; $6dbc: $88
	adc  b                                           ; $6dbd: $88
	sbc  c                                           ; $6dbe: $99
	sbc  b                                           ; $6dbf: $98
	ld   [hl], a                                     ; $6dc0: $77
	ld   a, b                                        ; $6dc1: $78
	sbc  b                                           ; $6dc2: $98
	adc  b                                           ; $6dc3: $88
	ld   [hl], a                                     ; $6dc4: $77
	ld   [hl], a                                     ; $6dc5: $77
	ld   h, [hl]                                     ; $6dc6: $66
	ld   h, [hl]                                     ; $6dc7: $66
	ld   d, l                                        ; $6dc8: $55
	ld   b, h                                        ; $6dc9: $44
	ld   d, [hl]                                     ; $6dca: $56
	adc  c                                           ; $6dcb: $89
	adc  c                                           ; $6dcc: $89
	add  a                                           ; $6dcd: $87
	ld   a, b                                        ; $6dce: $78
	sbc  c                                           ; $6dcf: $99
	xor  d                                           ; $6dd0: $aa
	sbc  b                                           ; $6dd1: $98
	adc  b                                           ; $6dd2: $88
	adc  c                                           ; $6dd3: $89
	sbc  c                                           ; $6dd4: $99
	sbc  c                                           ; $6dd5: $99
	adc  b                                           ; $6dd6: $88
	sbc  c                                           ; $6dd7: $99
	sbc  d                                           ; $6dd8: $9a
	adc  c                                           ; $6dd9: $89
	adc  c                                           ; $6dda: $89
	sbc  c                                           ; $6ddb: $99
	xor  c                                           ; $6ddc: $a9
	sbc  b                                           ; $6ddd: $98
	ld   a, b                                        ; $6dde: $78
	sbc  d                                           ; $6ddf: $9a
	xor  c                                           ; $6de0: $a9
	adc  b                                           ; $6de1: $88
	ld   a, b                                        ; $6de2: $78
	adc  c                                           ; $6de3: $89
	adc  b                                           ; $6de4: $88
	add  a                                           ; $6de5: $87
	ld   [hl], a                                     ; $6de6: $77
	ld   a, b                                        ; $6de7: $78
	add  a                                           ; $6de8: $87
	ld   [hl], a                                     ; $6de9: $77
	ld   [hl], a                                     ; $6dea: $77
	ld   h, [hl]                                     ; $6deb: $66
	ld   h, [hl]                                     ; $6dec: $66
	ld   h, [hl]                                     ; $6ded: $66
	ld   h, [hl]                                     ; $6dee: $66
	ld   h, a                                        ; $6def: $67
	add  a                                           ; $6df0: $87
	ld   [hl], a                                     ; $6df1: $77
	adc  c                                           ; $6df2: $89
	sbc  c                                           ; $6df3: $99
	sub  a                                           ; $6df4: $97
	ld   [hl], a                                     ; $6df5: $77
	adc  d                                           ; $6df6: $8a
	sbc  d                                           ; $6df7: $9a
	adc  b                                           ; $6df8: $88
	adc  b                                           ; $6df9: $88
	sbc  b                                           ; $6dfa: $98
	sbc  c                                           ; $6dfb: $99
	sbc  d                                           ; $6dfc: $9a
	sbc  b                                           ; $6dfd: $98
	sbc  b                                           ; $6dfe: $98
	sbc  b                                           ; $6dff: $98
	sbc  d                                           ; $6e00: $9a
	sbc  b                                           ; $6e01: $98
	sbc  b                                           ; $6e02: $98
	sbc  c                                           ; $6e03: $99
	adc  b                                           ; $6e04: $88
	sbc  d                                           ; $6e05: $9a
	sbc  c                                           ; $6e06: $99
	sbc  b                                           ; $6e07: $98
	adc  b                                           ; $6e08: $88
	sbc  b                                           ; $6e09: $98
	adc  b                                           ; $6e0a: $88
	ld   [hl], a                                     ; $6e0b: $77
	adc  b                                           ; $6e0c: $88
	sbc  b                                           ; $6e0d: $98
	ld   [hl], a                                     ; $6e0e: $77
	ld   h, [hl]                                     ; $6e0f: $66
	ld   h, [hl]                                     ; $6e10: $66
	ld   [hl], a                                     ; $6e11: $77
	ld   h, [hl]                                     ; $6e12: $66
	ld   h, [hl]                                     ; $6e13: $66
	ld   h, a                                        ; $6e14: $67
	add  a                                           ; $6e15: $87
	ld   [hl], a                                     ; $6e16: $77
	ld   h, a                                        ; $6e17: $67
	adc  c                                           ; $6e18: $89
	adc  c                                           ; $6e19: $89
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  c                                           ; $6e1c: $89
	xor  c                                           ; $6e1d: $a9
	sbc  b                                           ; $6e1e: $98
	adc  b                                           ; $6e1f: $88
	sbc  b                                           ; $6e20: $98
	sbc  c                                           ; $6e21: $99
	adc  b                                           ; $6e22: $88
	sbc  c                                           ; $6e23: $99
	sbc  c                                           ; $6e24: $99
	xor  c                                           ; $6e25: $a9
	sbc  c                                           ; $6e26: $99
	sbc  b                                           ; $6e27: $98
	sbc  b                                           ; $6e28: $98
	adc  c                                           ; $6e29: $89
	sbc  c                                           ; $6e2a: $99
	sbc  c                                           ; $6e2b: $99
	sbc  c                                           ; $6e2c: $99
	add  a                                           ; $6e2d: $87
	add  a                                           ; $6e2e: $87
	ld   a, b                                        ; $6e2f: $78
	ld   [hl], a                                     ; $6e30: $77
	ld   a, b                                        ; $6e31: $78
	sbc  b                                           ; $6e32: $98
	ld   [hl], a                                     ; $6e33: $77
	ld   h, [hl]                                     ; $6e34: $66
	ld   [hl], a                                     ; $6e35: $77
	adc  c                                           ; $6e36: $89
	sbc  b                                           ; $6e37: $98
	ld   [hl], a                                     ; $6e38: $77
	ld   [hl], a                                     ; $6e39: $77
	ld   a, b                                        ; $6e3a: $78
	adc  b                                           ; $6e3b: $88
	ld   [hl], a                                     ; $6e3c: $77
	ld   [hl], a                                     ; $6e3d: $77
	adc  b                                           ; $6e3e: $88
	ld   [hl], a                                     ; $6e3f: $77
	ld   [hl], a                                     ; $6e40: $77
	ld   a, b                                        ; $6e41: $78
	sbc  b                                           ; $6e42: $98
	sbc  b                                           ; $6e43: $98
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	adc  b                                           ; $6e47: $88
	adc  c                                           ; $6e48: $89
	adc  c                                           ; $6e49: $89
	adc  b                                           ; $6e4a: $88
	sbc  c                                           ; $6e4b: $99
	sbc  c                                           ; $6e4c: $99
	sbc  b                                           ; $6e4d: $98
	adc  b                                           ; $6e4e: $88
	sbc  c                                           ; $6e4f: $99
	adc  c                                           ; $6e50: $89
	sbc  b                                           ; $6e51: $98
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	sbc  b                                           ; $6e54: $98
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	sbc  c                                           ; $6e57: $99
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	ld   [hl], a                                     ; $6e5d: $77
	ld   [hl], a                                     ; $6e5e: $77
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	ld   [hl], a                                     ; $6e61: $77
	adc  b                                           ; $6e62: $88
	adc  b                                           ; $6e63: $88
	ld   [hl], a                                     ; $6e64: $77
	ld   [hl], a                                     ; $6e65: $77
	ld   [hl], a                                     ; $6e66: $77
	ld   [hl], a                                     ; $6e67: $77
	ld   [hl], a                                     ; $6e68: $77
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	ld   [hl], a                                     ; $6e6c: $77
	adc  c                                           ; $6e6d: $89
	sbc  c                                           ; $6e6e: $99
	adc  b                                           ; $6e6f: $88
	adc  c                                           ; $6e70: $89
	sbc  b                                           ; $6e71: $98
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  c                                           ; $6e74: $89
	sbc  c                                           ; $6e75: $99
	adc  b                                           ; $6e76: $88
	adc  b                                           ; $6e77: $88
	adc  c                                           ; $6e78: $89
	sbc  b                                           ; $6e79: $98
	adc  b                                           ; $6e7a: $88
	adc  b                                           ; $6e7b: $88
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	ld   [hl], a                                     ; $6e7e: $77
	ld   a, b                                        ; $6e7f: $78
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  b                                           ; $6e82: $88
	ld   a, b                                        ; $6e83: $78
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	adc  b                                           ; $6e89: $88
	adc  b                                           ; $6e8a: $88
	adc  b                                           ; $6e8b: $88
	adc  b                                           ; $6e8c: $88
	adc  b                                           ; $6e8d: $88
	adc  b                                           ; $6e8e: $88
	adc  b                                           ; $6e8f: $88
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	adc  c                                           ; $6e93: $89
	adc  c                                           ; $6e94: $89
	sbc  c                                           ; $6e95: $99
	sbc  b                                           ; $6e96: $98
	adc  c                                           ; $6e97: $89
	sbc  c                                           ; $6e98: $99
	adc  c                                           ; $6e99: $89
	sbc  c                                           ; $6e9a: $99
	sbc  c                                           ; $6e9b: $99
	sbc  b                                           ; $6e9c: $98
	adc  b                                           ; $6e9d: $88
	adc  c                                           ; $6e9e: $89
	sbc  b                                           ; $6e9f: $98
	adc  b                                           ; $6ea0: $88
	ld   a, b                                        ; $6ea1: $78
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	ld   [hl], a                                     ; $6ea4: $77
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	add  a                                           ; $6ead: $87
	ld   a, b                                        ; $6eae: $78
	adc  b                                           ; $6eaf: $88
	add  a                                           ; $6eb0: $87
	adc  b                                           ; $6eb1: $88
	ld   a, b                                        ; $6eb2: $78
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	ld   a, b                                        ; $6eb5: $78
	adc  b                                           ; $6eb6: $88
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	sbc  c                                           ; $6ebf: $99
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	ld   a, b                                        ; $6ec2: $78
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	ld   a, b                                        ; $6ec6: $78
	sbc  b                                           ; $6ec7: $98
	sbc  b                                           ; $6ec8: $98
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	ld   a, b                                        ; $6ecb: $78
	sbc  c                                           ; $6ecc: $99
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	sbc  c                                           ; $6ed1: $99
	adc  b                                           ; $6ed2: $88
	adc  b                                           ; $6ed3: $88
	adc  b                                           ; $6ed4: $88
	adc  b                                           ; $6ed5: $88
	adc  b                                           ; $6ed6: $88
	adc  b                                           ; $6ed7: $88
	adc  b                                           ; $6ed8: $88
	adc  b                                           ; $6ed9: $88
	adc  b                                           ; $6eda: $88
	adc  b                                           ; $6edb: $88
	adc  b                                           ; $6edc: $88
	adc  b                                           ; $6edd: $88
	sbc  c                                           ; $6ede: $99
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	sbc  b                                           ; $6ee2: $98
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	add  a                                           ; $6ee8: $87
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	sbc  b                                           ; $6ef0: $98
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	adc  c                                           ; $6ef5: $89
	sbc  b                                           ; $6ef6: $98
	add  a                                           ; $6ef7: $87
	adc  b                                           ; $6ef8: $88
	adc  c                                           ; $6ef9: $89
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  b                                           ; $6efc: $88
	adc  b                                           ; $6efd: $88
	adc  b                                           ; $6efe: $88
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	adc  b                                           ; $6f01: $88
	sbc  b                                           ; $6f02: $98
	adc  b                                           ; $6f03: $88
	adc  b                                           ; $6f04: $88
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	adc  b                                           ; $6f07: $88
	adc  b                                           ; $6f08: $88
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	ld   a, b                                        ; $6f0b: $78
	adc  b                                           ; $6f0c: $88
	adc  b                                           ; $6f0d: $88
	adc  b                                           ; $6f0e: $88
	adc  b                                           ; $6f0f: $88
	adc  b                                           ; $6f10: $88
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	adc  b                                           ; $6f14: $88
	adc  b                                           ; $6f15: $88
	adc  b                                           ; $6f16: $88
	adc  b                                           ; $6f17: $88
	adc  b                                           ; $6f18: $88
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	adc  b                                           ; $6f1b: $88
	adc  b                                           ; $6f1c: $88
	adc  b                                           ; $6f1d: $88
	adc  b                                           ; $6f1e: $88
	adc  b                                           ; $6f1f: $88
	adc  b                                           ; $6f20: $88
	adc  b                                           ; $6f21: $88
	adc  b                                           ; $6f22: $88
	adc  b                                           ; $6f23: $88
	adc  b                                           ; $6f24: $88
	adc  b                                           ; $6f25: $88
	adc  b                                           ; $6f26: $88
	adc  b                                           ; $6f27: $88
	adc  b                                           ; $6f28: $88
	adc  b                                           ; $6f29: $88
	adc  b                                           ; $6f2a: $88
	adc  b                                           ; $6f2b: $88
	adc  b                                           ; $6f2c: $88
	adc  b                                           ; $6f2d: $88
	adc  b                                           ; $6f2e: $88
	adc  b                                           ; $6f2f: $88
	adc  b                                           ; $6f30: $88
	adc  b                                           ; $6f31: $88
	adc  b                                           ; $6f32: $88
	adc  b                                           ; $6f33: $88
	adc  b                                           ; $6f34: $88
	adc  b                                           ; $6f35: $88
	adc  b                                           ; $6f36: $88
	adc  b                                           ; $6f37: $88
	adc  b                                           ; $6f38: $88
	adc  b                                           ; $6f39: $88
	adc  b                                           ; $6f3a: $88
	adc  b                                           ; $6f3b: $88
	sbc  b                                           ; $6f3c: $98
	adc  b                                           ; $6f3d: $88
	adc  b                                           ; $6f3e: $88
	adc  b                                           ; $6f3f: $88
	adc  b                                           ; $6f40: $88
	adc  b                                           ; $6f41: $88
	adc  b                                           ; $6f42: $88
	adc  b                                           ; $6f43: $88
	adc  b                                           ; $6f44: $88
	adc  b                                           ; $6f45: $88
	adc  b                                           ; $6f46: $88
	adc  b                                           ; $6f47: $88
	adc  b                                           ; $6f48: $88
	adc  b                                           ; $6f49: $88
	adc  b                                           ; $6f4a: $88
	adc  b                                           ; $6f4b: $88
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	adc  b                                           ; $6f4f: $88
	adc  b                                           ; $6f50: $88
	adc  b                                           ; $6f51: $88
	sbc  b                                           ; $6f52: $98
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	adc  b                                           ; $6f56: $88
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	adc  b                                           ; $6f59: $88
	adc  b                                           ; $6f5a: $88
	adc  c                                           ; $6f5b: $89
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	adc  b                                           ; $6f5f: $88
	adc  b                                           ; $6f60: $88
	adc  b                                           ; $6f61: $88
	adc  b                                           ; $6f62: $88
	adc  b                                           ; $6f63: $88
	adc  b                                           ; $6f64: $88
	adc  b                                           ; $6f65: $88
	adc  b                                           ; $6f66: $88
	adc  b                                           ; $6f67: $88
	adc  b                                           ; $6f68: $88
	adc  b                                           ; $6f69: $88
	adc  b                                           ; $6f6a: $88
	adc  b                                           ; $6f6b: $88
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	adc  b                                           ; $6f6e: $88
	adc  b                                           ; $6f6f: $88
	adc  b                                           ; $6f70: $88
	adc  b                                           ; $6f71: $88
	adc  b                                           ; $6f72: $88
	adc  b                                           ; $6f73: $88
	adc  b                                           ; $6f74: $88
	adc  b                                           ; $6f75: $88
	adc  b                                           ; $6f76: $88
	adc  b                                           ; $6f77: $88
	adc  b                                           ; $6f78: $88
	adc  b                                           ; $6f79: $88
	adc  b                                           ; $6f7a: $88
	adc  b                                           ; $6f7b: $88
	adc  b                                           ; $6f7c: $88
	adc  b                                           ; $6f7d: $88
	adc  b                                           ; $6f7e: $88
	adc  b                                           ; $6f7f: $88
	adc  b                                           ; $6f80: $88
	adc  b                                           ; $6f81: $88
	adc  b                                           ; $6f82: $88
	adc  b                                           ; $6f83: $88
	adc  b                                           ; $6f84: $88
	adc  b                                           ; $6f85: $88
	adc  b                                           ; $6f86: $88
	adc  b                                           ; $6f87: $88
	adc  b                                           ; $6f88: $88
	adc  b                                           ; $6f89: $88
	adc  b                                           ; $6f8a: $88
	adc  b                                           ; $6f8b: $88
	adc  b                                           ; $6f8c: $88
	adc  b                                           ; $6f8d: $88
	adc  b                                           ; $6f8e: $88
	adc  b                                           ; $6f8f: $88
	adc  b                                           ; $6f90: $88
	adc  b                                           ; $6f91: $88
	adc  b                                           ; $6f92: $88
	adc  b                                           ; $6f93: $88
	adc  b                                           ; $6f94: $88
	adc  b                                           ; $6f95: $88
	adc  b                                           ; $6f96: $88
	adc  b                                           ; $6f97: $88
	adc  b                                           ; $6f98: $88
	adc  b                                           ; $6f99: $88
	adc  b                                           ; $6f9a: $88
	adc  b                                           ; $6f9b: $88
	adc  b                                           ; $6f9c: $88
	adc  b                                           ; $6f9d: $88
	adc  b                                           ; $6f9e: $88
	adc  b                                           ; $6f9f: $88
	adc  b                                           ; $6fa0: $88
	adc  b                                           ; $6fa1: $88
	adc  b                                           ; $6fa2: $88
	adc  b                                           ; $6fa3: $88
	adc  b                                           ; $6fa4: $88
	adc  b                                           ; $6fa5: $88
	adc  b                                           ; $6fa6: $88
	adc  b                                           ; $6fa7: $88
	adc  b                                           ; $6fa8: $88
	adc  b                                           ; $6fa9: $88
	adc  b                                           ; $6faa: $88
	adc  b                                           ; $6fab: $88
	adc  b                                           ; $6fac: $88
	adc  b                                           ; $6fad: $88
	adc  b                                           ; $6fae: $88
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	adc  b                                           ; $6fb5: $88
	adc  b                                           ; $6fb6: $88
	adc  b                                           ; $6fb7: $88
	adc  b                                           ; $6fb8: $88
	adc  b                                           ; $6fb9: $88
	adc  b                                           ; $6fba: $88
	adc  b                                           ; $6fbb: $88
	adc  b                                           ; $6fbc: $88
	adc  b                                           ; $6fbd: $88
	adc  b                                           ; $6fbe: $88
	adc  b                                           ; $6fbf: $88
	adc  b                                           ; $6fc0: $88
	adc  b                                           ; $6fc1: $88
	adc  b                                           ; $6fc2: $88
	adc  b                                           ; $6fc3: $88
	adc  b                                           ; $6fc4: $88
	adc  b                                           ; $6fc5: $88
	adc  b                                           ; $6fc6: $88
	adc  b                                           ; $6fc7: $88
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	adc  b                                           ; $6fca: $88
	adc  b                                           ; $6fcb: $88
	adc  b                                           ; $6fcc: $88
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	adc  b                                           ; $6fd1: $88
	adc  b                                           ; $6fd2: $88
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	adc  b                                           ; $6fdb: $88
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	adc  b                                           ; $6fde: $88
	adc  b                                           ; $6fdf: $88
	adc  b                                           ; $6fe0: $88
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	adc  b                                           ; $6fe4: $88
	adc  b                                           ; $6fe5: $88
	adc  b                                           ; $6fe6: $88
	adc  b                                           ; $6fe7: $88
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  b                                           ; $6fed: $88
	adc  b                                           ; $6fee: $88
	adc  b                                           ; $6fef: $88
	adc  b                                           ; $6ff0: $88
	adc  b                                           ; $6ff1: $88
	adc  b                                           ; $6ff2: $88
	adc  b                                           ; $6ff3: $88
	adc  b                                           ; $6ff4: $88
	adc  b                                           ; $6ff5: $88
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	adc  b                                           ; $6ff8: $88
	adc  b                                           ; $6ff9: $88
	adc  b                                           ; $6ffa: $88
	adc  b                                           ; $6ffb: $88
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  b                                           ; $7000: $88
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  b                                           ; $7005: $88
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	adc  b                                           ; $7009: $88
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	adc  b                                           ; $7034: $88
	adc  b                                           ; $7035: $88
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	adc  b                                           ; $703b: $88
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
	adc  b                                           ; $703e: $88
	adc  b                                           ; $703f: $88
	adc  b                                           ; $7040: $88
	adc  b                                           ; $7041: $88
	adc  b                                           ; $7042: $88
	adc  b                                           ; $7043: $88
	adc  b                                           ; $7044: $88
	adc  b                                           ; $7045: $88
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	adc  b                                           ; $7049: $88
	adc  b                                           ; $704a: $88
	adc  b                                           ; $704b: $88
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	adc  b                                           ; $704e: $88
	adc  b                                           ; $704f: $88
	adc  b                                           ; $7050: $88
	adc  b                                           ; $7051: $88
	adc  b                                           ; $7052: $88
	adc  b                                           ; $7053: $88
	adc  b                                           ; $7054: $88
	adc  b                                           ; $7055: $88
	adc  b                                           ; $7056: $88
	adc  b                                           ; $7057: $88
	adc  b                                           ; $7058: $88
	adc  b                                           ; $7059: $88
	adc  b                                           ; $705a: $88
	adc  b                                           ; $705b: $88
	adc  b                                           ; $705c: $88
	adc  b                                           ; $705d: $88
	adc  b                                           ; $705e: $88
	adc  b                                           ; $705f: $88
	adc  b                                           ; $7060: $88
	adc  b                                           ; $7061: $88
	adc  b                                           ; $7062: $88
	adc  b                                           ; $7063: $88
	adc  b                                           ; $7064: $88
	adc  b                                           ; $7065: $88
	adc  b                                           ; $7066: $88
	adc  b                                           ; $7067: $88
	adc  b                                           ; $7068: $88
	adc  b                                           ; $7069: $88
	adc  b                                           ; $706a: $88
	adc  b                                           ; $706b: $88
	adc  b                                           ; $706c: $88
	adc  b                                           ; $706d: $88
	adc  b                                           ; $706e: $88
	adc  b                                           ; $706f: $88
	adc  b                                           ; $7070: $88
	adc  b                                           ; $7071: $88
	adc  b                                           ; $7072: $88
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	adc  b                                           ; $7079: $88
	adc  b                                           ; $707a: $88
	adc  b                                           ; $707b: $88
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	adc  b                                           ; $7081: $88
	adc  b                                           ; $7082: $88
	adc  b                                           ; $7083: $88
	adc  b                                           ; $7084: $88
	adc  b                                           ; $7085: $88
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	adc  b                                           ; $7088: $88
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	adc  b                                           ; $708b: $88
	adc  b                                           ; $708c: $88
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  b                                           ; $7093: $88
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	adc  b                                           ; $7099: $88
	adc  b                                           ; $709a: $88
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  b                                           ; $70a3: $88
	adc  b                                           ; $70a4: $88
	adc  b                                           ; $70a5: $88
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  b                                           ; $70ae: $88
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	adc  b                                           ; $70b7: $88
	adc  b                                           ; $70b8: $88
	adc  b                                           ; $70b9: $88
	adc  b                                           ; $70ba: $88
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	adc  b                                           ; $70c1: $88
	adc  b                                           ; $70c2: $88
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	adc  b                                           ; $70c7: $88
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  b                                           ; $70d6: $88
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	adc  b                                           ; $70f4: $88
	adc  b                                           ; $70f5: $88
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	adc  b                                           ; $711f: $88
	adc  b                                           ; $7120: $88
	adc  b                                           ; $7121: $88
	adc  b                                           ; $7122: $88
	adc  b                                           ; $7123: $88
	adc  b                                           ; $7124: $88
	adc  b                                           ; $7125: $88
	adc  b                                           ; $7126: $88
	adc  b                                           ; $7127: $88
	adc  b                                           ; $7128: $88
	adc  b                                           ; $7129: $88
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  b                                           ; $7135: $88
	adc  b                                           ; $7136: $88
	adc  b                                           ; $7137: $88
	adc  b                                           ; $7138: $88
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	adc  b                                           ; $713c: $88
	adc  b                                           ; $713d: $88
	adc  b                                           ; $713e: $88
	adc  b                                           ; $713f: $88
	adc  b                                           ; $7140: $88
	adc  b                                           ; $7141: $88
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  b                                           ; $714e: $88
	adc  b                                           ; $714f: $88
	adc  b                                           ; $7150: $88
	adc  b                                           ; $7151: $88
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	adc  b                                           ; $7172: $88
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  b                                           ; $7191: $88
	adc  b                                           ; $7192: $88
	adc  b                                           ; $7193: $88
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	adc  b                                           ; $7196: $88
	adc  b                                           ; $7197: $88
	adc  b                                           ; $7198: $88
	adc  b                                           ; $7199: $88

Jump_0bb_719a:
	adc  b                                           ; $719a: $88
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  b                                           ; $719f: $88
	adc  b                                           ; $71a0: $88
	adc  b                                           ; $71a1: $88
	adc  b                                           ; $71a2: $88
	adc  b                                           ; $71a3: $88
	adc  b                                           ; $71a4: $88
	adc  b                                           ; $71a5: $88
	adc  b                                           ; $71a6: $88
	adc  b                                           ; $71a7: $88
	adc  b                                           ; $71a8: $88
	adc  b                                           ; $71a9: $88
	adc  b                                           ; $71aa: $88
	adc  b                                           ; $71ab: $88
	adc  b                                           ; $71ac: $88
	adc  b                                           ; $71ad: $88
	adc  b                                           ; $71ae: $88
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	adc  b                                           ; $71b1: $88
	adc  b                                           ; $71b2: $88
	adc  b                                           ; $71b3: $88
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	adc  b                                           ; $71b7: $88
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	adc  b                                           ; $71ba: $88
	adc  b                                           ; $71bb: $88
	adc  b                                           ; $71bc: $88
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	adc  b                                           ; $71c0: $88
	adc  b                                           ; $71c1: $88
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	adc  b                                           ; $71c7: $88
	adc  b                                           ; $71c8: $88
	adc  b                                           ; $71c9: $88
	adc  b                                           ; $71ca: $88
	adc  b                                           ; $71cb: $88
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	adc  b                                           ; $71cf: $88
	adc  b                                           ; $71d0: $88
	adc  b                                           ; $71d1: $88
	adc  b                                           ; $71d2: $88
	adc  b                                           ; $71d3: $88
	adc  b                                           ; $71d4: $88
	adc  b                                           ; $71d5: $88
	adc  b                                           ; $71d6: $88
	adc  b                                           ; $71d7: $88
	adc  b                                           ; $71d8: $88
	adc  b                                           ; $71d9: $88
	adc  b                                           ; $71da: $88
	adc  b                                           ; $71db: $88
	adc  b                                           ; $71dc: $88
	adc  b                                           ; $71dd: $88
	adc  b                                           ; $71de: $88
	adc  b                                           ; $71df: $88
	adc  b                                           ; $71e0: $88
	adc  b                                           ; $71e1: $88
	adc  b                                           ; $71e2: $88
	adc  b                                           ; $71e3: $88
	adc  b                                           ; $71e4: $88
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	adc  b                                           ; $71e7: $88
	adc  b                                           ; $71e8: $88
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	adc  b                                           ; $71eb: $88
	adc  b                                           ; $71ec: $88
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	adc  b                                           ; $71ef: $88
	adc  b                                           ; $71f0: $88
	adc  b                                           ; $71f1: $88
	adc  b                                           ; $71f2: $88
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	adc  b                                           ; $71f7: $88
	adc  b                                           ; $71f8: $88
	adc  b                                           ; $71f9: $88
	adc  b                                           ; $71fa: $88
	adc  b                                           ; $71fb: $88
	adc  b                                           ; $71fc: $88
	adc  b                                           ; $71fd: $88
	adc  b                                           ; $71fe: $88
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	adc  b                                           ; $7201: $88
	adc  b                                           ; $7202: $88
	adc  b                                           ; $7203: $88
	adc  b                                           ; $7204: $88
	adc  b                                           ; $7205: $88
	adc  b                                           ; $7206: $88
	adc  b                                           ; $7207: $88
	adc  b                                           ; $7208: $88
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	adc  b                                           ; $720e: $88
	adc  b                                           ; $720f: $88
	adc  b                                           ; $7210: $88
	adc  b                                           ; $7211: $88
	adc  b                                           ; $7212: $88
	adc  b                                           ; $7213: $88
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	adc  b                                           ; $7217: $88
	adc  b                                           ; $7218: $88
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	adc  b                                           ; $721b: $88
	adc  b                                           ; $721c: $88
	adc  b                                           ; $721d: $88
	adc  b                                           ; $721e: $88
	adc  b                                           ; $721f: $88
	adc  b                                           ; $7220: $88
	adc  b                                           ; $7221: $88
	adc  b                                           ; $7222: $88
	adc  b                                           ; $7223: $88
	adc  b                                           ; $7224: $88
	adc  b                                           ; $7225: $88
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	adc  b                                           ; $7228: $88
	adc  b                                           ; $7229: $88
	adc  b                                           ; $722a: $88
	adc  b                                           ; $722b: $88
	adc  b                                           ; $722c: $88
	adc  b                                           ; $722d: $88
	adc  b                                           ; $722e: $88
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	adc  b                                           ; $7231: $88
	adc  b                                           ; $7232: $88
	adc  b                                           ; $7233: $88
	adc  b                                           ; $7234: $88
	adc  b                                           ; $7235: $88
	adc  b                                           ; $7236: $88
	adc  b                                           ; $7237: $88
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  b                                           ; $723a: $88
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	adc  b                                           ; $723d: $88
	adc  b                                           ; $723e: $88
	adc  b                                           ; $723f: $88
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	adc  b                                           ; $7251: $88
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	adc  b                                           ; $7267: $88
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	adc  b                                           ; $7271: $88
	adc  b                                           ; $7272: $88
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  b                                           ; $727d: $88
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	adc  b                                           ; $7288: $88
	adc  b                                           ; $7289: $88
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	adc  b                                           ; $728e: $88
	adc  b                                           ; $728f: $88
	adc  b                                           ; $7290: $88
	adc  b                                           ; $7291: $88
	adc  b                                           ; $7292: $88
	adc  b                                           ; $7293: $88
	adc  b                                           ; $7294: $88
	adc  b                                           ; $7295: $88
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	adc  b                                           ; $729d: $88
	adc  b                                           ; $729e: $88
	adc  b                                           ; $729f: $88
	adc  b                                           ; $72a0: $88
	adc  b                                           ; $72a1: $88
	adc  b                                           ; $72a2: $88
	adc  b                                           ; $72a3: $88
	adc  b                                           ; $72a4: $88
	adc  b                                           ; $72a5: $88
	adc  b                                           ; $72a6: $88
	adc  b                                           ; $72a7: $88
	adc  b                                           ; $72a8: $88
	adc  b                                           ; $72a9: $88
	adc  b                                           ; $72aa: $88
	adc  b                                           ; $72ab: $88
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	adc  b                                           ; $72b3: $88
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	adc  b                                           ; $72b6: $88
	adc  b                                           ; $72b7: $88
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	adc  b                                           ; $72bd: $88
	adc  b                                           ; $72be: $88
	adc  b                                           ; $72bf: $88
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	adc  b                                           ; $72c4: $88
	adc  b                                           ; $72c5: $88
	adc  b                                           ; $72c6: $88
	adc  b                                           ; $72c7: $88
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  b                                           ; $72ca: $88
	adc  b                                           ; $72cb: $88
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	adc  b                                           ; $72ce: $88
	adc  b                                           ; $72cf: $88
	adc  b                                           ; $72d0: $88
	adc  b                                           ; $72d1: $88
	adc  b                                           ; $72d2: $88
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	adc  b                                           ; $72d5: $88
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	adc  b                                           ; $72d9: $88
	adc  b                                           ; $72da: $88
	adc  b                                           ; $72db: $88
	adc  b                                           ; $72dc: $88
	adc  b                                           ; $72dd: $88
	adc  b                                           ; $72de: $88
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	adc  b                                           ; $72e1: $88
	adc  b                                           ; $72e2: $88
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	adc  b                                           ; $72e5: $88
	adc  b                                           ; $72e6: $88
	adc  b                                           ; $72e7: $88
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
	adc  b                                           ; $72eb: $88
	adc  b                                           ; $72ec: $88
	adc  b                                           ; $72ed: $88
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	adc  b                                           ; $72f2: $88
	adc  b                                           ; $72f3: $88
	adc  b                                           ; $72f4: $88
	adc  b                                           ; $72f5: $88
	adc  b                                           ; $72f6: $88
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  b                                           ; $72f9: $88
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	adc  b                                           ; $72fc: $88
	adc  b                                           ; $72fd: $88
	adc  b                                           ; $72fe: $88
	adc  b                                           ; $72ff: $88
	adc  b                                           ; $7300: $88
	adc  b                                           ; $7301: $88
	adc  b                                           ; $7302: $88
	adc  b                                           ; $7303: $88
	adc  b                                           ; $7304: $88
	adc  b                                           ; $7305: $88
	adc  b                                           ; $7306: $88
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	adc  b                                           ; $7309: $88
	adc  b                                           ; $730a: $88
	adc  b                                           ; $730b: $88
	adc  b                                           ; $730c: $88
	adc  b                                           ; $730d: $88
	adc  b                                           ; $730e: $88
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	adc  b                                           ; $7313: $88
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	adc  b                                           ; $7316: $88
	adc  b                                           ; $7317: $88
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	adc  b                                           ; $731a: $88
	adc  b                                           ; $731b: $88
	adc  b                                           ; $731c: $88
	adc  b                                           ; $731d: $88
	adc  b                                           ; $731e: $88
	adc  b                                           ; $731f: $88
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	adc  b                                           ; $7325: $88
	adc  b                                           ; $7326: $88
	adc  b                                           ; $7327: $88
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	adc  b                                           ; $7330: $88
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	adc  b                                           ; $733e: $88
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  b                                           ; $7347: $88
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	adc  b                                           ; $736a: $88
	adc  b                                           ; $736b: $88
	adc  b                                           ; $736c: $88
	adc  b                                           ; $736d: $88
	adc  b                                           ; $736e: $88
	adc  b                                           ; $736f: $88
	adc  b                                           ; $7370: $88
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	adc  b                                           ; $7373: $88
	adc  b                                           ; $7374: $88
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	adc  b                                           ; $737c: $88
	adc  b                                           ; $737d: $88
	adc  b                                           ; $737e: $88
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	adc  b                                           ; $7383: $88
	adc  b                                           ; $7384: $88
	adc  b                                           ; $7385: $88
	adc  b                                           ; $7386: $88
	adc  b                                           ; $7387: $88
	adc  b                                           ; $7388: $88
	adc  b                                           ; $7389: $88
	adc  b                                           ; $738a: $88
	adc  b                                           ; $738b: $88
	adc  b                                           ; $738c: $88
	adc  b                                           ; $738d: $88
	adc  b                                           ; $738e: $88
	adc  b                                           ; $738f: $88
	adc  b                                           ; $7390: $88
	adc  b                                           ; $7391: $88
	adc  b                                           ; $7392: $88
	adc  b                                           ; $7393: $88
	adc  b                                           ; $7394: $88
	adc  b                                           ; $7395: $88
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  b                                           ; $7398: $88

Jump_0bb_7399:
	adc  b                                           ; $7399: $88
	adc  b                                           ; $739a: $88
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	adc  b                                           ; $739f: $88
	adc  b                                           ; $73a0: $88
	adc  b                                           ; $73a1: $88
	adc  b                                           ; $73a2: $88
	adc  b                                           ; $73a3: $88
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	adc  b                                           ; $73a8: $88
	adc  b                                           ; $73a9: $88
	adc  b                                           ; $73aa: $88
	adc  b                                           ; $73ab: $88
	adc  b                                           ; $73ac: $88
	adc  b                                           ; $73ad: $88
	adc  b                                           ; $73ae: $88
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	adc  b                                           ; $73b4: $88
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	adc  b                                           ; $73be: $88
	adc  b                                           ; $73bf: $88
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	adc  b                                           ; $73c8: $88
	adc  b                                           ; $73c9: $88
	adc  b                                           ; $73ca: $88
	adc  b                                           ; $73cb: $88
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	adc  b                                           ; $73d0: $88
	adc  b                                           ; $73d1: $88
	adc  b                                           ; $73d2: $88
	adc  b                                           ; $73d3: $88
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	adc  b                                           ; $73d7: $88
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  b                                           ; $73dc: $88
	adc  b                                           ; $73dd: $88
	adc  b                                           ; $73de: $88
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	adc  b                                           ; $73e5: $88
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	adc  b                                           ; $73e9: $88
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	adc  b                                           ; $73ec: $88
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	adc  b                                           ; $73f0: $88
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	adc  b                                           ; $740b: $88
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	adc  b                                           ; $7412: $88
	adc  b                                           ; $7413: $88
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	adc  b                                           ; $7417: $88
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	adc  b                                           ; $7420: $88
	adc  b                                           ; $7421: $88
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	adc  b                                           ; $742e: $88
	adc  b                                           ; $742f: $88
	adc  b                                           ; $7430: $88
	adc  b                                           ; $7431: $88
	adc  b                                           ; $7432: $88
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	adc  b                                           ; $7438: $88
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  b                                           ; $743b: $88
	adc  b                                           ; $743c: $88
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	adc  b                                           ; $7445: $88
	adc  b                                           ; $7446: $88
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	adc  b                                           ; $7449: $88
	adc  b                                           ; $744a: $88
	adc  b                                           ; $744b: $88
	adc  b                                           ; $744c: $88
	adc  b                                           ; $744d: $88
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	adc  b                                           ; $7450: $88
	adc  b                                           ; $7451: $88
	adc  b                                           ; $7452: $88
	adc  b                                           ; $7453: $88
	adc  b                                           ; $7454: $88
	adc  b                                           ; $7455: $88
	adc  b                                           ; $7456: $88
	adc  b                                           ; $7457: $88
	adc  b                                           ; $7458: $88
	adc  b                                           ; $7459: $88
	adc  b                                           ; $745a: $88
	adc  b                                           ; $745b: $88
	adc  b                                           ; $745c: $88
	adc  b                                           ; $745d: $88
	adc  b                                           ; $745e: $88
	adc  b                                           ; $745f: $88
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	adc  b                                           ; $7463: $88
	adc  b                                           ; $7464: $88
	adc  b                                           ; $7465: $88
	adc  b                                           ; $7466: $88
	adc  b                                           ; $7467: $88
	adc  b                                           ; $7468: $88
	adc  b                                           ; $7469: $88
	adc  b                                           ; $746a: $88
	adc  b                                           ; $746b: $88
	adc  b                                           ; $746c: $88
	adc  b                                           ; $746d: $88
	adc  b                                           ; $746e: $88
	adc  b                                           ; $746f: $88
	adc  b                                           ; $7470: $88
	adc  b                                           ; $7471: $88
	adc  b                                           ; $7472: $88
	adc  b                                           ; $7473: $88
	adc  b                                           ; $7474: $88
	adc  b                                           ; $7475: $88
	adc  b                                           ; $7476: $88
	adc  b                                           ; $7477: $88
	adc  b                                           ; $7478: $88
	adc  b                                           ; $7479: $88
	adc  b                                           ; $747a: $88
	adc  b                                           ; $747b: $88
	adc  b                                           ; $747c: $88
	adc  b                                           ; $747d: $88
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	adc  b                                           ; $7480: $88
	adc  b                                           ; $7481: $88
	adc  b                                           ; $7482: $88
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	adc  b                                           ; $7488: $88
	adc  b                                           ; $7489: $88
	adc  b                                           ; $748a: $88
	adc  b                                           ; $748b: $88
	adc  b                                           ; $748c: $88
	adc  b                                           ; $748d: $88
	adc  b                                           ; $748e: $88
	adc  b                                           ; $748f: $88
	adc  b                                           ; $7490: $88
	adc  b                                           ; $7491: $88
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	adc  b                                           ; $7495: $88
	adc  b                                           ; $7496: $88
	adc  b                                           ; $7497: $88
	adc  b                                           ; $7498: $88
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	adc  b                                           ; $749b: $88
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	adc  b                                           ; $749e: $88
	adc  b                                           ; $749f: $88
	adc  b                                           ; $74a0: $88
	adc  b                                           ; $74a1: $88
	adc  b                                           ; $74a2: $88
	adc  b                                           ; $74a3: $88
	adc  b                                           ; $74a4: $88
	adc  b                                           ; $74a5: $88
	adc  b                                           ; $74a6: $88

Call_0bb_74a7:
	adc  b                                           ; $74a7: $88
	adc  b                                           ; $74a8: $88
	adc  b                                           ; $74a9: $88
	adc  b                                           ; $74aa: $88
	adc  b                                           ; $74ab: $88
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	adc  b                                           ; $74b9: $88
	adc  b                                           ; $74ba: $88
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	adc  b                                           ; $74c3: $88
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88
	adc  b                                           ; $74cb: $88
	adc  b                                           ; $74cc: $88
	adc  b                                           ; $74cd: $88
	adc  b                                           ; $74ce: $88
	adc  b                                           ; $74cf: $88
	adc  b                                           ; $74d0: $88
	adc  b                                           ; $74d1: $88
	adc  b                                           ; $74d2: $88
	adc  b                                           ; $74d3: $88
	adc  b                                           ; $74d4: $88
	adc  b                                           ; $74d5: $88
	adc  b                                           ; $74d6: $88
	adc  b                                           ; $74d7: $88
	adc  b                                           ; $74d8: $88
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	adc  b                                           ; $74de: $88
	adc  b                                           ; $74df: $88
	adc  b                                           ; $74e0: $88
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	adc  b                                           ; $74eb: $88
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  b                                           ; $74ee: $88
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  b                                           ; $74f7: $88
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  b                                           ; $756f: $88
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  b                                           ; $7572: $88
	adc  b                                           ; $7573: $88
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88

Call_0bb_7577:
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	adc  b                                           ; $757c: $88
	adc  b                                           ; $757d: $88
	adc  b                                           ; $757e: $88
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  b                                           ; $7581: $88
	adc  b                                           ; $7582: $88
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	adc  b                                           ; $7585: $88
	adc  b                                           ; $7586: $88
	adc  b                                           ; $7587: $88
	adc  b                                           ; $7588: $88
	adc  b                                           ; $7589: $88
	adc  b                                           ; $758a: $88
	adc  b                                           ; $758b: $88
	adc  b                                           ; $758c: $88
	adc  b                                           ; $758d: $88
	adc  b                                           ; $758e: $88
	adc  b                                           ; $758f: $88
	adc  b                                           ; $7590: $88
	adc  b                                           ; $7591: $88
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	adc  b                                           ; $7594: $88
	adc  b                                           ; $7595: $88
	adc  b                                           ; $7596: $88
	adc  b                                           ; $7597: $88
	adc  b                                           ; $7598: $88
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88
	adc  b                                           ; $759b: $88
	adc  b                                           ; $759c: $88
	adc  b                                           ; $759d: $88
	adc  b                                           ; $759e: $88
	adc  b                                           ; $759f: $88
	adc  b                                           ; $75a0: $88
	adc  b                                           ; $75a1: $88
	adc  b                                           ; $75a2: $88
	adc  b                                           ; $75a3: $88
	adc  b                                           ; $75a4: $88
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	adc  b                                           ; $75a7: $88

Call_0bb_75a8:
	adc  b                                           ; $75a8: $88
	adc  b                                           ; $75a9: $88

Jump_0bb_75aa:
	adc  b                                           ; $75aa: $88
	adc  b                                           ; $75ab: $88
	adc  b                                           ; $75ac: $88
	adc  b                                           ; $75ad: $88
	adc  b                                           ; $75ae: $88
	adc  b                                           ; $75af: $88
	adc  b                                           ; $75b0: $88
	adc  b                                           ; $75b1: $88
	adc  b                                           ; $75b2: $88
	adc  b                                           ; $75b3: $88
	adc  b                                           ; $75b4: $88
	adc  b                                           ; $75b5: $88
	adc  b                                           ; $75b6: $88
	adc  b                                           ; $75b7: $88
	adc  b                                           ; $75b8: $88
	adc  b                                           ; $75b9: $88
	adc  b                                           ; $75ba: $88
	adc  b                                           ; $75bb: $88
	adc  b                                           ; $75bc: $88
	adc  b                                           ; $75bd: $88
	adc  b                                           ; $75be: $88
	adc  b                                           ; $75bf: $88
	adc  b                                           ; $75c0: $88
	adc  b                                           ; $75c1: $88
	adc  b                                           ; $75c2: $88
	adc  b                                           ; $75c3: $88
	adc  b                                           ; $75c4: $88
	adc  b                                           ; $75c5: $88
	adc  b                                           ; $75c6: $88
	adc  b                                           ; $75c7: $88
	adc  b                                           ; $75c8: $88
	adc  b                                           ; $75c9: $88
	adc  b                                           ; $75ca: $88
	adc  b                                           ; $75cb: $88
	adc  b                                           ; $75cc: $88
	adc  b                                           ; $75cd: $88
	adc  b                                           ; $75ce: $88
	adc  b                                           ; $75cf: $88
	adc  b                                           ; $75d0: $88
	adc  b                                           ; $75d1: $88
	adc  b                                           ; $75d2: $88
	adc  b                                           ; $75d3: $88
	adc  b                                           ; $75d4: $88
	adc  b                                           ; $75d5: $88
	adc  b                                           ; $75d6: $88
	adc  b                                           ; $75d7: $88
	adc  b                                           ; $75d8: $88
	adc  b                                           ; $75d9: $88
	adc  b                                           ; $75da: $88
	adc  b                                           ; $75db: $88
	adc  b                                           ; $75dc: $88
	adc  b                                           ; $75dd: $88
	adc  b                                           ; $75de: $88
	adc  b                                           ; $75df: $88
	adc  b                                           ; $75e0: $88
	adc  b                                           ; $75e1: $88
	adc  b                                           ; $75e2: $88
	adc  b                                           ; $75e3: $88
	adc  b                                           ; $75e4: $88
	adc  b                                           ; $75e5: $88
	adc  b                                           ; $75e6: $88
	adc  b                                           ; $75e7: $88
	adc  b                                           ; $75e8: $88
	adc  b                                           ; $75e9: $88
	adc  b                                           ; $75ea: $88
	adc  b                                           ; $75eb: $88
	adc  b                                           ; $75ec: $88
	adc  b                                           ; $75ed: $88
	adc  b                                           ; $75ee: $88
	adc  b                                           ; $75ef: $88
	adc  b                                           ; $75f0: $88
	adc  b                                           ; $75f1: $88
	adc  b                                           ; $75f2: $88
	adc  b                                           ; $75f3: $88
	adc  b                                           ; $75f4: $88
	adc  b                                           ; $75f5: $88
	adc  b                                           ; $75f6: $88
	adc  b                                           ; $75f7: $88
	adc  b                                           ; $75f8: $88
	adc  b                                           ; $75f9: $88
	adc  b                                           ; $75fa: $88
	adc  b                                           ; $75fb: $88
	adc  b                                           ; $75fc: $88
	adc  b                                           ; $75fd: $88
	adc  b                                           ; $75fe: $88
	adc  b                                           ; $75ff: $88
	adc  b                                           ; $7600: $88
	adc  b                                           ; $7601: $88
	adc  b                                           ; $7602: $88
	adc  b                                           ; $7603: $88
	adc  b                                           ; $7604: $88
	adc  b                                           ; $7605: $88
	adc  b                                           ; $7606: $88
	adc  b                                           ; $7607: $88
	adc  b                                           ; $7608: $88
	adc  b                                           ; $7609: $88
	adc  b                                           ; $760a: $88
	adc  b                                           ; $760b: $88
	adc  b                                           ; $760c: $88
	adc  b                                           ; $760d: $88
	adc  b                                           ; $760e: $88
	adc  b                                           ; $760f: $88
	adc  b                                           ; $7610: $88
	adc  b                                           ; $7611: $88
	adc  b                                           ; $7612: $88
	adc  b                                           ; $7613: $88
	adc  b                                           ; $7614: $88
	adc  b                                           ; $7615: $88
	adc  b                                           ; $7616: $88
	adc  b                                           ; $7617: $88
	adc  b                                           ; $7618: $88
	adc  b                                           ; $7619: $88
	adc  b                                           ; $761a: $88
	adc  b                                           ; $761b: $88
	adc  b                                           ; $761c: $88
	adc  b                                           ; $761d: $88
	adc  b                                           ; $761e: $88
	adc  b                                           ; $761f: $88
	adc  b                                           ; $7620: $88
	adc  b                                           ; $7621: $88
	adc  b                                           ; $7622: $88
	adc  b                                           ; $7623: $88
	adc  b                                           ; $7624: $88
	adc  b                                           ; $7625: $88
	adc  b                                           ; $7626: $88
	adc  b                                           ; $7627: $88
	adc  b                                           ; $7628: $88
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  b                                           ; $762c: $88
	adc  b                                           ; $762d: $88
	adc  b                                           ; $762e: $88
	adc  b                                           ; $762f: $88
	adc  b                                           ; $7630: $88
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	adc  b                                           ; $7635: $88
	adc  b                                           ; $7636: $88
	adc  b                                           ; $7637: $88
	adc  b                                           ; $7638: $88
	adc  b                                           ; $7639: $88
	adc  b                                           ; $763a: $88
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  b                                           ; $763d: $88
	adc  b                                           ; $763e: $88
	adc  b                                           ; $763f: $88
	adc  b                                           ; $7640: $88
	adc  b                                           ; $7641: $88
	adc  b                                           ; $7642: $88
	adc  b                                           ; $7643: $88
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	adc  b                                           ; $764a: $88
	adc  b                                           ; $764b: $88
	adc  b                                           ; $764c: $88
	adc  b                                           ; $764d: $88
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  b                                           ; $7654: $88
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88
	adc  b                                           ; $7657: $88
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  b                                           ; $765a: $88
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	adc  b                                           ; $765e: $88
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  b                                           ; $766d: $88
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	adc  b                                           ; $7670: $88
	adc  b                                           ; $7671: $88
	adc  b                                           ; $7672: $88
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	adc  b                                           ; $7675: $88
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	adc  b                                           ; $7679: $88
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
	adc  b                                           ; $7688: $88
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	adc  b                                           ; $768c: $88
	adc  b                                           ; $768d: $88
	adc  b                                           ; $768e: $88
	adc  b                                           ; $768f: $88
	adc  b                                           ; $7690: $88
	adc  b                                           ; $7691: $88
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	adc  b                                           ; $769b: $88
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	adc  b                                           ; $769e: $88
	adc  b                                           ; $769f: $88
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88

Call_0bb_76a9:
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88

Call_0bb_76b9:
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  b                                           ; $76d8: $88

Call_0bb_76d9:
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  b                                           ; $76f5: $88
	adc  b                                           ; $76f6: $88
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	adc  b                                           ; $7700: $88
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	adc  b                                           ; $7718: $88
	adc  b                                           ; $7719: $88
	adc  b                                           ; $771a: $88
	adc  b                                           ; $771b: $88
	adc  b                                           ; $771c: $88
	adc  b                                           ; $771d: $88
	adc  b                                           ; $771e: $88
	adc  b                                           ; $771f: $88
	adc  b                                           ; $7720: $88
	adc  b                                           ; $7721: $88
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
	adc  b                                           ; $7728: $88
	adc  b                                           ; $7729: $88
	adc  b                                           ; $772a: $88
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	adc  b                                           ; $7730: $88
	adc  b                                           ; $7731: $88
	adc  b                                           ; $7732: $88
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	adc  b                                           ; $7735: $88
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	adc  b                                           ; $7738: $88
	adc  b                                           ; $7739: $88
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	adc  b                                           ; $773c: $88
	adc  b                                           ; $773d: $88
	adc  b                                           ; $773e: $88
	adc  b                                           ; $773f: $88
	adc  b                                           ; $7740: $88
	adc  b                                           ; $7741: $88
	adc  b                                           ; $7742: $88
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	adc  b                                           ; $7745: $88
	adc  b                                           ; $7746: $88
	adc  b                                           ; $7747: $88
	adc  b                                           ; $7748: $88
	adc  b                                           ; $7749: $88
	adc  b                                           ; $774a: $88
	adc  b                                           ; $774b: $88
	adc  b                                           ; $774c: $88
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	adc  b                                           ; $7750: $88
	adc  b                                           ; $7751: $88
	adc  b                                           ; $7752: $88
	adc  b                                           ; $7753: $88
	adc  b                                           ; $7754: $88
	adc  b                                           ; $7755: $88
	adc  b                                           ; $7756: $88
	adc  b                                           ; $7757: $88
	adc  b                                           ; $7758: $88
	adc  b                                           ; $7759: $88
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	adc  b                                           ; $775c: $88
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	adc  b                                           ; $7760: $88
	adc  b                                           ; $7761: $88
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	adc  b                                           ; $7766: $88
	adc  b                                           ; $7767: $88
	adc  b                                           ; $7768: $88
	adc  b                                           ; $7769: $88
	adc  b                                           ; $776a: $88
	adc  b                                           ; $776b: $88
	adc  b                                           ; $776c: $88
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	adc  b                                           ; $776f: $88
	adc  b                                           ; $7770: $88
	adc  b                                           ; $7771: $88
	adc  b                                           ; $7772: $88
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  b                                           ; $7778: $88
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
	adc  b                                           ; $7780: $88
	adc  b                                           ; $7781: $88
	adc  b                                           ; $7782: $88
	adc  b                                           ; $7783: $88
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  b                                           ; $7786: $88

Jump_0bb_7787:
	adc  b                                           ; $7787: $88
	adc  b                                           ; $7788: $88
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	adc  b                                           ; $778b: $88
	adc  b                                           ; $778c: $88
	adc  b                                           ; $778d: $88
	adc  b                                           ; $778e: $88
	adc  b                                           ; $778f: $88
	adc  b                                           ; $7790: $88
	adc  b                                           ; $7791: $88
	adc  b                                           ; $7792: $88
	adc  b                                           ; $7793: $88
	adc  b                                           ; $7794: $88
	adc  b                                           ; $7795: $88
	adc  b                                           ; $7796: $88
	adc  b                                           ; $7797: $88
	adc  b                                           ; $7798: $88
	adc  b                                           ; $7799: $88
	adc  b                                           ; $779a: $88
	adc  b                                           ; $779b: $88
	adc  b                                           ; $779c: $88
	adc  b                                           ; $779d: $88
	adc  b                                           ; $779e: $88
	adc  b                                           ; $779f: $88
	adc  b                                           ; $77a0: $88
	adc  b                                           ; $77a1: $88
	adc  b                                           ; $77a2: $88
	adc  b                                           ; $77a3: $88
	adc  b                                           ; $77a4: $88
	adc  b                                           ; $77a5: $88
	adc  b                                           ; $77a6: $88
	adc  b                                           ; $77a7: $88
	adc  b                                           ; $77a8: $88
	adc  b                                           ; $77a9: $88
	adc  b                                           ; $77aa: $88
	adc  b                                           ; $77ab: $88
	adc  b                                           ; $77ac: $88
	adc  b                                           ; $77ad: $88
	adc  b                                           ; $77ae: $88
	adc  b                                           ; $77af: $88
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  b                                           ; $77b2: $88
	adc  b                                           ; $77b3: $88
	adc  b                                           ; $77b4: $88
	adc  b                                           ; $77b5: $88
	adc  b                                           ; $77b6: $88
	adc  b                                           ; $77b7: $88
	adc  b                                           ; $77b8: $88

Call_0bb_77b9:
	adc  b                                           ; $77b9: $88
	adc  b                                           ; $77ba: $88
	adc  b                                           ; $77bb: $88
	adc  b                                           ; $77bc: $88
	adc  b                                           ; $77bd: $88
	adc  b                                           ; $77be: $88
	adc  b                                           ; $77bf: $88
	adc  b                                           ; $77c0: $88
	adc  b                                           ; $77c1: $88
	adc  b                                           ; $77c2: $88
	adc  b                                           ; $77c3: $88
	adc  b                                           ; $77c4: $88
	adc  b                                           ; $77c5: $88
	adc  b                                           ; $77c6: $88
	adc  b                                           ; $77c7: $88
	adc  b                                           ; $77c8: $88

Jump_0bb_77c9:
	adc  b                                           ; $77c9: $88
	adc  b                                           ; $77ca: $88
	adc  b                                           ; $77cb: $88
	adc  b                                           ; $77cc: $88
	adc  b                                           ; $77cd: $88
	adc  b                                           ; $77ce: $88
	adc  b                                           ; $77cf: $88
	adc  b                                           ; $77d0: $88
	adc  b                                           ; $77d1: $88
	adc  b                                           ; $77d2: $88
	adc  b                                           ; $77d3: $88
	adc  b                                           ; $77d4: $88
	adc  b                                           ; $77d5: $88
	adc  b                                           ; $77d6: $88
	adc  b                                           ; $77d7: $88
	adc  b                                           ; $77d8: $88
	adc  b                                           ; $77d9: $88
	adc  b                                           ; $77da: $88
	adc  b                                           ; $77db: $88
	adc  b                                           ; $77dc: $88
	adc  b                                           ; $77dd: $88
	adc  b                                           ; $77de: $88
	adc  b                                           ; $77df: $88
	adc  b                                           ; $77e0: $88
	adc  b                                           ; $77e1: $88
	adc  b                                           ; $77e2: $88
	adc  b                                           ; $77e3: $88
	adc  b                                           ; $77e4: $88
	adc  b                                           ; $77e5: $88
	adc  b                                           ; $77e6: $88
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	adc  b                                           ; $77eb: $88
	adc  b                                           ; $77ec: $88
	adc  b                                           ; $77ed: $88
	adc  b                                           ; $77ee: $88
	adc  b                                           ; $77ef: $88
	adc  b                                           ; $77f0: $88
	adc  b                                           ; $77f1: $88
	adc  b                                           ; $77f2: $88
	adc  b                                           ; $77f3: $88
	adc  b                                           ; $77f4: $88
	adc  b                                           ; $77f5: $88
	adc  b                                           ; $77f6: $88
	adc  b                                           ; $77f7: $88
	adc  b                                           ; $77f8: $88
	adc  b                                           ; $77f9: $88
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	adc  b                                           ; $77fc: $88
	adc  b                                           ; $77fd: $88
	adc  b                                           ; $77fe: $88
	adc  b                                           ; $77ff: $88
	adc  b                                           ; $7800: $88
	adc  b                                           ; $7801: $88
	adc  b                                           ; $7802: $88
	adc  b                                           ; $7803: $88
	adc  b                                           ; $7804: $88
	adc  b                                           ; $7805: $88
	adc  b                                           ; $7806: $88
	adc  b                                           ; $7807: $88
	adc  b                                           ; $7808: $88
	adc  b                                           ; $7809: $88
	adc  b                                           ; $780a: $88
	adc  b                                           ; $780b: $88
	adc  b                                           ; $780c: $88
	adc  b                                           ; $780d: $88
	adc  b                                           ; $780e: $88
	adc  b                                           ; $780f: $88
	adc  b                                           ; $7810: $88
	adc  b                                           ; $7811: $88
	adc  b                                           ; $7812: $88
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	adc  b                                           ; $7818: $88
	adc  b                                           ; $7819: $88
	adc  b                                           ; $781a: $88
	adc  b                                           ; $781b: $88
	adc  b                                           ; $781c: $88
	adc  b                                           ; $781d: $88
	adc  b                                           ; $781e: $88
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  b                                           ; $7821: $88
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	adc  b                                           ; $7824: $88
	adc  b                                           ; $7825: $88
	adc  b                                           ; $7826: $88
	adc  b                                           ; $7827: $88
	adc  b                                           ; $7828: $88
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  b                                           ; $782b: $88
	adc  b                                           ; $782c: $88
	adc  b                                           ; $782d: $88
	adc  b                                           ; $782e: $88
	adc  b                                           ; $782f: $88
	adc  b                                           ; $7830: $88
	adc  b                                           ; $7831: $88
	adc  b                                           ; $7832: $88
	adc  b                                           ; $7833: $88
	adc  b                                           ; $7834: $88
	adc  b                                           ; $7835: $88
	adc  b                                           ; $7836: $88
	adc  b                                           ; $7837: $88
	adc  b                                           ; $7838: $88
	adc  b                                           ; $7839: $88
	adc  b                                           ; $783a: $88
	adc  b                                           ; $783b: $88
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  b                                           ; $783e: $88
	adc  b                                           ; $783f: $88
	adc  b                                           ; $7840: $88
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	adc  b                                           ; $7844: $88
	adc  b                                           ; $7845: $88
	adc  b                                           ; $7846: $88
	adc  b                                           ; $7847: $88
	adc  b                                           ; $7848: $88
	adc  b                                           ; $7849: $88
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	adc  b                                           ; $784c: $88
	adc  b                                           ; $784d: $88
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	adc  b                                           ; $7850: $88
	adc  b                                           ; $7851: $88
	adc  b                                           ; $7852: $88
	adc  b                                           ; $7853: $88
	adc  b                                           ; $7854: $88
	adc  b                                           ; $7855: $88
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  b                                           ; $7859: $88
	adc  b                                           ; $785a: $88
	adc  b                                           ; $785b: $88
	adc  b                                           ; $785c: $88
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	adc  b                                           ; $7861: $88
	adc  b                                           ; $7862: $88
	adc  b                                           ; $7863: $88
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	adc  b                                           ; $786a: $88
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	adc  b                                           ; $788e: $88
	adc  b                                           ; $788f: $88
	adc  b                                           ; $7890: $88
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
	adc  b                                           ; $7898: $88
	adc  b                                           ; $7899: $88
	adc  b                                           ; $789a: $88
	adc  b                                           ; $789b: $88
	adc  b                                           ; $789c: $88
	adc  b                                           ; $789d: $88
	adc  b                                           ; $789e: $88
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  b                                           ; $78a3: $88
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88
	adc  b                                           ; $78a7: $88
	adc  b                                           ; $78a8: $88
	adc  b                                           ; $78a9: $88
	adc  b                                           ; $78aa: $88
	adc  b                                           ; $78ab: $88
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	adc  b                                           ; $78bf: $88
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  b                                           ; $78fc: $88
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88

Jump_0bb_7975:
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88

Call_0bb_79b6:
	adc  b                                           ; $79b6: $88

Call_0bb_79b7:
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  b                                           ; $79e6: $88
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	adc  b                                           ; $7a09: $88
	adc  b                                           ; $7a0a: $88
	adc  b                                           ; $7a0b: $88
	adc  b                                           ; $7a0c: $88
	adc  b                                           ; $7a0d: $88
	adc  b                                           ; $7a0e: $88
	adc  b                                           ; $7a0f: $88
	adc  b                                           ; $7a10: $88
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  b                                           ; $7a14: $88
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	sbc  c                                           ; $7a54: $99
	sbc  c                                           ; $7a55: $99
	adc  b                                           ; $7a56: $88
	adc  c                                           ; $7a57: $89
	sbc  c                                           ; $7a58: $99
	sbc  b                                           ; $7a59: $98
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	ld   [hl], a                                     ; $7a5f: $77
	ld   [hl], a                                     ; $7a60: $77
	ld   [hl], a                                     ; $7a61: $77
	ld   [hl], a                                     ; $7a62: $77
	ld   [hl], a                                     ; $7a63: $77
	ld   [hl], a                                     ; $7a64: $77
	ld   a, b                                        ; $7a65: $78
	adc  b                                           ; $7a66: $88
	sbc  b                                           ; $7a67: $98
	sbc  c                                           ; $7a68: $99
	sbc  d                                           ; $7a69: $9a
	xor  d                                           ; $7a6a: $aa
	sbc  c                                           ; $7a6b: $99
	sbc  c                                           ; $7a6c: $99
	adc  b                                           ; $7a6d: $88
	sbc  c                                           ; $7a6e: $99
	sbc  c                                           ; $7a6f: $99
	sbc  c                                           ; $7a70: $99
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	ld   [hl], a                                     ; $7a74: $77
	ld   [hl], a                                     ; $7a75: $77
	ld   [hl], a                                     ; $7a76: $77
	ld   h, [hl]                                     ; $7a77: $66
	ld   h, [hl]                                     ; $7a78: $66
	ld   d, l                                        ; $7a79: $55
	ld   d, l                                        ; $7a7a: $55
	ld   d, l                                        ; $7a7b: $55
	ld   h, [hl]                                     ; $7a7c: $66
	adc  c                                           ; $7a7d: $89
	xor  e                                           ; $7a7e: $ab
	call z, $bbcc                                    ; $7a7f: $cc $cc $bb
	xor  b                                           ; $7a82: $a8
	add  a                                           ; $7a83: $87
	ld   [hl], a                                     ; $7a84: $77
	adc  b                                           ; $7a85: $88
	adc  c                                           ; $7a86: $89
	sbc  d                                           ; $7a87: $9a
	sbc  c                                           ; $7a88: $99
	adc  b                                           ; $7a89: $88
	sbc  b                                           ; $7a8a: $98
	adc  b                                           ; $7a8b: $88
	sbc  c                                           ; $7a8c: $99
	sbc  b                                           ; $7a8d: $98
	add  a                                           ; $7a8e: $87
	ld   [hl], a                                     ; $7a8f: $77
	halt                                             ; $7a90: $76
	ld   h, [hl]                                     ; $7a91: $66
	ld   [hl], a                                     ; $7a92: $77
	ld   a, b                                        ; $7a93: $78
	adc  b                                           ; $7a94: $88
	add  a                                           ; $7a95: $87
	ld   [hl], a                                     ; $7a96: $77
	ld   h, [hl]                                     ; $7a97: $66
	ld   d, l                                        ; $7a98: $55
	ld   d, l                                        ; $7a99: $55
	ld   d, [hl]                                     ; $7a9a: $56
	ld   a, b                                        ; $7a9b: $78
	sbc  d                                           ; $7a9c: $9a
	cp   e                                           ; $7a9d: $bb
	res  7, d                                        ; $7a9e: $cb $ba
	xor  b                                           ; $7aa0: $a8
	ld   [hl], a                                     ; $7aa1: $77
	ld   h, a                                        ; $7aa2: $67
	ld   [hl], a                                     ; $7aa3: $77
	adc  b                                           ; $7aa4: $88
	xor  d                                           ; $7aa5: $aa
	sbc  d                                           ; $7aa6: $9a
	xor  c                                           ; $7aa7: $a9
	adc  b                                           ; $7aa8: $88
	sbc  c                                           ; $7aa9: $99
	sbc  b                                           ; $7aaa: $98
	sbc  b                                           ; $7aab: $98
	adc  c                                           ; $7aac: $89
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	sbc  c                                           ; $7ab1: $99
	sbc  c                                           ; $7ab2: $99
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	add  a                                           ; $7ab7: $87
	ld   [hl], a                                     ; $7ab8: $77
	halt                                             ; $7ab9: $76
	ld   h, [hl]                                     ; $7aba: $66
	ld   h, l                                        ; $7abb: $65
	ld   d, h                                        ; $7abc: $54
	ld   b, e                                        ; $7abd: $43
	inc  sp                                          ; $7abe: $33
	ld   b, l                                        ; $7abf: $45
	ld   a, c                                        ; $7ac0: $79
	xor  h                                           ; $7ac1: $ac
	db   $dd                                         ; $7ac2: $dd
	db   $ed                                         ; $7ac3: $ed
	cp   e                                           ; $7ac4: $bb
	sbc  b                                           ; $7ac5: $98
	halt                                             ; $7ac6: $76
	ld   [hl], a                                     ; $7ac7: $77
	adc  c                                           ; $7ac8: $89
	xor  d                                           ; $7ac9: $aa
	cp   d                                           ; $7aca: $ba
	cp   d                                           ; $7acb: $ba
	xor  d                                           ; $7acc: $aa
	xor  c                                           ; $7acd: $a9
	sbc  c                                           ; $7ace: $99
	sbc  c                                           ; $7acf: $99
	adc  c                                           ; $7ad0: $89
	add  a                                           ; $7ad1: $87
	halt                                             ; $7ad2: $76
	ld   h, [hl]                                     ; $7ad3: $66
	ld   h, [hl]                                     ; $7ad4: $66
	ld   h, a                                        ; $7ad5: $67
	ld   [hl], a                                     ; $7ad6: $77
	ld   [hl], a                                     ; $7ad7: $77
	ld   [hl], a                                     ; $7ad8: $77
	halt                                             ; $7ad9: $76
	ld   h, l                                        ; $7ada: $65
	ld   b, h                                        ; $7adb: $44
	ld   [hl-], a                                    ; $7adc: $32
	ld   [hl+], a                                    ; $7add: $22
	ld   b, [hl]                                     ; $7ade: $46
	sbc  d                                           ; $7adf: $9a
	rst  JumpTable                                         ; $7ae0: $df
	rst  $38                                         ; $7ae1: $ff
	xor  $c9                                         ; $7ae2: $ee $c9
	sub  [hl]                                        ; $7ae4: $96
	ld   h, l                                        ; $7ae5: $65
	ld   d, [hl]                                     ; $7ae6: $56
	ld   a, c                                        ; $7ae7: $79
	sbc  c                                           ; $7ae8: $99
	xor  d                                           ; $7ae9: $aa
	xor  d                                           ; $7aea: $aa
	sbc  b                                           ; $7aeb: $98
	sbc  c                                           ; $7aec: $99
	sbc  b                                           ; $7aed: $98
	sbc  c                                           ; $7aee: $99
	sbc  c                                           ; $7aef: $99
	adc  c                                           ; $7af0: $89
	adc  b                                           ; $7af1: $88
	ld   [hl], a                                     ; $7af2: $77
	ld   [hl], a                                     ; $7af3: $77
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	add  a                                           ; $7af9: $87
	ld   [hl], a                                     ; $7afa: $77
	ld   h, [hl]                                     ; $7afb: $66
	ld   d, h                                        ; $7afc: $54
	ld   [hl-], a                                    ; $7afd: $32
	ld   de, $5713                                   ; $7afe: $11 $13 $57
	xor  h                                           ; $7b01: $ac
	rst  $38                                         ; $7b02: $ff
	rst  $38                                         ; $7b03: $ff
	db   $ed                                         ; $7b04: $ed
	cp   b                                           ; $7b05: $b8
	halt                                             ; $7b06: $76
	ld   d, l                                        ; $7b07: $55
	ld   h, a                                        ; $7b08: $67
	adc  c                                           ; $7b09: $89
	xor  e                                           ; $7b0a: $ab
	xor  d                                           ; $7b0b: $aa
	cp   d                                           ; $7b0c: $ba
	sbc  c                                           ; $7b0d: $99
	sbc  c                                           ; $7b0e: $99
	sbc  c                                           ; $7b0f: $99
	sbc  c                                           ; $7b10: $99
	adc  c                                           ; $7b11: $89
	add  a                                           ; $7b12: $87
	ld   [hl], a                                     ; $7b13: $77
	ld   [hl], a                                     ; $7b14: $77
	ld   [hl], a                                     ; $7b15: $77
	ld   [hl], a                                     ; $7b16: $77
	ld   [hl], a                                     ; $7b17: $77
	ld   [hl], a                                     ; $7b18: $77
	halt                                             ; $7b19: $76
	ld   d, l                                        ; $7b1a: $55
	ld   b, e                                        ; $7b1b: $43
	ld   hl, $3511                                   ; $7b1c: $21 $11 $35
	ld   a, d                                        ; $7b1f: $7a
	rst  JumpTable                                         ; $7b20: $df
	rst  $38                                         ; $7b21: $ff
	rst  $38                                         ; $7b22: $ff
	db   $db                                         ; $7b23: $db
	sub  [hl]                                        ; $7b24: $96
	ld   h, h                                        ; $7b25: $64
	ld   d, [hl]                                     ; $7b26: $56
	ld   l, b                                        ; $7b27: $68
	sbc  d                                           ; $7b28: $9a
	xor  d                                           ; $7b29: $aa
	xor  d                                           ; $7b2a: $aa
	xor  c                                           ; $7b2b: $a9
	adc  c                                           ; $7b2c: $89
	adc  b                                           ; $7b2d: $88
	sbc  c                                           ; $7b2e: $99
	sbc  d                                           ; $7b2f: $9a
	sbc  c                                           ; $7b30: $99
	adc  b                                           ; $7b31: $88
	ld   [hl], a                                     ; $7b32: $77
	ld   [hl], a                                     ; $7b33: $77
	adc  b                                           ; $7b34: $88
	sbc  b                                           ; $7b35: $98
	adc  b                                           ; $7b36: $88
	ld   [hl], a                                     ; $7b37: $77
	halt                                             ; $7b38: $76
	ld   d, h                                        ; $7b39: $54
	ld   sp, $1111                                   ; $7b3a: $31 $11 $11
	dec  [hl]                                        ; $7b3d: $35
	sbc  e                                           ; $7b3e: $9b
	rst  $28                                         ; $7b3f: $ef
	rst  $38                                         ; $7b40: $ff
	cp   $ba                                         ; $7b41: $fe $ba
	halt                                             ; $7b43: $76
	ld   d, h                                        ; $7b44: $54
	ld   d, [hl]                                     ; $7b45: $56
	ld   a, b                                        ; $7b46: $78
	sbc  d                                           ; $7b47: $9a
	cp   e                                           ; $7b48: $bb
	cp   e                                           ; $7b49: $bb
	sbc  c                                           ; $7b4a: $99
	adc  c                                           ; $7b4b: $89
	adc  c                                           ; $7b4c: $89
	adc  b                                           ; $7b4d: $88
	sbc  c                                           ; $7b4e: $99
	adc  b                                           ; $7b4f: $88
	adc  b                                           ; $7b50: $88
	add  a                                           ; $7b51: $87
	add  a                                           ; $7b52: $87
	ld   [hl], a                                     ; $7b53: $77
	ld   [hl], a                                     ; $7b54: $77
	ld   [hl], a                                     ; $7b55: $77
	ld   h, [hl]                                     ; $7b56: $66
	ld   d, h                                        ; $7b57: $54
	ld   sp, $1211                                   ; $7b58: $31 $11 $12
	ld   b, [hl]                                     ; $7b5b: $46
	sbc  h                                           ; $7b5c: $9c
	rst  $28                                         ; $7b5d: $ef
	rst  $38                                         ; $7b5e: $ff
	cp   $b9                                         ; $7b5f: $fe $b9
	ld   [hl], l                                     ; $7b61: $75
	ld   b, l                                        ; $7b62: $45
	ld   h, a                                        ; $7b63: $67
	adc  d                                           ; $7b64: $8a
	xor  e                                           ; $7b65: $ab
	res  5, c                                        ; $7b66: $cb $a9
	sbc  b                                           ; $7b68: $98
	ld   a, b                                        ; $7b69: $78
	adc  b                                           ; $7b6a: $88
	xor  d                                           ; $7b6b: $aa
	cp   d                                           ; $7b6c: $ba
	xor  c                                           ; $7b6d: $a9
	adc  b                                           ; $7b6e: $88
	ld   [hl], a                                     ; $7b6f: $77
	halt                                             ; $7b70: $76
	halt                                             ; $7b71: $76
	ld   h, [hl]                                     ; $7b72: $66
	ld   d, h                                        ; $7b73: $54
	ld   [hl-], a                                    ; $7b74: $32
	ld   de, $2311                                   ; $7b75: $11 $11 $23
	ld   a, d                                        ; $7b78: $7a
	rst  $28                                         ; $7b79: $ef
	rst  $38                                         ; $7b7a: $ff
	rst  $38                                         ; $7b7b: $ff
	jp   z, Jump_0bb_5485                            ; $7b7c: $ca $85 $54

	ld   d, a                                        ; $7b7f: $57
	sbc  c                                           ; $7b80: $99
	call z, $badc                                    ; $7b81: $cc $dc $ba
	adc  b                                           ; $7b84: $88
	halt                                             ; $7b85: $76
	ld   [hl], a                                     ; $7b86: $77
	sbc  d                                           ; $7b87: $9a
	cp   e                                           ; $7b88: $bb
	cp   e                                           ; $7b89: $bb
	cp   d                                           ; $7b8a: $ba
	add  a                                           ; $7b8b: $87
	ld   h, [hl]                                     ; $7b8c: $66
	ld   d, l                                        ; $7b8d: $55
	ld   d, l                                        ; $7b8e: $55
	ld   d, h                                        ; $7b8f: $54
	ld   [hl-], a                                    ; $7b90: $32
	ld   de, $1211                                   ; $7b91: $11 $11 $12
	ld   l, d                                        ; $7b94: $6a
	rst  JumpTable                                         ; $7b95: $df
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	jp   hl                                          ; $7b98: $e9


	add  l                                           ; $7b99: $85
	ld   b, h                                        ; $7b9a: $44
	ld   b, [hl]                                     ; $7b9b: $46
	adc  d                                           ; $7b9c: $8a
	cp   [hl]                                        ; $7b9d: $be
	rst  $28                                         ; $7b9e: $ef
	call c, Call_0bb_74a7                            ; $7b9f: $dc $a7 $74
	ld   d, [hl]                                     ; $7ba2: $56
	ld   a, c                                        ; $7ba3: $79
	xor  h                                           ; $7ba4: $ac
	call z, $a9db                                    ; $7ba5: $cc $db $a9
	halt                                             ; $7ba8: $76
	ld   d, h                                        ; $7ba9: $54
	ld   b, e                                        ; $7baa: $43
	inc  sp                                          ; $7bab: $33
	ld   de, $1111                                   ; $7bac: $11 $11 $11
	inc  hl                                          ; $7baf: $23
	ld   a, e                                        ; $7bb0: $7b
	rst  $28                                         ; $7bb1: $ef
	rst  $38                                         ; $7bb2: $ff
	rst  $38                                         ; $7bb3: $ff
	reti                                             ; $7bb4: $d9


	ld   [hl], h                                     ; $7bb5: $74
	ld   b, d                                        ; $7bb6: $42
	ld   b, [hl]                                     ; $7bb7: $46
	adc  c                                           ; $7bb8: $89
	adc  $de                                         ; $7bb9: $ce $de
	db   $dd                                         ; $7bbb: $dd
	xor  b                                           ; $7bbc: $a8
	ld   h, l                                        ; $7bbd: $65
	ld   h, [hl]                                     ; $7bbe: $66
	ld   a, b                                        ; $7bbf: $78
	xor  e                                           ; $7bc0: $ab
	db   $dd                                         ; $7bc1: $dd
	call c, $87ba                                    ; $7bc2: $dc $ba $87
	ld   d, h                                        ; $7bc5: $54
	ld   [hl-], a                                    ; $7bc6: $32
	ld   hl, $1111                                   ; $7bc7: $21 $11 $11
	ld   [de], a                                     ; $7bca: $12
	scf                                              ; $7bcb: $37
	cp   l                                           ; $7bcc: $bd
	cp   $ff                                         ; $7bcd: $fe $ff
	cp   $98                                         ; $7bcf: $fe $98
	ld   h, l                                        ; $7bd1: $65
	inc  sp                                          ; $7bd2: $33
	ld   d, a                                        ; $7bd3: $57
	sbc  d                                           ; $7bd4: $9a
	db   $ed                                         ; $7bd5: $ed
	xor  $dd                                         ; $7bd6: $ee $dd
	sbc  c                                           ; $7bd8: $99
	ld   h, [hl]                                     ; $7bd9: $66
	ld   [hl], a                                     ; $7bda: $77
	ld   a, c                                        ; $7bdb: $79
	sbc  d                                           ; $7bdc: $9a
	cp   e                                           ; $7bdd: $bb
	jp   z, $87ba                                    ; $7bde: $ca $ba $87

	ld   d, h                                        ; $7be1: $54
	ld   [hl-], a                                    ; $7be2: $32
	ld   de, $1111                                   ; $7be3: $11 $11 $11
	ld   [hl+], a                                    ; $7be6: $22
	ld   a, c                                        ; $7be7: $79
	rst  JumpTable                                         ; $7be8: $df
	rst  $28                                         ; $7be9: $ef
	rst  $38                                         ; $7bea: $ff
	ei                                               ; $7beb: $fb
	xor  b                                           ; $7bec: $a8
	ld   [hl], l                                     ; $7bed: $75
	ld   d, l                                        ; $7bee: $55
	ld   h, [hl]                                     ; $7bef: $66
	sbc  e                                           ; $7bf0: $9b
	cp   h                                           ; $7bf1: $bc
	call z, $a8ca                                    ; $7bf2: $cc $ca $a8
	sbc  c                                           ; $7bf5: $99
	adc  b                                           ; $7bf6: $88
	sbc  c                                           ; $7bf7: $99
	xor  c                                           ; $7bf8: $a9
	sbc  d                                           ; $7bf9: $9a
	sbc  c                                           ; $7bfa: $99
	sub  a                                           ; $7bfb: $97
	ld   [hl], l                                     ; $7bfc: $75
	ld   b, e                                        ; $7bfd: $43
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	ld   [hl+], a                                    ; $7c01: $22
	ld   e, b                                        ; $7c02: $58
	xor  l                                           ; $7c03: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c04: $cf
	xor  $eb                                         ; $7c05: $ee $eb
	cp   d                                           ; $7c07: $ba
	sbc  b                                           ; $7c08: $98
	add  a                                           ; $7c09: $87
	add  a                                           ; $7c0a: $87
	ld   a, d                                        ; $7c0b: $7a
	adc  d                                           ; $7c0c: $8a
	xor  d                                           ; $7c0d: $aa
	xor  d                                           ; $7c0e: $aa
	xor  d                                           ; $7c0f: $aa
	xor  e                                           ; $7c10: $ab
	cp   d                                           ; $7c11: $ba
	xor  d                                           ; $7c12: $aa
	xor  d                                           ; $7c13: $aa
	adc  c                                           ; $7c14: $89
	sbc  c                                           ; $7c15: $99
	add  a                                           ; $7c16: $87
	add  a                                           ; $7c17: $87
	ld   d, h                                        ; $7c18: $54
	ld   hl, $1111                                   ; $7c19: $21 $11 $11
	inc  hl                                          ; $7c1c: $23
	ld   e, b                                        ; $7c1d: $58
	xor  d                                           ; $7c1e: $aa
	sbc  h                                           ; $7c1f: $9c
	cp   d                                           ; $7c20: $ba
	jp   z, $b9bb                                    ; $7c21: $ca $bb $b9

	xor  d                                           ; $7c24: $aa
	xor  d                                           ; $7c25: $aa
	sbc  e                                           ; $7c26: $9b
	sbc  d                                           ; $7c27: $9a
	sbc  c                                           ; $7c28: $99
	sbc  b                                           ; $7c29: $98
	sbc  b                                           ; $7c2a: $98
	xor  e                                           ; $7c2b: $ab
	xor  d                                           ; $7c2c: $aa
	xor  d                                           ; $7c2d: $aa
	sbc  d                                           ; $7c2e: $9a
	adc  c                                           ; $7c2f: $89
	adc  b                                           ; $7c30: $88
	sbc  b                                           ; $7c31: $98
	sub  a                                           ; $7c32: $97
	ld   d, h                                        ; $7c33: $54
	ld   sp, $1311                                   ; $7c34: $31 $11 $13
	inc  [hl]                                        ; $7c37: $34
	ld   h, a                                        ; $7c38: $67
	add  [hl]                                        ; $7c39: $86
	ld   a, b                                        ; $7c3a: $78
	ld   l, c                                        ; $7c3b: $69
	ld   a, b                                        ; $7c3c: $78
	sbc  d                                           ; $7c3d: $9a
	xor  d                                           ; $7c3e: $aa
	call $ecdb                                       ; $7c3f: $cd $db $ec
	call z, $babc                                    ; $7c42: $cc $bc $ba
	xor  e                                           ; $7c45: $ab
	cp   d                                           ; $7c46: $ba
	xor  d                                           ; $7c47: $aa
	xor  c                                           ; $7c48: $a9
	adc  b                                           ; $7c49: $88
	ld   a, b                                        ; $7c4a: $78
	ld   [hl], a                                     ; $7c4b: $77
	ld   [hl], a                                     ; $7c4c: $77
	ld   h, l                                        ; $7c4d: $65
	ld   [hl-], a                                    ; $7c4e: $32
	ld   de, $4211                                   ; $7c4f: $11 $11 $42
	ld   d, l                                        ; $7c52: $55
	ld   h, [hl]                                     ; $7c53: $66
	ld   e, b                                        ; $7c54: $58
	ld   h, a                                        ; $7c55: $67
	add  a                                           ; $7c56: $87
	adc  d                                           ; $7c57: $8a
	xor  d                                           ; $7c58: $aa
	call z, $dedc                                    ; $7c59: $cc $dc $de
	call $cccd                                       ; $7c5c: $cd $cd $cc
	cp   h                                           ; $7c5f: $bc
	call c, $a9ba                                    ; $7c60: $dc $ba $a9
	adc  b                                           ; $7c63: $88
	ld   [hl], a                                     ; $7c64: $77
	halt                                             ; $7c65: $76
	ld   h, [hl]                                     ; $7c66: $66
	ld   d, e                                        ; $7c67: $53
	ld   hl, $1211                                   ; $7c68: $21 $11 $12
	ld   [hl-], a                                    ; $7c6b: $32
	ld   d, l                                        ; $7c6c: $55
	ld   h, l                                        ; $7c6d: $65
	ld   b, a                                        ; $7c6e: $47
	ld   d, a                                        ; $7c6f: $57
	ld   [hl], a                                     ; $7c70: $77
	xor  e                                           ; $7c71: $ab
	xor  e                                           ; $7c72: $ab
	db   $ed                                         ; $7c73: $ed
	db   $ed                                         ; $7c74: $ed
	xor  $cd                                         ; $7c75: $ee $cd
	call $cccd                                       ; $7c77: $cd $cd $cc
	res  7, c                                        ; $7c7a: $cb $b9
	sbc  b                                           ; $7c7c: $98
	ld   a, b                                        ; $7c7d: $78
	ld   [hl], a                                     ; $7c7e: $77
	halt                                             ; $7c7f: $76
	ld   d, l                                        ; $7c80: $55
	ld   b, d                                        ; $7c81: $42
	ld   de, $1411                                   ; $7c82: $11 $11 $14
	dec  d                                           ; $7c85: $15
	ld   d, [hl]                                     ; $7c86: $56
	ld   d, h                                        ; $7c87: $54
	add  l                                           ; $7c88: $85
	ld   a, b                                        ; $7c89: $78
	ld   a, d                                        ; $7c8a: $7a
	cp   e                                           ; $7c8b: $bb
	cp   [hl]                                        ; $7c8c: $be
	sbc  $ed                                         ; $7c8d: $de $ed
	db   $ec                                         ; $7c8f: $ec
	db   $ed                                         ; $7c90: $ed
	call z, $bdcb                                    ; $7c91: $cc $cb $bd
	cp   d                                           ; $7c94: $ba
	sbc  c                                           ; $7c95: $99
	add  a                                           ; $7c96: $87
	ld   [hl], a                                     ; $7c97: $77
	ld   h, [hl]                                     ; $7c98: $66
	ld   h, l                                        ; $7c99: $65
	ld   d, h                                        ; $7c9a: $54
	ld   hl, $1311                                   ; $7c9b: $21 $11 $13
	ld   [hl-], a                                    ; $7c9e: $32
	ld   d, h                                        ; $7c9f: $54
	ld   h, h                                        ; $7ca0: $64
	ld   d, a                                        ; $7ca1: $57
	ld   c, b                                        ; $7ca2: $48
	ld   a, b                                        ; $7ca3: $78
	xor  h                                           ; $7ca4: $ac
	call z, $fdee                                    ; $7ca5: $cc $ee $fd
	db   $fd                                         ; $7ca8: $fd
	adc  $dd                                         ; $7ca9: $ce $dd
	call z, $babb                                    ; $7cab: $cc $bb $ba
	sbc  c                                           ; $7cae: $99
	sub  a                                           ; $7caf: $97
	ld   [hl], a                                     ; $7cb0: $77
	halt                                             ; $7cb1: $76
	ld   h, [hl]                                     ; $7cb2: $66
	ld   b, h                                        ; $7cb3: $44
	ld   hl, $1111                                   ; $7cb4: $21 $11 $11
	ld   d, d                                        ; $7cb7: $52
	ld   d, h                                        ; $7cb8: $54
	ld   h, l                                        ; $7cb9: $65
	daa                                              ; $7cba: $27
	ld   d, [hl]                                     ; $7cbb: $56
	adc  b                                           ; $7cbc: $88
	xor  e                                           ; $7cbd: $ab
	call c, $fdee                                    ; $7cbe: $dc $ee $fd
	xor  $de                                         ; $7cc1: $ee $de
	sbc  $cd                                         ; $7cc3: $de $cd
	jp   z, $a8ca                                    ; $7cc5: $ca $ca $a8

	ld   [hl], a                                     ; $7cc8: $77
	ld   h, a                                        ; $7cc9: $67
	halt                                             ; $7cca: $76
	ld   h, [hl]                                     ; $7ccb: $66
	ld   b, e                                        ; $7ccc: $43
	ld   hl, $1211                                   ; $7ccd: $21 $11 $12
	ld   b, d                                        ; $7cd0: $42
	ld   d, h                                        ; $7cd1: $54
	ld   h, l                                        ; $7cd2: $65
	scf                                              ; $7cd3: $37
	ld   d, a                                        ; $7cd4: $57
	adc  b                                           ; $7cd5: $88
	xor  h                                           ; $7cd6: $ac
	db   $ec                                         ; $7cd7: $ec
	rst  $38                                         ; $7cd8: $ff
	db   $fd                                         ; $7cd9: $fd
	rst  JumpTable                                         ; $7cda: $df
	db   $dd                                         ; $7cdb: $dd
	sbc  $dd                                         ; $7cdc: $de $dd
	db   $db                                         ; $7cde: $db
	ret                                              ; $7cdf: $c9


	sub  a                                           ; $7ce0: $97
	halt                                             ; $7ce1: $76
	ld   h, [hl]                                     ; $7ce2: $66
	ld   h, [hl]                                     ; $7ce3: $66
	ld   d, l                                        ; $7ce4: $55
	ld   sp, $1111                                   ; $7ce5: $31 $11 $11
	inc  h                                           ; $7ce8: $24
	dec  h                                           ; $7ce9: $25
	ld   b, l                                        ; $7cea: $45
	ld   b, d                                        ; $7ceb: $42
	ld   h, l                                        ; $7cec: $65
	ld   a, b                                        ; $7ced: $78
	sbc  d                                           ; $7cee: $9a
	rst  JumpTable                                         ; $7cef: $df
	adc  $fe                                         ; $7cf0: $ce $fe
	sbc  $fd                                         ; $7cf2: $de $fd
	xor  $fd                                         ; $7cf4: $ee $fd
	db   $ed                                         ; $7cf6: $ed
	xor  h                                           ; $7cf7: $ac
	xor  c                                           ; $7cf8: $a9
	ld   [hl], a                                     ; $7cf9: $77
	ld   [hl], a                                     ; $7cfa: $77
	ld   h, [hl]                                     ; $7cfb: $66
	ld   h, h                                        ; $7cfc: $64
	ld   b, e                                        ; $7cfd: $43
	ld   de, $1411                                   ; $7cfe: $11 $11 $14
	inc  hl                                          ; $7d01: $23
	ld   b, e                                        ; $7d02: $43
	ld   h, d                                        ; $7d03: $62
	scf                                              ; $7d04: $37
	ld   e, b                                        ; $7d05: $58
	sbc  e                                           ; $7d06: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d07: $cf
	db   $fd                                         ; $7d08: $fd
	cp   $fd                                         ; $7d09: $fe $fd
	cp   $ed                                         ; $7d0b: $fe $ed
	sbc  $ce                                         ; $7d0d: $de $ce
	cp   d                                           ; $7d0f: $ba
	xor  c                                           ; $7d10: $a9
	ld   [hl], a                                     ; $7d11: $77
	ld   h, [hl]                                     ; $7d12: $66
	halt                                             ; $7d13: $76
	ld   h, l                                        ; $7d14: $65
	ld   [hl-], a                                    ; $7d15: $32
	ld   de, $1311                                   ; $7d16: $11 $11 $13
	inc  sp                                          ; $7d19: $33
	ld   d, d                                        ; $7d1a: $52
	ld   h, e                                        ; $7d1b: $63
	jr   c, jr_0bb_7d97                              ; $7d1c: $38 $79

	sbc  h                                           ; $7d1e: $9c
	rst  JumpTable                                         ; $7d1f: $df
	rst  $38                                         ; $7d20: $ff
	rst  $38                                         ; $7d21: $ff
	db   $fd                                         ; $7d22: $fd
	db   $dd                                         ; $7d23: $dd
	db   $ed                                         ; $7d24: $ed
	adc  $bc                                         ; $7d25: $ce $bc
	cp   c                                           ; $7d27: $b9
	xor  c                                           ; $7d28: $a9
	add  a                                           ; $7d29: $87
	ld   [hl], a                                     ; $7d2a: $77
	add  a                                           ; $7d2b: $87
	ld   h, l                                        ; $7d2c: $65
	ld   sp, $1111                                   ; $7d2d: $31 $11 $11
	ld   [de], a                                     ; $7d30: $12
	ld   d, $55                                      ; $7d31: $16 $55
	ld   [hl], d                                     ; $7d33: $72
	ld   a, b                                        ; $7d34: $78
	xor  h                                           ; $7d35: $ac
	sbc  $ef                                         ; $7d36: $de $ef
	rst  $38                                         ; $7d38: $ff
	rst  $38                                         ; $7d39: $ff
	db   $ed                                         ; $7d3a: $ed
	res  7, b                                        ; $7d3b: $cb $b8
	sbc  b                                           ; $7d3d: $98
	adc  e                                           ; $7d3e: $8b
	sbc  e                                           ; $7d3f: $9b
	cp   d                                           ; $7d40: $ba
	xor  c                                           ; $7d41: $a9
	xor  b                                           ; $7d42: $a8
	add  l                                           ; $7d43: $85
	ld   d, e                                        ; $7d44: $53
	ld   de, $1111                                   ; $7d45: $11 $11 $11
	ld   de, $af4b                                   ; $7d48: $11 $4b $af
	db   $fd                                         ; $7d4b: $fd
	cp   $fe                                         ; $7d4c: $fe $fe
	db   $ed                                         ; $7d4e: $ed
	db   $dd                                         ; $7d4f: $dd
	sbc  e                                           ; $7d50: $9b
	adc  b                                           ; $7d51: $88
	ld   [hl], a                                     ; $7d52: $77
	adc  c                                           ; $7d53: $89
	sbc  c                                           ; $7d54: $99
	cp   d                                           ; $7d55: $ba
	db   $ed                                         ; $7d56: $ed
	rst  JumpTable                                         ; $7d57: $df
	call c, Call_0bb_65a9                            ; $7d58: $dc $a9 $65
	ld   sp, $1111                                   ; $7d5b: $31 $11 $11
	ld   de, $7a11                                   ; $7d5e: $11 $11 $7a
	rst  $38                                         ; $7d61: $ff
	rst  $38                                         ; $7d62: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d63: $cf
	cp   b                                           ; $7d64: $b8
	sbc  c                                           ; $7d65: $99
	adc  d                                           ; $7d66: $8a
	add  $a9                                         ; $7d67: $c6 $a9
	adc  d                                           ; $7d69: $8a
	sbc  e                                           ; $7d6a: $9b
	cp   d                                           ; $7d6b: $ba
	sbc  h                                           ; $7d6c: $9c
	sbc  h                                           ; $7d6d: $9c
	call c, $caee                                    ; $7d6e: $dc $ee $ca
	add  l                                           ; $7d71: $85
	ld   b, d                                        ; $7d72: $42
	ld   de, $1111                                   ; $7d73: $11 $11 $11
	ld   de, $ffbc                                   ; $7d76: $11 $bc $ff
	rst  $38                                         ; $7d79: $ff
	push af                                          ; $7d7a: $f5
	sub  d                                           ; $7d7b: $92
	scf                                              ; $7d7c: $37
	sbc  c                                           ; $7d7d: $99
	db   $fc                                         ; $7d7e: $fc
	adc  h                                           ; $7d7f: $8c
	sbc  e                                           ; $7d80: $9b
	cp   e                                           ; $7d81: $bb
	call c, Call_0bb_7577                            ; $7d82: $dc $77 $75
	cp   [hl]                                        ; $7d85: $be
	rst  $38                                         ; $7d86: $ff
	cp   $b4                                         ; $7d87: $fe $b4
	ld   [hl-], a                                    ; $7d89: $32
	ld   de, $1111                                   ; $7d8a: $11 $11 $11
	ld   de, $ff1f                                   ; $7d8d: $11 $1f $ff
	rst  $38                                         ; $7d90: $ff
	pop  af                                          ; $7d91: $f1
	ld   de, $de19                                   ; $7d92: $11 $19 $de
	rst  $38                                         ; $7d95: $ff
	ld   a, b                                        ; $7d96: $78

jr_0bb_7d97:
	sbc  d                                           ; $7d97: $9a
	db   $dd                                         ; $7d98: $dd
	db   $ec                                         ; $7d99: $ec
	ld   b, c                                        ; $7d9a: $41
	inc  sp                                          ; $7d9b: $33
	xor  a                                           ; $7d9c: $af
	rst  $38                                         ; $7d9d: $ff
	db   $fd                                         ; $7d9e: $fd
	ld   [hl], c                                     ; $7d9f: $71
	ld   de, $3113                                   ; $7da0: $11 $13 $31
	ld   de, $1f11                                   ; $7da3: $11 $11 $1f
	rst  $38                                         ; $7da6: $ff
	db   $fd                                         ; $7da7: $fd
	sub  c                                           ; $7da8: $91
	inc  de                                          ; $7da9: $13
	ld   c, a                                        ; $7daa: $4f
	rst  $38                                         ; $7dab: $ff
	jp   z, $be23                                    ; $7dac: $ca $23 $be

	rst  $38                                         ; $7daf: $ff
	rst  ToBoot                                         ; $7db0: $c7
	ld   de, $ff17                                   ; $7db1: $11 $17 $ff
	rst  $38                                         ; $7db4: $ff
	db   $f4                                         ; $7db5: $f4
	ld   hl, $7517                                   ; $7db6: $21 $17 $75
	ld   hl, $1111                                   ; $7db9: $21 $11 $11
	rra                                              ; $7dbc: $1f
	rst  $38                                         ; $7dbd: $ff
	or   $11                                         ; $7dbe: $f6 $11
	dec  e                                           ; $7dc0: $1d
	rst  $28                                         ; $7dc1: $ef
	ld   a, [$4923]                                  ; $7dc2: $fa $23 $49
	rst  $38                                         ; $7dc5: $ff
	ei                                               ; $7dc6: $fb
	ld   de, $9f11                                   ; $7dc7: $11 $11 $9f
	rst  $38                                         ; $7dca: $ff
	cp   $a4                                         ; $7dcb: $fe $a4
	add  a                                           ; $7dcd: $87
	ld   d, a                                        ; $7dce: $57
	ld   hl, $1111                                   ; $7dcf: $21 $11 $11
	ld   de, $ff1f                                   ; $7dd2: $11 $1f $ff
	push af                                          ; $7dd5: $f5
	ld   sp, $bf1d                                   ; $7dd6: $31 $1d $bf
	or   $57                                         ; $7dd9: $f6 $57
	ld   a, [hl]                                     ; $7ddb: $7e
	rst  $38                                         ; $7ddc: $ff
	di                                               ; $7ddd: $f3
	ld   de, $ef15                                   ; $7dde: $11 $15 $ef
	rst  $38                                         ; $7de1: $ff
	cp   $98                                         ; $7de2: $fe $98
	and  h                                           ; $7de4: $a4
	ld   [hl-], a                                    ; $7de5: $32
	ld   de, $1111                                   ; $7de6: $11 $11 $11
	ld   de, $ffff                                   ; $7de9: $11 $ff $ff
	sub  c                                           ; $7dec: $91
	ld   de, $ffff                                   ; $7ded: $11 $ff $ff
	ld   d, c                                        ; $7df0: $51
	ld   a, d                                        ; $7df1: $7a
	rst  $38                                         ; $7df2: $ff
	db   $fd                                         ; $7df3: $fd
	ld   de, $df47                                   ; $7df4: $11 $47 $df
	cp   $88                                         ; $7df7: $fe $88
	rst  $38                                         ; $7df9: $ff
	db   $fd                                         ; $7dfa: $fd
	ld   hl, $3111                                   ; $7dfb: $21 $11 $31
	ld   de, $1f11                                   ; $7dfe: $11 $11 $1f
	rst  $38                                         ; $7e01: $ff
	pop  af                                          ; $7e02: $f1
	ld   de, $ff1f                                   ; $7e03: $11 $1f $ff
	pop  bc                                          ; $7e06: $c1
	dec  e                                           ; $7e07: $1d
	rst  $38                                         ; $7e08: $ff
	ld   sp, hl                                      ; $7e09: $f9
	ld   de, $ff1e                                   ; $7e0a: $11 $1e $ff
	ld   sp, hl                                      ; $7e0d: $f9
	inc  h                                           ; $7e0e: $24
	rst  $38                                         ; $7e0f: $ff
	db   $fd                                         ; $7e10: $fd
	ld   hl, $a812                                   ; $7e11: $21 $12 $a8
	ld   de, $1f11                                   ; $7e14: $11 $11 $1f
	rst  $38                                         ; $7e17: $ff
	pop  af                                          ; $7e18: $f1
	ld   de, $f71f                                   ; $7e19: $11 $1f $f7
	ld   [hl], c                                     ; $7e1c: $71
	rra                                              ; $7e1d: $1f
	rst  $38                                         ; $7e1e: $ff
	pop  af                                          ; $7e1f: $f1
	ld   de, $ff1f                                   ; $7e20: $11 $1f $ff
	ld   d, c                                        ; $7e23: $51
	ld   e, c                                        ; $7e24: $59
	rst  $38                                         ; $7e25: $ff
	db   $f4                                         ; $7e26: $f4
	ld   de, $d628                                   ; $7e27: $11 $28 $d6
	ld   de, $1f11                                   ; $7e2a: $11 $11 $1f
	rst  $38                                         ; $7e2d: $ff
	or   [hl]                                        ; $7e2e: $b6
	ld   de, $f16f                                   ; $7e2f: $11 $6f $f1
	ld   de, $ff3f                                   ; $7e32: $11 $3f $ff
	or   c                                           ; $7e35: $b1
	ld   [de], a                                     ; $7e36: $12
	adc  a                                           ; $7e37: $8f
	ei                                               ; $7e38: $fb
	ld   de, $ffcf                                   ; $7e39: $11 $cf $ff
	and  d                                           ; $7e3c: $a2
	ld   d, $b7                                      ; $7e3d: $16 $b7
	ld   b, c                                        ; $7e3f: $41
	ld   de, $1611                                   ; $7e40: $11 $11 $16
	rst  $38                                         ; $7e43: $ff
	jp   hl                                          ; $7e44: $e9


	ld   de, $f21b                                   ; $7e45: $11 $1b $f2
	inc  d                                           ; $7e48: $14
	ld   l, a                                        ; $7e49: $6f
	rst  $38                                         ; $7e4a: $ff
	or   c                                           ; $7e4b: $b1
	dec  d                                           ; $7e4c: $15
	cp   a                                           ; $7e4d: $bf
	db   $fc                                         ; $7e4e: $fc
	ld   de, $ffff                                   ; $7e4f: $11 $ff $ff
	and  l                                           ; $7e52: $a5
	ld   a, [hl+]                                    ; $7e53: $2a
	call nz, $1111                                   ; $7e54: $c4 $11 $11
	ld   de, $ff15                                   ; $7e57: $11 $15 $ff
	ld   hl, sp+$11                                  ; $7e5a: $f8 $11
	rra                                              ; $7e5c: $1f
	pop  af                                          ; $7e5d: $f1
	ld   de, $ff7f                                   ; $7e5e: $11 $7f $ff
	ld   h, c                                        ; $7e61: $61
	jr   @+$01                                       ; $7e62: $18 $ff

	reti                                             ; $7e64: $d9


	ld   [de], a                                     ; $7e65: $12
	rst  $38                                         ; $7e66: $ff
	ld   a, [$5e45]                                  ; $7e67: $fa $45 $5e
	jp   nc, $1111                                   ; $7e6a: $d2 $11 $11

	ld   de, rAUD1LEN                                   ; $7e6d: $11 $11 $ff
	rst  $38                                         ; $7e70: $ff
	ld   de, $f118                                   ; $7e71: $11 $18 $f1
	ld   de, $ff8f                                   ; $7e74: $11 $8f $ff
	sub  c                                           ; $7e77: $91
	add  hl, de                                      ; $7e78: $19
	rst  $38                                         ; $7e79: $ff
	adc  b                                           ; $7e7a: $88
	daa                                              ; $7e7b: $27
	rst  $38                                         ; $7e7c: $ff
	sub  $8a                                         ; $7e7d: $d6 $8a
	sbc  h                                           ; $7e7f: $9c
	add  c                                           ; $7e80: $81
	ld   de, $1111                                   ; $7e81: $11 $11 $11
	rra                                              ; $7e84: $1f
	rst  $38                                         ; $7e85: $ff
	pop  af                                          ; $7e86: $f1
	ld   de, $e16f                                   ; $7e87: $11 $6f $e1
	ld   [de], a                                     ; $7e8a: $12
	rst  $38                                         ; $7e8b: $ff
	db   $fc                                         ; $7e8c: $fc
	ld   de, $f6bf                                   ; $7e8d: $11 $bf $f6
	dec  d                                           ; $7e90: $15
	cp   a                                           ; $7e91: $bf
	ld   hl, sp+$11                                  ; $7e92: $f8 $11
	rst  $28                                         ; $7e94: $ef
	ld   sp, hl                                      ; $7e95: $f9
	ld   de, $1126                                   ; $7e96: $11 $26 $11
	ld   de, $ff1f                                   ; $7e99: $11 $1f $ff
	or   c                                           ; $7e9c: $b1
	dec  de                                          ; $7e9d: $1b
	adc  a                                           ; $7e9e: $8f
	ld   sp, $ff1d                                   ; $7e9f: $31 $1d $ff
	ld   sp, hl                                      ; $7ea2: $f9
	ld   [de], a                                     ; $7ea3: $12
	cp   $61                                         ; $7ea4: $fe $61
	ld   l, $ff                                      ; $7ea6: $2e $ff
	db   $e4                                         ; $7ea8: $e4
	ld   c, d                                        ; $7ea9: $4a
	db   $fd                                         ; $7eaa: $fd
	ld   [hl], e                                     ; $7eab: $73
	inc  d                                           ; $7eac: $14
	ld   h, h                                        ; $7ead: $64
	ld   de, $1f11                                   ; $7eae: $11 $11 $1f
	rst  $38                                         ; $7eb1: $ff
	ld   hl, $df1f                                   ; $7eb2: $21 $1f $df
	ld   sp, $ff3f                                   ; $7eb5: $31 $3f $ff
	ld   d, h                                        ; $7eb8: $54
	add  hl, de                                      ; $7eb9: $19
	db   $fc                                         ; $7eba: $fc
	ld   de, $ff5f                                   ; $7ebb: $11 $5f $ff
	ld   h, c                                        ; $7ebe: $61
	adc  a                                           ; $7ebf: $8f
	ei                                               ; $7ec0: $fb
	ld   de, $7149                                   ; $7ec1: $11 $49 $71
	ld   de, $1f11                                   ; $7ec4: $11 $11 $1f
	rst  $38                                         ; $7ec7: $ff
	cp   b                                           ; $7ec8: $b8
	ld   e, $4c                                      ; $7ec9: $1e $4c
	ld   de, $ff7f                                   ; $7ecb: $11 $7f $ff
	cp   e                                           ; $7ece: $bb
	ld   a, [hl-]                                    ; $7ecf: $3a
	rst  $30                                         ; $7ed0: $f7
	ld   de, $ff9f                                   ; $7ed1: $11 $9f $ff
	sub  a                                           ; $7ed4: $97
	cp   a                                           ; $7ed5: $bf
	rst  $30                                         ; $7ed6: $f7
	dec  [hl]                                        ; $7ed7: $35
	ld   h, [hl]                                     ; $7ed8: $66
	ld   sp, $1111                                   ; $7ed9: $31 $11 $11
	rra                                              ; $7edc: $1f
	rst  $38                                         ; $7edd: $ff
	sub  [hl]                                        ; $7ede: $96
	adc  a                                           ; $7edf: $8f
	sbc  l                                           ; $7ee0: $9d
	ld   de, $ff5f                                   ; $7ee1: $11 $5f $ff
	ld   a, h                                        ; $7ee4: $7c
	cp   a                                           ; $7ee5: $bf
	push af                                          ; $7ee6: $f5
	ld   de, $d9bf                                   ; $7ee7: $11 $bf $d9
	ld   a, d                                        ; $7eea: $7a
	rst  $38                                         ; $7eeb: $ff
	or   $37                                         ; $7eec: $f6 $37
	ld   [hl], h                                     ; $7eee: $74
	ld   de, $1111                                   ; $7eef: $11 $11 $11
	rra                                              ; $7ef2: $1f
	cp   $31                                         ; $7ef3: $fe $31
	adc  a                                           ; $7ef5: $8f
	sbc  d                                           ; $7ef6: $9a
	ld   de, $f7ff                                   ; $7ef7: $11 $ff $f7
	ld   l, $ef                                      ; $7efa: $2e $ef
	pop  de                                          ; $7efc: $d1
	inc  de                                          ; $7efd: $13
	rst  $38                                         ; $7efe: $ff
	add  a                                           ; $7eff: $87
	ld   a, a                                        ; $7f00: $7f
	rst  $38                                         ; $7f01: $ff
	or   e                                           ; $7f02: $b3
	adc  e                                           ; $7f03: $8b
	ld   [hl], d                                     ; $7f04: $72
	ld   de, $1111                                   ; $7f05: $11 $11 $11
	rra                                              ; $7f08: $1f
	rst  $38                                         ; $7f09: $ff
	add  hl, hl                                      ; $7f0a: $29
	ld   a, a                                        ; $7f0b: $7f
	sub  [hl]                                        ; $7f0c: $96
	ld   de, $f9ff                                   ; $7f0d: $11 $ff $f9
	ld   e, a                                        ; $7f10: $5f
	rst  $38                                         ; $7f11: $ff
	pop  af                                          ; $7f12: $f1
	jr   @-$5f                                       ; $7f13: $18 $9f

	add  hl, sp                                      ; $7f15: $39
	db   $ed                                         ; $7f16: $ed
	rst  $38                                         ; $7f17: $ff
	ret  c                                           ; $7f18: $d8

	adc  b                                           ; $7f19: $88
	ld   hl, $1111                                   ; $7f1a: $21 $11 $11
	ld   de, $f91f                                   ; $7f1d: $11 $1f $f9
	dec  l                                           ; $7f20: $2d
	rst  $38                                         ; $7f21: $ff
	ld   [hl], c                                     ; $7f22: $71
	ld   de, $96ff                                   ; $7f23: $11 $ff $96
	adc  a                                           ; $7f26: $8f
	db   $fc                                         ; $7f27: $fc
	and  d                                           ; $7f28: $a2
	dec  sp                                          ; $7f29: $3b
	ld   a, c                                        ; $7f2a: $79
	add  hl, sp                                      ; $7f2b: $39
	db   $fd                                         ; $7f2c: $fd
	cp   $fe                                         ; $7f2d: $fe $fe
	add  l                                           ; $7f2f: $85
	ld   de, $1111                                   ; $7f30: $11 $11 $11
	ld   de, $f1af                                   ; $7f33: $11 $af $f1
	cp   a                                           ; $7f36: $bf
	ld   a, [$1c11]                                  ; $7f37: $fa $11 $1c
	ld   sp, hl                                      ; $7f3a: $f9
	ld   c, b                                        ; $7f3b: $48
	rst  $38                                         ; $7f3c: $ff
	ret  z                                           ; $7f3d: $c8

	ld   h, h                                        ; $7f3e: $64
	or   a                                           ; $7f3f: $b7
	ld   b, e                                        ; $7f40: $43
	xor  a                                           ; $7f41: $af
	db   $dd                                         ; $7f42: $dd
	rst  $28                                         ; $7f43: $ef
	db   $fc                                         ; $7f44: $fc
	ld   d, c                                        ; $7f45: $51
	inc  d                                           ; $7f46: $14
	ld   de, $1111                                   ; $7f47: $11 $11 $11
	rst  $38                                         ; $7f4a: $ff
	dec  d                                           ; $7f4b: $15
	rst  $38                                         ; $7f4c: $ff
	pop  af                                          ; $7f4d: $f1
	ld   hl, $921f                                   ; $7f4e: $21 $1f $92
	ld   c, a                                        ; $7f51: $4f
	db   $fd                                         ; $7f52: $fd
	sbc  d                                           ; $7f53: $9a
	ld   a, h                                        ; $7f54: $7c
	ld   [hl], c                                     ; $7f55: $71
	ld   d, $fe                                      ; $7f56: $16 $fe
	sbc  $ff                                         ; $7f58: $de $ff
	ld   hl, sp+$21                                  ; $7f5a: $f8 $21
	ld   hl, $1111                                   ; $7f5c: $21 $11 $11
	inc  d                                           ; $7f5f: $14
	rst  $38                                         ; $7f60: $ff
	inc  e                                           ; $7f61: $1c
	rst  $38                                         ; $7f62: $ff
	pop  hl                                          ; $7f63: $e1
	ld   de, $11bf                                   ; $7f64: $11 $bf $11
	sbc  a                                           ; $7f67: $9f
	ld   sp, hl                                      ; $7f68: $f9
	ret  z                                           ; $7f69: $c8

	call z, $1d21                                    ; $7f6a: $cc $21 $1d
	ei                                               ; $7f6d: $fb
	xor  [hl]                                        ; $7f6e: $ae
	rst  $38                                         ; $7f6f: $ff
	call nc, Call_0bb_5113                           ; $7f70: $d4 $13 $51
	ld   de, $1f11                                   ; $7f73: $11 $11 $1f
	ei                                               ; $7f76: $fb
	rra                                              ; $7f77: $1f
	rst  $38                                         ; $7f78: $ff
	inc  sp                                          ; $7f79: $33
	ld   de, $15f8                                   ; $7f7a: $11 $f8 $15
	rst  $28                                         ; $7f7d: $ef
	db   $ed                                         ; $7f7e: $ed
	ld   sp, hl                                      ; $7f7f: $f9
	sub  $11                                         ; $7f80: $d6 $11
	cpl                                              ; $7f82: $2f
	sub  [hl]                                        ; $7f83: $96
	rst  JumpTable                                         ; $7f84: $df
	rst  $38                                         ; $7f85: $ff
	add  $37                                         ; $7f86: $c6 $37
	ld   hl, $1111                                   ; $7f88: $21 $11 $11
	rra                                              ; $7f8b: $1f
	pop  af                                          ; $7f8c: $f1
	rst  $28                                         ; $7f8d: $ef
	rst  $38                                         ; $7f8e: $ff
	rla                                              ; $7f8f: $17
	ld   de, $17f1                                   ; $7f90: $11 $f1 $17
	rst  $38                                         ; $7f93: $ff
	xor  a                                           ; $7f94: $af
	cp   $d4                                         ; $7f95: $fe $d4
	ld   de, $377c                                   ; $7f97: $11 $7c $37
	rst  $38                                         ; $7f9a: $ff
	cp   $b7                                         ; $7f9b: $fe $b7
	ld   h, h                                        ; $7f9d: $64
	ld   de, $1111                                   ; $7f9e: $11 $11 $11
	rst  JumpTable                                         ; $7fa1: $df
	add  l                                           ; $7fa2: $85
	rst  $38                                         ; $7fa3: $ff
	ldh  a, [c]                                      ; $7fa4: $f2
	ld   h, c                                        ; $7fa5: $61
	ld   e, $11                                      ; $7fa6: $1e $11
	cpl                                              ; $7fa8: $2f
	ld   a, [$ffff]                                  ; $7fa9: $fa $ff $ff
	ld   [hl], d                                     ; $7fac: $72
	dec  d                                           ; $7fad: $15
	or   d                                           ; $7fae: $b2
	inc  l                                           ; $7faf: $2c
	rst  $38                                         ; $7fb0: $ff
	db   $ed                                         ; $7fb1: $ed
	cp   c                                           ; $7fb2: $b9
	ld   d, c                                        ; $7fb3: $51
	ld   de, $1111                                   ; $7fb4: $11 $11 $11
	rst  $38                                         ; $7fb7: $ff
	rra                                              ; $7fb8: $1f
	rst  $38                                         ; $7fb9: $ff

jr_0bb_7fba:
	or   d                                           ; $7fba: $b2
	sub  c                                           ; $7fbb: $91
	and  c                                           ; $7fbc: $a1
	ld   de, $cd7f                                   ; $7fbd: $11 $7f $cd
	rst  $38                                         ; $7fc0: $ff
	ld   sp, hl                                      ; $7fc1: $f9
	ld   h, l                                        ; $7fc2: $65
	ld   c, b                                        ; $7fc3: $48
	ld   hl, $fe7f                                   ; $7fc4: $21 $7f $fe
	xor  $b8                                         ; $7fc7: $ee $b8
	ld   de, $1111                                   ; $7fc9: $11 $11 $11
	ld   e, a                                        ; $7fcc: $5f
	ld   d, c                                        ; $7fcd: $51
	rst  $38                                         ; $7fce: $ff
	ld   hl, sp-$47                                  ; $7fcf: $f8 $b9
	rra                                              ; $7fd1: $1f
	ld   de, $f619                                   ; $7fd2: $11 $19 $f6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fd5: $cf
	rst  $38                                         ; $7fd6: $ff
	cp   b                                           ; $7fd7: $b8
	sub  l                                           ; $7fd8: $95
	sub  c                                           ; $7fd9: $91
	jr   jr_0bb_7fba                                 ; $7fda: $18 $de

	xor  [hl]                                        ; $7fdc: $ae
	db   $fc                                         ; $7fdd: $fc
	sub  e                                           ; $7fde: $93
	ld   de, $1111                                   ; $7fdf: $11 $11 $11
	ld   a, [$ff1f]                                  ; $7fe2: $fa $1f $ff
	ld   a, [$a1f1]                                  ; $7fe5: $fa $f1 $a1
	ld   de, $782f                                   ; $7fe8: $11 $2f $78
	rst  $38                                         ; $7feb: $ff
	cp   $cd                                         ; $7fec: $fe $cd
	sbc  c                                           ; $7fee: $99
	ld   de, $b969                                   ; $7fef: $11 $69 $b9
	rst  JumpTable                                         ; $7ff2: $df
	cp   c                                           ; $7ff3: $b9
	ld   d, c                                        ; $7ff4: $51
	ld   de, $6f11                                   ; $7ff5: $11 $11 $6f
	rla                                              ; $7ff8: $17
	rst  $38                                         ; $7ff9: $ff
	ld   hl, sp-$04                                  ; $7ffa: $f8 $fc
	ld   c, c                                        ; $7ffc: $49
	ld   de, $b216                                   ; $7ffd: $11 $16 $b2
